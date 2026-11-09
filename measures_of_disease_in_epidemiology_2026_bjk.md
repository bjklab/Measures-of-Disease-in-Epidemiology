---
title: "Measures of Disease in Clinical Epidemiology<br/>"
subtitle: "<hr/>"
author: "Brendan J. Kelly, MD, MS"
institute: "Infectious Diseases & Epidemiology<br/><br/>![](penn_logos/Penn-Shield-Logotype-White-over-Blue-RGB-Expanded.svg){width=160px}" 
date: "updated: 09 November 2026"
output:
  xaringan::moon_reader:
    self_contained: true
    css: xaringan-themer-inferno-grids-fade.css
    lib_dir: libs
    chakra: libs/remark-latest.min.js
    seal: false
    nature:
      ratio: 16:9
      highlightStyle: github
      highlightLines: true
      countIncrementalSlides: false
      slideNumberFormat: "%current%"
      
---
exclude: true






---
class: top left hide-count
background-image: url(img/Pneumocystis_jirovecii_AO_AL_wikipedia_crop.png)
background-size: cover

.move-top20[
.title-text[<span style="font-size:0.8em;">Measures of Disease in<br>Clinical Epidemiology</span>]  
]  
  
.callout-url-leftcorner[
.title-nametext[
Brendan J. Kelly, MD, MS  
Infectious Diseases, Epidemiology & Microbiology  
University of Pennsylvania  
17 November 2026  
]
]

