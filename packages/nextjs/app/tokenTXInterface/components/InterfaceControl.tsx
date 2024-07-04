import React, { useState } from "react";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import { useWalletClient } from "wagmi";
import { useScaffoldContract } from "~~/hooks/scaffold-eth";

const InterfaceControl = () => {
  const { data: walletClient } = useWalletClient();
  const { data: VotreXTokenContract } = useScaffoldContract({
    contractName: "VotreXToken",
    walletClient,
  });

  const [votreXAddress, setVotreXAddress] = useState("");
  const [stakingContract, setStakingContract] = useState("");
  const [dexContract, setDexContract] = useState("");

  const handleSetVotreXAddress = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    try {
      await VotreXTokenContract?.write.setVotreXContract([votreXAddress]);
      toast.success("VotreX System Contract Address set successfully", {
        autoClose: 3000,
        onClose: () => window.location.reload(),
      });
    } catch (error) {
      toast.error("Error setting VotreX System Contract Address", {
        autoClose: 3000,
      });
      console.error("Error setting VotreX System Contract Address:", error);
    }
  };

  const handleSetStakingContract = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    try {
      await VotreXTokenContract?.write.setStakingContract([stakingContract]);
      toast.success("Staking Contract Address set successfully", {
        autoClose: 3000,
        onClose: () => window.location.reload(),
      });
    } catch (error) {
      toast.error("Error setting Staking Contract Address", {
        autoClose: 3000,
      });
      console.error("Error setting Staking Contract Address:", error);
    }
  };

  const handleSetDexContract = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault();
    try {
      await VotreXTokenContract?.write.setDexContract([dexContract]);
      toast.success("DEx Contract Address set successfully", {
        autoClose: 3000,
        onClose: () => window.location.reload(),
      });
    } catch (error) {
      toast.error("Error setting DEx Contract Address", {
        autoClose: 3000,
      });
      console.error("Error setting DEx Contract Address:", error);
    }
  };

  return (
    <div>
      <div>Interface State Control</div>
      <button className="btn btn-primary">Change State</button>
      <br />
      <div className="form-container">
        <form className="form" onSubmit={handleSetVotreXAddress}>
          <label className="justify-content-center">
            VotreX System Contract Address
            <div className="input-group vertical-center">
              <input
                id="VotreXAddress"
                name="VotreXAddress"
                type="text"
                className="form-control"
                value={votreXAddress}
                onChange={e => setVotreXAddress(e.target.value)}
              />
              <button type="submit" className="btn btn-secondary btn-sm">
                Set
              </button>
            </div>
          </label>
        </form>
      </div>
    </div>
  );
};

export default InterfaceControl;
