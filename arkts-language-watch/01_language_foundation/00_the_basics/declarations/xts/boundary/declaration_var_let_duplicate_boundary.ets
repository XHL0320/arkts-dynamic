/*
 * Declaration Stage 1
 * Boundary / pending confirmation.
 * Test point: var and let duplicate binding in the same scope.
 * Reason: ECMAScript treats this as an early error; dynamic ArkTS diagnostic phase needs confirmation.
 */

var value: number = 1
let value: number = 2
