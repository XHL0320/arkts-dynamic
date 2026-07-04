// Coverage: DECORATOR-CLASS-FEATURE-0088, DECORATOR-CLASS-FEATURE-TD-0088
// Stage 9 boundary: overloaded method + method decorator
// Semantic uncertainty: method overload with decorator not confirmed in current ArkTS
// No sendable, no PR10632, no ArkUI
// No strong assertion — boundary candidate

function methodDec(target: Object, key: string): void {
  // Simple method decorator — no modification
}

class A {
  @methodDec
  value(): number {
    return 1
  }

  @methodDec
  value(x: number): number {
    return x
  }
}

function main(): void {
  let a = new A()
  // Boundary: overload + decorator support not confirmed
  // If compiler rejects overload with decorator, this becomes fail_compile
}
