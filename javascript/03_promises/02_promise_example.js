// https://www.geeksforgeeks.org/javascript-promises/
// promise objectivfies an async function/action
let promise = new Promise(function(resolve, reject){
  const x = "geeksforgeeks";
  const y = "geeksforgeeks";

  // mimic the async function resolving or failing.
  if(x === y) {
    resolve();
  } else {
    reject();
  }
});

// Promises can be consumed by .then and .catch methods.
promise.
  then(function () {
    console.log('Success, You are a GEEK')
  })
  .catch(function () {
    console.log('Some error has occurred');
  });