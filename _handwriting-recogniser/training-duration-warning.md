The first invocation of [???](#tutorial/classify-handwritten-zero.adoc)
or [???](#tutorial/classify-handwritten-number.adoc) trains the image
recognition model, which takes approximately 10 - 20 seconds. The model
is then cached for efficient subsequent invocations.

Observe the training delay in the logs:

    Training:    100% |████████████████████████████████████████|
    Epoch 1 finished.
    Training:    100% |████████████████████████████████████████|
    Epoch 2 finished.
