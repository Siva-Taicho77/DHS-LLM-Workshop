python train.py \
--model_name "bigcode/starcoderplus" \
--dataset_name "smangrul/code-chat-assistant-v1" \
--max_seq_len 2048 \
--bf16 True \
--num_train_epochs 3 \
--logging_steps 25 \
--packing True \
--output_dir "peft-lora-starcoderplus-chat-asst-A100-40GB-colab" \
--per_device_train_batch_size 8 \
--gradient_accumulation_steps 2 \
--dataset_text_field "content" \
--lora_r 8 \
--lora_alpha 32 \
--lora_target_modules "c_proj,c_attn,q_attn,c_fc,c_proj" \
--use_nested_quant True \
--bnb_4bit_compute_dtype "bfloat16" \
--use_flash_attn True
