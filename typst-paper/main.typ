
#import "@preview/arkheion:0.1.0": arkheion, arkheion-appendices
#import "@preview/equate:0.2.1": equate
#import "@preview/wrap-it:0.1.0": wrap-content

#set page(paper: "a4", margin: (left: 10mm, right: 10mm, top: 12mm, bottom: 15mm))
#set par.line(numbering: n => text(size: 6pt)[#n])
// #set par.line(numbering: "1")
//-> will work in next release ("soon")
#show: arkheion.with(
  title: "Horizontal, vertical and diagonal biases in first fixation location",
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
    
    (name: "Benedikt Ehinger", 
    email: "benedikt.ehinger@vis.uni-stuttgart.de", 
    affiliation: "University of Stuttgart - SimTech", 
    orcid: "0000-0002-6276-3332"),
  ),
  // Insert your abstract after the colon, wrapped in brackets.
  // Example: `abstract: [This is my abstract...]`
  abstract: [
   Here goes the abstract
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
Human perception is inherently selective, with certain visual stimuli capturing attention more readily than others. When two stimuli are presented simultaneously, the subject must automatically fixate their gaze on one of them. 

However, these fixations are not always a coincidence. Several factors influence human perception, determining which of two images is looked at first and thus creating a bias. One such influencing factor is the spatial arrangement of the two images in question. In a study by Hernandez-Garcia et al. (2020, p. 13), for instance, a bias towards the left side was observed in 65% of cases. Other research findings indicate that 93% of fixations occur initially on the stimuli on the left side, thereby corroborating the left bias (Cludius et al., 2017, pp. 34-38). The results demonstrate a specific asymmetry in human perception, whereby a particular stimulus is perceived first in specific spatial configurations. This bias may have multiple underlying causes, including the observed difference between right-handed and left-handed individuals, with the former exhibiting a less pronounced bias, and the potential influence of hemispheric lateralization in high-level brain regions (Ossandon et al., 2014). 

The aforementioned findings will be employed and integrated into this experiment with the objective of formulating further assertions regarding the spatial configuration of stimuli and the ensuing biases. Furthermore, the experiment is designed to ascertain the influence of a diagonal arrangement, specifically a combination of left-right and top-bottom arrangements, on the left bias. It is possible that this will result in either reinforcement or negation, or alternatively, a counterbalancing effect. 

The aim is to demonstrate whether these findings are consistent and whether new results can be obtained. This also represents the research question, namely, "Does diagonal positioning of stimuli eliminate the left bias in viewing images?".  

Two hypotheses were formulated in advance to ensure that the experiment could be conducted in a targeted manner. The initial hypothesis is that individuals will at the outset direct their gaze towards the left-hand image, even when presented with images positioned diagonally relative to one another. The second hypothesis is that a stimulus placed at the bottom left is perceived as more appealing than a stimulus placed at the top right and is therefore fixated upon first. 

To investigate the research question and the hypotheses, the independent measures are the selection and position of the stimuli, and the dependent measures are the initial fixations.

 
= Experimental Methods
 In this experiment, conducted within a controlled laboratory environment, a total of 23 participants were included in the study. The age demographic of the participants was as follows: 20 - 30 years (n = 22), 50 - 60 years (n = 1), while the gender distribution was as follows: male (n = 20), female (n = 3). All participants were raised in a culture where the Latin script is utilized and reading is conducted from left to right.
 
 The stimuli employed in the experiment comprised grayscale pictures of low contrast and without striking content, in order to avoid any potential negative effects on the results (see Figure 1). All pictures were created with stable diffusion technology through Leonardo.AI (Quelle in .bib hinzufügen, https://app.leonardo.ai) and ChatGPT (Quelle in .bib hinzufügen, https://chatgpt.com) and had the size 1024x1024 pixels. During the execution they were displayed with factor 0.2 on a 28,3 inch Full HD screen (resolution: 1920x1080 pixels, height: 527mm, width: 296,5mm) with participants seated 60 cm in front of the screen, leading to a visual angle of around 3.02 degrees. The eye tracker used during the experiment was the GazePoint GP3 HD in combination with OpenSesame 4.0 (Quelle in .bib hinzufügen) to gather participant data.
 
 In an effort to maintain participant focus and prevent distraction, the subjects were assigned a counting task, with counting the number of circles displayed in the stimuli being the objective. It was ensured that all images featured either a circle or a decagon with reduced transparency to maintain visual engagement. As the number of circles was randomly selected prior to each trial and differed between participants, the answers were collected verbally and not included in the research.

  #figure(
  image("stimuli_display.png", width: 80%),
  caption: [
    Experimental design including examples of stimuli displayed during the experiment.
  ],
)

 The study was conducted using a within-subject design. This approach involved the presentation of the same form of treatment to each participant, resulting in the display of 48 pairs of stimuli during each experiment. 
 
 During the execution phase of the experiment, subjects were presented with pairs of stimuli for a duration of 5000 milliseconds, derived from twelve predefined locations. These locations were chosen on the basis of the hours of a clock (Figure 1). It was ensured that only opposite pairs were displayed (e.g. nine and three). Following the presentation of each pair, participants were required to refocus their attention on the central fixation dot, thus revealing the subsequent stimuli. 
 
 To mitigate any potential interference with the results, a counterbalancing procedure was implemented for each pair of images. More specifically, if image A was initially displayed at position nine and image B at position three, then image B was also displayed at position three and image A at position nine later during the experiment. This resulted in a total of 48 executions, consisting of 24 unique trials with 24 trials of counterbalancing.
 
 = Analysis Methods

 To assess the experiment, a complete analysis pipeline that automatically generates the necessary results for the given participant datasets was built. In the data preprocessing the first fixations are extracted, and the fixations within a certain threshold around the stimuli are analysed to get a list with the total number of first fixations for every stimulus position from one to twelve. Furthermore the time is normalized.
 After preprocessing the data, fixations are being counted by extracting all last fixations together with their corresponding coordinates and compared to which stimuli they belong to ensure they are on a stimulus and therefore can be considered. Afterwards for the visualization of the results, multiple plots have been made in total.  The counts for the twelve different stimuli positions are compared and the most important plot shows the percentage of first fixations by stimuli pairs.

 At last, the column containing all the logs during the experiment is evaluated. For this, logs have been added to the implementation of the experiment in OpenSesame to be able to read out the timing of occurring events afterwards. All not complete log entries were not used for the final evaluation of the experiment. 

= Results
This study aimed to examine the presence of a left view bias in visual attention using eye-tracking data. Participants predominantly made their first fixations on images located to the left of the fixation, which reveals a consistent left view bias. This was consistent across various positioning of the stimuli, supporting the hypothesis of a left view bias with approximately 74% of all first fixations directed towards the left image. Additionally, the vertical positioning of stimuli influenced visual attention. Stimuli positioned at the same height or above the fixation dot received higher attention compared to those below. The stimuli placed at the bottom right received the least attention, suggesting a combined effect of left view bias and vertical positioning on visual attention. 
 
#figure(
  image("condition_distribution_results.png", width: 40%),
  caption: [
    Individual distribution of participants and mean of first fixations.
  ],
)

