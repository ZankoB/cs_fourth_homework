# Results Entry Tables

## Task 1 — Histogram (compute units: 2, 4, 8)

| Compute Units | Kernel | loadLatencyDist::mean | vALUInsts | ldsBankAccess | totalCycles | vpc |
|---:|---:|---:|---:|---:|---:|---:|
| 2 | Naive | 6150268.676758 | 22528 | 0 | 827250 | 3.802633 |
| 2 | Optimized (priv.) | 806751.708984 | 28672 | 393216 | 229998 | 21.655562 |
| 4 | Naive | 12392765.136719 | 11088 | 0 | 805317 | 1.922582 |
| 4 | Optimized (priv.) | 1673886.962891 | 14336 | 196608 | 176513 | 14.108695 |
| 8 | Naive | 24162123.168945 | 5632 | 0 | 784254 | 1.002777 |
| 8 | Optimized (priv.) | 4135812.011719 | 7168 | 98304 | 171581 | 7.257121 |

## Task 2 — Matrix Transpose (compute units: 2, 4, 8)

| Compute Units | Kernel | loadLatencyDist::mean | vALUInsts | ldsBankAccess | totalCycles | vpc |
|---:|---:|---:|---:|---:|---:|---:|
| 2 | Naive | 8028555.908203 | 36360 | 0 |  |  |
| 2 | Shared (16×17) | 2676883.300781 | 53560 | 263680 |  |  |
| 4 | Naive | 19325775.390625 | 18288 | 0 |  |  |
| 4 | Shared (16×17) | 6201466.796875 | 25896 | 127488 |  |  |
| 8 | Naive | 42430520.019531 | 9216 | 0 |  |  |
| 8 | Shared (16×17) | 12942396.972656 | 13312 |  |  |  |
| 2 | Naive | 8028555.908203 | 36360 | 0 | 526860 | 7.361348 |
| 2 | Shared (16×17) | 2676883.300781 | 53560 | 263680 | 326839 | 21.379089 |
| 4 | Naive | 19325775.390625 | 18288 | 0 | 590495 | 3.303533 |
| 4 | Shared (16×17) | 6201466.796875 | 25896 | 127488 | 331883 | 10.179587 |
| 8 | Naive | 42430520.019531 | 9216 | 0 | 666437 | 1.475068 |
| 8 | Shared (16×17) | 12942396.972656 | 13312 | 65536 | 331165 | 5.244226 |

## Task 3 — SpMV (compute units: 2, 4, 8)

| Compute Units | Kernel | controlFlowDivergenceDist::mean | controlFlowDivergenceDist::stdev | vALUInsts | globalReads | globalWrites | coalsrLineAddresses::total |
|---:|---:|---:|---:|---:|---:|---:|---:|
| 2 | Divergent | 33.496229 | 19.051824 | 6328 | 1544 | 8 | 3104 |
| 2 | Uniform (sorted) | 61.014577 | 10.370069 | 3256 | 776 | 8 | 1664 |
| 4 | Divergent | 33.496229 | 19.052722 | 3164 | 772 | 4 | 3104 |
| 4 | Uniform (sorted) | 60.620462 | 10.974078 | 1436 | 340 | 4 | 1664 |
| 8 | Divergent | 33.496229 | 19.054518 | 1582 | 386 | 2 | 3104 |
| 8 | Uniform (sorted) | 59.408072 | 12.576833 | 526 | 122 | 2 | 1664 |
