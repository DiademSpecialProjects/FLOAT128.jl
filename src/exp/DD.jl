
const dd_n_inv_fact = 32;
const dd_inv_fact = DD[
  DD(1.0,0.0),
  DD(0.5,0.0),
  DD(0.16666666666666666,9.25185853854297e-18),
  DD(0.041666666666666664,2.3129646346357427e-18),
  DD(0.008333333333333333,1.1564823173178714e-19),
  DD(0.001388888888888889,-5.300543954373577e-20),
  DD(0.0001984126984126984,1.7209558293420705e-22),
  DD(2.48015873015873e-5,2.1511947866775882e-23),
  DD(2.7557319223985893e-6,-1.858393274046472e-22),
  DD(2.755731922398589e-7,2.3767714622250297e-23),
  DD(2.505210838544172e-8,-1.448814070935912e-24),
  DD(2.08767569878681e-9,-1.20734505911326e-25),
  DD(1.6059043836821613e-10,1.2585294588752098e-26),
  DD(1.1470745597729725e-11,2.0655512752830745e-28),
  DD(7.647163731819816e-13,7.03872877733453e-30),
  DD(4.779477332387385e-14,4.399205485834081e-31),
  DD(2.8114572543455206e-15,1.6508842730861433e-31),
  DD(1.5619206968586225e-16,1.1910679660273754e-32),
  DD(8.22063524662433e-18,2.2141894119604265e-34),
  DD(4.110317623312165e-19,1.4412973378659527e-36),
  DD(1.9572941063391263e-20,-1.3643503830087908e-36),
  DD(8.896791392450574e-22,-7.911402614872376e-38),
  DD(3.868170170630684e-23,-8.843177655482344e-40),
  DD(1.6117375710961184e-24,-3.6846573564509766e-41),
  DD(6.446950284384474e-26,-1.9330404233703465e-42),
  DD(2.4795962632247976e-27,-1.2953730964765229e-43),
  DD(9.183689863795546e-29,1.4303150396787322e-45),
  DD(3.279889237069838e-30,1.5117542744029879e-46),
  DD(1.1309962886447716e-31,1.0498015412959506e-47),
  DD(3.7699876288159054e-33,2.5870347832750324e-49),
  DD(1.216125041553518e-34,5.586290567888806e-51),
  DD(3.8003907548547434e-36,1.7457158024652518e-52)
];


