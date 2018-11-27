NLP
NLU Evaluation

https://github.com/axa-group/nlp.js
https://github.com/axa-group/nlp.js-app

> First do it
>
> Then do it right
>
> Then do it better

Training data contains

- UTERANCE
- INTENT
- ENTITIES

And data is AUGMENTED

### tokenizer

aren't => are not

contraction replacer

> 0.8686

### extract meaning of a word

lemmatization

are, is => be

**stemmer**

> 0.8978

### Neural network

Brain.js over tensorflow.js

Activation function

- Sigmoid
- Hyperbolic tangent
- Relu
- Leaky reluc

Test all activations

> finetunning

### Conclusions (not yet)

Tune hyperparameters

### **Create one neural network per intent**

And ask them if this is for them

> 0.93

### Data augmentation

I want to go to Barcelona => I want to go to %CITY%

> 0.9380

### Mechanical tool
AMAZON MECHANICAL TOOL

### Conclusions (again)

Overfitting is dangerous

Accuracy is good predictions

Recall (false positives, false negatives)

---

# Language recognition

Library: Frank
NER

- Enum named entity recognition (list of possible values)
- Same with synonyms
- Allow mistakes with similar search (fast levestein)
- Regular expression entities

Context variables.

Slot filling

- ask for entties that the user didn't fill in
- forgets context variables
(maybe time degrades context variables?)

### The product

- It's a library
- It's javascript
- Can work offline
- Models are JSON files
