// https://www.freecodecamp.org/news/what-is-a-callback-function-in-javascript/

// simulates a request to a server:
// we make a mock request to a server. After 5 seconds elapse the response is modified and then our callback function getResults gets executed.

// visualize call stack and callback queue
// http://latentflip.com/loupe
function serverRequest(query, callback){
  setTimeout(function(){      // setTimeout() is an asynchronous function
    let response = query + "full!";
    callback(response);
  }, 3000);
}

function getResults(results){
  console.log("respone from the server: " + results);
}

serverRequest("the glass is half ", getResults);