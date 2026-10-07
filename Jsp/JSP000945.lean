import Init.Data.List.Basic
import Init.Data.List.Lemmas

/-!
# JSP-000945 — Lean 4.20.0, no Mathlib

## Formalised problem
Disprove Euler's 1772 conjecture that the polynomial
`n^2 + n + 41` produces primes for all `n ≥ 0`.

### Proof
The smallest counterexample is `n = 40`:
`40^2 + 40 + 41 = 1681 = 41 * 41`, which is composite.

All proofs use only core Lean + `decide`.  No sorry, no admit.
-/

/-- Euler's prime-generating polynomial. -/
def eulerPoly (n : Nat) : Nat := n * n + n + 41

/-!
**Main theorem**:  the conjecture `∀ n ≥ 0, eulerPoly n` is prime is false.
We exhibit `n = 40` and an explicit non-trivial factorisation.
-/
theorem jsp_000945_main :
    ∃ n a b : Nat, a > 1 ∧ b > 1 ∧ eulerPoly n = a * b := by
  refine ⟨40, 41, 41, by decide, by decide, ?_⟩
  exact by decide

#print axioms jsp_000945_main