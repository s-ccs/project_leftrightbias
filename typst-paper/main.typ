
#import "@preview/arkheion:0.1.0": arkheion, arkheion-appendices
#import "@preview/equate:0.2.1": equate
#import "@preview/wrap-it:0.1.0": wrap-content

#set page(paper: "a4", margin: (left: 10mm, right: 10mm, top: 12mm, bottom: 15mm))
#set par.line(numbering: n => text(size: 6pt)[#n])
// #set par.line(numbering: "1")
//-> will work in next release ("soon")
#show: arkheion.with(
  title: "Overt Spatial Biases in a concurrent 2-AFC task",
  authors: (

    (name: "Maximilian Dominik Bernhardt",
    email: "\nst190131@stud.uni-stuttgart.de", 
    affiliation: "University of Stuttgart", 
    orcid: "0000-0002-6276-3332"),

    (name: "Simon Enkel", 
    email: "st190826@stud.uni-stuttgart.de", 
    affiliation: "University of Stuttgart", 
    orcid: "0000-0002-6276-3332"),

    (name: "Claudius Hilser", 
    email: "st190681@stud.uni-stuttgart.de", 
    affiliation: "University of Stuttgart", 
    orcid: "0000-0002-6276-3332"),

    (name: "Judith Schepers", 
    email: "judith.schepers@vis.uni-stuttgart.de", 
    affiliation: "University of Stuttgart", 
    orcid: "0009-0000-9270-730X"),

    (name: "Titus von der Malsburg", 
    email: "\ntitus.von-der-malsburg@ling.uni-stuttgart.de", 
    affiliation: "University of Stuttgart", 
    orcid: "0000-0001-5925-5145"),

    (name: "José Ossandon", 
    email: "jose.ossandon@uni-hamburg.de", 
    affiliation: "University of Hamburg", 
    orcid: "0000-0002-2539-390X"),

    (name: "Benedikt Ehinger", 
    email: "benedikt.ehinger@vis.uni-stuttgart.de", 
    affiliation: "University of Stuttgart - SimTech", 
    orcid: "0000-0002-6276-3332"),
  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: [
    (abstract for ecvp)
    
   A common task to investigate early visual attention is to provide participants with a choice between two stimuli. When such 2-AFC tasks allow for eye-movements for assessing overt attention, reports emerged that indicated a spatial bias towards first saccading the left stimulus, ranging from 65% up to 90%. Here, we replicate this finding and extend it to non-horizontal stimulus arrangements. In an eye-tracking study (n=23), we 1) replicate the left-right bias with ~80% left-preference, 2) describe a novel vertical bias with 80% up-preference, and 3) find a specific diagonal placement of the stimuli that shows no spatial bias. Especially the latter finding allows improving the dynamic range (and hence statistical power) in investigations of early attentional effects. Based on a Bradley-Terry logistic regression simulation, we theoretically could gain small (~5%, at 65% bias) to decent (~30%, at ~80% bias) to large (~300% at ~90%) power improvements - just by changing the spatial layout of the two stimuli. Taken together, we show here both, a new description of spatial biases between two stimuli, and a powerful methodological twist to the 2AFC to improve attentional research methodology.
  ],
  keywords: ("left-right bias", "spatial bias", "2-AFC", "eye tracking", "attention"),
  date: "4th December, 2024",
) 

// set spellcheck language
#set text(lang: "en", region: "US")

// figure caption alighment
#show figure.caption: set align(center)

//#elements.float(align: bottom, [\*Corresponding author]) 
#set figure(gap: 0.5em) /* Gap between figure and caption */
#show figure: set block(inset: (top: 0.5em, bottom: 1.5em)) /* Gap between top/ bottom of figure and body text */

//#show: equate.with(breakable: false, sub-numbering: true) /* Needed for multi line equations */
#set math.equation(numbering: "(1.1)")

#set heading(numbering: "1." )

#pagebreak()
= Introduction
Human perception is inherently selective, with certain visual stimuli capturing attention more readily than others. When presented with two stimuli simultaneously, subjects need to choose which to sample first. Such priority has been extensively exploited to provide insights into the attentional system of healthy (cite dot-probe), as well as in patients @cludius_attentional_2019 (XXX others). This effect is related to the 2-AFC task, crucially with 2AFC tasks, a final decision is investigated, not the first deployment of attention.

