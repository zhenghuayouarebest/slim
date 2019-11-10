#!/bin/bash
CURRENT_DIR=$(pwd)
WORK_DIR="${CURRENT_DIR}"
cd "${CURRENT_DIR}"
python "${WORK_DIR}"/train_image_classifier.py \
  --dataset_dir=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/tfrecord/train \
  --num_classes=4 \
  --num_samples=8921 \
  --labels_to_names_path=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/train.txt \
  --model_name=inception_resnet_v2 \
  --checkpoint_path=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/checkpoints/inception_resnet_v2_2016_08_30.ckpt \
  --checkpoint_exclude_scopes=InceptionResnetV2/Logits,InceptionResnetV2/AuxLogits  \
  --train_dir=/home/omnisky/zhenghua/works/new_waste_classification/ljfl/train_logs \
  --max_number_of_steps=10000

