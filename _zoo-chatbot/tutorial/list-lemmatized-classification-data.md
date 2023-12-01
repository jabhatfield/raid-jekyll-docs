---
layout: page
title: List lemmatized classification data
parent: Tutorial
nav_order: 7
---

# List lemmatized classification data
{: .no_toc }

This endpoint lists the lemmatized classification data used for training
the chatbot. It consists of lemmatized chat phrases that a user could
potentially type, along with their associated reply category.

Note the following two advantages of lemmatizing the training data:

* The input message data is [also lemmatized]({% link _zoo-chatbot/tutorial/lemmatize.md %}) and therefore aligns more 
closely when calculating a match.
* Less training data is required because fewer variants of words are required: variants converge onto their lemma.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Request

Send the following request:

{: .http-request }
GET /zoo-chatbot/lemmatized-classification-data

# Response

{% include data-truncation-note.md %}

Notice that the data is lemmatized:

{: .http-request }
Response
{% highlight json %}
{% include lemmatized-data-response.json %}
{% endhighlight %}

<br />
{% include components/breadcrumbs.html %}