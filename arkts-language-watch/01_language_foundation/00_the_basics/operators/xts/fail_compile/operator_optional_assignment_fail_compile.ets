// Expected: compile error.
// Reason: optional chaining cannot be used as assignment target.
// The left-hand side of an assignment cannot be an optional chain expression.

function main(): void {
  let obj: Record<string, number> = { value: 1 }
  obj?.value = 2
}
