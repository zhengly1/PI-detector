; ModuleID = 'fermi_dirac.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1218, i32 noundef 15) #7, !dbg !330
  br label %24, !dbg !330

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0.000000e+00, !dbg !332
  br i1 %7, label %8, label %17, !dbg !333

8:                                                ; preds = %6
  %9 = tail call double @exp(double noundef %0) #7, !dbg !334
  tail call void @llvm.dbg.value(metadata double %9, metadata !312, metadata !DIExpression()), !dbg !335
  %handler_result = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !336
  %10 = fdiv double %9, %handler_result, !dbg !336
  store double %10, ptr %1, align 8, !dbg !337, !tbaa !324
  %11 = tail call double @llvm.fabs.f64(double %0), !dbg !338
  %handler_result1 = call double @fAddHandlerDouble(double %11, double 1.000000e+00), !dbg !339
  %12 = fmul double %handler_result1, 2.000000e+00, !dbg !339
  %13 = fmul double %12, 0x3CB0000000000000, !dbg !340
  %14 = tail call double @llvm.fabs.f64(double %10), !dbg !341
  %15 = fmul double %13, %14, !dbg !342
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !343
  store double %15, ptr %16, align 8, !dbg !344, !tbaa !329
  br label %24

17:                                               ; preds = %6
  %18 = fneg double %0, !dbg !345
  %19 = tail call double @exp(double noundef %18) #7, !dbg !346
  tail call void @llvm.dbg.value(metadata double %19, metadata !316, metadata !DIExpression()), !dbg !347
  %handler_result2 = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !348
  %20 = fdiv double 1.000000e+00, %handler_result2, !dbg !348
  store double %20, ptr %1, align 8, !dbg !349, !tbaa !324
  %handler_result3 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !350
  %21 = fmul double %handler_result3, 0x3CC0000000000000, !dbg !350
  %22 = fmul double %21, %19, !dbg !351
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !352
  store double %22, ptr %23, align 8, !dbg !353, !tbaa !329
  br label %24

24:                                               ; preds = %17, %8, %4
  %25 = phi i32 [ 15, %4 ], [ 0, %8 ], [ 0, %17 ], !dbg !354
  ret i32 %25, !dbg !355
}

declare !dbg !356 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !361 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fermi_dirac_0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !365 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !367, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !368, metadata !DIExpression()), !dbg !377
  %3 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !378
  br i1 %3, label %4, label %6, !dbg !379

4:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !380, !tbaa !324
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !380
  store double 0x10000000000000, ptr %5, align 8, !dbg !380, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1239, i32 noundef 15) #7, !dbg !383
  br label %37, !dbg !383

6:                                                ; preds = %2
  %7 = fcmp olt double %0, -5.000000e+00, !dbg !385
  br i1 %7, label %8, label %19, !dbg !386

8:                                                ; preds = %6
  %9 = tail call double @exp(double noundef %0) #7, !dbg !387
  tail call void @llvm.dbg.value(metadata double %9, metadata !369, metadata !DIExpression()), !dbg !388
  %10 = fdiv double %9, 6.000000e+00, !dbg !389
  %handler_result = call double @fSubHandlerDouble(double 2.000000e-01, double %10), !dbg !390
  %11 = fmul double %9, %handler_result, !dbg !390
  %handler_result1 = call double @fSubHandlerDouble(double 2.500000e-01, double %11), !dbg !391
  %12 = fmul double %9, %handler_result1, !dbg !391
  %handler_result2 = call double @fSubHandlerDouble(double 0x3FD5555555555555, double %12), !dbg !392
  %13 = fmul double %9, %handler_result2, !dbg !392
  %handler_result3 = call double @fSubHandlerDouble(double 5.000000e-01, double %13), !dbg !393
  %14 = fmul double %9, %handler_result3, !dbg !393
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %14), !dbg !394
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !373, metadata !DIExpression()), !dbg !388
  %15 = fmul double %9, %handler_result4, !dbg !394
  store double %15, ptr %1, align 8, !dbg !395, !tbaa !324
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !396
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !397
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !398
  store double %17, ptr %18, align 8, !dbg !399, !tbaa !329
  br label %37

19:                                               ; preds = %6
  %20 = fcmp olt double %0, 1.000000e+01, !dbg !400
  br i1 %20, label %21, label %26, !dbg !401

21:                                               ; preds = %19
  %22 = tail call double @exp(double noundef %0) #7, !dbg !402
  %handler_result5 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !404
  %handler_result11 = call double @callHandler(i32 12, double %handler_result5, double %handler_result5), !dbg !405
  store double %handler_result11, ptr %1, align 8, !dbg !405, !tbaa !324
  %23 = fmul double %0, 0x3CB0000000000000, !dbg !406
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !407
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !408
  store double %24, ptr %25, align 8, !dbg !409, !tbaa !329
  br label %37, !dbg !410

26:                                               ; preds = %19
  %27 = fneg double %0, !dbg !411
  %28 = tail call double @exp(double noundef %27) #7, !dbg !412
  tail call void @llvm.dbg.value(metadata double %28, metadata !374, metadata !DIExpression()), !dbg !413
  %29 = fmul double %28, 5.000000e-01, !dbg !414
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %29), !dbg !415
  %30 = fmul double %28, %28, !dbg !415
  %31 = fdiv double %30, 3.000000e+00, !dbg !416
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %31), !dbg !417
  %32 = fmul double %28, %30, !dbg !417
  %33 = fmul double %32, 2.500000e-01, !dbg !418
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result7, double %33), !dbg !419
  %34 = fmul double %28, %handler_result8, !dbg !419
  %handler_result9 = call double @fAddHandlerDouble(double %34, double %0), !dbg !420
  store double %handler_result9, ptr %1, align 8, !dbg !420, !tbaa !324
  %handler_result10 = call double @fAddHandlerDouble(double %28, double %0), !dbg !421
  %35 = fmul double %handler_result10, 0x3CB0000000000000, !dbg !421
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !422
  store double %35, ptr %36, align 8, !dbg !423, !tbaa !329
  br label %37

37:                                               ; preds = %26, %21, %8, %4
  %38 = phi i32 [ 15, %4 ], [ 0, %8 ], [ 0, %21 ], [ 0, %26 ], !dbg !424
  ret i32 %38, !dbg !425
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !426 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fermi_dirac_1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !427 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !457
  call void @llvm.dbg.assign(metadata i1 undef, metadata !452, metadata !DIExpression(), metadata !457, metadata ptr %3, metadata !DIExpression()), !dbg !458
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !459
  call void @llvm.dbg.assign(metadata i1 undef, metadata !456, metadata !DIExpression(), metadata !459, metadata ptr %4, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata double %0, metadata !429, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !430, metadata !DIExpression()), !dbg !461
  %5 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !462
  br i1 %5, label %6, label %8, !dbg !463

6:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !464, !tbaa !324
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !464
  store double 0x10000000000000, ptr %7, align 8, !dbg !464, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1265, i32 noundef 15) #7, !dbg !467
  br label %148, !dbg !467

8:                                                ; preds = %2
  %9 = fcmp olt double %0, -1.000000e+00, !dbg !469
  br i1 %9, label %10, label %33, !dbg !470

10:                                               ; preds = %8
  %11 = tail call double @exp(double noundef %0) #7, !dbg !471
  tail call void @llvm.dbg.value(metadata double %11, metadata !431, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata double %11, metadata !435, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata double %11, metadata !436, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata i32 2, metadata !437, metadata !DIExpression()), !dbg !472
  %12 = fneg double %11
  br label %13, !dbg !473

13:                                               ; preds = %13, %10
  %14 = phi double [ %11, %10 ], [ %21, %13 ]
  %15 = phi double [ %11, %10 ], [ %handler_result1, %13 ]
  %16 = phi i32 [ 2, %10 ], [ %25, %13 ]
  tail call void @llvm.dbg.value(metadata double %14, metadata !435, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata double %15, metadata !436, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !437, metadata !DIExpression()), !dbg !472
  %17 = sitofp i32 %16 to double, !dbg !474
  %handler_result = call double @fAddHandlerDouble(double %17, double -1.000000e+00), !dbg !475
  %18 = fdiv double %handler_result, %17, !dbg !475
  tail call void @llvm.dbg.value(metadata double %18, metadata !438, metadata !DIExpression()), !dbg !476
  %19 = fmul double %18, %12, !dbg !477
  %20 = fmul double %18, %19, !dbg !478
  %21 = fmul double %14, %20, !dbg !479
  tail call void @llvm.dbg.value(metadata double %21, metadata !435, metadata !DIExpression()), !dbg !472
  %handler_result1 = call double @fAddHandlerDouble(double %15, double %21), !dbg !480
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !436, metadata !DIExpression()), !dbg !472
  %22 = fdiv double %21, %handler_result1, !dbg !480
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !482
  %24 = fcmp olt double %23, 0x3CB0000000000000, !dbg !483
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !437, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !472
  %25 = add nuw nsw i32 %16, 1
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !437, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata double %21, metadata !435, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !436, metadata !DIExpression()), !dbg !472
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !437, metadata !DIExpression()), !dbg !472
  %26 = icmp eq i32 %25, 100
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %13, !llvm.loop !484

28:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !436, metadata !DIExpression()), !dbg !472
  store double %handler_result1, ptr %1, align 8, !dbg !487, !tbaa !324
  %29 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !488
  %30 = fmul double %29, 2.000000e+00, !dbg !489
  %31 = fmul double %30, 0x3CB0000000000000, !dbg !490
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !491
  store double %31, ptr %32, align 8, !dbg !492, !tbaa !329
  br label %148

33:                                               ; preds = %8
  %34 = fcmp olt double %0, 1.000000e+00, !dbg !493
  br i1 %34, label %35, label %58, !dbg !494

35:                                               ; preds = %33
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double %0, metadata !504, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !518
  %36 = fmul double %0, 2.000000e+00, !dbg !521
  %handler_result2 = call double @fAddHandlerDouble(double %36, double 1.000000e+00), !dbg !522
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !523
  %37 = fmul double %handler_result3, 5.000000e-01, !dbg !523
  call void @llvm.dbg.value(metadata double %37, metadata !509, metadata !DIExpression()), !dbg !518
  %38 = fmul double %37, 2.000000e+00, !dbg !524
  call void @llvm.dbg.value(metadata double %38, metadata !510, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata i32 21, metadata !506, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !518
  br label %39, !dbg !525

39:                                               ; preds = %39, %35
  %40 = phi i64 [ 21, %35 ], [ %50, %39 ]
  %41 = phi double [ 0.000000e+00, %35 ], [ %handler_result5, %39 ]
  %42 = phi double [ 0.000000e+00, %35 ], [ %handler_result8, %39 ]
  %43 = phi double [ 0.000000e+00, %35 ], [ %41, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !506, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double %41, metadata !507, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double %42, metadata !511, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double %43, metadata !508, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double %41, metadata !512, metadata !DIExpression()), !dbg !526
  %44 = fmul double %38, %41, !dbg !527
  %handler_result4 = call double @fSubHandlerDouble(double %44, double %43), !dbg !528
  %45 = getelementptr inbounds double, ptr @fd_1_a_data, i64 %40, !dbg !528
  %46 = load double, ptr %45, align 8, !dbg !528, !tbaa !529
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %46), !dbg !530
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !507, metadata !DIExpression()), !dbg !518
  %47 = tail call double @llvm.fabs.f64(double %44), !dbg !530
  %48 = tail call double @llvm.fabs.f64(double %43), !dbg !531
  %handler_result6 = call double @fAddHandlerDouble(double %47, double %48), !dbg !532
  %49 = tail call double @llvm.fabs.f64(double %46), !dbg !532
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %49), !dbg !533
  %handler_result8 = call double @fAddHandlerDouble(double %42, double %handler_result7), !dbg !534
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !511, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.value(metadata double %41, metadata !508, metadata !DIExpression()), !dbg !518
  %50 = add nsw i64 %40, -1, !dbg !534
  call void @llvm.dbg.value(metadata i64 %50, metadata !506, metadata !DIExpression()), !dbg !518
  %51 = icmp ugt i64 %40, 1, !dbg !535
  br i1 %51, label %39, label %52, !dbg !525, !llvm.loop !536

52:                                               ; preds = %39
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !516, metadata !DIExpression()), !dbg !538
  %53 = fmul double %37, %handler_result5, !dbg !539
  %handler_result9 = call double @fSubHandlerDouble(double %53, double %41), !dbg !540
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3FEE51A6625307D3), !dbg !541
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !507, metadata !DIExpression()), !dbg !518
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !541
  %55 = tail call double @llvm.fabs.f64(double %41), !dbg !542
  %handler_result11 = call double @fAddHandlerDouble(double %55, double %54), !dbg !543
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FEE51A6625307D3), !dbg !544
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !545
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !511, metadata !DIExpression()), !dbg !518
  store double %handler_result10, ptr %1, align 8, !dbg !545, !tbaa !324
  %56 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !546
  %handler_result14 = call double @fAddHandlerDouble(double %56, double 3.000000e-19), !dbg !547
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !547
  store double %handler_result14, ptr %57, align 8, !dbg !548, !tbaa !329
  br label %148, !dbg !549

58:                                               ; preds = %33
  %59 = fcmp olt double %0, 4.000000e+00, !dbg !550
  br i1 %59, label %60, label %84, !dbg !551

60:                                               ; preds = %58
  %handler_result15 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !552
  %61 = fmul double %handler_result15, 0x3FE5555555555555, !dbg !552
  %handler_result16 = call double @fAddHandlerDouble(double %61, double -1.000000e+00), !dbg !553
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !442, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !504, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !556
  %62 = fmul double %handler_result16, 2.000000e+00, !dbg !553
  %handler_result17 = call double @fAddHandlerDouble(double %62, double 1.000000e+00), !dbg !557
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double -1.000000e+00), !dbg !558
  %63 = fmul double %handler_result18, 5.000000e-01, !dbg !558
  call void @llvm.dbg.value(metadata double %63, metadata !509, metadata !DIExpression()), !dbg !556
  %64 = fmul double %63, 2.000000e+00, !dbg !559
  call void @llvm.dbg.value(metadata double %64, metadata !510, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i32 21, metadata !506, metadata !DIExpression()), !dbg !556
  br label %65, !dbg !560

65:                                               ; preds = %65, %60
  %66 = phi i64 [ 21, %60 ], [ %76, %65 ]
  %67 = phi double [ 0.000000e+00, %60 ], [ %handler_result20, %65 ]
  %68 = phi double [ 0.000000e+00, %60 ], [ %handler_result23, %65 ]
  %69 = phi double [ 0.000000e+00, %60 ], [ %67, %65 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !506, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double %67, metadata !507, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double %68, metadata !511, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double %69, metadata !508, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double %67, metadata !512, metadata !DIExpression()), !dbg !561
  %70 = fmul double %64, %67, !dbg !562
  %handler_result19 = call double @fSubHandlerDouble(double %70, double %69), !dbg !563
  %71 = getelementptr inbounds double, ptr @fd_1_b_data, i64 %66, !dbg !563
  %72 = load double, ptr %71, align 8, !dbg !563, !tbaa !529
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %72), !dbg !564
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !507, metadata !DIExpression()), !dbg !556
  %73 = tail call double @llvm.fabs.f64(double %70), !dbg !564
  %74 = tail call double @llvm.fabs.f64(double %69), !dbg !565
  %handler_result21 = call double @fAddHandlerDouble(double %73, double %74), !dbg !566
  %75 = tail call double @llvm.fabs.f64(double %72), !dbg !566
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %75), !dbg !567
  %handler_result23 = call double @fAddHandlerDouble(double %68, double %handler_result22), !dbg !568
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !511, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double %67, metadata !508, metadata !DIExpression()), !dbg !556
  %76 = add nsw i64 %66, -1, !dbg !568
  call void @llvm.dbg.value(metadata i64 %76, metadata !506, metadata !DIExpression()), !dbg !556
  %77 = icmp ugt i64 %66, 1, !dbg !569
  br i1 %77, label %65, label %78, !dbg !560, !llvm.loop !570

78:                                               ; preds = %65
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !516, metadata !DIExpression()), !dbg !572
  %79 = fmul double %63, %handler_result20, !dbg !573
  %handler_result24 = call double @fSubHandlerDouble(double %79, double %67), !dbg !574
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x4014D17A60C63EEE), !dbg !575
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !507, metadata !DIExpression()), !dbg !556
  %80 = tail call double @llvm.fabs.f64(double %79), !dbg !575
  %81 = tail call double @llvm.fabs.f64(double %67), !dbg !576
  %handler_result26 = call double @fAddHandlerDouble(double %81, double %80), !dbg !577
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0x4014D17A60C63EEE), !dbg !578
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result23, double %handler_result27), !dbg !579
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !511, metadata !DIExpression()), !dbg !556
  store double %handler_result25, ptr %1, align 8, !dbg !579, !tbaa !324
  %82 = fmul double %handler_result28, 0x3CB0000000000000, !dbg !580
  %handler_result29 = call double @fAddHandlerDouble(double %82, double 1.600000e-17), !dbg !581
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !581
  store double %handler_result29, ptr %83, align 8, !dbg !582, !tbaa !329
  br label %148

84:                                               ; preds = %58
  %85 = fcmp olt double %0, 1.000000e+01, !dbg !583
  br i1 %85, label %86, label %110, !dbg !584

86:                                               ; preds = %84
  %handler_result30 = call double @fAddHandlerDouble(double %0, double -4.000000e+00), !dbg !585
  %87 = fmul double %handler_result30, 0x3FD5555555555555, !dbg !585
  %handler_result31 = call double @fAddHandlerDouble(double %87, double -1.000000e+00), !dbg !586
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !446, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !504, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !589
  %88 = fmul double %handler_result31, 2.000000e+00, !dbg !586
  %handler_result32 = call double @fAddHandlerDouble(double %88, double 1.000000e+00), !dbg !590
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double -1.000000e+00), !dbg !591
  %89 = fmul double %handler_result33, 5.000000e-01, !dbg !591
  call void @llvm.dbg.value(metadata double %89, metadata !509, metadata !DIExpression()), !dbg !589
  %90 = fmul double %89, 2.000000e+00, !dbg !592
  call void @llvm.dbg.value(metadata double %90, metadata !510, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 22, metadata !506, metadata !DIExpression()), !dbg !589
  br label %91, !dbg !593

91:                                               ; preds = %91, %86
  %92 = phi i64 [ 22, %86 ], [ %102, %91 ]
  %93 = phi double [ 0.000000e+00, %86 ], [ %handler_result35, %91 ]
  %94 = phi double [ 0.000000e+00, %86 ], [ %handler_result38, %91 ]
  %95 = phi double [ 0.000000e+00, %86 ], [ %93, %91 ]
  call void @llvm.dbg.value(metadata i64 %92, metadata !506, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata double %93, metadata !507, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata double %94, metadata !511, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata double %95, metadata !508, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata double %93, metadata !512, metadata !DIExpression()), !dbg !594
  %96 = fmul double %90, %93, !dbg !595
  %handler_result34 = call double @fSubHandlerDouble(double %96, double %95), !dbg !596
  %97 = getelementptr inbounds double, ptr @fd_1_c_data, i64 %92, !dbg !596
  %98 = load double, ptr %97, align 8, !dbg !596, !tbaa !529
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %98), !dbg !597
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !507, metadata !DIExpression()), !dbg !589
  %99 = tail call double @llvm.fabs.f64(double %96), !dbg !597
  %100 = tail call double @llvm.fabs.f64(double %95), !dbg !598
  %handler_result36 = call double @fAddHandlerDouble(double %99, double %100), !dbg !599
  %101 = tail call double @llvm.fabs.f64(double %98), !dbg !599
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %101), !dbg !600
  %handler_result38 = call double @fAddHandlerDouble(double %94, double %handler_result37), !dbg !601
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !511, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata double %93, metadata !508, metadata !DIExpression()), !dbg !589
  %102 = add nsw i64 %92, -1, !dbg !601
  call void @llvm.dbg.value(metadata i64 %102, metadata !506, metadata !DIExpression()), !dbg !589
  %103 = icmp ugt i64 %92, 1, !dbg !602
  br i1 %103, label %91, label %104, !dbg !593, !llvm.loop !603

104:                                              ; preds = %91
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !516, metadata !DIExpression()), !dbg !605
  %105 = fmul double %89, %handler_result35, !dbg !606
  %handler_result39 = call double @fSubHandlerDouble(double %105, double %93), !dbg !607
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0x403C63F7A0A31F57), !dbg !608
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !507, metadata !DIExpression()), !dbg !589
  %106 = tail call double @llvm.fabs.f64(double %105), !dbg !608
  %107 = tail call double @llvm.fabs.f64(double %93), !dbg !609
  %handler_result41 = call double @fAddHandlerDouble(double %107, double %106), !dbg !610
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0x403C63F7A0A31F57), !dbg !611
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result38, double %handler_result42), !dbg !612
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !511, metadata !DIExpression()), !dbg !589
  store double %handler_result40, ptr %1, align 8, !dbg !612, !tbaa !324
  %108 = fmul double %handler_result43, 0x3CB0000000000000, !dbg !613
  %handler_result44 = call double @fAddHandlerDouble(double %108, double 3.000000e-17), !dbg !614
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !614
  store double %handler_result44, ptr %109, align 8, !dbg !615, !tbaa !329
  br label %148

110:                                              ; preds = %84
  %111 = fcmp olt double %0, 3.000000e+01, !dbg !616
  br i1 %111, label %112, label %124, !dbg !617

112:                                              ; preds = %110
  %113 = fmul double %0, 1.000000e-01, !dbg !618
  %handler_result45 = call double @fAddHandlerDouble(double %113, double -2.000000e+00), !dbg !619
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !449, metadata !DIExpression()), !dbg !458
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !619
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_1_d_cs, double noundef %handler_result45, ptr noundef nonnull %3), !dbg !620
  %114 = load double, ptr %3, align 8, !dbg !621, !tbaa !324
  %115 = fmul double %114, %0, !dbg !622
  %116 = fmul double %115, %0, !dbg !623
  store double %116, ptr %1, align 8, !dbg !624, !tbaa !324
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !625
  %118 = load double, ptr %117, align 8, !dbg !625, !tbaa !329
  %119 = fmul double %118, %0, !dbg !626
  %120 = fmul double %119, %0, !dbg !627
  %121 = tail call double @llvm.fabs.f64(double %116), !dbg !628
  %122 = fmul double %121, 0x3CB0000000000000, !dbg !629
  %handler_result46 = call double @fAddHandlerDouble(double %120, double %122), !dbg !630
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !630
  store double %handler_result46, ptr %123, align 8, !dbg !631, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !632
  br label %148

124:                                              ; preds = %110
  %125 = fcmp olt double %0, 0x4190000000000000, !dbg !633
  br i1 %125, label %126, label %138, !dbg !634

126:                                              ; preds = %124
  %127 = fdiv double 6.000000e+01, %0, !dbg !635
  %handler_result47 = call double @fAddHandlerDouble(double %127, double -1.000000e+00), !dbg !636
  tail call void @llvm.dbg.value(metadata double %handler_result47, metadata !453, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !636
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_1_e_cs, double noundef %handler_result47, ptr noundef nonnull %4), !dbg !637
  %128 = load double, ptr %4, align 8, !dbg !638, !tbaa !324
  %129 = fmul double %128, %0, !dbg !639
  %130 = fmul double %129, %0, !dbg !640
  store double %130, ptr %1, align 8, !dbg !641, !tbaa !324
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !642
  %132 = load double, ptr %131, align 8, !dbg !642, !tbaa !329
  %133 = fmul double %132, %0, !dbg !643
  %134 = fmul double %133, %0, !dbg !644
  %135 = tail call double @llvm.fabs.f64(double %130), !dbg !645
  %136 = fmul double %135, 0x3CB0000000000000, !dbg !646
  %handler_result48 = call double @fAddHandlerDouble(double %134, double %136), !dbg !647
  %137 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !647
  store double %handler_result48, ptr %137, align 8, !dbg !648, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !649
  br label %148

138:                                              ; preds = %124
  %139 = fcmp olt double %0, 0x5FEFFFFFFFFFFFFF, !dbg !650
  br i1 %139, label %140, label %146, !dbg !652

140:                                              ; preds = %138
  %141 = fmul double %0, 5.000000e-01, !dbg !653
  %142 = fmul double %141, %0, !dbg !655
  store double %142, ptr %1, align 8, !dbg !656, !tbaa !324
  %143 = tail call double @llvm.fabs.f64(double %142), !dbg !657
  %144 = fmul double %143, 0x3CC0000000000000, !dbg !658
  %145 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !659
  store double %144, ptr %145, align 8, !dbg !660, !tbaa !329
  br label %148, !dbg !661

146:                                              ; preds = %138
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !662, !tbaa !324
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !662
  store double 0x7FF0000000000000, ptr %147, align 8, !dbg !662, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1317, i32 noundef 16) #7, !dbg !665
  br label %148, !dbg !665

148:                                              ; preds = %146, %140, %126, %112, %104, %78, %52, %28, %6
  %149 = phi i32 [ 15, %6 ], [ 0, %28 ], [ 0, %52 ], [ 0, %78 ], [ 0, %104 ], [ 0, %112 ], [ 0, %126 ], [ 0, %140 ], [ 16, %146 ], !dbg !667
  ret i32 %149, !dbg !668
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cheb_eval_e(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !dbg !497 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !496, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %1, metadata !504, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !505, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !669
  %4 = fmul double %1, 2.000000e+00, !dbg !670
  %5 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 2, !dbg !671
  %6 = load double, ptr %5, align 8, !dbg !671, !tbaa !672
  %handler_result = call double @fSubHandlerDouble(double %4, double %6), !dbg !676
  %7 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 3, !dbg !676
  %8 = load double, ptr %7, align 8, !dbg !676, !tbaa !677
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %8), !dbg !678
  %handler_result2 = call double @fSubHandlerDouble(double %8, double %6), !dbg !679
  %9 = fdiv double %handler_result1, %handler_result2, !dbg !679
  tail call void @llvm.dbg.value(metadata double %9, metadata !509, metadata !DIExpression()), !dbg !669
  %10 = fmul double %9, 2.000000e+00, !dbg !680
  tail call void @llvm.dbg.value(metadata double %10, metadata !510, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !669
  %11 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 1, !dbg !681
  %12 = load i32, ptr %11, align 8, !dbg !681, !tbaa !682
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !506, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !669
  %13 = icmp sgt i32 %12, 0, !dbg !683
  %14 = load ptr, ptr %0, align 8, !dbg !684, !tbaa !685
  br i1 %13, label %15, label %30, !dbg !686

15:                                               ; preds = %3
  %16 = zext nneg i32 %12 to i64, !dbg !686
  br label %17, !dbg !686

17:                                               ; preds = %17, %15
  %18 = phi i64 [ %16, %15 ], [ %28, %17 ]
  %19 = phi double [ 0.000000e+00, %15 ], [ %handler_result4, %17 ]
  %20 = phi double [ 0.000000e+00, %15 ], [ %handler_result7, %17 ]
  %21 = phi double [ 0.000000e+00, %15 ], [ %19, %17 ]
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !506, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %19, metadata !507, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %20, metadata !511, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %21, metadata !508, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %19, metadata !512, metadata !DIExpression()), !dbg !687
  %22 = fmul double %10, %19, !dbg !688
  %handler_result3 = call double @fSubHandlerDouble(double %22, double %21), !dbg !689
  %23 = getelementptr inbounds double, ptr %14, i64 %18, !dbg !689
  %24 = load double, ptr %23, align 8, !dbg !689, !tbaa !529
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %24), !dbg !690
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !507, metadata !DIExpression()), !dbg !669
  %25 = tail call double @llvm.fabs.f64(double %22), !dbg !690
  %26 = tail call double @llvm.fabs.f64(double %21), !dbg !691
  %handler_result5 = call double @fAddHandlerDouble(double %26, double %25), !dbg !692
  %27 = tail call double @llvm.fabs.f64(double %24), !dbg !692
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %27), !dbg !693
  %handler_result7 = call double @fAddHandlerDouble(double %20, double %handler_result6), !dbg !694
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !511, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %19, metadata !508, metadata !DIExpression()), !dbg !669
  %28 = add nsw i64 %18, -1, !dbg !694
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !506, metadata !DIExpression()), !dbg !669
  %29 = icmp ugt i64 %18, 1, !dbg !683
  br i1 %29, label %17, label %30, !dbg !686, !llvm.loop !695

30:                                               ; preds = %17, %3
  %31 = phi double [ 0.000000e+00, %3 ], [ %19, %17 ], !dbg !669
  %32 = phi double [ 0.000000e+00, %3 ], [ %handler_result7, %17 ], !dbg !669
  %33 = phi double [ 0.000000e+00, %3 ], [ %handler_result4, %17 ], !dbg !669
  tail call void @llvm.dbg.value(metadata double %33, metadata !516, metadata !DIExpression()), !dbg !697
  %34 = fmul double %9, %33, !dbg !698
  %handler_result8 = call double @fSubHandlerDouble(double %34, double %31), !dbg !699
  %35 = load double, ptr %14, align 8, !dbg !699, !tbaa !529
  %36 = fmul double %35, 5.000000e-01, !dbg !700
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %36), !dbg !701
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !507, metadata !DIExpression()), !dbg !669
  %37 = tail call double @llvm.fabs.f64(double %34), !dbg !701
  %38 = tail call double @llvm.fabs.f64(double %31), !dbg !702
  %handler_result10 = call double @fAddHandlerDouble(double %38, double %37), !dbg !703
  %39 = tail call double @llvm.fabs.f64(double %35), !dbg !703
  %40 = fmul double %39, 5.000000e-01, !dbg !704
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double %40), !dbg !705
  %handler_result12 = call double @fAddHandlerDouble(double %32, double %handler_result11), !dbg !706
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !511, metadata !DIExpression()), !dbg !669
  store double %handler_result9, ptr %2, align 8, !dbg !706, !tbaa !324
  %41 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !707
  %42 = sext i32 %12 to i64, !dbg !708
  %43 = getelementptr inbounds double, ptr %14, i64 %42, !dbg !708
  %44 = load double, ptr %43, align 8, !dbg !708, !tbaa !529
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !709
  %handler_result13 = call double @fAddHandlerDouble(double %45, double %41), !dbg !710
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !710
  store double %handler_result13, ptr %46, align 8, !dbg !711, !tbaa !329
  ret void, !dbg !712
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fermi_dirac_2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !713 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !743
  call void @llvm.dbg.assign(metadata i1 undef, metadata !738, metadata !DIExpression(), metadata !743, metadata ptr %3, metadata !DIExpression()), !dbg !744
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !745
  call void @llvm.dbg.assign(metadata i1 undef, metadata !742, metadata !DIExpression(), metadata !745, metadata ptr %4, metadata !DIExpression()), !dbg !746
  tail call void @llvm.dbg.value(metadata double %0, metadata !715, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !716, metadata !DIExpression()), !dbg !747
  %5 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !748
  br i1 %5, label %6, label %8, !dbg !749

6:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !750, !tbaa !324
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !750
  store double 0x10000000000000, ptr %7, align 8, !dbg !750, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1325, i32 noundef 15) #7, !dbg !753
  br label %153, !dbg !753

8:                                                ; preds = %2
  %9 = fcmp olt double %0, -1.000000e+00, !dbg !755
  br i1 %9, label %10, label %33, !dbg !756

10:                                               ; preds = %8
  %11 = tail call double @exp(double noundef %0) #7, !dbg !757
  tail call void @llvm.dbg.value(metadata double %11, metadata !717, metadata !DIExpression()), !dbg !758
  tail call void @llvm.dbg.value(metadata double %11, metadata !721, metadata !DIExpression()), !dbg !758
  tail call void @llvm.dbg.value(metadata double %11, metadata !722, metadata !DIExpression()), !dbg !758
  tail call void @llvm.dbg.value(metadata i32 2, metadata !723, metadata !DIExpression()), !dbg !758
  %12 = fneg double %11
  br label %13, !dbg !759

13:                                               ; preds = %13, %10
  %14 = phi double [ %11, %10 ], [ %22, %13 ]
  %15 = phi double [ %11, %10 ], [ %handler_result1, %13 ]
  %16 = phi i32 [ 2, %10 ], [ %26, %13 ]
  tail call void @llvm.dbg.value(metadata double %14, metadata !721, metadata !DIExpression()), !dbg !758
  tail call void @llvm.dbg.value(metadata double %15, metadata !722, metadata !DIExpression()), !dbg !758
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !723, metadata !DIExpression()), !dbg !758
  %17 = sitofp i32 %16 to double, !dbg !760
  %handler_result = call double @fAddHandlerDouble(double %17, double -1.000000e+00), !dbg !761
  %18 = fdiv double %handler_result, %17, !dbg !761
  tail call void @llvm.dbg.value(metadata double %18, metadata !724, metadata !DIExpression()), !dbg !762
  %19 = fmul double %18, %12, !dbg !763
  %20 = fmul double %18, %19, !dbg !764
  %21 = fmul double %18, %20, !dbg !765
  %22 = fmul double %14, %21, !dbg !766
  tail call void @llvm.dbg.value(metadata double %22, metadata !721, metadata !DIExpression()), !dbg !758
  %handler_result1 = call double @fAddHandlerDouble(double %15, double %22), !dbg !767
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !722, metadata !DIExpression()), !dbg !758
  %23 = fdiv double %22, %handler_result1, !dbg !767
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !769
  %25 = fcmp olt double %24, 0x3CB0000000000000, !dbg !770
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !723, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !758
  %26 = add nuw nsw i32 %16, 1
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !723, metadata !DIExpression()), !dbg !758
  tail call void @llvm.dbg.value(metadata double %22, metadata !721, metadata !DIExpression()), !dbg !758
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !722, metadata !DIExpression()), !dbg !758
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !723, metadata !DIExpression()), !dbg !758
  %27 = icmp eq i32 %26, 100
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %13, !llvm.loop !771

29:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !722, metadata !DIExpression()), !dbg !758
  store double %handler_result1, ptr %1, align 8, !dbg !773, !tbaa !324
  %30 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !774
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !775
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !776
  store double %31, ptr %32, align 8, !dbg !777, !tbaa !329
  br label %153

33:                                               ; preds = %8
  %34 = fcmp olt double %0, 1.000000e+00, !dbg !778
  br i1 %34, label %35, label %58, !dbg !779

35:                                               ; preds = %33
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %0, metadata !504, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !780
  %36 = fmul double %0, 2.000000e+00, !dbg !783
  %handler_result2 = call double @fAddHandlerDouble(double %36, double 1.000000e+00), !dbg !784
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !785
  %37 = fmul double %handler_result3, 5.000000e-01, !dbg !785
  call void @llvm.dbg.value(metadata double %37, metadata !509, metadata !DIExpression()), !dbg !780
  %38 = fmul double %37, 2.000000e+00, !dbg !786
  call void @llvm.dbg.value(metadata double %38, metadata !510, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata i32 20, metadata !506, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !780
  br label %39, !dbg !787

39:                                               ; preds = %39, %35
  %40 = phi i64 [ 20, %35 ], [ %50, %39 ]
  %41 = phi double [ 0.000000e+00, %35 ], [ %handler_result5, %39 ]
  %42 = phi double [ 0.000000e+00, %35 ], [ %handler_result8, %39 ]
  %43 = phi double [ 0.000000e+00, %35 ], [ %41, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !506, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %41, metadata !507, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %42, metadata !511, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %43, metadata !508, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %41, metadata !512, metadata !DIExpression()), !dbg !788
  %44 = fmul double %38, %41, !dbg !789
  %handler_result4 = call double @fSubHandlerDouble(double %44, double %43), !dbg !790
  %45 = getelementptr inbounds double, ptr @fd_2_a_data, i64 %40, !dbg !790
  %46 = load double, ptr %45, align 8, !dbg !790, !tbaa !529
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %46), !dbg !791
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !507, metadata !DIExpression()), !dbg !780
  %47 = tail call double @llvm.fabs.f64(double %44), !dbg !791
  %48 = tail call double @llvm.fabs.f64(double %43), !dbg !792
  %handler_result6 = call double @fAddHandlerDouble(double %47, double %48), !dbg !793
  %49 = tail call double @llvm.fabs.f64(double %46), !dbg !793
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %49), !dbg !794
  %handler_result8 = call double @fAddHandlerDouble(double %42, double %handler_result7), !dbg !795
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !511, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %41, metadata !508, metadata !DIExpression()), !dbg !780
  %50 = add nsw i64 %40, -1, !dbg !795
  call void @llvm.dbg.value(metadata i64 %50, metadata !506, metadata !DIExpression()), !dbg !780
  %51 = icmp ugt i64 %40, 1, !dbg !796
  br i1 %51, label %39, label %52, !dbg !787, !llvm.loop !797

52:                                               ; preds = %39
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !516, metadata !DIExpression()), !dbg !799
  %53 = fmul double %37, %handler_result5, !dbg !800
  %handler_result9 = call double @fSubHandlerDouble(double %53, double %41), !dbg !801
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3FF1424934B74A67), !dbg !802
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !507, metadata !DIExpression()), !dbg !780
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !802
  %55 = tail call double @llvm.fabs.f64(double %41), !dbg !803
  %handler_result11 = call double @fAddHandlerDouble(double %55, double %54), !dbg !804
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FF1424934B74A67), !dbg !805
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !806
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !511, metadata !DIExpression()), !dbg !780
  store double %handler_result10, ptr %1, align 8, !dbg !806, !tbaa !324
  %56 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !807
  %handler_result14 = call double @fAddHandlerDouble(double %56, double 4.000000e-19), !dbg !808
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !808
  store double %handler_result14, ptr %57, align 8, !dbg !809, !tbaa !329
  br label %153, !dbg !810

58:                                               ; preds = %33
  %59 = fcmp olt double %0, 4.000000e+00, !dbg !811
  br i1 %59, label %60, label %84, !dbg !812

60:                                               ; preds = %58
  %handler_result15 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !813
  %61 = fmul double %handler_result15, 0x3FE5555555555555, !dbg !813
  %handler_result16 = call double @fAddHandlerDouble(double %61, double -1.000000e+00), !dbg !814
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !728, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !504, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !817
  %62 = fmul double %handler_result16, 2.000000e+00, !dbg !814
  %handler_result17 = call double @fAddHandlerDouble(double %62, double 1.000000e+00), !dbg !818
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double -1.000000e+00), !dbg !819
  %63 = fmul double %handler_result18, 5.000000e-01, !dbg !819
  call void @llvm.dbg.value(metadata double %63, metadata !509, metadata !DIExpression()), !dbg !817
  %64 = fmul double %63, 2.000000e+00, !dbg !820
  call void @llvm.dbg.value(metadata double %64, metadata !510, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 21, metadata !506, metadata !DIExpression()), !dbg !817
  br label %65, !dbg !821

