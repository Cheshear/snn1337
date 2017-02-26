
__kernel void multiplier(__global int** a, __global int** b, __global int** с, int n) {
    int gid = get_global_id(0);
    for (int k = 0; k < n; ++k) {
        c[gid][k] = 0;
        for (int i = 0; i < n; ++i) {
            c[gid][k] += a[gid][i] * b[i][k];
        }
    }
}