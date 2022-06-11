import React from "react";

import { Route } from "react-router";
import { Redirect } from "react-router";
import { Switch } from "react-router";


import Home from "../components/home/Home";
import UserCrud from "../components/user/UserCrud";

export default props =>
   <Switch>
      <Route exact path="/" component={Home} />
      <Route path="/users" component={UserCrud} />
      <Redirect path="*" component={Home} />
   </Switch>