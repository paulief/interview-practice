// https://codefights.com/challenge/93X6yaXNtLdRLrSJm

function beautiful_binary_strings(BinaryString) {
    var letters = BinaryString.split('');
    
    if (letters.length % 2 !== 0) {
        return false;
    }

    return removeAdjacentPairs(letters, 0).length === 0;
}

function removeAdjacentPairs(arr, start) {
    if (start >= arr.length - 1) {
        return arr;
    };
        
    if (arr[start] === arr[start + 1]) {
        arr.splice(start, 2);
        
        var newStart = start === 0 ? 0 : start - 1;
        return removePairs(arr, newStart);
    } else {
        return removePairs(arr, start + 1);
    };
}
