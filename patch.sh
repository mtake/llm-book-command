#!/usr/bin/env bash

HF_ACCOUNT=${HF_ACCOUNT:-mikiotakeuchi}

# for macOS
if command -v gsed &> /dev/null; then
    SED_CMD=gsed
else
    SED_CMD=sed
fi

cmd="find llm-book -name '*.ipynb' -exec ${SED_CMD} -i -e 's|YOUR-ACCOUNT/|${HF_ACCOUNT}/|g' '{}' \;"
echo "$cmd"
eval "$cmd"

cmd="find llm-book -name '*.ipynb' -exec ${SED_CMD} -i -e 's|cuda:0|cpu|g' '{}' \;"
echo "$cmd"
eval "$cmd"

echo "output*/" >> llm-book/.gitignore
