import React from "react";
import './Nav.css'

export default props => 
    <aside className="menu-area">
       <nav className="menu">
           <a href="/">
               <i className="fa fa-home"></i>In�cio
           </a>
           <a href="/users">
               <i className="fa fa-users"></i>Usu�rios
           </a>
       </nav>
    </aside>