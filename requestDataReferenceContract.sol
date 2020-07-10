pragma solidity ^0.4.24;

import "https://github.com/smartcontractkit/chainlink/evm-contracts/src/v0.4/interfaces/AggregatorInterface.sol";

contract ReferenceConsumer {
  AggregatorInterface internal ref;


  /**
   * @dev Ropsten example _aggregator:
   * @dev   ETH/USD feed: 0x8468b2bDCE073A157E560AA4D9CcF6dB1DB98507
   * @dev More available from https://docs.chain.link/docs/reference-contracts
   */
  constructor(address _aggregator) public {
    ref = AggregatorInterface(_aggregator);
  }
 
  
  /**
   * @notice Returns the latest answer from the _aggregator
   * @dev The answer is multiplied by a constant, depending on the aggregator
   * @dev For example, the Ropsten ETH/USD feed is multiplied by 100,000,000
   * @dev See https://docs.chain.link/docs/using-chainlink-reference-contracts#use-the-reference-data
   */
  function getLatestAnswer() public view returns (int256) {
    return ref.latestAnswer();
  }
}
