sudo apt install $(grep -vE "^\s*#" packages.txt  | tr "\n" " ")
