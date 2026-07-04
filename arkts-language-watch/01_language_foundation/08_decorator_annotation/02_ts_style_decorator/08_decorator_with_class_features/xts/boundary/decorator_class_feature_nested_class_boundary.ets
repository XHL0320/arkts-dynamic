// Coverage: DECORATOR-CLASS-FEATURE-0135, DECORATOR-CLASS-FEATURE-TD-0135
// Stage 9 boundary: nested class + class decorator
// Semantic uncertainty: nested/local class decorator not confirmed in current ArkTS
// No sendable, no PR10632, no ArkUI
// No strong assertion — boundary candidate
// Not treating local class decorator as confirmed supported

function classDec(target: Object): void {
  // Simple class decorator — no modification
}

class Outer {
  @classDec
  class Inner {  // Boundary: nested class decorator support unclear
    value: number = 1
  }
}

function main(): void {
  // Boundary: nested class decorator support not confirmed
  // If compiler rejects decorator on nested class, this becomes fail_compile
}
