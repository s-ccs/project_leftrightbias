
#import "@preview/arkheion:0.1.0": arkheion, arkheion-appendices
#import "@preview/equate:0.2.1": equate
#import "@preview/wrap-it:0.1.0": wrap-content

#set page(paper: "a4", margin: (left: 10mm, right: 10mm, top: 12mm, bottom: 15mm))
#set par.line(numbering: n => text(size: 6pt)[#n])
// #set par.line(numbering: "1")
//-> will work in next release ("soon")
#show: arkheion.with(
  title: "A simple spatial arrangement modification to increase statistical power in concurrent two alternatives choice tasks",
  authors: (

    (name: "Benedikt Ehinger",
    email: "benedikt.ehinger@vis.uni-stuttgart.de",
    affiliation: "University of Stuttgart - SimTech",
    orcid: "0000-0002-6276-3332"),

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

  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: [   
      A common task to investigate early visual attention is to provide participants with a choice between two stimuli and to measure which they fixate first. However, the sensitivity of these tasks is severely limited due to strong horizontal biases, usually to the left (at least in speakers of languages written left-to-right), ranging from $\~65%$ up to $\~90%$ preference to one side in the absence of other differences. Schütz 2014 extended this finding to non-horizontal stimulus arrangements, showing a bias towards $~110°$ upwards eye movements. Here, we replicate these findings and discuss their implications for experimental design in choice tasks. In an eye-tracking study ($N=23$), we (1) replicate the left-right bias in speakers of German with a $\~80%$ left-preference, (2) replicate the vertical bias with an $\~80%$ top-preference, and (3) find a specific diagonal placement of the stimuli in which these biases cancel out such that there is overall no spatial bias at all. This stimulus arrangement improves the dynamic range, and statistical power, when studying attentional effects. Based on a Bradley-Terry logistic regression simulation, we could gain small ($\~5%$, at $\~65%$ bias) to decent ($\~30%$, at $\~80%$ bias) to large ($\~300%$ at $\~90%$ bias) power improvements, simply by changing the spatial arrangement of the two stimuli.
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

Human visual perception is inherently selective, with certain visual stimuli capturing attention more readily than others. For both covert and overt attention described (with or without eye movements), when presented with competing stimuli at different locations in the visual field, subjects must choose which stimuli to sample first. This sampling priority has been exploited to provide insights into possible ‘attentional biases’ in different conditions such as anxiety, obsessive-compulsive disorder, or addiction (XXX reference). In other types of research, even when sampling priority itself is not of interest, an initial bias towards a particular kind of stimuli may result in an overall imbalance in stimulus sampling when the timing of presentation is limited, as typical in psychophysical tasks like the two-alternative forced choice task (2-AFC).

Initial sampling decisions are influenced not only by the stimuli themselves but also by their spatial arrangement, independent of content. Initial overt biases have been well studied for the cases of whole scenes, where an initial tendency to explore the left side, regardless of content, has been repeatedly described @ossandon_spatial_2014 @spotorno_whats_2025 @foulsham_tom_stable_2018. However, it is less clear how spatial biases manifest when different stimuli are presented discretely at different locations. In tasks that investigate attentional biases – by measuring first eye movements or cueing effect as in the dot-probe task, or by testing stimulus detectability, as in the 2-AFC task – two stimuli are usually presented horizontally, one to the left and one to the right of a central fixation. Such studies rarely report spatial biases, and instead counter-balance and then average responses across sides in order to neutralize the influence of the spatial bias. In the rare cases when spatial biases are reported, they have been found to be rather large, with a bias of 63% @hernandez-garcia_global_2020, 69% @hirmas_individual_2024, ~60-80% @fiedler_dynamics_2012, 74% @krajbich_visual_2010, 80% @bertrand_continuous_2023, and up to 93% of fixations (calculated on data from #cite(<cludius_attentional_2019>,form: "prose")) landing on the left side.
In this study, we attempted to replicate and further investigate first-movement spatial biases, not only for the left-right arrangement, but also for diagonal and vertical arrangements. This idea can be grounded in prior research by Schütz (2014), who found an upward, slightly-left bias at 110°. Thus one idea is to counteract the left bias with a bottom-up bias, and present stimuli in an right side up, left side down arrangement. Indeed, one prior study @muller_celina_l_through_2025 placed their stimuli on 45° degree opposition and reduced their bias left-right bias from 93% in @cludius_attentional_2019, to 63% (calculated on shared data https://osf.io/m27hc/files/c9r52). But unfortunately, no direct comparison is possible here because the stimulus material, overall setting and display parameters were also changed.

The disregard for spatial biases is likely based on the belief that experimental balancing of stimuli across locations controls for any confounding effect of spatial biases. Although this belief is often correct, a strong spatial bias can potentially diminish the operational range for revealing attentional biases of interest. This is also true for non-attentional tasks in which exposure time to stimuli is limited. For instance in the case of a 2-AFC task, a strong left bias combined with limited exposure time could result in reduced sensitivity due to the signal-detection theory “Position-bias” (Wickens, 2001), or in decisions based solely on sampling the left stimuli, effectively transforming the 2-AFC task in a yes/no task, which has different bias and detection properties (MacMillan, 2004).

To investigate this initial scanning spatial bias in greater detail, we positioned stimuli opposite to a central fixation target, arranged in six different positions. The stimuli were artificially generated textures, largely devoid of content. Nevertheless, due to a distractor-detection task, subjects were encouraged to look at both stimuli. To preview our results, we replicated the known initial left bias and found that a diagonal placement, at 2/7 o'clock, resulted in no overall spatial bias, whereas all other arrangements were biased towards the left or to the top in case of the 6/12 o'clock arrangement. We further provide simulation evidence on how strongly spatial biases can affect statistical power and bias sensitivity measurements.


= Methods

== Participants
A total of 23 participants (age range 20–60, 3 female, 20 male, 0 diverse) were included in the study. All participants were raised in a culture where the Latin script is utilized and text is written from left to right.

== Materials
We used gray scale, high contrast texture stimuli (see @fig:stimuli). All stimuli were created with stable diffusion using Leonardo.AI and ChatGPT, with a size of 1024×1024 px. To create the stimuli, the following prompts were used: “Please generate simple images of different textures without striking content in black and white”, “Please generate simple images of different natural textures like wood or garn without striking content in black and white.”

== Apparatus
Using Opensesame 4.0 @mathot_opensesame_2012 @mathot_conducting_2022, PyGaze @dalmaijer_pygaze_2014 and PsychoPy @peirce_psychopy2_2019, the stimuli were displayed with 204×204 px with a 28.3'' LCD monitor (Philips Brilliance 241B, resolution: 1920×1080 px, height: 527 mm, width: 296.5 mm) with participants seated 60 cm in front of the screen, resulting in a visual angle of around 3.02 dva per stimulus. To monitor the eye, we used a GazePoint GP3 HD eye-tracker with a sampling rate of 150 Hz.

== Procedure
The experiment was conducted in a controlled laboratory environment as part of a student project.
 
The stimuli pairs were placed 8.37 dva away from the center, always in opposition to each other for 5 s. After the stimulus display, a fixation period at the center fixation cross was enforced for 1.5 s. In total, 48 trials were recorded per subject at 6 location pairs. Even though we did not expect any influences of stimulus content, all stimulus pairs were presented counter-balanced for location.
 
To maintain participant focus, an easy distractor detection task was added. On each individual stimulus, we overlaid either a circle or a polygon contour (see @fig:stimuli). The task was to count the number of circles and report them verbally.

#figure(
    image("stimuli_display.png", width: 80%),
    caption: [
        A) Experimental design, stimuli were shown in pairs on opposites to the fixation cross. The classical left/right arrangement is highlighted in red. B) Example stimuli, including polygon and circle distractors.
    ],
) <fig:stimuli>
 

= Analysis Methods

Based on the location-based fixation detection algorithm provided by Gaze-Point, we extracted which stimulus was fixated first and the corresponding fixation reaction times. To synchronize the experiment, we used the OpenSesame/PyGaze log-function, which allows synchronization at the sample level.

After removing all trials with reaction times larger than 2s (e.g., because subjects did not explore the stimulus pair at all), we calculate mean choice proportion for each stimulus pair arrangement, and 20%-winsorized mean reaction times for each individual stimulus location per subject. We used mean percentile bootstrapping with 10,000 resamples to calculate 95% confidence intervals of parameters over subjects. For locations strongly disfavored by the left and top bias, only a few trials per subject were available to calculate reaction times. Given the visible size of the choice effects, we did not consider further comparison between conditions necessary.


= Results

@fig:results shows the spatial bias for each of the six arrangements of stimulus pairs and reactions times for all 12 positions. Participants predominantly made their first fixation on images located to the left of the fixation, consistent with the left bias described in the literature. In the typical 9/3 o'clock horizontal presentation condition, we observed on average 80% left-first fixations ($"CI"_95: [68-90]%$). We further find a similar sized top bias (81%,$"CI"_95:[70-91]%$). Only when the stimuli were presented in the 7/1 o'clock position, we observed no bias (50%,$"CI"_95:[38-62]%$)).

