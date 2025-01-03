# Customer Churn Analysis - Tensorflow model to ONNX

## Pre-requirements

- Conda CLI. As an option, use [Miniforge installer](https://conda-forge.org/download/)
- Apple MacBook with Apple Silicon

## Run

To create new Conda environment and install required Python packages, run:

```bash
make create-env
```

- In case you want to run it not on Apple Silicon, change packages in the Makefile/install task from  `tensorflow-macos`,  `tensorflow-metal` to `tensorflow` or to appropriate Tensorflow build for your target machine. 
- Then create new conda environment. 
- If you have already created an environment, then delete it before creating new one with updated packages.


To train ANN model and save it in the saved_model format:

```bash
python artificial_neural_network.py
```

To export saved model into ONNX format, run:

```bash
make onnx-export
```
