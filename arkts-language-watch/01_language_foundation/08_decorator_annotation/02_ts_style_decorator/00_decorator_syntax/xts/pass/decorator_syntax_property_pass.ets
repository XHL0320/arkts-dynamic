/*
 * Feature: TS Style Decorator
 * SubFeature: 00_decorator_syntax
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-SYNTAX-0002
 * Related Spec: property declaration accepts a decorator before property.
 * Expected: Decorated property syntax compiles and the class instance is usable.
 */

function assertEqualString(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function syntaxPropertyDecorator(target: Object, propertyKey: string): void {
  let observedTarget: Object = target
  let observedKey: string = propertyKey
  if (observedTarget === null || observedKey.length === 0) {
    throw new Error("property decorator target/key should be available")
  }
}

class SyntaxPropertyPass {
  @syntaxPropertyDecorator
  public name: string = "syntax"
}

export function testDecoratorSyntax_PropertyDecoratorPass(): void {
  let obj: SyntaxPropertyPass = new SyntaxPropertyPass()
  assertEqualString(obj.name, "syntax", "decorated property should keep initializer value")
}

testDecoratorSyntax_PropertyDecoratorPass()
