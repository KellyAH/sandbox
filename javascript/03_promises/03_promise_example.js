// promises are special objects used to help with async operations
// avoid callback hell
// write async code in synconized fashion

//  everyone uses it because it is now the standard way to deal with asynchronous code and avoid callback hell



// then, catch, finally

const promise = new Promise(function(resolve,reject){
  resolve('resolved promise');
// make it randomly resolve or reject after a delay
});

promise
  .then(result => console.log(result))
  .catch(result => console.log(result));

