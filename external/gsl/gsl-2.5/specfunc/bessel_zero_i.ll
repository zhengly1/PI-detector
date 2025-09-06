; ModuleID = 'bessel_zero.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1031, i32 noundef 4) #9, !dbg !238
  br label %21, !dbg !238

5:                                                ; preds = %2
  %6 = uitofp i32 %0 to double, !dbg !240
  %handler_result = call double @fAddHandlerDouble(double %6, double -2.500000e-01), !dbg !241
  %7 = fmul double %handler_result, 0x400921FB54442D18, !dbg !241
  tail call void @llvm.dbg.value(metadata double %7, metadata !85, metadata !DIExpression()), !dbg !242
  %8 = fmul double %7, %7, !dbg !243
  %9 = fdiv double 1.000000e+00, %8, !dbg !244
  tail call void @llvm.dbg.value(metadata double %9, metadata !89, metadata !DIExpression()), !dbg !242
  %10 = fmul double %9, 0x4024BC70DB299EFF, !dbg !245
  %handler_result1 = call double @fAddHandlerDouble(double %10, double 0x403405BB9CEA78A3), !dbg !246
  %11 = fmul double %9, %handler_result1, !dbg !246
  %handler_result2 = call double @fAddHandlerDouble(double %11, double 0x400E1B6CBDE62B91), !dbg !247
  %12 = fmul double %9, %handler_result2, !dbg !247
  %handler_result3 = call double @fAddHandlerDouble(double %12, double 0x3FBFFFFFFFF50A24), !dbg !248
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !90, metadata !DIExpression()), !dbg !242
  %13 = fmul double %9, 0x4062FF5192900E7D, !dbg !248
  %handler_result4 = call double @fAddHandlerDouble(double %13, double 0x40664250849B88E8), !dbg !249
  %14 = fmul double %9, %handler_result4, !dbg !249
  %handler_result5 = call double @fAddHandlerDouble(double %14, double 0x403EC0C2105D01C0), !dbg !250
  %15 = fmul double %9, %handler_result5, !dbg !250
  %handler_result6 = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !251
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !91, metadata !DIExpression()), !dbg !242
  %16 = fdiv double %handler_result3, %handler_result6, !dbg !251
  tail call void @llvm.dbg.value(metadata double %16, metadata !92, metadata !DIExpression()), !dbg !242
  %17 = fdiv double %16, %7, !dbg !252
  %handler_result7 = call double @fAddHandlerDouble(double %7, double %17), !dbg !253
  store double %handler_result7, ptr %1, align 8, !dbg !253, !tbaa !254
  %18 = fmul double %handler_result7, 3.000000e-15, !dbg !259
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !260
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !261
  store double %19, ptr %20, align 8, !dbg !262, !tbaa !263
  br label %21

21:                                               ; preds = %5, %4
  %22 = phi i32 [ 4, %4 ], [ 0, %5 ], !dbg !264
  ret i32 %22, !dbg !265
}

declare !dbg !266 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_zero_J1_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !100 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !102, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !103, metadata !DIExpression()), !dbg !271
  %3 = icmp eq i32 %0, 0, !dbg !272
  br i1 %3, label %19, label %4, !dbg !273

4:                                                ; preds = %2
  %5 = uitofp i32 %0 to double, !dbg !274
  %handler_result = call double @fAddHandlerDouble(double %5, double 2.500000e-01), !dbg !275
  %6 = fmul double %handler_result, 0x400921FB54442D18, !dbg !275
  tail call void @llvm.dbg.value(metadata double %6, metadata !104, metadata !DIExpression()), !dbg !276
  %7 = fmul double %6, %6, !dbg !277
  %8 = fdiv double 1.000000e+00, %7, !dbg !278
  tail call void @llvm.dbg.value(metadata double %8, metadata !107, metadata !DIExpression()), !dbg !276
  %9 = fmul double %8, 0x3FD7382FF85F1247, !dbg !279
  %handler_result1 = call double @fSubHandlerDouble(double 0x3FBECEAFA1D45FA5, double %9), !dbg !280
  %10 = fmul double %8, %handler_result1, !dbg !280
  %handler_result2 = call double @fAddHandlerDouble(double %10, double 0x3FA68004C5935ACC), !dbg !281
  %11 = fmul double %8, %handler_result2, !dbg !281
  %handler_result3 = call double @fAddHandlerDouble(double %11, double 0x3F5A1B352C1F3BF9), !dbg !282
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !108, metadata !DIExpression()), !dbg !276
  %handler_result4 = call double @fAddHandlerDouble(double %8, double 0xBFD4D750AA6CF95A), !dbg !283
  %12 = fmul double %8, %handler_result4, !dbg !283
  %handler_result5 = call double @fAddHandlerDouble(double %12, double 0xBFBE116DD53D3205), !dbg !284
  %13 = fmul double %8, %handler_result5, !dbg !284
  %handler_result6 = call double @fAddHandlerDouble(double %13, double 0xBF716778C81545E9), !dbg !285
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !109, metadata !DIExpression()), !dbg !276
  %14 = fdiv double %handler_result3, %handler_result6, !dbg !285
  tail call void @llvm.dbg.value(metadata double %14, metadata !110, metadata !DIExpression()), !dbg !276
  %15 = fmul double %8, %14, !dbg !286
  %handler_result7 = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !287
  %16 = fmul double %6, %handler_result7, !dbg !287
  %17 = fmul double %16, 2.000000e-14, !dbg !288
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !289
  br label %19

19:                                               ; preds = %4, %2
  %20 = phi double [ %16, %4 ], [ 0.000000e+00, %2 ], !dbg !290
  %21 = phi double [ %18, %4 ], [ 0.000000e+00, %2 ], !dbg !290
  store double %20, ptr %1, align 8, !dbg !290
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !290
  store double %21, ptr %22, align 8, !dbg !290
  ret i32 0, !dbg !291
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_zero_Jnu_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !292 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !338, metadata !DIExpression(), metadata !346, metadata ptr %4, metadata !DIExpression()), !dbg !347
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !348
  call void @llvm.dbg.assign(metadata i1 undef, metadata !339, metadata !DIExpression(), metadata !348, metadata ptr %5, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata double %0, metadata !296, metadata !DIExpression()), !dbg !350
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !297, metadata !DIExpression()), !dbg !350
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !298, metadata !DIExpression()), !dbg !350
  %6 = fcmp ugt double %0, -1.000000e+00, !dbg !351
  br i1 %6, label %9, label %7, !dbg !352

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !353, !tbaa !254
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !353
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !353, !tbaa !263
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1101, i32 noundef 1) #9, !dbg !356
  br label %321, !dbg !356

9:                                                ; preds = %3
  %10 = icmp eq i32 %1, 0, !dbg !358
  br i1 %10, label %11, label %14, !dbg !359

11:                                               ; preds = %9
  %12 = fcmp oeq double %0, 0.000000e+00, !dbg !360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !363
  br i1 %12, label %13, label %321, !dbg !364

13:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1107, i32 noundef 4) #9, !dbg !365
  br label %321, !dbg !365

14:                                               ; preds = %9
  %15 = fcmp olt double %0, 0.000000e+00, !dbg !368
  br i1 %15, label %16, label %17, !dbg !369

16:                                               ; preds = %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !370
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1115, i32 noundef 24) #9, !dbg !372
  br label %321, !dbg !372

17:                                               ; preds = %14
  %18 = icmp eq i32 %1, 1, !dbg !374
  br i1 %18, label %19, label %74, !dbg !375

19:                                               ; preds = %17
  %20 = fcmp olt double %0, 2.000000e+00, !dbg !376
  br i1 %20, label %21, label %51, !dbg !377

21:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata ptr @coef_jnu1_a, metadata !299, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i64 24, metadata !307, metadata !DIExpression()), !dbg !378
  %22 = fmul double %0, 5.000000e-01, !dbg !379
  tail call void @llvm.dbg.value(metadata double %22, metadata !308, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata ptr @coef_jnu1_a, metadata !380, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i32 23, metadata !385, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %22, metadata !386, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i32 23, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i32 23, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !388, metadata !DIExpression()), !dbg !391
  %23 = fmul double %22, 2.000000e+00
  %handler_result = call double @fAddHandlerDouble(double %23, double -1.000000e+00)
  %24 = fmul double %handler_result, 2.000000e+00
  tail call void @llvm.dbg.value(metadata i64 23, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !388, metadata !DIExpression()), !dbg !391
  %25 = fmul double %24, 1.000000e-15, !dbg !393
  %handler_result1 = call double @fAddHandlerDouble(double %25, double -4.000000e-15), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 22, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 22, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double 1.000000e-15, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !388, metadata !DIExpression()), !dbg !391
  %26 = fmul double %24, %handler_result1, !dbg !393
  %handler_result2 = call double @fAddHandlerDouble(double %26, double -1.000000e-15), !dbg !397
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double 1.500000e-14), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 21, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 21, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !388, metadata !DIExpression()), !dbg !391
  %27 = fmul double %24, %handler_result3, !dbg !393
  %handler_result4 = call double @fSubHandlerDouble(double %27, double %handler_result1), !dbg !397
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -5.900000e-14), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 20, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 20, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !388, metadata !DIExpression()), !dbg !391
  %28 = fmul double %24, %handler_result5, !dbg !393
  %handler_result6 = call double @fSubHandlerDouble(double %28, double %handler_result3), !dbg !397
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double 2.390000e-13), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 19, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 19, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !388, metadata !DIExpression()), !dbg !391
  %29 = fmul double %24, %handler_result7, !dbg !393
  %handler_result8 = call double @fSubHandlerDouble(double %29, double %handler_result5), !dbg !397
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double -9.650000e-13), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 18, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 18, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !388, metadata !DIExpression()), !dbg !391
  %30 = fmul double %24, %handler_result9, !dbg !393
  %handler_result10 = call double @fSubHandlerDouble(double %30, double %handler_result7), !dbg !397
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 3.914000e-12), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 17, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 17, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !388, metadata !DIExpression()), !dbg !391
  %31 = fmul double %24, %handler_result11, !dbg !393
  %handler_result12 = call double @fSubHandlerDouble(double %31, double %handler_result9), !dbg !397
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double -1.596100e-11), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 16, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 16, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !388, metadata !DIExpression()), !dbg !391
  %32 = fmul double %24, %handler_result13, !dbg !393
  %handler_result14 = call double @fSubHandlerDouble(double %32, double %handler_result11), !dbg !397
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 6.542000e-11), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 15, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 15, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !388, metadata !DIExpression()), !dbg !391
  %33 = fmul double %24, %handler_result15, !dbg !393
  %handler_result16 = call double @fSubHandlerDouble(double %33, double %handler_result13), !dbg !397
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double -2.697670e-10), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 14, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 14, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !388, metadata !DIExpression()), !dbg !391
  %34 = fmul double %24, %handler_result17, !dbg !393
  %handler_result18 = call double @fSubHandlerDouble(double %34, double %handler_result15), !dbg !397
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3E133E0A7144FC73), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 13, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 13, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !388, metadata !DIExpression()), !dbg !391
  %35 = fmul double %24, %handler_result19, !dbg !393
  %handler_result20 = call double @fSubHandlerDouble(double %35, double %handler_result17), !dbg !397
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 0xBE3421786A5DA81A), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 12, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 12, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !388, metadata !DIExpression()), !dbg !391
  %36 = fmul double %24, %handler_result21, !dbg !393
  %handler_result22 = call double @fSubHandlerDouble(double %36, double %handler_result19), !dbg !397
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double 0x3E5540E1E76ED69B), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 11, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 11, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !388, metadata !DIExpression()), !dbg !391
  %37 = fmul double %24, %handler_result23, !dbg !393
  %handler_result24 = call double @fSubHandlerDouble(double %37, double %handler_result21), !dbg !397
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0xBE76AEA938F43542), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 10, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 10, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !388, metadata !DIExpression()), !dbg !391
  %38 = fmul double %24, %handler_result25, !dbg !393
  %handler_result26 = call double @fSubHandlerDouble(double %38, double %handler_result23), !dbg !397
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0x3E98863395702F54), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 9, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 9, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !388, metadata !DIExpression()), !dbg !391
  %39 = fmul double %24, %handler_result27, !dbg !393
  %handler_result28 = call double @fSubHandlerDouble(double %39, double %handler_result25), !dbg !397
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double 0xBEBAF2310E971F0C), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 8, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 8, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !388, metadata !DIExpression()), !dbg !391
  %40 = fmul double %24, %handler_result29, !dbg !393
  %handler_result30 = call double @fSubHandlerDouble(double %40, double %handler_result27), !dbg !397
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double 0x3EDE38F42E5E82CD), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 7, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 7, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !388, metadata !DIExpression()), !dbg !391
  %41 = fmul double %24, %handler_result31, !dbg !393
  %handler_result32 = call double @fSubHandlerDouble(double %41, double %handler_result29), !dbg !397
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double 0xBF016B68D3D17A10), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 6, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 6, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !388, metadata !DIExpression()), !dbg !391
  %42 = fmul double %24, %handler_result33, !dbg !393
  %handler_result34 = call double @fSubHandlerDouble(double %42, double %handler_result31), !dbg !397
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double 0x3F24DE7F03677AE7), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 5, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 5, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !388, metadata !DIExpression()), !dbg !391
  %43 = fmul double %24, %handler_result35, !dbg !393
  %handler_result36 = call double @fSubHandlerDouble(double %43, double %handler_result33), !dbg !397
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double 0xBF4A7FB9288E9CCC), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 4, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 4, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !388, metadata !DIExpression()), !dbg !391
  %44 = fmul double %24, %handler_result37, !dbg !393
  %handler_result38 = call double @fSubHandlerDouble(double %44, double %handler_result35), !dbg !397
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double 0x3F728AB7FF1D773D), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 3, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 3, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !388, metadata !DIExpression()), !dbg !391
  %45 = fmul double %24, %handler_result39, !dbg !393
  %handler_result40 = call double @fSubHandlerDouble(double %45, double %handler_result37), !dbg !397
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double 0xBF9F71D78D39D989), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 2, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 2, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result39, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !388, metadata !DIExpression()), !dbg !391
  %46 = fmul double %24, %handler_result41, !dbg !393
  %handler_result42 = call double @fSubHandlerDouble(double %46, double %handler_result39), !dbg !397
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double 0x3FF5C57254B1F5DD), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 1, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 1, metadata !390, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !388, metadata !DIExpression()), !dbg !391
  %47 = fmul double %24, %handler_result43, !dbg !393
  %handler_result44 = call double @fSubHandlerDouble(double %47, double %handler_result41), !dbg !397
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double 0x400E6A0923912F8A), !dbg !398
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !389, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result43, metadata !387, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !388, metadata !DIExpression()), !dbg !391
  tail call void @llvm.dbg.value(metadata i64 0, metadata !390, metadata !DIExpression()), !dbg !391
  %48 = fmul double %handler_result, %handler_result43, !dbg !398
  %handler_result46 = call double @fSubHandlerDouble(double %handler_result45, double %48), !dbg !399
  tail call void @llvm.dbg.value(metadata double %handler_result46, metadata !309, metadata !DIExpression()), !dbg !378
  store double %handler_result46, ptr %2, align 8, !dbg !399, !tbaa !254
  %49 = fmul double %handler_result46, 2.000000e-15, !dbg !400
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !401
  store double %49, ptr %50, align 8, !dbg !402, !tbaa !263
  br label %321, !dbg !403

51:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata ptr @coef_jnu1_b, metadata !310, metadata !DIExpression()), !dbg !404
  tail call void @llvm.dbg.value(metadata i64 15, metadata !312, metadata !DIExpression()), !dbg !404
  %52 = fdiv double 2.000000e+00, %0, !dbg !405
  %53 = tail call double @pow(double noundef %52, double noundef 0x3FE5555555555555) #9, !dbg !406
  tail call void @llvm.dbg.value(metadata double %53, metadata !313, metadata !DIExpression()), !dbg !404
  tail call void @llvm.dbg.value(metadata ptr @coef_jnu1_b, metadata !380, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i32 14, metadata !385, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %53, metadata !386, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i32 14, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i32 14, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !388, metadata !DIExpression()), !dbg !407
  %54 = fmul double %53, 2.000000e+00
  %handler_result47 = call double @fAddHandlerDouble(double %54, double -1.000000e+00)
  %55 = fmul double %handler_result47, 2.000000e+00
  tail call void @llvm.dbg.value(metadata i64 14, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !388, metadata !DIExpression()), !dbg !407
  %56 = fmul double %55, -3.000000e-15, !dbg !409
  %handler_result48 = call double @fAddHandlerDouble(double %56, double 0x3D06849B86A12B9B), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 13, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 13, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double -3.000000e-15, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !388, metadata !DIExpression()), !dbg !407
  %57 = fmul double %55, %handler_result48, !dbg !409
  %handler_result49 = call double @fAddHandlerDouble(double %57, double 3.000000e-15), !dbg !410
  %handler_result50 = call double @fAddHandlerDouble(double %handler_result49, double 4.300000e-14), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 12, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 12, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result48, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !388, metadata !DIExpression()), !dbg !407
  %58 = fmul double %55, %handler_result50, !dbg !409
  %handler_result51 = call double @fSubHandlerDouble(double %58, double %handler_result48), !dbg !410
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result51, double 2.830000e-13), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result52, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result52, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 11, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 11, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result52, metadata !388, metadata !DIExpression()), !dbg !407
  %59 = fmul double %55, %handler_result52, !dbg !409
  %handler_result53 = call double @fSubHandlerDouble(double %59, double %handler_result50), !dbg !410
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result53, double -8.950000e-13), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result54, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result52, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result54, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 10, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 10, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result52, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result54, metadata !388, metadata !DIExpression()), !dbg !407
  %60 = fmul double %55, %handler_result54, !dbg !409
  %handler_result55 = call double @fSubHandlerDouble(double %60, double %handler_result52), !dbg !410
  %handler_result56 = call double @fAddHandlerDouble(double %handler_result55, double -1.530790e-10), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result54, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 9, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 9, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result54, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !388, metadata !DIExpression()), !dbg !407
  %61 = fmul double %55, %handler_result56, !dbg !409
  %handler_result57 = call double @fSubHandlerDouble(double %61, double %handler_result54), !dbg !410
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result57, double 0x3E23A0014CC8772B), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 8, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 8, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !388, metadata !DIExpression()), !dbg !407
  %62 = fmul double %55, %handler_result58, !dbg !409
  %handler_result59 = call double @fSubHandlerDouble(double %62, double %handler_result56), !dbg !410
  %handler_result60 = call double @fAddHandlerDouble(double %handler_result59, double 0xBE308D6238654CB4), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 7, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 7, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result58, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !388, metadata !DIExpression()), !dbg !407
  %63 = fmul double %55, %handler_result60, !dbg !409
  %handler_result61 = call double @fSubHandlerDouble(double %63, double %handler_result58), !dbg !410
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result61, double 0xBE95FBD64703A98E), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result62, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result62, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 6, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 6, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result62, metadata !388, metadata !DIExpression()), !dbg !407
  %64 = fmul double %55, %handler_result62, !dbg !409
  %handler_result63 = call double @fSubHandlerDouble(double %64, double %handler_result60), !dbg !410
  %handler_result64 = call double @fAddHandlerDouble(double %handler_result63, double 0x3ED826ECDE589C62), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result64, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result62, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result64, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 5, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 5, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result62, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result64, metadata !388, metadata !DIExpression()), !dbg !407
  %65 = fmul double %55, %handler_result64, !dbg !409
  %handler_result65 = call double @fSubHandlerDouble(double %65, double %handler_result62), !dbg !410
  %handler_result66 = call double @fAddHandlerDouble(double %handler_result65, double 0xBF047078F3D6AEB5), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result64, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 4, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 4, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result64, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !388, metadata !DIExpression()), !dbg !407
  %66 = fmul double %55, %handler_result66, !dbg !409
  %handler_result67 = call double @fSubHandlerDouble(double %66, double %handler_result64), !dbg !410
  %handler_result68 = call double @fAddHandlerDouble(double %handler_result67, double 0xBF42F2F660C50A23), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 3, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 3, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !388, metadata !DIExpression()), !dbg !407
  %67 = fmul double %55, %handler_result68, !dbg !409
  %handler_result69 = call double @fSubHandlerDouble(double %67, double %handler_result66), !dbg !410
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double 0x3FA906FE11614667), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result70, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result70, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 2, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 2, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result70, metadata !388, metadata !DIExpression()), !dbg !407
  %68 = fmul double %55, %handler_result70, !dbg !409
  %handler_result71 = call double @fSubHandlerDouble(double %68, double %handler_result68), !dbg !410
  %handler_result72 = call double @fAddHandlerDouble(double %handler_result71, double 0x3FE91A71D1808AB5), !dbg !409
  tail call void @llvm.dbg.value(metadata double %handler_result72, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result70, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result72, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 1, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 1, metadata !390, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result70, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result72, metadata !388, metadata !DIExpression()), !dbg !407
  %69 = fmul double %55, %handler_result72, !dbg !409
  %handler_result73 = call double @fSubHandlerDouble(double %69, double %handler_result70), !dbg !410
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0x3FFBC2D1DA5553E7), !dbg !411
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !389, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result72, metadata !387, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !388, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata i64 0, metadata !390, metadata !DIExpression()), !dbg !407
  %70 = fmul double %handler_result47, %handler_result72, !dbg !411
  %handler_result75 = call double @fSubHandlerDouble(double %handler_result74, double %70), !dbg !412
  tail call void @llvm.dbg.value(metadata double %handler_result75, metadata !314, metadata !DIExpression()), !dbg !404
  %71 = fmul double %handler_result75, %0, !dbg !412
  store double %71, ptr %2, align 8, !dbg !413, !tbaa !254
  %72 = fmul double %71, 2.000000e-15, !dbg !414
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !415
  store double %72, ptr %73, align 8, !dbg !416, !tbaa !263
  br label %321

74:                                               ; preds = %17
  %75 = icmp ult i32 %1, 11, !dbg !417
  %76 = uitofp i32 %1 to double, !dbg !418
  br i1 %75, label %77, label %215, !dbg !419

77:                                               ; preds = %74
  %78 = fcmp ogt double %76, %0, !dbg !420
  %79 = zext nneg i32 %1 to i64, !dbg !421
  br i1 %78, label %80, label %145, !dbg !422

80:                                               ; preds = %77
  %81 = getelementptr inbounds [21 x ptr], ptr @coef_jnu_a, i64 0, i64 %79, !dbg !423
  %82 = load ptr, ptr %81, align 8, !dbg !423, !tbaa !424
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !315, metadata !DIExpression()), !dbg !426
  %83 = getelementptr inbounds [21 x i64], ptr @size_jnu_a, i64 0, i64 %79, !dbg !427
  %84 = load i64, ptr %83, align 8, !dbg !427, !tbaa !428
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !320, metadata !DIExpression()), !dbg !426
  %85 = fdiv double %0, %76, !dbg !430
  tail call void @llvm.dbg.value(metadata double %85, metadata !321, metadata !DIExpression()), !dbg !426
  %86 = trunc i64 %84 to i32, !dbg !431
  %87 = add i32 %86, -1, !dbg !431
  tail call void @llvm.dbg.value(metadata ptr %82, metadata !380, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !385, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %85, metadata !386, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !432
  %88 = sext i32 %87 to i64, !dbg !434
  %89 = getelementptr inbounds double, ptr %82, i64 %88, !dbg !434
  %90 = load double, ptr %89, align 8, !dbg !434, !tbaa !435
  tail call void @llvm.dbg.value(metadata double %90, metadata !388, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !390, metadata !DIExpression()), !dbg !432
  %91 = getelementptr double, ptr %82, i64 -1, !dbg !436
  tail call void @llvm.dbg.value(metadata i32 %87, metadata !390, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %90, metadata !388, metadata !DIExpression()), !dbg !432
  %92 = icmp sgt i32 %87, 0, !dbg !437
  %93 = fmul double %85, 2.000000e+00
  %handler_result76 = call double @fAddHandlerDouble(double %93, double -1.000000e+00), !dbg !438
  br i1 %92, label %94, label %139, !dbg !438

94:                                               ; preds = %80
  %95 = fmul double %handler_result76, 2.000000e+00
  %96 = zext nneg i32 %87 to i64, !dbg !438
  %97 = and i64 %96, 3, !dbg !438
  %98 = icmp eq i64 %97, 0, !dbg !438
  br i1 %98, label %110, label %99, !dbg !438

99:                                               ; preds = %99, %94
  %100 = phi i64 [ %107, %99 ], [ %96, %94 ]
  %101 = phi double [ %102, %99 ], [ 0.000000e+00, %94 ]
  %102 = phi double [ %handler_result78, %99 ], [ %90, %94 ]
  %103 = phi i64 [ %108, %99 ], [ 0, %94 ]
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !390, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %101, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %102, metadata !388, metadata !DIExpression()), !dbg !432
  %104 = fmul double %95, %102, !dbg !439
  %handler_result77 = call double @fSubHandlerDouble(double %104, double %101), !dbg !440
  %105 = getelementptr double, ptr %91, i64 %100, !dbg !440
  %106 = load double, ptr %105, align 8, !dbg !440, !tbaa !435
  %handler_result78 = call double @fAddHandlerDouble(double %106, double %handler_result77), !dbg !441
  tail call void @llvm.dbg.value(metadata double %handler_result78, metadata !389, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %102, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result78, metadata !388, metadata !DIExpression()), !dbg !432
  %107 = add nsw i64 %100, -1, !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !390, metadata !DIExpression()), !dbg !432
  %108 = add i64 %103, 1, !dbg !438
  %109 = icmp eq i64 %108, %97, !dbg !438
  br i1 %109, label %110, label %99, !dbg !438, !llvm.loop !442

110:                                              ; preds = %99, %94
  %111 = phi i64 [ %96, %94 ], [ %107, %99 ]
  %112 = phi double [ 0.000000e+00, %94 ], [ %102, %99 ]
  %113 = phi double [ %90, %94 ], [ %handler_result78, %99 ]
  %114 = phi double [ undef, %94 ], [ %102, %99 ]
  %115 = phi double [ undef, %94 ], [ %handler_result78, %99 ]
  %116 = icmp ult i32 %87, 4, !dbg !438
  br i1 %116, label %139, label %117, !dbg !438

117:                                              ; preds = %110
  %118 = getelementptr double, ptr %91, i64 -1, !dbg !438
  %119 = getelementptr double, ptr %91, i64 -2, !dbg !438
  br label %120, !dbg !438

120:                                              ; preds = %120, %117
  %121 = phi i64 [ %111, %117 ], [ %137, %120 ]
  %122 = phi double [ %112, %117 ], [ %handler_result84, %120 ]
  %123 = phi double [ %113, %117 ], [ %handler_result86, %120 ]
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !390, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %122, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %123, metadata !388, metadata !DIExpression()), !dbg !432
  %124 = fmul double %95, %123, !dbg !439
  %handler_result79 = call double @fSubHandlerDouble(double %124, double %122), !dbg !440
  %125 = getelementptr double, ptr %91, i64 %121, !dbg !440
  %126 = load double, ptr %125, align 8, !dbg !440, !tbaa !435
  %handler_result80 = call double @fAddHandlerDouble(double %126, double %handler_result79), !dbg !439
  tail call void @llvm.dbg.value(metadata double %handler_result80, metadata !389, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %123, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result80, metadata !388, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !390, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !432
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !390, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !432
  tail call void @llvm.dbg.value(metadata double %123, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result80, metadata !388, metadata !DIExpression()), !dbg !432
  %127 = fmul double %95, %handler_result80, !dbg !439
  %handler_result81 = call double @fSubHandlerDouble(double %127, double %123), !dbg !440
  %128 = getelementptr double, ptr %118, i64 %121, !dbg !440
  %129 = load double, ptr %128, align 8, !dbg !440, !tbaa !435
  %handler_result82 = call double @fAddHandlerDouble(double %129, double %handler_result81), !dbg !439
  tail call void @llvm.dbg.value(metadata double %handler_result82, metadata !389, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result80, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result82, metadata !388, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !390, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !432
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !390, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result80, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result82, metadata !388, metadata !DIExpression()), !dbg !432
  %130 = fmul double %95, %handler_result82, !dbg !439
  %handler_result83 = call double @fSubHandlerDouble(double %130, double %handler_result80), !dbg !440
  %131 = getelementptr double, ptr %119, i64 %121, !dbg !440
  %132 = load double, ptr %131, align 8, !dbg !440, !tbaa !435
  %handler_result84 = call double @fAddHandlerDouble(double %132, double %handler_result83), !dbg !441
  tail call void @llvm.dbg.value(metadata double %handler_result84, metadata !389, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result82, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result84, metadata !388, metadata !DIExpression()), !dbg !432
  %133 = add nsw i64 %121, -3, !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !390, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !390, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result82, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result84, metadata !388, metadata !DIExpression()), !dbg !432
  %134 = fmul double %95, %handler_result84, !dbg !439
  %handler_result85 = call double @fSubHandlerDouble(double %134, double %handler_result82), !dbg !440
  %135 = getelementptr double, ptr %91, i64 %133, !dbg !440
  %136 = load double, ptr %135, align 8, !dbg !440, !tbaa !435
  %handler_result86 = call double @fAddHandlerDouble(double %136, double %handler_result85), !dbg !441
  tail call void @llvm.dbg.value(metadata double %handler_result86, metadata !389, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result84, metadata !387, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata double %handler_result86, metadata !388, metadata !DIExpression()), !dbg !432
  %137 = add nsw i64 %121, -4, !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !390, metadata !DIExpression()), !dbg !432
  %138 = icmp ugt i64 %133, 1, !dbg !437
  br i1 %138, label %120, label %139, !dbg !438, !llvm.loop !444

