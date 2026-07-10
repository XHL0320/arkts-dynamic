/*
 * Generic Stage 1
 * Test point: generic interface basic declaration.
 * Expected: KeyedStore<K, V> compiles and can be implemented.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface KeyedStore<K, V> {
  get(key: K): V
  set(key: K, value: V): void
}

class SimpleStore implements KeyedStore<string, number> {
  data: Record<string, number> = {}
  get(key: string): number { return this.data[key] }
  set(key: string, value: number): void { this.data[key] = value }
}

function main(): void {
  let store: KeyedStore<string, number> = new SimpleStore()
  store.set("count", 10)
  assertTrue(store.get("count") === 10, 'generic interface store get/set')
}

main()
