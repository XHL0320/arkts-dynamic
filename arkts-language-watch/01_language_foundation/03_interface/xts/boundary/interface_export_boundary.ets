/*
 * Interface Stage 1
 * Boundary / pending confirmation.
 * Test point: interface export boundary.
 * Boundary reason: dynamic ArkTS interface export support needs confirmation.
 * Module resolution and binding behavior are covered in 06_module.
 */

function assertTrue(value: boolean, message: string): void {
  if (!value) {
    throw new Error(message)
  }
}

export interface ExportedInterface {
  data: string
}

function main(): void {
  let obj: ExportedInterface = { data: "exported" }
  assertTrue(obj.data === "exported", 'exported interface used locally')
}

main()
