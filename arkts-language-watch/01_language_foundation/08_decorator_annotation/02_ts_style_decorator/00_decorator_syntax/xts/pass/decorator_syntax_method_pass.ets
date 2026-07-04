/*
 * Feature: TS Style Decorator
 * SubFeature: 00_decorator_syntax
 * CaseType: pass
 * Priority: P0
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-SYNTAX-0003
 * Related Spec: method declaration accepts a decorator before method.
 * Expected: Decorated method syntax compiles and the method remains callable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function syntaxMethodDecorator(target: Object, propertyKey: string, descriptor: Object): void {
  let observedTarget: Object = target
  let observedKey: string = propertyKey
  let observedDescriptor: Object = descriptor
  if (observedTarget === null || observedDescriptor === null || observedKey.length === 0) {
    throw new Error("method decorator target/key/descriptor should be available")
  }
}

class SyntaxMethodPass {
  @syntaxMethodDecorator
  public count(): number {
    return 3
  }
}

export function testDecoratorSyntax_MethodDecoratorPass(): void {
  let obj: SyntaxMethodPass = new SyntaxMethodPass()
  assertEqualNumber(obj.count(), 3, "decorated method should remain callable")
}

testDecoratorSyntax_MethodDecoratorPass()
