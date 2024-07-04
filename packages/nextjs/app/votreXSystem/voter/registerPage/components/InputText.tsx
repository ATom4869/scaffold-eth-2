import React from "react";

interface Props {
  children: string;
  onClick: () => void;
}

const InputText = ({ children }) => {
  return (
    <>
      <div>
        <label>
          {children}
          <input className="form-control" style={{ color: "black", backgroundColor: "ivory", colorScheme: "light" }} />
        </label>
      </div>
    </>
  );
};

export default InputText;
