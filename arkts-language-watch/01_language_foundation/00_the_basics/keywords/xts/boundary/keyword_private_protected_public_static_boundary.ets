/*
 * Case ID: KEYW-BOUND-007
 * Coverage ID:
 *   - KW-STRICT-004
 *   - KW-STRICT-005
 *   - KW-STRICT-006
 *   - KW-STRICT-007
 * Feature: language_basics
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 00_the_basics
 * Related Chapters: declarations
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic language behavior has not been verified.
 * Description: Verify private/protected/public/static keywords as class member modifiers.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

class AccessModifiers {
  public pubVal: number = 1
  private privVal: number = 2
  protected protVal: number = 3
  static statVal: number = 4
}

function main(): void {
  // If access modifiers work, they should compile.
  // If not supported, this file should fail to compile.
  let obj: AccessModifiers = new AccessModifiers()
  assertTrue(obj.pubVal === 1, 'public modifier boundary documented')
  assertTrue(AccessModifiers.statVal === 4, 'static modifier boundary documented')
}

main()
