# Set up

``` r
dataset <- read.csv("C:/Users/Herminio/Git/shapes-generation-evaluation/statistics/resultEvaluationIncrementalFilms.csv", sep=';')[, 2:5]
datasetShEx <- dataset[(dataset$ShapesLanguage == "ShEx"), ]
datasetSHACL <- dataset[(dataset$ShapesLanguage == "SHACL"), ]
```

# Descriptive statistics for SHACL generation

``` r
stby(datasetSHACL, list(datasetSHACL$Tool, datasetSHACL$Size), descr, round.digits=5, stats=c("mean", "med", "sd", "min", "max"))
```

    ## Non-numerical variable(s) ignored: Tool, ShapesLanguage

    ## Descriptive Statistics  
    ## datasetSHACL  
    ## Group: Tool = astrea, Size = 1000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms         Size
    ## ------------- ---------------- ------------
    ##          Mean       1666.30000   1000.00000
    ##        Median       1560.00000   1000.00000
    ##       Std.Dev        489.08663      0.00000
    ##           Min       1463.00000   1000.00000
    ##           Max       4226.00000   1000.00000
    ## 
    ## Group: Tool = RML2SHACL, Size = 1000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms         Size
    ## ------------- ---------------- ------------
    ##          Mean        289.36667   1000.00000
    ##        Median        282.00000   1000.00000
    ##       Std.Dev         28.02768      0.00000
    ##           Min        264.00000   1000.00000
    ##           Max        388.00000   1000.00000
    ## 
    ## Group: Tool = SCOOP, Size = 1000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms         Size
    ## ------------- ---------------- ------------
    ##          Mean        892.06667   1000.00000
    ##        Median        878.50000   1000.00000
    ##       Std.Dev        117.30800      0.00000
    ##           Min        818.00000   1000.00000
    ##           Max       1490.00000   1000.00000
    ## 
    ## Group: Tool = sheXer, Size = 1000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms         Size
    ## ------------- ---------------- ------------
    ##          Mean        707.53333   1000.00000
    ##        Median        698.50000   1000.00000
    ##       Std.Dev         58.87317      0.00000
    ##           Min        628.00000   1000.00000
    ##           Max        873.00000   1000.00000
    ## 
    ## Group: Tool = ShExML, Size = 1000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms         Size
    ## ------------- ---------------- ------------
    ##          Mean       1900.93333   1000.00000
    ##        Median       1902.50000   1000.00000
    ##       Std.Dev         38.30723      0.00000
    ##           Min       1816.00000   1000.00000
    ##           Max       1972.00000   1000.00000
    ## 
    ## Group: Tool = astrea, Size = 10000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms          Size
    ## ------------- ---------------- -------------
    ##          Mean       1542.83333   10000.00000
    ##        Median       1543.00000   10000.00000
    ##       Std.Dev         33.12784       0.00000
    ##           Min       1469.00000   10000.00000
    ##           Max       1605.00000   10000.00000
    ## 
    ## Group: Tool = RML2SHACL, Size = 10000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms          Size
    ## ------------- ---------------- -------------
    ##          Mean        279.76667   10000.00000
    ##        Median        278.00000   10000.00000
    ##       Std.Dev          9.04656       0.00000
    ##           Min        264.00000   10000.00000
    ##           Max        304.00000   10000.00000
    ## 
    ## Group: Tool = SCOOP, Size = 10000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms          Size
    ## ------------- ---------------- -------------
    ##          Mean        886.46667   10000.00000
    ##        Median        849.50000   10000.00000
    ##       Std.Dev        184.40655       0.00000
    ##           Min        788.00000   10000.00000
    ##           Max       1850.00000   10000.00000
    ## 
    ## Group: Tool = sheXer, Size = 10000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms          Size
    ## ------------- ---------------- -------------
    ##          Mean       4832.23333   10000.00000
    ##        Median       4823.50000   10000.00000
    ##       Std.Dev        155.74486       0.00000
    ##           Min       4557.00000   10000.00000
    ##           Max       5332.00000   10000.00000
    ## 
    ## Group: Tool = ShExML, Size = 10000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms          Size
    ## ------------- ---------------- -------------
    ##          Mean       3280.56667   10000.00000
    ##        Median       3264.50000   10000.00000
    ##       Std.Dev         83.23531       0.00000
    ##           Min       3139.00000   10000.00000
    ##           Max       3477.00000   10000.00000
    ## 
    ## Group: Tool = astrea, Size = 100000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms           Size
    ## ------------- ---------------- --------------
    ##          Mean       1569.40000   100000.00000
    ##        Median       1578.00000   100000.00000
    ##       Std.Dev         37.96605        0.00000
    ##           Min       1447.00000   100000.00000
    ##           Max       1620.00000   100000.00000
    ## 
    ## Group: Tool = RML2SHACL, Size = 100000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms           Size
    ## ------------- ---------------- --------------
    ##          Mean        278.83333   100000.00000
    ##        Median        270.00000   100000.00000
    ##       Std.Dev         29.15841        0.00000
    ##           Min        253.00000   100000.00000
    ##           Max        392.00000   100000.00000
    ## 
    ## Group: Tool = SCOOP, Size = 100000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms           Size
    ## ------------- ---------------- --------------
    ##          Mean        844.06667   100000.00000
    ##        Median        847.00000   100000.00000
    ##       Std.Dev         36.45775        0.00000
    ##           Min        774.00000   100000.00000
    ##           Max        907.00000   100000.00000
    ## 
    ## Group: Tool = sheXer, Size = 100000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms           Size
    ## ------------- ---------------- --------------
    ##          Mean      47564.16667   100000.00000
    ##        Median      47647.50000   100000.00000
    ##       Std.Dev        415.36001        0.00000
    ##           Min      46523.00000   100000.00000
    ##           Max      48328.00000   100000.00000
    ## 
    ## Group: Tool = ShExML, Size = 100000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms           Size
    ## ------------- ---------------- --------------
    ##          Mean       8719.00000   100000.00000
    ##        Median       8639.00000   100000.00000
    ##       Std.Dev        368.21630        0.00000
    ##           Min       8008.00000   100000.00000
    ##           Max       9716.00000   100000.00000
    ## 
    ## Group: Tool = astrea, Size = 1000000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms            Size
    ## ------------- ---------------- ---------------
    ##          Mean       1546.16667   1000000.00000
    ##        Median       1548.00000   1000000.00000
    ##       Std.Dev         25.23692         0.00000
    ##           Min       1493.00000   1000000.00000
    ##           Max       1615.00000   1000000.00000
    ## 
    ## Group: Tool = RML2SHACL, Size = 1000000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms            Size
    ## ------------- ---------------- ---------------
    ##          Mean        268.53333   1000000.00000
    ##        Median        266.50000   1000000.00000
    ##       Std.Dev         11.63447         0.00000
    ##           Min        253.00000   1000000.00000
    ##           Max        309.00000   1000000.00000
    ## 
    ## Group: Tool = SCOOP, Size = 1000000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms            Size
    ## ------------- ---------------- ---------------
    ##          Mean        844.93333   1000000.00000
    ##        Median        842.50000   1000000.00000
    ##       Std.Dev         29.17242         0.00000
    ##           Min        790.00000   1000000.00000
    ##           Max        896.00000   1000000.00000
    ## 
    ## Group: Tool = sheXer, Size = 1000000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms            Size
    ## ------------- ---------------- ---------------
    ##          Mean     181386.20000   1000000.00000
    ##        Median     180154.00000   1000000.00000
    ##       Std.Dev       2608.44641         0.00000
    ##           Min     180116.00000   1000000.00000
    ##           Max     187791.00000   1000000.00000
    ## 
    ## Group: Tool = ShExML, Size = 1000000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms            Size
    ## ------------- ---------------- ---------------
    ##          Mean      55747.86667   1000000.00000
    ##        Median      55581.50000   1000000.00000
    ##       Std.Dev       4574.68749         0.00000
    ##           Min      46428.00000   1000000.00000
    ##           Max      66091.00000   1000000.00000