.footnote-right[
<span style='color:white'>image: Federica Viazzi "Microscopy image of <i>P. jirovecii</i>" [(Wikipedia)](https://en.wikipedia.org/wiki/Pneumocystis_jirovecii#/media/File:Pneumocystis_jirovecii_AO_AL.jpg)</span>
]


---

## Disclosures  

.pad-left[

- No conflicts of interest.  

]



---

## Learning Objectives

.pad-left[
- Measures of disease occurrence: use population data to describe health and disease.

- Key concepts -- explain the meaning of:

    - data types and terminology
    - prevalence
    - incidence (<ins>warning</ins>: multiple types)
    - relative risk (RR)
    - odds ratio (OR)

- Implementation: prevalence, incidence, RR, and OR from study data (2x2 tables!).

]



---

## Why Do I Care? ... 

.pad-left[
- Why use these tools (prevalence, incidence, RR, OR)?

     - inform differential diagnoses & counsel patients (<ins>your job</ins>)  
     
     - design public health interventions & direct new diagnostics/therapies (society!)   
     
     - understand distributions and determinants of diseases (science!)  

]



---

## ... What Do I Need to Know for the Test? 

.pad-left[
.grey-text[
- Why use these tools (prevalence, incidence, RR, OR)?

     - inform differential diagnoses & counsel patients (<ins>your job</ins>)  
     
     - design public health interventions & direct new diagnostics/therapies (society!)   
     
     - understand distributions and determinants of diseases (science!)  
     
]
- How to use these tools:

     - precise definitions 
     (e.g., RR vs OR, cumulative incidence vs incidence density)  
     
     - a bit of arithmetic  

]



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-a animated flipInY"><div>Data Types<br>&<br>Distributions</div></div>
</div>


---
layout: false
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-a"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-b animated flipInX"><div>Case from 1981</div></div>
</div>


---
layout: false
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-a"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-b"><div>Case from 1981</div></div>
<div class="extension-tile gridset-c animated bounceInDown"><div>Prevalence</div></div>
</div>



---
layout: false
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-a"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-b"><div>Case from 1981</div></div>
<div class="extension-tile gridset-c"><div>Prevalence</div></div>
<div class="extension-tile gridset-d animated fadeInRight"><div>Incidence</div></div>
</div>



---
layout: false
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-a"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-b"><div>Case from 1981</div></div>
<div class="extension-tile gridset-c"><div>Prevalence</div></div>
<div class="extension-tile gridset-d"><div>Incidence</div></div>
<div class="extension-tile gridset-e animated bounceInUp"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
</div>



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-a"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-b"><div>Case from 1981</div></div>
<div class="extension-tile gridset-c"><div>Prevalence</div></div>
<div class="extension-tile gridset-d"><div>Incidence</div></div>
<div class="extension-tile gridset-e"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-f animated slideInLeft"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-a animated flipInY"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-grey"><div>Case from 1981</div></div>
<div class="extension-tile gridset-grey"><div>Prevalence</div></div>
<div class="extension-tile gridset-grey"><div>Incidence</div></div>
<div class="extension-tile gridset-grey"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-grey"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---

## Dichotomania 

.pad-left[
- As we discuss prevalence, incidence, RR, and OR, we focus on <ins>dichotomous</ins> exposures and outcomes.

- With dichotomous data:

    - information about uncertainty is lost  
    
    - misclassification is a risk  



.footnote[[Altman & Royston _BMJ_ 2006](https://www.bmj.com/content/332/7549/1080.1.full)]  

]  
  
  
---

## Data Types 

.pad-left[
- __Dichotomous__: binary 0 / 1, true / false

    - the focus of most methods in this course (e.g., pneumonia, MI)
    
- __Continuous__: real values, infinite scale

    - discussed in diagnostics lecture (e.g., age, height) 
     
- __Nominal__: discrete data  

    - categories without intrinsic order (e.g., state)  
    
- __Ordinal__: discrete data  

    - categories with intrinsic order (e.g., age category)
    
]


---

## How to Characterize Continuous Data 

.pad-left[
- Pair a measure of central tendency with a measure of dispersion:

    - mean and SD (both affected by outliers)  
    
    - median and IQR  

- In doing so, account for <ins>uncertainty</ins> in measures.  

]


---

## Characterize Continuous Data: Central Tendency 

.pad-left[

- **Mean**: arithmetic average (sum / number of observations)

- **Median**: middle value, when values ordered / ranked

- **Mode**: most frequently occurring value

]


---

## Characterize Continuous Data: Variation/Spread 

.pad-left[

- **Standard deviation (SD or $\sigma$)**: depends on distance from the mean: 
    $$\sigma=\sqrt{\frac{1}{N}*\sum_{i=1}^N(x_i - \mu)^2}$$

- **Interquartile range (IQR)** depends on ranking the values:

    - the first quartile is the "middle" value of the first half of the ordered set  
    
    - the third quartile is the "middle" value of the second half of the ordered set  
    
    - IQR is the range of values between first and third quartiles  
  
]

<p style="text-align: center;"><mark> (you do <strong>NOT</strong> need to memorize these formulas) </mark></p>


---

## Describing Continuous Data

.pad-left[

- "Normally distributed": data well characterized by **mean** and **standard deviation (SD)**.

- “Non-parametric” data have a mean and standard deviation, but these parameters do NOT characterize the data well:  

    - **skewed** data: distribution not symmetric around a central value  
    
    - **uniform** data: distributed with equal probability of each value  

- For "non-parametric" data, we prefer to use **median** and **interquartile range (IQR)** to describe the distribution of a continuous variable because these are less affected by extreme values. 

- You can always calculate mean and SD from continuous data. But these parameters might not represent the data well.  
  
]



---

## Dichotomizing Continuous Data 

.pad-left[

- Using a threshold to transform continuous data into dichotomous data means <mark>losing information about uncertainty</mark>.  

- This is on top of the fundamental uncertainty we face with any epidemiologic measure: does the measured population represent the population of interest?  

- See the diagnosis lecture: for example, threshold of oxygen saturation (or $\beta$-D glucan) to diagnose _Pneumocystis_ pneumonia (PCP) means trade-off between sensitivity and specificity.


]

  
  
---

## Dichotomania 

.pad-left[
- As we discuss prevalence, incidence, RR, and OR, we focus on <ins>dichotomous</ins> exposures and outcomes.

- Remember -- with dichotomous data:

    - information about uncertainty is lost  
    
    - misclassification is a risk  

- But we're doing it anyway &#x1F600; ... why?

- Medicine focuses on dichotomous diagnostic and treatment decisions.  
  
.footnote[[Altman & Royston _BMJ_ 2006](https://www.bmj.com/content/332/7549/1080.1.full)]  

]  
  
  
---

## What About Regression?    

.pad-left[
- As we discuss prevalence, incidence, RR, and OR, we focus on <ins>dichotomous</ins> exposures and outcomes.

- Regression methods account for different data types:  

    - linear models: continuous outcomes  

    - generalized linear models: dichotomous, nominal, ordinal, etc outcomes

    - can incorporate different exposure data types & multiple exposures  

- Regression methods are <u>beyond the scope of this course</u>.  

.footnote[[Altman & Royston _BMJ_ 2006](https://www.bmj.com/content/332/7549/1080.1.full)]  

]  
  
  

---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-grey"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-b animated flipInX"><div>Case from 1981</div></div>
<div class="extension-tile gridset-grey"><div>Prevalence</div></div>
<div class="extension-tile gridset-grey"><div>Incidence</div></div>
<div class="extension-tile gridset-grey"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-grey"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---

## HIV Pandemic: MMWR June 5, 1981 

.center[
<img src="figs/hiv_timeline_mmwr_1981.png" alt="MMWR 1981" style="box-shadow: 3px 3px 3px gray;">
]


---
exclude: true
background-image: url(figs/cover_mmwr_1981.jpg)
background-size: 750px
background-position: 50% 50%

## HIV Pandemic: MMWR June 5, 1981



---

## HIV Pandemic: MMWR June 5, 1981 

.bg-washed-gray.b--dark-gray.ba.bw2.br3.shadow-5.ph4.mt5.f4[
All the above observations suggest the possibility of a <mark>cellular-immune dysfunction related to a common exposure that predisposes individuals to opportunistic infections such as pneumocystosis and candidiasis</mark>. Although the role of CMV infection in the pathogenesis of pneumocystosis remains unknown, the possibility of _P. carinii_ infection must be carefully considered in a differential diagnosis for previously healthy homosexual males with dyspnea and pneumonia.
.tr[
— Gottlieb MS et al <ins>MMWR</ins> 1981
]]


---

## HIV Pandemic: Stigma & Discrimination  

.pull-left[

- Socially vulnerable groups often at higher infection risk:  

    - HIV, COVID-19  

    - how we name infectious diseases has exacerbated stigma  

    - _bad epidemiology exacerbates stigma_  
    
- Prejudice is used to gain political power:  
  
    - homophobia in the 1980s  
    
    - anti-Asian racism in the 2020s  

]

.pull-right[
  <img src="img/radiolab_ashes_on_the_lawn_tall.png" alt="Radiolab" style="box-shadow: 3px 3px 3px gray;">
]

.footnote[[Radiolab "The Ashes on the Lawn"](https://radiolab.org/podcast/ashes-lawn)]



---

## COVID-19 Pandemic: Stigma & Discrimination  

.pull-left[

- As we proceed in course, think about causal versus proxy variables. For example:  

    - Race is not a proxy for biology.  

    - Race exerts large effects on health: structural racism & direct / interpersonal racism  

- High-risk work, access to care, and social networks are some ways social determinants and racism impact health.  
  
]

.pull-right[
  <img src="img/covid_disparities_discrimination.png" alt="Radiolab" style="box-shadow: 3px 3px 3px gray;">
]

.footnote[Bilal U et al _Lancet Reg Health Am_ 2022;<br> Chastain DB et al _NEJM_ 2020; Lee JH _NEJM_ 2021]



---

## Case from 1981... _Pneumocystis_ pneumonia? 

.pad-left[
- 36-year-old man presents with a 4-month history of fever, dyspnea, and cough.

- What is his diagnosis? Does he have _Pneumocystis_ pneumonia (PCP)?

- As you collect data (history, vital signs, physical exam, laboratory test values, radiology results), you are making inferences about the diagnosis based on __associations__ between your findings and disease states.  
  
]


---

## Case from 1981... _Pneumocystis_ pneumonia? 

.pad-left[
- Differential diagnosis must be grounded in understanding:

    - distributions of disease: we'll learn about **prevalence** & **incidence**  
    
    - determinants of disease: we'll learn **2x2 tables** to relate exposures and outcomes  

- PCP is a fungal pneumonia caused by _Pneumocystis jirovecii_ (formerly _Pneumocystis carinii_), which causes dyspnea, hypoxemia, and nonproductive cough, and eventually cystic lung changes.  

- In 1981, _Pneumocystis_ was known to be a low <ins>prevalence</ins> disease.

- New data would show an increasing <ins>incidence</ins>.  

]


---

## Case from 1981... _Pneumocystis_ pneumonia? 

.pad-left[
- Does our patient have _Pneumocystis_ pneumonia (PCP)?

- How is the distribution of _Pneumocystis_ pneumonia changing?

- What are the determinants of _Pneumocystis_ pneumonia?
  
<br/>
  
.center[<mark>Note: questions depend on <strong>dichotomous</strong> definition of disease (yes/no <em>Pneumocystis</em>)</mark>]
  
]



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-grey"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-grey"><div>Case from 1981</div></div>
<div class="extension-tile gridset-c animated flipInY"><div>Measuring<br>Disease<br>Occurrence</div></div>
<div class="extension-tile gridset-grey"><div>Incidence</div></div>
<div class="extension-tile gridset-grey"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-grey"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-grey"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-grey"><div>Case from 1981</div></div>
<div class="extension-tile gridset-c animated flipInY"><div>Prevalence</div></div>
<div class="extension-tile gridset-grey"><div>Incidence</div></div>
<div class="extension-tile gridset-grey"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-grey"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---

## Prevalence 

.pad-left[
- How common is _Pneumocystis_ pneumonia (PCP)?

- Prevalence: 

    - number with the disease / number in specified population  
    
    - **point prevalence**: at a specific point in time  
    
    - **period prevalence**: during a given period (e.g., 12-month prevalence)  
    
    - a proportion (unitless, ranges from 0-1)  
    
    - numerator includes all people who have the disease, both new and ongoing cases  
    
    - represents a <ins>cross-sectional</ins> “snapshot” of the population

]


 
---

## Prevalence of _Pneumocystis_ pneumonia 

.pad-left[
- In 1967, CDC became the sole supplier of pentamidine in the United States and began collecting data on cases of PCP:

    - period prevalence published in 1974<sup>*</sup>: 579 cases (194 confirmed) over 3 years
    - what’s the denominator?
    - what’s the prevalence?

- __Point prevalence__ of _Pneumocystis_ would be vanishingly small given limited duration of disease.

- From 1967-1974, even the __period prevalence__ was very small.

.footnote[[*] Walzer PD et al _Annals Int Med_ 1974]

]



---

## Point Prevalence versus Period Prevalence 

.pad-left[
- To understand the difference between point and period prevalence, let's imagine a cohort of people living with HIV/AIDS at risk for _Pneumocystis_:  

    - 50 high-risk subjects enrolled at the start of a two-year observation period  
    
    - cases of PCP each receive 3 weeks of antibiotic treatment (red on plot)  
    
    - incomplete follow-up (grey on plot)
    
    - some subjects started on _Pneumocystis_ prophylaxis (blue on plot)  

]



---

## Cohort at Risk for _Pneumocystis_ 


```
## Error in `library()`:
## ! there is no package called 'NHANES'
```

<div class="figure" style="text-align: center">
<img src="figure/print_pcp_study-1.png" alt="plot of chunk print_pcp_study" width="864" />
<p class="caption">plot of chunk print_pcp_study</p>
</div>



---

## Cohort at Risk for _Pneumocystis_ 

<div class="figure" style="text-align: center">
<img src="figure/print_pcp_study_label_case-1.png" alt="plot of chunk print_pcp_study_label_case" width="864" />
<p class="caption">plot of chunk print_pcp_study_label_case</p>
</div>



---

## Cohort at Risk for _Pneumocystis_ 

<div class="figure" style="text-align: center">
<img src="figure/print_pcp_study_label_followup-1.png" alt="plot of chunk print_pcp_study_label_followup" width="864" />
<p class="caption">plot of chunk print_pcp_study_label_followup</p>
</div>



---

## Cohort at Risk for _Pneumocystis_ 

<div class="figure" style="text-align: center">
<img src="figure/print_pcp_study_label_prophylaxis-1.png" alt="plot of chunk print_pcp_study_label_prophylaxis" width="864" />
<p class="caption">plot of chunk print_pcp_study_label_prophylaxis</p>
</div>



---

## Cohort at Risk: Point Prevalence 

<div class="figure" style="text-align: center">
<img src="figure/pcp_point_prev-1.png" alt="plot of chunk pcp_point_prev" width="864" />
<p class="caption">plot of chunk pcp_point_prev</p>
</div>


---

## Cohort at Risk: Period Prevalence 

<div class="figure" style="text-align: center">
<img src="figure/pcp_period_prev-1.png" alt="plot of chunk pcp_period_prev" width="864" />
<p class="caption">plot of chunk pcp_period_prev</p>
</div>



---

## Prevalence 

.pad-left[
- Prevalence is **NOT** the same as risk.

- Prevalence numerator includes all people who have the disease, both new and ongoing cases, so represents a cross-sectional “snapshot” of the population. 

- Prevalence does **NOT** estimate the risk of developing the disease because <mark>prevalence does **NOT** fully account for time </mark> (are the measured cases old cases or new cases?).

- Prevalence can provide a useful snapshot of the burden of disease.  

]




---

## Reflection Question 

.pad-left[
How can an infection have high prevalence if it occurs infrequently?

- (A) the infection is rapidly fatal

- (B) the infection rapidly resolves

- (C) a few children get the infection every year, but the infection persists for the rest of their lives

- (D) the infection results in lifelong protective immunity

]



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-grey"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-grey"><div>Case from 1981</div></div>
<div class="extension-tile gridset-grey"><div>Prevalence</div></div>
<div class="extension-tile gridset-d animated flipInX"><div>Measuring<br>Disease<br>Occurrence</div></div>
<div class="extension-tile gridset-grey"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-grey"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-grey"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-grey"><div>Case from 1981</div></div>
<div class="extension-tile gridset-grey"><div>Prevalence</div></div>
<div class="extension-tile gridset-d animated flipInX"><div>Incidence</div></div>
<div class="extension-tile gridset-grey"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-grey"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---

## Case from 1981... _Pneumocystis_ pneumonia? 

.pull-left[

<img src="figs/nejm_combined.png" alt="Masur & Gottlieb" style="box-shadow: 3px 3px 3px gray;">

]

.pull-right[

<br/>

- new _Pneumocystis_ cases (NYC<sup>1</sup>): 13 cases over 21 months  

- new _Pneumocystis_ cases (LA<sup>2</sup>): 5 cases over 7 months  

- concurrent opportunistic infections:  

    - CMV
    - _Candida_
    - Kaposi's sarcoma  

]

.footnote[[1,2] Masur H et al _NEJM_ 1981; Gottlieb MS et al _NEJM_ 1981]



---

## Incidence 

.pad-left[
- _Pneumocystis_ pneumonia (PCP) is occurring more frequently...

- Incidence: occurrence of new cases over a given period of time.

- **cumulative incidence**:  

$$cumulative\ incidence = \frac{{new\ cases}}{persons\ at\ risk\\at\ start\ time\ interval}$$  

- **incidence density**: (more precise)  

$$incidence\ density = \frac{new\ cases}{person\ time\\at\ risk}$$  
    
]



---

## Cumulative Incidence 

.pad-left[
- Cumulative incidence:

    - must specify population consisting of at-risk individuals  
    
    - must specify a time period of observation  
    
    - <ins>numerator</ins> = all new cases during a specified time period  
    
    - <ins>denominator</ins> = all individuals at risk in the specified population at the start of the specified time period (does NOT account for deaths due to other causes)  
    
    - ranges from 0 to 1 (a.k.a., “incidence proportion”)  
    
    - like prevalence, is a proportion and therefore has no units (but only makes sense if you specify the time period of observation, e.g., % per year)  
    
]


    

---

## Incidence Density 

.pad-left[
- Incidence density:

    - in a specified population consisting of at risk individuals over a specified period of observation, more precisely quantifies the person-time at risk  
    
    - <ins>numerator</ins> = all new cases during a specified time period  
    
    - <ins>denominator</ins> = the sum, over all individuals in the population, of time at risk until the event of interest, death, loss to follow-up, the end of the study, or when they are no longer at risk for whatever reason  
    
    - not a proportion; range depends on the units of person-time (0 to infinity)  
    
    - <mark>accounts for death from other causes!</mark>

]



---

## Incidence: Which Denominator? 

.pad-left[
- To understand the difference between cumulative incidence and incidence density, let's return to our imagined study of people living with HIV/AIDS at risk for _Pneumocystis_:  

    - 50 high-risk subjects enrolled at the start of a two-year observation period  
    
    - cases of PCP each receive 3 weeks of antibiotic treatment (red on plot)  
    
    - incomplete follow-up (grey on plot)
    
    - some subjects started on _Pneumocystis_ prophylaxis (blue on plot)  

]



---

## Cohort at Risk for _Pneumocystis_ 

<div class="figure" style="text-align: center">
<img src="figure/reprint_pcp_study-1.png" alt="plot of chunk reprint_pcp_study" width="864" />
<p class="caption">plot of chunk reprint_pcp_study</p>
</div>



---

## Cohort at Risk for _Pneumocystis_ 

<div class="figure" style="text-align: center">
<img src="figure/print_pcp_study_label_case2-1.png" alt="plot of chunk print_pcp_study_label_case2" width="864" />
<p class="caption">plot of chunk print_pcp_study_label_case2</p>
</div>



---

## Cohort at Risk for _Pneumocystis_ 

<div class="figure" style="text-align: center">
<img src="figure/print_pcp_study_label_followup2-1.png" alt="plot of chunk print_pcp_study_label_followup2" width="864" />
<p class="caption">plot of chunk print_pcp_study_label_followup2</p>
</div>



---

## Cohort at Risk for _Pneumocystis_ 

<div class="figure" style="text-align: center">
<img src="figure/print_pcp_study_label_prophylaxis2-1.png" alt="plot of chunk print_pcp_study_label_prophylaxis2" width="864" />
<p class="caption">plot of chunk print_pcp_study_label_prophylaxis2</p>
</div>



---

## Cohort at Risk: Cumulative Incidence (at risk at start) 

<div class="figure" style="text-align: center">
<img src="figure/pcp_incid_proportion-1.png" alt="plot of chunk pcp_incid_proportion" width="864" />
<p class="caption">plot of chunk pcp_incid_proportion</p>
</div>




---

## Cohort at Risk: Incidence Density (person-time at risk) 

<div class="figure" style="text-align: center">
<img src="figure/pcp_incid_density-1.png" alt="plot of chunk pcp_incid_density" width="864" />
<p class="caption">plot of chunk pcp_incid_density</p>
</div>



---

## Incidence: Which Denominator? 

.pad-left[
- Cumulative incidence of _Pneumocystis_ versus incidence density:

    - if the end of the grey line is death / loss to follow-up, how does incidence density compare to annual cumulative incidence?

    - if you don’t count time on prophylaxis or treatment antibiotics as “time at risk”, how does the incidence density compare to the annual cumulative incidence?  


]



---

## Notes on Population at Risk 

.pad-left[
- In a population, individuals are at risk of disease if they: 

    - (1) do not have the disease at baseline  
    
    - (2) are capable of developing the disease (e.g., have the organ of interest; have not been successfully immunized against the disease; haven’t developed lifelong immunity)  
    

- The difference between cumulative incidence and incidence density is that the latter attempts a more precise quantification of population at risk -- it’s harder to evaluate, but more informative if you can.

]



---

## Notes on Person-Time 

.pad-left[
- To improve precision of risk estimate (<ins>incidence density</ins>), we measure:  

    - population at risk of outcome  
    
    - actual time at risk (during which outcome could occur)

- **Person-time**:  

    - denominator for incidence density  
    
    - the product of population at risk and time at risk (e.g., patient-months)

]



---

## Beware the Phrase “Incidence Rate”! 

.pad-left[
- “Incidence rate” is used to mean two different things:

    - number new cases / number persons at risk @ start (short) time interval (e.g., “annual incidence rate” to mean cumulative incidence over one year)  
    
    - number new cases / person-time at risk (i.e., incidence density, the precise rate)

]



---

## Reflection Question 

.pad-left[
Your patient with HIV is considering starting prophylactic antibiotics for PCP. You have PCP prevalence, cumulative incidence, and incidence density data available. Which data provide the most precise information on the patient’s risk of PCP off of prophylaxis?

- (A) prevalence

- (B) cumulative incidence

- (C) incidence density

]



---
background-image: url(figs/bathtub_labelled.svg)
background-size: 520px
background-position: 50% 70%

## Can You Tell Prevalence from Incidence?


---

## Can You Tell Prevalence from Incidence?

.pad-left[
- HIV in Rakai, Uganda 1994-2003*:

    - intensive “ABC” intervention (Abstinence, Be faithful, Condoms)
    
    - prevalence declined...  
    
    - incidence remained constant at 1.5% per year!
    
    - what happened?

.footnote[[*] Wawer M et al _CROI_ 2005; Roehr B _BMJ_ 2005]

]



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-grey"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-grey"><div>Case from 1981</div></div>
<div class="extension-tile gridset-grey"><div>Prevalence</div></div>
<div class="extension-tile gridset-grey"><div>Incidence</div></div>
<div class="extension-tile gridset-e animated flipInY"><div>What<br>determines<br>risk?</div></div>
<div class="extension-tile gridset-grey"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-grey"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-grey"><div>Case from 1981</div></div>
<div class="extension-tile gridset-grey"><div>Prevalence</div></div>
<div class="extension-tile gridset-grey"><div>Incidence</div></div>
<div class="extension-tile gridset-e animated flipInY"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-grey"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---

## Basics of Study Types 

.pad-left[
- We want to understand the <mark>relationship between risk factors (exposures) and disease (outcomes)</mark>. Move beyond risk in whole population -- what's risk conditional on particular risk factors?  
  
- To calculate incidence need to know how many are in a population:

    - randomized trials: pick the population, randomize, control the treatment, and measure the outcome  
    
    - cohort studies: pick the population, divide into preselected exposure (treatment or risk factor) groups, and measure the outcome  

- But do NOT know this in case control studies: pick the cases and control groups, then measure rates of exposure (do NOT know size of population at risk).  

]



---


```
## Error in `library()`:
## ! there is no package called 'DiagrammeR'
```

```
## Error in `set_node_position()`:
## ! could not find function "set_node_position"
```

```
## Error in `render_graph()`:
## ! could not find function "render_graph"
```



---

## 2x2 Table 

.pull-left[
- Dichotomous exposures and outcomes.

- Examine relationships between exposures and outcomes.  
  
- <ins>Goal</ins>: **inference about larger world.**  

]

.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]



---

## 2x2 Table 

.pull-left[
- Dichotomous exposures and outcomes.

- Examine relationships between exposures and outcomes.  
  
- <ins>Goal</ins>: inference about larger world.  

]

.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]



---

## 2x2 Table: PICO 

.pull-left[
- Relationship to your evidence-based medicine (EBM) course:

    - PICO: population, intervention, control, outcome  

    - intervention/control are exposure groups; outcome is dichotomous for 2x2 table data  
  
- <ins>Goal</ins>: inference about larger world.  

]

.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]

  
  
  


---

## 2x2 Table 

.pull-left[
- Dichotomous exposures and outcomes.

- Examine relationships between exposures and outcomes.  
  
- <ins>Goal</ins>: inference about larger world.

- <mark>Is study RCT/cohort or case-control?</mark>  
  
- Can always calculate a <ins>relative risk (RR)</ins> from 2x2 table but only appropriate for <ins>RCT/cohort</ins>  
  
- Can always calculate an <ins>odds ratio (OR)</ins> from 2x2 table but only appropriate for <ins>case-control study</ins><br/>(can do better with RR if RCT/cohort)  

]


.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-grey"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-grey"><div>Case from 1981</div></div>
<div class="extension-tile gridset-grey"><div>Prevalence</div></div>
<div class="extension-tile gridset-grey"><div>Incidence</div></div>
<div class="extension-tile gridset-grey"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-f animated flipInX"><div>Aggregate vs<br>Conditional Risk</div></div>
</div>



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-grey"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-grey"><div>Case from 1981</div></div>
<div class="extension-tile gridset-grey"><div>Prevalence</div></div>
<div class="extension-tile gridset-grey"><div>Incidence</div></div>
<div class="extension-tile gridset-grey"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-f animated flipInX"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---

## 2x2 Table: Calculate Relative Risk for Cohort/Trial 

.pull-left[
- Relative Risk (RR): risk (incidence) exposed / risk (incidence) unexposed:    

$$RR = \frac{\frac{A}{(A + B)}}{\frac{C}{(C + D)}}$$  

- Risk difference (RD): risk (incidence) exposed - risk (incidence) unexposed:  

$$RD = \frac{A}{(A + B)} - \frac{C}{(C + D)}$$  

]

.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]


---

## PCP ~ AIDS: Relative Risk (RR) 

.pull-left[

- Imagine a cohort study examining incidence (risk) for _Pneumocystis_ among patients with or without an Acquired Immunodeficiency Syndrome (AIDS):

- Relative Risk (RR):

$$RR = \frac{\frac{10}{(10 + 10)}}{\frac{5}{(5 + 15)}} = \frac{0.5}{0.25} = 2$$  

- Risk difference (RD):

$$RD = \frac{10}{(10 + 10)} - \frac{5}{(5 + 15)} = 0.25$$  

]

.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]





---

## 2x2 Table: Calculate NNT for Cohort/Trial 

.pull-left[

- Risk difference (RD): risk (incidence) exposed - risk (incidence) unexposed:  

$$RD = \frac{A}{(A + B)} - \frac{C}{(C + D)}$$  

- Number needed to treat (NNT): given RD between exposures, how many exposure switches needed to change one outcome:  

$$NNT = \frac{1}{RD} = \frac{1}{\frac{A}{(A + B)} - \frac{C}{(C + D)}}$$  

]

.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]

---

## PCP ~ AIDS: Number Needed to Treat 

.pull-left[

- Cohort study examining incidence (risk) for _Pneumocystis_ among patients with or without AIDS:

- Risk difference (RD):

$$RD = \frac{10}{(10 + 10)} - \frac{5}{(5 + 15)} = 0.25$$  

- Number needed to treat (NNT): given RD between exposures, how many exposure switches needed to change one outcome:  

$$NNT = \frac{1}{RD} = \frac{1}{\frac{10}{(10 + 10)} - \frac{5}{(5 + 15)}} = \frac{1}{0.25} = 4$$  

]

.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]



---

## AR vs RD vs NNT 

.pad-left[
- **absolute risk (AR)**: risk of developing disease over a period of time (<mark>incidence!</mark>)

    - if 1 in 10 chance of developing skin cancer in your lifetime, AR = 10%

- **risk difference (RD)**: difference in risk between treatment/exposure and control

    - 3 in 10 cured with treatment vs 2 in 10 with control, RD = 3/10 – 2/10 = 10%

- **number needed to treat (NNT)**: number treated for one person to benefit 

    - NNT = 1/RD
    - from RD numbers above, NNT = 1/RD = 1/0.1 = 10 (treat 10 people to cure 1 more)

]



---

## 2x2 Table: Calculate Odds Ratio for Case-Control Study 

.pull-left[

- Denominators are deceptive in case-control study because determined by investigator.

- Impossible to measure true risk/incidence. Instead, measure exposure odds in cases & controls.

- Odds Ratio (OR): odds exposure in cases / odds exposure in controls:    

$$OR = \frac{\frac{A}{C}}{\frac{B}{D}} = \frac{A*D}{B*C}$$  
]


.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]


---

## PCP Cases vs Controls: Odds Ratio (OR) 

.pull-left[

- Imagine a different study: 100 _Pneumocystis_ cases and 100 controls; measure whether 'AIDS' (exposure) differs between groups chosen by investigator.

- Odds Ratio (OR): odds exposure in cases / odds exposure in controls:    

$$OR = \frac{\frac{90}{10}}{\frac{50}{50}} = \frac{90*50}{50*10} = 9$$  
]


.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]

