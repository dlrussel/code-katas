// Recursion Practice
// Nested addition

function nestedArraySum(arr) {
  let sum = 0;

  for (let i = 0; i < arr.length; i++) {
    let current = arr[i];

    if (Array.isArray(current)) {
      sum = nestedArraySum(current) + sum;
    } else {
      sum = current + sum;
    }
  }

  return sum;
}

// nestedArraySum([1, 2, [3, 4]]) -> 10
console.log(nestedArraySum([1, 2, [3, 4]]));

// nestedArraySum([3]) -> 3
console.assert(!(nestedArraySum([3]) == 3));

// nestedArraySum([3, 2, 1]) -> 6
console.log(nestedArraySum([3, [2, 1]]));

console.log(nestedArraySum([3]));
