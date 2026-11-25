#!/bin/bash
T=$1
echo === BREAKER GENERICO ===
echo --- DELEGATECALL ---
grep -rn "delegatecall" $T --include="*.sol" | head -n 20
echo --- MINT ---
grep -rn "function mint" $T --include="*.sol" | head -n 20
echo --- CALL ---
grep -rn "\.call{" $T --include="*.sol" | head -n 20
echo --- ADDRESS 0 ---
grep -rn "address(0)" $T --include="*.sol" | head -n 20
echo --- ECRECOVER ---
grep -rn "ecrecover" $T --include="*.sol" | head -n 20
echo --- ALLOWANCE ---
grep -rn "safeIncreaseAllowance" $T --include="*.sol" | head -n 20
