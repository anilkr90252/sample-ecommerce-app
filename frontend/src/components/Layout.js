import React from 'react';

const Layout = ({ children }) => {
    return (
        <div className="min-h-screen flex flex-col">
            <header className="bg-white shadow">
                <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                    <div className="flex justify-between h-16">
                        <div className="flex">
                            <div className="shrink-0 flex items-center">
                                <img className="h-16 w-auto" src="/logo.png" alt="Logo" />
                            </div>
                            <div className="hidden sm:-my-px sm:ml-6 sm:flex sm:space-x-8">
                                <a href="/" className="border-indigo-500 text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium">
                                    TShirts
                                </a>
                                <a href="#" className="border-transparent text-gray-500 hover:border-gray-300 hover:text-gray-700 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium">
                                    Formals
                                </a>
                                <a href="#" className="border-transparent text-gray-500 hover:border-gray-300 hover:text-gray-700 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium">
                                    Brands
                                </a>
                            </div>
                        </div>
                        <div className="hidden sm:ml-6 sm:flex sm:items-center">
                            <a href="#" className="ml-4 text-sm text-gray-700 flex items-center">
                                <img className="h-4 w-auto mr-2" src="/bag.png" alt="BAG"/>
                                <span>Bag</span>
                            </a>
                        </div>
                    </div>
                </div>
            </header>

            <main className="flex-grow">
                {children}
            </main>

            <footer>
                <div className="max-w-7xl mx-auto py-4 px-4 overflow-hidden sm:px-6 lg:px-8">
                    <p className="text-center text-gray-400 text-sm">
                        &copy; 2024 Make Test, Inc. All rights reserved.
                    </p>
                </div>
            </footer>
        </div>
    );
};

export default Layout;
