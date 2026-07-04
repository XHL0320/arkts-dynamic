/*
 * Feature: TS Style Decorator
 * SubFeature: 00_decorator_syntax
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-SYNTAX-0006
 * Related Spec: decorator call expression syntax is accepted.
 * Expected: Decorator factory call syntax compiles and the decorated class remains usable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function syntaxDecoratorFactory(): (target: Object) => void {
  return (target: Object): void => {
    let observed: Object = target
    if (observed === null) {
      throw new Error("decorator factory target should be available")
    }
  }
}

@syntaxDecoratorFactory()
class SyntaxFactoryCallPass {
  public value: number = 4
}

export function testDecoratorSyntax_FactoryCallPass(): void {
  let obj: SyntaxFactoryCallPass = new SyntaxFactoryCallPass()
  assertEqualNumber(obj.value, 4, "decorator factory call syntax should keep class usable")
}

testDecoratorSyntax_FactoryCallPass()
