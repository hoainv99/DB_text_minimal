train:
	python3 src/train.py

test-heatmap:
	python3 src/test.py --image_path ./assets/foo.jpg \
	--model_path models/db_resnet18.pth \
	--heatmap True \
	--is_output_polygon True \
	--unclip_ratio 1.5 \
	--thresh 0.7

test-poly:
	python3 src/test.py --image_path ./assets/foo.jpg \
	--model_path models/db_resnet18.pth \
	--heatmap False \
	--is_output_polygon True \
	--unclip_ratio 3.0 \
	--thresh 0.7

test-rect:
	python3 src/test.py --image_path ./assets/foo.jpg \
	--model_path models/db_resnet18.pth \
	--heatmap False \
	--is_output_polygon False \
	--unclip_ratio 1.5 \
	--thresh 0.7