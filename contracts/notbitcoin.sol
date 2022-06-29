pragma solidity >= 0.7.0 <0.9.0;

contract notbitcoin {
    string notbitcoin;
    uint128 public Profit;
    uint128 public discount = 1500;

    constructor(uint128 userInput, string memory _notbitcoin) {
        Profit = userInput;
        notbitcoin = _notbitcoin;

    }

    function viewProfits() public view returns (uint128){
      return Profit;
  }

    function buy() public {
        Profit += 1;
    }


    function refund() public {

        Profit -= 1;
    }

    function discounts() public returns(uint128){
    return Profit -= ((Profit * discount) / 10000);
    }
}