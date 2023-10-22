// README: https://www.freecodecamp.org/news/async-await-javascript-tutorial/

// used to write async code that looks syncronous

// can cause race conditions
// for JS it's best to write code assuming that it's all async. not sync. so you don't mentally trip over

// mimic syncrnous functon calls in it's steps
// guarentees order of opereations
// async await functions are easier to read than chained .then
async function async_await_function() {
  console.log("before await");
  // await is easier to read then a lot of chained and nested '.then'
  const number = await returns_a_promise();
  const number02 = await returns_a_promise();
  console.log(`sum is: ${number + number02}`);
}

// behaves like an async await function
// this function is synonmous to async_await_function
function promise_based() {
  console.log("before result");
  // returns_a_promise().then(number => console.log(`number is: ${number}`));
  returns_a_promise().then(
    number => {
      returns_a_promise().then(number02 => console.log(`sum is: ${number + number02}`))
    }
  );
}

//returns a promise
function returns_a_promise() {
  // when promise resolves it'll wait 1 sec then console log resolved promise
  return new Promise(function(resolve,reject){
    setTimeout(()=>{
        resolve(Math.random());
      }
      ,1000);
  });
}

async_await_function();
promise_based();