#import "@preview/subpar:0.2.2"

#subpar.grid(
    figure(image("2025-07-24_choice.svg")),
    figure(image("2025-07-17_rt.svg")),
    columns: (1fr, 1fr),
    caption: [A) Proportion of first fixation towards different stimulus arrangement (FIXME(TM): unclear what’s left and right). B) Reaction times for the first fixation on individual stimulus positions. Color depicts the number of trials used to averaging within one subject/condition combination. Note the reduced number of trials for locations towards the bottom right. Errorbars depict winsorized mean and 95% bootstrap over winsorized by-subject means (CHECK(TM) added “by-subject” for clarity],
    label: <fig:results>,
)

/*
#figure(
   image("condition_distribution_results.png", width: 80%),
  caption: [
    Individual distribution of participants and mean of first fixations and reaction times.
  ],
)
*/

We find that not only were the right/bottom stimuli less often chosen as the first saccade target, but when they were chosen, the reaction time generally appeared considerably longer compared to the opposite positions. Caution is appropriate though, as in the locations four, five, six, only very few trials per subject exist, and for some subjects even none.

= Effect on Power

A spatial bias can have strong consequences on the statistical power to find an effect. For a demonstration, we simulated binary data from a Bradley-Terry model. The Bradley-Terry model is a logistic regression where 0 is left and 1 is right. Thus, the intercept represents the overall left-right bias. A second coefficient represents an effect coded condition, e.g. whether the left stimulus (-1) or the right stimulus (+1) is a happy (vs. neutral) face. To demonstrate effects on power, we keep the condition effect fixed at log-odds of 0.5, and systematically modify the intercept, i.e. the left-right bias. For each combination, we calculate 2,000 simulations of 200 trials (achieving \~80% power at intercept=0), and test whether the condition effect is correctly detected as significant, representing the power.

