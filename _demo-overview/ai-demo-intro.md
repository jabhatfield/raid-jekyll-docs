---
layout: page
title: Introduction
nav_order: 1
redirect_from:
- /
img-brain-index: 1
img-definitions-index: 2
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

* [Zoo Chatbot]({% link _zoo-chatbot/zoo-chatbot-intro.md %}) (ML): enquires about a zoo, based on 
[Apache OpenNLP](https://opennlp.apache.org){:target="_blank"} **natural language processing** (**NLP**).

* [Handwriting Recogniser]({% link _handwriting-recogniser/handwriting-recogniser-intro.md %}) (DL): recognition of 
handwritten digits, based on [Deep Java Library](https://djl.ai){:target="_blank"} (**DJL**) image recognition.

# Definitions of machine learning and deep learning

ML is a subset of AI and DL is a subset of ML:

<figure>
<img src="/assets/images/ai-ml-dl-purple.png" alt="AI vs ML vs DL" />
<figcaption>Figure {{page.img-definitions-index}}. AI vs. ML vs. DL</figcaption>
</figure>

## Machine learning

* Typically involves providing an algorithm with example input and corresponding output data, then letting the algorithm run
iteratively to learn the nature of these mappings

* Iteratively adjusts its parameters and compares its calculated output, derived from the input, to the defined output

* Once the model is trained in this manner it can predict the classification of relevant input

## Deep learning

* Similar to ML in that it also learns through an iterative algorithm

* Typically uses much more input data and stores its calculations in a neural network structure

* The data and relationships of data are stored as nodes and weighted vectors

* Powerful enough to learn on its own, without provision of example output

For a deeper understanding of the inner workings of ML and DL, see these
deep dives:

* [Zoo Chatbot deep dive]({% link _zoo-chatbot/zoo-chatbot-deep-dive.md %})

* [Handwriting Recogniser deep dive]({% link _handwriting-recogniser/handwriting-recogniser-deep-dive.md %})

<!-- Pagination links -->
<div class="Previous-next">
  {% if page.previous.url %}
    <a class="previous" href="{{page.previous.url}}">&laquo; {{page.previous.title}}</a>
  {% endif %}
  {% if page.next.url %}
    <a class="next" href="{{page.next.url}}">{{page.next.title}} &raquo;</a>
  {% endif %}
</div>