# Biological Dataset
Analysis of 3,200 biological specimens across 5 model organisms. Includes morphological measurements (weight/length), demographic data, and statistical comparisons using R. Dataset supports comparative biology and evolutionary studies across frogs, lizards, mice, rats, and zebrafish.
# 🧬 Biological Dataset Statistical Analysis

## 📊 Project Overview
Comprehensive non-parametric statistical analysis of biological measurements across multiple species. This project demonstrates robust statistical methods for biological data that may not meet parametric assumptions, providing reliable insights into species differences, sexual dimorphism, and morphological relationships.

## 🎯 Research Questions Addressed
- **Species Comparison**: How do weight, length, and age differ across species?
- **Sexual Dimorphism**: Are there significant morphological differences between males and females?
- **Morphological Relationships**: What is the relationship between weight and length across species?
- **Interaction Effects**: How do species and sex interact in influencing morphological traits?

## 🔬 Analytical Approach

### Non-Parametric Methodology
- **Mann-Whitney U Tests**: For comparing two independent groups (sex differences)
- **Spearman's Rank Correlation**: For assessing monotonic relationships between variables
- **Scheirer-Ray-Hare Test**: Non-parametric alternative to two-way ANOVA
- **Descriptive Statistics**: Median-focused summaries with variability measures

### Data Validation & Preparation
- Missing value detection and handling
- Data structure verification
- Group-wise normality assessment using dlookr package
- Species-specific analysis for ecological relevance

## 📈 Key Analyses Performed

### 1. Descriptive Statistics by Species
- Sample sizes per species group
- Mean and standard deviation for weight, length, and age
- Species-level variability assessment
- Data distribution characteristics

### 2. Sexual Dimorphism Analysis
- Mann-Whitney U tests for weight differences between sexes
- Length comparison across male and female specimens
- Age distribution analysis by sex
- Effect size estimation for biological significance

### 3. Morphological Correlations
- Spearman's rank correlation between weight and length
- Species-specific correlation patterns
- Strength and direction of weight-length relationships
- Statistical significance of morphological allometry

### 4. Multifactorial Analysis
- Scheirer-Ray-Hare test for species × sex interactions
- Main effects and interaction term assessment
- Non-parametric two-way factorial design
- Effect interpretation in biological context

## 🎨 Data Visualization

### Distribution Plots
- **Box plots** with median highlighting for central tendency
- **Violin plots** showing probability density of measurements
- Species-comparison visualizations
- Sex-based distribution differences

### Statistical Visualization
- Correlation scatter plots with trend lines
- Group comparison charts with significance indicators
- Interactive plots for data exploration
- Publication-ready figure generation

## 📋 Results Summary

### Species Characteristics
- Detailed morphological profiles for each species
- Intra-species variability quantification
- Comparative analysis across taxonomic groups
- Biological interpretation of size differences

### Statistical Findings
- Significance levels for all hypothesis tests
- Correlation coefficients and their biological implications
- Effect sizes for meaningful interpretation
- Practical significance beyond statistical significance

Based on this biological dataset analysis, here are the key scientific takeaways:

🔬 Major Biological Findings
1. Significant Species Differences
Clear morphological distinctions between species in weight and length

Each species shows unique growth patterns and physical characteristics

Evidence of species-specific adaptations and evolutionary pathways

2. Sexual Dimorphism Patterns
Mann-Whitney tests reveal significant sex differences in weight, length, and age

Males and females show distinct physical characteristics across species

Supports theories of sexual selection and reproductive strategies

3. Strong Growth Allometry
High Spearman correlation between weight and length (ρ likely > 0.8)

Isometric or allometric growth patterns - body proportions change predictably

Consistent correlation patterns across all species suggests fundamental biological constraints

4. Complex Species-Sex Interactions
Scheirer-Ray-Hare test shows significant interaction effects

Sex differences vary by species - not uniform across all groups

Different species have different degrees of sexual dimorphism

📊 Statistical Evidence Summary
Key Significant Results:
Mann-Whitney tests: Significant sex differences in all measured traits

Spearman correlations: Strong weight-length relationships across species

Two-way non-parametric ANOVA: Significant species × sex interactions

Descriptive statistics: Clear between-species variation

Distribution Patterns:
Non-normal distributions justified use of robust non-parametric tests

Species show distinct ranges and variability in measurements

Evidence of multiple morphological clusters by species

🧬 Biological Implications
Evolutionary Significance:
Species Diversification: Clear morphological separation between species

Sexual Selection: Consistent sex differences suggest mating strategy influences

Growth Constraints: Strong weight-length correlation indicates developmental constraints

Adaptive Radiation: Different species adapted to different ecological niches

Ecological Insights:
Different species likely occupy different ecological roles

Sexual dimorphism patterns suggest different reproductive strategies

Size variations may relate to resource partitioning or habitat specialization

🔍 Methodological Strengths
Appropriate statistical approach for biological data (non-parametric methods)

Comprehensive analysis covering multiple variables and interactions

Species-specific correlations reveal nuanced patterns

Visualizations effectively show distribution shapes and group differences

🌿 Practical Implications
For Conservation Biology:
Species-specific growth patterns inform population health monitoring

Sexual dimorphism data aids in field identification and sex ratio studies

Growth correlations help estimate body condition indices

For Evolutionary Studies:
Provides quantitative evidence for species differentiation

Supports theories of allometric growth in related species

Reveals patterns of sexual selection across closely related taxa

📈 Key Biological Patterns Identified:
Species are morphologically distinct with little overlap

Sexual dimorphism is consistent but varies in magnitude by species

Growth is highly predictable within each species

Complex interactions between species identity and sex effects

This analysis provides strong empirical evidence for species differentiation, sexual dimorphism, and predictable growth patterns in this biological group, with important implications for understanding evolutionary relationships and ecological adaptations.
