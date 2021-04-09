// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >= 0.8.0;
import "./IPool.sol";
import "./PoolDataTypes.sol";


interface IPoolRouter {
  
  function batch(
    address[] calldata bases,
    address[] calldata fyTokens,
    uint8[] calldata targets,
    PoolDataTypes.Operation[] calldata operations,
    bytes[] calldata data
  ) external payable;
  
  function route(address base, address fyToken, bytes calldata data)
    external payable returns (bool success, bytes memory result);
}
