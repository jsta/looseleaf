---
title: "Analyze mtcars"
questions:
- "Do heavier cars have worse mpg?"
objectives:
- "Plot car weight versus mpg."
keypoints:
- "Heavier cars have worse mpg."
---




~~~
library(ggplot2)

knitr::kable(head(mtcars))
~~~
{: .language-r}



|                  |  mpg| cyl| disp|  hp| drat|    wt|  qsec| vs| am| gear| carb|
|:-----------------|----:|---:|----:|---:|----:|-----:|-----:|--:|--:|----:|----:|
|Mazda RX4         | 21.0|   6|  160| 110| 3.90| 2.620| 16.46|  0|  1|    4|    4|
|Mazda RX4 Wag     | 21.0|   6|  160| 110| 3.90| 2.875| 17.02|  0|  1|    4|    4|
|Datsun 710        | 22.8|   4|  108|  93| 3.85| 2.320| 18.61|  1|  1|    4|    1|
|Hornet 4 Drive    | 21.4|   6|  258| 110| 3.08| 3.215| 19.44|  1|  0|    3|    1|
|Hornet Sportabout | 18.7|   8|  360| 175| 3.15| 3.440| 17.02|  0|  0|    3|    2|
|Valiant           | 18.1|   6|  225| 105| 2.76| 3.460| 20.22|  1|  0|    3|    1|


~~~
ggplot() + 
  geom_point(data = mtcars, aes(x = wt, y = mpg))
~~~
{: .language-r}

<img src="../fig/rmd-mpg_vs_wt-1.png" title="plot of chunk mpg_vs_wt" alt="plot of chunk mpg_vs_wt" style="display: block; margin: auto;" />
