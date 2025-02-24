python3 tools/preprocess_data.py \
    --input my-corpus.json \
    --output-prefix /nasmnt/tmp/my-gpt2 \
    --vocab-file gpt2-vocab.json \
    --tokenizer-type GPT2BPETokenizer \
    --merge-file gpt2-merges.txt \
    --append-eod \
    --workers 2 
