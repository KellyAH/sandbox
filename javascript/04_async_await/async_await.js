// used to write async code that looks syncronous

// can cause race conditions
// for JS it's best to write code assuming that it's all async. not sync. so you don't mentally trip over

// async and await must be used together.
// is SYNTACTIAL SUGAR that makes promises easier to work with.
// https://www.youtube.com/watch?v=V_Kr9OSfDeU&ab_channel=WebDevSimplified
// mimic syncrnous functon calls in it's steps
// guarentees order of opereations
// prefered for readability
async function async_await_function() {
  console.log("before await");
  // await is easier to read then a lot of chained and nested '.then'
  await returns_a_promise();
  console.log("after await, should see promise"); // only executes after await line 12 resolves
}

// behaves like an async await function
// this function is synonmous to async_await_function
function promise_based() {
  console.log("before await");
  returns_a_promise().then(result => console.log("in promise_based, after await, should see promise"));
  // line 19 is equivilant to
  //   await returns_a_promise();
  //   console.log("after await, should see promise");
}

//returns a promise
function returns_a_promise() {
  // when promise resolves it'll wait 1 sec then console log resolved promise
  return new Promise(function(resolve,reject){
    setTimeout(()=>{
        resolve('resolved promise');
      }
      ,2000);
  }).then(result => console.log(result));
}

async_await_function();
// promise_based();