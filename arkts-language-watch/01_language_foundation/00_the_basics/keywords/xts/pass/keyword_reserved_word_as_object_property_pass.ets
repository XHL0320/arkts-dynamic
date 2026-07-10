/*
 * Keyword Stage 1
 * Test point: reserved word as object property name.
 * Expected: keywords can be used as object property names using computed access.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let obj: Record<string, number> = {}
  obj["class"] = 1
  obj["return"] = 2
  obj["function"] = 3
  assertTrue(obj["class"] === 1, 'keyword as computed property name: class')
  assertTrue(obj["return"] === 2, 'keyword as computed property name: return')
  assertTrue(obj["function"] === 3, 'keyword as computed property name: function')
}

main()