We find a inverse quadratic relationship between the left-right bias and power (see @fig:power). Meaning, the stronger the left-right bias, the smaller is the power. This can be translated to gains in power, which ranges from being small (\~5%, at \~65% bias) to decent (\~30%, at \~80% bias) to large (\~300% at \~90%).

#figure(
    image("bias_vs_power.png",width:40%),
    caption:[
        Left-right bias against power at constant condition effect-size of 0.5. The logistic regression follows the Wilkinson formula `y~1+cond`, with `cond` being effect-coded following the Bradley-Terry model. Dashed lines are reported left-right biases in the literature (see Introduction).
    ]
) <fig:power>


= Discussion

We replicated the well-known leftward spatial bias when two images are displayed simultaneously and also demonstrated an equally strong top bias. We further demonstrated that diagonal positioning of stimuli in a 2/7 o'clock configuration can eliminate spatial bias because the left and top bias cancel out in this arrangement. These results are relevant for studies in which multiple stimuli are presented in different locations of the visual field, ranging from two-choice tasks to visual search. Even for covert tasks, or when the direction of the first eye movement is itself irrelevant, strong scanning biases can reduce the dynamic range available for experimental manipulation and affect sensitivity measurements. Moreover, these results indicate that our understanding of the mechanisms behind spatial biases still remains incomplete.

The relation of our findings to three studies should be highlighted here: @schutz_interindividual_2014 @durgin_upper-left_2008, @churches_perceptual_2017. In principle, we are conceptually replicating some of the findings of #cite(<schutz_interindividual_2014>,form:"prose"). They used only two stimuli at a time and found the same overall top-left bias as seen in our results. However, they also compared these biases to other biases e.g. left/right motor biases, without finding any major correlation. #cite(<durgin_upper-left_2008>, form:"prose") found a similar top-left bias in a visual search task, when presenting a circular search array, but also within a search grid. Further #cite(<churches_perceptual_2017>, form:"prose") found horizontal and vertical biases in an attention task without any eye-movements, and also interestingly uncorrelated in strength (FIXME(TM) I don’t understand the last bit of the sentence). The generality of the finding between tasks and modalities hints to a more general perceptual/attentional mechanism (FIXME(TM) generality -> general sounds tautological, rephrase general -> low-level?).

