import Mathlib.FieldTheory.Minpoly.Basic
import Mathlib.Analysis.Complex.CauchyIntegral
import Mathlib.Data.Finset.Prod
set_option autoImplicit false

variable (γ : ℂ) (A : ℤ) 

noncomputable 
def m : ℤ := (minpoly ℤ γ).natDegree
def μ : ℂ → ℝ := sorry

lemma algebraicElementLowerBound (A : ℤ) (hA : IsIntegral ℤ (A*γ)) (hg : γ ≠ 0) :
    ‖γ‖ ≥ ((A:ℚ)^(-m γ): ℝ) * (μ γ)^(1 - m γ) := sorry

open Metric
variable (R : ℝ) (hR : 0 < R) (n : ℕ) (z : ℕ → ℂ) (G : ℂ → ℂ)

noncomputable def maxOnCirc := sSup $ norm ∘ G '' {z : ℂ | ‖z‖ = R}

lemma JensenLike (hG : DifferentiableOn ℂ G (closedBall 0 R)) 
    (hGz : ∀ i : Finset.range n, G (z i) = 0) :
  ‖G 0‖ ≤ R^(-n:ℤ) * ‖Finset.prod (Finset.range n) z‖ * maxOnCirc R G := sorry