139:                                              ; preds = %120, %110, %80
  %140 = phi double [ %90, %80 ], [ %115, %110 ], [ %handler_result86, %120 ], !dbg !432
  %141 = phi double [ 0.000000e+00, %80 ], [ %114, %110 ], [ %handler_result84, %120 ], !dbg !432
  %142 = fmul double %handler_result76, %141, !dbg !447
  %handler_result87 = call double @fSubHandlerDouble(double %140, double %142), !dbg !448
  tail call void @llvm.dbg.value(metadata double %handler_result87, metadata !322, metadata !DIExpression()), !dbg !426
  store double %handler_result87, ptr %2, align 8, !dbg !448, !tbaa !254
  %143 = fmul double %handler_result87, 2.000000e-15, !dbg !449
  %144 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !450
  store double %143, ptr %144, align 8, !dbg !451, !tbaa !263
  br label %321, !dbg !452

145:                                              ; preds = %77
  %146 = getelementptr inbounds [11 x ptr], ptr @coef_jnu_b, i64 0, i64 %79, !dbg !453
  %147 = load ptr, ptr %146, align 8, !dbg !453, !tbaa !424
  tail call void @llvm.dbg.value(metadata ptr %147, metadata !323, metadata !DIExpression()), !dbg !454
  %148 = getelementptr inbounds [11 x i64], ptr @size_jnu_b, i64 0, i64 %79, !dbg !455
  %149 = load i64, ptr %148, align 8, !dbg !455, !tbaa !428
  tail call void @llvm.dbg.value(metadata i64 %149, metadata !325, metadata !DIExpression()), !dbg !454
  %150 = fdiv double %76, %0, !dbg !456
  %151 = tail call double @pow(double noundef %150, double noundef 0x3FE5555555555555) #9, !dbg !457
  tail call void @llvm.dbg.value(metadata double %151, metadata !326, metadata !DIExpression()), !dbg !454
  %152 = trunc i64 %149 to i32, !dbg !458
  %153 = add i32 %152, -1, !dbg !458
  tail call void @llvm.dbg.value(metadata ptr %147, metadata !380, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !385, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %151, metadata !386, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !459
  %154 = sext i32 %153 to i64, !dbg !461
  %155 = getelementptr inbounds double, ptr %147, i64 %154, !dbg !461
  %156 = load double, ptr %155, align 8, !dbg !461, !tbaa !435
  tail call void @llvm.dbg.value(metadata double %156, metadata !388, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !390, metadata !DIExpression()), !dbg !459
  %157 = getelementptr double, ptr %147, i64 -1, !dbg !462
  %158 = icmp sgt i32 %153, 0, !dbg !463
  %159 = fmul double %151, 2.000000e+00
  %handler_result88 = call double @fAddHandlerDouble(double %159, double -1.000000e+00), !dbg !464
  br i1 %158, label %160, label %205, !dbg !464

160:                                              ; preds = %145
  %161 = fmul double %handler_result88, 2.000000e+00
  %162 = zext nneg i32 %153 to i64, !dbg !464
  %163 = and i64 %162, 3, !dbg !464
  %164 = icmp eq i64 %163, 0, !dbg !464
  br i1 %164, label %176, label %165, !dbg !464

165:                                              ; preds = %165, %160
  %166 = phi i64 [ %173, %165 ], [ %162, %160 ]
  %167 = phi double [ %168, %165 ], [ 0.000000e+00, %160 ]
  %168 = phi double [ %handler_result90, %165 ], [ %156, %160 ]
  %169 = phi i64 [ %174, %165 ], [ 0, %160 ]
  tail call void @llvm.dbg.value(metadata i64 %166, metadata !390, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %167, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %168, metadata !388, metadata !DIExpression()), !dbg !459
  %170 = fmul double %161, %168, !dbg !465
  %handler_result89 = call double @fSubHandlerDouble(double %170, double %167), !dbg !466
  %171 = getelementptr double, ptr %157, i64 %166, !dbg !466
  %172 = load double, ptr %171, align 8, !dbg !466, !tbaa !435
  %handler_result90 = call double @fAddHandlerDouble(double %172, double %handler_result89), !dbg !467
  tail call void @llvm.dbg.value(metadata double %handler_result90, metadata !389, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %168, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result90, metadata !388, metadata !DIExpression()), !dbg !459
  %173 = add nsw i64 %166, -1, !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !390, metadata !DIExpression()), !dbg !459
  %174 = add i64 %169, 1, !dbg !464
  %175 = icmp eq i64 %174, %163, !dbg !464
  br i1 %175, label %176, label %165, !dbg !464, !llvm.loop !468

176:                                              ; preds = %165, %160
  %177 = phi i64 [ %162, %160 ], [ %173, %165 ]
  %178 = phi double [ 0.000000e+00, %160 ], [ %168, %165 ]
  %179 = phi double [ %156, %160 ], [ %handler_result90, %165 ]
  %180 = phi double [ undef, %160 ], [ %168, %165 ]
  %181 = phi double [ undef, %160 ], [ %handler_result90, %165 ]
  %182 = icmp ult i32 %153, 4, !dbg !464
  br i1 %182, label %205, label %183, !dbg !464

183:                                              ; preds = %176
  %184 = getelementptr double, ptr %157, i64 -1, !dbg !464
  %185 = getelementptr double, ptr %157, i64 -2, !dbg !464
  br label %186, !dbg !464

186:                                              ; preds = %186, %183
  %187 = phi i64 [ %177, %183 ], [ %203, %186 ]
  %188 = phi double [ %178, %183 ], [ %handler_result96, %186 ]
  %189 = phi double [ %179, %183 ], [ %handler_result98, %186 ]
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !390, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %188, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %189, metadata !388, metadata !DIExpression()), !dbg !459
  %190 = fmul double %161, %189, !dbg !465
  %handler_result91 = call double @fSubHandlerDouble(double %190, double %188), !dbg !466
  %191 = getelementptr double, ptr %157, i64 %187, !dbg !466
  %192 = load double, ptr %191, align 8, !dbg !466, !tbaa !435
  %handler_result92 = call double @fAddHandlerDouble(double %192, double %handler_result91), !dbg !465
  tail call void @llvm.dbg.value(metadata double %handler_result92, metadata !389, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %189, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result92, metadata !388, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !390, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !459
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !390, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !459
  tail call void @llvm.dbg.value(metadata double %189, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result92, metadata !388, metadata !DIExpression()), !dbg !459
  %193 = fmul double %161, %handler_result92, !dbg !465
  %handler_result93 = call double @fSubHandlerDouble(double %193, double %189), !dbg !466
  %194 = getelementptr double, ptr %184, i64 %187, !dbg !466
  %195 = load double, ptr %194, align 8, !dbg !466, !tbaa !435
  %handler_result94 = call double @fAddHandlerDouble(double %195, double %handler_result93), !dbg !465
  tail call void @llvm.dbg.value(metadata double %handler_result94, metadata !389, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result92, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result94, metadata !388, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !390, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !459
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !390, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result92, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result94, metadata !388, metadata !DIExpression()), !dbg !459
  %196 = fmul double %161, %handler_result94, !dbg !465
  %handler_result95 = call double @fSubHandlerDouble(double %196, double %handler_result92), !dbg !466
  %197 = getelementptr double, ptr %185, i64 %187, !dbg !466
  %198 = load double, ptr %197, align 8, !dbg !466, !tbaa !435
  %handler_result96 = call double @fAddHandlerDouble(double %198, double %handler_result95), !dbg !467
  tail call void @llvm.dbg.value(metadata double %handler_result96, metadata !389, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result94, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result96, metadata !388, metadata !DIExpression()), !dbg !459
  %199 = add nsw i64 %187, -3, !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !390, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !390, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result94, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result96, metadata !388, metadata !DIExpression()), !dbg !459
  %200 = fmul double %161, %handler_result96, !dbg !465
  %handler_result97 = call double @fSubHandlerDouble(double %200, double %handler_result94), !dbg !466
  %201 = getelementptr double, ptr %157, i64 %199, !dbg !466
  %202 = load double, ptr %201, align 8, !dbg !466, !tbaa !435
  %handler_result98 = call double @fAddHandlerDouble(double %202, double %handler_result97), !dbg !467
  tail call void @llvm.dbg.value(metadata double %handler_result98, metadata !389, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result96, metadata !387, metadata !DIExpression()), !dbg !459
  tail call void @llvm.dbg.value(metadata double %handler_result98, metadata !388, metadata !DIExpression()), !dbg !459
  %203 = add nsw i64 %187, -4, !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %203, metadata !390, metadata !DIExpression()), !dbg !459
  %204 = icmp ugt i64 %199, 1, !dbg !463
  br i1 %204, label %186, label %205, !dbg !464, !llvm.loop !469

205:                                              ; preds = %186, %176, %145
  %206 = phi double [ %156, %145 ], [ %181, %176 ], [ %handler_result98, %186 ], !dbg !459
  %207 = phi double [ 0.000000e+00, %145 ], [ %180, %176 ], [ %handler_result96, %186 ], !dbg !459
  %208 = fmul double %handler_result88, %207, !dbg !471
  %handler_result99 = call double @fSubHandlerDouble(double %206, double %208), !dbg !472
  tail call void @llvm.dbg.value(metadata double %handler_result99, metadata !327, metadata !DIExpression()), !dbg !454
  %209 = fmul double %handler_result99, %0, !dbg !472
  store double %209, ptr %2, align 8, !dbg !473, !tbaa !254
  %210 = fmul double %209, 2.000000e-15, !dbg !474
  %211 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !475
  %212 = icmp eq i32 %1, 5, !dbg !476
  %213 = fmul double %210, 5.000000e+06, !dbg !478
  %214 = select i1 %212, double %213, double %210, !dbg !478
  store double %214, ptr %211, align 8, !dbg !454, !tbaa !263
  br label %321

215:                                              ; preds = %74
  %216 = fmul double %0, 5.000000e-01, !dbg !479
  %217 = fcmp olt double %216, %76, !dbg !480
  %218 = icmp ult i32 %1, 21
  %219 = and i1 %218, %217, !dbg !481
  br i1 %219, label %220, label %287, !dbg !481

220:                                              ; preds = %215
  %221 = zext nneg i32 %1 to i64, !dbg !482
  %222 = getelementptr inbounds [21 x ptr], ptr @coef_jnu_a, i64 0, i64 %221, !dbg !482
  %223 = load ptr, ptr %222, align 8, !dbg !482, !tbaa !424
  tail call void @llvm.dbg.value(metadata ptr %223, metadata !328, metadata !DIExpression()), !dbg !483
  %224 = getelementptr inbounds [21 x i64], ptr @size_jnu_a, i64 0, i64 %221, !dbg !484
  %225 = load i64, ptr %224, align 8, !dbg !484, !tbaa !428
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !331, metadata !DIExpression()), !dbg !483
  %226 = fmul double %76, 2.000000e+00, !dbg !485
  %227 = fdiv double %0, %226, !dbg !486
  tail call void @llvm.dbg.value(metadata double %227, metadata !332, metadata !DIExpression()), !dbg !483
  %228 = trunc i64 %225 to i32, !dbg !487
  %229 = add i32 %228, -1, !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %223, metadata !380, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata i32 %229, metadata !385, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %227, metadata !386, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !387, metadata !DIExpression()), !dbg !488
  %230 = sext i32 %229 to i64, !dbg !490
  %231 = getelementptr inbounds double, ptr %223, i64 %230, !dbg !490
  %232 = load double, ptr %231, align 8, !dbg !490, !tbaa !435
  tail call void @llvm.dbg.value(metadata double %232, metadata !388, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata i32 %229, metadata !390, metadata !DIExpression()), !dbg !488
  %233 = getelementptr double, ptr %223, i64 -1, !dbg !491
  %234 = icmp sgt i32 %229, 0, !dbg !492
  %235 = fmul double %227, 2.000000e+00
  %handler_result100 = call double @fAddHandlerDouble(double %235, double -1.000000e+00), !dbg !493
  br i1 %234, label %236, label %281, !dbg !493

236:                                              ; preds = %220
  %237 = fmul double %handler_result100, 2.000000e+00
  %238 = zext nneg i32 %229 to i64, !dbg !493
  %239 = and i64 %238, 3, !dbg !493
  %240 = icmp eq i64 %239, 0, !dbg !493
  br i1 %240, label %252, label %241, !dbg !493

241:                                              ; preds = %241, %236
  %242 = phi i64 [ %249, %241 ], [ %238, %236 ]
  %243 = phi double [ %244, %241 ], [ 0.000000e+00, %236 ]
  %244 = phi double [ %handler_result102, %241 ], [ %232, %236 ]
  %245 = phi i64 [ %250, %241 ], [ 0, %236 ]
  tail call void @llvm.dbg.value(metadata i64 %242, metadata !390, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %243, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %244, metadata !388, metadata !DIExpression()), !dbg !488
  %246 = fmul double %237, %244, !dbg !494
  %handler_result101 = call double @fSubHandlerDouble(double %246, double %243), !dbg !495
  %247 = getelementptr double, ptr %233, i64 %242, !dbg !495
  %248 = load double, ptr %247, align 8, !dbg !495, !tbaa !435
  %handler_result102 = call double @fAddHandlerDouble(double %248, double %handler_result101), !dbg !496
  tail call void @llvm.dbg.value(metadata double %handler_result102, metadata !389, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %244, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result102, metadata !388, metadata !DIExpression()), !dbg !488
  %249 = add nsw i64 %242, -1, !dbg !496
  tail call void @llvm.dbg.value(metadata i64 %249, metadata !390, metadata !DIExpression()), !dbg !488
  %250 = add i64 %245, 1, !dbg !493
  %251 = icmp eq i64 %250, %239, !dbg !493
  br i1 %251, label %252, label %241, !dbg !493, !llvm.loop !497

252:                                              ; preds = %241, %236
  %253 = phi i64 [ %238, %236 ], [ %249, %241 ]
  %254 = phi double [ 0.000000e+00, %236 ], [ %244, %241 ]
  %255 = phi double [ %232, %236 ], [ %handler_result102, %241 ]
  %256 = phi double [ undef, %236 ], [ %244, %241 ]
  %257 = phi double [ undef, %236 ], [ %handler_result102, %241 ]
  %258 = icmp ult i32 %229, 4, !dbg !493
  br i1 %258, label %281, label %259, !dbg !493

259:                                              ; preds = %252
  %260 = getelementptr double, ptr %233, i64 -1, !dbg !493
  %261 = getelementptr double, ptr %233, i64 -2, !dbg !493
  br label %262, !dbg !493