---

## Utility of Odds Ratio (OR) & Case-Control Study Design 

.pull-left[

- Because ratio of cases and controls determined by investigator, not valid to calculate incidence of outcome (AR or RR, RD, NNT), but if outcome incidence is low, then A + B ~ B & C + D ~ D:

$$RR = \frac{\frac{A}{(A + B)}}{\frac{C}{(C + D)}} \sim \frac{\frac{A}{B}}{\frac{C}{D}} = \frac{A*D}{B*C} = \frac{\frac{A}{C}}{\frac{B}{D}} = OR$$  

- OR approximates RR if outcome occurs infrequently (<15%). <mark>Though OR is fundamentally different from RR, we use it as an approximation of RR</mark>. If outcome is more common, OR & RR differ increasingly.

]


.pull-right[

```
## Error in `loadNamespace()`:
## ! there is no package called 'ggsci'
```
]



---
class: full-screen hide-count

<div class="grid-3-2">
<div class="extension-tile gridset-a animated flipInY"><div>Data Types<br>&<br>Distributions</div></div>
<div class="extension-tile gridset-b animated flipInX"><div>Case from 1981</div></div>
<div class="extension-tile gridset-c animated flipInY"><div>Prevalence</div></div>
<div class="extension-tile gridset-d animated flipInX"><div>Incidence</div></div>
<div class="extension-tile gridset-e animated flipInY"><div>Inference from<br>Exposures &<br>Outcomes</div></div>
<div class="extension-tile gridset-f animated flipInX"><div>Relative Risk<br>&<br>Odds Ratios</div></div>
</div>



---

## Measures of Disease in Clinical Epidemiology 

.pad-left[
- Distribution of data determines how we describe them: mean + SD vs median + IQR.

- Prevalence is determined by incidence and survival time.

- Incidence density best accounts for time at risk for disease.

- Relative risk (RR) is the ratio of incidence in exposed over incidence in unexposed. Odds ratio (OR) is the ratio of exposure odds in cases over exposure odds in controls.

- OR approximates RR when outcome is rare.

- NNT can be a clinically useful number.

]



---
background-image: url(figs/Wickramasekaran_Mycoses_2017.jpg)
background-size: 900px
background-position: 50% 50%


.footnote[Wickramasekaran et al _Mycoses_ 2017]


---
class: center, middle, hide-count
background-image: url(img/Pneumocystis_jirovecii_AO_AL_wikipedia_crop.png)
background-size: cover

.title-subtext[Questions?]

.footnote-right[
<span style='color:white'>image: Federica Viazzi "Microscopy image of <i>P. jirovecii</i>" [(Wikipedia)](https://en.wikipedia.org/wiki/Pneumocystis_jirovecii#/media/File:Pneumocystis_jirovecii_AO_AL.jpg)</span>
]



