# PoR sin verificacion
Medium - updateMessageSignature guarda sin ecrecover ni verify
Ubicacion: PoR.sol, grep ecrecover vacio
Fix: verificar firma contra rootPubkey antes de guardar
