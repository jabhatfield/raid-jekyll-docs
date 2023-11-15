Follow this quickstart to achieve the following operations:

-   \[x\] Send a chat message to the
    [???](#zoo-chatbot-component::zoo-chatbot-intro.adoc) and receive an
    answer.

-   \[x\] Send an image of a handwritten number to the
    [???](#handwriting-recogniser-component::handwriting-recogniser-intro.adoc)
    and receive its numerical value.

# Prerequisites

-   Java version 17 or higher.
    [OpenJDK,window=\_blank](https://openjdk.org) downloaded via
    [SDKMAN!,window=\_blank](https://sdkman.io) is recommended

-   [Git,window=\_blank](https://git-scm.com/downloads)

# Build

Clone the code from
[GitHub,window=\_blank](https://github.com/jon-hatfield-tech-writing/ai-demo)
then use an IDE or the command line to continue.

## Build with an IDE

Import the code as a Java project.
[IntelliJ,window=\_blank](https://www.jetbrains.com/idea/) is
recommended.

RAID uses [Lombok,window=\_blank](https://projectlombok.org) to reduce
boilerplate code. Ensure that the IDE has a Lombok plugin and that
annotation processing is enabled.

## Build with the command line

Go into the project root folder and build an executable JAR as follows:

    $ ./gradlew bootJar

# Run

Ensure RAID is [built](#_build) then run it with an IDE or the command
line.

## Run with an IDE

Open `AIDemoApplication.java` and run the `main` method using the IDE
**Play** button.

## Run with the command line

Go into the project root folder and run the executable JAR as follows:

    $ java -jar build/libs/demo-0.0.1-SNAPSHOT.jar

# Use the RESTful API

Access the API on the root context path `/`:

    http://localhost:8080/

The easiest way to call the API operations is to [use the Swagger
UI](#api-spec.adoc). Alternatively, use
[Postman,window=\_blank](https://www.postman.com) or `curl` and ensure
that the `Content-Type` header is set to `application/json`.

## Send a chat message

Send the following chat request:

**POST /zoo-chatbot/chat**

The response is as follows:

**Response**

## Send an image of a handwritten number

Send the following image recognition request:

**POST /handwriting-recogniser/classify-handwritten-number**

The response is as follows:

**Response**

# Learn more

-   See the [???](#zoo-chatbot-component::tutorial/chat-tutorial.adoc)
    to learn all the Zoo Chatbot operations.

-   See the
    [???](#handwriting-recogniser-component::tutorial/handwriting-recogniser-tutorial.adoc)
    to learn all the Handwriting Recogniser operations.

-   See the [???](#api-spec.adoc) for the full specification.
