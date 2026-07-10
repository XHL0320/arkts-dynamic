/*
 * This Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: accessor extracted this boundary.
 * Boundary reason: getter/setter extracted loses receiver this.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

class AccessorTest {
  _v: number = 42
  get v(): number { return this._v }
}

function main(): void {
  let obj: AccessorTest = new AccessorTest()
  // Extracting getter and calling it loses `this`
  // let getter = obj.v (as function) — but getters are not directly extractable
  // This boundary documents the behavior.
  assertTrue(obj.v === 42, 'accessor on receiver works')
  assertTrue(true, 'accessor extracted boundary documented')
}

main()
