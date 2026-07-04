// Coverage: DECORATOR-CLASS-FEATURE-0029, DECORATOR-CLASS-FEATURE-TD-0029
// Stage 9 boundary: accessor (getter/setter) + property decorator
// Semantic uncertainty: accessor decorator not confirmed as supported in current ArkTS
// No sendable, no PR10632, no ArkUI
// No strong assertion — boundary candidate
// Not treating accessor decorator as confirmed supported

function propDec(target: Object, key: string): void {
  // Simple property decorator — no modification
}

class A {
  private _value: number = 1

  @propDec
  get value(): number {
    return this._value
  }

  @propDec
  set value(v: number) {
    this._value = v
  }
}

function main(): void {
  let a = new A()
  // Boundary: accessor decorator support not confirmed
  // If compiler rejects decorator on getter/setter, this becomes fail_compile
}
