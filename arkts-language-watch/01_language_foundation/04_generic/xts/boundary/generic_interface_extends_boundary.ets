/*
 * Generic Stage 1
 * Boundary / pending confirmation.
 * Test point: generic interface extends.
 * Boundary reason: dynamic ArkTS generic interface extends support needs confirmation.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

interface Base<T> {
  data: T
}

interface Extended<T> extends Base<T> {
  extra: number
}

function main(): void {
  let obj: Extended<string> = { data: "hello", extra: 42 }
  assertTrue(obj.data === "hello", 'generic interface extends data')
  assertTrue(obj.extra === 42, 'generic interface extends extra')
}

main()
