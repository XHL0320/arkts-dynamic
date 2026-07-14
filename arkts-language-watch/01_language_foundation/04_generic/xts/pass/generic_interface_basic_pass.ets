/*
 * Case ID: GEN-PASS-008
 * Coverage ID:
 *   - GEN-IF-001
 *   - GEN-IF-004
 * Feature: generic
 * Test Type: pass
 * Expected Phase: runtime
 * Expected Outcome: value
 * Validation Status: validation_pending
 * Owner Chapter: 04_generic
 * Related Chapters: interface
 * Spec Source: pending
 * Description: Verify generic interface basic declaration and class implements.
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
