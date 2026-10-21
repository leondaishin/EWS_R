# Erster Code bei R mit EWS (3. Semester)

### Frage: Was ist die Wahrscheinlichkeit des Ereignisses {2} 
### bei einem einmaligen Wurf eines Würfels? 
### Intuitiv: Man wiederholt das Werfen sehr oft um die 
### relative Wahrscheinlichkeit zu bestimmen, approximieren. 
### Hier machen wir n = 100000 also 100k würfe 

# Einmal ausführen, falls ggplot2 noch nicht installiert ist:
# install.packages("ggplot2")

library(ggplot2)

# Gesamtanzahl der Würfe
n <- 100000

df <- data.frame(
  anzahl_wuerfe = 1:n,
  abs_hf = cumsum(
    sample(1:6, n, replace = TRUE) == 2
  )
)

p <- ggplot(df, aes(
  x = anzahl_wuerfe,
  y = abs_hf / anzahl_wuerfe
)) +
  geom_line() +
  geom_hline(
    yintercept = 1 / 6,
    colour = "blue",
    linetype = 2
  ) +
  xlab("Anzahl Würfe") +
  ylab("Relative Häufigkeit der Zahl 2") +
  theme_light()

print(p)