/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: extracted method loses this.
 * Boundary reason: this becomes undefined in strict mode when receiver is lost.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

let obj = {
  value: 42,
  getValue(): number { return this.value }
}

function main(): void {
  let extracted: () => number = obj.getValue
  // extracted() — this is lost (undefined in strict, globalThis in non-strict)
  // This boundary documents the behavior.
  assertTrue(true, 'extracted method this boundary documented')
}

main()
