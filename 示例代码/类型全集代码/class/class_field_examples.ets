/*
 * ArkTS class field positive examples.
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

function assertEqualBoolean(actual: boolean, expected: boolean, message: string): void {
  if (actual !== expected) {
    throw new Error(message)
  }
}

class FieldAddress {
  public city: string
  constructor(city: string) {
    this.city = city
  }
}

class FieldProfile {
  public age: number = 18
  public name: string = "user"
  public active: boolean = true
  public address: FieldAddress
  public scores: number[] = [1, 2, 3]
  public first: number = 1
  public second: number = this.first + 1

  constructor(address: FieldAddress) {
    this.address = address
  }

  public updateName(name: string): void {
    this.name = name
  }

  public addScore(score: number): void {
    this.scores.push(score)
  }
}

class FieldBase {
  public inheritedValue: number = 10
  public label: string = "base"
}

class FieldDerived extends FieldBase {
  public derivedValue: number = 20
  public label: string = "derived"
}

class FieldUser {
  public address: FieldAddress
  constructor(address: FieldAddress) {
    this.address = address
  }
}

function main(): void {
  let profile: FieldProfile = new FieldProfile(new FieldAddress("shanghai"))
  assertEqualNumber(profile.age, 18, "number field initializer")
  assertEqualString(profile.name, "user", "string field initializer")
  assertEqualBoolean(profile.active, true, "boolean field initializer")
  assertEqualString(profile.address.city, "shanghai", "class type field")
  assertEqualNumber(profile.scores.length, 3, "array field")
  assertEqualNumber(profile.second, 2, "field initialization order")

  profile.age = 21
  profile.updateName("alice")
  profile.addScore(4)
  assertEqualNumber(profile.age, 21, "field write")
  assertEqualString(profile.name, "alice", "field update by method")
  assertEqualNumber(profile.scores.length, 4, "array field update")

  let derived: FieldDerived = new FieldDerived()
  assertEqualNumber(derived.inheritedValue, 10, "inherited field read")
  assertEqualNumber(derived.derivedValue, 20, "derived class field")
  assertEqualString(derived.label, "derived", "field shadowing positive example")

  let user: FieldUser = new FieldUser(new FieldAddress("nanjing"))
  assertEqualString(user.address.city, "nanjing", "composition field")
  assertTrue(user.address instanceof FieldAddress, "composition stores class instance")
}

main()
