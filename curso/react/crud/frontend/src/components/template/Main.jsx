import React from "react";
import './Main.css'
import Header from "./Header";

export default props =>
     <React.Fragment>
         <Header {...props} />
         <main className="content">
             Conteúdo
         </main>
     </React.Fragment>

