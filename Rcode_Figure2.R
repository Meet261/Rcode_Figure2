
# We use the R package qgraph to visualize our matrix
if (!require(qgraph)) install.packages("qgraph"); require(qgraph)

# Build a matrix (Figure 2C)
adj_matrix_c <- matrix(c(
  0,1,0,1,1,
  1,0,0,1,0,
  0,0,0,1,0,
  1,1,1,0,1,
  1,0,0,1,0
  ), nrow = 5, ncol = 5, byrow = TRUE
  )

#See your matrix (2C)
adj_matrix_c


# Build a weighted matrix (Figure 2D)
adj_matrix_d <- matrix(c(
  0,.22,0,.45,.62,
  .59,0,0,.98,0,
  0,0,0,.57,0,
  .67,0,0,0,0,
  0,0,0,.29,0
), nrow = 5, ncol = 5, byrow = TRUE
)

#See your matrix (2D)
adj_matrix_d


### VISUALIZE YOUR NETWORKS

# Make sure you have the right package: qgraph
if (!require(qgraph)) install.packages("qgraph"); require(qgraph)

# Visualize the network (Fig. 2A) created from adjacency matrix 2C 
qgraph(adj_matrix_c)

# To specify visualization details, can check options by entering ?qgraph or
# checking online documentation:
# https://www.rdocumentation.org/packages/qgraph/versions/1.6.5/topics/qgraph

# Specify visual details:
qgraph(adj_matrix_c, layout = "circle", labels = c("A","B","C","D","E"), esize = 10, 
       color = "#ffc60a", borders = FALSE, vsize = 15)


# Visualize the network (Fig. 2B) created from adjacency matrix 2D 
qgraph(adj_matrix_d)

# Specify visual details:
qgraph(adj_matrix_d, layout = "circle", labels = c("A","B","C","D","E"), color = "#ffc60a", 
       borders = FALSE, vsize = 15, edge.color = "black", curve = .25, asize = 5, esize = 10)