const dd_n_exp_int = 256;
const dd_exp_int = DD[
    DD(2.718281828459045, 1.4456468917292502e-16),
    DD(7.38905609893065, -1.7971139497839148e-16),
    DD(20.085536923187668, -1.8275625525512858e-16),
    DD(54.598150033144236, 2.8741578015844115e-15),
    DD(148.4131591025766, 3.4863514900464198e-15),
    DD(403.4287934927351, 1.2359628024450387e-14),
    DD(1096.6331584284585, 9.869752640434095e-14),
    DD(2980.9579870417283, -2.7103295816873633e-14),
    DD(8103.083927575384, -2.1530877621067177e-13),
    DD(22026.465794806718, -1.3780134700517372e-12),
    DD(59874.14171519782, 1.7895764888916994e-12),
    DD(162754.79141900392, 5.30065881322063e-12),
    DD(442413.3920089205, 1.2118711752313224e-11),
    DD(1.2026042841647768e6, -1.5000525764327354e-11),
    DD(3.2690173724721107e6, -3.075806431120808e-11),
    DD(8.886110520507872e6, 5.321182483501564e-10),
    DD(2.41549527535753e7, -7.203995068362157e-10),
    DD(6.565996913733051e7, 1.4165536846555444e-9),
    DD(1.7848230096318725e8, 1.333018530234341e-8),
    DD(4.851651954097903e8, 4.880277289790406e-10),
    DD(1.3188157344832146e9, 8.043448618843281e-8),
    DD(3.584912846131592e9, -2.3519384005402157e-7),
    DD(9.744803446248903e9, -6.74501500127677e-7),
    DD(2.648912212984347e10, 7.670395527778119e-7),
    DD(7.200489933738588e10, -6.992440211033874e-6),
    DD(1.9572960942883878e11, -1.1364989227123904e-5),
    DD(5.3204824060179865e11, -2.8335783945658822e-5),
    DD(1.446257064291475e12, 7.602079742299693e-5),
    DD(3.931334297144042e12, 8.220112058084352e-5),
    DD(1.0686474581524463e13, -0.0007436345313492586),
    DD(2.9048849665247426e13, -0.0005501643178883202),
    DD(7.896296018268069e13, 0.007660978022635108),
    DD(2.1464357978591606e14, 0.002124297761531261),
    DD(5.834617425274549e14, 0.006402902734610391),
    DD(1.5860134523134308e15, -0.02187035537422534),
    DD(4.311231547115195e15, 0.22711342229285691),
    DD(1.1719142372802612e16, -0.6912270602088098),
    DD(3.1855931757113756e16, 0.22032867170129863),
    DD(8.659340042399374e16, 2.953606932719265),
    DD(2.3538526683702e17, -14.592100089250966),
    DD(6.398434935300549e17, 37.22266340351557),
    DD(1.739274941520501e18, 55.394681303611236),
    DD(4.727839468229346e18, 257.4744575627443),
    DD(1.2851600114359308e19, -12.1907003678569),
    DD(3.4934271057485095e19, 436.0347972334061),
    DD(9.496119420602448e19, 5929.133649117119),
    DD(2.5813128861900675e20, -15192.714199784727),
    DD(7.016735912097631e20, 30185.471599886117),
    DD(1.9073465724950998e21, -98786.90015904616),
    DD(5.184705528587072e21, 419031.45332293346),
    DD(1.4093490824269389e22, -614323.8566876298),
    DD(3.831008000716577e22, -661524.304512138),
    DD(1.0413759433029089e23, -7.520901270665062e6),
    DD(2.830753303274694e23, -4.711377645198593e6),
    DD(7.694785265142018e23, -3.868399744098706e7),
    DD(2.091659496012996e24, 5.079641515721467e7),
    DD(5.685719999335932e24, 2.0801558082063326e8),
    DD(1.545538935590104e25, 1.2092033491117463e8),
    DD(4.2012104037905144e25, -1.7624059056928084e9),
    DD(1.1420073898156842e26, 4.912247462314477e9),
    DD(3.10429793570192e26, 3.39761293411071e9),
    DD(8.438356668741454e26, 6.5719328084037315e10),
    DD(2.29378315946961e27, -7.566162968773138e10),
    DD(6.235149080811617e27, 1.3899738872492847e11),
    DD(1.6948892444103338e28, -6.61940830637628e11),
    DD(4.607186634331292e28, -2.37966706696394e12),
    DD(1.2523631708422137e29, 8.725173269482437e12),
    DD(3.404276049931741e29, -2.3689045745171566e13),
    DD(9.253781725587787e29, 4.1335361789492734e13),
    DD(2.515438670919167e30, 1.2647645018519611e14),
    DD(6.837671229762744e30, -2.8026814130938628e14),
    DD(1.8586717452841279e31, 9.331591492068494e14),
    DD(5.052393630276104e31, 2.4912292015869455e15),
    DD(1.3733829795401761e32, 8.003850355927158e15),
    DD(3.7332419967990015e32, 1.5538124781410182e16),
    DD(1.0148003881138887e33, -1.8313882415912828e16),
    DD(2.7585134545231703e33, -1.1490320660315066e17),
    DD(7.498416996990121e33, -4.7233584091570765e17),
    DD(2.0382810665126688e34, -5.7128185991424294e17),
    DD(5.54062238439351e34, 2.1811937023229343e18),
    DD(1.5060973145850306e35, -7.056987941853042e18),
    DD(4.0939969621274545e35, 1.852765937250624e19),
    DD(1.1128637547917594e36, -2.7961733453775843e19),
    DD(3.0250773222011426e36, -2.2396762302858075e20),
    DD(8.223012714622913e36, 4.083087026334775e20),
    DD(2.235246603734715e37, 7.328168204485786e20),
    DD(6.076030225056872e37, 2.4300525977303657e21),
    DD(1.6516362549940018e38, 4.5658363808236883e21),
    DD(4.4896128191743455e38, -3.034626837469501e22),
    DD(1.2204032943178408e39, -3.218018426639282e22),
    DD(3.317400098335743e39, -2.0594325391839645e23),
    DD(9.017628405034299e39, 4.119507937020878e23),
    DD(2.451245542920086e40, -1.809447119103778e24),
    DD(6.663176216410896e40, -3.5075886901816454e24),
    DD(1.8112390828890233e41, -6.613591371018036e24),
    DD(4.923458286012058e41, 1.3869835129739753e25),
    DD(1.3383347192042695e42, -3.8243050326463913e25),
    DD(3.637970947608805e42, -1.7059216189570308e26),
    DD(9.889030319346946e42, 5.152980735736938e26),
    DD(2.6881171418161356e43, -1.6101271449201627e27),
    DD(7.307059979368067e43, 3.81998468048638e27),
    DD(1.9862648361376543e44, -1.7687808052379885e27),
    DD(5.399227610580169e44, 1.6694477435363627e28),
    DD(1.4676622301554424e45, -5.683445805084399e28),
    DD(3.989519570547216e45, -4.528566832709381e28),
    DD(1.0844638552900231e46, -5.0737593474148365e29),
    DD(2.947878391455509e46, 1.522599815352173e30),
    DD(8.013164264000591e46, 4.4255712989469043e30),
    DD(2.1782038807290206e47, 6.40943286045652e30),
    DD(5.92097202766467e47, 3.6278506451438224e31),
    DD(1.609487066961518e48, -3.11348413350283e31),
    DD(4.375039447261341e48, 1.035824156236645e32),
    DD(1.189259022828201e49, -6.311799972004003e32),
    DD(3.2327411910848595e49, -1.6317210762547248e33),
    DD(8.787501635837023e49, 4.951878455668192e31),
    DD(2.3886906014249913e50, 1.5523479734981885e34),
    DD(6.493134255664462e50, 1.417967467778397e33),
    DD(1.7650168856917655e51, 3.659435419097009e34),
    DD(4.797813327299302e51, -4.832529827928807e34),
    DD(1.3041808783936323e52, 2.3598218061815903e35),
    DD(3.5451311827611664e52, 4.397256578106813e35),
    DD(9.636665673603202e52, -3.923912609184774e36),
    DD(2.6195173187490626e53, 9.508437015673215e36),
    DD(7.120586326889338e53, -2.2289404495948426e37),
    DD(1.9355760420357226e54, -1.8895773015758525e37),
    DD(5.261441182666386e54, -2.2391033592780024e38),
    DD(1.4302079958348105e55, -4.95219683040473e38),
    DD(3.887708405994595e55, 2.707966110366217e39),
    DD(1.0567887114362587e56, 1.0147572632726592e40),
    DD(2.872649550817832e56, -1.725105418010497e40),
    DD(7.808671073519151e56, -3.3393507820354276e39),
    DD(2.1226168683560893e57, 9.12124047520486e40),
    DD(5.769870862033003e57, 2.54679794252527e41),
    DD(1.568413511681964e58, -5.571295095061288e41),
    DD(4.263389948314721e58, 9.74205426058927e41),
    DD(1.1589095424138854e59, 3.107727800036786e42),
    DD(3.150242749971452e59, -9.643637210793454e42),
    DD(8.56324762248225e59, -5.908667317844348e43),
    DD(2.3277320404788622e60, -1.5410810390283507e44),
    DD(6.327431707155585e60, 2.9519976099018483e44),
    DD(1.7199742630376623e61, -6.6270661206611855e44),
    DD(4.675374784632515e61, 1.2938282778262074e45),
    DD(1.2708986318302189e62, -3.042168764740704e44),
    DD(3.454660656717546e62, 1.8553902103629043e46),
    DD(9.390741286647697e62, 8.372523060245978e46),
    DD(2.5526681395254553e63, -1.6889209515414619e47),
    DD(6.938871417758404e63, -4.174062699457691e47),
    DD(1.886180808490652e64, 8.75753845955151e47),
    DD(5.12717101690833e64, -1.848585500693908e47),
    DD(1.3937095806663797e65, 7.0244638077530874e47),
    DD(3.788495427274696e65, -1.6686420819293392e48),
    DD(1.0298198277160991e66, 8.608117819191599e49),
    DD(2.799340524267497e66, -8.50129047864975e49),
    DD(7.609396478785354e66, -1.2944224384739812e50),
    DD(2.0684484173822473e67, -2.743371829892203e50),
    DD(5.622625746075033e67, 1.4234908903412887e51),
    DD(1.5283881393781746e68, -8.309060391771288e51),
    DD(4.154589706104022e68, 2.1030987078913436e52),
    DD(1.129334570280557e69, -8.237338292837319e52),
    DD(3.0698496406442424e69, 4.375620509828095e52),
    DD(8.344716494264775e69, -5.967039946946015e53),
    DD(2.2683291210002403e70, 1.4059974118116153e54),
    DD(6.165957830579433e70, -5.480338773236432e54),
    DD(1.6760811125908828e71, -3.078670967159958e54),
    DD(4.556060831379215e71, 4.2683874443891194e55),
    DD(1.2384657367292132e72, -1.7417281417483923e55),
    DD(3.366498907320164e72, 1.8595557870731098e56),
    DD(9.151092805295634e72, 2.9278721984510905e56),
    DD(2.487524928317743e73, -2.269951231486326e56),
    DD(6.761793810485009e73, 6.044072970031212e57),
    DD(1.8380461242828246e74, 6.558763264761503e57),
    DD(4.996327379507578e74, 1.2022315866163456e58),
    DD(1.358142592474785e75, 6.293920858651693e58),
    DD(3.691814329580466e75, 1.5523424954077878e59),
    DD(1.0035391806143295e76, -1.600289359022275e59),
    DD(2.7279023188106115e76, 6.6492459414351406e59),
    DD(7.415207303034179e76, -4.678668371358611e60),
    DD(2.0156623266094611e77, 6.4049020966883044e60),
    DD(5.47913827473198e77, -3.839583545632845e61),
    DD(1.4893842007818383e78, 6.250487712624396e61),
    DD(4.048566008579269e78, 1.682018025551642e62),
    DD(1.1005143412437996e79, -6.764346497503176e62),
    DD(2.991508135761597e79, 1.1738879998058348e63),
    DD(8.131762205128143e79, -1.5057074349533377e62),
    DD(2.2104421435549888e80, -7.196700457953682e63),
    DD(6.008604711685586e80, -3.660345147820277e64),
    DD(1.633308100216833e81, -2.1239531351072146e64),
    DD(4.4397917290943824e81, -2.882962352721535e65),
    DD(1.2068605179340022e82, 7.151662509907955e65),
    DD(3.2805870153846705e82, -3.194753619685436e66),
    DD(8.917560070598843e82, -8.989668102219982e65),
    DD(2.4240441494100796e83, -3.8332753349400205e66),
    DD(6.589235162723882e83, -8.709570822927273e66),
    DD(1.7911398206275708e84, 5.99708494881663e67),
    DD(4.8688228266413195e84, 1.710917432346709e68),
    DD(1.3234832615645704e85, -6.425373409956827e68),
    DD(3.5976005001806814e85, -2.5813006529759342e69),
    DD(9.779292065696318e85, -6.6113382980943924e69),
    DD(2.658287191737602e86, 6.120064792143622e69),
    DD(7.225973768125749e86, 2.9945383505980016e70),
     DD(1.964223318681796e87, -1.0268429875036315e71),
    DD(5.339312554208246e87, -2.625028820065693e71),
    DD(1.4513756292567526e88, -2.884486923510417e71),
    DD(3.945247999276943e88, 7.221484370687266e70),
    DD(1.0724295945198918e89, 4.163246302178397e72),
    DD(2.9151658790851237e89, 2.656865521036125e73),
    DD(7.924242436060931e89, -4.347509662136458e73),
    DD(2.1540324218248465e90, 6.568050851363196e73),
    DD(5.855267190158109e90, 4.4915902036294956e74),
    DD(1.5916266403779241e91, 3.865065123172901e74),
    DD(4.326489774230631e91, 3.1789213685539743e74),
    DD(1.1760618534305e92, 5.894438850996908e75),
    DD(3.196867565323994e92, -1.9538627920591218e76),
    DD(8.689987010810322e92, -5.6063024973277287e76),
    DD(2.3621833781030834e93, -7.781526569884677e76),
    DD(6.421080152185614e93, -1.4034869476251672e77),
    DD(1.7454305496765193e94, 9.749159232851838e77),
    DD(4.744572146022966e94, -3.2789833020339664e78),
    DD(1.2897084248347162e95, 5.438670793036996e78),
    DD(3.505790975238748e95, 1.5415362493078123e78),
    DD(9.529727902367202e95, 9.833684415222857e78),
    DD(2.5904486187163903e96, -2.263041008869737e80),
    DD(7.041569407813597e96, -4.0828301614775564e80),
    DD(1.9140970165092822e97, -1.497464557916617e81),
    DD(5.2030551378848545e97, 4.749190808721398e80),
    DD(1.4143370233782872e98, 3.8946526873422757e80),
    DD(3.844566629966054e98, 2.2093533915053797e81),
    DD(1.0450615608536755e99, -5.337145484954864e82),
    DD(2.840771850489593e99, 2.7464976717218177e81),
    DD(7.722018499983836e99, -4.0996868440885443e83),
    DD(2.0990622567530634e100, 4.153001760319747e83),
    DD(5.705842789336087e100, -7.502847960571591e83),
    DD(5.705842789336087e100, -7.502847960571591e83),
    DD(1.551008877029636e101, -1.1711307176004477e85),
    DD(4.216079246208329e101, 3.4845354806957584e84),
    DD(1.146049160231141e102, 5.309475346149073e85),
    DD(3.115284606777059e102, 1.1305094460701447e86),
    DD(8.468221537080262e102, -2.2036277666109673e86),
    DD(2.30190127236108e103, -4.663183218411149e86),
    DD(6.25721639956588e103, -3.232721480812657e87),
    DD(1.700887763567586e104, 1.4773861394382237e88),
    DD(4.6234922999541146e104, 6.980490121714062e87),
    DD(1.2567955102985587e105, -1.5226136925021163e88),
    DD(3.416324397733485e105, -7.894999158901084e86),
    DD(9.286532530480224e105, -2.614355089326607e89),
    DD(2.5243412626998188e106, 7.770616368141536e88),
    DD(6.861870983226278e106, 2.54810635544448e90),
    DD(1.8652499202934394e107, 3.8378044485542437e90),
    DD(5.070274963868339e107, 1.2106757063676503e90),
    DD(1.3782436299574147e108, 8.797324501988005e91),
    DD(3.7464546145026734e108, -1.331977416683643e92),
    DD(1.0183919499749154e109, 3.760113287049303e92),
    DD(2.7682763318657856e109, -4.359593659827271e92),
    DD(7.524955249064026e109, 4.590038424351707e93),
    DD(2.045494911349825e110, 5.874933608518508e93),
    DD(5.5602316477276757e110, -2.3961412490467085e94),
    DD(1.5114276650041035e111, 1.4805989167614457e94)
];

