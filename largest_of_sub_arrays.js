function largestOfFour(arr) {
  return arr.map(greatest);
}

function greatest(subArr) {
  return subArr.reduce(checkGreater);
}

function checkGreater(prev, next) {
  return prev > next ? prev : next;
}

largestOfFour([[4, 5, 1, 3], [13, 27, 18, 45, 26], [32, 35, 37, 39], [1000, 1001, 857, 1]]);
