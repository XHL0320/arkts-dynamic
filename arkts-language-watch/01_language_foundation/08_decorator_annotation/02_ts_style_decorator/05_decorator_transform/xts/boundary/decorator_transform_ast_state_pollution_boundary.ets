/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: boundary
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: DECORATOR-TRANSFORM-0057, DECORATOR-TRANSFORM-0062, DECORATOR-TRANSFORM-0063, DECORATOR-TRANSFORM-0064
 * Related Spec: AST state pollution risk after decorator lowering.
 * Expected: Ordinary decorator argument function remains callable; codegen risk needs follow-up candidates.
 */

let astBoundaryValue: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function astBoundaryFactory(callback: () => number) {
  astBoundaryValue = callback()
  return function(target: Object, key: string): void {
  }
}

class TransformAstStatePollutionBoundary {
  @astBoundaryFactory(() => 11)
  public value: number = 11
}

export function testDecoratorTransform_AstStatePollutionBoundary(): void {
  let obj: TransformAstStatePollutionBoundary = new TransformAstStatePollutionBoundary()
  assertEqualNumber(obj.value, 11, "decorated property should remain initialized")
  assertEqualNumber(astBoundaryValue, 11, "decorator argument callback should run in ordinary context")
}

testDecoratorTransform_AstStatePollutionBoundary()
