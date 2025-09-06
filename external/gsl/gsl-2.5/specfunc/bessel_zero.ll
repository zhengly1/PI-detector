; ModuleID = 'bessel_zero.c'
source_filename = "bessel_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [14 x i8] c"bessel_zero.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [29 x i8] c"no zero-th root for nu = 0.0\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [14 x i8] c"unimplemented\00", align 1, !dbg !22
@coef_jnu_a = internal unnamed_addr constant [21 x ptr] [ptr null, ptr @coef_jnu1_a, ptr @coef_jnu2_a, ptr @coef_jnu3_a, ptr @coef_jnu4_a, ptr @coef_jnu5_a, ptr @coef_jnu6_a, ptr @coef_jnu7_a, ptr @coef_jnu8_a, ptr @coef_jnu9_a, ptr @coef_jnu10_a, ptr @coef_jnu11_a, ptr @coef_jnu12_a, ptr @coef_jnu13_a, ptr @coef_jnu14_a, ptr @coef_jnu15_a, ptr @coef_jnu16_a, ptr @coef_jnu17_a, ptr @coef_jnu18_a, ptr @coef_jnu19_a, ptr @coef_jnu20_a], align 16, !dbg !24
@size_jnu_a = internal unnamed_addr constant [21 x i64] [i64 0, i64 24, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 20, i64 27, i64 27, i64 30, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 27], align 16, !dbg !183
@coef_jnu_b = internal unnamed_addr constant [11 x ptr] [ptr null, ptr @coef_jnu1_b, ptr @coef_jnu2_b, ptr @coef_jnu3_b, ptr @coef_jnu4_b, ptr @coef_jnu5_b, ptr @coef_jnu6_b, ptr @coef_jnu7_b, ptr @coef_jnu8_b, ptr @coef_jnu9_b, ptr @coef_jnu10_b], align 16, !dbg !192
@size_jnu_b = internal unnamed_addr constant [11 x i64] [i64 0, i64 15, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19, i64 19], align 16, !dbg !221
@.str.5 = private unnamed_addr constant [36 x i8] c"gsl_sf_bessel_zero_J0_e(s, &result)\00", align 1, !dbg !113
@.str.7 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_zero_Jnu_e(nu, s, &result)\00", align 1, !dbg !120
@coef_jnu1_a = internal constant [24 x double] [double 0x400E6A0923912F8A, double 0x3FF5C57254B1F5DD, double 0xBF9F71D78D39D989, double 0x3F728AB7FF1D773D, double 0xBF4A7FB9288E9CCC, double 0x3F24DE7F03677AE7, double 0xBF016B68D3D17A10, double 0x3EDE38F42E5E82CD, double 0xBEBAF2310E971F0C, double 0x3E98863395702F54, double 0xBE76AEA938F43542, double 0x3E5540E1E76ED69B, double 0xBE3421786A5DA81A, double 0x3E133E0A7144FC73, double -2.697670e-10, double 6.542000e-11, double -1.596100e-11, double 3.914000e-12, double -9.650000e-13, double 2.390000e-13, double -5.900000e-14, double 1.500000e-14, double -4.000000e-15, double 1.000000e-15], align 16, !dbg !125
@coef_jnu2_a = internal constant [19 x double] [double 0x401BF82FE7BECEA5, double 0x3FF7245E9A20B764, double 0xBF98058915ADD00F, double 0x3F61CB53DB039CB2, double 0xBF30239A9148574C, double 0x3F003F6E827D8C5F, double 0xBED16C852419FDFC, double 0x3EA37CBEA94BD81E, double 0xBE76744241C29DE9, double 0x3E4A73899B1B036B, double 0xBE1FB1E619F7A7B9, double 2.800760e-10, double -4.298600e-11, double 6.658000e-12, double -1.039000e-12, double 1.630000e-13, double -2.600000e-14, double 4.000000e-15, double -1.000000e-15], align 16, !dbg !130
@coef_jnu3_a = internal constant [19 x double] [double 0x4025BD42615087A1, double 0x40016B91DA59CB8D, double 0xBFA1D44BD96A5A8F, double 0x3F69F233EA055173, double 0xBF3732781FE0191B, double 0x3F0716D379D11254, double 0xBED88ADF5B5689A2, double 0x3EAB43F8624E5FDA, double 0xBE7F43519E1F9877, double 0x3E525A018477B3F9, double 0xBE25F121D9A80D44, double 3.873350e-10, double -5.942800e-11, double 0x3DA43F14895F8FC8, double -1.438000e-12, double 2.260000e-13, double -3.600000e-14, double 6.000000e-15, double -1.000000e-15], align 16, !dbg !135
@coef_jnu4_a = internal constant [19 x double] [double 0x402D8028AA5B06F2, double 0x4007439B3C6B2922, double 0xBFA7998A479C4132, double 0x3F70FCA017DC8851, double 0xBF3E164A75966DCE, double 0x3F0DB3067263C49C, double 0xBEDF57605A58967A, double 0x3EB14D0375079864, double 0xBE83BB293F81BEA8, double 0x3E570F101F2147B9, double 0xBE2B76BC183CD563, double 4.832490e-10, double -7.394600e-11, double 1.143100e-11, double -1.782000e-12, double 2.800000e-13, double -4.400000e-14, double 7.000000e-15, double -1.000000e-15], align 16, !dbg !137
@coef_jnu5_a = internal constant [19 x double] [double 0x4032A1DBDCB98CBE, double 0x400D1B224C5E7752, double 0xBFAD5A51B8B561BC, double 0x3F74FA805330669F, double 0xBF427583C8835054, double 0x3F121D4727780E11, double 0xBEE303986E96D932, double 0x3EB4E40368C7CCB7, double 0xBE87B8A592ADC845, double 0x3E5B9CF38813A959, double 0xBE3062D6D3DA1C8B, double 5.748390e-10, double -8.771500e-11, double 1.352600e-11, double -2.104000e-12, double 3.300000e-13, double -5.200000e-14, double 8.000000e-15, double -1.000000e-15], align 16, !dbg !139
@coef_jnu6_a = internal constant [19 x double] [double 0x403683CC4D2E971C, double 0x4011793544308062, double 0xBFB18C80C316536B, double 0x3F78F5C9ACD3830B, double 0xBF45DC7BB2481C45, double 0x3F155C6F3482E259, double 0xBEE65525042A9628, double 0x3EB872270B763C9A, double 0xBE8BA9B7793F475F, double 0x3E600CB317BBC5D9, double 0xBE32FE0DB986DF5E, double 6.644710e-10, double -1.011400e-10, double 1.556100e-11, double -2.416000e-12, double 3.780000e-13, double -6.000000e-14, double 0x3D04442592C440D8, double -2.000000e-15], align 16, !dbg !141
@coef_jnu7_a = internal constant [19 x double] [double 0x403A65D3A27DC88C, double 0x401464C7E09C43DA, double 0xBFB46B4690801BA5, double 0x3F7CEFAFFDC91031, double 0xBF4941A880E27CB5, double 0x3F189930BFE3B548, double 0xBEE9A3699CA47B28, double 0x3EBBFBBF345C1A4B, double 0xBE8F947084184E57, double 0x3E6246783C212889, double 0xBE359300C707E6CC, double 7.531010e-10, double -1.143890e-10, double 1.756400e-11, double -2.722000e-12, double 4.250000e-13, double -6.700000e-14, double 1.100000e-14, double -2.000000e-15], align 16, !dbg !143
@coef_jnu8_a = internal constant [19 x double] [double 0x403E47E9100058D2, double 0x4017504FBEE20762, double 0xBFB749B42E248B79, double 0x3F8074619D7B3603, double 0xBF4CA5C81996DC26, double 0x3F1BD48E3C98D9E2, double 0xBEECEFCC4080D5DE, double 0x3EBF82C0DEBB8B89, double 0xBE91BDC8B8B62B56, double 0x3E647DBA07E31ED0, double -5.621060e-09, double 8.411650e-10, double -1.275380e-10, double 1.955000e-11, double -3.025000e-12, double 4.720000e-13, double -7.400000e-14, double 1.200000e-14, double -2.000000e-15], align 16, !dbg !145
@coef_jnu9_a = internal constant [19 x double] [double 0x40411503E3D6BCFD, double 0x401A3BD08D28088C, double 0xBFBA27E89360A1B5, double 0x3F8270A79CEEFA9D, double 0xBF50049EA285A5A0, double 0x3F1F0F0CC7D3058D, double 0xBEF01D81FFD25B0B, double 0x3EC184157AFED029, double 0xBE93B03FF5F53E47, double 4.228390e-08, double 0xBE3AB3B33808CE85, double 0x3E0FEA9392D32AB0, double -1.406270e-10, double 2.152600e-11, double -3.326000e-12, double 5.180000e-13, double 0xBD36CCAA451CC8F3, double 1.300000e-14, double -2.000000e-15], align 16, !dbg !147
@coef_jnu10_a = internal constant [20 x double] [double 0x40430616789FAAFA, double 0x401D274C77AF28E4, double 0xBFBD05F5C667840C, double 0x3F846CBFC724ED01, double 0xBF51B62010DE41E2, double 0x3F21247BA300C854, double 0xBEF1C2BB86482D13, double 0x3EC346457B72D4C7, double 0xBE95A200D8043B1C, double 0x3E68E8327F99B69F, double 0xBE3D419BB4B4C9A7, double 0x3E117627092B312C, double -1.536770e-10, double 2.348600e-11, double -3.616000e-12, double 5.610000e-13, double 0xBD3ABD78AFDF63C8, double 2.700000e-14, double -1.300000e-14, double 5.000000e-15], align 16, !dbg !149
@coef_jnu11_a = internal constant [27 x double] [double 0x4048C0B1367ED1E3, double 0x402EAC8124F83182, double 0xBFD58DAD94614E3B, double 0x3FA7ABC480ED86AD, double 0xBF7FFE44F9D5281D, double 0x3F581EBEBF3A783C, double 0xBF3376006BF8301F, double 0x3F1071FA80854A8E, double 0xBEECBE381BF53B0B, double 0x3EC9C473FB40A722, double 0xBEA79124E3FF26BC, double 0x3E85E7B394C9B9DE, double 0xBE64A1F0B158485C, double 0x3E43A6B9F4DAFCF3, double 0xBE22E4EB71749CD0, double 0x3E025077A61AB5CB, double 0xBDE1E09F22D1B0DE, double 0x3DC18EE9726C6BA9, double -7.886050e-12, double 1.959180e-12, double -4.902000e-13, double 1.220700e-13, double -2.820000e-14, double 5.250000e-15, double -1.880000e-15, double 2.800000e-15, double -2.450000e-15], align 16, !dbg !154
@coef_jnu12_a = internal constant [27 x double] [double 0x404B0A1592670247, double 0x4030BBCF9EAD9677, double 0xBFD77FF1C95A3908, double 0x3FA9C829444830C2, double 0xBF8167D84F2AF604, double 0x3F5A380C44894DAA, double 0xBF352255FCF407DE, double 0x3F11D7AABC39833C, double 0xBEEF281BAAB958F2, double 0x3ECBE801FAAEA427, double 0xBEA98042A4FD1443, double 0x3E87AEC14F7DFCA6, double 0xBE6649D4A6B61ECE, double 0x3E45361038A24B7C, double 0xBE2460BEEC58762A, double 0x3E03BCBA8D5EA5A7, double 0xBDE3408B7C1DCF32, double 0x3DC2E5618FB44BAF, double 0xBDA2A706A47D5874, double 2.105540e-12, double -5.262300e-13, double 1.318900e-13, double -3.175000e-14, double 5.730000e-15, double 5.600000e-16, double -8.700000e-16, double -6.500000e-16], align 16, !dbg !159
@coef_jnu13_a = internal constant [30 x double] [double 0x404D537B196B01EF, double 0x4032215DF3359FFE, double 0xBFD9722D52D79319, double 0x3FABE47EAEE1B6ED, double 0xBF82D07FAD15C82E, double 0x3F5C513D8FEE9695, double 0xBF36CE8F4F28E37D, double 0x3F133D3E2E9B63FF, double 0xBEF0C8E1D9C0F9ED, double 0x3ECE0B51B7ACFC07, double 0xBEAB6F1EA1C4C88C, double 0x3E897588F286DC90, double 0xBE67F16D5D310A42, double 0x3E46C515CEE794DD, double 0xBE25DC3DF5F516A7, double 0x3E0528A724E4FB35, double 0xBDE4A007F6D7F692, double 0x3DC43ABA2A79E771, double -9.071590e-12, double 2.247130e-12, double -5.594300e-13, double 1.406900e-13, double -3.679000e-14, double 1.119000e-14, double -4.990000e-15, double 3.430000e-15, double -2.850000e-15, double 2.300000e-15, double -1.700000e-15, double 8.700000e-16], align 16, !dbg !161
@coef_jnu14_a = internal constant [26 x double] [double 0x404F9CE18A6F2DAB, double 0x403386EBB8029B95, double 0xBFDB64621AE10B35, double 0x3FAE00C831EE84BF, double 0xBF84391BE2B02161, double 0x3F5E6A592E925BC2, double 0xBF387AB30EAE3781, double 0x3F14A2BBC2E54DD0, double 0xBEF1FD9F6122AD6F, double 0x3ED017395412772E, double 0xBEAD5DC97541AA9D, double 0x3E8B3C1C90E9AB21, double 0xBE6998CED0B1C117, double 0x3E4853E0C6D22E5B, double 0xBE27577FA8C73F33, double 0x3E069457AE35FFFA, double 0xBDE5FF610B9B950F, double 0x3DC590821977BA81, double -9.666370e-12, double 2.393790e-12, double 0xBD64F2F9FC7217E2, double 1.486800e-13, double -3.726000e-14, double 9.370000e-15, double -2.360000e-15, double 6.000000e-16], align 16, !dbg !166
@coef_jnu15_a = internal constant [26 x double] [double 0x4050F3245AFA77AF, double 0x4034EC790A3888D8, double 0xBFDD569185402E22, double 0x3FB00E8424F81FDC, double 0xBF85A1AF4E56978D, double 0x3F6041B1E75F5B14, double 0xBF3A26C5F94EC4EE, double 0x3F1608285D4DE9CA, double 0xBEF3324B89BA64B4, double 0x3ED128B7D02379FA, double 0xBEAF4C4EAB5105DF, double 0x3E8D028881D00524, double 0xBE6B40060C5E621D, double 0x3E49E27E3EA099E3, double 0xBE28D28ED260F968, double 0x3E07FFCB3170E742, double 0xBDE75E6139B38D9A, double 0x3DC6E5A2238BA5DE, double 0xBDA68F12A09300E1, double 2.539210e-12, double -6.312800e-13, double 1.575700e-13, double -3.947000e-14, double 9.920000e-15, double -2.500000e-15, double 0x3CC6B2B9712DB944], align 16, !dbg !171
@coef_jnu16_a = internal constant [26 x double] [double 0x405217D83C437075, double 0x40365205FF9ADC62, double 0xBFDF48BC9A7DA148, double 0x3FB11CA066FFCC93, double 0xBF870A3BAEA6FC7A, double 0x3F614E306F517E02, double 0xBF3BD2CB84171691, double 0x3F176D878A51402B, double 0xBEF466EA056E9D50, double 0x3ED23A28341BB23B, double 0xBEB09D5B44AE36B6, double 0x3E8EC8D5A39A7849, double 0xBE6CE71CB1EF736A, double 0x3E4B70F9077F3767, double 0xBE2A4D78DB952887, double 0x3E096B16C805A09C, double 0xBDE8BD3642CE97A6, double 0x3DC83A93B3792F94, double 0xBDA7DC4415676F80, double 2.684530e-12, double -6.671200e-13, double 1.664400e-13, double -4.168000e-14, double 1.047000e-14, double -2.640000e-15, double 6.700000e-16], align 16, !dbg !173
@coef_jnu17_a = internal constant [26 x double] [double 0x40533C8C5B918D25, double 0x4037B792A8BE6F55, double 0xBFE09D7211AD3FB0, double 0x3FB22AB9911658D2, double 0xBF8872C253B8E355, double 0x3F625AA9780CDD14, double 0xBF3D7EC642F4BF4E, double 0x3F18D2DBEC3BE72A, double 0xBEF59B7D8F373C40, double 0x3ED34B8D5CF37106, double 0xBEB194838F9C9FD0, double 0x3E90478536E1B785, double 0xBE6E8E19B2F7132B, double 0x3E4CFF589F9A5AAD, double 0xBE2BC845E6DAB3E9, double 0x3E0AD64351358B92, double 0xBDEA1BE9E13C2CD9, double 4.649350e-11, double 0xBDA9294D300EA323, double 2.829790e-12, double -7.029400e-13, double 1.753100e-13, double -4.388000e-14, double 1.102000e-14, double -2.780000e-15, double 7.000000e-16], align 16, !dbg !175
@coef_jnu18_a = internal constant [26 x double] [double 0x40546140AE6D7F33, double 0x40391D1F127E1784, double 0xBFE196845D77333B, double 0x3FB338D02C45493A, double 0xBF89DB443F3B335D, double 0x3F63671DFCB546FF, double 0xBF3F2AB82B9C1550, double 0x3F1A3827817A3023, double 0xBEF6D00835EFD05F, double 0x3ED45CE970E6E0F6, double 0xBEB28BA27AAD1B12, double 0x3E912A95D8F595CA, double 0xBE701A811BAFBEB6, double 0x3E4E8DA293335714, double 0xBE2D42FBF30541A5, double 0x3E0C41574371E697, double 0xBDEB7A831B8B089D, double 0x3DCAE411F1E32F89, double 0xBDAA76380713EA89, double 2.974980e-12, double -7.387500e-13, double 1.841800e-13, double -4.608000e-14, double 1.157000e-14, double -2.910000e-15, double 7.400000e-16], align 16, !dbg !177
@coef_jnu19_a = internal constant [26 x double] [double 0x405585F52C9AA013, double 0x403A82AB46F85E72, double 0xBFE28F956D772C05, double 0x3FB446E4A3BC24A8, double 0xBF8B43C23A022B4D, double 0x3F64738EC0461934, double 0xBF406B516102C7A7, double 0x3F1B9D6BD32B526E, double 0xBEF8048B8DC01C93, double 0x3ED56E3E14672822, double 0xBEB382B9BF957A90, double 0x3E920D9E8BE41715, double 0xBE70EDED12B6A36C, double 0x3E500DED88B68331, double 0xBE2EBD9F8271A8C8, double 0x3E0DAC578D2DA671, double 0xBDECD907593CA76B, double 0x3DCC38AC51414783, double 0xBDABC30BCF23EBA8, double 3.120130e-12, double 0xBD6B4086B3E9D05A, double 1.930400e-13, double -4.829000e-14, double 1.212000e-14, double -3.050000e-15, double 7.700000e-16], align 16, !dbg !179
@coef_jnu20_a = internal constant [27 x double] [double 0x4056AAA9CF86B75A, double 0x403BE8374E4059EE, double 0xBFE388A57218E95B, double 0x3FB554F74C838538, double 0xBF8CAC3CE2DB5A6B, double 0x3F657FFC5C627C05, double 0xBF4141439B626AA7, double 0x3F1D02AA14C3BC6C, double 0xBEF93908D18B0C83, double 0x3ED67F8C8DCEE99A, double 0xBEB479CAB3F3E229, double 0x3E92F0A0B8561185, double 0xBE71C1523DFFF45D, double 0x3E50D502A753CB7F, double 0xBE301C1A02D58FE0, double 0x3E0F1747DFCE1364, double 0xBDEE377A90E33156, double 0x3DCD8D3450B3EB7D, double 0xBDAD0FC9F92DFAE5, double 3.265240e-12, double -8.103300e-13, double 2.019000e-13, double -5.049000e-14, double 1.267000e-14, double -3.190000e-15, double 0x3CCCD2B297D889BC, double -2.000000e-16], align 16, !dbg !181
@coef_jnu1_b = internal constant [15 x double] [double 0x3FFBC2D1DA5553E7, double 0x3FE91A71D1808AB5, double 0x3FA906FE11614667, double 0xBF42F2F660C50A23, double 0xBF047078F3D6AEB5, double 0x3ED826ECDE589C62, double 0xBE95FBD64703A98E, double 0xBE308D6238654CB4, double 0x3E23A0014CC8772B, double -1.530790e-10, double -8.950000e-13, double 2.830000e-13, double 4.300000e-14, double 0x3D06849B86A12B9B, double -3.000000e-15], align 16, !dbg !198
@coef_jnu2_b = internal constant [19 x double] [double 0x4003B992B68D208D, double 0x3FF9BA2CE9AFD1BE, double 0x3FC1C2D2C1F86303, double 0xBF6E35DBD0AF4D31, double 0xBF0AE2263703AF8B, double 0x3F07A70A7CDF4643, double 0xBEDFCA12FA3E189E, double 0x3EA8B638EA56FF22, double 0xBE47E079906ED098, double 0xBE49990689202714, double 0x3E272A4CADD21A21, double -3.144880e-10, double 8.124000e-12, double 5.211000e-12, double -1.292000e-12, double 1.580000e-13, double -4.000000e-15, double -3.000000e-15, double 1.000000e-15], align 16, !dbg !203
@coef_jnu3_b = internal constant [19 x double] [double 0x40042EBA8FB95AA9, double 0x3FFAC56CC29F2B8E, double 0x3FC2BE4570251EB6, double 0xBF7095AFA284E890, double 0xBF04B7FC24B54BD4, double 0x3F09935F7499F66D, double 0xBEE24EB99D661CB9, double 0x3EAF29CAF167B6E7, double 0xBE5E7B4D14668154, double 0xBE4BC2EE4F812440, double 0x3E2D8EDB4B172CA0, double -4.716950e-10, double 2.559000e-11, double 5.502000e-12, double -1.881000e-12, double 2.950000e-13, double -2.000000e-14, double -3.000000e-15, double 1.000000e-15], align 16, !dbg !205
@coef_jnu4_b = internal constant [19 x double] [double 0x400469D7E5C4D7F6, double 0x3FFB4C8147A1C68C, double 0x3FC33EEB74C75B3F, double 0xBF7157AC173C7817, double 0xBF01BFD67B60C622, double 0x3F0A9D5E58FFECAC, double 0xBEE3950349BF6196, double 0x3EB1469ABB57FC89, double 0xBE641E6A0E4880F7, double 0xBE4CE24CC04F9E4E, double 3.836180e-09, double -5.574040e-10, double 3.574800e-11, double 5.487000e-12, double -2.187000e-12, double 3.740000e-13, double -3.100000e-14, double -3.000000e-15, double 1.000000e-15], align 16, !dbg !207
@coef_jnu5_b = internal constant [19 x double] [double 0x40048D798BE03CC9, double 0x3FFB9DFF19B7C4E6, double 0x3FC38D028094CF1F, double 0xBF71CD95324E0327, double 0xBEFFFEA069A4D68C, double 0x3F0B436E9B736C86, double 0xBEE45ECFD4DAB4C3, double 0x3EB25218590E56BF, double 0xBE671E5B1F32C226, double 0xBE4D974FFA047922, double 4.082870e-09, double -6.112590e-10, double 4.224200e-11, double 5.448000e-12, double -2.377000e-12, double 4.240000e-13, double -3.800000e-14, double -2.000000e-15, double 2.000000e-15], align 16, !dbg !209
@coef_jnu6_b = internal constant [19 x double] [double 0x4004A54B6F25358D, double 0x3FFBD480E307BFA1, double 0x3FC3C16F99BE5A34, double 0xBF721CD55561DA2F, double 0xBEFDAE23860A1113, double 0x3F0BB4DDE250BFDA, double 0xBEE4E7F4AA7F26DC, double 0x3EB3079447EE0A38, double 0xBE6925CFA706BE6E, double 0xBE4E14BC1BD3B48E, double 0x3E3242EBCF4080E2, double -6.482130e-10, double 4.672800e-11, double 5.414000e-12, double -2.508000e-12, double 4.590000e-13, double -4.300000e-14, double -2.000000e-15, double 2.000000e-15], align 16, !dbg !211
@coef_jnu7_b = internal constant [19 x double] [double 0x4004B6571C0E11AA, double 0x3FFBFB85EA17111A, double 0x3FC3E70F6F072A12, double 0xBF7255C2694F9865, double 0xBEFC096A22492D20, double 0x3F0C073CA689E027, double 0xBEE54B39CC236466, double 0x3EB38ACBD7556B92, double 0xBE6A9C6CD9DCB9B4, double 0xBE4E71029D5958E9, double 4.374840e-09, double 0xBE07328CDE01A195, double 5.000400e-11, double 5.387000e-12, double -2.603000e-12, double 4.850000e-13, double -4.700000e-14, double -2.000000e-15, double 2.000000e-15], align 16, !dbg !213
@coef_jnu8_b = internal constant [19 x double] [double 0x4004C324318190BA, double 0x3FFC18D5903EEDB3, double 0x3FC4035FCB7BA4C1, double 0xBF7280A126A80223, double 0xBEFACF23C5C845B3, double 0x3F0C45C120E2FE4C, double 0xBEE596681856CD04, double 0x3EB3EE173EAF3685, double 0xBE6BB74D8067810B, double 0xBE4EB7D2DEAA0AE3, double 4.468450e-09, double -6.956200e-10, double 5.250000e-11, double 5.367000e-12, double -2.676000e-12, double 5.050000e-13, double -5.000000e-14, double -2.000000e-15, double 2.000000e-15], align 16, !dbg !215
@coef_jnu9_b = internal constant [19 x double] [double 0x4004CD1B91CAFD9E, double 0x3FFC2FA8B284C7AB, double 0x3FC41973CC722CEE, double 0xBF72A213D4F52C5D, double 0xBEF9DB6AA962C1F3, double 0x3F0C76D1C2BAE6D4, double 0xBEE5D1514023EDE6, double 0x3EB43BD9493AF59B, double 0xBE6C946FFEC48275, double 0xBE4EEFEA2CCB973E, double 0x3E3382114C9CD398, double 0xBE08746CFA50BEC6, double 5.446400e-11, double 5.350000e-12, double -2.733000e-12, double 5.210000e-13, double -5.200000e-14, double -2.000000e-15, double 2.000000e-15], align 16, !dbg !217
@coef_jnu10_b = internal constant [19 x double] [double 0x4004D51640488766, double 0x3FFC41EF8DA6E4E4, double 0x3FC42B266870E5BD, double 0xBF72BCE6EA0C19A5, double 0xBEF918DE5CFBC693, double 0x3F0C9E597FDE7897, double 0xBEE600B9423AE7C3, double 0x3EB47A6432CE1FE9, double 0xBE6D460AB7F26C03, double 0xBE4F1D74724101FA, double 4.601510e-09, double -7.247270e-10, double 5.604900e-11, double 5.337000e-12, double -2.779000e-12, double 5.330000e-13, double -5.400000e-14, double -2.000000e-15, double 2.000000e-15], align 16, !dbg !219

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_zero_J0_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !70 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !83, metadata !DIExpression()), !dbg !233
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !84, metadata !DIExpression()), !dbg !233
  %3 = icmp eq i32 %0, 0, !dbg !234
  br i1 %3, label %4, label %5, !dbg !235

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !236
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1031, i32 noundef 4) #10, !dbg !238
  br label %29, !dbg !238

