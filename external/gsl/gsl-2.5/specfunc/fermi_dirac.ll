; ModuleID = 'fermi_dirac.c'
source_filename = "fermi_dirac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [14 x i8] c"fermi_dirac.c\00", align 1, !dbg !7
@fd_1_d_cs = internal global %struct.cheb_series_struct { ptr @fd_1_d_data, i32 29, double -1.000000e+00, double 1.000000e+00, i32 14 }, align 8, !dbg !12
@fd_1_e_cs = internal global %struct.cheb_series_struct { ptr @fd_1_e_data, i32 9, double -1.000000e+00, double 1.000000e+00, i32 4 }, align 8, !dbg !208
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !129
@fd_2_d_cs = internal global %struct.cheb_series_struct { ptr @fd_2_d_data, i32 29, double -1.000000e+00, double 1.000000e+00, i32 14 }, align 8, !dbg !231
@fd_2_e_cs = internal global %struct.cheb_series_struct { ptr @fd_2_e_data, i32 3, double -1.000000e+00, double 1.000000e+00, i32 3 }, align 8, !dbg !235
@fd_mhalf_d_cs = internal global %struct.cheb_series_struct { ptr @fd_mhalf_d_data, i32 29, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8, !dbg !262
@fd_half_d_cs = internal global %struct.cheb_series_struct { ptr @fd_half_d_data, i32 29, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8, !dbg !278
@fd_3half_d_cs = internal global %struct.cheb_series_struct { ptr @fd_3half_d_data, i32 24, double -1.000000e+00, double 1.000000e+00, i32 16 }, align 8, !dbg !294
@.str.3 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !134
@.str.4 = private unnamed_addr constant [36 x i8] c"gsl_sf_fermi_dirac_m1_e(x, &result)\00", align 1, !dbg !139
@.str.5 = private unnamed_addr constant [35 x i8] c"gsl_sf_fermi_dirac_0_e(x, &result)\00", align 1, !dbg !144
@.str.6 = private unnamed_addr constant [35 x i8] c"gsl_sf_fermi_dirac_1_e(x, &result)\00", align 1, !dbg !149
@.str.7 = private unnamed_addr constant [35 x i8] c"gsl_sf_fermi_dirac_2_e(x, &result)\00", align 1, !dbg !151
@.str.8 = private unnamed_addr constant [40 x i8] c"gsl_sf_fermi_dirac_int_e(j, x, &result)\00", align 1, !dbg !153
@.str.9 = private unnamed_addr constant [39 x i8] c"gsl_sf_fermi_dirac_mhalf_e(x, &result)\00", align 1, !dbg !158
@.str.10 = private unnamed_addr constant [38 x i8] c"gsl_sf_fermi_dirac_half_e(x, &result)\00", align 1, !dbg !163
@.str.11 = private unnamed_addr constant [39 x i8] c"gsl_sf_fermi_dirac_3half_e(x, &result)\00", align 1, !dbg !168
@.str.12 = private unnamed_addr constant [42 x i8] c"gsl_sf_fermi_dirac_inc_0_e(x, b, &result)\00", align 1, !dbg !170
@fd_1_a_data = internal unnamed_addr constant [22 x double] [double 0x3FFE51A6625307D3, double 0x3FE72923B39FC55B, double 1.250000e-01, double 0x3F84B2BA1AC3DAE9, double 0.000000e+00, double 0xBF0F7D5242126B8D, double 0.000000e+00, double 0x3EA6DF5A870DD001, double 0.000000e+00, double 0xBE4497ED1C5BF4D0, double 0.000000e+00, double 0x3DE4D2CC7BCAC3DC, double 0.000000e+00, double 0xBD86AE678F4ED67A, double 0.000000e+00, double 4.622700e-14, double 0.000000e+00, double 0xBCCF072B01ED1239, double 0.000000e+00, double 1.650000e-17, double 0.000000e+00, double -3.000000e-19], align 16, !dbg !187
@fd_1_b_data = internal unnamed_addr constant [22 x double] [double 0x4024D17A60C63EEE, double 0x400F3210458B6589, double 0x3FE06EAE7C44FE64, double 0x3F85BF46B9392E8B, double 0xBF59F5BD95237DDC, double 0x3F23279F01022B24, double 0xBEB79FB9A2131120, double 0xBEC24534CF110D04, double 0x3E9A449B770CF27A, double 0xBE599EA8B8192088, double 0xBE31C61E9736E9CB, double 0x3E160EF056F020DB, double 0xBDE3331D9DF4E961, double 0xBD9595A09C66F3D6, double 0x3D9359D27DAFA980, double -7.172910e-13, double 2.432000e-14, double 1.423000e-14, double -3.446000e-15, double 2.930000e-16, double 3.700000e-17, double -1.600000e-17], align 16, !dbg !194
@fd_1_c_data = internal unnamed_addr constant [23 x double] [double 0x404C63F7A0A31F57, double 0x403501D6DAF7D709, double 0x4001F7A74D212D0F, double 0x3F5C796F01346ABE, double 0xBF433D7E909ACE25, double 0x3F255FB511859B55, double 0xBF0403A971560471, double 0x3EE0088641113F16, double 0xBEB60960083DA41E, double 0x3E898092807CEDA9, double 0xBE56FE09C77CBB0B, double 0x3E154975BA176F1E, double 0x3DEE07194E841DF9, double 0xBDDBDB5DF20FDF75, double 0x3DBB51E337167A2F, double -4.730670e-12, double 7.355500e-13, double 0xBD3899D56E9A518F, double 4.850000e-15, double 1.230000e-15, double -5.600000e-16, double 1.400000e-16, double -3.000000e-17], align 16, !dbg !198
@fd_1_d_data = internal global [30 x double] [double 0x3FF033DDB35F77EA, double 0xBF79EECCAA91E0D3, double 0x3F6458C36C4CAB01, double 0xBF4CB80E548497FD, double 0x3F3317C7E8A18C5A, double 0xBF186DBA0E13742C, double 0x3EFE6CB0D7055CF9, double 0xBEE291EC2A6C03B6, double 0x3EC6510D74D71E99, double 0xBEAA7AACA9896CCD, double 0x3E8F14C9DBAA8581, double 0xBE72120DD15A0D37, double 0x3E54D5F3A856BFBF, double 0xBE37D712CA2194E5, double 0x3E1B160006F08AA9, double 0xBDFE934F7AD8CBDD, double 0x3DE1280A25F37781, double 0xBDC32731AFA2C722, double 0x3DA548E13E450012, double 0xBD878FB99B2E7B55, double 0x3D69FF4945E563D0, double 0xBD4C9C08E4A1C743, double 5.581150e-14, double -1.529870e-14, double 4.188600e-15, double -1.145800e-15, double 3.132000e-16, double -8.560000e-17, double 2.330000e-17, double -5.900000e-18], align 16, !dbg !203
@fd_1_e_data = internal global [10 x double] [double 0x3FF0059D5D859DA9, double 0x3F4DF1F2C89E2EE0, double 0x3F2DF1F2C89E2CF9, double -1.570000e-17, double -1.270000e-17, double 0xBC665DDE8E688BA6, double -6.900000e-18, double -4.600000e-18, double -2.900000e-18, double -1.700000e-18], align 16, !dbg !210
@fd_2_a_data = internal unnamed_addr constant [21 x double] [double 0x4001424934B74A67, double 0x3FEC51A6625307D3, double 0x3FC6D658CB34B5F0, double 0x3F95555555555555, double 0x3F54D2376D05ED55, double 0.000000e+00, double 0xBED53B351D746C75, double 0.000000e+00, double 0x3E6731BA3B7F55F7, double 0.000000e+00, double 0xBE00BC2D0B67EBC0, double 0.000000e+00, double 0x3D9C3CB2D02459D2, double 0.000000e+00, double 0xBD3A62DA0FC8A475, double 0.000000e+00, double 1.471500e-15, double 0.000000e+00, double -2.440000e-17, double 0.000000e+00, double 4.000000e-19], align 16, !dbg !215
@fd_2_b_data = internal unnamed_addr constant [22 x double] [double 0x4030821D3FDE9433, double 0x401DAFD73582E68B, double 0x3FF7553CBF1DA144, double 0x3FC07BA95B0F9023, double 0x3F6015FE2DE7DC66, double 0xBF2F1FCD2E79F7AD, double 0x3EF370B3D43E6FEB, double 0xBE89E0C06D9303B7, double 0xBE8B1AF33C712340, double 0x3E61B277F6471CFE, double 0xBE2032F4A4E3E701, double 0xBDF2BC34B96AE616, double 0x3DD62485F6AF2B69, double 0xBDA247EDB237A45F, double -2.244890e-13, double 2.187780e-13, double -3.429000e-14, double 1.225000e-15, double 5.810000e-16, double -1.370000e-16, double 1.200000e-17, double 1.000000e-18], align 16, !dbg !222
@fd_2_c_data = internal unnamed_addr constant [20 x double] [double 0x40651BE1ABDAB856, double 0x4054735DE0DCC964, double 0x402F82176FD9BB54, double 0x3FF1F8DB250A36BC, double 0x3F435A1A4742C98A, double 0xBF25965191D350C9, double 0x3F045F2CAD748764, double 0xBEE0909A17C82129, double 0x3EB773C5F296CE79, double 0xBE8CE7352C275FB9, double 0x3E5E6732B2E9BDB8, double 0xBE2956A5CBAC87A2, double 0x3DE7072B9EFC2A66, double 0x3DB890CBA9A68DBC, double -1.035130e-11, double 2.411170e-12, double -4.353100e-13, double 6.447000e-14, double -7.390000e-15, double 4.300000e-16], align 16, !dbg !226
@fd_2_d_data = internal global [30 x double] [double 0x3FD624CC9FDC3485, double 0xBF79EEEA9384E201, double 0x3F6458F7DB848E8C, double 0xBF4CB8B703530ED2, double 0x3F3318C17CD6E98A, double 0xBF187063961C7361, double 0x3EFE736CA9FB18E5, double 0xBEE299D7A789DC20, double 0x3EC66273C03437A7, double 0xBEAA9E87903182D1, double 0x3E8F5A63C5F61848, double 0xBE7251F5E8A8FE5D, double 0x3E55456E86CCD13F, double 0xBE38908D2E85A4F7, double 0x3E1C3D7BCF8B700D, double 0xBE002BE02D2A0278, double 0x3DE2762E51AFD15E, double 0xBDC504F537B5BCCE, double 0x3DA7E05A59EA1534, double 0xBD8B11680F4DF492, double 0x3D6EA21AB60A0765, double 0xBD514EB80D77200A, double 0x3D3387BD0E58F712, double 0xBD1602BA6062DD38, double 5.501620e-15, double -1.546570e-15, double 4.342900e-16, double -1.217800e-16, double 3.394000e-17, double -8.810000e-18], align 16, !dbg !233
@fd_2_e_data = internal global [4 x double] [double 0x3FD56BCACB6BCBF9, double 0x3F4DF1F2C89E2F9C, double 0x3F2DF1F2C89E2FAC, double 5.200000e-19], align 16, !dbg !237
@.str.13 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !242
@fd_mhalf_a_data = internal unnamed_addr constant [20 x double] [double 0x3FF442E233B626ED, double 0x3FD7AA99B72A537E, double 0x3F9C7B099EDE2259, double 0xBF6B4E67AE4F8786, double 0xBF3D15E8FC509F51, double 0x3F10293AA656C6CB, double 0x3EE25E6E740974DF, double 0xBEB52D82996B97BF, double 0xBE88A97A75AAB0BA, double 0x3E5CEFD31D486B4A, double 0x3E3113C0E3EF2FF2, double 0xBE0440D45F997738, double 0xBDD81D9A2929AFFA, double 0x3DACCF93C6EE2EA7, double 0x3D814265533430C9, double 0xBD54BAD696C72D52, double -4.432340e-14, double 6.681600e-15, double 1.008400e-15, double -1.561000e-16], align 16, !dbg !249
@fd_mhalf_b_data = internal unnamed_addr constant [20 x double] [double 0x400A2A9729949892, double 0x3FE296BCA1C5BCD5, double 0xBF9EA6527C59C141, double 0xBF55C55D3361F168, double 0x3F503CA5E6DEAC90, double 0xBF2629E73BA58559, double 0x3EDBA9F499318845, double 0x3ECE290E2F9931DE, double 0xBEAFA4E2B59E3E84, double 0x3E778245D738D5DB, double 0x3E46D106C6F3AFB9, double 0xBE354C262456F47B, double 0x3E089A621F9516E4, double 0x3D93D2AE437DAA06, double 0xBDBA0DAB50B159F9, double 0x3D959AAB3FB9801E, double 0xBD5471AE8834D033, double 0xBD3B006B8E9264CB, double 3.000280e-14, double -3.497000e-15], align 16, !dbg !253
@fd_mhalf_c_data = internal unnamed_addr constant [25 x double] [double 0x401750297D8CD53B, double 0x3FE5AE40C4AD67C9, double 0xBFA6801F6A35CBAF, double 0x3F77DC9475CD7CD0, double 0xBF4C56F65C867D0C, double 0x3F1CD72CF59C3283, double 0xBEDD3F878B7AAE46, double 0xBEBCCB4FFA92F588, double 0x3EACD9B9AA0FA34D, double 0xBE8F481D237D2070, double 0x3E6A0A3A5342891D, double 0xBE4175DB1284770F, double 0x3E118AB4A5C62974, double 0xBDCD3D9AE561F24C, double 0xBDB55D3755150569, double 0x3DA33E18D1651976, double 0xBD847333DFA764BD, double 4.831020e-13, double 0xBD36DB94BEF971F8, double 1.013200e-14, double -4.640000e-16, double -2.240000e-16, double 0x3C9BF5563202AE90, double -2.600000e-17, double 5.000000e-18], align 16, !dbg !257
@fd_mhalf_d_data = internal global [30 x double] [double 0x4002064BE1B4AB2A, double 0x3F5EB64972814CA0, double 0xBF48BD90C8003778, double 0x3F321635188D693D, double 0xBF19267771C5D997, double 0x3F00FD6AE0942DD5, double 0xBEE68957ED27AD90, double 0x3ECD776FD67997B9, double 0xBEB2FAED8052A6F9, double 0x3E980204FADBF483, double 0xBE7DA8FF8C3BEF2A, double 0x3E61C968E76E6D67, double 0xBE4494B73AB7755B, double 0x3E26D413FB718731, double 0xBE081AA2EE5EA926, double 0x3DE80319FE0B199F, double 0xBDC6429898D2330A, double 0x3DA2B6FC4B307370, double 0xBD7AD9578AAF0EBE, double 0x3D4A6A1180C97A11, double 1.005740e-14, double -1.820020e-14, double 0x3D03821C2E4D31ED, double -3.205800e-15, double 1.057200e-15, double -3.259000e-16, double 9.600000e-17, double -2.740000e-17, double 7.600000e-18, double -1.900000e-18], align 16, !dbg !264
@fd_half_a_data = internal unnamed_addr constant [23 x double] [double 0x3FFB7BC18E91C6D6, double 0x3FE3D0F60D3AAE63, double 0x3FB7E1368686F28D, double 0x3F734A40D734EDE4, double 0xBF3BCFB183823DBD, double 0xBF07BA49F3272259, double 0x3ED5FD40EBA5F1BE, double 0x3EA56EF2B46DDB89, double 0xBE75A141E5E0B20B, double 0xBE46656B1996D909, double 0x3E17A7E1669F9DD9, double 0x3DE96339299944F4, double 0xBDBB9AC3932630CA, double 0xBD8E5837CFCC450C, double 0x3D60D5614DB596BA, double 6.688280e-14, double -9.414700e-15, double -1.333300e-15, double 1.898000e-16, double 2.720000e-17, double -3.900000e-18, double -6.000000e-19, double 0x3BFD83C94FB6D2AC], align 16, !dbg !268
@fd_half_b_data = internal unnamed_addr constant [20 x double] [double 0x401E9AA35C08D3F8, double 0x4003CDEADAE9F910, double 0x3FCBF26EF88F24B4, double 0xBF7FAA1CDAC7AC0A, double 0xBF2C803071E3E10F, double 0x3F235AC7EF86939A, double 0xBEF6A28B7463E9F4, double 0x3EAB1A3316C49200, double 0x3E9611BD00A78253, double 0xBE75556F35D1DE12, double 0x3E3DCED6AB681B0C, double 0x3E073697FA0FBB48, double 0xBDF5511ACFA91BD9, double 0x3DC776495D7668C0, double -2.169600e-14, double 0xBD749650A04BEEBF, double 2.347570e-13, double -1.413900e-14, double -3.864000e-15, double 1.202000e-15], align 16, !dbg !272
@fd_half_c_data = internal unnamed_addr constant [23 x double] [double 0x403D95974379086F, double 0x40219DDF4D48F09E, double 0x3FE01EE5B4D1599B, double 0xBF960EC390C3B1BA, double 0x3F618EE9D1794906, double 0xBF30DDE12E761E32, double 0x3EFD4A5A35867EA3, double 0xBEBC2935C9C64641, double 0xBE92A9B9409A7D1B, double 0x3E82260EADE7A728, double 0xBE621D3FAAFEE6CB, double 0x3E3BCF2803B69606, double 0xBE11589D779F151D, double 0x3DE0802651E668ED, double 0xBD9D2FD347CD9827, double 0xBD7E17B453922EAF, double 7.750690e-13, double -1.979730e-13, double 3.941400e-14, double -6.374000e-15, double 7.770000e-16, double -4.000000e-17, double -1.400000e-17], align 16, !dbg !276
@fd_half_d_data = internal global [30 x double] [double 0x3FF82FE2D7B9FF85, double 0xBF6D86D9976267BE, double 0x3F574728D0DF1B86, double 0xBF408863323E8436, double 0x3F26293E11AE55BB, double 0xBF0CA464AF7977FA, double 0x3EF20F1503AAC40A, double 0xBED660B134B8D328, double 0x3EBB5F5CD623536D, double 0xBEA0929638F811BE, double 0x3E83E5E2617B0F9E, double 0xBE67B4A5F555CFC5, double 0x3E4C067CB5A8E270, double 0xBE306F04705639F4, double 0x3E131C0C0588058D, double 0xBDF605E216231BE8, double 0x3DD925D42847810A, double 0xBDBC73FAD2DA45FD, double 0x3D9FE87C72D8D632, double 0xBD81BE61A855D13A, double 0x3D639635AB6700F8, double 0xBD457AE263DE77EC, double 4.161210e-14, double -1.129330e-14, double 3.053700e-15, double -8.234000e-16, double 2.215000e-16, double -5.950000e-17, double 1.590000e-17, double -4.000000e-18], align 16, !dbg !280
@fd_3half_a_data = internal unnamed_addr constant [20 x double] [double 0x400052E5EAB5AC6F, double 0x3FE9FDAE262957AD, double 0x3FC3AA618B8C4487, double 0x3F8FFC084AB89BB9, double 0x3F4379B56B1B3C29, double 0xBF06861ED28D779E, double 0xBED00AAE7EA5E67B, double 0x3E99844FF16ACF5E, double 0x3E65C88860D41D1A, double 0xBE338E1DB4DFB081, double 0xBE023BF998356BDC, double 0x3DD18494B20AB09A, double 0x3DA13DBC05BE49A3, double 0xBD714FA68BC2D0C4, double 0xBD41AD0B4171D4E6, double 1.626170e-14, double 2.131800e-15, double -2.825000e-16, double -3.780000e-17, double 5.100000e-18], align 16, !dbg !284
@fd_3half_b_data = internal unnamed_addr constant [22 x double] [double 0x402ACE711A4647E3, double 0x40164C4BEB33441E, double 0x3FEDCC9FDE030B59, double 0x3FABF98F04AB9DAD, double 0xBF5833B653B2E87F, double 0xBEFECE3ED0CF44FB, double 0x3EF33FADBC6FCF76, double 0xBEC3B26B34EA2FB4, double 0x3E7653A8BE1F2CC4, double 0x3E5CCE0232A28289, double 0xBE39D16EE07E6D1E, double 0x3E00FC50301AFDB7, double 0x3DC5BF335F9BBD47, double 0xBDB3ACF999ED4C6B, double 0x3D84A96A2A8FFE85, double -1.282300e-14, double -5.419200e-14, double 1.052700e-14, double -6.390000e-16, double -1.470000e-16, double 4.500000e-17, double -5.000000e-18], align 16, !dbg !288
@fd_3half_c_data = internal unnamed_addr constant [21 x double] [double 0x4059425BCABAD971, double 0x4045CF78105DDE3A, double 0x401A7D5A0699FBB2, double 0x3FD00D56CAFFE052, double 0xBF805879090762F2, double 0x3F44CB99561114FB, double 0xBF10C1B7F8AC570F, double 0x3ED95B258475506D, double 0xBE96D279B7A206E7, double 0xBE65DD6C64545122, double 0x3E54BC4CEA2213EA, double 0xBE332B6EA21F3F72, double 0x3E0B4B26CF3552D9, double 0xBDDFD02CD767F2A9, double 0x3DACB092549827A8, double -7.411400e-13, double -1.418100e-13, double 6.491000e-14, double -1.597000e-14, double 3.050000e-15, double -4.800000e-16], align 16, !dbg !292
@fd_3half_d_data = internal global [25 x double] [double 0x3FE3B6CCF1848CE5, double 0xBF7D2E00307F065E, double 0x3F66DC7E77B11A14, double 0xBF501ACCD389AB08, double 0x3F355DC20A5E714A, double 0xBF1B4466D766C55F, double 0x3F00EE4F3BEECBA8, double 0xBEE49A68791C5973, double 0x3EC8ADECE16B857C, double 0xBEAD308457A6D334, double 0x3E9115112DCB24BD, double 0xBE73D197FDA865E0, double 0x3E56D26930A49726, double 0xBE3A1CA641818C84, double 0x3E1DB639FB7BCA46, double 0xBE00D30AF0CFAD0C, double 0x3DE2FA357F104A42, double 0xBDC5556BC9903C75, double 0x3DA7EA42F5CAA4B4, double 0xBD8ABF1DF6EACB94, double 0x3D6DDB2C239B6A43, double 0xBD50A31965683C04, double 6.576360e-14, double -1.818070e-14, double 4.688400e-15], align 16, !dbg !296

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fermi_dirac_m1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !306 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !311, metadata !DIExpression()), !dbg !318
  %3 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !319
  br i1 %3, label %4, label %6, !dbg !320

4:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !321, !tbaa !324
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !321
  store double 0x10000000000000, ptr %5, align 8, !dbg !321, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1218, i32 noundef 15) #8, !dbg !330
  br label %28, !dbg !330

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0.000000e+00, !dbg !332
  br i1 %7, label %8, label %19, !dbg !333

8:                                                ; preds = %6
  %9 = tail call double @exp(double noundef %0) #8, !dbg !334
  tail call void @llvm.dbg.value(metadata double %9, metadata !312, metadata !DIExpression()), !dbg !335
  %10 = fadd double %9, 1.000000e+00, !dbg !336
  %11 = fdiv double %9, %10, !dbg !337
  store double %11, ptr %1, align 8, !dbg !338, !tbaa !324
  %12 = tail call double @llvm.fabs.f64(double %0), !dbg !339
  %13 = fadd double %12, 1.000000e+00, !dbg !340
  %14 = fmul double %13, 2.000000e+00, !dbg !341
  %15 = fmul double %14, 0x3CB0000000000000, !dbg !342
  %16 = tail call double @llvm.fabs.f64(double %11), !dbg !343
  %17 = fmul double %15, %16, !dbg !344
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !345
  store double %17, ptr %18, align 8, !dbg !346, !tbaa !329
  br label %28

19:                                               ; preds = %6
  %20 = fneg double %0, !dbg !347
  %21 = tail call double @exp(double noundef %20) #8, !dbg !348
  tail call void @llvm.dbg.value(metadata double %21, metadata !316, metadata !DIExpression()), !dbg !349
  %22 = fadd double %21, 1.000000e+00, !dbg !350
  %23 = fdiv double 1.000000e+00, %22, !dbg !351
  store double %23, ptr %1, align 8, !dbg !352, !tbaa !324
  %24 = fadd double %0, 1.000000e+00, !dbg !353
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !354
  %26 = fmul double %25, %21, !dbg !355
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !356
  store double %26, ptr %27, align 8, !dbg !357, !tbaa !329
  br label %28

28:                                               ; preds = %4, %8, %19
  %29 = phi i32 [ 15, %4 ], [ 0, %8 ], [ 0, %19 ], !dbg !358
  ret i32 %29, !dbg !359
}

declare !dbg !360 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !365 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fermi_dirac_0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !369 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !371, metadata !DIExpression()), !dbg !381
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !372, metadata !DIExpression()), !dbg !381
  %3 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !382
  br i1 %3, label %4, label %6, !dbg !383

4:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !384, !tbaa !324
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !384
  store double 0x10000000000000, ptr %5, align 8, !dbg !384, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1239, i32 noundef 15) #8, !dbg !387
  br label %49, !dbg !387

6:                                                ; preds = %2
  %7 = fcmp olt double %0, -5.000000e+00, !dbg !389
  br i1 %7, label %8, label %24, !dbg !390

8:                                                ; preds = %6
  %9 = tail call double @exp(double noundef %0) #8, !dbg !391
  tail call void @llvm.dbg.value(metadata double %9, metadata !373, metadata !DIExpression()), !dbg !392
  %10 = fdiv double %9, 6.000000e+00, !dbg !393
  %11 = fsub double 2.000000e-01, %10, !dbg !394
  %12 = fmul double %9, %11, !dbg !395
  %13 = fsub double 2.500000e-01, %12, !dbg !396
  %14 = fmul double %9, %13, !dbg !397
  %15 = fsub double 0x3FD5555555555555, %14, !dbg !398
  %16 = fmul double %9, %15, !dbg !399
  %17 = fsub double 5.000000e-01, %16, !dbg !400
  %18 = fmul double %9, %17, !dbg !401
  %19 = fsub double 1.000000e+00, %18, !dbg !402
  tail call void @llvm.dbg.value(metadata double %19, metadata !377, metadata !DIExpression()), !dbg !392
  %20 = fmul double %9, %19, !dbg !403
  store double %20, ptr %1, align 8, !dbg !404, !tbaa !324
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !405
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !406
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !407
  store double %22, ptr %23, align 8, !dbg !408, !tbaa !329
  br label %49

24:                                               ; preds = %6
  %25 = fcmp olt double %0, 1.000000e+01, !dbg !409
  br i1 %25, label %26, label %33, !dbg !410

26:                                               ; preds = %24
  %27 = tail call double @exp(double noundef %0) #8, !dbg !411
  %28 = fadd double %27, 1.000000e+00, !dbg !413
  %29 = tail call double @log(double noundef %28) #8, !dbg !414
  store double %29, ptr %1, align 8, !dbg !415, !tbaa !324
  %30 = fmul double %0, 0x3CB0000000000000, !dbg !416
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !417
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !418
  store double %31, ptr %32, align 8, !dbg !419, !tbaa !329
  br label %49, !dbg !420

33:                                               ; preds = %24
  %34 = fneg double %0, !dbg !421
  %35 = tail call double @exp(double noundef %34) #8, !dbg !422
  tail call void @llvm.dbg.value(metadata double %35, metadata !378, metadata !DIExpression()), !dbg !423
  %36 = fmul double %35, 5.000000e-01, !dbg !424
  %37 = fsub double 1.000000e+00, %36, !dbg !425
  %38 = fmul double %35, %35, !dbg !426
  %39 = fdiv double %38, 3.000000e+00, !dbg !427
  %40 = fadd double %37, %39, !dbg !428
  %41 = fmul double %35, %38, !dbg !429
  %42 = fmul double %41, 2.500000e-01, !dbg !430
  %43 = fsub double %40, %42, !dbg !431
  %44 = fmul double %35, %43, !dbg !432
  %45 = fadd double %44, %0, !dbg !433
  store double %45, ptr %1, align 8, !dbg !434, !tbaa !324
  %46 = fadd double %35, %0, !dbg !435
  %47 = fmul double %46, 0x3CB0000000000000, !dbg !436
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !437
  store double %47, ptr %48, align 8, !dbg !438, !tbaa !329
  br label %49

49:                                               ; preds = %4, %8, %26, %33
  %50 = phi i32 [ 15, %4 ], [ 0, %8 ], [ 0, %26 ], [ 0, %33 ], !dbg !439
  ret i32 %50, !dbg !440
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !441 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fermi_dirac_1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !442 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !472
  call void @llvm.dbg.assign(metadata i1 undef, metadata !467, metadata !DIExpression(), metadata !472, metadata ptr %3, metadata !DIExpression()), !dbg !473
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !474
  call void @llvm.dbg.assign(metadata i1 undef, metadata !471, metadata !DIExpression(), metadata !474, metadata ptr %4, metadata !DIExpression()), !dbg !475
  tail call void @llvm.dbg.value(metadata double %0, metadata !444, metadata !DIExpression()), !dbg !476
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !445, metadata !DIExpression()), !dbg !476
  %5 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !477
  br i1 %5, label %6, label %8, !dbg !478

6:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !479, !tbaa !324
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !479
  store double 0x10000000000000, ptr %7, align 8, !dbg !479, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1265, i32 noundef 15) #8, !dbg !482
  br label %197, !dbg !482

8:                                                ; preds = %2
  %9 = fcmp olt double %0, -1.000000e+00, !dbg !484
  br i1 %9, label %10, label %35, !dbg !485

10:                                               ; preds = %8
  %11 = tail call double @exp(double noundef %0) #8, !dbg !486
  tail call void @llvm.dbg.value(metadata double %11, metadata !446, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double %11, metadata !450, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double %11, metadata !451, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i32 2, metadata !452, metadata !DIExpression()), !dbg !487
  %12 = fneg double %11
  br label %13, !dbg !488

13:                                               ; preds = %13, %10
  %14 = phi double [ %11, %10 ], [ %22, %13 ]
  %15 = phi double [ %11, %10 ], [ %23, %13 ]
  %16 = phi i32 [ 2, %10 ], [ %27, %13 ]
  tail call void @llvm.dbg.value(metadata double %14, metadata !450, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double %15, metadata !451, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !452, metadata !DIExpression()), !dbg !487
  %17 = sitofp i32 %16 to double, !dbg !489
  %18 = fadd double %17, -1.000000e+00, !dbg !490
  %19 = fdiv double %18, %17, !dbg !491
  tail call void @llvm.dbg.value(metadata double %19, metadata !453, metadata !DIExpression()), !dbg !492
  %20 = fmul double %19, %12, !dbg !493
  %21 = fmul double %19, %20, !dbg !494
  %22 = fmul double %14, %21, !dbg !495
  tail call void @llvm.dbg.value(metadata double %22, metadata !450, metadata !DIExpression()), !dbg !487
  %23 = fadd double %15, %22, !dbg !496
  tail call void @llvm.dbg.value(metadata double %23, metadata !451, metadata !DIExpression()), !dbg !487
  %24 = fdiv double %22, %23, !dbg !497
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !499
  %26 = fcmp olt double %25, 0x3CB0000000000000, !dbg !500
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !452, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !487
  %27 = add nuw nsw i32 %16, 1
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !452, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double %22, metadata !450, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata double %23, metadata !451, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !452, metadata !DIExpression()), !dbg !487
  %28 = icmp eq i32 %27, 100
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %13, !llvm.loop !501

30:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata double %23, metadata !451, metadata !DIExpression()), !dbg !487
  store double %23, ptr %1, align 8, !dbg !504, !tbaa !324
  %31 = tail call double @llvm.fabs.f64(double %23), !dbg !505
  %32 = fmul double %31, 2.000000e+00, !dbg !506
  %33 = fmul double %32, 0x3CB0000000000000, !dbg !507
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !508
  store double %33, ptr %34, align 8, !dbg !509, !tbaa !329
  br label %197

35:                                               ; preds = %8
  %36 = fcmp olt double %0, 1.000000e+00, !dbg !510
  br i1 %36, label %37, label %73, !dbg !511

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double %0, metadata !521, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !535
  %38 = fmul double %0, 2.000000e+00, !dbg !538
  %39 = fadd double %38, 1.000000e+00, !dbg !539
  %40 = fadd double %39, -1.000000e+00, !dbg !540
  %41 = fmul double %40, 5.000000e-01, !dbg !541
  call void @llvm.dbg.value(metadata double %41, metadata !526, metadata !DIExpression()), !dbg !535
  %42 = fmul double %41, 2.000000e+00, !dbg !542
  call void @llvm.dbg.value(metadata double %42, metadata !527, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata i32 21, metadata !523, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !535
  br label %43, !dbg !543

43:                                               ; preds = %43, %37
  %44 = phi i64 [ 21, %37 ], [ %59, %43 ]
  %45 = phi double [ 0.000000e+00, %37 ], [ %52, %43 ]
  %46 = phi double [ 0.000000e+00, %37 ], [ %58, %43 ]
  %47 = phi double [ 0.000000e+00, %37 ], [ %45, %43 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !523, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double %45, metadata !524, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double %46, metadata !528, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double %47, metadata !525, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double %45, metadata !529, metadata !DIExpression()), !dbg !544
  %48 = fmul double %42, %45, !dbg !545
  %49 = fsub double %48, %47, !dbg !546
  %50 = getelementptr inbounds double, ptr @fd_1_a_data, i64 %44, !dbg !547
  %51 = load double, ptr %50, align 8, !dbg !547, !tbaa !548
  %52 = fadd double %49, %51, !dbg !549
  call void @llvm.dbg.value(metadata double %52, metadata !524, metadata !DIExpression()), !dbg !535
  %53 = tail call double @llvm.fabs.f64(double %48), !dbg !550
  %54 = tail call double @llvm.fabs.f64(double %47), !dbg !551
  %55 = fadd double %53, %54, !dbg !552
  %56 = tail call double @llvm.fabs.f64(double %51), !dbg !553
  %57 = fadd double %55, %56, !dbg !554
  %58 = fadd double %46, %57, !dbg !555
  call void @llvm.dbg.value(metadata double %58, metadata !528, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.value(metadata double %45, metadata !525, metadata !DIExpression()), !dbg !535
  %59 = add nsw i64 %44, -1, !dbg !556
  call void @llvm.dbg.value(metadata i64 %59, metadata !523, metadata !DIExpression()), !dbg !535
  %60 = icmp ugt i64 %44, 1, !dbg !557
  br i1 %60, label %43, label %61, !dbg !543, !llvm.loop !558

61:                                               ; preds = %43
  call void @llvm.dbg.value(metadata double %52, metadata !533, metadata !DIExpression()), !dbg !560
  %62 = fmul double %41, %52, !dbg !561
  %63 = fsub double %62, %45, !dbg !562
  %64 = fadd double %63, 0x3FEE51A6625307D3, !dbg !563
  call void @llvm.dbg.value(metadata double %64, metadata !524, metadata !DIExpression()), !dbg !535
  %65 = tail call double @llvm.fabs.f64(double %62), !dbg !564
  %66 = tail call double @llvm.fabs.f64(double %45), !dbg !565
  %67 = fadd double %66, %65, !dbg !566
  %68 = fadd double %67, 0x3FEE51A6625307D3, !dbg !567
  %69 = fadd double %58, %68, !dbg !568
  call void @llvm.dbg.value(metadata double %69, metadata !528, metadata !DIExpression()), !dbg !535
  store double %64, ptr %1, align 8, !dbg !569, !tbaa !324
  %70 = fmul double %69, 0x3CB0000000000000, !dbg !570
  %71 = fadd double %70, 3.000000e-19, !dbg !571
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !572
  store double %71, ptr %72, align 8, !dbg !573, !tbaa !329
  br label %197, !dbg !574

73:                                               ; preds = %35
  %74 = fcmp olt double %0, 4.000000e+00, !dbg !575
  br i1 %74, label %75, label %114, !dbg !576

75:                                               ; preds = %73
  %76 = fadd double %0, -1.000000e+00, !dbg !577
  %77 = fmul double %76, 0x3FE5555555555555, !dbg !578
  %78 = fadd double %77, -1.000000e+00, !dbg !579
  tail call void @llvm.dbg.value(metadata double %78, metadata !457, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double %78, metadata !521, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !581
  %79 = fmul double %78, 2.000000e+00, !dbg !583
  %80 = fadd double %79, 1.000000e+00, !dbg !584
  %81 = fadd double %80, -1.000000e+00, !dbg !585
  %82 = fmul double %81, 5.000000e-01, !dbg !586
  call void @llvm.dbg.value(metadata double %82, metadata !526, metadata !DIExpression()), !dbg !581
  %83 = fmul double %82, 2.000000e+00, !dbg !587
  call void @llvm.dbg.value(metadata double %83, metadata !527, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata i32 21, metadata !523, metadata !DIExpression()), !dbg !581
  br label %84, !dbg !588

84:                                               ; preds = %84, %75
  %85 = phi i64 [ 21, %75 ], [ %100, %84 ]
  %86 = phi double [ 0.000000e+00, %75 ], [ %93, %84 ]
  %87 = phi double [ 0.000000e+00, %75 ], [ %99, %84 ]
  %88 = phi double [ 0.000000e+00, %75 ], [ %86, %84 ]
  call void @llvm.dbg.value(metadata i64 %85, metadata !523, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double %86, metadata !524, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double %87, metadata !528, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double %88, metadata !525, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double %86, metadata !529, metadata !DIExpression()), !dbg !589
  %89 = fmul double %83, %86, !dbg !590
  %90 = fsub double %89, %88, !dbg !591
  %91 = getelementptr inbounds double, ptr @fd_1_b_data, i64 %85, !dbg !592
  %92 = load double, ptr %91, align 8, !dbg !592, !tbaa !548
  %93 = fadd double %90, %92, !dbg !593
  call void @llvm.dbg.value(metadata double %93, metadata !524, metadata !DIExpression()), !dbg !581
  %94 = tail call double @llvm.fabs.f64(double %89), !dbg !594
  %95 = tail call double @llvm.fabs.f64(double %88), !dbg !595
  %96 = fadd double %94, %95, !dbg !596
  %97 = tail call double @llvm.fabs.f64(double %92), !dbg !597
  %98 = fadd double %96, %97, !dbg !598
  %99 = fadd double %87, %98, !dbg !599
  call void @llvm.dbg.value(metadata double %99, metadata !528, metadata !DIExpression()), !dbg !581
  call void @llvm.dbg.value(metadata double %86, metadata !525, metadata !DIExpression()), !dbg !581
  %100 = add nsw i64 %85, -1, !dbg !600
  call void @llvm.dbg.value(metadata i64 %100, metadata !523, metadata !DIExpression()), !dbg !581
  %101 = icmp ugt i64 %85, 1, !dbg !601
  br i1 %101, label %84, label %102, !dbg !588, !llvm.loop !602

102:                                              ; preds = %84
  call void @llvm.dbg.value(metadata double %93, metadata !533, metadata !DIExpression()), !dbg !604
  %103 = fmul double %82, %93, !dbg !605
  %104 = fsub double %103, %86, !dbg !606
  %105 = fadd double %104, 0x4014D17A60C63EEE, !dbg !607
  call void @llvm.dbg.value(metadata double %105, metadata !524, metadata !DIExpression()), !dbg !581
  %106 = tail call double @llvm.fabs.f64(double %103), !dbg !608
  %107 = tail call double @llvm.fabs.f64(double %86), !dbg !609
  %108 = fadd double %107, %106, !dbg !610
  %109 = fadd double %108, 0x4014D17A60C63EEE, !dbg !611
  %110 = fadd double %99, %109, !dbg !612
  call void @llvm.dbg.value(metadata double %110, metadata !528, metadata !DIExpression()), !dbg !581
  store double %105, ptr %1, align 8, !dbg !613, !tbaa !324
  %111 = fmul double %110, 0x3CB0000000000000, !dbg !614
  %112 = fadd double %111, 1.600000e-17, !dbg !615
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !616
  store double %112, ptr %113, align 8, !dbg !617, !tbaa !329
  br label %197

114:                                              ; preds = %73
  %115 = fcmp olt double %0, 1.000000e+01, !dbg !618
  br i1 %115, label %116, label %155, !dbg !619

116:                                              ; preds = %114
  %117 = fadd double %0, -4.000000e+00, !dbg !620
  %118 = fmul double %117, 0x3FD5555555555555, !dbg !621
  %119 = fadd double %118, -1.000000e+00, !dbg !622
  tail call void @llvm.dbg.value(metadata double %119, metadata !461, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %119, metadata !521, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !624
  %120 = fmul double %119, 2.000000e+00, !dbg !626
  %121 = fadd double %120, 1.000000e+00, !dbg !627
  %122 = fadd double %121, -1.000000e+00, !dbg !628
  %123 = fmul double %122, 5.000000e-01, !dbg !629
  call void @llvm.dbg.value(metadata double %123, metadata !526, metadata !DIExpression()), !dbg !624
  %124 = fmul double %123, 2.000000e+00, !dbg !630
  call void @llvm.dbg.value(metadata double %124, metadata !527, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata i32 22, metadata !523, metadata !DIExpression()), !dbg !624
  br label %125, !dbg !631

125:                                              ; preds = %125, %116
  %126 = phi i64 [ 22, %116 ], [ %141, %125 ]
  %127 = phi double [ 0.000000e+00, %116 ], [ %134, %125 ]
  %128 = phi double [ 0.000000e+00, %116 ], [ %140, %125 ]
  %129 = phi double [ 0.000000e+00, %116 ], [ %127, %125 ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !523, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %127, metadata !524, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %128, metadata !528, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %129, metadata !525, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %127, metadata !529, metadata !DIExpression()), !dbg !632
  %130 = fmul double %124, %127, !dbg !633
  %131 = fsub double %130, %129, !dbg !634
  %132 = getelementptr inbounds double, ptr @fd_1_c_data, i64 %126, !dbg !635
  %133 = load double, ptr %132, align 8, !dbg !635, !tbaa !548
  %134 = fadd double %131, %133, !dbg !636
  call void @llvm.dbg.value(metadata double %134, metadata !524, metadata !DIExpression()), !dbg !624
  %135 = tail call double @llvm.fabs.f64(double %130), !dbg !637
  %136 = tail call double @llvm.fabs.f64(double %129), !dbg !638
  %137 = fadd double %135, %136, !dbg !639
  %138 = tail call double @llvm.fabs.f64(double %133), !dbg !640
  %139 = fadd double %137, %138, !dbg !641
  %140 = fadd double %128, %139, !dbg !642
  call void @llvm.dbg.value(metadata double %140, metadata !528, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %127, metadata !525, metadata !DIExpression()), !dbg !624
  %141 = add nsw i64 %126, -1, !dbg !643
  call void @llvm.dbg.value(metadata i64 %141, metadata !523, metadata !DIExpression()), !dbg !624
  %142 = icmp ugt i64 %126, 1, !dbg !644
  br i1 %142, label %125, label %143, !dbg !631, !llvm.loop !645

143:                                              ; preds = %125
  call void @llvm.dbg.value(metadata double %134, metadata !533, metadata !DIExpression()), !dbg !647
  %144 = fmul double %123, %134, !dbg !648
  %145 = fsub double %144, %127, !dbg !649
  %146 = fadd double %145, 0x403C63F7A0A31F57, !dbg !650
  call void @llvm.dbg.value(metadata double %146, metadata !524, metadata !DIExpression()), !dbg !624
  %147 = tail call double @llvm.fabs.f64(double %144), !dbg !651
  %148 = tail call double @llvm.fabs.f64(double %127), !dbg !652
  %149 = fadd double %148, %147, !dbg !653
  %150 = fadd double %149, 0x403C63F7A0A31F57, !dbg !654
  %151 = fadd double %140, %150, !dbg !655
  call void @llvm.dbg.value(metadata double %151, metadata !528, metadata !DIExpression()), !dbg !624
  store double %146, ptr %1, align 8, !dbg !656, !tbaa !324
  %152 = fmul double %151, 0x3CB0000000000000, !dbg !657
  %153 = fadd double %152, 3.000000e-17, !dbg !658
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !659
  store double %153, ptr %154, align 8, !dbg !660, !tbaa !329
  br label %197

155:                                              ; preds = %114
  %156 = fcmp olt double %0, 3.000000e+01, !dbg !661
  br i1 %156, label %157, label %171, !dbg !662

157:                                              ; preds = %155
  %158 = fmul double %0, 1.000000e-01, !dbg !663
  %159 = fadd double %158, -2.000000e+00, !dbg !664
  tail call void @llvm.dbg.value(metadata double %159, metadata !464, metadata !DIExpression()), !dbg !473
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !665
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_1_d_cs, double noundef %159, ptr noundef nonnull %3), !dbg !666
  %160 = load double, ptr %3, align 8, !dbg !667, !tbaa !324
  %161 = fmul double %160, %0, !dbg !668
  %162 = fmul double %161, %0, !dbg !669
  store double %162, ptr %1, align 8, !dbg !670, !tbaa !324
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !671
  %164 = load double, ptr %163, align 8, !dbg !671, !tbaa !329
  %165 = fmul double %164, %0, !dbg !672
  %166 = fmul double %165, %0, !dbg !673
  %167 = tail call double @llvm.fabs.f64(double %162), !dbg !674
  %168 = fmul double %167, 0x3CB0000000000000, !dbg !675
  %169 = fadd double %166, %168, !dbg !676
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !677
  store double %169, ptr %170, align 8, !dbg !678, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !679
  br label %197

171:                                              ; preds = %155
  %172 = fcmp olt double %0, 0x4190000000000000, !dbg !680
  br i1 %172, label %173, label %187, !dbg !681

173:                                              ; preds = %171
  %174 = fdiv double 6.000000e+01, %0, !dbg !682
  %175 = fadd double %174, -1.000000e+00, !dbg !683
  tail call void @llvm.dbg.value(metadata double %175, metadata !468, metadata !DIExpression()), !dbg !475
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !684
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_1_e_cs, double noundef %175, ptr noundef nonnull %4), !dbg !685
  %176 = load double, ptr %4, align 8, !dbg !686, !tbaa !324
  %177 = fmul double %176, %0, !dbg !687
  %178 = fmul double %177, %0, !dbg !688
  store double %178, ptr %1, align 8, !dbg !689, !tbaa !324
  %179 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !690
  %180 = load double, ptr %179, align 8, !dbg !690, !tbaa !329
  %181 = fmul double %180, %0, !dbg !691
  %182 = fmul double %181, %0, !dbg !692
  %183 = tail call double @llvm.fabs.f64(double %178), !dbg !693
  %184 = fmul double %183, 0x3CB0000000000000, !dbg !694
  %185 = fadd double %182, %184, !dbg !695
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !696
  store double %185, ptr %186, align 8, !dbg !697, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !698
  br label %197

187:                                              ; preds = %171
  %188 = fcmp olt double %0, 0x5FEFFFFFFFFFFFFF, !dbg !699
  br i1 %188, label %189, label %195, !dbg !701

189:                                              ; preds = %187
  %190 = fmul double %0, 5.000000e-01, !dbg !702
  %191 = fmul double %190, %0, !dbg !704
  store double %191, ptr %1, align 8, !dbg !705, !tbaa !324
  %192 = tail call double @llvm.fabs.f64(double %191), !dbg !706
  %193 = fmul double %192, 0x3CC0000000000000, !dbg !707
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !708
  store double %193, ptr %194, align 8, !dbg !709, !tbaa !329
  br label %197, !dbg !710

195:                                              ; preds = %187
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !711, !tbaa !324
  %196 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !711
  store double 0x7FF0000000000000, ptr %196, align 8, !dbg !711, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1317, i32 noundef 16) #8, !dbg !714
  br label %197, !dbg !714

197:                                              ; preds = %6, %30, %61, %102, %143, %157, %173, %189, %195
  %198 = phi i32 [ 15, %6 ], [ 0, %30 ], [ 0, %61 ], [ 0, %102 ], [ 0, %143 ], [ 0, %157 ], [ 0, %173 ], [ 0, %189 ], [ 16, %195 ], !dbg !716
  ret i32 %198, !dbg !717
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cheb_eval_e(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !dbg !514 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !513, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double %1, metadata !521, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !522, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !718
  %4 = fmul double %1, 2.000000e+00, !dbg !719
  %5 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 2, !dbg !720
  %6 = load double, ptr %5, align 8, !dbg !720, !tbaa !721
  %7 = fsub double %4, %6, !dbg !725
  %8 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 3, !dbg !726
  %9 = load double, ptr %8, align 8, !dbg !726, !tbaa !727
  %10 = fsub double %7, %9, !dbg !728
  %11 = fsub double %9, %6, !dbg !729
  %12 = fdiv double %10, %11, !dbg !730
  tail call void @llvm.dbg.value(metadata double %12, metadata !526, metadata !DIExpression()), !dbg !718
  %13 = fmul double %12, 2.000000e+00, !dbg !731
  tail call void @llvm.dbg.value(metadata double %13, metadata !527, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !718
  %14 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 1, !dbg !732
  %15 = load i32, ptr %14, align 8, !dbg !732, !tbaa !733
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !523, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !718
  %16 = icmp sgt i32 %15, 0, !dbg !734
  %17 = load ptr, ptr %0, align 8, !dbg !735, !tbaa !736
  br i1 %16, label %18, label %38, !dbg !737

18:                                               ; preds = %3
  %19 = zext nneg i32 %15 to i64, !dbg !737
  br label %20, !dbg !737

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %19, %18 ], [ %36, %20 ]
  %22 = phi double [ 0.000000e+00, %18 ], [ %29, %20 ]
  %23 = phi double [ 0.000000e+00, %18 ], [ %35, %20 ]
  %24 = phi double [ 0.000000e+00, %18 ], [ %22, %20 ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !523, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double %22, metadata !524, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double %23, metadata !528, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double %24, metadata !525, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double %22, metadata !529, metadata !DIExpression()), !dbg !738
  %25 = fmul double %13, %22, !dbg !739
  %26 = fsub double %25, %24, !dbg !740
  %27 = getelementptr inbounds double, ptr %17, i64 %21, !dbg !741
  %28 = load double, ptr %27, align 8, !dbg !741, !tbaa !548
  %29 = fadd double %26, %28, !dbg !742
  tail call void @llvm.dbg.value(metadata double %29, metadata !524, metadata !DIExpression()), !dbg !718
  %30 = tail call double @llvm.fabs.f64(double %25), !dbg !743
  %31 = tail call double @llvm.fabs.f64(double %24), !dbg !744
  %32 = fadd double %31, %30, !dbg !745
  %33 = tail call double @llvm.fabs.f64(double %28), !dbg !746
  %34 = fadd double %32, %33, !dbg !747
  %35 = fadd double %23, %34, !dbg !748
  tail call void @llvm.dbg.value(metadata double %35, metadata !528, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata double %22, metadata !525, metadata !DIExpression()), !dbg !718
  %36 = add nsw i64 %21, -1, !dbg !749
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !523, metadata !DIExpression()), !dbg !718
  %37 = icmp ugt i64 %21, 1, !dbg !734
  br i1 %37, label %20, label %38, !dbg !737, !llvm.loop !750

38:                                               ; preds = %20, %3
  %39 = phi double [ 0.000000e+00, %3 ], [ %22, %20 ], !dbg !718
  %40 = phi double [ 0.000000e+00, %3 ], [ %35, %20 ], !dbg !718
  %41 = phi double [ 0.000000e+00, %3 ], [ %29, %20 ], !dbg !718
  tail call void @llvm.dbg.value(metadata double %41, metadata !533, metadata !DIExpression()), !dbg !752
  %42 = fmul double %12, %41, !dbg !753
  %43 = fsub double %42, %39, !dbg !754
  %44 = load double, ptr %17, align 8, !dbg !755, !tbaa !548
  %45 = fmul double %44, 5.000000e-01, !dbg !756
  %46 = fadd double %43, %45, !dbg !757
  tail call void @llvm.dbg.value(metadata double %46, metadata !524, metadata !DIExpression()), !dbg !718
  %47 = tail call double @llvm.fabs.f64(double %42), !dbg !758
  %48 = tail call double @llvm.fabs.f64(double %39), !dbg !759
  %49 = fadd double %48, %47, !dbg !760
  %50 = tail call double @llvm.fabs.f64(double %44), !dbg !761
  %51 = fmul double %50, 5.000000e-01, !dbg !762
  %52 = fadd double %49, %51, !dbg !763
  %53 = fadd double %40, %52, !dbg !764
  tail call void @llvm.dbg.value(metadata double %53, metadata !528, metadata !DIExpression()), !dbg !718
  store double %46, ptr %2, align 8, !dbg !765, !tbaa !324
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !766
  %55 = sext i32 %15 to i64, !dbg !767
  %56 = getelementptr inbounds double, ptr %17, i64 %55, !dbg !767
  %57 = load double, ptr %56, align 8, !dbg !767, !tbaa !548
  %58 = tail call double @llvm.fabs.f64(double %57), !dbg !768
  %59 = fadd double %58, %54, !dbg !769
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !770
  store double %59, ptr %60, align 8, !dbg !771, !tbaa !329
  ret void, !dbg !772
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fermi_dirac_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !773 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !803
  call void @llvm.dbg.assign(metadata i1 undef, metadata !798, metadata !DIExpression(), metadata !803, metadata ptr %3, metadata !DIExpression()), !dbg !804
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !802, metadata !DIExpression(), metadata !805, metadata ptr %4, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata double %0, metadata !775, metadata !DIExpression()), !dbg !807
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !776, metadata !DIExpression()), !dbg !807
  %5 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !808
  br i1 %5, label %6, label %8, !dbg !809

6:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !810, !tbaa !324
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !810
  store double 0x10000000000000, ptr %7, align 8, !dbg !810, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1325, i32 noundef 15) #8, !dbg !813
  br label %202, !dbg !813

8:                                                ; preds = %2
  %9 = fcmp olt double %0, -1.000000e+00, !dbg !815
  br i1 %9, label %10, label %35, !dbg !816

10:                                               ; preds = %8
  %11 = tail call double @exp(double noundef %0) #8, !dbg !817
  tail call void @llvm.dbg.value(metadata double %11, metadata !777, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata double %11, metadata !781, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata double %11, metadata !782, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata i32 2, metadata !783, metadata !DIExpression()), !dbg !818
  %12 = fneg double %11
  br label %13, !dbg !819

13:                                               ; preds = %13, %10
  %14 = phi double [ %11, %10 ], [ %23, %13 ]
  %15 = phi double [ %11, %10 ], [ %24, %13 ]
  %16 = phi i32 [ 2, %10 ], [ %28, %13 ]
  tail call void @llvm.dbg.value(metadata double %14, metadata !781, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata double %15, metadata !782, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !783, metadata !DIExpression()), !dbg !818
  %17 = sitofp i32 %16 to double, !dbg !820
  %18 = fadd double %17, -1.000000e+00, !dbg !821
  %19 = fdiv double %18, %17, !dbg !822
  tail call void @llvm.dbg.value(metadata double %19, metadata !784, metadata !DIExpression()), !dbg !823
  %20 = fmul double %19, %12, !dbg !824
  %21 = fmul double %19, %20, !dbg !825
  %22 = fmul double %19, %21, !dbg !826
  %23 = fmul double %14, %22, !dbg !827
  tail call void @llvm.dbg.value(metadata double %23, metadata !781, metadata !DIExpression()), !dbg !818
  %24 = fadd double %15, %23, !dbg !828
  tail call void @llvm.dbg.value(metadata double %24, metadata !782, metadata !DIExpression()), !dbg !818
  %25 = fdiv double %23, %24, !dbg !829
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !831
  %27 = fcmp olt double %26, 0x3CB0000000000000, !dbg !832
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !783, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !818
  %28 = add nuw nsw i32 %16, 1
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !783, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata double %23, metadata !781, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata double %24, metadata !782, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !783, metadata !DIExpression()), !dbg !818
  %29 = icmp eq i32 %28, 100
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %13, !llvm.loop !833

31:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata double %24, metadata !782, metadata !DIExpression()), !dbg !818
  store double %24, ptr %1, align 8, !dbg !835, !tbaa !324
  %32 = tail call double @llvm.fabs.f64(double %24), !dbg !836
  %33 = fmul double %32, 0x3CC0000000000000, !dbg !837
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !838
  store double %33, ptr %34, align 8, !dbg !839, !tbaa !329
  br label %202

35:                                               ; preds = %8
  %36 = fcmp olt double %0, 1.000000e+00, !dbg !840
  br i1 %36, label %37, label %73, !dbg !841

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double %0, metadata !521, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !842
  %38 = fmul double %0, 2.000000e+00, !dbg !845
  %39 = fadd double %38, 1.000000e+00, !dbg !846
  %40 = fadd double %39, -1.000000e+00, !dbg !847
  %41 = fmul double %40, 5.000000e-01, !dbg !848
  call void @llvm.dbg.value(metadata double %41, metadata !526, metadata !DIExpression()), !dbg !842
  %42 = fmul double %41, 2.000000e+00, !dbg !849
  call void @llvm.dbg.value(metadata double %42, metadata !527, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i32 20, metadata !523, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !842
  br label %43, !dbg !850

43:                                               ; preds = %43, %37
  %44 = phi i64 [ 20, %37 ], [ %59, %43 ]
  %45 = phi double [ 0.000000e+00, %37 ], [ %52, %43 ]
  %46 = phi double [ 0.000000e+00, %37 ], [ %58, %43 ]
  %47 = phi double [ 0.000000e+00, %37 ], [ %45, %43 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !523, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double %45, metadata !524, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double %46, metadata !528, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double %47, metadata !525, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double %45, metadata !529, metadata !DIExpression()), !dbg !851
  %48 = fmul double %42, %45, !dbg !852
  %49 = fsub double %48, %47, !dbg !853
  %50 = getelementptr inbounds double, ptr @fd_2_a_data, i64 %44, !dbg !854
  %51 = load double, ptr %50, align 8, !dbg !854, !tbaa !548
  %52 = fadd double %49, %51, !dbg !855
  call void @llvm.dbg.value(metadata double %52, metadata !524, metadata !DIExpression()), !dbg !842
  %53 = tail call double @llvm.fabs.f64(double %48), !dbg !856
  %54 = tail call double @llvm.fabs.f64(double %47), !dbg !857
  %55 = fadd double %53, %54, !dbg !858
  %56 = tail call double @llvm.fabs.f64(double %51), !dbg !859
  %57 = fadd double %55, %56, !dbg !860
  %58 = fadd double %46, %57, !dbg !861
  call void @llvm.dbg.value(metadata double %58, metadata !528, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata double %45, metadata !525, metadata !DIExpression()), !dbg !842
  %59 = add nsw i64 %44, -1, !dbg !862
  call void @llvm.dbg.value(metadata i64 %59, metadata !523, metadata !DIExpression()), !dbg !842
  %60 = icmp ugt i64 %44, 1, !dbg !863
  br i1 %60, label %43, label %61, !dbg !850, !llvm.loop !864

61:                                               ; preds = %43
  call void @llvm.dbg.value(metadata double %52, metadata !533, metadata !DIExpression()), !dbg !866
  %62 = fmul double %41, %52, !dbg !867
  %63 = fsub double %62, %45, !dbg !868
  %64 = fadd double %63, 0x3FF1424934B74A67, !dbg !869
  call void @llvm.dbg.value(metadata double %64, metadata !524, metadata !DIExpression()), !dbg !842
  %65 = tail call double @llvm.fabs.f64(double %62), !dbg !870
  %66 = tail call double @llvm.fabs.f64(double %45), !dbg !871
  %67 = fadd double %66, %65, !dbg !872
  %68 = fadd double %67, 0x3FF1424934B74A67, !dbg !873
  %69 = fadd double %58, %68, !dbg !874
  call void @llvm.dbg.value(metadata double %69, metadata !528, metadata !DIExpression()), !dbg !842
  store double %64, ptr %1, align 8, !dbg !875, !tbaa !324
  %70 = fmul double %69, 0x3CB0000000000000, !dbg !876
  %71 = fadd double %70, 4.000000e-19, !dbg !877
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !878
  store double %71, ptr %72, align 8, !dbg !879, !tbaa !329
  br label %202, !dbg !880

73:                                               ; preds = %35
  %74 = fcmp olt double %0, 4.000000e+00, !dbg !881
  br i1 %74, label %75, label %114, !dbg !882

75:                                               ; preds = %73
  %76 = fadd double %0, -1.000000e+00, !dbg !883
  %77 = fmul double %76, 0x3FE5555555555555, !dbg !884
  %78 = fadd double %77, -1.000000e+00, !dbg !885
  tail call void @llvm.dbg.value(metadata double %78, metadata !788, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata double %78, metadata !521, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !887
  %79 = fmul double %78, 2.000000e+00, !dbg !889
  %80 = fadd double %79, 1.000000e+00, !dbg !890
  %81 = fadd double %80, -1.000000e+00, !dbg !891
  %82 = fmul double %81, 5.000000e-01, !dbg !892
  call void @llvm.dbg.value(metadata double %82, metadata !526, metadata !DIExpression()), !dbg !887
  %83 = fmul double %82, 2.000000e+00, !dbg !893
  call void @llvm.dbg.value(metadata double %83, metadata !527, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata i32 21, metadata !523, metadata !DIExpression()), !dbg !887
  br label %84, !dbg !894

84:                                               ; preds = %84, %75
  %85 = phi i64 [ 21, %75 ], [ %100, %84 ]
  %86 = phi double [ 0.000000e+00, %75 ], [ %93, %84 ]
  %87 = phi double [ 0.000000e+00, %75 ], [ %99, %84 ]
  %88 = phi double [ 0.000000e+00, %75 ], [ %86, %84 ]
  call void @llvm.dbg.value(metadata i64 %85, metadata !523, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata double %86, metadata !524, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata double %87, metadata !528, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata double %88, metadata !525, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata double %86, metadata !529, metadata !DIExpression()), !dbg !895
  %89 = fmul double %83, %86, !dbg !896
  %90 = fsub double %89, %88, !dbg !897
  %91 = getelementptr inbounds double, ptr @fd_2_b_data, i64 %85, !dbg !898
  %92 = load double, ptr %91, align 8, !dbg !898, !tbaa !548
  %93 = fadd double %90, %92, !dbg !899
  call void @llvm.dbg.value(metadata double %93, metadata !524, metadata !DIExpression()), !dbg !887
  %94 = tail call double @llvm.fabs.f64(double %89), !dbg !900
  %95 = tail call double @llvm.fabs.f64(double %88), !dbg !901
  %96 = fadd double %94, %95, !dbg !902
  %97 = tail call double @llvm.fabs.f64(double %92), !dbg !903
  %98 = fadd double %96, %97, !dbg !904
  %99 = fadd double %87, %98, !dbg !905
  call void @llvm.dbg.value(metadata double %99, metadata !528, metadata !DIExpression()), !dbg !887
  call void @llvm.dbg.value(metadata double %86, metadata !525, metadata !DIExpression()), !dbg !887
  %100 = add nsw i64 %85, -1, !dbg !906
  call void @llvm.dbg.value(metadata i64 %100, metadata !523, metadata !DIExpression()), !dbg !887
  %101 = icmp ugt i64 %85, 1, !dbg !907
  br i1 %101, label %84, label %102, !dbg !894, !llvm.loop !908

102:                                              ; preds = %84
  call void @llvm.dbg.value(metadata double %93, metadata !533, metadata !DIExpression()), !dbg !910
  %103 = fmul double %82, %93, !dbg !911
  %104 = fsub double %103, %86, !dbg !912
  %105 = fadd double %104, 0x4020821D3FDE9433, !dbg !913
  call void @llvm.dbg.value(metadata double %105, metadata !524, metadata !DIExpression()), !dbg !887
  %106 = tail call double @llvm.fabs.f64(double %103), !dbg !914
  %107 = tail call double @llvm.fabs.f64(double %86), !dbg !915
  %108 = fadd double %107, %106, !dbg !916
  %109 = fadd double %108, 0x4020821D3FDE9433, !dbg !917
  %110 = fadd double %99, %109, !dbg !918
  call void @llvm.dbg.value(metadata double %110, metadata !528, metadata !DIExpression()), !dbg !887
  store double %105, ptr %1, align 8, !dbg !919, !tbaa !324
  %111 = fmul double %110, 0x3CB0000000000000, !dbg !920
  %112 = fadd double %111, 1.000000e-18, !dbg !921
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !922
  store double %112, ptr %113, align 8, !dbg !923, !tbaa !329
  br label %202

114:                                              ; preds = %73
  %115 = fcmp olt double %0, 1.000000e+01, !dbg !924
  br i1 %115, label %116, label %155, !dbg !925

116:                                              ; preds = %114
  %117 = fadd double %0, -4.000000e+00, !dbg !926
  %118 = fmul double %117, 0x3FD5555555555555, !dbg !927
  %119 = fadd double %118, -1.000000e+00, !dbg !928
  tail call void @llvm.dbg.value(metadata double %119, metadata !792, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata double %119, metadata !521, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !930
  %120 = fmul double %119, 2.000000e+00, !dbg !932
  %121 = fadd double %120, 1.000000e+00, !dbg !933
  %122 = fadd double %121, -1.000000e+00, !dbg !934
  %123 = fmul double %122, 5.000000e-01, !dbg !935
  call void @llvm.dbg.value(metadata double %123, metadata !526, metadata !DIExpression()), !dbg !930
  %124 = fmul double %123, 2.000000e+00, !dbg !936
  call void @llvm.dbg.value(metadata double %124, metadata !527, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 19, metadata !523, metadata !DIExpression()), !dbg !930
  br label %125, !dbg !937

125:                                              ; preds = %125, %116
  %126 = phi i64 [ 19, %116 ], [ %141, %125 ]
  %127 = phi double [ 0.000000e+00, %116 ], [ %134, %125 ]
  %128 = phi double [ 0.000000e+00, %116 ], [ %140, %125 ]
  %129 = phi double [ 0.000000e+00, %116 ], [ %127, %125 ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !523, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata double %127, metadata !524, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata double %128, metadata !528, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata double %129, metadata !525, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata double %127, metadata !529, metadata !DIExpression()), !dbg !938
  %130 = fmul double %124, %127, !dbg !939
  %131 = fsub double %130, %129, !dbg !940
  %132 = getelementptr inbounds double, ptr @fd_2_c_data, i64 %126, !dbg !941
  %133 = load double, ptr %132, align 8, !dbg !941, !tbaa !548
  %134 = fadd double %131, %133, !dbg !942
  call void @llvm.dbg.value(metadata double %134, metadata !524, metadata !DIExpression()), !dbg !930
  %135 = tail call double @llvm.fabs.f64(double %130), !dbg !943
  %136 = tail call double @llvm.fabs.f64(double %129), !dbg !944
  %137 = fadd double %135, %136, !dbg !945
  %138 = tail call double @llvm.fabs.f64(double %133), !dbg !946
  %139 = fadd double %137, %138, !dbg !947
  %140 = fadd double %128, %139, !dbg !948
  call void @llvm.dbg.value(metadata double %140, metadata !528, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata double %127, metadata !525, metadata !DIExpression()), !dbg !930
  %141 = add nsw i64 %126, -1, !dbg !949
  call void @llvm.dbg.value(metadata i64 %141, metadata !523, metadata !DIExpression()), !dbg !930
  %142 = icmp ugt i64 %126, 1, !dbg !950
  br i1 %142, label %125, label %143, !dbg !937, !llvm.loop !951

143:                                              ; preds = %125
  call void @llvm.dbg.value(metadata double %134, metadata !533, metadata !DIExpression()), !dbg !953
  %144 = fmul double %123, %134, !dbg !954
  %145 = fsub double %144, %127, !dbg !955
  %146 = fadd double %145, 0x40551BE1ABDAB856, !dbg !956
  call void @llvm.dbg.value(metadata double %146, metadata !524, metadata !DIExpression()), !dbg !930
  %147 = tail call double @llvm.fabs.f64(double %144), !dbg !957
  %148 = tail call double @llvm.fabs.f64(double %127), !dbg !958
  %149 = fadd double %148, %147, !dbg !959
  %150 = fadd double %149, 0x40551BE1ABDAB856, !dbg !960
  %151 = fadd double %140, %150, !dbg !961
  call void @llvm.dbg.value(metadata double %151, metadata !528, metadata !DIExpression()), !dbg !930
  store double %146, ptr %1, align 8, !dbg !962, !tbaa !324
  %152 = fmul double %151, 0x3CB0000000000000, !dbg !963
  %153 = fadd double %152, 4.300000e-16, !dbg !964
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !965
  store double %153, ptr %154, align 8, !dbg !966, !tbaa !329
  br label %202

155:                                              ; preds = %114
  %156 = fcmp olt double %0, 3.000000e+01, !dbg !967
  br i1 %156, label %157, label %173, !dbg !968

157:                                              ; preds = %155
  %158 = fmul double %0, 1.000000e-01, !dbg !969
  %159 = fadd double %158, -2.000000e+00, !dbg !970
  tail call void @llvm.dbg.value(metadata double %159, metadata !795, metadata !DIExpression()), !dbg !804
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !971
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_2_d_cs, double noundef %159, ptr noundef nonnull %3), !dbg !972
  %160 = load double, ptr %3, align 8, !dbg !973, !tbaa !324
  %161 = fmul double %160, %0, !dbg !974
  %162 = fmul double %161, %0, !dbg !975
  %163 = fmul double %162, %0, !dbg !976
  store double %163, ptr %1, align 8, !dbg !977, !tbaa !324
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !978
  %165 = load double, ptr %164, align 8, !dbg !978, !tbaa !329
  %166 = fmul double %165, %0, !dbg !979
  %167 = fmul double %166, %0, !dbg !980
  %168 = fmul double %167, %0, !dbg !981
  %169 = tail call double @llvm.fabs.f64(double %163), !dbg !982
  %170 = fmul double %169, 0x3CC8000000000000, !dbg !983
  %171 = fadd double %168, %170, !dbg !984
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !985
  store double %171, ptr %172, align 8, !dbg !986, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !987
  br label %202

173:                                              ; preds = %155
  %174 = fcmp olt double %0, 0x410428A2F98D7287, !dbg !988
  br i1 %174, label %175, label %191, !dbg !989

175:                                              ; preds = %173
  %176 = fdiv double 6.000000e+01, %0, !dbg !990
  %177 = fadd double %176, -1.000000e+00, !dbg !991
  tail call void @llvm.dbg.value(metadata double %177, metadata !799, metadata !DIExpression()), !dbg !806
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !992
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_2_e_cs, double noundef %177, ptr noundef nonnull %4), !dbg !993
  %178 = load double, ptr %4, align 8, !dbg !994, !tbaa !324
  %179 = fmul double %178, %0, !dbg !995
  %180 = fmul double %179, %0, !dbg !996
  %181 = fmul double %180, %0, !dbg !997
  store double %181, ptr %1, align 8, !dbg !998, !tbaa !324
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !999
  %183 = load double, ptr %182, align 8, !dbg !999, !tbaa !329
  %184 = fmul double %183, %0, !dbg !1000
  %185 = fmul double %184, %0, !dbg !1001
  %186 = fmul double %185, %0, !dbg !1002
  %187 = tail call double @llvm.fabs.f64(double %181), !dbg !1003
  %188 = fmul double %187, 0x3CC8000000000000, !dbg !1004
  %189 = fadd double %186, %188, !dbg !1005
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1006
  store double %189, ptr %190, align 8, !dbg !1007, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1008
  br label %202

191:                                              ; preds = %173
  %192 = fcmp olt double %0, 0x554428A2F98D7242, !dbg !1009
  br i1 %192, label %193, label %200, !dbg !1011

193:                                              ; preds = %191
  %194 = fmul double %0, 0x3FC5555555555555, !dbg !1012
  %195 = fmul double %194, %0, !dbg !1014
  %196 = fmul double %195, %0, !dbg !1015
  store double %196, ptr %1, align 8, !dbg !1016, !tbaa !324
  %197 = tail call double @llvm.fabs.f64(double %196), !dbg !1017
  %198 = fmul double %197, 0x3CC8000000000000, !dbg !1018
  %199 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1019
  store double %198, ptr %199, align 8, !dbg !1020, !tbaa !329
  br label %202, !dbg !1021

200:                                              ; preds = %191
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !1022, !tbaa !324
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1022
  store double 0x7FF0000000000000, ptr %201, align 8, !dbg !1022, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1377, i32 noundef 16) #8, !dbg !1025
  br label %202, !dbg !1025

202:                                              ; preds = %6, %31, %61, %102, %143, %157, %175, %193, %200
  %203 = phi i32 [ 15, %6 ], [ 0, %31 ], [ 0, %61 ], [ 0, %102 ], [ 0, %143 ], [ 0, %157 ], [ 0, %175 ], [ 0, %193 ], [ 16, %200 ], !dbg !1027
  ret i32 %203, !dbg !1028
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_fermi_dirac_int_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !1029 {
  %4 = alloca [101 x double], align 16, !DIAssignID !1045
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1046
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1034, metadata !DIExpression(), metadata !1046, metadata ptr %5, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1031, metadata !DIExpression()), !dbg !1048
  tail call void @llvm.dbg.value(metadata double %1, metadata !1032, metadata !DIExpression()), !dbg !1048
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1033, metadata !DIExpression()), !dbg !1048
  %6 = icmp slt i32 %0, -1, !dbg !1049
  br i1 %6, label %7, label %180, !dbg !1050

7:                                                ; preds = %3
  call void @llvm.dbg.assign(metadata i1 undef, metadata !73, metadata !DIExpression(), metadata !1045, metadata ptr %4, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i32 %0, metadata !70, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata double %1, metadata !71, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata ptr %2, metadata !72, metadata !DIExpression()), !dbg !1051
  call void @llvm.lifetime.start.p0(i64 808, ptr nonnull %4) #8, !dbg !1054
  %8 = icmp ult i32 %0, -101, !dbg !1055
  br i1 %8, label %9, label %10, !dbg !1056

9:                                                ; preds = %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1057
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 867, i32 noundef 24) #8, !dbg !1059
  br label %178, !dbg !1059

10:                                               ; preds = %7
  %11 = xor i32 %0, -1, !dbg !1061
  call void @llvm.dbg.value(metadata i32 %11, metadata !85, metadata !DIExpression()), !dbg !1062
  %12 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 1, !dbg !1063
  store double 1.000000e+00, ptr %12, align 8, !dbg !1064, !tbaa !548, !DIAssignID !1065
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !73, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1065, metadata ptr %12, metadata !DIExpression()), !dbg !1051
  call void @llvm.dbg.value(metadata i32 2, metadata !84, metadata !DIExpression()), !dbg !1062
  %13 = icmp eq i32 %0, -2, !dbg !1066
  br i1 %13, label %87, label %14, !dbg !1069

14:                                               ; preds = %10
  %15 = sub nsw i32 0, %0, !dbg !1069
  %16 = zext nneg i32 %15 to i64, !dbg !1066
  br label %17, !dbg !1069

17:                                               ; preds = %80, %14
  %18 = phi i64 [ %84, %80 ], [ 0, %14 ]
  %19 = phi i64 [ %81, %80 ], [ 2, %14 ]
  %20 = phi i64 [ %82, %80 ], [ 1, %14 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !84, metadata !DIExpression()), !dbg !1062
  %21 = add nsw i64 %19, -1, !dbg !1070
  %22 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %21, !dbg !1072
  %23 = load double, ptr %22, align 8, !dbg !1072, !tbaa !548
  %24 = fneg double %23, !dbg !1073
  %25 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %19, !dbg !1074
  store double %24, ptr %25, align 8, !dbg !1075, !tbaa !548
  call void @llvm.dbg.value(metadata i64 %21, metadata !83, metadata !DIExpression()), !dbg !1062
  %26 = icmp ugt i64 %19, 2, !dbg !1076
  br i1 %26, label %27, label %80, !dbg !1079

27:                                               ; preds = %17
  %28 = trunc i64 %19 to i32
  %29 = and i64 %18, 1, !dbg !1079
  %30 = icmp eq i64 %29, 0, !dbg !1079
  br i1 %30, label %46, label %31, !dbg !1079

31:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 %20, metadata !83, metadata !DIExpression()), !dbg !1062
  %32 = trunc i64 %20 to i32, !dbg !1080
  %33 = sitofp i32 %32 to double, !dbg !1080
  %34 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %20, !dbg !1082
  %35 = load double, ptr %34, align 8, !dbg !1082, !tbaa !548
  %36 = fmul double %35, %33, !dbg !1083
  %37 = add nsw i64 %20, -1, !dbg !1084
  %38 = trunc i64 %37 to i32, !dbg !1084
  %39 = sub nsw i32 %28, %38, !dbg !1085
  %40 = sitofp i32 %39 to double, !dbg !1086
  %41 = and i64 %37, 4294967295
  %42 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %41, !dbg !1087
  %43 = load double, ptr %42, align 8, !dbg !1087, !tbaa !548
  %44 = fmul double %43, %40, !dbg !1088
  %45 = fsub double %36, %44, !dbg !1089
  store double %45, ptr %34, align 8, !dbg !1090, !tbaa !548
  call void @llvm.dbg.value(metadata i32 %38, metadata !83, metadata !DIExpression()), !dbg !1062
  br label %46, !dbg !1079

46:                                               ; preds = %31, %27
  %47 = phi i64 [ %20, %27 ], [ %37, %31 ]
  %48 = icmp eq i64 %18, 1, !dbg !1079
  br i1 %48, label %80, label %49, !dbg !1079

49:                                               ; preds = %46, %49
  %50 = phi i64 [ %70, %49 ], [ %47, %46 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !83, metadata !DIExpression()), !dbg !1062
  %51 = trunc i64 %50 to i32, !dbg !1080
  %52 = sitofp i32 %51 to double, !dbg !1080
  %53 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %50, !dbg !1082
  %54 = load double, ptr %53, align 8, !dbg !1082, !tbaa !548
  %55 = fmul double %54, %52, !dbg !1083
  %56 = add nsw i64 %50, -1, !dbg !1084
  %57 = trunc i64 %56 to i32, !dbg !1084
  %58 = sub nsw i32 %28, %57, !dbg !1085
  %59 = sitofp i32 %58 to double, !dbg !1086
  %60 = and i64 %56, 4294967295
  %61 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %60, !dbg !1087
  %62 = load double, ptr %61, align 8, !dbg !1087, !tbaa !548
  %63 = fmul double %62, %59, !dbg !1088
  %64 = fsub double %55, %63, !dbg !1089
  store double %64, ptr %53, align 8, !dbg !1090, !tbaa !548
  call void @llvm.dbg.value(metadata i32 %57, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %56, metadata !83, metadata !DIExpression()), !dbg !1062
  %65 = trunc i64 %56 to i32, !dbg !1080
  %66 = sitofp i32 %65 to double, !dbg !1080
  %67 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %56, !dbg !1082
  %68 = load double, ptr %67, align 8, !dbg !1082, !tbaa !548
  %69 = fmul double %68, %66, !dbg !1083
  %70 = add nsw i64 %50, -2, !dbg !1084
  %71 = trunc i64 %70 to i32, !dbg !1084
  %72 = sub nsw i32 %28, %71, !dbg !1085
  %73 = sitofp i32 %72 to double, !dbg !1086
  %74 = and i64 %70, 4294967295
  %75 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %74, !dbg !1087
  %76 = load double, ptr %75, align 8, !dbg !1087, !tbaa !548
  %77 = fmul double %76, %73, !dbg !1088
  %78 = fsub double %69, %77, !dbg !1089
  store double %78, ptr %67, align 8, !dbg !1090, !tbaa !548
  call void @llvm.dbg.value(metadata i32 %71, metadata !83, metadata !DIExpression()), !dbg !1062
  %79 = icmp sgt i64 %50, 3, !dbg !1076
  br i1 %79, label %49, label %80, !dbg !1079, !llvm.loop !1091

80:                                               ; preds = %46, %49, %17
  %81 = add nuw nsw i64 %19, 1, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %81, metadata !84, metadata !DIExpression()), !dbg !1062
  %82 = add nuw nsw i64 %20, 1, !dbg !1069
  %83 = icmp eq i64 %81, %16, !dbg !1066
  %84 = add i64 %18, 1, !dbg !1069
  br i1 %83, label %85, label %17, !dbg !1069, !llvm.loop !1094

85:                                               ; preds = %80
  %86 = fcmp ult double %1, 0.000000e+00, !dbg !1096
  br i1 %86, label %135, label %98, !dbg !1098

87:                                               ; preds = %10
  %88 = fcmp ult double %1, 0.000000e+00, !dbg !1096
  br i1 %88, label %93, label %89, !dbg !1098

89:                                               ; preds = %87
  %90 = fneg double %1, !dbg !1099
  %91 = tail call double @exp(double noundef %90) #8, !dbg !1101
  call void @llvm.dbg.value(metadata double %91, metadata !77, metadata !DIExpression()), !dbg !1062
  %92 = load double, ptr %12, align 8, !dbg !1102, !tbaa !548
  call void @llvm.dbg.value(metadata double %92, metadata !82, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 2, metadata !83, metadata !DIExpression()), !dbg !1062
  br label %168, !dbg !1103

93:                                               ; preds = %87
  %94 = tail call double @exp(double noundef %1) #8, !dbg !1105
  call void @llvm.dbg.value(metadata double %94, metadata !77, metadata !DIExpression()), !dbg !1062
  %95 = zext nneg i32 %11 to i64
  %96 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %95, !dbg !1107
  %97 = load double, ptr %96, align 8, !dbg !1107, !tbaa !548
  call void @llvm.dbg.value(metadata !DIArgList(i32 -2, i32 %0), metadata !83, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1062
  call void @llvm.dbg.value(metadata double %97, metadata !82, metadata !DIExpression()), !dbg !1062
  br label %168, !dbg !1108

98:                                               ; preds = %85
  %99 = fneg double %1, !dbg !1099
  %100 = tail call double @exp(double noundef %99) #8, !dbg !1101
  call void @llvm.dbg.value(metadata double %100, metadata !77, metadata !DIExpression()), !dbg !1062
  %101 = load double, ptr %12, align 8, !dbg !1102, !tbaa !548
  call void @llvm.dbg.value(metadata double %101, metadata !82, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i32 2, metadata !83, metadata !DIExpression()), !dbg !1062
  br i1 %13, label %168, label %102, !dbg !1103

102:                                              ; preds = %98
  %103 = add nsw i64 %16, -2, !dbg !1103
  %104 = add nsw i64 %16, -3, !dbg !1103
  %105 = and i64 %103, 3, !dbg !1103
  %106 = icmp ult i64 %104, 3, !dbg !1103
  br i1 %106, label %152, label %107, !dbg !1103

107:                                              ; preds = %102
  %108 = and i64 %103, -4, !dbg !1103
  br label %109, !dbg !1103

109:                                              ; preds = %109, %107
  %110 = phi i64 [ 2, %107 ], [ %132, %109 ]
  %111 = phi double [ %101, %107 ], [ %131, %109 ]
  %112 = phi i64 [ 0, %107 ], [ %133, %109 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double %111, metadata !82, metadata !DIExpression()), !dbg !1062
  %113 = fmul double %100, %111, !dbg !1110
  %114 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %110, !dbg !1113
  %115 = load double, ptr %114, align 16, !dbg !1113, !tbaa !548
  %116 = fadd double %113, %115, !dbg !1114
  call void @llvm.dbg.value(metadata double %116, metadata !82, metadata !DIExpression()), !dbg !1062
  %117 = or disjoint i64 %110, 1, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %117, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %117, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double %116, metadata !82, metadata !DIExpression()), !dbg !1062
  %118 = fmul double %100, %116, !dbg !1110
  %119 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %117, !dbg !1113
  %120 = load double, ptr %119, align 8, !dbg !1113, !tbaa !548
  %121 = fadd double %118, %120, !dbg !1114
  call void @llvm.dbg.value(metadata double %121, metadata !82, metadata !DIExpression()), !dbg !1062
  %122 = add nuw nsw i64 %110, 2, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %122, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %122, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double %121, metadata !82, metadata !DIExpression()), !dbg !1062
  %123 = fmul double %100, %121, !dbg !1110
  %124 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %122, !dbg !1113
  %125 = load double, ptr %124, align 16, !dbg !1113, !tbaa !548
  %126 = fadd double %123, %125, !dbg !1114
  call void @llvm.dbg.value(metadata double %126, metadata !82, metadata !DIExpression()), !dbg !1062
  %127 = add nuw nsw i64 %110, 3, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %127, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %127, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double %126, metadata !82, metadata !DIExpression()), !dbg !1062
  %128 = fmul double %100, %126, !dbg !1110
  %129 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %127, !dbg !1113
  %130 = load double, ptr %129, align 8, !dbg !1113, !tbaa !548
  %131 = fadd double %128, %130, !dbg !1114
  call void @llvm.dbg.value(metadata double %131, metadata !82, metadata !DIExpression()), !dbg !1062
  %132 = add nuw nsw i64 %110, 4, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %132, metadata !83, metadata !DIExpression()), !dbg !1062
  %133 = add i64 %112, 4, !dbg !1103
  %134 = icmp eq i64 %133, %108, !dbg !1103
  br i1 %134, label %152, label %109, !dbg !1103, !llvm.loop !1116

135:                                              ; preds = %85
  %136 = tail call double @exp(double noundef %1) #8, !dbg !1105
  call void @llvm.dbg.value(metadata double %136, metadata !77, metadata !DIExpression()), !dbg !1062
  %137 = zext nneg i32 %11 to i64
  %138 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %137, !dbg !1107
  %139 = load double, ptr %138, align 8, !dbg !1107, !tbaa !548
  call void @llvm.dbg.value(metadata !DIArgList(i32 -2, i32 %0), metadata !83, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1062
  call void @llvm.dbg.value(metadata double %139, metadata !82, metadata !DIExpression()), !dbg !1062
  br i1 %13, label %168, label %140, !dbg !1108

140:                                              ; preds = %135
  %141 = sub nuw nsw i32 -2, %0, !dbg !1118
  call void @llvm.dbg.value(metadata i32 %141, metadata !83, metadata !DIExpression()), !dbg !1062
  %142 = zext nneg i32 %141 to i64, !dbg !1108
  br label %143, !dbg !1108

143:                                              ; preds = %143, %140
  %144 = phi i64 [ %142, %140 ], [ %150, %143 ]
  %145 = phi double [ %139, %140 ], [ %149, %143 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double %145, metadata !82, metadata !DIExpression()), !dbg !1062
  %146 = fmul double %136, %145, !dbg !1119
  %147 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %144, !dbg !1122
  %148 = load double, ptr %147, align 8, !dbg !1122, !tbaa !548
  %149 = fadd double %146, %148, !dbg !1123
  call void @llvm.dbg.value(metadata double %149, metadata !82, metadata !DIExpression()), !dbg !1062
  %150 = add nsw i64 %144, -1, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %150, metadata !83, metadata !DIExpression()), !dbg !1062
  %151 = icmp ugt i64 %144, 1, !dbg !1125
  br i1 %151, label %143, label %168, !dbg !1108, !llvm.loop !1126

152:                                              ; preds = %109, %102
  %153 = phi double [ undef, %102 ], [ %131, %109 ]
  %154 = phi i64 [ 2, %102 ], [ %132, %109 ]
  %155 = phi double [ %101, %102 ], [ %131, %109 ]
  %156 = icmp eq i64 %105, 0, !dbg !1103
  br i1 %156, label %168, label %157, !dbg !1103

157:                                              ; preds = %152, %157
  %158 = phi i64 [ %165, %157 ], [ %154, %152 ]
  %159 = phi double [ %164, %157 ], [ %155, %152 ]
  %160 = phi i64 [ %166, %157 ], [ 0, %152 ]
  call void @llvm.dbg.value(metadata i64 %158, metadata !83, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double %159, metadata !82, metadata !DIExpression()), !dbg !1062
  %161 = fmul double %100, %159, !dbg !1110
  %162 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %158, !dbg !1113
  %163 = load double, ptr %162, align 8, !dbg !1113, !tbaa !548
  %164 = fadd double %161, %163, !dbg !1114
  call void @llvm.dbg.value(metadata double %164, metadata !82, metadata !DIExpression()), !dbg !1062
  %165 = add nuw nsw i64 %158, 1, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %165, metadata !83, metadata !DIExpression()), !dbg !1062
  %166 = add i64 %160, 1, !dbg !1103
  %167 = icmp eq i64 %166, %105, !dbg !1103
  br i1 %167, label %168, label %157, !dbg !1103, !llvm.loop !1128

168:                                              ; preds = %152, %157, %143, %89, %93, %135, %98
  %169 = phi double [ %136, %135 ], [ %100, %98 ], [ %94, %93 ], [ %91, %89 ], [ %136, %143 ], [ %100, %157 ], [ %100, %152 ], !dbg !1130
  %170 = phi double [ %139, %135 ], [ %101, %98 ], [ %97, %93 ], [ %92, %89 ], [ %149, %143 ], [ %153, %152 ], [ %164, %157 ], !dbg !1130
  call void @llvm.dbg.value(metadata double %170, metadata !82, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata double %169, metadata !77, metadata !DIExpression()), !dbg !1062
  %171 = fadd double %169, 1.000000e+00, !dbg !1131
  %172 = tail call double @gsl_sf_pow_int(double noundef %171, i32 noundef %0) #8, !dbg !1132
  call void @llvm.dbg.value(metadata double %172, metadata !81, metadata !DIExpression()), !dbg !1062
  %173 = fmul double %169, %170, !dbg !1133
  %174 = fmul double %173, %172, !dbg !1134
  store double %174, ptr %2, align 8, !dbg !1135, !tbaa !324
  %175 = tail call double @llvm.fabs.f64(double %174), !dbg !1136
  %176 = fmul double %175, 0x3CC8000000000000, !dbg !1137
  %177 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1138
  store double %176, ptr %177, align 8, !dbg !1139, !tbaa !329
  br label %178

178:                                              ; preds = %9, %168
  %179 = phi i32 [ 24, %9 ], [ 0, %168 ], !dbg !1140
  call void @llvm.lifetime.end.p0(i64 808, ptr nonnull %4) #8, !dbg !1141
  br label %242, !dbg !1142

180:                                              ; preds = %3
  switch i32 %0, label %213 [
    i32 -1, label %181
    i32 0, label %207
    i32 1, label %209
    i32 2, label %211
  ], !dbg !1143

181:                                              ; preds = %180
  call void @llvm.dbg.value(metadata double %1, metadata !310, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr %2, metadata !311, metadata !DIExpression()), !dbg !1144
  %182 = fcmp olt double %1, 0xC086232BDD7ABCD2, !dbg !1147
  br i1 %182, label %183, label %185, !dbg !1148

183:                                              ; preds = %181
  store double 0.000000e+00, ptr %2, align 8, !dbg !1149, !tbaa !324
  %184 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1149
  store double 0x10000000000000, ptr %184, align 8, !dbg !1149, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1218, i32 noundef 15) #8, !dbg !1150
  br label %242, !dbg !1150

185:                                              ; preds = %181
  %186 = fcmp olt double %1, 0.000000e+00, !dbg !1151
  br i1 %186, label %187, label %198, !dbg !1152

187:                                              ; preds = %185
  %188 = tail call double @exp(double noundef %1) #8, !dbg !1153
  call void @llvm.dbg.value(metadata double %188, metadata !312, metadata !DIExpression()), !dbg !1154
  %189 = fadd double %188, 1.000000e+00, !dbg !1155
  %190 = fdiv double %188, %189, !dbg !1156
  store double %190, ptr %2, align 8, !dbg !1157, !tbaa !324
  %191 = tail call double @llvm.fabs.f64(double %1), !dbg !1158
  %192 = fadd double %191, 1.000000e+00, !dbg !1159
  %193 = fmul double %192, 2.000000e+00, !dbg !1160
  %194 = fmul double %193, 0x3CB0000000000000, !dbg !1161
  %195 = tail call double @llvm.fabs.f64(double %190), !dbg !1162
  %196 = fmul double %194, %195, !dbg !1163
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1164
  store double %196, ptr %197, align 8, !dbg !1165, !tbaa !329
  br label %242

198:                                              ; preds = %185
  %199 = fneg double %1, !dbg !1166
  %200 = tail call double @exp(double noundef %199) #8, !dbg !1167
  call void @llvm.dbg.value(metadata double %200, metadata !316, metadata !DIExpression()), !dbg !1168
  %201 = fadd double %200, 1.000000e+00, !dbg !1169
  %202 = fdiv double 1.000000e+00, %201, !dbg !1170
  store double %202, ptr %2, align 8, !dbg !1171, !tbaa !324
  %203 = fadd double %1, 1.000000e+00, !dbg !1172
  %204 = fmul double %203, 0x3CC0000000000000, !dbg !1173
  %205 = fmul double %204, %200, !dbg !1174
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1175
  store double %205, ptr %206, align 8, !dbg !1176, !tbaa !329
  br label %242

207:                                              ; preds = %180
  %208 = tail call i32 @gsl_sf_fermi_dirac_0_e(double noundef %1, ptr noundef %2), !dbg !1177, !range !1179
  br label %242, !dbg !1180

209:                                              ; preds = %180
  %210 = tail call i32 @gsl_sf_fermi_dirac_1_e(double noundef %1, ptr noundef %2), !dbg !1181, !range !1183
  br label %242, !dbg !1184

211:                                              ; preds = %180
  %212 = tail call i32 @gsl_sf_fermi_dirac_2_e(double noundef %1, ptr noundef %2), !dbg !1185, !range !1183
  br label %242, !dbg !1187

213:                                              ; preds = %180
  %214 = fcmp olt double %1, 0.000000e+00, !dbg !1188
  br i1 %214, label %215, label %218, !dbg !1189

215:                                              ; preds = %213
  %216 = sitofp i32 %0 to double, !dbg !1190
  %217 = tail call fastcc i32 @fd_neg(double noundef %216, double noundef %1, ptr noundef %2), !dbg !1192, !range !1193
  br label %242, !dbg !1194

218:                                              ; preds = %213
  %219 = fcmp oeq double %1, 0.000000e+00, !dbg !1195
  br i1 %219, label %220, label %223, !dbg !1196

220:                                              ; preds = %218
  %221 = add nuw nsw i32 %0, 1, !dbg !1197
  %222 = tail call i32 @gsl_sf_eta_int_e(i32 noundef %221, ptr noundef %2) #8, !dbg !1199
  br label %242, !dbg !1200

223:                                              ; preds = %218
  %224 = fcmp olt double %1, 1.500000e+00, !dbg !1201
  br i1 %224, label %225, label %226, !dbg !1202

225:                                              ; preds = %223
  tail call fastcc void @fd_series_int(i32 noundef %0, double noundef %1, ptr noundef %2), !dbg !1203
  br label %242, !dbg !1205

226:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1206
  %227 = sitofp i32 %0 to double, !dbg !1207
  %228 = call fastcc i32 @fd_asymp(double noundef %227, double noundef %1, ptr noundef nonnull %5), !dbg !1208
  tail call void @llvm.dbg.value(metadata i32 %228, metadata !1044, metadata !DIExpression()), !dbg !1047
  %229 = icmp eq i32 %228, 0, !dbg !1209
  br i1 %229, label %230, label %238, !dbg !1211

230:                                              ; preds = %226
  %231 = load double, ptr %5, align 8, !dbg !1212, !tbaa !324
  store double %231, ptr %2, align 8, !dbg !1214, !tbaa !324
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1215
  %233 = load double, ptr %232, align 8, !dbg !1215, !tbaa !329
  %234 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1216
  %235 = tail call double @llvm.fabs.f64(double %231), !dbg !1217
  %236 = fmul double %235, 0x3CC0000000000000, !dbg !1218
  %237 = fadd double %233, %236, !dbg !1219
  store double %237, ptr %234, align 8, !dbg !1219, !tbaa !329
  br label %240, !dbg !1220

238:                                              ; preds = %226
  %239 = tail call fastcc i32 @fd_UMseries_int(i32 noundef %0, double noundef %1, ptr noundef %2), !dbg !1221
  br label %240, !dbg !1223

240:                                              ; preds = %238, %230
  %241 = phi i32 [ 0, %230 ], [ %239, %238 ], !dbg !1224
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1225
  br label %242

242:                                              ; preds = %198, %187, %183, %240, %225, %220, %215, %211, %209, %207, %178
  %243 = phi i32 [ %179, %178 ], [ %208, %207 ], [ %210, %209 ], [ %212, %211 ], [ %217, %215 ], [ %222, %220 ], [ 0, %225 ], [ %241, %240 ], [ 15, %183 ], [ 0, %187 ], [ 0, %198 ], !dbg !1226
  ret i32 %243, !dbg !1227
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @fd_neg(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !90 {
  %4 = alloca [101 x double], align 16, !DIAssignID !1228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !97, metadata !DIExpression(), metadata !1228, metadata ptr %4, metadata !DIExpression()), !dbg !1229
  %5 = alloca [101 x double], align 16, !DIAssignID !1230
  call void @llvm.dbg.assign(metadata i1 undef, metadata !98, metadata !DIExpression(), metadata !1230, metadata ptr %5, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata double %0, metadata !94, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata double %1, metadata !95, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !96, metadata !DIExpression()), !dbg !1229
  call void @llvm.lifetime.start.p0(i64 808, ptr nonnull %4) #8, !dbg !1231
  call void @llvm.lifetime.start.p0(i64 808, ptr nonnull %5) #8, !dbg !1231
  %6 = fcmp olt double %1, 0xC086232BDD7ABCD2, !dbg !1232
  br i1 %6, label %7, label %8, !dbg !1233

7:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1234
  br label %113, !dbg !1236

8:                                                ; preds = %3
  %9 = fcmp olt double %1, -1.000000e+00, !dbg !1237
  %10 = fadd double %0, 1.000000e+00
  br i1 %9, label %11, label %39, !dbg !1238

11:                                               ; preds = %8
  %12 = tail call double @llvm.fabs.f64(double %10), !dbg !1239
  %13 = fneg double %12, !dbg !1240
  %14 = fcmp ogt double %13, %1, !dbg !1241
  br i1 %14, label %15, label %39, !dbg !1242

15:                                               ; preds = %11
  %16 = tail call double @exp(double noundef %1) #8, !dbg !1243
  tail call void @llvm.dbg.value(metadata double %16, metadata !99, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata double %16, metadata !103, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata double %16, metadata !104, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 2, metadata !105, metadata !DIExpression()), !dbg !1244
  %17 = fneg double %16
  br label %18, !dbg !1245

18:                                               ; preds = %18, %15
  %19 = phi double [ %16, %15 ], [ %27, %18 ]
  %20 = phi double [ %16, %15 ], [ %28, %18 ]
  %21 = phi i32 [ 2, %15 ], [ %32, %18 ]
  tail call void @llvm.dbg.value(metadata double %19, metadata !103, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata double %20, metadata !104, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !105, metadata !DIExpression()), !dbg !1244
  %22 = sitofp i32 %21 to double, !dbg !1246
  %23 = fadd double %22, -1.000000e+00, !dbg !1247
  %24 = fdiv double %23, %22, !dbg !1248
  tail call void @llvm.dbg.value(metadata double %24, metadata !106, metadata !DIExpression()), !dbg !1249
  %25 = tail call double @pow(double noundef %24, double noundef %10) #8, !dbg !1250
  tail call void @llvm.dbg.value(metadata double %25, metadata !110, metadata !DIExpression()), !dbg !1249
  %26 = fmul double %25, %17, !dbg !1251
  %27 = fmul double %19, %26, !dbg !1252
  tail call void @llvm.dbg.value(metadata double %27, metadata !103, metadata !DIExpression()), !dbg !1244
  %28 = fadd double %20, %27, !dbg !1253
  tail call void @llvm.dbg.value(metadata double %28, metadata !104, metadata !DIExpression()), !dbg !1244
  %29 = fdiv double %27, %28, !dbg !1254
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !1256
  %31 = fcmp olt double %30, 0x3CB0000000000000, !dbg !1257
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !105, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1244
  %32 = add nuw nsw i32 %21, 1
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !105, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata double %27, metadata !103, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata double %28, metadata !104, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !105, metadata !DIExpression()), !dbg !1244
  %33 = icmp eq i32 %32, 100
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %18, !llvm.loop !1258

35:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata double %28, metadata !104, metadata !DIExpression()), !dbg !1244
  store double %28, ptr %2, align 8, !dbg !1260, !tbaa !324
  %36 = tail call double @llvm.fabs.f64(double %28), !dbg !1261
  %37 = fmul double %36, 0x3CC0000000000000, !dbg !1262
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1263
  store double %37, ptr %38, align 8, !dbg !1264, !tbaa !329
  br label %113

39:                                               ; preds = %8, %11
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !111, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %1, metadata !113, metadata !DIExpression()), !dbg !1265
  %40 = tail call double @exp(double noundef %1) #8, !dbg !1266
  %41 = fneg double %40, !dbg !1267
  tail call void @llvm.dbg.value(metadata double %41, metadata !114, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %40, metadata !115, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !116, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !111, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double undef, metadata !117, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %1, metadata !113, metadata !DIExpression()), !dbg !1265
  br label %49, !dbg !1268

42:                                               ; preds = %94
  %43 = fmul double %51, %41, !dbg !1269
  tail call void @llvm.dbg.value(metadata double %97, metadata !116, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %62, metadata !111, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !118, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %53, metadata !117, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %43, metadata !115, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %98, metadata !113, metadata !DIExpression()), !dbg !1265
  %44 = icmp eq i64 %55, 101, !dbg !1271
  br i1 %44, label %45, label %49, !dbg !1268, !llvm.loop !1272

45:                                               ; preds = %42
  tail call void @llvm.dbg.value(metadata double %97, metadata !116, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %53, metadata !117, metadata !DIExpression()), !dbg !1265
  store double %97, ptr %2, align 8, !dbg !1274, !tbaa !324
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1275
  %47 = fmul double %101, 0x3CC0000000000000, !dbg !1276
  %48 = fadd double %47, %100, !dbg !1277
  store double %48, ptr %46, align 8, !dbg !1277, !tbaa !329
  br label %113, !dbg !1278

49:                                               ; preds = %39, %42
  %50 = phi i64 [ 0, %39 ], [ %55, %42 ]
  %51 = phi double [ %40, %39 ], [ %43, %42 ]
  %52 = phi double [ %1, %39 ], [ %98, %42 ]
  %53 = phi double [ 0.000000e+00, %39 ], [ %97, %42 ]
  %54 = phi double [ 0.000000e+00, %39 ], [ %62, %42 ]
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !118, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %51, metadata !115, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %52, metadata !113, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %53, metadata !116, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %54, metadata !111, metadata !DIExpression()), !dbg !1265
  %55 = add nuw nsw i64 %50, 1, !dbg !1279
  %56 = trunc i64 %55 to i32, !dbg !1279
  %57 = sitofp i32 %56 to double, !dbg !1279
  %58 = tail call double @pow(double noundef %57, double noundef %10) #8, !dbg !1280
  tail call void @llvm.dbg.value(metadata double %58, metadata !119, metadata !DIExpression()), !dbg !1281
  %59 = fdiv double %51, %58, !dbg !1282
  tail call void @llvm.dbg.value(metadata double %59, metadata !123, metadata !DIExpression()), !dbg !1281
  tail call void @llvm.dbg.value(metadata double %53, metadata !117, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %59, metadata !1283, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1288, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1289, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1290, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1291, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1292, metadata !DIExpression()), !dbg !1302
  %60 = icmp eq i64 %50, 0, !dbg !1304
  %61 = select i1 %60, double 0.000000e+00, double %54, !dbg !1306
  %62 = fadd double %61, %59, !dbg !1307
  tail call void @llvm.dbg.value(metadata double %62, metadata !111, metadata !DIExpression()), !dbg !1265
  %63 = trunc i64 %50 to i32, !dbg !1308
  %64 = sitofp i32 %63 to double, !dbg !1308
  %65 = fadd double %64, 1.000000e+00, !dbg !1309
  %66 = fmul double %65, %59, !dbg !1310
  %67 = fmul double %65, %66, !dbg !1311
  %68 = fdiv double 1.000000e+00, %67, !dbg !1312
  %69 = getelementptr inbounds double, ptr %5, i64 %50, !dbg !1313
  store double %68, ptr %69, align 8, !dbg !1314, !tbaa !548
  %70 = fmul double %62, %68, !dbg !1315
  %71 = getelementptr inbounds double, ptr %4, i64 %50, !dbg !1316
  store double %70, ptr %71, align 8, !dbg !1317, !tbaa !548
  br i1 %60, label %94, label %72, !dbg !1318

72:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1293, metadata !DIExpression()), !dbg !1319
  %73 = fdiv double %64, %65, !dbg !1320
  tail call void @llvm.dbg.value(metadata double %73, metadata !1296, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1297, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1319
  br label %74, !dbg !1321

74:                                               ; preds = %74, %72
  %75 = phi double [ %70, %72 ], [ %92, %74 ], !dbg !1322
  %76 = phi double [ %68, %72 ], [ %88, %74 ], !dbg !1323
  %77 = phi i64 [ %50, %72 ], [ %79, %74 ]
  %78 = phi double [ 1.000000e+00, %72 ], [ %84, %74 ]
  tail call void @llvm.dbg.value(metadata double %78, metadata !1293, metadata !DIExpression()), !dbg !1319
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !1297, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1319
  %79 = add nsw i64 %77, -1, !dbg !1324
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1297, metadata !DIExpression()), !dbg !1319
  %80 = trunc i64 %77 to i32, !dbg !1325
  %81 = sitofp i32 %80 to double, !dbg !1325
  %82 = fmul double %78, %81, !dbg !1326
  %83 = fdiv double %82, %65, !dbg !1327
  tail call void @llvm.dbg.value(metadata double %83, metadata !1298, metadata !DIExpression()), !dbg !1328
  %84 = fmul double %73, %78, !dbg !1329
  tail call void @llvm.dbg.value(metadata double %84, metadata !1293, metadata !DIExpression()), !dbg !1319
  %85 = getelementptr inbounds double, ptr %5, i64 %79, !dbg !1330
  %86 = load double, ptr %85, align 8, !dbg !1330, !tbaa !548
  %87 = fmul double %86, %83, !dbg !1331
  %88 = fsub double %76, %87, !dbg !1332
  store double %88, ptr %85, align 8, !dbg !1333, !tbaa !548
  %89 = getelementptr inbounds double, ptr %4, i64 %79, !dbg !1334
  %90 = load double, ptr %89, align 8, !dbg !1334, !tbaa !548
  %91 = fmul double %83, %90, !dbg !1335
  %92 = fsub double %75, %91, !dbg !1336
  store double %92, ptr %89, align 8, !dbg !1337, !tbaa !548
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1297, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1319
  %93 = icmp ugt i64 %77, 1, !dbg !1338
  br i1 %93, label %74, label %94, !dbg !1321, !llvm.loop !1339

94:                                               ; preds = %74, %49
  %95 = load double, ptr %4, align 16, !dbg !1341, !tbaa !548
  %96 = load double, ptr %5, align 16, !dbg !1342, !tbaa !548
  %97 = fdiv double %95, %96, !dbg !1343
  tail call void @llvm.dbg.value(metadata double %97, metadata !116, metadata !DIExpression()), !dbg !1265
  %98 = fadd double %52, %1, !dbg !1344
  tail call void @llvm.dbg.value(metadata double %98, metadata !113, metadata !DIExpression()), !dbg !1265
  %99 = fsub double %97, %53, !dbg !1345
  %100 = tail call double @llvm.fabs.f64(double %99), !dbg !1346
  %101 = tail call double @llvm.fabs.f64(double %97), !dbg !1347
  %102 = fmul double %101, 2.000000e+00, !dbg !1348
  %103 = fmul double %102, 0x3CB0000000000000, !dbg !1349
  %104 = fcmp olt double %100, %103, !dbg !1350
  %105 = fcmp olt double %98, 0xC086232BDD7ABCD2
  %106 = select i1 %104, i1 true, i1 %105, !dbg !1269
  tail call void @llvm.dbg.value(metadata double poison, metadata !115, metadata !DIExpression()), !dbg !1265
  br i1 %106, label %107, label %42, !llvm.loop !1272

107:                                              ; preds = %94
  tail call void @llvm.dbg.value(metadata double %97, metadata !116, metadata !DIExpression()), !dbg !1265
  tail call void @llvm.dbg.value(metadata double %53, metadata !117, metadata !DIExpression()), !dbg !1265
  store double %97, ptr %2, align 8, !dbg !1274, !tbaa !324
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1275
  %109 = fmul double %101, 0x3CC0000000000000, !dbg !1276
  %110 = fadd double %109, %100, !dbg !1277
  store double %110, ptr %108, align 8, !dbg !1277, !tbaa !329
  %111 = icmp eq i32 %63, 100, !dbg !1351
  br i1 %111, label %112, label %113, !dbg !1278

112:                                              ; preds = %107
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 968, i32 noundef 11) #8, !dbg !1353
  br label %113, !dbg !1353

113:                                              ; preds = %45, %112, %107, %35, %7
  %114 = phi i32 [ 0, %7 ], [ 0, %35 ], [ 11, %112 ], [ 0, %107 ], [ 0, %45 ], !dbg !1355
  call void @llvm.lifetime.end.p0(i64 808, ptr nonnull %5) #8, !dbg !1356
  call void @llvm.lifetime.end.p0(i64 808, ptr nonnull %4) #8, !dbg !1356
  ret i32 %114, !dbg !1356
}

declare !dbg !1357 i32 @gsl_sf_eta_int_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @fd_series_int(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !1361 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1371, metadata !DIExpression(), metadata !1378, metadata ptr %4, metadata !DIExpression()), !dbg !1379
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1380
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1375, metadata !DIExpression(), metadata !1380, metadata ptr %5, metadata !DIExpression()), !dbg !1381
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1364, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double %1, metadata !1365, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1366, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1368, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1370, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1382
  %6 = add nuw nsw i32 %0, 1, !dbg !1383
  %7 = call i32 @gsl_sf_eta_int_e(i32 noundef %6, ptr noundef nonnull %4) #8, !dbg !1384
  %8 = load double, ptr %4, align 8, !dbg !1385, !tbaa !324
  tail call void @llvm.dbg.value(metadata double %8, metadata !1369, metadata !DIExpression()), !dbg !1379
  %9 = fadd double %8, 0.000000e+00, !dbg !1386
  tail call void @llvm.dbg.value(metadata double %9, metadata !1368, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1367, metadata !DIExpression()), !dbg !1379
  %10 = add i32 %0, 2
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1367, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1370, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double %9, metadata !1368, metadata !DIExpression()), !dbg !1379
  %11 = icmp slt i32 %0, -1, !dbg !1387
  br i1 %11, label %34, label %12, !dbg !1390

12:                                               ; preds = %3
  %13 = call i32 @llvm.smax.i32(i32 %10, i32 1), !dbg !1390
  br label %14, !dbg !1390

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 1, %12 ], [ %29, %14 ]
  %16 = phi double [ 1.000000e+00, %12 ], [ %22, %14 ]
  %17 = phi double [ %9, %12 ], [ %25, %14 ]
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1367, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double %16, metadata !1370, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double %17, metadata !1368, metadata !DIExpression()), !dbg !1379
  %18 = sub nsw i32 %6, %15, !dbg !1391
  %19 = call i32 @gsl_sf_eta_int_e(i32 noundef %18, ptr noundef nonnull %4) #8, !dbg !1393
  %20 = sitofp i32 %15 to double, !dbg !1394
  %21 = fdiv double %1, %20, !dbg !1395
  %22 = fmul double %16, %21, !dbg !1396
  tail call void @llvm.dbg.value(metadata double %22, metadata !1370, metadata !DIExpression()), !dbg !1379
  %23 = load double, ptr %4, align 8, !dbg !1397, !tbaa !324
  %24 = fmul double %22, %23, !dbg !1398
  tail call void @llvm.dbg.value(metadata double %24, metadata !1369, metadata !DIExpression()), !dbg !1379
  %25 = fadd double %17, %24, !dbg !1399
  tail call void @llvm.dbg.value(metadata double %25, metadata !1368, metadata !DIExpression()), !dbg !1379
  %26 = fdiv double %24, %25, !dbg !1400
  %27 = call double @llvm.fabs.f64(double %26), !dbg !1402
  %28 = fcmp olt double %27, 0x3CB0000000000000, !dbg !1403
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1367, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1379
  %29 = add nuw i32 %15, 1
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1367, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double %22, metadata !1370, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double %25, metadata !1368, metadata !DIExpression()), !dbg !1379
  %30 = icmp eq i32 %15, %13
  %31 = or i1 %28, %30, !dbg !1404
  br i1 %31, label %32, label %14, !dbg !1404, !llvm.loop !1405

32:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata double %25, metadata !1368, metadata !DIExpression()), !dbg !1379
  %33 = icmp slt i32 %0, 32, !dbg !1407
  br i1 %33, label %34, label %74, !dbg !1408

34:                                               ; preds = %3, %32
  %35 = phi double [ %25, %32 ], [ %9, %3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1409
  %36 = call i32 @gsl_sf_fact_e(i32 noundef %0, ptr noundef nonnull %5) #8, !dbg !1410
  %37 = call double @gsl_sf_pow_int(double noundef %1, i32 noundef %0) #8, !dbg !1411
  %38 = load double, ptr %5, align 8, !dbg !1412, !tbaa !324
  tail call void @llvm.dbg.value(metadata double %71, metadata !1377, metadata !DIExpression()), !dbg !1381
  %39 = call i32 @gsl_sf_eta_int_e(i32 noundef -3, ptr noundef nonnull %4) #8, !dbg !1413
  %40 = fmul double %1, %1, !dbg !1414
  %41 = fmul double %40, %1, !dbg !1415
  %42 = fmul double %41, %1, !dbg !1416
  %43 = add nuw nsw i32 %0, 4, !dbg !1417
  %44 = add nuw nsw i32 %0, 3, !dbg !1418
  %45 = mul nuw nsw i32 %43, %44, !dbg !1419
  %46 = mul nsw i32 %45, %10, !dbg !1420
  %47 = mul nsw i32 %46, %6, !dbg !1421
  %48 = sitofp i32 %47 to double, !dbg !1422
  %49 = fdiv double %42, %48, !dbg !1423
  tail call void @llvm.dbg.value(metadata double %49, metadata !1370, metadata !DIExpression()), !dbg !1379
  %50 = load double, ptr %4, align 8, !dbg !1424, !tbaa !324
  %51 = fmul double %49, %50, !dbg !1425
  tail call void @llvm.dbg.value(metadata double %51, metadata !1376, metadata !DIExpression()), !dbg !1381
  tail call void @llvm.dbg.value(metadata i32 3, metadata !1372, metadata !DIExpression()), !dbg !1381
  br label %52, !dbg !1426

52:                                               ; preds = %34, %52
  %53 = phi double [ %51, %34 ], [ %67, %52 ]
  %54 = phi i32 [ 3, %34 ], [ %68, %52 ]
  %55 = phi double [ %49, %34 ], [ %64, %52 ]
  tail call void @llvm.dbg.value(metadata double %53, metadata !1376, metadata !DIExpression()), !dbg !1381
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1372, metadata !DIExpression()), !dbg !1381
  tail call void @llvm.dbg.value(metadata double %55, metadata !1370, metadata !DIExpression()), !dbg !1379
  %56 = shl nuw nsw i32 %54, 1, !dbg !1428
  %57 = sub nsw i32 1, %56, !dbg !1431
  %58 = call i32 @gsl_sf_eta_int_e(i32 noundef %57, ptr noundef nonnull %4) #8, !dbg !1432
  %59 = add nsw i32 %56, %0, !dbg !1433
  %60 = add nsw i32 %59, -1, !dbg !1434
  %61 = mul nsw i32 %60, %59, !dbg !1435
  %62 = sitofp i32 %61 to double, !dbg !1436
  %63 = fdiv double %40, %62, !dbg !1437
  %64 = fmul double %55, %63, !dbg !1438
  tail call void @llvm.dbg.value(metadata double %64, metadata !1370, metadata !DIExpression()), !dbg !1379
  %65 = load double, ptr %4, align 8, !dbg !1439, !tbaa !324
  %66 = fmul double %64, %65, !dbg !1440
  %67 = fadd double %53, %66, !dbg !1441
  tail call void @llvm.dbg.value(metadata double %67, metadata !1376, metadata !DIExpression()), !dbg !1381
  %68 = add nuw nsw i32 %54, 1, !dbg !1442
  tail call void @llvm.dbg.value(metadata i32 %68, metadata !1372, metadata !DIExpression()), !dbg !1381
  %69 = icmp eq i32 %68, 24, !dbg !1443
  br i1 %69, label %70, label %52, !dbg !1426, !llvm.loop !1444

70:                                               ; preds = %52
  %71 = fdiv double %37, %38, !dbg !1446
  %72 = fmul double %71, %67, !dbg !1447
  %73 = fadd double %35, %72, !dbg !1448
  tail call void @llvm.dbg.value(metadata double %73, metadata !1368, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1449
  br label %74, !dbg !1450

74:                                               ; preds = %70, %32
  %75 = phi double [ %73, %70 ], [ %25, %32 ], !dbg !1379
  tail call void @llvm.dbg.value(metadata double %75, metadata !1368, metadata !DIExpression()), !dbg !1379
  store double %75, ptr %2, align 8, !dbg !1451, !tbaa !324
  %76 = call double @llvm.fabs.f64(double %75), !dbg !1452
  %77 = fmul double %76, 0x3CC0000000000000, !dbg !1453
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1454
  store double %77, ptr %78, align 8, !dbg !1455, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1456
  ret void, !dbg !1457
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fd_asymp(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !1458 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1487
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1465, metadata !DIExpression(), metadata !1487, metadata ptr %4, metadata !DIExpression()), !dbg !1488
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1489
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1476, metadata !DIExpression(), metadata !1489, metadata ptr %5, metadata !DIExpression()), !dbg !1488
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1490
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1478, metadata !DIExpression(), metadata !1490, metadata ptr %6, metadata !DIExpression()), !dbg !1488
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1491
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1486, metadata !DIExpression(), metadata !1491, metadata ptr %7, metadata !DIExpression()), !dbg !1492
  tail call void @llvm.dbg.value(metadata double %0, metadata !1460, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %1, metadata !1461, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1462, metadata !DIExpression()), !dbg !1488
  %8 = fadd double %0, 5.000000e-01, !dbg !1493
  %9 = tail call double @llvm.floor.f64(double %8), !dbg !1494
  %10 = fsub double %0, %9, !dbg !1495
  %11 = tail call double @llvm.fabs.f64(double %10), !dbg !1496
  %12 = fcmp olt double %11, 0x3D19000000000000, !dbg !1497
  tail call void @llvm.dbg.value(metadata i1 %12, metadata !1463, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1488
  tail call void @llvm.dbg.value(metadata i32 200, metadata !1464, metadata !DIExpression()), !dbg !1488
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1498
  %13 = fadd double %0, 2.000000e+00, !dbg !1499
  %14 = call i32 @gsl_sf_lngamma_e(double noundef %13, ptr noundef nonnull %4) #8, !dbg !1500
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1466, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1467, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1468, metadata !DIExpression()), !dbg !1488
  %15 = fdiv double 1.000000e+00, %1, !dbg !1501
  %16 = fdiv double %15, %1, !dbg !1502
  tail call void @llvm.dbg.value(metadata double %16, metadata !1469, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1470, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !1471, metadata !DIExpression()), !dbg !1488
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1503
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1504
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1481, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1467, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1468, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1470, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !1471, metadata !DIExpression()), !dbg !1488
  %17 = fadd double %0, 1.000000e+00
  br label %18, !dbg !1505

18:                                               ; preds = %3, %49
  %19 = phi double [ 5.000000e-01, %3 ], [ %50, %49 ]
  %20 = phi i32 [ 1, %3 ], [ %54, %49 ]
  %21 = phi double [ 0.000000e+00, %3 ], [ %53, %49 ]
  %22 = phi double [ 1.000000e+00, %3 ], [ %34, %49 ]
  %23 = phi double [ 0x7FEFFFFFFFFFFFFF, %3 ], [ %36, %49 ]
  tail call void @llvm.dbg.value(metadata double %19, metadata !1467, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !1481, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %21, metadata !1468, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %22, metadata !1470, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %23, metadata !1471, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %23, metadata !1482, metadata !DIExpression()), !dbg !1492
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1506
  %24 = shl nuw nsw i32 %20, 1, !dbg !1507
  %25 = call i32 @gsl_sf_eta_int_e(i32 noundef %24, ptr noundef nonnull %7) #8, !dbg !1508
  %26 = fmul double %16, %22, !dbg !1509
  %27 = add nsw i32 %24, -2, !dbg !1510
  %28 = sitofp i32 %27 to double, !dbg !1511
  %29 = fsub double %17, %28, !dbg !1512
  %30 = fmul double %26, %29, !dbg !1513
  %31 = add nsw i32 %24, -1, !dbg !1514
  %32 = sitofp i32 %31 to double, !dbg !1515
  %33 = fsub double %17, %32, !dbg !1516
  %34 = fmul double %33, %30, !dbg !1517
  tail call void @llvm.dbg.value(metadata double %34, metadata !1470, metadata !DIExpression()), !dbg !1488
  %35 = load double, ptr %7, align 8, !dbg !1518, !tbaa !324
  %36 = fmul double %34, %35, !dbg !1519
  tail call void @llvm.dbg.value(metadata double %36, metadata !1471, metadata !DIExpression()), !dbg !1488
  br i1 %12, label %41, label %37, !dbg !1520

37:                                               ; preds = %18
  %38 = call double @llvm.fabs.f64(double %36), !dbg !1522
  %39 = call double @llvm.fabs.f64(double %23), !dbg !1523
  %40 = fcmp ogt double %38, %39, !dbg !1524
  br i1 %40, label %47, label %41, !dbg !1525

41:                                               ; preds = %37, %18
  %42 = fdiv double %36, %19, !dbg !1526
  %43 = call double @llvm.fabs.f64(double %42), !dbg !1528
  %44 = fcmp olt double %43, 0x3CB0000000000000, !dbg !1529
  br i1 %44, label %45, label %49, !dbg !1530

45:                                               ; preds = %41
  %46 = call double @llvm.fabs.f64(double %36), !dbg !1531
  br label %47, !dbg !1530

47:                                               ; preds = %37, %45
  %48 = phi double [ %46, %45 ], [ %38, %37 ], !dbg !1531
  tail call void @llvm.dbg.value(metadata double %19, metadata !1467, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %21, metadata !1468, metadata !DIExpression()), !dbg !1488
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1532
  br label %56

49:                                               ; preds = %41
  %50 = fadd double %19, %36, !dbg !1533
  tail call void @llvm.dbg.value(metadata double %50, metadata !1467, metadata !DIExpression()), !dbg !1488
  %51 = call double @llvm.fabs.f64(double %36), !dbg !1534
  %52 = fmul double %51, 0x3CC0000000000000, !dbg !1535
  %53 = fadd double %21, %52, !dbg !1536
  tail call void @llvm.dbg.value(metadata double %53, metadata !1468, metadata !DIExpression()), !dbg !1488
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1532
  %54 = add nuw nsw i32 %20, 1, !dbg !1537
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1481, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %34, metadata !1470, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %36, metadata !1471, metadata !DIExpression()), !dbg !1488
  %55 = icmp eq i32 %54, 201, !dbg !1538
  br i1 %55, label %56, label %18, !dbg !1505, !llvm.loop !1539

56:                                               ; preds = %49, %47
  %57 = phi double [ %48, %47 ], [ %51, %49 ], !dbg !1531
  %58 = phi double [ %21, %47 ], [ %53, %49 ]
  %59 = phi double [ %19, %47 ], [ %50, %49 ]
  tail call void @llvm.dbg.value(metadata double %59, metadata !1467, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %58, metadata !1468, metadata !DIExpression()), !dbg !1488
  tail call void @llvm.dbg.value(metadata double %36, metadata !1471, metadata !DIExpression()), !dbg !1488
  %60 = fadd double %58, %57, !dbg !1541
  tail call void @llvm.dbg.value(metadata double %60, metadata !1468, metadata !DIExpression()), !dbg !1488
  %61 = fneg double %1, !dbg !1542
  %62 = call fastcc i32 @fd_neg(double noundef %0, double noundef %61, ptr noundef nonnull %5), !dbg !1543, !range !1193
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !1479, metadata !DIExpression()), !dbg !1488
  %63 = call double @log(double noundef %1) #8, !dbg !1544
  tail call void @llvm.dbg.value(metadata double %63, metadata !1473, metadata !DIExpression()), !dbg !1488
  %64 = fmul double %17, %63, !dbg !1545
  tail call void @llvm.dbg.value(metadata double %64, metadata !1474, metadata !DIExpression()), !dbg !1488
  %65 = load double, ptr %4, align 8, !dbg !1546, !tbaa !324
  tail call void @llvm.dbg.value(metadata double %65, metadata !1475, metadata !DIExpression()), !dbg !1488
  %66 = fsub double %64, %65, !dbg !1547
  tail call void @llvm.dbg.value(metadata double %66, metadata !1477, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1488
  %67 = call double @llvm.fabs.f64(double %64), !dbg !1548
  %68 = call double @llvm.fabs.f64(double %65), !dbg !1549
  %69 = fadd double %67, %68, !dbg !1550
  %70 = fmul double %69, 0x3CB0000000000000, !dbg !1551
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1552
  %72 = load double, ptr %71, align 8, !dbg !1552, !tbaa !329
  %73 = fadd double %72, %70, !dbg !1553
  tail call void @llvm.dbg.value(metadata double %73, metadata !1477, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1488
  %74 = call i32 @gsl_sf_exp_err_e(double noundef %66, double noundef %73, ptr noundef nonnull %6) #8, !dbg !1554
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !1480, metadata !DIExpression()), !dbg !1488
  %75 = fmul double %0, 0x400921FB54442D18, !dbg !1555
  %76 = call double @cos(double noundef %75) #8, !dbg !1556
  tail call void @llvm.dbg.value(metadata double %76, metadata !1472, metadata !DIExpression()), !dbg !1488
  %77 = load double, ptr %5, align 8, !dbg !1557, !tbaa !324
  %78 = fmul double %76, %77, !dbg !1558
  %79 = fmul double %59, 2.000000e+00, !dbg !1559
  %80 = load double, ptr %6, align 8, !dbg !1560, !tbaa !324
  %81 = fmul double %79, %80, !dbg !1561
  %82 = fadd double %78, %81, !dbg !1562
  store double %82, ptr %2, align 8, !dbg !1563, !tbaa !324
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1564
  %84 = load double, ptr %83, align 8, !dbg !1564, !tbaa !329
  %85 = fmul double %84, 2.000000e+00, !dbg !1565
  %86 = fmul double %59, %85, !dbg !1566
  %87 = call double @llvm.fabs.f64(double %86), !dbg !1567
  %88 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1568
  %89 = fmul double %80, 2.000000e+00, !dbg !1569
  %90 = fmul double %60, %89, !dbg !1570
  %91 = call double @llvm.fabs.f64(double %90), !dbg !1571
  %92 = fadd double %91, %87, !dbg !1572
  %93 = call double @llvm.fabs.f64(double %76), !dbg !1573
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1574
  %95 = load double, ptr %94, align 8, !dbg !1574, !tbaa !329
  %96 = fmul double %93, %95, !dbg !1575
  %97 = fadd double %96, %92, !dbg !1576
  %98 = call double @llvm.fabs.f64(double %82), !dbg !1577
  %99 = fmul double %98, 0x3CD0000000000000, !dbg !1578
  %100 = fadd double %99, %97, !dbg !1579
  store double %100, ptr %88, align 8, !dbg !1579, !tbaa !329
  %101 = icmp eq i32 %74, 0, !dbg !1580
  %102 = icmp eq i32 %62, 0, !dbg !1580
  %103 = select i1 %102, i32 %14, i32 %62, !dbg !1580
  %104 = select i1 %101, i32 %103, i32 %74, !dbg !1580
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1581
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1581
  ret i32 %104, !dbg !1582
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fd_UMseries_int(i32 noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !1583 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1625
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1603, metadata !DIExpression(), metadata !1625, metadata ptr %4, metadata !DIExpression()), !dbg !1626
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1627
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1606, metadata !DIExpression(), metadata !1627, metadata ptr %5, metadata !DIExpression()), !dbg !1628
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1612, metadata !DIExpression(), metadata !1629, metadata ptr %6, metadata !DIExpression()), !dbg !1630
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1631
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1613, metadata !DIExpression(), metadata !1631, metadata ptr %7, metadata !DIExpression()), !dbg !1630
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1632
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1621, metadata !DIExpression(), metadata !1632, metadata ptr %8, metadata !DIExpression()), !dbg !1633
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1622, metadata !DIExpression(), metadata !1634, metadata ptr %9, metadata !DIExpression()), !dbg !1633
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1585, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %1, metadata !1586, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1587, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 2000, metadata !1588, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1592, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1593, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1594, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1595, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1598, metadata !DIExpression()), !dbg !1635
  %10 = fcmp olt double %1, 5.000000e+02, !dbg !1636
  %11 = icmp slt i32 %0, 80
  %12 = and i1 %11, %10, !dbg !1637
  br i1 %12, label %13, label %21, !dbg !1637

13:                                               ; preds = %3
  %14 = add nuw nsw i32 %0, 1, !dbg !1638
  %15 = tail call double @gsl_sf_pow_int(double noundef %1, i32 noundef %14) #8, !dbg !1639
  tail call void @llvm.dbg.value(metadata double %15, metadata !1600, metadata !DIExpression()), !dbg !1626
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1640
  %16 = call i32 @gsl_sf_fact_e(i32 noundef %14, ptr noundef nonnull %4) #8, !dbg !1641
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1590, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1591, metadata !DIExpression()), !dbg !1635
  %17 = load double, ptr %4, align 8, !dbg !1642, !tbaa !324
  %18 = fdiv double %15, %17, !dbg !1643
  tail call void @llvm.dbg.value(metadata double %18, metadata !1589, metadata !DIExpression()), !dbg !1635
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1644
  %19 = sitofp i32 %0 to double
  %20 = fadd double %19, 1.000000e+00
  br label %35, !dbg !1645

21:                                               ; preds = %3
  %22 = tail call double @log(double noundef %1) #8, !dbg !1646
  tail call void @llvm.dbg.value(metadata double %22, metadata !1604, metadata !DIExpression()), !dbg !1628
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1647
  %23 = sitofp i32 %0 to double, !dbg !1648
  %24 = fadd double %23, 2.000000e+00, !dbg !1649
  %25 = call i32 @gsl_sf_lngamma_e(double noundef %24, ptr noundef nonnull %5) #8, !dbg !1650
  %26 = fadd double %23, 1.000000e+00, !dbg !1651
  %27 = fmul double %26, %22, !dbg !1652
  %28 = load double, ptr %5, align 8, !dbg !1653, !tbaa !324
  %29 = fsub double %27, %28, !dbg !1654
  tail call void @llvm.dbg.value(metadata double %29, metadata !1590, metadata !DIExpression()), !dbg !1635
  %30 = call double @llvm.fabs.f64(double %27), !dbg !1655
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !1656
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1657
  %33 = load double, ptr %32, align 8, !dbg !1657, !tbaa !329
  %34 = fadd double %31, %33, !dbg !1658
  tail call void @llvm.dbg.value(metadata double %34, metadata !1591, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1589, metadata !DIExpression()), !dbg !1635
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1659
  br label %35

35:                                               ; preds = %21, %13
  %36 = phi double [ %26, %21 ], [ %20, %13 ]
  %37 = phi double [ %34, %21 ], [ 0.000000e+00, %13 ], !dbg !1660
  %38 = phi double [ %29, %21 ], [ 0.000000e+00, %13 ], !dbg !1660
  %39 = phi double [ 1.000000e+00, %21 ], [ %18, %13 ], !dbg !1660
  tail call void @llvm.dbg.value(metadata double %39, metadata !1589, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %38, metadata !1590, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %37, metadata !1591, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1599, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1594, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1595, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1598, metadata !DIExpression()), !dbg !1635
  %40 = add nuw nsw i32 %0, 2
  %41 = call double @llvm.fabs.f64(double %36)
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1
  br label %44, !dbg !1661

44:                                               ; preds = %44, %35
  %45 = phi double [ 0.000000e+00, %35 ], [ %68, %44 ]
  %46 = phi double [ 0.000000e+00, %35 ], [ %69, %44 ]
  %47 = phi i32 [ 0, %35 ], [ %59, %44 ]
  %48 = phi i32 [ 1, %35 ], [ %73, %44 ]
  tail call void @llvm.dbg.value(metadata double %45, metadata !1594, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %46, metadata !1595, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !1598, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1599, metadata !DIExpression()), !dbg !1635
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1662
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1663
  %49 = sitofp i32 %48 to double, !dbg !1664
  %50 = fmul double %49, %1, !dbg !1665
  %51 = call i32 @gsl_sf_hyperg_U_int_e(i32 noundef 1, i32 noundef %40, double noundef %50, ptr noundef nonnull %6) #8, !dbg !1666
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !1614, metadata !DIExpression()), !dbg !1630
  %52 = sub nsw i32 0, %48, !dbg !1667
  %53 = sitofp i32 %52 to double, !dbg !1667
  %54 = fmul double %53, %1, !dbg !1668
  %55 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef 1, i32 noundef %40, double noundef %54, ptr noundef nonnull %7) #8, !dbg !1669
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !1615, metadata !DIExpression()), !dbg !1630
  %56 = icmp eq i32 %47, 0, !dbg !1670
  %57 = icmp eq i32 %51, 0, !dbg !1670
  %58 = select i1 %57, i32 %55, i32 %51, !dbg !1670
  %59 = select i1 %56, i32 %58, i32 %47, !dbg !1670
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1598, metadata !DIExpression()), !dbg !1635
  %60 = load double, ptr %6, align 8, !dbg !1671, !tbaa !324
  %61 = fmul double %36, %60, !dbg !1672
  %62 = load double, ptr %7, align 8, !dbg !1673, !tbaa !324
  %63 = fsub double %61, %62, !dbg !1674
  tail call void @llvm.dbg.value(metadata double %63, metadata !1607, metadata !DIExpression()), !dbg !1630
  %64 = load double, ptr %42, align 8, !dbg !1675, !tbaa !329
  %65 = fmul double %41, %64, !dbg !1676
  %66 = load double, ptr %43, align 8, !dbg !1677, !tbaa !329
  %67 = fadd double %65, %66, !dbg !1678
  tail call void @llvm.dbg.value(metadata double %67, metadata !1611, metadata !DIExpression()), !dbg !1630
  %68 = fadd double %45, %63, !dbg !1679
  tail call void @llvm.dbg.value(metadata double %68, metadata !1594, metadata !DIExpression()), !dbg !1635
  %69 = fadd double %46, %67, !dbg !1680
  tail call void @llvm.dbg.value(metadata double %69, metadata !1595, metadata !DIExpression()), !dbg !1635
  %70 = fdiv double %63, %68, !dbg !1681
  %71 = call double @llvm.fabs.f64(double %70), !dbg !1683
  %72 = fcmp uge double %71, 0x3CB0000000000000, !dbg !1684
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1685
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !1599, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1635
  %73 = add nuw nsw i32 %48, 2
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !1599, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %68, metadata !1594, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %69, metadata !1595, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1598, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !1599, metadata !DIExpression()), !dbg !1635
  %74 = icmp ult i32 %48, 1998
  %75 = and i1 %72, %74
  br i1 %75, label %44, label %76, !llvm.loop !1686

76:                                               ; preds = %44
  tail call void @llvm.dbg.value(metadata double %68, metadata !1594, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %69, metadata !1595, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !1598, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1599, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1592, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1593, metadata !DIExpression()), !dbg !1635
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1
  br label %79, !dbg !1688

79:                                               ; preds = %76, %108
  %80 = phi double [ 1.000000e+00, %76 ], [ %103, %108 ]
  %81 = phi double [ 0.000000e+00, %76 ], [ %104, %108 ]
  %82 = phi i32 [ %59, %76 ], [ %94, %108 ]
  %83 = phi i32 [ 2, %76 ], [ %109, %108 ]
  tail call void @llvm.dbg.value(metadata double %80, metadata !1592, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %81, metadata !1593, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %82, metadata !1598, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !1599, metadata !DIExpression()), !dbg !1635
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1689
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !1690
  %84 = sitofp i32 %83 to double, !dbg !1691
  %85 = fmul double %84, %1, !dbg !1692
  %86 = call i32 @gsl_sf_hyperg_U_int_e(i32 noundef 1, i32 noundef %40, double noundef %85, ptr noundef nonnull %8) #8, !dbg !1693
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !1623, metadata !DIExpression()), !dbg !1633
  %87 = sub nsw i32 0, %83, !dbg !1694
  %88 = sitofp i32 %87 to double, !dbg !1694
  %89 = fmul double %88, %1, !dbg !1695
  %90 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef 1, i32 noundef %40, double noundef %89, ptr noundef nonnull %9) #8, !dbg !1696
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !1624, metadata !DIExpression()), !dbg !1633
  %91 = icmp eq i32 %82, 0, !dbg !1697
  %92 = icmp eq i32 %86, 0, !dbg !1697
  %93 = select i1 %92, i32 %90, i32 %86, !dbg !1697
  %94 = select i1 %91, i32 %93, i32 %82, !dbg !1697
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !1598, metadata !DIExpression()), !dbg !1635
  %95 = load double, ptr %8, align 8, !dbg !1698, !tbaa !324
  %96 = fmul double %36, %95, !dbg !1699
  %97 = load double, ptr %9, align 8, !dbg !1700, !tbaa !324
  %98 = fsub double %96, %97, !dbg !1701
  tail call void @llvm.dbg.value(metadata double %98, metadata !1616, metadata !DIExpression()), !dbg !1633
  %99 = load double, ptr %77, align 8, !dbg !1702, !tbaa !329
  %100 = fmul double %41, %99, !dbg !1703
  %101 = load double, ptr %78, align 8, !dbg !1704, !tbaa !329
  %102 = fadd double %100, %101, !dbg !1705
  tail call void @llvm.dbg.value(metadata double %102, metadata !1620, metadata !DIExpression()), !dbg !1633
  %103 = fsub double %80, %98, !dbg !1706
  tail call void @llvm.dbg.value(metadata double %103, metadata !1592, metadata !DIExpression()), !dbg !1635
  %104 = fadd double %81, %102, !dbg !1707
  tail call void @llvm.dbg.value(metadata double %104, metadata !1593, metadata !DIExpression()), !dbg !1635
  %105 = fdiv double %98, %103, !dbg !1708
  %106 = call double @llvm.fabs.f64(double %105), !dbg !1710
  %107 = fcmp olt double %106, 0x3CB0000000000000, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !1712
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1712
  br i1 %107, label %111, label %108

108:                                              ; preds = %79
  %109 = add nuw nsw i32 %83, 2, !dbg !1713
  tail call void @llvm.dbg.value(metadata double %103, metadata !1592, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %104, metadata !1593, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !1598, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %109, metadata !1599, metadata !DIExpression()), !dbg !1635
  %110 = icmp ult i32 %83, 1998, !dbg !1714
  br i1 %110, label %79, label %111, !dbg !1688, !llvm.loop !1715

111:                                              ; preds = %79, %108
  %112 = phi i32 [ %83, %79 ], [ 2000, %108 ], !dbg !1717
  tail call void @llvm.dbg.value(metadata double %103, metadata !1592, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata double %104, metadata !1593, metadata !DIExpression()), !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !1598, metadata !DIExpression()), !dbg !1635
  %113 = freeze i32 %112, !dbg !1718
  %114 = icmp ugt i32 %113, 1999, !dbg !1718
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1596, metadata !DIExpression()), !dbg !1635
  %115 = fadd double %68, %103, !dbg !1719
  %116 = fmul double %39, %115, !dbg !1720
  %117 = fadd double %69, %104, !dbg !1721
  %118 = fmul double %39, %117, !dbg !1722
  %119 = call i32 @gsl_sf_exp_mult_err_e(double noundef %38, double noundef %37, double noundef %116, double noundef %118, ptr noundef %2) #8, !dbg !1723
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !1597, metadata !DIExpression()), !dbg !1635
  %120 = load double, ptr %2, align 8, !dbg !1724, !tbaa !324
  %121 = call double @llvm.fabs.f64(double %120), !dbg !1725
  %122 = fmul double %121, 0x3CC0000000000000, !dbg !1726
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1727
  %124 = load double, ptr %123, align 8, !dbg !1728, !tbaa !329
  %125 = fadd double %124, %122, !dbg !1728
  store double %125, ptr %123, align 8, !dbg !1728, !tbaa !329
  %126 = icmp eq i32 %119, 0, !dbg !1729
  %127 = icmp eq i32 %94, 0, !dbg !1729
  %128 = select i1 %114, i32 11, i32 0, !dbg !1729
  %129 = select i1 %127, i32 %128, i32 %94, !dbg !1729
  %130 = select i1 %126, i32 %129, i32 %119, !dbg !1729
  ret i32 %130, !dbg !1730
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_fermi_dirac_mhalf_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1731 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1758
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1757, metadata !DIExpression(), metadata !1758, metadata ptr %3, metadata !DIExpression()), !dbg !1759
  tail call void @llvm.dbg.value(metadata double %0, metadata !1733, metadata !DIExpression()), !dbg !1760
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1734, metadata !DIExpression()), !dbg !1760
  %4 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !1761
  br i1 %4, label %5, label %7, !dbg !1762

5:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !1763, !tbaa !324
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1763
  store double 0x10000000000000, ptr %6, align 8, !dbg !1763, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1428, i32 noundef 15) #8, !dbg !1766
  br label %171, !dbg !1766

7:                                                ; preds = %2
  %8 = fcmp olt double %0, -1.000000e+00, !dbg !1768
  br i1 %8, label %9, label %34, !dbg !1769

9:                                                ; preds = %7
  %10 = tail call double @exp(double noundef %0) #8, !dbg !1770
  tail call void @llvm.dbg.value(metadata double %10, metadata !1735, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata double %10, metadata !1739, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata double %10, metadata !1740, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1741, metadata !DIExpression()), !dbg !1771
  %11 = fneg double %10
  br label %12, !dbg !1772

12:                                               ; preds = %12, %9
  %13 = phi double [ %10, %9 ], [ %21, %12 ]
  %14 = phi double [ %10, %9 ], [ %22, %12 ]
  %15 = phi i32 [ 2, %9 ], [ %26, %12 ]
  tail call void @llvm.dbg.value(metadata double %13, metadata !1739, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata double %14, metadata !1740, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1741, metadata !DIExpression()), !dbg !1771
  %16 = sitofp i32 %15 to double, !dbg !1773
  %17 = fadd double %16, -1.000000e+00, !dbg !1774
  %18 = fdiv double %17, %16, !dbg !1775
  tail call void @llvm.dbg.value(metadata double %18, metadata !1742, metadata !DIExpression()), !dbg !1776
  %19 = tail call double @sqrt(double noundef %18) #8, !dbg !1777
  %20 = fmul double %19, %11, !dbg !1778
  %21 = fmul double %13, %20, !dbg !1779
  tail call void @llvm.dbg.value(metadata double %21, metadata !1739, metadata !DIExpression()), !dbg !1771
  %22 = fadd double %14, %21, !dbg !1780
  tail call void @llvm.dbg.value(metadata double %22, metadata !1740, metadata !DIExpression()), !dbg !1771
  %23 = fdiv double %21, %22, !dbg !1781
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !1783
  %25 = fcmp olt double %24, 0x3CB0000000000000, !dbg !1784
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1741, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1771
  %26 = add nuw nsw i32 %15, 1
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1741, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata double %21, metadata !1739, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata double %22, metadata !1740, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1741, metadata !DIExpression()), !dbg !1771
  %27 = icmp eq i32 %26, 200
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %12, !llvm.loop !1785

29:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %22, metadata !1740, metadata !DIExpression()), !dbg !1771
  store double %22, ptr %1, align 8, !dbg !1787, !tbaa !324
  %30 = tail call double @llvm.fabs.f64(double %22), !dbg !1788
  %31 = fmul double %30, 2.000000e+00, !dbg !1789
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !1790
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1791
  store double %32, ptr %33, align 8, !dbg !1792, !tbaa !329
  br label %171

34:                                               ; preds = %7
  %35 = fcmp olt double %0, 1.000000e+00, !dbg !1793
  br i1 %35, label %36, label %72, !dbg !1794

36:                                               ; preds = %34
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double %0, metadata !521, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !1795
  %37 = fmul double %0, 2.000000e+00, !dbg !1798
  %38 = fadd double %37, 1.000000e+00, !dbg !1799
  %39 = fadd double %38, -1.000000e+00, !dbg !1800
  %40 = fmul double %39, 5.000000e-01, !dbg !1801
  call void @llvm.dbg.value(metadata double %40, metadata !526, metadata !DIExpression()), !dbg !1795
  %41 = fmul double %40, 2.000000e+00, !dbg !1802
  call void @llvm.dbg.value(metadata double %41, metadata !527, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i32 19, metadata !523, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !1795
  br label %42, !dbg !1803

42:                                               ; preds = %42, %36
  %43 = phi i64 [ 19, %36 ], [ %58, %42 ]
  %44 = phi double [ 0.000000e+00, %36 ], [ %51, %42 ]
  %45 = phi double [ 0.000000e+00, %36 ], [ %57, %42 ]
  %46 = phi double [ 0.000000e+00, %36 ], [ %44, %42 ]
  call void @llvm.dbg.value(metadata i64 %43, metadata !523, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double %44, metadata !524, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double %45, metadata !528, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double %46, metadata !525, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double %44, metadata !529, metadata !DIExpression()), !dbg !1804
  %47 = fmul double %41, %44, !dbg !1805
  %48 = fsub double %47, %46, !dbg !1806
  %49 = getelementptr inbounds double, ptr @fd_mhalf_a_data, i64 %43, !dbg !1807
  %50 = load double, ptr %49, align 8, !dbg !1807, !tbaa !548
  %51 = fadd double %48, %50, !dbg !1808
  call void @llvm.dbg.value(metadata double %51, metadata !524, metadata !DIExpression()), !dbg !1795
  %52 = tail call double @llvm.fabs.f64(double %47), !dbg !1809
  %53 = tail call double @llvm.fabs.f64(double %46), !dbg !1810
  %54 = fadd double %52, %53, !dbg !1811
  %55 = tail call double @llvm.fabs.f64(double %50), !dbg !1812
  %56 = fadd double %54, %55, !dbg !1813
  %57 = fadd double %45, %56, !dbg !1814
  call void @llvm.dbg.value(metadata double %57, metadata !528, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata double %44, metadata !525, metadata !DIExpression()), !dbg !1795
  %58 = add nsw i64 %43, -1, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %58, metadata !523, metadata !DIExpression()), !dbg !1795
  %59 = icmp ugt i64 %43, 1, !dbg !1816
  br i1 %59, label %42, label %60, !dbg !1803, !llvm.loop !1817

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata double %51, metadata !533, metadata !DIExpression()), !dbg !1819
  %61 = fmul double %40, %51, !dbg !1820
  %62 = fsub double %61, %44, !dbg !1821
  %63 = fadd double %62, 0x3FE442E233B626ED, !dbg !1822
  call void @llvm.dbg.value(metadata double %63, metadata !524, metadata !DIExpression()), !dbg !1795
  %64 = tail call double @llvm.fabs.f64(double %61), !dbg !1823
  %65 = tail call double @llvm.fabs.f64(double %44), !dbg !1824
  %66 = fadd double %65, %64, !dbg !1825
  %67 = fadd double %66, 0x3FE442E233B626ED, !dbg !1826
  %68 = fadd double %57, %67, !dbg !1827
  call void @llvm.dbg.value(metadata double %68, metadata !528, metadata !DIExpression()), !dbg !1795
  store double %63, ptr %1, align 8, !dbg !1828, !tbaa !324
  %69 = fmul double %68, 0x3CB0000000000000, !dbg !1829
  %70 = fadd double %69, 1.561000e-16, !dbg !1830
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1831
  store double %70, ptr %71, align 8, !dbg !1832, !tbaa !329
  br label %171, !dbg !1833

72:                                               ; preds = %34
  %73 = fcmp olt double %0, 4.000000e+00, !dbg !1834
  br i1 %73, label %74, label %113, !dbg !1835

74:                                               ; preds = %72
  %75 = fadd double %0, -1.000000e+00, !dbg !1836
  %76 = fmul double %75, 0x3FE5555555555555, !dbg !1837
  %77 = fadd double %76, -1.000000e+00, !dbg !1838
  tail call void @llvm.dbg.value(metadata double %77, metadata !1746, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata double %77, metadata !521, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !1840
  %78 = fmul double %77, 2.000000e+00, !dbg !1842
  %79 = fadd double %78, 1.000000e+00, !dbg !1843
  %80 = fadd double %79, -1.000000e+00, !dbg !1844
  %81 = fmul double %80, 5.000000e-01, !dbg !1845
  call void @llvm.dbg.value(metadata double %81, metadata !526, metadata !DIExpression()), !dbg !1840
  %82 = fmul double %81, 2.000000e+00, !dbg !1846
  call void @llvm.dbg.value(metadata double %82, metadata !527, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 19, metadata !523, metadata !DIExpression()), !dbg !1840
  br label %83, !dbg !1847

83:                                               ; preds = %83, %74
  %84 = phi i64 [ 19, %74 ], [ %99, %83 ]
  %85 = phi double [ 0.000000e+00, %74 ], [ %92, %83 ]
  %86 = phi double [ 0.000000e+00, %74 ], [ %98, %83 ]
  %87 = phi double [ 0.000000e+00, %74 ], [ %85, %83 ]
  call void @llvm.dbg.value(metadata i64 %84, metadata !523, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata double %85, metadata !524, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata double %86, metadata !528, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata double %87, metadata !525, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata double %85, metadata !529, metadata !DIExpression()), !dbg !1848
  %88 = fmul double %82, %85, !dbg !1849
  %89 = fsub double %88, %87, !dbg !1850
  %90 = getelementptr inbounds double, ptr @fd_mhalf_b_data, i64 %84, !dbg !1851
  %91 = load double, ptr %90, align 8, !dbg !1851, !tbaa !548
  %92 = fadd double %89, %91, !dbg !1852
  call void @llvm.dbg.value(metadata double %92, metadata !524, metadata !DIExpression()), !dbg !1840
  %93 = tail call double @llvm.fabs.f64(double %88), !dbg !1853
  %94 = tail call double @llvm.fabs.f64(double %87), !dbg !1854
  %95 = fadd double %93, %94, !dbg !1855
  %96 = tail call double @llvm.fabs.f64(double %91), !dbg !1856
  %97 = fadd double %95, %96, !dbg !1857
  %98 = fadd double %86, %97, !dbg !1858
  call void @llvm.dbg.value(metadata double %98, metadata !528, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata double %85, metadata !525, metadata !DIExpression()), !dbg !1840
  %99 = add nsw i64 %84, -1, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %99, metadata !523, metadata !DIExpression()), !dbg !1840
  %100 = icmp ugt i64 %84, 1, !dbg !1860
  br i1 %100, label %83, label %101, !dbg !1847, !llvm.loop !1861

101:                                              ; preds = %83
  call void @llvm.dbg.value(metadata double %92, metadata !533, metadata !DIExpression()), !dbg !1863
  %102 = fmul double %81, %92, !dbg !1864
  %103 = fsub double %102, %85, !dbg !1865
  %104 = fadd double %103, 0x3FFA2A9729949892, !dbg !1866
  call void @llvm.dbg.value(metadata double %104, metadata !524, metadata !DIExpression()), !dbg !1840
  %105 = tail call double @llvm.fabs.f64(double %102), !dbg !1867
  %106 = tail call double @llvm.fabs.f64(double %85), !dbg !1868
  %107 = fadd double %106, %105, !dbg !1869
  %108 = fadd double %107, 0x3FFA2A9729949892, !dbg !1870
  %109 = fadd double %98, %108, !dbg !1871
  call void @llvm.dbg.value(metadata double %109, metadata !528, metadata !DIExpression()), !dbg !1840
  store double %104, ptr %1, align 8, !dbg !1872, !tbaa !324
  %110 = fmul double %109, 0x3CB0000000000000, !dbg !1873
  %111 = fadd double %110, 3.497000e-15, !dbg !1874
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1875
  store double %111, ptr %112, align 8, !dbg !1876, !tbaa !329
  br label %171

113:                                              ; preds = %72
  %114 = fcmp olt double %0, 1.000000e+01, !dbg !1877
  br i1 %114, label %115, label %154, !dbg !1878

115:                                              ; preds = %113
  %116 = fadd double %0, -4.000000e+00, !dbg !1879
  %117 = fmul double %116, 0x3FD5555555555555, !dbg !1880
  %118 = fadd double %117, -1.000000e+00, !dbg !1881
  tail call void @llvm.dbg.value(metadata double %118, metadata !1750, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata double %118, metadata !521, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !1883
  %119 = fmul double %118, 2.000000e+00, !dbg !1885
  %120 = fadd double %119, 1.000000e+00, !dbg !1886
  %121 = fadd double %120, -1.000000e+00, !dbg !1887
  %122 = fmul double %121, 5.000000e-01, !dbg !1888
  call void @llvm.dbg.value(metadata double %122, metadata !526, metadata !DIExpression()), !dbg !1883
  %123 = fmul double %122, 2.000000e+00, !dbg !1889
  call void @llvm.dbg.value(metadata double %123, metadata !527, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i32 24, metadata !523, metadata !DIExpression()), !dbg !1883
  br label %124, !dbg !1890

124:                                              ; preds = %124, %115
  %125 = phi i64 [ 24, %115 ], [ %140, %124 ]
  %126 = phi double [ 0.000000e+00, %115 ], [ %133, %124 ]
  %127 = phi double [ 0.000000e+00, %115 ], [ %139, %124 ]
  %128 = phi double [ 0.000000e+00, %115 ], [ %126, %124 ]
  call void @llvm.dbg.value(metadata i64 %125, metadata !523, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata double %126, metadata !524, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata double %127, metadata !528, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata double %128, metadata !525, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata double %126, metadata !529, metadata !DIExpression()), !dbg !1891
  %129 = fmul double %123, %126, !dbg !1892
  %130 = fsub double %129, %128, !dbg !1893
  %131 = getelementptr inbounds double, ptr @fd_mhalf_c_data, i64 %125, !dbg !1894
  %132 = load double, ptr %131, align 8, !dbg !1894, !tbaa !548
  %133 = fadd double %130, %132, !dbg !1895
  call void @llvm.dbg.value(metadata double %133, metadata !524, metadata !DIExpression()), !dbg !1883
  %134 = tail call double @llvm.fabs.f64(double %129), !dbg !1896
  %135 = tail call double @llvm.fabs.f64(double %128), !dbg !1897
  %136 = fadd double %134, %135, !dbg !1898
  %137 = tail call double @llvm.fabs.f64(double %132), !dbg !1899
  %138 = fadd double %136, %137, !dbg !1900
  %139 = fadd double %127, %138, !dbg !1901
  call void @llvm.dbg.value(metadata double %139, metadata !528, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata double %126, metadata !525, metadata !DIExpression()), !dbg !1883
  %140 = add nsw i64 %125, -1, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %140, metadata !523, metadata !DIExpression()), !dbg !1883
  %141 = icmp ugt i64 %125, 1, !dbg !1903
  br i1 %141, label %124, label %142, !dbg !1890, !llvm.loop !1904

142:                                              ; preds = %124
  call void @llvm.dbg.value(metadata double %133, metadata !533, metadata !DIExpression()), !dbg !1906
  %143 = fmul double %122, %133, !dbg !1907
  %144 = fsub double %143, %126, !dbg !1908
  %145 = fadd double %144, 0x400750297D8CD53B, !dbg !1909
  call void @llvm.dbg.value(metadata double %145, metadata !524, metadata !DIExpression()), !dbg !1883
  %146 = tail call double @llvm.fabs.f64(double %143), !dbg !1910
  %147 = tail call double @llvm.fabs.f64(double %126), !dbg !1911
  %148 = fadd double %147, %146, !dbg !1912
  %149 = fadd double %148, 0x400750297D8CD53B, !dbg !1913
  %150 = fadd double %139, %149, !dbg !1914
  call void @llvm.dbg.value(metadata double %150, metadata !528, metadata !DIExpression()), !dbg !1883
  store double %145, ptr %1, align 8, !dbg !1915, !tbaa !324
  %151 = fmul double %150, 0x3CB0000000000000, !dbg !1916
  %152 = fadd double %151, 5.000000e-18, !dbg !1917
  %153 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1918
  store double %152, ptr %153, align 8, !dbg !1919, !tbaa !329
  br label %171

154:                                              ; preds = %113
  %155 = fcmp olt double %0, 3.000000e+01, !dbg !1920
  br i1 %155, label %156, label %169, !dbg !1921

156:                                              ; preds = %154
  %157 = tail call double @sqrt(double noundef %0) #8, !dbg !1922
  tail call void @llvm.dbg.value(metadata double %157, metadata !1753, metadata !DIExpression()), !dbg !1759
  %158 = fmul double %0, 1.000000e-01, !dbg !1923
  %159 = fadd double %158, -2.000000e+00, !dbg !1924
  tail call void @llvm.dbg.value(metadata double %159, metadata !1756, metadata !DIExpression()), !dbg !1759
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1925
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_mhalf_d_cs, double noundef %159, ptr noundef nonnull %3), !dbg !1926
  %160 = load double, ptr %3, align 8, !dbg !1927, !tbaa !324
  %161 = fmul double %157, %160, !dbg !1928
  store double %161, ptr %1, align 8, !dbg !1929, !tbaa !324
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1930
  %163 = load double, ptr %162, align 8, !dbg !1930, !tbaa !329
  %164 = fmul double %157, %163, !dbg !1931
  %165 = tail call double @llvm.fabs.f64(double %161), !dbg !1932
  %166 = fmul double %165, 0x3CA0000000000000, !dbg !1933
  %167 = fadd double %164, %166, !dbg !1934
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1935
  store double %167, ptr %168, align 8, !dbg !1936, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1937
  br label %171

169:                                              ; preds = %154
  %170 = tail call fastcc i32 @fd_asymp(double noundef -5.000000e-01, double noundef %0, ptr noundef %1), !dbg !1938
  br label %171, !dbg !1940

171:                                              ; preds = %5, %29, %60, %101, %142, %156, %169
  %172 = phi i32 [ 15, %5 ], [ 0, %29 ], [ 0, %60 ], [ 0, %101 ], [ 0, %142 ], [ 0, %156 ], [ %170, %169 ], !dbg !1941
  ret i32 %172, !dbg !1942
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1943 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_fermi_dirac_half_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1944 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1971
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1970, metadata !DIExpression(), metadata !1971, metadata ptr %3, metadata !DIExpression()), !dbg !1972
  tail call void @llvm.dbg.value(metadata double %0, metadata !1946, metadata !DIExpression()), !dbg !1973
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1947, metadata !DIExpression()), !dbg !1973
  %4 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !1974
  br i1 %4, label %5, label %7, !dbg !1975

5:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !1976, !tbaa !324
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1976
  store double 0x10000000000000, ptr %6, align 8, !dbg !1976, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1476, i32 noundef 15) #8, !dbg !1979
  br label %173, !dbg !1979

7:                                                ; preds = %2
  %8 = fcmp olt double %0, -1.000000e+00, !dbg !1981
  br i1 %8, label %9, label %35, !dbg !1982

9:                                                ; preds = %7
  %10 = tail call double @exp(double noundef %0) #8, !dbg !1983
  tail call void @llvm.dbg.value(metadata double %10, metadata !1948, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata double %10, metadata !1952, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata double %10, metadata !1953, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1954, metadata !DIExpression()), !dbg !1984
  %11 = fneg double %10
  br label %12, !dbg !1985

12:                                               ; preds = %12, %9
  %13 = phi double [ %10, %9 ], [ %22, %12 ]
  %14 = phi double [ %10, %9 ], [ %23, %12 ]
  %15 = phi i32 [ 2, %9 ], [ %27, %12 ]
  tail call void @llvm.dbg.value(metadata double %13, metadata !1952, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata double %14, metadata !1953, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1954, metadata !DIExpression()), !dbg !1984
  %16 = sitofp i32 %15 to double, !dbg !1986
  %17 = fadd double %16, -1.000000e+00, !dbg !1987
  %18 = fdiv double %17, %16, !dbg !1988
  tail call void @llvm.dbg.value(metadata double %18, metadata !1955, metadata !DIExpression()), !dbg !1989
  %19 = fmul double %18, %11, !dbg !1990
  %20 = tail call double @sqrt(double noundef %18) #8, !dbg !1991
  %21 = fmul double %19, %20, !dbg !1992
  %22 = fmul double %13, %21, !dbg !1993
  tail call void @llvm.dbg.value(metadata double %22, metadata !1952, metadata !DIExpression()), !dbg !1984
  %23 = fadd double %14, %22, !dbg !1994
  tail call void @llvm.dbg.value(metadata double %23, metadata !1953, metadata !DIExpression()), !dbg !1984
  %24 = fdiv double %22, %23, !dbg !1995
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !1997
  %26 = fcmp olt double %25, 0x3CB0000000000000, !dbg !1998
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1954, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1984
  %27 = add nuw nsw i32 %15, 1
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1954, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata double %22, metadata !1952, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata double %23, metadata !1953, metadata !DIExpression()), !dbg !1984
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1954, metadata !DIExpression()), !dbg !1984
  %28 = icmp eq i32 %27, 100
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %12, !llvm.loop !1999

30:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %23, metadata !1953, metadata !DIExpression()), !dbg !1984
  store double %23, ptr %1, align 8, !dbg !2001, !tbaa !324
  %31 = tail call double @llvm.fabs.f64(double %23), !dbg !2002
  %32 = fmul double %31, 2.000000e+00, !dbg !2003
  %33 = fmul double %32, 0x3CB0000000000000, !dbg !2004
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2005
  store double %33, ptr %34, align 8, !dbg !2006, !tbaa !329
  br label %173

35:                                               ; preds = %7
  %36 = fcmp olt double %0, 1.000000e+00, !dbg !2007
  br i1 %36, label %37, label %73, !dbg !2008

37:                                               ; preds = %35
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double %0, metadata !521, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !2009
  %38 = fmul double %0, 2.000000e+00, !dbg !2012
  %39 = fadd double %38, 1.000000e+00, !dbg !2013
  %40 = fadd double %39, -1.000000e+00, !dbg !2014
  %41 = fmul double %40, 5.000000e-01, !dbg !2015
  call void @llvm.dbg.value(metadata double %41, metadata !526, metadata !DIExpression()), !dbg !2009
  %42 = fmul double %41, 2.000000e+00, !dbg !2016
  call void @llvm.dbg.value(metadata double %42, metadata !527, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 22, metadata !523, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !2009
  br label %43, !dbg !2017

43:                                               ; preds = %43, %37
  %44 = phi i64 [ 22, %37 ], [ %59, %43 ]
  %45 = phi double [ 0.000000e+00, %37 ], [ %52, %43 ]
  %46 = phi double [ 0.000000e+00, %37 ], [ %58, %43 ]
  %47 = phi double [ 0.000000e+00, %37 ], [ %45, %43 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !523, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double %45, metadata !524, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double %46, metadata !528, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double %47, metadata !525, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double %45, metadata !529, metadata !DIExpression()), !dbg !2018
  %48 = fmul double %42, %45, !dbg !2019
  %49 = fsub double %48, %47, !dbg !2020
  %50 = getelementptr inbounds double, ptr @fd_half_a_data, i64 %44, !dbg !2021
  %51 = load double, ptr %50, align 8, !dbg !2021, !tbaa !548
  %52 = fadd double %49, %51, !dbg !2022
  call void @llvm.dbg.value(metadata double %52, metadata !524, metadata !DIExpression()), !dbg !2009
  %53 = tail call double @llvm.fabs.f64(double %48), !dbg !2023
  %54 = tail call double @llvm.fabs.f64(double %47), !dbg !2024
  %55 = fadd double %53, %54, !dbg !2025
  %56 = tail call double @llvm.fabs.f64(double %51), !dbg !2026
  %57 = fadd double %55, %56, !dbg !2027
  %58 = fadd double %46, %57, !dbg !2028
  call void @llvm.dbg.value(metadata double %58, metadata !528, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata double %45, metadata !525, metadata !DIExpression()), !dbg !2009
  %59 = add nsw i64 %44, -1, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %59, metadata !523, metadata !DIExpression()), !dbg !2009
  %60 = icmp ugt i64 %44, 1, !dbg !2030
  br i1 %60, label %43, label %61, !dbg !2017, !llvm.loop !2031

61:                                               ; preds = %43
  call void @llvm.dbg.value(metadata double %52, metadata !533, metadata !DIExpression()), !dbg !2033
  %62 = fmul double %41, %52, !dbg !2034
  %63 = fsub double %62, %45, !dbg !2035
  %64 = fadd double %63, 0x3FEB7BC18E91C6D6, !dbg !2036
  call void @llvm.dbg.value(metadata double %64, metadata !524, metadata !DIExpression()), !dbg !2009
  %65 = tail call double @llvm.fabs.f64(double %62), !dbg !2037
  %66 = tail call double @llvm.fabs.f64(double %45), !dbg !2038
  %67 = fadd double %66, %65, !dbg !2039
  %68 = fadd double %67, 0x3FEB7BC18E91C6D6, !dbg !2040
  %69 = fadd double %58, %68, !dbg !2041
  call void @llvm.dbg.value(metadata double %69, metadata !528, metadata !DIExpression()), !dbg !2009
  store double %64, ptr %1, align 8, !dbg !2042, !tbaa !324
  %70 = fmul double %69, 0x3CB0000000000000, !dbg !2043
  %71 = fadd double %70, 0x3BFD83C94FB6D2AC, !dbg !2044
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2045
  store double %71, ptr %72, align 8, !dbg !2046, !tbaa !329
  br label %173, !dbg !2047

73:                                               ; preds = %35
  %74 = fcmp olt double %0, 4.000000e+00, !dbg !2048
  br i1 %74, label %75, label %114, !dbg !2049

75:                                               ; preds = %73
  %76 = fadd double %0, -1.000000e+00, !dbg !2050
  %77 = fmul double %76, 0x3FE5555555555555, !dbg !2051
  %78 = fadd double %77, -1.000000e+00, !dbg !2052
  tail call void @llvm.dbg.value(metadata double %78, metadata !1959, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata double %78, metadata !521, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !2054
  %79 = fmul double %78, 2.000000e+00, !dbg !2056
  %80 = fadd double %79, 1.000000e+00, !dbg !2057
  %81 = fadd double %80, -1.000000e+00, !dbg !2058
  %82 = fmul double %81, 5.000000e-01, !dbg !2059
  call void @llvm.dbg.value(metadata double %82, metadata !526, metadata !DIExpression()), !dbg !2054
  %83 = fmul double %82, 2.000000e+00, !dbg !2060
  call void @llvm.dbg.value(metadata double %83, metadata !527, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i32 19, metadata !523, metadata !DIExpression()), !dbg !2054
  br label %84, !dbg !2061

84:                                               ; preds = %84, %75
  %85 = phi i64 [ 19, %75 ], [ %100, %84 ]
  %86 = phi double [ 0.000000e+00, %75 ], [ %93, %84 ]
  %87 = phi double [ 0.000000e+00, %75 ], [ %99, %84 ]
  %88 = phi double [ 0.000000e+00, %75 ], [ %86, %84 ]
  call void @llvm.dbg.value(metadata i64 %85, metadata !523, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata double %86, metadata !524, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata double %87, metadata !528, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata double %88, metadata !525, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata double %86, metadata !529, metadata !DIExpression()), !dbg !2062
  %89 = fmul double %83, %86, !dbg !2063
  %90 = fsub double %89, %88, !dbg !2064
  %91 = getelementptr inbounds double, ptr @fd_half_b_data, i64 %85, !dbg !2065
  %92 = load double, ptr %91, align 8, !dbg !2065, !tbaa !548
  %93 = fadd double %90, %92, !dbg !2066
  call void @llvm.dbg.value(metadata double %93, metadata !524, metadata !DIExpression()), !dbg !2054
  %94 = tail call double @llvm.fabs.f64(double %89), !dbg !2067
  %95 = tail call double @llvm.fabs.f64(double %88), !dbg !2068
  %96 = fadd double %94, %95, !dbg !2069
  %97 = tail call double @llvm.fabs.f64(double %92), !dbg !2070
  %98 = fadd double %96, %97, !dbg !2071
  %99 = fadd double %87, %98, !dbg !2072
  call void @llvm.dbg.value(metadata double %99, metadata !528, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata double %86, metadata !525, metadata !DIExpression()), !dbg !2054
  %100 = add nsw i64 %85, -1, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %100, metadata !523, metadata !DIExpression()), !dbg !2054
  %101 = icmp ugt i64 %85, 1, !dbg !2074
  br i1 %101, label %84, label %102, !dbg !2061, !llvm.loop !2075

102:                                              ; preds = %84
  call void @llvm.dbg.value(metadata double %93, metadata !533, metadata !DIExpression()), !dbg !2077
  %103 = fmul double %82, %93, !dbg !2078
  %104 = fsub double %103, %86, !dbg !2079
  %105 = fadd double %104, 0x400E9AA35C08D3F8, !dbg !2080
  call void @llvm.dbg.value(metadata double %105, metadata !524, metadata !DIExpression()), !dbg !2054
  %106 = tail call double @llvm.fabs.f64(double %103), !dbg !2081
  %107 = tail call double @llvm.fabs.f64(double %86), !dbg !2082
  %108 = fadd double %107, %106, !dbg !2083
  %109 = fadd double %108, 0x400E9AA35C08D3F8, !dbg !2084
  %110 = fadd double %99, %109, !dbg !2085
  call void @llvm.dbg.value(metadata double %110, metadata !528, metadata !DIExpression()), !dbg !2054
  store double %105, ptr %1, align 8, !dbg !2086, !tbaa !324
  %111 = fmul double %110, 0x3CB0000000000000, !dbg !2087
  %112 = fadd double %111, 1.202000e-15, !dbg !2088
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2089
  store double %112, ptr %113, align 8, !dbg !2090, !tbaa !329
  br label %173

114:                                              ; preds = %73
  %115 = fcmp olt double %0, 1.000000e+01, !dbg !2091
  br i1 %115, label %116, label %155, !dbg !2092

116:                                              ; preds = %114
  %117 = fadd double %0, -4.000000e+00, !dbg !2093
  %118 = fmul double %117, 0x3FD5555555555555, !dbg !2094
  %119 = fadd double %118, -1.000000e+00, !dbg !2095
  tail call void @llvm.dbg.value(metadata double %119, metadata !1963, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata double %119, metadata !521, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !2097
  %120 = fmul double %119, 2.000000e+00, !dbg !2099
  %121 = fadd double %120, 1.000000e+00, !dbg !2100
  %122 = fadd double %121, -1.000000e+00, !dbg !2101
  %123 = fmul double %122, 5.000000e-01, !dbg !2102
  call void @llvm.dbg.value(metadata double %123, metadata !526, metadata !DIExpression()), !dbg !2097
  %124 = fmul double %123, 2.000000e+00, !dbg !2103
  call void @llvm.dbg.value(metadata double %124, metadata !527, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i32 22, metadata !523, metadata !DIExpression()), !dbg !2097
  br label %125, !dbg !2104

125:                                              ; preds = %125, %116
  %126 = phi i64 [ 22, %116 ], [ %141, %125 ]
  %127 = phi double [ 0.000000e+00, %116 ], [ %134, %125 ]
  %128 = phi double [ 0.000000e+00, %116 ], [ %140, %125 ]
  %129 = phi double [ 0.000000e+00, %116 ], [ %127, %125 ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !523, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata double %127, metadata !524, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata double %128, metadata !528, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata double %129, metadata !525, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata double %127, metadata !529, metadata !DIExpression()), !dbg !2105
  %130 = fmul double %124, %127, !dbg !2106
  %131 = fsub double %130, %129, !dbg !2107
  %132 = getelementptr inbounds double, ptr @fd_half_c_data, i64 %126, !dbg !2108
  %133 = load double, ptr %132, align 8, !dbg !2108, !tbaa !548
  %134 = fadd double %131, %133, !dbg !2109
  call void @llvm.dbg.value(metadata double %134, metadata !524, metadata !DIExpression()), !dbg !2097
  %135 = tail call double @llvm.fabs.f64(double %130), !dbg !2110
  %136 = tail call double @llvm.fabs.f64(double %129), !dbg !2111
  %137 = fadd double %135, %136, !dbg !2112
  %138 = tail call double @llvm.fabs.f64(double %133), !dbg !2113
  %139 = fadd double %137, %138, !dbg !2114
  %140 = fadd double %128, %139, !dbg !2115
  call void @llvm.dbg.value(metadata double %140, metadata !528, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata double %127, metadata !525, metadata !DIExpression()), !dbg !2097
  %141 = add nsw i64 %126, -1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %141, metadata !523, metadata !DIExpression()), !dbg !2097
  %142 = icmp ugt i64 %126, 1, !dbg !2117
  br i1 %142, label %125, label %143, !dbg !2104, !llvm.loop !2118

143:                                              ; preds = %125
  call void @llvm.dbg.value(metadata double %134, metadata !533, metadata !DIExpression()), !dbg !2120
  %144 = fmul double %123, %134, !dbg !2121
  %145 = fsub double %144, %127, !dbg !2122
  %146 = fadd double %145, 0x402D95974379086F, !dbg !2123
  call void @llvm.dbg.value(metadata double %146, metadata !524, metadata !DIExpression()), !dbg !2097
  %147 = tail call double @llvm.fabs.f64(double %144), !dbg !2124
  %148 = tail call double @llvm.fabs.f64(double %127), !dbg !2125
  %149 = fadd double %148, %147, !dbg !2126
  %150 = fadd double %149, 0x402D95974379086F, !dbg !2127
  %151 = fadd double %140, %150, !dbg !2128
  call void @llvm.dbg.value(metadata double %151, metadata !528, metadata !DIExpression()), !dbg !2097
  store double %146, ptr %1, align 8, !dbg !2129, !tbaa !324
  %152 = fmul double %151, 0x3CB0000000000000, !dbg !2130
  %153 = fadd double %152, 1.400000e-17, !dbg !2131
  %154 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2132
  store double %153, ptr %154, align 8, !dbg !2133, !tbaa !329
  br label %173

155:                                              ; preds = %114
  %156 = fcmp olt double %0, 3.000000e+01, !dbg !2134
  br i1 %156, label %157, label %171, !dbg !2135

157:                                              ; preds = %155
  %158 = tail call double @sqrt(double noundef %0) #8, !dbg !2136
  %159 = fmul double %158, %0, !dbg !2137
  tail call void @llvm.dbg.value(metadata double %159, metadata !1966, metadata !DIExpression()), !dbg !1972
  %160 = fmul double %0, 1.000000e-01, !dbg !2138
  %161 = fadd double %160, -2.000000e+00, !dbg !2139
  tail call void @llvm.dbg.value(metadata double %161, metadata !1969, metadata !DIExpression()), !dbg !1972
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2140
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_half_d_cs, double noundef %161, ptr noundef nonnull %3), !dbg !2141
  %162 = load double, ptr %3, align 8, !dbg !2142, !tbaa !324
  %163 = fmul double %159, %162, !dbg !2143
  store double %163, ptr %1, align 8, !dbg !2144, !tbaa !324
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2145
  %165 = load double, ptr %164, align 8, !dbg !2145, !tbaa !329
  %166 = fmul double %159, %165, !dbg !2146
  %167 = tail call double @llvm.fabs.f64(double %163), !dbg !2147
  %168 = fmul double %167, 0x3CB8000000000000, !dbg !2148
  %169 = fadd double %166, %168, !dbg !2149
  %170 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2150
  store double %169, ptr %170, align 8, !dbg !2151, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2152
  br label %173

171:                                              ; preds = %155
  %172 = tail call fastcc i32 @fd_asymp(double noundef 5.000000e-01, double noundef %0, ptr noundef %1), !dbg !2153
  br label %173, !dbg !2155

173:                                              ; preds = %5, %30, %61, %102, %143, %157, %171
  %174 = phi i32 [ 15, %5 ], [ 0, %30 ], [ 0, %61 ], [ 0, %102 ], [ 0, %143 ], [ 0, %157 ], [ %172, %171 ], !dbg !2156
  ret i32 %174, !dbg !2157
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_fermi_dirac_3half_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !2158 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2185
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2184, metadata !DIExpression(), metadata !2185, metadata ptr %3, metadata !DIExpression()), !dbg !2186
  tail call void @llvm.dbg.value(metadata double %0, metadata !2160, metadata !DIExpression()), !dbg !2187
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2161, metadata !DIExpression()), !dbg !2187
  %4 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !2188
  br i1 %4, label %5, label %7, !dbg !2189

5:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !2190, !tbaa !324
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2190
  store double 0x10000000000000, ptr %6, align 8, !dbg !2190, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1524, i32 noundef 15) #8, !dbg !2193
  br label %175, !dbg !2193

7:                                                ; preds = %2
  %8 = fcmp olt double %0, -1.000000e+00, !dbg !2195
  br i1 %8, label %9, label %36, !dbg !2196

9:                                                ; preds = %7
  %10 = tail call double @exp(double noundef %0) #8, !dbg !2197
  tail call void @llvm.dbg.value(metadata double %10, metadata !2162, metadata !DIExpression()), !dbg !2198
  tail call void @llvm.dbg.value(metadata double %10, metadata !2166, metadata !DIExpression()), !dbg !2198
  tail call void @llvm.dbg.value(metadata double %10, metadata !2167, metadata !DIExpression()), !dbg !2198
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2168, metadata !DIExpression()), !dbg !2198
  %11 = fneg double %10
  br label %12, !dbg !2199

12:                                               ; preds = %12, %9
  %13 = phi double [ %10, %9 ], [ %23, %12 ]
  %14 = phi double [ %10, %9 ], [ %24, %12 ]
  %15 = phi i32 [ 2, %9 ], [ %28, %12 ]
  tail call void @llvm.dbg.value(metadata double %13, metadata !2166, metadata !DIExpression()), !dbg !2198
  tail call void @llvm.dbg.value(metadata double %14, metadata !2167, metadata !DIExpression()), !dbg !2198
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !2168, metadata !DIExpression()), !dbg !2198
  %16 = sitofp i32 %15 to double, !dbg !2200
  %17 = fadd double %16, -1.000000e+00, !dbg !2201
  %18 = fdiv double %17, %16, !dbg !2202
  tail call void @llvm.dbg.value(metadata double %18, metadata !2169, metadata !DIExpression()), !dbg !2203
  %19 = fmul double %18, %11, !dbg !2204
  %20 = fmul double %18, %19, !dbg !2205
  %21 = tail call double @sqrt(double noundef %18) #8, !dbg !2206
  %22 = fmul double %20, %21, !dbg !2207
  %23 = fmul double %13, %22, !dbg !2208
  tail call void @llvm.dbg.value(metadata double %23, metadata !2166, metadata !DIExpression()), !dbg !2198
  %24 = fadd double %14, %23, !dbg !2209
  tail call void @llvm.dbg.value(metadata double %24, metadata !2167, metadata !DIExpression()), !dbg !2198
  %25 = fdiv double %23, %24, !dbg !2210
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !2212
  %27 = fcmp olt double %26, 0x3CB0000000000000, !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !2168, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2198
  %28 = add nuw nsw i32 %15, 1
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2168, metadata !DIExpression()), !dbg !2198
  tail call void @llvm.dbg.value(metadata double %23, metadata !2166, metadata !DIExpression()), !dbg !2198
  tail call void @llvm.dbg.value(metadata double %24, metadata !2167, metadata !DIExpression()), !dbg !2198
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2168, metadata !DIExpression()), !dbg !2198
  %29 = icmp eq i32 %28, 100
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %12, !llvm.loop !2214

31:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %24, metadata !2167, metadata !DIExpression()), !dbg !2198
  store double %24, ptr %1, align 8, !dbg !2216, !tbaa !324
  %32 = tail call double @llvm.fabs.f64(double %24), !dbg !2217
  %33 = fmul double %32, 2.000000e+00, !dbg !2218
  %34 = fmul double %33, 0x3CB0000000000000, !dbg !2219
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2220
  store double %34, ptr %35, align 8, !dbg !2221, !tbaa !329
  br label %175

36:                                               ; preds = %7
  %37 = fcmp olt double %0, 1.000000e+00, !dbg !2222
  br i1 %37, label %38, label %74, !dbg !2223

38:                                               ; preds = %36
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double %0, metadata !521, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !2224
  %39 = fmul double %0, 2.000000e+00, !dbg !2227
  %40 = fadd double %39, 1.000000e+00, !dbg !2228
  %41 = fadd double %40, -1.000000e+00, !dbg !2229
  %42 = fmul double %41, 5.000000e-01, !dbg !2230
  call void @llvm.dbg.value(metadata double %42, metadata !526, metadata !DIExpression()), !dbg !2224
  %43 = fmul double %42, 2.000000e+00, !dbg !2231
  call void @llvm.dbg.value(metadata double %43, metadata !527, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i32 19, metadata !523, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !2224
  br label %44, !dbg !2232

44:                                               ; preds = %44, %38
  %45 = phi i64 [ 19, %38 ], [ %60, %44 ]
  %46 = phi double [ 0.000000e+00, %38 ], [ %53, %44 ]
  %47 = phi double [ 0.000000e+00, %38 ], [ %59, %44 ]
  %48 = phi double [ 0.000000e+00, %38 ], [ %46, %44 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !523, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double %46, metadata !524, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double %47, metadata !528, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double %48, metadata !525, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double %46, metadata !529, metadata !DIExpression()), !dbg !2233
  %49 = fmul double %43, %46, !dbg !2234
  %50 = fsub double %49, %48, !dbg !2235
  %51 = getelementptr inbounds double, ptr @fd_3half_a_data, i64 %45, !dbg !2236
  %52 = load double, ptr %51, align 8, !dbg !2236, !tbaa !548
  %53 = fadd double %50, %52, !dbg !2237
  call void @llvm.dbg.value(metadata double %53, metadata !524, metadata !DIExpression()), !dbg !2224
  %54 = tail call double @llvm.fabs.f64(double %49), !dbg !2238
  %55 = tail call double @llvm.fabs.f64(double %48), !dbg !2239
  %56 = fadd double %54, %55, !dbg !2240
  %57 = tail call double @llvm.fabs.f64(double %52), !dbg !2241
  %58 = fadd double %56, %57, !dbg !2242
  %59 = fadd double %47, %58, !dbg !2243
  call void @llvm.dbg.value(metadata double %59, metadata !528, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata double %46, metadata !525, metadata !DIExpression()), !dbg !2224
  %60 = add nsw i64 %45, -1, !dbg !2244
  call void @llvm.dbg.value(metadata i64 %60, metadata !523, metadata !DIExpression()), !dbg !2224
  %61 = icmp ugt i64 %45, 1, !dbg !2245
  br i1 %61, label %44, label %62, !dbg !2232, !llvm.loop !2246

62:                                               ; preds = %44
  call void @llvm.dbg.value(metadata double %53, metadata !533, metadata !DIExpression()), !dbg !2248
  %63 = fmul double %42, %53, !dbg !2249
  %64 = fsub double %63, %46, !dbg !2250
  %65 = fadd double %64, 0x3FF052E5EAB5AC6F, !dbg !2251
  call void @llvm.dbg.value(metadata double %65, metadata !524, metadata !DIExpression()), !dbg !2224
  %66 = tail call double @llvm.fabs.f64(double %63), !dbg !2252
  %67 = tail call double @llvm.fabs.f64(double %46), !dbg !2253
  %68 = fadd double %67, %66, !dbg !2254
  %69 = fadd double %68, 0x3FF052E5EAB5AC6F, !dbg !2255
  %70 = fadd double %59, %69, !dbg !2256
  call void @llvm.dbg.value(metadata double %70, metadata !528, metadata !DIExpression()), !dbg !2224
  store double %65, ptr %1, align 8, !dbg !2257, !tbaa !324
  %71 = fmul double %70, 0x3CB0000000000000, !dbg !2258
  %72 = fadd double %71, 5.100000e-18, !dbg !2259
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2260
  store double %72, ptr %73, align 8, !dbg !2261, !tbaa !329
  br label %175, !dbg !2262

74:                                               ; preds = %36
  %75 = fcmp olt double %0, 4.000000e+00, !dbg !2263
  br i1 %75, label %76, label %115, !dbg !2264

76:                                               ; preds = %74
  %77 = fadd double %0, -1.000000e+00, !dbg !2265
  %78 = fmul double %77, 0x3FE5555555555555, !dbg !2266
  %79 = fadd double %78, -1.000000e+00, !dbg !2267
  tail call void @llvm.dbg.value(metadata double %79, metadata !2173, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata double %79, metadata !521, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !2269
  %80 = fmul double %79, 2.000000e+00, !dbg !2271
  %81 = fadd double %80, 1.000000e+00, !dbg !2272
  %82 = fadd double %81, -1.000000e+00, !dbg !2273
  %83 = fmul double %82, 5.000000e-01, !dbg !2274
  call void @llvm.dbg.value(metadata double %83, metadata !526, metadata !DIExpression()), !dbg !2269
  %84 = fmul double %83, 2.000000e+00, !dbg !2275
  call void @llvm.dbg.value(metadata double %84, metadata !527, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i32 21, metadata !523, metadata !DIExpression()), !dbg !2269
  br label %85, !dbg !2276

85:                                               ; preds = %85, %76
  %86 = phi i64 [ 21, %76 ], [ %101, %85 ]
  %87 = phi double [ 0.000000e+00, %76 ], [ %94, %85 ]
  %88 = phi double [ 0.000000e+00, %76 ], [ %100, %85 ]
  %89 = phi double [ 0.000000e+00, %76 ], [ %87, %85 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !523, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata double %87, metadata !524, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata double %88, metadata !528, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata double %89, metadata !525, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata double %87, metadata !529, metadata !DIExpression()), !dbg !2277
  %90 = fmul double %84, %87, !dbg !2278
  %91 = fsub double %90, %89, !dbg !2279
  %92 = getelementptr inbounds double, ptr @fd_3half_b_data, i64 %86, !dbg !2280
  %93 = load double, ptr %92, align 8, !dbg !2280, !tbaa !548
  %94 = fadd double %91, %93, !dbg !2281
  call void @llvm.dbg.value(metadata double %94, metadata !524, metadata !DIExpression()), !dbg !2269
  %95 = tail call double @llvm.fabs.f64(double %90), !dbg !2282
  %96 = tail call double @llvm.fabs.f64(double %89), !dbg !2283
  %97 = fadd double %95, %96, !dbg !2284
  %98 = tail call double @llvm.fabs.f64(double %93), !dbg !2285
  %99 = fadd double %97, %98, !dbg !2286
  %100 = fadd double %88, %99, !dbg !2287
  call void @llvm.dbg.value(metadata double %100, metadata !528, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata double %87, metadata !525, metadata !DIExpression()), !dbg !2269
  %101 = add nsw i64 %86, -1, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %101, metadata !523, metadata !DIExpression()), !dbg !2269
  %102 = icmp ugt i64 %86, 1, !dbg !2289
  br i1 %102, label %85, label %103, !dbg !2276, !llvm.loop !2290

103:                                              ; preds = %85
  call void @llvm.dbg.value(metadata double %94, metadata !533, metadata !DIExpression()), !dbg !2292
  %104 = fmul double %83, %94, !dbg !2293
  %105 = fsub double %104, %87, !dbg !2294
  %106 = fadd double %105, 0x401ACE711A4647E3, !dbg !2295
  call void @llvm.dbg.value(metadata double %106, metadata !524, metadata !DIExpression()), !dbg !2269
  %107 = tail call double @llvm.fabs.f64(double %104), !dbg !2296
  %108 = tail call double @llvm.fabs.f64(double %87), !dbg !2297
  %109 = fadd double %108, %107, !dbg !2298
  %110 = fadd double %109, 0x401ACE711A4647E3, !dbg !2299
  %111 = fadd double %100, %110, !dbg !2300
  call void @llvm.dbg.value(metadata double %111, metadata !528, metadata !DIExpression()), !dbg !2269
  store double %106, ptr %1, align 8, !dbg !2301, !tbaa !324
  %112 = fmul double %111, 0x3CB0000000000000, !dbg !2302
  %113 = fadd double %112, 5.000000e-18, !dbg !2303
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2304
  store double %113, ptr %114, align 8, !dbg !2305, !tbaa !329
  br label %175

115:                                              ; preds = %74
  %116 = fcmp olt double %0, 1.000000e+01, !dbg !2306
  br i1 %116, label %117, label %156, !dbg !2307

117:                                              ; preds = %115
  %118 = fadd double %0, -4.000000e+00, !dbg !2308
  %119 = fmul double %118, 0x3FD5555555555555, !dbg !2309
  %120 = fadd double %119, -1.000000e+00, !dbg !2310
  tail call void @llvm.dbg.value(metadata double %120, metadata !2177, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata !512, metadata !513, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata double %120, metadata !521, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata ptr %1, metadata !522, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !524, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !525, metadata !DIExpression()), !dbg !2312
  %121 = fmul double %120, 2.000000e+00, !dbg !2314
  %122 = fadd double %121, 1.000000e+00, !dbg !2315
  %123 = fadd double %122, -1.000000e+00, !dbg !2316
  %124 = fmul double %123, 5.000000e-01, !dbg !2317
  call void @llvm.dbg.value(metadata double %124, metadata !526, metadata !DIExpression()), !dbg !2312
  %125 = fmul double %124, 2.000000e+00, !dbg !2318
  call void @llvm.dbg.value(metadata double %125, metadata !527, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 20, metadata !523, metadata !DIExpression()), !dbg !2312
  br label %126, !dbg !2319

126:                                              ; preds = %126, %117
  %127 = phi i64 [ 20, %117 ], [ %142, %126 ]
  %128 = phi double [ 0.000000e+00, %117 ], [ %135, %126 ]
  %129 = phi double [ 0.000000e+00, %117 ], [ %141, %126 ]
  %130 = phi double [ 0.000000e+00, %117 ], [ %128, %126 ]
  call void @llvm.dbg.value(metadata i64 %127, metadata !523, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata double %128, metadata !524, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata double %129, metadata !528, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata double %130, metadata !525, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata double %128, metadata !529, metadata !DIExpression()), !dbg !2320
  %131 = fmul double %125, %128, !dbg !2321
  %132 = fsub double %131, %130, !dbg !2322
  %133 = getelementptr inbounds double, ptr @fd_3half_c_data, i64 %127, !dbg !2323
  %134 = load double, ptr %133, align 8, !dbg !2323, !tbaa !548
  %135 = fadd double %132, %134, !dbg !2324
  call void @llvm.dbg.value(metadata double %135, metadata !524, metadata !DIExpression()), !dbg !2312
  %136 = tail call double @llvm.fabs.f64(double %131), !dbg !2325
  %137 = tail call double @llvm.fabs.f64(double %130), !dbg !2326
  %138 = fadd double %136, %137, !dbg !2327
  %139 = tail call double @llvm.fabs.f64(double %134), !dbg !2328
  %140 = fadd double %138, %139, !dbg !2329
  %141 = fadd double %129, %140, !dbg !2330
  call void @llvm.dbg.value(metadata double %141, metadata !528, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata double %128, metadata !525, metadata !DIExpression()), !dbg !2312
  %142 = add nsw i64 %127, -1, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %142, metadata !523, metadata !DIExpression()), !dbg !2312
  %143 = icmp ugt i64 %127, 1, !dbg !2332
  br i1 %143, label %126, label %144, !dbg !2319, !llvm.loop !2333

144:                                              ; preds = %126
  call void @llvm.dbg.value(metadata double %135, metadata !533, metadata !DIExpression()), !dbg !2335
  %145 = fmul double %124, %135, !dbg !2336
  %146 = fsub double %145, %128, !dbg !2337
  %147 = fadd double %146, 0x4049425BCABAD971, !dbg !2338
  call void @llvm.dbg.value(metadata double %147, metadata !524, metadata !DIExpression()), !dbg !2312
  %148 = tail call double @llvm.fabs.f64(double %145), !dbg !2339
  %149 = tail call double @llvm.fabs.f64(double %128), !dbg !2340
  %150 = fadd double %149, %148, !dbg !2341
  %151 = fadd double %150, 0x4049425BCABAD971, !dbg !2342
  %152 = fadd double %141, %151, !dbg !2343
  call void @llvm.dbg.value(metadata double %152, metadata !528, metadata !DIExpression()), !dbg !2312
  store double %147, ptr %1, align 8, !dbg !2344, !tbaa !324
  %153 = fmul double %152, 0x3CB0000000000000, !dbg !2345
  %154 = fadd double %153, 4.800000e-16, !dbg !2346
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2347
  store double %154, ptr %155, align 8, !dbg !2348, !tbaa !329
  br label %175

156:                                              ; preds = %115
  %157 = fcmp olt double %0, 3.000000e+01, !dbg !2349
  br i1 %157, label %158, label %173, !dbg !2350

158:                                              ; preds = %156
  %159 = fmul double %0, %0, !dbg !2351
  %160 = tail call double @sqrt(double noundef %0) #8, !dbg !2352
  %161 = fmul double %159, %160, !dbg !2353
  tail call void @llvm.dbg.value(metadata double %161, metadata !2180, metadata !DIExpression()), !dbg !2186
  %162 = fmul double %0, 1.000000e-01, !dbg !2354
  %163 = fadd double %162, -2.000000e+00, !dbg !2355
  tail call void @llvm.dbg.value(metadata double %163, metadata !2183, metadata !DIExpression()), !dbg !2186
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2356
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_3half_d_cs, double noundef %163, ptr noundef nonnull %3), !dbg !2357
  %164 = load double, ptr %3, align 8, !dbg !2358, !tbaa !324
  %165 = fmul double %161, %164, !dbg !2359
  store double %165, ptr %1, align 8, !dbg !2360, !tbaa !324
  %166 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2361
  %167 = load double, ptr %166, align 8, !dbg !2361, !tbaa !329
  %168 = fmul double %161, %167, !dbg !2362
  %169 = tail call double @llvm.fabs.f64(double %165), !dbg !2363
  %170 = fmul double %169, 0x3CC4000000000000, !dbg !2364
  %171 = fadd double %168, %170, !dbg !2365
  %172 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2366
  store double %171, ptr %172, align 8, !dbg !2367, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2368
  br label %175

173:                                              ; preds = %156
  %174 = tail call fastcc i32 @fd_asymp(double noundef 1.500000e+00, double noundef %0, ptr noundef %1), !dbg !2369
  br label %175, !dbg !2371

175:                                              ; preds = %5, %31, %62, %103, %144, %158, %173
  %176 = phi i32 [ 15, %5 ], [ 0, %31 ], [ 0, %62 ], [ 0, %103 ], [ 0, %144 ], [ 0, %158 ], [ %174, %173 ], !dbg !2372
  ret i32 %176, !dbg !2373
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fermi_dirac_inc_0_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !2374 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2384
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2382, metadata !DIExpression(), metadata !2384, metadata ptr %4, metadata !DIExpression()), !dbg !2385
  tail call void @llvm.dbg.value(metadata double %0, metadata !2376, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata double %1, metadata !2377, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2378, metadata !DIExpression()), !dbg !2386
  %5 = fcmp olt double %1, 0.000000e+00, !dbg !2387
  br i1 %5, label %6, label %8, !dbg !2388

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2389, !tbaa !324
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2389
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2389, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1572, i32 noundef 1) #8, !dbg !2392
  br label %21, !dbg !2392

8:                                                ; preds = %3
  %9 = fsub double %1, %0, !dbg !2394
  tail call void @llvm.dbg.value(metadata double %9, metadata !2379, metadata !DIExpression()), !dbg !2385
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !2395
  %10 = call i32 @gsl_sf_fermi_dirac_0_e(double noundef %9, ptr noundef nonnull %4), !dbg !2396, !range !1179
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2383, metadata !DIExpression()), !dbg !2385
  %11 = load double, ptr %4, align 8, !dbg !2397, !tbaa !324
  %12 = fsub double %11, %9, !dbg !2398
  store double %12, ptr %2, align 8, !dbg !2399, !tbaa !324
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2400
  %14 = load double, ptr %13, align 8, !dbg !2400, !tbaa !329
  %15 = tail call double @llvm.fabs.f64(double %0), !dbg !2401
  %16 = tail call double @llvm.fabs.f64(double %1), !dbg !2402
  %17 = fadd double %15, %16, !dbg !2403
  %18 = fmul double %17, 0x3CB0000000000000, !dbg !2404
  %19 = fadd double %18, %14, !dbg !2405
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2406
  store double %19, ptr %20, align 8, !dbg !2407, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !2408
  br label %21

21:                                               ; preds = %6, %8
  %22 = phi i32 [ 1, %6 ], [ %10, %8 ], !dbg !2409
  ret i32 %22, !dbg !2410
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_m1(double noundef %0) local_unnamed_addr #0 !dbg !2411 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2415, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata ptr undef, metadata !311, metadata !DIExpression()), !dbg !2419
  %2 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !2421
  br i1 %2, label %14, label %3, !dbg !2422

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0.000000e+00, !dbg !2423
  br i1 %4, label %5, label %9, !dbg !2424

5:                                                ; preds = %3
  %6 = tail call double @exp(double noundef %0) #8, !dbg !2425
  call void @llvm.dbg.value(metadata double %6, metadata !312, metadata !DIExpression()), !dbg !2426
  %7 = fadd double %6, 1.000000e+00, !dbg !2427
  %8 = fdiv double %6, %7, !dbg !2428
  tail call void @llvm.dbg.value(metadata double %8, metadata !2416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2418
  tail call void @llvm.dbg.value(metadata double poison, metadata !2416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2418
  br label %15

9:                                                ; preds = %3
  %10 = fneg double %0, !dbg !2429
  %11 = tail call double @exp(double noundef %10) #8, !dbg !2430
  call void @llvm.dbg.value(metadata double %11, metadata !316, metadata !DIExpression()), !dbg !2431
  %12 = fadd double %11, 1.000000e+00, !dbg !2432
  %13 = fdiv double 1.000000e+00, %12, !dbg !2433
  tail call void @llvm.dbg.value(metadata double %13, metadata !2416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2418
  tail call void @llvm.dbg.value(metadata double poison, metadata !2416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2418
  br label %15

14:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2418
  tail call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !2416, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2418
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1218, i32 noundef 15) #8, !dbg !2434
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2416, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2418
  tail call void @llvm.dbg.value(metadata i32 15, metadata !2417, metadata !DIExpression()), !dbg !2418
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1592, i32 noundef 15) #8, !dbg !2435
  br label %15, !dbg !2435

15:                                               ; preds = %9, %5, %14
  %16 = phi double [ 0.000000e+00, %14 ], [ %13, %9 ], [ %8, %5 ]
  ret double %16, !dbg !2439
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_0(double noundef %0) local_unnamed_addr #0 !dbg !2440 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2445
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2443, metadata !DIExpression(), metadata !2445, metadata ptr %2, metadata !DIExpression()), !dbg !2446
  tail call void @llvm.dbg.value(metadata double %0, metadata !2442, metadata !DIExpression()), !dbg !2446
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2447
  %3 = call i32 @gsl_sf_fermi_dirac_0_e(double noundef %0, ptr noundef nonnull %2), !dbg !2447, !range !1179
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2444, metadata !DIExpression()), !dbg !2446
  %4 = icmp eq i32 %3, 0, !dbg !2448
  br i1 %4, label %6, label %5, !dbg !2447

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1597, i32 noundef %3) #8, !dbg !2450
  br label %6, !dbg !2450

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2447, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2453
  ret double %7, !dbg !2453
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_1(double noundef %0) local_unnamed_addr #0 !dbg !2454 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2459
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2457, metadata !DIExpression(), metadata !2459, metadata ptr %2, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.dbg.value(metadata double %0, metadata !2456, metadata !DIExpression()), !dbg !2460
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2461
  %3 = call i32 @gsl_sf_fermi_dirac_1_e(double noundef %0, ptr noundef nonnull %2), !dbg !2461, !range !1183
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2458, metadata !DIExpression()), !dbg !2460
  %4 = icmp eq i32 %3, 0, !dbg !2462
  br i1 %4, label %6, label %5, !dbg !2461

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1602, i32 noundef %3) #8, !dbg !2464
  br label %6, !dbg !2464

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2461, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2467
  ret double %7, !dbg !2467
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_2(double noundef %0) local_unnamed_addr #0 !dbg !2468 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2473
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2471, metadata !DIExpression(), metadata !2473, metadata ptr %2, metadata !DIExpression()), !dbg !2474
  tail call void @llvm.dbg.value(metadata double %0, metadata !2470, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2475
  %3 = call i32 @gsl_sf_fermi_dirac_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !2475, !range !1183
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2472, metadata !DIExpression()), !dbg !2474
  %4 = icmp eq i32 %3, 0, !dbg !2476
  br i1 %4, label %6, label %5, !dbg !2475

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1607, i32 noundef %3) #8, !dbg !2478
  br label %6, !dbg !2478

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2475, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2481
  ret double %7, !dbg !2481
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_int(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2482 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2490
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2488, metadata !DIExpression(), metadata !2490, metadata ptr %3, metadata !DIExpression()), !dbg !2491
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2486, metadata !DIExpression()), !dbg !2491
  tail call void @llvm.dbg.value(metadata double %1, metadata !2487, metadata !DIExpression()), !dbg !2491
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2492
  %4 = call i32 @gsl_sf_fermi_dirac_int_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2492
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2489, metadata !DIExpression()), !dbg !2491
  %5 = icmp eq i32 %4, 0, !dbg !2493
  br i1 %5, label %7, label %6, !dbg !2492

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1612, i32 noundef %4) #8, !dbg !2495
  br label %7, !dbg !2495

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !2492, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2498
  ret double %8, !dbg !2498
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_mhalf(double noundef %0) local_unnamed_addr #0 !dbg !2499 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2504
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2502, metadata !DIExpression(), metadata !2504, metadata ptr %2, metadata !DIExpression()), !dbg !2505
  tail call void @llvm.dbg.value(metadata double %0, metadata !2501, metadata !DIExpression()), !dbg !2505
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2506
  %3 = call i32 @gsl_sf_fermi_dirac_mhalf_e(double noundef %0, ptr noundef nonnull %2), !dbg !2506
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2503, metadata !DIExpression()), !dbg !2505
  %4 = icmp eq i32 %3, 0, !dbg !2507
  br i1 %4, label %6, label %5, !dbg !2506

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1617, i32 noundef %3) #8, !dbg !2509
  br label %6, !dbg !2509

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2506, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2512
  ret double %7, !dbg !2512
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_half(double noundef %0) local_unnamed_addr #0 !dbg !2513 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2518
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2518, metadata ptr %2, metadata !DIExpression()), !dbg !2519
  tail call void @llvm.dbg.value(metadata double %0, metadata !2515, metadata !DIExpression()), !dbg !2519
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2520
  %3 = call i32 @gsl_sf_fermi_dirac_half_e(double noundef %0, ptr noundef nonnull %2), !dbg !2520
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2517, metadata !DIExpression()), !dbg !2519
  %4 = icmp eq i32 %3, 0, !dbg !2521
  br i1 %4, label %6, label %5, !dbg !2520

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1622, i32 noundef %3) #8, !dbg !2523
  br label %6, !dbg !2523

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2520, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2526
  ret double %7, !dbg !2526
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_3half(double noundef %0) local_unnamed_addr #0 !dbg !2527 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2530, metadata !DIExpression(), metadata !2532, metadata ptr %2, metadata !DIExpression()), !dbg !2533
  tail call void @llvm.dbg.value(metadata double %0, metadata !2529, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !2534
  %3 = call i32 @gsl_sf_fermi_dirac_3half_e(double noundef %0, ptr noundef nonnull %2), !dbg !2534
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2531, metadata !DIExpression()), !dbg !2533
  %4 = icmp eq i32 %3, 0, !dbg !2535
  br i1 %4, label %6, label %5, !dbg !2534

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1627, i32 noundef %3) #8, !dbg !2537
  br label %6, !dbg !2537

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !2534, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !2540
  ret double %7, !dbg !2540
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_inc_0(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2541 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2549
  tail call void @llvm.dbg.value(metadata double %0, metadata !2545, metadata !DIExpression()), !dbg !2550
  tail call void @llvm.dbg.value(metadata double %1, metadata !2546, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2382, metadata !DIExpression(), metadata !2549, metadata ptr %3, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata double %0, metadata !2376, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata double %1, metadata !2377, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr undef, metadata !2378, metadata !DIExpression()), !dbg !2553
  %4 = fcmp olt double %1, 0.000000e+00, !dbg !2554
  br i1 %4, label %5, label %6, !dbg !2555

5:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2550
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2550
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1572, i32 noundef 1) #8, !dbg !2556
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2550
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2548, metadata !DIExpression()), !dbg !2550
  br label %12, !dbg !2557

6:                                                ; preds = %2
  %7 = fsub double %1, %0, !dbg !2558
  call void @llvm.dbg.value(metadata double %7, metadata !2379, metadata !DIExpression()), !dbg !2551
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !2559
  %8 = call i32 @gsl_sf_fermi_dirac_0_e(double noundef %7, ptr noundef nonnull %3), !dbg !2560, !range !1179
  call void @llvm.dbg.value(metadata i32 %8, metadata !2383, metadata !DIExpression()), !dbg !2551
  %9 = load double, ptr %3, align 8, !dbg !2561, !tbaa !324
  %10 = fsub double %9, %7, !dbg !2562
  tail call void @llvm.dbg.value(metadata double %10, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2550
  tail call void @llvm.dbg.value(metadata double poison, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2550
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !2563
  tail call void @llvm.dbg.value(metadata double %10, metadata !2547, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2550
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2548, metadata !DIExpression()), !dbg !2550
  %11 = icmp eq i32 %8, 0, !dbg !2564
  br i1 %11, label %15, label %12, !dbg !2557

12:                                               ; preds = %5, %6
  %13 = phi i32 [ 1, %5 ], [ %8, %6 ]
  %14 = phi double [ 0x7FF8000000000000, %5 ], [ %10, %6 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1632, i32 noundef %13) #8, !dbg !2566
  br label %15, !dbg !2566

15:                                               ; preds = %6, %12
  %16 = phi double [ %10, %6 ], [ %14, %12 ]
  ret double %16, !dbg !2569
}

declare !dbg !2570 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2574 double @pow(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !2577 i32 @gsl_sf_fact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare !dbg !2582 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2585 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2587 double @cos(double noundef) local_unnamed_addr #3

declare !dbg !2588 i32 @gsl_sf_hyperg_U_int_e(i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2592 i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2593 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!298, !299, !300, !301, !302, !303, !304}
!llvm.ident = !{!305}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1218, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fermi_dirac.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "4e420cef174bb381c0a395ac6e4aff54")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1218, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 14)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "fd_1_d_cs", scope: !14, file: !2, line: 181, type: !177, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !127, globals: !128, splitDebugInlining: false, nameTableKind: None)
!15 = !{!16, !55, !89}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 39, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!20 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!21 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!22 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!23 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!24 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!25 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!26 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!27 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!28 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!29 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!30 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!31 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!32 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!33 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!34 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!35 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!36 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!37 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!38 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!39 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!40 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!41 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!42 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!43 = !DIEnumerator(name: "GSL_ESING", value: 21)
!44 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!45 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!46 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!47 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!48 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!49 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!50 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!51 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!52 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!53 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!54 = !DIEnumerator(name: "GSL_EOF", value: 32)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !56, file: !2, line: 854, baseType: !86, size: 32, elements: !87)
!56 = distinct !DISubprogram(name: "fd_nint", scope: !2, file: !2, line: 851, type: !57, scopeLine: 852, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !69)
!57 = !DISubroutineType(types: !58)
!58 = !{!18, !59, !60, !62}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !64, line: 41, baseType: !65)
!64 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !64, line: 37, size: 128, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !65, file: !64, line: 38, baseType: !61, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !65, file: !64, line: 39, baseType: !61, size: 64, offset: 64)
!69 = !{!70, !71, !72, !73, !77, !81, !82, !83, !84, !85}
!70 = !DILocalVariable(name: "j", arg: 1, scope: !56, file: !2, line: 851, type: !59)
!71 = !DILocalVariable(name: "x", arg: 2, scope: !56, file: !2, line: 851, type: !60)
!72 = !DILocalVariable(name: "result", arg: 3, scope: !56, file: !2, line: 851, type: !62)
!73 = !DILocalVariable(name: "qcoeff", scope: !56, file: !2, line: 857, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 6464, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 101)
!77 = !DILocalVariable(name: "a", scope: !78, file: !2, line: 870, type: !61)
!78 = distinct !DILexicalBlock(scope: !79, file: !2, line: 869, column: 8)
!79 = distinct !DILexicalBlock(scope: !80, file: !2, line: 864, column: 11)
!80 = distinct !DILexicalBlock(scope: !56, file: !2, line: 859, column: 6)
!81 = !DILocalVariable(name: "p", scope: !78, file: !2, line: 870, type: !61)
!82 = !DILocalVariable(name: "f", scope: !78, file: !2, line: 870, type: !61)
!83 = !DILocalVariable(name: "i", scope: !78, file: !2, line: 871, type: !18)
!84 = !DILocalVariable(name: "k", scope: !78, file: !2, line: 871, type: !18)
!85 = !DILocalVariable(name: "n", scope: !78, file: !2, line: 872, type: !18)
!86 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!87 = !{!88}
!88 = !DIEnumerator(name: "nsize", value: 101)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !90, file: !2, line: 912, baseType: !86, size: 32, elements: !124)
!90 = distinct !DISubprogram(name: "fd_neg", scope: !2, file: !2, line: 910, type: !91, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!18, !60, !60, !62}
!93 = !{!94, !95, !96, !97, !98, !99, !103, !104, !105, !106, !110, !111, !113, !114, !115, !116, !117, !118, !119, !123}
!94 = !DILocalVariable(name: "j", arg: 1, scope: !90, file: !2, line: 910, type: !60)
!95 = !DILocalVariable(name: "x", arg: 2, scope: !90, file: !2, line: 910, type: !60)
!96 = !DILocalVariable(name: "result", arg: 3, scope: !90, file: !2, line: 910, type: !62)
!97 = !DILocalVariable(name: "qnum", scope: !90, file: !2, line: 918, type: !74)
!98 = !DILocalVariable(name: "qden", scope: !90, file: !2, line: 918, type: !74)
!99 = !DILocalVariable(name: "ex", scope: !100, file: !2, line: 930, type: !61)
!100 = distinct !DILexicalBlock(scope: !101, file: !2, line: 925, column: 41)
!101 = distinct !DILexicalBlock(scope: !102, file: !2, line: 925, column: 11)
!102 = distinct !DILexicalBlock(scope: !90, file: !2, line: 920, column: 6)
!103 = !DILocalVariable(name: "term", scope: !100, file: !2, line: 931, type: !61)
!104 = !DILocalVariable(name: "sum", scope: !100, file: !2, line: 932, type: !61)
!105 = !DILocalVariable(name: "n", scope: !100, file: !2, line: 933, type: !18)
!106 = !DILocalVariable(name: "rat", scope: !107, file: !2, line: 935, type: !61)
!107 = distinct !DILexicalBlock(scope: !108, file: !2, line: 934, column: 26)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 934, column: 5)
!109 = distinct !DILexicalBlock(scope: !100, file: !2, line: 934, column: 5)
!110 = !DILocalVariable(name: "p", scope: !107, file: !2, line: 936, type: !61)
!111 = !DILocalVariable(name: "s", scope: !112, file: !2, line: 946, type: !61)
!112 = distinct !DILexicalBlock(scope: !101, file: !2, line: 945, column: 8)
!113 = !DILocalVariable(name: "xn", scope: !112, file: !2, line: 947, type: !61)
!114 = !DILocalVariable(name: "ex", scope: !112, file: !2, line: 948, type: !61)
!115 = !DILocalVariable(name: "enx", scope: !112, file: !2, line: 949, type: !61)
!116 = !DILocalVariable(name: "f", scope: !112, file: !2, line: 950, type: !61)
!117 = !DILocalVariable(name: "f_previous", scope: !112, file: !2, line: 951, type: !61)
!118 = !DILocalVariable(name: "jterm", scope: !112, file: !2, line: 952, type: !18)
!119 = !DILocalVariable(name: "p", scope: !120, file: !2, line: 954, type: !61)
!120 = distinct !DILexicalBlock(scope: !121, file: !2, line: 953, column: 41)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 953, column: 5)
!122 = distinct !DILexicalBlock(scope: !112, file: !2, line: 953, column: 5)
!123 = !DILocalVariable(name: "term", scope: !120, file: !2, line: 955, type: !61)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "itmax", value: 100)
!126 = !DIEnumerator(name: "qsize", value: 101)
!127 = !{!86}
!128 = !{!0, !7, !129, !134, !139, !144, !149, !151, !153, !158, !163, !168, !170, !175, !187, !192, !194, !196, !198, !12, !203, !208, !210, !213, !215, !220, !222, !224, !226, !231, !233, !235, !237, !242, !247, !249, !251, !253, !255, !257, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1317, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 9)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1572, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 13)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1592, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 36)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1597, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 35)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1602, type: !146, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1607, type: !146, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1612, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 40)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1617, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 39)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1622, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 38)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1627, type: !160, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1632, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 42)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "fd_1_a_cs", scope: !14, file: !2, line: 66, type: !177, isLocal: true, isDefinition: true)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !178, line: 29, baseType: !179)
!178 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !178, line: 22, size: 320, elements: !180)
!180 = !{!181, !183, !184, !185, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !179, file: !178, line: 23, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !179, file: !178, line: 24, baseType: !18, size: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !179, file: !178, line: 25, baseType: !61, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !179, file: !178, line: 26, baseType: !61, size: 64, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !179, file: !178, line: 27, baseType: !18, size: 32, offset: 256)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "fd_1_a_data", scope: !14, file: !2, line: 42, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1408, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 22)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "fd_1_b_cs", scope: !14, file: !2, line: 100, type: !177, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "fd_1_b_data", scope: !14, file: !2, line: 76, type: !189, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "fd_1_c_cs", scope: !14, file: !2, line: 135, type: !177, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "fd_1_c_data", scope: !14, file: !2, line: 110, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1472, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 23)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "fd_1_d_data", scope: !14, file: !2, line: 149, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1920, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 30)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "fd_1_e_cs", scope: !14, file: !2, line: 207, type: !177, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "fd_1_e_data", scope: !14, file: !2, line: 195, type: !212, isLocal: true, isDefinition: true)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, elements: !5)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "fd_2_a_cs", scope: !14, file: !2, line: 240, type: !177, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "fd_2_a_data", scope: !14, file: !2, line: 217, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1344, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 21)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "fd_2_b_cs", scope: !14, file: !2, line: 274, type: !177, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "fd_2_b_data", scope: !14, file: !2, line: 250, type: !189, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "fd_2_c_cs", scope: !14, file: !2, line: 306, type: !177, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(name: "fd_2_c_data", scope: !14, file: !2, line: 284, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1280, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 20)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "fd_2_d_cs", scope: !14, file: !2, line: 352, type: !177, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "fd_2_d_data", scope: !14, file: !2, line: 320, type: !205, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "fd_2_e_cs", scope: !14, file: !2, line: 372, type: !177, isLocal: true, isDefinition: true)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "fd_2_e_data", scope: !14, file: !2, line: 366, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 256, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 4)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !2, line: 862, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 6)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "fd_mhalf_a_cs", scope: !14, file: !2, line: 404, type: !177, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "fd_mhalf_a_data", scope: !14, file: !2, line: 382, type: !228, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "fd_mhalf_b_cs", scope: !14, file: !2, line: 436, type: !177, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "fd_mhalf_b_data", scope: !14, file: !2, line: 414, type: !228, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "fd_mhalf_c_cs", scope: !14, file: !2, line: 473, type: !177, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "fd_mhalf_c_data", scope: !14, file: !2, line: 446, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1600, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 25)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(name: "fd_mhalf_d_cs", scope: !14, file: !2, line: 518, type: !177, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(name: "fd_mhalf_d_data", scope: !14, file: !2, line: 486, type: !205, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "fd_half_a_cs", scope: !14, file: !2, line: 553, type: !177, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "fd_half_a_data", scope: !14, file: !2, line: 528, type: !200, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "fd_half_b_cs", scope: !14, file: !2, line: 585, type: !177, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "fd_half_b_data", scope: !14, file: !2, line: 563, type: !228, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "fd_half_c_cs", scope: !14, file: !2, line: 620, type: !177, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "fd_half_c_data", scope: !14, file: !2, line: 595, type: !200, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "fd_half_d_cs", scope: !14, file: !2, line: 665, type: !177, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "fd_half_d_data", scope: !14, file: !2, line: 633, type: !205, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "fd_3half_a_cs", scope: !14, file: !2, line: 698, type: !177, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "fd_3half_a_data", scope: !14, file: !2, line: 676, type: !228, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "fd_3half_b_cs", scope: !14, file: !2, line: 732, type: !177, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "fd_3half_b_data", scope: !14, file: !2, line: 708, type: !189, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "fd_3half_c_cs", scope: !14, file: !2, line: 765, type: !177, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "fd_3half_c_data", scope: !14, file: !2, line: 742, type: !217, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "fd_3half_d_cs", scope: !14, file: !2, line: 805, type: !177, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "fd_3half_d_data", scope: !14, file: !2, line: 778, type: !259, isLocal: true, isDefinition: true)
!298 = !{i32 7, !"Dwarf Version", i32 5}
!299 = !{i32 2, !"Debug Info Version", i32 3}
!300 = !{i32 1, !"wchar_size", i32 4}
!301 = !{i32 8, !"PIC Level", i32 2}
!302 = !{i32 7, !"PIE Level", i32 2}
!303 = !{i32 7, !"uwtable", i32 2}
!304 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!305 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!306 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_m1_e", scope: !2, file: !2, line: 1215, type: !307, scopeLine: 1216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!18, !60, !62}
!309 = !{!310, !311, !312, !316}
!310 = !DILocalVariable(name: "x", arg: 1, scope: !306, file: !2, line: 1215, type: !60)
!311 = !DILocalVariable(name: "result", arg: 2, scope: !306, file: !2, line: 1215, type: !62)
!312 = !DILocalVariable(name: "ex", scope: !313, file: !2, line: 1221, type: !60)
!313 = distinct !DILexicalBlock(scope: !314, file: !2, line: 1220, column: 20)
!314 = distinct !DILexicalBlock(scope: !315, file: !2, line: 1220, column: 11)
!315 = distinct !DILexicalBlock(scope: !306, file: !2, line: 1217, column: 6)
!316 = !DILocalVariable(name: "ex", scope: !317, file: !2, line: 1227, type: !61)
!317 = distinct !DILexicalBlock(scope: !314, file: !2, line: 1226, column: 8)
!318 = !DILocation(line: 0, scope: !306)
!319 = !DILocation(line: 1217, column: 8, scope: !315)
!320 = !DILocation(line: 1217, column: 6, scope: !306)
!321 = !DILocation(line: 1218, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !2, line: 1218, column: 5)
!323 = distinct !DILexicalBlock(scope: !315, file: !2, line: 1217, column: 27)
!324 = !{!325, !326, i64 0}
!325 = !{!"gsl_sf_result_struct", !326, i64 0, !326, i64 8}
!326 = !{!"double", !327, i64 0}
!327 = !{!"omnipotent char", !328, i64 0}
!328 = !{!"Simple C/C++ TBAA"}
!329 = !{!325, !326, i64 8}
!330 = !DILocation(line: 1218, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !322, file: !2, line: 1218, column: 5)
!332 = !DILocation(line: 1220, column: 13, scope: !314)
!333 = !DILocation(line: 1220, column: 11, scope: !315)
!334 = !DILocation(line: 1221, column: 23, scope: !313)
!335 = !DILocation(line: 0, scope: !313)
!336 = !DILocation(line: 1222, column: 26, scope: !313)
!337 = !DILocation(line: 1222, column: 21, scope: !313)
!338 = !DILocation(line: 1222, column: 17, scope: !313)
!339 = !DILocation(line: 1223, column: 26, scope: !313)
!340 = !DILocation(line: 1223, column: 34, scope: !313)
!341 = !DILocation(line: 1223, column: 23, scope: !313)
!342 = !DILocation(line: 1223, column: 41, scope: !313)
!343 = !DILocation(line: 1223, column: 61, scope: !313)
!344 = !DILocation(line: 1223, column: 59, scope: !313)
!345 = !DILocation(line: 1223, column: 13, scope: !313)
!346 = !DILocation(line: 1223, column: 17, scope: !313)
!347 = !DILocation(line: 1227, column: 21, scope: !317)
!348 = !DILocation(line: 1227, column: 17, scope: !317)
!349 = !DILocation(line: 0, scope: !317)
!350 = !DILocation(line: 1228, column: 28, scope: !317)
!351 = !DILocation(line: 1228, column: 22, scope: !317)
!352 = !DILocation(line: 1228, column: 17, scope: !317)
!353 = !DILocation(line: 1229, column: 46, scope: !317)
!354 = !DILocation(line: 1229, column: 41, scope: !317)
!355 = !DILocation(line: 1229, column: 53, scope: !317)
!356 = !DILocation(line: 1229, column: 13, scope: !317)
!357 = !DILocation(line: 1229, column: 17, scope: !317)
!358 = !DILocation(line: 0, scope: !315)
!359 = !DILocation(line: 1232, column: 1, scope: !306)
!360 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !363, !363, !18, !18}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!365 = !DISubprogram(name: "exp", scope: !366, file: !366, line: 95, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!367 = !DISubroutineType(types: !368)
!368 = !{!61, !61}
!369 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_0_e", scope: !2, file: !2, line: 1236, type: !307, scopeLine: 1237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !370)
!370 = !{!371, !372, !373, !377, !378}
!371 = !DILocalVariable(name: "x", arg: 1, scope: !369, file: !2, line: 1236, type: !60)
!372 = !DILocalVariable(name: "result", arg: 2, scope: !369, file: !2, line: 1236, type: !62)
!373 = !DILocalVariable(name: "ex", scope: !374, file: !2, line: 1242, type: !61)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 1241, column: 21)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 1241, column: 11)
!376 = distinct !DILexicalBlock(scope: !369, file: !2, line: 1238, column: 6)
!377 = !DILocalVariable(name: "ser", scope: !374, file: !2, line: 1243, type: !61)
!378 = !DILocalVariable(name: "ex", scope: !379, file: !2, line: 1254, type: !61)
!379 = distinct !DILexicalBlock(scope: !380, file: !2, line: 1253, column: 8)
!380 = distinct !DILexicalBlock(scope: !375, file: !2, line: 1248, column: 11)
!381 = !DILocation(line: 0, scope: !369)
!382 = !DILocation(line: 1238, column: 8, scope: !376)
!383 = !DILocation(line: 1238, column: 6, scope: !369)
!384 = !DILocation(line: 1239, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 1239, column: 5)
!386 = distinct !DILexicalBlock(scope: !376, file: !2, line: 1238, column: 27)
!387 = !DILocation(line: 1239, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !2, line: 1239, column: 5)
!389 = !DILocation(line: 1241, column: 13, scope: !375)
!390 = !DILocation(line: 1241, column: 11, scope: !376)
!391 = !DILocation(line: 1242, column: 18, scope: !374)
!392 = !DILocation(line: 0, scope: !374)
!393 = !DILocation(line: 1243, column: 78, scope: !374)
!394 = !DILocation(line: 1243, column: 74, scope: !374)
!395 = !DILocation(line: 1243, column: 64, scope: !374)
!396 = !DILocation(line: 1243, column: 60, scope: !374)
!397 = !DILocation(line: 1243, column: 50, scope: !374)
!398 = !DILocation(line: 1243, column: 46, scope: !374)
!399 = !DILocation(line: 1243, column: 36, scope: !374)
!400 = !DILocation(line: 1243, column: 32, scope: !374)
!401 = !DILocation(line: 1243, column: 26, scope: !374)
!402 = !DILocation(line: 1243, column: 22, scope: !374)
!403 = !DILocation(line: 1244, column: 22, scope: !374)
!404 = !DILocation(line: 1244, column: 17, scope: !374)
!405 = !DILocation(line: 1245, column: 43, scope: !374)
!406 = !DILocation(line: 1245, column: 41, scope: !374)
!407 = !DILocation(line: 1245, column: 13, scope: !374)
!408 = !DILocation(line: 1245, column: 17, scope: !374)
!409 = !DILocation(line: 1248, column: 13, scope: !380)
!410 = !DILocation(line: 1248, column: 11, scope: !375)
!411 = !DILocation(line: 1249, column: 29, scope: !412)
!412 = distinct !DILexicalBlock(scope: !380, file: !2, line: 1248, column: 21)
!413 = !DILocation(line: 1249, column: 27, scope: !412)
!414 = !DILocation(line: 1249, column: 19, scope: !412)
!415 = !DILocation(line: 1249, column: 17, scope: !412)
!416 = !DILocation(line: 1250, column: 26, scope: !412)
!417 = !DILocation(line: 1250, column: 19, scope: !412)
!418 = !DILocation(line: 1250, column: 13, scope: !412)
!419 = !DILocation(line: 1250, column: 17, scope: !412)
!420 = !DILocation(line: 1251, column: 5, scope: !412)
!421 = !DILocation(line: 1254, column: 21, scope: !379)
!422 = !DILocation(line: 1254, column: 17, scope: !379)
!423 = !DILocation(line: 0, scope: !379)
!424 = !DILocation(line: 1255, column: 38, scope: !379)
!425 = !DILocation(line: 1255, column: 33, scope: !379)
!426 = !DILocation(line: 1255, column: 46, scope: !379)
!427 = !DILocation(line: 1255, column: 49, scope: !379)
!428 = !DILocation(line: 1255, column: 42, scope: !379)
!429 = !DILocation(line: 1255, column: 61, scope: !379)
!430 = !DILocation(line: 1255, column: 64, scope: !379)
!431 = !DILocation(line: 1255, column: 54, scope: !379)
!432 = !DILocation(line: 1255, column: 26, scope: !379)
!433 = !DILocation(line: 1255, column: 21, scope: !379)
!434 = !DILocation(line: 1255, column: 17, scope: !379)
!435 = !DILocation(line: 1256, column: 22, scope: !379)
!436 = !DILocation(line: 1256, column: 28, scope: !379)
!437 = !DILocation(line: 1256, column: 13, scope: !379)
!438 = !DILocation(line: 1256, column: 17, scope: !379)
!439 = !DILocation(line: 0, scope: !376)
!440 = !DILocation(line: 1259, column: 1, scope: !369)
!441 = !DISubprogram(name: "log", scope: !366, file: !366, line: 104, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_1_e", scope: !2, file: !2, line: 1262, type: !307, scopeLine: 1263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !443)
!443 = !{!444, !445, !446, !450, !451, !452, !453, !457, !461, !464, !467, !468, !471}
!444 = !DILocalVariable(name: "x", arg: 1, scope: !442, file: !2, line: 1262, type: !60)
!445 = !DILocalVariable(name: "result", arg: 2, scope: !442, file: !2, line: 1262, type: !62)
!446 = !DILocalVariable(name: "ex", scope: !447, file: !2, line: 1270, type: !61)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 1267, column: 21)
!448 = distinct !DILexicalBlock(scope: !449, file: !2, line: 1267, column: 11)
!449 = distinct !DILexicalBlock(scope: !442, file: !2, line: 1264, column: 6)
!450 = !DILocalVariable(name: "term", scope: !447, file: !2, line: 1271, type: !61)
!451 = !DILocalVariable(name: "sum", scope: !447, file: !2, line: 1272, type: !61)
!452 = !DILocalVariable(name: "n", scope: !447, file: !2, line: 1273, type: !18)
!453 = !DILocalVariable(name: "rat", scope: !454, file: !2, line: 1275, type: !61)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 1274, column: 27)
!455 = distinct !DILexicalBlock(scope: !456, file: !2, line: 1274, column: 5)
!456 = distinct !DILexicalBlock(scope: !447, file: !2, line: 1274, column: 5)
!457 = !DILocalVariable(name: "t", scope: !458, file: !2, line: 1288, type: !61)
!458 = distinct !DILexicalBlock(scope: !459, file: !2, line: 1287, column: 20)
!459 = distinct !DILexicalBlock(scope: !460, file: !2, line: 1287, column: 11)
!460 = distinct !DILexicalBlock(scope: !448, file: !2, line: 1284, column: 11)
!461 = !DILocalVariable(name: "t", scope: !462, file: !2, line: 1292, type: !61)
!462 = distinct !DILexicalBlock(scope: !463, file: !2, line: 1291, column: 21)
!463 = distinct !DILexicalBlock(scope: !459, file: !2, line: 1291, column: 11)
!464 = !DILocalVariable(name: "t", scope: !465, file: !2, line: 1296, type: !61)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 1295, column: 21)
!466 = distinct !DILexicalBlock(scope: !463, file: !2, line: 1295, column: 11)
!467 = !DILocalVariable(name: "c", scope: !465, file: !2, line: 1297, type: !63)
!468 = !DILocalVariable(name: "t", scope: !469, file: !2, line: 1304, type: !61)
!469 = distinct !DILexicalBlock(scope: !470, file: !2, line: 1303, column: 41)
!470 = distinct !DILexicalBlock(scope: !466, file: !2, line: 1303, column: 11)
!471 = !DILocalVariable(name: "c", scope: !469, file: !2, line: 1305, type: !63)
!472 = distinct !DIAssignID()
!473 = !DILocation(line: 0, scope: !465)
!474 = distinct !DIAssignID()
!475 = !DILocation(line: 0, scope: !469)
!476 = !DILocation(line: 0, scope: !442)
!477 = !DILocation(line: 1264, column: 8, scope: !449)
!478 = !DILocation(line: 1264, column: 6, scope: !442)
!479 = !DILocation(line: 1265, column: 5, scope: !480)
!480 = distinct !DILexicalBlock(scope: !481, file: !2, line: 1265, column: 5)
!481 = distinct !DILexicalBlock(scope: !449, file: !2, line: 1264, column: 27)
!482 = !DILocation(line: 1265, column: 5, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !2, line: 1265, column: 5)
!484 = !DILocation(line: 1267, column: 13, scope: !448)
!485 = !DILocation(line: 1267, column: 11, scope: !449)
!486 = !DILocation(line: 1270, column: 19, scope: !447)
!487 = !DILocation(line: 0, scope: !447)
!488 = !DILocation(line: 1274, column: 5, scope: !456)
!489 = !DILocation(line: 1275, column: 21, scope: !454)
!490 = !DILocation(line: 1275, column: 22, scope: !454)
!491 = !DILocation(line: 1275, column: 27, scope: !454)
!492 = !DILocation(line: 0, scope: !454)
!493 = !DILocation(line: 1276, column: 19, scope: !454)
!494 = !DILocation(line: 1276, column: 25, scope: !454)
!495 = !DILocation(line: 1276, column: 12, scope: !454)
!496 = !DILocation(line: 1277, column: 12, scope: !454)
!497 = !DILocation(line: 1278, column: 19, scope: !498)
!498 = distinct !DILexicalBlock(scope: !454, file: !2, line: 1278, column: 10)
!499 = !DILocation(line: 1278, column: 10, scope: !498)
!500 = !DILocation(line: 1278, column: 25, scope: !498)
!501 = distinct !{!501, !488, !502, !503}
!502 = !DILocation(line: 1279, column: 5, scope: !456)
!503 = !{!"llvm.loop.mustprogress"}
!504 = !DILocation(line: 1280, column: 17, scope: !447)
!505 = !DILocation(line: 1281, column: 25, scope: !447)
!506 = !DILocation(line: 1281, column: 23, scope: !447)
!507 = !DILocation(line: 1281, column: 35, scope: !447)
!508 = !DILocation(line: 1281, column: 13, scope: !447)
!509 = !DILocation(line: 1281, column: 17, scope: !447)
!510 = !DILocation(line: 1284, column: 13, scope: !460)
!511 = !DILocation(line: 1284, column: 11, scope: !448)
!512 = !{}
!513 = !DILocalVariable(name: "cs", arg: 1, scope: !514, file: !515, line: 3, type: !518)
!514 = distinct !DISubprogram(name: "cheb_eval_e", scope: !515, file: !515, line: 3, type: !516, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !520)
!515 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!516 = !DISubroutineType(cc: DW_CC_nocall, types: !517)
!517 = !{!18, !518, !60, !62}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!520 = !{!513, !521, !522, !523, !524, !525, !526, !527, !528, !529, !533}
!521 = !DILocalVariable(name: "x", arg: 2, scope: !514, file: !515, line: 4, type: !60)
!522 = !DILocalVariable(name: "result", arg: 3, scope: !514, file: !515, line: 5, type: !62)
!523 = !DILocalVariable(name: "j", scope: !514, file: !515, line: 7, type: !18)
!524 = !DILocalVariable(name: "d", scope: !514, file: !515, line: 8, type: !61)
!525 = !DILocalVariable(name: "dd", scope: !514, file: !515, line: 9, type: !61)
!526 = !DILocalVariable(name: "y", scope: !514, file: !515, line: 11, type: !61)
!527 = !DILocalVariable(name: "y2", scope: !514, file: !515, line: 12, type: !61)
!528 = !DILocalVariable(name: "e", scope: !514, file: !515, line: 14, type: !61)
!529 = !DILocalVariable(name: "temp", scope: !530, file: !515, line: 17, type: !61)
!530 = distinct !DILexicalBlock(scope: !531, file: !515, line: 16, column: 33)
!531 = distinct !DILexicalBlock(scope: !532, file: !515, line: 16, column: 3)
!532 = distinct !DILexicalBlock(scope: !514, file: !515, line: 16, column: 3)
!533 = !DILocalVariable(name: "temp", scope: !534, file: !515, line: 24, type: !61)
!534 = distinct !DILexicalBlock(scope: !514, file: !515, line: 23, column: 3)
!535 = !DILocation(line: 0, scope: !514, inlinedAt: !536)
!536 = distinct !DILocation(line: 1285, column: 12, scope: !537)
!537 = distinct !DILexicalBlock(scope: !460, file: !2, line: 1284, column: 20)
!538 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !536)
!539 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !536)
!540 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !536)
!541 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !536)
!542 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !536)
!543 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !536)
!544 = !DILocation(line: 0, scope: !530, inlinedAt: !536)
!545 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !536)
!546 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !536)
!547 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !536)
!548 = !{!326, !326, i64 0}
!549 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !536)
!550 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !536)
!551 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !536)
!552 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !536)
!553 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !536)
!554 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !536)
!555 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !536)
!556 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !536)
!557 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !536)
!558 = distinct !{!558, !543, !559, !503}
!559 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !536)
!560 = !DILocation(line: 0, scope: !534, inlinedAt: !536)
!561 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !536)
!562 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !536)
!563 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !536)
!564 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !536)
!565 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !536)
!566 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !536)
!567 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !536)
!568 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !536)
!569 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !536)
!570 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !536)
!571 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !536)
!572 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !536)
!573 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !536)
!574 = !DILocation(line: 1285, column: 5, scope: !537)
!575 = !DILocation(line: 1287, column: 13, scope: !459)
!576 = !DILocation(line: 1287, column: 11, scope: !460)
!577 = !DILocation(line: 1288, column: 26, scope: !458)
!578 = !DILocation(line: 1288, column: 23, scope: !458)
!579 = !DILocation(line: 1288, column: 32, scope: !458)
!580 = !DILocation(line: 0, scope: !458)
!581 = !DILocation(line: 0, scope: !514, inlinedAt: !582)
!582 = distinct !DILocation(line: 1289, column: 12, scope: !458)
!583 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !582)
!584 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !582)
!585 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !582)
!586 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !582)
!587 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !582)
!588 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !582)
!589 = !DILocation(line: 0, scope: !530, inlinedAt: !582)
!590 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !582)
!591 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !582)
!592 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !582)
!593 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !582)
!594 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !582)
!595 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !582)
!596 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !582)
!597 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !582)
!598 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !582)
!599 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !582)
!600 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !582)
!601 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !582)
!602 = distinct !{!602, !588, !603, !503}
!603 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !582)
!604 = !DILocation(line: 0, scope: !534, inlinedAt: !582)
!605 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !582)
!606 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !582)
!607 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !582)
!608 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !582)
!609 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !582)
!610 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !582)
!611 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !582)
!612 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !582)
!613 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !582)
!614 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !582)
!615 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !582)
!616 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !582)
!617 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !582)
!618 = !DILocation(line: 1291, column: 13, scope: !463)
!619 = !DILocation(line: 1291, column: 11, scope: !459)
!620 = !DILocation(line: 1292, column: 26, scope: !462)
!621 = !DILocation(line: 1292, column: 23, scope: !462)
!622 = !DILocation(line: 1292, column: 32, scope: !462)
!623 = !DILocation(line: 0, scope: !462)
!624 = !DILocation(line: 0, scope: !514, inlinedAt: !625)
!625 = distinct !DILocation(line: 1293, column: 12, scope: !462)
!626 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !625)
!627 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !625)
!628 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !625)
!629 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !625)
!630 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !625)
!631 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !625)
!632 = !DILocation(line: 0, scope: !530, inlinedAt: !625)
!633 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !625)
!634 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !625)
!635 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !625)
!636 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !625)
!637 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !625)
!638 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !625)
!639 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !625)
!640 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !625)
!641 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !625)
!642 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !625)
!643 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !625)
!644 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !625)
!645 = distinct !{!645, !631, !646, !503}
!646 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !625)
!647 = !DILocation(line: 0, scope: !534, inlinedAt: !625)
!648 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !625)
!649 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !625)
!650 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !625)
!651 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !625)
!652 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !625)
!653 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !625)
!654 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !625)
!655 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !625)
!656 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !625)
!657 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !625)
!658 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !625)
!659 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !625)
!660 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !625)
!661 = !DILocation(line: 1295, column: 13, scope: !466)
!662 = !DILocation(line: 1295, column: 11, scope: !463)
!663 = !DILocation(line: 1296, column: 19, scope: !465)
!664 = !DILocation(line: 1296, column: 22, scope: !465)
!665 = !DILocation(line: 1297, column: 5, scope: !465)
!666 = !DILocation(line: 1298, column: 5, scope: !465)
!667 = !DILocation(line: 1299, column: 22, scope: !465)
!668 = !DILocation(line: 1299, column: 26, scope: !465)
!669 = !DILocation(line: 1299, column: 29, scope: !465)
!670 = !DILocation(line: 1299, column: 18, scope: !465)
!671 = !DILocation(line: 1300, column: 22, scope: !465)
!672 = !DILocation(line: 1300, column: 26, scope: !465)
!673 = !DILocation(line: 1300, column: 29, scope: !465)
!674 = !DILocation(line: 1300, column: 52, scope: !465)
!675 = !DILocation(line: 1300, column: 50, scope: !465)
!676 = !DILocation(line: 1300, column: 32, scope: !465)
!677 = !DILocation(line: 1300, column: 13, scope: !465)
!678 = !DILocation(line: 1300, column: 18, scope: !465)
!679 = !DILocation(line: 1302, column: 3, scope: !466)
!680 = !DILocation(line: 1303, column: 13, scope: !470)
!681 = !DILocation(line: 1303, column: 11, scope: !466)
!682 = !DILocation(line: 1304, column: 20, scope: !469)
!683 = !DILocation(line: 1304, column: 23, scope: !469)
!684 = !DILocation(line: 1305, column: 5, scope: !469)
!685 = !DILocation(line: 1306, column: 5, scope: !469)
!686 = !DILocation(line: 1307, column: 22, scope: !469)
!687 = !DILocation(line: 1307, column: 26, scope: !469)
!688 = !DILocation(line: 1307, column: 29, scope: !469)
!689 = !DILocation(line: 1307, column: 18, scope: !469)
!690 = !DILocation(line: 1308, column: 22, scope: !469)
!691 = !DILocation(line: 1308, column: 26, scope: !469)
!692 = !DILocation(line: 1308, column: 29, scope: !469)
!693 = !DILocation(line: 1308, column: 52, scope: !469)
!694 = !DILocation(line: 1308, column: 50, scope: !469)
!695 = !DILocation(line: 1308, column: 32, scope: !469)
!696 = !DILocation(line: 1308, column: 13, scope: !469)
!697 = !DILocation(line: 1308, column: 18, scope: !469)
!698 = !DILocation(line: 1310, column: 3, scope: !470)
!699 = !DILocation(line: 1311, column: 13, scope: !700)
!700 = distinct !DILexicalBlock(scope: !470, file: !2, line: 1311, column: 11)
!701 = !DILocation(line: 1311, column: 11, scope: !470)
!702 = !DILocation(line: 1312, column: 23, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !2, line: 1311, column: 33)
!704 = !DILocation(line: 1312, column: 26, scope: !703)
!705 = !DILocation(line: 1312, column: 17, scope: !703)
!706 = !DILocation(line: 1313, column: 43, scope: !703)
!707 = !DILocation(line: 1313, column: 41, scope: !703)
!708 = !DILocation(line: 1313, column: 13, scope: !703)
!709 = !DILocation(line: 1313, column: 17, scope: !703)
!710 = !DILocation(line: 1314, column: 5, scope: !703)
!711 = !DILocation(line: 1317, column: 5, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !2, line: 1317, column: 5)
!713 = distinct !DILexicalBlock(scope: !700, file: !2, line: 1316, column: 8)
!714 = !DILocation(line: 1317, column: 5, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !2, line: 1317, column: 5)
!716 = !DILocation(line: 0, scope: !449)
!717 = !DILocation(line: 1319, column: 1, scope: !442)
!718 = !DILocation(line: 0, scope: !514)
!719 = !DILocation(line: 11, column: 19, scope: !514)
!720 = !DILocation(line: 11, column: 28, scope: !514)
!721 = !{!722, !326, i64 16}
!722 = !{!"cheb_series_struct", !723, i64 0, !724, i64 8, !326, i64 16, !326, i64 24, !724, i64 32}
!723 = !{!"any pointer", !327, i64 0}
!724 = !{!"int", !327, i64 0}
!725 = !DILocation(line: 11, column: 22, scope: !514)
!726 = !DILocation(line: 11, column: 36, scope: !514)
!727 = !{!722, !326, i64 24}
!728 = !DILocation(line: 11, column: 30, scope: !514)
!729 = !DILocation(line: 11, column: 48, scope: !514)
!730 = !DILocation(line: 11, column: 39, scope: !514)
!731 = !DILocation(line: 12, column: 19, scope: !514)
!732 = !DILocation(line: 16, column: 15, scope: !532)
!733 = !{!722, !724, i64 8}
!734 = !DILocation(line: 16, column: 23, scope: !531)
!735 = !DILocation(line: 25, column: 30, scope: !534)
!736 = !{!722, !723, i64 0}
!737 = !DILocation(line: 16, column: 3, scope: !532)
!738 = !DILocation(line: 0, scope: !530)
!739 = !DILocation(line: 18, column: 11, scope: !530)
!740 = !DILocation(line: 18, column: 14, scope: !530)
!741 = !DILocation(line: 18, column: 21, scope: !530)
!742 = !DILocation(line: 18, column: 19, scope: !530)
!743 = !DILocation(line: 19, column: 10, scope: !530)
!744 = !DILocation(line: 19, column: 26, scope: !530)
!745 = !DILocation(line: 19, column: 24, scope: !530)
!746 = !DILocation(line: 19, column: 37, scope: !530)
!747 = !DILocation(line: 19, column: 35, scope: !530)
!748 = !DILocation(line: 19, column: 7, scope: !530)
!749 = !DILocation(line: 16, column: 29, scope: !531)
!750 = distinct !{!750, !737, !751, !503}
!751 = !DILocation(line: 21, column: 3, scope: !532)
!752 = !DILocation(line: 0, scope: !534)
!753 = !DILocation(line: 25, column: 10, scope: !534)
!754 = !DILocation(line: 25, column: 13, scope: !534)
!755 = !DILocation(line: 25, column: 26, scope: !534)
!756 = !DILocation(line: 25, column: 24, scope: !534)
!757 = !DILocation(line: 25, column: 18, scope: !534)
!758 = !DILocation(line: 26, column: 10, scope: !534)
!759 = !DILocation(line: 26, column: 25, scope: !534)
!760 = !DILocation(line: 26, column: 23, scope: !534)
!761 = !DILocation(line: 26, column: 42, scope: !534)
!762 = !DILocation(line: 26, column: 40, scope: !534)
!763 = !DILocation(line: 26, column: 34, scope: !534)
!764 = !DILocation(line: 26, column: 7, scope: !534)
!765 = !DILocation(line: 29, column: 15, scope: !514)
!766 = !DILocation(line: 30, column: 33, scope: !514)
!767 = !DILocation(line: 30, column: 44, scope: !514)
!768 = !DILocation(line: 30, column: 39, scope: !514)
!769 = !DILocation(line: 30, column: 37, scope: !514)
!770 = !DILocation(line: 30, column: 11, scope: !514)
!771 = !DILocation(line: 30, column: 15, scope: !514)
!772 = !DILocation(line: 32, column: 3, scope: !514)
!773 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_2_e", scope: !2, file: !2, line: 1322, type: !307, scopeLine: 1323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !774)
!774 = !{!775, !776, !777, !781, !782, !783, !784, !788, !792, !795, !798, !799, !802}
!775 = !DILocalVariable(name: "x", arg: 1, scope: !773, file: !2, line: 1322, type: !60)
!776 = !DILocalVariable(name: "result", arg: 2, scope: !773, file: !2, line: 1322, type: !62)
!777 = !DILocalVariable(name: "ex", scope: !778, file: !2, line: 1330, type: !61)
!778 = distinct !DILexicalBlock(scope: !779, file: !2, line: 1327, column: 21)
!779 = distinct !DILexicalBlock(scope: !780, file: !2, line: 1327, column: 11)
!780 = distinct !DILexicalBlock(scope: !773, file: !2, line: 1324, column: 6)
!781 = !DILocalVariable(name: "term", scope: !778, file: !2, line: 1331, type: !61)
!782 = !DILocalVariable(name: "sum", scope: !778, file: !2, line: 1332, type: !61)
!783 = !DILocalVariable(name: "n", scope: !778, file: !2, line: 1333, type: !18)
!784 = !DILocalVariable(name: "rat", scope: !785, file: !2, line: 1335, type: !61)
!785 = distinct !DILexicalBlock(scope: !786, file: !2, line: 1334, column: 27)
!786 = distinct !DILexicalBlock(scope: !787, file: !2, line: 1334, column: 5)
!787 = distinct !DILexicalBlock(scope: !778, file: !2, line: 1334, column: 5)
!788 = !DILocalVariable(name: "t", scope: !789, file: !2, line: 1348, type: !61)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1347, column: 20)
!790 = distinct !DILexicalBlock(scope: !791, file: !2, line: 1347, column: 11)
!791 = distinct !DILexicalBlock(scope: !779, file: !2, line: 1344, column: 11)
!792 = !DILocalVariable(name: "t", scope: !793, file: !2, line: 1352, type: !61)
!793 = distinct !DILexicalBlock(scope: !794, file: !2, line: 1351, column: 21)
!794 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1351, column: 11)
!795 = !DILocalVariable(name: "t", scope: !796, file: !2, line: 1356, type: !61)
!796 = distinct !DILexicalBlock(scope: !797, file: !2, line: 1355, column: 21)
!797 = distinct !DILexicalBlock(scope: !794, file: !2, line: 1355, column: 11)
!798 = !DILocalVariable(name: "c", scope: !796, file: !2, line: 1357, type: !63)
!799 = !DILocalVariable(name: "t", scope: !800, file: !2, line: 1364, type: !61)
!800 = distinct !DILexicalBlock(scope: !801, file: !2, line: 1363, column: 42)
!801 = distinct !DILexicalBlock(scope: !797, file: !2, line: 1363, column: 11)
!802 = !DILocalVariable(name: "c", scope: !800, file: !2, line: 1365, type: !63)
!803 = distinct !DIAssignID()
!804 = !DILocation(line: 0, scope: !796)
!805 = distinct !DIAssignID()
!806 = !DILocation(line: 0, scope: !800)
!807 = !DILocation(line: 0, scope: !773)
!808 = !DILocation(line: 1324, column: 8, scope: !780)
!809 = !DILocation(line: 1324, column: 6, scope: !773)
!810 = !DILocation(line: 1325, column: 5, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !2, line: 1325, column: 5)
!812 = distinct !DILexicalBlock(scope: !780, file: !2, line: 1324, column: 27)
!813 = !DILocation(line: 1325, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !811, file: !2, line: 1325, column: 5)
!815 = !DILocation(line: 1327, column: 13, scope: !779)
!816 = !DILocation(line: 1327, column: 11, scope: !780)
!817 = !DILocation(line: 1330, column: 19, scope: !778)
!818 = !DILocation(line: 0, scope: !778)
!819 = !DILocation(line: 1334, column: 5, scope: !787)
!820 = !DILocation(line: 1335, column: 21, scope: !785)
!821 = !DILocation(line: 1335, column: 22, scope: !785)
!822 = !DILocation(line: 1335, column: 27, scope: !785)
!823 = !DILocation(line: 0, scope: !785)
!824 = !DILocation(line: 1336, column: 19, scope: !785)
!825 = !DILocation(line: 1336, column: 25, scope: !785)
!826 = !DILocation(line: 1336, column: 31, scope: !785)
!827 = !DILocation(line: 1336, column: 12, scope: !785)
!828 = !DILocation(line: 1337, column: 12, scope: !785)
!829 = !DILocation(line: 1338, column: 19, scope: !830)
!830 = distinct !DILexicalBlock(scope: !785, file: !2, line: 1338, column: 10)
!831 = !DILocation(line: 1338, column: 10, scope: !830)
!832 = !DILocation(line: 1338, column: 25, scope: !830)
!833 = distinct !{!833, !819, !834, !503}
!834 = !DILocation(line: 1339, column: 5, scope: !787)
!835 = !DILocation(line: 1340, column: 17, scope: !778)
!836 = !DILocation(line: 1341, column: 43, scope: !778)
!837 = !DILocation(line: 1341, column: 41, scope: !778)
!838 = !DILocation(line: 1341, column: 13, scope: !778)
!839 = !DILocation(line: 1341, column: 17, scope: !778)
!840 = !DILocation(line: 1344, column: 13, scope: !791)
!841 = !DILocation(line: 1344, column: 11, scope: !779)
!842 = !DILocation(line: 0, scope: !514, inlinedAt: !843)
!843 = distinct !DILocation(line: 1345, column: 12, scope: !844)
!844 = distinct !DILexicalBlock(scope: !791, file: !2, line: 1344, column: 20)
!845 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !843)
!846 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !843)
!847 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !843)
!848 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !843)
!849 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !843)
!850 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !843)
!851 = !DILocation(line: 0, scope: !530, inlinedAt: !843)
!852 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !843)
!853 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !843)
!854 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !843)
!855 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !843)
!856 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !843)
!857 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !843)
!858 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !843)
!859 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !843)
!860 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !843)
!861 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !843)
!862 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !843)
!863 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !843)
!864 = distinct !{!864, !850, !865, !503}
!865 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !843)
!866 = !DILocation(line: 0, scope: !534, inlinedAt: !843)
!867 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !843)
!868 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !843)
!869 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !843)
!870 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !843)
!871 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !843)
!872 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !843)
!873 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !843)
!874 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !843)
!875 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !843)
!876 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !843)
!877 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !843)
!878 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !843)
!879 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !843)
!880 = !DILocation(line: 1345, column: 5, scope: !844)
!881 = !DILocation(line: 1347, column: 13, scope: !790)
!882 = !DILocation(line: 1347, column: 11, scope: !791)
!883 = !DILocation(line: 1348, column: 26, scope: !789)
!884 = !DILocation(line: 1348, column: 23, scope: !789)
!885 = !DILocation(line: 1348, column: 32, scope: !789)
!886 = !DILocation(line: 0, scope: !789)
!887 = !DILocation(line: 0, scope: !514, inlinedAt: !888)
!888 = distinct !DILocation(line: 1349, column: 12, scope: !789)
!889 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !888)
!890 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !888)
!891 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !888)
!892 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !888)
!893 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !888)
!894 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !888)
!895 = !DILocation(line: 0, scope: !530, inlinedAt: !888)
!896 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !888)
!897 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !888)
!898 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !888)
!899 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !888)
!900 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !888)
!901 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !888)
!902 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !888)
!903 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !888)
!904 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !888)
!905 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !888)
!906 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !888)
!907 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !888)
!908 = distinct !{!908, !894, !909, !503}
!909 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !888)
!910 = !DILocation(line: 0, scope: !534, inlinedAt: !888)
!911 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !888)
!912 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !888)
!913 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !888)
!914 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !888)
!915 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !888)
!916 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !888)
!917 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !888)
!918 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !888)
!919 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !888)
!920 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !888)
!921 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !888)
!922 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !888)
!923 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !888)
!924 = !DILocation(line: 1351, column: 13, scope: !794)
!925 = !DILocation(line: 1351, column: 11, scope: !790)
!926 = !DILocation(line: 1352, column: 26, scope: !793)
!927 = !DILocation(line: 1352, column: 23, scope: !793)
!928 = !DILocation(line: 1352, column: 32, scope: !793)
!929 = !DILocation(line: 0, scope: !793)
!930 = !DILocation(line: 0, scope: !514, inlinedAt: !931)
!931 = distinct !DILocation(line: 1353, column: 12, scope: !793)
!932 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !931)
!933 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !931)
!934 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !931)
!935 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !931)
!936 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !931)
!937 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !931)
!938 = !DILocation(line: 0, scope: !530, inlinedAt: !931)
!939 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !931)
!940 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !931)
!941 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !931)
!942 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !931)
!943 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !931)
!944 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !931)
!945 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !931)
!946 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !931)
!947 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !931)
!948 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !931)
!949 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !931)
!950 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !931)
!951 = distinct !{!951, !937, !952, !503}
!952 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !931)
!953 = !DILocation(line: 0, scope: !534, inlinedAt: !931)
!954 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !931)
!955 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !931)
!956 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !931)
!957 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !931)
!958 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !931)
!959 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !931)
!960 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !931)
!961 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !931)
!962 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !931)
!963 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !931)
!964 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !931)
!965 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !931)
!966 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !931)
!967 = !DILocation(line: 1355, column: 13, scope: !797)
!968 = !DILocation(line: 1355, column: 11, scope: !794)
!969 = !DILocation(line: 1356, column: 19, scope: !796)
!970 = !DILocation(line: 1356, column: 22, scope: !796)
!971 = !DILocation(line: 1357, column: 5, scope: !796)
!972 = !DILocation(line: 1358, column: 5, scope: !796)
!973 = !DILocation(line: 1359, column: 22, scope: !796)
!974 = !DILocation(line: 1359, column: 26, scope: !796)
!975 = !DILocation(line: 1359, column: 29, scope: !796)
!976 = !DILocation(line: 1359, column: 31, scope: !796)
!977 = !DILocation(line: 1359, column: 18, scope: !796)
!978 = !DILocation(line: 1360, column: 22, scope: !796)
!979 = !DILocation(line: 1360, column: 26, scope: !796)
!980 = !DILocation(line: 1360, column: 29, scope: !796)
!981 = !DILocation(line: 1360, column: 31, scope: !796)
!982 = !DILocation(line: 1360, column: 60, scope: !796)
!983 = !DILocation(line: 1360, column: 58, scope: !796)
!984 = !DILocation(line: 1360, column: 34, scope: !796)
!985 = !DILocation(line: 1360, column: 13, scope: !796)
!986 = !DILocation(line: 1360, column: 18, scope: !796)
!987 = !DILocation(line: 1362, column: 3, scope: !797)
!988 = !DILocation(line: 1363, column: 13, scope: !801)
!989 = !DILocation(line: 1363, column: 11, scope: !797)
!990 = !DILocation(line: 1364, column: 20, scope: !800)
!991 = !DILocation(line: 1364, column: 23, scope: !800)
!992 = !DILocation(line: 1365, column: 5, scope: !800)
!993 = !DILocation(line: 1366, column: 5, scope: !800)
!994 = !DILocation(line: 1367, column: 21, scope: !800)
!995 = !DILocation(line: 1367, column: 25, scope: !800)
!996 = !DILocation(line: 1367, column: 28, scope: !800)
!997 = !DILocation(line: 1367, column: 30, scope: !800)
!998 = !DILocation(line: 1367, column: 17, scope: !800)
!999 = !DILocation(line: 1368, column: 21, scope: !800)
!1000 = !DILocation(line: 1368, column: 25, scope: !800)
!1001 = !DILocation(line: 1368, column: 28, scope: !800)
!1002 = !DILocation(line: 1368, column: 30, scope: !800)
!1003 = !DILocation(line: 1368, column: 59, scope: !800)
!1004 = !DILocation(line: 1368, column: 57, scope: !800)
!1005 = !DILocation(line: 1368, column: 33, scope: !800)
!1006 = !DILocation(line: 1368, column: 13, scope: !800)
!1007 = !DILocation(line: 1368, column: 17, scope: !800)
!1008 = !DILocation(line: 1370, column: 3, scope: !801)
!1009 = !DILocation(line: 1371, column: 13, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !801, file: !2, line: 1371, column: 11)
!1011 = !DILocation(line: 1371, column: 11, scope: !801)
!1012 = !DILocation(line: 1372, column: 27, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 1371, column: 34)
!1014 = !DILocation(line: 1372, column: 30, scope: !1013)
!1015 = !DILocation(line: 1372, column: 32, scope: !1013)
!1016 = !DILocation(line: 1372, column: 17, scope: !1013)
!1017 = !DILocation(line: 1373, column: 43, scope: !1013)
!1018 = !DILocation(line: 1373, column: 41, scope: !1013)
!1019 = !DILocation(line: 1373, column: 13, scope: !1013)
!1020 = !DILocation(line: 1373, column: 17, scope: !1013)
!1021 = !DILocation(line: 1374, column: 5, scope: !1013)
!1022 = !DILocation(line: 1377, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 1377, column: 5)
!1024 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 1376, column: 8)
!1025 = !DILocation(line: 1377, column: 5, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 1377, column: 5)
!1027 = !DILocation(line: 0, scope: !780)
!1028 = !DILocation(line: 1379, column: 1, scope: !773)
!1029 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_int_e", scope: !2, file: !2, line: 1382, type: !57, scopeLine: 1383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1044}
!1031 = !DILocalVariable(name: "j", arg: 1, scope: !1029, file: !2, line: 1382, type: !59)
!1032 = !DILocalVariable(name: "x", arg: 2, scope: !1029, file: !2, line: 1382, type: !60)
!1033 = !DILocalVariable(name: "result", arg: 3, scope: !1029, file: !2, line: 1382, type: !62)
!1034 = !DILocalVariable(name: "fasymp", scope: !1035, file: !2, line: 1409, type: !63)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 1408, column: 8)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 1405, column: 11)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 1402, column: 11)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 1399, column: 11)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 1396, column: 11)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 1393, column: 11)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 1390, column: 11)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 1387, column: 12)
!1043 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 1384, column: 6)
!1044 = !DILocalVariable(name: "stat_asymp", scope: !1035, file: !2, line: 1410, type: !18)
!1045 = distinct !DIAssignID()
!1046 = distinct !DIAssignID()
!1047 = !DILocation(line: 0, scope: !1035)
!1048 = !DILocation(line: 0, scope: !1029)
!1049 = !DILocation(line: 1384, column: 8, scope: !1043)
!1050 = !DILocation(line: 1384, column: 6, scope: !1029)
!1051 = !DILocation(line: 0, scope: !56, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 1385, column: 12, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 1384, column: 14)
!1054 = !DILocation(line: 857, column: 3, scope: !56, inlinedAt: !1052)
!1055 = !DILocation(line: 864, column: 13, scope: !79, inlinedAt: !1052)
!1056 = !DILocation(line: 864, column: 11, scope: !80, inlinedAt: !1052)
!1057 = !DILocation(line: 866, column: 17, scope: !1058, inlinedAt: !1052)
!1058 = distinct !DILexicalBlock(scope: !79, file: !2, line: 864, column: 25)
!1059 = !DILocation(line: 867, column: 5, scope: !1060, inlinedAt: !1052)
!1060 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 867, column: 5)
!1061 = !DILocation(line: 872, column: 13, scope: !78, inlinedAt: !1052)
!1062 = !DILocation(line: 0, scope: !78, inlinedAt: !1052)
!1063 = !DILocation(line: 874, column: 5, scope: !78, inlinedAt: !1052)
!1064 = !DILocation(line: 874, column: 15, scope: !78, inlinedAt: !1052)
!1065 = distinct !DIAssignID()
!1066 = !DILocation(line: 876, column: 15, scope: !1067, inlinedAt: !1052)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 876, column: 5)
!1068 = distinct !DILexicalBlock(scope: !78, file: !2, line: 876, column: 5)
!1069 = !DILocation(line: 876, column: 5, scope: !1068, inlinedAt: !1052)
!1070 = !DILocation(line: 877, column: 28, scope: !1071, inlinedAt: !1052)
!1071 = distinct !DILexicalBlock(scope: !1067, file: !2, line: 876, column: 25)
!1072 = !DILocation(line: 877, column: 20, scope: !1071, inlinedAt: !1052)
!1073 = !DILocation(line: 877, column: 19, scope: !1071, inlinedAt: !1052)
!1074 = !DILocation(line: 877, column: 7, scope: !1071, inlinedAt: !1052)
!1075 = !DILocation(line: 877, column: 17, scope: !1071, inlinedAt: !1052)
!1076 = !DILocation(line: 878, column: 19, scope: !1077, inlinedAt: !1052)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 878, column: 7)
!1078 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 878, column: 7)
!1079 = !DILocation(line: 878, column: 7, scope: !1078, inlinedAt: !1052)
!1080 = !DILocation(line: 879, column: 21, scope: !1081, inlinedAt: !1052)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 878, column: 29)
!1082 = !DILocation(line: 879, column: 23, scope: !1081, inlinedAt: !1052)
!1083 = !DILocation(line: 879, column: 22, scope: !1081, inlinedAt: !1052)
!1084 = !DILocation(line: 879, column: 40, scope: !1081, inlinedAt: !1052)
!1085 = !DILocation(line: 879, column: 37, scope: !1081, inlinedAt: !1052)
!1086 = !DILocation(line: 879, column: 35, scope: !1081, inlinedAt: !1052)
!1087 = !DILocation(line: 879, column: 45, scope: !1081, inlinedAt: !1052)
!1088 = !DILocation(line: 879, column: 44, scope: !1081, inlinedAt: !1052)
!1089 = !DILocation(line: 879, column: 33, scope: !1081, inlinedAt: !1052)
!1090 = !DILocation(line: 879, column: 19, scope: !1081, inlinedAt: !1052)
!1091 = distinct !{!1091, !1079, !1092, !503}
!1092 = !DILocation(line: 880, column: 7, scope: !1078, inlinedAt: !1052)
!1093 = !DILocation(line: 876, column: 21, scope: !1067, inlinedAt: !1052)
!1094 = distinct !{!1094, !1069, !1095, !503}
!1095 = !DILocation(line: 881, column: 5, scope: !1068, inlinedAt: !1052)
!1096 = !DILocation(line: 883, column: 10, scope: !1097, inlinedAt: !1052)
!1097 = distinct !DILexicalBlock(scope: !78, file: !2, line: 883, column: 8)
!1098 = !DILocation(line: 883, column: 8, scope: !78, inlinedAt: !1052)
!1099 = !DILocation(line: 884, column: 15, scope: !1100, inlinedAt: !1052)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 883, column: 18)
!1101 = !DILocation(line: 884, column: 11, scope: !1100, inlinedAt: !1052)
!1102 = !DILocation(line: 885, column: 11, scope: !1100, inlinedAt: !1052)
!1103 = !DILocation(line: 886, column: 7, scope: !1104, inlinedAt: !1052)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 886, column: 7)
!1105 = !DILocation(line: 891, column: 11, scope: !1106, inlinedAt: !1052)
!1106 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 890, column: 10)
!1107 = !DILocation(line: 892, column: 11, scope: !1106, inlinedAt: !1052)
!1108 = !DILocation(line: 893, column: 7, scope: !1109, inlinedAt: !1052)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 893, column: 7)
!1110 = !DILocation(line: 887, column: 14, scope: !1111, inlinedAt: !1052)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 886, column: 27)
!1112 = distinct !DILexicalBlock(scope: !1104, file: !2, line: 886, column: 7)
!1113 = !DILocation(line: 887, column: 19, scope: !1111, inlinedAt: !1052)
!1114 = !DILocation(line: 887, column: 17, scope: !1111, inlinedAt: !1052)
!1115 = !DILocation(line: 886, column: 23, scope: !1112, inlinedAt: !1052)
!1116 = distinct !{!1116, !1103, !1117, !503}
!1117 = !DILocation(line: 888, column: 7, scope: !1104, inlinedAt: !1052)
!1118 = !DILocation(line: 893, column: 14, scope: !1109, inlinedAt: !1052)
!1119 = !DILocation(line: 894, column: 14, scope: !1120, inlinedAt: !1052)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !2, line: 893, column: 29)
!1121 = distinct !DILexicalBlock(scope: !1109, file: !2, line: 893, column: 7)
!1122 = !DILocation(line: 894, column: 19, scope: !1120, inlinedAt: !1052)
!1123 = !DILocation(line: 894, column: 17, scope: !1120, inlinedAt: !1052)
!1124 = !DILocation(line: 893, column: 25, scope: !1121, inlinedAt: !1052)
!1125 = !DILocation(line: 893, column: 19, scope: !1121, inlinedAt: !1052)
!1126 = distinct !{!1126, !1108, !1127, !503}
!1127 = !DILocation(line: 895, column: 7, scope: !1109, inlinedAt: !1052)
!1128 = distinct !{!1128, !1129}
!1129 = !{!"llvm.loop.unroll.disable"}
!1130 = !DILocation(line: 0, scope: !1097, inlinedAt: !1052)
!1131 = !DILocation(line: 898, column: 27, scope: !78, inlinedAt: !1052)
!1132 = !DILocation(line: 898, column: 9, scope: !78, inlinedAt: !1052)
!1133 = !DILocation(line: 899, column: 20, scope: !78, inlinedAt: !1052)
!1134 = !DILocation(line: 899, column: 22, scope: !78, inlinedAt: !1052)
!1135 = !DILocation(line: 899, column: 17, scope: !78, inlinedAt: !1052)
!1136 = !DILocation(line: 900, column: 43, scope: !78, inlinedAt: !1052)
!1137 = !DILocation(line: 900, column: 41, scope: !78, inlinedAt: !1052)
!1138 = !DILocation(line: 900, column: 13, scope: !78, inlinedAt: !1052)
!1139 = !DILocation(line: 900, column: 17, scope: !78, inlinedAt: !1052)
!1140 = !DILocation(line: 0, scope: !80, inlinedAt: !1052)
!1141 = !DILocation(line: 903, column: 1, scope: !56, inlinedAt: !1052)
!1142 = !DILocation(line: 1385, column: 5, scope: !1053)
!1143 = !DILocation(line: 1387, column: 12, scope: !1043)
!1144 = !DILocation(line: 0, scope: !306, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 1388, column: 12, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1042, file: !2, line: 1387, column: 21)
!1147 = !DILocation(line: 1217, column: 8, scope: !315, inlinedAt: !1145)
!1148 = !DILocation(line: 1217, column: 6, scope: !306, inlinedAt: !1145)
!1149 = !DILocation(line: 1218, column: 5, scope: !322, inlinedAt: !1145)
!1150 = !DILocation(line: 1218, column: 5, scope: !331, inlinedAt: !1145)
!1151 = !DILocation(line: 1220, column: 13, scope: !314, inlinedAt: !1145)
!1152 = !DILocation(line: 1220, column: 11, scope: !315, inlinedAt: !1145)
!1153 = !DILocation(line: 1221, column: 23, scope: !313, inlinedAt: !1145)
!1154 = !DILocation(line: 0, scope: !313, inlinedAt: !1145)
!1155 = !DILocation(line: 1222, column: 26, scope: !313, inlinedAt: !1145)
!1156 = !DILocation(line: 1222, column: 21, scope: !313, inlinedAt: !1145)
!1157 = !DILocation(line: 1222, column: 17, scope: !313, inlinedAt: !1145)
!1158 = !DILocation(line: 1223, column: 26, scope: !313, inlinedAt: !1145)
!1159 = !DILocation(line: 1223, column: 34, scope: !313, inlinedAt: !1145)
!1160 = !DILocation(line: 1223, column: 23, scope: !313, inlinedAt: !1145)
!1161 = !DILocation(line: 1223, column: 41, scope: !313, inlinedAt: !1145)
!1162 = !DILocation(line: 1223, column: 61, scope: !313, inlinedAt: !1145)
!1163 = !DILocation(line: 1223, column: 59, scope: !313, inlinedAt: !1145)
!1164 = !DILocation(line: 1223, column: 13, scope: !313, inlinedAt: !1145)
!1165 = !DILocation(line: 1223, column: 17, scope: !313, inlinedAt: !1145)
!1166 = !DILocation(line: 1227, column: 21, scope: !317, inlinedAt: !1145)
!1167 = !DILocation(line: 1227, column: 17, scope: !317, inlinedAt: !1145)
!1168 = !DILocation(line: 0, scope: !317, inlinedAt: !1145)
!1169 = !DILocation(line: 1228, column: 28, scope: !317, inlinedAt: !1145)
!1170 = !DILocation(line: 1228, column: 22, scope: !317, inlinedAt: !1145)
!1171 = !DILocation(line: 1228, column: 17, scope: !317, inlinedAt: !1145)
!1172 = !DILocation(line: 1229, column: 46, scope: !317, inlinedAt: !1145)
!1173 = !DILocation(line: 1229, column: 41, scope: !317, inlinedAt: !1145)
!1174 = !DILocation(line: 1229, column: 53, scope: !317, inlinedAt: !1145)
!1175 = !DILocation(line: 1229, column: 13, scope: !317, inlinedAt: !1145)
!1176 = !DILocation(line: 1229, column: 17, scope: !317, inlinedAt: !1145)
!1177 = !DILocation(line: 1391, column: 12, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 1390, column: 19)
!1179 = !{i32 0, i32 16}
!1180 = !DILocation(line: 1391, column: 5, scope: !1178)
!1181 = !DILocation(line: 1394, column: 12, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 1393, column: 19)
!1183 = !{i32 0, i32 17}
!1184 = !DILocation(line: 1394, column: 5, scope: !1182)
!1185 = !DILocation(line: 1397, column: 12, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 1396, column: 19)
!1187 = !DILocation(line: 1397, column: 5, scope: !1186)
!1188 = !DILocation(line: 1399, column: 13, scope: !1038)
!1189 = !DILocation(line: 1399, column: 11, scope: !1039)
!1190 = !DILocation(line: 1400, column: 19, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1038, file: !2, line: 1399, column: 20)
!1192 = !DILocation(line: 1400, column: 12, scope: !1191)
!1193 = !{i32 0, i32 12}
!1194 = !DILocation(line: 1400, column: 5, scope: !1191)
!1195 = !DILocation(line: 1402, column: 13, scope: !1037)
!1196 = !DILocation(line: 1402, column: 11, scope: !1038)
!1197 = !DILocation(line: 1403, column: 30, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 1402, column: 21)
!1199 = !DILocation(line: 1403, column: 12, scope: !1198)
!1200 = !DILocation(line: 1403, column: 5, scope: !1198)
!1201 = !DILocation(line: 1405, column: 13, scope: !1036)
!1202 = !DILocation(line: 1405, column: 11, scope: !1037)
!1203 = !DILocation(line: 1406, column: 12, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 1405, column: 20)
!1205 = !DILocation(line: 1406, column: 5, scope: !1204)
!1206 = !DILocation(line: 1409, column: 5, scope: !1035)
!1207 = !DILocation(line: 1410, column: 31, scope: !1035)
!1208 = !DILocation(line: 1410, column: 22, scope: !1035)
!1209 = !DILocation(line: 1412, column: 19, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 1412, column: 8)
!1211 = !DILocation(line: 1412, column: 8, scope: !1035)
!1212 = !DILocation(line: 1413, column: 29, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 1412, column: 35)
!1214 = !DILocation(line: 1413, column: 20, scope: !1213)
!1215 = !DILocation(line: 1414, column: 29, scope: !1213)
!1216 = !DILocation(line: 1414, column: 15, scope: !1213)
!1217 = !DILocation(line: 1415, column: 46, scope: !1213)
!1218 = !DILocation(line: 1415, column: 44, scope: !1213)
!1219 = !DILocation(line: 1415, column: 19, scope: !1213)
!1220 = !DILocation(line: 1416, column: 7, scope: !1213)
!1221 = !DILocation(line: 1419, column: 14, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 1418, column: 10)
!1223 = !DILocation(line: 1419, column: 7, scope: !1222)
!1224 = !DILocation(line: 0, scope: !1210)
!1225 = !DILocation(line: 1421, column: 3, scope: !1036)
!1226 = !DILocation(line: 0, scope: !1043)
!1227 = !DILocation(line: 1422, column: 1, scope: !1029)
!1228 = distinct !DIAssignID()
!1229 = !DILocation(line: 0, scope: !90)
!1230 = distinct !DIAssignID()
!1231 = !DILocation(line: 918, column: 3, scope: !90)
!1232 = !DILocation(line: 920, column: 8, scope: !102)
!1233 = !DILocation(line: 920, column: 6, scope: !90)
!1234 = !DILocation(line: 922, column: 17, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !102, file: !2, line: 920, column: 27)
!1236 = !DILocation(line: 923, column: 5, scope: !1235)
!1237 = !DILocation(line: 925, column: 13, scope: !101)
!1238 = !DILocation(line: 925, column: 20, scope: !101)
!1239 = !DILocation(line: 925, column: 28, scope: !101)
!1240 = !DILocation(line: 925, column: 27, scope: !101)
!1241 = !DILocation(line: 925, column: 25, scope: !101)
!1242 = !DILocation(line: 925, column: 11, scope: !102)
!1243 = !DILocation(line: 930, column: 19, scope: !100)
!1244 = !DILocation(line: 0, scope: !100)
!1245 = !DILocation(line: 934, column: 5, scope: !109)
!1246 = !DILocation(line: 935, column: 21, scope: !107)
!1247 = !DILocation(line: 935, column: 22, scope: !107)
!1248 = !DILocation(line: 935, column: 27, scope: !107)
!1249 = !DILocation(line: 0, scope: !107)
!1250 = !DILocation(line: 936, column: 20, scope: !107)
!1251 = !DILocation(line: 937, column: 19, scope: !107)
!1252 = !DILocation(line: 937, column: 12, scope: !107)
!1253 = !DILocation(line: 938, column: 12, scope: !107)
!1254 = !DILocation(line: 939, column: 19, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !107, file: !2, line: 939, column: 10)
!1256 = !DILocation(line: 939, column: 10, scope: !1255)
!1257 = !DILocation(line: 939, column: 25, scope: !1255)
!1258 = distinct !{!1258, !1245, !1259, !503}
!1259 = !DILocation(line: 940, column: 5, scope: !109)
!1260 = !DILocation(line: 941, column: 17, scope: !100)
!1261 = !DILocation(line: 942, column: 43, scope: !100)
!1262 = !DILocation(line: 942, column: 41, scope: !100)
!1263 = !DILocation(line: 942, column: 13, scope: !100)
!1264 = !DILocation(line: 942, column: 17, scope: !100)
!1265 = !DILocation(line: 0, scope: !112)
!1266 = !DILocation(line: 948, column: 19, scope: !112)
!1267 = !DILocation(line: 948, column: 18, scope: !112)
!1268 = !DILocation(line: 953, column: 5, scope: !122)
!1269 = !DILocation(line: 959, column: 59, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !120, file: !2, line: 959, column: 10)
!1271 = !DILocation(line: 953, column: 23, scope: !121)
!1272 = distinct !{!1272, !1268, !1273, !503}
!1273 = !DILocation(line: 961, column: 5, scope: !122)
!1274 = !DILocation(line: 963, column: 18, scope: !112)
!1275 = !DILocation(line: 964, column: 13, scope: !112)
!1276 = !DILocation(line: 965, column: 42, scope: !112)
!1277 = !DILocation(line: 965, column: 17, scope: !112)
!1278 = !DILocation(line: 967, column: 8, scope: !112)
!1279 = !DILocation(line: 954, column: 27, scope: !120)
!1280 = !DILocation(line: 954, column: 18, scope: !120)
!1281 = !DILocation(line: 0, scope: !120)
!1282 = !DILocation(line: 955, column: 24, scope: !120)
!1283 = !DILocalVariable(name: "term", arg: 1, scope: !1284, file: !2, line: 819, type: !60)
!1284 = distinct !DISubprogram(name: "fd_whiz", scope: !2, file: !2, line: 819, type: !1285, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1287)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!18, !60, !59, !182, !182, !182, !182}
!1287 = !{!1283, !1288, !1289, !1290, !1291, !1292, !1293, !1296, !1297, !1298}
!1288 = !DILocalVariable(name: "iterm", arg: 2, scope: !1284, file: !2, line: 819, type: !59)
!1289 = !DILocalVariable(name: "qnum", arg: 3, scope: !1284, file: !2, line: 820, type: !182)
!1290 = !DILocalVariable(name: "qden", arg: 4, scope: !1284, file: !2, line: 820, type: !182)
!1291 = !DILocalVariable(name: "result", arg: 5, scope: !1284, file: !2, line: 821, type: !182)
!1292 = !DILocalVariable(name: "s", arg: 6, scope: !1284, file: !2, line: 821, type: !182)
!1293 = !DILocalVariable(name: "factor", scope: !1294, file: !2, line: 831, type: !61)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 830, column: 17)
!1295 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 830, column: 6)
!1296 = !DILocalVariable(name: "ratio", scope: !1294, file: !2, line: 832, type: !61)
!1297 = !DILocalVariable(name: "j", scope: !1294, file: !2, line: 833, type: !18)
!1298 = !DILocalVariable(name: "c", scope: !1299, file: !2, line: 835, type: !61)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 834, column: 31)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 834, column: 5)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 834, column: 5)
!1302 = !DILocation(line: 0, scope: !1284, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 957, column: 7, scope: !120)
!1304 = !DILocation(line: 823, column: 12, scope: !1305, inlinedAt: !1303)
!1305 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 823, column: 6)
!1306 = !DILocation(line: 823, column: 6, scope: !1284, inlinedAt: !1303)
!1307 = !DILocation(line: 825, column: 6, scope: !1284, inlinedAt: !1303)
!1308 = !DILocation(line: 827, column: 28, scope: !1284, inlinedAt: !1303)
!1309 = !DILocation(line: 827, column: 33, scope: !1284, inlinedAt: !1303)
!1310 = !DILocation(line: 827, column: 26, scope: !1284, inlinedAt: !1303)
!1311 = !DILocation(line: 827, column: 38, scope: !1284, inlinedAt: !1303)
!1312 = !DILocation(line: 827, column: 20, scope: !1284, inlinedAt: !1303)
!1313 = !DILocation(line: 827, column: 3, scope: !1284, inlinedAt: !1303)
!1314 = !DILocation(line: 827, column: 15, scope: !1284, inlinedAt: !1303)
!1315 = !DILocation(line: 828, column: 20, scope: !1284, inlinedAt: !1303)
!1316 = !DILocation(line: 828, column: 3, scope: !1284, inlinedAt: !1303)
!1317 = !DILocation(line: 828, column: 15, scope: !1284, inlinedAt: !1303)
!1318 = !DILocation(line: 830, column: 6, scope: !1284, inlinedAt: !1303)
!1319 = !DILocation(line: 0, scope: !1294, inlinedAt: !1303)
!1320 = !DILocation(line: 832, column: 26, scope: !1294, inlinedAt: !1303)
!1321 = !DILocation(line: 834, column: 5, scope: !1301, inlinedAt: !1303)
!1322 = !DILocation(line: 838, column: 17, scope: !1299, inlinedAt: !1303)
!1323 = !DILocation(line: 837, column: 17, scope: !1299, inlinedAt: !1303)
!1324 = !DILocation(line: 834, scope: !1301, inlinedAt: !1303)
!1325 = !DILocation(line: 835, column: 29, scope: !1299, inlinedAt: !1303)
!1326 = !DILocation(line: 835, column: 25, scope: !1299, inlinedAt: !1303)
!1327 = !DILocation(line: 835, column: 35, scope: !1299, inlinedAt: !1303)
!1328 = !DILocation(line: 0, scope: !1299, inlinedAt: !1303)
!1329 = !DILocation(line: 836, column: 14, scope: !1299, inlinedAt: !1303)
!1330 = !DILocation(line: 837, column: 33, scope: !1299, inlinedAt: !1303)
!1331 = !DILocation(line: 837, column: 31, scope: !1299, inlinedAt: !1303)
!1332 = !DILocation(line: 837, column: 27, scope: !1299, inlinedAt: !1303)
!1333 = !DILocation(line: 837, column: 15, scope: !1299, inlinedAt: !1303)
!1334 = !DILocation(line: 838, column: 33, scope: !1299, inlinedAt: !1303)
!1335 = !DILocation(line: 838, column: 31, scope: !1299, inlinedAt: !1303)
!1336 = !DILocation(line: 838, column: 27, scope: !1299, inlinedAt: !1303)
!1337 = !DILocation(line: 838, column: 15, scope: !1299, inlinedAt: !1303)
!1338 = !DILocation(line: 834, column: 21, scope: !1300, inlinedAt: !1303)
!1339 = distinct !{!1339, !1321, !1340, !503}
!1340 = !DILocation(line: 839, column: 5, scope: !1301, inlinedAt: !1303)
!1341 = !DILocation(line: 842, column: 13, scope: !1284, inlinedAt: !1303)
!1342 = !DILocation(line: 842, column: 23, scope: !1284, inlinedAt: !1303)
!1343 = !DILocation(line: 842, column: 21, scope: !1284, inlinedAt: !1303)
!1344 = !DILocation(line: 958, column: 10, scope: !120)
!1345 = !DILocation(line: 959, column: 16, scope: !1270)
!1346 = !DILocation(line: 959, column: 10, scope: !1270)
!1347 = !DILocation(line: 959, column: 31, scope: !1270)
!1348 = !DILocation(line: 959, column: 38, scope: !1270)
!1349 = !DILocation(line: 959, column: 42, scope: !1270)
!1350 = !DILocation(line: 959, column: 29, scope: !1270)
!1351 = !DILocation(line: 967, column: 14, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !112, file: !2, line: 967, column: 8)
!1353 = !DILocation(line: 968, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 968, column: 7)
!1355 = !DILocation(line: 0, scope: !102)
!1356 = !DILocation(line: 972, column: 1, scope: !90)
!1357 = !DISubprogram(name: "gsl_sf_eta_int_e", scope: !1358, file: !1358, line: 97, type: !1359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DIFile(filename: "../gsl/gsl_sf_zeta.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3b020124d077aa4b6b3c3ca444b4ecd2")
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!18, !18, !62}
!1361 = distinct !DISubprogram(name: "fd_series_int", scope: !2, file: !2, line: 1069, type: !1362, scopeLine: 1070, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1363)
!1362 = !DISubroutineType(cc: DW_CC_nocall, types: !58)
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1375, !1376, !1377}
!1364 = !DILocalVariable(name: "j", arg: 1, scope: !1361, file: !2, line: 1069, type: !59)
!1365 = !DILocalVariable(name: "x", arg: 2, scope: !1361, file: !2, line: 1069, type: !60)
!1366 = !DILocalVariable(name: "result", arg: 3, scope: !1361, file: !2, line: 1069, type: !62)
!1367 = !DILocalVariable(name: "n", scope: !1361, file: !2, line: 1071, type: !18)
!1368 = !DILocalVariable(name: "sum", scope: !1361, file: !2, line: 1072, type: !61)
!1369 = !DILocalVariable(name: "del", scope: !1361, file: !2, line: 1073, type: !61)
!1370 = !DILocalVariable(name: "pow_factor", scope: !1361, file: !2, line: 1074, type: !61)
!1371 = !DILocalVariable(name: "eta_factor", scope: !1361, file: !2, line: 1075, type: !63)
!1372 = !DILocalVariable(name: "m", scope: !1373, file: !2, line: 1102, type: !18)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 1101, column: 14)
!1374 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 1101, column: 6)
!1375 = !DILocalVariable(name: "jfact", scope: !1373, file: !2, line: 1103, type: !63)
!1376 = !DILocalVariable(name: "sum2", scope: !1373, file: !2, line: 1104, type: !61)
!1377 = !DILocalVariable(name: "pre2", scope: !1373, file: !2, line: 1105, type: !61)
!1378 = distinct !DIAssignID()
!1379 = !DILocation(line: 0, scope: !1361)
!1380 = distinct !DIAssignID()
!1381 = !DILocation(line: 0, scope: !1373)
!1382 = !DILocation(line: 1075, column: 3, scope: !1361)
!1383 = !DILocation(line: 1076, column: 22, scope: !1361)
!1384 = !DILocation(line: 1076, column: 3, scope: !1361)
!1385 = !DILocation(line: 1077, column: 34, scope: !1361)
!1386 = !DILocation(line: 1078, column: 7, scope: !1361)
!1387 = !DILocation(line: 1083, column: 13, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 1083, column: 3)
!1389 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 1083, column: 3)
!1390 = !DILocation(line: 1083, column: 3, scope: !1389)
!1391 = !DILocation(line: 1084, column: 25, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !2, line: 1083, column: 25)
!1393 = !DILocation(line: 1084, column: 5, scope: !1392)
!1394 = !DILocation(line: 1085, column: 21, scope: !1392)
!1395 = !DILocation(line: 1085, column: 20, scope: !1392)
!1396 = !DILocation(line: 1085, column: 16, scope: !1392)
!1397 = !DILocation(line: 1086, column: 36, scope: !1392)
!1398 = !DILocation(line: 1086, column: 23, scope: !1392)
!1399 = !DILocation(line: 1087, column: 9, scope: !1392)
!1400 = !DILocation(line: 1088, column: 16, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 1088, column: 8)
!1402 = !DILocation(line: 1088, column: 8, scope: !1401)
!1403 = !DILocation(line: 1088, column: 22, scope: !1401)
!1404 = !DILocation(line: 1088, column: 8, scope: !1392)
!1405 = distinct !{!1405, !1390, !1406, !503}
!1406 = !DILocation(line: 1089, column: 3, scope: !1389)
!1407 = !DILocation(line: 1101, column: 8, scope: !1374)
!1408 = !DILocation(line: 1101, column: 6, scope: !1361)
!1409 = !DILocation(line: 1103, column: 5, scope: !1373)
!1410 = !DILocation(line: 1107, column: 5, scope: !1373)
!1411 = !DILocation(line: 1108, column: 12, scope: !1373)
!1412 = !DILocation(line: 1108, column: 41, scope: !1373)
!1413 = !DILocation(line: 1110, column: 5, scope: !1373)
!1414 = !DILocation(line: 1111, column: 19, scope: !1373)
!1415 = !DILocation(line: 1111, column: 21, scope: !1373)
!1416 = !DILocation(line: 1111, column: 23, scope: !1373)
!1417 = !DILocation(line: 1111, column: 31, scope: !1373)
!1418 = !DILocation(line: 1111, column: 37, scope: !1373)
!1419 = !DILocation(line: 1111, column: 34, scope: !1373)
!1420 = !DILocation(line: 1111, column: 40, scope: !1373)
!1421 = !DILocation(line: 1111, column: 46, scope: !1373)
!1422 = !DILocation(line: 1111, column: 28, scope: !1373)
!1423 = !DILocation(line: 1111, column: 26, scope: !1373)
!1424 = !DILocation(line: 1112, column: 23, scope: !1373)
!1425 = !DILocation(line: 1112, column: 27, scope: !1373)
!1426 = !DILocation(line: 1114, column: 5, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 1114, column: 5)
!1428 = !DILocation(line: 1115, column: 27, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 1114, column: 25)
!1430 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 1114, column: 5)
!1431 = !DILocation(line: 1115, column: 25, scope: !1429)
!1432 = !DILocation(line: 1115, column: 7, scope: !1429)
!1433 = !DILocation(line: 1116, column: 30, scope: !1429)
!1434 = !DILocation(line: 1116, column: 42, scope: !1429)
!1435 = !DILocation(line: 1116, column: 35, scope: !1429)
!1436 = !DILocation(line: 1116, column: 27, scope: !1429)
!1437 = !DILocation(line: 1116, column: 25, scope: !1429)
!1438 = !DILocation(line: 1116, column: 18, scope: !1429)
!1439 = !DILocation(line: 1117, column: 26, scope: !1429)
!1440 = !DILocation(line: 1117, column: 30, scope: !1429)
!1441 = !DILocation(line: 1117, column: 12, scope: !1429)
!1442 = !DILocation(line: 1114, column: 21, scope: !1430)
!1443 = !DILocation(line: 1114, column: 15, scope: !1430)
!1444 = distinct !{!1444, !1426, !1445, !503}
!1445 = !DILocation(line: 1118, column: 5, scope: !1427)
!1446 = !DILocation(line: 1108, column: 33, scope: !1373)
!1447 = !DILocation(line: 1120, column: 17, scope: !1373)
!1448 = !DILocation(line: 1120, column: 9, scope: !1373)
!1449 = !DILocation(line: 1121, column: 3, scope: !1374)
!1450 = !DILocation(line: 1121, column: 3, scope: !1373)
!1451 = !DILocation(line: 1123, column: 15, scope: !1361)
!1452 = !DILocation(line: 1124, column: 41, scope: !1361)
!1453 = !DILocation(line: 1124, column: 39, scope: !1361)
!1454 = !DILocation(line: 1124, column: 11, scope: !1361)
!1455 = !DILocation(line: 1124, column: 15, scope: !1361)
!1456 = !DILocation(line: 1127, column: 1, scope: !1361)
!1457 = !DILocation(line: 1126, column: 3, scope: !1361)
!1458 = distinct !DISubprogram(name: "fd_asymp", scope: !2, file: !2, line: 980, type: !91, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1459)
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1486}
!1460 = !DILocalVariable(name: "j", arg: 1, scope: !1458, file: !2, line: 980, type: !60)
!1461 = !DILocalVariable(name: "x", arg: 2, scope: !1458, file: !2, line: 980, type: !60)
!1462 = !DILocalVariable(name: "result", arg: 3, scope: !1458, file: !2, line: 980, type: !62)
!1463 = !DILocalVariable(name: "j_integer", scope: !1458, file: !2, line: 982, type: !59)
!1464 = !DILocalVariable(name: "itmax", scope: !1458, file: !2, line: 983, type: !59)
!1465 = !DILocalVariable(name: "lg", scope: !1458, file: !2, line: 984, type: !63)
!1466 = !DILocalVariable(name: "stat_lg", scope: !1458, file: !2, line: 985, type: !18)
!1467 = !DILocalVariable(name: "seqn_val", scope: !1458, file: !2, line: 986, type: !61)
!1468 = !DILocalVariable(name: "seqn_err", scope: !1458, file: !2, line: 987, type: !61)
!1469 = !DILocalVariable(name: "xm2", scope: !1458, file: !2, line: 988, type: !61)
!1470 = !DILocalVariable(name: "xgam", scope: !1458, file: !2, line: 989, type: !61)
!1471 = !DILocalVariable(name: "add", scope: !1458, file: !2, line: 990, type: !61)
!1472 = !DILocalVariable(name: "cos_term", scope: !1458, file: !2, line: 991, type: !61)
!1473 = !DILocalVariable(name: "ln_x", scope: !1458, file: !2, line: 992, type: !61)
!1474 = !DILocalVariable(name: "ex_term_1", scope: !1458, file: !2, line: 993, type: !61)
!1475 = !DILocalVariable(name: "ex_term_2", scope: !1458, file: !2, line: 994, type: !61)
!1476 = !DILocalVariable(name: "fneg", scope: !1458, file: !2, line: 995, type: !63)
!1477 = !DILocalVariable(name: "ex_arg", scope: !1458, file: !2, line: 996, type: !63)
!1478 = !DILocalVariable(name: "ex", scope: !1458, file: !2, line: 997, type: !63)
!1479 = !DILocalVariable(name: "stat_fneg", scope: !1458, file: !2, line: 998, type: !18)
!1480 = !DILocalVariable(name: "stat_e", scope: !1458, file: !2, line: 999, type: !18)
!1481 = !DILocalVariable(name: "n", scope: !1458, file: !2, line: 1000, type: !18)
!1482 = !DILocalVariable(name: "add_previous", scope: !1483, file: !2, line: 1002, type: !61)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 1001, column: 27)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !2, line: 1001, column: 3)
!1485 = distinct !DILexicalBlock(scope: !1458, file: !2, line: 1001, column: 3)
!1486 = !DILocalVariable(name: "eta", scope: !1483, file: !2, line: 1003, type: !63)
!1487 = distinct !DIAssignID()
!1488 = !DILocation(line: 0, scope: !1458)
!1489 = distinct !DIAssignID()
!1490 = distinct !DIAssignID()
!1491 = distinct !DIAssignID()
!1492 = !DILocation(line: 0, scope: !1483)
!1493 = !DILocation(line: 982, column: 43, scope: !1458)
!1494 = !DILocation(line: 982, column: 36, scope: !1458)
!1495 = !DILocation(line: 982, column: 34, scope: !1458)
!1496 = !DILocation(line: 982, column: 27, scope: !1458)
!1497 = !DILocation(line: 982, column: 50, scope: !1458)
!1498 = !DILocation(line: 984, column: 3, scope: !1458)
!1499 = !DILocation(line: 985, column: 36, scope: !1458)
!1500 = !DILocation(line: 985, column: 17, scope: !1458)
!1501 = !DILocation(line: 988, column: 21, scope: !1458)
!1502 = !DILocation(line: 988, column: 24, scope: !1458)
!1503 = !DILocation(line: 995, column: 3, scope: !1458)
!1504 = !DILocation(line: 997, column: 3, scope: !1458)
!1505 = !DILocation(line: 1001, column: 3, scope: !1485)
!1506 = !DILocation(line: 1003, column: 5, scope: !1483)
!1507 = !DILocation(line: 1004, column: 23, scope: !1483)
!1508 = !DILocation(line: 1004, column: 5, scope: !1483)
!1509 = !DILocation(line: 1005, column: 17, scope: !1483)
!1510 = !DILocation(line: 1005, column: 40, scope: !1483)
!1511 = !DILocation(line: 1005, column: 36, scope: !1483)
!1512 = !DILocation(line: 1005, column: 34, scope: !1483)
!1513 = !DILocation(line: 1005, column: 23, scope: !1483)
!1514 = !DILocation(line: 1005, column: 62, scope: !1483)
!1515 = !DILocation(line: 1005, column: 58, scope: !1483)
!1516 = !DILocation(line: 1005, column: 56, scope: !1483)
!1517 = !DILocation(line: 1005, column: 45, scope: !1483)
!1518 = !DILocation(line: 1006, column: 16, scope: !1483)
!1519 = !DILocation(line: 1006, column: 20, scope: !1483)
!1520 = !DILocation(line: 1007, column: 19, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 1007, column: 8)
!1522 = !DILocation(line: 1007, column: 22, scope: !1521)
!1523 = !DILocation(line: 1007, column: 34, scope: !1521)
!1524 = !DILocation(line: 1007, column: 32, scope: !1521)
!1525 = !DILocation(line: 1007, column: 8, scope: !1483)
!1526 = !DILocation(line: 1008, column: 16, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 1008, column: 8)
!1528 = !DILocation(line: 1008, column: 8, scope: !1527)
!1529 = !DILocation(line: 1008, column: 27, scope: !1527)
!1530 = !DILocation(line: 1008, column: 8, scope: !1483)
!1531 = !DILocation(line: 1012, column: 15, scope: !1458)
!1532 = !DILocation(line: 1011, column: 3, scope: !1484)
!1533 = !DILocation(line: 1009, column: 14, scope: !1483)
!1534 = !DILocation(line: 1010, column: 41, scope: !1483)
!1535 = !DILocation(line: 1010, column: 39, scope: !1483)
!1536 = !DILocation(line: 1010, column: 14, scope: !1483)
!1537 = !DILocation(line: 1001, column: 23, scope: !1484)
!1538 = !DILocation(line: 1001, column: 13, scope: !1484)
!1539 = distinct !{!1539, !1505, !1540, !503}
!1540 = !DILocation(line: 1011, column: 3, scope: !1485)
!1541 = !DILocation(line: 1012, column: 12, scope: !1458)
!1542 = !DILocation(line: 1014, column: 25, scope: !1458)
!1543 = !DILocation(line: 1014, column: 15, scope: !1458)
!1544 = !DILocation(line: 1015, column: 10, scope: !1458)
!1545 = !DILocation(line: 1016, column: 22, scope: !1458)
!1546 = !DILocation(line: 1017, column: 18, scope: !1458)
!1547 = !DILocation(line: 1018, column: 26, scope: !1458)
!1548 = !DILocation(line: 1019, column: 33, scope: !1458)
!1549 = !DILocation(line: 1019, column: 51, scope: !1458)
!1550 = !DILocation(line: 1019, column: 49, scope: !1458)
!1551 = !DILocation(line: 1019, column: 31, scope: !1458)
!1552 = !DILocation(line: 1019, column: 73, scope: !1458)
!1553 = !DILocation(line: 1019, column: 68, scope: !1458)
!1554 = !DILocation(line: 1020, column: 15, scope: !1458)
!1555 = !DILocation(line: 1021, column: 20, scope: !1458)
!1556 = !DILocation(line: 1021, column: 15, scope: !1458)
!1557 = !DILocation(line: 1022, column: 34, scope: !1458)
!1558 = !DILocation(line: 1022, column: 27, scope: !1458)
!1559 = !DILocation(line: 1022, column: 44, scope: !1458)
!1560 = !DILocation(line: 1022, column: 60, scope: !1458)
!1561 = !DILocation(line: 1022, column: 55, scope: !1458)
!1562 = !DILocation(line: 1022, column: 38, scope: !1458)
!1563 = !DILocation(line: 1022, column: 16, scope: !1458)
!1564 = !DILocation(line: 1023, column: 32, scope: !1458)
!1565 = !DILocation(line: 1023, column: 27, scope: !1458)
!1566 = !DILocation(line: 1023, column: 36, scope: !1458)
!1567 = !DILocation(line: 1023, column: 18, scope: !1458)
!1568 = !DILocation(line: 1023, column: 11, scope: !1458)
!1569 = !DILocation(line: 1024, column: 27, scope: !1458)
!1570 = !DILocation(line: 1024, column: 36, scope: !1458)
!1571 = !DILocation(line: 1024, column: 18, scope: !1458)
!1572 = !DILocation(line: 1024, column: 15, scope: !1458)
!1573 = !DILocation(line: 1025, column: 18, scope: !1458)
!1574 = !DILocation(line: 1025, column: 40, scope: !1458)
!1575 = !DILocation(line: 1025, column: 33, scope: !1458)
!1576 = !DILocation(line: 1025, column: 15, scope: !1458)
!1577 = !DILocation(line: 1026, column: 42, scope: !1458)
!1578 = !DILocation(line: 1026, column: 40, scope: !1458)
!1579 = !DILocation(line: 1026, column: 15, scope: !1458)
!1580 = !DILocation(line: 1027, column: 10, scope: !1458)
!1581 = !DILocation(line: 1028, column: 1, scope: !1458)
!1582 = !DILocation(line: 1027, column: 3, scope: !1458)
!1583 = distinct !DISubprogram(name: "fd_UMseries_int", scope: !2, file: !2, line: 1135, type: !57, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1584)
!1584 = !{!1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1603, !1604, !1606, !1607, !1611, !1612, !1613, !1614, !1615, !1616, !1620, !1621, !1622, !1623, !1624}
!1585 = !DILocalVariable(name: "j", arg: 1, scope: !1583, file: !2, line: 1135, type: !59)
!1586 = !DILocalVariable(name: "x", arg: 2, scope: !1583, file: !2, line: 1135, type: !60)
!1587 = !DILocalVariable(name: "result", arg: 3, scope: !1583, file: !2, line: 1135, type: !62)
!1588 = !DILocalVariable(name: "nmax", scope: !1583, file: !2, line: 1137, type: !59)
!1589 = !DILocalVariable(name: "pre", scope: !1583, file: !2, line: 1138, type: !61)
!1590 = !DILocalVariable(name: "lnpre_val", scope: !1583, file: !2, line: 1139, type: !61)
!1591 = !DILocalVariable(name: "lnpre_err", scope: !1583, file: !2, line: 1140, type: !61)
!1592 = !DILocalVariable(name: "sum_even_val", scope: !1583, file: !2, line: 1141, type: !61)
!1593 = !DILocalVariable(name: "sum_even_err", scope: !1583, file: !2, line: 1142, type: !61)
!1594 = !DILocalVariable(name: "sum_odd_val", scope: !1583, file: !2, line: 1143, type: !61)
!1595 = !DILocalVariable(name: "sum_odd_err", scope: !1583, file: !2, line: 1144, type: !61)
!1596 = !DILocalVariable(name: "stat_sum", scope: !1583, file: !2, line: 1145, type: !18)
!1597 = !DILocalVariable(name: "stat_e", scope: !1583, file: !2, line: 1146, type: !18)
!1598 = !DILocalVariable(name: "stat_h", scope: !1583, file: !2, line: 1147, type: !18)
!1599 = !DILocalVariable(name: "n", scope: !1583, file: !2, line: 1148, type: !18)
!1600 = !DILocalVariable(name: "p", scope: !1601, file: !2, line: 1151, type: !61)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 1150, column: 27)
!1602 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 1150, column: 6)
!1603 = !DILocalVariable(name: "g", scope: !1601, file: !2, line: 1152, type: !63)
!1604 = !DILocalVariable(name: "lnx", scope: !1605, file: !2, line: 1159, type: !61)
!1605 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 1158, column: 8)
!1606 = !DILocalVariable(name: "lg", scope: !1605, file: !2, line: 1160, type: !63)
!1607 = !DILocalVariable(name: "del_val", scope: !1608, file: !2, line: 1170, type: !61)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 1169, column: 26)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 1169, column: 3)
!1610 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 1169, column: 3)
!1611 = !DILocalVariable(name: "del_err", scope: !1608, file: !2, line: 1171, type: !61)
!1612 = !DILocalVariable(name: "U", scope: !1608, file: !2, line: 1172, type: !63)
!1613 = !DILocalVariable(name: "M", scope: !1608, file: !2, line: 1173, type: !63)
!1614 = !DILocalVariable(name: "stat_h_U", scope: !1608, file: !2, line: 1174, type: !18)
!1615 = !DILocalVariable(name: "stat_h_F", scope: !1608, file: !2, line: 1175, type: !18)
!1616 = !DILocalVariable(name: "del_val", scope: !1617, file: !2, line: 1187, type: !61)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 1186, column: 26)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 1186, column: 3)
!1619 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 1186, column: 3)
!1620 = !DILocalVariable(name: "del_err", scope: !1617, file: !2, line: 1188, type: !61)
!1621 = !DILocalVariable(name: "U", scope: !1617, file: !2, line: 1189, type: !63)
!1622 = !DILocalVariable(name: "M", scope: !1617, file: !2, line: 1190, type: !63)
!1623 = !DILocalVariable(name: "stat_h_U", scope: !1617, file: !2, line: 1191, type: !18)
!1624 = !DILocalVariable(name: "stat_h_F", scope: !1617, file: !2, line: 1192, type: !18)
!1625 = distinct !DIAssignID()
!1626 = !DILocation(line: 0, scope: !1601)
!1627 = distinct !DIAssignID()
!1628 = !DILocation(line: 0, scope: !1605)
!1629 = distinct !DIAssignID()
!1630 = !DILocation(line: 0, scope: !1608)
!1631 = distinct !DIAssignID()
!1632 = distinct !DIAssignID()
!1633 = !DILocation(line: 0, scope: !1617)
!1634 = distinct !DIAssignID()
!1635 = !DILocation(line: 0, scope: !1583)
!1636 = !DILocation(line: 1150, column: 8, scope: !1602)
!1637 = !DILocation(line: 1150, column: 16, scope: !1602)
!1638 = !DILocation(line: 1151, column: 35, scope: !1601)
!1639 = !DILocation(line: 1151, column: 16, scope: !1601)
!1640 = !DILocation(line: 1152, column: 5, scope: !1601)
!1641 = !DILocation(line: 1153, column: 5, scope: !1601)
!1642 = !DILocation(line: 1156, column: 17, scope: !1601)
!1643 = !DILocation(line: 1156, column: 14, scope: !1601)
!1644 = !DILocation(line: 1157, column: 3, scope: !1602)
!1645 = !DILocation(line: 1157, column: 3, scope: !1601)
!1646 = !DILocation(line: 1159, column: 18, scope: !1605)
!1647 = !DILocation(line: 1160, column: 5, scope: !1605)
!1648 = !DILocation(line: 1161, column: 22, scope: !1605)
!1649 = !DILocation(line: 1161, column: 24, scope: !1605)
!1650 = !DILocation(line: 1161, column: 5, scope: !1605)
!1651 = !DILocation(line: 1162, column: 19, scope: !1605)
!1652 = !DILocation(line: 1162, column: 24, scope: !1605)
!1653 = !DILocation(line: 1162, column: 34, scope: !1605)
!1654 = !DILocation(line: 1162, column: 29, scope: !1605)
!1655 = !DILocation(line: 1163, column: 41, scope: !1605)
!1656 = !DILocation(line: 1163, column: 39, scope: !1605)
!1657 = !DILocation(line: 1163, column: 64, scope: !1605)
!1658 = !DILocation(line: 1163, column: 59, scope: !1605)
!1659 = !DILocation(line: 1165, column: 3, scope: !1602)
!1660 = !DILocation(line: 0, scope: !1602)
!1661 = !DILocation(line: 1169, column: 3, scope: !1610)
!1662 = !DILocation(line: 1172, column: 5, scope: !1608)
!1663 = !DILocation(line: 1173, column: 5, scope: !1608)
!1664 = !DILocation(line: 1174, column: 50, scope: !1608)
!1665 = !DILocation(line: 1174, column: 51, scope: !1608)
!1666 = !DILocation(line: 1174, column: 20, scope: !1608)
!1667 = !DILocation(line: 1175, column: 52, scope: !1608)
!1668 = !DILocation(line: 1175, column: 54, scope: !1608)
!1669 = !DILocation(line: 1175, column: 20, scope: !1608)
!1670 = !DILocation(line: 1176, column: 14, scope: !1608)
!1671 = !DILocation(line: 1177, column: 26, scope: !1608)
!1672 = !DILocation(line: 1177, column: 23, scope: !1608)
!1673 = !DILocation(line: 1177, column: 34, scope: !1608)
!1674 = !DILocation(line: 1177, column: 30, scope: !1608)
!1675 = !DILocation(line: 1178, column: 30, scope: !1608)
!1676 = !DILocation(line: 1178, column: 27, scope: !1608)
!1677 = !DILocation(line: 1178, column: 38, scope: !1608)
!1678 = !DILocation(line: 1178, column: 34, scope: !1608)
!1679 = !DILocation(line: 1179, column: 17, scope: !1608)
!1680 = !DILocation(line: 1180, column: 17, scope: !1608)
!1681 = !DILocation(line: 1181, column: 20, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 1181, column: 8)
!1683 = !DILocation(line: 1181, column: 8, scope: !1682)
!1684 = !DILocation(line: 1181, column: 34, scope: !1682)
!1685 = !DILocation(line: 1182, column: 3, scope: !1609)
!1686 = distinct !{!1686, !1661, !1687, !503}
!1687 = !DILocation(line: 1182, column: 3, scope: !1610)
!1688 = !DILocation(line: 1186, column: 3, scope: !1619)
!1689 = !DILocation(line: 1189, column: 5, scope: !1617)
!1690 = !DILocation(line: 1190, column: 5, scope: !1617)
!1691 = !DILocation(line: 1191, column: 50, scope: !1617)
!1692 = !DILocation(line: 1191, column: 51, scope: !1617)
!1693 = !DILocation(line: 1191, column: 20, scope: !1617)
!1694 = !DILocation(line: 1192, column: 52, scope: !1617)
!1695 = !DILocation(line: 1192, column: 54, scope: !1617)
!1696 = !DILocation(line: 1192, column: 20, scope: !1617)
!1697 = !DILocation(line: 1193, column: 14, scope: !1617)
!1698 = !DILocation(line: 1194, column: 26, scope: !1617)
!1699 = !DILocation(line: 1194, column: 23, scope: !1617)
!1700 = !DILocation(line: 1194, column: 34, scope: !1617)
!1701 = !DILocation(line: 1194, column: 30, scope: !1617)
!1702 = !DILocation(line: 1195, column: 30, scope: !1617)
!1703 = !DILocation(line: 1195, column: 27, scope: !1617)
!1704 = !DILocation(line: 1195, column: 38, scope: !1617)
!1705 = !DILocation(line: 1195, column: 34, scope: !1617)
!1706 = !DILocation(line: 1196, column: 18, scope: !1617)
!1707 = !DILocation(line: 1197, column: 18, scope: !1617)
!1708 = !DILocation(line: 1198, column: 20, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1617, file: !2, line: 1198, column: 8)
!1710 = !DILocation(line: 1198, column: 8, scope: !1709)
!1711 = !DILocation(line: 1198, column: 35, scope: !1709)
!1712 = !DILocation(line: 1199, column: 3, scope: !1618)
!1713 = !DILocation(line: 1186, column: 21, scope: !1618)
!1714 = !DILocation(line: 1186, column: 13, scope: !1618)
!1715 = distinct !{!1715, !1688, !1716, !503}
!1716 = !DILocation(line: 1199, column: 3, scope: !1619)
!1717 = !DILocation(line: 1186, scope: !1619)
!1718 = !DILocation(line: 1201, column: 18, scope: !1583)
!1719 = !DILocation(line: 1203, column: 57, scope: !1583)
!1720 = !DILocation(line: 1203, column: 42, scope: !1583)
!1721 = !DILocation(line: 1204, column: 57, scope: !1583)
!1722 = !DILocation(line: 1204, column: 42, scope: !1583)
!1723 = !DILocation(line: 1202, column: 14, scope: !1583)
!1724 = !DILocation(line: 1206, column: 55, scope: !1583)
!1725 = !DILocation(line: 1206, column: 42, scope: !1583)
!1726 = !DILocation(line: 1206, column: 40, scope: !1583)
!1727 = !DILocation(line: 1206, column: 11, scope: !1583)
!1728 = !DILocation(line: 1206, column: 15, scope: !1583)
!1729 = !DILocation(line: 1208, column: 10, scope: !1583)
!1730 = !DILocation(line: 1208, column: 3, scope: !1583)
!1731 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_mhalf_e", scope: !2, file: !2, line: 1425, type: !307, scopeLine: 1426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1732)
!1732 = !{!1733, !1734, !1735, !1739, !1740, !1741, !1742, !1746, !1750, !1753, !1756, !1757}
!1733 = !DILocalVariable(name: "x", arg: 1, scope: !1731, file: !2, line: 1425, type: !60)
!1734 = !DILocalVariable(name: "result", arg: 2, scope: !1731, file: !2, line: 1425, type: !62)
!1735 = !DILocalVariable(name: "ex", scope: !1736, file: !2, line: 1433, type: !61)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 1430, column: 21)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 1430, column: 11)
!1738 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 1427, column: 6)
!1739 = !DILocalVariable(name: "term", scope: !1736, file: !2, line: 1434, type: !61)
!1740 = !DILocalVariable(name: "sum", scope: !1736, file: !2, line: 1435, type: !61)
!1741 = !DILocalVariable(name: "n", scope: !1736, file: !2, line: 1436, type: !18)
!1742 = !DILocalVariable(name: "rat", scope: !1743, file: !2, line: 1438, type: !61)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 1437, column: 27)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 1437, column: 5)
!1745 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 1437, column: 5)
!1746 = !DILocalVariable(name: "t", scope: !1747, file: !2, line: 1451, type: !61)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 1450, column: 20)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 1450, column: 11)
!1749 = distinct !DILexicalBlock(scope: !1737, file: !2, line: 1447, column: 11)
!1750 = !DILocalVariable(name: "t", scope: !1751, file: !2, line: 1455, type: !61)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 1454, column: 21)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 1454, column: 11)
!1753 = !DILocalVariable(name: "rtx", scope: !1754, file: !2, line: 1459, type: !61)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 1458, column: 21)
!1755 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 1458, column: 11)
!1756 = !DILocalVariable(name: "t", scope: !1754, file: !2, line: 1460, type: !61)
!1757 = !DILocalVariable(name: "c", scope: !1754, file: !2, line: 1461, type: !63)
!1758 = distinct !DIAssignID()
!1759 = !DILocation(line: 0, scope: !1754)
!1760 = !DILocation(line: 0, scope: !1731)
!1761 = !DILocation(line: 1427, column: 8, scope: !1738)
!1762 = !DILocation(line: 1427, column: 6, scope: !1731)
!1763 = !DILocation(line: 1428, column: 5, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 1428, column: 5)
!1765 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 1427, column: 27)
!1766 = !DILocation(line: 1428, column: 5, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 1428, column: 5)
!1768 = !DILocation(line: 1430, column: 13, scope: !1737)
!1769 = !DILocation(line: 1430, column: 11, scope: !1738)
!1770 = !DILocation(line: 1433, column: 19, scope: !1736)
!1771 = !DILocation(line: 0, scope: !1736)
!1772 = !DILocation(line: 1437, column: 5, scope: !1745)
!1773 = !DILocation(line: 1438, column: 21, scope: !1743)
!1774 = !DILocation(line: 1438, column: 22, scope: !1743)
!1775 = !DILocation(line: 1438, column: 27, scope: !1743)
!1776 = !DILocation(line: 0, scope: !1743)
!1777 = !DILocation(line: 1439, column: 21, scope: !1743)
!1778 = !DILocation(line: 1439, column: 19, scope: !1743)
!1779 = !DILocation(line: 1439, column: 12, scope: !1743)
!1780 = !DILocation(line: 1440, column: 12, scope: !1743)
!1781 = !DILocation(line: 1441, column: 19, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 1441, column: 10)
!1783 = !DILocation(line: 1441, column: 10, scope: !1782)
!1784 = !DILocation(line: 1441, column: 25, scope: !1782)
!1785 = distinct !{!1785, !1772, !1786, !503}
!1786 = !DILocation(line: 1442, column: 5, scope: !1745)
!1787 = !DILocation(line: 1443, column: 17, scope: !1736)
!1788 = !DILocation(line: 1444, column: 25, scope: !1736)
!1789 = !DILocation(line: 1444, column: 23, scope: !1736)
!1790 = !DILocation(line: 1444, column: 35, scope: !1736)
!1791 = !DILocation(line: 1444, column: 13, scope: !1736)
!1792 = !DILocation(line: 1444, column: 17, scope: !1736)
!1793 = !DILocation(line: 1447, column: 13, scope: !1749)
!1794 = !DILocation(line: 1447, column: 11, scope: !1737)
!1795 = !DILocation(line: 0, scope: !514, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 1448, column: 12, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 1447, column: 20)
!1798 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !1796)
!1799 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !1796)
!1800 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !1796)
!1801 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !1796)
!1802 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !1796)
!1803 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !1796)
!1804 = !DILocation(line: 0, scope: !530, inlinedAt: !1796)
!1805 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !1796)
!1806 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !1796)
!1807 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !1796)
!1808 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !1796)
!1809 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !1796)
!1810 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !1796)
!1811 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !1796)
!1812 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !1796)
!1813 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !1796)
!1814 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !1796)
!1815 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !1796)
!1816 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !1796)
!1817 = distinct !{!1817, !1803, !1818, !503}
!1818 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !1796)
!1819 = !DILocation(line: 0, scope: !534, inlinedAt: !1796)
!1820 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !1796)
!1821 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !1796)
!1822 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !1796)
!1823 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !1796)
!1824 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !1796)
!1825 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !1796)
!1826 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !1796)
!1827 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !1796)
!1828 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !1796)
!1829 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !1796)
!1830 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !1796)
!1831 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !1796)
!1832 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !1796)
!1833 = !DILocation(line: 1448, column: 5, scope: !1797)
!1834 = !DILocation(line: 1450, column: 13, scope: !1748)
!1835 = !DILocation(line: 1450, column: 11, scope: !1749)
!1836 = !DILocation(line: 1451, column: 26, scope: !1747)
!1837 = !DILocation(line: 1451, column: 23, scope: !1747)
!1838 = !DILocation(line: 1451, column: 32, scope: !1747)
!1839 = !DILocation(line: 0, scope: !1747)
!1840 = !DILocation(line: 0, scope: !514, inlinedAt: !1841)
!1841 = distinct !DILocation(line: 1452, column: 12, scope: !1747)
!1842 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !1841)
!1843 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !1841)
!1844 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !1841)
!1845 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !1841)
!1846 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !1841)
!1847 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !1841)
!1848 = !DILocation(line: 0, scope: !530, inlinedAt: !1841)
!1849 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !1841)
!1850 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !1841)
!1851 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !1841)
!1852 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !1841)
!1853 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !1841)
!1854 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !1841)
!1855 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !1841)
!1856 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !1841)
!1857 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !1841)
!1858 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !1841)
!1859 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !1841)
!1860 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !1841)
!1861 = distinct !{!1861, !1847, !1862, !503}
!1862 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !1841)
!1863 = !DILocation(line: 0, scope: !534, inlinedAt: !1841)
!1864 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !1841)
!1865 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !1841)
!1866 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !1841)
!1867 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !1841)
!1868 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !1841)
!1869 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !1841)
!1870 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !1841)
!1871 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !1841)
!1872 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !1841)
!1873 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !1841)
!1874 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !1841)
!1875 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !1841)
!1876 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !1841)
!1877 = !DILocation(line: 1454, column: 13, scope: !1752)
!1878 = !DILocation(line: 1454, column: 11, scope: !1748)
!1879 = !DILocation(line: 1455, column: 26, scope: !1751)
!1880 = !DILocation(line: 1455, column: 23, scope: !1751)
!1881 = !DILocation(line: 1455, column: 32, scope: !1751)
!1882 = !DILocation(line: 0, scope: !1751)
!1883 = !DILocation(line: 0, scope: !514, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 1456, column: 12, scope: !1751)
!1885 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !1884)
!1886 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !1884)
!1887 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !1884)
!1888 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !1884)
!1889 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !1884)
!1890 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !1884)
!1891 = !DILocation(line: 0, scope: !530, inlinedAt: !1884)
!1892 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !1884)
!1893 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !1884)
!1894 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !1884)
!1895 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !1884)
!1896 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !1884)
!1897 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !1884)
!1898 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !1884)
!1899 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !1884)
!1900 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !1884)
!1901 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !1884)
!1902 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !1884)
!1903 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !1884)
!1904 = distinct !{!1904, !1890, !1905, !503}
!1905 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !1884)
!1906 = !DILocation(line: 0, scope: !534, inlinedAt: !1884)
!1907 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !1884)
!1908 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !1884)
!1909 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !1884)
!1910 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !1884)
!1911 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !1884)
!1912 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !1884)
!1913 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !1884)
!1914 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !1884)
!1915 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !1884)
!1916 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !1884)
!1917 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !1884)
!1918 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !1884)
!1919 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !1884)
!1920 = !DILocation(line: 1458, column: 13, scope: !1755)
!1921 = !DILocation(line: 1458, column: 11, scope: !1752)
!1922 = !DILocation(line: 1459, column: 18, scope: !1754)
!1923 = !DILocation(line: 1460, column: 19, scope: !1754)
!1924 = !DILocation(line: 1460, column: 22, scope: !1754)
!1925 = !DILocation(line: 1461, column: 5, scope: !1754)
!1926 = !DILocation(line: 1462, column: 5, scope: !1754)
!1927 = !DILocation(line: 1463, column: 22, scope: !1754)
!1928 = !DILocation(line: 1463, column: 26, scope: !1754)
!1929 = !DILocation(line: 1463, column: 18, scope: !1754)
!1930 = !DILocation(line: 1464, column: 22, scope: !1754)
!1931 = !DILocation(line: 1464, column: 26, scope: !1754)
!1932 = !DILocation(line: 1464, column: 58, scope: !1754)
!1933 = !DILocation(line: 1464, column: 56, scope: !1754)
!1934 = !DILocation(line: 1464, column: 32, scope: !1754)
!1935 = !DILocation(line: 1464, column: 13, scope: !1754)
!1936 = !DILocation(line: 1464, column: 18, scope: !1754)
!1937 = !DILocation(line: 1466, column: 3, scope: !1755)
!1938 = !DILocation(line: 1468, column: 12, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 1467, column: 8)
!1940 = !DILocation(line: 1468, column: 5, scope: !1939)
!1941 = !DILocation(line: 0, scope: !1738)
!1942 = !DILocation(line: 1470, column: 1, scope: !1731)
!1943 = !DISubprogram(name: "sqrt", scope: !366, file: !366, line: 143, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1944 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_half_e", scope: !2, file: !2, line: 1473, type: !307, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1945)
!1945 = !{!1946, !1947, !1948, !1952, !1953, !1954, !1955, !1959, !1963, !1966, !1969, !1970}
!1946 = !DILocalVariable(name: "x", arg: 1, scope: !1944, file: !2, line: 1473, type: !60)
!1947 = !DILocalVariable(name: "result", arg: 2, scope: !1944, file: !2, line: 1473, type: !62)
!1948 = !DILocalVariable(name: "ex", scope: !1949, file: !2, line: 1481, type: !61)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 1478, column: 21)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 1478, column: 11)
!1951 = distinct !DILexicalBlock(scope: !1944, file: !2, line: 1475, column: 6)
!1952 = !DILocalVariable(name: "term", scope: !1949, file: !2, line: 1482, type: !61)
!1953 = !DILocalVariable(name: "sum", scope: !1949, file: !2, line: 1483, type: !61)
!1954 = !DILocalVariable(name: "n", scope: !1949, file: !2, line: 1484, type: !18)
!1955 = !DILocalVariable(name: "rat", scope: !1956, file: !2, line: 1486, type: !61)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !2, line: 1485, column: 27)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !2, line: 1485, column: 5)
!1958 = distinct !DILexicalBlock(scope: !1949, file: !2, line: 1485, column: 5)
!1959 = !DILocalVariable(name: "t", scope: !1960, file: !2, line: 1499, type: !61)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 1498, column: 20)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 1498, column: 11)
!1962 = distinct !DILexicalBlock(scope: !1950, file: !2, line: 1495, column: 11)
!1963 = !DILocalVariable(name: "t", scope: !1964, file: !2, line: 1503, type: !61)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !2, line: 1502, column: 21)
!1965 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 1502, column: 11)
!1966 = !DILocalVariable(name: "x32", scope: !1967, file: !2, line: 1507, type: !61)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 1506, column: 21)
!1968 = distinct !DILexicalBlock(scope: !1965, file: !2, line: 1506, column: 11)
!1969 = !DILocalVariable(name: "t", scope: !1967, file: !2, line: 1508, type: !61)
!1970 = !DILocalVariable(name: "c", scope: !1967, file: !2, line: 1509, type: !63)
!1971 = distinct !DIAssignID()
!1972 = !DILocation(line: 0, scope: !1967)
!1973 = !DILocation(line: 0, scope: !1944)
!1974 = !DILocation(line: 1475, column: 8, scope: !1951)
!1975 = !DILocation(line: 1475, column: 6, scope: !1944)
!1976 = !DILocation(line: 1476, column: 5, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 1476, column: 5)
!1978 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 1475, column: 27)
!1979 = !DILocation(line: 1476, column: 5, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 1476, column: 5)
!1981 = !DILocation(line: 1478, column: 13, scope: !1950)
!1982 = !DILocation(line: 1478, column: 11, scope: !1951)
!1983 = !DILocation(line: 1481, column: 19, scope: !1949)
!1984 = !DILocation(line: 0, scope: !1949)
!1985 = !DILocation(line: 1485, column: 5, scope: !1958)
!1986 = !DILocation(line: 1486, column: 21, scope: !1956)
!1987 = !DILocation(line: 1486, column: 22, scope: !1956)
!1988 = !DILocation(line: 1486, column: 27, scope: !1956)
!1989 = !DILocation(line: 0, scope: !1956)
!1990 = !DILocation(line: 1487, column: 19, scope: !1956)
!1991 = !DILocation(line: 1487, column: 27, scope: !1956)
!1992 = !DILocation(line: 1487, column: 25, scope: !1956)
!1993 = !DILocation(line: 1487, column: 12, scope: !1956)
!1994 = !DILocation(line: 1488, column: 12, scope: !1956)
!1995 = !DILocation(line: 1489, column: 19, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 1489, column: 10)
!1997 = !DILocation(line: 1489, column: 10, scope: !1996)
!1998 = !DILocation(line: 1489, column: 25, scope: !1996)
!1999 = distinct !{!1999, !1985, !2000, !503}
!2000 = !DILocation(line: 1490, column: 5, scope: !1958)
!2001 = !DILocation(line: 1491, column: 17, scope: !1949)
!2002 = !DILocation(line: 1492, column: 25, scope: !1949)
!2003 = !DILocation(line: 1492, column: 23, scope: !1949)
!2004 = !DILocation(line: 1492, column: 35, scope: !1949)
!2005 = !DILocation(line: 1492, column: 13, scope: !1949)
!2006 = !DILocation(line: 1492, column: 17, scope: !1949)
!2007 = !DILocation(line: 1495, column: 13, scope: !1962)
!2008 = !DILocation(line: 1495, column: 11, scope: !1950)
!2009 = !DILocation(line: 0, scope: !514, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 1496, column: 12, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 1495, column: 20)
!2012 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !2010)
!2013 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !2010)
!2014 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !2010)
!2015 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !2010)
!2016 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !2010)
!2017 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !2010)
!2018 = !DILocation(line: 0, scope: !530, inlinedAt: !2010)
!2019 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !2010)
!2020 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !2010)
!2021 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !2010)
!2022 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !2010)
!2023 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !2010)
!2024 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !2010)
!2025 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !2010)
!2026 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !2010)
!2027 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !2010)
!2028 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !2010)
!2029 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !2010)
!2030 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !2010)
!2031 = distinct !{!2031, !2017, !2032, !503}
!2032 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !2010)
!2033 = !DILocation(line: 0, scope: !534, inlinedAt: !2010)
!2034 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !2010)
!2035 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !2010)
!2036 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !2010)
!2037 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !2010)
!2038 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !2010)
!2039 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !2010)
!2040 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !2010)
!2041 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !2010)
!2042 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !2010)
!2043 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !2010)
!2044 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !2010)
!2045 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !2010)
!2046 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !2010)
!2047 = !DILocation(line: 1496, column: 5, scope: !2011)
!2048 = !DILocation(line: 1498, column: 13, scope: !1961)
!2049 = !DILocation(line: 1498, column: 11, scope: !1962)
!2050 = !DILocation(line: 1499, column: 26, scope: !1960)
!2051 = !DILocation(line: 1499, column: 23, scope: !1960)
!2052 = !DILocation(line: 1499, column: 32, scope: !1960)
!2053 = !DILocation(line: 0, scope: !1960)
!2054 = !DILocation(line: 0, scope: !514, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 1500, column: 12, scope: !1960)
!2056 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !2055)
!2057 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !2055)
!2058 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !2055)
!2059 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !2055)
!2060 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !2055)
!2061 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !2055)
!2062 = !DILocation(line: 0, scope: !530, inlinedAt: !2055)
!2063 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !2055)
!2064 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !2055)
!2065 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !2055)
!2066 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !2055)
!2067 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !2055)
!2068 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !2055)
!2069 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !2055)
!2070 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !2055)
!2071 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !2055)
!2072 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !2055)
!2073 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !2055)
!2074 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !2055)
!2075 = distinct !{!2075, !2061, !2076, !503}
!2076 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !2055)
!2077 = !DILocation(line: 0, scope: !534, inlinedAt: !2055)
!2078 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !2055)
!2079 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !2055)
!2080 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !2055)
!2081 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !2055)
!2082 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !2055)
!2083 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !2055)
!2084 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !2055)
!2085 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !2055)
!2086 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !2055)
!2087 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !2055)
!2088 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !2055)
!2089 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !2055)
!2090 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !2055)
!2091 = !DILocation(line: 1502, column: 13, scope: !1965)
!2092 = !DILocation(line: 1502, column: 11, scope: !1961)
!2093 = !DILocation(line: 1503, column: 26, scope: !1964)
!2094 = !DILocation(line: 1503, column: 23, scope: !1964)
!2095 = !DILocation(line: 1503, column: 32, scope: !1964)
!2096 = !DILocation(line: 0, scope: !1964)
!2097 = !DILocation(line: 0, scope: !514, inlinedAt: !2098)
!2098 = distinct !DILocation(line: 1504, column: 12, scope: !1964)
!2099 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !2098)
!2100 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !2098)
!2101 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !2098)
!2102 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !2098)
!2103 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !2098)
!2104 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !2098)
!2105 = !DILocation(line: 0, scope: !530, inlinedAt: !2098)
!2106 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !2098)
!2107 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !2098)
!2108 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !2098)
!2109 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !2098)
!2110 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !2098)
!2111 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !2098)
!2112 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !2098)
!2113 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !2098)
!2114 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !2098)
!2115 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !2098)
!2116 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !2098)
!2117 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !2098)
!2118 = distinct !{!2118, !2104, !2119, !503}
!2119 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !2098)
!2120 = !DILocation(line: 0, scope: !534, inlinedAt: !2098)
!2121 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !2098)
!2122 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !2098)
!2123 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !2098)
!2124 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !2098)
!2125 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !2098)
!2126 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !2098)
!2127 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !2098)
!2128 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !2098)
!2129 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !2098)
!2130 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !2098)
!2131 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !2098)
!2132 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !2098)
!2133 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !2098)
!2134 = !DILocation(line: 1506, column: 13, scope: !1968)
!2135 = !DILocation(line: 1506, column: 11, scope: !1965)
!2136 = !DILocation(line: 1507, column: 20, scope: !1967)
!2137 = !DILocation(line: 1507, column: 19, scope: !1967)
!2138 = !DILocation(line: 1508, column: 19, scope: !1967)
!2139 = !DILocation(line: 1508, column: 22, scope: !1967)
!2140 = !DILocation(line: 1509, column: 5, scope: !1967)
!2141 = !DILocation(line: 1510, column: 5, scope: !1967)
!2142 = !DILocation(line: 1511, column: 21, scope: !1967)
!2143 = !DILocation(line: 1511, column: 25, scope: !1967)
!2144 = !DILocation(line: 1511, column: 17, scope: !1967)
!2145 = !DILocation(line: 1512, column: 21, scope: !1967)
!2146 = !DILocation(line: 1512, column: 25, scope: !1967)
!2147 = !DILocation(line: 1512, column: 57, scope: !1967)
!2148 = !DILocation(line: 1512, column: 55, scope: !1967)
!2149 = !DILocation(line: 1512, column: 31, scope: !1967)
!2150 = !DILocation(line: 1512, column: 13, scope: !1967)
!2151 = !DILocation(line: 1512, column: 17, scope: !1967)
!2152 = !DILocation(line: 1514, column: 3, scope: !1968)
!2153 = !DILocation(line: 1516, column: 12, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 1515, column: 8)
!2155 = !DILocation(line: 1516, column: 5, scope: !2154)
!2156 = !DILocation(line: 0, scope: !1951)
!2157 = !DILocation(line: 1518, column: 1, scope: !1944)
!2158 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_3half_e", scope: !2, file: !2, line: 1521, type: !307, scopeLine: 1522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2159)
!2159 = !{!2160, !2161, !2162, !2166, !2167, !2168, !2169, !2173, !2177, !2180, !2183, !2184}
!2160 = !DILocalVariable(name: "x", arg: 1, scope: !2158, file: !2, line: 1521, type: !60)
!2161 = !DILocalVariable(name: "result", arg: 2, scope: !2158, file: !2, line: 1521, type: !62)
!2162 = !DILocalVariable(name: "ex", scope: !2163, file: !2, line: 1529, type: !61)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 1526, column: 21)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 1526, column: 11)
!2165 = distinct !DILexicalBlock(scope: !2158, file: !2, line: 1523, column: 6)
!2166 = !DILocalVariable(name: "term", scope: !2163, file: !2, line: 1530, type: !61)
!2167 = !DILocalVariable(name: "sum", scope: !2163, file: !2, line: 1531, type: !61)
!2168 = !DILocalVariable(name: "n", scope: !2163, file: !2, line: 1532, type: !18)
!2169 = !DILocalVariable(name: "rat", scope: !2170, file: !2, line: 1534, type: !61)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 1533, column: 27)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 1533, column: 5)
!2172 = distinct !DILexicalBlock(scope: !2163, file: !2, line: 1533, column: 5)
!2173 = !DILocalVariable(name: "t", scope: !2174, file: !2, line: 1547, type: !61)
!2174 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 1546, column: 20)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !2, line: 1546, column: 11)
!2176 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 1543, column: 11)
!2177 = !DILocalVariable(name: "t", scope: !2178, file: !2, line: 1551, type: !61)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !2, line: 1550, column: 21)
!2179 = distinct !DILexicalBlock(scope: !2175, file: !2, line: 1550, column: 11)
!2180 = !DILocalVariable(name: "x52", scope: !2181, file: !2, line: 1555, type: !61)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !2, line: 1554, column: 21)
!2182 = distinct !DILexicalBlock(scope: !2179, file: !2, line: 1554, column: 11)
!2183 = !DILocalVariable(name: "t", scope: !2181, file: !2, line: 1556, type: !61)
!2184 = !DILocalVariable(name: "c", scope: !2181, file: !2, line: 1557, type: !63)
!2185 = distinct !DIAssignID()
!2186 = !DILocation(line: 0, scope: !2181)
!2187 = !DILocation(line: 0, scope: !2158)
!2188 = !DILocation(line: 1523, column: 8, scope: !2165)
!2189 = !DILocation(line: 1523, column: 6, scope: !2158)
!2190 = !DILocation(line: 1524, column: 5, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 1524, column: 5)
!2192 = distinct !DILexicalBlock(scope: !2165, file: !2, line: 1523, column: 27)
!2193 = !DILocation(line: 1524, column: 5, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 1524, column: 5)
!2195 = !DILocation(line: 1526, column: 13, scope: !2164)
!2196 = !DILocation(line: 1526, column: 11, scope: !2165)
!2197 = !DILocation(line: 1529, column: 19, scope: !2163)
!2198 = !DILocation(line: 0, scope: !2163)
!2199 = !DILocation(line: 1533, column: 5, scope: !2172)
!2200 = !DILocation(line: 1534, column: 21, scope: !2170)
!2201 = !DILocation(line: 1534, column: 22, scope: !2170)
!2202 = !DILocation(line: 1534, column: 27, scope: !2170)
!2203 = !DILocation(line: 0, scope: !2170)
!2204 = !DILocation(line: 1535, column: 19, scope: !2170)
!2205 = !DILocation(line: 1535, column: 25, scope: !2170)
!2206 = !DILocation(line: 1535, column: 33, scope: !2170)
!2207 = !DILocation(line: 1535, column: 31, scope: !2170)
!2208 = !DILocation(line: 1535, column: 12, scope: !2170)
!2209 = !DILocation(line: 1536, column: 12, scope: !2170)
!2210 = !DILocation(line: 1537, column: 19, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2170, file: !2, line: 1537, column: 10)
!2212 = !DILocation(line: 1537, column: 10, scope: !2211)
!2213 = !DILocation(line: 1537, column: 25, scope: !2211)
!2214 = distinct !{!2214, !2199, !2215, !503}
!2215 = !DILocation(line: 1538, column: 5, scope: !2172)
!2216 = !DILocation(line: 1539, column: 17, scope: !2163)
!2217 = !DILocation(line: 1540, column: 25, scope: !2163)
!2218 = !DILocation(line: 1540, column: 23, scope: !2163)
!2219 = !DILocation(line: 1540, column: 35, scope: !2163)
!2220 = !DILocation(line: 1540, column: 13, scope: !2163)
!2221 = !DILocation(line: 1540, column: 17, scope: !2163)
!2222 = !DILocation(line: 1543, column: 13, scope: !2176)
!2223 = !DILocation(line: 1543, column: 11, scope: !2164)
!2224 = !DILocation(line: 0, scope: !514, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 1544, column: 12, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2176, file: !2, line: 1543, column: 20)
!2227 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !2225)
!2228 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !2225)
!2229 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !2225)
!2230 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !2225)
!2231 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !2225)
!2232 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !2225)
!2233 = !DILocation(line: 0, scope: !530, inlinedAt: !2225)
!2234 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !2225)
!2235 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !2225)
!2236 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !2225)
!2237 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !2225)
!2238 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !2225)
!2239 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !2225)
!2240 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !2225)
!2241 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !2225)
!2242 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !2225)
!2243 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !2225)
!2244 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !2225)
!2245 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !2225)
!2246 = distinct !{!2246, !2232, !2247, !503}
!2247 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !2225)
!2248 = !DILocation(line: 0, scope: !534, inlinedAt: !2225)
!2249 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !2225)
!2250 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !2225)
!2251 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !2225)
!2252 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !2225)
!2253 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !2225)
!2254 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !2225)
!2255 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !2225)
!2256 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !2225)
!2257 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !2225)
!2258 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !2225)
!2259 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !2225)
!2260 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !2225)
!2261 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !2225)
!2262 = !DILocation(line: 1544, column: 5, scope: !2226)
!2263 = !DILocation(line: 1546, column: 13, scope: !2175)
!2264 = !DILocation(line: 1546, column: 11, scope: !2176)
!2265 = !DILocation(line: 1547, column: 26, scope: !2174)
!2266 = !DILocation(line: 1547, column: 23, scope: !2174)
!2267 = !DILocation(line: 1547, column: 32, scope: !2174)
!2268 = !DILocation(line: 0, scope: !2174)
!2269 = !DILocation(line: 0, scope: !514, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 1548, column: 12, scope: !2174)
!2271 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !2270)
!2272 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !2270)
!2273 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !2270)
!2274 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !2270)
!2275 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !2270)
!2276 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !2270)
!2277 = !DILocation(line: 0, scope: !530, inlinedAt: !2270)
!2278 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !2270)
!2279 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !2270)
!2280 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !2270)
!2281 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !2270)
!2282 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !2270)
!2283 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !2270)
!2284 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !2270)
!2285 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !2270)
!2286 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !2270)
!2287 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !2270)
!2288 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !2270)
!2289 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !2270)
!2290 = distinct !{!2290, !2276, !2291, !503}
!2291 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !2270)
!2292 = !DILocation(line: 0, scope: !534, inlinedAt: !2270)
!2293 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !2270)
!2294 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !2270)
!2295 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !2270)
!2296 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !2270)
!2297 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !2270)
!2298 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !2270)
!2299 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !2270)
!2300 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !2270)
!2301 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !2270)
!2302 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !2270)
!2303 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !2270)
!2304 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !2270)
!2305 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !2270)
!2306 = !DILocation(line: 1550, column: 13, scope: !2179)
!2307 = !DILocation(line: 1550, column: 11, scope: !2175)
!2308 = !DILocation(line: 1551, column: 26, scope: !2178)
!2309 = !DILocation(line: 1551, column: 23, scope: !2178)
!2310 = !DILocation(line: 1551, column: 32, scope: !2178)
!2311 = !DILocation(line: 0, scope: !2178)
!2312 = !DILocation(line: 0, scope: !514, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 1552, column: 12, scope: !2178)
!2314 = !DILocation(line: 11, column: 19, scope: !514, inlinedAt: !2313)
!2315 = !DILocation(line: 11, column: 22, scope: !514, inlinedAt: !2313)
!2316 = !DILocation(line: 11, column: 30, scope: !514, inlinedAt: !2313)
!2317 = !DILocation(line: 11, column: 39, scope: !514, inlinedAt: !2313)
!2318 = !DILocation(line: 12, column: 19, scope: !514, inlinedAt: !2313)
!2319 = !DILocation(line: 16, column: 3, scope: !532, inlinedAt: !2313)
!2320 = !DILocation(line: 0, scope: !530, inlinedAt: !2313)
!2321 = !DILocation(line: 18, column: 11, scope: !530, inlinedAt: !2313)
!2322 = !DILocation(line: 18, column: 14, scope: !530, inlinedAt: !2313)
!2323 = !DILocation(line: 18, column: 21, scope: !530, inlinedAt: !2313)
!2324 = !DILocation(line: 18, column: 19, scope: !530, inlinedAt: !2313)
!2325 = !DILocation(line: 19, column: 10, scope: !530, inlinedAt: !2313)
!2326 = !DILocation(line: 19, column: 26, scope: !530, inlinedAt: !2313)
!2327 = !DILocation(line: 19, column: 24, scope: !530, inlinedAt: !2313)
!2328 = !DILocation(line: 19, column: 37, scope: !530, inlinedAt: !2313)
!2329 = !DILocation(line: 19, column: 35, scope: !530, inlinedAt: !2313)
!2330 = !DILocation(line: 19, column: 7, scope: !530, inlinedAt: !2313)
!2331 = !DILocation(line: 16, column: 29, scope: !531, inlinedAt: !2313)
!2332 = !DILocation(line: 16, column: 23, scope: !531, inlinedAt: !2313)
!2333 = distinct !{!2333, !2319, !2334, !503}
!2334 = !DILocation(line: 21, column: 3, scope: !532, inlinedAt: !2313)
!2335 = !DILocation(line: 0, scope: !534, inlinedAt: !2313)
!2336 = !DILocation(line: 25, column: 10, scope: !534, inlinedAt: !2313)
!2337 = !DILocation(line: 25, column: 13, scope: !534, inlinedAt: !2313)
!2338 = !DILocation(line: 25, column: 18, scope: !534, inlinedAt: !2313)
!2339 = !DILocation(line: 26, column: 10, scope: !534, inlinedAt: !2313)
!2340 = !DILocation(line: 26, column: 25, scope: !534, inlinedAt: !2313)
!2341 = !DILocation(line: 26, column: 23, scope: !534, inlinedAt: !2313)
!2342 = !DILocation(line: 26, column: 34, scope: !534, inlinedAt: !2313)
!2343 = !DILocation(line: 26, column: 7, scope: !534, inlinedAt: !2313)
!2344 = !DILocation(line: 29, column: 15, scope: !514, inlinedAt: !2313)
!2345 = !DILocation(line: 30, column: 33, scope: !514, inlinedAt: !2313)
!2346 = !DILocation(line: 30, column: 37, scope: !514, inlinedAt: !2313)
!2347 = !DILocation(line: 30, column: 11, scope: !514, inlinedAt: !2313)
!2348 = !DILocation(line: 30, column: 15, scope: !514, inlinedAt: !2313)
!2349 = !DILocation(line: 1554, column: 13, scope: !2182)
!2350 = !DILocation(line: 1554, column: 11, scope: !2179)
!2351 = !DILocation(line: 1555, column: 19, scope: !2181)
!2352 = !DILocation(line: 1555, column: 22, scope: !2181)
!2353 = !DILocation(line: 1555, column: 21, scope: !2181)
!2354 = !DILocation(line: 1556, column: 19, scope: !2181)
!2355 = !DILocation(line: 1556, column: 22, scope: !2181)
!2356 = !DILocation(line: 1557, column: 5, scope: !2181)
!2357 = !DILocation(line: 1558, column: 5, scope: !2181)
!2358 = !DILocation(line: 1559, column: 21, scope: !2181)
!2359 = !DILocation(line: 1559, column: 25, scope: !2181)
!2360 = !DILocation(line: 1559, column: 17, scope: !2181)
!2361 = !DILocation(line: 1560, column: 21, scope: !2181)
!2362 = !DILocation(line: 1560, column: 25, scope: !2181)
!2363 = !DILocation(line: 1560, column: 57, scope: !2181)
!2364 = !DILocation(line: 1560, column: 55, scope: !2181)
!2365 = !DILocation(line: 1560, column: 31, scope: !2181)
!2366 = !DILocation(line: 1560, column: 13, scope: !2181)
!2367 = !DILocation(line: 1560, column: 17, scope: !2181)
!2368 = !DILocation(line: 1562, column: 3, scope: !2182)
!2369 = !DILocation(line: 1564, column: 12, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2182, file: !2, line: 1563, column: 8)
!2371 = !DILocation(line: 1564, column: 5, scope: !2370)
!2372 = !DILocation(line: 0, scope: !2165)
!2373 = !DILocation(line: 1566, column: 1, scope: !2158)
!2374 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_inc_0_e", scope: !2, file: !2, line: 1569, type: !91, scopeLine: 1570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2382, !2383}
!2376 = !DILocalVariable(name: "x", arg: 1, scope: !2374, file: !2, line: 1569, type: !60)
!2377 = !DILocalVariable(name: "b", arg: 2, scope: !2374, file: !2, line: 1569, type: !60)
!2378 = !DILocalVariable(name: "result", arg: 3, scope: !2374, file: !2, line: 1569, type: !62)
!2379 = !DILocalVariable(name: "arg", scope: !2380, file: !2, line: 1575, type: !61)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 1574, column: 8)
!2381 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 1571, column: 6)
!2382 = !DILocalVariable(name: "f0", scope: !2380, file: !2, line: 1576, type: !63)
!2383 = !DILocalVariable(name: "status", scope: !2380, file: !2, line: 1577, type: !18)
!2384 = distinct !DIAssignID()
!2385 = !DILocation(line: 0, scope: !2380)
!2386 = !DILocation(line: 0, scope: !2374)
!2387 = !DILocation(line: 1571, column: 8, scope: !2381)
!2388 = !DILocation(line: 1571, column: 6, scope: !2374)
!2389 = !DILocation(line: 1572, column: 5, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !2, line: 1572, column: 5)
!2391 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 1571, column: 15)
!2392 = !DILocation(line: 1572, column: 5, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2390, file: !2, line: 1572, column: 5)
!2394 = !DILocation(line: 1575, column: 20, scope: !2380)
!2395 = !DILocation(line: 1576, column: 5, scope: !2380)
!2396 = !DILocation(line: 1577, column: 18, scope: !2380)
!2397 = !DILocation(line: 1578, column: 22, scope: !2380)
!2398 = !DILocation(line: 1578, column: 26, scope: !2380)
!2399 = !DILocation(line: 1578, column: 17, scope: !2380)
!2400 = !DILocation(line: 1579, column: 22, scope: !2380)
!2401 = !DILocation(line: 1579, column: 47, scope: !2380)
!2402 = !DILocation(line: 1579, column: 57, scope: !2380)
!2403 = !DILocation(line: 1579, column: 55, scope: !2380)
!2404 = !DILocation(line: 1579, column: 44, scope: !2380)
!2405 = !DILocation(line: 1579, column: 26, scope: !2380)
!2406 = !DILocation(line: 1579, column: 13, scope: !2380)
!2407 = !DILocation(line: 1579, column: 17, scope: !2380)
!2408 = !DILocation(line: 1581, column: 3, scope: !2381)
!2409 = !DILocation(line: 0, scope: !2381)
!2410 = !DILocation(line: 1582, column: 1, scope: !2374)
!2411 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_m1", scope: !2, file: !2, line: 1590, type: !2412, scopeLine: 1591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!61, !60}
!2414 = !{!2415, !2416, !2417}
!2415 = !DILocalVariable(name: "x", arg: 1, scope: !2411, file: !2, line: 1590, type: !60)
!2416 = !DILocalVariable(name: "result", scope: !2411, file: !2, line: 1592, type: !63)
!2417 = !DILocalVariable(name: "status", scope: !2411, file: !2, line: 1592, type: !18)
!2418 = !DILocation(line: 0, scope: !2411)
!2419 = !DILocation(line: 0, scope: !306, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 1592, column: 3, scope: !2411)
!2421 = !DILocation(line: 1217, column: 8, scope: !315, inlinedAt: !2420)
!2422 = !DILocation(line: 1217, column: 6, scope: !306, inlinedAt: !2420)
!2423 = !DILocation(line: 1220, column: 13, scope: !314, inlinedAt: !2420)
!2424 = !DILocation(line: 1220, column: 11, scope: !315, inlinedAt: !2420)
!2425 = !DILocation(line: 1221, column: 23, scope: !313, inlinedAt: !2420)
!2426 = !DILocation(line: 0, scope: !313, inlinedAt: !2420)
!2427 = !DILocation(line: 1222, column: 26, scope: !313, inlinedAt: !2420)
!2428 = !DILocation(line: 1222, column: 21, scope: !313, inlinedAt: !2420)
!2429 = !DILocation(line: 1227, column: 21, scope: !317, inlinedAt: !2420)
!2430 = !DILocation(line: 1227, column: 17, scope: !317, inlinedAt: !2420)
!2431 = !DILocation(line: 0, scope: !317, inlinedAt: !2420)
!2432 = !DILocation(line: 1228, column: 28, scope: !317, inlinedAt: !2420)
!2433 = !DILocation(line: 1228, column: 22, scope: !317, inlinedAt: !2420)
!2434 = !DILocation(line: 1218, column: 5, scope: !331, inlinedAt: !2420)
!2435 = !DILocation(line: 1592, column: 3, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !2, line: 1592, column: 3)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !2, line: 1592, column: 3)
!2438 = distinct !DILexicalBlock(scope: !2411, file: !2, line: 1592, column: 3)
!2439 = !DILocation(line: 1593, column: 1, scope: !2411)
!2440 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_0", scope: !2, file: !2, line: 1595, type: !2412, scopeLine: 1596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2441)
!2441 = !{!2442, !2443, !2444}
!2442 = !DILocalVariable(name: "x", arg: 1, scope: !2440, file: !2, line: 1595, type: !60)
!2443 = !DILocalVariable(name: "result", scope: !2440, file: !2, line: 1597, type: !63)
!2444 = !DILocalVariable(name: "status", scope: !2440, file: !2, line: 1597, type: !18)
!2445 = distinct !DIAssignID()
!2446 = !DILocation(line: 0, scope: !2440)
!2447 = !DILocation(line: 1597, column: 3, scope: !2440)
!2448 = !DILocation(line: 1597, column: 3, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2440, file: !2, line: 1597, column: 3)
!2450 = !DILocation(line: 1597, column: 3, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 1597, column: 3)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !2, line: 1597, column: 3)
!2453 = !DILocation(line: 1598, column: 1, scope: !2440)
!2454 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_1", scope: !2, file: !2, line: 1600, type: !2412, scopeLine: 1601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DILocalVariable(name: "x", arg: 1, scope: !2454, file: !2, line: 1600, type: !60)
!2457 = !DILocalVariable(name: "result", scope: !2454, file: !2, line: 1602, type: !63)
!2458 = !DILocalVariable(name: "status", scope: !2454, file: !2, line: 1602, type: !18)
!2459 = distinct !DIAssignID()
!2460 = !DILocation(line: 0, scope: !2454)
!2461 = !DILocation(line: 1602, column: 3, scope: !2454)
!2462 = !DILocation(line: 1602, column: 3, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2454, file: !2, line: 1602, column: 3)
!2464 = !DILocation(line: 1602, column: 3, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 1602, column: 3)
!2466 = distinct !DILexicalBlock(scope: !2463, file: !2, line: 1602, column: 3)
!2467 = !DILocation(line: 1603, column: 1, scope: !2454)
!2468 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_2", scope: !2, file: !2, line: 1605, type: !2412, scopeLine: 1606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DILocalVariable(name: "x", arg: 1, scope: !2468, file: !2, line: 1605, type: !60)
!2471 = !DILocalVariable(name: "result", scope: !2468, file: !2, line: 1607, type: !63)
!2472 = !DILocalVariable(name: "status", scope: !2468, file: !2, line: 1607, type: !18)
!2473 = distinct !DIAssignID()
!2474 = !DILocation(line: 0, scope: !2468)
!2475 = !DILocation(line: 1607, column: 3, scope: !2468)
!2476 = !DILocation(line: 1607, column: 3, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2468, file: !2, line: 1607, column: 3)
!2478 = !DILocation(line: 1607, column: 3, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !2, line: 1607, column: 3)
!2480 = distinct !DILexicalBlock(scope: !2477, file: !2, line: 1607, column: 3)
!2481 = !DILocation(line: 1608, column: 1, scope: !2468)
!2482 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_int", scope: !2, file: !2, line: 1610, type: !2483, scopeLine: 1611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!61, !59, !60}
!2485 = !{!2486, !2487, !2488, !2489}
!2486 = !DILocalVariable(name: "j", arg: 1, scope: !2482, file: !2, line: 1610, type: !59)
!2487 = !DILocalVariable(name: "x", arg: 2, scope: !2482, file: !2, line: 1610, type: !60)
!2488 = !DILocalVariable(name: "result", scope: !2482, file: !2, line: 1612, type: !63)
!2489 = !DILocalVariable(name: "status", scope: !2482, file: !2, line: 1612, type: !18)
!2490 = distinct !DIAssignID()
!2491 = !DILocation(line: 0, scope: !2482)
!2492 = !DILocation(line: 1612, column: 3, scope: !2482)
!2493 = !DILocation(line: 1612, column: 3, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2482, file: !2, line: 1612, column: 3)
!2495 = !DILocation(line: 1612, column: 3, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !2, line: 1612, column: 3)
!2497 = distinct !DILexicalBlock(scope: !2494, file: !2, line: 1612, column: 3)
!2498 = !DILocation(line: 1613, column: 1, scope: !2482)
!2499 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_mhalf", scope: !2, file: !2, line: 1615, type: !2412, scopeLine: 1616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2500)
!2500 = !{!2501, !2502, !2503}
!2501 = !DILocalVariable(name: "x", arg: 1, scope: !2499, file: !2, line: 1615, type: !60)
!2502 = !DILocalVariable(name: "result", scope: !2499, file: !2, line: 1617, type: !63)
!2503 = !DILocalVariable(name: "status", scope: !2499, file: !2, line: 1617, type: !18)
!2504 = distinct !DIAssignID()
!2505 = !DILocation(line: 0, scope: !2499)
!2506 = !DILocation(line: 1617, column: 3, scope: !2499)
!2507 = !DILocation(line: 1617, column: 3, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2499, file: !2, line: 1617, column: 3)
!2509 = !DILocation(line: 1617, column: 3, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !2, line: 1617, column: 3)
!2511 = distinct !DILexicalBlock(scope: !2508, file: !2, line: 1617, column: 3)
!2512 = !DILocation(line: 1618, column: 1, scope: !2499)
!2513 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_half", scope: !2, file: !2, line: 1620, type: !2412, scopeLine: 1621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2514)
!2514 = !{!2515, !2516, !2517}
!2515 = !DILocalVariable(name: "x", arg: 1, scope: !2513, file: !2, line: 1620, type: !60)
!2516 = !DILocalVariable(name: "result", scope: !2513, file: !2, line: 1622, type: !63)
!2517 = !DILocalVariable(name: "status", scope: !2513, file: !2, line: 1622, type: !18)
!2518 = distinct !DIAssignID()
!2519 = !DILocation(line: 0, scope: !2513)
!2520 = !DILocation(line: 1622, column: 3, scope: !2513)
!2521 = !DILocation(line: 1622, column: 3, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2513, file: !2, line: 1622, column: 3)
!2523 = !DILocation(line: 1622, column: 3, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2525, file: !2, line: 1622, column: 3)
!2525 = distinct !DILexicalBlock(scope: !2522, file: !2, line: 1622, column: 3)
!2526 = !DILocation(line: 1623, column: 1, scope: !2513)
!2527 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_3half", scope: !2, file: !2, line: 1625, type: !2412, scopeLine: 1626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2528)
!2528 = !{!2529, !2530, !2531}
!2529 = !DILocalVariable(name: "x", arg: 1, scope: !2527, file: !2, line: 1625, type: !60)
!2530 = !DILocalVariable(name: "result", scope: !2527, file: !2, line: 1627, type: !63)
!2531 = !DILocalVariable(name: "status", scope: !2527, file: !2, line: 1627, type: !18)
!2532 = distinct !DIAssignID()
!2533 = !DILocation(line: 0, scope: !2527)
!2534 = !DILocation(line: 1627, column: 3, scope: !2527)
!2535 = !DILocation(line: 1627, column: 3, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2527, file: !2, line: 1627, column: 3)
!2537 = !DILocation(line: 1627, column: 3, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !2, line: 1627, column: 3)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !2, line: 1627, column: 3)
!2540 = !DILocation(line: 1628, column: 1, scope: !2527)
!2541 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_inc_0", scope: !2, file: !2, line: 1630, type: !2542, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2544)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!61, !60, !60}
!2544 = !{!2545, !2546, !2547, !2548}
!2545 = !DILocalVariable(name: "x", arg: 1, scope: !2541, file: !2, line: 1630, type: !60)
!2546 = !DILocalVariable(name: "b", arg: 2, scope: !2541, file: !2, line: 1630, type: !60)
!2547 = !DILocalVariable(name: "result", scope: !2541, file: !2, line: 1632, type: !63)
!2548 = !DILocalVariable(name: "status", scope: !2541, file: !2, line: 1632, type: !18)
!2549 = distinct !DIAssignID()
!2550 = !DILocation(line: 0, scope: !2541)
!2551 = !DILocation(line: 0, scope: !2380, inlinedAt: !2552)
!2552 = distinct !DILocation(line: 1632, column: 3, scope: !2541)
!2553 = !DILocation(line: 0, scope: !2374, inlinedAt: !2552)
!2554 = !DILocation(line: 1571, column: 8, scope: !2381, inlinedAt: !2552)
!2555 = !DILocation(line: 1571, column: 6, scope: !2374, inlinedAt: !2552)
!2556 = !DILocation(line: 1572, column: 5, scope: !2393, inlinedAt: !2552)
!2557 = !DILocation(line: 1632, column: 3, scope: !2541)
!2558 = !DILocation(line: 1575, column: 20, scope: !2380, inlinedAt: !2552)
!2559 = !DILocation(line: 1576, column: 5, scope: !2380, inlinedAt: !2552)
!2560 = !DILocation(line: 1577, column: 18, scope: !2380, inlinedAt: !2552)
!2561 = !DILocation(line: 1578, column: 22, scope: !2380, inlinedAt: !2552)
!2562 = !DILocation(line: 1578, column: 26, scope: !2380, inlinedAt: !2552)
!2563 = !DILocation(line: 1581, column: 3, scope: !2381, inlinedAt: !2552)
!2564 = !DILocation(line: 1632, column: 3, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2541, file: !2, line: 1632, column: 3)
!2566 = !DILocation(line: 1632, column: 3, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 1632, column: 3)
!2568 = distinct !DILexicalBlock(scope: !2565, file: !2, line: 1632, column: 3)
!2569 = !DILocation(line: 1633, column: 1, scope: !2541)
!2570 = !DISubprogram(name: "gsl_sf_pow_int", scope: !2571, file: !2571, line: 44, type: !2572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2571 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!61, !60, !59}
!2574 = !DISubprogram(name: "pow", scope: !366, file: !366, line: 140, type: !2575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!61, !61, !61}
!2577 = !DISubprogram(name: "gsl_sf_fact_e", scope: !2578, file: !2578, line: 119, type: !2579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2578 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!18, !2581, !62}
!2581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!2582 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !2578, file: !2578, line: 47, type: !2583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!18, !61, !62}
!2585 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !2586, file: !2586, line: 110, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2586 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!2587 = !DISubprogram(name: "cos", scope: !366, file: !366, line: 62, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2588 = !DISubprogram(name: "gsl_sf_hyperg_U_int_e", scope: !2589, file: !2589, line: 74, type: !2590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2589 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!2590 = !DISubroutineType(types: !2591)
!2591 = !{!18, !59, !59, !60, !62}
!2592 = !DISubprogram(name: "gsl_sf_hyperg_1F1_int_e", scope: !2589, file: !2589, line: 56, type: !2590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2593 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !2586, file: !2586, line: 122, type: !2594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!18, !60, !60, !60, !60, !62}
