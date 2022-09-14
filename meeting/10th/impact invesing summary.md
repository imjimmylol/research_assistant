# <center>Impact investing summary</center> 

## A. Summary

The main contribution made by this article is to justify assumption made by previous article which is investors are willing to pay for impact holds (i.e give up excess return)?   

### 1. Methodology

- Model : logit regression model 
- Measurement of fund performance : 
  Base on data availability 
  - IRR
  - VM (value multiple)
- Calculation of willingness to pay :
  - i. WTP = $$  \frac{\beta_{expected \space return}}{\beta_{impact}} $$  
  - ii. map WTP to IRR according to table in appendix  (in terms of IRR)
- Caution : 
  Performance data were transformed into percentage ranking

### 2. Definition of Fund/Investor Type 

Observe the heterogeneity of WTP among different investor and fund type

- Investor Type

  - Development organizations  
  - Financial institutions  
  - Corporation & government portfolios   
  - state-owned corporations  
  - Wealth managers  
  - Private pensions
  - Foundations, Endowments  
  - Public pensions  
  - Institutional asset managers  

- Investor Attributes
  The following chart shows the mapping of __Investor Type__ and __Investor Attributes__

  <img src="C:\Users\user\Desktop\Konan\meeting\10th\pic\1.png" style="zoom:60%;" />

###  3. Empirical Result 

#### 3.1 Impact funds under-perform traditional VC funds

- Result:

  Impact funds under-perform traditional VC funds [Appendix.Fig1](#1)

- Issue to be solved: 

  ex-post performance estimations do not necessarily reveal ex-ante decisions to invest as a function of expected returns  
  (i.e Investors can't observe the future return of the fund)

- Solving the issue:

  - Using discrete choice hedonic model model (Originated from economics) of ex-ante choice, which builds on the hedonic pricing and resource choice literatures.
  
  - Construct the expected return by asset pricing model, besides using shrinkage result of the regression model as a correction for attenuation bias
  
    1. Model 1
       
       <br><img src="C:\Users\user\Desktop\Konan\meeting\10th\pic\3.png" style="zoom:60%;" />
       
    2. Model 2
       regressing the actual return on the estimated return, obtaining the shrinking result parameter
       
       <br><img src="C:\Users\user\Desktop\Konan\meeting\10th\pic\4.png" style="zoom:60%;" />
       <img src="C:\Users\user\Desktop\Konan\meeting\10th\pic\5.png" style="zoom:60%;" />
       
    3. proof of correction of attenuation bias
    
       Note that $$\gamma_1 = 0.5 <1 $$ in previous regression result, thus this is method is valid theoretically
       <br><img src="C:\Users\user\Desktop\Konan\meeting\10th\pic\6.png" style="zoom:60%;" />

#### 3.2 Result of WTP method (discrete choice hedonic model model)

- Result [Appendix.Fig2](#2): 

  - Suppose homogeneous expected return from investors (PanelA)

    Investors are willing to give up 3.7 ppts in IRR (calculate the WTP first, than map it to IRR)

  - Suppose heterogeneous expected return from investors (PanelB)

    Investors are3.5  ppts in IRR (PanelB)

- Note: 
Col3~Col6 is for robustness test

#### 3.3 Difference of WTP among LP types

- Result [Appendix.Fig3](#3):
  development organizations, financial institutions, and public pensions have large positive WTP for impact with estimates ranging from 13 to 27 percentile ranks (2.5–6.2 ppts in excess IRR)  
  
- Note:
  Col1 : Homogenous
  Col2 : Hetrogenous
  Col3~Col4 : robustness check 
  
#### 3.4  Difference of WTP among LP attributes

- Result  [Appendix.Fig4](#4):

  |    Investor Attribute    |     Result      |
  | :----------------------: | :-------------: |
  |    Mission Objective     |  3.4 ~ 6.2 IRR  |
  | Investor facing pressure |  2.3 ~ 3.3 IRR  |
  |  Laws of fiduciary duty  | -4.2 ~ -6.7 IRR |
  
  
  

## B. Appendix

<center><span id="1">Fig1</span></center>

<img src="C:\Users\user\Desktop\Konan\meeting\10th\pic\2.png" style="zoom:60%;" />

---
<center><span id="2">Fig2</span></center>

<img src="C:\Users\user\Desktop\Konan\meeting\10th\pic\7.png" style="zoom:60%;" />

---
<center><span id="3">Fig3</span></center>

<img src="C:\Users\user\Desktop\Konan\meeting\10th\pic\8.png" style="zoom:60%;" />

---
<center><span id="4">Fig4</span></center>

<img src="C:\Users\user\Desktop\Konan\meeting\10th\pic\9.png" style="zoom:100%;" />



