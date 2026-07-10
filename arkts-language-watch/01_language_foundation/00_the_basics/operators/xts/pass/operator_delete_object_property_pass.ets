/*
 * Operator Stage 1
 * Test point: delete object property.
 * Expected: delete obj.x returns true, property removed.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function main(): void {
  let obj: Record<string, number> = { x: 1, y: 2 }
  assertTrue(delete obj.x === true, 'delete returns true for configurable property')
  assertTrue(obj.x === undefined, 'deleted property is undefined')
  assertTrue(!("x" in obj), 'deleted property is not in object')
  assertTrue(obj.y === 2, 'other properties remain')
  assertTrue(delete obj.nonExistent === true, 'delete non-existent returns true')
}

main()
