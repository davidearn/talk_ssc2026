# SSC2026 Burnout Talk Outline

## Working Subtitle

From brute-force simulations to a direct analytical formula for epidemic burnout.

This subtitle is optional. It is meant to sharpen the contribution without using the vague phrase "burnout is computable".

## Proposed 25-Minute Timing Plan

| Section | Time | Purpose |
|---|---:|---|
| 1. Biological question and vocabulary | 4.5 min | Establish fizzle, burnout, persistence, and why the post-epidemic trough is the key event. |
| 2. SIR with vital dynamics and the persistence puzzle | 5.5 min | Show why deterministic endemicity is not enough, and why susceptible recruitment alone can still fail. |
| 3. Hybrid deterministic-stochastic calculation | 7.0 min | Explain the approximation: deterministic trajectory into a boundary layer, Kendall birth-death extinction inside it, then the analytical formula. |
| 4. Results from the formula | 5.5 min | Show agreement with simulations, parameter-space insight, and the SIR/SIRS contrast. |
| 5. Interpretation and take-home | 2.5 min | State what is explained, what remains puzzling, and what the formula makes possible. |
| **Total** | **25.0 min** | |

## Slide-by-Slide Outline

### 1. Title

- **Approx. duration:** 0.5 min
- **Purpose:** Set context: SSC, invited session, first talk in session.
- **Key message:** This is a talk about whether a newly invading pathogen survives the trough after its first major epidemic.
- **Candidate figure/source:** None needed for first full deck. Optional later: title image from poster photo banner, `../sources/posters/EEID2024_BurnoutPoster/photos/photobanner2024-crop.pdf`.
- **Reuse as-is for first deck:** No figure needed; the banner could be reused if desired.
- **Equations/statements:** None.

### 2. The Biological Question

- **Approx. duration:** 1.5 min
- **Purpose:** Motivate with recognizable epidemic patterns: some diseases disappear, others recur.
- **Key message:** The question is not whether an epidemic can take off, but whether it survives after the first large epidemic has depleted susceptibles.
- **Candidate figure/source:** Todd deck epidemic examples, especially `../sources/talks/2025-02-27_LeHavre_persistence/Images/KermackMcKendrickPlagueBombay.png`, `Images/Cycles.jpg`, and `Images/world_covid_weekly.pdf`.
- **Reuse as-is for first deck:** Yes. These are already slide-ready in Todd's deck.
- **Equations/statements:** Terminology statement only: "persist" means causing a subsequent epidemic wave, while acknowledging eventual extinction in any finite stochastic population.

### 3. Three Possible Early Outcomes

- **Approx. duration:** 1.5 min
- **Purpose:** Define fizzle, burnout, and persistence before showing formulae.
- **Key message:** Fizzle happens before a major epidemic; burnout happens after a major epidemic; persistence means escaping both.
- **Candidate figure/source:** PNAS Fig. 1 embedded in `../sources/published/Pars+2024_PNAS_SIRburnout.pdf`; poster `../sources/posters/EEID2024_BurnoutPoster/images/fig_ts_pp_xy.pdf` for time-to-extinction/phase-plane idea.
- **Reuse as-is for first deck:** Prefer `fig_ts_pp_xy.pdf` for first deck because it is already a standalone file. PNAS Fig. 1 would require extraction/cropping.
- **Equations/statements:** If \(I_0=k\), fizzle probability under the early branching approximation is approximately \((1/\R_0)^k\).

### 4. The Textbook Deterministic Model

