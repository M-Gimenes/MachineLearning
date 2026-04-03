# Machine Learning & Deep Learning

A structured, hands-on study repository covering the full spectrum of classical machine learning through modern deep learning and computer vision. Each module builds progressively on the previous, combining theory with practical Jupyter notebooks and real-world datasets.

---

## Curriculum Overview

### Module 1 — Foundations of Supervised Learning ✅

Core algorithms and best practices for regression and classification tasks.

| Section | Topics |
|---|---|
| Linear Regression | Model fitting, evaluation, and interpretation |
| Pre-processing | Handling missing data, correlation-based feature selection |
| Regularization | Ridge, Lasso, and Elastic Net regression |
| Model Validation | K-Fold cross-validation, RandomizedSearchCV, GridSearchCV |
| Logistic Regression | Binary and multi-class classification |
| Evaluation Metrics | Confusion matrix, ROC curve, AUC score, normalization |
| KNN | K-Nearest Neighbors for classification |
| Naive Bayes | Probabilistic classification |
| Decision Trees | Classifier and Regressor with tree visualization |
| Feature Engineering | One-Hot Encoding, outlier handling, Chi², F-classif, RFE, parallel processing |

---

### Module 2 — Ensemble Methods & Advanced Techniques ✅

Scaling up with ensemble strategies, unsupervised learning, and recommender systems.

| Section | Topics |
|---|---|
| Missing Data | Imputation via regression |
| Clustering | K-Means unsupervised learning |
| Dimensionality Reduction | Principal Component Analysis (PCA) |
| Ensemble Methods | Random Forest, Extra Trees, AdaBoost, Gradient Boosting, Bagging |
| SVM | Support Vector Machines for classification and regression |
| Recommender Systems | Collaborative filtering approach |

---

### Module 3 — Deep Learning & Computer Vision ✅

Neural networks from scratch to advanced computer vision pipelines.

| Section | Topics |
|---|---|
| Keras | First neural network, MNIST digit recognition, classification & regression exercises |
| TensorFlow | Tensor fundamentals, MNIST with TF |
| CNNs | Convolutional networks, CIFAR-10, data augmentation |
| Computer Vision | Image manipulation, CAPTCHA solving, balloon detection, YOLOv3, Style Transfer, YOLOv11 |

---

### Module 4 — Generative AI & Evolutionary Algorithms ⏳

| Section | Topics |
|---|---|
| GANs | Generative Adversarial Networks |
| Genetic Algorithms | Evolutionary optimization with DEAP |
| *(Upcoming)* | RNNs, LSTMs, NLP, Reinforcement Learning |

---

## Environment Setup

The project ships with a Docker environment that provides a fully configured JupyterLab instance with all dependencies pre-installed.

### Quick Start

```bash
docker-compose -f docker/docker-compose.yml up -d
```

Access JupyterLab at `http://localhost:8888` — default token: `ml2024`.

### Available Commands

```bash
# Start the environment
docker-compose -f docker/docker-compose.yml up -d

# Rebuild and start (after dependency changes)
docker-compose -f docker/docker-compose.yml up -d --build

# Stop the environment
docker-compose -f docker/docker-compose.yml down

# Stream logs
docker-compose -f docker/docker-compose.yml logs -f

# Open a shell inside the container
docker exec -it machine-learning-jupyter bash
```

### Configuration

The defaults work out of the box. To customize, pass environment variables inline:

```bash
JUPYTER_TOKEN=my_token JUPYTER_PORT=9999 docker-compose -f docker/docker-compose.yml up -d
```

Or copy `docker/env.example` to `docker/.env` and set the following:

| Variable | Default | Description |
|---|---|---|
| `JUPYTER_TOKEN` | `ml2024` | JupyterLab access token |
| `JUPYTER_PORT` | `8888` | Host port for JupyterLab |

> Notebooks and data directories are mounted as volumes — all changes persist across container restarts. `nbstripout` is automatically configured on startup to keep notebook outputs out of version control.

---

## Repository Structure

```
.
├── Module1/          # Supervised learning fundamentals
│   ├── 0-Data/       # Datasets (housing, admissions, wine, etc.)
│   └── 01 → 11/      # Progressive notebooks per topic
├── Module2/          # Ensembles, clustering, and advanced methods
│   ├── 0-Data/       # Datasets (Titanic, mushroom, concrete, etc.)
│   └── 01 → 11/
├── Module3/          # Deep learning and computer vision
│   ├── 0-Data/       # Images and model configs (YOLOv3, COCO)
│   └── 01 → 04/
├── Module4/          # Generative and evolutionary models (in progress)
└── docker/           # Docker + JupyterLab setup
```

---

## Tech Stack

- **Python** — NumPy, Pandas, Scikit-learn, Matplotlib, Seaborn
- **Deep Learning** — TensorFlow, Keras
- **Computer Vision** — OpenCV, YOLOv3, YOLOv11
- **Evolutionary Algorithms** — DEAP
- **Environment** — Docker, JupyterLab
