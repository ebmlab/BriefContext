#!/bin/bash

# Base URL for the files
BASE_URL="https://ftp.ncbi.nlm.nih.gov/pub/lu/MedCPT/pubmed_embeddings"

# Loop through the indices 0 to 37
for i in {0..37}; do
  # Define the filenames
  EMBED_FILE="embeds_chunk_${i}.npy"
  PMIDS_FILE="pmids_chunk_${i}.json"
  CONTENT_FILE="pubmed_chunk_${i}.json"

  # Download each file
  echo "Downloading ${EMBED_FILE}..."
  wget --no-check-certificate "${BASE_URL}/${EMBED_FILE}" || { echo "Failed to download ${EMBED_FILE}"; exit 1; }

  echo "Downloading ${PMIDS_FILE}..."
  wget --no-check-certificate "${BASE_URL}/${PMIDS_FILE}" || { echo "Failed to download ${PMIDS_FILE}"; exit 1; }

  echo "Downloading ${CONTENT_FILE}..."
  wget --no-check-certificate "${BASE_URL}/${CONTENT_FILE}" || { echo "Failed to download ${CONTENT_FILE}"; exit 1; }

  echo "Chunk ${i} downloaded successfully!"
done

echo "All files downloaded."
