import 'bootstrap/dist/css/bootstrap.min.css'
import 'font-awesome/css/font-awesome.min.css'
import React from "react";
import './App.css'

import { BrowserRouter } from 'react-router-dom'

import Logo from "../components/template/Logo";
import Nav from "../components/template/Nav";
import Main from '../components/template/Main';
import Footer from "../components/template/Footer";

export default props =>
  <BrowserRouter>
    <div className="app">
       <Logo />
       <Nav />
       <Main />
       <Footer />
   </div>
  </BrowserRouter>
     
  