- **Approx. duration:** 1.5 min
- **Purpose:** Introduce the SIR model with vital dynamics at the minimum level needed.
- **Key message:** Deterministically, the disease approaches an endemic equilibrium when \(\R_0>1\), but that statement hides stochastic extinction near the troughs.
- **Candidate figure/source:** Todd `../sources/talks/2025-02-27_LeHavre_persistence/Figures/fig_ts_pp_ode_1.pdf`; poster `../sources/posters/EEID2024_BurnoutPoster/images/SIRtslong.pdf`.
- **Reuse as-is for first deck:** Yes; `SIRtslong.pdf` is directly tied to the poster narrative, while Todd's ODE trajectory is useful if a cleaner two-panel trajectory is desired.
- **Equations/statements:** Use proportional form:
  \[
  \frac{\dee X}{\dee\tau} = \varepsilon(1-X)-\R_0XY,\qquad
  \frac{\dee Y}{\dee\tau} = (\R_0X-1)Y,
  \]
  using David's derivative macros in the deck. Define \(\varepsilon=\mu/(\gamma+\mu)\), \(\R_0=\beta/(\gamma+\mu)\), and the endemic equilibrium
  \[
  (X^\star,Y^\star)=\left(\frac{1}{\R_0},\,\varepsilon\left(1-\frac{1}{\R_0}\right)\right).
  \]

### 5. The Puzzle of Persistence

- **Approx. duration:** 2.0 min
- **Purpose:** Make the biological puzzle concrete.
- **Key message:** A deterministic trajectory can approach an endemic equilibrium through troughs that correspond to less than one infectious individual in a finite population.
- **Candidate figure/source:** Poster `../sources/posters/EEID2024_BurnoutPoster/images/SIRtslong.pdf`; Todd `Figures/fig_ts_pp_ode_1.pdf`.
- **Reuse as-is for first deck:** Yes. Use an existing figure first, then improve later only if time permits.
- **Equations/statements:** Translate prevalence \(Y(t)\) to expected infective count \(nY(t)\); extinction risk is large when \(nY(t)\) is near one.

### 6. Susceptible Recruitment Cannot Be Ignored

- **Approx. duration:** 2.0 min
- **Purpose:** Explain the core intuition behind the non-monotone dependence on \(\R_0\).
- **Key message:** High \(\R_0\) can make the first epidemic large, but susceptible recruitment and the subsequent trough depth determine whether the pathogen can wait long enough to recover.
- **Candidate figure/source:** Poster `../sources/posters/EEID2024_BurnoutPoster/images/fig6.pdf` and `images/fig7.pdf`.
- **Reuse as-is for first deck:** Yes, likely side-by-side as in the poster.
- **Equations/statements:** State the qualitative condition \(I_{\min}\gtrsim 1/n\) for likely persistence. Mention that the persistence-minimizing \(\R_0\) lies roughly in \(2\lesssim\R_0\lesssim2.57\), depending on infectious period.

### 7. The Hybrid Strategy

- **Approx. duration:** 1.5 min
- **Purpose:** Give the conceptual computation in one slide before any theorem or formula.
- **Key message:** Use deterministic SIR when prevalence is not rare, then switch to a time-inhomogeneous birth-death process in the boundary layer.
- **Candidate figure/source:** Poster `../sources/posters/EEID2024_BurnoutPoster/images/fig_ts_pp_xy.pdf`; Todd `../sources/talks/2025-02-27_LeHavre_persistence/Images/Birth-Death.png`.
- **Reuse as-is for first deck:** Yes. `fig_ts_pp_xy.pdf` is the primary candidate; `Birth-Death.png` is a helpful visual for the stochastic process.
- **Equations/statements:** State the boundary-layer entry point \(S_{\rm in}\) or \(X_{\rm in}\), and that the SIAP phase-plane approximation supplies this point analytically.

### 8. Kendall's Theorem, Used but Not Proved

