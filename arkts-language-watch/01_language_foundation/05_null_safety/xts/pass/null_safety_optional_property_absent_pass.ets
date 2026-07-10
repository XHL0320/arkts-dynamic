/*
 * Null Safety Stage 1
 * Test point: optional property absent returns undefined.
 * Expected: accessing absent property returns undefined (not an error).
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

interface Config {
  required: string
  optional?: number
}

function main(): void {
  let c: Config = { required: "yes" }
  assertTrue(c.required === "yes", 'required property present')
  assertTrue(c.optional === undefined, 'optional property absent is undefined')
  assertTrue(!("optional" in c), 'optional property not in object when absent')

  let c2: Config = { required: "yes", optional: 42 }
  assertTrue(c2.optional === 42, 'optional property present when provided')
}

main()