5:                                                ; preds = %2
  %6 = uitofp i32 %0 to double, !dbg !240
  %7 = fadd double %6, -2.500000e-01, !dbg !241
  %8 = fmul double %7, 0x400921FB54442D18, !dbg !242
  tail call void @llvm.dbg.value(metadata double %8, metadata !85, metadata !DIExpression()), !dbg !243
  %9 = fmul double %8, %8, !dbg !244
  %10 = fdiv double 1.000000e+00, %9, !dbg !245
  tail call void @llvm.dbg.value(metadata double %10, metadata !89, metadata !DIExpression()), !dbg !243
  %11 = fmul double %10, 0x4024BC70DB299EFF, !dbg !246
  %12 = fadd double %11, 0x403405BB9CEA78A3, !dbg !247
  %13 = fmul double %10, %12, !dbg !248
  %14 = fadd double %13, 0x400E1B6CBDE62B91, !dbg !249
  %15 = fmul double %10, %14, !dbg !250
  %16 = fadd double %15, 0x3FBFFFFFFFF50A24, !dbg !251
  tail call void @llvm.dbg.value(metadata double %16, metadata !90, metadata !DIExpression()), !dbg !243
  %17 = fmul double %10, 0x4062FF5192900E7D, !dbg !252
  %18 = fadd double %17, 0x40664250849B88E8, !dbg !253
  %19 = fmul double %10, %18, !dbg !254
  %20 = fadd double %19, 0x403EC0C2105D01C0, !dbg !255
  %21 = fmul double %10, %20, !dbg !256
  %22 = fadd double %21, 1.000000e+00, !dbg !257
  tail call void @llvm.dbg.value(metadata double %22, metadata !91, metadata !DIExpression()), !dbg !243
  %23 = fdiv double %16, %22, !dbg !258
  tail call void @llvm.dbg.value(metadata double %23, metadata !92, metadata !DIExpression()), !dbg !243
  %24 = fdiv double %23, %8, !dbg !259
  %25 = fadd double %8, %24, !dbg !260
  store double %25, ptr %1, align 8, !dbg !261, !tbaa !262
  %26 = fmul double %25, 3.000000e-15, !dbg !267
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !268
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !269
  store double %27, ptr %28, align 8, !dbg !270, !tbaa !271
  br label %29

29:                                               ; preds = %4, %5
  %30 = phi i32 [ 4, %4 ], [ 0, %5 ], !dbg !272
  ret i32 %30, !dbg !273
}

declare !dbg !274 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_zero_J1_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !100 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !102, metadata !DIExpression()), !dbg !279
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !103, metadata !DIExpression()), !dbg !279
  %3 = icmp eq i32 %0, 0, !dbg !280
  br i1 %3, label %27, label %4, !dbg !281

4:                                                ; preds = %2
  %5 = uitofp i32 %0 to double, !dbg !282
  %6 = fadd double %5, 2.500000e-01, !dbg !283
  %7 = fmul double %6, 0x400921FB54442D18, !dbg !284
  tail call void @llvm.dbg.value(metadata double %7, metadata !104, metadata !DIExpression()), !dbg !285
  %8 = fmul double %7, %7, !dbg !286
  %9 = fdiv double 1.000000e+00, %8, !dbg !287
  tail call void @llvm.dbg.value(metadata double %9, metadata !107, metadata !DIExpression()), !dbg !285
  %10 = fmul double %9, 0x3FD7382FF85F1247, !dbg !288
  %11 = fsub double 0x3FBECEAFA1D45FA5, %10, !dbg !289
  %12 = fmul double %9, %11, !dbg !290
  %13 = fadd double %12, 0x3FA68004C5935ACC, !dbg !291
  %14 = fmul double %9, %13, !dbg !292
  %15 = fadd double %14, 0x3F5A1B352C1F3BF9, !dbg !293
  tail call void @llvm.dbg.value(metadata double %15, metadata !108, metadata !DIExpression()), !dbg !285
  %16 = fadd double %9, 0xBFD4D750AA6CF95A, !dbg !294
  %17 = fmul double %9, %16, !dbg !295
  %18 = fadd double %17, 0xBFBE116DD53D3205, !dbg !296
  %19 = fmul double %9, %18, !dbg !297
  %20 = fadd double %19, 0xBF716778C81545E9, !dbg !298
  tail call void @llvm.dbg.value(metadata double %20, metadata !109, metadata !DIExpression()), !dbg !285
  %21 = fdiv double %15, %20, !dbg !299
  tail call void @llvm.dbg.value(metadata double %21, metadata !110, metadata !DIExpression()), !dbg !285
  %22 = fmul double %9, %21, !dbg !300
  %23 = fadd double %22, 1.000000e+00, !dbg !301
  %24 = fmul double %7, %23, !dbg !302
  %25 = fmul double %24, 2.000000e-14, !dbg !303
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !304
  br label %27

27:                                               ; preds = %2, %4
  %28 = phi double [ %24, %4 ], [ 0.000000e+00, %2 ], !dbg !305
  %29 = phi double [ %26, %4 ], [ 0.000000e+00, %2 ], !dbg !305
  store double %28, ptr %1, align 8, !dbg !305
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !305
  store double %29, ptr %30, align 8, !dbg !305
  ret i32 0, !dbg !306
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_zero_Jnu_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !307 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !361
  call void @llvm.dbg.assign(metadata i1 undef, metadata !353, metadata !DIExpression(), metadata !361, metadata ptr %4, metadata !DIExpression()), !dbg !362
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !363
  call void @llvm.dbg.assign(metadata i1 undef, metadata !354, metadata !DIExpression(), metadata !363, metadata ptr %5, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata double %0, metadata !311, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !312, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !313, metadata !DIExpression()), !dbg !365
  %6 = fcmp ugt double %0, -1.000000e+00, !dbg !366
  br i1 %6, label %9, label %7, !dbg !367

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !368, !tbaa !262
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !368
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !368, !tbaa !271
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1101, i32 noundef 1) #10, !dbg !371
  br label %438, !dbg !371

9:                                                ; preds = %3
  %10 = icmp eq i32 %1, 0, !dbg !373
  br i1 %10, label %11, label %14, !dbg !374

11:                                               ; preds = %9
  %12 = fcmp oeq double %0, 0.000000e+00, !dbg !375
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !378
  br i1 %12, label %13, label %438, !dbg !379

13:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1107, i32 noundef 4) #10, !dbg !380
  br label %438, !dbg !380

14:                                               ; preds = %9
  %15 = fcmp olt double %0, 0.000000e+00, !dbg !383
  br i1 %15, label %16, label %17, !dbg !384

16:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !385
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1115, i32 noundef 24) #10, !dbg !387
  br label %438, !dbg !387

17:                                               ; preds = %14
  %18 = icmp eq i32 %1, 1, !dbg !389
  br i1 %18, label %19, label %150, !dbg !390

19:                                               ; preds = %17
  %20 = fcmp olt double %0, 2.000000e+00, !dbg !391
  br i1 %20, label %21, label %98, !dbg !392

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata ptr @coef_jnu1_a, metadata !314, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i64 24, metadata !322, metadata !DIExpression()), !dbg !393
  %22 = fmul double %0, 5.000000e-01, !dbg !394
  tail call void @llvm.dbg.value(metadata double %22, metadata !323, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr @coef_jnu1_a, metadata !395, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 23, metadata !400, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %22, metadata !401, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 23, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i32 23, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !403, metadata !DIExpression()), !dbg !406
  %23 = fmul double %22, 2.000000e+00
  %24 = fadd double %23, -1.000000e+00
  %25 = fmul double %24, 2.000000e+00
  tail call void @llvm.dbg.value(metadata i64 23, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !403, metadata !DIExpression()), !dbg !406
  %26 = fmul double %25, 1.000000e-15, !dbg !408
  %27 = fadd double %26, -4.000000e-15, !dbg !412
  tail call void @llvm.dbg.value(metadata double %27, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %27, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 22, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 22, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %27, metadata !403, metadata !DIExpression()), !dbg !406
  %28 = fmul double %25, %27, !dbg !408
  %29 = fadd double %28, -1.000000e-15, !dbg !413
  %30 = fadd double %29, 1.500000e-14, !dbg !412
  tail call void @llvm.dbg.value(metadata double %30, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %27, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %30, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 21, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 21, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %27, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %30, metadata !403, metadata !DIExpression()), !dbg !406
  %31 = fmul double %25, %30, !dbg !408
  %32 = fsub double %31, %27, !dbg !413
  %33 = fadd double %32, -5.900000e-14, !dbg !412
  tail call void @llvm.dbg.value(metadata double %33, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %30, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %33, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 20, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 20, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %30, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %33, metadata !403, metadata !DIExpression()), !dbg !406
  %34 = fmul double %25, %33, !dbg !408
  %35 = fsub double %34, %30, !dbg !413
  %36 = fadd double %35, 2.390000e-13, !dbg !412
  tail call void @llvm.dbg.value(metadata double %36, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %33, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %36, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 19, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 19, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %33, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %36, metadata !403, metadata !DIExpression()), !dbg !406
  %37 = fmul double %25, %36, !dbg !408
  %38 = fsub double %37, %33, !dbg !413
  %39 = fadd double %38, -9.650000e-13, !dbg !412
  tail call void @llvm.dbg.value(metadata double %39, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %36, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %39, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 18, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 18, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %36, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %39, metadata !403, metadata !DIExpression()), !dbg !406
  %40 = fmul double %25, %39, !dbg !408
  %41 = fsub double %40, %36, !dbg !413
  %42 = fadd double %41, 3.914000e-12, !dbg !412
  tail call void @llvm.dbg.value(metadata double %42, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %39, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %42, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 17, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 17, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %39, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %42, metadata !403, metadata !DIExpression()), !dbg !406
  %43 = fmul double %25, %42, !dbg !408
  %44 = fsub double %43, %39, !dbg !413
  %45 = fadd double %44, -1.596100e-11, !dbg !412
  tail call void @llvm.dbg.value(metadata double %45, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %42, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %45, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 16, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 16, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %42, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %45, metadata !403, metadata !DIExpression()), !dbg !406
  %46 = fmul double %25, %45, !dbg !408
  %47 = fsub double %46, %42, !dbg !413
  %48 = fadd double %47, 6.542000e-11, !dbg !412
  tail call void @llvm.dbg.value(metadata double %48, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %45, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %48, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 15, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 15, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %45, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %48, metadata !403, metadata !DIExpression()), !dbg !406
  %49 = fmul double %25, %48, !dbg !408
  %50 = fsub double %49, %45, !dbg !413
  %51 = fadd double %50, -2.697670e-10, !dbg !412
  tail call void @llvm.dbg.value(metadata double %51, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %48, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %51, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 14, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 14, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %48, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %51, metadata !403, metadata !DIExpression()), !dbg !406
  %52 = fmul double %25, %51, !dbg !408
  %53 = fsub double %52, %48, !dbg !413
  %54 = fadd double %53, 0x3E133E0A7144FC73, !dbg !412
  tail call void @llvm.dbg.value(metadata double %54, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %51, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %54, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 13, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 13, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %51, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %54, metadata !403, metadata !DIExpression()), !dbg !406
  %55 = fmul double %25, %54, !dbg !408
  %56 = fsub double %55, %51, !dbg !413
  %57 = fadd double %56, 0xBE3421786A5DA81A, !dbg !412
  tail call void @llvm.dbg.value(metadata double %57, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %54, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %57, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 12, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 12, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %54, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %57, metadata !403, metadata !DIExpression()), !dbg !406
  %58 = fmul double %25, %57, !dbg !408
  %59 = fsub double %58, %54, !dbg !413
  %60 = fadd double %59, 0x3E5540E1E76ED69B, !dbg !412
  tail call void @llvm.dbg.value(metadata double %60, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %57, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %60, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 11, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 11, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %57, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %60, metadata !403, metadata !DIExpression()), !dbg !406
  %61 = fmul double %25, %60, !dbg !408
  %62 = fsub double %61, %57, !dbg !413
  %63 = fadd double %62, 0xBE76AEA938F43542, !dbg !412
  tail call void @llvm.dbg.value(metadata double %63, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %60, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %63, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 10, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 10, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %60, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %63, metadata !403, metadata !DIExpression()), !dbg !406
  %64 = fmul double %25, %63, !dbg !408
  %65 = fsub double %64, %60, !dbg !413
  %66 = fadd double %65, 0x3E98863395702F54, !dbg !412
  tail call void @llvm.dbg.value(metadata double %66, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %63, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %66, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 9, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 9, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %63, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %66, metadata !403, metadata !DIExpression()), !dbg !406
  %67 = fmul double %25, %66, !dbg !408
  %68 = fsub double %67, %63, !dbg !413
  %69 = fadd double %68, 0xBEBAF2310E971F0C, !dbg !412
  tail call void @llvm.dbg.value(metadata double %69, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %66, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %69, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 8, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 8, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %66, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %69, metadata !403, metadata !DIExpression()), !dbg !406
  %70 = fmul double %25, %69, !dbg !408
  %71 = fsub double %70, %66, !dbg !413
  %72 = fadd double %71, 0x3EDE38F42E5E82CD, !dbg !412
  tail call void @llvm.dbg.value(metadata double %72, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %69, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %72, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 7, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 7, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %69, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %72, metadata !403, metadata !DIExpression()), !dbg !406
  %73 = fmul double %25, %72, !dbg !408
  %74 = fsub double %73, %69, !dbg !413
  %75 = fadd double %74, 0xBF016B68D3D17A10, !dbg !412
  tail call void @llvm.dbg.value(metadata double %75, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %72, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %75, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 6, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 6, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %72, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %75, metadata !403, metadata !DIExpression()), !dbg !406
  %76 = fmul double %25, %75, !dbg !408
  %77 = fsub double %76, %72, !dbg !413
  %78 = fadd double %77, 0x3F24DE7F03677AE7, !dbg !412
  tail call void @llvm.dbg.value(metadata double %78, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %75, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %78, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 5, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 5, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %75, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %78, metadata !403, metadata !DIExpression()), !dbg !406
  %79 = fmul double %25, %78, !dbg !408
  %80 = fsub double %79, %75, !dbg !413
  %81 = fadd double %80, 0xBF4A7FB9288E9CCC, !dbg !412
  tail call void @llvm.dbg.value(metadata double %81, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %78, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %81, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 4, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 4, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %78, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %81, metadata !403, metadata !DIExpression()), !dbg !406
  %82 = fmul double %25, %81, !dbg !408
  %83 = fsub double %82, %78, !dbg !413
  %84 = fadd double %83, 0x3F728AB7FF1D773D, !dbg !412
  tail call void @llvm.dbg.value(metadata double %84, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %81, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %84, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 3, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 3, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %81, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %84, metadata !403, metadata !DIExpression()), !dbg !406
  %85 = fmul double %25, %84, !dbg !408
  %86 = fsub double %85, %81, !dbg !413
  %87 = fadd double %86, 0xBF9F71D78D39D989, !dbg !412
  tail call void @llvm.dbg.value(metadata double %87, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %84, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %87, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 2, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 2, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %84, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %87, metadata !403, metadata !DIExpression()), !dbg !406
  %88 = fmul double %25, %87, !dbg !408
  %89 = fsub double %88, %84, !dbg !413
  %90 = fadd double %89, 0x3FF5C57254B1F5DD, !dbg !412
  tail call void @llvm.dbg.value(metadata double %90, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %87, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %90, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 1, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 1, metadata !405, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %87, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %90, metadata !403, metadata !DIExpression()), !dbg !406
  %91 = fmul double %25, %90, !dbg !408
  %92 = fsub double %91, %87, !dbg !413
  %93 = fadd double %92, 0x400E6A0923912F8A, !dbg !412
  tail call void @llvm.dbg.value(metadata double %93, metadata !404, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %90, metadata !402, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata double %93, metadata !403, metadata !DIExpression()), !dbg !406
  tail call void @llvm.dbg.value(metadata i64 0, metadata !405, metadata !DIExpression()), !dbg !406
  %94 = fmul double %24, %90, !dbg !414
  %95 = fsub double %93, %94, !dbg !415
  tail call void @llvm.dbg.value(metadata double %95, metadata !324, metadata !DIExpression()), !dbg !393
  store double %95, ptr %2, align 8, !dbg !416, !tbaa !262
  %96 = fmul double %95, 2.000000e-15, !dbg !417
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !418
  store double %96, ptr %97, align 8, !dbg !419, !tbaa !271
  br label %438, !dbg !420

98:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata ptr @coef_jnu1_b, metadata !325, metadata !DIExpression()), !dbg !421
  tail call void @llvm.dbg.value(metadata i64 15, metadata !327, metadata !DIExpression()), !dbg !421
  %99 = fdiv double 2.000000e+00, %0, !dbg !422
  %100 = tail call double @pow(double noundef %99, double noundef 0x3FE5555555555555) #10, !dbg !423
  tail call void @llvm.dbg.value(metadata double %100, metadata !328, metadata !DIExpression()), !dbg !421
  tail call void @llvm.dbg.value(metadata ptr @coef_jnu1_b, metadata !395, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i32 14, metadata !400, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %100, metadata !401, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i32 14, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i32 14, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !403, metadata !DIExpression()), !dbg !424
  %101 = fmul double %100, 2.000000e+00
  %102 = fadd double %101, -1.000000e+00
  %103 = fmul double %102, 2.000000e+00
  tail call void @llvm.dbg.value(metadata i64 14, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !403, metadata !DIExpression()), !dbg !424
  %104 = fmul double %103, -3.000000e-15, !dbg !426
  %105 = fadd double %104, 0x3D06849B86A12B9B, !dbg !427
  tail call void @llvm.dbg.value(metadata double %105, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %105, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 13, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 13, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %105, metadata !403, metadata !DIExpression()), !dbg !424
  %106 = fmul double %103, %105, !dbg !426
  %107 = fadd double %106, 3.000000e-15, !dbg !428
  %108 = fadd double %107, 4.300000e-14, !dbg !427
  tail call void @llvm.dbg.value(metadata double %108, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %105, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %108, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 12, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 12, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %105, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %108, metadata !403, metadata !DIExpression()), !dbg !424
  %109 = fmul double %103, %108, !dbg !426
  %110 = fsub double %109, %105, !dbg !428
  %111 = fadd double %110, 2.830000e-13, !dbg !427
  tail call void @llvm.dbg.value(metadata double %111, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %108, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %111, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 11, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 11, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %108, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %111, metadata !403, metadata !DIExpression()), !dbg !424
  %112 = fmul double %103, %111, !dbg !426
  %113 = fsub double %112, %108, !dbg !428
  %114 = fadd double %113, -8.950000e-13, !dbg !427
  tail call void @llvm.dbg.value(metadata double %114, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %111, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %114, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 10, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 10, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %111, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %114, metadata !403, metadata !DIExpression()), !dbg !424
  %115 = fmul double %103, %114, !dbg !426
  %116 = fsub double %115, %111, !dbg !428
  %117 = fadd double %116, -1.530790e-10, !dbg !427
  tail call void @llvm.dbg.value(metadata double %117, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %114, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %117, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 9, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 9, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %114, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %117, metadata !403, metadata !DIExpression()), !dbg !424
  %118 = fmul double %103, %117, !dbg !426
  %119 = fsub double %118, %114, !dbg !428
  %120 = fadd double %119, 0x3E23A0014CC8772B, !dbg !427
  tail call void @llvm.dbg.value(metadata double %120, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %117, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %120, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 8, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 8, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %117, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %120, metadata !403, metadata !DIExpression()), !dbg !424
  %121 = fmul double %103, %120, !dbg !426
  %122 = fsub double %121, %117, !dbg !428
  %123 = fadd double %122, 0xBE308D6238654CB4, !dbg !427
  tail call void @llvm.dbg.value(metadata double %123, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %120, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %123, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 7, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 7, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %120, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %123, metadata !403, metadata !DIExpression()), !dbg !424
  %124 = fmul double %103, %123, !dbg !426
  %125 = fsub double %124, %120, !dbg !428
  %126 = fadd double %125, 0xBE95FBD64703A98E, !dbg !427
  tail call void @llvm.dbg.value(metadata double %126, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %123, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %126, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 6, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 6, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %123, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %126, metadata !403, metadata !DIExpression()), !dbg !424
  %127 = fmul double %103, %126, !dbg !426
  %128 = fsub double %127, %123, !dbg !428
  %129 = fadd double %128, 0x3ED826ECDE589C62, !dbg !427
  tail call void @llvm.dbg.value(metadata double %129, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %126, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %129, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 5, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 5, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %126, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %129, metadata !403, metadata !DIExpression()), !dbg !424
  %130 = fmul double %103, %129, !dbg !426
  %131 = fsub double %130, %126, !dbg !428
  %132 = fadd double %131, 0xBF047078F3D6AEB5, !dbg !427
  tail call void @llvm.dbg.value(metadata double %132, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %129, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %132, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 4, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 4, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %129, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %132, metadata !403, metadata !DIExpression()), !dbg !424
  %133 = fmul double %103, %132, !dbg !426
  %134 = fsub double %133, %129, !dbg !428
  %135 = fadd double %134, 0xBF42F2F660C50A23, !dbg !427
  tail call void @llvm.dbg.value(metadata double %135, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %132, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %135, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 3, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 3, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %132, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %135, metadata !403, metadata !DIExpression()), !dbg !424
  %136 = fmul double %103, %135, !dbg !426
  %137 = fsub double %136, %132, !dbg !428
  %138 = fadd double %137, 0x3FA906FE11614667, !dbg !427
  tail call void @llvm.dbg.value(metadata double %138, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %135, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %138, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 2, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 2, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %135, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %138, metadata !403, metadata !DIExpression()), !dbg !424
  %139 = fmul double %103, %138, !dbg !426
  %140 = fsub double %139, %135, !dbg !428
  %141 = fadd double %140, 0x3FE91A71D1808AB5, !dbg !427
  tail call void @llvm.dbg.value(metadata double %141, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %138, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %141, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 1, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 1, metadata !405, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %138, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %141, metadata !403, metadata !DIExpression()), !dbg !424
  %142 = fmul double %103, %141, !dbg !426
  %143 = fsub double %142, %138, !dbg !428
  %144 = fadd double %143, 0x3FFBC2D1DA5553E7, !dbg !427
  tail call void @llvm.dbg.value(metadata double %144, metadata !404, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %141, metadata !402, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata double %144, metadata !403, metadata !DIExpression()), !dbg !424
  tail call void @llvm.dbg.value(metadata i64 0, metadata !405, metadata !DIExpression()), !dbg !424
  %145 = fmul double %102, %141, !dbg !429
  %146 = fsub double %144, %145, !dbg !430
  tail call void @llvm.dbg.value(metadata double %146, metadata !329, metadata !DIExpression()), !dbg !421
  %147 = fmul double %146, %0, !dbg !431
  store double %147, ptr %2, align 8, !dbg !432, !tbaa !262
  %148 = fmul double %147, 2.000000e-15, !dbg !433
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !434
  store double %148, ptr %149, align 8, !dbg !435, !tbaa !271
  br label %438

150:                                              ; preds = %17
  %151 = icmp ult i32 %1, 11, !dbg !436
  %152 = uitofp i32 %1 to double, !dbg !437
  br i1 %151, label %153, label %315, !dbg !438

153:                                              ; preds = %150
  %154 = fcmp ogt double %152, %0, !dbg !439
  %155 = zext nneg i32 %1 to i64, !dbg !440
  br i1 %154, label %156, label %233, !dbg !441

156:                                              ; preds = %153
  %157 = getelementptr inbounds [21 x ptr], ptr @coef_jnu_a, i64 0, i64 %155, !dbg !442
  %158 = load ptr, ptr %157, align 8, !dbg !442, !tbaa !443
  tail call void @llvm.dbg.value(metadata ptr %158, metadata !330, metadata !DIExpression()), !dbg !445
  %159 = getelementptr inbounds [21 x i64], ptr @size_jnu_a, i64 0, i64 %155, !dbg !446
  %160 = load i64, ptr %159, align 8, !dbg !446, !tbaa !447
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !335, metadata !DIExpression()), !dbg !445
  %161 = fdiv double %0, %152, !dbg !449
  tail call void @llvm.dbg.value(metadata double %161, metadata !336, metadata !DIExpression()), !dbg !445
  %162 = trunc i64 %160 to i32, !dbg !450
  %163 = add i32 %162, -1, !dbg !450
  tail call void @llvm.dbg.value(metadata ptr %158, metadata !395, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !400, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %161, metadata !401, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !451
  %164 = sext i32 %163 to i64, !dbg !453
  %165 = getelementptr inbounds double, ptr %158, i64 %164, !dbg !453
  %166 = load double, ptr %165, align 8, !dbg !453, !tbaa !454
  tail call void @llvm.dbg.value(metadata double %166, metadata !403, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !405, metadata !DIExpression()), !dbg !451
  %167 = getelementptr double, ptr %158, i64 -1, !dbg !455
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !405, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %166, metadata !403, metadata !DIExpression()), !dbg !451
  %168 = icmp sgt i32 %163, 0, !dbg !456
  %169 = fmul double %161, 2.000000e+00
  %170 = fadd double %169, -1.000000e+00
  br i1 %168, label %171, label %226, !dbg !457

171:                                              ; preds = %156
  %172 = fmul double %170, 2.000000e+00
  %173 = zext nneg i32 %163 to i64, !dbg !457
  %174 = and i64 %173, 3, !dbg !457
  %175 = icmp eq i64 %174, 0, !dbg !457
  br i1 %175, label %189, label %176, !dbg !457

176:                                              ; preds = %171, %176
  %177 = phi i64 [ %186, %176 ], [ %173, %171 ]
  %178 = phi double [ %179, %176 ], [ 0.000000e+00, %171 ]
  %179 = phi double [ %185, %176 ], [ %166, %171 ]
  %180 = phi i64 [ %187, %176 ], [ 0, %171 ]
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !405, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %178, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %179, metadata !403, metadata !DIExpression()), !dbg !451
  %181 = fmul double %172, %179, !dbg !458
  %182 = fsub double %181, %178, !dbg !459
  %183 = getelementptr double, ptr %167, i64 %177, !dbg !460
  %184 = load double, ptr %183, align 8, !dbg !460, !tbaa !454
  %185 = fadd double %184, %182, !dbg !461
  tail call void @llvm.dbg.value(metadata double %185, metadata !404, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %179, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %185, metadata !403, metadata !DIExpression()), !dbg !451
  %186 = add nsw i64 %177, -1, !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %186, metadata !405, metadata !DIExpression()), !dbg !451
  %187 = add i64 %180, 1, !dbg !457
  %188 = icmp eq i64 %187, %174, !dbg !457
  br i1 %188, label %189, label %176, !dbg !457, !llvm.loop !463

189:                                              ; preds = %176, %171
  %190 = phi i64 [ %173, %171 ], [ %186, %176 ]
  %191 = phi double [ 0.000000e+00, %171 ], [ %179, %176 ]
  %192 = phi double [ %166, %171 ], [ %185, %176 ]
  %193 = phi double [ undef, %171 ], [ %179, %176 ]
  %194 = phi double [ undef, %171 ], [ %185, %176 ]
  %195 = icmp ult i32 %163, 4, !dbg !457
  br i1 %195, label %226, label %196, !dbg !457

196:                                              ; preds = %189
  %197 = getelementptr double, ptr %167, i64 -1, !dbg !457
  %198 = getelementptr double, ptr %167, i64 -2, !dbg !457
  br label %199, !dbg !457

199:                                              ; preds = %199, %196
  %200 = phi i64 [ %190, %196 ], [ %224, %199 ]
  %201 = phi double [ %191, %196 ], [ %217, %199 ]
  %202 = phi double [ %192, %196 ], [ %223, %199 ]
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !405, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %201, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %202, metadata !403, metadata !DIExpression()), !dbg !451
  %203 = fmul double %172, %202, !dbg !458
  %204 = fsub double %203, %201, !dbg !459
  %205 = getelementptr double, ptr %167, i64 %200, !dbg !460
  %206 = load double, ptr %205, align 8, !dbg !460, !tbaa !454
  %207 = fadd double %206, %204, !dbg !461
  tail call void @llvm.dbg.value(metadata double %207, metadata !404, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %202, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %207, metadata !403, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !405, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !405, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !451
  tail call void @llvm.dbg.value(metadata double %202, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %207, metadata !403, metadata !DIExpression()), !dbg !451
  %208 = fmul double %172, %207, !dbg !458
  %209 = fsub double %208, %202, !dbg !459
  %210 = getelementptr double, ptr %197, i64 %200, !dbg !460
  %211 = load double, ptr %210, align 8, !dbg !460, !tbaa !454
  %212 = fadd double %211, %209, !dbg !461
  tail call void @llvm.dbg.value(metadata double %212, metadata !404, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %207, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %212, metadata !403, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !405, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !405, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !451
  tail call void @llvm.dbg.value(metadata double %207, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %212, metadata !403, metadata !DIExpression()), !dbg !451
  %213 = fmul double %172, %212, !dbg !458
  %214 = fsub double %213, %207, !dbg !459
  %215 = getelementptr double, ptr %198, i64 %200, !dbg !460
  %216 = load double, ptr %215, align 8, !dbg !460, !tbaa !454
  %217 = fadd double %216, %214, !dbg !461
  tail call void @llvm.dbg.value(metadata double %217, metadata !404, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %212, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %217, metadata !403, metadata !DIExpression()), !dbg !451
  %218 = add nsw i64 %200, -3, !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !405, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !405, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %212, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %217, metadata !403, metadata !DIExpression()), !dbg !451
  %219 = fmul double %172, %217, !dbg !458
  %220 = fsub double %219, %212, !dbg !459
  %221 = getelementptr double, ptr %167, i64 %218, !dbg !460
  %222 = load double, ptr %221, align 8, !dbg !460, !tbaa !454
  %223 = fadd double %222, %220, !dbg !461
  tail call void @llvm.dbg.value(metadata double %223, metadata !404, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %217, metadata !402, metadata !DIExpression()), !dbg !451
  tail call void @llvm.dbg.value(metadata double %223, metadata !403, metadata !DIExpression()), !dbg !451
  %224 = add nsw i64 %200, -4, !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !405, metadata !DIExpression()), !dbg !451
  %225 = icmp ugt i64 %218, 1, !dbg !456
  br i1 %225, label %199, label %226, !dbg !457, !llvm.loop !465

226:                                              ; preds = %189, %199, %156
  %227 = phi double [ %166, %156 ], [ %194, %189 ], [ %223, %199 ], !dbg !451
  %228 = phi double [ 0.000000e+00, %156 ], [ %193, %189 ], [ %217, %199 ], !dbg !451
  %229 = fmul double %170, %228, !dbg !468
  %230 = fsub double %227, %229, !dbg !469
  tail call void @llvm.dbg.value(metadata double %230, metadata !337, metadata !DIExpression()), !dbg !445
  store double %230, ptr %2, align 8, !dbg !470, !tbaa !262
  %231 = fmul double %230, 2.000000e-15, !dbg !471
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !472
  store double %231, ptr %232, align 8, !dbg !473, !tbaa !271
  br label %438, !dbg !474

