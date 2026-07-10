/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic class static member with type parameter.
 * Boundary reason: static members cannot use class type parameters in TS; dynamic ArkTS behavior needs confirmation.
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
