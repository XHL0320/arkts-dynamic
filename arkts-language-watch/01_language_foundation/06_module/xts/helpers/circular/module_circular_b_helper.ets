/*
 * Helper ID: MODULE-HELP-002
 * Used By:
 *   - MODULE-BOUND-001
 *   - MODULE-BOUND-002
 * Feature: module
 * Test Type: helper
 * Purpose: Provide circular dependency module B with funcB and initB exports.
 */
import { funcA } from './module_circular_a_helper'
export function funcB(): string { return "B" }
export const initB: string = "initialized-B"