# Descriptive statistics for ShEx generation

``` r
stby(datasetShEx, list(datasetShEx$Tool, datasetShEx$Size), descr, round.digits=5, stats=c("mean", "med", "sd", "min", "max"))
```

    ## Non-numerical variable(s) ignored: Tool, ShapesLanguage

    ## Descriptive Statistics  
    ## datasetShEx  
    ## Group: Tool = sheXer, Size = 1000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms         Size
    ## ------------- ---------------- ------------
    ##          Mean        776.63333   1000.00000
    ##        Median        767.50000   1000.00000
    ##       Std.Dev        103.28484      0.00000
    ##           Min        658.00000   1000.00000
    ##           Max       1265.00000   1000.00000
    ## 
    ## Group: Tool = ShExML, Size = 1000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms         Size
    ## ------------- ---------------- ------------
    ##          Mean       1853.40000   1000.00000
    ##        Median       1834.00000   1000.00000
    ##       Std.Dev        129.61684      0.00000
    ##           Min       1742.00000   1000.00000
    ##           Max       2505.00000   1000.00000
    ## 
    ## Group: Tool = sheXer, Size = 10000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms          Size
    ## ------------- ---------------- -------------
    ##          Mean       4957.63333   10000.00000
    ##        Median       4861.00000   10000.00000
    ##       Std.Dev        284.71383       0.00000
    ##           Min       4595.00000   10000.00000
    ##           Max       5917.00000   10000.00000
    ## 
    ## Group: Tool = ShExML, Size = 10000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms          Size
    ## ------------- ---------------- -------------
    ##          Mean       3207.00000   10000.00000
    ##        Median       3207.50000   10000.00000
    ##       Std.Dev         77.74583       0.00000
    ##           Min       3079.00000   10000.00000
    ##           Max       3351.00000   10000.00000
    ## 
    ## Group: Tool = sheXer, Size = 100000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms           Size
    ## ------------- ---------------- --------------
    ##          Mean      47497.73333   100000.00000
    ##        Median      47526.00000   100000.00000
    ##       Std.Dev        359.27944        0.00000
    ##           Min      46743.00000   100000.00000
    ##           Max      48181.00000   100000.00000
    ## 
    ## Group: Tool = ShExML, Size = 100000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms           Size
    ## ------------- ---------------- --------------
    ##          Mean       8600.86667   100000.00000
    ##        Median       8541.00000   100000.00000
    ##       Std.Dev        381.50607        0.00000
    ##           Min       8014.00000   100000.00000
    ##           Max       9692.00000   100000.00000
    ## 
    ## Group: Tool = sheXer, Size = 1000000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms            Size
    ## ------------- ---------------- ---------------
    ##          Mean     180630.73333   1000000.00000
    ##        Median     180155.00000   1000000.00000
    ##       Std.Dev       1861.62678         0.00000
    ##           Min     180127.00000   1000000.00000
    ##           Max     188807.00000   1000000.00000
    ## 
    ## Group: Tool = ShExML, Size = 1000000  
    ## N: 30  
    ## 
    ##                 ElapsedTime_ms            Size
    ## ------------- ---------------- ---------------
    ##          Mean      58493.23333   1000000.00000
    ##        Median      55314.00000   1000000.00000
    ##       Std.Dev      13412.09117         0.00000
    ##           Min      47460.00000   1000000.00000
    ##           Max     123493.00000   1000000.00000

# Testing normality for SHACL