function exp_taylor(a::DD)
  x = a
  x2 = x*x
  x3 = x*x2
  x4 = x2*x2
  x5 = x2*x3
  x10 = x5*x5
  x15 = x5*x10
  x20 = x10*x10
  x25 = x10*x15

  z = x + dd_inv_fact[2]*x2 + dd_inv_fact[3]*x3 + dd_inv_fact[4]*x4
  z2 = x5 * (dd_inv_fact[5] + x*dd_inv_fact[6] + x2*dd_inv_fact[7] + x3*dd_inv_fact[8] + x4*dd_inv_fact[9])
  z3 = x10 * (dd_inv_fact[10] + x*dd_inv_fact[11] + x2*dd_inv_fact[12] + x3*dd_inv_fact[13] + x4*dd_inv_fact[14])
  z4 = x15 * (dd_inv_fact[15] + x*dd_inv_fact[16] + x2*dd_inv_fact[17] + x3*dd_inv_fact[18] + x4*dd_inv_fact[19])
  z5 = x20 * (dd_inv_fact[20] + x*dd_inv_fact[21] + x2*dd_inv_fact[22] + x3*dd_inv_fact[23] + x4*dd_inv_fact[24])
  z6 = x25 * (dd_inv_fact[25] + x*dd_inv_fact[26] + x2*dd_inv_fact[27])

  ((((z6+z5)+z4)+z3)+z2)+z + one(DD)
