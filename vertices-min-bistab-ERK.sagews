︠74ecc457-3c6b-4efb-bf4a-f932ba2493b6︠
# This worksheet was converted from a notebook running Jupyter kernel
# version sagemath.
︡bfc85be9-b2df-4132-a7eb-b6afba9bae03︡{"done": true, "stdout": ""}︡
︠fab50765-8923-442f-ac47-a65ecf9a299ai︠
%md
We compute the vertices of the Newton polytope of the critical function for the minimally bistable ERK subnetwork, specialized at k[off]=l[off]=1.
︡ebbcfb2e-22a2-4c1c-84a8-6de523953118︡{"md": "We compute the vertices of the Newton polytope of the critical function for the minimally bistable ERK subnetwork, specialized at k[off]=l[off]=1.", "done": true}︡
︠d5b0d22f-4205-4e28-a242-650b8c0f87e7︠
critfuncexps = [[2, 1, 1, 1, 1, 1, 1, 1, 1, 4, 2], [1, 1, 1, 1, 1, 1, 1, 1, 0, 3, 3], [1, 1, 1, 1, 1, 1, 1, 0, 0, 4, 3], [1, 1, 1, 1, 1, 1, 0, 1, 0, 4, 2], [1, 1, 1, 1, 1, 0, 3, 1, 1, 1, 5], [1, 1, 1, 1, 1, 0, 2, 1, 1, 2, 4], [1, 1, 1, 1, 1, 0, 1, 1, 1, 3, 3], [1, 1, 1, 1, 1, 0, 0, 1, 1, 4, 2], [1, 0, 1, 1, 1, 1, 3, 1, 1, 1, 5], [1, 0, 1, 1, 1, 1, 2, 1, 1, 2, 4], [1, 0, 1, 1, 1, 1, 1, 1, 1, 3, 3], [1, 0, 1, 1, 1, 1, 0, 1, 1, 4, 2], [2, 1, 1, 1, 0, 1, 0, 1, 1, 4, 2], [2, 1, 1, 0, 1, 1, 2, 1, 1, 3, 3], [2, 1, 1, 0, 1, 1, 1, 1, 1, 4, 2], [2, 1, 0, 1, 1, 1, 3, 1, 1, 3, 3], [2, 1, 0, 1, 1, 1, 2, 1, 1, 4, 2], [2, 1, 0, 1, 1, 1, 1, 1, 1, 5, 1], [2, 0, 1, 1, 1, 1, 1, 1, 1, 3, 3], [2, 0, 1, 1, 1, 1, 1, 0, 2, 4, 2], [2, 0, 1, 1, 1, 1, 1, 0, 1, 5, 2], [2, 0, 1, 1, 1, 1, 1, 0, 1, 4, 3], [2, 0, 1, 1, 1, 1, 0, 1, 1, 4, 2], [1, 1, 1, 1, 1, 1, 3, 1, 0, 2, 5], [1, 1, 1, 1, 1, 1, 2, 1, 0, 3, 4], [1, 1, 1, 1, 1, 1, 2, 1, 0, 2, 4], [1, 1, 1, 1, 1, 1, 2, 0, 1, 3, 3], [1, 1, 1, 1, 1, 1, 1, 1, 0, 4, 3], [3, 1, 1, 1, 0, 1, 2, 0, 2, 3, 3], [3, 1, 1, 1, 0, 1, 1, 0, 2, 4, 2], [3, 0, 1, 1, 1, 1, 1, 0, 2, 4, 2], [2, 1, 1, 1, 1, 1, 2, 0, 2, 3, 3], [2, 1, 1, 1, 1, 1, 2, 0, 1, 4, 3], [2, 1, 1, 1, 1, 1, 2, 0, 1, 3, 4], [2, 1, 1, 1, 1, 1, 2, 0, 1, 3, 3], [2, 1, 1, 1, 1, 0, 1, 1, 1, 3, 3], [2, 1, 1, 1, 1, 0, 1, 0, 2, 4, 2], [2, 1, 1, 1, 1, 0, 1, 0, 1, 5, 2], [2, 1, 1, 1, 1, 0, 1, 0, 1, 4, 3], [2, 1, 1, 1, 1, 0, 0, 1, 1, 4, 2], [2, 1, 1, 1, 0, 1, 3, 1, 1, 1, 5], [2, 1, 1, 1, 0, 1, 2, 1, 1, 2, 4], [2, 1, 1, 1, 0, 1, 1, 1, 1, 3, 3], [2, 1, 1, 1, 0, 1, 1, 0, 1, 4, 2], [3, 1, 1, 1, 1, 1, 1, 0, 2, 4, 2], [3, 1, 1, 1, 1, 0, 1, 0, 2, 4, 2], [1, 1, 1, 1, 0, 1, 1, 1, 0, 3, 3], [1, 1, 1, 1, 0, 1, 0, 1, 0, 4, 2], [1, 1, 1, 0, 1, 1, 3, 1, 0, 2, 5], [1, 1, 1, 0, 1, 1, 2, 1, 0, 3, 4], [1, 1, 1, 0, 1, 1, 1, 1, 0, 4, 3], [1, 1, 0, 1, 1, 1, 3, 1, 0, 2, 4], [1, 1, 0, 1, 1, 1, 2, 1, 0, 3, 3], [1, 1, 0, 1, 1, 1, 1, 1, 0, 4, 2], [1, 0, 1, 1, 1, 1, 3, 1, 0, 2, 5], [1, 0, 1, 1, 1, 1, 2, 1, 0, 3, 4], [1, 0, 1, 1, 1, 1, 1, 1, 0, 4, 3], [1, 0, 1, 1, 1, 1, 0, 1, 0, 5, 2], [0, 1, 1, 1, 1, 1, 3, 1, 0, 1, 5], [0, 1, 1, 1, 1, 1, 2, 1, 0, 2, 4], [0, 1, 1, 1, 1, 1, 1, 1, 0, 3, 3], [0, 1, 1, 1, 1, 1, 0, 1, 0, 4, 2], [2, 0, 1, 1, 1, 1, 2, 0, 1, 3, 4], [2, 0, 1, 1, 0, 1, 3, 1, 1, 1, 5], [2, 0, 1, 1, 0, 1, 2, 1, 1, 2, 4], [2, 0, 1, 1, 0, 1, 1, 1, 1, 3, 3], [2, 0, 1, 1, 0, 1, 0, 1, 1, 4, 2], [1, 1, 1, 1, 1, 1, 3, 0, 0, 2, 5], [1, 1, 1, 1, 1, 1, 2, 0, 0, 3, 4], [1, 1, 1, 1, 1, 1, 0, 1, 0, 5, 2], [1, 1, 1, 1, 1, 0, 3, 1, 0, 2, 5], [1, 1, 1, 1, 1, 0, 2, 1, 0, 3, 4], [1, 1, 1, 1, 1, 0, 1, 1, 0, 4, 3], [1, 1, 1, 1, 1, 0, 0, 1, 0, 5, 2], [1, 1, 1, 1, 0, 1, 3, 1, 0, 1, 5], [1, 1, 1, 1, 0, 1, 2, 1, 0, 2, 4], [3, 1, 0, 1, 1, 1, 2, 0, 2, 4, 2], [3, 1, 0, 1, 1, 1, 1, 0, 2, 5, 1], [3, 0, 1, 1, 0, 1, 2, 0, 2, 3, 3], [3, 0, 1, 1, 0, 1, 1, 0, 2, 4, 2], [2, 1, 1, 1, 1, 0, 2, 0, 2, 3, 3], [2, 1, 1, 1, 1, 0, 2, 0, 1, 4, 3], [2, 1, 1, 1, 1, 0, 2, 0, 1, 3, 4], [2, 1, 1, 1, 0, 1, 2, 0, 1, 3, 3], [2, 1, 1, 1, 0, 0, 3, 1, 1, 1, 5], [2, 1, 1, 1, 0, 0, 2, 1, 1, 2, 4], [2, 1, 1, 1, 0, 0, 1, 1, 1, 3, 3], [2, 1, 0, 1, 1, 1, 3, 0, 1, 3, 3], [2, 1, 0, 1, 1, 1, 2, 0, 1, 4, 2], [2, 1, 0, 1, 1, 1, 1, 0, 1, 5, 1], [2, 1, 0, 0, 1, 1, 3, 1, 1, 3, 3], [2, 1, 0, 0, 1, 1, 2, 1, 1, 4, 2], [2, 1, 0, 0, 1, 1, 1, 1, 1, 5, 1], [2, 0, 1, 1, 1, 1, 2, 0, 2, 3, 3], [2, 0, 1, 1, 1, 1, 2, 0, 1, 4, 3], [3, 0, 0, 1, 1, 1, 2, 0, 2, 4, 2], [3, 0, 0, 1, 1, 1, 1, 0, 2, 5, 1], [2, 1, 1, 1, 0, 0, 0, 1, 1, 4, 2], [2, 1, 0, 1, 1, 1, 0, 1, 1, 6, 0], [1, 1, 1, 0, 1, 1, 0, 1, 0, 5, 2], [1, 1, 0, 1, 1, 1, 0, 1, 0, 5, 1], [3, 1, 1, 1, 0, 0, 2, 0, 2, 3, 3], [3, 1, 1, 1, 0, 0, 1, 0, 2, 4, 2], [3, 1, 0, 1, 1, 0, 2, 0, 2, 4, 2], [3, 1, 0, 1, 1, 0, 1, 0, 2, 5, 1], [2, 1, 1, 1, 1, 1, 2, 1, 1, 3, 3], [2, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3], [2, 1, 1, 1, 1, 1, 1, 0, 2, 4, 2], [2, 1, 1, 1, 1, 1, 1, 0, 1, 5, 2], [2, 1, 1, 1, 1, 1, 1, 0, 1, 4, 3], [2, 1, 1, 1, 1, 1, 1, 0, 1, 4, 2], [2, 1, 1, 1, 1, 1, 0, 1, 1, 4, 2], [1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 5], [1, 1, 1, 1, 1, 1, 2, 1, 1, 2, 4], [1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3], [1, 1, 1, 1, 1, 1, 1, 0, 1, 4, 2], [1, 1, 1, 1, 1, 1, 0, 1, 1, 4, 2], [2, 1, 0, 0, 1, 1, 0, 1, 1, 6, 0], [2, 0, 1, 1, 1, 1, 1, 1, 2, 4, 2], [2, 0, 1, 1, 1, 1, 1, 1, 1, 5, 2], [2, 0, 1, 1, 1, 1, 1, 1, 1, 4, 3], [3, 0, 1, 1, 1, 1, 1, 1, 2, 4, 2], [1, 1, 1, 0, 1, 1, 2, 1, 1, 3, 3], [1, 1, 1, 0, 1, 1, 1, 1, 1, 4, 2], [2, 0, 1, 1, 1, 1, 2, 1, 2, 3, 3], [2, 0, 1, 1, 1, 1, 2, 1, 1, 4, 3], [2, 0, 1, 1, 1, 1, 2, 1, 1, 3, 4], [3, 0, 1, 1, 0, 1, 2, 1, 2, 3, 3], [3, 0, 1, 1, 0, 1, 1, 1, 2, 4, 2], [2, 0, 1, 0, 1, 1, 2, 1, 2, 3, 3], [2, 0, 1, 0, 1, 1, 2, 1, 1, 4, 3], [2, 0, 1, 0, 1, 1, 2, 1, 1, 3, 4], [2, 0, 1, 0, 1, 1, 1, 1, 2, 4, 2], [2, 0, 1, 0, 1, 1, 1, 1, 1, 5, 2], [2, 0, 1, 0, 1, 1, 1, 1, 1, 4, 3], [2, 0, 0, 1, 1, 1, 2, 1, 1, 3, 3], [2, 0, 0, 1, 1, 1, 1, 1, 1, 4, 2], [3, 0, 1, 0, 1, 1, 1, 1, 2, 4, 2], [3, 0, 0, 1, 1, 1, 2, 1, 2, 4, 2], [3, 0, 0, 1, 1, 1, 1, 1, 2, 5, 1], [3, 0, 1, 0, 0, 1, 1, 1, 2, 4, 2], [3, 0, 0, 0, 1, 1, 2, 1, 2, 4, 2], [3, 0, 0, 0, 1, 1, 1, 1, 2, 5, 1], [3, 0, 1, 0, 0, 1, 2, 1, 2, 3, 3], [1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 3], [1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 2]]
︡40b1df3e-3991-4248-b1c0-cdbd863acfca︡{"done": true, "stdout": ""}︡
︠d0f7ffc7-ecee-4513-a339-e1c1a09ff974︠
p = Polyhedron(vertices = critfuncexps)
print(p)
pvert = p.vertices()
pvert = str(pvert).replace("A vertex at (", "[").replace("),", "],").replace("(","[").replace(")","]")
print(pvert)
prep = p.Hrepresentation()
prep = str(prep).replace("An inequality (", "[[").replace(") x","],").replace(">= 0","]").replace("(","[").replace(")","]")
print(prep)
︡69a6e2f4-b7c6-4838-a217-1db260d902ff︡{"html": "<pre><span style=\"font-family:monospace;\">A 11-dimensional polyhedron in ZZ^11 defined as the convex hull of 113 vertices\n[[0, 1, 1, 1, 1, 1, 0, 1, 0, 4, 2], [3, 1, 1, 1, 1, 1, 1, 0, 2, 4, 2], [3, 1, 1, 1, 1, 0, 1, 0, 2, 4, 2], [0, 1, 1, 1, 1, 1, 3, 1, 0, 1, 5], [1, 0, 1, 1, 1, 1, 0, 1, 0, 5, 2], [1, 0, 1, 1, 1, 1, 0, 1, 1, 4, 2], [3, 1, 1, 1, 0, 1, 2, 0, 2, 3, 3], [3, 1, 1, 1, 0, 1, 1, 0, 2, 4, 2], [3, 1, 1, 1, 0, 0, 2, 0, 2, 3, 3], [3, 1, 1, 1, 0, 0, 1, 0, 2, 4, 2], [1, 0, 1, 1, 1, 1, 3, 1, 0, 2, 5], [1, 0, 1, 1, 1, 1, 3, 1, 1, 1, 5], [1, 1, 0, 1, 1, 1, 0, 1, 0, 5, 1], [3, 1, 0, 1, 1, 1, 2, 0, 2, 4, 2], [3, 1, 0, 1, 1, 1, 1, 0, 2, 5, 1], [1, 1, 0, 1, 1, 1, 3, 1, 0, 2, 4], [1, 1, 1, 0, 1, 1, 0, 1, 0, 5, 2], [3, 1, 0, 1, 1, 0, 2, 0, 2, 4, 2], [1, 1, 1, 0, 1, 1, 1, 1, 1, 4, 2], [3, 1, 0, 1, 1, 0, 1, 0, 2, 5, 1], [1, 1, 1, 0, 1, 1, 2, 1, 1, 3, 3], [1, 1, 1, 0, 1, 1, 3, 1, 0, 2, 5], [1, 1, 1, 1, 0, 1, 0, 1, 0, 4, 2], [3, 0, 1, 1, 1, 1, 1, 1, 2, 4, 2], [3, 0, 1, 1, 1, 1, 1, 0, 2, 4, 2], [1, 1, 1, 1, 0, 1, 3, 1, 0, 1, 5], [1, 1, 1, 1, 1, 0, 0, 1, 0, 5, 2], [1, 1, 1, 1, 1, 0, 0, 1, 1, 4, 2], [3, 0, 1, 1, 0, 1, 2, 1, 2, 3, 3], [3, 0, 1, 1, 0, 1, 2, 0, 2, 3, 3], [3, 0, 1, 1, 0, 1, 1, 1, 2, 4, 2], [3, 0, 1, 1, 0, 1, 1, 0, 2, 4, 2], [1, 1, 1, 1, 1, 0, 3, 1, 0, 2, 5], [1, 1, 1, 1, 1, 0, 3, 1, 1, 1, 5], [1, 1, 1, 1, 1, 1, 0, 1, 0, 4, 2], [1, 1, 1, 1, 1, 1, 0, 1, 0, 5, 2], [1, 1, 1, 1, 1, 1, 0, 1, 1, 4, 2], [1, 1, 1, 1, 1, 1, 1, 0, 0, 4, 3], [1, 1, 1, 1, 1, 1, 1, 0, 1, 4, 2], [3, 0, 1, 0, 1, 1, 1, 1, 2, 4, 2], [3, 0, 1, 0, 0, 1, 2, 1, 2, 3, 3], [3, 0, 1, 0, 0, 1, 1, 1, 2, 4, 2], [1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 2], [3, 0, 0, 1, 1, 1, 2, 1, 2, 4, 2], [1, 1, 1, 1, 1, 1, 2, 0, 1, 3, 3], [1, 1, 1, 1, 1, 1, 2, 1, 0, 2, 4], [3, 0, 0, 1, 1, 1, 2, 0, 2, 4, 2], [3, 0, 0, 1, 1, 1, 1, 1, 2, 5, 1], [1, 1, 1, 1, 1, 1, 2, 1, 1, 3, 3], [1, 1, 1, 1, 1, 1, 3, 0, 0, 2, 5], [1, 1, 1, 1, 1, 1, 3, 1, 0, 2, 5], [1, 1, 1, 1, 1, 1, 3, 1, 1, 1, 5], [2, 0, 0, 1, 1, 1, 1, 1, 1, 4, 2], [2, 0, 0, 1, 1, 1, 2, 1, 1, 3, 3], [2, 0, 1, 0, 1, 1, 1, 1, 1, 4, 3], [2, 0, 1, 0, 1, 1, 1, 1, 1, 5, 2], [2, 0, 1, 0, 1, 1, 1, 1, 2, 4, 2], [2, 0, 1, 0, 1, 1, 2, 1, 1, 3, 4], [2, 0, 1, 0, 1, 1, 2, 1, 1, 4, 3], [2, 0, 1, 0, 1, 1, 2, 1, 2, 3, 3], [2, 0, 1, 1, 0, 1, 0, 1, 1, 4, 2], [3, 0, 0, 1, 1, 1, 1, 0, 2, 5, 1], [3, 0, 0, 0, 1, 1, 2, 1, 2, 4, 2], [2, 0, 1, 1, 0, 1, 3, 1, 1, 1, 5], [2, 0, 1, 1, 1, 1, 0, 1, 1, 4, 2], [2, 0, 1, 1, 1, 1, 1, 0, 1, 4, 3], [2, 0, 1, 1, 1, 1, 1, 0, 1, 5, 2], [2, 0, 1, 1, 1, 1, 1, 0, 2, 4, 2], [2, 0, 1, 1, 1, 1, 1, 1, 1, 3, 3], [2, 0, 1, 1, 1, 1, 1, 1, 1, 4, 3], [2, 0, 1, 1, 1, 1, 1, 1, 1, 5, 2], [2, 0, 1, 1, 1, 1, 1, 1, 2, 4, 2], [2, 0, 1, 1, 1, 1, 2, 0, 1, 3, 4], [2, 0, 1, 1, 1, 1, 2, 0, 1, 4, 3], [2, 0, 1, 1, 1, 1, 2, 0, 2, 3, 3], [2, 0, 1, 1, 1, 1, 2, 1, 1, 3, 4], [2, 0, 1, 1, 1, 1, 2, 1, 1, 4, 3], [2, 0, 1, 1, 1, 1, 2, 1, 2, 3, 3], [2, 1, 0, 0, 1, 1, 0, 1, 1, 6, 0], [3, 0, 0, 0, 1, 1, 1, 1, 2, 5, 1], [2, 1, 1, 1, 1, 1, 2, 1, 1, 3, 3], [2, 1, 0, 0, 1, 1, 3, 1, 1, 3, 3], [2, 1, 0, 1, 1, 1, 0, 1, 1, 6, 0], [2, 1, 0, 1, 1, 1, 1, 0, 1, 5, 1], [2, 1, 1, 1, 1, 1, 2, 0, 2, 3, 3], [2, 1, 1, 1, 1, 1, 2, 0, 1, 4, 3], [2, 1, 1, 1, 1, 1, 2, 0, 1, 3, 4], [2, 1, 0, 1, 1, 1, 3, 0, 1, 3, 3], [2, 1, 0, 1, 1, 1, 3, 1, 1, 3, 3], [2, 1, 1, 0, 1, 1, 1, 1, 1, 4, 2], [2, 1, 1, 0, 1, 1, 2, 1, 1, 3, 3], [2, 1, 1, 1, 0, 0, 0, 1, 1, 4, 2], [2, 1, 1, 1, 1, 1, 2, 0, 1, 3, 3], [2, 1, 1, 1, 1, 1, 1, 1, 1, 4, 2], [2, 1, 1, 1, 0, 0, 3, 1, 1, 1, 5], [2, 1, 1, 1, 0, 1, 0, 1, 1, 4, 2], [2, 1, 1, 1, 0, 1, 1, 0, 1, 4, 2], [2, 1, 1, 1, 1, 1, 1, 1, 1, 3, 3], [2, 1, 1, 1, 0, 1, 2, 0, 1, 3, 3], [2, 1, 1, 1, 1, 1, 1, 0, 2, 4, 2], [2, 1, 1, 1, 0, 1, 3, 1, 1, 1, 5], [2, 1, 1, 1, 1, 0, 0, 1, 1, 4, 2], [2, 1, 1, 1, 1, 0, 1, 0, 1, 4, 3], [2, 1, 1, 1, 1, 0, 1, 0, 1, 5, 2], [2, 1, 1, 1, 1, 0, 1, 0, 2, 4, 2], [2, 1, 1, 1, 1, 0, 1, 1, 1, 3, 3], [2, 1, 1, 1, 1, 0, 2, 0, 1, 3, 4], [2, 1, 1, 1, 1, 0, 2, 0, 1, 4, 3], [2, 1, 1, 1, 1, 0, 2, 0, 2, 3, 3], [2, 1, 1, 1, 1, 1, 0, 1, 1, 4, 2], [2, 1, 1, 1, 1, 1, 1, 0, 1, 4, 2], [2, 1, 1, 1, 1, 1, 1, 0, 1, 4, 3], [2, 1, 1, 1, 1, 1, 1, 0, 1, 5, 2]]\n[[[0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1], + 0 ], [[0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1], - 6 ], [[-1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0], + 1 ], [[0, 0, 1, 0, 0, 0, 1, 0, -1, 0, -1], + 2 ], [[0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1], + 8 ], [[0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0], + 1 ], [[0, -1, 0, 0, 0, 0, 0, -1, -1, -1, -1], + 9 ], [[0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0], - 7 ], [[0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0], + 1 ], [[0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0], - 1 ], [[-1, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0], + 6 ], [[0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0], + 1 ], [[0, 0, -2, 0, 0, 0, 0, 0, 0, 0, 1], + 0 ], [[0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0], - 1 ], [[0, 0, 0, 0, 0, 0, 1, 0, -1, -1, -1], + 7 ], [[0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0], + 1 ], [[-2, 0, 0, 0, -2, 0, 0, 0, 1, 1, 0], + 2 ], [[0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0], + 1 ], [[0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1], - 10 ], [[0, 1, -1, 0, 0, 1, -1, 0, 1, 1, 2], - 9 ], [[0, 0, 1, 0, 0, 0, 1, 0, 0, 0, -1], + 1 ], [[0, -1, -1, 0, 1, 0, -1, -1, 0, -1, 0], + 7 ], [[0, 0, -1, 0, 0, 0, -1, 0, 1, 0, 1], - 1 ], [[0, 0, 2, 0, 0, 0, 2, 0, -1, -1, -2], + 7 ], [[0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0], - 1 ], [[0, -1, 2, 0, 0, 0, 1, -1, -1, -1, -2], + 9 ], [[0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0], + 1 ], [[0, 0, -2, 0, 0, 0, -2, 0, 0, 0, 1], + 3 ], [[-1, 0, -1, 0, -1, 0, -1, 0, 1, 1, 1], - 1 ], [[1, 0, 1, 0, 1, 0, 0, 0, -1, -1, -1], + 4 ]]\n</span></pre>", "done": true}︡









