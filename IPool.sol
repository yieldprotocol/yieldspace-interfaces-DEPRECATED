// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.1;

import "@yield-protocol/utils/contracts/token/IERC20.sol";
import "@yield-protocol/utils/contracts/token/IERC2612.sol";
import "@yield-protocol/vault-interfaces/IFYToken.sol";

interface IPool is IERC20, IERC2612 {
    function baseToken() external view returns(IERC20);
    function fyToken() external view returns(IFYToken);
    function maturity() external view returns(uint32);
    function getBaseTokenReserves() external view returns(uint112);
    function getFYTokenReserves() external view returns(uint112);
    function sellBaseToken(address to, uint128 min) external returns(uint128);
    function buyBaseToken(address to, uint128 baseTokenOut, uint128 max) external returns(uint128);
    function sellFYToken(address to, uint128 min) external returns(uint128);
    function buyFYToken(address to, uint128 fyTokenOut, uint128 max) external returns(uint128);
    function sellBaseTokenPreview(uint128 baseTokenIn) external view returns(uint128);
    function buyBaseTokenPreview(uint128 baseTokenOut) external view returns(uint128);
    function sellFYTokenPreview(uint128 fyTokenIn) external view returns(uint128);
    function buyFYTokenPreview(uint128 fyTokenOut) external view returns(uint128);
    function mint(address to, uint256 tokenOffered) external returns (uint256);
    function burn(address to, uint256 tokensBurned) external returns (uint256, uint256);
}