end

#=
replaced with DDexp01.jl

function exp01(a::DD)
  if a.hi >= 0.5
    sqr(exp_taylor(divby2(a)))
  else
    exp_taylor(a)
  end
end
=#

function expGT0(a::DD)
    if a.hi < 1e-34
         return one(DD)
    elseif a.hi==1.0 && abs(a.lo) < 1e-34
         return dd_exp1
    end

    if a.hi > 1.0
      if a.hi <= 232.0
        ddidx = DD(floor(a.hi))
        idx = floor(Int,a.hi)
        expint = dd_exp_int[idx]
        dlt = a - ddidx
        expdlt = exp01(dlt)
        expint*expdlt
      else
        t = a / 128.0
        ipart = floor(t).hi
        fpart = t - ipart
        fpart = fpart * 128.0
        intpart = trunc(Int,ipart)
        dd_exp_int[128]^intpart * exp(fpart)
      end
    else
      exp01(a)
    end
end

function exp(a::DD)
    isneg, aa = signbit(a.hi), abs(a)
    if a.hi == Inf
         return sb ? zero(DD) : a
    elseif a == zero(DD)
         return one(DD)
    end

    if aa.hi <= 0.0001220703125 # sqrt(sqrt(eps(1.0)))
        DD(exp_taylor(TD(a))) 
    else
       z = expGT0(aa)
       isneg ? recip(z) : z
    end
