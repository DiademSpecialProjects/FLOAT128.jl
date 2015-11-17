#=
   rational approximations to 128bit log(x) for x in [1..2]
=#

#=

const log12approx = [
    log12_01of64,
    log12_02of64,
    log12_03of64,
    log12_04of64,
    log12_05of64,
    log12_06of64,
    log12_07of64,
    log12_08of64,
    log12_09of64,
    log12_10of64,
    log12_11of64,
    log12_12of64,
    log12_13of64,
    log12_14of64,
    log12_15of64,
    log12_16of64,
    log12_17of64,
    log12_18of64,
    log12_19of64,
    log12_20of64,
    log12_21of64,
    log12_22of64,
    log12_23of64,
    log12_24of64,
    log12_25of64,
    log12_26of64,
    log12_27of64,
    log12_28of64,
    log12_29of64,
    log12_30of64,
    log12_31of64,
    log12_32of64,
    log12_33of64,
    log12_34of64,
    log12_35of64,
    log12_36of64,
    log12_37of64,
    log12_38of64,
    log12_39of64,
    log12_40of64,
    log12_41of64,
    log12_42of64,
    log12_43of64,
    log12_44of64,
    log12_45of64,
    log12_46of64,
    log12_47of64,
    log12_48of64,
    log12_49of64,
    log12_50of64,
    log12_51of64,
    log12_52of64,
    log12_53of64,
    log12_54of64,
    log12_55of64,
    log12_56of64,
    log12_57of64,
    log12_58of64,
    log12_59of64,
    log12_60of64,
    log12_61of64,
    log12_62of64,
    log12_63of64,
    log12_64of64,
    log12_65of64,
];
=#

#=
# for x in 0.5..1..2
function log12(x::DD)
    isneg, ax = signbit(x.hi), abs(x)
    if ax == dd_one
       fx = dd_zero
    elseif isneg
       fx = dd_NaN
    else
       if x.hi < one(typeof(x.hi))
          ax = 1.0/ax
          fx = -log12approx[ 1+(floor(Int, (ax.hi*64) - 1)) ](ax)
       else
          fx =  log12approx[ 1+(floor(Int, (ax.hi*64) - 1)) ](ax)
       end
    end
    fx
end    
=#
