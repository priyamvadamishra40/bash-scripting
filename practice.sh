

function add_directory() {
  dir_path="$2"
  dir_name="$3"
  mkdir -p "$dir_path/$dir_name"
  echo "Directory created: $dir_path/$dir_name"
}

function delete_directory() {
  dir_path="$2"
  dir_name="$3"
  mkdir -p "$dir_path/$dir_name"
  echo "Directory created: $dir_path/$dir_name"
}

function list_files() {
  dir="$2"
  ls -p "$dir" | grep -v /
  }

function list_directory() {
  dir="$2"
    ls -d "$dir"/*/
  }
