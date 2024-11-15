
    receive () ________ _______ {
    	//prevents receiving ether
	______();
	}

    function sendToContract(uint256 _amount) public _____________ {
        // allows any account to send tokens to contract
        require(_amount <= balanceOf(___.______), "insufficient funds");
        ________(_______(____), _amount);
    }

   function withdrawFromContract(uint256 _amount) public onlyOwner{
        // allows tokens collected in the contract to be sent to the owner
        require(_amount <= balanceOf(_______(____)), "insufficient funds");
        ________(_____(), _amount);
    }
