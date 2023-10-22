// Async -> not occuring at the same time
// - fetch data from server
// - execute X with a delay
// - execute X after an event
// https://www.youtube.com/watch?v=pIjfzjsoVw4&t=7s&ab_channel=TapasAdhikary

// Async functions are triggered by:
// 1. web APIs: setTimeout, click, mouse over
// 2. Promises

function printMe() {
  console.log("Hi");
}

// prints out text after a delay of 2 secs
setTimeout(printMe, 2000);

// even if no delay is set, JS engine will still print Hi AFTER test
// due to async JS engine handles setTimeout as async and execute all other functions sync, then executes setTimeout async
// setTimeout(printMe, 0);

function test() {
  console.log('test');
}

// test function prints before Hi
test();