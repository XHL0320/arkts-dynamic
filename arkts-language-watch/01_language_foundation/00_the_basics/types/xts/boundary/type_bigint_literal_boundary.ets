// Boundary / pending confirmation.
// Test point: bigint literal support in ArkTS dynamic.
// This file is a source candidate and should not be treated as stable pass before toolchain validation.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value = 9007199254740993n
assertTrue(typeof value === 'bigint', 'bigint literal should have bigint runtime type if supported')
