# Speech Instructions

## Speaker dedup

We use speaker embedding from https://catalog.ngc.nvidia.com/orgs/nvidia/teams/nemo/models/titanet_large

1. Convert to embedding,

```bash
CUDA_VISIBLE_DEVICES=1,2 \
python3.10 embedding.py \
--filename filtered-politicians.parquet \
--replication 3

CUDA_VISIBLE_DEVICES=1,2 \
python3.10 embedding.py \
--filename filtered-podcast.parquet \
--replication 3 --folder embedding-podcast
```