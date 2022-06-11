import React from "react";

import { Route, Redirect , Routes} from 'react-router'


import Home from "../components/home/Home";
import UserCrud from "../components/user/UserCrud";

export default props =>
   <Routes>
      <Route exact path="/" element={<Home />} />
      <Route path="/users" element={<UserCrud />} />
      <Route path="*" element={<Home />} />
   </Routes>