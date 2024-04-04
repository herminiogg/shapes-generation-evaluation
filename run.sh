#!/bin/bash

echo "Deleting data from last experiment..."
rm -rf bin
rm -rf generated-shapes/*

echo "Launching the experiment..."

echo "### Extended films test ###"
bash runExtendedFilmsExample.sh

if [[ ! -e "statistics" ]]; then
    mkdir statistics
fi
echo "### Incremental test ###"
bash runIncrementalEvaluation.sh > statistics/resultEvaluationIncrementalFilms.csv