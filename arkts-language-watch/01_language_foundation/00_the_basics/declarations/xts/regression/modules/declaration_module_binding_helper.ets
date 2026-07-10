/*
 * Declaration Stage 1 helper module.
 * Test point: declaration-level module binding smoke.
 */

export let counter: number = 1

export function updateCounter(value: number): void {
  counter = value
}
