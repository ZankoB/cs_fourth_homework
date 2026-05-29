# Results Entry Tables

Use these tables to record measured metrics for each experiment configuration.

## Task 1 — Histogram (compute units: 2, 4, 8)

| Compute Units | Kernel | loadLatencyDist::mean | vALUInsts | ldsBankAccess | totalCycles | vpc |
|---:|---:|---:|---:|---:|---:|---:|
| 2 | Naive |  |  |  |  |  |
| 2 | Optimized (priv.) |  |  |  |  |  |
| 4 | Naive |  |  |  |  |  |
| 4 | Optimized (priv.) |  |  |  |  |  |
| 8 | Naive |  |  |  |  |  |
| 8 | Optimized (priv.) |  |  |  |  |  |

## Task 2 — Matrix Transpose (compute units: 2, 4, 8)

| Compute Units | Kernel | loadLatencyDist::mean | vALUInsts | ldsBankAccess | totalCycles | vpc |
|---:|---:|---:|---:|---:|---:|---:|
| 2 | Naive |  |  |  |  |  |
| 2 | Shared (16×17) |  |  |  |  |  |
| 4 | Naive |  |  |  |  |  |
| 4 | Shared (16×17) |  |  |  |  |  |
| 8 | Naive |  |  |  |  |  |
| 8 | Shared (16×17) |  |  |  |  |  |

## Task 3 — SpMV (compute units: 2, 4, 8)

| Compute Units | Kernel | controlFlowDivergenceDist::mean | controlFlowDivergenceDist::stdev | vALUInsts | globalReads | globalWrites | coalsrLineAddresses::total |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 2 | Divergent |  |  |  |  |  |  |
| 2 | Uniform (sorted) |  |  |  |  |  |  |
| 4 | Divergent |  |  |  |  |  |  |
| 4 | Uniform (sorted) |  |  |  |  |  |  |
| 8 | Divergent |  |  |  |  |  |  |
| 8 | Uniform (sorted) |  |  |  |  |  |  |

---

Record values from the **first** occurrence (or first two occurrences where instructed) of each metric in `stats.txt` as specified in the assignment.
