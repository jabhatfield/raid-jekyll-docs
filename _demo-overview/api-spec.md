---
layout: page
title: API specification
nav_order: 3
---

# API specification
{: .no_toc }

RAID uses [Swagger](https://swagger.io/){:target="_blank"} to implement the
[OpenAPI Specification](https://swagger.io/specification/){:target="_blank"}.

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

# Swagger UI

Perform the following steps to view the API via the Swagger UI:

1.  Run the application locally by following the
[Install and run quickstart]({% link _demo-overview/install-and-run-quickstart.md %}).
2.  Go to <http://localhost:8080/swagger-ui/index.html>{:target="_blank"}.

## Run examples

The Swagger specification includes examples that can be run within the Swagger UI:

1.  Click on an API endpoint to expand it.
2.  Click **Try it out**.
3.  Click **Execute** to run the prepopulated example.
4.  Scroll down to view the response.

# Error codes

The Swagger specification includes the following error information:

* The structure of the JSON error response, which is standardized across all endpoints

* An example HTTP 400 response for each endpoint, where applicable due to the presence of input data

* An example HTTP 500 response for each endpoint

See the table below for a full list of possible errors:

| RAID error code        | HTTP status code          | Error message example                                                             | Zoo Chatbot                                                                                                     | Handwriting recogniser                                      |
|------------------------|---------------------------|-----------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------|
| 001_MISSING_FIELD      | 400 Bad Request           | Field 'message' is required                                                       | <img src="{{ "/assets/images/green-tick.svg" | absolute_url }}" alt="Green tick" width="20" height="20" /> | <img src="{{ "/assets/images/green-tick.svg" | absolute_url }}" alt="Green tick" width="20" height="20" /> |
| 002_EMPTY_ARRAY        | 400 Bad Request           | Array 'tokens' must be populated                                                  | <img src="{{ "/assets/images/green-tick.svg" | absolute_url }}" alt="Green tick" width="20" height="20" /> | <img src="{{ "/assets/images/red-cross.svg" | absolute_url }}" alt="Red cross" width="20" height="20" />  |
| 003_MISSING_IMAGE_FILE | 500 Internal Server Error | Image file '10.png' not found. Check the src/main/resources folder                | <img src="{{ "/assets/images/red-cross.svg"  | absolute_url }}" alt="Red cross" width="20" height="20" />  | <img src="{{ "/assets/images/green-tick.svg" | absolute_url }}" alt="Green tick" width="20" height="20" /> |
| 100_UNKNOWN_ERROR      | 500 Internal Server Error | Cannot invoke "String.toString()" because "response" is null. See log for details | <img src="{{ "/assets/images/green-tick.svg" | absolute_url }}" alt="Green tick" width="20" height="20" /> | <img src="{{ "/assets/images/green-tick.svg" | absolute_url }}" alt="Green tick" width="20" height="20" /> |
