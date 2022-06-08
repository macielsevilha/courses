import 'bootstrap/dist/css/bootstrap.min.css'
import 'font-awesome/css/font-awesome.min.css'
import React from "react";
import './App.css'

import Logo from "../components/template/Logo";
import Nav from "../components/template/Nav";
import Main from "../components/template/Main";
import Footer from "../components/template/Footer";

export default props =>
   <div className="app">
       <Logo />
       <Nav />
       <Main icon="home" title="in�cio" subtitle="Segundo Projeto do cap�tulo de React." />
       <Footer />
   </div>