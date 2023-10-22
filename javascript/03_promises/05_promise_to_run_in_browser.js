// fetch();
// https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch

// NOTE: other public APIs that return JSON which you can play with
// https://mixedanalytics.com/blog/list-actually-free-open-no-auth-needed-apis/


// fetch from a URL that returns HTML which triggers the catch.
// 1. go to https://example.com/
// 2. run this in dev tools console
fetch('https://example.com')
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(callback => console.log('failed'));

// fetch from a URL that returns JSON
// 1. go to https://www.7timer.info/bin/astro.php?lon=113.2&lat=23.1&ac=0&unit=metric&output=json&tzshift=0
// 2. run this in dev tools console
fetch('https://www.7timer.info/bin/api.pl?lon=113.17&lat=23.09&product=astro&output=json')
  .then(response => response.json())
  .then(data => console.log(data))
  .catch(callback => console.log('failed'));