These initial decisions are not only influenced by the stimuli themselves, but also by the spatial arrangement, independent of the content. The most common arrangement is a horizontal one, one left and one right of a central fixation. In cases a spatial bias was explicitly reported, we found a bias of 65% @hernandez-garcia_global_2020 up to 93% of fixations @cludius_attentional_2019 to land on the stimuli on the left side. 

Another lateral bias has been described, but within a single image, not between two images. Here a spatial bias to first explore the left side of an image in the initial 2-3 seconds has been described @ossandon_spatial_2014, @spotorno_whats_2025, @foulsham_tom_stable_2018 .

Thus, similarly to the single-image bias, the two-stimulus left bias will likely reflect multiple underlying causes, ranging  from handedness, to reading direction. 

These biases are rarely discussed or referenced because balancing the conditions over the left and right side, often removes them. Nevertheless, if extreme biases such as >90% can occur, they greatly diminish the operational range of any attentional biases.

In this study, we replicate and investigate this bias not only for the left-right arrangement, but also for diagonal and vertical arrangements. Earlier studies have indeed used such arrangements (specifically the right side up, left side down), to defend against the left-right bias @nummenmaa_eye_2006, @muller_celina_l_through_2025. The argument from their study is, that an upper-lower bias, counteracting the left-right bias in their specific arrangement. Unfortunately, to our knowledge, they state this without any explicit test or reference.

To investigate on a theoretical level this spatial bias in vision, and on an applied side, whether diagonally placing stimuli can counteract such a bias, we placed stimuli in opposition to the central fixation dot, arranged in 6 different positions. The stimuli were artificially generated textures, largely devoid of content, nevertheless due to a distractor-detection task, subjects were encouraged to look at both stimuli.

To preview our results, indeed a diagonal placement at 2/7 o'clock resulted in no spatial bias, whereas all other arrangements were biased towards the left (or top in case of the 6/12 o'clock arrangement).

 
= Experimental Methods
The experiment was conducted in a controlled laboratory environment, within a student-project. A total of 23 participants (mean age =, range = 20 - 60, 3 female, 20 male, 0 diverse) were included in the study. All participants were raised in a culture where the Latin script is utilized and reading is conducted from left to right.
//The age demographic of the participants was as follows: 20 - 30 years (n = 22), 50 - 60 years (n = 1), while the gender distribution was as follows: male (n = 20), female (n = 3). 

We used grayscale, high contrast texture stimuli (see Figure 1). All pictures were created with stable diffusion using Leonardo.AI leonardo.ai and ChatGPT, with a size of 1024x1024px. To create the stimuli, the following prompts were used: "Please generate simple images of different textures without striking content in black and white/Please generate simple images of different natural textures like wood or garn without striking content in black and white." Using  Opensesame 4.0 @mathot_opensesame_2012 @mathot_conducting_2022, PyGaze @dalmaijer_pygaze_2014 and PsychoPy @peirce_psychopy2_2019, the stimuli were displayed with 204x204px with a 28.3" LCD monitor (resolution: 1920x1080 pixels, height: 527mm, width: 296,5mm) with participants seated 60 cm in front of the screen, resulting in a visual angle of around 3.02 dva per stimulus. To monitor the eye, we used a GazePoint GP3 HD at 240Hz.
 
The stimuli pairs were placed 8.37 dva away from the center, always in opposition to each other for 5s. After the stimulus display, a fixation period at the center fixation cross was enforced for 1.5s. In total, 48 trials were recorded per subject, at 6 locations. Even though we do not expect any low-level influences in our study design, all stimuli-pairs were presented counter-balanced for location.
 
To maintain participant focus, we added an easy distractor detection task. On each individual stimulus, we overlaid either a circle or a polygon contour. The participants distractor task was to count the number of circles and report them verbally.

  #figure(
  image("stimuli_display.png", width: 80%),
  caption: [
    Experimental design including examples of stimuli displayed during the experiment.
  ],
)
 
 = Analysis Methods

Based on the location-based fixation detection algorithm provided by Gaze-Point, we extracted which stimulus was first fixated, and the corresponding saccade reaction times. To synchronize the experiment, we used the OpenSesame/PyGaze log-function, which allows synchronization per sample (thus adding a minor jitter of +-2ms).

We calculate mean response, and 20%-winsorized means reaction times, per spatial arrangements, per subject. We consequently use 20% winsorized mean bootstrapping to calculate confidence intervals. Reaction times were only used if a spatial location was chosen first, leaving us with little to no data for some conditions with strong choice bias. Given the visible size of the choice effects, we deem no further comparison between conditions necessary.

