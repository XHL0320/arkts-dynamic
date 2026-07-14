/*
 * Helper ID: MODULE-HELP-001
 * Used By:
 *   - MODULE-BOUND-001
 *   - MODULE-BOUND-002
 * Feature: module
 * Test Type: helper
 * Purpose: Provide circular dependency module A with funcA and initA exports.
 */
import { funcB } from './module_circular_b_helper'
export function funcA(): string { return "A" + funcB() }
export const initA: string = "initialized-A"