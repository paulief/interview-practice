function chunkArrayInGroups(arr, size) {
  return chunk(arr, size, []);
}

function chunk(arr, size, start) {
  start.push(arr.slice(0, size));

  if (arr.length <= size) {
    return start;
  }

  return chunk(arr.slice(size), size, start);
}

chunkArrayInGroups(["a", "b", "c", "d"], 2);
