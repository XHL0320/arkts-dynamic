/*
 * Generic Stage 1
 * Test point: generic function with multiple type parameters.
 * Expected: pair<K, V> works with two type parameters.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function pair<K, V>(key: K, value: V): [K, V] {
  return [key, value]
}

function main(): void {
  let p: [string, number] = pair("age", 30)
  assertTrue(p[0] === "age", 'pair key')
  assertTrue(p[1] === 30, 'pair value')
}

main()
