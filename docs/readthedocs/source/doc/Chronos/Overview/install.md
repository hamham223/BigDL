# Chronos Installation

---

#### OS and Python version requirement


```eval_rst
.. note::

    **Supported OS**:

    Chronos is thoroughly tested on Ubuntu (16.04/18.04/20.04), and should works fine on CentOS. If you are a Windows user, there are 2 ways to use Chronos:
     
    1. You could use Chronos on a windows laptop with WSL2 (you may refer to `here <https://docs.microsoft.com/en-us/windows/wsl/setup/environment>`_) or just install a ubuntu virtual machine.

    2. You could use Chronos on native Windows, but some features are unavailable in this case, the limitations will be shown below.
```
```eval_rst
.. note::

    **Supported Python Version**:

    Chronos supports all installation options on Python 3.7 ~ 3.9. For details about different installation options, refer to `here <#install-using-conda>`_.

    But if you need to use Chronos with Python >= 3.8 in cluster, you must install `bigdl-chronos-spark3`.
```



#### Install using Conda

We recommend using conda to manage the Chronos python environment. For more information about Conda, refer to [here](https://docs.conda.io/en/latest/miniconda.html#).
Select your preferences in the panel below to find the proper install command. Then run the install command as the example shown below.


```eval_rst
.. raw:: html

    <link rel="stylesheet" type="text/css" href="../../../_static/css/installation_panel.css" />

    <div class="installation-panel-wrapper">

        <table class="installation-panel-table">
            <tbody>
                <tr>
                    <td colspan="1">Functionality</td>
                    <td colspan="2"><button id="Forecasting">Forecasting</button></td>
                    <td colspan="2"><button id="Anomaly" class="fitting-cell">Anomaly Detection</button></td>
                    <td colspan="2"><button id="Simulation">Simulation</button></td>
                </tr>
                <tr id="model">
                    <td colspan="1">Model</td>
                    <td colspan="2"><button id="Deep_learning_models">Deep learning</button></td>
                    <td colspan="2"><button id="Prophet">Prophet</button></td>
                    <td colspan="2"><button id="ARIMA">ARIMA</button></td>
                </tr>
                <tr>
                    <td colspan="1">DL framework</td>
                    <td colspan="3"><button id="pytorch"
                            title="Use PyTorch as deep learning models' backend. Most of the model support and works better under PyTorch.">PyTorch (Recommended)</button>
                    </td>
                    <td colspan="3"><button id="tensorflow"
                            title="Use Tensorflow as deep learning models' backend.">TensorFlow</button></td>
                </tr>
                <tr>
                    <td colspan="1">OS</td>
                    <td colspan="3"><button id="linux" title="Ubuntu/CentOS is recommended">Linux</button></td>
                    <td colspan="3"><button id="win" title="WSL is needed for Windows users">Windows</button></td>
                </tr>

                <tr>
                    <td colspan="1">Auto Tuning</td>
                    <td colspan="3" title="I don't need any hyperparameter auto tuning feature."><button
                            id="automlno">No</button></td>
                    <td colspan="3" title="I need chronos to help me tune the hyperparameters."><button
                            id="automlyes">Yes</button></td>
                </tr>

                <tr>
                    <td colspan="1">Inference Opt</td>
                    <td colspan="3" title="No need for low-latency inference models"><button id="inferenceno">No</button></td>
                    <td colspan="3" title="Get low-latency inference models with onnx\openvino\inc"><button id="inferenceyes">Yes</button></td>
                </tr>

                <tr>
                    <td colspan="1">Hardware</td>
                    <td colspan="3"><button id="singlenode" title="For users use laptop/single node server.">Single
                            node</button></td>
                    <td colspan="3"><button id="cluster" title="For users use K8S/Yarn Cluster.">Cluster</button></td>
                </tr>

                <tr>
                    <td colspan="1">Package</td>
                    <td colspan="3"><button id="pypi" title="For users use pip to install chronos.">Pip</button></td>
                    <td colspan="3"><button id="docker" title="For users use docker image.">Docker</button></td>
                </tr>

                <tr>
                    <td colspan="1">Version</td>
                    <td colspan="3"><button id="nightly"
                            title="For users would like to try chronos's latest feature">Nightly</button></td>
                    <td colspan="3"><button id="stable"
                            title="For users would like to deploy chronos in their production">Stable</button></td>
                </tr>

                <tr>
                    <td colspan="1">Install CMD</td>
                    <td colspan="6" id="cmd">NA</td>
                </tr>
            </tbody>
        </table>
    </div>

    <script src="../../../_static/js/chronos_installation_panel.js"></script>
```

</br>


```bash
# create a conda environment for chronos
conda create -n my_env python=3.8 setuptools=58.0.4
conda activate my_env

# select your preference in above panel to find the proper command to replace the below command, e.g.
pip install --pre --upgrade bigdl-chronos[pytorch]

# init bigdl-nano to enable local accelerations
source bigdl-nano-init  # accelerate the conda env
```

##### Install Chronos on native Windows

Chronos can be simply installed using pip on native Windows, you could use the same command as Linux to install, but unfortunately, some features are unavailable now:

1. `bigdl-chronos[distributed]` is not supported.

2. `intel_extension_for_pytorch (ipex)` is unavailable for Windows now, so the related feature is not supported.

For some known issues when installing and using Chronos on native Windows, you could refer to [windows_guide](https://bigdl.readthedocs.io/en/latest/doc/Chronos/Howto/windows_guide.html).