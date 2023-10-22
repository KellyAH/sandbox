// from: https://www.youtube.com/watch?v=8aGhZQkoFbQ&list=PL8AhW8Fjt2GwuvJtFkleGaBEgxKUSSvkd&ab_channel=JSConf
// code is NOT executed in the sequence it is written in
console.log("1");

setTimeout( () => {
  console.log("2");
}, 3000);

console.log("3");

// setTimeout to 0 to defer code execution to after the call stack is clear.
setTimeout( () => {
  console.log("4");
}, 0);

console.log("5");