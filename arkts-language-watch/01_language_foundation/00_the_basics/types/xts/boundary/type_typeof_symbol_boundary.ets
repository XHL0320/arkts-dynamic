// Boundary / pending confirmation.
// Test point: typeof symbol support in ArkTS dynamic.
// This file is a source candidate and should not be treated as stable pass before toolchain validation.
function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

let value = Symbol('type-stage1')
assertTrue(typeof value === 'symbol', 'typeof symbol should be symbol if Symbol is supported')
