# Configure the variables to be passed into the templates.
export http_proxy=your_http_proxy
export https_proxy=your_https_proxy
export no_proxy=your_no_proxy

envsubst < ./bigdl-distribute-workflow.yaml | kubectl create -f - -n your-namespace
