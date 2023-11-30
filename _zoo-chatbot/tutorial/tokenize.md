---
layout: page
title: Tokenize
parent: Tutorial
nav_order: 2
---

# Tokenize
{: .no_toc }

A chat message must first be tokenized into its constituent natural
language constructs such as words and punctuation marks. This allows
meaning to subsequently be attached to each part of the message.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Basic request

Send the following chat request:

{: .http-request }
POST /zoo-chatbot/tokenize
{% highlight json %}
{% include tokenize-request.json %}
{% endhighlight %}

# Response

Notice how the message is split into two words and a question mark, with
high probabilities of correctness:

{: .http-request }
Response
{% highlight json %}
{% include tokenize-response.json %}
{% endhighlight %}

# Erroneous request

Chatbots must deal with typos and grammatical mistakes. Send the
following request which contains such errors:

{: .http-request }
POST /zoo-chatbot/tokenize
{% highlight json %}
{% include tokenize-request-messy.json %}
{% endhighlight %}

# Response

Notice that the probabilities of correctness of the tokens are lower for
the erroneous parts of the message:

{: .http-request }
Response
{% highlight json %}
{% include tokenize-response-messy.json %}
{% endhighlight %}

<br />
{% include components/breadcrumbs.html %}