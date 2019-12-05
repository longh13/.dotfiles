# .dotfiles
Tous les fichiers de configurations dont j'ai besoin en cas d'install ou de réinstallation
S'inspire fortement de https://github.com/Grafikart/dotfiles.

## Packages & plugins

### Tmux et sa configuration
* Tmux plugins https://github.com/tmux-plugins
  * Liste les options les plus adoptées par les utilisateurs tmux https://github.com/tmux-plugins/tmux-sensible
  * Tmus resurrect https://github.com/tmux-plugins/tmux-resurrect
  * Tmux Plugin Manager https://github.com/tmux-plugins/tpm
  * Tmux gestion de la souris https://github.com/NHDaly/tmux-better-mouse-mode

## Firefox color (@grafikart.fr)
https://color.firefox.com/?theme=XQAAAAIUAQAAAAAAAABBqYhm849SCia2CaaEGccwS-xNKlhX7p_w-bFKDpbUJasOFEb7xDbBpLNSPVGezz8UbhQdB0GWAOD8ATi6goq1YnVG0pMl-SnqDQaOZUOSxI6hRIBBN9cVab3KfaEVnFT8UNixHiWH8LmtKyl93ZVGkBz-kvmbxdqRTnOGOGFU-foQOhnFUiStVUkW2aOPtoZpBAT0yl-BvxEp9675M_ZheGwrw9AtoVcGBsMl1TfdZDrqm1YIX837L_-cMyoA


## Remapper touches du clavier

Pour remplacer une touche par une autre. Je l'utilise pour remplacer la touche puissance 2 par un back-tick.

```
# On génère le fichier de map
xmodmap -pke > ~/.Xmodmap
# On trouve la clef a remap
xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
# On modifie le fichier Xmodmap et on teste avec
xmodmap ~/.Xmodmap
```

