# LeanReasoningSandbox

A small portfolio repo exploring **quotients, equivalence relations, kernels, and quotient groups**
in Lean/Mathlib — with emphasis on the *engineering patterns* behind well-definedness.

## Goals
- Practice writing Lean proofs with clean structure and minimal imports
- Build reusable “micro-APIs” (e.g. quotient lift) that mirror reasoning patterns in math + AI
- Document the gap between:
  - reasoning with representatives (convenient, brittle)
  - reasoning on quotients (robust, principled)

## Contents
### Quotients/
- `SetoidBasics.lean`: setoid + equivalence relation fundamentals
- `QuotientMap.lean`: projection + soundness + lift (well-defined functions)
- `Representatives.lean`: representatives vs quotient-level reasoning

### Groups/
- `Homomorphisms.lean`: kernel/range characterizations
- `KernelNormal.lean`: kernel is normal
- `QuotientGroup.lean`: (planned) induced map and an isomorphism-theorem-style result

## Notes/
Short explanations mapping “paper math” to Lean objects and common lemma patterns.
