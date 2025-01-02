create-env:
	conda create --prefix ./env python=3.8 
	conda activate ./env

install:
	conda install -c apple -c conda-forge -c nodefaults tensorflow-deps	
	python -m pip install tensorflow-macos==2.10.0
	python -m pip install tensorflow-metal==0.6.0
	conda install --file requirements.txt

onnx-export:
	python -m tf2onnx.convert --saved-model saved_model/ann-customer-churn --output models/model.onnx	