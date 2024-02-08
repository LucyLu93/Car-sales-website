import React from "react";
import { Routes, Route,  NavLink, useNavigate } from "react-router-dom";
import HomePage from "./components/HomePage";
import Cars from "./components/Cars";
import Newarrivals from "./components/NewArrivals";
import Contact from "./components/Contact";
import Error404 from "./components/Error404";
import './App.css'


function App() {


  return (
    <div>
    <nav>
    <button>
      <NavLink to="/">Home</NavLink>
      </button>

      <button>
      <NavLink to="/cars">Cars</NavLink>
      </button>

      <button>
      <NavLink to="/newarrivals">New Arrivals</NavLink>
      </button>

      <button>
      <NavLink to="/contact">Contact us</NavLink>
      </button>

  </nav> 

  <Routes>
    <Route path="/" element={<HomePage /> } />
    <Route path="/cars" element={<Cars /> } />
    <Route path="/newarrivals" element={<Newarrivals /> } />
    <Route path="/contact" element={<Contact/> } />
    <Route path="/*" element={<Error404 /> } />
  </Routes>
</div>
  )
  }

export default App
