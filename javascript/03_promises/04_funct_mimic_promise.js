// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Using_promises
// Imagine a function, createAudioFileAsync(), which asynchronously generates a sound file given a configuration record and two callback functions, one called if the audio file is successfully created, and the other called if an error occurs.

// WARNING - code is NOT runnable. Is merely an example to explain promises. //
function createAudioFileAsync(audioSettings, successfulCallback, failedCallback){
  //
};

function successfulCallback(result){
  console.log("Audio file ready at URL: " + result);
};

function anothersuccessfulCallback(result){
  console.log("Audio file ready at URL: " + result);
};

function sometimessuccessfulCallback(result){
  console.log("Audio file ready at URL: " + result);
};

function wrappersuccesscallback(result) {
  successfulCallback(result);
  anothersuccessfulCallback(result);
  if (somevalue) sometimessuccessfulCallback(result);
}

function failedCallback(error){
  console.error("Error generating audio file: " + error);
};

// written as a function - callbacks passed in
createAudioFileAsync(audioSettings, successfulCallback, failedCallback);

// written as a promise - attached callbacks
// Essentially, a promise is a returned object to which you attach callbacks, instead of passing callbacks into a function.
createAudioFileAsync(audioSettings).then(successfulCallback, failedCallback);

// Promises and .then allow you to chain multi async operations. 

library = {
  getcallback: createAudioFileAsync(audioSettings).then(successfulCallback)
}

const mycallback = library.getcallback().then(anothersuccessfulCallback);

if (somevalue) mycallback.then(sometimessuccessfulCallback)

mycallback.catch(failedCallback)

// See 02_promise_chaining.js

createAudioFileAsync(audioSettings).then(successfulCallback).then(anothersuccessfulCallback)


