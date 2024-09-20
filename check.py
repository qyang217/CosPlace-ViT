import PIL
import os
from PIL import Image

folder_paths = [
    './SF-XL/processed/test/database/37.77',
    # './SF-XL/processed/test/database/37.78',
    # './SF-XL/processed/test/database/37.79',
    # './SF-XL/processed/test/database/37.80',
    # './SF-XL/processed/test/database/37.81',
]

for folder in folder_paths:
    for file in os.listdir(folder):
        try:
            with Image.open(os.path.join(folder, file)) as image:
                pass
        except PIL.UnidentifiedImageError as e:
            print(f'Error in file {os.path.join(folder, file)}: {e}')
        
