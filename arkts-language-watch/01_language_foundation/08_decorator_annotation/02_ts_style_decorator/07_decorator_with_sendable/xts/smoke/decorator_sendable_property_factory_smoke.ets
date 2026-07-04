// Coverage: DECORATOR-SENDABLE-0029, DWS-TD-0029
// Stage 6 smoke: sendable class + property decorator factory
// Expected: property init value unchanged after decorator factory application
// Bytecode future check: factory return function does NOT have sendable bytecode

function decoratorFactory(): (target: Object, key: string) => void {
  return function(target: Object, key: string): void {
    // Property decorator returned by factory — no modification
  }
}

class A {
  constructor() {
    "use sendable";
  }
  @decoratorFactory()
  prop: string = "222"
}

function main(): void {
  let a = new A()
  // assertTrue(a.prop == "222")
}
