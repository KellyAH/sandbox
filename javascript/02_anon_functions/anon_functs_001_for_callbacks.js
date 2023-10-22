// https://www.freecodecamp.org/news/what-is-a-callback-function-in-javascript/

// A higher-order function...
// A function that accepts other functions as arguments
function createQuote(quote, callback){
  let myQuote = "I say: " + quote;
  callback(myQuote);
}

// JS often passes anonymous functions as arguments to other functions.

// DEFINED DIRECTLY IN INVOCATION
createQuote("Count your blessings", function (quote){
  console.log(quote);
});

// -- w/ ARROW SYNTAX
createQuote("Penny saved", (quote) => {console.log(quote);});

// ANON FUNCT SAVED TO A VARIABLE
let say = function(quote){
  console.log(quote);
};
createQuote("Boring..", say);

// --  w/ ARROW SYNTAX
let speak = (quote) => {console.log(quote)};
createQuote("Eat veggies", speak);