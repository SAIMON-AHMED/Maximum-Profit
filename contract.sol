// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MaxProfit {

    //this function takes an array of prices and calculate maximum profit
    function maxProfit(uint256[] memory prices) 
        public pure returns (uint256) {
            uint256 profit = 0;
            uint256 index;
            while(index < prices.length) {
                //uint256 temp = prices[index];
                for (uint256 i; i < prices.length; i++) {
                    if (prices[index] - prices[i] > profit) {
                        profit = prices[index] - prices[i];
                    }
                index++;
            }
        }
        return profit;
    }

}
