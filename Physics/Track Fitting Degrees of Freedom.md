# Track Fitting Degrees of Freedom

## Single Track
A single track in 3D space has 5 degrees of freedom:
- 2 parameters for direction (azimuthal and polar angles)
- 2 parameters for position (intersection with a reference plane)
- 1 parameter for curvature (related to momentum)

## Two Tracks to Common Vertex
When fitting two tracks to a common 3D vertex:
- Initial degrees of freedom: 2 × 5 = 10
- Constraints from common vertex: 3 (x, y, z coordinates must be identical)
- Remaining degrees of freedom: 10 - 3 = 7

These 7 degrees of freedom represent:
- 3 parameters for vertex position
- 4 parameters for track directions (2 per track)

## N Tracks to Common Vertex
For N tracks constrained to meet at a common 3D vertex:
- Total degrees of freedom: 2N + 3

This can be understood as:
- 3 parameters for the common vertex position
- 2 parameters for each track direction (2N total)

This formula gives:
- N = 1: 2(1) + 3 = 5 degrees of freedom
- N = 2: 2(2) + 3 = 7 degrees of freedom
- N = 3: 2(3) + 3 = 9 degrees of freedom
- etc.

This is important in particle physics for vertex reconstruction from particle tracks in collider experiments.
