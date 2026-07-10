/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: string index signature in interface.
 * Boundary reason: dynamic ArkTS index signature support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface StringIndex {
  [key: string]: number
}

function main(): void {
  let obj: StringIndex = { "a": 1, "b": 2 }
  assertTrue(obj["a"] === 1, 'string index signature access a')
  assertTrue(obj["b"] === 2, 'string index signature access b')
  obj["c"] = 3
  assertTrue(obj["c"] === 3, 'string index signature assignment')
}

main()
