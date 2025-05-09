using FastGaussQuadrature

n = 100
x, w = gausslegendre(n)
f(x) = sqrt(1 - x^2)
integral = sum(w .* f.(x))

println("数値積分結果: ", integral)
println("理論値 π/2: ", π/2)
println("誤差: ", abs(integral - π/2))

