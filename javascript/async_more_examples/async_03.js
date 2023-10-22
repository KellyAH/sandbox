// https://www.youtube.com/watch?v=pIjfzjsoVw4&t=7s&ab_channel=TapasAdhikary

function f1() {
  console.log("f1");
}

function f2() {
  console.log("f2");
}

function main() {
  console.log("main");
  setTimeout(f1, 0);

  new Promise(function(resolve,reject){
    resolve('I am a promise');
  }).then(result => console.log(result));

  f2();
}

main();
// sync functions execute 1st, then promise in job queue, then callback function in call back queue.
// =>
// main
// f2
// I am a promise
// f1