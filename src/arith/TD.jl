#=
#    Internal Use Only
=#


function renormAs3{T<:Float64}(c0::T, c1::T, c2::T, c3::T)
  if isinf(c0)
    return c0,zero(Float64),zero(Float64),zero(Float64)
  end

  s0,c3 = eftSum2inOrder(c2, c3)
  s0,c2 = eftSum2inOrder(c1, s0)
  c0,c1 = eftSum2inOrder(c0, s0)

  s0 = c0; s1 = c1; s2 = zero(Float64)
  if s1 != zero(Float64)
    s1,s2 = eftSum2inOrder(s1, c2)
    if s2 != zero(Float64)
      s2 += c3                      #  s2,s3 = eftSum2inOrder(s2, c3) # for renormAs4
    else
      s1,s2 = eftSum2inOrder(s1, c3)
    end
  else
    s0,s1 = eftSum2inOrder(s0, c2)
    if s1 != zero(Float64)
      s1,s2 = eftSum2inOrder(s1, c3)
    else
      s0,s1 = eftSum2inOrder(s0, c3)
    end
  end

  s0, s1, s2                       # s0, s1, s2, s3 # for renormAs4
end

@renorm function renorm{T<:Float64}(c0::T, c1::T, c2::T)
  s0=s1=s2=zero(Float64)

  if isinf(c0)
    return c0,zero(Float64),zero(Float64)
  end

  s0,c2 = eftSum2inOrder(c1, c2)
  c0,c1 = eftSum2inOrder(c0, s0)

  s0 = c0
  s1 = c1

  if s1 != zero(Float64)
    s1,s2 = eftSum2inOrder(s1, c2)
    if s2 == zero(Float64)
      s1,s2 = eftSum2inOrder(s1, c3)
    end
  else
    s0,s1 = eftSum2inOrder(s0, c2)
  end

  s0, s1, s2
end

function renorm{T<:Float64}(c0::T, c1::T)
   eftSum2inOrder(c0,c1)
end


# addition

# this is less rigorous addition method -- the
# low order bits are dropped converting to DD

function (+){T<:TD}(a::T,b::T)
    s0 = a.hi + b.hi
    s1 = a.md + b.md
    s2 = a.lo + b.lo

    v0 = s0 - a.hi
    v1 = s1 - a.md
    v2 = s2 - a.lo

    u0 = s0 - v0
    u1 = s1 - v1
    u2 = s2 - v2

    w0 = a.hi - u0
    w1 = a.md - u1
    w2 = a.lo - u2

    u0 = b.hi - v0
    u1 = b.md - v1
    u2 = b.lo - v2

    t0 = w0 + u0
    t1 = w1 + u1
    t2 = w2 + u2

    s1,t0 = eftSum2(s1, t0)
    s2,t0,t1 = eftSum3(s2, t0, t1)
    t0,t2 = eftSum2(t0, t2)
    t0 = t0 + t1

    s0,s1,s2 = renormAs3(s0, s1, s2, t0)
    TD(s0, s1, s2)
end


# subtract

# this is the sloppier subtract, we do not need all the bits
(-)(a::TD,b::TD) = (+)(a,-b)


# multiply

# square

function (sqr)(a::TD)
  p0,q0 = eftSquare(a.hi)
  p1,q1 = eftProd2(2.0*a.hi, a.md)
  p2,q2 = eftProd2(2.0*a.hi, a.lo)
  p3,q3 = eftSquare(a.md)

  p1,q0 = eftSum2(q0, p1)

  q0,q1 = eftSum2(q0, q1)
  p2,p3 = eftSum2(p2, p3)

  s0,t0 = eftSum2(q0, p2)
  s1,t1 = eftSum2(q1, p3)

  s1,t0 = eftSum2(s1, t0)
  t0 += t1

  s1,t0 = eftSum2inOrder(s1, t0)
  p2,t1 = eftSum2inOrder(s0, s1)
  p3,q0 = eftSum2inOrder(t1, t0)

  p4 = 2.0 * a.md * a.lo

  q2,q3 = eftSum2(q2, q3)

  t0,t1 = eftSum2(p4, q2)
  t1 += q3

  p3,p4 = eftSum2(p3, t0)
  p4 = p4 + q0 + t1

  #p0,p1,p2 = renormAs3(p0, p1, p2, p3, p4)
  p0,p1,p2 = renormAs3(p0, p1, p2, p3+p4)

  TD(p0,p1,p2)
end

# this is less rigorous multiply method -- the
# low order bits are dropped converting to DD

function (*){T<:TD}(a::T,b::T)
  p0,q0 = eftProd2(a.hi, b.hi)
  p1,q1 = eftProd2(a.hi, b.md)
  p2,q2 = eftProd2(a.md, b.hi)
  p3,q3 = eftProd2(a.hi, b.lo)
  p4,q4 = eftProd2(a.md, b.md)
  p5,q5 = eftProd2(a.lo, b.hi)

  # Start Accumulation
  p1,p2,q0 = eftSum3(p1, p2, q0)

  # Six-Three Sum  of p2, q1, q2, p3, p4, p5
  p2,q1,q2 = eftSum3(p2, q1, q2)
  p3,p4,p5 = eftSum3(p3, p4, p5)
  # compute (s0, s1, s2) = (p2, q1, q2) + (p3, p4, p5)
  s0,t0 = eftSum2(p2, p3)
  s1,t1 = eftSum2(q1, p4)
  s2 = q2 + p5
  s1,t0 = eftSum2(s1, t0)
  s2 += (t0 + t1)

  # O(eps^3) order terms
  s1 += a.md*b.lo + a.lo*b.md + q0 + q3 + q4 + q5
  p0,p1,s0 = renormAs3(p0, p1, s0, s1+s2)
  TD(p0,p1,s0)
end


# reciprocation

function (recip)(b::TD)
  a = one(TD)

  q0 = 1.0 / b.hi
  r = a - (b * q0)
  q1 = r.hi / b.hi
  r = r - (b * q1)
  q2 = r.hi / b.hi
  r = r -(b * q2)
  q3 = r.hi / b.hi
  r  = r - (b * q3)
  q3 += r.hi / b.hi

  q0,q1,q2 = renormAs3(q0, q1, q2, q3)

  TD(q0, q1, q2)
end

# division

function (/)(a::TD, b::TD)

  q0 = a.hi / b.hi
  r = a - (b * q0)
  q1 = r.hi / b.hi
  r -= (b * q1)
  q2 = r.hi / b.hi
  r -= (b * q2)
  q3 = r.hi / b.hi
  r  = r - (b * q3)
  q3 += r.hi / b.hi

  q0,q1,q2 = renormAs3(q0, q1, q2, q3)

  TD(q0, q1, q2)
end


function hypot(a::TD, b::TD)
    a = abs(a)
    b = abs(b)
    t, x = min(a,b), max(a,b)
    t = t/a
    x * sqrt(1.0 + t*t)
end
