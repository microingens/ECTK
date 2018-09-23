var ECTK = artifacts.require("./ECTK.sol");


contract("ECTK", function(accounts) {

  var ectkInstance;

  it("retrieve manifest", function() {
    return ECTK.deployed().then(function(instance) {
      console.log(accounts[0])
      ectkInstance = instance
      return instance.manifeste.call();
    }).then(function(text) {
        console.log("manifeste = " + text)
    });
});

});


