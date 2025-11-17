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

## 🛠️ Technical Implementation

### R Packages Utilized
```r
# Data Manipulation
library(dplyr)
library(tidyverse)

# Statistical Analysis
library(FSA)          # Dunn's test and non-parametric methods
library(rstatix)      # Pipe-friendly statistical tests
library(coin)         # Conditional inference procedures
library(rcompanion)   # Scheirer-Ray-Hare test
library(dlookr)       # Normality assessment

# Data Visualization
library(ggplot2)      # Advanced plotting system
