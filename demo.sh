# eval on SF-XL-small
# python eval.py --test_set_folder ./SF-XL/small --backbone ResNet50 --fc_output_dim=128 --resume_model ./weights/resnet50_128.pth \
#     --num_preds_to_save=5 --resize_test_imgs --image_size=224

#  python eval.py --test_set_folder ./SF-XL/small --backbone vit_small_patch16_224 --fc_output_dim=512 --resume_model ./logs/train/2024-09-17_05-52-11/best_model.pth \
#     --num_preds_to_save=5 --resize_test_imgs --image_size=224

# debug
# python -m pdb eval.py --test_set_folder ./SF-XL/small --backbone ResNet50 --fc_output_dim 128 --resume_model ./weights/resnet50_128.pth \
#     --num_preds_to_save=5

# train on ViT
# python3 train.py --backbone vit_small_patch16_224 --train_set_folder SF-XL/processed/train --val_set_folder SF-XL/processed/val \
#     --test_set_folder SF-XL/processed/test --num_preds_to_save=5 --augmentation_device=cpu --fc_output_dim=512 \
#     --use_amp16 --image_size=224 --resize_test_imgs --num_workers=8 --batch_size=16 --iterations_per_epoch=5000 --epochs_num=25  \
#     --save_dir train \
#     --resume_model logs/train/2024-09-17_05-52-11/best_model.pth \
#     --resume_train logs/train/2024-09-17_05-52-11/last_checkpoint.pth \
#     --train_all_layers \
#     --multi_gpu 

# eval on ViT
python eval.py --test_set_folder ./SF-XL/processed/test --backbone vit_small_patch16_224  --fc_output_dim=512 \
    --resume_model logs/train/2024-09-18_02-45-29/best_model.pth \
    --num_preds_to_save=5 --resize_test_imgs --image_size=224 --save_dir eval

# debug
# python3 train.py --backbone vit_small_patch16_224 --train_set_folder SF-XL/samples --val_set_folder SF-XL/processed/val \
#     --test_set_folder SF-XL/processed/test --num_preds_to_save=5 --augmentation_device=cpu --fc_output_dim=512 \
#     --resume_model weights/vit_small_patch16_224.pth --use_amp16 --image_size=224 --resize_test_imgs 
