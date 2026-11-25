# BasculeV3 fail-open
Low - setTrustedSigner permite 0 y _checkProof retorna true
Ubicacion: BasculeV3.sol:377, setTrustedSigner sin require
Fix: require != 0 y revert en _checkProof si es 0
