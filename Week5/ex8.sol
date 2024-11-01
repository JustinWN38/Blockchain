//_____License___________: GPL2.0
______ solidity ^0.8.0;
________ ex8{
    _____ ________ size = 100;
    uint[____] array = [10, 20, 30, 40];

    ________ populate() ______ {
        for(uint i=0; i<size; i++)
            array[i]=i;
    }
    function sumArray() ______ ____ _______(uint){
        ____ sum=0;
        for(____ i=__ i<____; i__)
            sum+=_____[i];
        return ___;
    }
}
