---
layout: page
title: Classify a handwritten number
parent: Tutorial
nav_order: 2
---

# Classify a handwritten number
{: .no_toc }

This endpoint classifies any image of a handwritten number that conforms to the [image format](#image-format). 
A neural network trained on the
[MNIST database of handwritten digits](https://en.wikipedia.org/wiki/MNIST_database){:target="_blank"}
performs the classification.

{% include training-duration-warning.md %}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Handwritten-zero request

Send the following request to explicitly process the same image
processed by the [Classify a handwritten zero]({% link _handwriting-recogniser/tutorial/classify-handwritten-zero.md %})
endpoint
<img src="https://github.com/jon-hatfield-tech-writing/ai-demo/blob/main/src/main/resources/images/0.png?raw=true" alt="0" width="20" height="20" />:

{: .http-request }
POST /handwriting-recogniser/classify-handwritten-number
{% highlight json %}
{% include handwritten-number-request-zero.json %}
{% endhighlight %}

# Response

{% include data-truncation-note.md %}

Notice that the image is recognised as `0`, with a high probability of correctness:

{: .http-request }
Response
{% highlight json %}
{% include handwritten-zero-response.json %}
{% endhighlight %}

# Ambiguous request

Send the following request to process an ambiguous image of a three that looks like an eight
<img src="https://github.com/jon-hatfield-tech-writing/ai-demo/blob/main/src/main/resources/images/3-that-looks-like-8.png?raw=true" alt="3-like-8" width="20" height="20" />:

{: .http-request }
POST /handwriting-recogniser/classify-handwritten-number
{% highlight json %}
{% include handwritten-3-like-8-request.json %}
{% endhighlight %}

# Response

{% include data-truncation-note.md %}

Notice that the image is recognised as `3`, with a lower probability of correctness than the less ambiguous
[handwritten zero](#handwritten-zero-request). Also notice that the second most probable match is `8`:

{: .http-request }
Response
{% highlight json %}
{% include handwritten-3-like-8-response.json %}
{% endhighlight %}

# Custom request

Create a new image to experiment with the image recognition capabilities.

## Image format

The image format is based on the [MNIST database format](https://en.wikipedia.org/wiki/MNIST_database){:target="_blank"}. 
Images must have the following properties:

* Resemble a number from zero to nine
* Written in white with a black background
* Sized 28x28 pixels
* PNG format

Place the image in the 
[images source folder](https://github.com/jon-hatfield-tech-writing/ai-demo/tree/main/src/main/resources/images){:target="_blank"}:
`src/main/resources/images`.

{% include restart-application-important.md %}

Verify registration via the
[List example input images]({% link _handwriting-recogniser/tutorial/list-example-input-images.md %}) endpoint.

## Request body

Send a request structured as per the [handwritten-zero request](#handwritten-zero-request), substituting `fileName` with the
name of the created image.

# Response

Expect a response structured as per the [handwritten-zero response](#response). Notice that the legibility of the
handwritten number corresponds to the probability of correctness.

<br />
{% include components/breadcrumbs.html %}