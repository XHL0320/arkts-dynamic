/*
 * Feature: Class
 * SubFeature: 13_abstract_class
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: ArkTS-specific
 * Source Coverage ID: CLASS-TOTAL-0997
 * Related Spec: abstract class abstract method 对应 interface method，concrete 子类最终实现
 * Expected: Class scenario compiles and runs with focused assertions.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertEqualString(actual: string, expected: string, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function assertThrows(fn: () => void, message: string): void {
  let thrown: boolean = false
  try {
    fn()
  } catch (e) {
    thrown = true
  }
  if (!thrown) {
    throw new Error(message)
  }
}

export function testClassCLASS_TOTAL_0997(): void {
  abstract class AbstractBase {
    public abstract getValue(): number
    public baseValue(): number {
      return 1
    }
  }
  class AbstractDerived extends AbstractBase {
    public getValue(): number {
      return 7
    }
  }
  let obj: AbstractBase = new AbstractDerived()
  assertEqualNumber(obj.getValue() + obj.baseValue(), 8, "concrete subclass should implement abstract method")
}

testClassCLASS_TOTAL_0997();
