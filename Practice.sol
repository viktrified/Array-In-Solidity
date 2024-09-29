// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Array {
    uint256[] public arr;
    uint256[] public arr2 = [1, 3, 4, 4, 4, 6, 7, 8, 8];

    function lengthOfArray() public view returns (uint256) {
        return arr.length;
    }

    function newLength() public returns (uint256) {
        return arr.push();
    }

    function howMany() public {}

    function sumArray() public view returns (uint256) {
        return
            arr2[0] +
            arr2[1] +
            arr2[2] +
            arr2[3] +
            arr2[4] +
            arr2[5] +
            arr2[6] +
            arr2[7] +
            arr2[8];
    }

    function bestSumArray() public view returns (uint256) {
        uint256 sum = 0;

        for (uint256 j = 0; j < arr2.length; j++) {
            sum += j;
        }
        return sum;
    }

    function returnArray() public view returns (uint256[] memory) {
        return arr2;
    }

    function getArray(uint256 _index) public {
        for (uint256 i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    function get() public view returns (uint256[] memory) {
        return arr2;
    }

    function remove() public {
        // Delete does not change the array length.
        // It resets the value at index to it's default value,
        // in this case 0
        delete arr2;
    }
}
