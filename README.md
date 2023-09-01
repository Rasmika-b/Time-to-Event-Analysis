# Time-to-Event-Analysis

Introduction:

- It is widely acknowledged that mathematics plays a pivotal role in addressing a diverse array of practical problems. Within this realm, statistics plays a crucial role in prediction and analysis. One such statistical technique is Time-to-Event or Survival Analysis, a method employed for scrutinizing the duration until the occurrence of a precisely defined endpoint of interest.

- In the project analysis, the programming language is R. Rather than employing inefficient algorithms to predict outcomes under minimal constraints, the approach of analysis is in two fundamental tiers. The primary objective is to gain insights into the likelihood of events occurring, be they official or related to gaming datasets, and the secondary is to provide an effective problem-solving approach.

- The modeling of time-to-event data holds significant relevance and finds applications across various domains. This collection of methodologies, known as time-to-event analysis, survival analysis, event history analysis, or duration analysis, enables us to comprehend how time influences outcomes.

- The versatility of Time-to-Event or Survival Analysis lies in its applicability to a wide spectrum of 'events,' encompassing scenarios like mortality, graduation, purchases, or bankruptcy. As a result, its applications span diverse fields, ranging from medicine and sociology to marketing and economics.

- In essence, Survival Analysis serves as a tool for estimating the lifespan of specific populations under study. Often referred to as 'Time-to-Event' Analysis, its main goal is to estimate the duration between the birth and occurrence of a particular event of interest, such as life and death events.

Background Study:

- This project delves into the theoretical fundamentals of survival analysis, encompassing estimators and predictors for survival and hazard functions. Provides an extensive examination of two key components: the Kaplan-Meier Plot and the Cox Proportional Hazard Model.

- Moreover, the project explores various Cox models that are applicable in different scenarios. To facilitate practical application, we accompany our discussions with a detailed example implemented using the statistical programming language R.

- Let's break down the models we cover:
   1. Kaplan-Meier Estimator:
This estimator is employed for estimating the survival function. Its visual representation, commonly referred to as the Kaplan-Meier curve, illustrates the probability of an event (e.g., survival) occurring within specific time intervals.

  2. Cox Models (Multiple Regression Models):
These models have gained significant popularity due to their flexibility. Unlike other methods, Cox models do not necessitate assuming a specific survival distribution for the data. Instead, they rely on the hazard function.

  3. Multiple Cox Model:
The multiple Cox model allows us to assess the simultaneous impact of multiple factors on survival. In essence, it enables the examination of how specified factors influence the rate of a particular event (e.g., infection or death) occurring at a specific point in time. This rate is commonly referred to as the hazard rate.

- The project provides an in-depth exploration of these models and interprets the results, which yield remarkable insights into the subject matter.

Problem Definition and Objectives:

- The first dataset pertains to the health of patients in a hospital. In this context, our goal is to predict the time it takes for certain events to occur in their lives, with 'death' as a notable example. To achieve this, we have to utilize the Survival package, employing tools such as Kaplan-Meier plots and assessing the effectiveness of statistical tests like the log-rank test and the Cox regression model.

- The second dataset relates to the popular game PUBG, where we aim to predict the 'lifetime' of players. Similar to the health dataset, the same set of functions and techniques are applied to conduct survival analysis on this gaming data.

- Ultimately, the objective is to develop an R application equipped with a user-friendly interface that facilitates these analyses, making it accessible for users to explore and understand survival analysis within these diverse datasets.

Methodology: 

- Refer to the methodology.pdf

Code Implemetation: 

- Go through the Code folder

Results: 

- Refer to the results.md file.

Conclusion and Future Works:

- Kaplan-Meier Plot (KM Plot):
The KM plot provides a visual representation of how the probability of survival changes over time using various predictors. Notably, it reveals a decreasing probability of survival from 1 to 0 as the analysis progresses.

- Log Rank Test:
We employ the log-rank test for individual predictor testing. This statistical test helps us assess the significance of differences in survival probabilities among different groups or predictors.

- Cox Model (Cox Regression):
The Cox model allows us to compare the probability of death among different groups or using different predictors after appropriate preprocessing. We gauge its performance by examining parameters like the p-value and R-squared value. A low p-value or a high R-squared value indicates high accuracy. The Cox model is recognized as one of the most robust models for survival analysis.

- Ongoing Research:
While the Cox model is highly effective, ongoing research aims to further refine models for survival analysis, ultimately seeking to predict the precise time of an event, such as death.

Thank you!!













