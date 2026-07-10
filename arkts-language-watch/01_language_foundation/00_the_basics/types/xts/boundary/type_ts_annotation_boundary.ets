// Boundary / pending confirmation.
// Test point: TypeScript type annotation compatibility in ArkTS dynamic.
function id(value: number): number {
  return value
}

let value: number = id(1)
