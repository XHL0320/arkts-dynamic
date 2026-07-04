// Coverage: DECORATOR-CLASS-FEATURE-0134, DECORATOR-CLASS-FEATURE-TD-0134
// Stage 9 boundary: class expression + class decorator
// Semantic uncertainty: class expression decorator not confirmed in current ArkTS
// No sendable, no PR10632, no ArkUI
// No strong assertion — boundary candidate

function classDec(target: Object): void {
  // Simple class decorator — no modification
}

let A = @classDec class {  // Boundary: class expression decorator support unclear
  value: number = 1
}

function main(): void {
  // Boundary: class expression + decorator support not confirmed
  // If compiler rejects decorator on class expression, this becomes fail_compile
}
