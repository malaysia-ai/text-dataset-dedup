for i in {0..3}; do
  screen -S "partition-instructions-part-0_$i" -X quit 2>/dev/null
  screen -dmS "partition-instructions-part-0_$i" bash -c "cd /home/husein/ssd3/dataset/speech-instructions && \
  CUDA_VISIBLE_DEVICES=0 \
  python3.10 generate.py \
    --input_file \"partition-instructions-part-0.json\" \
    --folder \"partition-instructions-part-0\" \
    --global_index 4 \
    --index $i"
done

for i in {0..3}; do
  screen -S "partition-instructions-part-1_$i" -X quit 2>/dev/null
  screen -dmS "partition-instructions-part-1_$i" bash -c "cd /home/husein/ssd3/dataset/speech-instructions && \
  CUDA_VISIBLE_DEVICES=1 \
  python3.10 generate.py \
    --input_file \"partition-instructions-part-1.json\" \
    --folder \"partition-instructions-part-1\" \
    --global_index 4 \
    --index $i"
done

for i in {0..3}; do
  screen -S "partition-instructions-part-2_$i" -X quit 2>/dev/null
  screen -dmS "partition-instructions-part-2_$i" bash -c "cd /home/husein/ssd3/dataset/speech-instructions && \
  CUDA_VISIBLE_DEVICES=2 \
  python3.10 generate.py \
    --input_file \"partition-instructions-part-2.json\" \
    --folder \"partition-instructions-part-2\" \
    --global_index 4 \
    --index $i"
done