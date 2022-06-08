import logo from '../../assets/imgs/github.svg'
import './Logo.css'
import React from "react";


export default props =>
   <aside className="logo">
       <a href="/" className="logo">
          <img src={logo} alt="logo" />
       </a>
   </aside>