- **Approx. duration:** 2.0 min
- **Purpose:** Give probabilists a clear theorem anchor without bogging down the biological talk.
- **Key message:** Kendall gives the extinction probability for a time-inhomogeneous linear birth-death process; that is exactly the rare-infective approximation needed after the first epidemic.
- **Candidate figure/source:** Todd `Images/Birth-Death.png`; Kendall paper `../sources/published/Kend48_GeneralizedBirthDeath.pdf`; Todd theorem slide in `Persistence_2025_02_27.tex`.
- **Reuse as-is for first deck:** `Birth-Death.png` yes. Kendall PDF is scanned and not a slide asset; use as citation/provenance.
- **Equations/statements:** State, for \(K(0)=1\), per-capita birth \(b(t)\), death \(d(t)\),
  \[
  I=\int_0^\infty
  \exp\left(\int_0^s[d(u)-b(u)]\,\dee u\right)d(s)\,\dee s,
  \qquad
  q=\frac{I}{1+I}.
  \]
  If \(K(0)=m\), extinction probability is \(q^m\), assuming independent lineages.

### 9. The Direct Analytical Burnout Formula

- **Approx. duration:** 2.5 min
- **Purpose:** State the achievement clearly without overselling it.
- **Key message:** Burnout probability was already estimable by simulations; the new point is a direct analytical approximation that can be evaluated essentially immediately.
- **Candidate figure/source:** Poster formula block in `poster_burnout_eeid2024.tex`; PNAS Eq. 25/Eq. 27 in `Pars+2024_PNAS_SIRburnout.pdf`.
- **Reuse as-is for first deck:** No figure needed. Use typeset equations in the new deck.
- **Equations/statements:** Present the per-lineage burnout probability approximation:
  \[
  q \approx
  \left(
  1+
  \frac{1}{
  \sqrt{\frac{2\pi}{\varepsilon(\R_0-1)}}
  \left(\frac{a}{z}\right)^a e^{z-a}}
  \right)^{-1},
  \]
  with
  \[
  z=\frac{\R_0}{\varepsilon}(1-X_{\rm in}),
  \qquad
  a=\frac{\R_0}{\varepsilon}(1-X^\star).
  \]
  Then state
  \[
  p_k = 1-\left(\frac{1}{\R_0}\right)^k,\qquad
  \mathcal P_1(\R_0,\varepsilon,n,k)=p_k\left(1-q^{nY^\star}\right).
  \]
  Ask David later whether to use \(S,I\) or \(X,Y\) consistently in the visible formulae.

### 10. Agreement With Simulations

- **Approx. duration:** 1.5 min
- **Purpose:** Establish credibility of the formula.
- **Key message:** The analytical approximation agrees closely with large stochastic simulations over biologically relevant ranges; discrepancies are mainly near \(\R_0\to1\), where the approximation is not intended to apply.
- **Candidate figure/source:** Poster `../sources/posters/EEID2024_BurnoutPoster/images/fig_prob_vs_Rm1-crop.pdf`; Todd `Figures/fig_prob_vs_R_1.pdf`; PNAS Fig. 4.
- **Reuse as-is for first deck:** Yes, use poster crop first. PNAS Fig. 4 is embedded and would require extraction.
- **Equations/statements:** Point back to \(\mathcal P_1\) and note that \(\varepsilon=0.01\) in the figure is deliberately large so deviations are visible.

### 11. What the Formula Makes Possible

- **Approx. duration:** 1.5 min
- **Purpose:** Show why immediate evaluation matters.
- **Key message:** The formula makes parameter-space maps feasible; brute-force simulation for these contour plots would be prohibitively expensive.
- **Candidate figure/source:** Poster `../sources/posters/EEID2024_BurnoutPoster/images/conplot_eta=0.pdf`; PNAS Fig. 5.
- **Reuse as-is for first deck:** Yes, use the poster/PDF standalone contour.
- **Equations/statements:** State the qualitative result: for SIR, persistence increases with infectious period, and as a function of \(\R_0\) it has a biologically relevant local minimum for typical acute infections.

### 12. SIR Verdict: Susceptible Recruitment Alone Is Usually Insufficient