262:                                              ; preds = %262, %259
  %263 = phi i64 [ %253, %259 ], [ %279, %262 ]
  %264 = phi double [ %254, %259 ], [ %handler_result108, %262 ]
  %265 = phi double [ %255, %259 ], [ %handler_result110, %262 ]
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !390, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %264, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %265, metadata !388, metadata !DIExpression()), !dbg !488
  %266 = fmul double %237, %265, !dbg !494
  %handler_result103 = call double @fSubHandlerDouble(double %266, double %264), !dbg !495
  %267 = getelementptr double, ptr %233, i64 %263, !dbg !495
  %268 = load double, ptr %267, align 8, !dbg !495, !tbaa !435
  %handler_result104 = call double @fAddHandlerDouble(double %268, double %handler_result103), !dbg !494
  tail call void @llvm.dbg.value(metadata double %handler_result104, metadata !389, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %265, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result104, metadata !388, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !390, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !390, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !488
  tail call void @llvm.dbg.value(metadata double %265, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result104, metadata !388, metadata !DIExpression()), !dbg !488
  %269 = fmul double %237, %handler_result104, !dbg !494
  %handler_result105 = call double @fSubHandlerDouble(double %269, double %265), !dbg !495
  %270 = getelementptr double, ptr %260, i64 %263, !dbg !495
  %271 = load double, ptr %270, align 8, !dbg !495, !tbaa !435
  %handler_result106 = call double @fAddHandlerDouble(double %271, double %handler_result105), !dbg !494
  tail call void @llvm.dbg.value(metadata double %handler_result106, metadata !389, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result104, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result106, metadata !388, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !390, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %263, metadata !390, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result104, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result106, metadata !388, metadata !DIExpression()), !dbg !488
  %272 = fmul double %237, %handler_result106, !dbg !494
  %handler_result107 = call double @fSubHandlerDouble(double %272, double %handler_result104), !dbg !495
  %273 = getelementptr double, ptr %261, i64 %263, !dbg !495
  %274 = load double, ptr %273, align 8, !dbg !495, !tbaa !435
  %handler_result108 = call double @fAddHandlerDouble(double %274, double %handler_result107), !dbg !496
  tail call void @llvm.dbg.value(metadata double %handler_result108, metadata !389, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result106, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result108, metadata !388, metadata !DIExpression()), !dbg !488
  %275 = add nsw i64 %263, -3, !dbg !496
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !390, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %275, metadata !390, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result106, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result108, metadata !388, metadata !DIExpression()), !dbg !488
  %276 = fmul double %237, %handler_result108, !dbg !494
  %handler_result109 = call double @fSubHandlerDouble(double %276, double %handler_result106), !dbg !495
  %277 = getelementptr double, ptr %233, i64 %275, !dbg !495
  %278 = load double, ptr %277, align 8, !dbg !495, !tbaa !435
  %handler_result110 = call double @fAddHandlerDouble(double %278, double %handler_result109), !dbg !496
  tail call void @llvm.dbg.value(metadata double %handler_result110, metadata !389, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result108, metadata !387, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %handler_result110, metadata !388, metadata !DIExpression()), !dbg !488
  %279 = add nsw i64 %263, -4, !dbg !496
  tail call void @llvm.dbg.value(metadata i64 %279, metadata !390, metadata !DIExpression()), !dbg !488
  %280 = icmp ugt i64 %275, 1, !dbg !492
  br i1 %280, label %262, label %281, !dbg !493, !llvm.loop !498

281:                                              ; preds = %262, %252, %220
  %282 = phi double [ %232, %220 ], [ %257, %252 ], [ %handler_result110, %262 ], !dbg !488
  %283 = phi double [ 0.000000e+00, %220 ], [ %256, %252 ], [ %handler_result108, %262 ], !dbg !488
  %284 = fmul double %handler_result100, %283, !dbg !500
  %handler_result111 = call double @fSubHandlerDouble(double %282, double %284), !dbg !501
  tail call void @llvm.dbg.value(metadata double %handler_result111, metadata !333, metadata !DIExpression()), !dbg !483
  store double %handler_result111, ptr %2, align 8, !dbg !501, !tbaa !254
  %285 = fmul double %handler_result111, 4.000000e-15, !dbg !502
  %286 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !503
  store double %285, ptr %286, align 8, !dbg !504, !tbaa !263
  br label %321

287:                                              ; preds = %215
  %288 = fmul double %0, 2.000000e+00, !dbg !505
  %289 = fcmp olt double %288, %76, !dbg !506
  %290 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !507
  br i1 %289, label %291, label %306, !dbg !508

291:                                              ; preds = %287
  %handler_result112 = call double @fAddHandlerDouble(double %216, double %76), !dbg !509
  %handler_result113 = call double @fAddHandlerDouble(double %handler_result112, double -2.500000e-01), !dbg !510
  %292 = fmul double %handler_result113, 0x400921FB54442D18, !dbg !510
  tail call void @llvm.dbg.value(metadata double %292, metadata !334, metadata !DIExpression()), !dbg !347
  %293 = fmul double %0, 4.000000e+00, !dbg !511
  %294 = fmul double %293, %0, !dbg !512
  %295 = tail call fastcc double @mcmahon_correction(double noundef %294, double noundef %292), !dbg !513
  tail call void @llvm.dbg.value(metadata double %295, metadata !337, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !514
  %296 = fdiv double %0, %292, !dbg !515
  %297 = call i32 @gsl_sf_pow_int_e(double noundef %296, i32 noundef 14, ptr noundef nonnull %4) #9, !dbg !516
  %298 = fmul double %292, %295, !dbg !517
  store double %298, ptr %2, align 8, !dbg !518, !tbaa !254
  %299 = call double @llvm.fabs.f64(double %292), !dbg !519
  %300 = fmul double %299, 4.000000e+00, !dbg !520
  %301 = load double, ptr %4, align 8, !dbg !521, !tbaa !254
  %302 = fmul double %300, %301, !dbg !522
  %303 = fmul double %298, 0x3CB0000000000000, !dbg !523
  %304 = call double @llvm.fabs.f64(double %303), !dbg !524
  %305 = fmul double %304, 4.000000e+00, !dbg !525
  %handler_result114 = call double @fAddHandlerDouble(double %305, double %302), !dbg !526
  store double %handler_result114, ptr %290, align 8, !dbg !526, !tbaa !263
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !527
  br label %321

306:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !528
  %307 = call i32 @gsl_sf_airy_zero_Ai_e(i32 noundef %1, ptr noundef nonnull %5) #9, !dbg !529
  tail call void @llvm.dbg.value(metadata i32 %307, metadata !341, metadata !DIExpression()), !dbg !349
  %308 = call double @pow(double noundef %0, double noundef 0xBFE5555555555555) #9, !dbg !530
  %309 = fneg double %308, !dbg !531
  %310 = load double, ptr %5, align 8, !dbg !532, !tbaa !254
  %311 = fmul double %310, %309, !dbg !533
  tail call void @llvm.dbg.value(metadata double %311, metadata !343, metadata !DIExpression()), !dbg !349
  %312 = call double @gsl_sf_bessel_Olver_zofmzeta(double noundef %311) #9, !dbg !534
  tail call void @llvm.dbg.value(metadata double %312, metadata !344, metadata !DIExpression()), !dbg !349
  %313 = call fastcc double @olver_f1(double noundef %312, double noundef %311), !dbg !535
  tail call void @llvm.dbg.value(metadata double %313, metadata !345, metadata !DIExpression()), !dbg !349
  %314 = fmul double %0, %0, !dbg !536
  %315 = fdiv double %313, %314, !dbg !537
  %handler_result115 = call double @fAddHandlerDouble(double %312, double %315), !dbg !538
  %316 = fmul double %handler_result115, %0, !dbg !538
  store double %316, ptr %2, align 8, !dbg !539, !tbaa !254
  %317 = fmul double %314, %0, !dbg !540
  %318 = fdiv double 1.000000e-03, %317, !dbg !541
  %319 = call double @llvm.fabs.f64(double %316), !dbg !542
  %320 = fmul double %319, 0x3CC0000000000000, !dbg !543
  %handler_result116 = call double @fAddHandlerDouble(double %318, double %320), !dbg !544
  store double %handler_result116, ptr %290, align 8, !dbg !544, !tbaa !263
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !545
  br label %321

321:                                              ; preds = %306, %291, %281, %205, %139, %51, %21, %16, %13, %11, %7
  %322 = phi i32 [ 1, %7 ], [ 4, %13 ], [ 24, %16 ], [ 0, %281 ], [ 0, %291 ], [ %307, %306 ], [ 0, %11 ], [ 0, %51 ], [ 0, %21 ], [ 0, %205 ], [ 0, %139 ], !dbg !546
  ret i32 %322, !dbg !547
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !548 double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc double @mcmahon_correction(double noundef %0, double noundef %1) unnamed_addr #6 !dbg !552 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !556, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata double %1, metadata !557, metadata !DIExpression()), !dbg !581
  %3 = fmul double %1, 8.000000e+00, !dbg !582
  tail call void @llvm.dbg.value(metadata double %3, metadata !558, metadata !DIExpression()), !dbg !581
  %4 = fmul double %3, %3, !dbg !583
  tail call void @llvm.dbg.value(metadata double %4, metadata !559, metadata !DIExpression()), !dbg !581
  %5 = fcmp olt double %0, 0x3CB0000000000000, !dbg !584
  br i1 %5, label %6, label %27, !dbg !585

6:                                                ; preds = %2
  %7 = fdiv double 1.000000e+00, %4, !dbg !586
  tail call void @llvm.dbg.value(metadata double %7, metadata !560, metadata !DIExpression()), !dbg !587
  %8 = fmul double %4, 3.000000e+00, !dbg !588
  %9 = fmul double %4, %8, !dbg !589
  %10 = fdiv double 1.240000e+02, %9, !dbg !590
  tail call void @llvm.dbg.value(metadata double %10, metadata !563, metadata !DIExpression()), !dbg !587
  %11 = fmul double %4, 1.500000e+01, !dbg !591
  %12 = fmul double %4, %11, !dbg !592
  %13 = fmul double %4, %12, !dbg !593
  %14 = fdiv double 1.209280e+05, %13, !dbg !594
  tail call void @llvm.dbg.value(metadata double %14, metadata !564, metadata !DIExpression()), !dbg !587
  %15 = fmul double %4, 1.050000e+02, !dbg !595
  %16 = fmul double %4, %15, !dbg !596
  %17 = fmul double %4, %16, !dbg !597
  %18 = fmul double %4, %17, !dbg !598
  %19 = fdiv double 0x41B7F21D40000000, %18, !dbg !599
  tail call void @llvm.dbg.value(metadata double %19, metadata !565, metadata !DIExpression()), !dbg !587
  %20 = fmul double %4, 3.150000e+02, !dbg !600
  %21 = fmul double %4, %20, !dbg !601
  %22 = fmul double %4, %21, !dbg !602
  %23 = fmul double %4, %22, !dbg !603
  %24 = fmul double %4, %23, !dbg !604
  %25 = fdiv double 0x426F2CF87D400000, %24, !dbg !605
  tail call void @llvm.dbg.value(metadata double %25, metadata !566, metadata !DIExpression()), !dbg !587
  %handler_result = call double @fSubHandlerDouble(double %7, double %10), !dbg !606
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %14), !dbg !607
  %handler_result2 = call double @fSubHandlerDouble(double %handler_result1, double %19), !dbg !608
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %25), !dbg !609
  %26 = fmul double %handler_result3, 8.000000e+00, !dbg !609
  %handler_result4 = call double @fAddHandlerDouble(double %26, double 1.000000e+00)
  br label %72

