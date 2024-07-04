"use client";

import React, { useEffect, useState } from "react";
import UnAuthorizedPage from "../votreXTokenAdmin/components/UnAuthorizedPage";
import InterfaceControl from "./components/InterfaceControl";
import { ToastContainer, toast } from "react-toastify";
import { useWalletClient } from "wagmi";

const tokenTXInterface = () => {
  const { data: walletClient } = useWalletClient();
  const [isAdmin, setIsAdmin] = useState(false);
  const [isLoading, setIsLoading] = useState(true);
  const ADMIN_ADDRESS = process.env.NEXT_PUBLIC_ADMIN_ADDRESS;

  useEffect(() => {
    const checkAdminAddress = async () => {
      setIsLoading(true);
      try {
        const currentAddress = await walletClient?.account.address;
        if (currentAddress?.toLowerCase() === ADMIN_ADDRESS?.toLowerCase()) {
          setIsAdmin(true);
        } else {
          setIsAdmin(false);
        }
      } catch (error) {
        console.error("Error detecting wallet address:", error);
        toast.error("Error detecting wallet address", {
          autoClose: 3000,
        });
      } finally {
        setIsLoading(false);
      }
    };

    checkAdminAddress();
  }, [walletClient]);

  if (isLoading) {
    return (
      <div className="loading-container" style={{ textAlign: "center", marginTop: "50px" }}>
        <h2>Loading...</h2>
      </div>
    );
  }

  if (!isAdmin) {
    return <UnAuthorizedPage />;
  }

  return <InterfaceControl />;
};

export default tokenTXInterface;