``` r
by(datasetSHACL$ElapsedTime_ms, list(datasetSHACL$Tool, datasetSHACL$Size), shapiro.test)
```

    ## : astrea
    ## : 1000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.30282, p-value = 7.452e-11
    ## 
    ## ------------------------------------------------------------ 
    ## : RML2SHACL
    ## : 1000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.73264, p-value = 4.831e-06
    ## 
    ## ------------------------------------------------------------ 
    ## : SCOOP
    ## : 1000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.42082, p-value = 8.564e-10
    ## 
    ## ------------------------------------------------------------ 
    ## : sheXer
    ## : 1000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.89174, p-value = 0.005305
    ## 
    ## ------------------------------------------------------------ 
    ## : ShExML
    ## : 1000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.97674, p-value = 0.7338
    ## 
    ## ------------------------------------------------------------ 
    ## : astrea
    ## : 10000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.96636, p-value = 0.445
    ## 
    ## ------------------------------------------------------------ 
    ## : RML2SHACL
    ## : 10000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.96518, p-value = 0.417
    ## 
    ## ------------------------------------------------------------ 
    ## : SCOOP
    ## : 10000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.31617, p-value = 9.678e-11
    ## 
    ## ------------------------------------------------------------ 
    ## : sheXer
    ## : 10000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.94101, p-value = 0.09686
    ## 
    ## ------------------------------------------------------------ 
    ## : ShExML
    ## : 10000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.95721, p-value = 0.2623
    ## 
    ## ------------------------------------------------------------ 
    ## : astrea
    ## : 100000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.91239, p-value = 0.0171
    ## 
    ## ------------------------------------------------------------ 
    ## : RML2SHACL
    ## : 100000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.68174, p-value = 8.553e-07
    ## 
    ## ------------------------------------------------------------ 
    ## : SCOOP
    ## : 100000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.96812, p-value = 0.4891
    ## 
    ## ------------------------------------------------------------ 
    ## : sheXer
    ## : 100000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.92466, p-value = 0.0355
    ## 
    ## ------------------------------------------------------------ 
    ## : ShExML
    ## : 100000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.95751, p-value = 0.2671
    ## 
    ## ------------------------------------------------------------ 
    ## : astrea
    ## : 1000000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.97639, p-value = 0.7237
    ## 
    ## ------------------------------------------------------------ 
    ## : RML2SHACL
    ## : 1000000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.79737, p-value = 5.874e-05
    ## 
    ## ------------------------------------------------------------ 
    ## : SCOOP
    ## : 1000000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.95748, p-value = 0.2667
    ## 
    ## ------------------------------------------------------------ 
    ## : sheXer
    ## : 1000000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.52098, p-value = 8.992e-09
    ## 
    ## ------------------------------------------------------------ 
    ## : ShExML
    ## : 1000000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.98303, p-value = 0.8991

# Testing normality for ShEx

``` r
by(datasetShEx$ElapsedTime_ms, list(datasetShEx$Tool, datasetShEx$Size), shapiro.test)
```

    ## : sheXer
    ## : 1000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.61379, p-value = 1.08e-07
    ## 
    ## ------------------------------------------------------------ 
    ## : ShExML
    ## : 1000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.4676, p-value = 2.475e-09
    ## 
    ## ------------------------------------------------------------ 
    ## : sheXer
    ## : 10000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.84407, p-value = 0.0004671
    ## 
    ## ------------------------------------------------------------ 
    ## : ShExML
    ## : 10000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.95793, p-value = 0.2739
    ## 
    ## ------------------------------------------------------------ 
    ## : sheXer
    ## : 100000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.98476, p-value = 0.9331
    ## 
    ## ------------------------------------------------------------ 
    ## : ShExML
    ## : 100000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.9019, p-value = 0.009352
    ## 
    ## ------------------------------------------------------------ 
    ## : sheXer
    ## : 1000000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.28636, p-value = 5.425e-11
    ## 
    ## ------------------------------------------------------------ 
    ## : ShExML
    ## : 1000000
    ## 
    ##  Shapiro-Wilk normality test
    ## 
    ## data:  dd[x, ]
    ## W = 0.55447, p-value = 2.121e-08

# Running the ART tool including post hoc tests and effect size for SHACL

``` r
datasetSHACL$Size <- factor(datasetSHACL$Size)
datasetSHACL$Tool <- factor(datasetSHACL$Tool)

model = art(ElapsedTime_ms ~ Tool + (1 | Size), data=datasetSHACL)
marginal = art.con(model, "Tool", adjust="tukey")

Result = anova(model)
Result$part.eta.sq = with(Result, `F` * `Df` / (`F` * `Df` + `Df.res`))
Result
```

    ## Analysis of Variance of Aligned Rank Transformed Data
    ## 
    ## Table Type: Analysis of Deviance Table (Type III Wald F tests with Kenward-Roger df) 
    ## Model: Mixed Effects (lmer)
    ## Response: art(ElapsedTime_ms)
    ## 
    ##             F Df Df.res     Pr(>F) part.eta.sq    
    ## 1 Tool 559.01  4    592 < 2.22e-16     0.79067 ***
    ## ---
    ## Signif. codes:   0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
marginal
```

    ##  contrast           estimate SE  df t.ratio p.value
    ##  astrea - RML2SHACL    269.5 10 592  26.832  <.0001
    ##  astrea - SCOOP        119.7 10 592  11.921  <.0001
    ##  astrea - sheXer       -99.9 10 592  -9.945  <.0001
    ##  astrea - ShExML      -142.0 10 592 -14.143  <.0001
    ##  RML2SHACL - SCOOP    -149.7 10 592 -14.911  <.0001
    ##  RML2SHACL - sheXer   -369.3 10 592 -36.777  <.0001
    ##  RML2SHACL - ShExML   -411.5 10 592 -40.976  <.0001
    ##  SCOOP - sheXer       -219.6 10 592 -21.867  <.0001
    ##  SCOOP - ShExML       -261.7 10 592 -26.065  <.0001
    ##  sheXer - ShExML       -42.2 10 592  -4.198  0.0003
    ## 
    ## Degrees-of-freedom method: kenward-roger 
    ## P value adjustment: tukey method for comparing a family of 5 estimates

``` r
lm = artlm(model, "Tool")
contrasts = summary(pairs(emmeans(lm, ~ Tool)))

