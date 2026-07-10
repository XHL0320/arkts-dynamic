/*
 * Generic Stage 1
 * Regression test.
 * Test point: generic basic declaration, function, class, interface regression.
 * Regression reason: verify that basic generic syntax continues to work.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

function identity<T>(value: T): T { return value }

class Stack<T> {
  items: T[] = []
  push(item: T): void { this.items.push(item) }
  pop(): T { return this.items.pop() as T }
}

interface Repository<T> {
  find(id: number): T
}

class NumberRepo implements Repository<number> {
  data: Map<number, number> = new Map()
  find(id: number): number { return this.data.get(id) as number }
}

function main(): void {
  let result: number = identity(42)
  assertTrue(result === 42, 'regression: generic function')

  let stack: Stack<string> = new Stack()
  stack.push("a")
  stack.push("b")
  assertTrue(stack.pop() === "b", 'regression: generic class stack pop')

  let repo: NumberRepo = new NumberRepo()
  repo.data.set(1, 100)
  assertTrue(repo.find(1) === 100, 'regression: generic interface repository')
}

main()
