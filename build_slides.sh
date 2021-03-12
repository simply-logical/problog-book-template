#! /usr/bin/env bash

IN=src/text
OUT=_build/html/slides

mkdir -p $OUT

build_deck () {
  jupyter nbconvert $IN/$1 --to slides --output-dir=$OUT
}

build_deck bayesian_networks-jnb.ipynb

# We need to convert MyST Markdown Notebook into Jupyter Notebook first
jupytext --to notebook $IN/bayesian_networks-mnb.md
build_deck bayesian_networks-mnb.ipynb
rm $IN/bayesian_networks-mnb.ipynb
