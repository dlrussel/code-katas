/**
 * Recursion Practice
 * Create a function that computes a factorial recursively
 * n! = n * (n! - 1)
 */

// 4! = 4 * 3 * 2 * 1
// 3! = 3 * 2 * 1
// 2! = 2 * 1

function factorial(n) {
  if (n < 2) return 1;

  return n * factorial(n - 1);
}

// expect equal to 6
console.log(factorial(3));

// expect equal to 24
console.log(factorial(4));