- **Approx. duration:** 1.5 min
- **Purpose:** Interpret the SIR contour for human diseases.
- **Key message:** For typical acute immunizing infections in human populations, births alone do not explain persistence in a well-mixed SIR model.
- **Candidate figure/source:** Poster `images/conplot_eta=0.pdf` or Todd `Figures/conplot_eta=0.png`; Todd `dptab.tex` if a disease parameter table is wanted as backup.
- **Reuse as-is for first deck:** Yes for contour; disease table may need formatting if used.
- **Equations/statements:** No new equation; state "well-mixed SIR + births" is not enough for many human pathogens.

### 13. What Decay of Immunity Changes

- **Approx. duration:** 2.0 min
- **Purpose:** Avoid the over-simple conclusion that the puzzle is unresolved in all models.
- **Key message:** If immunity wanes on the scale of years, SIRS dynamics can make persistence likely.
- **Candidate figure/source:** Poster `../sources/posters/EEID2024_BurnoutPoster/images/conplot_eta=0.pdf` and `images/conplot_eta=0.01.pdf`; Todd `Figures/conplot_eta=0.png` and `Figures/conplot_eta=0.01.png`.
- **Reuse as-is for first deck:** Yes. Use the two-panel comparison from the poster first.
- **Equations/statements:** Define \(\eta\) as the immunity-decay parameter only if needed. State the model change \(R\to S\) through loss of immunity; avoid a full SIRS system unless David wants it.

### 14. SARS-CoV-2: A Concrete SIRS Implication

- **Approx. duration:** 1.5 min
- **Purpose:** Provide the most concrete biological payoff.
- **Key message:** Given that SARS-CoV-2 did not fizzle and immunity is short-lived enough, burnout after invasion was negligibly likely in the SIRS calculation.
- **Candidate figure/source:** Poster `../sources/posters/EEID2024_BurnoutPoster/images/fig_eta_effect.pdf`; Todd `Figures/fig_eta_effect.pdf`.
- **Reuse as-is for first deck:** Yes.
- **Equations/statements:** No new formula. Make the conditional phrasing explicit: "given no fizzle" and "if allowed to spread without control" if following the poster text.

### 15. What Remains Puzzling

- **Approx. duration:** 1.0 min
- **Purpose:** Avoid overclaiming and set up future work.
- **Key message:** Decay of immunity can explain some cases, but measles and other near-permanent-immunity infections still need other mechanisms.
- **Candidate figure/source:** Poster "Persistently Puzzling" block; possible no figure.
- **Reuse as-is for first deck:** Text-only is fine for first deck.
- **Equations/statements:** Candidate mechanisms: multiple introductions, spatial/metapopulation rescue, heterogeneous mixing, antigenic evolution, carrier or reservoir dynamics.

### 16. Take-Home

- **Approx. duration:** 1.5 min
- **Purpose:** End with a precise contribution and biological conclusion.
- **Key message:** The direct analytical formula converts a hard simulation problem into an immediate calculation, revealing when SIR/SIRS models predict burnout or persistence.
- **Candidate figure/source:** Possibly no figure; optional re-use of the SIR/SIRS contour pair or formula as a small visual.
- **Reuse as-is for first deck:** No figure required.
- **Equations/statements:** Three concise statements:
  1. Fizzle and burnout are different extinction events.
  2. The formula combines deterministic epidemic geometry with Kendall's birth-death extinction probability.
  3. Births alone are often insufficient, but decay of immunity can be sufficient, as in the SARS-CoV-2 example.

### 17. Thanks / Questions

- **Approx. duration:** 0.5 min
- **Purpose:** Close cleanly and acknowledge collaborators/funding.
- **Key message:** Joint work with Todd Parsons, Ben Bolker, Jonathan Dushoff; support from NSERC/CNRS as appropriate.
- **Candidate figure/source:** Poster acknowledgements; optional collaborator headshots from poster `photos/` if desired later.
- **Reuse as-is for first deck:** Text-only is sufficient.
- **Equations/statements:** None.

## Candidate Backup Slides

