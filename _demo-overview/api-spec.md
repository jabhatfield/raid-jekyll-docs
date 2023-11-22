---
layout: page
title: API specification
nav_order: 3
---

# API specification
{: .no_toc }

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

RAID uses [Swagger,window=\_blank](https://swagger.io/) to implement the
[OpenAPI
Specification,window=\_blank](https://swagger.io/specification/).

# Swagger UI

Perform the following steps to view the API via the Swagger UI:

1.  Run the application locally by following the
    [???](#:install-and-run-quickstart.adoc).

2.  Go to <http://localhost:8080/swagger-ui/index.html>.

## Run examples

The Swagger specification includes examples that can be run within the
Swagger UI:

1.  Click on an API endpoint to expand it.

2.  Click **Try it out**.

3.  Click **Execute** to run the prepopulated example.

4.  Scroll down to view the response.

# Error codes

The Swagger specification includes the following error information:

-   The structure of the JSON error response, which is standardized
    across all endpoints

-   An example HTTP 400 response for each endpoint, where applicable due
    to the presence of input data

-   An example HTTP 500 response for each endpoint

See the table below for a full list of possible errors:

<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 20%" />
</colgroup>
<tbody>
<tr class="odd">
<td style="text-align: left;"><p>RAID error code</p></td>
<td style="text-align: left;"><p>HTTP status code</p></td>
<td style="text-align: left;"><p>Error message example</p></td>
<td style="text-align: left;"><p>Zoo Chatbot</p></td>
<td style="text-align: left;"><p>Handwriting recogniser</p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>001_MISSING_FIELD</p></td>
<td style="text-align: left;"><p>400 Bad Request</p></td>
<td style="text-align: left;"><p>Field <em>message</em> is
required</p></td>
<td style="text-align: left;"><p><img src="green-tick.svg"
alt="Green tick" /></p></td>
<td style="text-align: left;"><p><img src="green-tick.svg"
alt="Green tick" /></p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>002_EMPTY_ARRAY</p></td>
<td style="text-align: left;"><p>400 Bad Request</p></td>
<td style="text-align: left;"><p>Array <em>tokens</em> must be
populated</p></td>
<td style="text-align: left;"><p><img src="green-tick.svg"
alt="Green tick" /></p></td>
<td style="text-align: left;"><p><img src="red-cross.svg"
alt="Green tick" /></p></td>
</tr>
<tr class="even">
<td style="text-align: left;"><p>003_MISSING_IMAGE_FILE</p></td>
<td style="text-align: left;"><p>500 Internal Server Error</p></td>
<td style="text-align: left;"><p>Image file <em>10.png</em> not found.
Check the src/main/resources folder</p></td>
<td style="text-align: left;"><p><img src="red-cross.svg"
alt="Green tick" /></p></td>
<td style="text-align: left;"><p><img src="green-tick.svg"
alt="Green tick" /></p></td>
</tr>
<tr class="odd">
<td style="text-align: left;"><p>100_UNKNOWN_ERROR</p></td>
<td style="text-align: left;"><p>500 Internal Server Error</p></td>
<td style="text-align: left;"><p>Cannot invoke "String.toString()"
because "response" is null. See log for details</p></td>
<td style="text-align: left;"><p><img src="green-tick.svg"
alt="Green tick" /></p></td>
<td style="text-align: left;"><p><img src="green-tick.svg"
alt="Green tick" /></p></td>
</tr>
</tbody>
</table>
