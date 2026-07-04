// Coverage: DECORATOR-CLASS-FEATURE-0064, DECORATOR-CLASS-FEATURE-TD-0064
// Stage 9 boundary: abstract class + class decorator
// Semantic uncertainty: abstract class may not support decorator in current ArkTS
// No sendable, no PR10632, no ArkUI
// No strong assertion — boundary candidate

function classDec(target: Object): void {
  // Simple class decorator — no modification
}

@classDec
abstract class A {
  abstract value(): number
}

class B extends A {
  override value(): number {
    return 1
  }
}

function main(): void {
  let b = new B()
  // Boundary: abstract class decorator support unclear
  // If compiler rejects decorator on abstract class, this becomes fail_compile
}