end


function expm1(a::DD)
   u = exp(a)
   if (u == one(DD))
       x
   elseif (u-1.0 == -one(DD))
       -one(DD)
   else
       a*(u-1.0) / log(u)
   end
end

#=
function exp_from_log(x::DD)
    est = DD(exp(x.hi))
    sq_x_minus_log = x_minus_log = x - log(est)
    sq_x_minus_log *= x_minus_log
    sq_x_minus_log *= 0.5
    est = est * (1.0 + x_minus_log + sq_x_minus_log)
    sq_x_minus_log = x_minus_log = x - log(est)
    sq_x_minus_log *= x_minus_log
    sq_x_minus_log *= 0.5
    rev = est = est * (1.0 + x_minus_log + sq_x_minus_log)
    sq_x_minus_log = x_minus_log = x - log(est)
    sq_x_minus_log *= x_minus_log
    sq_x_minus_log *= 0.5
    est * (1.0 + x_minus_log + sq_x_minus_log)
end
=#

dd_n_log_int = 64;
dd_log_int = DD[
     DD(0.0, 0.0),
     DD(0.6931471805599453, 2.3190468138462996e-17),
     DD(1.0986122886681098, -9.07129723500153e-17),
     DD(1.3862943611198906, 4.638093627692599e-17),
     DD(1.6094379124341003, 9.280081691085902e-17),
     DD(1.791759469228055, 4.349979825096335e-17),
     DD(1.9459101490553132, 7.323586207904907e-17),
     DD(2.0794415416798357, 1.8059370687790465e-16),
     DD(2.1972245773362196, -1.814259447000306e-16),
     DD(2.302585092994046, -2.1707562233822494e-16),
     DD(2.3978952727983707, -1.253584211423161e-16),
     DD(2.4849066497880004, -4.433203607308931e-17),
     DD(2.5649493574615367, -2.5580975097208856e-18),
     DD(2.6390573296152584, 2.0744863268002772e-16),
     DD(2.70805020110221, 2.0878445608437204e-18),
     DD(2.772588722239781, 9.276187255385198e-17),
     DD(2.833213344056216, -8.500696635386325e-17),
     DD(2.8903717578961645, 1.7483143082597936e-16),
     DD(2.9444389791664403, 1.9776172119535626e-16),
     DD(2.995732273553991, 1.39181753187785e-16),
     DD(3.044522437723423, -1.747711027096623e-17),
     DD(3.091042453358316, -2.1319025546636875e-16),
     DD(3.1354942159291497, 1.5758359867283186e-17),
     DD(3.1780538303479458, -1.3216387039714197e-16),
     DD(3.2188758248682006, 1.8560163382171803e-16),
     DD(3.258096538021482, -9.038993183377354e-17),
     DD(3.295836866004329, -5.009431212501459e-17),
     DD(3.332204510175204, 1.1961679835597506e-16),
     DD(3.367295829986474, -1.1553104240685565e-16),
     DD(3.4011973816621555, -8.574398976320894e-17),
     DD(3.4339872044851463, -2.5863763694297672e-17),
     DD(3.4657359027997265, 4.930038229799327e-18),
     DD(3.4965075614664802, 5.973211432699923e-18),
     DD(3.5263605246161616, -1.728388006779159e-16),
     DD(3.5553480614894135, 1.660366789899081e-16),
     DD(3.58351893845611, 8.69995965019267e-17),
     DD(3.6109179126442243, 9.643918385970854e-17),
     DD(3.6375861597263857, 1.0992988687130361e-16),
     DD(3.6635616461296463, 1.2877353506529513e-16),
     DD(3.6888794541139363, 5.134991886373236e-17),
     DD(3.713572066704308, -1.4628004942704776e-16),
     DD(3.7376696182833684, -1.0530894459501889e-16),
     DD(3.7612001156935624, 3.879508085699725e-17),
     DD(3.784189633918261, 1.4306712005964121e-16),
     DD(3.8066624897703196, 1.3341947713585974e-16),
     DD(3.828641396489095, -7.207347445676947e-17),
     DD(3.8501476017100584, 1.5534199491592608e-16),
     DD(3.871201010907891, -2.1999570472119463e-16),
     DD(3.8918202981106265, 1.4647172415809814e-16),
     DD(3.912023005428146, 9.776979949766539e-17),
     DD(3.9318256327243257, 4.632466622115275e-17),
     DD(3.9512437185814275, -1.782217661578262e-16),
     DD(3.970291913552122, -1.3098078310631424e-16),
     DD(3.9889840465642745, -1.3792614644906726e-16),
     DD(4.007333185232471, -2.5460220915648837e-16),
     DD(4.02535169073515, -4.123042458181402e-16),
     DD(4.04305126783455, -1.1499585607969033e-16),
     DD(4.060443010546419, 2.4072633311915433e-16),
     DD(4.07753744390572, -2.5451232614395796e-16),
     DD(4.0943445622221, 2.70513385762801e-16),
     DD(4.110873864173311, -1.0515756814070423e-16),
     DD(4.127134385045092, -1.1369559801835033e-16),
     DD(4.143134726391533, 1.1385452230404978e-16),
     DD(4.1588830833596715, 3.611874137558093e-16)
];

