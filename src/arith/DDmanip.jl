isnan(a::DD) = isnan(a.hi)
isinf(a::DD) = isinf(a.hi)
isfinite(a::DD) = isfinite(a.hi)

sign(a::DD) = sign(a.hi)
signbit(a::DD) = signbit(a.hi)

(-)(a::DD) = DD(-a.hi,-a.lo)
(abs)(a::DD) = (a.hi >= zero(Float64) ? a : -a)

@inline flipsign(a::DD,b::DD) = DD(flipsign(a.hi,b.hi), flipsign(a.lo,b.hi))
@inline flipsign(a::DD,b::Float64) = DD(flipsign(a.hi,b), flipsign(a.lo,b))
@inline flipsign(a::DD,b::Integer) = DD(flipsign(a.hi,b), flipsign(a.lo,b))

@inline function copysign(a::DD,b::Float64)
    if (b < zero(Float64))
        a.hi < zero(Float64) ? a : -a
    else
        a.hi < zero(Float64) ? -a : a
    end
end
@inline copysign(a::DD,b::Integer) = copysign(a,convert(Float64,b))
@inline copysign(a::DD,b::DD) = copysign(a,b.hi)


function (floorceil)(fn::Function, a::DD)
    hi = fn(a.hi)
    lo = zero(Float64)
    if (hi == a.hi)
        lo = fn(a.lo)
        hi,lo = eftSum2inOrder(hi,lo)
    end
    DD(hi,lo)
end

(floor)(a::DD) = floorceil(floor,a)
(ceil)(a::DD) = floorceil(ceil,a)


function round(a::DD)
    hi = round(a.hi)
    lo = zero(Float64)
    if (hi == a.hi)
        lo = round(a.lo)
        hi,lo = eftSum2inOrder(hi,lo)
    end
    DD(hi,lo)
end
#(round)(a::DD) = floorceil(round,a)

@inline function (trunc)(a::DD)
    a.hi >= zero(Float64) ? floor(a) : ceil(a)
end

"""
stretch is the opposite of trunc()
it extends to the nearest integer away from zero
"""
@inline function (stretch)(a::DD)
    a.hi >= zero(Float64) ? ceil(a) : floor(a)
end


function fld{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    floor( a/b )
end

function cld{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    ceil( a/b )
end


@inline function mulby2(a::DD)
    DD(a.hi*2.0, a.lo*2.0)
end

@inline function divby2(a::DD)
    DD(a.hi*0.5, a.lo*0.5)
end

@inline function mulbypow2(a::DD,p::Float64)
    DD(a.hi*p, a.lo*p)
end

@inline function divbypow2(a::DD,p::Float64)
    fr,xp = frexp(p)
    mulbypow2(a, ldexp(fr,-xp))
end

function div{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    temp = a/b
    trunc(temp)
end
div(a::DD,b::Float64) = div(a,DD(b))
div(a::Float64,b::DD) = div(DD(a),b)

function rem{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    a - div(a,b)*b
end


%{T<:TD}(a::T,b::T) = a - trunc(a/b)
%(a::TD,b::Float64) = %(a,b)
%(a::Float64,b::TD) = %(a,b)

function divrem{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("denominator must be nonzero"))
    end
    temp = a/b
    d = trunc(temp)
    r = a - d*b
    d,r
end


function mod{T<:DD}(a::T,b::T)
    if (b.hi == zero(Float64))
        throw(DomainError("modulus must be nonzero"))
    end
    if signbit(a.hi)==signbit(b.hi)
        rem(a,b)
    else
        d = floor(a/b)
        a - d*b
    end
end

mod(a::DD,b::Float64) = mod(a,convert(DD,b))
mod(a::Float64,b::DD) = mod(convert(DD,a),b)

function fldmod{T<:DD}(a::T,b::T)
    d = floor(a/b)
    a - d*b
    d,a
end

#=
   This well-behaved bounded modulo implementation is from
   The pitfalls of verifying floating-point computations
   by David Monniaux, 2008 
   http://arxiv.org/abs/cs/0701192v5
=#
function modulo{T<:DD}(a::T, lowerbound::T, upperbound::T)
    delta = upperbound - lowerbound
    a - (floor((a - lowerbound)/delta) * delta)
end

