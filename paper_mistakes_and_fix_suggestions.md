# Paper Mistakes and Suggested Fixes

Review target: `white_paper.tex`

## Substantive Issues

### 1. UK and EU policy targets are conflated

Location: `white_paper.tex:34`

Issue: The abstract says both the UK Critical Minerals Strategy and the EU Critical Raw Materials Act set aggressive targets for domestic extraction, processing, and recycling. This is too broad. The EU CRMA has explicit 2030 benchmarks of 10% extraction, 40% processing, and 25% recycling. UK Vision 2035 is framed differently: at least 10% of aggregate annual UK demand met through domestic production by 2035, with a separate recycling ambition.

Suggested fix: split the sentence by jurisdiction.

Possible wording:

> While the EU Critical Raw Materials Act sets 2030 benchmarks for domestic extraction, processing, and recycling, the UK's Vision 2035 sets a 2035 ambition for at least 10% of aggregate annual UK critical-mineral demand to be met through domestic production, alongside greater circularity and supply-chain resilience.

### 2. Mixed LaTeX quotation marks

Location: `white_paper.tex:168`

Issue: The phrase `European ``Digital Ore Database’’` mixes LaTeX opening quotes with a curly closing quote. This can produce inconsistent typography and is easy to miss in source review.

Suggested fix:

```tex
European ``Digital Ore Database''
```

### 3. Imerys St Austell example may be stale or misleading

Location: `white_paper.tex:182`

Issue: The table lists `Imerys St Austell` as part of Cornwall's lithium resources. Public reporting in February 2026 says the Imerys British Lithium project was placed into care and maintenance. If the table is meant to highlight near-term demonstrator opportunities, this should be caveated or replaced.

Suggested fix: either add a caveat or use a broader, less project-specific formulation.

Possible wording:

> Cornwall's hard-rock and brine lithium resources, including Cornish Lithium projects and the St Austell lithium district, subject to project-specific development status

Alternative shorter wording:

> Cornwall's hard-rock and brine lithium resources, including the St Austell district and geothermal brine projects

### 4. `lixivium` is probably the wrong term

Location: `white_paper.tex:206`

Issue: The text says `transport of lixivium`. In leaching terminology, `lixiviant` usually means the leaching reagent/solution introduced to dissolve metals, while `pregnant leach solution` refers to the metal-bearing solution after leaching. `Lixivium` is uncommon and likely to distract technical readers.

Suggested fix: choose the intended meaning.

If referring to injected reagent:

> map the transport of lixiviant

If referring to solution more generally:

> map leach-solution transport

If referring to produced metal-bearing solution:

> map the movement and recovery of pregnant leach solution

### 5. Plant-level energy/recovery claim overreaches

Location: `white_paper.tex:204`

Issue: The sentence says the grindability and liberation result `translates into measurable energy savings and improved recovery at the plant level`. The cited evidence appears experimental and ore-specific, so this may overclaim unless a plant-scale validation source is added.

Suggested fix: soften the claim or add plant-scale evidence.

Possible wording:

> This scale means that ore-specific improvements in grindability and liberation, such as those reported after preferential intergranular breakage in magnetite ore, point to a plausible route for reducing comminution energy demand and improving downstream recovery, provided the effects persist under plant-scale operating conditions.

### 6. Tailings economics are stated too broadly

Location: `white_paper.tex:215`

Issue: `Legacy mine tailings frequently contain unrecovered critical minerals ... at concentrations that can be economically significant` is plausible, but the economics of tailings reprocessing are highly site-specific and depend on mineralogy, particle size, weathering, permitting, logistics, reagent cost, and commodity prices.

Suggested fix: narrow the claim.

Possible wording:

> Legacy mine tailings can contain unrecovered critical minerals, including tellurium, antimony, and tungsten, at concentrations that may be economically significant in favourable site-specific settings.

### 7. Cost estimates need clearer status or support

Location: `white_paper.tex:275`

Issue: The manuscript gives indicative cost ranges for facility upgrades and dedicated endstations. This is acceptable in a white paper, but for journal submission it may look weak unless supported by a source, comparison, or explicit author-estimate framing.

Suggested fix: either cite comparable facility/endstation costs or state more clearly that these are order-of-magnitude author estimates.

Possible wording:

> As order-of-magnitude author estimates, rather than published facility budget figures, the initial phase would likely sit in a multi-million-pound or multi-million-euro upgrade category, while dedicated endstations with permanent staff, sample environments, GPU and CPU/HPC compute support, and data services would likely move into a low-tens-of-millions capital category.

## LaTeX and Build Issues

### 8. Overfull boxes in the compiled PDF

Locations reported by Tectonic:

- `white_paper.tex:32`
- `white_paper.tex:37`
- `white_paper.tex:192-193`
- `white_paper.tex:214`
- `white_paper.tex:248-250`
- several bibliography entries

Issue: The PDF builds, but these warnings indicate text extending beyond the intended line width. The most visible problems are likely the long title, section headings, itemized text, and long URLs in the bibliography.

Suggested fixes:

- Add manual line breaks in the title if needed.
- Shorten long section headings.
- Rephrase long itemized bullets.
- Improve URL breaking in the bibliography.

### 9. URL annotation extends beyond the page boundary

Location: bibliography, likely long URL entries

Issue: Tectonic reports:

```text
Annotation out of page boundary.
```

This likely comes from a long URL that is not breaking cleanly, causing a hyperlink annotation to extend outside the page.

Suggested fix: add `xurl` before `hyperref`.

```tex
\usepackage{xurl}
\usepackage{hyperref}
```

If the issue persists, consider using shorter display URLs or moving URLs into DOI links where possible.

### 10. Unused bibliography entries

Unused entries found:

- `diamond_tomography_2026`
- `doe_mine_future_2025`
- `esrf_bm05_2026`
- `kelemen_peridotite_2020`
- `raissi_pinns_2019`

Suggested fix: remove these entries if they are no longer needed, or cite them where they directly support the argument.

Possible places to cite:

- `diamond_tomography_2026`: facility capability discussion near `white_paper.tex:55`.
- `esrf_bm05_2026`: industrial-access or beamline-access discussion near `white_paper.tex:235`.
- `raissi_pinns_2019`: physics-informed ML discussion near `white_paper.tex:228`, if a primary PINN citation is desired.
- `kelemen_peridotite_2020`: carbon mineralisation discussion near `white_paper.tex:230`, if engineered ultramafic mineralisation is kept.
- `doe_mine_future_2025`: US investment discussion near `white_paper.tex:42` or `white_paper.tex:242`, if distinct from `doe_motf_launch_2025`.

## Verification Notes

The manuscript was compiled with `./build.sh`. Build completed successfully and produced `white_paper.pdf`, but with layout warnings.

Citation integrity check found no cited keys missing from the bibliography.