65:                                               ; preds = %65, %60
  %66 = phi i64 [ 21, %60 ], [ %76, %65 ]
  %67 = phi double [ 0.000000e+00, %60 ], [ %handler_result20, %65 ]
  %68 = phi double [ 0.000000e+00, %60 ], [ %handler_result23, %65 ]
  %69 = phi double [ 0.000000e+00, %60 ], [ %67, %65 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !506, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %67, metadata !507, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %68, metadata !511, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %69, metadata !508, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %67, metadata !512, metadata !DIExpression()), !dbg !822
  %70 = fmul double %64, %67, !dbg !823
  %handler_result19 = call double @fSubHandlerDouble(double %70, double %69), !dbg !824
  %71 = getelementptr inbounds double, ptr @fd_2_b_data, i64 %66, !dbg !824
  %72 = load double, ptr %71, align 8, !dbg !824, !tbaa !529
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %72), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !507, metadata !DIExpression()), !dbg !817
  %73 = tail call double @llvm.fabs.f64(double %70), !dbg !825
  %74 = tail call double @llvm.fabs.f64(double %69), !dbg !826
  %handler_result21 = call double @fAddHandlerDouble(double %73, double %74), !dbg !827
  %75 = tail call double @llvm.fabs.f64(double %72), !dbg !827
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %75), !dbg !828
  %handler_result23 = call double @fAddHandlerDouble(double %68, double %handler_result22), !dbg !829
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !511, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata double %67, metadata !508, metadata !DIExpression()), !dbg !817
  %76 = add nsw i64 %66, -1, !dbg !829
  call void @llvm.dbg.value(metadata i64 %76, metadata !506, metadata !DIExpression()), !dbg !817
  %77 = icmp ugt i64 %66, 1, !dbg !830
  br i1 %77, label %65, label %78, !dbg !821, !llvm.loop !831

78:                                               ; preds = %65
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !516, metadata !DIExpression()), !dbg !833
  %79 = fmul double %63, %handler_result20, !dbg !834
  %handler_result24 = call double @fSubHandlerDouble(double %79, double %67), !dbg !835
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x4020821D3FDE9433), !dbg !836
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !507, metadata !DIExpression()), !dbg !817
  %80 = tail call double @llvm.fabs.f64(double %79), !dbg !836
  %81 = tail call double @llvm.fabs.f64(double %67), !dbg !837
  %handler_result26 = call double @fAddHandlerDouble(double %81, double %80), !dbg !838
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0x4020821D3FDE9433), !dbg !839
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result23, double %handler_result27), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !511, metadata !DIExpression()), !dbg !817
  store double %handler_result25, ptr %1, align 8, !dbg !840, !tbaa !324
  %82 = fmul double %handler_result28, 0x3CB0000000000000, !dbg !841
  %handler_result29 = call double @fAddHandlerDouble(double %82, double 1.000000e-18), !dbg !842
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !842
  store double %handler_result29, ptr %83, align 8, !dbg !843, !tbaa !329
  br label %153

84:                                               ; preds = %58
  %85 = fcmp olt double %0, 1.000000e+01, !dbg !844
  br i1 %85, label %86, label %110, !dbg !845

86:                                               ; preds = %84
  %handler_result30 = call double @fAddHandlerDouble(double %0, double -4.000000e+00), !dbg !846
  %87 = fmul double %handler_result30, 0x3FD5555555555555, !dbg !846
  %handler_result31 = call double @fAddHandlerDouble(double %87, double -1.000000e+00), !dbg !847
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !732, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !504, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !850
  %88 = fmul double %handler_result31, 2.000000e+00, !dbg !847
  %handler_result32 = call double @fAddHandlerDouble(double %88, double 1.000000e+00), !dbg !851
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double -1.000000e+00), !dbg !852
  %89 = fmul double %handler_result33, 5.000000e-01, !dbg !852
  call void @llvm.dbg.value(metadata double %89, metadata !509, metadata !DIExpression()), !dbg !850
  %90 = fmul double %89, 2.000000e+00, !dbg !853
  call void @llvm.dbg.value(metadata double %90, metadata !510, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i32 19, metadata !506, metadata !DIExpression()), !dbg !850
  br label %91, !dbg !854

91:                                               ; preds = %91, %86
  %92 = phi i64 [ 19, %86 ], [ %102, %91 ]
  %93 = phi double [ 0.000000e+00, %86 ], [ %handler_result35, %91 ]
  %94 = phi double [ 0.000000e+00, %86 ], [ %handler_result38, %91 ]
  %95 = phi double [ 0.000000e+00, %86 ], [ %93, %91 ]
  call void @llvm.dbg.value(metadata i64 %92, metadata !506, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %93, metadata !507, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %94, metadata !511, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %95, metadata !508, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %93, metadata !512, metadata !DIExpression()), !dbg !855
  %96 = fmul double %90, %93, !dbg !856
  %handler_result34 = call double @fSubHandlerDouble(double %96, double %95), !dbg !857
  %97 = getelementptr inbounds double, ptr @fd_2_c_data, i64 %92, !dbg !857
  %98 = load double, ptr %97, align 8, !dbg !857, !tbaa !529
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %98), !dbg !858
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !507, metadata !DIExpression()), !dbg !850
  %99 = tail call double @llvm.fabs.f64(double %96), !dbg !858
  %100 = tail call double @llvm.fabs.f64(double %95), !dbg !859
  %handler_result36 = call double @fAddHandlerDouble(double %99, double %100), !dbg !860
  %101 = tail call double @llvm.fabs.f64(double %98), !dbg !860
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %101), !dbg !861
  %handler_result38 = call double @fAddHandlerDouble(double %94, double %handler_result37), !dbg !862
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !511, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %93, metadata !508, metadata !DIExpression()), !dbg !850
  %102 = add nsw i64 %92, -1, !dbg !862
  call void @llvm.dbg.value(metadata i64 %102, metadata !506, metadata !DIExpression()), !dbg !850
  %103 = icmp ugt i64 %92, 1, !dbg !863
  br i1 %103, label %91, label %104, !dbg !854, !llvm.loop !864

104:                                              ; preds = %91
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !516, metadata !DIExpression()), !dbg !866
  %105 = fmul double %89, %handler_result35, !dbg !867
  %handler_result39 = call double @fSubHandlerDouble(double %105, double %93), !dbg !868
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0x40551BE1ABDAB856), !dbg !869
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !507, metadata !DIExpression()), !dbg !850
  %106 = tail call double @llvm.fabs.f64(double %105), !dbg !869
  %107 = tail call double @llvm.fabs.f64(double %93), !dbg !870
  %handler_result41 = call double @fAddHandlerDouble(double %107, double %106), !dbg !871
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0x40551BE1ABDAB856), !dbg !872
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result38, double %handler_result42), !dbg !873
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !511, metadata !DIExpression()), !dbg !850
  store double %handler_result40, ptr %1, align 8, !dbg !873, !tbaa !324
  %108 = fmul double %handler_result43, 0x3CB0000000000000, !dbg !874
  %handler_result44 = call double @fAddHandlerDouble(double %108, double 4.300000e-16), !dbg !875
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !875
  store double %handler_result44, ptr %109, align 8, !dbg !876, !tbaa !329
  br label %153

110:                                              ; preds = %84
  %111 = fcmp olt double %0, 3.000000e+01, !dbg !877
  br i1 %111, label %112, label %126, !dbg !878

112:                                              ; preds = %110
  %113 = fmul double %0, 1.000000e-01, !dbg !879
  %handler_result45 = call double @fAddHandlerDouble(double %113, double -2.000000e+00), !dbg !880
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !735, metadata !DIExpression()), !dbg !744
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !880
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_2_d_cs, double noundef %handler_result45, ptr noundef nonnull %3), !dbg !881
  %114 = load double, ptr %3, align 8, !dbg !882, !tbaa !324
  %115 = fmul double %114, %0, !dbg !883
  %116 = fmul double %115, %0, !dbg !884
  %117 = fmul double %116, %0, !dbg !885
  store double %117, ptr %1, align 8, !dbg !886, !tbaa !324
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !887
  %119 = load double, ptr %118, align 8, !dbg !887, !tbaa !329
  %120 = fmul double %119, %0, !dbg !888
  %121 = fmul double %120, %0, !dbg !889
  %122 = fmul double %121, %0, !dbg !890
  %123 = tail call double @llvm.fabs.f64(double %117), !dbg !891
  %124 = fmul double %123, 0x3CC8000000000000, !dbg !892
  %handler_result46 = call double @fAddHandlerDouble(double %122, double %124), !dbg !893
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !893
  store double %handler_result46, ptr %125, align 8, !dbg !894, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !895
  br label %153

126:                                              ; preds = %110
  %127 = fcmp olt double %0, 0x410428A2F98D7287, !dbg !896
  br i1 %127, label %128, label %142, !dbg !897

128:                                              ; preds = %126
  %129 = fdiv double 6.000000e+01, %0, !dbg !898
  %handler_result47 = call double @fAddHandlerDouble(double %129, double -1.000000e+00), !dbg !899
  tail call void @llvm.dbg.value(metadata double %handler_result47, metadata !739, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !899
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_2_e_cs, double noundef %handler_result47, ptr noundef nonnull %4), !dbg !900
  %130 = load double, ptr %4, align 8, !dbg !901, !tbaa !324
  %131 = fmul double %130, %0, !dbg !902
  %132 = fmul double %131, %0, !dbg !903
  %133 = fmul double %132, %0, !dbg !904
  store double %133, ptr %1, align 8, !dbg !905, !tbaa !324
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !906
  %135 = load double, ptr %134, align 8, !dbg !906, !tbaa !329
  %136 = fmul double %135, %0, !dbg !907
  %137 = fmul double %136, %0, !dbg !908
  %138 = fmul double %137, %0, !dbg !909
  %139 = tail call double @llvm.fabs.f64(double %133), !dbg !910
  %140 = fmul double %139, 0x3CC8000000000000, !dbg !911
  %handler_result48 = call double @fAddHandlerDouble(double %138, double %140), !dbg !912
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !912
  store double %handler_result48, ptr %141, align 8, !dbg !913, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !914
  br label %153

142:                                              ; preds = %126
  %143 = fcmp olt double %0, 0x554428A2F98D7242, !dbg !915
  br i1 %143, label %144, label %151, !dbg !917

144:                                              ; preds = %142
  %145 = fmul double %0, 0x3FC5555555555555, !dbg !918
  %146 = fmul double %145, %0, !dbg !920
  %147 = fmul double %146, %0, !dbg !921
  store double %147, ptr %1, align 8, !dbg !922, !tbaa !324
  %148 = tail call double @llvm.fabs.f64(double %147), !dbg !923
  %149 = fmul double %148, 0x3CC8000000000000, !dbg !924
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !925
  store double %149, ptr %150, align 8, !dbg !926, !tbaa !329
  br label %153, !dbg !927

151:                                              ; preds = %142
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !928, !tbaa !324
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !928
  store double 0x7FF0000000000000, ptr %152, align 8, !dbg !928, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1377, i32 noundef 16) #7, !dbg !931
  br label %153, !dbg !931

153:                                              ; preds = %151, %144, %128, %112, %104, %78, %52, %29, %6
  %154 = phi i32 [ 15, %6 ], [ 0, %29 ], [ 0, %52 ], [ 0, %78 ], [ 0, %104 ], [ 0, %112 ], [ 0, %128 ], [ 0, %144 ], [ 16, %151 ], !dbg !933
  ret i32 %154, !dbg !934
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_fermi_dirac_int_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !935 {
  %4 = alloca [101 x double], align 16, !DIAssignID !951
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !952
  call void @llvm.dbg.assign(metadata i1 undef, metadata !940, metadata !DIExpression(), metadata !952, metadata ptr %5, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !937, metadata !DIExpression()), !dbg !954
  tail call void @llvm.dbg.value(metadata double %1, metadata !938, metadata !DIExpression()), !dbg !954
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !939, metadata !DIExpression()), !dbg !954
  %6 = icmp slt i32 %0, -1, !dbg !955
  br i1 %6, label %7, label %170, !dbg !956

7:                                                ; preds = %3
  call void @llvm.dbg.assign(metadata i1 undef, metadata !73, metadata !DIExpression(), metadata !951, metadata ptr %4, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i32 %0, metadata !70, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double %1, metadata !71, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr %2, metadata !72, metadata !DIExpression()), !dbg !957
  call void @llvm.lifetime.start.p0(i64 808, ptr nonnull %4) #7, !dbg !960
  %8 = icmp ult i32 %0, -101, !dbg !961
  br i1 %8, label %9, label %10, !dbg !962

9:                                                ; preds = %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !963
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 867, i32 noundef 24) #7, !dbg !965
  br label %168, !dbg !965

10:                                               ; preds = %7
  %11 = xor i32 %0, -1, !dbg !967
  call void @llvm.dbg.value(metadata i32 %11, metadata !85, metadata !DIExpression()), !dbg !968
  %12 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 1, !dbg !969
  store double 1.000000e+00, ptr %12, align 8, !dbg !970, !tbaa !529, !DIAssignID !971
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !73, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !971, metadata ptr %12, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i32 2, metadata !84, metadata !DIExpression()), !dbg !968
  %13 = icmp eq i32 %0, -2, !dbg !972
  br i1 %13, label %84, label %14, !dbg !975

14:                                               ; preds = %10
  %15 = sub nsw i32 0, %0, !dbg !975
  %16 = zext nneg i32 %15 to i64, !dbg !972
  br label %17, !dbg !975

17:                                               ; preds = %77, %14
  %18 = phi i64 [ %81, %77 ], [ 0, %14 ]
  %19 = phi i64 [ %78, %77 ], [ 2, %14 ]
  %20 = phi i64 [ %79, %77 ], [ 1, %14 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !84, metadata !DIExpression()), !dbg !968
  %21 = add nsw i64 %19, -1, !dbg !976
  %22 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %21, !dbg !978
  %23 = load double, ptr %22, align 8, !dbg !978, !tbaa !529
  %24 = fneg double %23, !dbg !979
  %25 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %19, !dbg !980
  store double %24, ptr %25, align 8, !dbg !981, !tbaa !529
  call void @llvm.dbg.value(metadata i64 %21, metadata !83, metadata !DIExpression()), !dbg !968
  %26 = icmp ugt i64 %19, 2, !dbg !982
  br i1 %26, label %27, label %77, !dbg !985

27:                                               ; preds = %17
  %28 = trunc i64 %19 to i32
  %29 = and i64 %18, 1, !dbg !985
  %30 = icmp eq i64 %29, 0, !dbg !985
  br i1 %30, label %45, label %31, !dbg !985

31:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 %20, metadata !83, metadata !DIExpression()), !dbg !968
  %32 = trunc i64 %20 to i32, !dbg !986
  %33 = sitofp i32 %32 to double, !dbg !986
  %34 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %20, !dbg !988
  %35 = load double, ptr %34, align 8, !dbg !988, !tbaa !529
  %36 = fmul double %35, %33, !dbg !989
  %37 = add nsw i64 %20, -1, !dbg !990
  %38 = trunc i64 %37 to i32, !dbg !990
  %39 = sub nsw i32 %28, %38, !dbg !991
  %40 = sitofp i32 %39 to double, !dbg !992
  %41 = and i64 %37, 4294967295
  %42 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %41, !dbg !993
  %43 = load double, ptr %42, align 8, !dbg !993, !tbaa !529
  %44 = fmul double %43, %40, !dbg !994
  %handler_result = call double @fSubHandlerDouble(double %36, double %44), !dbg !995
  store double %handler_result, ptr %34, align 8, !dbg !995, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %38, metadata !83, metadata !DIExpression()), !dbg !968
  br label %45, !dbg !985

45:                                               ; preds = %31, %27
  %46 = phi i64 [ %20, %27 ], [ %37, %31 ]
  %47 = icmp eq i64 %18, 1, !dbg !985
  br i1 %47, label %77, label %48, !dbg !985

48:                                               ; preds = %48, %45
  %49 = phi i64 [ %68, %48 ], [ %46, %45 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !83, metadata !DIExpression()), !dbg !968
  %50 = trunc i64 %49 to i32, !dbg !986
  %51 = sitofp i32 %50 to double, !dbg !986
  %52 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %49, !dbg !988
  %53 = load double, ptr %52, align 8, !dbg !988, !tbaa !529
  %54 = fmul double %53, %51, !dbg !989
  %55 = add nsw i64 %49, -1, !dbg !990
  %56 = trunc i64 %55 to i32, !dbg !990
  %57 = sub nsw i32 %28, %56, !dbg !991
  %58 = sitofp i32 %57 to double, !dbg !992
  %59 = and i64 %55, 4294967295
  %60 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %59, !dbg !993
  %61 = load double, ptr %60, align 8, !dbg !993, !tbaa !529
  %62 = fmul double %61, %58, !dbg !994
  %handler_result1 = call double @fSubHandlerDouble(double %54, double %62), !dbg !995
  store double %handler_result1, ptr %52, align 8, !dbg !995, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %56, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %55, metadata !83, metadata !DIExpression()), !dbg !968
  %63 = trunc i64 %55 to i32, !dbg !986
  %64 = sitofp i32 %63 to double, !dbg !986
  %65 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %55, !dbg !988
  %66 = load double, ptr %65, align 8, !dbg !988, !tbaa !529
  %67 = fmul double %66, %64, !dbg !989
  %68 = add nsw i64 %49, -2, !dbg !990
  %69 = trunc i64 %68 to i32, !dbg !990
  %70 = sub nsw i32 %28, %69, !dbg !991
  %71 = sitofp i32 %70 to double, !dbg !992
  %72 = and i64 %68, 4294967295
  %73 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %72, !dbg !993
  %74 = load double, ptr %73, align 8, !dbg !993, !tbaa !529
  %75 = fmul double %74, %71, !dbg !994
  %handler_result2 = call double @fSubHandlerDouble(double %67, double %75), !dbg !995
  store double %handler_result2, ptr %65, align 8, !dbg !995, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %69, metadata !83, metadata !DIExpression()), !dbg !968
  %76 = icmp sgt i64 %49, 3, !dbg !982
  br i1 %76, label %48, label %77, !dbg !985, !llvm.loop !996

77:                                               ; preds = %48, %45, %17
  %78 = add nuw nsw i64 %19, 1, !dbg !998
  call void @llvm.dbg.value(metadata i64 %78, metadata !84, metadata !DIExpression()), !dbg !968
  %79 = add nuw nsw i64 %20, 1, !dbg !975
  %80 = icmp eq i64 %78, %16, !dbg !972
  %81 = add i64 %18, 1, !dbg !975
  br i1 %80, label %82, label %17, !dbg !975, !llvm.loop !999

82:                                               ; preds = %77
  %83 = fcmp ult double %1, 0.000000e+00, !dbg !1001
  br i1 %83, label %128, label %95, !dbg !1003

84:                                               ; preds = %10
  %85 = fcmp ult double %1, 0.000000e+00, !dbg !1001
  br i1 %85, label %90, label %86, !dbg !1003

86:                                               ; preds = %84
  %87 = fneg double %1, !dbg !1004
  %88 = tail call double @exp(double noundef %87) #7, !dbg !1006
  call void @llvm.dbg.value(metadata double %88, metadata !77, metadata !DIExpression()), !dbg !968
  %89 = load double, ptr %12, align 8, !dbg !1007, !tbaa !529
  call void @llvm.dbg.value(metadata double %89, metadata !82, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i32 2, metadata !83, metadata !DIExpression()), !dbg !968
  br label %159, !dbg !1008

90:                                               ; preds = %84
  %91 = tail call double @exp(double noundef %1) #7, !dbg !1010
  call void @llvm.dbg.value(metadata double %91, metadata !77, metadata !DIExpression()), !dbg !968
  %92 = zext nneg i32 %11 to i64
  %93 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %92, !dbg !1012
  %94 = load double, ptr %93, align 8, !dbg !1012, !tbaa !529
  call void @llvm.dbg.value(metadata !DIArgList(i32 -2, i32 %0), metadata !83, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !968
  call void @llvm.dbg.value(metadata double %94, metadata !82, metadata !DIExpression()), !dbg !968
  br label %159, !dbg !1013

95:                                               ; preds = %82
  %96 = fneg double %1, !dbg !1004
  %97 = tail call double @exp(double noundef %96) #7, !dbg !1006
  call void @llvm.dbg.value(metadata double %97, metadata !77, metadata !DIExpression()), !dbg !968
  %98 = load double, ptr %12, align 8, !dbg !1007, !tbaa !529
  call void @llvm.dbg.value(metadata double %98, metadata !82, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i32 2, metadata !83, metadata !DIExpression()), !dbg !968
  br i1 %13, label %159, label %99, !dbg !1008

99:                                               ; preds = %95
  %100 = add nsw i64 %16, -2, !dbg !1008
  %101 = add nsw i64 %16, -3, !dbg !1008
  %102 = and i64 %100, 3, !dbg !1008
  %103 = icmp ult i64 %101, 3, !dbg !1008
  br i1 %103, label %144, label %104, !dbg !1008

104:                                              ; preds = %99
  %105 = and i64 %100, -4, !dbg !1008
  br label %106, !dbg !1008

106:                                              ; preds = %106, %104
  %107 = phi i64 [ 2, %104 ], [ %125, %106 ]
  %108 = phi double [ %98, %104 ], [ %handler_result6, %106 ]
  %109 = phi i64 [ 0, %104 ], [ %126, %106 ]
  call void @llvm.dbg.value(metadata i64 %107, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata double %108, metadata !82, metadata !DIExpression()), !dbg !968
  %110 = fmul double %97, %108, !dbg !1015
  %111 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %107, !dbg !1018
  %112 = load double, ptr %111, align 16, !dbg !1018, !tbaa !529
  %handler_result3 = call double @fAddHandlerDouble(double %110, double %112), !dbg !1019
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !82, metadata !DIExpression()), !dbg !968
  %113 = or disjoint i64 %107, 1, !dbg !1019
  call void @llvm.dbg.value(metadata i64 %113, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %113, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !82, metadata !DIExpression()), !dbg !968
  %114 = fmul double %97, %handler_result3, !dbg !1015
  %115 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %113, !dbg !1018
  %116 = load double, ptr %115, align 8, !dbg !1018, !tbaa !529
  %handler_result4 = call double @fAddHandlerDouble(double %114, double %116), !dbg !1019
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !82, metadata !DIExpression()), !dbg !968
  %117 = add nuw nsw i64 %107, 2, !dbg !1019
  call void @llvm.dbg.value(metadata i64 %117, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %117, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !82, metadata !DIExpression()), !dbg !968
  %118 = fmul double %97, %handler_result4, !dbg !1015
  %119 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %117, !dbg !1018
  %120 = load double, ptr %119, align 16, !dbg !1018, !tbaa !529
  %handler_result5 = call double @fAddHandlerDouble(double %118, double %120), !dbg !1019
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !82, metadata !DIExpression()), !dbg !968
  %121 = add nuw nsw i64 %107, 3, !dbg !1019
  call void @llvm.dbg.value(metadata i64 %121, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %121, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !82, metadata !DIExpression()), !dbg !968
  %122 = fmul double %97, %handler_result5, !dbg !1015
  %123 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %121, !dbg !1018
  %124 = load double, ptr %123, align 8, !dbg !1018, !tbaa !529
  %handler_result6 = call double @fAddHandlerDouble(double %122, double %124), !dbg !1019
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !82, metadata !DIExpression()), !dbg !968
  %125 = add nuw nsw i64 %107, 4, !dbg !1019
  call void @llvm.dbg.value(metadata i64 %125, metadata !83, metadata !DIExpression()), !dbg !968
  %126 = add i64 %109, 4, !dbg !1008
  %127 = icmp eq i64 %126, %105, !dbg !1008
  br i1 %127, label %144, label %106, !dbg !1008, !llvm.loop !1020

128:                                              ; preds = %82
  %129 = tail call double @exp(double noundef %1) #7, !dbg !1010
  call void @llvm.dbg.value(metadata double %129, metadata !77, metadata !DIExpression()), !dbg !968
  %130 = zext nneg i32 %11 to i64
  %131 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %130, !dbg !1012
  %132 = load double, ptr %131, align 8, !dbg !1012, !tbaa !529
  call void @llvm.dbg.value(metadata !DIArgList(i32 -2, i32 %0), metadata !83, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !968
  call void @llvm.dbg.value(metadata double %132, metadata !82, metadata !DIExpression()), !dbg !968
  br i1 %13, label %159, label %133, !dbg !1013

133:                                              ; preds = %128
  %134 = sub nuw nsw i32 -2, %0, !dbg !1022
  call void @llvm.dbg.value(metadata i32 %134, metadata !83, metadata !DIExpression()), !dbg !968
  %135 = zext nneg i32 %134 to i64, !dbg !1013
  br label %136, !dbg !1013

136:                                              ; preds = %136, %133
  %137 = phi i64 [ %135, %133 ], [ %142, %136 ]
  %138 = phi double [ %132, %133 ], [ %handler_result7, %136 ]
  call void @llvm.dbg.value(metadata i64 %137, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata double %138, metadata !82, metadata !DIExpression()), !dbg !968
  %139 = fmul double %129, %138, !dbg !1023
  %140 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %137, !dbg !1026
  %141 = load double, ptr %140, align 8, !dbg !1026, !tbaa !529
  %handler_result7 = call double @fAddHandlerDouble(double %139, double %141), !dbg !1027
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !82, metadata !DIExpression()), !dbg !968
  %142 = add nsw i64 %137, -1, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %142, metadata !83, metadata !DIExpression()), !dbg !968
  %143 = icmp ugt i64 %137, 1, !dbg !1028
  br i1 %143, label %136, label %159, !dbg !1013, !llvm.loop !1029

144:                                              ; preds = %106, %99
  %145 = phi double [ undef, %99 ], [ %handler_result6, %106 ]
  %146 = phi i64 [ 2, %99 ], [ %125, %106 ]
  %147 = phi double [ %98, %99 ], [ %handler_result6, %106 ]
  %148 = icmp eq i64 %102, 0, !dbg !1008
  br i1 %148, label %159, label %149, !dbg !1008

149:                                              ; preds = %149, %144
  %150 = phi i64 [ %156, %149 ], [ %146, %144 ]
  %151 = phi double [ %handler_result8, %149 ], [ %147, %144 ]
  %152 = phi i64 [ %157, %149 ], [ 0, %144 ]
  call void @llvm.dbg.value(metadata i64 %150, metadata !83, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata double %151, metadata !82, metadata !DIExpression()), !dbg !968
  %153 = fmul double %97, %151, !dbg !1015
  %154 = getelementptr inbounds [101 x double], ptr %4, i64 0, i64 %150, !dbg !1018
  %155 = load double, ptr %154, align 8, !dbg !1018, !tbaa !529
  %handler_result8 = call double @fAddHandlerDouble(double %153, double %155), !dbg !1019
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !82, metadata !DIExpression()), !dbg !968
  %156 = add nuw nsw i64 %150, 1, !dbg !1019
  call void @llvm.dbg.value(metadata i64 %156, metadata !83, metadata !DIExpression()), !dbg !968
  %157 = add i64 %152, 1, !dbg !1008
  %158 = icmp eq i64 %157, %102, !dbg !1008
  br i1 %158, label %159, label %149, !dbg !1008, !llvm.loop !1031

159:                                              ; preds = %149, %144, %136, %128, %95, %90, %86
  %160 = phi double [ %129, %128 ], [ %97, %95 ], [ %91, %90 ], [ %88, %86 ], [ %129, %136 ], [ %97, %149 ], [ %97, %144 ], !dbg !1033
  %161 = phi double [ %132, %128 ], [ %98, %95 ], [ %94, %90 ], [ %89, %86 ], [ %handler_result7, %136 ], [ %145, %144 ], [ %handler_result8, %149 ], !dbg !1033
  call void @llvm.dbg.value(metadata double %161, metadata !82, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata double %160, metadata !77, metadata !DIExpression()), !dbg !968
  %handler_result9 = call double @fAddHandlerDouble(double %160, double 1.000000e+00), !dbg !1034
  %162 = tail call double @gsl_sf_pow_int(double noundef %handler_result9, i32 noundef %0) #7, !dbg !1034
  call void @llvm.dbg.value(metadata double %162, metadata !81, metadata !DIExpression()), !dbg !968
  %163 = fmul double %160, %161, !dbg !1035
  %164 = fmul double %163, %162, !dbg !1036
  store double %164, ptr %2, align 8, !dbg !1037, !tbaa !324
  %165 = tail call double @llvm.fabs.f64(double %164), !dbg !1038
  %166 = fmul double %165, 0x3CC8000000000000, !dbg !1039
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1040
  store double %166, ptr %167, align 8, !dbg !1041, !tbaa !329
  br label %168

168:                                              ; preds = %159, %9
  %169 = phi i32 [ 24, %9 ], [ 0, %159 ], !dbg !1042
  call void @llvm.lifetime.end.p0(i64 808, ptr nonnull %4) #7, !dbg !1043
  br label %227, !dbg !1044

170:                                              ; preds = %3
  switch i32 %0, label %199 [
    i32 -1, label %171
    i32 0, label %193
    i32 1, label %195
    i32 2, label %197
  ], !dbg !1045

171:                                              ; preds = %170
  call void @llvm.dbg.value(metadata double %1, metadata !310, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata ptr %2, metadata !311, metadata !DIExpression()), !dbg !1046
  %172 = fcmp olt double %1, 0xC086232BDD7ABCD2, !dbg !1049
  br i1 %172, label %173, label %175, !dbg !1050

173:                                              ; preds = %171
  store double 0.000000e+00, ptr %2, align 8, !dbg !1051, !tbaa !324
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1051
  store double 0x10000000000000, ptr %174, align 8, !dbg !1051, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1218, i32 noundef 15) #7, !dbg !1052
  br label %227, !dbg !1052

175:                                              ; preds = %171
  %176 = fcmp olt double %1, 0.000000e+00, !dbg !1053
  br i1 %176, label %177, label %186, !dbg !1054

177:                                              ; preds = %175
  %178 = tail call double @exp(double noundef %1) #7, !dbg !1055
  call void @llvm.dbg.value(metadata double %178, metadata !312, metadata !DIExpression()), !dbg !1056
  %handler_result10 = call double @fAddHandlerDouble(double %178, double 1.000000e+00), !dbg !1057
  %179 = fdiv double %178, %handler_result10, !dbg !1057
  store double %179, ptr %2, align 8, !dbg !1058, !tbaa !324
  %180 = tail call double @llvm.fabs.f64(double %1), !dbg !1059
  %handler_result11 = call double @fAddHandlerDouble(double %180, double 1.000000e+00), !dbg !1060
  %181 = fmul double %handler_result11, 2.000000e+00, !dbg !1060
  %182 = fmul double %181, 0x3CB0000000000000, !dbg !1061
  %183 = tail call double @llvm.fabs.f64(double %179), !dbg !1062
  %184 = fmul double %182, %183, !dbg !1063
  %185 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1064
  store double %184, ptr %185, align 8, !dbg !1065, !tbaa !329
  br label %227

186:                                              ; preds = %175
  %187 = fneg double %1, !dbg !1066
  %188 = tail call double @exp(double noundef %187) #7, !dbg !1067
  call void @llvm.dbg.value(metadata double %188, metadata !316, metadata !DIExpression()), !dbg !1068
  %handler_result12 = call double @fAddHandlerDouble(double %188, double 1.000000e+00), !dbg !1069
  %189 = fdiv double 1.000000e+00, %handler_result12, !dbg !1069
  store double %189, ptr %2, align 8, !dbg !1070, !tbaa !324
  %handler_result13 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !1071
  %190 = fmul double %handler_result13, 0x3CC0000000000000, !dbg !1071
  %191 = fmul double %190, %188, !dbg !1072
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1073
  store double %191, ptr %192, align 8, !dbg !1074, !tbaa !329
  br label %227

193:                                              ; preds = %170
  %194 = tail call i32 @gsl_sf_fermi_dirac_0_e(double noundef %1, ptr noundef %2), !dbg !1075, !range !1077
  br label %227, !dbg !1078

195:                                              ; preds = %170
  %196 = tail call i32 @gsl_sf_fermi_dirac_1_e(double noundef %1, ptr noundef %2), !dbg !1079, !range !1081
  br label %227, !dbg !1082

197:                                              ; preds = %170
  %198 = tail call i32 @gsl_sf_fermi_dirac_2_e(double noundef %1, ptr noundef %2), !dbg !1083, !range !1081
  br label %227, !dbg !1085

199:                                              ; preds = %170
  %200 = fcmp olt double %1, 0.000000e+00, !dbg !1086
  br i1 %200, label %201, label %204, !dbg !1087

201:                                              ; preds = %199
  %202 = sitofp i32 %0 to double, !dbg !1088
  %203 = tail call fastcc i32 @fd_neg(double noundef %202, double noundef %1, ptr noundef %2), !dbg !1090, !range !1091
  br label %227, !dbg !1092

204:                                              ; preds = %199
  %205 = fcmp oeq double %1, 0.000000e+00, !dbg !1093
  br i1 %205, label %206, label %209, !dbg !1094

206:                                              ; preds = %204
  %207 = add nuw nsw i32 %0, 1, !dbg !1095
  %208 = tail call i32 @gsl_sf_eta_int_e(i32 noundef %207, ptr noundef %2) #7, !dbg !1097
  br label %227, !dbg !1098

209:                                              ; preds = %204
  %210 = fcmp olt double %1, 1.500000e+00, !dbg !1099
  br i1 %210, label %211, label %212, !dbg !1100

211:                                              ; preds = %209
  tail call fastcc void @fd_series_int(i32 noundef %0, double noundef %1, ptr noundef %2), !dbg !1101
  br label %227, !dbg !1103

212:                                              ; preds = %209
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1104
  %213 = sitofp i32 %0 to double, !dbg !1105
  %214 = call fastcc i32 @fd_asymp(double noundef %213, double noundef %1, ptr noundef nonnull %5), !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %214, metadata !950, metadata !DIExpression()), !dbg !953
  %215 = icmp eq i32 %214, 0, !dbg !1107
  br i1 %215, label %216, label %223, !dbg !1109

216:                                              ; preds = %212
  %217 = load double, ptr %5, align 8, !dbg !1110, !tbaa !324
  store double %217, ptr %2, align 8, !dbg !1112, !tbaa !324
  %218 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1113
  %219 = load double, ptr %218, align 8, !dbg !1113, !tbaa !329
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1114
  %221 = tail call double @llvm.fabs.f64(double %217), !dbg !1115
  %222 = fmul double %221, 0x3CC0000000000000, !dbg !1116
  %handler_result14 = call double @fAddHandlerDouble(double %219, double %222), !dbg !1117
  store double %handler_result14, ptr %220, align 8, !dbg !1117, !tbaa !329
  br label %225, !dbg !1118

223:                                              ; preds = %212
  %224 = tail call fastcc i32 @fd_UMseries_int(i32 noundef %0, double noundef %1, ptr noundef %2), !dbg !1119
  br label %225, !dbg !1121

225:                                              ; preds = %223, %216
  %226 = phi i32 [ 0, %216 ], [ %224, %223 ], !dbg !1122
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1123
  br label %227

227:                                              ; preds = %225, %211, %206, %201, %197, %195, %193, %186, %177, %173, %168
  %228 = phi i32 [ %169, %168 ], [ %194, %193 ], [ %196, %195 ], [ %198, %197 ], [ %203, %201 ], [ %208, %206 ], [ 0, %211 ], [ %226, %225 ], [ 15, %173 ], [ 0, %177 ], [ 0, %186 ], !dbg !1124
  ret i32 %228, !dbg !1125
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @fd_neg(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !90 {
  %4 = alloca [101 x double], align 16, !DIAssignID !1126
  call void @llvm.dbg.assign(metadata i1 undef, metadata !97, metadata !DIExpression(), metadata !1126, metadata ptr %4, metadata !DIExpression()), !dbg !1127
  %5 = alloca [101 x double], align 16, !DIAssignID !1128
  call void @llvm.dbg.assign(metadata i1 undef, metadata !98, metadata !DIExpression(), metadata !1128, metadata ptr %5, metadata !DIExpression()), !dbg !1127
  tail call void @llvm.dbg.value(metadata double %0, metadata !94, metadata !DIExpression()), !dbg !1127
  tail call void @llvm.dbg.value(metadata double %1, metadata !95, metadata !DIExpression()), !dbg !1127
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !96, metadata !DIExpression()), !dbg !1127
  call void @llvm.lifetime.start.p0(i64 808, ptr nonnull %4) #7, !dbg !1129
  call void @llvm.lifetime.start.p0(i64 808, ptr nonnull %5) #7, !dbg !1129
  %6 = fcmp olt double %1, 0xC086232BDD7ABCD2, !dbg !1130
  br i1 %6, label %7, label %8, !dbg !1131

7:                                                ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1132
  br label %102, !dbg !1134

8:                                                ; preds = %3
  %9 = fcmp olt double %1, -1.000000e+00, !dbg !1135
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1136
  br i1 %9, label %10, label %36, !dbg !1136

10:                                               ; preds = %8
  %11 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !1137
  %12 = fneg double %11, !dbg !1138
  %13 = fcmp ogt double %12, %1, !dbg !1139
  br i1 %13, label %14, label %36, !dbg !1140

14:                                               ; preds = %10
  %15 = tail call double @exp(double noundef %1) #7, !dbg !1141
  tail call void @llvm.dbg.value(metadata double %15, metadata !99, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %15, metadata !103, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %15, metadata !104, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata i32 2, metadata !105, metadata !DIExpression()), !dbg !1142
  %16 = fneg double %15
  br label %17, !dbg !1143

17:                                               ; preds = %17, %14
  %18 = phi double [ %15, %14 ], [ %25, %17 ]
  %19 = phi double [ %15, %14 ], [ %handler_result2, %17 ]
  %20 = phi i32 [ 2, %14 ], [ %29, %17 ]
  tail call void @llvm.dbg.value(metadata double %18, metadata !103, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %19, metadata !104, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !105, metadata !DIExpression()), !dbg !1142
  %21 = sitofp i32 %20 to double, !dbg !1144
  %handler_result1 = call double @fAddHandlerDouble(double %21, double -1.000000e+00), !dbg !1145
  %22 = fdiv double %handler_result1, %21, !dbg !1145
  tail call void @llvm.dbg.value(metadata double %22, metadata !106, metadata !DIExpression()), !dbg !1146
  %23 = tail call double @pow(double noundef %22, double noundef %handler_result) #7, !dbg !1147
  tail call void @llvm.dbg.value(metadata double %23, metadata !110, metadata !DIExpression()), !dbg !1146
  %24 = fmul double %23, %16, !dbg !1148
  %25 = fmul double %18, %24, !dbg !1149
  tail call void @llvm.dbg.value(metadata double %25, metadata !103, metadata !DIExpression()), !dbg !1142
  %handler_result2 = call double @fAddHandlerDouble(double %19, double %25), !dbg !1150
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !104, metadata !DIExpression()), !dbg !1142
  %26 = fdiv double %25, %handler_result2, !dbg !1150
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !1152
  %28 = fcmp olt double %27, 0x3CB0000000000000, !dbg !1153
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !105, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1142
  %29 = add nuw nsw i32 %20, 1
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !105, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %25, metadata !103, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !104, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !105, metadata !DIExpression()), !dbg !1142
  %30 = icmp eq i32 %29, 100
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %17, !llvm.loop !1154

32:                                               ; preds = %17
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !104, metadata !DIExpression()), !dbg !1142
  store double %handler_result2, ptr %2, align 8, !dbg !1156, !tbaa !324
  %33 = tail call double @llvm.fabs.f64(double %handler_result2), !dbg !1157
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !1158
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1159
  store double %34, ptr %35, align 8, !dbg !1160, !tbaa !329
  br label %102