const dd_n_recip_int = 36;
const dd_recip_int = DD[
     DD(1.0, 0.0),
     DD(0.5, 0.0),
     DD(0.3333333333333333, 1.850371707708594e-17),
     DD(0.25, 0.0),
     DD(0.2, -1.1102230246251566e-17),
     DD(0.16666666666666666, 9.25185853854297e-18),
     DD(0.14285714285714285, 7.93016446160826e-18),
     DD(0.125, 0.0),
     DD(0.1111111111111111, 6.1679056923619804e-18),
     DD(0.1, -5.551115123125783e-18),
     DD(0.09090909090909091, -2.523234146875356e-18),
     DD(0.08333333333333333, 4.625929269271485e-18),
     DD(0.07692307692307693, -4.270088556250602e-18),
     DD(0.07142857142857142, 3.96508223080413e-18),
     DD(0.06666666666666667, 9.251858538542971e-19),
     DD(0.0625, 0.0),
     DD(0.058823529411764705, 8.163404592832033e-19),
     DD(0.05555555555555555, 3.0839528461809902e-18),
     DD(0.05263157894736842, 2.921639538487254e-18),
     DD(0.05, -2.7755575615628915e-18),
     DD(0.047619047619047616, 2.64338815386942e-18),
     DD(0.045454545454545456, -1.261617073437678e-18),
     DD(0.043478260869565216, 1.206764157201257e-18),
     DD(0.041666666666666664, 2.3129646346357427e-18),
     DD(0.04, -8.326672684688674e-19),
     DD(0.038461538461538464, -2.135044278125301e-18),
     DD(0.037037037037037035, 2.05596856412066e-18),
     DD(0.03571428571428571, 1.982541115402065e-18),
     DD(0.034482758620689655, 4.785444071660157e-19),
     DD(0.03333333333333333, 4.625929269271486e-19),
     DD(0.03225806451612903, 8.953411488912552e-19),
     DD(0.03125, 0.0),
     DD(0.030303030303030304, -8.410780489584519e-19),
     DD(0.029411764705882353, 4.0817022964160166e-19),
     DD(0.02857142857142857, 8.921435019309293e-19),
     DD(0.027777777777777776, 1.5419764230904951e-18)
];


