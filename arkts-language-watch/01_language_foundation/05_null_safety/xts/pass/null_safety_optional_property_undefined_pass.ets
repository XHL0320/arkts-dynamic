/*
 * Null Safety Stage 1
 * Test point: optional property with explicit undefined value.
 * Expected: optional property can exist with value undefined.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

interface Options {
  required: string
  optional?: number
}

function main(): void {
  let opts: Options = { required: "yes", optional: undefined }
  assertTrue(opts.optional === undefined, 'optional property is undefined')
  assertTrue("optional" in opts, 'optional property key exists when explicitly undefined')
}

main()
