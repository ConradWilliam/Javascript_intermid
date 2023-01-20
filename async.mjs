// Write your code below:

async function withAsync(num){
    if (num === 0){
     return('zero');
   } else {
     return('not zero');
   }
}


// Leave this commented out until step 3:

withAsync(100)
 .then((resolveValue) => {
 console.log(` withAsync(100) returned a promise which resolved to: ${resolveValue}.`);
})