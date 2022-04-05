
<!-- rnb-text-begin -->

---
title: "R Notebook"
output:
  pdf_document: default
  html_notebook: default
---

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaW5zdGFsbC5wYWNrYWdlcyh0aW55dGV4KVxuYGBgIn0= -->

```r
install.packages(tinytex)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiRXJyb3IgaW4gaW5zdGFsbC5wYWNrYWdlcyA6IG9iamVjdCAndGlueXRleCcgbm90IGZvdW5kXG4ifQ== -->

```
Error in install.packages : object 'tinytex' not found
```



<!-- rnb-output-end -->

<!-- rnb-output-begin eyJkYXRhIjoiRXJyb3IgaW4gLWluc3RhbGwucGFja2FnZXModGlueXRleCkgOiBpbnZhbGlkIGFyZ3VtZW50IHRvIHVuYXJ5IG9wZXJhdG9yXG4ifQ== -->

```
Error in -install.packages(tinytex) : invalid argument to unary operator
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubGlicmFyeShnZ3Bsb3QyKVxubGlicmFyeShwYWxtZXJwZW5ndWlucylcbmRhdGEocGVuZ3VpbnMpXG5WaWV3KHBlbmd1aW5zKVxuYGBgIn0= -->

```r
library(ggplot2)
library(palmerpenguins)
data(penguins)
View(penguins)
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuXG5nZ3Bsb3QoZGF0YSA9IHBlbmd1aW5zKSArXG5cbiAgZ2VvbV9wb2ludChtYXBwaW5nID0gYWVzKHggPSBmbGlwcGVyX2xlbmd0aF9tbSwgeSA9IGJvZHlfbWFzc19nKSlcblxuYGBgIn0= -->

```r

ggplot(data = penguins) +

  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->




<!-- rnb-text-end -->

