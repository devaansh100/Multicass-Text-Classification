#! /bin/bash
cd ../fastText
echo "Starting Inferencing"
./fasttext predict $1 $2 > ../predictions.txt
echo "Completed Inferencing - check predictions.txt"
cd ..
python create_submission.py
echo "Check predictions.csv"