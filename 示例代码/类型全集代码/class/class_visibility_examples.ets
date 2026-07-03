/*
 * ArkTS visibility modifier positive examples.
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

class VisibilityAccount {
  public owner: string
  private balance: number
  protected level: number

  constructor(owner: string, balance: number) {
    this.owner = owner
    this.balance = balance
    this.level = 1
  }

  public deposit(value: number): void {
    this.addBalance(value)
  }

  public currentBalance(): number {
    return this.balance
  }

  private addBalance(value: number): void {
    this.balance = this.balance + value
  }

  protected readLevel(): number {
    return this.level
  }
}

class VisibilityVipAccount extends VisibilityAccount {
  public bonus(): number {
    return this.level + this.readLevel()
  }
}

function main(): void {
  let account: VisibilityAccount = new VisibilityAccount("alice", 100)
  assertEqualString(account.owner, "alice", "public field external access")
  account.deposit(20)
  assertEqualNumber(account.currentBalance(), 120, "public method accesses private field")

  let vip: VisibilityVipAccount = new VisibilityVipAccount("bob", 200)
  assertEqualNumber(vip.bonus(), 2, "derived class accesses protected member through method")
  assertTrue(vip instanceof VisibilityAccount, "visibility works with inheritance")
}

main()
