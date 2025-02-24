PYTORCH_IMAGE=nvcr.io/nvidia/pytorch:24.01-py3
CHECKPOINT_PATH="/nasmnt/ckpt/"
TENSORBOARD_LOGS_PATH="/nasmnt/tensorboard_logs/"
VOCAB_FILE="/nasmnt/tmp/gpt2-vocab.json"
MERGE_FILE="/nasmnt/tmp/gpt2-merges.txt"
DATA_PATH="/nasmnt/tmp/my-gpt2_text_document"

docker run \
  -it \
  --gpus=all \
  --ipc=host \
  --network=host \
  -p 29500:29500 \
  --workdir /root/megatron-lm_allendou/ \
  -v /nasmnt/:/nasmnt/ \
  -v /root/megatron-lm_allendou/:/root/megatron-lm_allendou/ \
  nvcr.io/nvidia/pytorch:24.01-py3
  
# bash examples/gpt3/train_gpt3_175b_distributed.sh $CHECKPOINT_PATH $TENSORBOARD_LOGS_PATH $VOCAB_FILE $MERGE_FILE $DATA_PATH "
# rm -rf /nasmnt/ckpt/* && bash examples/gpt3/train_gpt3_175b_distributed.sh /nasmnt/ckpt/ /nasmnt/tensorboard_logs/ /nasmnt/tmp/gpt2-vocab.json /nasmnt/tmp/gpt2-merges.txt /nasmnt/tmp/my-gpt2_text_document
