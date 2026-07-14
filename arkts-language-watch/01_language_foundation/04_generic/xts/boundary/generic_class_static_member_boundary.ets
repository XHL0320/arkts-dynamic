/*
 * Case ID: GEN-BOUND-002
 * Coverage ID:
 *   - GEN-CLASS-005
 * Feature: generic
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 04_generic
 * Related Chapters: class
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic generic behavior has not been verified.
 * Description: Verify generic class static member boundary.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class GenericClass<T> {
  value: T
  constructor(v: T) { this.value = v }

  // In TypeScript, static members cannot reference class type parameter T.
  // This boundary documents whether dynamic ArkTS enforces this.
  static defaultValue: number = 0
}

function main(): void {
  assertTrue(GenericClass.defaultValue === 0, 'static member without type param works')
  let obj: GenericClass<string> = new GenericClass("test")
  assertTrue(obj.value === "test", 'instance member with type param works')
}

main()
