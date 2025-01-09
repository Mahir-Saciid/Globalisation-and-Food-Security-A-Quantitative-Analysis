# Food Security and Globalisation: A Quantitative Analysis

## Overview
This research investigates the relationship between globalisation and food security across developed and developing regions using panel data analysis. The study employs advanced econometric techniques to analyze data from 93 countries over a 10-year period (2012-2021).

## Key Findings
- Significant positive relationship between globalisation and food security (coefficient: 0.390)
![image](https://github.com/user-attachments/assets/f253fc9e-6412-488c-ad62-2d0e4265083e)
- Stronger effect in developed countries (coefficient: 0.720) compared to developing countries (coefficient: 0.223)
![image](https://github.com/user-attachments/assets/9854096e-4c22-473b-9855-5685ddf2772a)
- Political stability enhances the benefits of globalisation for food security
  - Stable countries: coefficient 0.578
  - Unstable countries: coefficient 0.273

![image](https://github.com/user-attachments/assets/79027883-0cc4-4ebf-a745-42479a8d0295)

## Technical Skills Demonstrated
### Data Analysis
- Panel Data Analysis using Stata
- Fixed-effects regression with Driscoll-Kraay standard errors
- Cross-sectional dependency handling
- Time series analysis

### Data Sources & Processing
- KOF Globalisation Index
- Global Food Security Index (GFSI)
- World Bank Open Data
- Data cleaning and transformation
- Panel data construction

### Statistical Methods
- Fixed-effects modelling
- Robust standard errors
- Heteroskedasticity correction
- Serial correlation handling
- Residual analysis

### Visualisation
- Scatter plots with fitted lines
- Residual plots
- Combined graphs using Stata's graph combine
- Cross-sectional comparisons

## Variables Used
- Dependent Variable: Food Security Index (GFSI)
- Independent Variables:
  - KOF Globalisation Index
  - GDP per capita
  - Population
  - Land area
  - Precipitation
  - Political stability

## Model Specification
```stata
xtscc fs kof growth lgdp lpopulation landarea percip polity, fe
```

## Key Contributions
1. Quantified the differential impact of globalisation on food security across development levels
2. Identified the moderating role of political stability
3. Demonstrated the importance of regional context in food security policies

## Limitations and Methodological Considerations
- **Endogeneity Issues**: The relationship between globalisation and food security might suffer from endogeneity, as more food-secure countries might be better positioned to engage in global trade.

- **Variable Overlap**: The KOF Globalisation Index and Global Food Security Index may have overlapping components, particularly in their economic dimensions. This could potentially inflate the correlation between globalisation and food security.

- **Data Coverage**: The dataset is limited to 93 countries with complete data, which might not fully represent global trends, particularly for least developed countries.

- **Unexpected Coefficients**: The negative coefficients for land area and precipitation require further investigation, as they contradict theoretical expectations.

- **Statistical Significance**: The political stability variable (polity) showed an expected positive relationship but lacked statistical significance, suggesting potential measurement or specification issues.

## Future Research Directions
- Investigation of under-developed and developing economies
- Analysis of conflict impact on food security
- Land-use influence examination

## Author
Mahir Saciid

## Acknowledgments
- Professor Radhia Bouchakour
- Professor Cherif Guermat
- Professor Luqman Saeed
