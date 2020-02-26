# Installation

1. Build the image with ```docker build . -t jamspell```

# Running
1. Run the command ```docker run -it jamspell bash```

# Training
Sample data is taken from http://peeter.eki.ee:5000/valence/paragraphsquery/
1. ```./main/jamspell train alphabet_et.txt postimees.txt estonski.bin```

# Using
```
import jamspell
corrector = jamspell.TSpellCorrector()
corrector.LoadLangModel('estonski.bin')

corrector.FixFragment('Mul on sur problem!')
```