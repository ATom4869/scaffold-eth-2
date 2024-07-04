"use client";

import React, { useState } from "react";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import { useWalletClient } from "wagmi";
import ButtonA from "~~/components/ButtonA";
import { useScaffoldContract } from "~~/hooks/scaffold-eth";

const LoginForm = () => {
  const [formData, setFormData] = useState({
    orgID: "",
  });

  const handleInputChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = event.target;
    setFormData(prevData => ({
      ...prevData,
      [name]: value,
    }));
  };

  const { data: walletClient } = useWalletClient();
  const { data: VotreXSystemContract } = useScaffoldContract({
    contractName: "VotreXSystem",
  });

  const loginCheck = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    try {
      const currentAddress = walletClient?.account.address;
      const orgIDCheck = await VotreXSystemContract?.read.organizationData([formData.orgID]);

      if (!orgIDCheck?.[5]) {
        toast.error("Organization ID does not exist in the system.", {
          autoClose: 3000,
        });
        return;
      }

      const accountCheck = await VotreXSystemContract?.read.getUserInfo();

      if (currentAddress === orgIDCheck[1] && accountCheck?.[1]) {
        toast.success("You are an Admin", {
          autoClose: 3000,
          onClose: () => {
            window.location.href = "/admin-dashboard"; // Redirect to admin dashboard
          },
        });
      } else {
        toast.success("You are a Voter", {
          autoClose: 3000,
          onClose: () => {
            window.location.href = "/voter-dashboard"; // Redirect to voter dashboard
          },
        });
      }
    } catch (e) {
      toast.error("Error during login. Please try again.", {
        autoClose: 3000,
      });
    }
  };

  return (
    <form onSubmit={loginCheck}>
      <ToastContainer />
      <div>
        <label>
          Organization ID:
          <input
            id="orgID"
            name="orgID"
            className="form-control"
            style={{ color: "black" }}
            value={formData.orgID}
            onChange={handleInputChange}
            required
          />
        </label>
      </div>
      <br />
      <ButtonA buttonLabel="Login" />
    </form>
  );
};

export default LoginForm;
