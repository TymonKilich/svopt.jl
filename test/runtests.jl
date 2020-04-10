using svopt, Test

@testset "hillclimb" begin
    x, f = 10, x -> x^4 + 3x^3 + x^2 + sin(x)
    minimhc(f, x) == (-1.9716796875, -4.915215283984578)
    x, f = 4, x -> x^2
    minimhc(f, x) == (0.0, 0.0)
end
