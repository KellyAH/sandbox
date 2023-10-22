// https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Asynchronous/Promises

// TODO: fix fetch  - install node  Node.js 12.20.0.
// https://www.npmjs.com/package/node-fetch
// import fetch from 'node-fetch';

// TODO import v.s. require for node/JS

// RUN THIS IN YOUR BROWER
const fetchPromise = fetch('https://mdn.github.io/learning-area/javascript/apis/fetching-data/can-store/products.json');

fetchPromise.then( response => {
  const jsonPromise = response.json();
  jsonPromise.then( json => {
    console.log(json[0].name);
  });
});


// RUN THIS IN YOUR BROWER
// const fetchPromise = fetch('https://mdn.github.io/learning-area/javascript/apis/fetching-data/can-store/products.json');

// fetchPromise.then( response => {
//   const jsonPromise = response.json(); // response.json() is a promise
//   console.log(jsonPromise);
// });