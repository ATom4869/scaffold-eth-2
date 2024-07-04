import React from "react";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

const UnAuthorizedPage = () => {
  return (
    <div className="error-container" style={{ textAlign: "center", marginTop: "50px" }}>
      <h2>You are not authorized to access this page.</h2>
      <div style={{ width: "480px", margin: "0 auto" }}>
        <iframe
          allow="fullscreen"
          frameBorder="0"
          height="271px"
          className="giphy-embed"
          src="https://giphy.com/embed/AtZxP62fZlcyirf3nk"
          width="480px"
          allowFullScreen
        ></iframe>
      </div>
      <ToastContainer />
    </div>
  );
};

export default UnAuthorizedPage;