/*
The following few paragraphs are quite long and elaborate. The central question to me is, whether we really need them / how we edit them to be less prominent.
*/
Many experimental paradigms relying on discrete, competing spatial stimulation may be affected by spatial biases. This is particularly true for paradigms investigating initial exploration biases as indicators of attentional bias for particular types of stimuli in specific populations. Although, in almost all cases, researchers take care to balance stimuli across spatial locations, we show here that a strong spatial bias, as is usually observed with left-right configurations, can nevertheless greatly reduce statistical power, thus limiting research validity, interpretability, and reproducibility. This can also be problematic for other measures used in attentional bias research, such as total time spent viewing a given stimulus, since this is dependent on initial exploration. Research on free viewing biases has shown that the initial left bias leads to an overall bias to the left lasting up to 1.5 seconds @ossandon_spatial_2014. For other types of research, where eye movements are not themself of interest or measured, the effect of a spatial bias on measurement and experimental power can still be significant, especially in tasks with brief presentations times, as is typically the case in psychophysical tasks like the AFC task. In this important case, a strong sampling bias can distort sensitivity measurements and even effectively change the nature of the task. The results of our experiment suggest that, when eye movement are allowed, initial scanning biases should always be reported, and that a 2/7 o'clock configuration might be optimal for two-stimuli tasks.
 
Beyond this methodological relevance, our results also highlight a continued lack of understanding, even at the descriptive level, of pure spatial attentional and scanning biases. Biases or asymmetries in the visual system have been abundantly demonstrated at the perceptual, attentional, and scanning level. Perceptually, research has found that human performance across diverse tasks decreases with eccentricity, following an horizontal-vertical anisotropy and a vertical meridian asymmetry @himmelberg_polar_2023: Performance is better for stimuli shown along the horizontal meridian compared to obliques or vertical meridians, and within the vertical meridian, better for stimuli in the lower field. In these types of perceptual experiments, where no competing stimuli are present, no perceptual asymmetry within the horizontal meridian, or across diagonals has been found @barbot_asymmetries_2021. Moreover, the perceptual advantage for lower visual field stimuli is at odds with the first fixation bias for upper stimuli reported here.

For a variety of tasks in which competing stimuli are presented across the hemifield, attentional spatial biases are found for both the horizontal and vertical domain, usually favoring the left hemifield and, depending on the task, upper or lower fields. Experiments showing a left bias include the classic line-bisection task @Jewell2000; studies using chimeric faces, in which two half faces present different features @gilbert_visual_1973 mirror-reversed gradients of brightness or distribution of dots @Mattingley1994 @Luh1994a @Luh1991 @Nicholls1999, spatial and scene memory tasks @Buschman2011 @DellaSala2010 @Dickinson2009, and feature-biased attentional capture @Du2010. In general, horizontal biases have been attributed to lateralization of visual processing modules between the two brain hemispheres. For instance, a bias for the left side of faces follows from the right lateralization of face processing. In this module lateralization hypothesis, a more general role is given to the right lateralization of the attentional network (Corbetta TODO), which would explain the overall bias towards the left observed in multiple tasks (TODO). However, such brain lateralization explanations fail to account for biases between the upper and lower hemifield, as well those across diagonals, as observed here.

Scanning, or overt attentional, biases have been mainly studied in free-viewing paradigms. Most prominently, free-viewing behavior is initially heavily lateralized to the left  @Foulsham2013 @foulsham_stable_2018 @Nuthmann2014 @ossandon_spatial_2014 @spotorno_whats_2025. This horizontal bias does not manifest as a bias for particular oblique directions (CHECK), but could nevertheless account for the biases observed here for stimuli on the horizontal meridian and in the top-left quadrant. However, a general left bias cannot explain our main finding of limited or no biases for configurations combining stimuli in the bottom-left and top-right quadrants. Regarding the vertical dimension, an initial downward vertical free-viewing bias has been identified @foulsham_asymmetries_2010, which would predict the opposite result to what is reported here (bias for top stimulus). However this free-viewing bias depended strongly on image characteristics, thereby disqualifying it as a pure spatial bias that can be revealed for balanced stimuli as in our study. In summary, the pattern of results observed here is incompatible with only a spatial left bias as previously described, and instead resembles the effects of two interacting, potentially independent spatial biases – a left and a top bias.