36:                                               ; preds = %10, %8
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !111, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %1, metadata !113, metadata !DIExpression()), !dbg !1161
  %37 = tail call double @exp(double noundef %1) #7, !dbg !1162
  %38 = fneg double %37, !dbg !1163
  tail call void @llvm.dbg.value(metadata double %38, metadata !114, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %37, metadata !115, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !116, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !111, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double undef, metadata !117, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %1, metadata !113, metadata !DIExpression()), !dbg !1161
  br label %45, !dbg !1164

39:                                               ; preds = %86
  %40 = fmul double %47, %38, !dbg !1165
  tail call void @llvm.dbg.value(metadata double %89, metadata !116, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !111, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !118, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %49, metadata !117, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %40, metadata !115, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !113, metadata !DIExpression()), !dbg !1161
  %41 = icmp eq i64 %51, 101, !dbg !1167
  br i1 %41, label %42, label %45, !dbg !1164, !llvm.loop !1168

42:                                               ; preds = %39
  tail call void @llvm.dbg.value(metadata double %89, metadata !116, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %49, metadata !117, metadata !DIExpression()), !dbg !1161
  store double %89, ptr %2, align 8, !dbg !1170, !tbaa !324
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1171
  %44 = fmul double %91, 0x3CC0000000000000, !dbg !1172
  %handler_result3 = call double @fAddHandlerDouble(double %44, double %90), !dbg !1173
  store double %handler_result3, ptr %43, align 8, !dbg !1173, !tbaa !329
  br label %102, !dbg !1174

45:                                               ; preds = %39, %36
  %46 = phi i64 [ 0, %36 ], [ %51, %39 ]
  %47 = phi double [ %37, %36 ], [ %40, %39 ]
  %48 = phi double [ %1, %36 ], [ %handler_result8, %39 ]
  %49 = phi double [ 0.000000e+00, %36 ], [ %89, %39 ]
  %50 = phi double [ 0.000000e+00, %36 ], [ %handler_result4, %39 ]
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !118, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %47, metadata !115, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %48, metadata !113, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %49, metadata !116, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %50, metadata !111, metadata !DIExpression()), !dbg !1161
  %51 = add nuw nsw i64 %46, 1, !dbg !1175
  %52 = trunc i64 %51 to i32, !dbg !1175
  %53 = sitofp i32 %52 to double, !dbg !1175
  %54 = tail call double @pow(double noundef %53, double noundef %handler_result) #7, !dbg !1176
  tail call void @llvm.dbg.value(metadata double %54, metadata !119, metadata !DIExpression()), !dbg !1177
  %55 = fdiv double %47, %54, !dbg !1178
  tail call void @llvm.dbg.value(metadata double %55, metadata !123, metadata !DIExpression()), !dbg !1177
  tail call void @llvm.dbg.value(metadata double %49, metadata !117, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %55, metadata !1179, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1184, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1185, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1186, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1187, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1188, metadata !DIExpression()), !dbg !1198
  %56 = icmp eq i64 %46, 0, !dbg !1200
  %57 = select i1 %56, double 0.000000e+00, double %50, !dbg !1202
  %handler_result4 = call double @fAddHandlerDouble(double %57, double %55), !dbg !1203
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !111, metadata !DIExpression()), !dbg !1161
  %58 = trunc i64 %46 to i32, !dbg !1203
  %59 = sitofp i32 %58 to double, !dbg !1203
  %handler_result5 = call double @fAddHandlerDouble(double %59, double 1.000000e+00), !dbg !1204
  %60 = fmul double %handler_result5, %55, !dbg !1204
  %61 = fmul double %handler_result5, %60, !dbg !1205
  %62 = fdiv double 1.000000e+00, %61, !dbg !1206
  %63 = getelementptr inbounds double, ptr %5, i64 %46, !dbg !1207
  store double %62, ptr %63, align 8, !dbg !1208, !tbaa !529
  %64 = fmul double %handler_result4, %62, !dbg !1209
  %65 = getelementptr inbounds double, ptr %4, i64 %46, !dbg !1210
  store double %64, ptr %65, align 8, !dbg !1211, !tbaa !529
  br i1 %56, label %86, label %66, !dbg !1212

66:                                               ; preds = %45
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1189, metadata !DIExpression()), !dbg !1213
  %67 = fdiv double %59, %handler_result5, !dbg !1214
  tail call void @llvm.dbg.value(metadata double %67, metadata !1192, metadata !DIExpression()), !dbg !1213
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1213
  br label %68, !dbg !1215

68:                                               ; preds = %68, %66
  %69 = phi double [ %64, %66 ], [ %handler_result7, %68 ], !dbg !1216
  %70 = phi double [ %62, %66 ], [ %handler_result6, %68 ], !dbg !1217
  %71 = phi i64 [ %46, %66 ], [ %73, %68 ]
  %72 = phi double [ 1.000000e+00, %66 ], [ %78, %68 ]
  tail call void @llvm.dbg.value(metadata double %72, metadata !1189, metadata !DIExpression()), !dbg !1213
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !1193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1213
  %73 = add nsw i64 %71, -1, !dbg !1218
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !1193, metadata !DIExpression()), !dbg !1213
  %74 = trunc i64 %71 to i32, !dbg !1219
  %75 = sitofp i32 %74 to double, !dbg !1219
  %76 = fmul double %72, %75, !dbg !1220
  %77 = fdiv double %76, %handler_result5, !dbg !1221
  tail call void @llvm.dbg.value(metadata double %77, metadata !1194, metadata !DIExpression()), !dbg !1222
  %78 = fmul double %67, %72, !dbg !1223
  tail call void @llvm.dbg.value(metadata double %78, metadata !1189, metadata !DIExpression()), !dbg !1213
  %79 = getelementptr inbounds double, ptr %5, i64 %73, !dbg !1224
  %80 = load double, ptr %79, align 8, !dbg !1224, !tbaa !529
  %81 = fmul double %80, %77, !dbg !1225
  %handler_result6 = call double @fSubHandlerDouble(double %70, double %81), !dbg !1226
  store double %handler_result6, ptr %79, align 8, !dbg !1226, !tbaa !529
  %82 = getelementptr inbounds double, ptr %4, i64 %73, !dbg !1227
  %83 = load double, ptr %82, align 8, !dbg !1227, !tbaa !529
  %84 = fmul double %77, %83, !dbg !1228
  %handler_result7 = call double @fSubHandlerDouble(double %69, double %84), !dbg !1229
  store double %handler_result7, ptr %82, align 8, !dbg !1229, !tbaa !529
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !1193, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1213
  %85 = icmp ugt i64 %71, 1, !dbg !1230
  br i1 %85, label %68, label %86, !dbg !1215, !llvm.loop !1231

86:                                               ; preds = %68, %45
  %87 = load double, ptr %4, align 16, !dbg !1233, !tbaa !529
  %88 = load double, ptr %5, align 16, !dbg !1234, !tbaa !529
  %89 = fdiv double %87, %88, !dbg !1235
  tail call void @llvm.dbg.value(metadata double %89, metadata !116, metadata !DIExpression()), !dbg !1161
  %handler_result8 = call double @fAddHandlerDouble(double %48, double %1), !dbg !1236
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !113, metadata !DIExpression()), !dbg !1161
  %handler_result9 = call double @fSubHandlerDouble(double %89, double %49), !dbg !1237
  %90 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !1237
  %91 = tail call double @llvm.fabs.f64(double %89), !dbg !1238
  %92 = fmul double %91, 2.000000e+00, !dbg !1239
  %93 = fmul double %92, 0x3CB0000000000000, !dbg !1240
  %94 = fcmp olt double %90, %93, !dbg !1241
  %95 = fcmp olt double %handler_result8, 0xC086232BDD7ABCD2
  %96 = select i1 %94, i1 true, i1 %95, !dbg !1165
  tail call void @llvm.dbg.value(metadata double poison, metadata !115, metadata !DIExpression()), !dbg !1161
  br i1 %96, label %97, label %39, !llvm.loop !1168

97:                                               ; preds = %86
  tail call void @llvm.dbg.value(metadata double %89, metadata !116, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %49, metadata !117, metadata !DIExpression()), !dbg !1161
  store double %89, ptr %2, align 8, !dbg !1170, !tbaa !324
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1171
  %99 = fmul double %91, 0x3CC0000000000000, !dbg !1172
  %handler_result10 = call double @fAddHandlerDouble(double %99, double %90), !dbg !1173
  store double %handler_result10, ptr %98, align 8, !dbg !1173, !tbaa !329
  %100 = icmp eq i32 %58, 100, !dbg !1242
  br i1 %100, label %101, label %102, !dbg !1174

101:                                              ; preds = %97
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 968, i32 noundef 11) #7, !dbg !1244
  br label %102, !dbg !1244

102:                                              ; preds = %101, %97, %42, %32, %7
  %103 = phi i32 [ 0, %7 ], [ 0, %32 ], [ 11, %101 ], [ 0, %97 ], [ 0, %42 ], !dbg !1246
  call void @llvm.lifetime.end.p0(i64 808, ptr nonnull %5) #7, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 808, ptr nonnull %4) #7, !dbg !1247
  ret i32 %103, !dbg !1247
}

declare !dbg !1248 i32 @gsl_sf_eta_int_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @fd_series_int(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !1252 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1262, metadata !DIExpression(), metadata !1269, metadata ptr %4, metadata !DIExpression()), !dbg !1270
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1271
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1266, metadata !DIExpression(), metadata !1271, metadata ptr %5, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1255, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata double %1, metadata !1256, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1257, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1259, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1261, metadata !DIExpression()), !dbg !1270
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1273
  %6 = add nuw nsw i32 %0, 1, !dbg !1274
  %7 = call i32 @gsl_sf_eta_int_e(i32 noundef %6, ptr noundef nonnull %4) #7, !dbg !1275
  %8 = load double, ptr %4, align 8, !dbg !1276, !tbaa !324
  tail call void @llvm.dbg.value(metadata double %8, metadata !1260, metadata !DIExpression()), !dbg !1270
  %handler_result = call double @fAddHandlerDouble(double %8, double 0.000000e+00)
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1259, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1258, metadata !DIExpression()), !dbg !1270
  %9 = add i32 %0, 2
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1258, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1261, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1259, metadata !DIExpression()), !dbg !1270
  %10 = icmp slt i32 %0, -1, !dbg !1277
  br i1 %10, label %32, label %11, !dbg !1280

11:                                               ; preds = %3
  %12 = call i32 @llvm.smax.i32(i32 %9, i32 1), !dbg !1280
  br label %13, !dbg !1280

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 1, %11 ], [ %27, %13 ]
  %15 = phi double [ 1.000000e+00, %11 ], [ %21, %13 ]
  %16 = phi double [ %handler_result, %11 ], [ %handler_result1, %13 ]
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1258, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata double %15, metadata !1261, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata double %16, metadata !1259, metadata !DIExpression()), !dbg !1270
  %17 = sub nsw i32 %6, %14, !dbg !1281
  %18 = call i32 @gsl_sf_eta_int_e(i32 noundef %17, ptr noundef nonnull %4) #7, !dbg !1283
  %19 = sitofp i32 %14 to double, !dbg !1284
  %20 = fdiv double %1, %19, !dbg !1285
  %21 = fmul double %15, %20, !dbg !1286
  tail call void @llvm.dbg.value(metadata double %21, metadata !1261, metadata !DIExpression()), !dbg !1270
  %22 = load double, ptr %4, align 8, !dbg !1287, !tbaa !324
  %23 = fmul double %21, %22, !dbg !1288
  tail call void @llvm.dbg.value(metadata double %23, metadata !1260, metadata !DIExpression()), !dbg !1270
  %handler_result1 = call double @fAddHandlerDouble(double %16, double %23), !dbg !1289
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1259, metadata !DIExpression()), !dbg !1270
  %24 = fdiv double %23, %handler_result1, !dbg !1289
  %25 = call double @llvm.fabs.f64(double %24), !dbg !1291
  %26 = fcmp olt double %25, 0x3CB0000000000000, !dbg !1292
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1258, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1270
  %27 = add nuw i32 %14, 1
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !1258, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata double %21, metadata !1261, metadata !DIExpression()), !dbg !1270
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1259, metadata !DIExpression()), !dbg !1270
  %28 = icmp eq i32 %14, %12
  %29 = or i1 %26, %28, !dbg !1293
  br i1 %29, label %30, label %13, !dbg !1293, !llvm.loop !1294

30:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1259, metadata !DIExpression()), !dbg !1270
  %31 = icmp slt i32 %0, 32, !dbg !1296
  br i1 %31, label %32, label %70, !dbg !1297

32:                                               ; preds = %30, %3
  %33 = phi double [ %handler_result1, %30 ], [ %handler_result, %3 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1298
  %34 = call i32 @gsl_sf_fact_e(i32 noundef %0, ptr noundef nonnull %5) #7, !dbg !1299
  %35 = call double @gsl_sf_pow_int(double noundef %1, i32 noundef %0) #7, !dbg !1300
  %36 = load double, ptr %5, align 8, !dbg !1301, !tbaa !324
  tail call void @llvm.dbg.value(metadata double %68, metadata !1268, metadata !DIExpression()), !dbg !1272
  %37 = call i32 @gsl_sf_eta_int_e(i32 noundef -3, ptr noundef nonnull %4) #7, !dbg !1302
  %38 = fmul double %1, %1, !dbg !1303
  %39 = fmul double %38, %1, !dbg !1304
  %40 = fmul double %39, %1, !dbg !1305
  %41 = add nuw nsw i32 %0, 4, !dbg !1306
  %42 = add nuw nsw i32 %0, 3, !dbg !1307
  %43 = mul nuw nsw i32 %41, %42, !dbg !1308
  %44 = mul nsw i32 %43, %9, !dbg !1309
  %45 = mul nsw i32 %44, %6, !dbg !1310
  %46 = sitofp i32 %45 to double, !dbg !1311
  %47 = fdiv double %40, %46, !dbg !1312
  tail call void @llvm.dbg.value(metadata double %47, metadata !1261, metadata !DIExpression()), !dbg !1270
  %48 = load double, ptr %4, align 8, !dbg !1313, !tbaa !324
  %49 = fmul double %47, %48, !dbg !1314
  tail call void @llvm.dbg.value(metadata double %49, metadata !1267, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 3, metadata !1263, metadata !DIExpression()), !dbg !1272
  br label %50, !dbg !1315

50:                                               ; preds = %50, %32
  %51 = phi double [ %49, %32 ], [ %handler_result2, %50 ]
  %52 = phi i32 [ 3, %32 ], [ %65, %50 ]
  %53 = phi double [ %47, %32 ], [ %62, %50 ]
  tail call void @llvm.dbg.value(metadata double %51, metadata !1267, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata i32 %52, metadata !1263, metadata !DIExpression()), !dbg !1272
  tail call void @llvm.dbg.value(metadata double %53, metadata !1261, metadata !DIExpression()), !dbg !1270
  %54 = shl nuw nsw i32 %52, 1, !dbg !1317
  %55 = sub nsw i32 1, %54, !dbg !1320
  %56 = call i32 @gsl_sf_eta_int_e(i32 noundef %55, ptr noundef nonnull %4) #7, !dbg !1321
  %57 = add nsw i32 %54, %0, !dbg !1322
  %58 = add nsw i32 %57, -1, !dbg !1323
  %59 = mul nsw i32 %58, %57, !dbg !1324
  %60 = sitofp i32 %59 to double, !dbg !1325
  %61 = fdiv double %38, %60, !dbg !1326
  %62 = fmul double %53, %61, !dbg !1327
  tail call void @llvm.dbg.value(metadata double %62, metadata !1261, metadata !DIExpression()), !dbg !1270
  %63 = load double, ptr %4, align 8, !dbg !1328, !tbaa !324
  %64 = fmul double %62, %63, !dbg !1329
  %handler_result2 = call double @fAddHandlerDouble(double %51, double %64), !dbg !1330
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1267, metadata !DIExpression()), !dbg !1272
  %65 = add nuw nsw i32 %52, 1, !dbg !1330
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !1263, metadata !DIExpression()), !dbg !1272
  %66 = icmp eq i32 %65, 24, !dbg !1331
  br i1 %66, label %67, label %50, !dbg !1315, !llvm.loop !1332

67:                                               ; preds = %50
  %68 = fdiv double %35, %36, !dbg !1334
  %69 = fmul double %68, %handler_result2, !dbg !1335
  %handler_result3 = call double @fAddHandlerDouble(double %33, double %69), !dbg !1336
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1259, metadata !DIExpression()), !dbg !1270
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1336
  br label %70, !dbg !1337

70:                                               ; preds = %67, %30
  %71 = phi double [ %handler_result3, %67 ], [ %handler_result1, %30 ], !dbg !1270
  tail call void @llvm.dbg.value(metadata double %71, metadata !1259, metadata !DIExpression()), !dbg !1270
  store double %71, ptr %2, align 8, !dbg !1338, !tbaa !324
  %72 = call double @llvm.fabs.f64(double %71), !dbg !1339
  %73 = fmul double %72, 0x3CC0000000000000, !dbg !1340
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1341
  store double %73, ptr %74, align 8, !dbg !1342, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1343
  ret void, !dbg !1344
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fd_asymp(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !dbg !1345 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1352, metadata !DIExpression(), metadata !1374, metadata ptr %4, metadata !DIExpression()), !dbg !1375
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1363, metadata !DIExpression(), metadata !1376, metadata ptr %5, metadata !DIExpression()), !dbg !1375
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1377
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1365, metadata !DIExpression(), metadata !1377, metadata ptr %6, metadata !DIExpression()), !dbg !1375
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1378
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1373, metadata !DIExpression(), metadata !1378, metadata ptr %7, metadata !DIExpression()), !dbg !1379
  tail call void @llvm.dbg.value(metadata double %0, metadata !1347, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %1, metadata !1348, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1349, metadata !DIExpression()), !dbg !1375
  %handler_result = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !1380
  %8 = tail call double @llvm.floor.f64(double %handler_result), !dbg !1380
  %handler_result1 = call double @fSubHandlerDouble(double %0, double %8), !dbg !1381
  %9 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !1381
  %10 = fcmp olt double %9, 0x3D19000000000000, !dbg !1382
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1350, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1375
  tail call void @llvm.dbg.value(metadata i32 200, metadata !1351, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1383
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !1384
  %11 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result2, ptr noundef nonnull %4) #7, !dbg !1384
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1353, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1354, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1355, metadata !DIExpression()), !dbg !1375
  %12 = fdiv double 1.000000e+00, %1, !dbg !1385
  %13 = fdiv double %12, %1, !dbg !1386
  tail call void @llvm.dbg.value(metadata double %13, metadata !1356, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1357, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !1358, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1387
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1388
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1368, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !1354, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1355, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1357, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, metadata !1358, metadata !DIExpression()), !dbg !1375
  %handler_result3 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1389
  br label %14, !dbg !1389

14:                                               ; preds = %43, %3
  %15 = phi double [ 5.000000e-01, %3 ], [ %handler_result6, %43 ]
  %16 = phi i32 [ 1, %3 ], [ %46, %43 ]
  %17 = phi double [ 0.000000e+00, %3 ], [ %handler_result7, %43 ]
  %18 = phi double [ 1.000000e+00, %3 ], [ %28, %43 ]
  %19 = phi double [ 0x7FEFFFFFFFFFFFFF, %3 ], [ %30, %43 ]
  tail call void @llvm.dbg.value(metadata double %15, metadata !1354, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1368, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %17, metadata !1355, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %18, metadata !1357, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %19, metadata !1358, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %19, metadata !1369, metadata !DIExpression()), !dbg !1379
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1390
  %20 = shl nuw nsw i32 %16, 1, !dbg !1391
  %21 = call i32 @gsl_sf_eta_int_e(i32 noundef %20, ptr noundef nonnull %7) #7, !dbg !1392
  %22 = fmul double %13, %18, !dbg !1393
  %23 = add nsw i32 %20, -2, !dbg !1394
  %24 = sitofp i32 %23 to double, !dbg !1395
  %handler_result4 = call double @fSubHandlerDouble(double %handler_result3, double %24), !dbg !1396
  %25 = fmul double %22, %handler_result4, !dbg !1396
  %26 = add nsw i32 %20, -1, !dbg !1397
  %27 = sitofp i32 %26 to double, !dbg !1398
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result3, double %27), !dbg !1399
  %28 = fmul double %handler_result5, %25, !dbg !1399
  tail call void @llvm.dbg.value(metadata double %28, metadata !1357, metadata !DIExpression()), !dbg !1375
  %29 = load double, ptr %7, align 8, !dbg !1400, !tbaa !324
  %30 = fmul double %28, %29, !dbg !1401
  tail call void @llvm.dbg.value(metadata double %30, metadata !1358, metadata !DIExpression()), !dbg !1375
  br i1 %10, label %35, label %31, !dbg !1402

31:                                               ; preds = %14
  %32 = call double @llvm.fabs.f64(double %30), !dbg !1404
  %33 = call double @llvm.fabs.f64(double %19), !dbg !1405
  %34 = fcmp ogt double %32, %33, !dbg !1406
  br i1 %34, label %41, label %35, !dbg !1407

35:                                               ; preds = %31, %14
  %36 = fdiv double %30, %15, !dbg !1408
  %37 = call double @llvm.fabs.f64(double %36), !dbg !1410
  %38 = fcmp olt double %37, 0x3CB0000000000000, !dbg !1411
  br i1 %38, label %39, label %43, !dbg !1412

39:                                               ; preds = %35
  %40 = call double @llvm.fabs.f64(double %30), !dbg !1413
  br label %41, !dbg !1412

41:                                               ; preds = %39, %31
  %42 = phi double [ %40, %39 ], [ %32, %31 ], !dbg !1413
  tail call void @llvm.dbg.value(metadata double %15, metadata !1354, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %17, metadata !1355, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1414
  br label %48

43:                                               ; preds = %35
  %handler_result6 = call double @fAddHandlerDouble(double %15, double %30), !dbg !1415
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1354, metadata !DIExpression()), !dbg !1375
  %44 = call double @llvm.fabs.f64(double %30), !dbg !1415
  %45 = fmul double %44, 0x3CC0000000000000, !dbg !1416
  %handler_result7 = call double @fAddHandlerDouble(double %17, double %45), !dbg !1414
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1355, metadata !DIExpression()), !dbg !1375
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1414
  %46 = add nuw nsw i32 %16, 1, !dbg !1417
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !1368, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %28, metadata !1357, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %30, metadata !1358, metadata !DIExpression()), !dbg !1375
  %47 = icmp eq i32 %46, 201, !dbg !1418
  br i1 %47, label %48, label %14, !dbg !1389, !llvm.loop !1419

48:                                               ; preds = %43, %41
  %49 = phi double [ %42, %41 ], [ %44, %43 ], !dbg !1413
  %50 = phi double [ %17, %41 ], [ %handler_result7, %43 ]
  %51 = phi double [ %15, %41 ], [ %handler_result6, %43 ]
  tail call void @llvm.dbg.value(metadata double %51, metadata !1354, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %50, metadata !1355, metadata !DIExpression()), !dbg !1375
  tail call void @llvm.dbg.value(metadata double %30, metadata !1358, metadata !DIExpression()), !dbg !1375
  %handler_result8 = call double @fAddHandlerDouble(double %50, double %49), !dbg !1421
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1355, metadata !DIExpression()), !dbg !1375
  %52 = fneg double %1, !dbg !1421
  %53 = call fastcc i32 @fd_neg(double noundef %0, double noundef %52, ptr noundef nonnull %5), !dbg !1422, !range !1091
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1366, metadata !DIExpression()), !dbg !1375
  %handler_result16 = call double @callHandler(i32 12, double %1, double %1), !dbg !1423
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !1360, metadata !DIExpression()), !dbg !1375
  %54 = fmul double %handler_result3, %handler_result16, !dbg !1423
  tail call void @llvm.dbg.value(metadata double %54, metadata !1361, metadata !DIExpression()), !dbg !1375
  %55 = load double, ptr %4, align 8, !dbg !1424, !tbaa !324
  tail call void @llvm.dbg.value(metadata double %55, metadata !1362, metadata !DIExpression()), !dbg !1375
  %handler_result9 = call double @fSubHandlerDouble(double %54, double %55), !dbg !1425
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1375
  %56 = call double @llvm.fabs.f64(double %54), !dbg !1425
  %57 = call double @llvm.fabs.f64(double %55), !dbg !1426
  %handler_result10 = call double @fAddHandlerDouble(double %56, double %57), !dbg !1427
  %58 = fmul double %handler_result10, 0x3CB0000000000000, !dbg !1427
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1428
  %60 = load double, ptr %59, align 8, !dbg !1428, !tbaa !329
  %handler_result11 = call double @fAddHandlerDouble(double %60, double %58), !dbg !1429
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1364, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1375
  %61 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result9, double noundef %handler_result11, ptr noundef nonnull %6) #7, !dbg !1429
  tail call void @llvm.dbg.value(metadata i32 %61, metadata !1367, metadata !DIExpression()), !dbg !1375
  %62 = fmul double %0, 0x400921FB54442D18, !dbg !1430
  %handler_result17 = call double @callHandler(i32 2, double %62, double %62), !dbg !1431
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !1359, metadata !DIExpression()), !dbg !1375
  %63 = load double, ptr %5, align 8, !dbg !1431, !tbaa !324
  %64 = fmul double %handler_result17, %63, !dbg !1432
  %65 = fmul double %51, 2.000000e+00, !dbg !1433
  %66 = load double, ptr %6, align 8, !dbg !1434, !tbaa !324
  %67 = fmul double %65, %66, !dbg !1435
  %handler_result12 = call double @fAddHandlerDouble(double %64, double %67), !dbg !1436
  store double %handler_result12, ptr %2, align 8, !dbg !1436, !tbaa !324
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1437
  %69 = load double, ptr %68, align 8, !dbg !1437, !tbaa !329
  %70 = fmul double %69, 2.000000e+00, !dbg !1438
  %71 = fmul double %51, %70, !dbg !1439
  %72 = call double @llvm.fabs.f64(double %71), !dbg !1440
  %73 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1441
  %74 = fmul double %66, 2.000000e+00, !dbg !1442
  %75 = fmul double %handler_result8, %74, !dbg !1443
  %76 = call double @llvm.fabs.f64(double %75), !dbg !1444
  %handler_result13 = call double @fAddHandlerDouble(double %76, double %72), !dbg !1445
  %77 = call double @llvm.fabs.f64(double %handler_result17), !dbg !1445
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1446
  %79 = load double, ptr %78, align 8, !dbg !1446, !tbaa !329
  %80 = fmul double %77, %79, !dbg !1447
  %handler_result14 = call double @fAddHandlerDouble(double %80, double %handler_result13), !dbg !1448
  %81 = call double @llvm.fabs.f64(double %handler_result12), !dbg !1448
  %82 = fmul double %81, 0x3CD0000000000000, !dbg !1449
  %handler_result15 = call double @fAddHandlerDouble(double %82, double %handler_result14), !dbg !1450
  store double %handler_result15, ptr %73, align 8, !dbg !1450, !tbaa !329
  %83 = icmp eq i32 %61, 0, !dbg !1451
  %84 = icmp eq i32 %53, 0, !dbg !1451
  %85 = select i1 %84, i32 %11, i32 %53, !dbg !1451
  %86 = select i1 %83, i32 %85, i32 %61, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1452
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1452
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1452
  ret i32 %86, !dbg !1453
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fd_UMseries_int(i32 noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !1454 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1496
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1474, metadata !DIExpression(), metadata !1496, metadata ptr %4, metadata !DIExpression()), !dbg !1497
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1498
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1477, metadata !DIExpression(), metadata !1498, metadata ptr %5, metadata !DIExpression()), !dbg !1499
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1500
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1483, metadata !DIExpression(), metadata !1500, metadata ptr %6, metadata !DIExpression()), !dbg !1501
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1502
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1484, metadata !DIExpression(), metadata !1502, metadata ptr %7, metadata !DIExpression()), !dbg !1501
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1503
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1492, metadata !DIExpression(), metadata !1503, metadata ptr %8, metadata !DIExpression()), !dbg !1504
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1505
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1493, metadata !DIExpression(), metadata !1505, metadata ptr %9, metadata !DIExpression()), !dbg !1504
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1456, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %1, metadata !1457, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1458, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 2000, metadata !1459, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1463, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1464, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1465, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1466, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1469, metadata !DIExpression()), !dbg !1506
  %10 = fcmp olt double %1, 5.000000e+02, !dbg !1507
  %11 = icmp slt i32 %0, 80
  %12 = and i1 %11, %10, !dbg !1508
  br i1 %12, label %13, label %20, !dbg !1508

13:                                               ; preds = %3
  %14 = add nuw nsw i32 %0, 1, !dbg !1509
  %15 = tail call double @gsl_sf_pow_int(double noundef %1, i32 noundef %14) #7, !dbg !1510
  tail call void @llvm.dbg.value(metadata double %15, metadata !1471, metadata !DIExpression()), !dbg !1497
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1511
  %16 = call i32 @gsl_sf_fact_e(i32 noundef %14, ptr noundef nonnull %4) #7, !dbg !1512
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1461, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1462, metadata !DIExpression()), !dbg !1506
  %17 = load double, ptr %4, align 8, !dbg !1513, !tbaa !324
  %18 = fdiv double %15, %17, !dbg !1514
  tail call void @llvm.dbg.value(metadata double %18, metadata !1460, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1515
  %19 = sitofp i32 %0 to double
  %handler_result = call double @fAddHandlerDouble(double %19, double 1.000000e+00), !dbg !1516
  br label %29, !dbg !1516

20:                                               ; preds = %3
  %handler_result16 = call double @callHandler(i32 12, double %1, double %1), !dbg !1517
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !1475, metadata !DIExpression()), !dbg !1499
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1517
  %21 = sitofp i32 %0 to double, !dbg !1518
  %handler_result1 = call double @fAddHandlerDouble(double %21, double 2.000000e+00), !dbg !1519
  %22 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result1, ptr noundef nonnull %5) #7, !dbg !1519
  %handler_result2 = call double @fAddHandlerDouble(double %21, double 1.000000e+00), !dbg !1520
  %23 = fmul double %handler_result2, %handler_result16, !dbg !1520
  %24 = load double, ptr %5, align 8, !dbg !1521, !tbaa !324
  %handler_result3 = call double @fSubHandlerDouble(double %23, double %24), !dbg !1522
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1461, metadata !DIExpression()), !dbg !1506
  %25 = call double @llvm.fabs.f64(double %23), !dbg !1522
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !1523
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1524
  %28 = load double, ptr %27, align 8, !dbg !1524, !tbaa !329
  %handler_result4 = call double @fAddHandlerDouble(double %26, double %28), !dbg !1525
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1462, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1460, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1525
  br label %29

29:                                               ; preds = %20, %13
  %30 = phi double [ %handler_result2, %20 ], [ %handler_result, %13 ]
  %31 = phi double [ %handler_result4, %20 ], [ 0.000000e+00, %13 ], !dbg !1526
  %32 = phi double [ %handler_result3, %20 ], [ 0.000000e+00, %13 ], !dbg !1526
  %33 = phi double [ 1.000000e+00, %20 ], [ %18, %13 ], !dbg !1526
  tail call void @llvm.dbg.value(metadata double %33, metadata !1460, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %32, metadata !1461, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %31, metadata !1462, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1470, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1465, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1466, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1469, metadata !DIExpression()), !dbg !1506
  %34 = add nuw nsw i32 %0, 2
  %35 = call double @llvm.fabs.f64(double %30)
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1
  br label %38, !dbg !1527

38:                                               ; preds = %38, %29
  %39 = phi double [ 0.000000e+00, %29 ], [ %handler_result7, %38 ]
  %40 = phi double [ 0.000000e+00, %29 ], [ %handler_result8, %38 ]
  %41 = phi i32 [ 0, %29 ], [ %53, %38 ]
  %42 = phi i32 [ 1, %29 ], [ %63, %38 ]
  tail call void @llvm.dbg.value(metadata double %39, metadata !1465, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %40, metadata !1466, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !1469, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !1470, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1528
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !1529
  %43 = sitofp i32 %42 to double, !dbg !1530
  %44 = fmul double %43, %1, !dbg !1531
  %45 = call i32 @gsl_sf_hyperg_U_int_e(i32 noundef 1, i32 noundef %34, double noundef %44, ptr noundef nonnull %6) #7, !dbg !1532
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !1485, metadata !DIExpression()), !dbg !1501
  %46 = sub nsw i32 0, %42, !dbg !1533
  %47 = sitofp i32 %46 to double, !dbg !1533
  %48 = fmul double %47, %1, !dbg !1534
  %49 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef 1, i32 noundef %34, double noundef %48, ptr noundef nonnull %7) #7, !dbg !1535
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !1486, metadata !DIExpression()), !dbg !1501
  %50 = icmp eq i32 %41, 0, !dbg !1536
  %51 = icmp eq i32 %45, 0, !dbg !1536
  %52 = select i1 %51, i32 %49, i32 %45, !dbg !1536
  %53 = select i1 %50, i32 %52, i32 %41, !dbg !1536
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1469, metadata !DIExpression()), !dbg !1506
  %54 = load double, ptr %6, align 8, !dbg !1537, !tbaa !324
  %55 = fmul double %30, %54, !dbg !1538
  %56 = load double, ptr %7, align 8, !dbg !1539, !tbaa !324
  %handler_result5 = call double @fSubHandlerDouble(double %55, double %56), !dbg !1540
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1478, metadata !DIExpression()), !dbg !1501
  %57 = load double, ptr %36, align 8, !dbg !1540, !tbaa !329
  %58 = fmul double %35, %57, !dbg !1541
  %59 = load double, ptr %37, align 8, !dbg !1542, !tbaa !329
  %handler_result6 = call double @fAddHandlerDouble(double %58, double %59), !dbg !1543
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1482, metadata !DIExpression()), !dbg !1501
  %handler_result7 = call double @fAddHandlerDouble(double %39, double %handler_result5), !dbg !1544
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1465, metadata !DIExpression()), !dbg !1506
  %handler_result8 = call double @fAddHandlerDouble(double %40, double %handler_result6), !dbg !1545
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1466, metadata !DIExpression()), !dbg !1506
  %60 = fdiv double %handler_result5, %handler_result7, !dbg !1545
  %61 = call double @llvm.fabs.f64(double %60), !dbg !1547
  %62 = fcmp uge double %61, 0x3CB0000000000000, !dbg !1548
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !1549
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1549
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !1470, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1506
  %63 = add nuw nsw i32 %42, 2
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !1470, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1465, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1466, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1469, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !1470, metadata !DIExpression()), !dbg !1506
  %64 = icmp ult i32 %42, 1998
  %65 = and i1 %62, %64
  br i1 %65, label %38, label %66, !llvm.loop !1550

66:                                               ; preds = %38
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1465, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1466, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !1469, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1470, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1463, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1464, metadata !DIExpression()), !dbg !1506
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1
  br label %69, !dbg !1552

69:                                               ; preds = %94, %66
  %70 = phi double [ 1.000000e+00, %66 ], [ %handler_result11, %94 ]
  %71 = phi double [ 0.000000e+00, %66 ], [ %handler_result12, %94 ]
  %72 = phi i32 [ %53, %66 ], [ %84, %94 ]
  %73 = phi i32 [ 2, %66 ], [ %95, %94 ]
  tail call void @llvm.dbg.value(metadata double %70, metadata !1463, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %71, metadata !1464, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !1469, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %73, metadata !1470, metadata !DIExpression()), !dbg !1506
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7, !dbg !1553
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !1554
  %74 = sitofp i32 %73 to double, !dbg !1555
  %75 = fmul double %74, %1, !dbg !1556
  %76 = call i32 @gsl_sf_hyperg_U_int_e(i32 noundef 1, i32 noundef %34, double noundef %75, ptr noundef nonnull %8) #7, !dbg !1557
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1494, metadata !DIExpression()), !dbg !1504
  %77 = sub nsw i32 0, %73, !dbg !1558
  %78 = sitofp i32 %77 to double, !dbg !1558
  %79 = fmul double %78, %1, !dbg !1559
  %80 = call i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef 1, i32 noundef %34, double noundef %79, ptr noundef nonnull %9) #7, !dbg !1560
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !1495, metadata !DIExpression()), !dbg !1504
  %81 = icmp eq i32 %72, 0, !dbg !1561
  %82 = icmp eq i32 %76, 0, !dbg !1561
  %83 = select i1 %82, i32 %80, i32 %76, !dbg !1561
  %84 = select i1 %81, i32 %83, i32 %72, !dbg !1561
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1469, metadata !DIExpression()), !dbg !1506
  %85 = load double, ptr %8, align 8, !dbg !1562, !tbaa !324
  %86 = fmul double %30, %85, !dbg !1563
  %87 = load double, ptr %9, align 8, !dbg !1564, !tbaa !324
  %handler_result9 = call double @fSubHandlerDouble(double %86, double %87), !dbg !1565
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1487, metadata !DIExpression()), !dbg !1504
  %88 = load double, ptr %67, align 8, !dbg !1565, !tbaa !329
  %89 = fmul double %35, %88, !dbg !1566
  %90 = load double, ptr %68, align 8, !dbg !1567, !tbaa !329
  %handler_result10 = call double @fAddHandlerDouble(double %89, double %90), !dbg !1568
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !1491, metadata !DIExpression()), !dbg !1504
  %handler_result11 = call double @fSubHandlerDouble(double %70, double %handler_result9), !dbg !1569
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1463, metadata !DIExpression()), !dbg !1506
  %handler_result12 = call double @fAddHandlerDouble(double %71, double %handler_result10), !dbg !1570
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1464, metadata !DIExpression()), !dbg !1506
  %91 = fdiv double %handler_result9, %handler_result11, !dbg !1570
  %92 = call double @llvm.fabs.f64(double %91), !dbg !1572
  %93 = fcmp olt double %92, 0x3CB0000000000000, !dbg !1573
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !1574
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7, !dbg !1574
  br i1 %93, label %97, label %94

94:                                               ; preds = %69
  %95 = add nuw nsw i32 %73, 2, !dbg !1575
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1463, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1464, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1469, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !1470, metadata !DIExpression()), !dbg !1506
  %96 = icmp ult i32 %73, 1998, !dbg !1576
  br i1 %96, label %69, label %97, !dbg !1552, !llvm.loop !1577

