
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
- Initial degrees of freedom: N × 5 = 5N
- Constraints: 3N (each track must pass through same point)
- Add back 3 (only need to specify vertex position once)
- Final degrees of freedom: 5N - 3N + 3 = 2N + 3

This formula gives:
- N = 1: 5 degrees of freedom
- N = 2: 7 degrees of freedom
- N = 3: 9 degrees of freedom
- etc.

[[Physics]]

