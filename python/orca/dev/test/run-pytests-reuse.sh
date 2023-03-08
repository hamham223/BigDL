cd "`dirname $0`"
cd ../..

export PYSPARK_PYTHON=python
export PYSPARK_DRIVER_PYTHON=python

ray stop -f

python -m pytest -v test/bigdl/orca/learn/ray/tf/test_tf2estimator_ray_backend.py::TestRandomFail

echo "ok!"