function log1p_taylor(a::DD)
    x = a
    x2 = x*x
    x3 = x2*x
    x4 = x2*x2
    x5 = x2*x3
    x10 = x5*x5
    x15 = x5*x10
    x20 = x10*x10
    x25 = x10*x15
    x30 = x15*x15

    z = x - dd_recip_int[2]*x2 + dd_recip_int[3]*x3 - dd_recip_int[4]*x4
    z2 = x5 * (dd_recip_int[5] - x*dd_recip_int[6] + x2*dd_recip_int[7] - x3*dd_recip_int[8] + x4*dd_recip_int[9])
    z3 = x10 * (-dd_recip_int[10] + x*dd_recip_int[11] - x2*dd_recip_int[12] + x3*dd_recip_int[13] - x4*dd_recip_int[14])
    z4 = x15 * (dd_recip_int[15] - x*dd_recip_int[16] + x2*dd_recip_int[17] - x3*dd_recip_int[18] + x4*dd_recip_int[19])
    z5 = x20 * (-dd_recip_int[20] + x*dd_recip_int[21] - x2*dd_recip_int[22] + x3*dd_recip_int[23] - x4*dd_recip_int[24])
    z6 = x25 * (dd_recip_int[25] - x*dd_recip_int[26] + x2*dd_recip_int[27] - x3*dd_recip_int[28] + x4*dd_recip_int[29])
    z7 = x30 * (-dd_recip_int[30] + x*dd_recip_int[31] - x2*dd_recip_int[32] + x2*dd_recip_int[33])

  (((((z7+z6)+z5)+z4)+z3)+z2)+z