97:                                               ; preds = %94, %69
  %98 = phi i32 [ %73, %69 ], [ 2000, %94 ], !dbg !1579
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1463, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1464, metadata !DIExpression()), !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1469, metadata !DIExpression()), !dbg !1506
  %99 = freeze i32 %98, !dbg !1580
  %100 = icmp ugt i32 %99, 1999, !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !1467, metadata !DIExpression()), !dbg !1506
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !1581
  %101 = fmul double %33, %handler_result13, !dbg !1581
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !1582
  %102 = fmul double %33, %handler_result14, !dbg !1582
  %103 = call i32 @gsl_sf_exp_mult_err_e(double noundef %32, double noundef %31, double noundef %101, double noundef %102, ptr noundef %2) #7, !dbg !1583
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !1468, metadata !DIExpression()), !dbg !1506
  %104 = load double, ptr %2, align 8, !dbg !1584, !tbaa !324
  %105 = call double @llvm.fabs.f64(double %104), !dbg !1585
  %106 = fmul double %105, 0x3CC0000000000000, !dbg !1586
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1587
  %108 = load double, ptr %107, align 8, !dbg !1588, !tbaa !329
  %handler_result15 = call double @fAddHandlerDouble(double %108, double %106), !dbg !1588
  store double %handler_result15, ptr %107, align 8, !dbg !1588, !tbaa !329
  %109 = icmp eq i32 %103, 0, !dbg !1589
  %110 = icmp eq i32 %84, 0, !dbg !1589
  %111 = select i1 %100, i32 11, i32 0, !dbg !1589
  %112 = select i1 %110, i32 %111, i32 %84, !dbg !1589
  %113 = select i1 %109, i32 %112, i32 %103, !dbg !1589
  ret i32 %113, !dbg !1590
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_fermi_dirac_mhalf_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1591 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1618
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1617, metadata !DIExpression(), metadata !1618, metadata ptr %3, metadata !DIExpression()), !dbg !1619
  tail call void @llvm.dbg.value(metadata double %0, metadata !1593, metadata !DIExpression()), !dbg !1620
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1594, metadata !DIExpression()), !dbg !1620
  %4 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !1621
  br i1 %4, label %5, label %7, !dbg !1622

5:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !1623, !tbaa !324
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1623
  store double 0x10000000000000, ptr %6, align 8, !dbg !1623, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1428, i32 noundef 15) #7, !dbg !1626
  br label %124, !dbg !1626

7:                                                ; preds = %2
  %8 = fcmp olt double %0, -1.000000e+00, !dbg !1628
  br i1 %8, label %9, label %32, !dbg !1629

9:                                                ; preds = %7
  %10 = tail call double @exp(double noundef %0) #7, !dbg !1630
  tail call void @llvm.dbg.value(metadata double %10, metadata !1595, metadata !DIExpression()), !dbg !1631
  tail call void @llvm.dbg.value(metadata double %10, metadata !1599, metadata !DIExpression()), !dbg !1631
  tail call void @llvm.dbg.value(metadata double %10, metadata !1600, metadata !DIExpression()), !dbg !1631
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1601, metadata !DIExpression()), !dbg !1631
  %11 = fneg double %10
  br label %12, !dbg !1632

12:                                               ; preds = %12, %9
  %13 = phi double [ %10, %9 ], [ %20, %12 ]
  %14 = phi double [ %10, %9 ], [ %handler_result1, %12 ]
  %15 = phi i32 [ 2, %9 ], [ %24, %12 ]
  tail call void @llvm.dbg.value(metadata double %13, metadata !1599, metadata !DIExpression()), !dbg !1631
  tail call void @llvm.dbg.value(metadata double %14, metadata !1600, metadata !DIExpression()), !dbg !1631
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1601, metadata !DIExpression()), !dbg !1631
  %16 = sitofp i32 %15 to double, !dbg !1633
  %handler_result = call double @fAddHandlerDouble(double %16, double -1.000000e+00), !dbg !1634
  %17 = fdiv double %handler_result, %16, !dbg !1634
  tail call void @llvm.dbg.value(metadata double %17, metadata !1602, metadata !DIExpression()), !dbg !1635
  %18 = tail call double @sqrt(double noundef %17) #7, !dbg !1636
  %19 = fmul double %18, %11, !dbg !1637
  %20 = fmul double %13, %19, !dbg !1638
  tail call void @llvm.dbg.value(metadata double %20, metadata !1599, metadata !DIExpression()), !dbg !1631
  %handler_result1 = call double @fAddHandlerDouble(double %14, double %20), !dbg !1639
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1600, metadata !DIExpression()), !dbg !1631
  %21 = fdiv double %20, %handler_result1, !dbg !1639
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !1641
  %23 = fcmp olt double %22, 0x3CB0000000000000, !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1601, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1631
  %24 = add nuw nsw i32 %15, 1
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !1601, metadata !DIExpression()), !dbg !1631
  tail call void @llvm.dbg.value(metadata double %20, metadata !1599, metadata !DIExpression()), !dbg !1631
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1600, metadata !DIExpression()), !dbg !1631
  tail call void @llvm.dbg.value(metadata i32 %24, metadata !1601, metadata !DIExpression()), !dbg !1631
  %25 = icmp eq i32 %24, 200
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %12, !llvm.loop !1643

27:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1600, metadata !DIExpression()), !dbg !1631
  store double %handler_result1, ptr %1, align 8, !dbg !1645, !tbaa !324
  %28 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !1646
  %29 = fmul double %28, 2.000000e+00, !dbg !1647
  %30 = fmul double %29, 0x3CB0000000000000, !dbg !1648
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1649
  store double %30, ptr %31, align 8, !dbg !1650, !tbaa !329
  br label %124

32:                                               ; preds = %7
  %33 = fcmp olt double %0, 1.000000e+00, !dbg !1651
  br i1 %33, label %34, label %57, !dbg !1652

34:                                               ; preds = %32
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double %0, metadata !504, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !1653
  %35 = fmul double %0, 2.000000e+00, !dbg !1656
  %handler_result2 = call double @fAddHandlerDouble(double %35, double 1.000000e+00), !dbg !1657
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !1658
  %36 = fmul double %handler_result3, 5.000000e-01, !dbg !1658
  call void @llvm.dbg.value(metadata double %36, metadata !509, metadata !DIExpression()), !dbg !1653
  %37 = fmul double %36, 2.000000e+00, !dbg !1659
  call void @llvm.dbg.value(metadata double %37, metadata !510, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i32 19, metadata !506, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !1653
  br label %38, !dbg !1660

38:                                               ; preds = %38, %34
  %39 = phi i64 [ 19, %34 ], [ %49, %38 ]
  %40 = phi double [ 0.000000e+00, %34 ], [ %handler_result5, %38 ]
  %41 = phi double [ 0.000000e+00, %34 ], [ %handler_result8, %38 ]
  %42 = phi double [ 0.000000e+00, %34 ], [ %40, %38 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !506, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double %40, metadata !507, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double %41, metadata !511, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double %42, metadata !508, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double %40, metadata !512, metadata !DIExpression()), !dbg !1661
  %43 = fmul double %37, %40, !dbg !1662
  %handler_result4 = call double @fSubHandlerDouble(double %43, double %42), !dbg !1663
  %44 = getelementptr inbounds double, ptr @fd_mhalf_a_data, i64 %39, !dbg !1663
  %45 = load double, ptr %44, align 8, !dbg !1663, !tbaa !529
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %45), !dbg !1664
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !507, metadata !DIExpression()), !dbg !1653
  %46 = tail call double @llvm.fabs.f64(double %43), !dbg !1664
  %47 = tail call double @llvm.fabs.f64(double %42), !dbg !1665
  %handler_result6 = call double @fAddHandlerDouble(double %46, double %47), !dbg !1666
  %48 = tail call double @llvm.fabs.f64(double %45), !dbg !1666
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %48), !dbg !1667
  %handler_result8 = call double @fAddHandlerDouble(double %41, double %handler_result7), !dbg !1668
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !511, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata double %40, metadata !508, metadata !DIExpression()), !dbg !1653
  %49 = add nsw i64 %39, -1, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %49, metadata !506, metadata !DIExpression()), !dbg !1653
  %50 = icmp ugt i64 %39, 1, !dbg !1669
  br i1 %50, label %38, label %51, !dbg !1660, !llvm.loop !1670

51:                                               ; preds = %38
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !516, metadata !DIExpression()), !dbg !1672
  %52 = fmul double %36, %handler_result5, !dbg !1673
  %handler_result9 = call double @fSubHandlerDouble(double %52, double %40), !dbg !1674
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3FE442E233B626ED), !dbg !1675
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !507, metadata !DIExpression()), !dbg !1653
  %53 = tail call double @llvm.fabs.f64(double %52), !dbg !1675
  %54 = tail call double @llvm.fabs.f64(double %40), !dbg !1676
  %handler_result11 = call double @fAddHandlerDouble(double %54, double %53), !dbg !1677
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FE442E233B626ED), !dbg !1678
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !1679
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !511, metadata !DIExpression()), !dbg !1653
  store double %handler_result10, ptr %1, align 8, !dbg !1679, !tbaa !324
  %55 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !1680
  %handler_result14 = call double @fAddHandlerDouble(double %55, double 1.561000e-16), !dbg !1681
  %56 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1681
  store double %handler_result14, ptr %56, align 8, !dbg !1682, !tbaa !329
  br label %124, !dbg !1683

57:                                               ; preds = %32
  %58 = fcmp olt double %0, 4.000000e+00, !dbg !1684
  br i1 %58, label %59, label %83, !dbg !1685

59:                                               ; preds = %57
  %handler_result15 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !1686
  %60 = fmul double %handler_result15, 0x3FE5555555555555, !dbg !1686
  %handler_result16 = call double @fAddHandlerDouble(double %60, double -1.000000e+00), !dbg !1687
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !1606, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !504, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !1690
  %61 = fmul double %handler_result16, 2.000000e+00, !dbg !1687
  %handler_result17 = call double @fAddHandlerDouble(double %61, double 1.000000e+00), !dbg !1691
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double -1.000000e+00), !dbg !1692
  %62 = fmul double %handler_result18, 5.000000e-01, !dbg !1692
  call void @llvm.dbg.value(metadata double %62, metadata !509, metadata !DIExpression()), !dbg !1690
  %63 = fmul double %62, 2.000000e+00, !dbg !1693
  call void @llvm.dbg.value(metadata double %63, metadata !510, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i32 19, metadata !506, metadata !DIExpression()), !dbg !1690
  br label %64, !dbg !1694

64:                                               ; preds = %64, %59
  %65 = phi i64 [ 19, %59 ], [ %75, %64 ]
  %66 = phi double [ 0.000000e+00, %59 ], [ %handler_result20, %64 ]
  %67 = phi double [ 0.000000e+00, %59 ], [ %handler_result23, %64 ]
  %68 = phi double [ 0.000000e+00, %59 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !506, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata double %66, metadata !507, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata double %67, metadata !511, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata double %68, metadata !508, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata double %66, metadata !512, metadata !DIExpression()), !dbg !1695
  %69 = fmul double %63, %66, !dbg !1696
  %handler_result19 = call double @fSubHandlerDouble(double %69, double %68), !dbg !1697
  %70 = getelementptr inbounds double, ptr @fd_mhalf_b_data, i64 %65, !dbg !1697
  %71 = load double, ptr %70, align 8, !dbg !1697, !tbaa !529
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %71), !dbg !1698
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !507, metadata !DIExpression()), !dbg !1690
  %72 = tail call double @llvm.fabs.f64(double %69), !dbg !1698
  %73 = tail call double @llvm.fabs.f64(double %68), !dbg !1699
  %handler_result21 = call double @fAddHandlerDouble(double %72, double %73), !dbg !1700
  %74 = tail call double @llvm.fabs.f64(double %71), !dbg !1700
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %74), !dbg !1701
  %handler_result23 = call double @fAddHandlerDouble(double %67, double %handler_result22), !dbg !1702
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !511, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata double %66, metadata !508, metadata !DIExpression()), !dbg !1690
  %75 = add nsw i64 %65, -1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %75, metadata !506, metadata !DIExpression()), !dbg !1690
  %76 = icmp ugt i64 %65, 1, !dbg !1703
  br i1 %76, label %64, label %77, !dbg !1694, !llvm.loop !1704

77:                                               ; preds = %64
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !516, metadata !DIExpression()), !dbg !1706
  %78 = fmul double %62, %handler_result20, !dbg !1707
  %handler_result24 = call double @fSubHandlerDouble(double %78, double %66), !dbg !1708
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x3FFA2A9729949892), !dbg !1709
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !507, metadata !DIExpression()), !dbg !1690
  %79 = tail call double @llvm.fabs.f64(double %78), !dbg !1709
  %80 = tail call double @llvm.fabs.f64(double %66), !dbg !1710
  %handler_result26 = call double @fAddHandlerDouble(double %80, double %79), !dbg !1711
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0x3FFA2A9729949892), !dbg !1712
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result23, double %handler_result27), !dbg !1713
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !511, metadata !DIExpression()), !dbg !1690
  store double %handler_result25, ptr %1, align 8, !dbg !1713, !tbaa !324
  %81 = fmul double %handler_result28, 0x3CB0000000000000, !dbg !1714
  %handler_result29 = call double @fAddHandlerDouble(double %81, double 3.497000e-15), !dbg !1715
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1715
  store double %handler_result29, ptr %82, align 8, !dbg !1716, !tbaa !329
  br label %124

83:                                               ; preds = %57
  %84 = fcmp olt double %0, 1.000000e+01, !dbg !1717
  br i1 %84, label %85, label %109, !dbg !1718

85:                                               ; preds = %83
  %handler_result30 = call double @fAddHandlerDouble(double %0, double -4.000000e+00), !dbg !1719
  %86 = fmul double %handler_result30, 0x3FD5555555555555, !dbg !1719
  %handler_result31 = call double @fAddHandlerDouble(double %86, double -1.000000e+00), !dbg !1720
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !1610, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !504, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !1723
  %87 = fmul double %handler_result31, 2.000000e+00, !dbg !1720
  %handler_result32 = call double @fAddHandlerDouble(double %87, double 1.000000e+00), !dbg !1724
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double -1.000000e+00), !dbg !1725
  %88 = fmul double %handler_result33, 5.000000e-01, !dbg !1725
  call void @llvm.dbg.value(metadata double %88, metadata !509, metadata !DIExpression()), !dbg !1723
  %89 = fmul double %88, 2.000000e+00, !dbg !1726
  call void @llvm.dbg.value(metadata double %89, metadata !510, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i32 24, metadata !506, metadata !DIExpression()), !dbg !1723
  br label %90, !dbg !1727

90:                                               ; preds = %90, %85
  %91 = phi i64 [ 24, %85 ], [ %101, %90 ]
  %92 = phi double [ 0.000000e+00, %85 ], [ %handler_result35, %90 ]
  %93 = phi double [ 0.000000e+00, %85 ], [ %handler_result38, %90 ]
  %94 = phi double [ 0.000000e+00, %85 ], [ %92, %90 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !506, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata double %92, metadata !507, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata double %93, metadata !511, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata double %94, metadata !508, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata double %92, metadata !512, metadata !DIExpression()), !dbg !1728
  %95 = fmul double %89, %92, !dbg !1729
  %handler_result34 = call double @fSubHandlerDouble(double %95, double %94), !dbg !1730
  %96 = getelementptr inbounds double, ptr @fd_mhalf_c_data, i64 %91, !dbg !1730
  %97 = load double, ptr %96, align 8, !dbg !1730, !tbaa !529
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %97), !dbg !1731
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !507, metadata !DIExpression()), !dbg !1723
  %98 = tail call double @llvm.fabs.f64(double %95), !dbg !1731
  %99 = tail call double @llvm.fabs.f64(double %94), !dbg !1732
  %handler_result36 = call double @fAddHandlerDouble(double %98, double %99), !dbg !1733
  %100 = tail call double @llvm.fabs.f64(double %97), !dbg !1733
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %100), !dbg !1734
  %handler_result38 = call double @fAddHandlerDouble(double %93, double %handler_result37), !dbg !1735
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !511, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata double %92, metadata !508, metadata !DIExpression()), !dbg !1723
  %101 = add nsw i64 %91, -1, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %101, metadata !506, metadata !DIExpression()), !dbg !1723
  %102 = icmp ugt i64 %91, 1, !dbg !1736
  br i1 %102, label %90, label %103, !dbg !1727, !llvm.loop !1737

103:                                              ; preds = %90
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !516, metadata !DIExpression()), !dbg !1739
  %104 = fmul double %88, %handler_result35, !dbg !1740
  %handler_result39 = call double @fSubHandlerDouble(double %104, double %92), !dbg !1741
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0x400750297D8CD53B), !dbg !1742
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !507, metadata !DIExpression()), !dbg !1723
  %105 = tail call double @llvm.fabs.f64(double %104), !dbg !1742
  %106 = tail call double @llvm.fabs.f64(double %92), !dbg !1743
  %handler_result41 = call double @fAddHandlerDouble(double %106, double %105), !dbg !1744
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0x400750297D8CD53B), !dbg !1745
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result38, double %handler_result42), !dbg !1746
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !511, metadata !DIExpression()), !dbg !1723
  store double %handler_result40, ptr %1, align 8, !dbg !1746, !tbaa !324
  %107 = fmul double %handler_result43, 0x3CB0000000000000, !dbg !1747
  %handler_result44 = call double @fAddHandlerDouble(double %107, double 5.000000e-18), !dbg !1748
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1748
  store double %handler_result44, ptr %108, align 8, !dbg !1749, !tbaa !329
  br label %124

109:                                              ; preds = %83
  %110 = fcmp olt double %0, 3.000000e+01, !dbg !1750
  br i1 %110, label %111, label %122, !dbg !1751

111:                                              ; preds = %109
  %112 = tail call double @sqrt(double noundef %0) #7, !dbg !1752
  tail call void @llvm.dbg.value(metadata double %112, metadata !1613, metadata !DIExpression()), !dbg !1619
  %113 = fmul double %0, 1.000000e-01, !dbg !1753
  %handler_result45 = call double @fAddHandlerDouble(double %113, double -2.000000e+00), !dbg !1754
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !1616, metadata !DIExpression()), !dbg !1619
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1754
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_mhalf_d_cs, double noundef %handler_result45, ptr noundef nonnull %3), !dbg !1755
  %114 = load double, ptr %3, align 8, !dbg !1756, !tbaa !324
  %115 = fmul double %112, %114, !dbg !1757
  store double %115, ptr %1, align 8, !dbg !1758, !tbaa !324
  %116 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1759
  %117 = load double, ptr %116, align 8, !dbg !1759, !tbaa !329
  %118 = fmul double %112, %117, !dbg !1760
  %119 = tail call double @llvm.fabs.f64(double %115), !dbg !1761
  %120 = fmul double %119, 0x3CA0000000000000, !dbg !1762
  %handler_result46 = call double @fAddHandlerDouble(double %118, double %120), !dbg !1763
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1763
  store double %handler_result46, ptr %121, align 8, !dbg !1764, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1765
  br label %124

122:                                              ; preds = %109
  %123 = tail call fastcc i32 @fd_asymp(double noundef -5.000000e-01, double noundef %0, ptr noundef %1), !dbg !1766
  br label %124, !dbg !1768

124:                                              ; preds = %122, %111, %103, %77, %51, %27, %5
  %125 = phi i32 [ 15, %5 ], [ 0, %27 ], [ 0, %51 ], [ 0, %77 ], [ 0, %103 ], [ 0, %111 ], [ %123, %122 ], !dbg !1769
  ret i32 %125, !dbg !1770
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1771 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_fermi_dirac_half_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1772 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1799
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1798, metadata !DIExpression(), metadata !1799, metadata ptr %3, metadata !DIExpression()), !dbg !1800
  tail call void @llvm.dbg.value(metadata double %0, metadata !1774, metadata !DIExpression()), !dbg !1801
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1775, metadata !DIExpression()), !dbg !1801
  %4 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !1802
  br i1 %4, label %5, label %7, !dbg !1803

5:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !1804, !tbaa !324
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1804
  store double 0x10000000000000, ptr %6, align 8, !dbg !1804, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1476, i32 noundef 15) #7, !dbg !1807
  br label %126, !dbg !1807

7:                                                ; preds = %2
  %8 = fcmp olt double %0, -1.000000e+00, !dbg !1809
  br i1 %8, label %9, label %33, !dbg !1810

9:                                                ; preds = %7
  %10 = tail call double @exp(double noundef %0) #7, !dbg !1811
  tail call void @llvm.dbg.value(metadata double %10, metadata !1776, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata double %10, metadata !1780, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata double %10, metadata !1781, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1782, metadata !DIExpression()), !dbg !1812
  %11 = fneg double %10
  br label %12, !dbg !1813

12:                                               ; preds = %12, %9
  %13 = phi double [ %10, %9 ], [ %21, %12 ]
  %14 = phi double [ %10, %9 ], [ %handler_result1, %12 ]
  %15 = phi i32 [ 2, %9 ], [ %25, %12 ]
  tail call void @llvm.dbg.value(metadata double %13, metadata !1780, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata double %14, metadata !1781, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1782, metadata !DIExpression()), !dbg !1812
  %16 = sitofp i32 %15 to double, !dbg !1814
  %handler_result = call double @fAddHandlerDouble(double %16, double -1.000000e+00), !dbg !1815
  %17 = fdiv double %handler_result, %16, !dbg !1815
  tail call void @llvm.dbg.value(metadata double %17, metadata !1783, metadata !DIExpression()), !dbg !1816
  %18 = fmul double %17, %11, !dbg !1817
  %19 = tail call double @sqrt(double noundef %17) #7, !dbg !1818
  %20 = fmul double %18, %19, !dbg !1819
  %21 = fmul double %13, %20, !dbg !1820
  tail call void @llvm.dbg.value(metadata double %21, metadata !1780, metadata !DIExpression()), !dbg !1812
  %handler_result1 = call double @fAddHandlerDouble(double %14, double %21), !dbg !1821
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1781, metadata !DIExpression()), !dbg !1812
  %22 = fdiv double %21, %handler_result1, !dbg !1821
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !1823
  %24 = fcmp olt double %23, 0x3CB0000000000000, !dbg !1824
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1782, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1812
  %25 = add nuw nsw i32 %15, 1
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !1782, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata double %21, metadata !1780, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1781, metadata !DIExpression()), !dbg !1812
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !1782, metadata !DIExpression()), !dbg !1812
  %26 = icmp eq i32 %25, 100
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %28, label %12, !llvm.loop !1825

28:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1781, metadata !DIExpression()), !dbg !1812
  store double %handler_result1, ptr %1, align 8, !dbg !1827, !tbaa !324
  %29 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !1828
  %30 = fmul double %29, 2.000000e+00, !dbg !1829
  %31 = fmul double %30, 0x3CB0000000000000, !dbg !1830
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1831
  store double %31, ptr %32, align 8, !dbg !1832, !tbaa !329
  br label %126

33:                                               ; preds = %7
  %34 = fcmp olt double %0, 1.000000e+00, !dbg !1833
  br i1 %34, label %35, label %58, !dbg !1834

35:                                               ; preds = %33
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double %0, metadata !504, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !1835
  %36 = fmul double %0, 2.000000e+00, !dbg !1838
  %handler_result2 = call double @fAddHandlerDouble(double %36, double 1.000000e+00), !dbg !1839
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !1840
  %37 = fmul double %handler_result3, 5.000000e-01, !dbg !1840
  call void @llvm.dbg.value(metadata double %37, metadata !509, metadata !DIExpression()), !dbg !1835
  %38 = fmul double %37, 2.000000e+00, !dbg !1841
  call void @llvm.dbg.value(metadata double %38, metadata !510, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i32 22, metadata !506, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !1835
  br label %39, !dbg !1842

39:                                               ; preds = %39, %35
  %40 = phi i64 [ 22, %35 ], [ %50, %39 ]
  %41 = phi double [ 0.000000e+00, %35 ], [ %handler_result5, %39 ]
  %42 = phi double [ 0.000000e+00, %35 ], [ %handler_result8, %39 ]
  %43 = phi double [ 0.000000e+00, %35 ], [ %41, %39 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !506, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double %41, metadata !507, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double %42, metadata !511, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double %43, metadata !508, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double %41, metadata !512, metadata !DIExpression()), !dbg !1843
  %44 = fmul double %38, %41, !dbg !1844
  %handler_result4 = call double @fSubHandlerDouble(double %44, double %43), !dbg !1845
  %45 = getelementptr inbounds double, ptr @fd_half_a_data, i64 %40, !dbg !1845
  %46 = load double, ptr %45, align 8, !dbg !1845, !tbaa !529
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %46), !dbg !1846
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !507, metadata !DIExpression()), !dbg !1835
  %47 = tail call double @llvm.fabs.f64(double %44), !dbg !1846
  %48 = tail call double @llvm.fabs.f64(double %43), !dbg !1847
  %handler_result6 = call double @fAddHandlerDouble(double %47, double %48), !dbg !1848
  %49 = tail call double @llvm.fabs.f64(double %46), !dbg !1848
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %49), !dbg !1849
  %handler_result8 = call double @fAddHandlerDouble(double %42, double %handler_result7), !dbg !1850
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !511, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata double %41, metadata !508, metadata !DIExpression()), !dbg !1835
  %50 = add nsw i64 %40, -1, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %50, metadata !506, metadata !DIExpression()), !dbg !1835
  %51 = icmp ugt i64 %40, 1, !dbg !1851
  br i1 %51, label %39, label %52, !dbg !1842, !llvm.loop !1852

52:                                               ; preds = %39
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !516, metadata !DIExpression()), !dbg !1854
  %53 = fmul double %37, %handler_result5, !dbg !1855
  %handler_result9 = call double @fSubHandlerDouble(double %53, double %41), !dbg !1856
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3FEB7BC18E91C6D6), !dbg !1857
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !507, metadata !DIExpression()), !dbg !1835
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !1857
  %55 = tail call double @llvm.fabs.f64(double %41), !dbg !1858
  %handler_result11 = call double @fAddHandlerDouble(double %55, double %54), !dbg !1859
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FEB7BC18E91C6D6), !dbg !1860
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !1861
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !511, metadata !DIExpression()), !dbg !1835
  store double %handler_result10, ptr %1, align 8, !dbg !1861, !tbaa !324
  %56 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !1862
  %handler_result14 = call double @fAddHandlerDouble(double %56, double 0x3BFD83C94FB6D2AC), !dbg !1863
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1863
  store double %handler_result14, ptr %57, align 8, !dbg !1864, !tbaa !329
  br label %126, !dbg !1865

58:                                               ; preds = %33
  %59 = fcmp olt double %0, 4.000000e+00, !dbg !1866
  br i1 %59, label %60, label %84, !dbg !1867

60:                                               ; preds = %58
  %handler_result15 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !1868
  %61 = fmul double %handler_result15, 0x3FE5555555555555, !dbg !1868
  %handler_result16 = call double @fAddHandlerDouble(double %61, double -1.000000e+00), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !1787, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !504, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !1872
  %62 = fmul double %handler_result16, 2.000000e+00, !dbg !1869
  %handler_result17 = call double @fAddHandlerDouble(double %62, double 1.000000e+00), !dbg !1873
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double -1.000000e+00), !dbg !1874
  %63 = fmul double %handler_result18, 5.000000e-01, !dbg !1874
  call void @llvm.dbg.value(metadata double %63, metadata !509, metadata !DIExpression()), !dbg !1872
  %64 = fmul double %63, 2.000000e+00, !dbg !1875
  call void @llvm.dbg.value(metadata double %64, metadata !510, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i32 19, metadata !506, metadata !DIExpression()), !dbg !1872
  br label %65, !dbg !1876

65:                                               ; preds = %65, %60
  %66 = phi i64 [ 19, %60 ], [ %76, %65 ]
  %67 = phi double [ 0.000000e+00, %60 ], [ %handler_result20, %65 ]
  %68 = phi double [ 0.000000e+00, %60 ], [ %handler_result23, %65 ]
  %69 = phi double [ 0.000000e+00, %60 ], [ %67, %65 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !506, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata double %67, metadata !507, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata double %68, metadata !511, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata double %69, metadata !508, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata double %67, metadata !512, metadata !DIExpression()), !dbg !1877
  %70 = fmul double %64, %67, !dbg !1878
  %handler_result19 = call double @fSubHandlerDouble(double %70, double %69), !dbg !1879
  %71 = getelementptr inbounds double, ptr @fd_half_b_data, i64 %66, !dbg !1879
  %72 = load double, ptr %71, align 8, !dbg !1879, !tbaa !529
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %72), !dbg !1880
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !507, metadata !DIExpression()), !dbg !1872
  %73 = tail call double @llvm.fabs.f64(double %70), !dbg !1880
  %74 = tail call double @llvm.fabs.f64(double %69), !dbg !1881
  %handler_result21 = call double @fAddHandlerDouble(double %73, double %74), !dbg !1882
  %75 = tail call double @llvm.fabs.f64(double %72), !dbg !1882
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %75), !dbg !1883
  %handler_result23 = call double @fAddHandlerDouble(double %68, double %handler_result22), !dbg !1884
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !511, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata double %67, metadata !508, metadata !DIExpression()), !dbg !1872
  %76 = add nsw i64 %66, -1, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %76, metadata !506, metadata !DIExpression()), !dbg !1872
  %77 = icmp ugt i64 %66, 1, !dbg !1885
  br i1 %77, label %65, label %78, !dbg !1876, !llvm.loop !1886

78:                                               ; preds = %65
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !516, metadata !DIExpression()), !dbg !1888
  %79 = fmul double %63, %handler_result20, !dbg !1889
  %handler_result24 = call double @fSubHandlerDouble(double %79, double %67), !dbg !1890
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x400E9AA35C08D3F8), !dbg !1891
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !507, metadata !DIExpression()), !dbg !1872
  %80 = tail call double @llvm.fabs.f64(double %79), !dbg !1891
  %81 = tail call double @llvm.fabs.f64(double %67), !dbg !1892
  %handler_result26 = call double @fAddHandlerDouble(double %81, double %80), !dbg !1893
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0x400E9AA35C08D3F8), !dbg !1894
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result23, double %handler_result27), !dbg !1895
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !511, metadata !DIExpression()), !dbg !1872
  store double %handler_result25, ptr %1, align 8, !dbg !1895, !tbaa !324
  %82 = fmul double %handler_result28, 0x3CB0000000000000, !dbg !1896
  %handler_result29 = call double @fAddHandlerDouble(double %82, double 1.202000e-15), !dbg !1897
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1897
  store double %handler_result29, ptr %83, align 8, !dbg !1898, !tbaa !329
  br label %126

84:                                               ; preds = %58
  %85 = fcmp olt double %0, 1.000000e+01, !dbg !1899
  br i1 %85, label %86, label %110, !dbg !1900

86:                                               ; preds = %84
  %handler_result30 = call double @fAddHandlerDouble(double %0, double -4.000000e+00), !dbg !1901
  %87 = fmul double %handler_result30, 0x3FD5555555555555, !dbg !1901
  %handler_result31 = call double @fAddHandlerDouble(double %87, double -1.000000e+00), !dbg !1902
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !1791, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !504, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !1905
  %88 = fmul double %handler_result31, 2.000000e+00, !dbg !1902
  %handler_result32 = call double @fAddHandlerDouble(double %88, double 1.000000e+00), !dbg !1906
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double -1.000000e+00), !dbg !1907
  %89 = fmul double %handler_result33, 5.000000e-01, !dbg !1907
  call void @llvm.dbg.value(metadata double %89, metadata !509, metadata !DIExpression()), !dbg !1905
  %90 = fmul double %89, 2.000000e+00, !dbg !1908
  call void @llvm.dbg.value(metadata double %90, metadata !510, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i32 22, metadata !506, metadata !DIExpression()), !dbg !1905
  br label %91, !dbg !1909

91:                                               ; preds = %91, %86
  %92 = phi i64 [ 22, %86 ], [ %102, %91 ]
  %93 = phi double [ 0.000000e+00, %86 ], [ %handler_result35, %91 ]
  %94 = phi double [ 0.000000e+00, %86 ], [ %handler_result38, %91 ]
  %95 = phi double [ 0.000000e+00, %86 ], [ %93, %91 ]
  call void @llvm.dbg.value(metadata i64 %92, metadata !506, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata double %93, metadata !507, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata double %94, metadata !511, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata double %95, metadata !508, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata double %93, metadata !512, metadata !DIExpression()), !dbg !1910
  %96 = fmul double %90, %93, !dbg !1911
  %handler_result34 = call double @fSubHandlerDouble(double %96, double %95), !dbg !1912
  %97 = getelementptr inbounds double, ptr @fd_half_c_data, i64 %92, !dbg !1912
  %98 = load double, ptr %97, align 8, !dbg !1912, !tbaa !529
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %98), !dbg !1913
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !507, metadata !DIExpression()), !dbg !1905
  %99 = tail call double @llvm.fabs.f64(double %96), !dbg !1913
  %100 = tail call double @llvm.fabs.f64(double %95), !dbg !1914
  %handler_result36 = call double @fAddHandlerDouble(double %99, double %100), !dbg !1915
  %101 = tail call double @llvm.fabs.f64(double %98), !dbg !1915
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %101), !dbg !1916
  %handler_result38 = call double @fAddHandlerDouble(double %94, double %handler_result37), !dbg !1917
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !511, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata double %93, metadata !508, metadata !DIExpression()), !dbg !1905
  %102 = add nsw i64 %92, -1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %102, metadata !506, metadata !DIExpression()), !dbg !1905
  %103 = icmp ugt i64 %92, 1, !dbg !1918
  br i1 %103, label %91, label %104, !dbg !1909, !llvm.loop !1919

104:                                              ; preds = %91
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !516, metadata !DIExpression()), !dbg !1921
  %105 = fmul double %89, %handler_result35, !dbg !1922
  %handler_result39 = call double @fSubHandlerDouble(double %105, double %93), !dbg !1923
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0x402D95974379086F), !dbg !1924
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !507, metadata !DIExpression()), !dbg !1905
  %106 = tail call double @llvm.fabs.f64(double %105), !dbg !1924
  %107 = tail call double @llvm.fabs.f64(double %93), !dbg !1925
  %handler_result41 = call double @fAddHandlerDouble(double %107, double %106), !dbg !1926
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0x402D95974379086F), !dbg !1927
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result38, double %handler_result42), !dbg !1928
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !511, metadata !DIExpression()), !dbg !1905
  store double %handler_result40, ptr %1, align 8, !dbg !1928, !tbaa !324
  %108 = fmul double %handler_result43, 0x3CB0000000000000, !dbg !1929
  %handler_result44 = call double @fAddHandlerDouble(double %108, double 1.400000e-17), !dbg !1930
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1930
  store double %handler_result44, ptr %109, align 8, !dbg !1931, !tbaa !329
  br label %126

110:                                              ; preds = %84
  %111 = fcmp olt double %0, 3.000000e+01, !dbg !1932
  br i1 %111, label %112, label %124, !dbg !1933

112:                                              ; preds = %110
  %113 = tail call double @sqrt(double noundef %0) #7, !dbg !1934
  %114 = fmul double %113, %0, !dbg !1935
  tail call void @llvm.dbg.value(metadata double %114, metadata !1794, metadata !DIExpression()), !dbg !1800
  %115 = fmul double %0, 1.000000e-01, !dbg !1936
  %handler_result45 = call double @fAddHandlerDouble(double %115, double -2.000000e+00), !dbg !1937
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !1797, metadata !DIExpression()), !dbg !1800
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1937
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_half_d_cs, double noundef %handler_result45, ptr noundef nonnull %3), !dbg !1938
  %116 = load double, ptr %3, align 8, !dbg !1939, !tbaa !324
  %117 = fmul double %114, %116, !dbg !1940
  store double %117, ptr %1, align 8, !dbg !1941, !tbaa !324
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1942
  %119 = load double, ptr %118, align 8, !dbg !1942, !tbaa !329
  %120 = fmul double %114, %119, !dbg !1943
  %121 = tail call double @llvm.fabs.f64(double %117), !dbg !1944
  %122 = fmul double %121, 0x3CB8000000000000, !dbg !1945
  %handler_result46 = call double @fAddHandlerDouble(double %120, double %122), !dbg !1946
  %123 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1946
  store double %handler_result46, ptr %123, align 8, !dbg !1947, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1948
  br label %126

124:                                              ; preds = %110
  %125 = tail call fastcc i32 @fd_asymp(double noundef 5.000000e-01, double noundef %0, ptr noundef %1), !dbg !1949
  br label %126, !dbg !1951

126:                                              ; preds = %124, %112, %104, %78, %52, %28, %5
  %127 = phi i32 [ 15, %5 ], [ 0, %28 ], [ 0, %52 ], [ 0, %78 ], [ 0, %104 ], [ 0, %112 ], [ %125, %124 ], !dbg !1952
  ret i32 %127, !dbg !1953
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_fermi_dirac_3half_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !1954 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1981
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1980, metadata !DIExpression(), metadata !1981, metadata ptr %3, metadata !DIExpression()), !dbg !1982
  tail call void @llvm.dbg.value(metadata double %0, metadata !1956, metadata !DIExpression()), !dbg !1983
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1957, metadata !DIExpression()), !dbg !1983
  %4 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !1984
  br i1 %4, label %5, label %7, !dbg !1985

5:                                                ; preds = %2
  store double 0.000000e+00, ptr %1, align 8, !dbg !1986, !tbaa !324
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1986
  store double 0x10000000000000, ptr %6, align 8, !dbg !1986, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1524, i32 noundef 15) #7, !dbg !1989
  br label %128, !dbg !1989

7:                                                ; preds = %2
  %8 = fcmp olt double %0, -1.000000e+00, !dbg !1991
  br i1 %8, label %9, label %34, !dbg !1992

9:                                                ; preds = %7
  %10 = tail call double @exp(double noundef %0) #7, !dbg !1993
  tail call void @llvm.dbg.value(metadata double %10, metadata !1958, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata double %10, metadata !1962, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata double %10, metadata !1963, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1964, metadata !DIExpression()), !dbg !1994
  %11 = fneg double %10
  br label %12, !dbg !1995

12:                                               ; preds = %12, %9
  %13 = phi double [ %10, %9 ], [ %22, %12 ]
  %14 = phi double [ %10, %9 ], [ %handler_result1, %12 ]
  %15 = phi i32 [ 2, %9 ], [ %26, %12 ]
  tail call void @llvm.dbg.value(metadata double %13, metadata !1962, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata double %14, metadata !1963, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1964, metadata !DIExpression()), !dbg !1994
  %16 = sitofp i32 %15 to double, !dbg !1996
  %handler_result = call double @fAddHandlerDouble(double %16, double -1.000000e+00), !dbg !1997
  %17 = fdiv double %handler_result, %16, !dbg !1997
  tail call void @llvm.dbg.value(metadata double %17, metadata !1965, metadata !DIExpression()), !dbg !1998
  %18 = fmul double %17, %11, !dbg !1999
  %19 = fmul double %17, %18, !dbg !2000
  %20 = tail call double @sqrt(double noundef %17) #7, !dbg !2001
  %21 = fmul double %19, %20, !dbg !2002
  %22 = fmul double %13, %21, !dbg !2003
  tail call void @llvm.dbg.value(metadata double %22, metadata !1962, metadata !DIExpression()), !dbg !1994
  %handler_result1 = call double @fAddHandlerDouble(double %14, double %22), !dbg !2004
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1963, metadata !DIExpression()), !dbg !1994
  %23 = fdiv double %22, %handler_result1, !dbg !2004
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !2006
  %25 = fcmp olt double %24, 0x3CB0000000000000, !dbg !2007
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1964, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1994
  %26 = add nuw nsw i32 %15, 1
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1964, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata double %22, metadata !1962, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1963, metadata !DIExpression()), !dbg !1994
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !1964, metadata !DIExpression()), !dbg !1994
  %27 = icmp eq i32 %26, 100
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %12, !llvm.loop !2008

29:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1963, metadata !DIExpression()), !dbg !1994
  store double %handler_result1, ptr %1, align 8, !dbg !2010, !tbaa !324
  %30 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !2011
  %31 = fmul double %30, 2.000000e+00, !dbg !2012
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !2013
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2014
  store double %32, ptr %33, align 8, !dbg !2015, !tbaa !329
  br label %128

34:                                               ; preds = %7
  %35 = fcmp olt double %0, 1.000000e+00, !dbg !2016
  br i1 %35, label %36, label %59, !dbg !2017

36:                                               ; preds = %34
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double %0, metadata !504, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !2018
  %37 = fmul double %0, 2.000000e+00, !dbg !2021
  %handler_result2 = call double @fAddHandlerDouble(double %37, double 1.000000e+00), !dbg !2022
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !2023
  %38 = fmul double %handler_result3, 5.000000e-01, !dbg !2023
  call void @llvm.dbg.value(metadata double %38, metadata !509, metadata !DIExpression()), !dbg !2018
  %39 = fmul double %38, 2.000000e+00, !dbg !2024
  call void @llvm.dbg.value(metadata double %39, metadata !510, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i32 19, metadata !506, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !2018
  br label %40, !dbg !2025

40:                                               ; preds = %40, %36
  %41 = phi i64 [ 19, %36 ], [ %51, %40 ]
  %42 = phi double [ 0.000000e+00, %36 ], [ %handler_result5, %40 ]
  %43 = phi double [ 0.000000e+00, %36 ], [ %handler_result8, %40 ]
  %44 = phi double [ 0.000000e+00, %36 ], [ %42, %40 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !506, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double %42, metadata !507, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double %43, metadata !511, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double %44, metadata !508, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double %42, metadata !512, metadata !DIExpression()), !dbg !2026
  %45 = fmul double %39, %42, !dbg !2027
  %handler_result4 = call double @fSubHandlerDouble(double %45, double %44), !dbg !2028
  %46 = getelementptr inbounds double, ptr @fd_3half_a_data, i64 %41, !dbg !2028
  %47 = load double, ptr %46, align 8, !dbg !2028, !tbaa !529
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %47), !dbg !2029
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !507, metadata !DIExpression()), !dbg !2018
  %48 = tail call double @llvm.fabs.f64(double %45), !dbg !2029
  %49 = tail call double @llvm.fabs.f64(double %44), !dbg !2030
  %handler_result6 = call double @fAddHandlerDouble(double %48, double %49), !dbg !2031
  %50 = tail call double @llvm.fabs.f64(double %47), !dbg !2031
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %50), !dbg !2032
  %handler_result8 = call double @fAddHandlerDouble(double %43, double %handler_result7), !dbg !2033
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !511, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata double %42, metadata !508, metadata !DIExpression()), !dbg !2018
  %51 = add nsw i64 %41, -1, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %51, metadata !506, metadata !DIExpression()), !dbg !2018
  %52 = icmp ugt i64 %41, 1, !dbg !2034
  br i1 %52, label %40, label %53, !dbg !2025, !llvm.loop !2035

53:                                               ; preds = %40
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !516, metadata !DIExpression()), !dbg !2037
  %54 = fmul double %38, %handler_result5, !dbg !2038
  %handler_result9 = call double @fSubHandlerDouble(double %54, double %42), !dbg !2039
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0x3FF052E5EAB5AC6F), !dbg !2040
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !507, metadata !DIExpression()), !dbg !2018
  %55 = tail call double @llvm.fabs.f64(double %54), !dbg !2040
  %56 = tail call double @llvm.fabs.f64(double %42), !dbg !2041
  %handler_result11 = call double @fAddHandlerDouble(double %56, double %55), !dbg !2042
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3FF052E5EAB5AC6F), !dbg !2043
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !2044
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !511, metadata !DIExpression()), !dbg !2018
  store double %handler_result10, ptr %1, align 8, !dbg !2044, !tbaa !324
  %57 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !2045
  %handler_result14 = call double @fAddHandlerDouble(double %57, double 5.100000e-18), !dbg !2046
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2046
  store double %handler_result14, ptr %58, align 8, !dbg !2047, !tbaa !329
  br label %128, !dbg !2048

59:                                               ; preds = %34
  %60 = fcmp olt double %0, 4.000000e+00, !dbg !2049
  br i1 %60, label %61, label %85, !dbg !2050

61:                                               ; preds = %59
  %handler_result15 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !2051
  %62 = fmul double %handler_result15, 0x3FE5555555555555, !dbg !2051
  %handler_result16 = call double @fAddHandlerDouble(double %62, double -1.000000e+00), !dbg !2052
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !1969, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !504, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !2055
  %63 = fmul double %handler_result16, 2.000000e+00, !dbg !2052
  %handler_result17 = call double @fAddHandlerDouble(double %63, double 1.000000e+00), !dbg !2056
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double -1.000000e+00), !dbg !2057
  %64 = fmul double %handler_result18, 5.000000e-01, !dbg !2057
  call void @llvm.dbg.value(metadata double %64, metadata !509, metadata !DIExpression()), !dbg !2055
  %65 = fmul double %64, 2.000000e+00, !dbg !2058
  call void @llvm.dbg.value(metadata double %65, metadata !510, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 21, metadata !506, metadata !DIExpression()), !dbg !2055
  br label %66, !dbg !2059

66:                                               ; preds = %66, %61
  %67 = phi i64 [ 21, %61 ], [ %77, %66 ]
  %68 = phi double [ 0.000000e+00, %61 ], [ %handler_result20, %66 ]
  %69 = phi double [ 0.000000e+00, %61 ], [ %handler_result23, %66 ]
  %70 = phi double [ 0.000000e+00, %61 ], [ %68, %66 ]
  call void @llvm.dbg.value(metadata i64 %67, metadata !506, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata double %68, metadata !507, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata double %69, metadata !511, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata double %70, metadata !508, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata double %68, metadata !512, metadata !DIExpression()), !dbg !2060
  %71 = fmul double %65, %68, !dbg !2061
  %handler_result19 = call double @fSubHandlerDouble(double %71, double %70), !dbg !2062
  %72 = getelementptr inbounds double, ptr @fd_3half_b_data, i64 %67, !dbg !2062
  %73 = load double, ptr %72, align 8, !dbg !2062, !tbaa !529
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %73), !dbg !2063
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !507, metadata !DIExpression()), !dbg !2055
  %74 = tail call double @llvm.fabs.f64(double %71), !dbg !2063
  %75 = tail call double @llvm.fabs.f64(double %70), !dbg !2064
  %handler_result21 = call double @fAddHandlerDouble(double %74, double %75), !dbg !2065
  %76 = tail call double @llvm.fabs.f64(double %73), !dbg !2065
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %76), !dbg !2066
  %handler_result23 = call double @fAddHandlerDouble(double %69, double %handler_result22), !dbg !2067
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !511, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata double %68, metadata !508, metadata !DIExpression()), !dbg !2055
  %77 = add nsw i64 %67, -1, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %77, metadata !506, metadata !DIExpression()), !dbg !2055
  %78 = icmp ugt i64 %67, 1, !dbg !2068
  br i1 %78, label %66, label %79, !dbg !2059, !llvm.loop !2069

79:                                               ; preds = %66
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !516, metadata !DIExpression()), !dbg !2071
  %80 = fmul double %64, %handler_result20, !dbg !2072
  %handler_result24 = call double @fSubHandlerDouble(double %80, double %68), !dbg !2073
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x401ACE711A4647E3), !dbg !2074
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !507, metadata !DIExpression()), !dbg !2055
  %81 = tail call double @llvm.fabs.f64(double %80), !dbg !2074
  %82 = tail call double @llvm.fabs.f64(double %68), !dbg !2075
  %handler_result26 = call double @fAddHandlerDouble(double %82, double %81), !dbg !2076
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0x401ACE711A4647E3), !dbg !2077
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result23, double %handler_result27), !dbg !2078
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !511, metadata !DIExpression()), !dbg !2055
  store double %handler_result25, ptr %1, align 8, !dbg !2078, !tbaa !324
  %83 = fmul double %handler_result28, 0x3CB0000000000000, !dbg !2079
  %handler_result29 = call double @fAddHandlerDouble(double %83, double 5.000000e-18), !dbg !2080
  %84 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2080
  store double %handler_result29, ptr %84, align 8, !dbg !2081, !tbaa !329
  br label %128

85:                                               ; preds = %59
  %86 = fcmp olt double %0, 1.000000e+01, !dbg !2082
  br i1 %86, label %87, label %111, !dbg !2083

87:                                               ; preds = %85
  %handler_result30 = call double @fAddHandlerDouble(double %0, double -4.000000e+00), !dbg !2084
  %88 = fmul double %handler_result30, 0x3FD5555555555555, !dbg !2084
  %handler_result31 = call double @fAddHandlerDouble(double %88, double -1.000000e+00), !dbg !2085
  tail call void @llvm.dbg.value(metadata double %handler_result31, metadata !1973, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata !495, metadata !496, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !504, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata ptr %1, metadata !505, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !507, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !508, metadata !DIExpression()), !dbg !2088
  %89 = fmul double %handler_result31, 2.000000e+00, !dbg !2085
  %handler_result32 = call double @fAddHandlerDouble(double %89, double 1.000000e+00), !dbg !2089
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double -1.000000e+00), !dbg !2090
  %90 = fmul double %handler_result33, 5.000000e-01, !dbg !2090
  call void @llvm.dbg.value(metadata double %90, metadata !509, metadata !DIExpression()), !dbg !2088
  %91 = fmul double %90, 2.000000e+00, !dbg !2091
  call void @llvm.dbg.value(metadata double %91, metadata !510, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !511, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 20, metadata !506, metadata !DIExpression()), !dbg !2088
  br label %92, !dbg !2092

92:                                               ; preds = %92, %87
  %93 = phi i64 [ 20, %87 ], [ %103, %92 ]
  %94 = phi double [ 0.000000e+00, %87 ], [ %handler_result35, %92 ]
  %95 = phi double [ 0.000000e+00, %87 ], [ %handler_result38, %92 ]
  %96 = phi double [ 0.000000e+00, %87 ], [ %94, %92 ]
  call void @llvm.dbg.value(metadata i64 %93, metadata !506, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %94, metadata !507, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %95, metadata !511, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %96, metadata !508, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %94, metadata !512, metadata !DIExpression()), !dbg !2093
  %97 = fmul double %91, %94, !dbg !2094
  %handler_result34 = call double @fSubHandlerDouble(double %97, double %96), !dbg !2095
  %98 = getelementptr inbounds double, ptr @fd_3half_c_data, i64 %93, !dbg !2095
  %99 = load double, ptr %98, align 8, !dbg !2095, !tbaa !529
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %99), !dbg !2096
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !507, metadata !DIExpression()), !dbg !2088
  %100 = tail call double @llvm.fabs.f64(double %97), !dbg !2096
  %101 = tail call double @llvm.fabs.f64(double %96), !dbg !2097
  %handler_result36 = call double @fAddHandlerDouble(double %100, double %101), !dbg !2098
  %102 = tail call double @llvm.fabs.f64(double %99), !dbg !2098
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %102), !dbg !2099
  %handler_result38 = call double @fAddHandlerDouble(double %95, double %handler_result37), !dbg !2100
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !511, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata double %94, metadata !508, metadata !DIExpression()), !dbg !2088
  %103 = add nsw i64 %93, -1, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %103, metadata !506, metadata !DIExpression()), !dbg !2088
  %104 = icmp ugt i64 %93, 1, !dbg !2101
  br i1 %104, label %92, label %105, !dbg !2092, !llvm.loop !2102

105:                                              ; preds = %92
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !516, metadata !DIExpression()), !dbg !2104
  %106 = fmul double %90, %handler_result35, !dbg !2105
  %handler_result39 = call double @fSubHandlerDouble(double %106, double %94), !dbg !2106
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 0x4049425BCABAD971), !dbg !2107
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !507, metadata !DIExpression()), !dbg !2088
  %107 = tail call double @llvm.fabs.f64(double %106), !dbg !2107
  %108 = tail call double @llvm.fabs.f64(double %94), !dbg !2108
  %handler_result41 = call double @fAddHandlerDouble(double %108, double %107), !dbg !2109
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double 0x4049425BCABAD971), !dbg !2110
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result38, double %handler_result42), !dbg !2111
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !511, metadata !DIExpression()), !dbg !2088
  store double %handler_result40, ptr %1, align 8, !dbg !2111, !tbaa !324
  %109 = fmul double %handler_result43, 0x3CB0000000000000, !dbg !2112
  %handler_result44 = call double @fAddHandlerDouble(double %109, double 4.800000e-16), !dbg !2113
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2113
  store double %handler_result44, ptr %110, align 8, !dbg !2114, !tbaa !329
  br label %128

111:                                              ; preds = %85
  %112 = fcmp olt double %0, 3.000000e+01, !dbg !2115
  br i1 %112, label %113, label %126, !dbg !2116

113:                                              ; preds = %111
  %114 = fmul double %0, %0, !dbg !2117
  %115 = tail call double @sqrt(double noundef %0) #7, !dbg !2118
  %116 = fmul double %114, %115, !dbg !2119
  tail call void @llvm.dbg.value(metadata double %116, metadata !1976, metadata !DIExpression()), !dbg !1982
  %117 = fmul double %0, 1.000000e-01, !dbg !2120
  %handler_result45 = call double @fAddHandlerDouble(double %117, double -2.000000e+00), !dbg !2121
  tail call void @llvm.dbg.value(metadata double %handler_result45, metadata !1979, metadata !DIExpression()), !dbg !1982
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !2121
  call fastcc void @cheb_eval_e(ptr noundef nonnull @fd_3half_d_cs, double noundef %handler_result45, ptr noundef nonnull %3), !dbg !2122
  %118 = load double, ptr %3, align 8, !dbg !2123, !tbaa !324
  %119 = fmul double %116, %118, !dbg !2124
  store double %119, ptr %1, align 8, !dbg !2125, !tbaa !324
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !2126
  %121 = load double, ptr %120, align 8, !dbg !2126, !tbaa !329
  %122 = fmul double %116, %121, !dbg !2127
  %123 = tail call double @llvm.fabs.f64(double %119), !dbg !2128
  %124 = fmul double %123, 0x3CC4000000000000, !dbg !2129
  %handler_result46 = call double @fAddHandlerDouble(double %122, double %124), !dbg !2130
  %125 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !2130
  store double %handler_result46, ptr %125, align 8, !dbg !2131, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !2132
  br label %128

126:                                              ; preds = %111
  %127 = tail call fastcc i32 @fd_asymp(double noundef 1.500000e+00, double noundef %0, ptr noundef %1), !dbg !2133
  br label %128, !dbg !2135

128:                                              ; preds = %126, %113, %105, %79, %53, %29, %5
  %129 = phi i32 [ 15, %5 ], [ 0, %29 ], [ 0, %53 ], [ 0, %79 ], [ 0, %105 ], [ 0, %113 ], [ %127, %126 ], !dbg !2136
  ret i32 %129, !dbg !2137
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_fermi_dirac_inc_0_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !2138 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2148
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2146, metadata !DIExpression(), metadata !2148, metadata ptr %4, metadata !DIExpression()), !dbg !2149
  tail call void @llvm.dbg.value(metadata double %0, metadata !2140, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata double %1, metadata !2141, metadata !DIExpression()), !dbg !2150
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2142, metadata !DIExpression()), !dbg !2150
  %5 = fcmp olt double %1, 0.000000e+00, !dbg !2151
  br i1 %5, label %6, label %8, !dbg !2152

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !2153, !tbaa !324
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2153
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !2153, !tbaa !329
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1572, i32 noundef 1) #7, !dbg !2156
  br label %17, !dbg !2156

8:                                                ; preds = %3
  %handler_result = call double @fSubHandlerDouble(double %1, double %0), !dbg !2158
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !2143, metadata !DIExpression()), !dbg !2149
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !2158
  %9 = call i32 @gsl_sf_fermi_dirac_0_e(double noundef %handler_result, ptr noundef nonnull %4), !dbg !2159, !range !1077
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2147, metadata !DIExpression()), !dbg !2149
  %10 = load double, ptr %4, align 8, !dbg !2160, !tbaa !324
  %handler_result1 = call double @fSubHandlerDouble(double %10, double %handler_result), !dbg !2161
  store double %handler_result1, ptr %2, align 8, !dbg !2161, !tbaa !324
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !2162
  %12 = load double, ptr %11, align 8, !dbg !2162, !tbaa !329
  %13 = tail call double @llvm.fabs.f64(double %0), !dbg !2163
  %14 = tail call double @llvm.fabs.f64(double %1), !dbg !2164
  %handler_result2 = call double @fAddHandlerDouble(double %13, double %14), !dbg !2165
  %15 = fmul double %handler_result2, 0x3CB0000000000000, !dbg !2165
  %handler_result3 = call double @fAddHandlerDouble(double %15, double %12), !dbg !2166
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !2166
  store double %handler_result3, ptr %16, align 8, !dbg !2167, !tbaa !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !2168
  br label %17

17:                                               ; preds = %8, %6
  %18 = phi i32 [ 1, %6 ], [ %9, %8 ], !dbg !2169
  ret i32 %18, !dbg !2170
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_m1(double noundef %0) local_unnamed_addr #0 !dbg !2171 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !2175, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata double %0, metadata !310, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata ptr undef, metadata !311, metadata !DIExpression()), !dbg !2179
  %2 = fcmp olt double %0, 0xC086232BDD7ABCD2, !dbg !2181
  br i1 %2, label %12, label %3, !dbg !2182

3:                                                ; preds = %1
  %4 = fcmp olt double %0, 0.000000e+00, !dbg !2183
  br i1 %4, label %5, label %8, !dbg !2184

5:                                                ; preds = %3
  %6 = tail call double @exp(double noundef %0) #7, !dbg !2185
  call void @llvm.dbg.value(metadata double %6, metadata !312, metadata !DIExpression()), !dbg !2186
  %handler_result = call double @fAddHandlerDouble(double %6, double 1.000000e+00), !dbg !2187
  %7 = fdiv double %6, %handler_result, !dbg !2187
  tail call void @llvm.dbg.value(metadata double %7, metadata !2176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2178
  tail call void @llvm.dbg.value(metadata double poison, metadata !2176, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2178
  br label %13

8:                                                ; preds = %3
  %9 = fneg double %0, !dbg !2188
  %10 = tail call double @exp(double noundef %9) #7, !dbg !2189
  call void @llvm.dbg.value(metadata double %10, metadata !316, metadata !DIExpression()), !dbg !2190
  %handler_result1 = call double @fAddHandlerDouble(double %10, double 1.000000e+00), !dbg !2191
  %11 = fdiv double 1.000000e+00, %handler_result1, !dbg !2191
  tail call void @llvm.dbg.value(metadata double %11, metadata !2176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2178
  tail call void @llvm.dbg.value(metadata double poison, metadata !2176, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2178
  br label %13

12:                                               ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2178
  tail call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !2176, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2178
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1218, i32 noundef 15) #7, !dbg !2192
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2178
  tail call void @llvm.dbg.value(metadata i32 15, metadata !2177, metadata !DIExpression()), !dbg !2178
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1592, i32 noundef 15) #7, !dbg !2193
  br label %13, !dbg !2193

13:                                               ; preds = %12, %8, %5
  %14 = phi double [ 0.000000e+00, %12 ], [ %11, %8 ], [ %7, %5 ]
  ret double %14, !dbg !2197
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_0(double noundef %0) local_unnamed_addr #0 !dbg !2198 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2203
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2201, metadata !DIExpression(), metadata !2203, metadata ptr %2, metadata !DIExpression()), !dbg !2204
  tail call void @llvm.dbg.value(metadata double %0, metadata !2200, metadata !DIExpression()), !dbg !2204
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !2205
  %3 = call i32 @gsl_sf_fermi_dirac_0_e(double noundef %0, ptr noundef nonnull %2), !dbg !2205, !range !1077
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2202, metadata !DIExpression()), !dbg !2204
  %4 = icmp eq i32 %3, 0, !dbg !2206
  br i1 %4, label %6, label %5, !dbg !2205

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1597, i32 noundef %3) #7, !dbg !2208
  br label %6, !dbg !2208

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2205, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !2211
  ret double %7, !dbg !2211
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_1(double noundef %0) local_unnamed_addr #0 !dbg !2212 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2217
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2215, metadata !DIExpression(), metadata !2217, metadata ptr %2, metadata !DIExpression()), !dbg !2218
  tail call void @llvm.dbg.value(metadata double %0, metadata !2214, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !2219
  %3 = call i32 @gsl_sf_fermi_dirac_1_e(double noundef %0, ptr noundef nonnull %2), !dbg !2219, !range !1081
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2216, metadata !DIExpression()), !dbg !2218
  %4 = icmp eq i32 %3, 0, !dbg !2220
  br i1 %4, label %6, label %5, !dbg !2219

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1602, i32 noundef %3) #7, !dbg !2222
  br label %6, !dbg !2222

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2219, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !2225
  ret double %7, !dbg !2225
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_2(double noundef %0) local_unnamed_addr #0 !dbg !2226 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2231
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2229, metadata !DIExpression(), metadata !2231, metadata ptr %2, metadata !DIExpression()), !dbg !2232
  tail call void @llvm.dbg.value(metadata double %0, metadata !2228, metadata !DIExpression()), !dbg !2232
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !2233
  %3 = call i32 @gsl_sf_fermi_dirac_2_e(double noundef %0, ptr noundef nonnull %2), !dbg !2233, !range !1081
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2230, metadata !DIExpression()), !dbg !2232
  %4 = icmp eq i32 %3, 0, !dbg !2234
  br i1 %4, label %6, label %5, !dbg !2233

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1607, i32 noundef %3) #7, !dbg !2236
  br label %6, !dbg !2236

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2233, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !2239
  ret double %7, !dbg !2239
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_int(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2240 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2248
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2246, metadata !DIExpression(), metadata !2248, metadata ptr %3, metadata !DIExpression()), !dbg !2249
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2244, metadata !DIExpression()), !dbg !2249
  tail call void @llvm.dbg.value(metadata double %1, metadata !2245, metadata !DIExpression()), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !2250
  %4 = call i32 @gsl_sf_fermi_dirac_int_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !2250
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2247, metadata !DIExpression()), !dbg !2249
  %5 = icmp eq i32 %4, 0, !dbg !2251
  br i1 %5, label %7, label %6, !dbg !2250

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1612, i32 noundef %4) #7, !dbg !2253
  br label %7, !dbg !2253

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !2250, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !2256
  ret double %8, !dbg !2256
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_mhalf(double noundef %0) local_unnamed_addr #0 !dbg !2257 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2262
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2260, metadata !DIExpression(), metadata !2262, metadata ptr %2, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.dbg.value(metadata double %0, metadata !2259, metadata !DIExpression()), !dbg !2263
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !2264
  %3 = call i32 @gsl_sf_fermi_dirac_mhalf_e(double noundef %0, ptr noundef nonnull %2), !dbg !2264
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2261, metadata !DIExpression()), !dbg !2263
  %4 = icmp eq i32 %3, 0, !dbg !2265
  br i1 %4, label %6, label %5, !dbg !2264

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1617, i32 noundef %3) #7, !dbg !2267
  br label %6, !dbg !2267

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2264, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !2270
  ret double %7, !dbg !2270
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_half(double noundef %0) local_unnamed_addr #0 !dbg !2271 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2276
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2274, metadata !DIExpression(), metadata !2276, metadata ptr %2, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata double %0, metadata !2273, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !2278
  %3 = call i32 @gsl_sf_fermi_dirac_half_e(double noundef %0, ptr noundef nonnull %2), !dbg !2278
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2275, metadata !DIExpression()), !dbg !2277
  %4 = icmp eq i32 %3, 0, !dbg !2279
  br i1 %4, label %6, label %5, !dbg !2278

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1622, i32 noundef %3) #7, !dbg !2281
  br label %6, !dbg !2281

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2278, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !2284
  ret double %7, !dbg !2284
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_3half(double noundef %0) local_unnamed_addr #0 !dbg !2285 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2290
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2288, metadata !DIExpression(), metadata !2290, metadata ptr %2, metadata !DIExpression()), !dbg !2291
  tail call void @llvm.dbg.value(metadata double %0, metadata !2287, metadata !DIExpression()), !dbg !2291
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !2292
  %3 = call i32 @gsl_sf_fermi_dirac_3half_e(double noundef %0, ptr noundef nonnull %2), !dbg !2292
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2289, metadata !DIExpression()), !dbg !2291
  %4 = icmp eq i32 %3, 0, !dbg !2293
  br i1 %4, label %6, label %5, !dbg !2292

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 1627, i32 noundef %3) #7, !dbg !2295
  br label %6, !dbg !2295

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !2292, !tbaa !324
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !2298
  ret double %7, !dbg !2298
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_fermi_dirac_inc_0(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !2299 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2307
  tail call void @llvm.dbg.value(metadata double %0, metadata !2303, metadata !DIExpression()), !dbg !2308
  tail call void @llvm.dbg.value(metadata double %1, metadata !2304, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2146, metadata !DIExpression(), metadata !2307, metadata ptr %3, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata double %0, metadata !2140, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata double %1, metadata !2141, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata ptr undef, metadata !2142, metadata !DIExpression()), !dbg !2311
  %4 = fcmp olt double %1, 0.000000e+00, !dbg !2312
  br i1 %4, label %5, label %6, !dbg !2313

5:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2308
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2305, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2308
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1572, i32 noundef 1) #7, !dbg !2314
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !2305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2306, metadata !DIExpression()), !dbg !2308
  br label %10, !dbg !2315

6:                                                ; preds = %2
  %handler_result = call double @fSubHandlerDouble(double %1, double %0), !dbg !2316
  call void @llvm.dbg.value(metadata double %handler_result, metadata !2143, metadata !DIExpression()), !dbg !2309
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !2316
  %7 = call i32 @gsl_sf_fermi_dirac_0_e(double noundef %handler_result, ptr noundef nonnull %3), !dbg !2317, !range !1077
  call void @llvm.dbg.value(metadata i32 %7, metadata !2147, metadata !DIExpression()), !dbg !2309
  %8 = load double, ptr %3, align 8, !dbg !2318, !tbaa !324
  %handler_result1 = call double @fSubHandlerDouble(double %8, double %handler_result), !dbg !2319
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !2305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2308
  tail call void @llvm.dbg.value(metadata double poison, metadata !2305, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2308
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !2319
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !2305, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2306, metadata !DIExpression()), !dbg !2308
  %9 = icmp eq i32 %7, 0, !dbg !2320
  br i1 %9, label %13, label %10, !dbg !2315

10:                                               ; preds = %6, %5
  %11 = phi i32 [ 1, %5 ], [ %7, %6 ]
  %12 = phi double [ 0x7FF8000000000000, %5 ], [ %handler_result1, %6 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 1632, i32 noundef %11) #7, !dbg !2322
  br label %13, !dbg !2322

13:                                               ; preds = %10, %6
  %14 = phi double [ %handler_result1, %6 ], [ %12, %10 ]
  ret double %14, !dbg !2325
}

