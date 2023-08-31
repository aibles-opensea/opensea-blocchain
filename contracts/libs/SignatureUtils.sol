// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/utils/cryptography/ECDSAUpgradeable.sol";

library SignatureUtils {
    using ECDSAUpgradeable for bytes32;

    function verify(
        bytes32 digest,
        address signer,
        bytes memory signature
    ) internal pure returns (bool) {
        return digest.toEthSignedMessageHash().recover(signature) == signer;
    }
}