233:                                              ; preds = %153
  %234 = getelementptr inbounds [11 x ptr], ptr @coef_jnu_b, i64 0, i64 %155, !dbg !475
  %235 = load ptr, ptr %234, align 8, !dbg !475, !tbaa !443
  tail call void @llvm.dbg.value(metadata ptr %235, metadata !338, metadata !DIExpression()), !dbg !476
  %236 = getelementptr inbounds [11 x i64], ptr @size_jnu_b, i64 0, i64 %155, !dbg !477
  %237 = load i64, ptr %236, align 8, !dbg !477, !tbaa !447
  tail call void @llvm.dbg.value(metadata i64 %237, metadata !340, metadata !DIExpression()), !dbg !476
  %238 = fdiv double %152, %0, !dbg !478
  %239 = tail call double @pow(double noundef %238, double noundef 0x3FE5555555555555) #10, !dbg !479
  tail call void @llvm.dbg.value(metadata double %239, metadata !341, metadata !DIExpression()), !dbg !476
  %240 = trunc i64 %237 to i32, !dbg !480
  %241 = add i32 %240, -1, !dbg !480
  tail call void @llvm.dbg.value(metadata ptr %235, metadata !395, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i32 %241, metadata !400, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %239, metadata !401, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !481
  %242 = sext i32 %241 to i64, !dbg !483
  %243 = getelementptr inbounds double, ptr %235, i64 %242, !dbg !483
  %244 = load double, ptr %243, align 8, !dbg !483, !tbaa !454
  tail call void @llvm.dbg.value(metadata double %244, metadata !403, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i32 %241, metadata !405, metadata !DIExpression()), !dbg !481
  %245 = getelementptr double, ptr %235, i64 -1, !dbg !484
  %246 = icmp sgt i32 %241, 0, !dbg !485
  %247 = fmul double %239, 2.000000e+00
  %248 = fadd double %247, -1.000000e+00
  br i1 %246, label %249, label %304, !dbg !486

249:                                              ; preds = %233
  %250 = fmul double %248, 2.000000e+00
  %251 = zext nneg i32 %241 to i64, !dbg !486
  %252 = and i64 %251, 3, !dbg !486
  %253 = icmp eq i64 %252, 0, !dbg !486
  br i1 %253, label %267, label %254, !dbg !486

254:                                              ; preds = %249, %254
  %255 = phi i64 [ %264, %254 ], [ %251, %249 ]
  %256 = phi double [ %257, %254 ], [ 0.000000e+00, %249 ]
  %257 = phi double [ %263, %254 ], [ %244, %249 ]
  %258 = phi i64 [ %265, %254 ], [ 0, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !405, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %256, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %257, metadata !403, metadata !DIExpression()), !dbg !481
  %259 = fmul double %250, %257, !dbg !487
  %260 = fsub double %259, %256, !dbg !488
  %261 = getelementptr double, ptr %245, i64 %255, !dbg !489
  %262 = load double, ptr %261, align 8, !dbg !489, !tbaa !454
  %263 = fadd double %262, %260, !dbg !490
  tail call void @llvm.dbg.value(metadata double %263, metadata !404, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %257, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %263, metadata !403, metadata !DIExpression()), !dbg !481
  %264 = add nsw i64 %255, -1, !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %264, metadata !405, metadata !DIExpression()), !dbg !481
  %265 = add i64 %258, 1, !dbg !486
  %266 = icmp eq i64 %265, %252, !dbg !486
  br i1 %266, label %267, label %254, !dbg !486, !llvm.loop !492

267:                                              ; preds = %254, %249
  %268 = phi i64 [ %251, %249 ], [ %264, %254 ]
  %269 = phi double [ 0.000000e+00, %249 ], [ %257, %254 ]
  %270 = phi double [ %244, %249 ], [ %263, %254 ]
  %271 = phi double [ undef, %249 ], [ %257, %254 ]
  %272 = phi double [ undef, %249 ], [ %263, %254 ]
  %273 = icmp ult i32 %241, 4, !dbg !486
  br i1 %273, label %304, label %274, !dbg !486

274:                                              ; preds = %267
  %275 = getelementptr double, ptr %245, i64 -1, !dbg !486
  %276 = getelementptr double, ptr %245, i64 -2, !dbg !486
  br label %277, !dbg !486

277:                                              ; preds = %277, %274
  %278 = phi i64 [ %268, %274 ], [ %302, %277 ]
  %279 = phi double [ %269, %274 ], [ %295, %277 ]
  %280 = phi double [ %270, %274 ], [ %301, %277 ]
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !405, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %279, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %280, metadata !403, metadata !DIExpression()), !dbg !481
  %281 = fmul double %250, %280, !dbg !487
  %282 = fsub double %281, %279, !dbg !488
  %283 = getelementptr double, ptr %245, i64 %278, !dbg !489
  %284 = load double, ptr %283, align 8, !dbg !489, !tbaa !454
  %285 = fadd double %284, %282, !dbg !490
  tail call void @llvm.dbg.value(metadata double %285, metadata !404, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %280, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %285, metadata !403, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !405, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !405, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !481
  tail call void @llvm.dbg.value(metadata double %280, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %285, metadata !403, metadata !DIExpression()), !dbg !481
  %286 = fmul double %250, %285, !dbg !487
  %287 = fsub double %286, %280, !dbg !488
  %288 = getelementptr double, ptr %275, i64 %278, !dbg !489
  %289 = load double, ptr %288, align 8, !dbg !489, !tbaa !454
  %290 = fadd double %289, %287, !dbg !490
  tail call void @llvm.dbg.value(metadata double %290, metadata !404, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %285, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %290, metadata !403, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !405, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !405, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !481
  tail call void @llvm.dbg.value(metadata double %285, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %290, metadata !403, metadata !DIExpression()), !dbg !481
  %291 = fmul double %250, %290, !dbg !487
  %292 = fsub double %291, %285, !dbg !488
  %293 = getelementptr double, ptr %276, i64 %278, !dbg !489
  %294 = load double, ptr %293, align 8, !dbg !489, !tbaa !454
  %295 = fadd double %294, %292, !dbg !490
  tail call void @llvm.dbg.value(metadata double %295, metadata !404, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %290, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %295, metadata !403, metadata !DIExpression()), !dbg !481
  %296 = add nsw i64 %278, -3, !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !405, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !405, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %290, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %295, metadata !403, metadata !DIExpression()), !dbg !481
  %297 = fmul double %250, %295, !dbg !487
  %298 = fsub double %297, %290, !dbg !488
  %299 = getelementptr double, ptr %245, i64 %296, !dbg !489
  %300 = load double, ptr %299, align 8, !dbg !489, !tbaa !454
  %301 = fadd double %300, %298, !dbg !490
  tail call void @llvm.dbg.value(metadata double %301, metadata !404, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %295, metadata !402, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %301, metadata !403, metadata !DIExpression()), !dbg !481
  %302 = add nsw i64 %278, -4, !dbg !491
  tail call void @llvm.dbg.value(metadata i64 %302, metadata !405, metadata !DIExpression()), !dbg !481
  %303 = icmp ugt i64 %296, 1, !dbg !485
  br i1 %303, label %277, label %304, !dbg !486, !llvm.loop !493

304:                                              ; preds = %267, %277, %233
  %305 = phi double [ %244, %233 ], [ %272, %267 ], [ %301, %277 ], !dbg !481
  %306 = phi double [ 0.000000e+00, %233 ], [ %271, %267 ], [ %295, %277 ], !dbg !481
  %307 = fmul double %248, %306, !dbg !495
  %308 = fsub double %305, %307, !dbg !496
  tail call void @llvm.dbg.value(metadata double %308, metadata !342, metadata !DIExpression()), !dbg !476
  %309 = fmul double %308, %0, !dbg !497
  store double %309, ptr %2, align 8, !dbg !498, !tbaa !262
  %310 = fmul double %309, 2.000000e-15, !dbg !499
  %311 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !500
  %312 = icmp eq i32 %1, 5, !dbg !501
  %313 = fmul double %310, 5.000000e+06, !dbg !503
  %314 = select i1 %312, double %313, double %310, !dbg !503
  store double %314, ptr %311, align 8, !dbg !476, !tbaa !271
  br label %438

315:                                              ; preds = %150
  %316 = fmul double %0, 5.000000e-01, !dbg !504
  %317 = fcmp olt double %316, %152, !dbg !505
  %318 = icmp ult i32 %1, 21
  %319 = and i1 %318, %317, !dbg !506
  br i1 %319, label %320, label %399, !dbg !506

320:                                              ; preds = %315
  %321 = zext nneg i32 %1 to i64, !dbg !507
  %322 = getelementptr inbounds [21 x ptr], ptr @coef_jnu_a, i64 0, i64 %321, !dbg !507
  %323 = load ptr, ptr %322, align 8, !dbg !507, !tbaa !443
  tail call void @llvm.dbg.value(metadata ptr %323, metadata !343, metadata !DIExpression()), !dbg !508
  %324 = getelementptr inbounds [21 x i64], ptr @size_jnu_a, i64 0, i64 %321, !dbg !509
  %325 = load i64, ptr %324, align 8, !dbg !509, !tbaa !447
  tail call void @llvm.dbg.value(metadata i64 %325, metadata !346, metadata !DIExpression()), !dbg !508
  %326 = fmul double %152, 2.000000e+00, !dbg !510
  %327 = fdiv double %0, %326, !dbg !511
  tail call void @llvm.dbg.value(metadata double %327, metadata !347, metadata !DIExpression()), !dbg !508
  %328 = trunc i64 %325 to i32, !dbg !512
  %329 = add i32 %328, -1, !dbg !512
  tail call void @llvm.dbg.value(metadata ptr %323, metadata !395, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i32 %329, metadata !400, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %327, metadata !401, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !402, metadata !DIExpression()), !dbg !513
  %330 = sext i32 %329 to i64, !dbg !515
  %331 = getelementptr inbounds double, ptr %323, i64 %330, !dbg !515
  %332 = load double, ptr %331, align 8, !dbg !515, !tbaa !454
  tail call void @llvm.dbg.value(metadata double %332, metadata !403, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i32 %329, metadata !405, metadata !DIExpression()), !dbg !513
  %333 = getelementptr double, ptr %323, i64 -1, !dbg !516
  %334 = icmp sgt i32 %329, 0, !dbg !517
  %335 = fmul double %327, 2.000000e+00
  %336 = fadd double %335, -1.000000e+00
  br i1 %334, label %337, label %392, !dbg !518

337:                                              ; preds = %320
  %338 = fmul double %336, 2.000000e+00
  %339 = zext nneg i32 %329 to i64, !dbg !518
  %340 = and i64 %339, 3, !dbg !518
  %341 = icmp eq i64 %340, 0, !dbg !518
  br i1 %341, label %355, label %342, !dbg !518

342:                                              ; preds = %337, %342
  %343 = phi i64 [ %352, %342 ], [ %339, %337 ]
  %344 = phi double [ %345, %342 ], [ 0.000000e+00, %337 ]
  %345 = phi double [ %351, %342 ], [ %332, %337 ]
  %346 = phi i64 [ %353, %342 ], [ 0, %337 ]
  tail call void @llvm.dbg.value(metadata i64 %343, metadata !405, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %344, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %345, metadata !403, metadata !DIExpression()), !dbg !513
  %347 = fmul double %338, %345, !dbg !519
  %348 = fsub double %347, %344, !dbg !520
  %349 = getelementptr double, ptr %333, i64 %343, !dbg !521
  %350 = load double, ptr %349, align 8, !dbg !521, !tbaa !454
  %351 = fadd double %350, %348, !dbg !522
  tail call void @llvm.dbg.value(metadata double %351, metadata !404, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %345, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %351, metadata !403, metadata !DIExpression()), !dbg !513
  %352 = add nsw i64 %343, -1, !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !405, metadata !DIExpression()), !dbg !513
  %353 = add i64 %346, 1, !dbg !518
  %354 = icmp eq i64 %353, %340, !dbg !518
  br i1 %354, label %355, label %342, !dbg !518, !llvm.loop !524

355:                                              ; preds = %342, %337
  %356 = phi i64 [ %339, %337 ], [ %352, %342 ]
  %357 = phi double [ 0.000000e+00, %337 ], [ %345, %342 ]
  %358 = phi double [ %332, %337 ], [ %351, %342 ]
  %359 = phi double [ undef, %337 ], [ %345, %342 ]
  %360 = phi double [ undef, %337 ], [ %351, %342 ]
  %361 = icmp ult i32 %329, 4, !dbg !518
  br i1 %361, label %392, label %362, !dbg !518

362:                                              ; preds = %355
  %363 = getelementptr double, ptr %333, i64 -1, !dbg !518
  %364 = getelementptr double, ptr %333, i64 -2, !dbg !518
  br label %365, !dbg !518

365:                                              ; preds = %365, %362
  %366 = phi i64 [ %356, %362 ], [ %390, %365 ]
  %367 = phi double [ %357, %362 ], [ %383, %365 ]
  %368 = phi double [ %358, %362 ], [ %389, %365 ]
  tail call void @llvm.dbg.value(metadata i64 %366, metadata !405, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %367, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %368, metadata !403, metadata !DIExpression()), !dbg !513
  %369 = fmul double %338, %368, !dbg !519
  %370 = fsub double %369, %367, !dbg !520
  %371 = getelementptr double, ptr %333, i64 %366, !dbg !521
  %372 = load double, ptr %371, align 8, !dbg !521, !tbaa !454
  %373 = fadd double %372, %370, !dbg !522
  tail call void @llvm.dbg.value(metadata double %373, metadata !404, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %368, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %373, metadata !403, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %366, metadata !405, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %366, metadata !405, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !513
  tail call void @llvm.dbg.value(metadata double %368, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %373, metadata !403, metadata !DIExpression()), !dbg !513
  %374 = fmul double %338, %373, !dbg !519
  %375 = fsub double %374, %368, !dbg !520
  %376 = getelementptr double, ptr %363, i64 %366, !dbg !521
  %377 = load double, ptr %376, align 8, !dbg !521, !tbaa !454
  %378 = fadd double %377, %375, !dbg !522
  tail call void @llvm.dbg.value(metadata double %378, metadata !404, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %373, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %378, metadata !403, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %366, metadata !405, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %366, metadata !405, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !513
  tail call void @llvm.dbg.value(metadata double %373, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %378, metadata !403, metadata !DIExpression()), !dbg !513
  %379 = fmul double %338, %378, !dbg !519
  %380 = fsub double %379, %373, !dbg !520
  %381 = getelementptr double, ptr %364, i64 %366, !dbg !521
  %382 = load double, ptr %381, align 8, !dbg !521, !tbaa !454
  %383 = fadd double %382, %380, !dbg !522
  tail call void @llvm.dbg.value(metadata double %383, metadata !404, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %378, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %383, metadata !403, metadata !DIExpression()), !dbg !513
  %384 = add nsw i64 %366, -3, !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !405, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %384, metadata !405, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %378, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %383, metadata !403, metadata !DIExpression()), !dbg !513
  %385 = fmul double %338, %383, !dbg !519
  %386 = fsub double %385, %378, !dbg !520
  %387 = getelementptr double, ptr %333, i64 %384, !dbg !521
  %388 = load double, ptr %387, align 8, !dbg !521, !tbaa !454
  %389 = fadd double %388, %386, !dbg !522
  tail call void @llvm.dbg.value(metadata double %389, metadata !404, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %383, metadata !402, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %389, metadata !403, metadata !DIExpression()), !dbg !513
  %390 = add nsw i64 %366, -4, !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %390, metadata !405, metadata !DIExpression()), !dbg !513
  %391 = icmp ugt i64 %384, 1, !dbg !517
  br i1 %391, label %365, label %392, !dbg !518, !llvm.loop !525

392:                                              ; preds = %355, %365, %320
  %393 = phi double [ %332, %320 ], [ %360, %355 ], [ %389, %365 ], !dbg !513
  %394 = phi double [ 0.000000e+00, %320 ], [ %359, %355 ], [ %383, %365 ], !dbg !513
  %395 = fmul double %336, %394, !dbg !527
  %396 = fsub double %393, %395, !dbg !528
  tail call void @llvm.dbg.value(metadata double %396, metadata !348, metadata !DIExpression()), !dbg !508
  store double %396, ptr %2, align 8, !dbg !529, !tbaa !262
  %397 = fmul double %396, 4.000000e-15, !dbg !530
  %398 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !531
  store double %397, ptr %398, align 8, !dbg !532, !tbaa !271
  br label %438

399:                                              ; preds = %315
  %400 = fmul double %0, 2.000000e+00, !dbg !533
  %401 = fcmp olt double %400, %152, !dbg !534
  %402 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !535
  br i1 %401, label %403, label %421, !dbg !536

