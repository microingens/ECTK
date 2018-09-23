var fs = require('fs');

var dataArray;
fs.readFile('manifeste_elastogenese.txt', 'utf8', function(err, data) {  
    if (err) throw err;

    console.log("manifest lenght = " + data.length);

    LL = data.length
    Lchunk = 1000 //LL/10

    cc=0
    while(cc<LL){
        datachunk = data.slice(cc, cc+Lchunk)
        console.log("datachunk = " + datachunk.length);        
        
        var chunkFile = "chunk_" + cc + ".txt";
        fs.writeFile(chunkFile, datachunk, err => {
            if (err) throw err;
            console.log('File ' + chunkFile + 'successfully written to disk');
        })          
        cc+=Lchunk
    }

    /*dataArray = data.split(".");


    console.log("LL = " + dataArray.length);

    var cc =0
    dataArray.forEach(function(value){
        cc++
        console.log(cc + " -> " + value);
    })*/
    
    
});