1. **Kendall theorem details:** show the theorem statement more formally, including the divergence condition for almost-sure extinction.
2. **Deriving \(X_{\rm in}\):** one slide on the SIAP phase-plane approximation and Lambert \(W\), explicitly marked as background machinery.
3. **Disease parameter table:** Todd `dptab.tex` or PNAS Table 2, useful if asked why diseases are located where they are on the contour plot.
4. **Previous methods:** one slide comparing brute-force stochastic simulation, van Herwaarden, Meerson-Sasorov, and the current formula.
5. **Boundary-layer approximation details:** show \(X(t)=1-(1-X_{\rm in})e^{-\mu t}\) and the birth/death rates \(b(t)=\beta X(t)\), \(d(t)=\gamma+\mu\).
6. **Multi-wave persistence:** formula or statement for repeated epidemic troughs; likely unnecessary in the main 25-minute version.
7. **Alternative mechanisms for measles:** metapopulations, repeated importation, seasonality, heterogeneous mixing, antigenic evolution, reservoirs/carriers.

## Figure Inventory

| Source | File or figure | Likely role | Reuse as-is for first deck? | Notes |
|---|---|---|---|---|
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/images/SIRtslong.pdf` | Persistence puzzle; deterministic SIR troughs | Yes | Strong early slide candidate. |
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/images/fig6.pdf` | Susceptible recruitment intuition | Yes | Use with `fig7.pdf` as in poster. |
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/images/fig7.pdf` | Susceptible recruitment intuition | Yes | Use with `fig6.pdf` as in poster. |
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/images/fig_ts_pp_xy.pdf` | Hybrid deterministic/stochastic burnout schematic | Yes | Primary technical figure for boundary-layer entry. |
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/images/fig_prob_vs_Rm1-crop.pdf` | Formula versus simulations | Yes | Better first-deck choice than embedded PNAS Fig. 4. |
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/images/fig_prob_vs_Rm1.pdf` | Formula versus simulations | Yes | Use crop if it looks better on slides. |
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/images/conplot_eta=0.pdf` | SIR parameter-space persistence | Yes | Main result slide. |
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/images/conplot_eta=0.01.pdf` | SIRS/waning-immunity contrast | Yes | Pair with `conplot_eta=0.pdf`. |
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/images/fig_eta_effect.pdf` | SARS-CoV-2 persistence implication | Yes | Concrete biological payoff. |
| EEID2024 poster | `../sources/posters/EEID2024_BurnoutPoster/photos/photobanner2024-crop.pdf` | Optional title/acknowledgement visual | Maybe | Not necessary for first content deck. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Images/KermackMcKendrickPlagueBombay.png` | Opening epidemic example | Yes | Good for history/motivation if time allows. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Images/H1N11918.jpg` | Opening epidemic example | Yes | Optional. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Images/Cycles.jpg` | Recurrent epidemic example | Yes | Useful for persistence/recurrent epidemics. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Images/world_covid_weekly.pdf` | SARS-CoV-2 epidemic example | Yes | Optional opening example. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Figures/fig_ts_pp_ode_1.pdf` | Deterministic trajectory with vital dynamics | Yes | Alternative to poster `SIRtslong.pdf`. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Figures/fig_ts_pp_1.pdf` | Stochastic SIR trajectory | Yes | Useful for fizzle/burnout/persistence if the poster figure is too dense. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Images/Birth-Death.png` | Birth-death process visual | Yes | Good on Kendall slide. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Figures/fig_prob_vs_R_1.pdf` | Formula versus simulations | Yes | Alternative to poster crop. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Figures/conplot_eta=0.png` | SIR contour | Yes | Lower resolution than poster PDF, but easy if needed. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Figures/conplot_eta=0.01.png` | SIRS contour | Yes | Lower resolution than poster PDF, but easy if needed. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/Figures/fig_eta_effect.pdf` | SARS-CoV-2 persistence implication | Yes | Duplicate of poster-related figure. |
| Todd Le Havre talk | `../sources/talks/2025-02-27_LeHavre_persistence/dptab.tex` | Disease parameter table | Maybe | Better as backup unless the contour labels need support. |
| PNAS paper | Fig. 1 in `../sources/published/Pars+2024_PNAS_SIRburnout.pdf` | Full fizzle/burnout/persistence schematic | Maybe | Embedded in PDF; requires extraction/cropping before reuse. |
| PNAS paper | Fig. 2 in `../sources/published/Pars+2024_PNAS_SIRburnout.pdf` | Stochastic SIR model event diagram | Maybe | Could be redrawn later; not needed for first full deck. |
| PNAS paper | Fig. 3 in `../sources/published/Pars+2024_PNAS_SIRburnout.pdf` | \(X_{\rm in}\) approximation comparison | Backup | Useful only if discussing SIAP machinery in detail. |
| PNAS paper | Fig. 4 in `../sources/published/Pars+2024_PNAS_SIRburnout.pdf` | Formula versus simulations | Maybe | Poster/Todd standalone files are easier first. |
| PNAS paper | Fig. 5 in `../sources/published/Pars+2024_PNAS_SIRburnout.pdf` | SIR parameter-space contour | Maybe | Poster standalone contour is easier first. |
| PNAS paper | Table 2 in `../sources/published/Pars+2024_PNAS_SIRburnout.pdf` | Disease \(\R_0\), latent/infectious periods, \(\varepsilon\) | Backup | Useful for questions or a backup slide. |
| SIAP paper | `../sources/published/ParsEarn2024_SIAP_UnifAsympApproxPhasePlaneSIR.pdf` | Background for \(X_{\rm in}\) and phase-plane approximation | No | Mention/cite; do not emphasize in main talk. |
| Kendall 1948 paper | `../sources/published/Kend48_GeneralizedBirthDeath.pdf` | Theorem provenance | No | Scanned PDF; use as citation/provenance, not visual asset. |

