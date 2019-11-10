#!/bin/bash
CURRENT_DIR=$(pwd)
WORK_DIR="${CURRENT_DIR}"
cd "${CURRENT_DIR}"
python "${WORK_DIR}"/test_image_classifier.py \
  --checkpoint_path=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/train_logs \
  --test_list=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/val.txt \
  --test_dir=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/tfrecord/val  \
  --batch_size=16 \
  --num_classes=4 \
  --model_name=inception_resnet_v2
