/*
 * Expected: compile error.
 * Reason: duplicate implementation functions with the same name are not valid overload implementation form.
 */
function duplicateImpl(value: number): number {
  return value
}

function duplicateImpl(value: string): string {
  return value
}
