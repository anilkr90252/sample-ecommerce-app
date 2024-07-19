import React, { useState, useEffect } from 'react';

import { Link } from 'react-router-dom';
import axiosInstance from "../axios.config";
import Layout from "./Layout";

const ProductList = () => {
    const [products, setProducts] = useState([]);
    const [page, setPage] = useState(0);
    const [total, setTotal] = useState(0);
    const pageSize = 100;

    useEffect(() => {
        const fetchProducts = async () => {
            try {
                const response = await axiosInstance.get(`/product?page=${page}&size=${pageSize}`);
                setProducts(response.data.product);
                setTotal(response.data.total);
            } catch (error) {
                console.error('Error fetching products', error);
            }
        };

        fetchProducts();
    }, [page, pageSize]);

    return (
        <Layout>
            <div className="container mx-auto p-4">
                <div className="bg-white">
                    <div className="mx-auto max-w-2xl px-4 py-16 sm:px-6 sm:py-10 lg:max-w-7xl lg:px-8">
                        <div
                            className="mt-6 grid grid-cols-1 gap-x-6 gap-y-10 sm:grid-cols-2 lg:grid-cols-4 xl:gap-x-8">
                            {products.map((product) => (
                                <div key={product.slug} className="group relative">
                                    <div
                                        className="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-80">
                                        <img
                                            alt={product.name}
                                            src={product.imageUrl}
                                            className="h-full w-full object-cover object-center lg:h-full lg:w-full"
                                        />
                                    </div>
                                    <div className="mt-4 flex justify-between">
                                        <div>
                                            <h3 className="text-sm text-gray-700">
                                                <Link to={`/product/${product.slug}`}>
                                                    <span aria-hidden="true" className="absolute inset-0"/>
                                                    {product.name}
                                                </Link>
                                            </h3>
                                            <p className="mt-1 text-sm text-gray-500">{product.color}</p>
                                        </div>
                                        <p className="text-sm font-medium text-gray-900"><span>Rs. </span>{product.price}</p>
                                    </div>
                                </div>
                            ))}
                        </div>
                    </div>
                </div>
            </div>
        </Layout>
    );
};

export default ProductList;