403:                                              ; preds = %399
  %404 = fadd double %316, %152, !dbg !537
  %405 = fadd double %404, -2.500000e-01, !dbg !538
  %406 = fmul double %405, 0x400921FB54442D18, !dbg !539
  tail call void @llvm.dbg.value(metadata double %406, metadata !349, metadata !DIExpression()), !dbg !362
  %407 = fmul double %0, 4.000000e+00, !dbg !540
  %408 = fmul double %407, %0, !dbg !541
  %409 = tail call fastcc double @mcmahon_correction(double noundef %408, double noundef %406), !dbg !542
  tail call void @llvm.dbg.value(metadata double %409, metadata !352, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10, !dbg !543
  %410 = fdiv double %0, %406, !dbg !544
  %411 = call i32 @gsl_sf_pow_int_e(double noundef %410, i32 noundef 14, ptr noundef nonnull %4) #10, !dbg !545
  %412 = fmul double %406, %409, !dbg !546
  store double %412, ptr %2, align 8, !dbg !547, !tbaa !262
  %413 = call double @llvm.fabs.f64(double %406), !dbg !548
  %414 = fmul double %413, 4.000000e+00, !dbg !549
  %415 = load double, ptr %4, align 8, !dbg !550, !tbaa !262
  %416 = fmul double %414, %415, !dbg !551
  %417 = fmul double %412, 0x3CB0000000000000, !dbg !552
  %418 = call double @llvm.fabs.f64(double %417), !dbg !553
  %419 = fmul double %418, 4.000000e+00, !dbg !554
  %420 = fadd double %419, %416, !dbg !555
  store double %420, ptr %402, align 8, !dbg !555, !tbaa !271
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10, !dbg !556
  br label %438

421:                                              ; preds = %399
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10, !dbg !557
  %422 = call i32 @gsl_sf_airy_zero_Ai_e(i32 noundef %1, ptr noundef nonnull %5) #10, !dbg !558
  tail call void @llvm.dbg.value(metadata i32 %422, metadata !356, metadata !DIExpression()), !dbg !364
  %423 = call double @pow(double noundef %0, double noundef 0xBFE5555555555555) #10, !dbg !559
  %424 = fneg double %423, !dbg !560
  %425 = load double, ptr %5, align 8, !dbg !561, !tbaa !262
  %426 = fmul double %425, %424, !dbg !562
  tail call void @llvm.dbg.value(metadata double %426, metadata !358, metadata !DIExpression()), !dbg !364
  %427 = call double @gsl_sf_bessel_Olver_zofmzeta(double noundef %426) #10, !dbg !563
  tail call void @llvm.dbg.value(metadata double %427, metadata !359, metadata !DIExpression()), !dbg !364
  %428 = call fastcc double @olver_f1(double noundef %427, double noundef %426), !dbg !564
  tail call void @llvm.dbg.value(metadata double %428, metadata !360, metadata !DIExpression()), !dbg !364
  %429 = fmul double %0, %0, !dbg !565
  %430 = fdiv double %428, %429, !dbg !566
  %431 = fadd double %427, %430, !dbg !567
  %432 = fmul double %431, %0, !dbg !568
  store double %432, ptr %2, align 8, !dbg !569, !tbaa !262
  %433 = fmul double %429, %0, !dbg !570
  %434 = fdiv double 1.000000e-03, %433, !dbg !571
  %435 = call double @llvm.fabs.f64(double %432), !dbg !572
  %436 = fmul double %435, 0x3CC0000000000000, !dbg !573
  %437 = fadd double %434, %436, !dbg !574
  store double %437, ptr %402, align 8, !dbg !574, !tbaa !271
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10, !dbg !575
  br label %438

438:                                              ; preds = %226, %304, %21, %98, %11, %7, %13, %16, %392, %403, %421
  %439 = phi i32 [ 1, %7 ], [ 4, %13 ], [ 24, %16 ], [ 0, %392 ], [ 0, %403 ], [ %422, %421 ], [ 0, %11 ], [ 0, %98 ], [ 0, %21 ], [ 0, %304 ], [ 0, %226 ], !dbg !576
  ret i32 %439, !dbg !577
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !578 double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc double @mcmahon_correction(double noundef %0, double noundef %1) unnamed_addr #6 !dbg !582 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !586, metadata !DIExpression()), !dbg !611
  tail call void @llvm.dbg.value(metadata double %1, metadata !587, metadata !DIExpression()), !dbg !611
  %3 = fmul double %1, 8.000000e+00, !dbg !612
  tail call void @llvm.dbg.value(metadata double %3, metadata !588, metadata !DIExpression()), !dbg !611
  %4 = fmul double %3, %3, !dbg !613
  tail call void @llvm.dbg.value(metadata double %4, metadata !589, metadata !DIExpression()), !dbg !611
  %5 = fcmp olt double %0, 0x3CB0000000000000, !dbg !614
  br i1 %5, label %6, label %32, !dbg !615

6:                                                ; preds = %2
  %7 = fdiv double 1.000000e+00, %4, !dbg !616
  tail call void @llvm.dbg.value(metadata double %7, metadata !590, metadata !DIExpression()), !dbg !617
  %8 = fmul double %4, 3.000000e+00, !dbg !618
  %9 = fmul double %4, %8, !dbg !619
  %10 = fdiv double 1.240000e+02, %9, !dbg !620
  tail call void @llvm.dbg.value(metadata double %10, metadata !593, metadata !DIExpression()), !dbg !617
  %11 = fmul double %4, 1.500000e+01, !dbg !621
  %12 = fmul double %4, %11, !dbg !622
  %13 = fmul double %4, %12, !dbg !623
  %14 = fdiv double 1.209280e+05, %13, !dbg !624
  tail call void @llvm.dbg.value(metadata double %14, metadata !594, metadata !DIExpression()), !dbg !617
  %15 = fmul double %4, 1.050000e+02, !dbg !625
  %16 = fmul double %4, %15, !dbg !626
  %17 = fmul double %4, %16, !dbg !627
  %18 = fmul double %4, %17, !dbg !628
  %19 = fdiv double 0x41B7F21D40000000, %18, !dbg !629
  tail call void @llvm.dbg.value(metadata double %19, metadata !595, metadata !DIExpression()), !dbg !617
  %20 = fmul double %4, 3.150000e+02, !dbg !630
  %21 = fmul double %4, %20, !dbg !631
  %22 = fmul double %4, %21, !dbg !632
  %23 = fmul double %4, %22, !dbg !633
  %24 = fmul double %4, %23, !dbg !634
  %25 = fdiv double 0x426F2CF87D400000, %24, !dbg !635
  tail call void @llvm.dbg.value(metadata double %25, metadata !596, metadata !DIExpression()), !dbg !617
  %26 = fsub double %7, %10, !dbg !636
  %27 = fadd double %26, %14, !dbg !637
  %28 = fsub double %27, %19, !dbg !638
  %29 = fadd double %28, %25, !dbg !639
  %30 = fmul double %29, 8.000000e+00, !dbg !640
  %31 = fadd double %30, 1.000000e+00, !dbg !641
  br label %99

32:                                               ; preds = %2
  %33 = fdiv double 1.000000e+00, %0, !dbg !642
  tail call void @llvm.dbg.value(metadata double %33, metadata !597, metadata !DIExpression()), !dbg !643
  %34 = fdiv double %0, %4, !dbg !644
  tail call void @llvm.dbg.value(metadata double %34, metadata !599, metadata !DIExpression()), !dbg !643
  %35 = fmul double %33, 3.100000e+01, !dbg !645
  %36 = fsub double 7.000000e+00, %35, !dbg !646
  %37 = fmul double %36, 0x3FF5555555555555, !dbg !647
  tail call void @llvm.dbg.value(metadata double %37, metadata !600, metadata !DIExpression()), !dbg !643
  %38 = fmul double %33, 3.779000e+03, !dbg !648
  %39 = fadd double %38, -9.820000e+02, !dbg !649
  %40 = fmul double %33, %39, !dbg !650
  %41 = fadd double %40, 8.300000e+01, !dbg !651
  %42 = fmul double %41, 0x4001111111111111, !dbg !652
  tail call void @llvm.dbg.value(metadata double %42, metadata !601, metadata !DIExpression()), !dbg !643
  %43 = fmul double %33, 0x4157F21D40000000, !dbg !653
  %44 = fsub double 0x4138324F00000000, %43, !dbg !654
  %45 = fmul double %33, %44, !dbg !655
  %46 = fadd double %45, -1.538550e+05, !dbg !656
  %47 = fmul double %33, %46, !dbg !657
  %48 = fadd double %47, 6.949000e+03, !dbg !658
  %49 = fmul double %48, 0x3FE3813813813814, !dbg !659
  tail call void @llvm.dbg.value(metadata double %49, metadata !602, metadata !DIExpression()), !dbg !643
  %50 = fmul double %33, 0x41DF2CF87D400000, !dbg !660
  %51 = fadd double %50, 0xC1BE857454000000, !dbg !661
  %52 = fmul double %33, %51, !dbg !662
  %53 = fadd double %52, 0x4186E4A7F0000000, !dbg !663
  %54 = fmul double %33, %53, !dbg !664
  %55 = fadd double %54, 0xC142EA6A00000000, !dbg !665
  %56 = fmul double %33, %55, !dbg !666
  %57 = fadd double %56, 7.019700e+04, !dbg !667
  %58 = fmul double %57, 0x3FFA01A01A01A01A, !dbg !668
  tail call void @llvm.dbg.value(metadata double %58, metadata !603, metadata !DIExpression()), !dbg !643
  %59 = fmul double %33, 0x429E0327E3572400, !dbg !669
  %60 = fsub double 0x427CD9CDA00B5000, %59, !dbg !670
  %61 = fmul double %33, %60, !dbg !671
  %62 = fadd double %61, 0xC244DF3F4FDD0000, !dbg !672
  %63 = fmul double %33, %62, !dbg !673
  %64 = fadd double %63, 0x420095BD56500000, !dbg !674
  %65 = fmul double %33, %64, !dbg !675
  %66 = fadd double %65, 0xC1B11D8C4D000000, !dbg !676
  %67 = fmul double %33, %66, !dbg !677
  %68 = fadd double %67, 0x4155559440000000, !dbg !678
  %69 = fmul double %68, 0x3FE2E9E8CD187470, !dbg !679
  tail call void @llvm.dbg.value(metadata double %69, metadata !604, metadata !DIExpression()), !dbg !643
  %70 = fsub double 1.000000e+00, %33, !dbg !680
  %71 = fmul double %70, %34, !dbg !681
  tail call void @llvm.dbg.value(metadata double %71, metadata !605, metadata !DIExpression()), !dbg !643
  %72 = fmul double %37, %71, !dbg !682
  %73 = fmul double %34, %72, !dbg !683
  tail call void @llvm.dbg.value(metadata double %73, metadata !606, metadata !DIExpression()), !dbg !643
  %74 = fmul double %71, %42, !dbg !684
  %75 = fmul double %34, %74, !dbg !685
  %76 = fmul double %34, %75, !dbg !686
  tail call void @llvm.dbg.value(metadata double %76, metadata !607, metadata !DIExpression()), !dbg !643
  %77 = fmul double %71, %49, !dbg !687
  %78 = fmul double %34, %77, !dbg !688
  %79 = fmul double %34, %78, !dbg !689
  %80 = fmul double %34, %79, !dbg !690
  tail call void @llvm.dbg.value(metadata double %80, metadata !608, metadata !DIExpression()), !dbg !643
  %81 = fmul double %71, %58, !dbg !691
  %82 = fmul double %34, %81, !dbg !692
  %83 = fmul double %34, %82, !dbg !693
  %84 = fmul double %34, %83, !dbg !694
  %85 = fmul double %34, %84, !dbg !695
  tail call void @llvm.dbg.value(metadata double %85, metadata !609, metadata !DIExpression()), !dbg !643
  %86 = fmul double %71, %69, !dbg !696
  %87 = fmul double %34, %86, !dbg !697
  %88 = fmul double %34, %87, !dbg !698
  %89 = fmul double %34, %88, !dbg !699
  %90 = fmul double %34, %89, !dbg !700
  %91 = fmul double %34, %90, !dbg !701
  tail call void @llvm.dbg.value(metadata double %91, metadata !610, metadata !DIExpression()), !dbg !643
  %92 = fadd double %71, %73, !dbg !702
  %93 = fadd double %92, %76, !dbg !703
  %94 = fadd double %93, %80, !dbg !704
  %95 = fadd double %94, %85, !dbg !705
  %96 = fadd double %95, %91, !dbg !706
  %97 = fmul double %96, 8.000000e+00, !dbg !707
  %98 = fsub double 1.000000e+00, %97, !dbg !708
  br label %99

99:                                               ; preds = %32, %6
  %100 = phi double [ %31, %6 ], [ %98, %32 ], !dbg !709
  ret double %100, !dbg !710
}

