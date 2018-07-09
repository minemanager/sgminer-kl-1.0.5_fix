#!/bin/bash
export GPU_FORCE_64BIT_PTR=1
export GPU_USE_SYNC_OBJECTS=1
export GPU_MAX_ALLOC_PERCENT=100
export GPU_SINGLE_ALLOC_PERCENT=100
export GPU_MAX_HEAP_SIZE=100

# Set the pool, username, and port here. All three arguments are required.
# Make sure to change x16r to x16s/xevan/x17 if you're using that algo instead.
./sgminer -k x16s -o stratum+tcp://x16s.mine.zpool.ca:3663 -u 3Bh7gjE4aNZzkFD6eu3jGKGHw3aw5vRfL6 -p donate -X 256 -g 2

# Notes:
# - xIntensities of 128-1024 usually work fine. Feel free to tweak it to your liking, but
#   keep the xIntensity to a multiple of 64.
#   Note that higher intensities can sometimes lower your hashrate, since it creates more
#   work units at once; after a certain point, the work units take longer to return and
#   this will actually decrease your hashrate.
# - If you have an integrated GPU, you might have to set the OpenCL platform correctly
#   using --gpu-platform. --gpu-platform=1 usually works here if the default isn't working.