Overall, perceptual asymmetries appear to be largely dissociated from attentional or scanning biases. For instance, the most reported attentional and scanning bias is for left stimuli, but there is no corresponding perceptual asymmetry within the horizontal meridian. Dissociating or establishing causal relationships between attentional and scanning biases is more difficult, since spatial attention and eye movement are closely linked, both in terms of brain networks and functionally, as in the mandatory pre-saccadic shift of attention @zhao_eye_2012.

There are several limitations of this study. While we clearly replicated the top-left bias @schutz_interindividual_2014, we do not shown direct evidence that this is not a “cohort”-effect, and that the bias is indeed reduced if the top-right/bottom-left arrangement is used in isolation. Some indirect evidence exist, as e.g. @cludius_attentional_2019 and @muller_celina_l_through_2025 tested attentional biases of the same OCD-population, the former with left-right (93% bias), the latter with a 45° top-right/bottom-left arrangement (63%). Unfortunately, they used different setups and stimuli allowing general variance in effect due to other factors to explain this difference. This general variance is the second main limitation. The variance in reported left-right bias strength ranges from 60% to over 90%, where the originating factors remain undescribed. These factors could range from inter-population differences, instructions, perceived boredom of the task, stimulus durations, eccentricities, stimulus sizes or material, to name a few. In what ways our proposed diagonal placement interacts with these potential undescribed effects remains open.

/* things to still add
@durgin_upper-left_2008 found an upper-left bias


== Relation to dot-probe task
The popular dot-probe task is commonly used in clinical settings to investigate attentional biases. They briefly present two stimuli left and right of the fixation cross. They typically do not use eye-tracking, thus to approximate attention deployment, they cannot use first fixation location, but rather present a probe at one of the locations. This probe is supposedly faster processed (and thus reaction is faster), if attention is already employed at that location, allowing for inference to the underlying experimental manipulations.

*/


= Conflicts of Interest

The authors have no conflicts of interest to declare. All co-authors have seen and agree with the contents of the manuscript, and there is no financial interest to report.


= Data and Code Availability

All data and code are publicly available at https://doi.org/10.5281/zenodo.18370171


= Author Contributions

The project was conducted as a semester project of the "Acquisition and Analysis of Eye-Tracking Data" M.Sc. course at the University of Stuttgart.

- #underline[Benedikt Ehinger]: Conceptualization; Methodology; Software; Formal analysis; Resources; Supervision; Writing - Review & Editing; Visualization; Funding acquisition
- #underline[Maximilian Bernhardt]: Conceptualization; Methodology; Software; Formal analysis; Data Curation; Writing - Original Draft; Visualization
- #underline[Simon Enkel]: Conceptualization; Methodology; Software; Formal analysis; Data Curation; Writing - Original Draft; Visualization
- #underline[Claudius Hilser]: Conceptualization; Methodology; Software; Formal analysis; Data Curation; Writing - Original Draft; Visualization
- #underline[Patrick Ebner]: Conceptualization; Methodology; Software; Formal analysis Data Curation; Writing - Original Draft; Visualization
- #underline[Enno Schwenk]: Conceptualization; Methodology; Software; Formal analysis; Data Curation; Writing - Original Draft; Visualization
- #underline[Judith Schepers]: Conceptualization; Analysis; Writing - Review & Editing
- #underline[Titus von der Malsburg]: Conceptualization; Analysis; Writing - Review & Editing; Funding acquisition
- #underline[José Ossandon]: Writing - Review & Editing


= Funding

Funded by Deutsche Forschungsgemeinschaft (DFG, German Research Foundations) in the Emmy Noether Programme - Project-ID 538578433. The authors further thank the International Max Planck Research School for Intelligent Systems (IMPRS-IS) for supporting Judith Schepers.

#set par(justify: true, first-line-indent: 0pt);


// send behinger an email with your zotero to get access to the group
#bibliography(title:"Bibliography", style:"american-psychological-association", "zotero_shared.bib")

