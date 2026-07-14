/*
 * Case ID: MODULE-BOUND-001
 * Coverage ID:

 *   - MOD-CD-001
 *   - MOD-CD-002
 * Feature: module
 * Test Type: boundary
 * Expected Phase: pending
 * Expected Outcome: pending
 * Validation Status: spec_pending
 * Owner Chapter: 06_module
 * Related Chapters: declarations
 * Helper IDs:
 *   - MODULE-HELP-001
 *   - MODULE-HELP-002
 * Spec Source: pending
 * Boundary Reason: ArkTS dynamic behavior has not been verified.
 * Description: Verify circular dependency basic behavior.
 */
import { funcA, initA } from '../helpers/circular/module_circular_a_helper'

function assertTrue(value: boolean, message: string): void {
  if (!value) { throw new Error(message) }
}

function main(): void {
  assertTrue(initA === "initialized-A", 'circular dependency module A initialized')
  assertTrue(funcA() === "AB", 'circular dependency function call works')
}

main()