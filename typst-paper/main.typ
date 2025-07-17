
#import "@preview/arkheion:0.1.0": arkheion, arkheion-appendices
#import "@preview/equate:0.2.1": equate
#import "@preview/wrap-it:0.1.0": wrap-content

#set page(paper: "a4", margin: (left: 10mm, right: 10mm, top: 12mm, bottom: 15mm))
#set par.line(numbering: n => text(size: 6pt)[#n])
// #set par.line(numbering: "1")
//-> will work in next release ("soon")
#show: arkheion.with(
  title: "Overt Spatial Biases in a concurrent two alternatives choice task",
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
    
   A common task to investigate early visual attention is to provide participants with a choice between two stimuli. When such choice tasks allow for eye-movements in order to assess overt attention, reports emerged that indicated a spatial bias towards first saccading the left stimulus, ranging from \~65% up to \~90%. Here, we replicate this finding and extend it to non-horizontal stimulus arrangements. In an eye-tracking study (n=23), we (1) replicate the left-right bias with \~80% left-preference, (2) describe a novel vertical bias with an \~80% up-preference, and (3) find a specific diagonal placement of the stimuli that shows no spatial bias. The third finding suggests, that we can improve the dynamic range (and hence statistical power) in investigations of early attentional effects. Based on a Bradley-Terry logistic regression simulation, we theoretically could gain small (\~5%, at \~65% bias) to decent (\~30%, at \~80% bias) to large (\~300% at \~90% bias) power improvements — simply by changing the spatial arrangement of the two stimuli. Taken together, we provide a better description of spatial biases between two stimuli, and present a practical modification to the 2-AFC paradigm that can substantially improve the power of visual attention studies.
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

Human visual perception is inherently selective, with certain visual stimuli capturing attention more readily than others. For both for covert and overt attention – i.e., without or with eye-movements – when presented with competing stimuli at different locations in the visual field, subjects must choose which stimuli to sample first. This sampling priority has been exploited to provide insights into possible ‘attentional biases’ in different conditions such as anxiety, obsessive-compulsive disorder or addiction (reference). In other types of research, even when sampling priority itself is not of interest, an initial bias towards a particular kind of stimuli may result in an overall imbalance in stimuli sampling when the timing of presentation is limited, as typical in psychophysical tasks like the two-alternative forced choice task (2-AFC).

Initial sampling decisions are influenced not only by the stimuli themselves but also by their spatial arrangement, independent of content. Initial overt biases have been well studied for the cases of whole scenes, where an initial tendency to explore the left side of the image, regardless of content, has been repeatedly described (@ossandon_spatial_2014, @spotorno_whats_2025, @foulsham_tom_stable_2018). It is less clear how spatial biases manifest when different stimuli are presented discreetly at different locations. In tasks that investigate attentional biases – by measuring first eye movements or cueing effect as in the dot-probe task, or by testing stimulus detectability, as in the 2-AFC task – two stimuli are usually presented horizontally, one to the left and one to the right of a central fixation. In general, such studies do not report spatial biases and investigators typically average responses across sides. In the rare cases when spatial biases are reported, they have been found to be rather large, with a bias of 65% @hernandez-garcia_global_2020, 68% (Rothkegel et al., 2016) and up to 93% of fixations @cludius_attentional_2019 landing on the stimuli on the left side.  

The disregard for spatial biases is based on the belief that experimental balancing of stimuli across locations controls for any effect of spatial biases. Although this belief is in some cases correct, a strong spatial bias can potentially diminish the operational range for revealing attentional biases. This is also true for non-attentional tasks in which exposure to stimuli is limited. For instance in the case of a 2-AFC task, a strong left spatial bias combined with limited exposure could result in reduced measurements of sensitivity due to signal-detection theory “Position-bias” (Wickens, 2001), or in decisions based solely on sampling the left stimuli, effectively transforming the 2AFC task in a yes-no task, which has different bias and detection properties (MacMillan, 2004). 

In this study, we attempted to replicate and further investigate first-movement spatial bias, not only for the left-right arrangement, but also for diagonal and vertical arrangements. Earlier studies have indeed used such arrangements (specifically the right side up, left side down), to defend against the left-right bias @nummenmaa_eye_2006, @muller_celina_l_through_2025. They argued that an upper-lower bias counteracts the left-right bias in their specific arrangement. Unfortunately, to our knowledge, there is no prior evidence for such counteracting biases.

To investigate initial scanning spatial bias beyond the left-right placement we positioned stimuli opposite to the central fixation dot, arranged in six different positions. The stimuli were artificially generated textures, largely devoid of content. Nevertheless, due to a distractor-detection task, subjects were encouraged to look at both stimuli. To preview our results, we replicated the known initial leftward bias and found that a diagonal placement, at 2/7 o'clock, resulted in no spatial bias, whereas all other arrangements were biased towards the left (or above in case of the 6/12 o'clock arrangement). We also provide simulation evidence on how much strong spatial biases can affect experimental power and bias sensitivity measurements.

 
= Experimental Methods
The experiment was conducted in a controlled laboratory environment, within a student-project. A total of 23 participants (age range 20 - 60 (more detailed information was not recorded), 3 female, 20 male, 0 diverse) were included in the study. All participants were raised in a culture where the Latin script is utilized and reading is conducted from left to right.
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


