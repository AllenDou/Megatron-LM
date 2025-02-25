#
set -x
#export NCCL_DEBUG=INFO
export NCCL_SOCKET_IFNAME=eth0  # 替换为正确的网络接口
export NCCL_IB_DISABLE=1  # 如果使用以太网而不是 InfiniBand
#export TORCH_DISTRIBUTED_DEBUG=DETAIL
#export NCCL_DEBUG_SUBSYS=ALL
#rm -rf /nasmnt/ckpt/* && 
bash examples/gpt3/train_gpt3_175b_distributed.sh /nasmnt/ckpt/ /nasmnt/tensorboard_logs/ /nasmnt/tmp/gpt2-vocab.json /nasmnt/tmp/gpt2-merges.txt /nasmnt/tmp/my-gpt2_text_document