contrasts$d = contrasts$estimate / sigmaHat(lm)
contrasts
```

    ##  contrast           estimate SE  df t.ratio p.value      d
    ##  astrea - RML2SHACL    269.5 10 592  26.832  <.0001  3.464
    ##  astrea - SCOOP        119.7 10 592  11.921  <.0001  1.539
    ##  astrea - sheXer       -99.9 10 592  -9.945  <.0001 -1.284
    ##  astrea - ShExML      -142.0 10 592 -14.143  <.0001 -1.826
    ##  RML2SHACL - SCOOP    -149.7 10 592 -14.911  <.0001 -1.925
    ##  RML2SHACL - sheXer   -369.3 10 592 -36.777  <.0001 -4.748
    ##  RML2SHACL - ShExML   -411.5 10 592 -40.976  <.0001 -5.290
    ##  SCOOP - sheXer       -219.6 10 592 -21.867  <.0001 -2.823
    ##  SCOOP - ShExML       -261.7 10 592 -26.065  <.0001 -3.365
    ##  sheXer - ShExML       -42.2 10 592  -4.198  0.0003 -0.542
    ## 
    ## Degrees-of-freedom method: kenward-roger 
    ## P value adjustment: tukey method for comparing a family of 5 estimates

# Comparing ShExML and sheXer by Elapsed Time and Size using the ART tool on incremental SHACL generation

``` r
datasetSHACL$Size <- factor(datasetSHACL$Size)
datasetSHACL$Tool <- factor(datasetSHACL$Tool)

model = art(ElapsedTime_ms ~ Tool + Size + Tool:Size, data=datasetSHACL[(datasetSHACL$Tool == "ShExML" | datasetSHACL$Tool == "sheXer"), ])
marginal = art.con(model, "Tool:Size", adjust="tukey")

Result = anova(model)
Result$part.eta.sq = with(Result, `Sum Sq`/(`Sum Sq` + `Sum Sq.res`))
Result
```

    ## Analysis of Variance of Aligned Rank Transformed Data
    ## 
    ## Table Type: Anova Table (Type III tests) 
    ## Model: No Repeated Measures (lm)
    ## Response: art(ElapsedTime_ms)
    ## 
    ##             Df Df.res F value     Pr(>F) part.eta.sq    
    ## 1 Tool       1    232   782.9 < 2.22e-16     0.77141 ***
    ## 2 Size       3    232  1164.0 < 2.22e-16     0.93770 ***
    ## 3 Tool:Size  3    232  4822.7 < 2.22e-16     0.98422 ***
    ## ---
    ## Signif. codes:   0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
lm = artlm(model, "Tool:Size")
contrasts = summary(pairs(emmeans(lm, ~ Tool:Size)))

contrasts$d = contrasts$estimate / sigmaHat(lm)
contrasts
```

    ##  contrast                                estimate   SE  df t.ratio p.value
    ##  sheXer Size1000 - ShExML Size1000           -150 2.27 232 -66.014  <.0001
    ##  sheXer Size1000 - sheXer Size10000           -30 2.27 232 -13.203  <.0001
    ##  sheXer Size1000 - ShExML Size10000          -120 2.27 232 -52.811  <.0001
    ##  sheXer Size1000 - sheXer Size100000          -60 2.27 232 -26.406  <.0001
    ##  sheXer Size1000 - ShExML Size100000          -90 2.27 232 -39.608  <.0001
    ##  sheXer Size1000 - sheXer Size1000000        -180 2.27 232 -79.217  <.0001
    ##  sheXer Size1000 - ShExML Size1000000          30 2.27 232  13.203  <.0001
    ##  ShExML Size1000 - sheXer Size10000           120 2.27 232  52.811  <.0001
    ##  ShExML Size1000 - ShExML Size10000            30 2.27 232  13.203  <.0001
    ##  ShExML Size1000 - sheXer Size100000           90 2.27 232  39.608  <.0001
    ##  ShExML Size1000 - ShExML Size100000           60 2.27 232  26.406  <.0001
    ##  ShExML Size1000 - sheXer Size1000000         -30 2.27 232 -13.203  <.0001
    ##  ShExML Size1000 - ShExML Size1000000         180 2.27 232  79.217  <.0001
    ##  sheXer Size10000 - ShExML Size10000          -90 2.27 232 -39.608  <.0001
    ##  sheXer Size10000 - sheXer Size100000         -30 2.27 232 -13.203  <.0001
    ##  sheXer Size10000 - ShExML Size100000         -60 2.27 232 -26.406  <.0001
    ##  sheXer Size10000 - sheXer Size1000000       -150 2.27 232 -66.014  <.0001
    ##  sheXer Size10000 - ShExML Size1000000         60 2.27 232  26.406  <.0001
    ##  ShExML Size10000 - sheXer Size100000          60 2.27 232  26.406  <.0001
    ##  ShExML Size10000 - ShExML Size100000          30 2.27 232  13.203  <.0001
    ##  ShExML Size10000 - sheXer Size1000000        -60 2.27 232 -26.406  <.0001
    ##  ShExML Size10000 - ShExML Size1000000        150 2.27 232  66.014  <.0001
    ##  sheXer Size100000 - ShExML Size100000        -30 2.27 232 -13.203  <.0001
    ##  sheXer Size100000 - sheXer Size1000000      -120 2.27 232 -52.811  <.0001
    ##  sheXer Size100000 - ShExML Size1000000        90 2.27 232  39.608  <.0001
    ##  ShExML Size100000 - sheXer Size1000000       -90 2.27 232 -39.608  <.0001
    ##  ShExML Size100000 - ShExML Size1000000       120 2.27 232  52.811  <.0001
    ##  sheXer Size1000000 - ShExML Size1000000      210 2.27 232  92.420  <.0001
    ##       d
    ##  -17.04
    ##   -3.41
    ##  -13.64
    ##   -6.82
    ##  -10.23
    ##  -20.45
    ##    3.41
    ##   13.64
    ##    3.41
    ##   10.23
    ##    6.82
    ##   -3.41
    ##   20.45
    ##  -10.23
    ##   -3.41
    ##   -6.82
    ##  -17.04
    ##    6.82
    ##    6.82
    ##    3.41
    ##   -6.82
    ##   17.04
    ##   -3.41
    ##  -13.64
    ##   10.23
    ##  -10.23
    ##   13.64
    ##   23.86
    ## 
    ## P value adjustment: tukey method for comparing a family of 8 estimates

