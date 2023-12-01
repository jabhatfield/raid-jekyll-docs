---
layout: page
title: List possible chat responses
parent: Tutorial
nav_order: 6
---

# List possible chat responses
{: .no_toc }

This endpoint returns the set of possible replies that the chatbot can
choose from. Each reply has a category, which is an identifier to link
the reply to its associated [training data]({% link _zoo-chatbot/tutorial/list-lemmatized-classification-data.md %}).

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Request

Send the following request:

{: .http-request }
GET /zoo-chatbot/possible-chat-responses

# Response

{% include data-truncation-note.md %}

Notice that the values of each category match the categories in the
[training data]({% link _zoo-chatbot/tutorial/list-lemmatized-classification-data.md %}):

{: .http-request }
Response
{% highlight json %}
{% include possible-responses-response.json %}
{% endhighlight %}

<br />
{% include components/breadcrumbs.html %}