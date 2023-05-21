python -m torch.distributed.launch --nproc_per_node=6 --master_port 22223 --use_env finetune.py \
--config bedroom.yml \
--timesteps 100 \
--eta 0 \
--ni \
--exp run/finetune/bedroom_ddpm_$1_0.3_finetuned-continue-v4-2e-5 \
--doc post_training \
--skip_type uniform  \
--pruning_ratio 0.3 \
--use_ema \
--use_pretrained \
--load_pruned_model run/finetune/bedroom_ddpm_taylor_0.3_finetuned-continue-v3-2e-6/logs/post_training/ckpt_65000.pth \