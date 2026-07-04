// Coverage: DECORATOR-CLASS-FEATURE-0063, DECORATOR-CLASS-FEATURE-TD-0063
// Stage 9 boundary: private member + property/method decorator
// Semantic uncertainty: visibility private with decorator not confirmed in current ArkTS
// No sendable, no PR10632, no ArkUI
// No strong assertion — boundary candidate

function propDec(target: Object, key: string): void {
  // Simple property decorator — no modification
}

function methodDec(target: Object, key: string): void {
  // Simple method decorator — no modification
}

class A {
  @propDec
  private value: number = 1

  @methodDec
  private getValue(): number {
    return this.value
  }
}

function main(): void {
  // Boundary: private member + decorator support not confirmed
  // If compiler rejects decorator on private members, this becomes fail_compile
}
