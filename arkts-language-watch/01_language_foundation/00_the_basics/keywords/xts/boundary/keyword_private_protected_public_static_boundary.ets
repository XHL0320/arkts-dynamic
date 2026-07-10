/*
 * Keyword Stage 1
 * Boundary / pending confirmation.
 * Test point: private/protected/public/static keywords as class member modifiers.
 * Boundary reason: these are strict mode reserved words in ES; TS implements as member modifiers.
 *  Dynamic ArkTS support status needs confirmation.
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
