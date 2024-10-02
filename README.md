# Convolutional Neural Networks (CNN) using MATLAB

This project is a collection of MATLAB scripts that demonstrate the process of image analysis and classification using convolutional neural networks (CNN) as part of a university module. The project includes functions for feature extraction, image processing, and K-Nearest Neighbors (KNN) classification.

## Table of Contents
- [Project Overview](#project-overview)
- [File Descriptions](#file-descriptions)
  - [Image Processing Scripts](#image-processing-scripts)
  - [Machine Learning Scripts](#machine-learning-scripts)
- [Usage](#usage)
- [Requirements](#requirements)
- [Acknowledgements](#acknowledgements)

## Project Overview
This project demonstrates basic image processing and machine learning techniques using MATLAB. The main goal was to implement feature extraction methods, such as edge detection, histogram of oriented gradients (HOG), and image brightness calculation, and apply a K-Nearest Neighbors (KNN) classifier to predict and classify image data.

## File Descriptions

### Image Processing Scripts
- **get_brightness.m / get_brightness.asv**  
  Extracts brightness information from an image to aid in classification.

- **get_edges.m / get_edges.asv**  
  Implements edge detection for images using convolutional methods.

- **get_hogs.m / get_hogs.asv**  
  Calculates Histogram of Oriented Gradients (HOG) features, useful for object detection and classification tasks.

- **my_im2gray.m / my_im2gray.asv**  
  Converts an image to grayscale as part of preprocessing.

- **my_imgradient.m / my_imgradient.asv**  
  Calculates the gradient magnitude of an image, useful for edge detection and texture analysis.

- **my_imgradientxy.m**  
  Computes the gradient of an image in both X and Y directions.

### Machine Learning Scripts
- **knn_calculate_distance.m**  
  Function to calculate distances between image features for the K-Nearest Neighbors classifier.

- **knn_fit.m**  
  Trains the KNN model by fitting the input data and labels to the classifier.

- **knn_predict.m**  
  Predicts the class of input image features using the KNN model.

- **machineLearnTemplate.mlx**  
  MATLAB Live Script template that integrates the image processing and machine learning methods. This script demonstrates the workflow from image preprocessing to classification.

## Usage
1. Clone or download the repository.
2. Open MATLAB and navigate to the project folder.
3. To execute the main workflow, open and run the `machineLearnTemplate.mlx` script.
4. The script will guide you through the steps of image preprocessing, feature extraction (brightness, edges, HOGs), and KNN classification.

## Requirements
- MATLAB (version R2021a or later recommended)
- Image Processing Toolbox
- Statistics and Machine Learning Toolbox

## Acknowledgements
This project was developed as part of a university module on Convolutional Neural Networks (CNN) and machine learning. Special thanks to the module instructors for their guidance.
