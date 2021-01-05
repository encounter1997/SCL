#!/bin/sh
GPU_ID = $1
for epoch in 1 2 3 4 5 6 7 8 9 10;
do
  CUDA_VISIBLE_DEVICES=${GPU_ID} python test_net_dfrcnn.py --cuda --net vgg16 --dataset foggy_cityscape --load_name /workspace/data2/wwen/ijcai/SCL/models/dafaster/vgg16/cityscape/globallocal_target_foggy_cityscape_eta_0.1_local_context_False_global_context_False_gamma_5_session_1_epoch_${epoch}_step_9999.pth
done