# Running the ART tool including post hoc tests and effect size for ShEx

``` r
datasetShEx$Size <- factor(datasetShEx$Size)
datasetShEx$Tool <- factor(datasetShEx$Tool)

model = art(ElapsedTime_ms ~ Tool + (1 | Size), data=datasetShEx)
marginal = art.con(model, "Tool", adjust="tukey")

Result = anova(model)
Result$part.eta.sq = with(Result, `F` * `Df` / (`F` * `Df` + `Df.res`))
Result
```

    ## Analysis of Variance of Aligned Rank Transformed Data
    ## 
    ## Table Type: Analysis of Deviance Table (Type III Wald F tests with Kenward-Roger df) 
    ## Model: Mixed Effects (lmer)
    ## Response: art(ElapsedTime_ms)
    ## 
    ##             F Df Df.res     Pr(>F) part.eta.sq    
    ## 1 Tool 55.221  1    235 1.9891e-12     0.19027 ***
    ## ---
    ## Signif. codes:   0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
marginal
```

    ##  contrast        estimate   SE  df t.ratio p.value
    ##  sheXer - ShExML     15.4 2.07 235   7.431  <.0001
    ## 
    ## Degrees-of-freedom method: kenward-roger

``` r
lm = artlm(model, "Tool")
contrasts = summary(pairs(emmeans(lm, ~ Tool)))

contrasts$d = contrasts$estimate / sigmaHat(lm)
contrasts
```

    ##  contrast        estimate   SE  df t.ratio p.value     d
    ##  sheXer - ShExML     15.4 2.07 235   7.431  <.0001 0.959
    ## 
    ## Degrees-of-freedom method: kenward-roger

# Comparing ShExML and sheXer by Elapsed Time and Size using the ART tool on incremental ShEx generation

``` r
datasetShEx$Size <- factor(datasetShEx$Size)
datasetShEx$Tool <- factor(datasetShEx$Tool)

model = art(ElapsedTime_ms ~ Tool + Size + Tool:Size, data=datasetShEx)
marginal = art.con(model, "Tool:Size", adjust="tukey")

Result = anova(model)
Result$part.eta.sq = with(Result, `Sum Sq`/(`Sum Sq` + `Sum Sq.res`))
Result
```

    ## Analysis of Variance of Aligned Rank Transformed Data
    ## 
    ## Table Type: Anova Table (Type III tests) 
    ## Model: No Repeated Measures (lm)
    ## Response: art(ElapsedTime_ms)
    ## 
    ##             Df Df.res F value     Pr(>F) part.eta.sq    
    ## 1 Tool       1    232  741.98 < 2.22e-16     0.76180 ***
    ## 2 Size       3    232 1183.26 < 2.22e-16     0.93865 ***
    ## 3 Tool:Size  3    232 1532.81 < 2.22e-16     0.95197 ***
    ## ---
    ## Signif. codes:   0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
lm = artlm(model, "Tool:Size")
contrasts = summary(pairs(emmeans(lm, ~ Tool:Size)))

contrasts$d = contrasts$estimate / sigmaHat(lm)
contrasts
```

    ##  contrast                                estimate   SE  df t.ratio p.value
    ##  sheXer Size1000 - ShExML Size1000           -150 3.96 232 -37.901  <.0001
    ##  sheXer Size1000 - sheXer Size10000           -30 3.96 232  -7.580  <.0001
    ##  sheXer Size1000 - ShExML Size10000          -120 3.96 232 -30.321  <.0001
    ##  sheXer Size1000 - sheXer Size100000          -60 3.96 232 -15.160  <.0001
    ##  sheXer Size1000 - ShExML Size100000          -90 3.96 232 -22.741  <.0001
    ##  sheXer Size1000 - sheXer Size1000000        -181 3.96 232 -45.734  <.0001
    ##  sheXer Size1000 - ShExML Size1000000          23 3.96 232   5.811  <.0001
    ##  ShExML Size1000 - sheXer Size10000           120 3.96 232  30.321  <.0001
    ##  ShExML Size1000 - ShExML Size10000            30 3.96 232   7.580  <.0001
    ##  ShExML Size1000 - sheXer Size100000           90 3.96 232  22.741  <.0001
    ##  ShExML Size1000 - ShExML Size100000           60 3.96 232  15.160  <.0001
    ##  ShExML Size1000 - sheXer Size1000000         -31 3.96 232  -7.833  <.0001
    ##  ShExML Size1000 - ShExML Size1000000         173 3.96 232  43.712  <.0001
    ##  sheXer Size10000 - ShExML Size10000          -90 3.96 232 -22.741  <.0001
    ##  sheXer Size10000 - sheXer Size100000         -30 3.96 232  -7.580  <.0001
    ##  sheXer Size10000 - ShExML Size100000         -60 3.96 232 -15.160  <.0001
    ##  sheXer Size10000 - sheXer Size1000000       -151 3.96 232 -38.154  <.0001
    ##  sheXer Size10000 - ShExML Size1000000         53 3.96 232  13.392  <.0001
    ##  ShExML Size10000 - sheXer Size100000          60 3.96 232  15.160  <.0001
    ##  ShExML Size10000 - ShExML Size100000          30 3.96 232   7.580  <.0001
    ##  ShExML Size10000 - sheXer Size1000000        -61 3.96 232 -15.413  <.0001
    ##  ShExML Size10000 - ShExML Size1000000        143 3.96 232  36.132  <.0001
    ##  sheXer Size100000 - ShExML Size100000        -30 3.96 232  -7.580  <.0001
    ##  sheXer Size100000 - sheXer Size1000000      -121 3.96 232 -30.573  <.0001
    ##  sheXer Size100000 - ShExML Size1000000        83 3.96 232  20.972  <.0001
    ##  ShExML Size100000 - sheXer Size1000000       -91 3.96 232 -22.993  <.0001
    ##  ShExML Size100000 - ShExML Size1000000       113 3.96 232  28.552  <.0001
    ##  sheXer Size1000000 - ShExML Size1000000      204 3.96 232  51.545  <.0001
    ##       d
    ##   -9.79
    ##   -1.96
    ##   -7.83
    ##   -3.91
    ##   -5.87
    ##  -11.81
    ##    1.50
    ##    7.83
    ##    1.96
    ##    5.87
    ##    3.91
    ##   -2.02
    ##   11.29
    ##   -5.87
    ##   -1.96
    ##   -3.91
    ##   -9.85
    ##    3.46
    ##    3.91
    ##    1.96
    ##   -3.98
    ##    9.33
    ##   -1.96
    ##   -7.89
    ##    5.41
    ##   -5.94
    ##    7.37
    ##   13.31
    ## 
    ## P value adjustment: tukey method for comparing a family of 8 estimates

