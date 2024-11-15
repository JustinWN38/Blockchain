   mapping (address => bool) _______ donationApproved;

   modifier donatorApproved(address donator) {
        if(!________________[_______]) revert("Donator not approved");
        _;
    }

    function approveDonator(address potentialDonator) 
	public _________ {
        donationApproved[________________] = ____;
    }

    function denyDonator(address potentialDonator) 
	public _________ {
        donationApproved[________________] = _____;
    }

    function sendToContract(uint256 _amount) public 
	_____________ 
	_______________(___.______) {
        // allows approved account to send tokens to contract
	// statements to transfer funds
	:
	:
    }
}

