/*
 * Interface Stage 1
 * Test point: interface extends single interface.
 * Expected: sub-interface inherits parent interface members.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Base {
  id: number
}

interface Extended extends Base {
  name: string
}

function main(): void {
  let obj: Extended = { id: 1, name: "test" }
  assertTrue(obj.id === 1, 'inherited property id')
  assertTrue(obj.name === "test", 'own property name')
}

main()
