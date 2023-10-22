// TODO: Clean up, break out

/* CALLBACKS
A callback is a function passed as an argument to another function
This technique allows a function to call another function.

A callback function can run after another function has finished.
are SYNCRONOUS!
but can be executed in async mode

callbacks are often used to continue code execution
after an asynchronous operation has completed —
these are called asynchronous callbacks.

A good example is the callback functions executed inside
a .then() block chained onto the end of a promise
after that promise fulfills or rejects.
This structure is used in many modern web APIs, such as fetch().
*/

function uppercasedName(name = 'Sara') {
  return name.toUpperCase();
}

function lowercasedName(name = 'Sara') {
  return name.toLowerCase();
}

// save function to var AKA function expression
let new_name = function (name = 'Sara') {
  return '3' + name.toLowerCase();
}

const new_name_too = function (name = 'Sara') {
  return '5' + name.toLowerCase();
}

// FUNCTIONS USING CALL BACKS
function sayGreeting(callback) {
  console.log("Hello" + ' ' + callback());
}

function sayFarewell(callback) {
  console.log("Bye" + ' ' + callback());
}

function sayFarewell02(name, callback) {
  console.log("Bye" + ' ' + callback(name));
}

// pass function to invoking function via function name
sayGreeting(uppercasedName);
sayGreeting(lowercasedName);
sayFarewell(lowercasedName);
sayFarewell(new_name);
sayFarewell(new_name_too);
lowercasedName = true;
new_name = true;
// this will break due to constant trying ot be reassigned which is not allowed
// this protects the funcytion/or naything assigned ot the var from being overrideen
// new_name_too = true;

// pass function to invoking function via
// directly defining callback function directly in invoking function
sayFarewell( function(name='GEORGE'){
  return name.toLowerCase();
});

// syntax sugar - arrow functions
sayFarewell( (name='MARY') => name.toLowerCase());

// do not set default name value
sayFarewell02('Toel', (name) => name.toLowerCase());




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