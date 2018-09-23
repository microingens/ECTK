
const fs = require('fs');
var sleep = require('sleep');

var ECTK = artifacts.require("./ECTK.sol");

//var gasOk = 4500000
var sleepingSeconds = 100

module.exports = async function(callback) {

    var ectk = await ECTK.deployed();
    console.log(ectk.address);

    chapterNum = 1
    for(var pp=1;pp<=4;pp++){
        for(var idx=0;idx<=10;idx++){

            var paragraphefile = "parag_I_" + pp + "_chunk_"+idx+".txt"
            if (fs.existsSync("paragraphes/"+paragraphefile)) {
                console.log("---- chapter num " + chapterNum + " - pp = " +pp+ " - idx = " +idx )
                
                var paragraphedata = fs.readFileSync("paragraphes/"+paragraphefile, 'latin1');
                console.log("---- estimating gas...");
                const estimatedGas = await ectk.addToChapitre.estimateGas(chapterNum, pp, paragraphedata);
                var gasOk = estimatedGas + 100000;
                console.log("gasOk = " + gasOk);
                await ectk.addToChapitre(chapterNum, pp, paragraphedata, { gas: gasOk });
                sleep.sleep(sleepingSeconds)
                console.log("await done!  ----------------------------------")
            }
        }
    }
    console.log("------------- ! primo capitolo finito !  ----------------------------------")

    chapterNum = 2
    for(var pp=1;pp<=3;pp++){
        for(var idx=0;idx<=10;idx++){

            var paragraphefile = "parag_II_" + pp + "_chunk_"+idx+".txt"
            if (fs.existsSync("paragraphes/"+paragraphefile)) {
                console.log("---- chapter num " + chapterNum + " - pp = " +pp+ " - idx = " +idx )
                
                var paragraphedata = fs.readFileSync("paragraphes/"+paragraphefile, 'latin1');
                console.log("---- estimating gas...");
                const estimatedGas = await ectk.addToChapitre.estimateGas(chapterNum, pp, paragraphedata);
                var gasOk = estimatedGas + 100000;
                console.log("gasOk = " + gasOk);
                await ectk.addToChapitre(chapterNum, pp, paragraphedata, { gas: gasOk });
                sleep.sleep(sleepingSeconds)
                console.log("await done!  ----------------------------------")
            }
        }
    }
    console.log("------------- ! secondo capitolo finito !  ----------------------------------")

    chapterNum = 3
    for(var pp=1;pp<=2;pp++){
        for(var idx=0;idx<=10;idx++){

            var paragraphefile = "parag_III_" + pp + "_chunk_"+idx+".txt"
            if (fs.existsSync("paragraphes/"+paragraphefile)) {
                console.log("---- chapter num " + chapterNum + " - pp = " +pp+ " - idx = " +idx )
                
                var paragraphedata = fs.readFileSync("paragraphes/"+paragraphefile, 'latin1');
                console.log("---- estimating gas...");
                const estimatedGas = await ectk.addToChapitre.estimateGas(chapterNum, pp, paragraphedata);
                var gasOk = estimatedGas + 100000;
                console.log("gasOk = " + gasOk);
                await ectk.addToChapitre(chapterNum, pp, paragraphedata, { gas: gasOk });
                sleep.sleep(sleepingSeconds)
                console.log("await done!  ----------------------------------")
            }
        }
    }
    console.log("------------- ! terzo capitolo finito !  ----------------------------------")

}