/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: export generic function/class.
 * Boundary reason: dynamic ArkTS generic export support needs confirmation.
 * Module resolution and binding behavior are covered in 06_module.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

export function genericIdentity<T>(value: T): T {
  return value
}

export class GenericContainer<T> {
  value: T
  constructor(v: T) { this.value = v }
}

function main(): void {
  let result: number = genericIdentity(42)
  assertTrue(result === 42, 'exported generic function works')
  let c: GenericContainer<string> = new GenericContainer("exported")
  assertTrue(c.value === "exported", 'exported generic class works')
}

main()
