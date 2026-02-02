import Mathlib

namespace LeanReasoningSandbox.Quotients

variable {α β : Type*}

/-- Canonical projection map into a quotient. -/
def qproj (r : Setoid α) : α → Quotient r :=
  Quotient.mk r

/-- The projection map respects the equivalence relation. -/
theorem qproj_sound (r : Setoid α) {a b : α} (h : r.Rel a b) :
    qproj r a = qproj r b := by
  exact Quotient.sound h

/--
If `f : α → β` is constant on equivalence classes of `r`, it lifts to a function
`Quotient r → β`.
-/
def lift (r : Setoid α) (f : α → β)
    (h : ∀ a b, r.Rel a b → f a = f b) : Quotient r → β :=
  Quotient.lift f (by
    intro a b hab
    exact h a b hab)

/-- Computation rule: lifting then projecting gives back `f`. -/
theorem lift_comp_qproj (r : Setoid α) (f : α → β)
    (h : ∀ a b, r.Rel a b → f a = f b) (a : α) :
    lift (α := α) (β := β) r f h (qproj r a) = f a := by
  rfl

end LeanReasoningSandbox.Quotients
