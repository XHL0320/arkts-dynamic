/*
 * Declaration Stage 1
 * Expected: compile error.
 * Reason: class declarations cannot be duplicated in the same lexical scope.
 */

class A {
}

class A {
}
