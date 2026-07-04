/*
 * Feature: TS Style Decorator
 * SubFeature: 01_class_decorator
 * CaseType: integration
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-CLASS-0054, DECORATOR-CLASS-0136
 * Related Spec: export class with class decorator should keep export binding stable.
 * Expected: Single-file export smoke compiles and the decorated exported class remains usable.
 */

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function classDecorator(target: Object): void {
}

@classDecorator
export class ClassDecoratorExportIntegration {
  public value: number = 5
}

export function testDecoratorClass_ExportIntegration(): void {
  let obj: ClassDecoratorExportIntegration = new ClassDecoratorExportIntegration()
  assertEqualNumber(obj.value, 5, "decorated exported class should remain usable in defining module")
}

testDecoratorClass_ExportIntegration()
