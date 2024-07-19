import './App.css';
import {Route, Routes} from 'react-router-dom';
import ProductList from "./components/ProductList";
import ProductDetail from "./components/ProductDetail";

function App() {
    return (
        <Routes>
            <Route path="/" element={<ProductList/>}/>
            <Route path="/product/:id" element={<ProductDetail/>}/>
        </Routes>
    );
}

export default App;
