/*
 * Interface Stage 1
 * Test point: interface with optional property.
 * Expected: optional property can be omitted.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Config {
  required: string
  optional?: number
}

function main(): void {
  let c1: Config = { required: "yes" }
  assertTrue(c1.required === "yes", 'required property present')
  assertTrue(c1.optional === undefined, 'optional property absent defaults to undefined')

  let c2: Config = { required: "yes", optional: 42 }
  assertTrue(c2.optional === 42, 'optional property present when provided')
}

main()
