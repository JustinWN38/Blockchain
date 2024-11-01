//SPDX-License-Identifier: GPL2.0
pragma solidity ^0.8.0;

contract Quadrangle{
    uint32 public area;
    uint32 public perimeter;
    string public colour;
    string public shape;
    event display(string, string, uint32, uint32);
    //setter
    function setColourAndShape(string memory _colour, string memory _shape) public {
        colour = _colour;
        shape  = _shape;
    }
    function getPerimeter() public view returns(uint32){
        return perimeter;
    }
    function displayAll() public returns (string memory, string memory, uint32, uint32){
        emit display(colour, shape, area, perimeter);
        return(colour, shape, area, perimeter);
    }
}

contract Square is Quadrangle{
    uint32 public width;
    function setWidth(uint32 _width) public {
        width = _width;
    }
    function setArea() public {
        area = width * width;
    }
    function setPerimeter() public{
        perimeter = 4 * width;
    }
}

contract Rectangle is Quadrangle{
    uint32 public width;
    uint32 public height;
    function setWidthHeight(uint32 _width, uint32 _height) public {
        width = _width;
        height = _height;
    }
    function setArea() public {
        area = width * height;
    }
    function setPerimeter() public{
        perimeter = 2 * ( width + height);
    }
}


contract Test{
    Square square = new Square();
    Rectangle rectangle = new Rectangle();
    function testSquare() public {
    square.setColourAndShape("Red", "Square");
    square.setWidth(3);
    square.setArea();
    square.setPerimeter();
    square.displayAll();
    }

    function testRectangle() public {
    rectangle.setWidthHeight(3,7);
    rectangle.setColourAndShape("Blue", "Rectangle");
    rectangle.setArea();
    rectangle.setPerimeter();
    rectangle.displayAll();
    }
}