= Results
We examined spatial biases between simultaneously depicting two images using eye-tracking. Participants predominantly made their first fixations on images located to the left of the fixation, following the left view bias described in the literature. In the typical 3/9 o'clock horizontal presentation condition, we observed on average 79.9% left-first fixations ($"CI"_95: [69.02-88.59]%$). We further find a similar sized top-bottom bias towards the top stimulus (81.4%,$"CI"_95:[70.11-91.07]%$). Only when the stimuli were presented in the 1/7 o'clock position, we observed no bias (50.0%,$"CI"_95:[37.50-61.96]%$)).

#figure(
   image("condition_distribution_results.png", width: 80%),
  caption: [
    Individual distribution of participants and mean of first fixations and reaction times.
  ],
)

We did not find obvious patterns in the reaction times across spatial layouts.

= Effect on Power
A strong left (or right) bias can have strong consequences on th statistical power to find an effect. To highlight this, we simulated binary data from a basic Bradley-Terry model. In the Bradley-Terry model, we use a logistic regression, where 0 is left and 1 is right. Thus, the intercept represents the overall left-right bias. A second coefficient represents an effect coded condition, e.g. whether the left stimulus (-1) or the right stimulus (+1) is a happy (vs. neutral) face. We keep the condition-effect fixed at log-odds of 0.5, and systematically modify the intercept, the left-right bias. For each combination, we calculate 2000 simulations of 200 trials (achieving \~80% power at intercept=0), and test whether the condition-effect is correctly detected as significant, representing the power. 

We find a striking inverse quadratic relationship between the left-right bias and power. Meaning, the stronger the left/right bias, the smaller power. This can be translated to gains in power, which range from being small (\~5%, at \~65% bias) to decent (\~30%, at \~80% bias) to large (\~300% at \~90%).

#figure(
  image("bias_vs_power.png",width:40%),
  caption:[
    left-right bias against power at constant condition effect-size of 0.5. The logistic regression follows the Wilkinson formula `y~1+cond`, with `cond` being effect-coded following the Bradley-Terry model. Dashed lines are reported left-right biases in the literature
  ]
)

= Discussion

We replicated the well-known leftward spatial bias when two images are displayed simultaneously. We further demonstrated that diagonal positioning of stimuli in a 2/7 o'clock configuration can eliminate this left-bias. These results are potentially relevant for all visual research in which multiple stimuli are presented in different locations of the visual field. Even for covert tasks, or when the direction of the first eye movement is itself irrelevant, strong scanning biases can reduce the dynamic range available for experimental manipulation and affect sensitivity measurements. Moreover, these results indicate that our understanding of the mechanisms behind spatial biases remains incomplete. 

Many experimental paradigms relying on discrete, competing spatial stimulation may be affected by spatial biases. This is particularly true for paradigms investigating initial exploration biases as indicators of attentional bias for particular types of stimuli in specific populations (ref). Although, in almost all cases, researchers take care to balance stimuli across spatial locations, we show here that a strong spatial bias, as is usually observed with left-right configurations, can nevertheless greatly reduce experimental power, thus limiting research validity, interpretability, and reproducibility. This can also be problematic for other measures used in attentional bias research, such as total time spent viewing a given stimulus, since this is dependent on initial exploration. Research on free viewing biases has shown that the initial leftward bias leads to an overall bias to the left lasting up to 1.5 seconds @ossandon_spatial_2014. For other types of research, where eye movements are not themself of interest or measured, the effect of a spatial bias on measurement and experimental power can still be significant, especially in tasks with brief presentations times, as is typically the case in psychophysical tasks like the AFC task. In this important case, a strong sampling bias can distort sensitivity measurements and even effectively change the nature of the task. The results of our experiment suggest that, when eye movement are allowed, initial scanning biases should always be reported, and that a 2/7 o'clock configuration might be optimal for most tasks.
 
Beyond this experimental relevance, our results also highlight a continued lack of understanding, even at the descriptive level, of pure spatial attentional and scanning biases. Biases or asymmetries in the visual system have been abundantly demonstrated at the perceptual, attentional, and scanning level. Perceptually, research has found that human performance across diverse tasks decreases with eccentricity, following an horizontal-vertical anisotropy and a vertical meridian asymmetry @himmelberg_polar_2023: performance is better for stimuli shown along the horizontal meridian compared to obliques or vertical meridians, and within the vertical meridian, better for stimuli in the lower field. In these types of perceptual experiments, where no competing stimuli are present, no perceptual asymmetry within the horizontal meridian, or across diagonals has been found @barbot_asymmetries_2021. Moreover, the perceptual advantage for lower visual field stimuli is at odds with the first fixation bias for upper stimuli reported here. 

