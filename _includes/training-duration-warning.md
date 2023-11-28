{: .note }
> The first invocation of [Classify a handwritten zero]({% link _handwriting-recogniser/tutorial/classify-handwritten-zero.md %})
> or [Classify a handwritten number]({% link _handwriting-recogniser/tutorial/classify-handwritten-number.md %})
> trains the image recognition model, which takes approximately 10 - 20 seconds. The model is then cached for efficient
> subsequent invocations.
>
> Observe the training delay in the logs:
>
>     Training:    100% |████████████████████████████████████████|
>     Epoch 1 finished.
>     Training:    100% |████████████████████████████████████████|
>     Epoch 2 finished.
