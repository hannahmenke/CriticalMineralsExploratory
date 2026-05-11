# Consolidated Workflow Figure Image Generation Prompt

Create one clean, publication-quality scientific workflow diagram for a review/white-paper article on Digital Rock Physics for critical minerals. The figure should show how representative materials move through ex situ and in situ imaging, correlative chemistry, AI-assisted interpretation, physics-based modelling, model interpretation, and process decisions.

Important rendering constraints:
- The background must be pure white (#FFFFFF) across the entire image.
- The figure must look like it was built manually in Adobe Illustrator: crisp vector shapes, precise alignment, clean strokes, flat fills, consistent typography, and no raster/photo texture.
- Do not render a figure title.
- Do not render a figure caption.
- Do not render a figure number.
- Do not include journal-style caption text inside the image.
- Internal scientific labels and short annotations are allowed, but keep text sparse and readable.
- Do not use photorealistic instruments, laboratory rooms, people, facility logos, company logos, or branded equipment.

Core visual idea:
- Show a single left-to-right workflow with two parallel measurement lanes that merge into modelling and decision support.
- Upper lane: ex situ correlative characterisation of static samples.
- Lower lane: in situ / operando experiments on reacting or mechanically evolving samples.
- Both lanes should feed into a central "geometry + chemistry interpretation" block.
- That interpretation block should feed into a physics-based modelling block.
- Modelling outputs should feed into a second, clearly separate "AI / surrogate / uncertainty" block.
- The final block should show process decisions and iterative feedback.

Overall layout:
- Landscape orientation, approximately 16:9.
- Pure white canvas only, no off-white tint, no paper texture, no gradient, no vignette, no border, no background pattern.
- Use a clear modular vector layout with five columns:
  1. Representative materials.
  2. Measurements.
  3. Fused interpretation.
  4. Simulation and model learning.
  5. Decisions and feedback.
- Use thin charcoal-grey outlines and clean arrows.
- Use muted colours consistently:
  - grey/brown for samples and particles;
  - blue for 3D structural imaging;
  - green for chemical/speciation data;
  - red/orange for reactive change and effluent chemistry;
  - purple for AI, model learning, uncertainty, and surrogate modelling;
  - teal for decision outputs.
- Use no more than 25-35 words total inside the image if possible, excluding short method acronyms. The visual structure should carry most of the meaning.

Column 1: representative materials
- Show a compact group of three stylised sample icons:
  - an ore core or drill chip;
  - a tailings particle or crushed ore particle;
  - a black-mass / recycled battery-material powder icon.
- Label this group only as "samples".
- Show the samples splitting into two arrows: one to the upper ex situ lane and one to the lower in situ lane.

Column 2 upper lane: ex situ correlative characterisation
- Show a simple 3D voxel cube or cylindrical sample volume.
- Add a blue structural-imaging layer and a green chemical-mapping layer registered on the same volume.
- Include only short method labels near the volume:
  - "CT"
  - "SEM-EDX"
  - "XRF/XANES/XRD"
- The visual should communicate multimodal registration of structure and mineral chemistry.
- Avoid showing large scanner equipment; focus on the data volume.

Column 2 lower lane: in situ / operando experiment
- Show a simplified flow-through sample cell containing grains, pores, and a visible reaction front.
- Show inlet fluid entering from the left and outlet fluid leaving to the right.
- Include a blue imaging beam passing through the sample cell.
- Add a small effluent analytics icon or mini-plot connected to the outlet.
- Use only short labels:
  - "in situ cell"
  - "flow + imaging"
  - "effluent chemistry"
- The visual should communicate time-resolved imaging plus synchronized outlet-fluid measurements.

Column 3: fused geometry + chemistry interpretation
- Merge arrows from both measurement lanes into a central block.
- Show a segmented 3D volume with clearly separated classes:
  - target mineral in teal;
  - gangue in light orange/grey;
  - pores/fractures in blue;
  - alteration/reaction products in red/orange.
- Label the block "geometry + chemistry".
- Include a small purple AI icon only as an assistant to segmentation, not as the final modelling result.
- Label this small side tag "AI segmentation".
- This block represents image interpretation: registration, segmentation, mineral classification, connectivity, and time-resolved change.

Column 4: simulation and model learning
- Split this column into two stacked but connected blocks.
- First block: physics-based image simulation.
  - Show the segmented volume becoming a mesh or pore-network model.
  - Add flow arrows, a dissolution front, and a small output plot.
  - Label this block "physics model".
  - Include short tags: "reactive transport", "liberation", "permeability".
- Second block: model interpretation and acceleration.
  - Show a purple surrogate-model or uncertainty block connected to the physics model outputs, not directly replacing the measurement block.
  - Label this block "surrogate + uncertainty".
  - Include a small comparison plot or confidence band.
- Make visually clear that AI appears in two different roles:
  - earlier for image segmentation of geometry/chemistry;
  - later for surrogate modelling, uncertainty, and rapid scenario testing after physics-based modelling.

Column 5: decisions and feedback
- Show four compact decision tiles with small icons:
  - "grind target"
  - "leach window"
  - "DLE sorbent design"
  - "recycling route"
- Use teal for this decision block.
- Add one feedback arrow from decisions back to the samples/measurement side labelled "iterate".
- This feedback loop should show that the workflow supports experiment design and process optimisation.

Lower infrastructure band:
- Add a thin, unobtrusive horizontal band along the bottom spanning columns 2-5.
- Label it "Digital Ore Passport".
- Include tiny but readable tokens in the band:
  - "metadata"
  - "image volumes"
  - "chemistry"
  - "process data"
  - "uncertainty"
- This band should not dominate the figure.

Quality requirements:
- Professional scientific vector schematic, as if drawn in Adobe Illustrator by a scientific illustrator.
- Pure white background.
- Clean alignment, consistent stroke width, consistent label font, consistent arrow style.
- No cluttered text blocks.
- No decorative gradients or background ornaments.
- No overlapping labels or arrows.
- The ex situ and in situ lanes must be visually distinct but clearly part of one workflow.
- The image must make the separation between "AI segmentation" and "surrogate + uncertainty" obvious.
- The in situ experiment must be part of the main workflow, not an optional side inset.

Suggested manuscript caption, not to be rendered in the image:

Integrated Digital Rock Physics workflow for critical-mineral systems. Static correlative imaging resolves registered geometry and mineral chemistry, while in situ experiments track reactive flow, structural change, and effluent chemistry under process-relevant conditions. AI-assisted segmentation supports image interpretation, physics-based models translate those data into transport, liberation, and reaction predictions, and surrogate models with uncertainty estimates accelerate decision support for comminution, leaching, DLE, recycling, and tailings valorisation.
