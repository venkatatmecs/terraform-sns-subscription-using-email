BOTO3_VERSION=1.9.141

.PHONY: vendor-deps
vendor-deps:
	python3.7 -m pip install --no-binary :all: --target ./vendored boto3==$(BOTO3_VERSION)
