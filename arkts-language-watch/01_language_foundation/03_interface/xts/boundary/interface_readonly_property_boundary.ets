/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: readonly property in interface.
 * Boundary reason: dynamic ArkTS readonly property compile-time enforcement needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface ReadOnlyConfig {
  readonly name: string
  value: number
}

function main(): void {
  let config: ReadOnlyConfig = { name: "fixed", value: 42 }
  assertTrue(config.name === "fixed", 'readonly property accessible')
  assertTrue(config.value === 42, 'writable property accessible')
  // config.name = "changed" // Would be compile error if readonly is enforced
  config.value = 100
  assertTrue(config.value === 100, 'writable property can be reassigned')
}

main()
