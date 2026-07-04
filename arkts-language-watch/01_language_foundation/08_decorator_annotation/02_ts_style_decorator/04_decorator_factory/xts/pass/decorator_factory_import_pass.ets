/*
 * Feature: TS Style Decorator
 * SubFeature: 04_decorator_factory
 * CaseType: pass
 * Priority: P1
 * ECMA Baseline Status: Mixed
 * Source Coverage ID: DECORATOR-FACTORY-0026, DECORATOR-FACTORY-0095
 * Related Spec: decorator factory parameter can reference an imported binding.
 * Expected: The imported binding is available to the factory and the decorated class remains usable.
 */

import { importedFactoryName, importedFactorySeed } from './decorator_factory_import_module'

function assertEqualNumber(actual: number, expected: number, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

function importArgFactory(name: string, seed: number): (target: Object, key: string) => void {
  return (target: Object, key: string): void => {
    if (name !== key || seed !== 90) {
      throw new Error("imported binding should be available to factory")
    }
  }
}

class DecoratorFactoryImportPass {
  @importArgFactory(importedFactoryName, importedFactorySeed)
  public value: number = 90
}

export function testDecoratorFactory_ImportPass(): void {
  let obj: DecoratorFactoryImportPass = new DecoratorFactoryImportPass()
  assertEqualNumber(obj.value, 90, "imported factory argument should keep property initializer")
}

testDecoratorFactory_ImportPass()