# Setting up the logarithmic scale

``` r
datasetSHACLLog <- datasetSHACL
datasetSHACLLog$ElapsedTime_ms <- log(datasetSHACLLog$ElapsedTime_ms)

datasetShExLog <- datasetShEx
datasetShExLog$ElapsedTime_ms <- log(datasetShExLog$ElapsedTime_ms)
```

# Comparing linear scale on SHACL

``` r
ggline(datasetSHACL, x = "Size",
      y = "ElapsedTime_ms",
      color = "Tool",
      add = "mean_sd")
```

![](performanceIncrementEvaluationAnalysis_files/figure-markdown_github/unnamed-chunk-11-1.png)

# Comparing logarithmic scale on SHACL

``` r
ggline(datasetSHACLLog, x = "Size",
      y = "ElapsedTime_ms",
      ylab = "Elapsed Time (log(ms))",
      color = "Tool",
      add = "mean_sd")
```

![](performanceIncrementEvaluationAnalysis_files/figure-markdown_github/unnamed-chunk-12-1.png)

# Comparing linear scale on ShEx

``` r
ggline(datasetShEx, x = "Size",
      y = "ElapsedTime_ms",
      color = "Tool",
      add = "mean_sd")
```

![](performanceIncrementEvaluationAnalysis_files/figure-markdown_github/unnamed-chunk-13-1.png)

# Comparing logarithmic scale on ShEx

``` r
ggline(datasetShExLog, x = "Size",
      y = "ElapsedTime_ms",
      ylab = "Elapsed Time (log(ms))",
      color = "Tool",
      add = "mean_sd")
```

![](performanceIncrementEvaluationAnalysis_files/figure-markdown_github/unnamed-chunk-14-1.png)

# Comparing ShEx and SHACL generation times on sheXer

``` r
datasetShexer <- dataset[(dataset$Tool == "sheXer"), ]
datasetShexer$Size <- factor(datasetShexer$Size)
datasetShexer$ShapesLanguage <- factor(datasetShexer$ShapesLanguage)

model = art(ElapsedTime_ms ~ ShapesLanguage + (1 | Size), data=datasetShexer)
marginal = art.con(model, "ShapesLanguage", adjust="tukey")

Result = anova(model)
Result$part.eta.sq = with(Result, `F` * `Df` / (`F` * `Df` + `Df.res`))
Result
```

    ## Analysis of Variance of Aligned Rank Transformed Data
    ## 
    ## Table Type: Analysis of Deviance Table (Type III Wald F tests with Kenward-Roger df) 
    ## Model: Mixed Effects (lmer)
    ## Response: art(ElapsedTime_ms)
    ## 
    ##                       F Df Df.res   Pr(>F) part.eta.sq  
    ## 1 ShapesLanguage 5.1419  1    235 0.024264    0.021412 *
    ## ---
    ## Signif. codes:   0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
marginal
```

    ##  contrast     estimate   SE  df t.ratio p.value
    ##  SHACL - ShEx    -5.07 2.23 235  -2.268  0.0243
    ## 
    ## Degrees-of-freedom method: kenward-roger

``` r
lm = artlm(model, "ShapesLanguage")
contrasts = summary(pairs(emmeans(lm, ~ ShapesLanguage)))

contrasts$d = contrasts$estimate / sigmaHat(lm)
contrasts
```

    ##  contrast     estimate   SE  df t.ratio p.value      d
    ##  SHACL - ShEx    -5.07 2.23 235  -2.268  0.0243 -0.293
    ## 
    ## Degrees-of-freedom method: kenward-roger

# Running the ART tool including post hoc tests and effect size for sheXer

``` r
model = art(ElapsedTime_ms ~ ShapesLanguage + Size + ShapesLanguage:Size, data=datasetShexer)
marginal = art.con(model, "ShapesLanguage:Size", adjust="tukey")

