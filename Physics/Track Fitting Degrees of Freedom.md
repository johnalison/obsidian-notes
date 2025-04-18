# Track Fitting Degrees of Freedom

## Single Track
A single track in 3D space has 5 degrees of freedom:
- 2 parameters for direction (azimuthal and polar angles)
- 2 parameters for position (intersection with a reference plane)
- 1 parameter for curvature (related to momentum)

## Two Tracks to Common Vertex
When fitting two tracks to a common 3D vertex:
- Initial degrees of freedom: 2 × 5 = 10
- Constraints from common vertex: 3 x 2  (the x, y, z coordinates of each track must be identical)
- 3 parameters of the vertex
- Remaining degrees of freedom: 10 - 6 - 3 = 1



## Calculation for N Tracks to Common Vertex
When fitting N tracks to a common vertex in 3D space:
- Each track contributes 2 measurements (constraints)
- The vertex position requires 3 parameters (x, y, z coordinates)
- Therefore, total degrees of freedom = 2N - 3

This formula gives:
- N = 1: 2(1) - 3 = -1 degrees of freedom (underconstrained)
- N = 2: 2(2) - 3 = 1 degree of freedom (minimally constrained)
- N = 3: 2(3) - 3 = 3 degrees of freedom (well constrained)
- etc.

The negative degrees of freedom for N=1 correctly indicates that a single track cannot constrain a vertex position in 3D space. You need at least 2 tracks to have a constrained fit.

This formula is important in particle physics for vertex reconstruction and fitting in collider experiments.
