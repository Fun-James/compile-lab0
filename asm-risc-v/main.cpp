#include <iostream>
using namespace std;

const int N = 5;

int factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n - 1);  // 递归函数
}

int main() {
    // ---------- 基本变量 ----------
    int a = 10, b = 3;
    int c;

    // 数值运算
    c = a + b * 2 - (a / b) % 2;   // 算术运算
    c = c << 1;                    // 位移
    c = c | 5;                     // 按位或
    c = c & 7;                     // 按位与
    c = ~c;                        // 按位取反
    cout << "c = " << c << endl;

    // ---------- 条件与短路 ----------
    if (a > b && b > 0 || a == 0) {   // 短路求值
        c = 42;
    } else {
        c = -1;
    }
    cout << "Conditional result c = " << c << endl;

    // ---------- 循环 ----------
    int sum = 0;
    for (int i = 0; i < N; i = i + 1) {
        if (i == 2) continue;   // 控制流
        if (i == 4) break;
        sum = sum + i;
    }
    cout << "Sum after for loop = " << sum << endl;

    int j = 0;
    while (j < 3) {
        sum = sum + j;
        j = j + 1;
    }
    cout << "Sum after while loop = " << sum << endl;

    // ---------- 数组 ----------
    int arr[5];
    int mat[2][3];

    // 一维数组赋值与访问
    for (int i = 0; i < N; i = i + 1) {
        arr[i] = i * i;
    }
    cout << "Array arr: ";
    for (int i = 0; i < N; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;

    // 二维数组赋值与访问
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            mat[i][j] = i + j;
        }
    }
    cout << "Matrix mat:" << endl;
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 3; j++) {
            cout << mat[i][j] << " ";
        }
        cout << endl;
    }

    // ---------- 递归函数 ----------
    int f = factorial(5);
    cout << "factorial(5) = " << f << endl;

    return 0;
}