## Style Notes From MBRS

- Use beamer/Rnw with the default animated beamer mode, preserving overlays such as `\pause`.
- Keep a simple preamble with reusable macros for derivatives, \(\R_0\), emphasis colour, and hyperlinks.
- Use `\emphblue{...}` or `\term{...}` sparingly to make key phrases visible without adding clutter.
- Prefer progressive exposition: reveal definitions, equations, and interpretation in small steps.
- Use large figures with little surrounding text; avoid dense poster-panel slides.
- Use concise frame titles that name the mathematical or biological point.
- Use `\hyperlink`/`\hypertarget` only if useful for backup/detail slides; do not overbuild navigation in the first deck.
- Keep mathematical notation consistent across slides; decide early whether the visible variables are counts \((S,I,R)\) or proportions \((X,Y,Z)\).
- Do not import MBRS scientific content. The relevant reuse is source/slide style only.

## Prioritized Questions For David

1. **Notation:** Should the talk use \(S,I,R\) throughout, or switch to proportions \(X,Y,Z\) for the formula and contour interpretation?
2. **Formula visibility:** Should the main deck show the full \(q\) formula on one slide, or split it into "Kendall \(q\)" and "Laplace approximation" pieces?
3. **SIRS naming:** Should the talk call the waning-immunity extension simply SIRS, or use Todd's "SIRiaS" terminology when discussing antigenic evolution?
4. **Opening examples:** Should the opening motivate with historical epidemic patterns (plague/H1N1/measles/COVID), or move directly to the burnout problem after the title?
5. **SARS-CoV-2 phrasing:** How cautious should the statement be about "if allowed to spread without control", given that real control measures and variant evolution complicate the narrative?
6. **Collaborator emphasis:** Should there be a separate "joint work with" slide near the start, or just acknowledgements at the end?
7. **Contour plots:** Are the disease labels in the existing contour figures acceptable for the SSC audience, or should a later figure-improvement pass enlarge/simplify them?
8. **End point:** Should the final slide end with open mechanisms for measles-like persistence, or with the computational/conceptual advance of the formula?
