#!/bin/bash

#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ============================================================================
if [ $# != 2 ]
then
    echo "Usage: sh run_standalone_train_ascend.sh [dataset] [device_id]"
exit 1
fi

export DATASET=$1
export DEVICE_ID=$2

rm -rf ./train
mkdir ./train
cp ../*.py ./train
cp -r ../src ./train
cd ./train
python -u ./train.py --dataset=$DATASET --device_id=$DEVICE_ID > log 2>&1 &


