# installation

```{r}
if (!requireNamespace("remotes")) {
  install.packages("remotes")
}
remotes::install_github("begavett/cheatR")
```

# Usage

## Get list of available cheatsheets

```{r}
csOptions()
```

## Display cheatsheet in Viewer

```{r}
cs("data-visualization-2.1")
```

## Using Addins

Cheatsheets can also be viewed by clicking on the Addins menu within the RStudio GUI.