Furthermore, this shows a clear preference for left-side fixations across various pairs of stimuli, reinforcing the left view bias observed in the radial histogram. The left fixations dominate across most pairs, especially from "seven" to "eleven," whereas right fixations are notably fewer.  These findings confirm the presence of a left view bias in visual attention. Even with diagonal positioning, participants showed a significant tendency to fixate on images to the left of the fixation dot first. The vertical positioning modulated this bias to the upper part of the screen, with images at the same height or above the fixation dot attracting more attention. This supports the Hypotheses that visual attention is influenced by a spatial bias that favours the left side, as well as by vertical positioning, which prioritizes higher-placed stimuli.

= Discussion
This study investigated whether the left-bias could be replicated and additionally if diagonal positioning of stimuli eliminated the left-bias in visual attention. The results strongly supported the first hypothesis (H1), indicating a consistent left-bias, even with diagonal positioning of stimuli. Approximately 74% of all first fixations were directed toward the left image, corroborating previous findings (e.g., Hernandez-Garcia et al., 2020; Cludius et al., 2019).
The second hypothesis (H2) was only partially supported. In pairs where one stimulus was positioned at the bottom-left and the other at the top-right, first fixations were nearly equal, suggesting that diagonal positioning may occasionally neutralize the left-bias. However, this was an exception; overall, the left-bias remained dominant, interacting with vertical positioning to show a preference for top-left stimuli.
The study's limitations include a small, culturally homogeneous sample size and a narrow age range, which may limit generalizability. Challenges included technical issues, such as fixation dot malfunctions, scheduling conflicts, and a Y-axis orientation error, which led to initial misinterpretation of the data.
Future research should involve larger, more diverse samples and varied stimuli to validate the findings and assess cultural influences. 

= Conclusion
This study confirmed a robust left-bias in visual attention, consistent across stimuli, even with diagonal positioning, and highlighted the interplay with vertical positioning, favoring top-left stimuli. While occasional neutralization of the left-bias was observed, its dominance underscores its reliability. The results emphasize the need for future research with diverse populations to broaden applicability, while also highlighting the value of rigorous pretesting and careful coordination in experimental design.

= Conflicts of Interest

The authors have no conflicts of interest to declare. All co-authors have seen and agree with the contents of the manuscript, and there is no financial interest to report.

= Data and Code Availability

All code is publicly available at https://github.com/PatrickEbner/2024-SoSe_EyeTracking.git.

= Author Contributions

The preceding research was conducted as an semester project during the Acquisition and Analysis of Eye-Tracking Data course at the University of Stuttgart, led by Benedikt Ehinger, Titus von der Malsburg and Judith Schepers. All five listed members contributed to the successful completion of the project.

- #underline[Maximilian Bernhardt]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Patrick Ebner]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Simon Enkel]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Claudius Hilser]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Enno Schwenk]: Conceptualization; Methodology; Software; Formal analysis (simulations); Data Curation; Writing - Original Draft; Visualization

- #underline[Titus von der Malsburg]: Analysis; Writing - Review & Editing

- #underline[Judith Schepers]: Analysis; Writing - Review & Editing

- #underline[Benedikt Ehinger]: Conceptualization; Methodology; Software; Resources; Supervision; Writing - Review & Editing; Visualization; Funding acquisition

= Funding

Funded by Deutsche Forschungsgemeinschaft (DFG, German Research Foundations) in the Emmy Noether Programme - Project-ID 538578433. The authors further thank the International Max Planck Research School for Intelligent Systems (IMPRS-IS) for supporting Judith Schepers.

#set par(justify: true, first-line-indent: 0pt);

#bibliography(title:"Bibliography", style:"american-psychological-association", "2024bibliothek.bib")

