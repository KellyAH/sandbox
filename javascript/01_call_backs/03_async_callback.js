// https://www.learn-js.org/en/Callbacks

// CALL BACK EXAMPLE USING setTimeout

// 1. save anonomous function to a varaible.
let callback = function() {
    console.log("done!");
};

// 2. pass variable into setTimeout, which takes a callback: https://developer.mozilla.org/en-US/docs/Web/API/setTimeout
// It waits 5 seconds and prints out "Done!" when 5 seconds have elapsed.
setTimeout(callback, 5000);      // setTimeout() is an asynchronous function

// anonymous function callbacks defined in the setTimeout and not save to variable
setTimeout(function() {
    console.log("Done!");
}, 5000);