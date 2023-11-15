---
layout: page
title: List lemmatized classification data
---

# List lemmatized classification data
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

This endpoint lists the lemmatized classification data used for training
the chatbot. It consists of lemmatized chat phrases that a user could
potentially type, along with their associated reply category.

Note the following two advantages of lemmatizing the training data:

-   The input message data is [also
    lemmatized](#tutorial/lemmatize.adoc) and therefore aligns more
    closely when calculating a match.

-   Less training data is required because fewer variants of words are
    required: variants converge onto their lemma.

# Request

Send the following request:

<span class=".api-title">GET
/zoo-chatbot/lemmatized-classification-data</span>

# Response

Notice that the data is lemmatized:

**Response**
