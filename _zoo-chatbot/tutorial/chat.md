---
layout: page
title: Chat
parent: Zoo Chatbot tutorial
nav_order: 5
---

# Chat
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

The chat endpoint uses all the previous techniques to prepare a message:

1.  [Tokenization](#tutorial/tokenize.adoc)

2.  [Part-of-speech tagging](#tutorial/tag-parts-of-speech.adoc)

3.  [Lemmatization](#tutorial/lemmatize.adoc)

The chatbot is then trained on [lemmatized classification
data](#tutorial/list-lemmatized-classification-data.adoc), which maps
various potential input expressions to a set of [possible chat
responses](#tutorial/list-possible-chat-responses.adoc). Finally, the
endpoint replies with the most probable response from the set of
possible responses.

# Example request

Send the following chat message:

**POST /zoo-chatbot/chat**

# Response

Notice that the most relevant reply is returned:

**Response**
