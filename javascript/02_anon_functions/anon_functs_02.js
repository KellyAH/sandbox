// https://www.javascripttutorial.net/javascript-anonymous-functions/

// An anonymous function is a function without a name.
// It is not accessible after its initial creation. Therefore, you often need to assign it to a variable.

// anon funct that does not take an argument
let printGreeting = function(){
  console.log("Hi there");
}

printGreeting();

// ARROW SYNTAX - shorthand for declaring anonymous functions:
let sayGreeting = () => console.log("Aloha");

sayGreeting();

// --------------
// anon funct that takes an argument

let yellMessage = function(message){
  console.log(message.toUpperCase());
}

yellMessage("can you hear me?");

// --------------
// ARROW SYNTAX - shorthand for declaring anonymous functions:

let upperCaseMessage = message => console.log(message.toUpperCase());

upperCaseMessage("Hello out there!");