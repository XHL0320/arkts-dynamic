/*
 * ArkTS basic class declaration, instantiation, class-as-type and class-as-value examples.
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

class BasicEmpty {
}

class BasicPoint {
  public x: number
  public y: number
  constructor(x: number, y: number) {
    this.x = x
    this.y = y
  }
}

class BasicUser {
  public name: string
  public age: number
  constructor(name: string, age: number) {
    this.name = name
    this.age = age
  }
  public rename(name: string): void {
    this.name = name
  }
}

function readUserName(user: BasicUser): string {
  return user.name
}

function createUser(name: string): BasicUser {
  return new BasicUser(name, 18)
}

function makeDefaultPoint(): BasicPoint {
  return new BasicPoint(0, 0)
}

function main(): void {
  let empty: BasicEmpty = new BasicEmpty()
  assertTrue(empty instanceof BasicEmpty, "empty class declaration")

  let point: BasicPoint = new BasicPoint(1, 2)
  assertEqualNumber(point.x + point.y, 3, "new class instance")

  let typedUser: BasicUser = new BasicUser("alice", 20)
  assertEqualString(readUserName(typedUser), "alice", "class as parameter type")

  let returnedUser: BasicUser = createUser("bob")
  assertEqualString(returnedUser.name, "bob", "class as return type")

  let pointFactoryResult: BasicPoint = makeDefaultPoint()
  assertEqualNumber(pointFactoryResult.x, 0, "factory returns class instance")

  let first: BasicUser = new BasicUser("first", 1)
  let second: BasicUser = new BasicUser("second", 2)
  first.rename("changed")
  assertEqualString(first.name, "changed", "first instance changed")
  assertEqualString(second.name, "second", "second instance remains independent")
}

main()
