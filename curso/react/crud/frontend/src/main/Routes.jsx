import React from "react";

import { BrowserRouter } from "react-router-dom";
import { Switch, Route, Rediret } from "react-router";

import Home from "../components/home/Home";
import UserCrud from "../components/user/UserCrud";

export default props =>
    <Routes>
        <Route exact path="/" element={<Home />} />
        <Route path="/users" element={<UserCrud />} />
        <Rediret path='*' element={<Home />} />
    </Routes>