/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: Record-like generic object.
 * Boundary reason: dynamic ArkTS Record<K,V> or mapped type support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface StringMap<V> {
  [key: string]: V
}

function main(): void {
  let map: StringMap<number> = { "a": 1, "b": 2 }
  assertTrue(map["a"] === 1, 'Record-like object access a')
  assertTrue(map["b"] === 2, 'Record-like object access b')
}

main()
