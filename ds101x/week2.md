# Week 2: Statistics and Probability 1

## 2.1 Lecture: Statistical Thinking for Data Science

- First question: what is a study trying to find out?
- population of interest
- variable of interest
- sample size
- statistics derives knowledge from sampling, being careful with collection and
  analysis
- sampling strategies to improve sample quality / coverage
- random assignment of treatment / control groups
- statistical inference estimates the possible extent of the random effect for
  establishing the size of the true effect
- the observed effect is called statistically significant if it is unlikely to
  occur purely by chance
- data comes from a generating process
  - making assumptions about the generating process allows us to analyze the data
- biased data leads to biased conclusions, since assumptions will be violated

## 2.2 Numerical Data 1 Simple Visualization (Part 1)

- Numerical data are numbers w/ context; e.g. 70 degrees, or 70 years old
- Individual is the unit of measurement in a data set; unit for which we take a
  measurement of the same set of variables measured across the set
- Data table / spreadsheet represents data in the most convenient form for
  analysis
  - Each row is one individual
  - Each column is one variable we're taking a measurement on
- Three common types of variables:
  - Categorical: values represent different classes, groups, categories
    - e.g. gender
  - Quantitative/numerical: values represent numerical meanings
  - Ordinal: values don't have arithmetic value, but there is an ordering
- Statistical tools help us summarize data numerically, do not tell whole story,
  but are useful

## 2.2 Numerical Data 1 Simple Visualization (Part 2)

- Displaying categorical data
  - summarize using counts/percentage, then compute based on counts
- Pie charts useful for percentage data
- **Defn: Area Principle**: the size of the area correlates to the data
  summaries

## 2.2 Numerical Data 1 Simple Visualization (Part 3)

- Can turn numeric data into categorical data by grouping into ranges

## 2.3 Lecture: Numerical Data 2 Simple Visualization and Summaries (Part 1)

- **Defn: Center of Variation**: Where the different observed numerical values
  distribute around
  - **Defn: Mean**: numerical average
    - sensitive to outliers; one large value can drag the outliers
  - **Defn: Median**: mid point
- **Defn: Standard Deviation**: how much variation there is in a variable
  - Averaging the distance of a variable from the mean of that variable
- **Defn: Standardization**: using standard deviation as a yardstick to compare
  variables across different distributions
- **Defn: Quantile**: a threshold value for a given variable, where the
  threshold is defined to have a percentage of data below it.
  - e.g. the "95th percentile" of a data set means 95% of the values lie below
    that percentile
  - Common percentiles are **Defn: Quartiles**: 25%, 50%, and 75% percentiles

## 2.3 Lecture: Numerical Data 2 Simple Visualization and Summaries (Part 2)

- Standard deviation cannot tell you the directionality of a distribution,
  whereas quantiles show you variation across the range of a distribution
- **Defn: Box Plot**: illustrates the five number summary statistics; minimum,
  maximum, first and third quartiles, and the median
    - Outliers (extreme values) extend *beyond* the minimum/maximum
    - Box shows the central 50% of the data
    - Minimum to maximum range shows 100% of the data (except for outliers)
    - Useful for seeing the center/shape/spread of the distribution
    - Useful for comparing distributions over another variable; e.g. time
- Scale of axis important for understanding variation / skew

## 2.4 Lecture: Numerical Data 3 Association Part 1

- **Defn: Association**: when certain values of a variable are observed more
  often with certain values of another variable
- **Defn: Stacked Bar Plot**: like a bar plot, but with multiple variables shown
  stacked on top of each other; the y-axis shows not just one variable, but
  multiple.
  - Useful for showing associations
- Measuring association
  - Difference in proportions (e.g. 30% of group a vs 45% of group b implies 15%
    difference)
  - given probabilities `p1` and `p2`:
    - **Defn: Relative risk**: `rr = p1 / p2`
    - **Defn: Odds ratio**: `or = (p1 / (1 - p1)) / (p2 / (1 - p2))`
- Associating quantitative data with categorical data

## 2.4 Lecture: Numerical Data 3 Association Part 2

- **Defn: Scatterplot**: used to associate two quantitative variables
  - Can visualize the trend of the association
  - A positive association occurs when small values of one variable associate
    with small values of the other, and large values of one likewise associate
    with large values of the other
- Measuring association between quantitative variables
    - **Defn: Correlation**: A function of linearly-associated quantitative
      variables X and Y which results in a positive value when X and Y are
      positively correlated, and a negative value when they are negatively
      correlated
      - The closer the value is to 1, the stronger the association is
      - 0 indicates a weak linear association, meaning they are not linearly
        associated

## 2.4 Lecture: Numerical Data 3 Association Part 3

- association != causation
- association is symetric, while causation is not
- **Defn: Confounding**: when there's an association between x and y, an
  association between z and y, but also an association between x and z. More
  difficult when z is hidden e.g. not observed in the data
- **Defn: Simpson's Paradox**: A phenomenon that occurs when confounding factors
  are not observed and become a hidden confounder
- Establishing cause-effect relationships
  - Randomized experiment
    - e.g. A/B testing; treatment group A and control group B
    - randomly assign individuals to the two groups to test whether they exhibit
      different values
- **Defn: Placebo Effect**: psychological effect resulting in effect on the
  variable being observed. Accounted for by giving fake treatment to control
  group
- **Defn: Double-blind experiment**: Experiment in which those evaluating the
  results are blind to the assignment of individuals to treatment vs control
  groups
- Repetition used to account for random variation in individuals
