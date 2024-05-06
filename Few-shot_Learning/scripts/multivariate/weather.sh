export CUDA_VISIBLE_DEVICES=0

seq_len=512
model=GPT4TS

for percent in 5 10
do
for pred_len in 24 96 192 336 720
do

python main.py \
    --root_path ./datasets/ \
    --data_path weather.csv \
    --model_id weather_$model'_'$gpt_layer'_'$seq_len'_'$pred_len'_'$percent \
    --data custom \
    --seq_len $seq_len \
    --label_len 48 \
    --pred_len $pred_len \
    --batch_size 512 \
    --features M \
    --learning_rate 0.001 \
    --train_epochs 10 \
    --decay_fac 0.9 \
    --d_model 768 \
    --n_heads 4 \
    --d_ff 768 \
    --dropout 0.3 \
    --enc_in 21 \
    --c_out 21 \
    --freq 0 \
    --lradj type3 \
    --patch_size 16 \
    --stride 8 \
    --percent $percent \
    --gpt_layer 6 \
    --itr 3 \
    --model $model \
    --is_gpt 1
    
done
done