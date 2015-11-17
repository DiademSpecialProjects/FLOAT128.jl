#=
   rational approximations to 128bit exp(x) for x in [0..1]
=#


#=
const exp01approx = [
    exp01_01of64,
    exp01_02of64,
    exp01_03of64,
    exp01_04of64,
    exp01_05of64,
    exp01_06of64,
    exp01_07of64,
    exp01_08of64,
    exp01_09of64,
    exp01_10of64,
    exp01_11of64,
    exp01_12of64,
    exp01_13of64,
    exp01_14of64,
    exp01_15of64,
    exp01_16of64,
    exp01_17of64,
    exp01_18of64,
    exp01_19of64,
    exp01_20of64,
    exp01_21of64,
    exp01_22of64,
    exp01_23of64,
    exp01_24of64,
    exp01_25of64,
    exp01_26of64,
    exp01_27of64,
    exp01_28of64,
    exp01_29of64,
    exp01_30of64,
    exp01_31of64,
    exp01_32of64,
    exp01_33of64,
    exp01_34of64,
    exp01_35of64,
    exp01_36of64,
    exp01_37of64,
    exp01_38of64,
    exp01_39of64,
    exp01_40of64,
    exp01_41of64,
    exp01_42of64,
    exp01_43of64,
    exp01_44of64,
    exp01_45of64,
    exp01_46of64,
    exp01_47of64,
    exp01_48of64,
    exp01_49of64,
    exp01_50of64,
    exp01_51of64,
    exp01_52of64,
    exp01_53of64,
    exp01_54of64,
    exp01_55of64,
    exp01_56of64,
    exp01_57of64,
    exp01_58of64,
    exp01_59of64,
    exp01_60of64,
    exp01_61of64,
    exp01_62of64,
    exp01_63of64,
    exp01_64of64,
    exp01_65of64
];
=#
#=
# for x in -1..+1
function exp01(x::DD)
    isneg, ax = signbit(x.hi), abs(x)
    if ax.hi==zero(typeof(x.hi))
       fx = dd_one
    else
       fx = exp01approx[ 1+floor(Int, ax.hi * 64) ](x)
       if isneg
          fx = 1.0/fx
       end
    end
    fx
end
=#
