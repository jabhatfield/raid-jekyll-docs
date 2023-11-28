---
layout: page
title: Install and run quickstart
nav_order: 2
---

# Install and run quickstart
{: .no_toc }

Follow this quickstart to achieve the following operations:

* [x] Send a chat message to the [Zoo Chatbot]({% link _zoo-chatbot/zoo-chatbot-intro.md %}) and receive an answer.

* [x] Send an image of a handwritten number to the
[Handwriting Recogniser]({% link _handwriting-recogniser/handwriting-recogniser-intro.md %}) and receive its 
numerical value.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Prerequisites

* Java version 17 or higher. [OpenJDK](https://openjdk.org){:target="_blank"} downloaded via
[SDKMAN!](https://sdkman.io){:target="_blank"} is recommended

* [Git](https://git-scm.com/downloads){:target="_blank"}

# Build

Clone the code from [GitHub](https://github.com/jon-hatfield-tech-writing/ai-demo){:target="_blank"}
then use an IDE or the command line to continue.

## Build with an IDE

Import the code as a Java project. [IntelliJ](https://www.jetbrains.com/idea/){:target="_blank"} is recommended.

RAID uses [Lombok](https://projectlombok.org){:target="_blank"} to reduce boilerplate code. Ensure that the IDE has a 
Lombok plugin and that annotation processing is enabled.

## Build with the command line

Go into the project root folder and build an executable JAR as follows:

    $ ./gradlew bootJar

# Run

Ensure RAID is [built](#build) then run it with an IDE or the command line.

## Run with an IDE

Open `AIDemoApplication.java` and run the `main` method using the IDE **Play** button.

## Run with the command line

Go into the project root folder and run the executable JAR as follows:

    $ java -jar build/libs/demo-0.0.1-SNAPSHOT.jar

# Use the RESTful API

Access the API on the root context path `/`:

    http://localhost:8080/

The easiest way to call the API operations is to [use the Swagger UI]({% link _demo-overview/api-spec.md %}). 
Alternatively, use [Postman](https://www.postman.com){:target="_blank"} or `curl` and ensure that the `Content-Type` 
header is set to `application/json`.

## Send a chat message

Send the following chat request:

{: .http-request }
POST /zoo-chatbot/chat
{% highlight json %}
{% include chat-request.json %}
{% endhighlight %}

The response is as follows:

{% include data-truncation-note.md %}

_Response_
{% highlight json %}
{% include chat-response.json %}
{% endhighlight %}

## Send an image of a handwritten number

Send the following image recognition request:

{: .http-request }
POST /handwriting-recogniser/classify-handwritten-number
{% highlight json %}
{% include handwritten-number-request-zero.json %}
{% endhighlight %}

The response is as follows:

{% include data-truncation-note.md %}

_Response_
{% highlight json %}
{% include handwritten-zero-response.json %}
{% endhighlight %}

# Learn more

* See the [Zoo Chatbot tutorial]({% link _zoo-chatbot/tutorial/chat-tutorial.md %})
to learn all the Zoo Chatbot operations.

* See the [Handwriting Recogniser tutorial]({% link _handwriting-recogniser/tutorial/handwriting-recogniser-tutorial.md %})
to learn all the Handwriting Recogniser operations.

* See the [API specification]({% link _demo-overview/api-spec.md %}) for the full specification.
