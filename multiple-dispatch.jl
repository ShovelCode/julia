abstract type Shape end

struct Circle <: Shape
    x::Float64
    y::Float64
    r::Float64
end

struct Rectangle <: Shape
    x::Float64
    y::Float64
    w::Float64
    h::Float64
end

function area(shape::Circle)
    return π * shape.r^2
end

function area(shape::Rectangle)
    return shape.w * shape.h
end

function area(shape::Shape)
    throw(TypeError("Area not implemented for $(typeof(shape))"))
end

function total_area(shapes::Vector{Shape})
    total = 0.0
    for shape in shapes
        total += area(shape)
    end
    return total
end

shapes = [Circle(0.0, 0.0, 1.0), Rectangle(0.0, 0.0, 2.0, 3.0)]
println("Total area: ", total_area(shapes))
