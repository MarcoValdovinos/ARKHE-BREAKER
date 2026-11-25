#!/bin/bash
T=${1:-$HOME/lombard}
echo === BASCULE ZERO ===
grep -rn "trustedSigner == address(0)" $T/contracts/ | head -n 20
echo === REMOVE ROUTE ===
grep -n "removeRoute" -A 10 $T/contracts/LBTC/AssetRouter.sol | head -n 30
echo === MINT SIN ROL ===
grep -rn "function mint" $T/contracts/strategy/ShareToken.sol
echo === CALL SIN CHECK ===
grep -rn "call{value" $T/contracts/ | head -n 20
echo === MINT ROL REAL ===
grep -n "function mint" -A 2 $T/contracts/strategy/ShareToken.sol
echo === SET TRUSTED SIN CHECK ===
grep -n "setTrustedSigner" -A 3 $T/contracts/bascule/BasculeV3.sol | head -n 20
echo === POR SIN VERIFY ===
grep -rn "ecrecover\|verify" $T/contracts/PoR/PoR.sol | head -n 20
grep -n "safeIncreaseAllowance" $T/contracts/stakeAndBake/StakeAndBake.sol
echo === MINT ROL FIX ===
grep -n "function mint" -A 4 $T/contracts/strategy/ShareToken.sol | head -n 20
