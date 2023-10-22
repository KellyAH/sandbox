// https://javascript.info/promise-basics

// promises are for dealing with multiple asynchronous operations where callbacks can create callback hell leading to unmanageable code. 

// https://www.freecodecamp.org/news/async-await-javascript-tutorial/
// we can use promises to do asynchronous work, and to be sure that we can handle any result from those promises. When we use promises, we chain our functions onto the promise to handle the different scenarios.

// https://www.geeksforgeeks.org/javascript-promises/

// create a promise via Promise constructor
// it takes only one argument, a callback function / an anonymous function

// promise missing it's function
let brokenPromise = new Promise();

let completePromise = new Promise(function(resolve, reject){
  // do something
});

// arrow syntax
let completePromiseWithArrowSyntax = new Promise((resolve, reject)=>{
    // do something
});

