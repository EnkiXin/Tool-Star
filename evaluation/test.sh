# ===== 环境变量 =====
export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
export TOKENIZERS_PARALLELISM=true
export PYTHONPATH=/home/featurize/Tool-Star:$PYTHONPATH   # ← 仓库根目录

# ===== 运行脚本 =====
python evaluation/run.py \
    --model_path /home/featurize/models/Tool-Star-Qwen-3B \
    --dataset_name math \
    --task math \
    --gpu_use 0.95 \
    --max_tokens 16384 \
    --max_input_len 16384 \
    --output_path /home/featurize/results/tool_star_math_result.json \
    --counts 500 \
    --batch_size 100