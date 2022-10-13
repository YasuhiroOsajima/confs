#!/bin/sh

for ext in $(cat extentions_list.txt); do
    code --install-extension $ext
done
