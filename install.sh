#!/usr/bin/env bash

if [[ "$(uname -s)" != "Darwin" ]]; then
    echo "This script assumes macOS. Exiting."
    exit 1
fi

pip install ipywidgets

# Install PyTorch
pip install torch torchvision torchaudio

# Install MeCab (Japanese tokenizer)
brew update
brew install mecab

git clone git@github.com:mtake/llm-book.git
(cd llm-book; git checkout mtake-mac; git pull)