declare !dbg !711 i32 @gsl_sf_pow_int_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !715 i32 @gsl_sf_airy_zero_Ai_e(i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !717 double @gsl_sf_bessel_Olver_zofmzeta(double noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc double @olver_f1(double noundef %0, double noundef %1) unnamed_addr #7 !dbg !721 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !723, metadata !DIExpression()), !dbg !727
  tail call void @llvm.dbg.value(metadata double %1, metadata !724, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata double %0, metadata !728, metadata !DIExpression()), !dbg !747
  call void @llvm.dbg.value(metadata double %1, metadata !731, metadata !DIExpression()), !dbg !747
  %3 = fcmp olt double %0, 1.020000e+00, !dbg !749
  br i1 %3, label %4, label %23, !dbg !750

4:                                                ; preds = %2
  %5 = fsub double 1.000000e+00, %0, !dbg !751
  call void @llvm.dbg.value(metadata double %5, metadata !732, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double 0x3F926E4BDCD91844, metadata !735, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double 0x3F86EFA85CC9E550, metadata !736, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double 0x3F7854F7DB2B1A7F, metadata !737, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double 0x3F677DF1ECA75C1C, metadata !738, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double 0x3F54376E5603FE6D, metadata !739, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double 0x3F3B52D787939150, metadata !740, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double 0x3F014F831CDE0975, metadata !741, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double 0xBF2146BADE1F5571, metadata !742, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata double 0xBF28FE652CE80F79, metadata !743, metadata !DIExpression()), !dbg !752
  %6 = fmul double %5, 0x3F28FE652CE80F79, !dbg !753
  %7 = fsub double 0xBF2146BADE1F5571, %6, !dbg !754
  %8 = fmul double %5, %7, !dbg !755
  %9 = fadd double %8, 0x3F014F831CDE0975, !dbg !756
  %10 = fmul double %5, %9, !dbg !757
  %11 = fadd double %10, 0x3F3B52D787939150, !dbg !758
  %12 = fmul double %5, %11, !dbg !759
  %13 = fadd double %12, 0x3F54376E5603FE6D, !dbg !760
  %14 = fmul double %5, %13, !dbg !761
  %15 = fadd double %14, 0x3F677DF1ECA75C1C, !dbg !762
  %16 = fmul double %5, %15, !dbg !763
  %17 = fadd double %16, 0x3F7854F7DB2B1A7F, !dbg !764
  %18 = fmul double %5, %17, !dbg !765
  %19 = fadd double %18, 0x3F86EFA85CC9E550, !dbg !766
  %20 = fmul double %5, %19, !dbg !767
  %21 = fadd double %20, 0x3F926E4BDCD91844, !dbg !768
  %22 = fmul double %0, %0, !dbg !769
  br label %41

23:                                               ; preds = %2
  call void @llvm.dbg.value(metadata double %1, metadata !744, metadata !DIExpression()), !dbg !770
  %24 = fmul double %0, %0, !dbg !771
  %25 = fdiv double 1.000000e+00, %24, !dbg !772
  %26 = fsub double 1.000000e+00, %25, !dbg !773
  %27 = tail call double @sqrt(double noundef %26) #10, !dbg !774
  %28 = fmul double %27, %0, !dbg !775
  %29 = fdiv double 1.000000e+00, %28, !dbg !776
  call void @llvm.dbg.value(metadata double %29, metadata !746, metadata !DIExpression()), !dbg !770
  %30 = fmul double %1, 4.800000e+01, !dbg !777
  %31 = fmul double %30, %1, !dbg !778
  %32 = fdiv double 5.000000e+00, %31, !dbg !779
  %33 = fmul double %29, 5.000000e+00, !dbg !780
  %34 = fmul double %29, %33, !dbg !781
  %35 = fadd double %34, 3.000000e+00, !dbg !782
  %36 = fmul double %29, %35, !dbg !783
  %37 = tail call double @sqrt(double noundef %1) #10, !dbg !784
  %38 = fmul double %37, 2.400000e+01, !dbg !785
  %39 = fdiv double %36, %38, !dbg !786
  %40 = fsub double %39, %32, !dbg !787
  br label %41

41:                                               ; preds = %4, %23
  %42 = phi double [ %22, %4 ], [ %24, %23 ], !dbg !769
  %43 = phi double [ %21, %4 ], [ %40, %23 ], !dbg !788
  tail call void @llvm.dbg.value(metadata double %43, metadata !725, metadata !DIExpression()), !dbg !727
  %44 = fmul double %1, 4.000000e+00, !dbg !789
  %45 = fadd double %42, -1.000000e+00, !dbg !790
  %46 = fdiv double %44, %45, !dbg !791
  %47 = tail call double @sqrt(double noundef %46) #10, !dbg !792
  tail call void @llvm.dbg.value(metadata double %47, metadata !726, metadata !DIExpression()), !dbg !727
  %48 = fmul double %0, 5.000000e-01, !dbg !793
  %49 = fmul double %48, %47, !dbg !794
  %50 = fmul double %43, %49, !dbg !795
  ret double %50, !dbg !796
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_zero_J0(i32 noundef %0) local_unnamed_addr #0 !dbg !797 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !801, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i32 %0, metadata !83, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr undef, metadata !84, metadata !DIExpression()), !dbg !805
  %2 = icmp eq i32 %0, 0, !dbg !807
  br i1 %2, label %24, label %3, !dbg !808

3:                                                ; preds = %1
  %4 = uitofp i32 %0 to double, !dbg !809
  %5 = fadd double %4, -2.500000e-01, !dbg !810
  %6 = fmul double %5, 0x400921FB54442D18, !dbg !811
  call void @llvm.dbg.value(metadata double %6, metadata !85, metadata !DIExpression()), !dbg !812
  %7 = fmul double %6, %6, !dbg !813
  %8 = fdiv double 1.000000e+00, %7, !dbg !814
  call void @llvm.dbg.value(metadata double %8, metadata !89, metadata !DIExpression()), !dbg !812
  %9 = fmul double %8, 0x4024BC70DB299EFF, !dbg !815
  %10 = fadd double %9, 0x403405BB9CEA78A3, !dbg !816
  %11 = fmul double %8, %10, !dbg !817
  %12 = fadd double %11, 0x400E1B6CBDE62B91, !dbg !818
  %13 = fmul double %8, %12, !dbg !819
  %14 = fadd double %13, 0x3FBFFFFFFFF50A24, !dbg !820
  call void @llvm.dbg.value(metadata double %14, metadata !90, metadata !DIExpression()), !dbg !812
  %15 = fmul double %8, 0x4062FF5192900E7D, !dbg !821
  %16 = fadd double %15, 0x40664250849B88E8, !dbg !822
  %17 = fmul double %8, %16, !dbg !823
  %18 = fadd double %17, 0x403EC0C2105D01C0, !dbg !824
  %19 = fmul double %8, %18, !dbg !825
  %20 = fadd double %19, 1.000000e+00, !dbg !826
  call void @llvm.dbg.value(metadata double %20, metadata !91, metadata !DIExpression()), !dbg !812
  %21 = fdiv double %14, %20, !dbg !827
  call void @llvm.dbg.value(metadata double %21, metadata !92, metadata !DIExpression()), !dbg !812
  %22 = fdiv double %21, %6, !dbg !828
  %23 = fadd double %6, %22, !dbg !829
  tail call void @llvm.dbg.value(metadata double %23, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !804
  tail call void @llvm.dbg.value(metadata double poison, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !804
  tail call void @llvm.dbg.value(metadata double %23, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !804
  tail call void @llvm.dbg.value(metadata i32 0, metadata !803, metadata !DIExpression()), !dbg !804
  br label %25, !dbg !830

24:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !804
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !804
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1031, i32 noundef 4) #10, !dbg !831
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !802, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !804
  tail call void @llvm.dbg.value(metadata i32 4, metadata !803, metadata !DIExpression()), !dbg !804
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1208, i32 noundef 4) #10, !dbg !832
  br label %25, !dbg !832

25:                                               ; preds = %3, %24
  %26 = phi double [ %23, %3 ], [ 0.000000e+00, %24 ]
  ret double %26, !dbg !836
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_bessel_zero_J1(i32 noundef %0) local_unnamed_addr #6 !dbg !837 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !839, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i32 %0, metadata !102, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata ptr undef, metadata !103, metadata !DIExpression()), !dbg !843
  %2 = icmp eq i32 %0, 0, !dbg !845
  br i1 %2, label %24, label %3, !dbg !846

3:                                                ; preds = %1
  %4 = uitofp i32 %0 to double, !dbg !847
  %5 = fadd double %4, 2.500000e-01, !dbg !848
  %6 = fmul double %5, 0x400921FB54442D18, !dbg !849
  call void @llvm.dbg.value(metadata double %6, metadata !104, metadata !DIExpression()), !dbg !850
  %7 = fmul double %6, %6, !dbg !851
  %8 = fdiv double 1.000000e+00, %7, !dbg !852
  call void @llvm.dbg.value(metadata double %8, metadata !107, metadata !DIExpression()), !dbg !850
  %9 = fmul double %8, 0x3FD7382FF85F1247, !dbg !853
  %10 = fsub double 0x3FBECEAFA1D45FA5, %9, !dbg !854
  %11 = fmul double %8, %10, !dbg !855
  %12 = fadd double %11, 0x3FA68004C5935ACC, !dbg !856
  %13 = fmul double %8, %12, !dbg !857
  %14 = fadd double %13, 0x3F5A1B352C1F3BF9, !dbg !858
  call void @llvm.dbg.value(metadata double %14, metadata !108, metadata !DIExpression()), !dbg !850
  %15 = fadd double %8, 0xBFD4D750AA6CF95A, !dbg !859
  %16 = fmul double %8, %15, !dbg !860
  %17 = fadd double %16, 0xBFBE116DD53D3205, !dbg !861
  %18 = fmul double %8, %17, !dbg !862
  %19 = fadd double %18, 0xBF716778C81545E9, !dbg !863
  call void @llvm.dbg.value(metadata double %19, metadata !109, metadata !DIExpression()), !dbg !850
  %20 = fdiv double %14, %19, !dbg !864
  call void @llvm.dbg.value(metadata double %20, metadata !110, metadata !DIExpression()), !dbg !850
  %21 = fmul double %8, %20, !dbg !865
  %22 = fadd double %21, 1.000000e+00, !dbg !866
  %23 = fmul double %6, %22, !dbg !867
  br label %24

24:                                               ; preds = %1, %3
  %25 = phi double [ %23, %3 ], [ 0.000000e+00, %1 ], !dbg !868
  tail call void @llvm.dbg.value(metadata double %25, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !842
  tail call void @llvm.dbg.value(metadata double poison, metadata !840, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !842
  tail call void @llvm.dbg.value(metadata i32 0, metadata !841, metadata !DIExpression()), !dbg !842
  ret double %25, !dbg !869
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_zero_Jnu(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !870 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !878
  call void @llvm.dbg.assign(metadata i1 undef, metadata !876, metadata !DIExpression(), metadata !878, metadata ptr %3, metadata !DIExpression()), !dbg !879
  tail call void @llvm.dbg.value(metadata double %0, metadata !874, metadata !DIExpression()), !dbg !879
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !875, metadata !DIExpression()), !dbg !879
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10, !dbg !880
  %4 = call i32 @gsl_sf_bessel_zero_Jnu_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !880
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !877, metadata !DIExpression()), !dbg !879
  %5 = icmp eq i32 %4, 0, !dbg !881
  br i1 %5, label %7, label %6, !dbg !880

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1218, i32 noundef %4) #10, !dbg !883
  br label %7, !dbg !883

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !880, !tbaa !262
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10, !dbg !886
  ret double %8, !dbg !886
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !887 double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1031, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_zero.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "493636abd1ca853ef0063a4c096c410a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1031, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 14)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1101, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1107, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 29)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1115, type: !9, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "coef_jnu_a", scope: !26, file: !2, line: 842, type: !224, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !27, globals: !67, splitDebugInlining: false, nameTableKind: None)
!27 = !{!28}
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 39, baseType: !30, size: 32, elements: !31)
!29 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!32 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!33 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!34 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!35 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!36 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!37 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!38 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!39 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!40 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!41 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!42 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!43 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!44 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!45 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!46 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!47 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!48 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!49 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!50 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!51 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!52 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!53 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!54 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!55 = !DIEnumerator(name: "GSL_ESING", value: 21)
!56 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!57 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!58 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!59 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!60 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!61 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!62 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!63 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!64 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!65 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!66 = !DIEnumerator(name: "GSL_EOF", value: 32)
!67 = !{!0, !7, !68, !96, !98, !111, !12, !17, !22, !113, !118, !120, !24, !125, !130, !135, !137, !139, !141, !143, !145, !147, !149, !154, !159, !161, !166, !171, !173, !175, !177, !179, !181, !183, !192, !198, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "P", scope: !70, file: !2, line: 1036, type: !93, isLocal: true, isDefinition: true)
!70 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J0_e", scope: !2, file: !2, line: 1024, type: !71, scopeLine: 1025, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !82)
!71 = !DISubroutineType(types: !72)
!72 = !{!30, !73, !74}
!73 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !76, line: 41, baseType: !77)
!76 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !76, line: 37, size: 128, elements: !78)
!78 = !{!79, !81}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !77, file: !76, line: 38, baseType: !80, size: 64)
!80 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !77, file: !76, line: 39, baseType: !80, size: 64, offset: 64)
!82 = !{!83, !84, !85, !89, !90, !91, !92}
!83 = !DILocalVariable(name: "s", arg: 1, scope: !70, file: !2, line: 1024, type: !73)
!84 = !DILocalVariable(name: "result", arg: 2, scope: !70, file: !2, line: 1024, type: !74)
!85 = !DILocalVariable(name: "beta", scope: !86, file: !2, line: 1047, type: !88)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 1033, column: 8)
!87 = distinct !DILexicalBlock(scope: !70, file: !2, line: 1028, column: 6)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!89 = !DILocalVariable(name: "bi2", scope: !86, file: !2, line: 1048, type: !88)
!90 = !DILocalVariable(name: "R33num", scope: !86, file: !2, line: 1049, type: !88)
!91 = !DILocalVariable(name: "R33den", scope: !86, file: !2, line: 1050, type: !88)
!92 = !DILocalVariable(name: "R33", scope: !86, file: !2, line: 1051, type: !88)
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 4)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "Q", scope: !70, file: !2, line: 1041, type: !93, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "a", scope: !100, file: !2, line: 1072, type: !93, isLocal: true, isDefinition: true)
!100 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J1_e", scope: !2, file: !2, line: 1060, type: !71, scopeLine: 1061, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !101)
!101 = !{!102, !103, !104, !107, !108, !109, !110}
!102 = !DILocalVariable(name: "s", arg: 1, scope: !100, file: !2, line: 1060, type: !73)
!103 = !DILocalVariable(name: "result", arg: 2, scope: !100, file: !2, line: 1060, type: !74)
!104 = !DILocalVariable(name: "beta", scope: !105, file: !2, line: 1083, type: !88)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 1069, column: 8)
!106 = distinct !DILexicalBlock(scope: !100, file: !2, line: 1064, column: 6)
!107 = !DILocalVariable(name: "bi2", scope: !105, file: !2, line: 1084, type: !88)
!108 = !DILocalVariable(name: "Rnum", scope: !105, file: !2, line: 1085, type: !88)
!109 = !DILocalVariable(name: "Rden", scope: !105, file: !2, line: 1086, type: !88)
!110 = !DILocalVariable(name: "R", scope: !105, file: !2, line: 1087, type: !88)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "b", scope: !100, file: !2, line: 1077, type: !93, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1208, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 36)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1213, type: !115, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1218, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 41)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "coef_jnu1_a", scope: !26, file: !2, line: 40, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1536, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 24)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "coef_jnu2_a", scope: !26, file: !2, line: 89, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1216, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 19)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "coef_jnu3_a", scope: !26, file: !2, line: 137, type: !132, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "coef_jnu4_a", scope: !26, file: !2, line: 185, type: !132, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "coef_jnu5_a", scope: !26, file: !2, line: 234, type: !132, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "coef_jnu6_a", scope: !26, file: !2, line: 285, type: !132, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "coef_jnu7_a", scope: !26, file: !2, line: 333, type: !132, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "coef_jnu8_a", scope: !26, file: !2, line: 381, type: !132, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "coef_jnu9_a", scope: !26, file: !2, line: 429, type: !132, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "coef_jnu10_a", scope: !26, file: !2, line: 477, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1280, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 20)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "coef_jnu11_a", scope: !26, file: !2, line: 526, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1728, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 27)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "coef_jnu12_a", scope: !26, file: !2, line: 558, type: !156, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "coef_jnu13_a", scope: !26, file: !2, line: 590, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1920, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 30)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "coef_jnu14_a", scope: !26, file: !2, line: 625, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1664, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 26)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "coef_jnu15_a", scope: !26, file: !2, line: 656, type: !168, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "coef_jnu16_a", scope: !26, file: !2, line: 687, type: !168, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "coef_jnu17_a", scope: !26, file: !2, line: 718, type: !168, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "coef_jnu18_a", scope: !26, file: !2, line: 749, type: !168, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "coef_jnu19_a", scope: !26, file: !2, line: 780, type: !168, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "coef_jnu20_a", scope: !26, file: !2, line: 811, type: !156, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "size_jnu_a", scope: !26, file: !2, line: 866, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 1344, elements: !190)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !188, line: 18, baseType: !189)
!188 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!189 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!190 = !{!191}
!191 = !DISubrange(count: 21)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "coef_jnu_b", scope: !26, file: !2, line: 891, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 704, elements: !196)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!196 = !{!197}
!197 = !DISubrange(count: 11)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "coef_jnu1_b", scope: !26, file: !2, line: 69, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 960, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 15)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "coef_jnu2_b", scope: !26, file: !2, line: 113, type: !132, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "coef_jnu3_b", scope: !26, file: !2, line: 161, type: !132, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "coef_jnu4_b", scope: !26, file: !2, line: 209, type: !132, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "coef_jnu5_b", scope: !26, file: !2, line: 261, type: !132, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "coef_jnu6_b", scope: !26, file: !2, line: 309, type: !132, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "coef_jnu7_b", scope: !26, file: !2, line: 357, type: !132, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "coef_jnu8_b", scope: !26, file: !2, line: 405, type: !132, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "coef_jnu9_b", scope: !26, file: !2, line: 453, type: !132, isLocal: true, isDefinition: true)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(name: "coef_jnu10_b", scope: !26, file: !2, line: 502, type: !132, isLocal: true, isDefinition: true)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "size_jnu_b", scope: !26, file: !2, line: 905, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 704, elements: !196)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 1344, elements: !190)
!225 = !{i32 7, !"Dwarf Version", i32 5}
!226 = !{i32 2, !"Debug Info Version", i32 3}
!227 = !{i32 1, !"wchar_size", i32 4}
!228 = !{i32 8, !"PIC Level", i32 2}
!229 = !{i32 7, !"PIE Level", i32 2}
!230 = !{i32 7, !"uwtable", i32 2}
!231 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!232 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!233 = !DILocation(line: 0, scope: !70)
!234 = !DILocation(line: 1028, column: 8, scope: !87)
!235 = !DILocation(line: 1028, column: 6, scope: !70)
!236 = !DILocation(line: 1030, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !87, file: !2, line: 1028, column: 13)
!238 = !DILocation(line: 1031, column: 5, scope: !239)
!239 = distinct !DILexicalBlock(scope: !237, file: !2, line: 1031, column: 5)
!240 = !DILocation(line: 1047, column: 26, scope: !86)
!241 = !DILocation(line: 1047, column: 28, scope: !86)
!242 = !DILocation(line: 1047, column: 36, scope: !86)
!243 = !DILocation(line: 0, scope: !86)
!244 = !DILocation(line: 1048, column: 34, scope: !86)
!245 = !DILocation(line: 1048, column: 28, scope: !86)
!246 = !DILocation(line: 1049, column: 67, scope: !86)
!247 = !DILocation(line: 1049, column: 60, scope: !86)
!248 = !DILocation(line: 1049, column: 52, scope: !86)
!249 = !DILocation(line: 1049, column: 46, scope: !86)
!250 = !DILocation(line: 1049, column: 38, scope: !86)
!251 = !DILocation(line: 1049, column: 32, scope: !86)
!252 = !DILocation(line: 1050, column: 67, scope: !86)
!253 = !DILocation(line: 1050, column: 60, scope: !86)
!254 = !DILocation(line: 1050, column: 52, scope: !86)
!255 = !DILocation(line: 1050, column: 46, scope: !86)
!256 = !DILocation(line: 1050, column: 38, scope: !86)
!257 = !DILocation(line: 1050, column: 32, scope: !86)
!258 = !DILocation(line: 1051, column: 30, scope: !86)
!259 = !DILocation(line: 1052, column: 29, scope: !86)
!260 = !DILocation(line: 1052, column: 24, scope: !86)
!261 = !DILocation(line: 1052, column: 17, scope: !86)
!262 = !{!263, !264, i64 0}
!263 = !{!"gsl_sf_result_struct", !264, i64 0, !264, i64 8}
!264 = !{!"double", !265, i64 0}
!265 = !{!"omnipotent char", !266, i64 0}
!266 = !{!"Simple C/C++ TBAA"}
!267 = !DILocation(line: 1053, column: 32, scope: !86)
!268 = !DILocation(line: 1053, column: 19, scope: !86)
!269 = !DILocation(line: 1053, column: 13, scope: !86)
!270 = !DILocation(line: 1053, column: 17, scope: !86)
!271 = !{!263, !264, i64 8}
!272 = !DILocation(line: 0, scope: !87)
!273 = !DILocation(line: 1056, column: 1, scope: !70)
!274 = !DISubprogram(name: "gsl_error", scope: !29, file: !29, line: 77, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !277, !277, !30, !30}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!279 = !DILocation(line: 0, scope: !100)
!280 = !DILocation(line: 1064, column: 8, scope: !106)
!281 = !DILocation(line: 1064, column: 6, scope: !100)
!282 = !DILocation(line: 1083, column: 26, scope: !105)
!283 = !DILocation(line: 1083, column: 28, scope: !105)
!284 = !DILocation(line: 1083, column: 36, scope: !105)
!285 = !DILocation(line: 0, scope: !105)
!286 = !DILocation(line: 1084, column: 34, scope: !105)
!287 = !DILocation(line: 1084, column: 28, scope: !105)
!288 = !DILocation(line: 1085, column: 64, scope: !105)
!289 = !DILocation(line: 1085, column: 58, scope: !105)
!290 = !DILocation(line: 1085, column: 50, scope: !105)
!291 = !DILocation(line: 1085, column: 44, scope: !105)
!292 = !DILocation(line: 1085, column: 36, scope: !105)
!293 = !DILocation(line: 1085, column: 30, scope: !105)
!294 = !DILocation(line: 1086, column: 58, scope: !105)
!295 = !DILocation(line: 1086, column: 50, scope: !105)
!296 = !DILocation(line: 1086, column: 44, scope: !105)
!297 = !DILocation(line: 1086, column: 36, scope: !105)
!298 = !DILocation(line: 1086, column: 30, scope: !105)
!299 = !DILocation(line: 1087, column: 26, scope: !105)
!300 = !DILocation(line: 1088, column: 34, scope: !105)
!301 = !DILocation(line: 1088, column: 31, scope: !105)
!302 = !DILocation(line: 1088, column: 24, scope: !105)
!303 = !DILocation(line: 1089, column: 32, scope: !105)
!304 = !DILocation(line: 1089, column: 19, scope: !105)
!305 = !DILocation(line: 0, scope: !106)
!306 = !DILocation(line: 1092, column: 1, scope: !100)
!307 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_Jnu_e", scope: !2, file: !2, line: 1096, type: !308, scopeLine: 1097, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !310)
!308 = !DISubroutineType(types: !309)
!309 = !{!30, !80, !73, !74}
!310 = !{!311, !312, !313, !314, !322, !323, !324, !325, !327, !328, !329, !330, !335, !336, !337, !338, !340, !341, !342, !343, !346, !347, !348, !349, !352, !353, !354, !356, !358, !359, !360}
!311 = !DILocalVariable(name: "nu", arg: 1, scope: !307, file: !2, line: 1096, type: !80)
!312 = !DILocalVariable(name: "s", arg: 2, scope: !307, file: !2, line: 1096, type: !73)
!313 = !DILocalVariable(name: "result", arg: 3, scope: !307, file: !2, line: 1096, type: !74)
!314 = !DILocalVariable(name: "c", scope: !315, file: !2, line: 1122, type: !195)
!315 = distinct !DILexicalBlock(scope: !316, file: !2, line: 1121, column: 18)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 1121, column: 8)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 1117, column: 19)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 1117, column: 11)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 1111, column: 11)
!320 = distinct !DILexicalBlock(scope: !321, file: !2, line: 1103, column: 11)
!321 = distinct !DILexicalBlock(scope: !307, file: !2, line: 1100, column: 6)
!322 = !DILocalVariable(name: "L", scope: !315, file: !2, line: 1123, type: !186)
!323 = !DILocalVariable(name: "arg", scope: !315, file: !2, line: 1124, type: !88)
!324 = !DILocalVariable(name: "chb", scope: !315, file: !2, line: 1125, type: !88)
!325 = !DILocalVariable(name: "c", scope: !326, file: !2, line: 1130, type: !195)
!326 = distinct !DILexicalBlock(scope: !316, file: !2, line: 1129, column: 10)
!327 = !DILocalVariable(name: "L", scope: !326, file: !2, line: 1131, type: !186)
!328 = !DILocalVariable(name: "arg", scope: !326, file: !2, line: 1132, type: !88)
!329 = !DILocalVariable(name: "chb", scope: !326, file: !2, line: 1133, type: !88)
!330 = !DILocalVariable(name: "c", scope: !331, file: !2, line: 1142, type: !195)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 1141, column: 16)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 1141, column: 8)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 1139, column: 20)
!334 = distinct !DILexicalBlock(scope: !318, file: !2, line: 1139, column: 11)
!335 = !DILocalVariable(name: "L", scope: !331, file: !2, line: 1143, type: !186)
!336 = !DILocalVariable(name: "arg", scope: !331, file: !2, line: 1144, type: !88)
!337 = !DILocalVariable(name: "chb", scope: !331, file: !2, line: 1145, type: !88)
!338 = !DILocalVariable(name: "c", scope: !339, file: !2, line: 1150, type: !195)
!339 = distinct !DILexicalBlock(scope: !332, file: !2, line: 1149, column: 10)
!340 = !DILocalVariable(name: "L", scope: !339, file: !2, line: 1151, type: !186)
!341 = !DILocalVariable(name: "arg", scope: !339, file: !2, line: 1152, type: !88)
!342 = !DILocalVariable(name: "chb", scope: !339, file: !2, line: 1153, type: !88)
!343 = !DILocalVariable(name: "c", scope: !344, file: !2, line: 1168, type: !195)
!344 = distinct !DILexicalBlock(scope: !345, file: !2, line: 1166, column: 34)
!345 = distinct !DILexicalBlock(scope: !334, file: !2, line: 1166, column: 11)
!346 = !DILocalVariable(name: "L", scope: !344, file: !2, line: 1169, type: !186)
!347 = !DILocalVariable(name: "arg", scope: !344, file: !2, line: 1170, type: !88)
!348 = !DILocalVariable(name: "chb", scope: !344, file: !2, line: 1171, type: !88)
!349 = !DILocalVariable(name: "beta", scope: !350, file: !2, line: 1178, type: !88)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 1176, column: 25)
!351 = distinct !DILexicalBlock(scope: !345, file: !2, line: 1176, column: 11)
!352 = !DILocalVariable(name: "mc", scope: !350, file: !2, line: 1179, type: !88)
!353 = !DILocalVariable(name: "rat12", scope: !350, file: !2, line: 1180, type: !75)
!354 = !DILocalVariable(name: "as", scope: !355, file: !2, line: 1189, type: !75)
!355 = distinct !DILexicalBlock(scope: !351, file: !2, line: 1187, column: 8)
!356 = !DILocalVariable(name: "stat_as", scope: !355, file: !2, line: 1190, type: !357)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!358 = !DILocalVariable(name: "minus_zeta", scope: !355, file: !2, line: 1191, type: !88)
!359 = !DILocalVariable(name: "z", scope: !355, file: !2, line: 1192, type: !88)
!360 = !DILocalVariable(name: "f1", scope: !355, file: !2, line: 1193, type: !88)
!361 = distinct !DIAssignID()
!362 = !DILocation(line: 0, scope: !350)
!363 = distinct !DIAssignID()
!364 = !DILocation(line: 0, scope: !355)
!365 = !DILocation(line: 0, scope: !307)
!366 = !DILocation(line: 1100, column: 9, scope: !321)
!367 = !DILocation(line: 1100, column: 6, scope: !307)
!368 = !DILocation(line: 1101, column: 5, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !2, line: 1101, column: 5)
!370 = distinct !DILexicalBlock(scope: !321, file: !2, line: 1100, column: 18)
!371 = !DILocation(line: 1101, column: 5, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !2, line: 1101, column: 5)
!373 = !DILocation(line: 1103, column: 13, scope: !320)
!374 = !DILocation(line: 1103, column: 11, scope: !321)
!375 = !DILocation(line: 1106, column: 12, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !2, line: 1106, column: 9)
!377 = distinct !DILexicalBlock(scope: !320, file: !2, line: 1103, column: 19)
!378 = !DILocation(line: 1105, column: 17, scope: !377)
!379 = !DILocation(line: 1106, column: 9, scope: !377)
!380 = !DILocation(line: 1107, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 1107, column: 7)
!382 = distinct !DILexicalBlock(scope: !376, file: !2, line: 1106, column: 20)
!383 = !DILocation(line: 1111, column: 14, scope: !319)
!384 = !DILocation(line: 1111, column: 11, scope: !320)
!385 = !DILocation(line: 1114, column: 17, scope: !386)
!386 = distinct !DILexicalBlock(scope: !319, file: !2, line: 1111, column: 21)
!387 = !DILocation(line: 1115, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !386, file: !2, line: 1115, column: 5)
!389 = !DILocation(line: 1117, column: 13, scope: !318)
!390 = !DILocation(line: 1117, column: 11, scope: !319)
!391 = !DILocation(line: 1121, column: 11, scope: !316)
!392 = !DILocation(line: 1121, column: 8, scope: !317)
!393 = !DILocation(line: 0, scope: !315)
!394 = !DILocation(line: 1124, column: 28, scope: !315)
!395 = !DILocalVariable(name: "c", arg: 1, scope: !396, file: !2, line: 926, type: !195)
!396 = distinct !DISubprogram(name: "clenshaw", scope: !2, file: !2, line: 926, type: !397, scopeLine: 927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{!80, !195, !30, !80}
!399 = !{!395, !400, !401, !402, !403, !404, !405}
!400 = !DILocalVariable(name: "N", arg: 2, scope: !396, file: !2, line: 926, type: !30)
!401 = !DILocalVariable(name: "u", arg: 3, scope: !396, file: !2, line: 926, type: !80)
!402 = !DILocalVariable(name: "B_np1", scope: !396, file: !2, line: 928, type: !80)
!403 = !DILocalVariable(name: "B_n", scope: !396, file: !2, line: 929, type: !80)
!404 = !DILocalVariable(name: "B_nm1", scope: !396, file: !2, line: 930, type: !80)
!405 = !DILocalVariable(name: "n", scope: !396, file: !2, line: 931, type: !30)
!406 = !DILocation(line: 0, scope: !396, inlinedAt: !407)
!407 = distinct !DILocation(line: 1125, column: 26, scope: !315)
!408 = !DILocation(line: 933, column: 29, scope: !409, inlinedAt: !407)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 932, column: 22)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 932, column: 3)
!411 = distinct !DILexicalBlock(scope: !396, file: !2, line: 932, column: 3)
!412 = !DILocation(line: 933, column: 43, scope: !409, inlinedAt: !407)
!413 = !DILocation(line: 933, column: 35, scope: !409, inlinedAt: !407)
!414 = !DILocation(line: 937, column: 27, scope: !396, inlinedAt: !407)
!415 = !DILocation(line: 937, column: 14, scope: !396, inlinedAt: !407)
!416 = !DILocation(line: 1126, column: 19, scope: !315)
!417 = !DILocation(line: 1127, column: 29, scope: !315)
!418 = !DILocation(line: 1127, column: 15, scope: !315)
!419 = !DILocation(line: 1127, column: 19, scope: !315)
!420 = !DILocation(line: 1128, column: 5, scope: !315)
!421 = !DILocation(line: 0, scope: !326)
!422 = !DILocation(line: 1132, column: 33, scope: !326)
!423 = !DILocation(line: 1132, column: 26, scope: !326)
!424 = !DILocation(line: 0, scope: !396, inlinedAt: !425)
!425 = distinct !DILocation(line: 1133, column: 26, scope: !326)
!426 = !DILocation(line: 933, column: 29, scope: !409, inlinedAt: !425)
!427 = !DILocation(line: 933, column: 43, scope: !409, inlinedAt: !425)
!428 = !DILocation(line: 933, column: 35, scope: !409, inlinedAt: !425)
!429 = !DILocation(line: 937, column: 27, scope: !396, inlinedAt: !425)
!430 = !DILocation(line: 937, column: 14, scope: !396, inlinedAt: !425)
!431 = !DILocation(line: 1134, column: 24, scope: !326)
!432 = !DILocation(line: 1134, column: 19, scope: !326)
!433 = !DILocation(line: 1135, column: 29, scope: !326)
!434 = !DILocation(line: 1135, column: 15, scope: !326)
!435 = !DILocation(line: 1135, column: 19, scope: !326)
!436 = !DILocation(line: 1139, column: 13, scope: !334)
!437 = !DILocation(line: 0, scope: !334)
!438 = !DILocation(line: 1139, column: 11, scope: !318)
!439 = !DILocation(line: 1141, column: 11, scope: !332)
!440 = !DILocation(line: 0, scope: !332)
!441 = !DILocation(line: 1141, column: 8, scope: !333)
!442 = !DILocation(line: 1142, column: 26, scope: !331)
!443 = !{!444, !444, i64 0}
!444 = !{!"any pointer", !265, i64 0}
!445 = !DILocation(line: 0, scope: !331)
!446 = !DILocation(line: 1143, column: 26, scope: !331)
!447 = !{!448, !448, i64 0}
!448 = !{!"long", !265, i64 0}
!449 = !DILocation(line: 1144, column: 28, scope: !331)
!450 = !DILocation(line: 1145, column: 38, scope: !331)
!451 = !DILocation(line: 0, scope: !396, inlinedAt: !452)
!452 = distinct !DILocation(line: 1145, column: 26, scope: !331)
!453 = !DILocation(line: 929, column: 18, scope: !396, inlinedAt: !452)
!454 = !{!264, !264, i64 0}
!455 = !DILocation(line: 932, column: 7, scope: !411, inlinedAt: !452)
!456 = !DILocation(line: 932, column: 13, scope: !410, inlinedAt: !452)
!457 = !DILocation(line: 932, column: 3, scope: !411, inlinedAt: !452)
!458 = !DILocation(line: 933, column: 29, scope: !409, inlinedAt: !452)
!459 = !DILocation(line: 933, column: 35, scope: !409, inlinedAt: !452)
!460 = !DILocation(line: 933, column: 45, scope: !409, inlinedAt: !452)
!461 = !DILocation(line: 933, column: 43, scope: !409, inlinedAt: !452)
!462 = !DILocation(line: 932, column: 18, scope: !410, inlinedAt: !452)
!463 = distinct !{!463, !464}
!464 = !{!"llvm.loop.unroll.disable"}
!465 = distinct !{!465, !457, !466, !467}
!466 = !DILocation(line: 936, column: 3, scope: !411, inlinedAt: !452)
!467 = !{!"llvm.loop.mustprogress"}
!468 = !DILocation(line: 937, column: 27, scope: !396, inlinedAt: !452)
!469 = !DILocation(line: 937, column: 14, scope: !396, inlinedAt: !452)
!470 = !DILocation(line: 1146, column: 19, scope: !331)
!471 = !DILocation(line: 1147, column: 29, scope: !331)
!472 = !DILocation(line: 1147, column: 15, scope: !331)
!473 = !DILocation(line: 1147, column: 19, scope: !331)
!474 = !DILocation(line: 1148, column: 5, scope: !331)
!475 = !DILocation(line: 1150, column: 26, scope: !339)
!476 = !DILocation(line: 0, scope: !339)
!477 = !DILocation(line: 1151, column: 26, scope: !339)
!478 = !DILocation(line: 1152, column: 31, scope: !339)
!479 = !DILocation(line: 1152, column: 26, scope: !339)
!480 = !DILocation(line: 1153, column: 38, scope: !339)
!481 = !DILocation(line: 0, scope: !396, inlinedAt: !482)
!482 = distinct !DILocation(line: 1153, column: 26, scope: !339)
!483 = !DILocation(line: 929, column: 18, scope: !396, inlinedAt: !482)
!484 = !DILocation(line: 932, column: 7, scope: !411, inlinedAt: !482)
!485 = !DILocation(line: 932, column: 13, scope: !410, inlinedAt: !482)
!486 = !DILocation(line: 932, column: 3, scope: !411, inlinedAt: !482)
!487 = !DILocation(line: 933, column: 29, scope: !409, inlinedAt: !482)
!488 = !DILocation(line: 933, column: 35, scope: !409, inlinedAt: !482)
!489 = !DILocation(line: 933, column: 45, scope: !409, inlinedAt: !482)
!490 = !DILocation(line: 933, column: 43, scope: !409, inlinedAt: !482)
!491 = !DILocation(line: 932, column: 18, scope: !410, inlinedAt: !482)
!492 = distinct !{!492, !464}
!493 = distinct !{!493, !486, !494, !467}
!494 = !DILocation(line: 936, column: 3, scope: !411, inlinedAt: !482)
!495 = !DILocation(line: 937, column: 27, scope: !396, inlinedAt: !482)
!496 = !DILocation(line: 937, column: 14, scope: !396, inlinedAt: !482)
!497 = !DILocation(line: 1154, column: 24, scope: !339)
!498 = !DILocation(line: 1154, column: 19, scope: !339)
!499 = !DILocation(line: 1155, column: 29, scope: !339)
!500 = !DILocation(line: 1155, column: 15, scope: !339)
!501 = !DILocation(line: 1160, column: 12, scope: !502)
!502 = distinct !DILexicalBlock(scope: !339, file: !2, line: 1160, column: 10)
!503 = !DILocation(line: 1160, column: 10, scope: !339)
!504 = !DILocation(line: 1166, column: 18, scope: !345)
!505 = !DILocation(line: 1166, column: 13, scope: !345)
!506 = !DILocation(line: 1166, column: 22, scope: !345)
!507 = !DILocation(line: 1168, column: 24, scope: !344)
!508 = !DILocation(line: 0, scope: !344)
!509 = !DILocation(line: 1169, column: 24, scope: !344)
!510 = !DILocation(line: 1170, column: 31, scope: !344)
!511 = !DILocation(line: 1170, column: 26, scope: !344)
!512 = !DILocation(line: 1171, column: 36, scope: !344)
!513 = !DILocation(line: 0, scope: !396, inlinedAt: !514)
!514 = distinct !DILocation(line: 1171, column: 24, scope: !344)
!515 = !DILocation(line: 929, column: 18, scope: !396, inlinedAt: !514)
!516 = !DILocation(line: 932, column: 7, scope: !411, inlinedAt: !514)
!517 = !DILocation(line: 932, column: 13, scope: !410, inlinedAt: !514)
!518 = !DILocation(line: 932, column: 3, scope: !411, inlinedAt: !514)
!519 = !DILocation(line: 933, column: 29, scope: !409, inlinedAt: !514)
!520 = !DILocation(line: 933, column: 35, scope: !409, inlinedAt: !514)
!521 = !DILocation(line: 933, column: 45, scope: !409, inlinedAt: !514)
!522 = !DILocation(line: 933, column: 43, scope: !409, inlinedAt: !514)
!523 = !DILocation(line: 932, column: 18, scope: !410, inlinedAt: !514)
!524 = distinct !{!524, !464}
!525 = distinct !{!525, !518, !526, !467}
!526 = !DILocation(line: 936, column: 3, scope: !411, inlinedAt: !514)
!527 = !DILocation(line: 937, column: 27, scope: !396, inlinedAt: !514)
!528 = !DILocation(line: 937, column: 14, scope: !396, inlinedAt: !514)
!529 = !DILocation(line: 1172, column: 17, scope: !344)
!530 = !DILocation(line: 1173, column: 27, scope: !344)
!531 = !DILocation(line: 1173, column: 13, scope: !344)
!532 = !DILocation(line: 1173, column: 17, scope: !344)
!533 = !DILocation(line: 1176, column: 19, scope: !351)
!534 = !DILocation(line: 1176, column: 13, scope: !351)
!535 = !DILocation(line: 0, scope: !351)
!536 = !DILocation(line: 1176, column: 11, scope: !345)
!537 = !DILocation(line: 1178, column: 28, scope: !350)
!538 = !DILocation(line: 1178, column: 37, scope: !350)
!539 = !DILocation(line: 1178, column: 45, scope: !350)
!540 = !DILocation(line: 1179, column: 47, scope: !350)
!541 = !DILocation(line: 1179, column: 50, scope: !350)
!542 = !DILocation(line: 1179, column: 25, scope: !350)
!543 = !DILocation(line: 1180, column: 5, scope: !350)
!544 = !DILocation(line: 1181, column: 24, scope: !350)
!545 = !DILocation(line: 1181, column: 5, scope: !350)
!546 = !DILocation(line: 1182, column: 25, scope: !350)
!547 = !DILocation(line: 1182, column: 18, scope: !350)
!548 = !DILocation(line: 1183, column: 26, scope: !350)
!549 = !DILocation(line: 1183, column: 24, scope: !350)
!550 = !DILocation(line: 1183, column: 45, scope: !350)
!551 = !DILocation(line: 1183, column: 37, scope: !350)
!552 = !DILocation(line: 1184, column: 47, scope: !350)
!553 = !DILocation(line: 1184, column: 26, scope: !350)
!554 = !DILocation(line: 1184, column: 24, scope: !350)
!555 = !DILocation(line: 1184, column: 17, scope: !350)
!556 = !DILocation(line: 1186, column: 3, scope: !351)
!557 = !DILocation(line: 1189, column: 5, scope: !355)
!558 = !DILocation(line: 1190, column: 25, scope: !355)
!559 = !DILocation(line: 1191, column: 32, scope: !355)
!560 = !DILocation(line: 1191, column: 31, scope: !355)
!561 = !DILocation(line: 1191, column: 54, scope: !355)
!562 = !DILocation(line: 1191, column: 49, scope: !355)
!563 = !DILocation(line: 1192, column: 23, scope: !355)
!564 = !DILocation(line: 1193, column: 23, scope: !355)
!565 = !DILocation(line: 1194, column: 36, scope: !355)
!566 = !DILocation(line: 1194, column: 32, scope: !355)
!567 = !DILocation(line: 1194, column: 28, scope: !355)
!568 = !DILocation(line: 1194, column: 23, scope: !355)
!569 = !DILocation(line: 1194, column: 18, scope: !355)
!570 = !DILocation(line: 1195, column: 32, scope: !355)
!571 = !DILocation(line: 1195, column: 25, scope: !355)
!572 = !DILocation(line: 1196, column: 44, scope: !355)
!573 = !DILocation(line: 1196, column: 42, scope: !355)
!574 = !DILocation(line: 1196, column: 17, scope: !355)
!575 = !DILocation(line: 1198, column: 3, scope: !351)
!576 = !DILocation(line: 0, scope: !321)
!577 = !DILocation(line: 1199, column: 1, scope: !307)
!578 = !DISubprogram(name: "pow", scope: !579, file: !579, line: 140, type: !580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!579 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!580 = !DISubroutineType(types: !581)
!581 = !{!80, !80, !80}
!582 = distinct !DISubprogram(name: "mcmahon_correction", scope: !2, file: !2, line: 951, type: !583, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !585)
!583 = !DISubroutineType(types: !584)
!584 = !{!80, !88, !88}
!585 = !{!586, !587, !588, !589, !590, !593, !594, !595, !596, !597, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610}
!586 = !DILocalVariable(name: "mu", arg: 1, scope: !582, file: !2, line: 951, type: !88)
!587 = !DILocalVariable(name: "beta", arg: 2, scope: !582, file: !2, line: 951, type: !88)
!588 = !DILocalVariable(name: "eb", scope: !582, file: !2, line: 953, type: !88)
!589 = !DILocalVariable(name: "ebsq", scope: !582, file: !2, line: 954, type: !88)
!590 = !DILocalVariable(name: "term1", scope: !591, file: !2, line: 958, type: !88)
!591 = distinct !DILexicalBlock(scope: !592, file: !2, line: 956, column: 28)
!592 = distinct !DILexicalBlock(scope: !582, file: !2, line: 956, column: 6)
!593 = !DILocalVariable(name: "term2", scope: !591, file: !2, line: 959, type: !88)
!594 = !DILocalVariable(name: "term3", scope: !591, file: !2, line: 960, type: !88)
!595 = !DILocalVariable(name: "term4", scope: !591, file: !2, line: 961, type: !88)
!596 = !DILocalVariable(name: "term5", scope: !591, file: !2, line: 962, type: !88)
!597 = !DILocalVariable(name: "mi", scope: !598, file: !2, line: 970, type: !88)
!598 = distinct !DILexicalBlock(scope: !592, file: !2, line: 965, column: 8)
!599 = !DILocalVariable(name: "r", scope: !598, file: !2, line: 971, type: !88)
!600 = !DILocalVariable(name: "n2", scope: !598, file: !2, line: 972, type: !88)
!601 = !DILocalVariable(name: "n3", scope: !598, file: !2, line: 973, type: !88)
!602 = !DILocalVariable(name: "n4", scope: !598, file: !2, line: 974, type: !88)
!603 = !DILocalVariable(name: "n5", scope: !598, file: !2, line: 975, type: !88)
!604 = !DILocalVariable(name: "n6", scope: !598, file: !2, line: 976, type: !88)
!605 = !DILocalVariable(name: "term1", scope: !598, file: !2, line: 977, type: !88)
!606 = !DILocalVariable(name: "term2", scope: !598, file: !2, line: 978, type: !88)
!607 = !DILocalVariable(name: "term3", scope: !598, file: !2, line: 979, type: !88)
!608 = !DILocalVariable(name: "term4", scope: !598, file: !2, line: 980, type: !88)
!609 = !DILocalVariable(name: "term5", scope: !598, file: !2, line: 981, type: !88)
!610 = !DILocalVariable(name: "term6", scope: !598, file: !2, line: 982, type: !88)
!611 = !DILocation(line: 0, scope: !582)
!612 = !DILocation(line: 953, column: 26, scope: !582)
!613 = !DILocation(line: 954, column: 25, scope: !582)
!614 = !DILocation(line: 956, column: 9, scope: !592)
!615 = !DILocation(line: 956, column: 6, scope: !582)
!616 = !DILocation(line: 958, column: 30, scope: !591)
!617 = !DILocation(line: 0, scope: !591)
!618 = !DILocation(line: 959, column: 38, scope: !591)
!619 = !DILocation(line: 959, column: 43, scope: !591)
!620 = !DILocation(line: 959, column: 35, scope: !591)
!621 = !DILocation(line: 960, column: 44, scope: !591)
!622 = !DILocation(line: 960, column: 49, scope: !591)
!623 = !DILocation(line: 960, column: 54, scope: !591)
!624 = !DILocation(line: 960, column: 38, scope: !591)
!625 = !DILocation(line: 961, column: 48, scope: !591)
!626 = !DILocation(line: 961, column: 53, scope: !591)
!627 = !DILocation(line: 961, column: 58, scope: !591)
!628 = !DILocation(line: 961, column: 63, scope: !591)
!629 = !DILocation(line: 961, column: 41, scope: !591)
!630 = !DILocation(line: 962, column: 52, scope: !591)
!631 = !DILocation(line: 962, column: 57, scope: !591)
!632 = !DILocation(line: 962, column: 62, scope: !591)
!633 = !DILocation(line: 962, column: 67, scope: !591)
!634 = !DILocation(line: 962, column: 72, scope: !591)
!635 = !DILocation(line: 962, column: 45, scope: !591)
!636 = !DILocation(line: 963, column: 29, scope: !591)
!637 = !DILocation(line: 963, column: 37, scope: !591)
!638 = !DILocation(line: 963, column: 45, scope: !591)
!639 = !DILocation(line: 963, column: 53, scope: !591)
!640 = !DILocation(line: 963, column: 21, scope: !591)
!641 = !DILocation(line: 963, column: 16, scope: !591)
!642 = !DILocation(line: 970, column: 28, scope: !598)
!643 = !DILocation(line: 0, scope: !598)
!644 = !DILocation(line: 971, column: 25, scope: !598)
!645 = !DILocation(line: 972, column: 47, scope: !598)
!646 = !DILocation(line: 972, column: 41, scope: !598)
!647 = !DILocation(line: 972, column: 34, scope: !598)
!648 = !DILocation(line: 973, column: 60, scope: !598)
!649 = !DILocation(line: 973, column: 52, scope: !598)
!650 = !DILocation(line: 973, column: 64, scope: !598)
!651 = !DILocation(line: 973, column: 42, scope: !598)
!652 = !DILocation(line: 973, column: 34, scope: !598)
!653 = !DILocation(line: 974, column: 81, scope: !598)
!654 = !DILocation(line: 974, column: 70, scope: !598)
!655 = !DILocation(line: 974, column: 85, scope: !598)
!656 = !DILocation(line: 974, column: 57, scope: !598)
!657 = !DILocation(line: 974, column: 89, scope: !598)
!658 = !DILocation(line: 974, column: 44, scope: !598)
!659 = !DILocation(line: 974, column: 34, scope: !598)
!660 = !DILocation(line: 975, column: 104, scope: !598)
!661 = !DILocation(line: 975, column: 90, scope: !598)
!662 = !DILocation(line: 975, column: 108, scope: !598)
!663 = !DILocation(line: 975, column: 74, scope: !598)
!664 = !DILocation(line: 975, column: 112, scope: !598)
!665 = !DILocation(line: 975, column: 60, scope: !598)
!666 = !DILocation(line: 975, column: 116, scope: !598)
!667 = !DILocation(line: 975, column: 46, scope: !598)
!668 = !DILocation(line: 975, column: 35, scope: !598)
!669 = !DILocation(line: 976, column: 137, scope: !598)
!670 = !DILocation(line: 976, column: 120, scope: !598)
!671 = !DILocation(line: 976, column: 141, scope: !598)
!672 = !DILocation(line: 976, column: 101, scope: !598)
!673 = !DILocation(line: 976, column: 145, scope: !598)
!674 = !DILocation(line: 976, column: 82, scope: !598)
!675 = !DILocation(line: 976, column: 149, scope: !598)
!676 = !DILocation(line: 976, column: 66, scope: !598)
!677 = !DILocation(line: 976, column: 153, scope: !598)
!678 = !DILocation(line: 976, column: 50, scope: !598)
!679 = !DILocation(line: 976, column: 37, scope: !598)
!680 = !DILocation(line: 977, column: 31, scope: !598)
!681 = !DILocation(line: 977, column: 37, scope: !598)
!682 = !DILocation(line: 978, column: 32, scope: !598)
!683 = !DILocation(line: 978, column: 37, scope: !598)
!684 = !DILocation(line: 979, column: 32, scope: !598)
!685 = !DILocation(line: 979, column: 37, scope: !598)
!686 = !DILocation(line: 979, column: 40, scope: !598)
!687 = !DILocation(line: 980, column: 32, scope: !598)
!688 = !DILocation(line: 980, column: 37, scope: !598)
!689 = !DILocation(line: 980, column: 40, scope: !598)
!690 = !DILocation(line: 980, column: 42, scope: !598)
!691 = !DILocation(line: 981, column: 32, scope: !598)
!692 = !DILocation(line: 981, column: 37, scope: !598)
!693 = !DILocation(line: 981, column: 40, scope: !598)
!694 = !DILocation(line: 981, column: 42, scope: !598)
!695 = !DILocation(line: 981, column: 44, scope: !598)
!696 = !DILocation(line: 982, column: 32, scope: !598)
!697 = !DILocation(line: 982, column: 37, scope: !598)
!698 = !DILocation(line: 982, column: 40, scope: !598)
!699 = !DILocation(line: 982, column: 42, scope: !598)
!700 = !DILocation(line: 982, column: 44, scope: !598)
!701 = !DILocation(line: 982, column: 46, scope: !598)
!702 = !DILocation(line: 983, column: 29, scope: !598)
!703 = !DILocation(line: 983, column: 37, scope: !598)
!704 = !DILocation(line: 983, column: 45, scope: !598)
!705 = !DILocation(line: 983, column: 53, scope: !598)
!706 = !DILocation(line: 983, column: 61, scope: !598)
!707 = !DILocation(line: 983, column: 21, scope: !598)
!708 = !DILocation(line: 983, column: 16, scope: !598)
!709 = !DILocation(line: 0, scope: !592)
!710 = !DILocation(line: 985, column: 1, scope: !582)
!711 = !DISubprogram(name: "gsl_sf_pow_int_e", scope: !712, file: !712, line: 43, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!712 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!713 = !DISubroutineType(types: !714)
!714 = !{!30, !80, !30, !74}
!715 = !DISubprogram(name: "gsl_sf_airy_zero_Ai_e", scope: !716, file: !716, line: 115, type: !71, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!716 = !DIFile(filename: "../gsl/gsl_sf_airy.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0902d390a487a55f5b5ea11d3d660eab")
!717 = !DISubprogram(name: "gsl_sf_bessel_Olver_zofmzeta", scope: !718, file: !718, line: 30, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!719 = !DISubroutineType(types: !720)
!720 = !{!80, !80}
!721 = distinct !DISubprogram(name: "olver_f1", scope: !2, file: !2, line: 1015, type: !580, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !722)
!722 = !{!723, !724, !725, !726}
!723 = !DILocalVariable(name: "z", arg: 1, scope: !721, file: !2, line: 1015, type: !80)
!724 = !DILocalVariable(name: "minus_zeta", arg: 2, scope: !721, file: !2, line: 1015, type: !80)
!725 = !DILocalVariable(name: "b0", scope: !721, file: !2, line: 1017, type: !88)
!726 = !DILocalVariable(name: "h2", scope: !721, file: !2, line: 1018, type: !88)
!727 = !DILocation(line: 0, scope: !721)
!728 = !DILocalVariable(name: "z", arg: 1, scope: !729, file: !2, line: 990, type: !80)
!729 = distinct !DISubprogram(name: "olver_b0", scope: !2, file: !2, line: 990, type: !580, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !730)
!730 = !{!728, !731, !732, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !746}
!731 = !DILocalVariable(name: "minus_zeta", arg: 2, scope: !729, file: !2, line: 990, type: !80)
!732 = !DILocalVariable(name: "a", scope: !733, file: !2, line: 993, type: !88)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 992, column: 16)
!734 = distinct !DILexicalBlock(scope: !729, file: !2, line: 992, column: 6)
!735 = !DILocalVariable(name: "c0", scope: !733, file: !2, line: 994, type: !88)
!736 = !DILocalVariable(name: "c1", scope: !733, file: !2, line: 995, type: !88)
!737 = !DILocalVariable(name: "c2", scope: !733, file: !2, line: 996, type: !88)
!738 = !DILocalVariable(name: "c3", scope: !733, file: !2, line: 997, type: !88)
!739 = !DILocalVariable(name: "c4", scope: !733, file: !2, line: 998, type: !88)
!740 = !DILocalVariable(name: "c5", scope: !733, file: !2, line: 999, type: !88)
!741 = !DILocalVariable(name: "c6", scope: !733, file: !2, line: 1000, type: !88)
!742 = !DILocalVariable(name: "c7", scope: !733, file: !2, line: 1001, type: !88)
!743 = !DILocalVariable(name: "c8", scope: !733, file: !2, line: 1002, type: !88)
!744 = !DILocalVariable(name: "abs_zeta", scope: !745, file: !2, line: 1006, type: !88)
!745 = distinct !DILexicalBlock(scope: !734, file: !2, line: 1005, column: 8)
!746 = !DILocalVariable(name: "t", scope: !745, file: !2, line: 1007, type: !88)
!747 = !DILocation(line: 0, scope: !729, inlinedAt: !748)
!748 = distinct !DILocation(line: 1017, column: 21, scope: !721)
!749 = !DILocation(line: 992, column: 8, scope: !734, inlinedAt: !748)
!750 = !DILocation(line: 992, column: 6, scope: !729, inlinedAt: !748)
!751 = !DILocation(line: 993, column: 25, scope: !733, inlinedAt: !748)
!752 = !DILocation(line: 0, scope: !733, inlinedAt: !748)
!753 = !DILocation(line: 1003, column: 74, scope: !733, inlinedAt: !748)
!754 = !DILocation(line: 1003, column: 71, scope: !733, inlinedAt: !748)
!755 = !DILocation(line: 1003, column: 66, scope: !733, inlinedAt: !748)
!756 = !DILocation(line: 1003, column: 63, scope: !733, inlinedAt: !748)
!757 = !DILocation(line: 1003, column: 58, scope: !733, inlinedAt: !748)
!758 = !DILocation(line: 1003, column: 55, scope: !733, inlinedAt: !748)
!759 = !DILocation(line: 1003, column: 50, scope: !733, inlinedAt: !748)
!760 = !DILocation(line: 1003, column: 47, scope: !733, inlinedAt: !748)
!761 = !DILocation(line: 1003, column: 42, scope: !733, inlinedAt: !748)
!762 = !DILocation(line: 1003, column: 39, scope: !733, inlinedAt: !748)
!763 = !DILocation(line: 1003, column: 34, scope: !733, inlinedAt: !748)
!764 = !DILocation(line: 1003, column: 31, scope: !733, inlinedAt: !748)
!765 = !DILocation(line: 1003, column: 26, scope: !733, inlinedAt: !748)
!766 = !DILocation(line: 1003, column: 23, scope: !733, inlinedAt: !748)
!767 = !DILocation(line: 1003, column: 18, scope: !733, inlinedAt: !748)
!768 = !DILocation(line: 1003, column: 15, scope: !733, inlinedAt: !748)
!769 = !DILocation(line: 1018, column: 43, scope: !721)
!770 = !DILocation(line: 0, scope: !745, inlinedAt: !748)
!771 = !DILocation(line: 1007, column: 46, scope: !745, inlinedAt: !748)
!772 = !DILocation(line: 1007, column: 43, scope: !745, inlinedAt: !748)
!773 = !DILocation(line: 1007, column: 38, scope: !745, inlinedAt: !748)
!774 = !DILocation(line: 1007, column: 29, scope: !745, inlinedAt: !748)
!775 = !DILocation(line: 1007, column: 28, scope: !745, inlinedAt: !748)
!776 = !DILocation(line: 1007, column: 25, scope: !745, inlinedAt: !748)
!777 = !DILocation(line: 1008, column: 22, scope: !745, inlinedAt: !748)
!778 = !DILocation(line: 1008, column: 31, scope: !745, inlinedAt: !748)
!779 = !DILocation(line: 1008, column: 16, scope: !745, inlinedAt: !748)
!780 = !DILocation(line: 1008, column: 56, scope: !745, inlinedAt: !748)
!781 = !DILocation(line: 1008, column: 58, scope: !745, inlinedAt: !748)
!782 = !DILocation(line: 1008, column: 51, scope: !745, inlinedAt: !748)
!783 = !DILocation(line: 1008, column: 45, scope: !745, inlinedAt: !748)
!784 = !DILocation(line: 1008, column: 68, scope: !745, inlinedAt: !748)
!785 = !DILocation(line: 1008, column: 67, scope: !745, inlinedAt: !748)
!786 = !DILocation(line: 1008, column: 61, scope: !745, inlinedAt: !748)
!787 = !DILocation(line: 1008, column: 42, scope: !745, inlinedAt: !748)
!788 = !DILocation(line: 0, scope: !734, inlinedAt: !748)
!789 = !DILocation(line: 1018, column: 29, scope: !721)
!790 = !DILocation(line: 1018, column: 45, scope: !721)
!791 = !DILocation(line: 1018, column: 40, scope: !721)
!792 = !DILocation(line: 1018, column: 21, scope: !721)
!793 = !DILocation(line: 1019, column: 14, scope: !721)
!794 = !DILocation(line: 1019, column: 18, scope: !721)
!795 = !DILocation(line: 1019, column: 23, scope: !721)
!796 = !DILocation(line: 1019, column: 3, scope: !721)
!797 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J0", scope: !2, file: !2, line: 1206, type: !798, scopeLine: 1207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{!80, !73}
!800 = !{!801, !802, !803}
!801 = !DILocalVariable(name: "s", arg: 1, scope: !797, file: !2, line: 1206, type: !73)
!802 = !DILocalVariable(name: "result", scope: !797, file: !2, line: 1208, type: !75)
!803 = !DILocalVariable(name: "status", scope: !797, file: !2, line: 1208, type: !30)
!804 = !DILocation(line: 0, scope: !797)
!805 = !DILocation(line: 0, scope: !70, inlinedAt: !806)
!806 = distinct !DILocation(line: 1208, column: 3, scope: !797)
!807 = !DILocation(line: 1028, column: 8, scope: !87, inlinedAt: !806)
!808 = !DILocation(line: 1028, column: 6, scope: !70, inlinedAt: !806)
!809 = !DILocation(line: 1047, column: 26, scope: !86, inlinedAt: !806)
!810 = !DILocation(line: 1047, column: 28, scope: !86, inlinedAt: !806)
!811 = !DILocation(line: 1047, column: 36, scope: !86, inlinedAt: !806)
!812 = !DILocation(line: 0, scope: !86, inlinedAt: !806)
!813 = !DILocation(line: 1048, column: 34, scope: !86, inlinedAt: !806)
!814 = !DILocation(line: 1048, column: 28, scope: !86, inlinedAt: !806)
!815 = !DILocation(line: 1049, column: 67, scope: !86, inlinedAt: !806)
!816 = !DILocation(line: 1049, column: 60, scope: !86, inlinedAt: !806)
!817 = !DILocation(line: 1049, column: 52, scope: !86, inlinedAt: !806)
!818 = !DILocation(line: 1049, column: 46, scope: !86, inlinedAt: !806)
!819 = !DILocation(line: 1049, column: 38, scope: !86, inlinedAt: !806)
!820 = !DILocation(line: 1049, column: 32, scope: !86, inlinedAt: !806)
!821 = !DILocation(line: 1050, column: 67, scope: !86, inlinedAt: !806)
!822 = !DILocation(line: 1050, column: 60, scope: !86, inlinedAt: !806)
!823 = !DILocation(line: 1050, column: 52, scope: !86, inlinedAt: !806)
!824 = !DILocation(line: 1050, column: 46, scope: !86, inlinedAt: !806)
!825 = !DILocation(line: 1050, column: 38, scope: !86, inlinedAt: !806)
!826 = !DILocation(line: 1050, column: 32, scope: !86, inlinedAt: !806)
!827 = !DILocation(line: 1051, column: 30, scope: !86, inlinedAt: !806)
!828 = !DILocation(line: 1052, column: 29, scope: !86, inlinedAt: !806)
!829 = !DILocation(line: 1052, column: 24, scope: !86, inlinedAt: !806)
!830 = !DILocation(line: 1208, column: 3, scope: !797)
!831 = !DILocation(line: 1031, column: 5, scope: !239, inlinedAt: !806)
!832 = !DILocation(line: 1208, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !2, line: 1208, column: 3)
!834 = distinct !DILexicalBlock(scope: !835, file: !2, line: 1208, column: 3)
!835 = distinct !DILexicalBlock(scope: !797, file: !2, line: 1208, column: 3)
!836 = !DILocation(line: 1209, column: 1, scope: !797)
!837 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J1", scope: !2, file: !2, line: 1211, type: !798, scopeLine: 1212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !838)
!838 = !{!839, !840, !841}
!839 = !DILocalVariable(name: "s", arg: 1, scope: !837, file: !2, line: 1211, type: !73)
!840 = !DILocalVariable(name: "result", scope: !837, file: !2, line: 1213, type: !75)
!841 = !DILocalVariable(name: "status", scope: !837, file: !2, line: 1213, type: !30)
!842 = !DILocation(line: 0, scope: !837)
!843 = !DILocation(line: 0, scope: !100, inlinedAt: !844)
!844 = distinct !DILocation(line: 1213, column: 3, scope: !837)
!845 = !DILocation(line: 1064, column: 8, scope: !106, inlinedAt: !844)
!846 = !DILocation(line: 1064, column: 6, scope: !100, inlinedAt: !844)
!847 = !DILocation(line: 1083, column: 26, scope: !105, inlinedAt: !844)
!848 = !DILocation(line: 1083, column: 28, scope: !105, inlinedAt: !844)
!849 = !DILocation(line: 1083, column: 36, scope: !105, inlinedAt: !844)
!850 = !DILocation(line: 0, scope: !105, inlinedAt: !844)
!851 = !DILocation(line: 1084, column: 34, scope: !105, inlinedAt: !844)
!852 = !DILocation(line: 1084, column: 28, scope: !105, inlinedAt: !844)
!853 = !DILocation(line: 1085, column: 64, scope: !105, inlinedAt: !844)
!854 = !DILocation(line: 1085, column: 58, scope: !105, inlinedAt: !844)
!855 = !DILocation(line: 1085, column: 50, scope: !105, inlinedAt: !844)
!856 = !DILocation(line: 1085, column: 44, scope: !105, inlinedAt: !844)
!857 = !DILocation(line: 1085, column: 36, scope: !105, inlinedAt: !844)
!858 = !DILocation(line: 1085, column: 30, scope: !105, inlinedAt: !844)
!859 = !DILocation(line: 1086, column: 58, scope: !105, inlinedAt: !844)
!860 = !DILocation(line: 1086, column: 50, scope: !105, inlinedAt: !844)
!861 = !DILocation(line: 1086, column: 44, scope: !105, inlinedAt: !844)
!862 = !DILocation(line: 1086, column: 36, scope: !105, inlinedAt: !844)
!863 = !DILocation(line: 1086, column: 30, scope: !105, inlinedAt: !844)
!864 = !DILocation(line: 1087, column: 26, scope: !105, inlinedAt: !844)
!865 = !DILocation(line: 1088, column: 34, scope: !105, inlinedAt: !844)
!866 = !DILocation(line: 1088, column: 31, scope: !105, inlinedAt: !844)
!867 = !DILocation(line: 1088, column: 24, scope: !105, inlinedAt: !844)
!868 = !DILocation(line: 0, scope: !106, inlinedAt: !844)
!869 = !DILocation(line: 1214, column: 1, scope: !837)
!870 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_Jnu", scope: !2, file: !2, line: 1216, type: !871, scopeLine: 1217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!80, !80, !73}
!873 = !{!874, !875, !876, !877}
!874 = !DILocalVariable(name: "nu", arg: 1, scope: !870, file: !2, line: 1216, type: !80)
!875 = !DILocalVariable(name: "s", arg: 2, scope: !870, file: !2, line: 1216, type: !73)
!876 = !DILocalVariable(name: "result", scope: !870, file: !2, line: 1218, type: !75)
!877 = !DILocalVariable(name: "status", scope: !870, file: !2, line: 1218, type: !30)
!878 = distinct !DIAssignID()
!879 = !DILocation(line: 0, scope: !870)
!880 = !DILocation(line: 1218, column: 3, scope: !870)
!881 = !DILocation(line: 1218, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !870, file: !2, line: 1218, column: 3)
!883 = !DILocation(line: 1218, column: 3, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !2, line: 1218, column: 3)
!885 = distinct !DILexicalBlock(scope: !882, file: !2, line: 1218, column: 3)
!886 = !DILocation(line: 1219, column: 1, scope: !870)
!887 = !DISubprogram(name: "sqrt", scope: !579, file: !579, line: 143, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
