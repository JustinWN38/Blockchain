______-License-Identifier: GPL2.0
_____a solidity ^0.___;
______ct ex9{
    uint8 ________ size = 20;
    uint[____] array;
    eve__ notifySum(____);

    function populate() public {
        ___(uint i=0; i<____; i++)
            array[_]=i;
    }

    _______n sumArray() public ____ returns(____){
        uint sum;
        ___(uint i=0; i<____; i++)
            sum+=array[_];
        return ___;
    }

    function sumEven() public  {
        uint sum;
        for (uint i=0; i<size; i++){
            if(array[i]%2==0)
                sum+=array[i];
        }
        emit notifySum(sum);
    }

    function sumOdd() public  {
        uint sum;
        for(uint i=0; i<size; i++){
            if(array[i]%2==0)
                continue;
            sum+=array[i];
        }
        emit notifySum(sum);
    }

    function sumUpto(uint _n) public {
        uint sum;
        require(_n<size, "n < size/20");
        for(uint i=0; i<size; i++){
            if(i>=_n)
                break;
            sum+=array[i];
        }
        emit notifySum(sum);
    }

}

