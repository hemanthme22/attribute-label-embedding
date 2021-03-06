#!/bin/bash

export DATASET='SUN'
export MODE='validation' #'test'
export CODE_DIR="."
export DATA_DIR="./datasets/SUNP" # required (preprocessed SUN directory!)

# set params
source ${CODE_DIR}/scripts/SUN_hps.sh

#train ALE
python ${CODE_DIR}/train.py \
			--dataset=$DATASET \
			--mode=$MODE \
			--data_dir=$DATA_DIR \
			--optim_type=$OPTIM_TYPE \
			--lr=$LR \
			--wd=$WD \
			--lr_decay=$LR_DECAY \
			--n_epoch=$N_EPOCH \
			--batch_size=$BATCH_SIZE