A chat message must first be tokenized into its constituent natural
language constructs such as words and punctuation marks. This allows
meaning to subsequently be attached to each part of the message.

# Basic request

Send the following chat request:

**POST /zoo-chatbot/tokenize**

# Response

Notice how the message is split into two words and a question mark, with
high probabilities of correctness:

**Response**

# Erroneous request

Chatbots must deal with typos and grammatical mistakes. Send the
following request which contains such errors:

**POST /zoo-chatbot/tokenize**

# Response

Notice that the probabilities of correctness of the tokens are lower for
the erroneous parts of the message:

**Response**
