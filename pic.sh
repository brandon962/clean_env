IMG_DIR="testing_dir"
PIG_NAME="test"

mkdir -p image/$IMG_DIR

gnuplot -c pic.plt "$PIG_NAME" image/"$IMG_DIR"/"$PIG_NAME".png