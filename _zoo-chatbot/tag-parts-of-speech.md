The [tokens](#:tutorial/tokenize.adoc) that constitute the chat message
are tagged with part-of-speech labels such as word classes and
punctuation marks. For example, a token may be a word and that word may
be a verb. This allows the chatbot to better understand the context of
the tokens and the structure of the message.

Zoo Chatbot uses the [Penn
Treebank,window=\_blank](https://www.ling.upenn.edu/courses/Fall_2003/ling001/penn_treebank_pos.html)
part-of-speech tags. For example, a plural noun is denoted by `NNS`.

# Example request

Send the following tokenized message:

**POST /zoo-chatbot/tag-parts-of-speech**

# Response

Notice that `any` is identified as a determiner and `giraffes` is
identified as a plural noun. The full stop denotes the end of a
sentence:

**Response**