Result = anova(model)
Result$part.eta.sq = with(Result, `Sum Sq`/(`Sum Sq` + `Sum Sq.res`))
Result
```

    ## Analysis of Variance of Aligned Rank Transformed Data
    ## 
    ## Table Type: Anova Table (Type III tests) 
    ## Model: No Repeated Measures (lm)
    ## Response: art(ElapsedTime_ms)
    ## 
    ##                       Df Df.res   F value     Pr(>F) part.eta.sq    
    ## 1 ShapesLanguage       1    232   20.6159 9.0196e-06    0.081610 ***
    ## 2 Size                 3    232 1259.2486 < 2.22e-16    0.942141 ***
    ## 3 ShapesLanguage:Size  3    232    6.5407 0.00028995    0.077982 ***
    ## ---
    ## Signif. codes:   0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
lm = artlm(model, "ShapesLanguage:Size")
contrasts = summary(pairs(emmeans(lm, ~ ShapesLanguage:Size)))

contrasts$d = contrasts$estimate / sigmaHat(lm)
contrasts
```

    ##  contrast                             estimate   SE  df t.ratio p.value       d
    ##  SHACL Size1000 - ShEx Size1000         -67.35 14.1 232  -4.771  0.0001 -1.2319
    ##  SHACL Size1000 - SHACL Size10000         5.08 14.1 232   0.360  1.0000  0.0930
    ##  SHACL Size1000 - ShEx Size10000        -55.57 14.1 232  -3.936  0.0027 -1.0164
    ##  SHACL Size1000 - SHACL Size100000      -33.92 14.1 232  -2.403  0.2450 -0.6204
    ##  SHACL Size1000 - ShEx Size100000       -41.85 14.1 232  -2.965  0.0649 -0.7655
    ##  SHACL Size1000 - SHACL Size1000000      51.48 14.1 232   3.647  0.0078  0.9417
    ##  SHACL Size1000 - ShEx Size1000000       55.05 14.1 232   3.900  0.0031  1.0069
    ##  ShEx Size1000 - SHACL Size10000         72.43 14.1 232   5.131  <.0001  1.3249
    ##  ShEx Size1000 - ShEx Size10000          11.78 14.1 232   0.835  0.9909  0.2155
    ##  ShEx Size1000 - SHACL Size100000        33.43 14.1 232   2.368  0.2620  0.6115
    ##  ShEx Size1000 - ShEx Size100000         25.50 14.1 232   1.806  0.6163  0.4664
    ##  ShEx Size1000 - SHACL Size1000000      118.83 14.1 232   8.418  <.0001  2.1736
    ##  ShEx Size1000 - ShEx Size1000000       122.40 14.1 232   8.671  <.0001  2.2389
    ##  SHACL Size10000 - ShEx Size10000       -60.65 14.1 232  -4.297  0.0007 -1.1094
    ##  SHACL Size10000 - SHACL Size100000     -39.00 14.1 232  -2.763  0.1097 -0.7134
    ##  SHACL Size10000 - ShEx Size100000      -46.93 14.1 232  -3.325  0.0226 -0.8585
    ##  SHACL Size10000 - SHACL Size1000000     46.40 14.1 232   3.287  0.0254  0.8487
    ##  SHACL Size10000 - ShEx Size1000000      49.97 14.1 232   3.540  0.0112  0.9140
    ##  ShEx Size10000 - SHACL Size100000       21.65 14.1 232   1.534  0.7884  0.3960
    ##  ShEx Size10000 - ShEx Size100000        13.72 14.1 232   0.972  0.9780  0.2509
    ##  ShEx Size10000 - SHACL Size1000000     107.05 14.1 232   7.584  <.0001  1.9581
    ##  ShEx Size10000 - ShEx Size1000000      110.62 14.1 232   7.836  <.0001  2.0233
    ##  SHACL Size100000 - ShEx Size100000      -7.93 14.1 232  -0.562  0.9993 -0.1451
    ##  SHACL Size100000 - SHACL Size1000000    85.40 14.1 232   6.050  <.0001  1.5621
    ##  SHACL Size100000 - ShEx Size1000000     88.97 14.1 232   6.303  <.0001  1.6273
    ##  ShEx Size100000 - SHACL Size1000000     93.33 14.1 232   6.612  <.0001  1.7072
    ##  ShEx Size100000 - ShEx Size1000000      96.90 14.1 232   6.865  <.0001  1.7724
    ##  SHACL Size1000000 - ShEx Size1000000     3.57 14.1 232   0.253  1.0000  0.0652
    ## 
    ## P value adjustment: tukey method for comparing a family of 8 estimates

# Comparing linear scale on sheXer

``` r
ggline(datasetShexer, x = "Size",
      y = "ElapsedTime_ms",
      color = "ShapesLanguage",
      add = "mean_sd")
```

![](performanceIncrementEvaluationAnalysis_files/figure-markdown_github/unnamed-chunk-17-1.png)

# Comparing logarithmic scale on sheXer

``` r
datasetShexerLog <- datasetShexer
datasetShexerLog$ElapsedTime_ms <- log(datasetShexerLog$ElapsedTime_ms)

ggline(datasetShexerLog, x = "Size",
      y = "ElapsedTime_ms",
      color = "ShapesLanguage",
      add = "mean_sd")
```

![](performanceIncrementEvaluationAnalysis_files/figure-markdown_github/unnamed-chunk-18-1.png)

# Comparing ShEx and SHACL generation times on ShExML

``` r
datasetShExML <- dataset[(dataset$Tool == "ShExML"), ]
datasetShExML$Size <- factor(datasetShExML$Size)
datasetShExML$ShapesLanguage <- factor(datasetShExML$ShapesLanguage)

model = art(ElapsedTime_ms ~ ShapesLanguage + (1 | Size), data=datasetShExML)
marginal = art.con(model, "ShapesLanguage", adjust="tukey")

Result = anova(model)
Result$part.eta.sq = with(Result, `F` * `Df` / (`F` * `Df` + `Df.res`))
Result
```

    ## Analysis of Variance of Aligned Rank Transformed Data
    ## 
    ## Table Type: Analysis of Deviance Table (Type III Wald F tests with Kenward-Roger df) 
    ## Model: Mixed Effects (lmer)
    ## Response: art(ElapsedTime_ms)
    ## 
    ##                       F Df Df.res   Pr(>F) part.eta.sq    
    ## 1 ShapesLanguage 23.005  1    235 2.87e-06    0.089167 ***
    ## ---
    ## Signif. codes:   0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
marginal
```

    ##  contrast     estimate   SE  df t.ratio p.value
    ##  SHACL - ShEx     10.3 2.16 235   4.796  <.0001
    ## 
    ## Degrees-of-freedom method: kenward-roger

``` r
lm = artlm(model, "ShapesLanguage")
contrasts = summary(pairs(emmeans(lm, ~ ShapesLanguage)))

