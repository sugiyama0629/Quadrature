using QuadGK    # 高精度な数値積分ライブラリ

# 積分する関数: cos^2(θ)
f(θ) = cos(θ)^2

# 積分区間: [-π/2, π/2]
a = -π/2
b = π/2

# 数値積分
result, err = quadgk(f, a, b)

println("積分値 = ", result)
println("誤差推定 = ", err)
