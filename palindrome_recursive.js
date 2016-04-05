function palindrome(str) {
  var noPunc = str.replace(/[\W+_]/g, '').toLowerCase().split('');
  return palRecursive(noPunc, 0);
}

function palRecursive(chars, idx) {
  if (idx > chars.length / 2 - 1) return true;
  if (chars[idx] !== chars[chars.length - idx - 1]) return false;
  
  return pal(chars, idx + 1);
}
