# ファイル先頭で Printf を明示的に読み込む
using Printf
Printf.@printf("結果: %.12f\n", π/2)

# 被積分関数
f(x) = sqrt(1 - x^2)

# 二重指数積分関数
function de_integrate(f; N=100, h=0.1)
    total = 0.0
    for k in -N:N
        t = k * h
        x = tanh((π / 2) * sinh(t))
        dxdt = (π / 2) * cosh(t) / cosh((π / 2) * sinh(t))^2
        total += f(x) * dxdt
    end
    return h * total
end

# 実行
result = de_integrate(f)

# 出力（Printf モジュールを使って表示）
@printf("DE積分の結果 ≈ %.12f\n", result)
@printf("理論値（π/2） ≈ %.12f\n", π/2)