import React, { useState } from "react";
import RegistrationForm from "./components/RegistrationForm";
import { NextPage } from "next";
import ButtonA from "~~/components/ButtonA";

const registerPage: NextPage = () => {
  return (
    <section>
      <div className="mb-3 flex items-center flex-col flex-grow pt-8">
        <div className="container-lg">
          <RegistrationForm />
          <br />
        </div>
      </div>
    </section>
  );
};

export default registerPage;
