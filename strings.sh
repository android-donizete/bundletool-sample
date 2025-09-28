#!/bin/bash

langs=(
  af ar bn de es es-rMX fr hi id it ja ko ms nl pl pt pt-rBR ru sw ta th tr uk vi zh zh-rCN zh-rTW
)

for lang in "${langs[@]}"; do
  mkdir -p "app/src/main/res/values-$lang"

  echo '<resources> <string name="big_text">' > "app/src/main/res/values-$lang/strings.xml"

  tr -dc a-z < /dev/urandom | \
  head -c 1024 >> "app/src/main/res/values-$lang/strings.xml"

  echo '</string></resources>' >> "app/src/main/res/values-$lang/strings.xml"
done
