pragma solidity ^0.4.24;

import "zeppelin-solidity/contracts/token/ERC20/CappedToken.sol";

contract ECTK is CappedToken {
    string public constant name = "ElastoTest";
    string public constant symbol = "ECTK";
    uint256 public constant decimals = 18;
    uint public constant INITIAL_SUPPLY = 11000000 * 10 ** decimals; // 11 millions tokens

    string titre;
    string paragChap1a;
    string paragChap1b;
    string paragChap1c;
    string paragChap1d;
    string paragChap2a;
    string paragChap2b;
    string paragChap2c;
    string paragChap3a;
    string paragChap3b;
	
    bool stopmanifeste;

    constructor() public CappedToken(INITIAL_SUPPLY) {

        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        stopmanifeste = false;
        
        titre = "Manifeste de l'élastogenèse. « L’art est un fruit qui pousse dans l’homme  ». Jean Arp";
        paragChap1a = "I    ";
        paragChap2a = "II    ";
        paragChap3a = "III    ";

    } // end constructor

    
    function strConcat(string _a, string _b) internal pure returns (string){
        bytes memory _stra = bytes(_a);
        bytes memory _strb = bytes(_b);
        string memory str = new string(_stra.length + _strb.length);
        bytes memory retstr = bytes(str);
        uint k = 0;
        for (uint i = 0; i < _stra.length; i++) retstr[k++] = _stra[i];
        for (i = 0; i < _strb.length; i++) retstr[k++] = _strb[i];
        return string(retstr);
    }

    function addToChapitre(uint chapIdx, uint paragrIdx, string text) onlyOwner {

        require(stopmanifeste == false);

        if(chapIdx==1){

            if(paragrIdx == 1){
                paragChap1a = strConcat(paragChap1a, text);
            }else if(paragrIdx == 2){
                paragChap1b = strConcat(paragChap1b, text);
            }else if(paragrIdx == 3){
                paragChap1c = strConcat(paragChap1c, text);
            }else if(paragrIdx == 4){
                paragChap1d = strConcat(paragChap1d, text);
            }
            
        }else if(chapIdx==2){
            
            if(paragrIdx == 1){
                paragChap2a = strConcat(paragChap2a, text);
            }else if(paragrIdx == 2){
                paragChap2b = strConcat(paragChap2b, text);
            }else if(paragrIdx == 3){
                paragChap2c = strConcat(paragChap2c, text);
            }

        }else if(chapIdx==3){
        
            if(paragrIdx == 1){
                paragChap3a = strConcat(paragChap3a, text);
            }else if(paragrIdx == 2){
                paragChap3b = strConcat(paragChap3b, text);
            }
        
        }
    } 

    function stopAddManifeste() onlyOwner {
        stopmanifeste = true;
    }

    function retrieveTitre() public constant returns(string _titre){
        _titre = titre;
    }

    function retrieveChapitre1() public constant returns(string _pC1a, string _pC1b, string pC1c, string _pC1d ){
        _pC1a = paragChap1a;
        _pC1b = paragChap1b;
        _pC1c = paragChap1c;
        _pC1d = paragChap1d;
    }

    function retrieveChapitre2() public constant returns(string pC2a, string pC2b, string pC2c){
        _pC2a = paragChap2a;
        _pC2b = paragChap2b;
        _pC2c = paragChap2c;
    }

    function retrieveChapitre3() public constant returns(string pC3a, string pC3b){
        _pC3a = paragChap3a;
        _pC3b = paragChap3b;
    }

    function kill() public  onlyOwner {
        selfdestruct(owner);
    }

}