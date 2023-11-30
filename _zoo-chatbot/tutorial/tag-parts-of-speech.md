---
layout: page
title: Tag parts of speech
parent: Tutorial
nav_order: 3
---

# Tag parts of speech
{: .no_toc }

The [tokens]({% link _zoo-chatbot/tutorial/tokenize.md %}) that constitute the chat message
are tagged with part-of-speech labels such as word classes and
punctuation marks. For example, a token may be a word and that word may
be a verb. This allows the chatbot to better understand the context of
the tokens and the structure of the message.

Zoo Chatbot uses the 
[Penn Treebank](https://www.ling.upenn.edu/courses/Fall_2003/ling001/penn_treebank_pos.html){:target="_blank"}
part-of-speech tags. For example, a plural noun is denoted by `NNS`.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Example request

Send the following tokenized message:

{: .http-request }
POST /zoo-chatbot/tag-parts-of-speech
{% highlight json %}
{% include pos-request.json %}
{% endhighlight %}

# Response

Notice that `any` is identified as a determiner and `giraffes` is
identified as a plural noun. The full stop denotes the end of a
sentence:

{: .http-request }
Response
{% highlight json %}
{% include pos-response.json %}
{% endhighlight %}

<br />
{% include components/breadcrumbs.html %}