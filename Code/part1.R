# Importing the dataset and the respective libraries
library(survival)
library(ggplot2)
getwd()

df=read.csv("Time_to_event.csv")
colnames(df)

gender <- factor(df[,"gender"])
fu_time <- df[,"fu_time"] 
death <- df[,"death"]
age <- df[,"age"]
copd <- factor(df[,"copd"])
ethnicgroup <- factor(df[,"ethnicgroup"])
quintile <- factor(df[,"quintile"])
ihd <- factor(df[,'ihd'])
valvular <- factor(df[,'valvular_disease'])
pvd <- factor(df[,'pvd'])
stroke <- factor(df[,'stroke'])
pneumonia <- factor(df[,'pneumonia'])
renal <- factor(df[,'renal_disease'])
ca <- factor(df[,'cancer'])
mets <- factor(df[,'metastatic_cancer'])
mental_health <- factor(df[,'mental_health'])
ht <- factor(df[,"hypertension"])
codf_imp <- factor(df[,"senile"])
prior_dnas <- df[,"prior_dnas"]

#Generate the survival curve and plot it.
km_fit <- survfit(Surv(fu_time, death) ~ 1)
plot(km_fit,xlab="Days",ylab="Probability of survival")
summary(km_fit, times = c(1:7,30,60,90*(1:10)))

#Now let’s extend this by splitting the curve by gender:
km_gender_fit <- survfit(Surv(fu_time, death) ~ gender)
plot(km_gender_fit)

# Perform log rank test to see whether survival varies by gender
survdiff(Surv(fu_time, death) ~ gender, rho = 0)

#The p value is high which says gender is not much important in predicting death.
#Testing whether those over the age of 65 have different survival to those under it
# 1. Dichotomise age into categorical (binary in this case) variable
age_65plus <- ifelse(g[,'age']>=65, 1, 0)
# 2. Perform log rank test
survdiff(Surv(fu_time, death) ~ age_65plus, rho = 0)

#The p value is so low which says age is important in predicting death.
# Plot survival curve by age above or below 65
km_old_fit <- survfit(Surv(fu_time, death) ~ age_65plus)
# Plot
plot(km_old_fit)

#Cox Model
# Run Cox regression model with age as predictor (continuous variable) 
# Generate model
cox <- coxph(Surv(fu_time, death) ~ age, data = g)
# Summarise model
summary(cox)

# Run Cox regression model with ethnic group as predictor (categorical variable)
# Including missing values as another category
# 1. Summarise variable
table(ethnicgroup, exclude = NULL)
# 2. Generate and summarise model
cox <- coxph(Surv(fu_time, death) ~ ethnicgroup)

# Add another category (8)
levels(ethnicgroup) <- c(levels(ethnicgroup),"8") 
# Redefine NA as another group, 8
ethnicgroup[is.na(ethnicgroup)] <- "8"
# Regenerate and summarise model
cox <- coxph(Surv(fu_time, death) ~ ethnicgroup)
summary(cox)

# Multiple Cox Model
# Investigating whether the assumptions of the Cox model are being broken
# Testing for proportional hazards assumption (with gender as predictor variable)
#Generate model fit
fit <- coxph(Surv(fu_time, death) ~ gender)
temp <- cox.zph(fit)
print(temp)
plot(temp)


