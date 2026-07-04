/*
 * Feature: TS Style Decorator
 * SubFeature: 00_decorator_syntax
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-SYNTAX-0001
 * Related Spec: class declaration accepts a decorator before class.
 * Expected: Decorated class syntax compiles and the class remains constructable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function syntaxClassDecorator(target: Object): void {
  let observed: Object = target
  if (observed === null) {
    throw new Error("class decorator target should be available")
  }
}

@syntaxClassDecorator
class SyntaxClassPass {
  public value: number = 1
}

export function testDecoratorSyntax_ClassDecoratorPass(): void {
  let obj: SyntaxClassPass = new SyntaxClassPass()
  assertEqualNumber(obj.value, 1, "decorated class should be constructable")
}

testDecoratorSyntax_ClassDecoratorPass()