end

function logIter(x::DD)
    yy = DD(log(x.hi),0.0)
    yy = yy + x * exp(-yy) - 1.0
    yy = yy + x * exp(-yy) - 1.0
    yy = yy + x * exp(-yy) - 1.0
    yy = yy + TD(x) * exp(-yy) - 1.0
    DD(yy)
end


function logIterThrice(x::DD)
    yy = DD(log(x.hi),0.0)
    yy = yy + x * exp(-yy) - 1.0
    yy = yy + x * exp(-yy) - 1.0
    yy = yy + TD(x) * exp(-yy) - 1.0
    DD(yy)
end


function log(x::DD)
    if x.hi == Inf
        return x
    elseif x.hi <= 1e-324
        return -dd_Inf
    elseif (x.hi == one(Float64)) && abs(x.lo) <= 1e-34
        return DD(x.lo)
    end

    if (x.hi < zero(Float64))
        return -log(abs(x))
    end

    if (x.hi < one(Float64))
        -log(recip(x))
    elseif (x.hi < 72.0)
        if (x.hi >= 2.718281828459045)
            n = floor(log(x.hi))
            y = x / dd_exp_int[trunc(Int,n)]
            log(y) + n
        elseif (x.hi >= 1.25) # 1.1 .. x .. exp(1)
            logIterThrice(x)
        elseif (x.hi >= 1.1)
            log1p(x)
        else # 1.0 .. x .. 1.1
            log1p_taylor(x-1.0)
        end
    else
        logIter(x)
    end
end

function log1p(x::DD)
    u = 1.0 + x
    if u == one(DD)
        x
    else
        log(u)*x/(u-1.0)
    end
end

function log2(x::DD)
    log(x) / dd_log2
end

function log10(x::DD)
    log(x) / dd_log10
end