27:                                               ; preds = %2
  %28 = fdiv double 1.000000e+00, %0, !dbg !610
  tail call void @llvm.dbg.value(metadata double %28, metadata !567, metadata !DIExpression()), !dbg !611
  %29 = fdiv double %0, %4, !dbg !612
  tail call void @llvm.dbg.value(metadata double %29, metadata !569, metadata !DIExpression()), !dbg !611
  %30 = fmul double %28, 3.100000e+01, !dbg !613
  %handler_result5 = call double @fSubHandlerDouble(double 7.000000e+00, double %30), !dbg !614
  %31 = fmul double %handler_result5, 0x3FF5555555555555, !dbg !614
  tail call void @llvm.dbg.value(metadata double %31, metadata !570, metadata !DIExpression()), !dbg !611
  %32 = fmul double %28, 3.779000e+03, !dbg !615
  %handler_result6 = call double @fAddHandlerDouble(double %32, double -9.820000e+02), !dbg !616
  %33 = fmul double %28, %handler_result6, !dbg !616
  %handler_result7 = call double @fAddHandlerDouble(double %33, double 8.300000e+01), !dbg !617
  %34 = fmul double %handler_result7, 0x4001111111111111, !dbg !617
  tail call void @llvm.dbg.value(metadata double %34, metadata !571, metadata !DIExpression()), !dbg !611
  %35 = fmul double %28, 0x4157F21D40000000, !dbg !618
  %handler_result8 = call double @fSubHandlerDouble(double 0x4138324F00000000, double %35), !dbg !619
  %36 = fmul double %28, %handler_result8, !dbg !619
  %handler_result9 = call double @fAddHandlerDouble(double %36, double -1.538550e+05), !dbg !620
  %37 = fmul double %28, %handler_result9, !dbg !620
  %handler_result10 = call double @fAddHandlerDouble(double %37, double 6.949000e+03), !dbg !621
  %38 = fmul double %handler_result10, 0x3FE3813813813814, !dbg !621
  tail call void @llvm.dbg.value(metadata double %38, metadata !572, metadata !DIExpression()), !dbg !611
  %39 = fmul double %28, 0x41DF2CF87D400000, !dbg !622
  %handler_result11 = call double @fAddHandlerDouble(double %39, double 0xC1BE857454000000), !dbg !623
  %40 = fmul double %28, %handler_result11, !dbg !623
  %handler_result12 = call double @fAddHandlerDouble(double %40, double 0x4186E4A7F0000000), !dbg !624
  %41 = fmul double %28, %handler_result12, !dbg !624
  %handler_result13 = call double @fAddHandlerDouble(double %41, double 0xC142EA6A00000000), !dbg !625
  %42 = fmul double %28, %handler_result13, !dbg !625
  %handler_result14 = call double @fAddHandlerDouble(double %42, double 7.019700e+04), !dbg !626
  %43 = fmul double %handler_result14, 0x3FFA01A01A01A01A, !dbg !626
  tail call void @llvm.dbg.value(metadata double %43, metadata !573, metadata !DIExpression()), !dbg !611
  %44 = fmul double %28, 0x429E0327E3572400, !dbg !627
  %handler_result15 = call double @fSubHandlerDouble(double 0x427CD9CDA00B5000, double %44), !dbg !628
  %45 = fmul double %28, %handler_result15, !dbg !628
  %handler_result16 = call double @fAddHandlerDouble(double %45, double 0xC244DF3F4FDD0000), !dbg !629
  %46 = fmul double %28, %handler_result16, !dbg !629
  %handler_result17 = call double @fAddHandlerDouble(double %46, double 0x420095BD56500000), !dbg !630
  %47 = fmul double %28, %handler_result17, !dbg !630
  %handler_result18 = call double @fAddHandlerDouble(double %47, double 0xC1B11D8C4D000000), !dbg !631
  %48 = fmul double %28, %handler_result18, !dbg !631
  %handler_result19 = call double @fAddHandlerDouble(double %48, double 0x4155559440000000), !dbg !632
  %49 = fmul double %handler_result19, 0x3FE2E9E8CD187470, !dbg !632
  tail call void @llvm.dbg.value(metadata double %49, metadata !574, metadata !DIExpression()), !dbg !611
  %handler_result20 = call double @fSubHandlerDouble(double 1.000000e+00, double %28), !dbg !633
  %50 = fmul double %handler_result20, %29, !dbg !633
  tail call void @llvm.dbg.value(metadata double %50, metadata !575, metadata !DIExpression()), !dbg !611
  %51 = fmul double %31, %50, !dbg !634
  %52 = fmul double %29, %51, !dbg !635
  tail call void @llvm.dbg.value(metadata double %52, metadata !576, metadata !DIExpression()), !dbg !611
  %53 = fmul double %50, %34, !dbg !636
  %54 = fmul double %29, %53, !dbg !637
  %55 = fmul double %29, %54, !dbg !638
  tail call void @llvm.dbg.value(metadata double %55, metadata !577, metadata !DIExpression()), !dbg !611
  %56 = fmul double %50, %38, !dbg !639
  %57 = fmul double %29, %56, !dbg !640
  %58 = fmul double %29, %57, !dbg !641
  %59 = fmul double %29, %58, !dbg !642
  tail call void @llvm.dbg.value(metadata double %59, metadata !578, metadata !DIExpression()), !dbg !611
  %60 = fmul double %50, %43, !dbg !643
  %61 = fmul double %29, %60, !dbg !644
  %62 = fmul double %29, %61, !dbg !645
  %63 = fmul double %29, %62, !dbg !646
  %64 = fmul double %29, %63, !dbg !647
  tail call void @llvm.dbg.value(metadata double %64, metadata !579, metadata !DIExpression()), !dbg !611
  %65 = fmul double %50, %49, !dbg !648
  %66 = fmul double %29, %65, !dbg !649
  %67 = fmul double %29, %66, !dbg !650
  %68 = fmul double %29, %67, !dbg !651
  %69 = fmul double %29, %68, !dbg !652
  %70 = fmul double %29, %69, !dbg !653
  tail call void @llvm.dbg.value(metadata double %70, metadata !580, metadata !DIExpression()), !dbg !611
  %handler_result21 = call double @fAddHandlerDouble(double %50, double %52), !dbg !654
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %55), !dbg !655
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %59), !dbg !656
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double %64), !dbg !657
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double %70), !dbg !658
  %71 = fmul double %handler_result25, 8.000000e+00, !dbg !658
  %handler_result26 = call double @fSubHandlerDouble(double 1.000000e+00, double %71)
  br label %72

72:                                               ; preds = %27, %6
  %73 = phi double [ %handler_result4, %6 ], [ %handler_result26, %27 ], !dbg !659
  ret double %73, !dbg !660
}

declare !dbg !661 i32 @gsl_sf_pow_int_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !665 i32 @gsl_sf_airy_zero_Ai_e(i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !667 double @gsl_sf_bessel_Olver_zofmzeta(double noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(write) uwtable
define internal fastcc double @olver_f1(double noundef %0, double noundef %1) unnamed_addr #7 !dbg !671 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !673, metadata !DIExpression()), !dbg !677
  tail call void @llvm.dbg.value(metadata double %1, metadata !674, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata double %0, metadata !678, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata double %1, metadata !681, metadata !DIExpression()), !dbg !697
  %3 = fcmp olt double %0, 1.020000e+00, !dbg !699
  br i1 %3, label %4, label %14, !dbg !700

4:                                                ; preds = %2
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !701
  call void @llvm.dbg.value(metadata double %handler_result, metadata !682, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata double 0x3F926E4BDCD91844, metadata !685, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata double 0x3F86EFA85CC9E550, metadata !686, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata double 0x3F7854F7DB2B1A7F, metadata !687, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata double 0x3F677DF1ECA75C1C, metadata !688, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata double 0x3F54376E5603FE6D, metadata !689, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata double 0x3F3B52D787939150, metadata !690, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata double 0x3F014F831CDE0975, metadata !691, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata double 0xBF2146BADE1F5571, metadata !692, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata double 0xBF28FE652CE80F79, metadata !693, metadata !DIExpression()), !dbg !702
  %5 = fmul double %handler_result, 0x3F28FE652CE80F79, !dbg !701
  %handler_result1 = call double @fSubHandlerDouble(double 0xBF2146BADE1F5571, double %5), !dbg !703
  %6 = fmul double %handler_result, %handler_result1, !dbg !703
  %handler_result2 = call double @fAddHandlerDouble(double %6, double 0x3F014F831CDE0975), !dbg !704
  %7 = fmul double %handler_result, %handler_result2, !dbg !704
  %handler_result3 = call double @fAddHandlerDouble(double %7, double 0x3F3B52D787939150), !dbg !705
  %8 = fmul double %handler_result, %handler_result3, !dbg !705
  %handler_result4 = call double @fAddHandlerDouble(double %8, double 0x3F54376E5603FE6D), !dbg !706
  %9 = fmul double %handler_result, %handler_result4, !dbg !706
  %handler_result5 = call double @fAddHandlerDouble(double %9, double 0x3F677DF1ECA75C1C), !dbg !707
  %10 = fmul double %handler_result, %handler_result5, !dbg !707
  %handler_result6 = call double @fAddHandlerDouble(double %10, double 0x3F7854F7DB2B1A7F), !dbg !708
  %11 = fmul double %handler_result, %handler_result6, !dbg !708
  %handler_result7 = call double @fAddHandlerDouble(double %11, double 0x3F86EFA85CC9E550), !dbg !709
  %12 = fmul double %handler_result, %handler_result7, !dbg !709
  %handler_result8 = call double @fAddHandlerDouble(double %12, double 0x3F926E4BDCD91844), !dbg !710
  %13 = fmul double %0, %0, !dbg !710
  br label %29

14:                                               ; preds = %2
  call void @llvm.dbg.value(metadata double %1, metadata !694, metadata !DIExpression()), !dbg !711
  %15 = fmul double %0, %0, !dbg !712
  %16 = fdiv double 1.000000e+00, %15, !dbg !713
  %handler_result9 = call double @fSubHandlerDouble(double 1.000000e+00, double %16), !dbg !714
  %17 = tail call double @sqrt(double noundef %handler_result9) #9, !dbg !714
  %18 = fmul double %17, %0, !dbg !715
  %19 = fdiv double 1.000000e+00, %18, !dbg !716
  call void @llvm.dbg.value(metadata double %19, metadata !696, metadata !DIExpression()), !dbg !711
  %20 = fmul double %1, 4.800000e+01, !dbg !717
  %21 = fmul double %20, %1, !dbg !718
  %22 = fdiv double 5.000000e+00, %21, !dbg !719
  %23 = fmul double %19, 5.000000e+00, !dbg !720
  %24 = fmul double %19, %23, !dbg !721
  %handler_result10 = call double @fAddHandlerDouble(double %24, double 3.000000e+00), !dbg !722
  %25 = fmul double %19, %handler_result10, !dbg !722
  %26 = tail call double @sqrt(double noundef %1) #9, !dbg !723
  %27 = fmul double %26, 2.400000e+01, !dbg !724
  %28 = fdiv double %25, %27, !dbg !725
  %handler_result11 = call double @fSubHandlerDouble(double %28, double %22)
  br label %29

29:                                               ; preds = %14, %4
  %30 = phi double [ %13, %4 ], [ %15, %14 ], !dbg !710
  %31 = phi double [ %handler_result8, %4 ], [ %handler_result11, %14 ], !dbg !726
  tail call void @llvm.dbg.value(metadata double %31, metadata !675, metadata !DIExpression()), !dbg !677
  %32 = fmul double %1, 4.000000e+00, !dbg !727
  %handler_result12 = call double @fAddHandlerDouble(double %30, double -1.000000e+00), !dbg !728
  %33 = fdiv double %32, %handler_result12, !dbg !728
  %34 = tail call double @sqrt(double noundef %33) #9, !dbg !729
  tail call void @llvm.dbg.value(metadata double %34, metadata !676, metadata !DIExpression()), !dbg !677
  %35 = fmul double %0, 5.000000e-01, !dbg !730
  %36 = fmul double %35, %34, !dbg !731
  %37 = fmul double %31, %36, !dbg !732
  ret double %37, !dbg !733
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_zero_J0(i32 noundef %0) local_unnamed_addr #0 !dbg !734 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !738, metadata !DIExpression()), !dbg !741
  call void @llvm.dbg.value(metadata i32 %0, metadata !83, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata ptr undef, metadata !84, metadata !DIExpression()), !dbg !742
  %2 = icmp eq i32 %0, 0, !dbg !744
  br i1 %2, label %16, label %3, !dbg !745

3:                                                ; preds = %1
  %4 = uitofp i32 %0 to double, !dbg !746
  %handler_result = call double @fAddHandlerDouble(double %4, double -2.500000e-01), !dbg !747
  %5 = fmul double %handler_result, 0x400921FB54442D18, !dbg !747
  call void @llvm.dbg.value(metadata double %5, metadata !85, metadata !DIExpression()), !dbg !748
  %6 = fmul double %5, %5, !dbg !749
  %7 = fdiv double 1.000000e+00, %6, !dbg !750
  call void @llvm.dbg.value(metadata double %7, metadata !89, metadata !DIExpression()), !dbg !748
  %8 = fmul double %7, 0x4024BC70DB299EFF, !dbg !751
  %handler_result1 = call double @fAddHandlerDouble(double %8, double 0x403405BB9CEA78A3), !dbg !752
  %9 = fmul double %7, %handler_result1, !dbg !752
  %handler_result2 = call double @fAddHandlerDouble(double %9, double 0x400E1B6CBDE62B91), !dbg !753
  %10 = fmul double %7, %handler_result2, !dbg !753
  %handler_result3 = call double @fAddHandlerDouble(double %10, double 0x3FBFFFFFFFF50A24), !dbg !754
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !90, metadata !DIExpression()), !dbg !748
  %11 = fmul double %7, 0x4062FF5192900E7D, !dbg !754
  %handler_result4 = call double @fAddHandlerDouble(double %11, double 0x40664250849B88E8), !dbg !755
  %12 = fmul double %7, %handler_result4, !dbg !755
  %handler_result5 = call double @fAddHandlerDouble(double %12, double 0x403EC0C2105D01C0), !dbg !756
  %13 = fmul double %7, %handler_result5, !dbg !756
  %handler_result6 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !757
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !91, metadata !DIExpression()), !dbg !748
  %14 = fdiv double %handler_result3, %handler_result6, !dbg !757
  call void @llvm.dbg.value(metadata double %14, metadata !92, metadata !DIExpression()), !dbg !748
  %15 = fdiv double %14, %5, !dbg !758
  %handler_result7 = call double @fAddHandlerDouble(double %5, double %15), !dbg !759
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !741
  tail call void @llvm.dbg.value(metadata double poison, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !741
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !741
  tail call void @llvm.dbg.value(metadata i32 0, metadata !740, metadata !DIExpression()), !dbg !741
  br label %17, !dbg !759

16:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !741
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !741
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1031, i32 noundef 4) #9, !dbg !760
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !739, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !741
  tail call void @llvm.dbg.value(metadata i32 4, metadata !740, metadata !DIExpression()), !dbg !741
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1208, i32 noundef 4) #9, !dbg !761
  br label %17, !dbg !761

17:                                               ; preds = %16, %3
  %18 = phi double [ %handler_result7, %3 ], [ 0.000000e+00, %16 ]
  ret double %18, !dbg !765
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_bessel_zero_J1(i32 noundef %0) local_unnamed_addr #6 !dbg !766 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !768, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i32 %0, metadata !102, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata ptr undef, metadata !103, metadata !DIExpression()), !dbg !772
  %2 = icmp eq i32 %0, 0, !dbg !774
  br i1 %2, label %16, label %3, !dbg !775

3:                                                ; preds = %1
  %4 = uitofp i32 %0 to double, !dbg !776
  %handler_result = call double @fAddHandlerDouble(double %4, double 2.500000e-01), !dbg !777
  %5 = fmul double %handler_result, 0x400921FB54442D18, !dbg !777
  call void @llvm.dbg.value(metadata double %5, metadata !104, metadata !DIExpression()), !dbg !778
  %6 = fmul double %5, %5, !dbg !779
  %7 = fdiv double 1.000000e+00, %6, !dbg !780
  call void @llvm.dbg.value(metadata double %7, metadata !107, metadata !DIExpression()), !dbg !778
  %8 = fmul double %7, 0x3FD7382FF85F1247, !dbg !781
  %handler_result1 = call double @fSubHandlerDouble(double 0x3FBECEAFA1D45FA5, double %8), !dbg !782
  %9 = fmul double %7, %handler_result1, !dbg !782
  %handler_result2 = call double @fAddHandlerDouble(double %9, double 0x3FA68004C5935ACC), !dbg !783
  %10 = fmul double %7, %handler_result2, !dbg !783
  %handler_result3 = call double @fAddHandlerDouble(double %10, double 0x3F5A1B352C1F3BF9), !dbg !784
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !108, metadata !DIExpression()), !dbg !778
  %handler_result4 = call double @fAddHandlerDouble(double %7, double 0xBFD4D750AA6CF95A), !dbg !785
  %11 = fmul double %7, %handler_result4, !dbg !785
  %handler_result5 = call double @fAddHandlerDouble(double %11, double 0xBFBE116DD53D3205), !dbg !786
  %12 = fmul double %7, %handler_result5, !dbg !786
  %handler_result6 = call double @fAddHandlerDouble(double %12, double 0xBF716778C81545E9), !dbg !787
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !109, metadata !DIExpression()), !dbg !778
  %13 = fdiv double %handler_result3, %handler_result6, !dbg !787
  call void @llvm.dbg.value(metadata double %13, metadata !110, metadata !DIExpression()), !dbg !778
  %14 = fmul double %7, %13, !dbg !788
  %handler_result7 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !789
  %15 = fmul double %5, %handler_result7, !dbg !789
  br label %16

