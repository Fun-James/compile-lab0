#include <iostream>
#include <vector>
#include <chrono>
using namespace std;
using Clock = chrono::high_resolution_clock;

int main() {
    const int N = 10000000;
    vector<int> a(N, 1), b(N, 2), c(N);

    auto t0 = Clock::now();
    for (int i = 0; i < N; ++i) {
        c[i] = a[i] + b[i];
    }
    auto t1 = Clock::now();

    cout << "Last element: " << c[N-1] << endl;
    cout << "Elapsed time: "
         << chrono::duration<double>(t1 - t0).count()
         << " s" << endl;
    return 0;
}