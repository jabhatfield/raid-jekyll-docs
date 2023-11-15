This endpoint classifies any image of a handwritten number that conforms
to the [image format](#_image_format). A neural network trained on the
[MNIST database of handwritten
digits,window=\_blank](https://en.wikipedia.org/wiki/MNIST_database)
performs the classification.

# Handwritten-zero request

Send the following request to explicitly process the same image
processed by the [???](#tutorial/classify-handwritten-zero.adoc)
endpoint
![0](https://github.com/jon-hatfield-tech-writing/ai-demo/blob/main/src/main/resources/images/0.png?raw=true):

**POST /handwriting-recogniser/classify-handwritten-number**

Notice that the image is recognised as `0`, with a high probability of
correctness:

**Response**

# Ambiguous request

Send the following request to process an ambiguous image of a three that
looks like an eight
![3-like-8](https://github.com/jon-hatfield-tech-writing/ai-demo/blob/main/src/main/resources/images/3-that-looks-like-8.png?raw=true):

**POST /handwriting-recogniser/classify-handwritten-number**

# Response

Notice that the image is recognised as `3`, with a lower probability of
correctness than the less ambiguous [handwritten
zero](#_handwritten_zero_request). Also notice that the second most
probable match is `8`:

**Response**

# Custom request

Create a new image to experiment with the image recognition
capabilities.

## Image format

The image format is based on the [MNIST database
format,window=\_blank](https://en.wikipedia.org/wiki/MNIST_database).
Images must have the following properties:

-   Resemble a number from zero to nine

-   Written in white with a black background

-   Sized 28x28 pixels

-   PNG format

Place the image in the [images source
folder,window=\_blank](https://github.com/jon-hatfield-tech-writing/ai-demo/tree/main/src/main/resources/images):
`src/main/resources/images`.

Verify registration via the
[???](#tutorial/list-example-input-images.adoc) endpoint.

## Request body

Send a request structured as per the [handwritten-zero
request](#_handwritten_zero_request), substituting `fileName` with the
name of the created image.

# Response

Expect a response structured as per the [handwritten-zero
response](#handwritten-zero-response). Notice that the legibility of the
handwritten number corresponds to the probability of correctness.
