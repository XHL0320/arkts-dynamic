/*
 * Interface Stage 1
 * Test point: object literal assigned to interface type.
 * Expected: object literal with matching structure can be assigned to interface type.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Point {
  x: number
  y: number
}

function main(): void {
  let p: Point = { x: 10, y: 20 }
  assertTrue(p.x === 10, 'object literal property x')
  assertTrue(p.y === 20, 'object literal property y')
}

main()
