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
  f2();
}

main();
// sync functions execute 1st, then async functions execute.
// =>
// main
// f2
// f1
