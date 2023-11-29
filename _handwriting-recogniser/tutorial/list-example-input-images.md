---
layout: page
title: List example input images
parent: Tutorial
nav_order: 3
---

# List example input images
{: .no_toc }

This endpoint returns the names of the example images available for classification.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Request

Send the following request:

{: .http-request }
GET /handwriting-recogniser/example-input-images

# Response

Notice that the image names correspond to `fileName` in the
[Classify a handwritten number]({% link _handwriting-recogniser/tutorial/classify-handwritten-number.md %})
example requests:

{: .http-request }
Response
{% highlight json %}
{% include example-input-images-response.json %}
{% endhighlight %}

<br />
{% include components/breadcrumbs.html %}
