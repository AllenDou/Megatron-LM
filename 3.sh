#
set -x
rm -rf /nasmnt/ckpt/* && bash examples/gpt3/train_gpt3_175b_distributed.sh /nasmnt/ckpt/ /nasmnt/tensorboard_logs/ /nasmnt/tmp/gpt2-vocab.json /nasmnt/tmp/gpt2-merges.txt /nasmnt/tmp/my-gpt2_text_document
