/*
 * Feature: TS Style Decorator
 * SubFeature: 05_decorator_transform
 * CaseType: boundary
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: DECORATOR-TRANSFORM-0059, DECORATOR-TRANSFORM-0060, DECORATOR-TRANSFORM-0061, DECORATOR-TRANSFORM-0070
 * Related Spec: binder context pollution risk after decorator lowering.
 * Expected: Ordinary decorator argument IIFE remains callable; bytecode/codegen context needs follow-up candidates.
 */

let binderBoundaryValue: number = 0

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function readOrdinaryModuleValue(): number {
  return 12
}

function binderBoundaryFactory(value: number) {
  binderBoundaryValue = value
  return function(target: Object, key: string): void {
  }
}

class TransformBinderContextPollutionBoundary {
  @binderBoundaryFactory(readOrdinaryModuleValue())
  public value: number = 12
}

export function testDecoratorTransform_BinderContextPollutionBoundary(): void {
  let obj: TransformBinderContextPollutionBoundary = new TransformBinderContextPollutionBoundary()
  assertEqualNumber(obj.value, 12, "decorated property should remain initialized")
  assertEqualNumber(binderBoundaryValue, 12, "ordinary factory argument should keep context")
}

testDecoratorTransform_BinderContextPollutionBoundary()
