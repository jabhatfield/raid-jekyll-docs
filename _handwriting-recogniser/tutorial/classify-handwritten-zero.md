---
layout: page
title: Classify a handwritten zero
parent: Tutorial
nav_order: 1
---

# Classify a handwritten zero
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

This endpoint classifies an [image of a handwritten
zero,window=\_blank](https://resources.djl.ai/images/0.png)
![0](https://github.com/jon-hatfield-tech-writing/ai-demo/blob/main/src/main/resources/images/0.png?raw=true)
that has been provided by [DJL,window=\_blank](http://djl.ai). A neural
network trained on the [MNIST database of handwritten
digits,window=\_blank](https://en.wikipedia.org/wiki/MNIST_database)
performs the classification.

# Request

Send the following empty POST request:

<span class=".api-title">POST
/handwriting-recogniser/classify-handwritten-zero</span>

# Response

Notice that the image is recognised as `0`, with a high probability of
correctness:

**Response**

<br />
{% include components/breadcrumbs.html %}