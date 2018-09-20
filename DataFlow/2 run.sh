#!/bin/bash -xv

BUCKET=$DEVSHELL_PROJECT_ID

cd training-data-analyst/courses/data_analysis/lab2/python
python JavaProjectsThatNeedHelp.py --bucket $BUCKET --project $DEVSHELL_PROJECT_ID --DataFlowRunner
