// https://javascript.info/async-await
// https://www.w3docs.com/learn-javascript/async-await.html
// https://www.geeksforgeeks.org/async-await-function-in-javascript/
// https://www.freecodecamp.org/news/async-await-in-javascript/

// -- WHAT -- //

// syntactic sugar 
// It allows us to write promises based code as if it was synchronous.
// Async/Await is a way of writing promises that allows us to write asynchronous code in a synchronous way. So we can handle our logic inside callbacks (nested functions) once we get our results back from a promise/promise chains.

// -- WHY -- //

// The async and await keywords enable asynchronous, promise-based behavior to be written in a cleaner style, avoiding the need to explicitly configure promise chains.
// It allows a program to run a function without freezing the entire program.

// Async/Await makes it easier to write promises. The keyword ‘async’ before a function makes the function return a promise, always. And the keyword await is used inside async functions, which makes the program wait until the Promise resolves.

//THUS: await can be considered a more elegant way to get the promise result than promise.then.

// The keyword await makes JavaScript wait until that promise settles and returns its result.
async function farewell_jpn() {
  let promise = new Promise((resolve, reject) => {
    setTimeout(() => resolve("Sayonara!"), 1000)
  });
  
  let result = await promise; // wait until the promise resolves
  console.log(result); // result:  "Sayonara!"
}

farewell_jpn();