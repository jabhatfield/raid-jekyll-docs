This deep dive outlines the main concepts of the Zoo Chatbot inner
workings.

# Natural Language Processing

**Natural Language Processing** (**NLP**) is the leverage of computing
to understand language. It involves a variety of linguistic datasets, or
*corpora*, along with associated algorithms that transform this data
into language models. Zoo Chatbot implements
[OpenNLP,window=\_blank](https://opennlp.apache.org) to perform the
following NLP tasks, which are explained in following sections:

-   [Tokenization](#_tokenization)

-   [Part-of-speech tagging](#_part_of_speech_tagging)

-   [Lemmatization](#_lemmatization)

-   [Chat](#_chat)

# Tokenization

Zoo Chatbot tokenizes a message into its constituent parts, such as
words and punctuation marks, for subsequent [Part-of-speech
tagging](#_part_of_speech_tagging). Words are predominantly segmented by
white space, with punctuation marks potentially attached in the case of
abbreviations. Tokenization decisions are based on a pre-trained
[maximum entropy](#_maximum_entropy) model of tokenization data.

# Part-of-speech tagging

The [tokens](#_tokenization) are tagged with [Penn
Treebank,window=\_blank](https://www.ling.upenn.edu/courses/Fall_2003/ling001/penn_treebank_pos.html)
part-of-speech labels to indicate word classes and punctuation marks.
The choice of tag depends on the context in terms of surrounding tokens.
Tagging decisions are based on a pre-trained [maximum
entropy](#_maximum_entropy) model of tag data.

# Lemmatization

The [part-of-speech tags](#_part_of_speech_tagging) allow tokens to be
lemmatized, meaning words are converted into their base form. This
allows variants of the same word to be recognised. Lemmatization
decisions are based on a pre-trained statistical model of lemmatization
data. The training algorithm is based on a [PhD dissertation by Grzegorz
Chrupala,window=\_blank](https://grzegorz.chrupala.me/papers/phd-single.pdf)
and performs two main functions:

-   **Specialised suffixation:** many word inflections affect the
    suffix, for example *big* can become *bigger* or *biggest*. The
    lemma *big* is formed by traversing from the end of the inflected
    word and performing a series of insertions and deletions.

-   **Generalised prefixation and suffixation:** word forms inapplicable
    to specialised suffixation are traversed from both the beginning and
    the end to find the longest common substring, or *stem*. For
    example, the Polish words for *hard* and *hardest* are *trudny* and
    *najtrudniejszy* respectively, and they share the stem of *trudn*.
    The lemma *trudny* is formed through a series of insertions and
    deletions.

# Chat

The chatbot first implements the other techniques to prepare a message:

1.  [Tokenization](#_tokenization)

2.  [Part-of-speech tagging](#_part_of_speech_tagging)

3.  [Lemmatization](#_lemmatization)

The chatbot then trains a [maximum entropy](#_maximum_entropy) model of
[lemmatized classification
data](#tutorial/list-lemmatized-classification-data.adoc) in order to
choose the most probable response.

The training data must be converted from text into numerical values for
the training algorithm to interpret it. The chatbot implements the
bag-of-words model, which involves creating a set of unique words from
the data and counting their occurrences. A category with relatively more
occurrences of a word is more likely to be selected when that word is
present in the input. See the following simplified example based on a
small extract of the data:

**Extract of lemmatized classification data**

    opening-times what time do you open
    opening-times what be your open time
    opening-times what be your open hour

**Bag-of-words represented as an array of strings**

    ["bow=be", "bow=do", "bow=hour", "bow=open", "bow=time", "bow=what", "bow=you", "bow=your"]

**Word count represented as an array of integers**

    [2, 1, 1, 3, 2, 3, 1, 2]

# Maximum entropy

The maximum entropy algorithm finds a probability distribution that
maximises entropy, within constraints dictated by the data. Consider a
dice roll as an example. A dice roll has high entropy, meaning that it’s
unpredictable, with a uniformly spread out probability distribution (see
[???](#regular-dice-diagram)). Empirical training data will indicate
this uniform distribution and therefore impose no real constraint, since
the model already exhibits maximum entropy.

<figure>
<img src="regular-dice-green.png" alt="#regular-dice-diagram" />
<figcaption>Regular dice with high entropy</figcaption>
</figure>

Suppose the dice is weighted in favour of rolling a 6. A naive algorithm
might model the dice as always rolling a 6 and therefore indicate zero
entropy (see [???](#unrealistic-weighted-dice-diagram)). A lack of
entropy results in failure to represent outliers; however, as
illustrated in [???](#regular-dice-diagram), too much entropy results in
a vague model of randomness. A realistic weighted dice is somewhere
between the two probability distributions.

<figure>
<img src="unrealistic-weighted-dice-green.png"
alt="#unrealistic-weighted-dice-diagram" />
<figcaption>Unrealistic weighted dice with zero entropy</figcaption>
</figure>

Consider the same weighted dice modelled with maximum entropy. The
algorithm will maximise entropy by assigning importance to outliers
(values 1-5). However, the outliers will be considered less significant
than the more common value of 6 because the algorithm is constrained by
the data, which favours a value of 6. The model is specific enough to
show trends yet generic enough to include less common outcomes (see
[???](#realistic-weighted-dice-diagram)).

<figure>
<img src="realistic-weighted-dice-green.png"
alt="#realistic-weighted-dice-diagram" />
<figcaption>Realistic weighted dice with low entropy</figcaption>
</figure>

The Zoo Chatbot resembles this weighted dice example, except the
algorithm is constrained by the mapping of input data to output data
during training, as opposed to a favoured side of a dice. The maximum
entropy algorithm favours output based on the mappings whilst maximising
the probabilities of less likely outputs.

# Learn more

-   See the [???](#tutorial/chat-tutorial.adoc) for a practical guide of
    operations.

-   See the [???](#intro-component::api-spec.adoc) for the full
    specification.

Loading…
