// https://javascript.info/async-await

// “async” before a function means the function will always return a promise.
// async ensures that the function returns a promise, and wraps non-promises in it. 

// regular function
function farewell(){
  return "Bye";
};
// => Bye

// async function
async function farewell_jpn(){
  return "Sayonara";
};
// => Promise { 'Sayonara' }

// explicitly written with a promise
// => Promise { <pending> }
// because race condition, it prints out when promise is not resolved yet
async function farewell_hawaiian(){
  // return await Promise.resolve("Aloha");  //  -> return object result? // TODO FIDX THIS
  return Promise.resolve("Aloha");  // -> return promise
};

console.log(farewell());
console.log(farewell_jpn());
// hit race condition
// console.log(farewell_hawaiian());
// => Promise { <pending> }

// handle race condition?
console.log(farewell_hawaiian());

// handle race condition
// const resolvedPromise = farewell_hawaiian();
// setTimeout(()=>{console.log(resolvedPromise)},10);


// console.log("------");
// farewell_jpn().then(console.log);
// farewell_hawaiian().then(console.log);