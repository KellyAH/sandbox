// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises#chaining

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise

// Chaining
// A common need is to execute two or more asynchronous operations back to back, where each subsequent operation starts when the previous operation succeeds, with the result from the previous step. We accomplish this by creating a promise chain. 

// To avoid callback hell from nesting callbacks... we attach our callbacks to the returned promises instead, forming a promise chain:

doSomething()
.then(function(result) {
  return doSomethingElse(result);
})
.then(function(newResult) {
  return doThirdThing(newResult);
})
.then(function(finalResult) {
  console.log('Got the final result: ' + finalResult);
})
.catch(failureCallback);

// ARROW FUNCT syntax is even easier to read.
doSomething()
.then(result => doSomethingElse(result))
.then(newResult => doThirdThing(newResult))
.then(finalResult => {
  console.log(`Got the final result: ${finalResult}`);
})
.catch(failureCallback);

// Important: Always return results, otherwise callbacks won't catch the result of a previous promise (with arrow functions () => x is short for () => { return x; }).

// The methods promise.then(), promise.catch(), and promise.finally() are used to associate further action with a promise that becomes settled.