BUILD_DIR='_build/'
GH_DIR='../cinghiopinghio.github.io'

try:
	cd ./_assets/css/_sass;	compass compile
	mynt gen -f $(BUILD_DIR)

clean:
	rm -rf $(BUILD_DIR)

build: try
	rsync -av $(BUILD_DIR) $(GH_DIR)

serve: try
	mynt watch -f $(BUILD_DIR) &
	mynt serve $(BUILD_DIR) &



