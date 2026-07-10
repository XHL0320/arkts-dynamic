/*
 * Null Safety Stage 1
 * Boundary / pending confirmation.
 * Test point: interface optional member with undefined.
 * Boundary reason: dynamic ArkTS optional member compile-time checking needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

interface Partial {
  required: string
  optional?: number
}

class PartialImpl implements Partial {
  required: string = "present"
  // optional is omitted — should compile if optional is respected
}

function main(): void {
  let p: Partial = new PartialImpl()
  assertTrue(p.required === "present", 'required member present')
  assertTrue(p.optional === undefined, 'optional member absent is undefined')
}

main()