16:                                               ; preds = %3, %1
  %17 = phi double [ %15, %3 ], [ 0.000000e+00, %1 ], !dbg !790
  tail call void @llvm.dbg.value(metadata double %17, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !771
  tail call void @llvm.dbg.value(metadata double poison, metadata !769, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !771
  tail call void @llvm.dbg.value(metadata i32 0, metadata !770, metadata !DIExpression()), !dbg !771
  ret double %17, !dbg !791
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_zero_Jnu(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !792 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !800
  call void @llvm.dbg.assign(metadata i1 undef, metadata !798, metadata !DIExpression(), metadata !800, metadata ptr %3, metadata !DIExpression()), !dbg !801
  tail call void @llvm.dbg.value(metadata double %0, metadata !796, metadata !DIExpression()), !dbg !801
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !797, metadata !DIExpression()), !dbg !801
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9, !dbg !802
  %4 = call i32 @gsl_sf_bessel_zero_Jnu_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !799, metadata !DIExpression()), !dbg !801
  %5 = icmp eq i32 %4, 0, !dbg !803
  br i1 %5, label %7, label %6, !dbg !802

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1218, i32 noundef %4) #9, !dbg !805
  br label %7, !dbg !805

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !802, !tbaa !254
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9, !dbg !808
  ret double %8, !dbg !808
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !809 double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!241 = !DILocation(line: 1047, column: 36, scope: !86)
!242 = !DILocation(line: 0, scope: !86)
!243 = !DILocation(line: 1048, column: 34, scope: !86)
!244 = !DILocation(line: 1048, column: 28, scope: !86)
!245 = !DILocation(line: 1049, column: 67, scope: !86)
!246 = !DILocation(line: 1049, column: 52, scope: !86)
!247 = !DILocation(line: 1049, column: 38, scope: !86)
!248 = !DILocation(line: 1050, column: 67, scope: !86)
!249 = !DILocation(line: 1050, column: 52, scope: !86)
!250 = !DILocation(line: 1050, column: 38, scope: !86)
!251 = !DILocation(line: 1051, column: 30, scope: !86)
!252 = !DILocation(line: 1052, column: 29, scope: !86)
!253 = !DILocation(line: 1052, column: 17, scope: !86)
!254 = !{!255, !256, i64 0}
!255 = !{!"gsl_sf_result_struct", !256, i64 0, !256, i64 8}
!256 = !{!"double", !257, i64 0}
!257 = !{!"omnipotent char", !258, i64 0}
!258 = !{!"Simple C/C++ TBAA"}
!259 = !DILocation(line: 1053, column: 32, scope: !86)
!260 = !DILocation(line: 1053, column: 19, scope: !86)
!261 = !DILocation(line: 1053, column: 13, scope: !86)
!262 = !DILocation(line: 1053, column: 17, scope: !86)
!263 = !{!255, !256, i64 8}
!264 = !DILocation(line: 0, scope: !87)
!265 = !DILocation(line: 1056, column: 1, scope: !70)
!266 = !DISubprogram(name: "gsl_error", scope: !29, file: !29, line: 77, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !269, !269, !30, !30}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!271 = !DILocation(line: 0, scope: !100)
!272 = !DILocation(line: 1064, column: 8, scope: !106)
!273 = !DILocation(line: 1064, column: 6, scope: !100)
!274 = !DILocation(line: 1083, column: 26, scope: !105)
!275 = !DILocation(line: 1083, column: 36, scope: !105)
!276 = !DILocation(line: 0, scope: !105)
!277 = !DILocation(line: 1084, column: 34, scope: !105)
!278 = !DILocation(line: 1084, column: 28, scope: !105)
!279 = !DILocation(line: 1085, column: 64, scope: !105)
!280 = !DILocation(line: 1085, column: 50, scope: !105)
!281 = !DILocation(line: 1085, column: 36, scope: !105)
!282 = !DILocation(line: 1086, column: 58, scope: !105)
!283 = !DILocation(line: 1086, column: 50, scope: !105)
!284 = !DILocation(line: 1086, column: 36, scope: !105)
!285 = !DILocation(line: 1087, column: 26, scope: !105)
!286 = !DILocation(line: 1088, column: 34, scope: !105)
!287 = !DILocation(line: 1088, column: 24, scope: !105)
!288 = !DILocation(line: 1089, column: 32, scope: !105)
!289 = !DILocation(line: 1089, column: 19, scope: !105)
!290 = !DILocation(line: 0, scope: !106)
!291 = !DILocation(line: 1092, column: 1, scope: !100)
!292 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_Jnu_e", scope: !2, file: !2, line: 1096, type: !293, scopeLine: 1097, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!30, !80, !73, !74}
!295 = !{!296, !297, !298, !299, !307, !308, !309, !310, !312, !313, !314, !315, !320, !321, !322, !323, !325, !326, !327, !328, !331, !332, !333, !334, !337, !338, !339, !341, !343, !344, !345}
!296 = !DILocalVariable(name: "nu", arg: 1, scope: !292, file: !2, line: 1096, type: !80)
!297 = !DILocalVariable(name: "s", arg: 2, scope: !292, file: !2, line: 1096, type: !73)
!298 = !DILocalVariable(name: "result", arg: 3, scope: !292, file: !2, line: 1096, type: !74)
!299 = !DILocalVariable(name: "c", scope: !300, file: !2, line: 1122, type: !195)
!300 = distinct !DILexicalBlock(scope: !301, file: !2, line: 1121, column: 18)
!301 = distinct !DILexicalBlock(scope: !302, file: !2, line: 1121, column: 8)
!302 = distinct !DILexicalBlock(scope: !303, file: !2, line: 1117, column: 19)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 1117, column: 11)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 1111, column: 11)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 1103, column: 11)
!306 = distinct !DILexicalBlock(scope: !292, file: !2, line: 1100, column: 6)
!307 = !DILocalVariable(name: "L", scope: !300, file: !2, line: 1123, type: !186)
!308 = !DILocalVariable(name: "arg", scope: !300, file: !2, line: 1124, type: !88)
!309 = !DILocalVariable(name: "chb", scope: !300, file: !2, line: 1125, type: !88)
!310 = !DILocalVariable(name: "c", scope: !311, file: !2, line: 1130, type: !195)
!311 = distinct !DILexicalBlock(scope: !301, file: !2, line: 1129, column: 10)
!312 = !DILocalVariable(name: "L", scope: !311, file: !2, line: 1131, type: !186)
!313 = !DILocalVariable(name: "arg", scope: !311, file: !2, line: 1132, type: !88)
!314 = !DILocalVariable(name: "chb", scope: !311, file: !2, line: 1133, type: !88)
!315 = !DILocalVariable(name: "c", scope: !316, file: !2, line: 1142, type: !195)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 1141, column: 16)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 1141, column: 8)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 1139, column: 20)
!319 = distinct !DILexicalBlock(scope: !303, file: !2, line: 1139, column: 11)
!320 = !DILocalVariable(name: "L", scope: !316, file: !2, line: 1143, type: !186)
!321 = !DILocalVariable(name: "arg", scope: !316, file: !2, line: 1144, type: !88)
!322 = !DILocalVariable(name: "chb", scope: !316, file: !2, line: 1145, type: !88)
!323 = !DILocalVariable(name: "c", scope: !324, file: !2, line: 1150, type: !195)
!324 = distinct !DILexicalBlock(scope: !317, file: !2, line: 1149, column: 10)
!325 = !DILocalVariable(name: "L", scope: !324, file: !2, line: 1151, type: !186)
!326 = !DILocalVariable(name: "arg", scope: !324, file: !2, line: 1152, type: !88)
!327 = !DILocalVariable(name: "chb", scope: !324, file: !2, line: 1153, type: !88)
!328 = !DILocalVariable(name: "c", scope: !329, file: !2, line: 1168, type: !195)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 1166, column: 34)
!330 = distinct !DILexicalBlock(scope: !319, file: !2, line: 1166, column: 11)
!331 = !DILocalVariable(name: "L", scope: !329, file: !2, line: 1169, type: !186)
!332 = !DILocalVariable(name: "arg", scope: !329, file: !2, line: 1170, type: !88)
!333 = !DILocalVariable(name: "chb", scope: !329, file: !2, line: 1171, type: !88)
!334 = !DILocalVariable(name: "beta", scope: !335, file: !2, line: 1178, type: !88)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 1176, column: 25)
!336 = distinct !DILexicalBlock(scope: !330, file: !2, line: 1176, column: 11)
!337 = !DILocalVariable(name: "mc", scope: !335, file: !2, line: 1179, type: !88)
!338 = !DILocalVariable(name: "rat12", scope: !335, file: !2, line: 1180, type: !75)
!339 = !DILocalVariable(name: "as", scope: !340, file: !2, line: 1189, type: !75)
!340 = distinct !DILexicalBlock(scope: !336, file: !2, line: 1187, column: 8)
!341 = !DILocalVariable(name: "stat_as", scope: !340, file: !2, line: 1190, type: !342)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!343 = !DILocalVariable(name: "minus_zeta", scope: !340, file: !2, line: 1191, type: !88)
!344 = !DILocalVariable(name: "z", scope: !340, file: !2, line: 1192, type: !88)
!345 = !DILocalVariable(name: "f1", scope: !340, file: !2, line: 1193, type: !88)
!346 = distinct !DIAssignID()
!347 = !DILocation(line: 0, scope: !335)
!348 = distinct !DIAssignID()
!349 = !DILocation(line: 0, scope: !340)
!350 = !DILocation(line: 0, scope: !292)
!351 = !DILocation(line: 1100, column: 9, scope: !306)
!352 = !DILocation(line: 1100, column: 6, scope: !292)
!353 = !DILocation(line: 1101, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !2, line: 1101, column: 5)
!355 = distinct !DILexicalBlock(scope: !306, file: !2, line: 1100, column: 18)
!356 = !DILocation(line: 1101, column: 5, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !2, line: 1101, column: 5)
!358 = !DILocation(line: 1103, column: 13, scope: !305)
!359 = !DILocation(line: 1103, column: 11, scope: !306)
!360 = !DILocation(line: 1106, column: 12, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !2, line: 1106, column: 9)
!362 = distinct !DILexicalBlock(scope: !305, file: !2, line: 1103, column: 19)
!363 = !DILocation(line: 1105, column: 17, scope: !362)
!364 = !DILocation(line: 1106, column: 9, scope: !362)
!365 = !DILocation(line: 1107, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 1107, column: 7)
!367 = distinct !DILexicalBlock(scope: !361, file: !2, line: 1106, column: 20)
!368 = !DILocation(line: 1111, column: 14, scope: !304)
!369 = !DILocation(line: 1111, column: 11, scope: !305)
!370 = !DILocation(line: 1114, column: 17, scope: !371)
!371 = distinct !DILexicalBlock(scope: !304, file: !2, line: 1111, column: 21)
!372 = !DILocation(line: 1115, column: 5, scope: !373)
!373 = distinct !DILexicalBlock(scope: !371, file: !2, line: 1115, column: 5)
!374 = !DILocation(line: 1117, column: 13, scope: !303)
!375 = !DILocation(line: 1117, column: 11, scope: !304)
!376 = !DILocation(line: 1121, column: 11, scope: !301)
!377 = !DILocation(line: 1121, column: 8, scope: !302)
!378 = !DILocation(line: 0, scope: !300)
!379 = !DILocation(line: 1124, column: 28, scope: !300)
!380 = !DILocalVariable(name: "c", arg: 1, scope: !381, file: !2, line: 926, type: !195)
!381 = distinct !DISubprogram(name: "clenshaw", scope: !2, file: !2, line: 926, type: !382, scopeLine: 927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!80, !195, !30, !80}
!384 = !{!380, !385, !386, !387, !388, !389, !390}
!385 = !DILocalVariable(name: "N", arg: 2, scope: !381, file: !2, line: 926, type: !30)
!386 = !DILocalVariable(name: "u", arg: 3, scope: !381, file: !2, line: 926, type: !80)
!387 = !DILocalVariable(name: "B_np1", scope: !381, file: !2, line: 928, type: !80)
!388 = !DILocalVariable(name: "B_n", scope: !381, file: !2, line: 929, type: !80)
!389 = !DILocalVariable(name: "B_nm1", scope: !381, file: !2, line: 930, type: !80)
!390 = !DILocalVariable(name: "n", scope: !381, file: !2, line: 931, type: !30)
!391 = !DILocation(line: 0, scope: !381, inlinedAt: !392)
!392 = distinct !DILocation(line: 1125, column: 26, scope: !300)
!393 = !DILocation(line: 933, column: 29, scope: !394, inlinedAt: !392)
!394 = distinct !DILexicalBlock(scope: !395, file: !2, line: 932, column: 22)
!395 = distinct !DILexicalBlock(scope: !396, file: !2, line: 932, column: 3)
!396 = distinct !DILexicalBlock(scope: !381, file: !2, line: 932, column: 3)
!397 = !DILocation(line: 933, column: 43, scope: !394, inlinedAt: !392)
!398 = !DILocation(line: 937, column: 27, scope: !381, inlinedAt: !392)
!399 = !DILocation(line: 1126, column: 19, scope: !300)
!400 = !DILocation(line: 1127, column: 29, scope: !300)
!401 = !DILocation(line: 1127, column: 15, scope: !300)
!402 = !DILocation(line: 1127, column: 19, scope: !300)
!403 = !DILocation(line: 1128, column: 5, scope: !300)
!404 = !DILocation(line: 0, scope: !311)
!405 = !DILocation(line: 1132, column: 33, scope: !311)
!406 = !DILocation(line: 1132, column: 26, scope: !311)
!407 = !DILocation(line: 0, scope: !381, inlinedAt: !408)
!408 = distinct !DILocation(line: 1133, column: 26, scope: !311)
!409 = !DILocation(line: 933, column: 29, scope: !394, inlinedAt: !408)
!410 = !DILocation(line: 933, column: 43, scope: !394, inlinedAt: !408)
!411 = !DILocation(line: 937, column: 27, scope: !381, inlinedAt: !408)
!412 = !DILocation(line: 1134, column: 24, scope: !311)
!413 = !DILocation(line: 1134, column: 19, scope: !311)
!414 = !DILocation(line: 1135, column: 29, scope: !311)
!415 = !DILocation(line: 1135, column: 15, scope: !311)
!416 = !DILocation(line: 1135, column: 19, scope: !311)
!417 = !DILocation(line: 1139, column: 13, scope: !319)
!418 = !DILocation(line: 0, scope: !319)
!419 = !DILocation(line: 1139, column: 11, scope: !303)
!420 = !DILocation(line: 1141, column: 11, scope: !317)
!421 = !DILocation(line: 0, scope: !317)
!422 = !DILocation(line: 1141, column: 8, scope: !318)
!423 = !DILocation(line: 1142, column: 26, scope: !316)
!424 = !{!425, !425, i64 0}
!425 = !{!"any pointer", !257, i64 0}
!426 = !DILocation(line: 0, scope: !316)
!427 = !DILocation(line: 1143, column: 26, scope: !316)
!428 = !{!429, !429, i64 0}
!429 = !{!"long", !257, i64 0}
!430 = !DILocation(line: 1144, column: 28, scope: !316)
!431 = !DILocation(line: 1145, column: 38, scope: !316)
!432 = !DILocation(line: 0, scope: !381, inlinedAt: !433)
!433 = distinct !DILocation(line: 1145, column: 26, scope: !316)
!434 = !DILocation(line: 929, column: 18, scope: !381, inlinedAt: !433)
!435 = !{!256, !256, i64 0}
!436 = !DILocation(line: 932, column: 7, scope: !396, inlinedAt: !433)
!437 = !DILocation(line: 932, column: 13, scope: !395, inlinedAt: !433)
!438 = !DILocation(line: 932, column: 3, scope: !396, inlinedAt: !433)
!439 = !DILocation(line: 933, column: 29, scope: !394, inlinedAt: !433)
!440 = !DILocation(line: 933, column: 45, scope: !394, inlinedAt: !433)
!441 = !DILocation(line: 932, column: 18, scope: !395, inlinedAt: !433)
!442 = distinct !{!442, !443}
!443 = !{!"llvm.loop.unroll.disable"}
!444 = distinct !{!444, !438, !445, !446}
!445 = !DILocation(line: 936, column: 3, scope: !396, inlinedAt: !433)
!446 = !{!"llvm.loop.mustprogress"}
!447 = !DILocation(line: 937, column: 27, scope: !381, inlinedAt: !433)
!448 = !DILocation(line: 1146, column: 19, scope: !316)
!449 = !DILocation(line: 1147, column: 29, scope: !316)
!450 = !DILocation(line: 1147, column: 15, scope: !316)
!451 = !DILocation(line: 1147, column: 19, scope: !316)
!452 = !DILocation(line: 1148, column: 5, scope: !316)
!453 = !DILocation(line: 1150, column: 26, scope: !324)
!454 = !DILocation(line: 0, scope: !324)
!455 = !DILocation(line: 1151, column: 26, scope: !324)
!456 = !DILocation(line: 1152, column: 31, scope: !324)
!457 = !DILocation(line: 1152, column: 26, scope: !324)
!458 = !DILocation(line: 1153, column: 38, scope: !324)
!459 = !DILocation(line: 0, scope: !381, inlinedAt: !460)
!460 = distinct !DILocation(line: 1153, column: 26, scope: !324)
!461 = !DILocation(line: 929, column: 18, scope: !381, inlinedAt: !460)
!462 = !DILocation(line: 932, column: 7, scope: !396, inlinedAt: !460)
!463 = !DILocation(line: 932, column: 13, scope: !395, inlinedAt: !460)
!464 = !DILocation(line: 932, column: 3, scope: !396, inlinedAt: !460)
!465 = !DILocation(line: 933, column: 29, scope: !394, inlinedAt: !460)
!466 = !DILocation(line: 933, column: 45, scope: !394, inlinedAt: !460)
!467 = !DILocation(line: 932, column: 18, scope: !395, inlinedAt: !460)
!468 = distinct !{!468, !443}
!469 = distinct !{!469, !464, !470, !446}
!470 = !DILocation(line: 936, column: 3, scope: !396, inlinedAt: !460)
!471 = !DILocation(line: 937, column: 27, scope: !381, inlinedAt: !460)
!472 = !DILocation(line: 1154, column: 24, scope: !324)
!473 = !DILocation(line: 1154, column: 19, scope: !324)
!474 = !DILocation(line: 1155, column: 29, scope: !324)
!475 = !DILocation(line: 1155, column: 15, scope: !324)
!476 = !DILocation(line: 1160, column: 12, scope: !477)
!477 = distinct !DILexicalBlock(scope: !324, file: !2, line: 1160, column: 10)
!478 = !DILocation(line: 1160, column: 10, scope: !324)
!479 = !DILocation(line: 1166, column: 18, scope: !330)
!480 = !DILocation(line: 1166, column: 13, scope: !330)
!481 = !DILocation(line: 1166, column: 22, scope: !330)
!482 = !DILocation(line: 1168, column: 24, scope: !329)
!483 = !DILocation(line: 0, scope: !329)
!484 = !DILocation(line: 1169, column: 24, scope: !329)
!485 = !DILocation(line: 1170, column: 31, scope: !329)
!486 = !DILocation(line: 1170, column: 26, scope: !329)
!487 = !DILocation(line: 1171, column: 36, scope: !329)
!488 = !DILocation(line: 0, scope: !381, inlinedAt: !489)
!489 = distinct !DILocation(line: 1171, column: 24, scope: !329)
!490 = !DILocation(line: 929, column: 18, scope: !381, inlinedAt: !489)
!491 = !DILocation(line: 932, column: 7, scope: !396, inlinedAt: !489)
!492 = !DILocation(line: 932, column: 13, scope: !395, inlinedAt: !489)
!493 = !DILocation(line: 932, column: 3, scope: !396, inlinedAt: !489)
!494 = !DILocation(line: 933, column: 29, scope: !394, inlinedAt: !489)
!495 = !DILocation(line: 933, column: 45, scope: !394, inlinedAt: !489)
!496 = !DILocation(line: 932, column: 18, scope: !395, inlinedAt: !489)
!497 = distinct !{!497, !443}
!498 = distinct !{!498, !493, !499, !446}
!499 = !DILocation(line: 936, column: 3, scope: !396, inlinedAt: !489)
!500 = !DILocation(line: 937, column: 27, scope: !381, inlinedAt: !489)
!501 = !DILocation(line: 1172, column: 17, scope: !329)
!502 = !DILocation(line: 1173, column: 27, scope: !329)
!503 = !DILocation(line: 1173, column: 13, scope: !329)
!504 = !DILocation(line: 1173, column: 17, scope: !329)
!505 = !DILocation(line: 1176, column: 19, scope: !336)
!506 = !DILocation(line: 1176, column: 13, scope: !336)
!507 = !DILocation(line: 0, scope: !336)
!508 = !DILocation(line: 1176, column: 11, scope: !330)
!509 = !DILocation(line: 1178, column: 37, scope: !335)
!510 = !DILocation(line: 1178, column: 45, scope: !335)
!511 = !DILocation(line: 1179, column: 47, scope: !335)
!512 = !DILocation(line: 1179, column: 50, scope: !335)
!513 = !DILocation(line: 1179, column: 25, scope: !335)
!514 = !DILocation(line: 1180, column: 5, scope: !335)
!515 = !DILocation(line: 1181, column: 24, scope: !335)
!516 = !DILocation(line: 1181, column: 5, scope: !335)
!517 = !DILocation(line: 1182, column: 25, scope: !335)
!518 = !DILocation(line: 1182, column: 18, scope: !335)
!519 = !DILocation(line: 1183, column: 26, scope: !335)
!520 = !DILocation(line: 1183, column: 24, scope: !335)
!521 = !DILocation(line: 1183, column: 45, scope: !335)
!522 = !DILocation(line: 1183, column: 37, scope: !335)
!523 = !DILocation(line: 1184, column: 47, scope: !335)
!524 = !DILocation(line: 1184, column: 26, scope: !335)
!525 = !DILocation(line: 1184, column: 24, scope: !335)
!526 = !DILocation(line: 1184, column: 17, scope: !335)
!527 = !DILocation(line: 1186, column: 3, scope: !336)
!528 = !DILocation(line: 1189, column: 5, scope: !340)
!529 = !DILocation(line: 1190, column: 25, scope: !340)
!530 = !DILocation(line: 1191, column: 32, scope: !340)
!531 = !DILocation(line: 1191, column: 31, scope: !340)
!532 = !DILocation(line: 1191, column: 54, scope: !340)
!533 = !DILocation(line: 1191, column: 49, scope: !340)
!534 = !DILocation(line: 1192, column: 23, scope: !340)
!535 = !DILocation(line: 1193, column: 23, scope: !340)
!536 = !DILocation(line: 1194, column: 36, scope: !340)
!537 = !DILocation(line: 1194, column: 32, scope: !340)
!538 = !DILocation(line: 1194, column: 23, scope: !340)
!539 = !DILocation(line: 1194, column: 18, scope: !340)
!540 = !DILocation(line: 1195, column: 32, scope: !340)
!541 = !DILocation(line: 1195, column: 25, scope: !340)
!542 = !DILocation(line: 1196, column: 44, scope: !340)
!543 = !DILocation(line: 1196, column: 42, scope: !340)
!544 = !DILocation(line: 1196, column: 17, scope: !340)
!545 = !DILocation(line: 1198, column: 3, scope: !336)
!546 = !DILocation(line: 0, scope: !306)
!547 = !DILocation(line: 1199, column: 1, scope: !292)
!548 = !DISubprogram(name: "pow", scope: !549, file: !549, line: 140, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!549 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!550 = !DISubroutineType(types: !551)
!551 = !{!80, !80, !80}
!552 = distinct !DISubprogram(name: "mcmahon_correction", scope: !2, file: !2, line: 951, type: !553, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !555)
!553 = !DISubroutineType(types: !554)
!554 = !{!80, !88, !88}
!555 = !{!556, !557, !558, !559, !560, !563, !564, !565, !566, !567, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!556 = !DILocalVariable(name: "mu", arg: 1, scope: !552, file: !2, line: 951, type: !88)
!557 = !DILocalVariable(name: "beta", arg: 2, scope: !552, file: !2, line: 951, type: !88)
!558 = !DILocalVariable(name: "eb", scope: !552, file: !2, line: 953, type: !88)
!559 = !DILocalVariable(name: "ebsq", scope: !552, file: !2, line: 954, type: !88)
!560 = !DILocalVariable(name: "term1", scope: !561, file: !2, line: 958, type: !88)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 956, column: 28)
!562 = distinct !DILexicalBlock(scope: !552, file: !2, line: 956, column: 6)
!563 = !DILocalVariable(name: "term2", scope: !561, file: !2, line: 959, type: !88)
!564 = !DILocalVariable(name: "term3", scope: !561, file: !2, line: 960, type: !88)
!565 = !DILocalVariable(name: "term4", scope: !561, file: !2, line: 961, type: !88)
!566 = !DILocalVariable(name: "term5", scope: !561, file: !2, line: 962, type: !88)
!567 = !DILocalVariable(name: "mi", scope: !568, file: !2, line: 970, type: !88)
!568 = distinct !DILexicalBlock(scope: !562, file: !2, line: 965, column: 8)
!569 = !DILocalVariable(name: "r", scope: !568, file: !2, line: 971, type: !88)
!570 = !DILocalVariable(name: "n2", scope: !568, file: !2, line: 972, type: !88)
!571 = !DILocalVariable(name: "n3", scope: !568, file: !2, line: 973, type: !88)
!572 = !DILocalVariable(name: "n4", scope: !568, file: !2, line: 974, type: !88)
!573 = !DILocalVariable(name: "n5", scope: !568, file: !2, line: 975, type: !88)
!574 = !DILocalVariable(name: "n6", scope: !568, file: !2, line: 976, type: !88)
!575 = !DILocalVariable(name: "term1", scope: !568, file: !2, line: 977, type: !88)
!576 = !DILocalVariable(name: "term2", scope: !568, file: !2, line: 978, type: !88)
!577 = !DILocalVariable(name: "term3", scope: !568, file: !2, line: 979, type: !88)
!578 = !DILocalVariable(name: "term4", scope: !568, file: !2, line: 980, type: !88)
!579 = !DILocalVariable(name: "term5", scope: !568, file: !2, line: 981, type: !88)
!580 = !DILocalVariable(name: "term6", scope: !568, file: !2, line: 982, type: !88)
!581 = !DILocation(line: 0, scope: !552)
!582 = !DILocation(line: 953, column: 26, scope: !552)
!583 = !DILocation(line: 954, column: 25, scope: !552)
!584 = !DILocation(line: 956, column: 9, scope: !562)
!585 = !DILocation(line: 956, column: 6, scope: !552)
!586 = !DILocation(line: 958, column: 30, scope: !561)
!587 = !DILocation(line: 0, scope: !561)
!588 = !DILocation(line: 959, column: 38, scope: !561)
!589 = !DILocation(line: 959, column: 43, scope: !561)
!590 = !DILocation(line: 959, column: 35, scope: !561)
!591 = !DILocation(line: 960, column: 44, scope: !561)
!592 = !DILocation(line: 960, column: 49, scope: !561)
!593 = !DILocation(line: 960, column: 54, scope: !561)
!594 = !DILocation(line: 960, column: 38, scope: !561)
!595 = !DILocation(line: 961, column: 48, scope: !561)
!596 = !DILocation(line: 961, column: 53, scope: !561)
!597 = !DILocation(line: 961, column: 58, scope: !561)
!598 = !DILocation(line: 961, column: 63, scope: !561)
!599 = !DILocation(line: 961, column: 41, scope: !561)
!600 = !DILocation(line: 962, column: 52, scope: !561)
!601 = !DILocation(line: 962, column: 57, scope: !561)
!602 = !DILocation(line: 962, column: 62, scope: !561)
!603 = !DILocation(line: 962, column: 67, scope: !561)
!604 = !DILocation(line: 962, column: 72, scope: !561)
!605 = !DILocation(line: 962, column: 45, scope: !561)
!606 = !DILocation(line: 963, column: 37, scope: !561)
!607 = !DILocation(line: 963, column: 45, scope: !561)
!608 = !DILocation(line: 963, column: 53, scope: !561)
!609 = !DILocation(line: 963, column: 21, scope: !561)
!610 = !DILocation(line: 970, column: 28, scope: !568)
!611 = !DILocation(line: 0, scope: !568)
!612 = !DILocation(line: 971, column: 25, scope: !568)
!613 = !DILocation(line: 972, column: 47, scope: !568)
!614 = !DILocation(line: 972, column: 34, scope: !568)
!615 = !DILocation(line: 973, column: 60, scope: !568)
!616 = !DILocation(line: 973, column: 64, scope: !568)
!617 = !DILocation(line: 973, column: 34, scope: !568)
!618 = !DILocation(line: 974, column: 81, scope: !568)
!619 = !DILocation(line: 974, column: 85, scope: !568)
!620 = !DILocation(line: 974, column: 89, scope: !568)
!621 = !DILocation(line: 974, column: 34, scope: !568)
!622 = !DILocation(line: 975, column: 104, scope: !568)
!623 = !DILocation(line: 975, column: 108, scope: !568)
!624 = !DILocation(line: 975, column: 112, scope: !568)
!625 = !DILocation(line: 975, column: 116, scope: !568)
!626 = !DILocation(line: 975, column: 35, scope: !568)
!627 = !DILocation(line: 976, column: 137, scope: !568)
!628 = !DILocation(line: 976, column: 141, scope: !568)
!629 = !DILocation(line: 976, column: 145, scope: !568)
!630 = !DILocation(line: 976, column: 149, scope: !568)
!631 = !DILocation(line: 976, column: 153, scope: !568)
!632 = !DILocation(line: 976, column: 37, scope: !568)
!633 = !DILocation(line: 977, column: 37, scope: !568)
!634 = !DILocation(line: 978, column: 32, scope: !568)
!635 = !DILocation(line: 978, column: 37, scope: !568)
!636 = !DILocation(line: 979, column: 32, scope: !568)
!637 = !DILocation(line: 979, column: 37, scope: !568)
!638 = !DILocation(line: 979, column: 40, scope: !568)
!639 = !DILocation(line: 980, column: 32, scope: !568)
!640 = !DILocation(line: 980, column: 37, scope: !568)
!641 = !DILocation(line: 980, column: 40, scope: !568)
!642 = !DILocation(line: 980, column: 42, scope: !568)
!643 = !DILocation(line: 981, column: 32, scope: !568)
!644 = !DILocation(line: 981, column: 37, scope: !568)
!645 = !DILocation(line: 981, column: 40, scope: !568)
!646 = !DILocation(line: 981, column: 42, scope: !568)
!647 = !DILocation(line: 981, column: 44, scope: !568)
!648 = !DILocation(line: 982, column: 32, scope: !568)
!649 = !DILocation(line: 982, column: 37, scope: !568)
!650 = !DILocation(line: 982, column: 40, scope: !568)
!651 = !DILocation(line: 982, column: 42, scope: !568)
!652 = !DILocation(line: 982, column: 44, scope: !568)
!653 = !DILocation(line: 982, column: 46, scope: !568)
!654 = !DILocation(line: 983, column: 37, scope: !568)
!655 = !DILocation(line: 983, column: 45, scope: !568)
!656 = !DILocation(line: 983, column: 53, scope: !568)
!657 = !DILocation(line: 983, column: 61, scope: !568)
!658 = !DILocation(line: 983, column: 21, scope: !568)
!659 = !DILocation(line: 0, scope: !562)
!660 = !DILocation(line: 985, column: 1, scope: !552)
!661 = !DISubprogram(name: "gsl_sf_pow_int_e", scope: !662, file: !662, line: 43, type: !663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!662 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!663 = !DISubroutineType(types: !664)
!664 = !{!30, !80, !30, !74}
!665 = !DISubprogram(name: "gsl_sf_airy_zero_Ai_e", scope: !666, file: !666, line: 115, type: !71, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!666 = !DIFile(filename: "../gsl/gsl_sf_airy.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0902d390a487a55f5b5ea11d3d660eab")
!667 = !DISubprogram(name: "gsl_sf_bessel_Olver_zofmzeta", scope: !668, file: !668, line: 30, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!668 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!669 = !DISubroutineType(types: !670)
!670 = !{!80, !80}
!671 = distinct !DISubprogram(name: "olver_f1", scope: !2, file: !2, line: 1015, type: !550, scopeLine: 1016, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !672)
!672 = !{!673, !674, !675, !676}
!673 = !DILocalVariable(name: "z", arg: 1, scope: !671, file: !2, line: 1015, type: !80)
!674 = !DILocalVariable(name: "minus_zeta", arg: 2, scope: !671, file: !2, line: 1015, type: !80)
!675 = !DILocalVariable(name: "b0", scope: !671, file: !2, line: 1017, type: !88)
!676 = !DILocalVariable(name: "h2", scope: !671, file: !2, line: 1018, type: !88)
!677 = !DILocation(line: 0, scope: !671)
!678 = !DILocalVariable(name: "z", arg: 1, scope: !679, file: !2, line: 990, type: !80)
!679 = distinct !DISubprogram(name: "olver_b0", scope: !2, file: !2, line: 990, type: !550, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !680)
!680 = !{!678, !681, !682, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !696}
!681 = !DILocalVariable(name: "minus_zeta", arg: 2, scope: !679, file: !2, line: 990, type: !80)
!682 = !DILocalVariable(name: "a", scope: !683, file: !2, line: 993, type: !88)
!683 = distinct !DILexicalBlock(scope: !684, file: !2, line: 992, column: 16)
!684 = distinct !DILexicalBlock(scope: !679, file: !2, line: 992, column: 6)
!685 = !DILocalVariable(name: "c0", scope: !683, file: !2, line: 994, type: !88)
!686 = !DILocalVariable(name: "c1", scope: !683, file: !2, line: 995, type: !88)
!687 = !DILocalVariable(name: "c2", scope: !683, file: !2, line: 996, type: !88)
!688 = !DILocalVariable(name: "c3", scope: !683, file: !2, line: 997, type: !88)
!689 = !DILocalVariable(name: "c4", scope: !683, file: !2, line: 998, type: !88)
!690 = !DILocalVariable(name: "c5", scope: !683, file: !2, line: 999, type: !88)
!691 = !DILocalVariable(name: "c6", scope: !683, file: !2, line: 1000, type: !88)
!692 = !DILocalVariable(name: "c7", scope: !683, file: !2, line: 1001, type: !88)
!693 = !DILocalVariable(name: "c8", scope: !683, file: !2, line: 1002, type: !88)
!694 = !DILocalVariable(name: "abs_zeta", scope: !695, file: !2, line: 1006, type: !88)
!695 = distinct !DILexicalBlock(scope: !684, file: !2, line: 1005, column: 8)
!696 = !DILocalVariable(name: "t", scope: !695, file: !2, line: 1007, type: !88)
!697 = !DILocation(line: 0, scope: !679, inlinedAt: !698)
!698 = distinct !DILocation(line: 1017, column: 21, scope: !671)
!699 = !DILocation(line: 992, column: 8, scope: !684, inlinedAt: !698)
!700 = !DILocation(line: 992, column: 6, scope: !679, inlinedAt: !698)
!701 = !DILocation(line: 1003, column: 74, scope: !683, inlinedAt: !698)
!702 = !DILocation(line: 0, scope: !683, inlinedAt: !698)
!703 = !DILocation(line: 1003, column: 66, scope: !683, inlinedAt: !698)
!704 = !DILocation(line: 1003, column: 58, scope: !683, inlinedAt: !698)
!705 = !DILocation(line: 1003, column: 50, scope: !683, inlinedAt: !698)
!706 = !DILocation(line: 1003, column: 42, scope: !683, inlinedAt: !698)
!707 = !DILocation(line: 1003, column: 34, scope: !683, inlinedAt: !698)
!708 = !DILocation(line: 1003, column: 26, scope: !683, inlinedAt: !698)
!709 = !DILocation(line: 1003, column: 18, scope: !683, inlinedAt: !698)
!710 = !DILocation(line: 1018, column: 43, scope: !671)
!711 = !DILocation(line: 0, scope: !695, inlinedAt: !698)
!712 = !DILocation(line: 1007, column: 46, scope: !695, inlinedAt: !698)
!713 = !DILocation(line: 1007, column: 43, scope: !695, inlinedAt: !698)
!714 = !DILocation(line: 1007, column: 29, scope: !695, inlinedAt: !698)
!715 = !DILocation(line: 1007, column: 28, scope: !695, inlinedAt: !698)
!716 = !DILocation(line: 1007, column: 25, scope: !695, inlinedAt: !698)
!717 = !DILocation(line: 1008, column: 22, scope: !695, inlinedAt: !698)
!718 = !DILocation(line: 1008, column: 31, scope: !695, inlinedAt: !698)
!719 = !DILocation(line: 1008, column: 16, scope: !695, inlinedAt: !698)
!720 = !DILocation(line: 1008, column: 56, scope: !695, inlinedAt: !698)
!721 = !DILocation(line: 1008, column: 58, scope: !695, inlinedAt: !698)
!722 = !DILocation(line: 1008, column: 45, scope: !695, inlinedAt: !698)
!723 = !DILocation(line: 1008, column: 68, scope: !695, inlinedAt: !698)
!724 = !DILocation(line: 1008, column: 67, scope: !695, inlinedAt: !698)
!725 = !DILocation(line: 1008, column: 61, scope: !695, inlinedAt: !698)
!726 = !DILocation(line: 0, scope: !684, inlinedAt: !698)
!727 = !DILocation(line: 1018, column: 29, scope: !671)
!728 = !DILocation(line: 1018, column: 40, scope: !671)
!729 = !DILocation(line: 1018, column: 21, scope: !671)
!730 = !DILocation(line: 1019, column: 14, scope: !671)
!731 = !DILocation(line: 1019, column: 18, scope: !671)
!732 = !DILocation(line: 1019, column: 23, scope: !671)
!733 = !DILocation(line: 1019, column: 3, scope: !671)
!734 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J0", scope: !2, file: !2, line: 1206, type: !735, scopeLine: 1207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!80, !73}
!737 = !{!738, !739, !740}
!738 = !DILocalVariable(name: "s", arg: 1, scope: !734, file: !2, line: 1206, type: !73)
!739 = !DILocalVariable(name: "result", scope: !734, file: !2, line: 1208, type: !75)
!740 = !DILocalVariable(name: "status", scope: !734, file: !2, line: 1208, type: !30)
!741 = !DILocation(line: 0, scope: !734)
!742 = !DILocation(line: 0, scope: !70, inlinedAt: !743)
!743 = distinct !DILocation(line: 1208, column: 3, scope: !734)
!744 = !DILocation(line: 1028, column: 8, scope: !87, inlinedAt: !743)
!745 = !DILocation(line: 1028, column: 6, scope: !70, inlinedAt: !743)
!746 = !DILocation(line: 1047, column: 26, scope: !86, inlinedAt: !743)
!747 = !DILocation(line: 1047, column: 36, scope: !86, inlinedAt: !743)
!748 = !DILocation(line: 0, scope: !86, inlinedAt: !743)
!749 = !DILocation(line: 1048, column: 34, scope: !86, inlinedAt: !743)
!750 = !DILocation(line: 1048, column: 28, scope: !86, inlinedAt: !743)
!751 = !DILocation(line: 1049, column: 67, scope: !86, inlinedAt: !743)
!752 = !DILocation(line: 1049, column: 52, scope: !86, inlinedAt: !743)
!753 = !DILocation(line: 1049, column: 38, scope: !86, inlinedAt: !743)
!754 = !DILocation(line: 1050, column: 67, scope: !86, inlinedAt: !743)
!755 = !DILocation(line: 1050, column: 52, scope: !86, inlinedAt: !743)
!756 = !DILocation(line: 1050, column: 38, scope: !86, inlinedAt: !743)
!757 = !DILocation(line: 1051, column: 30, scope: !86, inlinedAt: !743)
!758 = !DILocation(line: 1052, column: 29, scope: !86, inlinedAt: !743)
!759 = !DILocation(line: 1208, column: 3, scope: !734)
!760 = !DILocation(line: 1031, column: 5, scope: !239, inlinedAt: !743)
!761 = !DILocation(line: 1208, column: 3, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !2, line: 1208, column: 3)
!763 = distinct !DILexicalBlock(scope: !764, file: !2, line: 1208, column: 3)
!764 = distinct !DILexicalBlock(scope: !734, file: !2, line: 1208, column: 3)
!765 = !DILocation(line: 1209, column: 1, scope: !734)
!766 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_J1", scope: !2, file: !2, line: 1211, type: !735, scopeLine: 1212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !767)
!767 = !{!768, !769, !770}
!768 = !DILocalVariable(name: "s", arg: 1, scope: !766, file: !2, line: 1211, type: !73)
!769 = !DILocalVariable(name: "result", scope: !766, file: !2, line: 1213, type: !75)
!770 = !DILocalVariable(name: "status", scope: !766, file: !2, line: 1213, type: !30)
!771 = !DILocation(line: 0, scope: !766)
!772 = !DILocation(line: 0, scope: !100, inlinedAt: !773)
!773 = distinct !DILocation(line: 1213, column: 3, scope: !766)
!774 = !DILocation(line: 1064, column: 8, scope: !106, inlinedAt: !773)
!775 = !DILocation(line: 1064, column: 6, scope: !100, inlinedAt: !773)
!776 = !DILocation(line: 1083, column: 26, scope: !105, inlinedAt: !773)
!777 = !DILocation(line: 1083, column: 36, scope: !105, inlinedAt: !773)
!778 = !DILocation(line: 0, scope: !105, inlinedAt: !773)
!779 = !DILocation(line: 1084, column: 34, scope: !105, inlinedAt: !773)
!780 = !DILocation(line: 1084, column: 28, scope: !105, inlinedAt: !773)
!781 = !DILocation(line: 1085, column: 64, scope: !105, inlinedAt: !773)
!782 = !DILocation(line: 1085, column: 50, scope: !105, inlinedAt: !773)
!783 = !DILocation(line: 1085, column: 36, scope: !105, inlinedAt: !773)
!784 = !DILocation(line: 1086, column: 58, scope: !105, inlinedAt: !773)
!785 = !DILocation(line: 1086, column: 50, scope: !105, inlinedAt: !773)
!786 = !DILocation(line: 1086, column: 36, scope: !105, inlinedAt: !773)
!787 = !DILocation(line: 1087, column: 26, scope: !105, inlinedAt: !773)
!788 = !DILocation(line: 1088, column: 34, scope: !105, inlinedAt: !773)
!789 = !DILocation(line: 1088, column: 24, scope: !105, inlinedAt: !773)
!790 = !DILocation(line: 0, scope: !106, inlinedAt: !773)
!791 = !DILocation(line: 1214, column: 1, scope: !766)
!792 = distinct !DISubprogram(name: "gsl_sf_bessel_zero_Jnu", scope: !2, file: !2, line: 1216, type: !793, scopeLine: 1217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !795)
!793 = !DISubroutineType(types: !794)
!794 = !{!80, !80, !73}
!795 = !{!796, !797, !798, !799}
!796 = !DILocalVariable(name: "nu", arg: 1, scope: !792, file: !2, line: 1216, type: !80)
!797 = !DILocalVariable(name: "s", arg: 2, scope: !792, file: !2, line: 1216, type: !73)
!798 = !DILocalVariable(name: "result", scope: !792, file: !2, line: 1218, type: !75)
!799 = !DILocalVariable(name: "status", scope: !792, file: !2, line: 1218, type: !30)
!800 = distinct !DIAssignID()
!801 = !DILocation(line: 0, scope: !792)
!802 = !DILocation(line: 1218, column: 3, scope: !792)
!803 = !DILocation(line: 1218, column: 3, scope: !804)
!804 = distinct !DILexicalBlock(scope: !792, file: !2, line: 1218, column: 3)
!805 = !DILocation(line: 1218, column: 3, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !2, line: 1218, column: 3)
!807 = distinct !DILexicalBlock(scope: !804, file: !2, line: 1218, column: 3)
!808 = !DILocation(line: 1219, column: 1, scope: !792)
!809 = !DISubprogram(name: "sqrt", scope: !549, file: !549, line: 143, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