// Furthermore the time is normalized.
 //After preprocessing the data, fixations are being counted by extracting all last fixations together with their corresponding coordinates and compared to which stimuli they belong to ensure they are on a stimulus and therefore can be considered. Afterwards for the visualization of the results, multiple plots have been made in total.  The counts for the twelve different stimuli positions are compared and the most important plot shows the percentage of first fixations by stimuli pairs.

 //At last, the column containing all the logs during the experiment is evaluated. For this, logs have been added to the implementation of the experiment in OpenSesame to be able to read out the timing of occurring events afterwards. All not complete log entries were not used for the final evaluation of the experiment. 

= Results
We examined spatial biases between simultaneously depicting two images using eye-tracking. Participants predominantly made their first fixations on images located to the left of the fixation, following the left view bias described in the literature. In the typical 3/9 o'clock horizontal presentation condition, we observed on average 79.78% left-first fixations ($"CI"_95: [69.41-88.90]%$). We further find a similar sized top-bottom bias towards the top stimulus (81,42%,$"CI"_95:[69.88-90.84]%$). Only when the stimuli were presented in the 1/7 o'clock position, we observed no bias (50.00%,$"CI"_95:[37.50-61.96]%$)).

#figure(
   image("condition_distribution_results.png", width: 80%),
  caption: [
    Individual distribution of participants and mean of first fixations and reaction times.
  ],
)

We did not find obvious patterns in the reaction times across spatial layouts.

= Discussion
We replicate the left-bias spatial bias between two simultaneously displayed figures. We further demonstrate, that diagonal positioning of stimuli can eliminate such a left-bias, increasing the dynamic range available for actual experimental manipulations to influence the early attentional stage. 

== Limitations
The study has several limitations to their generalizability. 
We used a small, culturally homogeneous sample size with a narrow age range. Subjects were WEIRD (western, educated, industrialized, rich and democratic), mostly right-handed and consisted only of left-to-right readers.

The stimuli were limited to natural black and white textures to provide no strong  lower-level saliency feature. The influence of stimulus content, at least for the left-right bias, was investigated in @hernandez-garcia_global_2020.

Besides the stimulus contents, we did not manipulate the distance and sizes of the stimuli.


== Relation to single image spatial biases
@durgin_upper-left_2008 found an upper-left bias

== Relation to dot-probe task
The popular dot-probe task is commonly used in clinical settings to investigate attentional biases. They briefly present two stimuli left and right of the fixation cross. They typically do not use eye-tracking, thus to approximate attention deployment, they cannot use first fixation location, but rather present a probe at one of the locations. This probe is supposedly faster processed (and thus reaction is faster), if attention is already employed at that location, allowing for inference to the underlying experimental manipulations.

It is therefore no stretch to wonder if the dot probe suffers from the same spatial bias as the experiment we provide here in detail. XXX

= Conclusion
The left-bias in visual attention can be detrimental to first-fixation choice analysis. We show that slightly rotating the stimulus layout, so that the right stimulus is elevated and the left lowered, this bias can be counteracted. Therefore, we recommend to use diagonal stimulus placements whenever investigating choice-biases.

= Conflicts of Interest

The authors have no conflicts of interest to declare. All co-authors have seen and agree with the contents of the manuscript, and there is no financial interest to report.

= Data and Code Availability

All code is publicly available at https://github.com/s-ccs/project_leftrightbias https://github.com/PatrickEbner/2024-SoSe_EyeTracking.git.

= Author Contributions

The project was conducted as a semester project of the "Acquisition and Analysis of Eye-Tracking Data" M.Sc. course at the University of Stuttgart.

- #underline[Maximilian Bernhardt]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Patrick Ebner]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Simon Enkel]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Claudius Hilser]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Enno Schwenk]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Titus von der Malsburg]: Analysis; Writing - Review & Editing; Funding acquisition

- #underline[Judith Schepers]: Analysis; Writing - Review & Editing

- #underline[Benedikt Ehinger]: Conceptualization; Methodology; Software; Resources; Supervision; Writing - Review & Editing; Visualization; Funding acquisition

= Funding

Funded by Deutsche Forschungsgemeinschaft (DFG, German Research Foundations) in the Emmy Noether Programme - Project-ID 538578433. The authors further thank the International Max Planck Research School for Intelligent Systems (IMPRS-IS) for supporting Judith Schepers.

#set par(justify: true, first-line-indent: 0pt);


// send behinger an email with your zotero to get access to the group
#bibliography(title:"Bibliography", style:"american-psychological-association", "zotero_shared.bib")

