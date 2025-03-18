#!/bin/bash
set -e

# Configure Git globally if not already set
# Proceed with cloning or updating the DAG repository...
DAG_DIR="/workspace/airflow/dags"
if [ ! -d "$DAG_DIR" ]; then
  echo "Making your first Dags directory."
  mkdir -p $DAG_DIR
else
  echo "Company DAG repository already exists, cd'ing into it"
  cd "$DAG_DIR"
fi
airflow db init
airflow users  create --role Admin --username admin --email admin --firstname admin --lastname admin --password admin