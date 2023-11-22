---
layout: page
title: List possible chat responses
parent: Tutorial
nav_order: 6
---

# List possible chat responses
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

This endpoint returns the set of possible replies that the chatbot can
choose from. Each reply has a category, which is an identifier to link
the reply to its associated [training
data](#tutorial/list-lemmatized-classification-data.adoc).

# Request

Send the following request:

<span class=".api-title">GET /zoo-chatbot/possible-chat-responses</span>

# Response

Notice that the values of each category match the categories in the
[training data](#tutorial/list-lemmatized-classification-data.adoc):

**Response**

<br />
{% include components/breadcrumbs.html %}