For a variety of tasks in which competing stimuli are presented across the hemifield, attentional spatial biases are found for both the horizontal and vertical domain, usually favoring the left hemifield and, depending on the task, upper or lower fields. Experiments showing a left bias include the classic line-bisection task @Jewell2000; studies using chimeric faces, in which two half faces present different features (XXX), mirror-reversed gradients of brightness or distribution of dots @Mattingley1994 @Luh1994a @Luh1991 @Nicholls1999., spatial and scene memory tasks @Buschman2011 @DellaSala2010 Dickinson & Intraub, 2009), and feature-biased attentional capture @Du2010. (vertical biases experiments here). In general, horizontal biases have been attributed to lateralization of visual processing modules between the two brain hemispheres. For instance, a bias for the left side of faces follows from the right lateralization of face processing. In this module lateralization hypothesis, a more general role is given to the right lateralization of the attentional network (Corbetta xxxx,xxx), which would explain the overall bias towards the left observed in multiple tasks (). However, such brain lateralization explanations fail to account for biases between the upper and lower hemifield, as well those across diagonals, as observed here. 

Scanning, or overt attentional, biases have been mainly studied in free-viewing paradigms. Most prominently, free-viewing behavior is initially heavily lateralized to the left  @Foulsham2013 @foulsham_stable_2018 @Nuthmann2014 @ossandon_spatial_2014 @spotorno_whats_2025. This horizontal bias does not manifest as a bias for particular oblique directions (check), but could nevertheless account for the biases observed here for stimuli on the horizontal meridian and in the top-left quadrant. However, a general leftward bias cannot explain our main finding of limited or no biases for configurations combining stimuli in the bottom-left and top-right quadrants. Regarding the vertical dimension, an initial downward vertical free-viewing bias has been identified @foulsham_asymmetries_2010, which would predict the opposite result to what is reported here (bias for top stimulus). However this freeviewing bias depended strongly on image characteristics, thereby disqualifying it as a pure spatial bias that can be revealed for balanced stimuli as in our study. In summary, the pattern of results observed here is incompatible with only a spatial leftward bias as previously described, and instead resembles the effects of two interacting, independent spatial biases – a leftward and an upward one. 

Overall, perceptual asymmetries appear to be largely dissociated from attentional or scanning biases. For instance, the most reported attentional and scanning bias is for left stimuli, but there is no corresponding perceptual asymmetry within the horizontal meridian. Dissociating or establishing causal relationships between attentional and scanning biases is more difficult, since spatial attention and eye movement are closely linked, both in terms of brain networks  and functionally – as in the mandatory pre-saccadic shift of attention (). Moreover, attentional biases that are observed without eye-movements are often exacerbated when eye-movements are allowed or manipulated, such as for line-bisection (), face perception (), and scanning tasks (). Nevertheless, the results presented here indicate that scanning spatial biases – and probably  also covert ones – are directed not only towards the left hemifield but also towards the upper one.

/* things to still add
@durgin_upper-left_2008 found an upper-left bias


== Relation to dot-probe task
The popular dot-probe task is commonly used in clinical settings to investigate attentional biases. They briefly present two stimuli left and right of the fixation cross. They typically do not use eye-tracking, thus to approximate attention deployment, they cannot use first fixation location, but rather present a probe at one of the locations. This probe is supposedly faster processed (and thus reaction is faster), if attention is already employed at that location, allowing for inference to the underlying experimental manipulations.

*/


= Conflicts of Interest

The authors have no conflicts of interest to declare. All co-authors have seen and agree with the contents of the manuscript, and there is no financial interest to report.

= Data and Code Availability

All code is publicly available at https://github.com/s-ccs/project_leftrightbias.

= Author Contributions

The project was conducted as a semester project of the "Acquisition and Analysis of Eye-Tracking Data" M.Sc. course at the University of Stuttgart.

- #underline[Maximilian Bernhardt]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Patrick Ebner]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Simon Enkel]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Claudius Hilser]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Enno Schwenk]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Titus von der Malsburg]: Analysis; Writing - Review & Editing; Funding acquisition

- #underline[Judith Schepers]: Analysis; Writing - Review & Editing

- #underline[José Ossandon]: Writing - Review & Editing

- #underline[Benedikt Ehinger]: Conceptualization; Methodology; Software; Resources; Supervision; Writing - Review & Editing; Visualization; Funding acquisition

= Funding

Funded by Deutsche Forschungsgemeinschaft (DFG, German Research Foundations) in the Emmy Noether Programme - Project-ID 538578433. The authors further thank the International Max Planck Research School for Intelligent Systems (IMPRS-IS) for supporting Judith Schepers.

#set par(justify: true, first-line-indent: 0pt);


// send behinger an email with your zotero to get access to the group
#bibliography(title:"Bibliography", style:"american-psychological-association", "zotero_shared.bib")

