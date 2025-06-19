# AdaptiveHT3D for primitives
This repository contains a Matlab library for fitting simple geometric primitives on point clouds with a parameter-driven discretisation strategy that improves the accuracy and efficiency. As simple primitives we mean the classical surface primitives derived from constructive solid geometry, i.e., planes, spheres, cylinders, cones and tori. 

The ```code``` directory contains our method based on the Hough Transform (see [1]). This method has been compared with state of the art algorithms, and the results can be found in [2].

Instead, the ```test``` directory contains 100 point clouds that can be used to perform tests and evaluate performance. These have been extracted from [SHREC22](https://github.com/chiararomanengo/SHREC2022) dataset.


## Basic Usage
To use this method, you can simply run the ```main.m``` file in Matlab. The input is a .txt file containing the point cloud. The point cloud is then processed and the method find the best fitting primitive type and its geometric descriptors.  

If the point cloud is noisy, you can run the ```mainNoise.m```. This is configured to deal with perturbed point clouds, i.e., thresholds are properly tuned w.r.t. the ```main.m``` file.

# References

[1] C. Romanengo, B. Falcidieno, S. Biasotti, "Discretisation of the Hough parameter space for fitting and recognising geometric primitives in 3D point clouds", Mathematics and Computers in Simulation, vol. 228, pp. 73-86 (2025), https://doi.org/10.1016/j.matcom.2024.08.033.

