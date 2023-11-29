---
layout: page
title: Classify a handwritten zero
parent: Tutorial
nav_order: 1
---

# Classify a handwritten zero
{: .no_toc }

This endpoint classifies an image of a handwritten zero
<img src="https://github.com/jon-hatfield-tech-writing/ai-demo/blob/main/src/main/resources/images/0.png?raw=true" alt="0" width="20" height="20" />
that has been provided by [DJL](http://djl.ai){:target="_blank"}. A neural network trained on the 
[MNIST database of handwritten digits](https://en.wikipedia.org/wiki/MNIST_database){:target="_blank"}
performs the classification.

{% include training-duration-warning.md %}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Request

Send the following empty POST request:

{: .http-request }
POST /handwriting-recogniser/classify-handwritten-zero

# Response

{% include data-truncation-note.md %}

Notice that the image is recognised as `0`, with a high probability of
correctness:

{: .http-request }
Response
{% highlight json %}
{% include handwritten-zero-response.json %}
{% endhighlight %}

<br />
{% include components/breadcrumbs.html %}