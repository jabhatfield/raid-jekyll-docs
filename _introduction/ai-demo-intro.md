---
layout: page
title: Introduction
img-brain-index: 1
---

# RESTful AI Demo
{: .no_toc }

<figure>
<img src="/assets/images/brain.jpg" alt="Brain neural network" />
<figcaption>Figure {{page.img-brain-index}}. Photo by <a href="https://unsplash.com/@growtika" target="_blank">Growtika</a> 
on <a href="https://unsplash.com/photos/f0JGorLOkw0" target="_blank">Unsplash</a>
</figcaption>
</figure>

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Introduction

**RESTful AI Demo** (**RAID**) is a simple set of APIs for learning
**machine learning** (**ML**) and **deep learning** (**DL**). It is
written in Java Spring Boot and consists of two components:

-   [Zoo Chatbot](#zoo-chatbot-component::zoo-chatbot-intro.adoc)(ML):
    enquires about a zoo, based on [Apache
    OpenNLP,window=\_blank](https://opennlp.apache.org) **natural
    language processing** (**NLP**).

-   [Handwriting
    Recogniser](#handwriting-recogniser-component::handwriting-recogniser-intro.adoc)(DL):
    recognition of handwritten digits, based on [Deep Java
    Library,window=\_blank](https://djl.ai) (**DJL**) image recognition.

# Definitions of machine learning and deep learning

ML is a subset of AI and DL is a subset of ML:

<figure>
<img src="ai-ml-dl.png" alt="AI vs ML vs DL" />
<figcaption>AI vs. ML vs. DL</figcaption>
</figure>

## Machine learning

-   Typically involves providing an algorithm with example input and
    corresponding output data, then letting the algorithm run
    iteratively to learn the nature of these mappings

-   Iteratively adjusts its parameters and compares its calculated
    output, derived from the input, to the defined output

-   Once the model is trained in this manner it can predict the
    classification of relevant input

## Deep learning

-   Similar to ML in that it also learns through an iterative algorithm

-   Typically uses much more input data and stores its calculations in a
    neural network structure

-   The data and relationships of data are stored as nodes and weighted
    vectors

-   Powerful enough to learn on its own, without provision of example
    output

For a deeper understanding of the inner workings of ML and DL, see these
deep dives:

-   [???](#zoo-chatbot-component::zoo-chatbot-deep-dive.adoc)

-   [???](#handwriting-recogniser-component::handwriting-recogniser-deep-dive.adoc)
