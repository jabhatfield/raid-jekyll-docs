---
layout: page
title: Chat
parent: Tutorial
nav_order: 5
---

# Chat
{: .no_toc }

The chat endpoint uses all the previous techniques to prepare a message:

1. [Tokenization]({% link _zoo-chatbot/tutorial/tokenize.md %})
2. [Part-of-speech tagging]({% link _zoo-chatbot/tutorial/tag-parts-of-speech.md %})
3. [Lemmatization]({% link _zoo-chatbot/tutorial/lemmatize.md %})

The chatbot is then trained on 
[lemmatized classification data]({% link _zoo-chatbot/tutorial/list-lemmatized-classification-data.md %}), which maps
various potential input expressions to a set of 
[possible chat responses]({% link _zoo-chatbot/tutorial/list-possible-chat-responses.md %}). 
Finally, the endpoint replies with the most probable response from the set of possible responses.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Example request

Send the following chat message:

{: .http-request }
POST /zoo-chatbot/chat
{% highlight json %}
{% include chat-request.json %}
{% endhighlight %}

# Response

{% include data-truncation-note.md %}

Notice that the most relevant reply is returned:

{: .http-request }
Response
{% highlight json %}
{% include chat-response.json %}
{% endhighlight %}

<br />
{% include components/breadcrumbs.html %}