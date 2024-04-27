/**
 * Given an unsorted array of integers nums, return the length of the longest continuous increasing subsequence (i.e. subarray). The subsequence must be strictly increasing.
 */

function findLengthOfLCIS(nums) {
  let longestRun = 1;
  let currentRun = 1;

  for (let i = 0; i < nums.length; i++) {
    if (nums[i] < nums[i + 1]) {
      currentRun++;
    } else {
      if (currentRun > longestRun) {
        longestRun = currentRun;
      }
      currentRun = 1;
    }
  }
  return longestRun;
}

console.log(findLengthOfLCIS([2, 2, 2]));
