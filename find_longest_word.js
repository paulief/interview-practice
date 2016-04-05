function findLongestWord(str) {
  var words = str.split(' ');
  
  return words.reduce(checkLength, '').length;
}

function checkLength(prev, next) {
  return next.length > prev.length ? next : prev;
}

findLongestWord("The quick brown fox jumped over the lazy dog");