declare !dbg !2326 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2330 double @pow(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !2333 i32 @gsl_sf_fact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare !dbg !2338 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2341 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2343 double @cos(double noundef) local_unnamed_addr #3

declare !dbg !2344 i32 @gsl_sf_hyperg_U_int_e(i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2348 i32 @gsl_sf_hyperg_1F1_int_e(i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2349 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!336 = !DILocation(line: 1222, column: 21, scope: !313)
!337 = !DILocation(line: 1222, column: 17, scope: !313)
!338 = !DILocation(line: 1223, column: 26, scope: !313)
!339 = !DILocation(line: 1223, column: 23, scope: !313)
!340 = !DILocation(line: 1223, column: 41, scope: !313)
!341 = !DILocation(line: 1223, column: 61, scope: !313)
!342 = !DILocation(line: 1223, column: 59, scope: !313)
!343 = !DILocation(line: 1223, column: 13, scope: !313)
!344 = !DILocation(line: 1223, column: 17, scope: !313)
!345 = !DILocation(line: 1227, column: 21, scope: !317)
!346 = !DILocation(line: 1227, column: 17, scope: !317)
!347 = !DILocation(line: 0, scope: !317)
!348 = !DILocation(line: 1228, column: 22, scope: !317)
!349 = !DILocation(line: 1228, column: 17, scope: !317)
!350 = !DILocation(line: 1229, column: 41, scope: !317)
!351 = !DILocation(line: 1229, column: 53, scope: !317)
!352 = !DILocation(line: 1229, column: 13, scope: !317)
!353 = !DILocation(line: 1229, column: 17, scope: !317)
!354 = !DILocation(line: 0, scope: !315)
!355 = !DILocation(line: 1232, column: 1, scope: !306)
!356 = !DISubprogram(name: "gsl_error", scope: !17, file: !17, line: 77, type: !357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !359, !359, !18, !18}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!361 = !DISubprogram(name: "exp", scope: !362, file: !362, line: 95, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!363 = !DISubroutineType(types: !364)
!364 = !{!61, !61}
!365 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_0_e", scope: !2, file: !2, line: 1236, type: !307, scopeLine: 1237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !366)
!366 = !{!367, !368, !369, !373, !374}
!367 = !DILocalVariable(name: "x", arg: 1, scope: !365, file: !2, line: 1236, type: !60)
!368 = !DILocalVariable(name: "result", arg: 2, scope: !365, file: !2, line: 1236, type: !62)
!369 = !DILocalVariable(name: "ex", scope: !370, file: !2, line: 1242, type: !61)
!370 = distinct !DILexicalBlock(scope: !371, file: !2, line: 1241, column: 21)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 1241, column: 11)
!372 = distinct !DILexicalBlock(scope: !365, file: !2, line: 1238, column: 6)
!373 = !DILocalVariable(name: "ser", scope: !370, file: !2, line: 1243, type: !61)
!374 = !DILocalVariable(name: "ex", scope: !375, file: !2, line: 1254, type: !61)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 1253, column: 8)
!376 = distinct !DILexicalBlock(scope: !371, file: !2, line: 1248, column: 11)
!377 = !DILocation(line: 0, scope: !365)
!378 = !DILocation(line: 1238, column: 8, scope: !372)
!379 = !DILocation(line: 1238, column: 6, scope: !365)
!380 = !DILocation(line: 1239, column: 5, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 1239, column: 5)
!382 = distinct !DILexicalBlock(scope: !372, file: !2, line: 1238, column: 27)
!383 = !DILocation(line: 1239, column: 5, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !2, line: 1239, column: 5)
!385 = !DILocation(line: 1241, column: 13, scope: !371)
!386 = !DILocation(line: 1241, column: 11, scope: !372)
!387 = !DILocation(line: 1242, column: 18, scope: !370)
!388 = !DILocation(line: 0, scope: !370)
!389 = !DILocation(line: 1243, column: 78, scope: !370)
!390 = !DILocation(line: 1243, column: 64, scope: !370)
!391 = !DILocation(line: 1243, column: 50, scope: !370)
!392 = !DILocation(line: 1243, column: 36, scope: !370)
!393 = !DILocation(line: 1243, column: 26, scope: !370)
!394 = !DILocation(line: 1244, column: 22, scope: !370)
!395 = !DILocation(line: 1244, column: 17, scope: !370)
!396 = !DILocation(line: 1245, column: 43, scope: !370)
!397 = !DILocation(line: 1245, column: 41, scope: !370)
!398 = !DILocation(line: 1245, column: 13, scope: !370)
!399 = !DILocation(line: 1245, column: 17, scope: !370)
!400 = !DILocation(line: 1248, column: 13, scope: !376)
!401 = !DILocation(line: 1248, column: 11, scope: !371)
!402 = !DILocation(line: 1249, column: 29, scope: !403)
!403 = distinct !DILexicalBlock(scope: !376, file: !2, line: 1248, column: 21)
!404 = !DILocation(line: 1249, column: 19, scope: !403)
!405 = !DILocation(line: 1249, column: 17, scope: !403)
!406 = !DILocation(line: 1250, column: 26, scope: !403)
!407 = !DILocation(line: 1250, column: 19, scope: !403)
!408 = !DILocation(line: 1250, column: 13, scope: !403)
!409 = !DILocation(line: 1250, column: 17, scope: !403)
!410 = !DILocation(line: 1251, column: 5, scope: !403)
!411 = !DILocation(line: 1254, column: 21, scope: !375)
!412 = !DILocation(line: 1254, column: 17, scope: !375)
!413 = !DILocation(line: 0, scope: !375)
!414 = !DILocation(line: 1255, column: 38, scope: !375)
!415 = !DILocation(line: 1255, column: 46, scope: !375)
!416 = !DILocation(line: 1255, column: 49, scope: !375)
!417 = !DILocation(line: 1255, column: 61, scope: !375)
!418 = !DILocation(line: 1255, column: 64, scope: !375)
!419 = !DILocation(line: 1255, column: 26, scope: !375)
!420 = !DILocation(line: 1255, column: 17, scope: !375)
!421 = !DILocation(line: 1256, column: 28, scope: !375)
!422 = !DILocation(line: 1256, column: 13, scope: !375)
!423 = !DILocation(line: 1256, column: 17, scope: !375)
!424 = !DILocation(line: 0, scope: !372)
!425 = !DILocation(line: 1259, column: 1, scope: !365)
!426 = !DISubprogram(name: "log", scope: !362, file: !362, line: 104, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!427 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_1_e", scope: !2, file: !2, line: 1262, type: !307, scopeLine: 1263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !428)
!428 = !{!429, !430, !431, !435, !436, !437, !438, !442, !446, !449, !452, !453, !456}
!429 = !DILocalVariable(name: "x", arg: 1, scope: !427, file: !2, line: 1262, type: !60)
!430 = !DILocalVariable(name: "result", arg: 2, scope: !427, file: !2, line: 1262, type: !62)
!431 = !DILocalVariable(name: "ex", scope: !432, file: !2, line: 1270, type: !61)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 1267, column: 21)
!433 = distinct !DILexicalBlock(scope: !434, file: !2, line: 1267, column: 11)
!434 = distinct !DILexicalBlock(scope: !427, file: !2, line: 1264, column: 6)
!435 = !DILocalVariable(name: "term", scope: !432, file: !2, line: 1271, type: !61)
!436 = !DILocalVariable(name: "sum", scope: !432, file: !2, line: 1272, type: !61)
!437 = !DILocalVariable(name: "n", scope: !432, file: !2, line: 1273, type: !18)
!438 = !DILocalVariable(name: "rat", scope: !439, file: !2, line: 1275, type: !61)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 1274, column: 27)
!440 = distinct !DILexicalBlock(scope: !441, file: !2, line: 1274, column: 5)
!441 = distinct !DILexicalBlock(scope: !432, file: !2, line: 1274, column: 5)
!442 = !DILocalVariable(name: "t", scope: !443, file: !2, line: 1288, type: !61)
!443 = distinct !DILexicalBlock(scope: !444, file: !2, line: 1287, column: 20)
!444 = distinct !DILexicalBlock(scope: !445, file: !2, line: 1287, column: 11)
!445 = distinct !DILexicalBlock(scope: !433, file: !2, line: 1284, column: 11)
!446 = !DILocalVariable(name: "t", scope: !447, file: !2, line: 1292, type: !61)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 1291, column: 21)
!448 = distinct !DILexicalBlock(scope: !444, file: !2, line: 1291, column: 11)
!449 = !DILocalVariable(name: "t", scope: !450, file: !2, line: 1296, type: !61)
!450 = distinct !DILexicalBlock(scope: !451, file: !2, line: 1295, column: 21)
!451 = distinct !DILexicalBlock(scope: !448, file: !2, line: 1295, column: 11)
!452 = !DILocalVariable(name: "c", scope: !450, file: !2, line: 1297, type: !63)
!453 = !DILocalVariable(name: "t", scope: !454, file: !2, line: 1304, type: !61)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 1303, column: 41)
!455 = distinct !DILexicalBlock(scope: !451, file: !2, line: 1303, column: 11)
!456 = !DILocalVariable(name: "c", scope: !454, file: !2, line: 1305, type: !63)
!457 = distinct !DIAssignID()
!458 = !DILocation(line: 0, scope: !450)
!459 = distinct !DIAssignID()
!460 = !DILocation(line: 0, scope: !454)
!461 = !DILocation(line: 0, scope: !427)
!462 = !DILocation(line: 1264, column: 8, scope: !434)
!463 = !DILocation(line: 1264, column: 6, scope: !427)
!464 = !DILocation(line: 1265, column: 5, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 1265, column: 5)
!466 = distinct !DILexicalBlock(scope: !434, file: !2, line: 1264, column: 27)
!467 = !DILocation(line: 1265, column: 5, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !2, line: 1265, column: 5)
!469 = !DILocation(line: 1267, column: 13, scope: !433)
!470 = !DILocation(line: 1267, column: 11, scope: !434)
!471 = !DILocation(line: 1270, column: 19, scope: !432)
!472 = !DILocation(line: 0, scope: !432)
!473 = !DILocation(line: 1274, column: 5, scope: !441)
!474 = !DILocation(line: 1275, column: 21, scope: !439)
!475 = !DILocation(line: 1275, column: 27, scope: !439)
!476 = !DILocation(line: 0, scope: !439)
!477 = !DILocation(line: 1276, column: 19, scope: !439)
!478 = !DILocation(line: 1276, column: 25, scope: !439)
!479 = !DILocation(line: 1276, column: 12, scope: !439)
!480 = !DILocation(line: 1278, column: 19, scope: !481)
!481 = distinct !DILexicalBlock(scope: !439, file: !2, line: 1278, column: 10)
!482 = !DILocation(line: 1278, column: 10, scope: !481)
!483 = !DILocation(line: 1278, column: 25, scope: !481)
!484 = distinct !{!484, !473, !485, !486}
!485 = !DILocation(line: 1279, column: 5, scope: !441)
!486 = !{!"llvm.loop.mustprogress"}
!487 = !DILocation(line: 1280, column: 17, scope: !432)
!488 = !DILocation(line: 1281, column: 25, scope: !432)
!489 = !DILocation(line: 1281, column: 23, scope: !432)
!490 = !DILocation(line: 1281, column: 35, scope: !432)
!491 = !DILocation(line: 1281, column: 13, scope: !432)
!492 = !DILocation(line: 1281, column: 17, scope: !432)
!493 = !DILocation(line: 1284, column: 13, scope: !445)
!494 = !DILocation(line: 1284, column: 11, scope: !433)
!495 = !{}
!496 = !DILocalVariable(name: "cs", arg: 1, scope: !497, file: !498, line: 3, type: !501)
!497 = distinct !DISubprogram(name: "cheb_eval_e", scope: !498, file: !498, line: 3, type: !499, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !503)
!498 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!499 = !DISubroutineType(cc: DW_CC_nocall, types: !500)
!500 = !{!18, !501, !60, !62}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!503 = !{!496, !504, !505, !506, !507, !508, !509, !510, !511, !512, !516}
!504 = !DILocalVariable(name: "x", arg: 2, scope: !497, file: !498, line: 4, type: !60)
!505 = !DILocalVariable(name: "result", arg: 3, scope: !497, file: !498, line: 5, type: !62)
!506 = !DILocalVariable(name: "j", scope: !497, file: !498, line: 7, type: !18)
!507 = !DILocalVariable(name: "d", scope: !497, file: !498, line: 8, type: !61)
!508 = !DILocalVariable(name: "dd", scope: !497, file: !498, line: 9, type: !61)
!509 = !DILocalVariable(name: "y", scope: !497, file: !498, line: 11, type: !61)
!510 = !DILocalVariable(name: "y2", scope: !497, file: !498, line: 12, type: !61)
!511 = !DILocalVariable(name: "e", scope: !497, file: !498, line: 14, type: !61)
!512 = !DILocalVariable(name: "temp", scope: !513, file: !498, line: 17, type: !61)
!513 = distinct !DILexicalBlock(scope: !514, file: !498, line: 16, column: 33)
!514 = distinct !DILexicalBlock(scope: !515, file: !498, line: 16, column: 3)
!515 = distinct !DILexicalBlock(scope: !497, file: !498, line: 16, column: 3)
!516 = !DILocalVariable(name: "temp", scope: !517, file: !498, line: 24, type: !61)
!517 = distinct !DILexicalBlock(scope: !497, file: !498, line: 23, column: 3)
!518 = !DILocation(line: 0, scope: !497, inlinedAt: !519)
!519 = distinct !DILocation(line: 1285, column: 12, scope: !520)
!520 = distinct !DILexicalBlock(scope: !445, file: !2, line: 1284, column: 20)
!521 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !519)
!522 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !519)
!523 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !519)
!524 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !519)
!525 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !519)
!526 = !DILocation(line: 0, scope: !513, inlinedAt: !519)
!527 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !519)
!528 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !519)
!529 = !{!326, !326, i64 0}
!530 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !519)
!531 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !519)
!532 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !519)
!533 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !519)
!534 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !519)
!535 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !519)
!536 = distinct !{!536, !525, !537, !486}
!537 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !519)
!538 = !DILocation(line: 0, scope: !517, inlinedAt: !519)
!539 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !519)
!540 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !519)
!541 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !519)
!542 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !519)
!543 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !519)
!544 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !519)
!545 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !519)
!546 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !519)
!547 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !519)
!548 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !519)
!549 = !DILocation(line: 1285, column: 5, scope: !520)
!550 = !DILocation(line: 1287, column: 13, scope: !444)
!551 = !DILocation(line: 1287, column: 11, scope: !445)
!552 = !DILocation(line: 1288, column: 23, scope: !443)
!553 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !554)
!554 = distinct !DILocation(line: 1289, column: 12, scope: !443)
!555 = !DILocation(line: 0, scope: !443)
!556 = !DILocation(line: 0, scope: !497, inlinedAt: !554)
!557 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !554)
!558 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !554)
!559 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !554)
!560 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !554)
!561 = !DILocation(line: 0, scope: !513, inlinedAt: !554)
!562 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !554)
!563 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !554)
!564 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !554)
!565 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !554)
!566 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !554)
!567 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !554)
!568 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !554)
!569 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !554)
!570 = distinct !{!570, !560, !571, !486}
!571 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !554)
!572 = !DILocation(line: 0, scope: !517, inlinedAt: !554)
!573 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !554)
!574 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !554)
!575 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !554)
!576 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !554)
!577 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !554)
!578 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !554)
!579 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !554)
!580 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !554)
!581 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !554)
!582 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !554)
!583 = !DILocation(line: 1291, column: 13, scope: !448)
!584 = !DILocation(line: 1291, column: 11, scope: !444)
!585 = !DILocation(line: 1292, column: 23, scope: !447)
!586 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !587)
!587 = distinct !DILocation(line: 1293, column: 12, scope: !447)
!588 = !DILocation(line: 0, scope: !447)
!589 = !DILocation(line: 0, scope: !497, inlinedAt: !587)
!590 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !587)
!591 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !587)
!592 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !587)
!593 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !587)
!594 = !DILocation(line: 0, scope: !513, inlinedAt: !587)
!595 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !587)
!596 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !587)
!597 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !587)
!598 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !587)
!599 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !587)
!600 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !587)
!601 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !587)
!602 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !587)
!603 = distinct !{!603, !593, !604, !486}
!604 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !587)
!605 = !DILocation(line: 0, scope: !517, inlinedAt: !587)
!606 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !587)
!607 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !587)
!608 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !587)
!609 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !587)
!610 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !587)
!611 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !587)
!612 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !587)
!613 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !587)
!614 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !587)
!615 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !587)
!616 = !DILocation(line: 1295, column: 13, scope: !451)
!617 = !DILocation(line: 1295, column: 11, scope: !448)
!618 = !DILocation(line: 1296, column: 19, scope: !450)
!619 = !DILocation(line: 1297, column: 5, scope: !450)
!620 = !DILocation(line: 1298, column: 5, scope: !450)
!621 = !DILocation(line: 1299, column: 22, scope: !450)
!622 = !DILocation(line: 1299, column: 26, scope: !450)
!623 = !DILocation(line: 1299, column: 29, scope: !450)
!624 = !DILocation(line: 1299, column: 18, scope: !450)
!625 = !DILocation(line: 1300, column: 22, scope: !450)
!626 = !DILocation(line: 1300, column: 26, scope: !450)
!627 = !DILocation(line: 1300, column: 29, scope: !450)
!628 = !DILocation(line: 1300, column: 52, scope: !450)
!629 = !DILocation(line: 1300, column: 50, scope: !450)
!630 = !DILocation(line: 1300, column: 13, scope: !450)
!631 = !DILocation(line: 1300, column: 18, scope: !450)
!632 = !DILocation(line: 1302, column: 3, scope: !451)
!633 = !DILocation(line: 1303, column: 13, scope: !455)
!634 = !DILocation(line: 1303, column: 11, scope: !451)
!635 = !DILocation(line: 1304, column: 20, scope: !454)
!636 = !DILocation(line: 1305, column: 5, scope: !454)
!637 = !DILocation(line: 1306, column: 5, scope: !454)
!638 = !DILocation(line: 1307, column: 22, scope: !454)
!639 = !DILocation(line: 1307, column: 26, scope: !454)
!640 = !DILocation(line: 1307, column: 29, scope: !454)
!641 = !DILocation(line: 1307, column: 18, scope: !454)
!642 = !DILocation(line: 1308, column: 22, scope: !454)
!643 = !DILocation(line: 1308, column: 26, scope: !454)
!644 = !DILocation(line: 1308, column: 29, scope: !454)
!645 = !DILocation(line: 1308, column: 52, scope: !454)
!646 = !DILocation(line: 1308, column: 50, scope: !454)
!647 = !DILocation(line: 1308, column: 13, scope: !454)
!648 = !DILocation(line: 1308, column: 18, scope: !454)
!649 = !DILocation(line: 1310, column: 3, scope: !455)
!650 = !DILocation(line: 1311, column: 13, scope: !651)
!651 = distinct !DILexicalBlock(scope: !455, file: !2, line: 1311, column: 11)
!652 = !DILocation(line: 1311, column: 11, scope: !455)
!653 = !DILocation(line: 1312, column: 23, scope: !654)
!654 = distinct !DILexicalBlock(scope: !651, file: !2, line: 1311, column: 33)
!655 = !DILocation(line: 1312, column: 26, scope: !654)
!656 = !DILocation(line: 1312, column: 17, scope: !654)
!657 = !DILocation(line: 1313, column: 43, scope: !654)
!658 = !DILocation(line: 1313, column: 41, scope: !654)
!659 = !DILocation(line: 1313, column: 13, scope: !654)
!660 = !DILocation(line: 1313, column: 17, scope: !654)
!661 = !DILocation(line: 1314, column: 5, scope: !654)
!662 = !DILocation(line: 1317, column: 5, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !2, line: 1317, column: 5)
!664 = distinct !DILexicalBlock(scope: !651, file: !2, line: 1316, column: 8)
!665 = !DILocation(line: 1317, column: 5, scope: !666)
!666 = distinct !DILexicalBlock(scope: !663, file: !2, line: 1317, column: 5)
!667 = !DILocation(line: 0, scope: !434)
!668 = !DILocation(line: 1319, column: 1, scope: !427)
!669 = !DILocation(line: 0, scope: !497)
!670 = !DILocation(line: 11, column: 19, scope: !497)
!671 = !DILocation(line: 11, column: 28, scope: !497)
!672 = !{!673, !326, i64 16}
!673 = !{!"cheb_series_struct", !674, i64 0, !675, i64 8, !326, i64 16, !326, i64 24, !675, i64 32}
!674 = !{!"any pointer", !327, i64 0}
!675 = !{!"int", !327, i64 0}
!676 = !DILocation(line: 11, column: 36, scope: !497)
!677 = !{!673, !326, i64 24}
!678 = !DILocation(line: 11, column: 48, scope: !497)
!679 = !DILocation(line: 11, column: 39, scope: !497)
!680 = !DILocation(line: 12, column: 19, scope: !497)
!681 = !DILocation(line: 16, column: 15, scope: !515)
!682 = !{!673, !675, i64 8}
!683 = !DILocation(line: 16, column: 23, scope: !514)
!684 = !DILocation(line: 25, column: 30, scope: !517)
!685 = !{!673, !674, i64 0}
!686 = !DILocation(line: 16, column: 3, scope: !515)
!687 = !DILocation(line: 0, scope: !513)
!688 = !DILocation(line: 18, column: 11, scope: !513)
!689 = !DILocation(line: 18, column: 21, scope: !513)
!690 = !DILocation(line: 19, column: 10, scope: !513)
!691 = !DILocation(line: 19, column: 26, scope: !513)
!692 = !DILocation(line: 19, column: 37, scope: !513)
!693 = !DILocation(line: 19, column: 7, scope: !513)
!694 = !DILocation(line: 16, column: 29, scope: !514)
!695 = distinct !{!695, !686, !696, !486}
!696 = !DILocation(line: 21, column: 3, scope: !515)
!697 = !DILocation(line: 0, scope: !517)
!698 = !DILocation(line: 25, column: 10, scope: !517)
!699 = !DILocation(line: 25, column: 26, scope: !517)
!700 = !DILocation(line: 25, column: 24, scope: !517)
!701 = !DILocation(line: 26, column: 10, scope: !517)
!702 = !DILocation(line: 26, column: 25, scope: !517)
!703 = !DILocation(line: 26, column: 42, scope: !517)
!704 = !DILocation(line: 26, column: 40, scope: !517)
!705 = !DILocation(line: 26, column: 7, scope: !517)
!706 = !DILocation(line: 29, column: 15, scope: !497)
!707 = !DILocation(line: 30, column: 33, scope: !497)
!708 = !DILocation(line: 30, column: 44, scope: !497)
!709 = !DILocation(line: 30, column: 39, scope: !497)
!710 = !DILocation(line: 30, column: 11, scope: !497)
!711 = !DILocation(line: 30, column: 15, scope: !497)
!712 = !DILocation(line: 32, column: 3, scope: !497)
!713 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_2_e", scope: !2, file: !2, line: 1322, type: !307, scopeLine: 1323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !714)
!714 = !{!715, !716, !717, !721, !722, !723, !724, !728, !732, !735, !738, !739, !742}
!715 = !DILocalVariable(name: "x", arg: 1, scope: !713, file: !2, line: 1322, type: !60)
!716 = !DILocalVariable(name: "result", arg: 2, scope: !713, file: !2, line: 1322, type: !62)
!717 = !DILocalVariable(name: "ex", scope: !718, file: !2, line: 1330, type: !61)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 1327, column: 21)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 1327, column: 11)
!720 = distinct !DILexicalBlock(scope: !713, file: !2, line: 1324, column: 6)
!721 = !DILocalVariable(name: "term", scope: !718, file: !2, line: 1331, type: !61)
!722 = !DILocalVariable(name: "sum", scope: !718, file: !2, line: 1332, type: !61)
!723 = !DILocalVariable(name: "n", scope: !718, file: !2, line: 1333, type: !18)
!724 = !DILocalVariable(name: "rat", scope: !725, file: !2, line: 1335, type: !61)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 1334, column: 27)
!726 = distinct !DILexicalBlock(scope: !727, file: !2, line: 1334, column: 5)
!727 = distinct !DILexicalBlock(scope: !718, file: !2, line: 1334, column: 5)
!728 = !DILocalVariable(name: "t", scope: !729, file: !2, line: 1348, type: !61)
!729 = distinct !DILexicalBlock(scope: !730, file: !2, line: 1347, column: 20)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 1347, column: 11)
!731 = distinct !DILexicalBlock(scope: !719, file: !2, line: 1344, column: 11)
!732 = !DILocalVariable(name: "t", scope: !733, file: !2, line: 1352, type: !61)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 1351, column: 21)
!734 = distinct !DILexicalBlock(scope: !730, file: !2, line: 1351, column: 11)
!735 = !DILocalVariable(name: "t", scope: !736, file: !2, line: 1356, type: !61)
!736 = distinct !DILexicalBlock(scope: !737, file: !2, line: 1355, column: 21)
!737 = distinct !DILexicalBlock(scope: !734, file: !2, line: 1355, column: 11)
!738 = !DILocalVariable(name: "c", scope: !736, file: !2, line: 1357, type: !63)
!739 = !DILocalVariable(name: "t", scope: !740, file: !2, line: 1364, type: !61)
!740 = distinct !DILexicalBlock(scope: !741, file: !2, line: 1363, column: 42)
!741 = distinct !DILexicalBlock(scope: !737, file: !2, line: 1363, column: 11)
!742 = !DILocalVariable(name: "c", scope: !740, file: !2, line: 1365, type: !63)
!743 = distinct !DIAssignID()
!744 = !DILocation(line: 0, scope: !736)
!745 = distinct !DIAssignID()
!746 = !DILocation(line: 0, scope: !740)
!747 = !DILocation(line: 0, scope: !713)
!748 = !DILocation(line: 1324, column: 8, scope: !720)
!749 = !DILocation(line: 1324, column: 6, scope: !713)
!750 = !DILocation(line: 1325, column: 5, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !2, line: 1325, column: 5)
!752 = distinct !DILexicalBlock(scope: !720, file: !2, line: 1324, column: 27)
!753 = !DILocation(line: 1325, column: 5, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !2, line: 1325, column: 5)
!755 = !DILocation(line: 1327, column: 13, scope: !719)
!756 = !DILocation(line: 1327, column: 11, scope: !720)
!757 = !DILocation(line: 1330, column: 19, scope: !718)
!758 = !DILocation(line: 0, scope: !718)
!759 = !DILocation(line: 1334, column: 5, scope: !727)
!760 = !DILocation(line: 1335, column: 21, scope: !725)
!761 = !DILocation(line: 1335, column: 27, scope: !725)
!762 = !DILocation(line: 0, scope: !725)
!763 = !DILocation(line: 1336, column: 19, scope: !725)
!764 = !DILocation(line: 1336, column: 25, scope: !725)
!765 = !DILocation(line: 1336, column: 31, scope: !725)
!766 = !DILocation(line: 1336, column: 12, scope: !725)
!767 = !DILocation(line: 1338, column: 19, scope: !768)
!768 = distinct !DILexicalBlock(scope: !725, file: !2, line: 1338, column: 10)
!769 = !DILocation(line: 1338, column: 10, scope: !768)
!770 = !DILocation(line: 1338, column: 25, scope: !768)
!771 = distinct !{!771, !759, !772, !486}
!772 = !DILocation(line: 1339, column: 5, scope: !727)
!773 = !DILocation(line: 1340, column: 17, scope: !718)
!774 = !DILocation(line: 1341, column: 43, scope: !718)
!775 = !DILocation(line: 1341, column: 41, scope: !718)
!776 = !DILocation(line: 1341, column: 13, scope: !718)
!777 = !DILocation(line: 1341, column: 17, scope: !718)
!778 = !DILocation(line: 1344, column: 13, scope: !731)
!779 = !DILocation(line: 1344, column: 11, scope: !719)
!780 = !DILocation(line: 0, scope: !497, inlinedAt: !781)
!781 = distinct !DILocation(line: 1345, column: 12, scope: !782)
!782 = distinct !DILexicalBlock(scope: !731, file: !2, line: 1344, column: 20)
!783 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !781)
!784 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !781)
!785 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !781)
!786 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !781)
!787 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !781)
!788 = !DILocation(line: 0, scope: !513, inlinedAt: !781)
!789 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !781)
!790 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !781)
!791 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !781)
!792 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !781)
!793 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !781)
!794 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !781)
!795 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !781)
!796 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !781)
!797 = distinct !{!797, !787, !798, !486}
!798 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !781)
!799 = !DILocation(line: 0, scope: !517, inlinedAt: !781)
!800 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !781)
!801 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !781)
!802 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !781)
!803 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !781)
!804 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !781)
!805 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !781)
!806 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !781)
!807 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !781)
!808 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !781)
!809 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !781)
!810 = !DILocation(line: 1345, column: 5, scope: !782)
!811 = !DILocation(line: 1347, column: 13, scope: !730)
!812 = !DILocation(line: 1347, column: 11, scope: !731)
!813 = !DILocation(line: 1348, column: 23, scope: !729)
!814 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !815)
!815 = distinct !DILocation(line: 1349, column: 12, scope: !729)
!816 = !DILocation(line: 0, scope: !729)
!817 = !DILocation(line: 0, scope: !497, inlinedAt: !815)
!818 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !815)
!819 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !815)
!820 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !815)
!821 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !815)
!822 = !DILocation(line: 0, scope: !513, inlinedAt: !815)
!823 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !815)
!824 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !815)
!825 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !815)
!826 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !815)
!827 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !815)
!828 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !815)
!829 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !815)
!830 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !815)
!831 = distinct !{!831, !821, !832, !486}
!832 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !815)
!833 = !DILocation(line: 0, scope: !517, inlinedAt: !815)
!834 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !815)
!835 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !815)
!836 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !815)
!837 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !815)
!838 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !815)
!839 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !815)
!840 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !815)
!841 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !815)
!842 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !815)
!843 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !815)
!844 = !DILocation(line: 1351, column: 13, scope: !734)
!845 = !DILocation(line: 1351, column: 11, scope: !730)
!846 = !DILocation(line: 1352, column: 23, scope: !733)
!847 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !848)
!848 = distinct !DILocation(line: 1353, column: 12, scope: !733)
!849 = !DILocation(line: 0, scope: !733)
!850 = !DILocation(line: 0, scope: !497, inlinedAt: !848)
!851 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !848)
!852 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !848)
!853 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !848)
!854 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !848)
!855 = !DILocation(line: 0, scope: !513, inlinedAt: !848)
!856 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !848)
!857 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !848)
!858 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !848)
!859 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !848)
!860 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !848)
!861 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !848)
!862 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !848)
!863 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !848)
!864 = distinct !{!864, !854, !865, !486}
!865 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !848)
!866 = !DILocation(line: 0, scope: !517, inlinedAt: !848)
!867 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !848)
!868 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !848)
!869 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !848)
!870 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !848)
!871 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !848)
!872 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !848)
!873 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !848)
!874 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !848)
!875 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !848)
!876 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !848)
!877 = !DILocation(line: 1355, column: 13, scope: !737)
!878 = !DILocation(line: 1355, column: 11, scope: !734)
!879 = !DILocation(line: 1356, column: 19, scope: !736)
!880 = !DILocation(line: 1357, column: 5, scope: !736)
!881 = !DILocation(line: 1358, column: 5, scope: !736)
!882 = !DILocation(line: 1359, column: 22, scope: !736)
!883 = !DILocation(line: 1359, column: 26, scope: !736)
!884 = !DILocation(line: 1359, column: 29, scope: !736)
!885 = !DILocation(line: 1359, column: 31, scope: !736)
!886 = !DILocation(line: 1359, column: 18, scope: !736)
!887 = !DILocation(line: 1360, column: 22, scope: !736)
!888 = !DILocation(line: 1360, column: 26, scope: !736)
!889 = !DILocation(line: 1360, column: 29, scope: !736)
!890 = !DILocation(line: 1360, column: 31, scope: !736)
!891 = !DILocation(line: 1360, column: 60, scope: !736)
!892 = !DILocation(line: 1360, column: 58, scope: !736)
!893 = !DILocation(line: 1360, column: 13, scope: !736)
!894 = !DILocation(line: 1360, column: 18, scope: !736)
!895 = !DILocation(line: 1362, column: 3, scope: !737)
!896 = !DILocation(line: 1363, column: 13, scope: !741)
!897 = !DILocation(line: 1363, column: 11, scope: !737)
!898 = !DILocation(line: 1364, column: 20, scope: !740)
!899 = !DILocation(line: 1365, column: 5, scope: !740)
!900 = !DILocation(line: 1366, column: 5, scope: !740)
!901 = !DILocation(line: 1367, column: 21, scope: !740)
!902 = !DILocation(line: 1367, column: 25, scope: !740)
!903 = !DILocation(line: 1367, column: 28, scope: !740)
!904 = !DILocation(line: 1367, column: 30, scope: !740)
!905 = !DILocation(line: 1367, column: 17, scope: !740)
!906 = !DILocation(line: 1368, column: 21, scope: !740)
!907 = !DILocation(line: 1368, column: 25, scope: !740)
!908 = !DILocation(line: 1368, column: 28, scope: !740)
!909 = !DILocation(line: 1368, column: 30, scope: !740)
!910 = !DILocation(line: 1368, column: 59, scope: !740)
!911 = !DILocation(line: 1368, column: 57, scope: !740)
!912 = !DILocation(line: 1368, column: 13, scope: !740)
!913 = !DILocation(line: 1368, column: 17, scope: !740)
!914 = !DILocation(line: 1370, column: 3, scope: !741)
!915 = !DILocation(line: 1371, column: 13, scope: !916)
!916 = distinct !DILexicalBlock(scope: !741, file: !2, line: 1371, column: 11)
!917 = !DILocation(line: 1371, column: 11, scope: !741)
!918 = !DILocation(line: 1372, column: 27, scope: !919)
!919 = distinct !DILexicalBlock(scope: !916, file: !2, line: 1371, column: 34)
!920 = !DILocation(line: 1372, column: 30, scope: !919)
!921 = !DILocation(line: 1372, column: 32, scope: !919)
!922 = !DILocation(line: 1372, column: 17, scope: !919)
!923 = !DILocation(line: 1373, column: 43, scope: !919)
!924 = !DILocation(line: 1373, column: 41, scope: !919)
!925 = !DILocation(line: 1373, column: 13, scope: !919)
!926 = !DILocation(line: 1373, column: 17, scope: !919)
!927 = !DILocation(line: 1374, column: 5, scope: !919)
!928 = !DILocation(line: 1377, column: 5, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !2, line: 1377, column: 5)
!930 = distinct !DILexicalBlock(scope: !916, file: !2, line: 1376, column: 8)
!931 = !DILocation(line: 1377, column: 5, scope: !932)
!932 = distinct !DILexicalBlock(scope: !929, file: !2, line: 1377, column: 5)
!933 = !DILocation(line: 0, scope: !720)
!934 = !DILocation(line: 1379, column: 1, scope: !713)
!935 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_int_e", scope: !2, file: !2, line: 1382, type: !57, scopeLine: 1383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !936)
!936 = !{!937, !938, !939, !940, !950}
!937 = !DILocalVariable(name: "j", arg: 1, scope: !935, file: !2, line: 1382, type: !59)
!938 = !DILocalVariable(name: "x", arg: 2, scope: !935, file: !2, line: 1382, type: !60)
!939 = !DILocalVariable(name: "result", arg: 3, scope: !935, file: !2, line: 1382, type: !62)
!940 = !DILocalVariable(name: "fasymp", scope: !941, file: !2, line: 1409, type: !63)
!941 = distinct !DILexicalBlock(scope: !942, file: !2, line: 1408, column: 8)
!942 = distinct !DILexicalBlock(scope: !943, file: !2, line: 1405, column: 11)
!943 = distinct !DILexicalBlock(scope: !944, file: !2, line: 1402, column: 11)
!944 = distinct !DILexicalBlock(scope: !945, file: !2, line: 1399, column: 11)
!945 = distinct !DILexicalBlock(scope: !946, file: !2, line: 1396, column: 11)
!946 = distinct !DILexicalBlock(scope: !947, file: !2, line: 1393, column: 11)
!947 = distinct !DILexicalBlock(scope: !948, file: !2, line: 1390, column: 11)
!948 = distinct !DILexicalBlock(scope: !949, file: !2, line: 1387, column: 12)
!949 = distinct !DILexicalBlock(scope: !935, file: !2, line: 1384, column: 6)
!950 = !DILocalVariable(name: "stat_asymp", scope: !941, file: !2, line: 1410, type: !18)
!951 = distinct !DIAssignID()
!952 = distinct !DIAssignID()
!953 = !DILocation(line: 0, scope: !941)
!954 = !DILocation(line: 0, scope: !935)
!955 = !DILocation(line: 1384, column: 8, scope: !949)
!956 = !DILocation(line: 1384, column: 6, scope: !935)
!957 = !DILocation(line: 0, scope: !56, inlinedAt: !958)
!958 = distinct !DILocation(line: 1385, column: 12, scope: !959)
!959 = distinct !DILexicalBlock(scope: !949, file: !2, line: 1384, column: 14)
!960 = !DILocation(line: 857, column: 3, scope: !56, inlinedAt: !958)
!961 = !DILocation(line: 864, column: 13, scope: !79, inlinedAt: !958)
!962 = !DILocation(line: 864, column: 11, scope: !80, inlinedAt: !958)
!963 = !DILocation(line: 866, column: 17, scope: !964, inlinedAt: !958)
!964 = distinct !DILexicalBlock(scope: !79, file: !2, line: 864, column: 25)
!965 = !DILocation(line: 867, column: 5, scope: !966, inlinedAt: !958)
!966 = distinct !DILexicalBlock(scope: !964, file: !2, line: 867, column: 5)
!967 = !DILocation(line: 872, column: 13, scope: !78, inlinedAt: !958)
!968 = !DILocation(line: 0, scope: !78, inlinedAt: !958)
!969 = !DILocation(line: 874, column: 5, scope: !78, inlinedAt: !958)
!970 = !DILocation(line: 874, column: 15, scope: !78, inlinedAt: !958)
!971 = distinct !DIAssignID()
!972 = !DILocation(line: 876, column: 15, scope: !973, inlinedAt: !958)
!973 = distinct !DILexicalBlock(scope: !974, file: !2, line: 876, column: 5)
!974 = distinct !DILexicalBlock(scope: !78, file: !2, line: 876, column: 5)
!975 = !DILocation(line: 876, column: 5, scope: !974, inlinedAt: !958)
!976 = !DILocation(line: 877, column: 28, scope: !977, inlinedAt: !958)
!977 = distinct !DILexicalBlock(scope: !973, file: !2, line: 876, column: 25)
!978 = !DILocation(line: 877, column: 20, scope: !977, inlinedAt: !958)
!979 = !DILocation(line: 877, column: 19, scope: !977, inlinedAt: !958)
!980 = !DILocation(line: 877, column: 7, scope: !977, inlinedAt: !958)
!981 = !DILocation(line: 877, column: 17, scope: !977, inlinedAt: !958)
!982 = !DILocation(line: 878, column: 19, scope: !983, inlinedAt: !958)
!983 = distinct !DILexicalBlock(scope: !984, file: !2, line: 878, column: 7)
!984 = distinct !DILexicalBlock(scope: !977, file: !2, line: 878, column: 7)
!985 = !DILocation(line: 878, column: 7, scope: !984, inlinedAt: !958)
!986 = !DILocation(line: 879, column: 21, scope: !987, inlinedAt: !958)
!987 = distinct !DILexicalBlock(scope: !983, file: !2, line: 878, column: 29)
!988 = !DILocation(line: 879, column: 23, scope: !987, inlinedAt: !958)
!989 = !DILocation(line: 879, column: 22, scope: !987, inlinedAt: !958)
!990 = !DILocation(line: 879, column: 40, scope: !987, inlinedAt: !958)
!991 = !DILocation(line: 879, column: 37, scope: !987, inlinedAt: !958)
!992 = !DILocation(line: 879, column: 35, scope: !987, inlinedAt: !958)
!993 = !DILocation(line: 879, column: 45, scope: !987, inlinedAt: !958)
!994 = !DILocation(line: 879, column: 44, scope: !987, inlinedAt: !958)
!995 = !DILocation(line: 879, column: 19, scope: !987, inlinedAt: !958)
!996 = distinct !{!996, !985, !997, !486}
!997 = !DILocation(line: 880, column: 7, scope: !984, inlinedAt: !958)
!998 = !DILocation(line: 876, column: 21, scope: !973, inlinedAt: !958)
!999 = distinct !{!999, !975, !1000, !486}
!1000 = !DILocation(line: 881, column: 5, scope: !974, inlinedAt: !958)
!1001 = !DILocation(line: 883, column: 10, scope: !1002, inlinedAt: !958)
!1002 = distinct !DILexicalBlock(scope: !78, file: !2, line: 883, column: 8)
!1003 = !DILocation(line: 883, column: 8, scope: !78, inlinedAt: !958)
!1004 = !DILocation(line: 884, column: 15, scope: !1005, inlinedAt: !958)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 883, column: 18)
!1006 = !DILocation(line: 884, column: 11, scope: !1005, inlinedAt: !958)
!1007 = !DILocation(line: 885, column: 11, scope: !1005, inlinedAt: !958)
!1008 = !DILocation(line: 886, column: 7, scope: !1009, inlinedAt: !958)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 886, column: 7)
!1010 = !DILocation(line: 891, column: 11, scope: !1011, inlinedAt: !958)
!1011 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 890, column: 10)
!1012 = !DILocation(line: 892, column: 11, scope: !1011, inlinedAt: !958)
!1013 = !DILocation(line: 893, column: 7, scope: !1014, inlinedAt: !958)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 893, column: 7)
!1015 = !DILocation(line: 887, column: 14, scope: !1016, inlinedAt: !958)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 886, column: 27)
!1017 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 886, column: 7)
!1018 = !DILocation(line: 887, column: 19, scope: !1016, inlinedAt: !958)
!1019 = !DILocation(line: 886, column: 23, scope: !1017, inlinedAt: !958)
!1020 = distinct !{!1020, !1008, !1021, !486}
!1021 = !DILocation(line: 888, column: 7, scope: !1009, inlinedAt: !958)
!1022 = !DILocation(line: 893, column: 14, scope: !1014, inlinedAt: !958)
!1023 = !DILocation(line: 894, column: 14, scope: !1024, inlinedAt: !958)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 893, column: 29)
!1025 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 893, column: 7)
!1026 = !DILocation(line: 894, column: 19, scope: !1024, inlinedAt: !958)
!1027 = !DILocation(line: 893, column: 25, scope: !1025, inlinedAt: !958)
!1028 = !DILocation(line: 893, column: 19, scope: !1025, inlinedAt: !958)
!1029 = distinct !{!1029, !1013, !1030, !486}
!1030 = !DILocation(line: 895, column: 7, scope: !1014, inlinedAt: !958)
!1031 = distinct !{!1031, !1032}
!1032 = !{!"llvm.loop.unroll.disable"}
!1033 = !DILocation(line: 0, scope: !1002, inlinedAt: !958)
!1034 = !DILocation(line: 898, column: 9, scope: !78, inlinedAt: !958)
!1035 = !DILocation(line: 899, column: 20, scope: !78, inlinedAt: !958)
!1036 = !DILocation(line: 899, column: 22, scope: !78, inlinedAt: !958)
!1037 = !DILocation(line: 899, column: 17, scope: !78, inlinedAt: !958)
!1038 = !DILocation(line: 900, column: 43, scope: !78, inlinedAt: !958)
!1039 = !DILocation(line: 900, column: 41, scope: !78, inlinedAt: !958)
!1040 = !DILocation(line: 900, column: 13, scope: !78, inlinedAt: !958)
!1041 = !DILocation(line: 900, column: 17, scope: !78, inlinedAt: !958)
!1042 = !DILocation(line: 0, scope: !80, inlinedAt: !958)
!1043 = !DILocation(line: 903, column: 1, scope: !56, inlinedAt: !958)
!1044 = !DILocation(line: 1385, column: 5, scope: !959)
!1045 = !DILocation(line: 1387, column: 12, scope: !949)
!1046 = !DILocation(line: 0, scope: !306, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 1388, column: 12, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !948, file: !2, line: 1387, column: 21)
!1049 = !DILocation(line: 1217, column: 8, scope: !315, inlinedAt: !1047)
!1050 = !DILocation(line: 1217, column: 6, scope: !306, inlinedAt: !1047)
!1051 = !DILocation(line: 1218, column: 5, scope: !322, inlinedAt: !1047)
!1052 = !DILocation(line: 1218, column: 5, scope: !331, inlinedAt: !1047)
!1053 = !DILocation(line: 1220, column: 13, scope: !314, inlinedAt: !1047)
!1054 = !DILocation(line: 1220, column: 11, scope: !315, inlinedAt: !1047)
!1055 = !DILocation(line: 1221, column: 23, scope: !313, inlinedAt: !1047)
!1056 = !DILocation(line: 0, scope: !313, inlinedAt: !1047)
!1057 = !DILocation(line: 1222, column: 21, scope: !313, inlinedAt: !1047)
!1058 = !DILocation(line: 1222, column: 17, scope: !313, inlinedAt: !1047)
!1059 = !DILocation(line: 1223, column: 26, scope: !313, inlinedAt: !1047)
!1060 = !DILocation(line: 1223, column: 23, scope: !313, inlinedAt: !1047)
!1061 = !DILocation(line: 1223, column: 41, scope: !313, inlinedAt: !1047)
!1062 = !DILocation(line: 1223, column: 61, scope: !313, inlinedAt: !1047)
!1063 = !DILocation(line: 1223, column: 59, scope: !313, inlinedAt: !1047)
!1064 = !DILocation(line: 1223, column: 13, scope: !313, inlinedAt: !1047)
!1065 = !DILocation(line: 1223, column: 17, scope: !313, inlinedAt: !1047)
!1066 = !DILocation(line: 1227, column: 21, scope: !317, inlinedAt: !1047)
!1067 = !DILocation(line: 1227, column: 17, scope: !317, inlinedAt: !1047)
!1068 = !DILocation(line: 0, scope: !317, inlinedAt: !1047)
!1069 = !DILocation(line: 1228, column: 22, scope: !317, inlinedAt: !1047)
!1070 = !DILocation(line: 1228, column: 17, scope: !317, inlinedAt: !1047)
!1071 = !DILocation(line: 1229, column: 41, scope: !317, inlinedAt: !1047)
!1072 = !DILocation(line: 1229, column: 53, scope: !317, inlinedAt: !1047)
!1073 = !DILocation(line: 1229, column: 13, scope: !317, inlinedAt: !1047)
!1074 = !DILocation(line: 1229, column: 17, scope: !317, inlinedAt: !1047)
!1075 = !DILocation(line: 1391, column: 12, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !947, file: !2, line: 1390, column: 19)
!1077 = !{i32 0, i32 16}
!1078 = !DILocation(line: 1391, column: 5, scope: !1076)
!1079 = !DILocation(line: 1394, column: 12, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !946, file: !2, line: 1393, column: 19)
!1081 = !{i32 0, i32 17}
!1082 = !DILocation(line: 1394, column: 5, scope: !1080)
!1083 = !DILocation(line: 1397, column: 12, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !945, file: !2, line: 1396, column: 19)
!1085 = !DILocation(line: 1397, column: 5, scope: !1084)
!1086 = !DILocation(line: 1399, column: 13, scope: !944)
!1087 = !DILocation(line: 1399, column: 11, scope: !945)
!1088 = !DILocation(line: 1400, column: 19, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !944, file: !2, line: 1399, column: 20)
!1090 = !DILocation(line: 1400, column: 12, scope: !1089)
!1091 = !{i32 0, i32 12}
!1092 = !DILocation(line: 1400, column: 5, scope: !1089)
!1093 = !DILocation(line: 1402, column: 13, scope: !943)
!1094 = !DILocation(line: 1402, column: 11, scope: !944)
!1095 = !DILocation(line: 1403, column: 30, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !943, file: !2, line: 1402, column: 21)
!1097 = !DILocation(line: 1403, column: 12, scope: !1096)
!1098 = !DILocation(line: 1403, column: 5, scope: !1096)
!1099 = !DILocation(line: 1405, column: 13, scope: !942)
!1100 = !DILocation(line: 1405, column: 11, scope: !943)
!1101 = !DILocation(line: 1406, column: 12, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !942, file: !2, line: 1405, column: 20)
!1103 = !DILocation(line: 1406, column: 5, scope: !1102)
!1104 = !DILocation(line: 1409, column: 5, scope: !941)
!1105 = !DILocation(line: 1410, column: 31, scope: !941)
!1106 = !DILocation(line: 1410, column: 22, scope: !941)
!1107 = !DILocation(line: 1412, column: 19, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !941, file: !2, line: 1412, column: 8)
!1109 = !DILocation(line: 1412, column: 8, scope: !941)
!1110 = !DILocation(line: 1413, column: 29, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 1412, column: 35)
!1112 = !DILocation(line: 1413, column: 20, scope: !1111)
!1113 = !DILocation(line: 1414, column: 29, scope: !1111)
!1114 = !DILocation(line: 1414, column: 15, scope: !1111)
!1115 = !DILocation(line: 1415, column: 46, scope: !1111)
!1116 = !DILocation(line: 1415, column: 44, scope: !1111)
!1117 = !DILocation(line: 1415, column: 19, scope: !1111)
!1118 = !DILocation(line: 1416, column: 7, scope: !1111)
!1119 = !DILocation(line: 1419, column: 14, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 1418, column: 10)
!1121 = !DILocation(line: 1419, column: 7, scope: !1120)
!1122 = !DILocation(line: 0, scope: !1108)
!1123 = !DILocation(line: 1421, column: 3, scope: !942)
!1124 = !DILocation(line: 0, scope: !949)
!1125 = !DILocation(line: 1422, column: 1, scope: !935)
!1126 = distinct !DIAssignID()
!1127 = !DILocation(line: 0, scope: !90)
!1128 = distinct !DIAssignID()
!1129 = !DILocation(line: 918, column: 3, scope: !90)
!1130 = !DILocation(line: 920, column: 8, scope: !102)
!1131 = !DILocation(line: 920, column: 6, scope: !90)
!1132 = !DILocation(line: 922, column: 17, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !102, file: !2, line: 920, column: 27)
!1134 = !DILocation(line: 923, column: 5, scope: !1133)
!1135 = !DILocation(line: 925, column: 13, scope: !101)
!1136 = !DILocation(line: 925, column: 20, scope: !101)
!1137 = !DILocation(line: 925, column: 28, scope: !101)
!1138 = !DILocation(line: 925, column: 27, scope: !101)
!1139 = !DILocation(line: 925, column: 25, scope: !101)
!1140 = !DILocation(line: 925, column: 11, scope: !102)
!1141 = !DILocation(line: 930, column: 19, scope: !100)
!1142 = !DILocation(line: 0, scope: !100)
!1143 = !DILocation(line: 934, column: 5, scope: !109)
!1144 = !DILocation(line: 935, column: 21, scope: !107)
!1145 = !DILocation(line: 935, column: 27, scope: !107)
!1146 = !DILocation(line: 0, scope: !107)
!1147 = !DILocation(line: 936, column: 20, scope: !107)
!1148 = !DILocation(line: 937, column: 19, scope: !107)
!1149 = !DILocation(line: 937, column: 12, scope: !107)
!1150 = !DILocation(line: 939, column: 19, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !107, file: !2, line: 939, column: 10)
!1152 = !DILocation(line: 939, column: 10, scope: !1151)
!1153 = !DILocation(line: 939, column: 25, scope: !1151)
!1154 = distinct !{!1154, !1143, !1155, !486}
!1155 = !DILocation(line: 940, column: 5, scope: !109)
!1156 = !DILocation(line: 941, column: 17, scope: !100)
!1157 = !DILocation(line: 942, column: 43, scope: !100)
!1158 = !DILocation(line: 942, column: 41, scope: !100)
!1159 = !DILocation(line: 942, column: 13, scope: !100)
!1160 = !DILocation(line: 942, column: 17, scope: !100)
!1161 = !DILocation(line: 0, scope: !112)
!1162 = !DILocation(line: 948, column: 19, scope: !112)
!1163 = !DILocation(line: 948, column: 18, scope: !112)
!1164 = !DILocation(line: 953, column: 5, scope: !122)
!1165 = !DILocation(line: 959, column: 59, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !120, file: !2, line: 959, column: 10)
!1167 = !DILocation(line: 953, column: 23, scope: !121)
!1168 = distinct !{!1168, !1164, !1169, !486}
!1169 = !DILocation(line: 961, column: 5, scope: !122)
!1170 = !DILocation(line: 963, column: 18, scope: !112)
!1171 = !DILocation(line: 964, column: 13, scope: !112)
!1172 = !DILocation(line: 965, column: 42, scope: !112)
!1173 = !DILocation(line: 965, column: 17, scope: !112)
!1174 = !DILocation(line: 967, column: 8, scope: !112)
!1175 = !DILocation(line: 954, column: 27, scope: !120)
!1176 = !DILocation(line: 954, column: 18, scope: !120)
!1177 = !DILocation(line: 0, scope: !120)
!1178 = !DILocation(line: 955, column: 24, scope: !120)
!1179 = !DILocalVariable(name: "term", arg: 1, scope: !1180, file: !2, line: 819, type: !60)
!1180 = distinct !DISubprogram(name: "fd_whiz", scope: !2, file: !2, line: 819, type: !1181, scopeLine: 822, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!18, !60, !59, !182, !182, !182, !182}
!1183 = !{!1179, !1184, !1185, !1186, !1187, !1188, !1189, !1192, !1193, !1194}
!1184 = !DILocalVariable(name: "iterm", arg: 2, scope: !1180, file: !2, line: 819, type: !59)
!1185 = !DILocalVariable(name: "qnum", arg: 3, scope: !1180, file: !2, line: 820, type: !182)
!1186 = !DILocalVariable(name: "qden", arg: 4, scope: !1180, file: !2, line: 820, type: !182)
!1187 = !DILocalVariable(name: "result", arg: 5, scope: !1180, file: !2, line: 821, type: !182)
!1188 = !DILocalVariable(name: "s", arg: 6, scope: !1180, file: !2, line: 821, type: !182)
!1189 = !DILocalVariable(name: "factor", scope: !1190, file: !2, line: 831, type: !61)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 830, column: 17)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 830, column: 6)
!1192 = !DILocalVariable(name: "ratio", scope: !1190, file: !2, line: 832, type: !61)
!1193 = !DILocalVariable(name: "j", scope: !1190, file: !2, line: 833, type: !18)
!1194 = !DILocalVariable(name: "c", scope: !1195, file: !2, line: 835, type: !61)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 834, column: 31)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 834, column: 5)
!1197 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 834, column: 5)
!1198 = !DILocation(line: 0, scope: !1180, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 957, column: 7, scope: !120)
!1200 = !DILocation(line: 823, column: 12, scope: !1201, inlinedAt: !1199)
!1201 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 823, column: 6)
!1202 = !DILocation(line: 823, column: 6, scope: !1180, inlinedAt: !1199)
!1203 = !DILocation(line: 827, column: 28, scope: !1180, inlinedAt: !1199)
!1204 = !DILocation(line: 827, column: 26, scope: !1180, inlinedAt: !1199)
!1205 = !DILocation(line: 827, column: 38, scope: !1180, inlinedAt: !1199)
!1206 = !DILocation(line: 827, column: 20, scope: !1180, inlinedAt: !1199)
!1207 = !DILocation(line: 827, column: 3, scope: !1180, inlinedAt: !1199)
!1208 = !DILocation(line: 827, column: 15, scope: !1180, inlinedAt: !1199)
!1209 = !DILocation(line: 828, column: 20, scope: !1180, inlinedAt: !1199)
!1210 = !DILocation(line: 828, column: 3, scope: !1180, inlinedAt: !1199)
!1211 = !DILocation(line: 828, column: 15, scope: !1180, inlinedAt: !1199)
!1212 = !DILocation(line: 830, column: 6, scope: !1180, inlinedAt: !1199)
!1213 = !DILocation(line: 0, scope: !1190, inlinedAt: !1199)
!1214 = !DILocation(line: 832, column: 26, scope: !1190, inlinedAt: !1199)
!1215 = !DILocation(line: 834, column: 5, scope: !1197, inlinedAt: !1199)
!1216 = !DILocation(line: 838, column: 17, scope: !1195, inlinedAt: !1199)
!1217 = !DILocation(line: 837, column: 17, scope: !1195, inlinedAt: !1199)
!1218 = !DILocation(line: 834, scope: !1197, inlinedAt: !1199)
!1219 = !DILocation(line: 835, column: 29, scope: !1195, inlinedAt: !1199)
!1220 = !DILocation(line: 835, column: 25, scope: !1195, inlinedAt: !1199)
!1221 = !DILocation(line: 835, column: 35, scope: !1195, inlinedAt: !1199)
!1222 = !DILocation(line: 0, scope: !1195, inlinedAt: !1199)
!1223 = !DILocation(line: 836, column: 14, scope: !1195, inlinedAt: !1199)
!1224 = !DILocation(line: 837, column: 33, scope: !1195, inlinedAt: !1199)
!1225 = !DILocation(line: 837, column: 31, scope: !1195, inlinedAt: !1199)
!1226 = !DILocation(line: 837, column: 15, scope: !1195, inlinedAt: !1199)
!1227 = !DILocation(line: 838, column: 33, scope: !1195, inlinedAt: !1199)
!1228 = !DILocation(line: 838, column: 31, scope: !1195, inlinedAt: !1199)
!1229 = !DILocation(line: 838, column: 15, scope: !1195, inlinedAt: !1199)
!1230 = !DILocation(line: 834, column: 21, scope: !1196, inlinedAt: !1199)
!1231 = distinct !{!1231, !1215, !1232, !486}
!1232 = !DILocation(line: 839, column: 5, scope: !1197, inlinedAt: !1199)
!1233 = !DILocation(line: 842, column: 13, scope: !1180, inlinedAt: !1199)
!1234 = !DILocation(line: 842, column: 23, scope: !1180, inlinedAt: !1199)
!1235 = !DILocation(line: 842, column: 21, scope: !1180, inlinedAt: !1199)
!1236 = !DILocation(line: 959, column: 16, scope: !1166)
!1237 = !DILocation(line: 959, column: 10, scope: !1166)
!1238 = !DILocation(line: 959, column: 31, scope: !1166)
!1239 = !DILocation(line: 959, column: 38, scope: !1166)
!1240 = !DILocation(line: 959, column: 42, scope: !1166)
!1241 = !DILocation(line: 959, column: 29, scope: !1166)
!1242 = !DILocation(line: 967, column: 14, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !112, file: !2, line: 967, column: 8)
!1244 = !DILocation(line: 968, column: 7, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 968, column: 7)
!1246 = !DILocation(line: 0, scope: !102)
!1247 = !DILocation(line: 972, column: 1, scope: !90)
!1248 = !DISubprogram(name: "gsl_sf_eta_int_e", scope: !1249, file: !1249, line: 97, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DIFile(filename: "../gsl/gsl_sf_zeta.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3b020124d077aa4b6b3c3ca444b4ecd2")
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!18, !18, !62}
!1252 = distinct !DISubprogram(name: "fd_series_int", scope: !2, file: !2, line: 1069, type: !1253, scopeLine: 1070, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1254)
!1253 = !DISubroutineType(cc: DW_CC_nocall, types: !58)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1266, !1267, !1268}
!1255 = !DILocalVariable(name: "j", arg: 1, scope: !1252, file: !2, line: 1069, type: !59)
!1256 = !DILocalVariable(name: "x", arg: 2, scope: !1252, file: !2, line: 1069, type: !60)
!1257 = !DILocalVariable(name: "result", arg: 3, scope: !1252, file: !2, line: 1069, type: !62)
!1258 = !DILocalVariable(name: "n", scope: !1252, file: !2, line: 1071, type: !18)
!1259 = !DILocalVariable(name: "sum", scope: !1252, file: !2, line: 1072, type: !61)
!1260 = !DILocalVariable(name: "del", scope: !1252, file: !2, line: 1073, type: !61)
!1261 = !DILocalVariable(name: "pow_factor", scope: !1252, file: !2, line: 1074, type: !61)
!1262 = !DILocalVariable(name: "eta_factor", scope: !1252, file: !2, line: 1075, type: !63)
!1263 = !DILocalVariable(name: "m", scope: !1264, file: !2, line: 1102, type: !18)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 1101, column: 14)
!1265 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 1101, column: 6)
!1266 = !DILocalVariable(name: "jfact", scope: !1264, file: !2, line: 1103, type: !63)
!1267 = !DILocalVariable(name: "sum2", scope: !1264, file: !2, line: 1104, type: !61)
!1268 = !DILocalVariable(name: "pre2", scope: !1264, file: !2, line: 1105, type: !61)
!1269 = distinct !DIAssignID()
!1270 = !DILocation(line: 0, scope: !1252)
!1271 = distinct !DIAssignID()
!1272 = !DILocation(line: 0, scope: !1264)
!1273 = !DILocation(line: 1075, column: 3, scope: !1252)
!1274 = !DILocation(line: 1076, column: 22, scope: !1252)
!1275 = !DILocation(line: 1076, column: 3, scope: !1252)
!1276 = !DILocation(line: 1077, column: 34, scope: !1252)
!1277 = !DILocation(line: 1083, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 1083, column: 3)
!1279 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 1083, column: 3)
!1280 = !DILocation(line: 1083, column: 3, scope: !1279)
!1281 = !DILocation(line: 1084, column: 25, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 1083, column: 25)
!1283 = !DILocation(line: 1084, column: 5, scope: !1282)
!1284 = !DILocation(line: 1085, column: 21, scope: !1282)
!1285 = !DILocation(line: 1085, column: 20, scope: !1282)
!1286 = !DILocation(line: 1085, column: 16, scope: !1282)
!1287 = !DILocation(line: 1086, column: 36, scope: !1282)
!1288 = !DILocation(line: 1086, column: 23, scope: !1282)
!1289 = !DILocation(line: 1088, column: 16, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 1088, column: 8)
!1291 = !DILocation(line: 1088, column: 8, scope: !1290)
!1292 = !DILocation(line: 1088, column: 22, scope: !1290)
!1293 = !DILocation(line: 1088, column: 8, scope: !1282)
!1294 = distinct !{!1294, !1280, !1295, !486}
!1295 = !DILocation(line: 1089, column: 3, scope: !1279)
!1296 = !DILocation(line: 1101, column: 8, scope: !1265)
!1297 = !DILocation(line: 1101, column: 6, scope: !1252)
!1298 = !DILocation(line: 1103, column: 5, scope: !1264)
!1299 = !DILocation(line: 1107, column: 5, scope: !1264)
!1300 = !DILocation(line: 1108, column: 12, scope: !1264)
!1301 = !DILocation(line: 1108, column: 41, scope: !1264)
!1302 = !DILocation(line: 1110, column: 5, scope: !1264)
!1303 = !DILocation(line: 1111, column: 19, scope: !1264)
!1304 = !DILocation(line: 1111, column: 21, scope: !1264)
!1305 = !DILocation(line: 1111, column: 23, scope: !1264)
!1306 = !DILocation(line: 1111, column: 31, scope: !1264)
!1307 = !DILocation(line: 1111, column: 37, scope: !1264)
!1308 = !DILocation(line: 1111, column: 34, scope: !1264)
!1309 = !DILocation(line: 1111, column: 40, scope: !1264)
!1310 = !DILocation(line: 1111, column: 46, scope: !1264)
!1311 = !DILocation(line: 1111, column: 28, scope: !1264)
!1312 = !DILocation(line: 1111, column: 26, scope: !1264)
!1313 = !DILocation(line: 1112, column: 23, scope: !1264)
!1314 = !DILocation(line: 1112, column: 27, scope: !1264)
!1315 = !DILocation(line: 1114, column: 5, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 1114, column: 5)
!1317 = !DILocation(line: 1115, column: 27, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !2, line: 1114, column: 25)
!1319 = distinct !DILexicalBlock(scope: !1316, file: !2, line: 1114, column: 5)
!1320 = !DILocation(line: 1115, column: 25, scope: !1318)
!1321 = !DILocation(line: 1115, column: 7, scope: !1318)
!1322 = !DILocation(line: 1116, column: 30, scope: !1318)
!1323 = !DILocation(line: 1116, column: 42, scope: !1318)
!1324 = !DILocation(line: 1116, column: 35, scope: !1318)
!1325 = !DILocation(line: 1116, column: 27, scope: !1318)
!1326 = !DILocation(line: 1116, column: 25, scope: !1318)
!1327 = !DILocation(line: 1116, column: 18, scope: !1318)
!1328 = !DILocation(line: 1117, column: 26, scope: !1318)
!1329 = !DILocation(line: 1117, column: 30, scope: !1318)
!1330 = !DILocation(line: 1114, column: 21, scope: !1319)
!1331 = !DILocation(line: 1114, column: 15, scope: !1319)
!1332 = distinct !{!1332, !1315, !1333, !486}
!1333 = !DILocation(line: 1118, column: 5, scope: !1316)
!1334 = !DILocation(line: 1108, column: 33, scope: !1264)
!1335 = !DILocation(line: 1120, column: 17, scope: !1264)
!1336 = !DILocation(line: 1121, column: 3, scope: !1265)
!1337 = !DILocation(line: 1121, column: 3, scope: !1264)
!1338 = !DILocation(line: 1123, column: 15, scope: !1252)
!1339 = !DILocation(line: 1124, column: 41, scope: !1252)
!1340 = !DILocation(line: 1124, column: 39, scope: !1252)
!1341 = !DILocation(line: 1124, column: 11, scope: !1252)
!1342 = !DILocation(line: 1124, column: 15, scope: !1252)
!1343 = !DILocation(line: 1127, column: 1, scope: !1252)
!1344 = !DILocation(line: 1126, column: 3, scope: !1252)
!1345 = distinct !DISubprogram(name: "fd_asymp", scope: !2, file: !2, line: 980, type: !91, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1373}
!1347 = !DILocalVariable(name: "j", arg: 1, scope: !1345, file: !2, line: 980, type: !60)
!1348 = !DILocalVariable(name: "x", arg: 2, scope: !1345, file: !2, line: 980, type: !60)
!1349 = !DILocalVariable(name: "result", arg: 3, scope: !1345, file: !2, line: 980, type: !62)
!1350 = !DILocalVariable(name: "j_integer", scope: !1345, file: !2, line: 982, type: !59)
!1351 = !DILocalVariable(name: "itmax", scope: !1345, file: !2, line: 983, type: !59)
!1352 = !DILocalVariable(name: "lg", scope: !1345, file: !2, line: 984, type: !63)
!1353 = !DILocalVariable(name: "stat_lg", scope: !1345, file: !2, line: 985, type: !18)
!1354 = !DILocalVariable(name: "seqn_val", scope: !1345, file: !2, line: 986, type: !61)
!1355 = !DILocalVariable(name: "seqn_err", scope: !1345, file: !2, line: 987, type: !61)
!1356 = !DILocalVariable(name: "xm2", scope: !1345, file: !2, line: 988, type: !61)
!1357 = !DILocalVariable(name: "xgam", scope: !1345, file: !2, line: 989, type: !61)
!1358 = !DILocalVariable(name: "add", scope: !1345, file: !2, line: 990, type: !61)
!1359 = !DILocalVariable(name: "cos_term", scope: !1345, file: !2, line: 991, type: !61)
!1360 = !DILocalVariable(name: "ln_x", scope: !1345, file: !2, line: 992, type: !61)
!1361 = !DILocalVariable(name: "ex_term_1", scope: !1345, file: !2, line: 993, type: !61)
!1362 = !DILocalVariable(name: "ex_term_2", scope: !1345, file: !2, line: 994, type: !61)
!1363 = !DILocalVariable(name: "fneg", scope: !1345, file: !2, line: 995, type: !63)
!1364 = !DILocalVariable(name: "ex_arg", scope: !1345, file: !2, line: 996, type: !63)
!1365 = !DILocalVariable(name: "ex", scope: !1345, file: !2, line: 997, type: !63)
!1366 = !DILocalVariable(name: "stat_fneg", scope: !1345, file: !2, line: 998, type: !18)
!1367 = !DILocalVariable(name: "stat_e", scope: !1345, file: !2, line: 999, type: !18)
!1368 = !DILocalVariable(name: "n", scope: !1345, file: !2, line: 1000, type: !18)
!1369 = !DILocalVariable(name: "add_previous", scope: !1370, file: !2, line: 1002, type: !61)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 1001, column: 27)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 1001, column: 3)
!1372 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 1001, column: 3)
!1373 = !DILocalVariable(name: "eta", scope: !1370, file: !2, line: 1003, type: !63)
!1374 = distinct !DIAssignID()
!1375 = !DILocation(line: 0, scope: !1345)
!1376 = distinct !DIAssignID()
!1377 = distinct !DIAssignID()
!1378 = distinct !DIAssignID()
!1379 = !DILocation(line: 0, scope: !1370)
!1380 = !DILocation(line: 982, column: 36, scope: !1345)
!1381 = !DILocation(line: 982, column: 27, scope: !1345)
!1382 = !DILocation(line: 982, column: 50, scope: !1345)
!1383 = !DILocation(line: 984, column: 3, scope: !1345)
!1384 = !DILocation(line: 985, column: 17, scope: !1345)
!1385 = !DILocation(line: 988, column: 21, scope: !1345)
!1386 = !DILocation(line: 988, column: 24, scope: !1345)
!1387 = !DILocation(line: 995, column: 3, scope: !1345)
!1388 = !DILocation(line: 997, column: 3, scope: !1345)
!1389 = !DILocation(line: 1001, column: 3, scope: !1372)
!1390 = !DILocation(line: 1003, column: 5, scope: !1370)
!1391 = !DILocation(line: 1004, column: 23, scope: !1370)
!1392 = !DILocation(line: 1004, column: 5, scope: !1370)
!1393 = !DILocation(line: 1005, column: 17, scope: !1370)
!1394 = !DILocation(line: 1005, column: 40, scope: !1370)
!1395 = !DILocation(line: 1005, column: 36, scope: !1370)
!1396 = !DILocation(line: 1005, column: 23, scope: !1370)
!1397 = !DILocation(line: 1005, column: 62, scope: !1370)
!1398 = !DILocation(line: 1005, column: 58, scope: !1370)
!1399 = !DILocation(line: 1005, column: 45, scope: !1370)
!1400 = !DILocation(line: 1006, column: 16, scope: !1370)
!1401 = !DILocation(line: 1006, column: 20, scope: !1370)
!1402 = !DILocation(line: 1007, column: 19, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 1007, column: 8)
!1404 = !DILocation(line: 1007, column: 22, scope: !1403)
!1405 = !DILocation(line: 1007, column: 34, scope: !1403)
!1406 = !DILocation(line: 1007, column: 32, scope: !1403)
!1407 = !DILocation(line: 1007, column: 8, scope: !1370)
!1408 = !DILocation(line: 1008, column: 16, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 1008, column: 8)
!1410 = !DILocation(line: 1008, column: 8, scope: !1409)
!1411 = !DILocation(line: 1008, column: 27, scope: !1409)
!1412 = !DILocation(line: 1008, column: 8, scope: !1370)
!1413 = !DILocation(line: 1012, column: 15, scope: !1345)
!1414 = !DILocation(line: 1011, column: 3, scope: !1371)
!1415 = !DILocation(line: 1010, column: 41, scope: !1370)
!1416 = !DILocation(line: 1010, column: 39, scope: !1370)
!1417 = !DILocation(line: 1001, column: 23, scope: !1371)
!1418 = !DILocation(line: 1001, column: 13, scope: !1371)
!1419 = distinct !{!1419, !1389, !1420, !486}
!1420 = !DILocation(line: 1011, column: 3, scope: !1372)
!1421 = !DILocation(line: 1014, column: 25, scope: !1345)
!1422 = !DILocation(line: 1014, column: 15, scope: !1345)
!1423 = !DILocation(line: 1016, column: 22, scope: !1345)
!1424 = !DILocation(line: 1017, column: 18, scope: !1345)
!1425 = !DILocation(line: 1019, column: 33, scope: !1345)
!1426 = !DILocation(line: 1019, column: 51, scope: !1345)
!1427 = !DILocation(line: 1019, column: 31, scope: !1345)
!1428 = !DILocation(line: 1019, column: 73, scope: !1345)
!1429 = !DILocation(line: 1020, column: 15, scope: !1345)
!1430 = !DILocation(line: 1021, column: 20, scope: !1345)
!1431 = !DILocation(line: 1022, column: 34, scope: !1345)
!1432 = !DILocation(line: 1022, column: 27, scope: !1345)
!1433 = !DILocation(line: 1022, column: 44, scope: !1345)
!1434 = !DILocation(line: 1022, column: 60, scope: !1345)
!1435 = !DILocation(line: 1022, column: 55, scope: !1345)
!1436 = !DILocation(line: 1022, column: 16, scope: !1345)
!1437 = !DILocation(line: 1023, column: 32, scope: !1345)
!1438 = !DILocation(line: 1023, column: 27, scope: !1345)
!1439 = !DILocation(line: 1023, column: 36, scope: !1345)
!1440 = !DILocation(line: 1023, column: 18, scope: !1345)
!1441 = !DILocation(line: 1023, column: 11, scope: !1345)
!1442 = !DILocation(line: 1024, column: 27, scope: !1345)
!1443 = !DILocation(line: 1024, column: 36, scope: !1345)
!1444 = !DILocation(line: 1024, column: 18, scope: !1345)
!1445 = !DILocation(line: 1025, column: 18, scope: !1345)
!1446 = !DILocation(line: 1025, column: 40, scope: !1345)
!1447 = !DILocation(line: 1025, column: 33, scope: !1345)
!1448 = !DILocation(line: 1026, column: 42, scope: !1345)
!1449 = !DILocation(line: 1026, column: 40, scope: !1345)
!1450 = !DILocation(line: 1026, column: 15, scope: !1345)
!1451 = !DILocation(line: 1027, column: 10, scope: !1345)
!1452 = !DILocation(line: 1028, column: 1, scope: !1345)
!1453 = !DILocation(line: 1027, column: 3, scope: !1345)
!1454 = distinct !DISubprogram(name: "fd_UMseries_int", scope: !2, file: !2, line: 1135, type: !57, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1455)
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1474, !1475, !1477, !1478, !1482, !1483, !1484, !1485, !1486, !1487, !1491, !1492, !1493, !1494, !1495}
!1456 = !DILocalVariable(name: "j", arg: 1, scope: !1454, file: !2, line: 1135, type: !59)
!1457 = !DILocalVariable(name: "x", arg: 2, scope: !1454, file: !2, line: 1135, type: !60)
!1458 = !DILocalVariable(name: "result", arg: 3, scope: !1454, file: !2, line: 1135, type: !62)
!1459 = !DILocalVariable(name: "nmax", scope: !1454, file: !2, line: 1137, type: !59)
!1460 = !DILocalVariable(name: "pre", scope: !1454, file: !2, line: 1138, type: !61)
!1461 = !DILocalVariable(name: "lnpre_val", scope: !1454, file: !2, line: 1139, type: !61)
!1462 = !DILocalVariable(name: "lnpre_err", scope: !1454, file: !2, line: 1140, type: !61)
!1463 = !DILocalVariable(name: "sum_even_val", scope: !1454, file: !2, line: 1141, type: !61)
!1464 = !DILocalVariable(name: "sum_even_err", scope: !1454, file: !2, line: 1142, type: !61)
!1465 = !DILocalVariable(name: "sum_odd_val", scope: !1454, file: !2, line: 1143, type: !61)
!1466 = !DILocalVariable(name: "sum_odd_err", scope: !1454, file: !2, line: 1144, type: !61)
!1467 = !DILocalVariable(name: "stat_sum", scope: !1454, file: !2, line: 1145, type: !18)
!1468 = !DILocalVariable(name: "stat_e", scope: !1454, file: !2, line: 1146, type: !18)
!1469 = !DILocalVariable(name: "stat_h", scope: !1454, file: !2, line: 1147, type: !18)
!1470 = !DILocalVariable(name: "n", scope: !1454, file: !2, line: 1148, type: !18)
!1471 = !DILocalVariable(name: "p", scope: !1472, file: !2, line: 1151, type: !61)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 1150, column: 27)
!1473 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 1150, column: 6)
!1474 = !DILocalVariable(name: "g", scope: !1472, file: !2, line: 1152, type: !63)
!1475 = !DILocalVariable(name: "lnx", scope: !1476, file: !2, line: 1159, type: !61)
!1476 = distinct !DILexicalBlock(scope: !1473, file: !2, line: 1158, column: 8)
!1477 = !DILocalVariable(name: "lg", scope: !1476, file: !2, line: 1160, type: !63)
!1478 = !DILocalVariable(name: "del_val", scope: !1479, file: !2, line: 1170, type: !61)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 1169, column: 26)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 1169, column: 3)
!1481 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 1169, column: 3)
!1482 = !DILocalVariable(name: "del_err", scope: !1479, file: !2, line: 1171, type: !61)
!1483 = !DILocalVariable(name: "U", scope: !1479, file: !2, line: 1172, type: !63)
!1484 = !DILocalVariable(name: "M", scope: !1479, file: !2, line: 1173, type: !63)
!1485 = !DILocalVariable(name: "stat_h_U", scope: !1479, file: !2, line: 1174, type: !18)
!1486 = !DILocalVariable(name: "stat_h_F", scope: !1479, file: !2, line: 1175, type: !18)
!1487 = !DILocalVariable(name: "del_val", scope: !1488, file: !2, line: 1187, type: !61)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !2, line: 1186, column: 26)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 1186, column: 3)
!1490 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 1186, column: 3)
!1491 = !DILocalVariable(name: "del_err", scope: !1488, file: !2, line: 1188, type: !61)
!1492 = !DILocalVariable(name: "U", scope: !1488, file: !2, line: 1189, type: !63)
!1493 = !DILocalVariable(name: "M", scope: !1488, file: !2, line: 1190, type: !63)
!1494 = !DILocalVariable(name: "stat_h_U", scope: !1488, file: !2, line: 1191, type: !18)
!1495 = !DILocalVariable(name: "stat_h_F", scope: !1488, file: !2, line: 1192, type: !18)
!1496 = distinct !DIAssignID()
!1497 = !DILocation(line: 0, scope: !1472)
!1498 = distinct !DIAssignID()
!1499 = !DILocation(line: 0, scope: !1476)
!1500 = distinct !DIAssignID()
!1501 = !DILocation(line: 0, scope: !1479)
!1502 = distinct !DIAssignID()
!1503 = distinct !DIAssignID()
!1504 = !DILocation(line: 0, scope: !1488)
!1505 = distinct !DIAssignID()
!1506 = !DILocation(line: 0, scope: !1454)
!1507 = !DILocation(line: 1150, column: 8, scope: !1473)
!1508 = !DILocation(line: 1150, column: 16, scope: !1473)
!1509 = !DILocation(line: 1151, column: 35, scope: !1472)
!1510 = !DILocation(line: 1151, column: 16, scope: !1472)
!1511 = !DILocation(line: 1152, column: 5, scope: !1472)
!1512 = !DILocation(line: 1153, column: 5, scope: !1472)
!1513 = !DILocation(line: 1156, column: 17, scope: !1472)
!1514 = !DILocation(line: 1156, column: 14, scope: !1472)
!1515 = !DILocation(line: 1157, column: 3, scope: !1473)
!1516 = !DILocation(line: 1157, column: 3, scope: !1472)
!1517 = !DILocation(line: 1160, column: 5, scope: !1476)
!1518 = !DILocation(line: 1161, column: 22, scope: !1476)
!1519 = !DILocation(line: 1161, column: 5, scope: !1476)
!1520 = !DILocation(line: 1162, column: 24, scope: !1476)
!1521 = !DILocation(line: 1162, column: 34, scope: !1476)
!1522 = !DILocation(line: 1163, column: 41, scope: !1476)
!1523 = !DILocation(line: 1163, column: 39, scope: !1476)
!1524 = !DILocation(line: 1163, column: 64, scope: !1476)
!1525 = !DILocation(line: 1165, column: 3, scope: !1473)
!1526 = !DILocation(line: 0, scope: !1473)
!1527 = !DILocation(line: 1169, column: 3, scope: !1481)
!1528 = !DILocation(line: 1172, column: 5, scope: !1479)
!1529 = !DILocation(line: 1173, column: 5, scope: !1479)
!1530 = !DILocation(line: 1174, column: 50, scope: !1479)
!1531 = !DILocation(line: 1174, column: 51, scope: !1479)
!1532 = !DILocation(line: 1174, column: 20, scope: !1479)
!1533 = !DILocation(line: 1175, column: 52, scope: !1479)
!1534 = !DILocation(line: 1175, column: 54, scope: !1479)
!1535 = !DILocation(line: 1175, column: 20, scope: !1479)
!1536 = !DILocation(line: 1176, column: 14, scope: !1479)
!1537 = !DILocation(line: 1177, column: 26, scope: !1479)
!1538 = !DILocation(line: 1177, column: 23, scope: !1479)
!1539 = !DILocation(line: 1177, column: 34, scope: !1479)
!1540 = !DILocation(line: 1178, column: 30, scope: !1479)
!1541 = !DILocation(line: 1178, column: 27, scope: !1479)
!1542 = !DILocation(line: 1178, column: 38, scope: !1479)
!1543 = !DILocation(line: 1179, column: 17, scope: !1479)
!1544 = !DILocation(line: 1180, column: 17, scope: !1479)
!1545 = !DILocation(line: 1181, column: 20, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1479, file: !2, line: 1181, column: 8)
!1547 = !DILocation(line: 1181, column: 8, scope: !1546)
!1548 = !DILocation(line: 1181, column: 34, scope: !1546)
!1549 = !DILocation(line: 1182, column: 3, scope: !1480)
!1550 = distinct !{!1550, !1527, !1551, !486}
!1551 = !DILocation(line: 1182, column: 3, scope: !1481)
!1552 = !DILocation(line: 1186, column: 3, scope: !1490)
!1553 = !DILocation(line: 1189, column: 5, scope: !1488)
!1554 = !DILocation(line: 1190, column: 5, scope: !1488)
!1555 = !DILocation(line: 1191, column: 50, scope: !1488)
!1556 = !DILocation(line: 1191, column: 51, scope: !1488)
!1557 = !DILocation(line: 1191, column: 20, scope: !1488)
!1558 = !DILocation(line: 1192, column: 52, scope: !1488)
!1559 = !DILocation(line: 1192, column: 54, scope: !1488)
!1560 = !DILocation(line: 1192, column: 20, scope: !1488)
!1561 = !DILocation(line: 1193, column: 14, scope: !1488)
!1562 = !DILocation(line: 1194, column: 26, scope: !1488)
!1563 = !DILocation(line: 1194, column: 23, scope: !1488)
!1564 = !DILocation(line: 1194, column: 34, scope: !1488)
!1565 = !DILocation(line: 1195, column: 30, scope: !1488)
!1566 = !DILocation(line: 1195, column: 27, scope: !1488)
!1567 = !DILocation(line: 1195, column: 38, scope: !1488)
!1568 = !DILocation(line: 1196, column: 18, scope: !1488)
!1569 = !DILocation(line: 1197, column: 18, scope: !1488)
!1570 = !DILocation(line: 1198, column: 20, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 1198, column: 8)
!1572 = !DILocation(line: 1198, column: 8, scope: !1571)
!1573 = !DILocation(line: 1198, column: 35, scope: !1571)
!1574 = !DILocation(line: 1199, column: 3, scope: !1489)
!1575 = !DILocation(line: 1186, column: 21, scope: !1489)
!1576 = !DILocation(line: 1186, column: 13, scope: !1489)
!1577 = distinct !{!1577, !1552, !1578, !486}
!1578 = !DILocation(line: 1199, column: 3, scope: !1490)
!1579 = !DILocation(line: 1186, scope: !1490)
!1580 = !DILocation(line: 1201, column: 18, scope: !1454)
!1581 = !DILocation(line: 1203, column: 42, scope: !1454)
!1582 = !DILocation(line: 1204, column: 42, scope: !1454)
!1583 = !DILocation(line: 1202, column: 14, scope: !1454)
!1584 = !DILocation(line: 1206, column: 55, scope: !1454)
!1585 = !DILocation(line: 1206, column: 42, scope: !1454)
!1586 = !DILocation(line: 1206, column: 40, scope: !1454)
!1587 = !DILocation(line: 1206, column: 11, scope: !1454)
!1588 = !DILocation(line: 1206, column: 15, scope: !1454)
!1589 = !DILocation(line: 1208, column: 10, scope: !1454)
!1590 = !DILocation(line: 1208, column: 3, scope: !1454)
!1591 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_mhalf_e", scope: !2, file: !2, line: 1425, type: !307, scopeLine: 1426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1592)
!1592 = !{!1593, !1594, !1595, !1599, !1600, !1601, !1602, !1606, !1610, !1613, !1616, !1617}
!1593 = !DILocalVariable(name: "x", arg: 1, scope: !1591, file: !2, line: 1425, type: !60)
!1594 = !DILocalVariable(name: "result", arg: 2, scope: !1591, file: !2, line: 1425, type: !62)
!1595 = !DILocalVariable(name: "ex", scope: !1596, file: !2, line: 1433, type: !61)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 1430, column: 21)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 1430, column: 11)
!1598 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 1427, column: 6)
!1599 = !DILocalVariable(name: "term", scope: !1596, file: !2, line: 1434, type: !61)
!1600 = !DILocalVariable(name: "sum", scope: !1596, file: !2, line: 1435, type: !61)
!1601 = !DILocalVariable(name: "n", scope: !1596, file: !2, line: 1436, type: !18)
!1602 = !DILocalVariable(name: "rat", scope: !1603, file: !2, line: 1438, type: !61)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !2, line: 1437, column: 27)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !2, line: 1437, column: 5)
!1605 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 1437, column: 5)
!1606 = !DILocalVariable(name: "t", scope: !1607, file: !2, line: 1451, type: !61)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 1450, column: 20)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 1450, column: 11)
!1609 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 1447, column: 11)
!1610 = !DILocalVariable(name: "t", scope: !1611, file: !2, line: 1455, type: !61)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 1454, column: 21)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 1454, column: 11)
!1613 = !DILocalVariable(name: "rtx", scope: !1614, file: !2, line: 1459, type: !61)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 1458, column: 21)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 1458, column: 11)
!1616 = !DILocalVariable(name: "t", scope: !1614, file: !2, line: 1460, type: !61)
!1617 = !DILocalVariable(name: "c", scope: !1614, file: !2, line: 1461, type: !63)
!1618 = distinct !DIAssignID()
!1619 = !DILocation(line: 0, scope: !1614)
!1620 = !DILocation(line: 0, scope: !1591)
!1621 = !DILocation(line: 1427, column: 8, scope: !1598)
!1622 = !DILocation(line: 1427, column: 6, scope: !1591)
!1623 = !DILocation(line: 1428, column: 5, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 1428, column: 5)
!1625 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 1427, column: 27)
!1626 = !DILocation(line: 1428, column: 5, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !2, line: 1428, column: 5)
!1628 = !DILocation(line: 1430, column: 13, scope: !1597)
!1629 = !DILocation(line: 1430, column: 11, scope: !1598)
!1630 = !DILocation(line: 1433, column: 19, scope: !1596)
!1631 = !DILocation(line: 0, scope: !1596)
!1632 = !DILocation(line: 1437, column: 5, scope: !1605)
!1633 = !DILocation(line: 1438, column: 21, scope: !1603)
!1634 = !DILocation(line: 1438, column: 27, scope: !1603)
!1635 = !DILocation(line: 0, scope: !1603)
!1636 = !DILocation(line: 1439, column: 21, scope: !1603)
!1637 = !DILocation(line: 1439, column: 19, scope: !1603)
!1638 = !DILocation(line: 1439, column: 12, scope: !1603)
!1639 = !DILocation(line: 1441, column: 19, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 1441, column: 10)
!1641 = !DILocation(line: 1441, column: 10, scope: !1640)
!1642 = !DILocation(line: 1441, column: 25, scope: !1640)
!1643 = distinct !{!1643, !1632, !1644, !486}
!1644 = !DILocation(line: 1442, column: 5, scope: !1605)
!1645 = !DILocation(line: 1443, column: 17, scope: !1596)
!1646 = !DILocation(line: 1444, column: 25, scope: !1596)
!1647 = !DILocation(line: 1444, column: 23, scope: !1596)
!1648 = !DILocation(line: 1444, column: 35, scope: !1596)
!1649 = !DILocation(line: 1444, column: 13, scope: !1596)
!1650 = !DILocation(line: 1444, column: 17, scope: !1596)
!1651 = !DILocation(line: 1447, column: 13, scope: !1609)
!1652 = !DILocation(line: 1447, column: 11, scope: !1597)
!1653 = !DILocation(line: 0, scope: !497, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 1448, column: 12, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 1447, column: 20)
!1656 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !1654)
!1657 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !1654)
!1658 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !1654)
!1659 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !1654)
!1660 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !1654)
!1661 = !DILocation(line: 0, scope: !513, inlinedAt: !1654)
!1662 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !1654)
!1663 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !1654)
!1664 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !1654)
!1665 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !1654)
!1666 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !1654)
!1667 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !1654)
!1668 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !1654)
!1669 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !1654)
!1670 = distinct !{!1670, !1660, !1671, !486}
!1671 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !1654)
!1672 = !DILocation(line: 0, scope: !517, inlinedAt: !1654)
!1673 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !1654)
!1674 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !1654)
!1675 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !1654)
!1676 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !1654)
!1677 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !1654)
!1678 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !1654)
!1679 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !1654)
!1680 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !1654)
!1681 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !1654)
!1682 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !1654)
!1683 = !DILocation(line: 1448, column: 5, scope: !1655)
!1684 = !DILocation(line: 1450, column: 13, scope: !1608)
!1685 = !DILocation(line: 1450, column: 11, scope: !1609)
!1686 = !DILocation(line: 1451, column: 23, scope: !1607)
!1687 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 1452, column: 12, scope: !1607)
!1689 = !DILocation(line: 0, scope: !1607)
!1690 = !DILocation(line: 0, scope: !497, inlinedAt: !1688)
!1691 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !1688)
!1692 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !1688)
!1693 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !1688)
!1694 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !1688)
!1695 = !DILocation(line: 0, scope: !513, inlinedAt: !1688)
!1696 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !1688)
!1697 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !1688)
!1698 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !1688)
!1699 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !1688)
!1700 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !1688)
!1701 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !1688)
!1702 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !1688)
!1703 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !1688)
!1704 = distinct !{!1704, !1694, !1705, !486}
!1705 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !1688)
!1706 = !DILocation(line: 0, scope: !517, inlinedAt: !1688)
!1707 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !1688)
!1708 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !1688)
!1709 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !1688)
!1710 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !1688)
!1711 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !1688)
!1712 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !1688)
!1713 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !1688)
!1714 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !1688)
!1715 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !1688)
!1716 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !1688)
!1717 = !DILocation(line: 1454, column: 13, scope: !1612)
!1718 = !DILocation(line: 1454, column: 11, scope: !1608)
!1719 = !DILocation(line: 1455, column: 23, scope: !1611)
!1720 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 1456, column: 12, scope: !1611)
!1722 = !DILocation(line: 0, scope: !1611)
!1723 = !DILocation(line: 0, scope: !497, inlinedAt: !1721)
!1724 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !1721)
!1725 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !1721)
!1726 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !1721)
!1727 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !1721)
!1728 = !DILocation(line: 0, scope: !513, inlinedAt: !1721)
!1729 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !1721)
!1730 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !1721)
!1731 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !1721)
!1732 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !1721)
!1733 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !1721)
!1734 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !1721)
!1735 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !1721)
!1736 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !1721)
!1737 = distinct !{!1737, !1727, !1738, !486}
!1738 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !1721)
!1739 = !DILocation(line: 0, scope: !517, inlinedAt: !1721)
!1740 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !1721)
!1741 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !1721)
!1742 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !1721)
!1743 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !1721)
!1744 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !1721)
!1745 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !1721)
!1746 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !1721)
!1747 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !1721)
!1748 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !1721)
!1749 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !1721)
!1750 = !DILocation(line: 1458, column: 13, scope: !1615)
!1751 = !DILocation(line: 1458, column: 11, scope: !1612)
!1752 = !DILocation(line: 1459, column: 18, scope: !1614)
!1753 = !DILocation(line: 1460, column: 19, scope: !1614)
!1754 = !DILocation(line: 1461, column: 5, scope: !1614)
!1755 = !DILocation(line: 1462, column: 5, scope: !1614)
!1756 = !DILocation(line: 1463, column: 22, scope: !1614)
!1757 = !DILocation(line: 1463, column: 26, scope: !1614)
!1758 = !DILocation(line: 1463, column: 18, scope: !1614)
!1759 = !DILocation(line: 1464, column: 22, scope: !1614)
!1760 = !DILocation(line: 1464, column: 26, scope: !1614)
!1761 = !DILocation(line: 1464, column: 58, scope: !1614)
!1762 = !DILocation(line: 1464, column: 56, scope: !1614)
!1763 = !DILocation(line: 1464, column: 13, scope: !1614)
!1764 = !DILocation(line: 1464, column: 18, scope: !1614)
!1765 = !DILocation(line: 1466, column: 3, scope: !1615)
!1766 = !DILocation(line: 1468, column: 12, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 1467, column: 8)
!1768 = !DILocation(line: 1468, column: 5, scope: !1767)
!1769 = !DILocation(line: 0, scope: !1598)
!1770 = !DILocation(line: 1470, column: 1, scope: !1591)
!1771 = !DISubprogram(name: "sqrt", scope: !362, file: !362, line: 143, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1772 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_half_e", scope: !2, file: !2, line: 1473, type: !307, scopeLine: 1474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1773)
!1773 = !{!1774, !1775, !1776, !1780, !1781, !1782, !1783, !1787, !1791, !1794, !1797, !1798}
!1774 = !DILocalVariable(name: "x", arg: 1, scope: !1772, file: !2, line: 1473, type: !60)
!1775 = !DILocalVariable(name: "result", arg: 2, scope: !1772, file: !2, line: 1473, type: !62)
!1776 = !DILocalVariable(name: "ex", scope: !1777, file: !2, line: 1481, type: !61)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 1478, column: 21)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 1478, column: 11)
!1779 = distinct !DILexicalBlock(scope: !1772, file: !2, line: 1475, column: 6)
!1780 = !DILocalVariable(name: "term", scope: !1777, file: !2, line: 1482, type: !61)
!1781 = !DILocalVariable(name: "sum", scope: !1777, file: !2, line: 1483, type: !61)
!1782 = !DILocalVariable(name: "n", scope: !1777, file: !2, line: 1484, type: !18)
!1783 = !DILocalVariable(name: "rat", scope: !1784, file: !2, line: 1486, type: !61)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 1485, column: 27)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !2, line: 1485, column: 5)
!1786 = distinct !DILexicalBlock(scope: !1777, file: !2, line: 1485, column: 5)
!1787 = !DILocalVariable(name: "t", scope: !1788, file: !2, line: 1499, type: !61)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 1498, column: 20)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 1498, column: 11)
!1790 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 1495, column: 11)
!1791 = !DILocalVariable(name: "t", scope: !1792, file: !2, line: 1503, type: !61)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !2, line: 1502, column: 21)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 1502, column: 11)
!1794 = !DILocalVariable(name: "x32", scope: !1795, file: !2, line: 1507, type: !61)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !2, line: 1506, column: 21)
!1796 = distinct !DILexicalBlock(scope: !1793, file: !2, line: 1506, column: 11)
!1797 = !DILocalVariable(name: "t", scope: !1795, file: !2, line: 1508, type: !61)
!1798 = !DILocalVariable(name: "c", scope: !1795, file: !2, line: 1509, type: !63)
!1799 = distinct !DIAssignID()
!1800 = !DILocation(line: 0, scope: !1795)
!1801 = !DILocation(line: 0, scope: !1772)
!1802 = !DILocation(line: 1475, column: 8, scope: !1779)
!1803 = !DILocation(line: 1475, column: 6, scope: !1772)
!1804 = !DILocation(line: 1476, column: 5, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !2, line: 1476, column: 5)
!1806 = distinct !DILexicalBlock(scope: !1779, file: !2, line: 1475, column: 27)
!1807 = !DILocation(line: 1476, column: 5, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1805, file: !2, line: 1476, column: 5)
!1809 = !DILocation(line: 1478, column: 13, scope: !1778)
!1810 = !DILocation(line: 1478, column: 11, scope: !1779)
!1811 = !DILocation(line: 1481, column: 19, scope: !1777)
!1812 = !DILocation(line: 0, scope: !1777)
!1813 = !DILocation(line: 1485, column: 5, scope: !1786)
!1814 = !DILocation(line: 1486, column: 21, scope: !1784)
!1815 = !DILocation(line: 1486, column: 27, scope: !1784)
!1816 = !DILocation(line: 0, scope: !1784)
!1817 = !DILocation(line: 1487, column: 19, scope: !1784)
!1818 = !DILocation(line: 1487, column: 27, scope: !1784)
!1819 = !DILocation(line: 1487, column: 25, scope: !1784)
!1820 = !DILocation(line: 1487, column: 12, scope: !1784)
!1821 = !DILocation(line: 1489, column: 19, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 1489, column: 10)
!1823 = !DILocation(line: 1489, column: 10, scope: !1822)
!1824 = !DILocation(line: 1489, column: 25, scope: !1822)
!1825 = distinct !{!1825, !1813, !1826, !486}
!1826 = !DILocation(line: 1490, column: 5, scope: !1786)
!1827 = !DILocation(line: 1491, column: 17, scope: !1777)
!1828 = !DILocation(line: 1492, column: 25, scope: !1777)
!1829 = !DILocation(line: 1492, column: 23, scope: !1777)
!1830 = !DILocation(line: 1492, column: 35, scope: !1777)
!1831 = !DILocation(line: 1492, column: 13, scope: !1777)
!1832 = !DILocation(line: 1492, column: 17, scope: !1777)
!1833 = !DILocation(line: 1495, column: 13, scope: !1790)
!1834 = !DILocation(line: 1495, column: 11, scope: !1778)
!1835 = !DILocation(line: 0, scope: !497, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 1496, column: 12, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 1495, column: 20)
!1838 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !1836)
!1839 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !1836)
!1840 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !1836)
!1841 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !1836)
!1842 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !1836)
!1843 = !DILocation(line: 0, scope: !513, inlinedAt: !1836)
!1844 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !1836)
!1845 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !1836)
!1846 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !1836)
!1847 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !1836)
!1848 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !1836)
!1849 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !1836)
!1850 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !1836)
!1851 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !1836)
!1852 = distinct !{!1852, !1842, !1853, !486}
!1853 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !1836)
!1854 = !DILocation(line: 0, scope: !517, inlinedAt: !1836)
!1855 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !1836)
!1856 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !1836)
!1857 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !1836)
!1858 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !1836)
!1859 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !1836)
!1860 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !1836)
!1861 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !1836)
!1862 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !1836)
!1863 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !1836)
!1864 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !1836)
!1865 = !DILocation(line: 1496, column: 5, scope: !1837)
!1866 = !DILocation(line: 1498, column: 13, scope: !1789)
!1867 = !DILocation(line: 1498, column: 11, scope: !1790)
!1868 = !DILocation(line: 1499, column: 23, scope: !1788)
!1869 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 1500, column: 12, scope: !1788)
!1871 = !DILocation(line: 0, scope: !1788)
!1872 = !DILocation(line: 0, scope: !497, inlinedAt: !1870)
!1873 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !1870)
!1874 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !1870)
!1875 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !1870)
!1876 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !1870)
!1877 = !DILocation(line: 0, scope: !513, inlinedAt: !1870)
!1878 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !1870)
!1879 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !1870)
!1880 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !1870)
!1881 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !1870)
!1882 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !1870)
!1883 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !1870)
!1884 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !1870)
!1885 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !1870)
!1886 = distinct !{!1886, !1876, !1887, !486}
!1887 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !1870)
!1888 = !DILocation(line: 0, scope: !517, inlinedAt: !1870)
!1889 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !1870)
!1890 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !1870)
!1891 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !1870)
!1892 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !1870)
!1893 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !1870)
!1894 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !1870)
!1895 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !1870)
!1896 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !1870)
!1897 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !1870)
!1898 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !1870)
!1899 = !DILocation(line: 1502, column: 13, scope: !1793)
!1900 = !DILocation(line: 1502, column: 11, scope: !1789)
!1901 = !DILocation(line: 1503, column: 23, scope: !1792)
!1902 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 1504, column: 12, scope: !1792)
!1904 = !DILocation(line: 0, scope: !1792)
!1905 = !DILocation(line: 0, scope: !497, inlinedAt: !1903)
!1906 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !1903)
!1907 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !1903)
!1908 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !1903)
!1909 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !1903)
!1910 = !DILocation(line: 0, scope: !513, inlinedAt: !1903)
!1911 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !1903)
!1912 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !1903)
!1913 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !1903)
!1914 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !1903)
!1915 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !1903)
!1916 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !1903)
!1917 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !1903)
!1918 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !1903)
!1919 = distinct !{!1919, !1909, !1920, !486}
!1920 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !1903)
!1921 = !DILocation(line: 0, scope: !517, inlinedAt: !1903)
!1922 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !1903)
!1923 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !1903)
!1924 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !1903)
!1925 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !1903)
!1926 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !1903)
!1927 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !1903)
!1928 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !1903)
!1929 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !1903)
!1930 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !1903)
!1931 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !1903)
!1932 = !DILocation(line: 1506, column: 13, scope: !1796)
!1933 = !DILocation(line: 1506, column: 11, scope: !1793)
!1934 = !DILocation(line: 1507, column: 20, scope: !1795)
!1935 = !DILocation(line: 1507, column: 19, scope: !1795)
!1936 = !DILocation(line: 1508, column: 19, scope: !1795)
!1937 = !DILocation(line: 1509, column: 5, scope: !1795)
!1938 = !DILocation(line: 1510, column: 5, scope: !1795)
!1939 = !DILocation(line: 1511, column: 21, scope: !1795)
!1940 = !DILocation(line: 1511, column: 25, scope: !1795)
!1941 = !DILocation(line: 1511, column: 17, scope: !1795)
!1942 = !DILocation(line: 1512, column: 21, scope: !1795)
!1943 = !DILocation(line: 1512, column: 25, scope: !1795)
!1944 = !DILocation(line: 1512, column: 57, scope: !1795)
!1945 = !DILocation(line: 1512, column: 55, scope: !1795)
!1946 = !DILocation(line: 1512, column: 13, scope: !1795)
!1947 = !DILocation(line: 1512, column: 17, scope: !1795)
!1948 = !DILocation(line: 1514, column: 3, scope: !1796)
!1949 = !DILocation(line: 1516, column: 12, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1796, file: !2, line: 1515, column: 8)
!1951 = !DILocation(line: 1516, column: 5, scope: !1950)
!1952 = !DILocation(line: 0, scope: !1779)
!1953 = !DILocation(line: 1518, column: 1, scope: !1772)
!1954 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_3half_e", scope: !2, file: !2, line: 1521, type: !307, scopeLine: 1522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !1955)
!1955 = !{!1956, !1957, !1958, !1962, !1963, !1964, !1965, !1969, !1973, !1976, !1979, !1980}
!1956 = !DILocalVariable(name: "x", arg: 1, scope: !1954, file: !2, line: 1521, type: !60)
!1957 = !DILocalVariable(name: "result", arg: 2, scope: !1954, file: !2, line: 1521, type: !62)
!1958 = !DILocalVariable(name: "ex", scope: !1959, file: !2, line: 1529, type: !61)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !2, line: 1526, column: 21)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 1526, column: 11)
!1961 = distinct !DILexicalBlock(scope: !1954, file: !2, line: 1523, column: 6)
!1962 = !DILocalVariable(name: "term", scope: !1959, file: !2, line: 1530, type: !61)
!1963 = !DILocalVariable(name: "sum", scope: !1959, file: !2, line: 1531, type: !61)
!1964 = !DILocalVariable(name: "n", scope: !1959, file: !2, line: 1532, type: !18)
!1965 = !DILocalVariable(name: "rat", scope: !1966, file: !2, line: 1534, type: !61)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !2, line: 1533, column: 27)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !2, line: 1533, column: 5)
!1968 = distinct !DILexicalBlock(scope: !1959, file: !2, line: 1533, column: 5)
!1969 = !DILocalVariable(name: "t", scope: !1970, file: !2, line: 1547, type: !61)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !2, line: 1546, column: 20)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 1546, column: 11)
!1972 = distinct !DILexicalBlock(scope: !1960, file: !2, line: 1543, column: 11)
!1973 = !DILocalVariable(name: "t", scope: !1974, file: !2, line: 1551, type: !61)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !2, line: 1550, column: 21)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !2, line: 1550, column: 11)
!1976 = !DILocalVariable(name: "x52", scope: !1977, file: !2, line: 1555, type: !61)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 1554, column: 21)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !2, line: 1554, column: 11)
!1979 = !DILocalVariable(name: "t", scope: !1977, file: !2, line: 1556, type: !61)
!1980 = !DILocalVariable(name: "c", scope: !1977, file: !2, line: 1557, type: !63)
!1981 = distinct !DIAssignID()
!1982 = !DILocation(line: 0, scope: !1977)
!1983 = !DILocation(line: 0, scope: !1954)
!1984 = !DILocation(line: 1523, column: 8, scope: !1961)
!1985 = !DILocation(line: 1523, column: 6, scope: !1954)
!1986 = !DILocation(line: 1524, column: 5, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !2, line: 1524, column: 5)
!1988 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 1523, column: 27)
!1989 = !DILocation(line: 1524, column: 5, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1987, file: !2, line: 1524, column: 5)
!1991 = !DILocation(line: 1526, column: 13, scope: !1960)
!1992 = !DILocation(line: 1526, column: 11, scope: !1961)
!1993 = !DILocation(line: 1529, column: 19, scope: !1959)
!1994 = !DILocation(line: 0, scope: !1959)
!1995 = !DILocation(line: 1533, column: 5, scope: !1968)
!1996 = !DILocation(line: 1534, column: 21, scope: !1966)
!1997 = !DILocation(line: 1534, column: 27, scope: !1966)
!1998 = !DILocation(line: 0, scope: !1966)
!1999 = !DILocation(line: 1535, column: 19, scope: !1966)
!2000 = !DILocation(line: 1535, column: 25, scope: !1966)
!2001 = !DILocation(line: 1535, column: 33, scope: !1966)
!2002 = !DILocation(line: 1535, column: 31, scope: !1966)
!2003 = !DILocation(line: 1535, column: 12, scope: !1966)
!2004 = !DILocation(line: 1537, column: 19, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1966, file: !2, line: 1537, column: 10)
!2006 = !DILocation(line: 1537, column: 10, scope: !2005)
!2007 = !DILocation(line: 1537, column: 25, scope: !2005)
!2008 = distinct !{!2008, !1995, !2009, !486}
!2009 = !DILocation(line: 1538, column: 5, scope: !1968)
!2010 = !DILocation(line: 1539, column: 17, scope: !1959)
!2011 = !DILocation(line: 1540, column: 25, scope: !1959)
!2012 = !DILocation(line: 1540, column: 23, scope: !1959)
!2013 = !DILocation(line: 1540, column: 35, scope: !1959)
!2014 = !DILocation(line: 1540, column: 13, scope: !1959)
!2015 = !DILocation(line: 1540, column: 17, scope: !1959)
!2016 = !DILocation(line: 1543, column: 13, scope: !1972)
!2017 = !DILocation(line: 1543, column: 11, scope: !1960)
!2018 = !DILocation(line: 0, scope: !497, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 1544, column: 12, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 1543, column: 20)
!2021 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !2019)
!2022 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !2019)
!2023 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !2019)
!2024 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !2019)
!2025 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !2019)
!2026 = !DILocation(line: 0, scope: !513, inlinedAt: !2019)
!2027 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !2019)
!2028 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !2019)
!2029 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !2019)
!2030 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !2019)
!2031 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !2019)
!2032 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !2019)
!2033 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !2019)
!2034 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !2019)
!2035 = distinct !{!2035, !2025, !2036, !486}
!2036 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !2019)
!2037 = !DILocation(line: 0, scope: !517, inlinedAt: !2019)
!2038 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !2019)
!2039 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !2019)
!2040 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !2019)
!2041 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !2019)
!2042 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !2019)
!2043 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !2019)
!2044 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !2019)
!2045 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !2019)
!2046 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !2019)
!2047 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !2019)
!2048 = !DILocation(line: 1544, column: 5, scope: !2020)
!2049 = !DILocation(line: 1546, column: 13, scope: !1971)
!2050 = !DILocation(line: 1546, column: 11, scope: !1972)
!2051 = !DILocation(line: 1547, column: 23, scope: !1970)
!2052 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 1548, column: 12, scope: !1970)
!2054 = !DILocation(line: 0, scope: !1970)
!2055 = !DILocation(line: 0, scope: !497, inlinedAt: !2053)
!2056 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !2053)
!2057 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !2053)
!2058 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !2053)
!2059 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !2053)
!2060 = !DILocation(line: 0, scope: !513, inlinedAt: !2053)
!2061 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !2053)
!2062 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !2053)
!2063 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !2053)
!2064 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !2053)
!2065 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !2053)
!2066 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !2053)
!2067 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !2053)
!2068 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !2053)
!2069 = distinct !{!2069, !2059, !2070, !486}
!2070 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !2053)
!2071 = !DILocation(line: 0, scope: !517, inlinedAt: !2053)
!2072 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !2053)
!2073 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !2053)
!2074 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !2053)
!2075 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !2053)
!2076 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !2053)
!2077 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !2053)
!2078 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !2053)
!2079 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !2053)
!2080 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !2053)
!2081 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !2053)
!2082 = !DILocation(line: 1550, column: 13, scope: !1975)
!2083 = !DILocation(line: 1550, column: 11, scope: !1971)
!2084 = !DILocation(line: 1551, column: 23, scope: !1974)
!2085 = !DILocation(line: 11, column: 19, scope: !497, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 1552, column: 12, scope: !1974)
!2087 = !DILocation(line: 0, scope: !1974)
!2088 = !DILocation(line: 0, scope: !497, inlinedAt: !2086)
!2089 = !DILocation(line: 11, column: 30, scope: !497, inlinedAt: !2086)
!2090 = !DILocation(line: 11, column: 39, scope: !497, inlinedAt: !2086)
!2091 = !DILocation(line: 12, column: 19, scope: !497, inlinedAt: !2086)
!2092 = !DILocation(line: 16, column: 3, scope: !515, inlinedAt: !2086)
!2093 = !DILocation(line: 0, scope: !513, inlinedAt: !2086)
!2094 = !DILocation(line: 18, column: 11, scope: !513, inlinedAt: !2086)
!2095 = !DILocation(line: 18, column: 21, scope: !513, inlinedAt: !2086)
!2096 = !DILocation(line: 19, column: 10, scope: !513, inlinedAt: !2086)
!2097 = !DILocation(line: 19, column: 26, scope: !513, inlinedAt: !2086)
!2098 = !DILocation(line: 19, column: 37, scope: !513, inlinedAt: !2086)
!2099 = !DILocation(line: 19, column: 7, scope: !513, inlinedAt: !2086)
!2100 = !DILocation(line: 16, column: 29, scope: !514, inlinedAt: !2086)
!2101 = !DILocation(line: 16, column: 23, scope: !514, inlinedAt: !2086)
!2102 = distinct !{!2102, !2092, !2103, !486}
!2103 = !DILocation(line: 21, column: 3, scope: !515, inlinedAt: !2086)
!2104 = !DILocation(line: 0, scope: !517, inlinedAt: !2086)
!2105 = !DILocation(line: 25, column: 10, scope: !517, inlinedAt: !2086)
!2106 = !DILocation(line: 25, column: 18, scope: !517, inlinedAt: !2086)
!2107 = !DILocation(line: 26, column: 10, scope: !517, inlinedAt: !2086)
!2108 = !DILocation(line: 26, column: 25, scope: !517, inlinedAt: !2086)
!2109 = !DILocation(line: 26, column: 34, scope: !517, inlinedAt: !2086)
!2110 = !DILocation(line: 26, column: 7, scope: !517, inlinedAt: !2086)
!2111 = !DILocation(line: 29, column: 15, scope: !497, inlinedAt: !2086)
!2112 = !DILocation(line: 30, column: 33, scope: !497, inlinedAt: !2086)
!2113 = !DILocation(line: 30, column: 11, scope: !497, inlinedAt: !2086)
!2114 = !DILocation(line: 30, column: 15, scope: !497, inlinedAt: !2086)
!2115 = !DILocation(line: 1554, column: 13, scope: !1978)
!2116 = !DILocation(line: 1554, column: 11, scope: !1975)
!2117 = !DILocation(line: 1555, column: 19, scope: !1977)
!2118 = !DILocation(line: 1555, column: 22, scope: !1977)
!2119 = !DILocation(line: 1555, column: 21, scope: !1977)
!2120 = !DILocation(line: 1556, column: 19, scope: !1977)
!2121 = !DILocation(line: 1557, column: 5, scope: !1977)
!2122 = !DILocation(line: 1558, column: 5, scope: !1977)
!2123 = !DILocation(line: 1559, column: 21, scope: !1977)
!2124 = !DILocation(line: 1559, column: 25, scope: !1977)
!2125 = !DILocation(line: 1559, column: 17, scope: !1977)
!2126 = !DILocation(line: 1560, column: 21, scope: !1977)
!2127 = !DILocation(line: 1560, column: 25, scope: !1977)
!2128 = !DILocation(line: 1560, column: 57, scope: !1977)
!2129 = !DILocation(line: 1560, column: 55, scope: !1977)
!2130 = !DILocation(line: 1560, column: 13, scope: !1977)
!2131 = !DILocation(line: 1560, column: 17, scope: !1977)
!2132 = !DILocation(line: 1562, column: 3, scope: !1978)
!2133 = !DILocation(line: 1564, column: 12, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 1563, column: 8)
!2135 = !DILocation(line: 1564, column: 5, scope: !2134)
!2136 = !DILocation(line: 0, scope: !1961)
!2137 = !DILocation(line: 1566, column: 1, scope: !1954)
!2138 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_inc_0_e", scope: !2, file: !2, line: 1569, type: !91, scopeLine: 1570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2139)
!2139 = !{!2140, !2141, !2142, !2143, !2146, !2147}
!2140 = !DILocalVariable(name: "x", arg: 1, scope: !2138, file: !2, line: 1569, type: !60)
!2141 = !DILocalVariable(name: "b", arg: 2, scope: !2138, file: !2, line: 1569, type: !60)
!2142 = !DILocalVariable(name: "result", arg: 3, scope: !2138, file: !2, line: 1569, type: !62)
!2143 = !DILocalVariable(name: "arg", scope: !2144, file: !2, line: 1575, type: !61)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 1574, column: 8)
!2145 = distinct !DILexicalBlock(scope: !2138, file: !2, line: 1571, column: 6)
!2146 = !DILocalVariable(name: "f0", scope: !2144, file: !2, line: 1576, type: !63)
!2147 = !DILocalVariable(name: "status", scope: !2144, file: !2, line: 1577, type: !18)
!2148 = distinct !DIAssignID()
!2149 = !DILocation(line: 0, scope: !2144)
!2150 = !DILocation(line: 0, scope: !2138)
!2151 = !DILocation(line: 1571, column: 8, scope: !2145)
!2152 = !DILocation(line: 1571, column: 6, scope: !2138)
!2153 = !DILocation(line: 1572, column: 5, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !2, line: 1572, column: 5)
!2155 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 1571, column: 15)
!2156 = !DILocation(line: 1572, column: 5, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 1572, column: 5)
!2158 = !DILocation(line: 1576, column: 5, scope: !2144)
!2159 = !DILocation(line: 1577, column: 18, scope: !2144)
!2160 = !DILocation(line: 1578, column: 22, scope: !2144)
!2161 = !DILocation(line: 1578, column: 17, scope: !2144)
!2162 = !DILocation(line: 1579, column: 22, scope: !2144)
!2163 = !DILocation(line: 1579, column: 47, scope: !2144)
!2164 = !DILocation(line: 1579, column: 57, scope: !2144)
!2165 = !DILocation(line: 1579, column: 44, scope: !2144)
!2166 = !DILocation(line: 1579, column: 13, scope: !2144)
!2167 = !DILocation(line: 1579, column: 17, scope: !2144)
!2168 = !DILocation(line: 1581, column: 3, scope: !2145)
!2169 = !DILocation(line: 0, scope: !2145)
!2170 = !DILocation(line: 1582, column: 1, scope: !2138)
!2171 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_m1", scope: !2, file: !2, line: 1590, type: !2172, scopeLine: 1591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2174)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!61, !60}
!2174 = !{!2175, !2176, !2177}
!2175 = !DILocalVariable(name: "x", arg: 1, scope: !2171, file: !2, line: 1590, type: !60)
!2176 = !DILocalVariable(name: "result", scope: !2171, file: !2, line: 1592, type: !63)
!2177 = !DILocalVariable(name: "status", scope: !2171, file: !2, line: 1592, type: !18)
!2178 = !DILocation(line: 0, scope: !2171)
!2179 = !DILocation(line: 0, scope: !306, inlinedAt: !2180)
!2180 = distinct !DILocation(line: 1592, column: 3, scope: !2171)
!2181 = !DILocation(line: 1217, column: 8, scope: !315, inlinedAt: !2180)
!2182 = !DILocation(line: 1217, column: 6, scope: !306, inlinedAt: !2180)
!2183 = !DILocation(line: 1220, column: 13, scope: !314, inlinedAt: !2180)
!2184 = !DILocation(line: 1220, column: 11, scope: !315, inlinedAt: !2180)
!2185 = !DILocation(line: 1221, column: 23, scope: !313, inlinedAt: !2180)
!2186 = !DILocation(line: 0, scope: !313, inlinedAt: !2180)
!2187 = !DILocation(line: 1222, column: 21, scope: !313, inlinedAt: !2180)
!2188 = !DILocation(line: 1227, column: 21, scope: !317, inlinedAt: !2180)
!2189 = !DILocation(line: 1227, column: 17, scope: !317, inlinedAt: !2180)
!2190 = !DILocation(line: 0, scope: !317, inlinedAt: !2180)
!2191 = !DILocation(line: 1228, column: 22, scope: !317, inlinedAt: !2180)
!2192 = !DILocation(line: 1218, column: 5, scope: !331, inlinedAt: !2180)
!2193 = !DILocation(line: 1592, column: 3, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !2, line: 1592, column: 3)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 1592, column: 3)
!2196 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 1592, column: 3)
!2197 = !DILocation(line: 1593, column: 1, scope: !2171)
!2198 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_0", scope: !2, file: !2, line: 1595, type: !2172, scopeLine: 1596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2199)
!2199 = !{!2200, !2201, !2202}
!2200 = !DILocalVariable(name: "x", arg: 1, scope: !2198, file: !2, line: 1595, type: !60)
!2201 = !DILocalVariable(name: "result", scope: !2198, file: !2, line: 1597, type: !63)
!2202 = !DILocalVariable(name: "status", scope: !2198, file: !2, line: 1597, type: !18)
!2203 = distinct !DIAssignID()
!2204 = !DILocation(line: 0, scope: !2198)
!2205 = !DILocation(line: 1597, column: 3, scope: !2198)
!2206 = !DILocation(line: 1597, column: 3, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2198, file: !2, line: 1597, column: 3)
!2208 = !DILocation(line: 1597, column: 3, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !2, line: 1597, column: 3)
!2210 = distinct !DILexicalBlock(scope: !2207, file: !2, line: 1597, column: 3)
!2211 = !DILocation(line: 1598, column: 1, scope: !2198)
!2212 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_1", scope: !2, file: !2, line: 1600, type: !2172, scopeLine: 1601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2213)
!2213 = !{!2214, !2215, !2216}
!2214 = !DILocalVariable(name: "x", arg: 1, scope: !2212, file: !2, line: 1600, type: !60)
!2215 = !DILocalVariable(name: "result", scope: !2212, file: !2, line: 1602, type: !63)
!2216 = !DILocalVariable(name: "status", scope: !2212, file: !2, line: 1602, type: !18)
!2217 = distinct !DIAssignID()
!2218 = !DILocation(line: 0, scope: !2212)
!2219 = !DILocation(line: 1602, column: 3, scope: !2212)
!2220 = !DILocation(line: 1602, column: 3, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 1602, column: 3)
!2222 = !DILocation(line: 1602, column: 3, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !2, line: 1602, column: 3)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !2, line: 1602, column: 3)
!2225 = !DILocation(line: 1603, column: 1, scope: !2212)
!2226 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_2", scope: !2, file: !2, line: 1605, type: !2172, scopeLine: 1606, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2227)
!2227 = !{!2228, !2229, !2230}
!2228 = !DILocalVariable(name: "x", arg: 1, scope: !2226, file: !2, line: 1605, type: !60)
!2229 = !DILocalVariable(name: "result", scope: !2226, file: !2, line: 1607, type: !63)
!2230 = !DILocalVariable(name: "status", scope: !2226, file: !2, line: 1607, type: !18)
!2231 = distinct !DIAssignID()
!2232 = !DILocation(line: 0, scope: !2226)
!2233 = !DILocation(line: 1607, column: 3, scope: !2226)
!2234 = !DILocation(line: 1607, column: 3, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2226, file: !2, line: 1607, column: 3)
!2236 = !DILocation(line: 1607, column: 3, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 1607, column: 3)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !2, line: 1607, column: 3)
!2239 = !DILocation(line: 1608, column: 1, scope: !2226)
!2240 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_int", scope: !2, file: !2, line: 1610, type: !2241, scopeLine: 1611, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2243)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!61, !59, !60}
!2243 = !{!2244, !2245, !2246, !2247}
!2244 = !DILocalVariable(name: "j", arg: 1, scope: !2240, file: !2, line: 1610, type: !59)
!2245 = !DILocalVariable(name: "x", arg: 2, scope: !2240, file: !2, line: 1610, type: !60)
!2246 = !DILocalVariable(name: "result", scope: !2240, file: !2, line: 1612, type: !63)
!2247 = !DILocalVariable(name: "status", scope: !2240, file: !2, line: 1612, type: !18)
!2248 = distinct !DIAssignID()
!2249 = !DILocation(line: 0, scope: !2240)
!2250 = !DILocation(line: 1612, column: 3, scope: !2240)
!2251 = !DILocation(line: 1612, column: 3, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2240, file: !2, line: 1612, column: 3)
!2253 = !DILocation(line: 1612, column: 3, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 1612, column: 3)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 1612, column: 3)
!2256 = !DILocation(line: 1613, column: 1, scope: !2240)
!2257 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_mhalf", scope: !2, file: !2, line: 1615, type: !2172, scopeLine: 1616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2258)
!2258 = !{!2259, !2260, !2261}
!2259 = !DILocalVariable(name: "x", arg: 1, scope: !2257, file: !2, line: 1615, type: !60)
!2260 = !DILocalVariable(name: "result", scope: !2257, file: !2, line: 1617, type: !63)
!2261 = !DILocalVariable(name: "status", scope: !2257, file: !2, line: 1617, type: !18)
!2262 = distinct !DIAssignID()
!2263 = !DILocation(line: 0, scope: !2257)
!2264 = !DILocation(line: 1617, column: 3, scope: !2257)
!2265 = !DILocation(line: 1617, column: 3, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 1617, column: 3)
!2267 = !DILocation(line: 1617, column: 3, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !2, line: 1617, column: 3)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !2, line: 1617, column: 3)
!2270 = !DILocation(line: 1618, column: 1, scope: !2257)
!2271 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_half", scope: !2, file: !2, line: 1620, type: !2172, scopeLine: 1621, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2272)
!2272 = !{!2273, !2274, !2275}
!2273 = !DILocalVariable(name: "x", arg: 1, scope: !2271, file: !2, line: 1620, type: !60)
!2274 = !DILocalVariable(name: "result", scope: !2271, file: !2, line: 1622, type: !63)
!2275 = !DILocalVariable(name: "status", scope: !2271, file: !2, line: 1622, type: !18)
!2276 = distinct !DIAssignID()
!2277 = !DILocation(line: 0, scope: !2271)
!2278 = !DILocation(line: 1622, column: 3, scope: !2271)
!2279 = !DILocation(line: 1622, column: 3, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2271, file: !2, line: 1622, column: 3)
!2281 = !DILocation(line: 1622, column: 3, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !2, line: 1622, column: 3)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 1622, column: 3)
!2284 = !DILocation(line: 1623, column: 1, scope: !2271)
!2285 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_3half", scope: !2, file: !2, line: 1625, type: !2172, scopeLine: 1626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2286)
!2286 = !{!2287, !2288, !2289}
!2287 = !DILocalVariable(name: "x", arg: 1, scope: !2285, file: !2, line: 1625, type: !60)
!2288 = !DILocalVariable(name: "result", scope: !2285, file: !2, line: 1627, type: !63)
!2289 = !DILocalVariable(name: "status", scope: !2285, file: !2, line: 1627, type: !18)
!2290 = distinct !DIAssignID()
!2291 = !DILocation(line: 0, scope: !2285)
!2292 = !DILocation(line: 1627, column: 3, scope: !2285)
!2293 = !DILocation(line: 1627, column: 3, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2285, file: !2, line: 1627, column: 3)
!2295 = !DILocation(line: 1627, column: 3, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !2, line: 1627, column: 3)
!2297 = distinct !DILexicalBlock(scope: !2294, file: !2, line: 1627, column: 3)
!2298 = !DILocation(line: 1628, column: 1, scope: !2285)
!2299 = distinct !DISubprogram(name: "gsl_sf_fermi_dirac_inc_0", scope: !2, file: !2, line: 1630, type: !2300, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !14, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!61, !60, !60}
!2302 = !{!2303, !2304, !2305, !2306}
!2303 = !DILocalVariable(name: "x", arg: 1, scope: !2299, file: !2, line: 1630, type: !60)
!2304 = !DILocalVariable(name: "b", arg: 2, scope: !2299, file: !2, line: 1630, type: !60)
!2305 = !DILocalVariable(name: "result", scope: !2299, file: !2, line: 1632, type: !63)
!2306 = !DILocalVariable(name: "status", scope: !2299, file: !2, line: 1632, type: !18)
!2307 = distinct !DIAssignID()
!2308 = !DILocation(line: 0, scope: !2299)
!2309 = !DILocation(line: 0, scope: !2144, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 1632, column: 3, scope: !2299)
!2311 = !DILocation(line: 0, scope: !2138, inlinedAt: !2310)
!2312 = !DILocation(line: 1571, column: 8, scope: !2145, inlinedAt: !2310)
!2313 = !DILocation(line: 1571, column: 6, scope: !2138, inlinedAt: !2310)
!2314 = !DILocation(line: 1572, column: 5, scope: !2157, inlinedAt: !2310)
!2315 = !DILocation(line: 1632, column: 3, scope: !2299)
!2316 = !DILocation(line: 1576, column: 5, scope: !2144, inlinedAt: !2310)
!2317 = !DILocation(line: 1577, column: 18, scope: !2144, inlinedAt: !2310)
!2318 = !DILocation(line: 1578, column: 22, scope: !2144, inlinedAt: !2310)
!2319 = !DILocation(line: 1581, column: 3, scope: !2145, inlinedAt: !2310)
!2320 = !DILocation(line: 1632, column: 3, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2299, file: !2, line: 1632, column: 3)
!2322 = !DILocation(line: 1632, column: 3, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2324, file: !2, line: 1632, column: 3)
!2324 = distinct !DILexicalBlock(scope: !2321, file: !2, line: 1632, column: 3)
!2325 = !DILocation(line: 1633, column: 1, scope: !2299)
!2326 = !DISubprogram(name: "gsl_sf_pow_int", scope: !2327, file: !2327, line: 44, type: !2328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2327 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!61, !60, !59}
!2330 = !DISubprogram(name: "pow", scope: !362, file: !362, line: 140, type: !2331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!61, !61, !61}
!2333 = !DISubprogram(name: "gsl_sf_fact_e", scope: !2334, file: !2334, line: 119, type: !2335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2334 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!18, !2337, !62}
!2337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!2338 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !2334, file: !2334, line: 47, type: !2339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!18, !61, !62}
!2341 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !2342, file: !2342, line: 110, type: !91, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2342 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!2343 = !DISubprogram(name: "cos", scope: !362, file: !362, line: 62, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2344 = !DISubprogram(name: "gsl_sf_hyperg_U_int_e", scope: !2345, file: !2345, line: 74, type: !2346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2345 = !DIFile(filename: "../gsl/gsl_sf_hyperg.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "6a7ad80bd86b12c428cf1476c4b61a8a")
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!18, !59, !59, !60, !62}
!2348 = !DISubprogram(name: "gsl_sf_hyperg_1F1_int_e", scope: !2345, file: !2345, line: 56, type: !2346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2349 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !2342, file: !2342, line: 122, type: !2350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!18, !60, !60, !60, !60, !62}
