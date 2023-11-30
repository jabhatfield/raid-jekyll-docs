---
layout: page
title: Lemmatize
parent: Tutorial
nav_order: 4
---

# Lemmatize
{: .no_toc }

The [part-of-speech tags]({% link _zoo-chatbot/tutorial/tag-parts-of-speech.md %}) allow the
[tokens]({% link _zoo-chatbot/tutorial/tokenize.md %}) to be lemmatized. Lemmatization
involves turning a word into its base form, or *lemma*. For example, the
words `am`, `are` and `is` are all forms of the verb `be`. This process
allows variants of the same word to be recognised.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Example request

Send the following set of tokens and associated part-of-speech tags:

{: .http-request }
POST /zoo-chatbot/lemmatize
{% highlight json %}
{% include lemmatize-request.json %}
{% endhighlight %}

# Response

Notice that the word `any` is already in its base form and the word
`giraffes` is converted to its base form of `giraffe`:

{: .http-request }
Response
{% highlight json %}
{% include lemmatize-response.json %}
{% endhighlight %}

<br />
{% include components/breadcrumbs.html %}