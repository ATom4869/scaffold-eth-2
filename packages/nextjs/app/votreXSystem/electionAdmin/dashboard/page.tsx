import React from "react";
import { useEffect, useState } from "react";
import { useWalletClient } from "wagmi";
import { useScaffoldContract, useScaffoldReadContract } from "~~/hooks/scaffold-eth";

const page = () => {
  const [totalMember, setTotalMember] = useState<string | null>(null);
  const [orgID, setORGID] = useState<string>("");

  const { data: walletClient } = useWalletClient();
  const { data: VotreXContract } = useScaffoldContract({
    contractName: "VotreXSystem",
  });

  useEffect(() => {
    const fetchTotalMember = async () => {
      try {
        const totalMemberData = (await VotreXContract?.read.organizationData([orgID]))?.[3];
      } catch (error) {}
    };
  });

  return (
    <div>
      <div>
        <h1>Election Admin Dashboard</h1>
        <h3>Total Member</h3>
        <p>{totalMemberValue}</p>
      </div>
    </div>
  );
};

export default page;
