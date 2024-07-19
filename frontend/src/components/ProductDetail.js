import React, {useState, useEffect} from 'react';

import {useParams} from 'react-router-dom';
import axiosInstance from "../axios.config";
import Layout from "./Layout";

const ProductDetail = () => {
    const {id} = useParams();
    const [product, setProduct] = useState(null);
    const getRandomHighlights = () => {
        const highlightsOptions = [
            "Hand cut and sewn locally",
            "Dyed with our proprietary colors",
            "Pre-washed & pre-shrunk",
            "Ultra-soft 100% cotton",
            "Sustainable materials",
            "Limited edition",
            "Machine washable",
            "Made with love",
            "High quality craftsmanship",
            "Ethically sourced",
            "Water-resistant",
            "Breathable fabric",
            "Durable and long-lasting",
            "Eco-friendly dyes",
            "Perfect for all seasons",
            "Designed for comfort",
            "Easy to care for",
            "Timeless design",
            "Available in multiple colors",
            "Customizable"
        ];
        const shuffled = highlightsOptions.sort(() => 0.5 - Math.random());
        return shuffled.slice(0, 5);
    };
    useEffect(() => {
        const fetchProduct = async () => {
            try {
                const response = await axiosInstance.get(`/product/${id}`);
                const product = response.data;
                product.breadcrumbs = [];
                product.breadcrumbs.push({href: "#", name: product.category, id: 1});
                product.rating = 3.5;
                product.highlights = getRandomHighlights()
                product.care = ['Only the best materials', 'Ethically and locally made', 'Pre-washed and pre-shrunk', 'Machine wash cold with similar colors']
                setProduct(product);
            } catch (error) {
                console.error('Error fetching product details', error);
            }
        };

        fetchProduct();
    }, [id]);

    if (!product) {
        return <div>Loading...</div>;
    }

    return (
        <Layout>
            <div className="bg-white">
                <div className="pt-8">
                    <div className="max-w-6xl mx-auto">
                        <nav aria-label="Breadcrumb">
                            <ol
                                className="mx-auto flex max-w-2xl items-center space-x-2 px-4 sm:px-6 lg:max-w-7xl lg:px-8">
                                {product.breadcrumbs.map((breadcrumb) => (
                                    <li key={breadcrumb.id}>
                                        <div className="flex items-center">
                                            <a href={breadcrumb.href}
                                               className="mr-2 text-sm font-medium text-gray-900">
                                                {breadcrumb.name}
                                            </a>
                                            <svg
                                                fill="currentColor"
                                                width={16}
                                                height={20}
                                                viewBox="0 0 16 20"
                                                aria-hidden="true"
                                                className="h-5 w-4 text-gray-300"
                                            >
                                                <path d="M5.697 4.34L8.98 16.532h1.327L7.025 4.341H5.697z"/>
                                            </svg>
                                        </div>
                                    </li>
                                ))}
                                <li className="text-sm">
                                    <a href={product.href} aria-current="page"
                                       className="font-medium text-gray-500 hover:text-gray-600">
                                        {product.name}
                                    </a>
                                </li>
                            </ol>
                        </nav>
                    </div>
                    <div
                        className="max-w-6xl mx-auto bg-white p-8 grid grid-cols-1 md:grid-cols-2 gap-8">
                        <div
                            className="aspect-h-1 aspect-w-1 w-full overflow-hidden rounded-md bg-gray-200 lg:aspect-none group-hover:opacity-75 lg:h-auto">
                            <img
                                alt={product.name}
                                src={product.imageUrl}
                                className="h-full w-full object-cover object-center lg:h-full lg:w-full"
                            />
                        </div>
                        <div className="flex flex-col">
                            <h1 className="text-2xl font-bold tracking-tight text-gray-900 sm:text-3xl mb-4">{product.name}</h1>
                            <p className="text-3xl tracking-tight text-gray-900 mb-4">Rs. {product.price}</p>
                            <p className="text-base text-gray-900 mb-4">{product.description}</p>

                            <div className="mt-10">
                                <h3 className="text-sm font-medium text-gray-900">Highlights</h3>

                                <div className="mt-4">
                                    <ul className="list-disc space-y-2 pl-4 text-sm">
                                        {product.highlights.map((highlight) => (
                                            <li key={highlight} className="text-gray-400">
                                                <span className="text-gray-600">{highlight}</span>
                                            </li>
                                        ))}
                                    </ul>
                                </div>
                            </div>

                            <div className="mt-10">
                                <h3 className="text-sm font-medium text-gray-900">Fabric & Care</h3>

                                <div className="mt-4">
                                    <ul className="list-disc space-y-2 pl-4 text-sm">
                                        {product.care.map((care) => (
                                            <li key={care} className="text-gray-400">
                                                <span className="text-gray-600">{care}</span>
                                            </li>
                                        ))}
                                    </ul>
                                </div>
                            </div>

                            <div className="mt-10">
                                <h3 className="text-sm font-medium text-gray-900">Size</h3>
                                <div className="mt-4 grid grid-cols-6 gap-2">
                                    {['XXS', 'XS', 'S', 'M', 'L', 'XL'].map(size => (
                                        <button key={size}
                                                className="px-4 py-2 border rounded-md text-gray-700 hover:bg-gray-100">{size}</button>
                                    ))}
                                </div>
                            </div>

                            <button
                                className="mt-10 w-full bg-blue-500 text-white py-2 rounded-md hover:bg-blue-700">Add
                                to bag
                            </button>
                        </div>
                    </div>

                </div>
            </div>
        </Layout>
    );
};

export default ProductDetail;