contrasts$d = contrasts$estimate / sigmaHat(lm)
contrasts
```

    ##  contrast     estimate   SE  df t.ratio p.value     d
    ##  SHACL - ShEx     10.3 2.16 235   4.796  <.0001 0.619
    ## 
    ## Degrees-of-freedom method: kenward-roger

# Running the ART tool including post hoc tests and effect size for ShExML

``` r
model = art(ElapsedTime_ms ~ ShapesLanguage + Size + ShapesLanguage:Size, data=datasetShExML)
marginal = art.con(model, "ShapesLanguage:Size", adjust="tukey")

Result = anova(model)
Result$part.eta.sq = with(Result, `Sum Sq`/(`Sum Sq` + `Sum Sq.res`))
Result
```

    ## Analysis of Variance of Aligned Rank Transformed Data
    ## 
    ## Table Type: Anova Table (Type III tests) 
    ## Model: No Repeated Measures (lm)
    ## Response: art(ElapsedTime_ms)
    ## 
    ##                       Df Df.res   F value     Pr(>F) part.eta.sq    
    ## 1 ShapesLanguage       1    232   67.5253 1.4668e-14     0.22544 ***
    ## 2 Size                 3    232 1184.4669 < 2.22e-16     0.93871 ***
    ## 3 ShapesLanguage:Size  3    232    9.6052 5.2950e-06     0.11048 ***
    ## ---
    ## Signif. codes:   0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

``` r
lm = artlm(model, "ShapesLanguage:Size")
contrasts = summary(pairs(emmeans(lm, ~ ShapesLanguage:Size)))

contrasts$d = contrasts$estimate / sigmaHat(lm)
contrasts
```

    ##  contrast                             estimate   SE  df t.ratio p.value       d
    ##  SHACL Size1000 - ShEx Size1000          84.27 15.1 232   5.571  <.0001  1.4385
    ##  SHACL Size1000 - SHACL Size10000        -1.87 15.1 232  -0.123  1.0000 -0.0319
    ##  SHACL Size1000 - ShEx Size10000         85.33 15.1 232   5.642  <.0001  1.4567
    ##  SHACL Size1000 - SHACL Size100000        3.00 15.1 232   0.198  1.0000  0.0512
    ##  SHACL Size1000 - ShEx Size100000        91.50 15.1 232   6.049  <.0001  1.5619
    ##  SHACL Size1000 - SHACL Size1000000      66.00 15.1 232   4.363  0.0005  1.1266
    ##  SHACL Size1000 - ShEx Size1000000       58.97 15.1 232   3.898  0.0031  1.0066
    ##  ShEx Size1000 - SHACL Size10000        -86.13 15.1 232  -5.695  <.0001 -1.4703
    ##  ShEx Size1000 - ShEx Size10000           1.07 15.1 232   0.071  1.0000  0.0182
    ##  ShEx Size1000 - SHACL Size100000       -81.27 15.1 232  -5.373  <.0001 -1.3872
    ##  ShEx Size1000 - ShEx Size100000          7.23 15.1 232   0.478  0.9997  0.1235
    ##  ShEx Size1000 - SHACL Size1000000      -18.27 15.1 232  -1.208  0.9291 -0.3118
    ##  ShEx Size1000 - ShEx Size1000000       -25.30 15.1 232  -1.673  0.7049 -0.4319
    ##  SHACL Size10000 - ShEx Size10000        87.20 15.1 232   5.765  <.0001  1.4885
    ##  SHACL Size10000 - SHACL Size100000       4.87 15.1 232   0.322  1.0000  0.0831
    ##  SHACL Size10000 - ShEx Size100000       93.37 15.1 232   6.173  <.0001  1.5938
    ##  SHACL Size10000 - SHACL Size1000000     67.87 15.1 232   4.487  0.0003  1.1585
    ##  SHACL Size10000 - ShEx Size1000000      60.83 15.1 232   4.022  0.0020  1.0384
    ##  ShEx Size10000 - SHACL Size100000      -82.33 15.1 232  -5.443  <.0001 -1.4055
    ##  ShEx Size10000 - ShEx Size100000         6.17 15.1 232   0.408  0.9999  0.1053
    ##  ShEx Size10000 - SHACL Size1000000     -19.33 15.1 232  -1.278  0.9061 -0.3300
    ##  ShEx Size10000 - ShEx Size1000000      -26.37 15.1 232  -1.743  0.6589 -0.4501
    ##  SHACL Size100000 - ShEx Size100000      88.50 15.1 232   5.851  <.0001  1.5107
    ##  SHACL Size100000 - SHACL Size1000000    63.00 15.1 232   4.165  0.0011  1.0754
    ##  SHACL Size100000 - ShEx Size1000000     55.97 15.1 232   3.700  0.0065  0.9554
    ##  ShEx Size100000 - SHACL Size1000000    -25.50 15.1 232  -1.686  0.6964 -0.4353
    ##  ShEx Size100000 - ShEx Size1000000     -32.53 15.1 232  -2.151  0.3857 -0.5554
    ##  SHACL Size1000000 - ShEx Size1000000    -7.03 15.1 232  -0.465  0.9998 -0.1201
    ## 
    ## P value adjustment: tukey method for comparing a family of 8 estimates

# Comparing linear scale on ShExML

``` r
ggline(datasetShExML, x = "Size",
      y = "ElapsedTime_ms",
      color = "ShapesLanguage",
      add = "mean_sd")
```

![](performanceIncrementEvaluationAnalysis_files/figure-markdown_github/unnamed-chunk-21-1.png)

# Comparing logarithmic scale on ShExML

``` r
datasetShExMLLog <- datasetShExML
datasetShExMLLog$ElapsedTime_ms <- log(datasetShExMLLog$ElapsedTime_ms)

ggline(datasetShExMLLog, x = "Size",
      y = "ElapsedTime_ms",
      color = "ShapesLanguage",
      add = "mean_sd")
```

![](performanceIncrementEvaluationAnalysis_files/figure-markdown_github/unnamed-chunk-22-1.png)
