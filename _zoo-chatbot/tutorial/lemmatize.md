---
layout: page
title: Lemmatize
parent: Tutorial
nav_order: 4
---

# Lemmatize
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

The [part-of-speech tags](#tutorial/tag-parts-of-speech.adoc) allow the
[tokens](#tutorial/tokenize.adoc) to be lemmatized. Lemmatization
involves turning a word into its base form, or *lemma*. For example, the
words `am`, `are` and `is` are all forms of the verb `be`. This process
allows variants of the same word to be recognised.

# Example request

Send the following set of tokens and associated part-of-speech tags:

**POST /zoo-chatbot/lemmatize**

# Response

Notice that the word `any` is already in its base form and the word
`giraffes` is converted to its base form of `giraffe`:

**Response**
