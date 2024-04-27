function mergeSort(arr) {
  //base case
  if (arr.length < 2) {
    return arr;
  }

  //break the array in the middle
  const middle = Math.floor(arr.length / 2);
  const leftArray = arr.slice(0, middle);
  console.log(leftArray);
  const rightArray = arr.slice(middle);
  console.log(rightArray);

  return merge(mergeSort(leftArray), mergeSort(rightArray));
}

function merge(sortedArr1, sortedArr2) {
  // we can always assume each of these arrays are already sorted
  const newArr = [];

  while (sortedArr1.length && sortedArr2.length) {
    if (sortedArr1[0] < sortedArr2[0]) {
      newArr.push(sortedArr1.shift());
    } else {
      newArr.push(sortedArr2.shift());
    }
  }
  return newArr.concat(sortedArr1, sortedArr2);
}

// console.log(mergeSort([3, 2, 1]));
console.log(mergeSort([2, 1, 3, 7, 4, 9, 1]));
