// js is not strict about passed args
function say(name) {
  console.log('hello world' + name.toLowerCase());
}
// throws error
say();
say(1,2);



// works
function say(name) {
  console.log('hello world' + name);
}
say();
say(1,2);
// prints
// hello world1
// hello worldundefined