#!/bin/bash
CURRENT_DIR=$(pwd)
WORK_DIR="${CURRENT_DIR}"
cd "${CURRENT_DIR}"
python "${WORK_DIR}"/eval_image_classifier.py \
  --checkpoint_path=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/train_logs \
  --eval_dir=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/test_logs/ \
  --dataset_dir=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/tfrecord/val  \
  --num_samples=1276 \
  --num_classes=4 \
  --model_name=inception_resnet_v2
