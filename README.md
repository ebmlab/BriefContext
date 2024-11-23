# BriefContext: A MapReduce Approach for Retrieval-Augmented Generation

This repository contains the code and resources for **BriefContext**, a novel framework designed to improve the robustness of Retrieval-Augmented Generation (RAG) workflows, especially in the medical domain. The method addresses the “lost-in-the-middle” issue, where key information in retrieval results is overlooked due to its position, by applying a MapReduce-inspired strategy.

## Key Features
- **Context Partitioning:** Breaks long contexts into smaller, manageable subtasks for better utilization by language models.
- **Preflight Check Mechanism:** Predicts ranking issues in retrieval results to avoid unnecessary processing costs.
- **Enhanced QA Accuracy:** Demonstrates substantial performance improvements across multiple medical question-answering benchmarks.

This work enhances reliable and efficient use of long-context information in RAG pipelines, improving accuracy and reliability for large language models in healthcare applications.

## License

Copyright (c) 2023 Weng Lab at Columbia University

Distributed under the terms of the [MIT](https://github.com/bionlplab/medtext/blob/master/LICENSE) license, 
EvidenceOutcomes is free and open-source.
