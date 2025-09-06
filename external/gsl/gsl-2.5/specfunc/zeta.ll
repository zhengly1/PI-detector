; ModuleID = 'zeta.c'
source_filename = "zeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"zeta.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !17
@hzeta_c = internal unnamed_addr constant [15 x double] [double 1.000000e+00, double 0x3FB5555555555555, double 0xBF56C16C16C16C17, double 0x3F01566ABC011567, double 0xBEABBD779334EF0B, double 0x3E566A8F2BF70EBE, double 0xBE022805D644267F, double 0x3DAD6DB2C4E09162, double 0xBD57DA4E1F79955C, double 0x3D0355871D652E9E, double 0xBCAF57D968CAACF1, double 0x3C5967E1F09C376F, double 0xBC0497D9033A2B5C, double 0x3BB0B132D7C6AD06, double 0xBB5B0F72D59F1C16], align 16, !dbg !22
@__const.gsl_sf_zeta_e.twopi_pow = private unnamed_addr constant [18 x double] [double 1.000000e+00, double 0x4196DD00C27647FF, double 0x434055D75DE0A95E, double 0x44E757AA965F2DED, double 0x4690AD7B4759B2E1, double 0x4837D4E683979E25, double 0x49E106F56347D804, double 0x4B8854C254E058A0, double 0x4D31624F8C5033BF, double 0x4ED8D74C1EF8E2BB, double 0x5081BF93D1F61206, double 0x52295C92422C84B2, double 0x53D21ECC79B693CA, double 0x5579E4A36BE79900, double 0x57228004002A44C3, double 0x58CA6F8E98555A40, double 0x5A72E3451A2CC2D7, double 0x5C1AFD6314065D22], align 16
@zeta_neg_int_table = internal unnamed_addr constant [50 x double] [double 0xBFB5555555555555, double 0x3F81111111111111, double 0xBF70410410410410, double 0x3F71111111111111, double 0xBF7F07C1F07C1F08, double 0x3F95995995995996, double 0xBFB5555555555555, double 0x3FDC5E5E5E5E5E5E, double 0xC0086E7F9B9FE6E8, double 0x403A74CA514CA515, double 0xC071975CC0ED7304, double 0x40AC2F0566566566, double 0xC0EAC572AAAAAAAB, double 0x412DC0B1A5CFBE16, double 0xC1731FAD7CBF3C00, double 0x41BC280563B8BCBD, double 0xC207892EDFDF5555, double 0x42562B8B44651D09, double 0xC2A76024C215D22B, double 0x42FB6C0DFED2955B, double 0xC351CCA39B77B027, double 0x43A97212D8CC1040, double 0xC403F0CB06B17E29, double 0x4461101D96823EE1, double 0xC4BFC474BDD53C20, double 0x452007DB56DB95DF, double 0xC5817C6DD28A9378, double 0x45E48DF88A383AD8, double 0xC649F7B3FA37F314, double 0x46B195C16C40D563, double 0xC7197922EAFB5D17, double 0x4783B0A43DEF5904, double 0xC7F035A171273534, double 0x485C5E89F1FD242E, double 0xC8CA575DD47B788A, double 0x4939E84A01AE153A, double 0xC9AAF26959307253, double 0x4A1D9890BC68EEDC, double 0xCA91231831C6CCBC, double 0x4B04E5B1C79769AD, double 0xCB7ACC2917790916, double 0x4BF20BD5E935FC86, double 0xCC697F9F572293EC, double 0x4CE2E083516087A9, double 0xCD5D41E650690E84, double 0x4DD7B59A0F58FFB7, double 0xCE5412709736939F, double 0x4ED1BC48BBC5CC50, double 0xCF50575EC3AB2234, double 0x4FCF5FE45963CAC2], align 16, !dbg !122
@zetam1_pos_int_table = internal unnamed_addr constant [101 x double] [double -1.500000e+00, double 0.000000e+00, double 0x3FE4A34CC4A60FA6, double 0x3FC9DD002780310A, double 0x3FB51322AC7D8483, double 0x3FA2E831D94F99B7, double 0x3F91C26130249124, double 0x3F81196D0A679C47, double 0x3F70B36AF86396E9, double 0x3F6073E7B02D6AE0, double 0x3F504B8CE96EE5F8, double 0x3F40318DF2459954, double 0x3F3020A5B2CD3042, double 0x3F201593A1177BD6, double 0x3F100E4AF2B4E156, double 0x3F00097BCBF11BED, double 0x3EF0064CDEB22F0F, double 0x3EE0043073686681, double 0x3ED002C9953744CC, double 0x3EC001DB08F9BA4A, double 0x3EB0013C594466EA, double 0x3EA000D2BAB28121, double 0x3E90008C66CEC77D, double 0x3E80005D8F13858C, double 0x3E70003E59FFDE12, double 0x3E6000298EA55633, double 0x3E50001BB316CCDA, double 0x3E40001276B90845, double 0x3E30000C4ED05AE3, double 0x3E20000834601A87, double 0x3E100005782AAEBE, double 0x3E000003A56719B9, double 0x3DF000026E3F644F, double 0x3DE000019ED24201, double 0x3DD00001148AD653, double 0x3DC00000B85BE414, double 0x3DB000007AE797FF, double 0x3DA0000051EF8FFA, double 0x3D900000369F9FF9, double 0x3D800000246A5FFB, double 0x3D7000001846E551, double 0x3D600000102F40E1, double 0x3D5000000ACA29EB, double 0x3D4000000731709D, double 0x3D30000004CBA013, double 0x3D20000003326A8D, double 0x3D10000002219C49, double 0x3D000000016BBD7B, double 0x3CF0000000F27E4D, double 0x3CE0000000A1A986, double 0x3CD00000006BC658, double 0x3CC000000047D98F, double 0x3CB00000002FE65F, double 0x3CA00000001FEEEA, double 0x3C900000001549F1, double 0x3C800000000E314B, double 0x3C70000000097632, double 0x3C60000000064ECC, double 0x3C50000000043488, double 0x3C4000000002CDB0, double 0x3C3000000001DE75, double 0x3C20000000013EF9, double 0x3C1000000000D4A6, double 0x3C00000000008DC4, double 0x3BF0000000005E83, double 0x3BE0000000003F02, double 0x3BD0000000002A01, double 0x3BC0000000001C01, double 0x3BB00000000012AB, double 0x3BA0000000000C72, double 0x3B9000000000084C, double 0x3B80000000000588, double 0x3B700000000003B0, double 0x3B60000000000275, double 0x3B500000000001A4, double 0x3B40000000000118, double 0x3B300000000000BA, double 0x3B2000000000007C, double 0x3B10000000000053, double 0x3B00000000000037, double 0x3AF0000000000025, double 0x3AE0000000000019, double 0x3AD0000000000010, double 0x3AC000000000000B, double 0x3AB0000000000007, double 0x3AA0000000000005, double 0x3A90000000000003, double 0x3A80000000000002, double 0x3A70000000000001, double 0x3A60000000000001, double 0x3A50000000000001, double 0x3A40000000000000, double 0x3A30000000000000, double 0x3A20000000000000, double 0x3A10000000000000, double 0x3A00000000000000, double 0x39F0000000000000, double 0x39E0000000000000, double 0x39D0000000000000, double 0x39C0000000000000, double 0x39B0000000000000], align 16, !dbg !127
@eta_pos_int_table = internal unnamed_addr constant [101 x double] [double 5.000000e-01, double 0x3FE62E42FEFA39EF, double 0x3FEA51A6625307D3, double 0x3FECD97007680932, double 0x3FEE4E17CADDBA7E, double 0x3FEF1B9AEBBBAA02, double 0x3FEF89A271351B65, double 0x3FEFC3541D58F7F7, double 0x3FEFE1240844E59F, double 0x3FEFF06373C87D3D, double 0x3FEFF821B3917D17, double 0x3FEFFC0B6063B242, double 0x3FEFFE03D433C2DB, double 0x3FEFFF0149247DD7, double 0x3FEFFF806E5402EA, double 0x3FEFFFC024EE9808, double 0x3FEFFFE00C59A431, double 0x3FEFFFF004206F38, double 0x3FEFFFF80160C9E9, double 0x3FEFFFFC0075C221, double 0x3FEFFFFE00274B24, double 0x3FEFFFFF000D1BAA, double 0x3FEFFFFF80045F36, double 0x3FEFFFFFC001753C, double 0x3FEFFFFFE0007C74, double 0x3FEFFFFFF000297F, double 0x3FEFFFFFF8000DD6, double 0x3FEFFFFFFC00049D, double 0x3FEFFFFFFE00018A, double 0x3FEFFFFFFF000083, double 0x3FEFFFFFFF80002C, double 0x3FEFFFFFFFC0000F, double 0x3FEFFFFFFFE00005, double 0x3FEFFFFFFFF00002, double 0x3FEFFFFFFFF80001, double 0x3FEFFFFFFFFC0000, double 0x3FEFFFFFFFFE0000, double 0x3FEFFFFFFFFF0000, double 0x3FEFFFFFFFFF8000, double 0x3FEFFFFFFFFFC000, double 0x3FEFFFFFFFFFE000, double 0x3FEFFFFFFFFFF000, double 0x3FEFFFFFFFFFF800, double 0x3FEFFFFFFFFFFC00, double 0x3FEFFFFFFFFFFE00, double 0x3FEFFFFFFFFFFF00, double 0x3FEFFFFFFFFFFF80, double 0x3FEFFFFFFFFFFFC0, double 0x3FEFFFFFFFFFFFE0, double 0x3FEFFFFFFFFFFFF0, double 0x3FEFFFFFFFFFFFF8, double 0x3FEFFFFFFFFFFFFC, double 0x3FEFFFFFFFFFFFFE, double 0x3FEFFFFFFFFFFFFF, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00], align 16, !dbg !139
@eta_neg_int_table = internal unnamed_addr constant [50 x double] [double 2.500000e-01, double -1.250000e-01, double 2.500000e-01, double -1.062500e+00, double 7.750000e+00, double -8.637500e+01, double 1.365250e+03, double 0xC0DC5E4200000000, double 0x41286E7980000000, double 0xC17A74C8AA000000, double 0x41D1975C7A900000, double 0xC22C2F054A276000, double 0x428AC572A3F94E00, double 0xC2EDC0B1A3F3B2FC, double 0x43531FAD7C72BD4A, double 0xC3BC2805639C94B7, double 0x4427892EDFD9730A, double 0xC4962B8B4463BA51, double 0x45076024C21574AA, double 0xC57B6C0DFED279EF, double 0x45F1CCA39B77ABB4, double 0xC6697212D8CC0EA9, double 0x46E3F0CB06B17DD9, double 0xC761101D96823ED0, double 0x47DFC474BDD53C18, double 0xC86007DB56DB95DE, double 0x48E17C6DD28A9378, double 0xC9648DF88A383AD8, double 0x49E9F7B3FA37F314, double 0xCA7195C16C40D563, double 0x4AF97922EAFB5D17, double 0xCB83B0A43DEF5904, double 0x4C1035A171273534, double 0xCC9C5E89F1FD242E, double 0x4D2A575DD47B788A, double 0xCDB9E84A01AE153A, double 0x4E4AF26959307253, double 0xCEDD9890BC68EEDC, double 0x4F71231831C6CCBC, double 0xD004E5B1C79769AD, double 0x509ACC2917790916, double 0xD1320BD5E935FC86, double 0x51C97F9F572293EC, double 0xD262E083516087A9, double 0x52FD41E650690E84, double 0xD397B59A0F58FFB7, double 0x543412709736939F, double 0xD4D1BC48BBC5CC50, double 0x5570575EC3AB2234, double 0xD60F5FE45963CAC2], align 16, !dbg !141
@.str.4 = private unnamed_addr constant [26 x i8] c"gsl_sf_zeta_e(s, &result)\00", align 1, !dbg !68
@.str.5 = private unnamed_addr constant [30 x i8] c"gsl_sf_hzeta_e(s, a, &result)\00", align 1, !dbg !73
@.str.6 = private unnamed_addr constant [30 x i8] c"gsl_sf_zeta_int_e(s, &result)\00", align 1, !dbg !78
@.str.7 = private unnamed_addr constant [28 x i8] c"gsl_sf_zetam1_e(s, &result)\00", align 1, !dbg !80
@.str.8 = private unnamed_addr constant [32 x i8] c"gsl_sf_zetam1_int_e(s, &result)\00", align 1, !dbg !85
@.str.9 = private unnamed_addr constant [29 x i8] c"gsl_sf_eta_int_e(s, &result)\00", align 1, !dbg !90
@.str.10 = private unnamed_addr constant [25 x i8] c"gsl_sf_eta_e(s, &result)\00", align 1, !dbg !95
@zeta_xlt1_data = internal unnamed_addr constant [14 x double] [double 0x3FF7AED852FDCAE3, double 0x3FD001F9F0892C1F, double 0x3F844C6A3C99D0AD, double 0xBF1FADF1E674ACBA, double 0xBED3F57E55B09A59, double 0x3E8DD626CA3F922C, double 0xBE231A13C303D5D7, double 0xBDDBF6C590BBC8B3, double 0x3D933E8F614D43D8, double 0xBD31841E1B32EE6B, double 0xBCC7D224A8703D16, double 0x3C8C858EC5B28EAA, double 0xBC333D57C275128A, double 0x3BC082B84F83B91C], align 16, !dbg !112
@zeta_xgt1_data = internal unnamed_addr constant [30 x double] [double 0x40336450627983A1, double 0x40224E18CD24FD83, double 0x3FCF13BC2C24BD9A, double 0xBFC123A330453553, double 0x3FAD95B1E494A222, double 0xBF933680A9A42CB0, double 0x3F7023B49C2A5097, double 0xBF0E7CDF366363EA, double 0xBF389DC5ABEA0138, double 0x3F28CE475CB6A634, double 0xBF0CC8FC461227EA, double 0x3EE2436B85BA5539, double 0x3EA5ADE971E22BD6, double 0xBEB03B5F0398538D, double 0x3E988D52F126AA1D, double 0xBE76B5274975D042, double 0x3E45772EB3DDE74D, double 0x3E187FA15E279FFD, double 0xBE1434F7F5D32869, double 0x3DF98143E6E46ABF, double 0xBDD48C8BC7E17869, double 0x3DA1453C81235B86, double 0x3D718FD10D3D317D, double 0xBD6A7C5239B74FB3, double 0x3D4EE621C3DDEBA1, double 0xBD279B7341440685, double 0x3CF4DEC552E8CEE8, double 0x3CB11BB751CE0F5B, double 0xBCB3A7A1114EB573, double 0x3C969E53D45F55DC], align 16, !dbg !119
@zetam1_inter_data = internal unnamed_addr constant [24 x double] [double 0xC035C03DD66624A5, double 0xC016857F64863724, double 0x3FAB0924C94BFD53, double 0xBF9003748E72473C, double 0x3F70B87B1F8742F1, double 0xBF50D165BD35490C, double 0x3F3111F59E323345, double 0xBF11B9BD42924B2B, double 0x3EF2CCA183A9FD01, double 0xBED444BC4A505EEF, double 0x3EB621A772C472BB, double 0xBE98695B99CD4F19, double 0x3E7B26C228C526DD, double 0xBE5E68F5F8F73930, double 0x3E4121966337F2F5, double 0xBE23667F6B2E6152, double 0x3E0611761971071E, double 0xBDE9338AD6FAF622, double 0x3DCCE113E2B329A1, double 0xBDB0991BFA8ECB1F, double 0x3D9321A30FCB05AC, double 0xBD76186BD8BBA5CC, double 0x3D596C415674B2A9, double 0xBD3B33EA0A9F4A5E], align 16, !dbg !134

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hzeta_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !154 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !166, metadata !DIExpression()), !dbg !195
  tail call void @llvm.dbg.value(metadata double %1, metadata !167, metadata !DIExpression()), !dbg !195
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !168, metadata !DIExpression()), !dbg !195
  %4 = fcmp ole double %0, 1.000000e+00, !dbg !196
  %5 = fcmp ole double %1, 0.000000e+00
  %6 = or i1 %4, %5, !dbg !197
  br i1 %6, label %7, label %9, !dbg !197

7:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !198, !tbaa !201
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !198
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !198, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 719, i32 noundef 1) #7, !dbg !207
  br label %120, !dbg !207

9:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata double 5.400000e+01, metadata !169, metadata !DIExpression()), !dbg !209
  %10 = fneg double %0, !dbg !210
  %11 = tail call double @log(double noundef %1) #7, !dbg !211
  %12 = fmul double %11, %10, !dbg !212
  tail call void @llvm.dbg.value(metadata double %12, metadata !172, metadata !DIExpression()), !dbg !209
  %13 = fcmp olt double %12, 0xC0861B2BDD7ABCD2, !dbg !213
  br i1 %13, label %14, label %16, !dbg !214

14:                                               ; preds = %9
  store double 0.000000e+00, ptr %2, align 8, !dbg !215, !tbaa !201
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !215
  store double 0x10000000000000, ptr %15, align 8, !dbg !215, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 726, i32 noundef 15) #7, !dbg !218
  br label %120, !dbg !218

16:                                               ; preds = %9
  %17 = fcmp ogt double %12, 0x40862642FEFA39EF, !dbg !220
  br i1 %17, label %18, label %20, !dbg !221

18:                                               ; preds = %16
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !222, !tbaa !201
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !222
  store double 0x7FF0000000000000, ptr %19, align 8, !dbg !222, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 729, i32 noundef 16) #7, !dbg !225
  br label %120, !dbg !225

20:                                               ; preds = %16
  %21 = fcmp ogt double %0, 5.400000e+01, !dbg !227
  %22 = fcmp olt double %1, 1.000000e+00
  %23 = and i1 %21, %22, !dbg !228
  br i1 %23, label %28, label %24, !dbg !228

24:                                               ; preds = %20
  %25 = fcmp ogt double %0, 2.700000e+01, !dbg !229
  %26 = fcmp olt double %1, 2.500000e-01
  %27 = and i1 %25, %26, !dbg !230
  br i1 %27, label %28, label %33, !dbg !230

28:                                               ; preds = %24, %20
  %29 = tail call double @pow(double noundef %1, double noundef %10) #7, !dbg !231
  store double %29, ptr %2, align 8, !dbg !233, !tbaa !201
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !234
  %31 = fmul double %30, 0x3CC0000000000000, !dbg !235
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !236
  store double %31, ptr %32, align 8, !dbg !237, !tbaa !206
  br label %120, !dbg !238

33:                                               ; preds = %24
  %34 = and i1 %25, %22, !dbg !239
  br i1 %34, label %35, label %52, !dbg !239

35:                                               ; preds = %33
  %36 = tail call double @pow(double noundef %1, double noundef %10) #7, !dbg !240
  tail call void @llvm.dbg.value(metadata double %36, metadata !173, metadata !DIExpression()), !dbg !241
  %37 = fadd double %1, 1.000000e+00, !dbg !242
  %38 = fdiv double %1, %37, !dbg !243
  %39 = tail call double @pow(double noundef %38, double noundef %0) #7, !dbg !244
  tail call void @llvm.dbg.value(metadata double %39, metadata !179, metadata !DIExpression()), !dbg !241
  %40 = fadd double %1, 2.000000e+00, !dbg !245
  %41 = fdiv double %1, %40, !dbg !246
  %42 = tail call double @pow(double noundef %41, double noundef %0) #7, !dbg !247
  tail call void @llvm.dbg.value(metadata double %42, metadata !180, metadata !DIExpression()), !dbg !241
  %43 = fadd double %39, 1.000000e+00, !dbg !248
  %44 = fadd double %43, %42, !dbg !249
  %45 = fmul double %36, %44, !dbg !250
  store double %45, ptr %2, align 8, !dbg !251, !tbaa !201
  %46 = fmul double %0, 5.000000e-01, !dbg !252
  %47 = fadd double %46, 2.000000e+00, !dbg !253
  %48 = fmul double %47, 0x3CB0000000000000, !dbg !254
  %49 = tail call double @llvm.fabs.f64(double %45), !dbg !255
  %50 = fmul double %48, %49, !dbg !256
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !257
  store double %50, ptr %51, align 8, !dbg !258, !tbaa !206
  br label %120

52:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata i32 12, metadata !181, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 10, metadata !184, metadata !DIExpression()), !dbg !259
  %53 = fadd double %1, 1.000000e+01, !dbg !260
  %54 = tail call double @pow(double noundef %53, double noundef %10) #7, !dbg !261
  tail call void @llvm.dbg.value(metadata double %54, metadata !187, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %0, metadata !188, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %89, metadata !189, metadata !DIExpression()), !dbg !259
  %55 = fadd double %0, -1.000000e+00, !dbg !262
  %56 = fdiv double %53, %55, !dbg !263
  %57 = fadd double %56, 5.000000e-01, !dbg !264
  %58 = fmul double %57, %54, !dbg !265
  tail call void @llvm.dbg.value(metadata double %58, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %58, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !259
  %59 = fadd double %1, 0.000000e+00, !dbg !266
  %60 = tail call double @pow(double noundef %59, double noundef %10) #7, !dbg !270
  %61 = fadd double %58, %60, !dbg !271
  tail call void @llvm.dbg.value(metadata double %61, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 1, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %61, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 1, metadata !186, metadata !DIExpression()), !dbg !259
  %62 = fadd double %1, 1.000000e+00, !dbg !266
  %63 = tail call double @pow(double noundef %62, double noundef %10) #7, !dbg !270
  %64 = fadd double %61, %63, !dbg !271
  tail call void @llvm.dbg.value(metadata double %64, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 2, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %64, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 2, metadata !186, metadata !DIExpression()), !dbg !259
  %65 = fadd double %1, 2.000000e+00, !dbg !266
  %66 = tail call double @pow(double noundef %65, double noundef %10) #7, !dbg !270
  %67 = fadd double %64, %66, !dbg !271
  tail call void @llvm.dbg.value(metadata double %67, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 3, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %67, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 3, metadata !186, metadata !DIExpression()), !dbg !259
  %68 = fadd double %1, 3.000000e+00, !dbg !266
  %69 = tail call double @pow(double noundef %68, double noundef %10) #7, !dbg !270
  %70 = fadd double %67, %69, !dbg !271
  tail call void @llvm.dbg.value(metadata double %70, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 4, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %70, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 4, metadata !186, metadata !DIExpression()), !dbg !259
  %71 = fadd double %1, 4.000000e+00, !dbg !266
  %72 = tail call double @pow(double noundef %71, double noundef %10) #7, !dbg !270
  %73 = fadd double %70, %72, !dbg !271
  tail call void @llvm.dbg.value(metadata double %73, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 5, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %73, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 5, metadata !186, metadata !DIExpression()), !dbg !259
  %74 = fadd double %1, 5.000000e+00, !dbg !266
  %75 = tail call double @pow(double noundef %74, double noundef %10) #7, !dbg !270
  %76 = fadd double %73, %75, !dbg !271
  tail call void @llvm.dbg.value(metadata double %76, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 6, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %76, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 6, metadata !186, metadata !DIExpression()), !dbg !259
  %77 = fadd double %1, 6.000000e+00, !dbg !266
  %78 = tail call double @pow(double noundef %77, double noundef %10) #7, !dbg !270
  %79 = fadd double %76, %78, !dbg !271
  tail call void @llvm.dbg.value(metadata double %79, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 7, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %79, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 7, metadata !186, metadata !DIExpression()), !dbg !259
  %80 = fadd double %1, 7.000000e+00, !dbg !266
  %81 = tail call double @pow(double noundef %80, double noundef %10) #7, !dbg !270
  %82 = fadd double %79, %81, !dbg !271
  tail call void @llvm.dbg.value(metadata double %82, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 8, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %82, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 8, metadata !186, metadata !DIExpression()), !dbg !259
  %83 = fadd double %1, 8.000000e+00, !dbg !266
  %84 = tail call double @pow(double noundef %83, double noundef %10) #7, !dbg !270
  %85 = fadd double %82, %84, !dbg !271
  tail call void @llvm.dbg.value(metadata double %85, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 9, metadata !186, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %85, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 9, metadata !186, metadata !DIExpression()), !dbg !259
  %86 = fadd double %1, 9.000000e+00, !dbg !266
  %87 = tail call double @pow(double noundef %86, double noundef %10) #7, !dbg !270
  %88 = fadd double %85, %87, !dbg !271
  tail call void @llvm.dbg.value(metadata double %88, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 10, metadata !186, metadata !DIExpression()), !dbg !259
  %89 = fdiv double %54, %53, !dbg !272
  tail call void @llvm.dbg.value(metadata double %88, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %89, metadata !189, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %0, metadata !188, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !259
  %90 = fmul double %53, %53
  br label %91, !dbg !273

91:                                               ; preds = %52, %105
  %92 = phi i64 [ 0, %52 ], [ %96, %105 ]
  %93 = phi double [ %88, %52 ], [ %101, %105 ]
  %94 = phi double [ %89, %52 ], [ %114, %105 ]
  %95 = phi double [ %0, %52 ], [ %113, %105 ]
  tail call void @llvm.dbg.value(metadata double %93, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %94, metadata !189, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %95, metadata !188, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !185, metadata !DIExpression()), !dbg !259
  %96 = add nuw nsw i64 %92, 1, !dbg !274
  %97 = getelementptr inbounds [15 x double], ptr @hzeta_c, i64 0, i64 %96, !dbg !275
  %98 = load double, ptr %97, align 8, !dbg !275, !tbaa !276
  %99 = fmul double %95, %98, !dbg !277
  %100 = fmul double %94, %99, !dbg !278
  tail call void @llvm.dbg.value(metadata double %100, metadata !191, metadata !DIExpression()), !dbg !279
  %101 = fadd double %93, %100, !dbg !280
  tail call void @llvm.dbg.value(metadata double %101, metadata !190, metadata !DIExpression()), !dbg !259
  %102 = fdiv double %100, %101, !dbg !281
  %103 = tail call double @llvm.fabs.f64(double %102), !dbg !283
  %104 = fcmp olt double %103, 0x3CA0000000000000, !dbg !284
  br i1 %104, label %116, label %105, !dbg !285

105:                                              ; preds = %91
  %106 = trunc i64 %92 to i32, !dbg !286
  %107 = shl i32 %106, 1, !dbg !286
  %108 = sitofp i32 %107 to double, !dbg !286
  %109 = fadd double %108, %0, !dbg !287
  %110 = fadd double %109, 1.000000e+00, !dbg !288
  %111 = fadd double %109, 2.000000e+00, !dbg !289
  %112 = fmul double %110, %111, !dbg !290
  %113 = fmul double %95, %112, !dbg !291
  tail call void @llvm.dbg.value(metadata double %113, metadata !188, metadata !DIExpression()), !dbg !259
  %114 = fdiv double %94, %90, !dbg !292
  tail call void @llvm.dbg.value(metadata double %101, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata double %114, metadata !189, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !185, metadata !DIExpression()), !dbg !259
  %115 = icmp eq i64 %96, 13, !dbg !293
  br i1 %115, label %116, label %91, !dbg !273, !llvm.loop !294

116:                                              ; preds = %91, %105
  tail call void @llvm.dbg.value(metadata double %101, metadata !190, metadata !DIExpression()), !dbg !259
  store double %101, ptr %2, align 8, !dbg !297, !tbaa !201
  %117 = tail call double @llvm.fabs.f64(double %101), !dbg !298
  %118 = fmul double %117, 0x3CFA000000000000, !dbg !299
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !300
  store double %118, ptr %119, align 8, !dbg !301, !tbaa !206
  br label %120

120:                                              ; preds = %14, %18, %28, %35, %116, %7
  %121 = phi i32 [ 1, %7 ], [ 15, %14 ], [ 16, %18 ], [ 0, %28 ], [ 0, %35 ], [ 0, %116 ], !dbg !302
  ret i32 %121, !dbg !303
}

declare !dbg !304 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !309 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !313 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_zeta_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !316 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !338, metadata !DIExpression(), metadata !340, metadata ptr %3, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata double %0, metadata !320, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !321, metadata !DIExpression()), !dbg !342
  %4 = fcmp oeq double %0, 1.000000e+00, !dbg !343
  br i1 %4, label %5, label %7, !dbg !344

5:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !345, !tbaa !201
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !345
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !345, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 781, i32 noundef 1) #7, !dbg !348
  br label %233, !dbg !348

7:                                                ; preds = %2
  %8 = fcmp ult double %0, 0.000000e+00, !dbg !350
  br i1 %8, label %120, label %9, !dbg !351

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata double %0, metadata !352, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata ptr %1, metadata !357, metadata !DIExpression()), !dbg !370
  %10 = fcmp olt double %0, 1.000000e+00, !dbg !373
  br i1 %10, label %11, label %55, !dbg !374

11:                                               ; preds = %9
  %12 = fmul double %0, 2.000000e+00, !dbg !375
  %13 = fadd double %12, -1.000000e+00, !dbg !376
  call void @llvm.dbg.value(metadata !377, metadata !378, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %13, metadata !386, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata ptr undef, metadata !387, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !389, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !390, metadata !DIExpression()), !dbg !400
  %14 = fmul double %13, 2.000000e+00, !dbg !402
  %15 = fadd double %14, 1.000000e+00, !dbg !403
  %16 = fadd double %15, -1.000000e+00, !dbg !404
  %17 = fmul double %16, 5.000000e-01, !dbg !405
  call void @llvm.dbg.value(metadata double %17, metadata !391, metadata !DIExpression()), !dbg !400
  %18 = fmul double %17, 2.000000e+00, !dbg !406
  call void @llvm.dbg.value(metadata double %18, metadata !392, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !393, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata i32 13, metadata !388, metadata !DIExpression()), !dbg !400
  br label %19, !dbg !407

19:                                               ; preds = %19, %11
  %20 = phi i64 [ 13, %11 ], [ %35, %19 ]
  %21 = phi double [ 0.000000e+00, %11 ], [ %28, %19 ]
  %22 = phi double [ 0.000000e+00, %11 ], [ %34, %19 ]
  %23 = phi double [ 0.000000e+00, %11 ], [ %21, %19 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !388, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %21, metadata !389, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %22, metadata !393, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %23, metadata !390, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %21, metadata !394, metadata !DIExpression()), !dbg !408
  %24 = fmul double %18, %21, !dbg !409
  %25 = fsub double %24, %23, !dbg !410
  %26 = getelementptr inbounds double, ptr @zeta_xlt1_data, i64 %20, !dbg !411
  %27 = load double, ptr %26, align 8, !dbg !411, !tbaa !276
  %28 = fadd double %25, %27, !dbg !412
  call void @llvm.dbg.value(metadata double %28, metadata !389, metadata !DIExpression()), !dbg !400
  %29 = tail call double @llvm.fabs.f64(double %24), !dbg !413
  %30 = tail call double @llvm.fabs.f64(double %23), !dbg !414
  %31 = fadd double %29, %30, !dbg !415
  %32 = tail call double @llvm.fabs.f64(double %27), !dbg !416
  %33 = fadd double %31, %32, !dbg !417
  %34 = fadd double %22, %33, !dbg !418
  call void @llvm.dbg.value(metadata double %34, metadata !393, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %21, metadata !390, metadata !DIExpression()), !dbg !400
  %35 = add nsw i64 %20, -1, !dbg !419
  call void @llvm.dbg.value(metadata i64 %35, metadata !388, metadata !DIExpression()), !dbg !400
  %36 = icmp ugt i64 %20, 1, !dbg !420
  br i1 %36, label %19, label %37, !dbg !407, !llvm.loop !421

37:                                               ; preds = %19
  call void @llvm.dbg.value(metadata double %28, metadata !398, metadata !DIExpression()), !dbg !423
  %38 = fmul double %17, %28, !dbg !424
  %39 = fsub double %38, %21, !dbg !425
  %40 = fadd double %39, 0x3FE7AED852FDCAE3, !dbg !426
  call void @llvm.dbg.value(metadata double %40, metadata !389, metadata !DIExpression()), !dbg !400
  %41 = tail call double @llvm.fabs.f64(double %38), !dbg !427
  %42 = tail call double @llvm.fabs.f64(double %21), !dbg !428
  %43 = fadd double %42, %41, !dbg !429
  %44 = fadd double %43, 0x3FE7AED852FDCAE3, !dbg !430
  %45 = fadd double %34, %44, !dbg !431
  call void @llvm.dbg.value(metadata double %45, metadata !393, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %40, metadata !358, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !432
  %46 = fmul double %45, 0x3CB0000000000000, !dbg !433
  %47 = fadd double %46, 0x3BC082B84F83B91C, !dbg !434
  call void @llvm.dbg.value(metadata double %47, metadata !358, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !432
  %48 = fadd double %0, -1.000000e+00, !dbg !435
  %49 = fdiv double %40, %48, !dbg !436
  store double %49, ptr %1, align 8, !dbg !437, !tbaa !201
  %50 = tail call double @llvm.fabs.f64(double %48), !dbg !438
  %51 = fdiv double %47, %50, !dbg !439
  %52 = tail call double @llvm.fabs.f64(double %49), !dbg !440
  %53 = fmul double %52, 0x3CB0000000000000, !dbg !441
  %54 = fadd double %53, %51, !dbg !442
  br label %117

55:                                               ; preds = %9
  %56 = fcmp ugt double %0, 2.000000e+01, !dbg !443
  br i1 %56, label %101, label %57, !dbg !444

57:                                               ; preds = %55
  %58 = fmul double %0, 2.000000e+00, !dbg !445
  %59 = fadd double %58, -2.100000e+01, !dbg !446
  %60 = fdiv double %59, 1.900000e+01, !dbg !447
  call void @llvm.dbg.value(metadata double %60, metadata !361, metadata !DIExpression()), !dbg !448
  call void @llvm.dbg.value(metadata !377, metadata !378, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %60, metadata !386, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr undef, metadata !387, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !389, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !390, metadata !DIExpression()), !dbg !449
  %61 = fmul double %60, 2.000000e+00, !dbg !451
  %62 = fadd double %61, 1.000000e+00, !dbg !452
  %63 = fadd double %62, -1.000000e+00, !dbg !453
  %64 = fmul double %63, 5.000000e-01, !dbg !454
  call void @llvm.dbg.value(metadata double %64, metadata !391, metadata !DIExpression()), !dbg !449
  %65 = fmul double %64, 2.000000e+00, !dbg !455
  call void @llvm.dbg.value(metadata double %65, metadata !392, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !393, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata i32 29, metadata !388, metadata !DIExpression()), !dbg !449
  br label %66, !dbg !456

66:                                               ; preds = %66, %57
  %67 = phi i64 [ 29, %57 ], [ %82, %66 ]
  %68 = phi double [ 0.000000e+00, %57 ], [ %75, %66 ]
  %69 = phi double [ 0.000000e+00, %57 ], [ %81, %66 ]
  %70 = phi double [ 0.000000e+00, %57 ], [ %68, %66 ]
  call void @llvm.dbg.value(metadata i64 %67, metadata !388, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %68, metadata !389, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %69, metadata !393, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %70, metadata !390, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %68, metadata !394, metadata !DIExpression()), !dbg !457
  %71 = fmul double %65, %68, !dbg !458
  %72 = fsub double %71, %70, !dbg !459
  %73 = getelementptr inbounds double, ptr @zeta_xgt1_data, i64 %67, !dbg !460
  %74 = load double, ptr %73, align 8, !dbg !460, !tbaa !276
  %75 = fadd double %72, %74, !dbg !461
  call void @llvm.dbg.value(metadata double %75, metadata !389, metadata !DIExpression()), !dbg !449
  %76 = tail call double @llvm.fabs.f64(double %71), !dbg !462
  %77 = tail call double @llvm.fabs.f64(double %70), !dbg !463
  %78 = fadd double %76, %77, !dbg !464
  %79 = tail call double @llvm.fabs.f64(double %74), !dbg !465
  %80 = fadd double %78, %79, !dbg !466
  %81 = fadd double %69, %80, !dbg !467
  call void @llvm.dbg.value(metadata double %81, metadata !393, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %68, metadata !390, metadata !DIExpression()), !dbg !449
  %82 = add nsw i64 %67, -1, !dbg !468
  call void @llvm.dbg.value(metadata i64 %82, metadata !388, metadata !DIExpression()), !dbg !449
  %83 = icmp ugt i64 %67, 1, !dbg !469
  br i1 %83, label %66, label %84, !dbg !456, !llvm.loop !470

84:                                               ; preds = %66
  call void @llvm.dbg.value(metadata double %75, metadata !398, metadata !DIExpression()), !dbg !472
  %85 = fmul double %64, %75, !dbg !473
  %86 = fsub double %85, %68, !dbg !474
  %87 = fadd double %86, 0x40236450627983A1, !dbg !475
  call void @llvm.dbg.value(metadata double %87, metadata !389, metadata !DIExpression()), !dbg !449
  %88 = tail call double @llvm.fabs.f64(double %85), !dbg !476
  %89 = tail call double @llvm.fabs.f64(double %68), !dbg !477
  %90 = fadd double %89, %88, !dbg !478
  %91 = fadd double %90, 0x40236450627983A1, !dbg !479
  %92 = fadd double %81, %91, !dbg !480
  call void @llvm.dbg.value(metadata double %92, metadata !393, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata double %87, metadata !364, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !448
  %93 = fmul double %92, 0x3CB0000000000000, !dbg !481
  %94 = fadd double %93, 0x3C969E53D45F55DC, !dbg !482
  call void @llvm.dbg.value(metadata double %94, metadata !364, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !448
  %95 = fadd double %0, -1.000000e+00, !dbg !483
  %96 = fdiv double %87, %95, !dbg !484
  store double %96, ptr %1, align 8, !dbg !485, !tbaa !201
  %97 = fdiv double %94, %95, !dbg !486
  %98 = tail call double @llvm.fabs.f64(double %96), !dbg !487
  %99 = fmul double %98, 0x3CB0000000000000, !dbg !488
  %100 = fadd double %99, %97, !dbg !489
  br label %117

101:                                              ; preds = %55
  %102 = fneg double %0, !dbg !490
  %103 = tail call double @exp2(double %102) #7, !dbg !491
  %104 = fsub double 1.000000e+00, %103, !dbg !492
  call void @llvm.dbg.value(metadata double %104, metadata !365, metadata !DIExpression()), !dbg !493
  %105 = tail call double @pow(double noundef 3.000000e+00, double noundef %102) #7, !dbg !494
  %106 = fsub double 1.000000e+00, %105, !dbg !495
  call void @llvm.dbg.value(metadata double %106, metadata !367, metadata !DIExpression()), !dbg !493
  %107 = tail call double @pow(double noundef 5.000000e+00, double noundef %102) #7, !dbg !496
  %108 = fsub double 1.000000e+00, %107, !dbg !497
  call void @llvm.dbg.value(metadata double %108, metadata !368, metadata !DIExpression()), !dbg !493
  %109 = tail call double @pow(double noundef 7.000000e+00, double noundef %102) #7, !dbg !498
  %110 = fsub double 1.000000e+00, %109, !dbg !499
  call void @llvm.dbg.value(metadata double %110, metadata !369, metadata !DIExpression()), !dbg !493
  %111 = fmul double %104, %106, !dbg !500
  %112 = fmul double %111, %108, !dbg !501
  %113 = fmul double %112, %110, !dbg !502
  %114 = fdiv double 1.000000e+00, %113, !dbg !503
  store double %114, ptr %1, align 8, !dbg !504, !tbaa !201
  %115 = tail call double @llvm.fabs.f64(double %114), !dbg !505
  %116 = fmul double %115, 0x3CC8000000000000, !dbg !506
  br label %117

117:                                              ; preds = %37, %84, %101
  %118 = phi double [ %116, %101 ], [ %100, %84 ], [ %54, %37 ]
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !507
  store double %118, ptr %119, align 8, !dbg !507, !tbaa !206
  br label %233, !dbg !508

120:                                              ; preds = %7
  call void @llvm.dbg.value(metadata double %0, metadata !509, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata ptr undef, metadata !512, metadata !DIExpression()), !dbg !522
  %121 = fcmp ogt double %0, -1.900000e+01, !dbg !524
  br i1 %121, label %122, label %166, !dbg !525

122:                                              ; preds = %120
  %123 = fmul double %0, 2.000000e+00, !dbg !526
  %124 = fsub double -1.900000e+01, %123, !dbg !527
  %125 = fdiv double %124, 1.900000e+01, !dbg !528
  call void @llvm.dbg.value(metadata double %125, metadata !513, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata !377, metadata !378, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double %125, metadata !386, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata ptr undef, metadata !387, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !389, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !390, metadata !DIExpression()), !dbg !530
  %126 = fmul double %125, 2.000000e+00, !dbg !532
  %127 = fadd double %126, 1.000000e+00, !dbg !533
  %128 = fadd double %127, -1.000000e+00, !dbg !534
  %129 = fmul double %128, 5.000000e-01, !dbg !535
  call void @llvm.dbg.value(metadata double %129, metadata !391, metadata !DIExpression()), !dbg !530
  %130 = fmul double %129, 2.000000e+00, !dbg !536
  call void @llvm.dbg.value(metadata double %130, metadata !392, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !393, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata i32 29, metadata !388, metadata !DIExpression()), !dbg !530
  br label %131, !dbg !537

131:                                              ; preds = %131, %122
  %132 = phi i64 [ 29, %122 ], [ %147, %131 ]
  %133 = phi double [ 0.000000e+00, %122 ], [ %140, %131 ]
  %134 = phi double [ 0.000000e+00, %122 ], [ %146, %131 ]
  %135 = phi double [ 0.000000e+00, %122 ], [ %133, %131 ]
  call void @llvm.dbg.value(metadata i64 %132, metadata !388, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double %133, metadata !389, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double %134, metadata !393, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double %135, metadata !390, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double %133, metadata !394, metadata !DIExpression()), !dbg !538
  %136 = fmul double %130, %133, !dbg !539
  %137 = fsub double %136, %135, !dbg !540
  %138 = getelementptr inbounds double, ptr @zeta_xgt1_data, i64 %132, !dbg !541
  %139 = load double, ptr %138, align 8, !dbg !541, !tbaa !276
  %140 = fadd double %137, %139, !dbg !542
  call void @llvm.dbg.value(metadata double %140, metadata !389, metadata !DIExpression()), !dbg !530
  %141 = tail call double @llvm.fabs.f64(double %136), !dbg !543
  %142 = tail call double @llvm.fabs.f64(double %135), !dbg !544
  %143 = fadd double %141, %142, !dbg !545
  %144 = tail call double @llvm.fabs.f64(double %139), !dbg !546
  %145 = fadd double %143, %144, !dbg !547
  %146 = fadd double %134, %145, !dbg !548
  call void @llvm.dbg.value(metadata double %146, metadata !393, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double %133, metadata !390, metadata !DIExpression()), !dbg !530
  %147 = add nsw i64 %132, -1, !dbg !549
  call void @llvm.dbg.value(metadata i64 %147, metadata !388, metadata !DIExpression()), !dbg !530
  %148 = icmp ugt i64 %132, 1, !dbg !550
  br i1 %148, label %131, label %149, !dbg !537, !llvm.loop !551

149:                                              ; preds = %131
  call void @llvm.dbg.value(metadata double %140, metadata !398, metadata !DIExpression()), !dbg !553
  %150 = fmul double %129, %140, !dbg !554
  %151 = fsub double %150, %133, !dbg !555
  %152 = fadd double %151, 0x40236450627983A1, !dbg !556
  call void @llvm.dbg.value(metadata double %152, metadata !389, metadata !DIExpression()), !dbg !530
  %153 = tail call double @llvm.fabs.f64(double %150), !dbg !557
  %154 = tail call double @llvm.fabs.f64(double %133), !dbg !558
  %155 = fadd double %154, %153, !dbg !559
  %156 = fadd double %155, 0x40236450627983A1, !dbg !560
  %157 = fadd double %146, %156, !dbg !561
  call void @llvm.dbg.value(metadata double %157, metadata !393, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.value(metadata double %152, metadata !516, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !529
  %158 = fmul double %157, 0x3CB0000000000000, !dbg !562
  %159 = fadd double %158, 0x3C969E53D45F55DC, !dbg !563
  call void @llvm.dbg.value(metadata double %159, metadata !516, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !529
  %160 = fneg double %0, !dbg !564
  %161 = fdiv double %152, %160, !dbg !565
  tail call void @llvm.dbg.value(metadata double %161, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !566
  %162 = tail call double @llvm.fabs.f64(double %161), !dbg !567
  %163 = fmul double %162, 0x3CB0000000000000, !dbg !568
  %164 = fdiv double %159, %0, !dbg !569
  %165 = fsub double %163, %164, !dbg !569
  br label %183

166:                                              ; preds = %120
  %167 = fsub double 1.000000e+00, %0, !dbg !570
  %168 = fneg double %167, !dbg !571
  %169 = tail call double @exp2(double %168) #7, !dbg !572
  %170 = fsub double 1.000000e+00, %169, !dbg !573
  call void @llvm.dbg.value(metadata double %170, metadata !517, metadata !DIExpression()), !dbg !574
  %171 = tail call double @pow(double noundef 3.000000e+00, double noundef %168) #7, !dbg !575
  %172 = fsub double 1.000000e+00, %171, !dbg !576
  call void @llvm.dbg.value(metadata double %172, metadata !519, metadata !DIExpression()), !dbg !574
  %173 = tail call double @pow(double noundef 5.000000e+00, double noundef %168) #7, !dbg !577
  %174 = fsub double 1.000000e+00, %173, !dbg !578
  call void @llvm.dbg.value(metadata double %174, metadata !520, metadata !DIExpression()), !dbg !574
  %175 = tail call double @pow(double noundef 7.000000e+00, double noundef %168) #7, !dbg !579
  %176 = fsub double 1.000000e+00, %175, !dbg !580
  call void @llvm.dbg.value(metadata double %176, metadata !521, metadata !DIExpression()), !dbg !574
  %177 = fmul double %170, %172, !dbg !581
  %178 = fmul double %177, %174, !dbg !582
  %179 = fmul double %178, %176, !dbg !583
  %180 = fdiv double 1.000000e+00, %179, !dbg !584
  tail call void @llvm.dbg.value(metadata double %180, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !566
  %181 = tail call double @llvm.fabs.f64(double %180), !dbg !585
  %182 = fmul double %181, 0x3CC8000000000000, !dbg !586
  br label %183

183:                                              ; preds = %149, %166
  %184 = phi double [ %161, %149 ], [ %180, %166 ], !dbg !587
  %185 = phi double [ %165, %149 ], [ %182, %166 ]
  tail call void @llvm.dbg.value(metadata double %184, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !566
  tail call void @llvm.dbg.value(metadata double %185, metadata !322, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !566
  tail call void @llvm.dbg.value(metadata i32 0, metadata !326, metadata !DIExpression()), !dbg !566
  %186 = tail call double @fmod(double noundef %0, double noundef 2.000000e+00) #7, !dbg !588
  %187 = fcmp oeq double %186, 0.000000e+00, !dbg !589
  br i1 %187, label %194, label %188, !dbg !590

188:                                              ; preds = %183
  %189 = tail call double @fmod(double noundef %0, double noundef 4.000000e+00) #7, !dbg !591
  %190 = fmul double %189, 0x3FF921FB54442D18, !dbg !592
  %191 = tail call double @sin(double noundef %190) #7, !dbg !593
  %192 = fdiv double %191, 0x400921FB54442D18, !dbg !594
  tail call void @llvm.dbg.value(metadata double %192, metadata !327, metadata !DIExpression()), !dbg !566
  %193 = fcmp oeq double %192, 0.000000e+00, !dbg !595
  br i1 %193, label %194, label %195, !dbg !596

194:                                              ; preds = %183, %188
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !597
  br label %233, !dbg !599

195:                                              ; preds = %188
  %196 = fcmp ogt double %0, -1.700000e+02, !dbg !600
  br i1 %196, label %197, label %231, !dbg !601

197:                                              ; preds = %195
  call void @llvm.dbg.assign(metadata i1 undef, metadata !328, metadata !DIExpression(), metadata !602, metadata ptr @__const.gsl_sf_zeta_e.twopi_pow, metadata !DIExpression()), !dbg !341
  %198 = fdiv double %0, -1.000000e+01, !dbg !603
  %199 = tail call double @llvm.floor.f64(double %198), !dbg !604
  %200 = fptosi double %199 to i32, !dbg !604
  tail call void @llvm.dbg.value(metadata i32 %200, metadata !335, metadata !DIExpression()), !dbg !341
  %201 = sitofp i32 %200 to double, !dbg !605
  %202 = fmul double %201, 1.000000e+01, !dbg !606
  %203 = fadd double %202, %0, !dbg !607
  tail call void @llvm.dbg.value(metadata double %203, metadata !336, metadata !DIExpression()), !dbg !341
  %204 = tail call double @pow(double noundef 0x401921FB54442D18, double noundef %203) #7, !dbg !608
  %205 = sext i32 %200 to i64, !dbg !609
  %206 = getelementptr inbounds [18 x double], ptr @__const.gsl_sf_zeta_e.twopi_pow, i64 0, i64 %205, !dbg !609
  %207 = load double, ptr %206, align 8, !dbg !609, !tbaa !276
  %208 = fdiv double %204, %207, !dbg !610
  tail call void @llvm.dbg.value(metadata double %208, metadata !337, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !611
  %209 = fsub double 1.000000e+00, %0, !dbg !612
  %210 = call i32 @gsl_sf_gamma_e(double noundef %209, ptr noundef nonnull %3) #7, !dbg !613
  tail call void @llvm.dbg.value(metadata i32 %210, metadata !339, metadata !DIExpression()), !dbg !341
  %211 = load double, ptr %3, align 8, !dbg !614, !tbaa !201
  %212 = fmul double %208, %211, !dbg !615
  %213 = fmul double %192, %212, !dbg !616
  %214 = fmul double %184, %213, !dbg !617
  store double %214, ptr %1, align 8, !dbg !618, !tbaa !201
  %215 = call double @llvm.fabs.f64(double %213), !dbg !619
  %216 = fmul double %185, %215, !dbg !620
  %217 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !621
  %218 = fmul double %192, %208, !dbg !622
  %219 = fmul double %184, %218, !dbg !623
  %220 = call double @llvm.fabs.f64(double %219), !dbg !624
  %221 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !625
  %222 = load double, ptr %221, align 8, !dbg !625, !tbaa !206
  %223 = fmul double %220, %222, !dbg !626
  %224 = fadd double %216, %223, !dbg !627
  %225 = call double @llvm.fabs.f64(double %0), !dbg !628
  %226 = fadd double %225, 2.000000e+00, !dbg !629
  %227 = fmul double %226, 0x3CB0000000000000, !dbg !630
  %228 = call double @llvm.fabs.f64(double %214), !dbg !631
  %229 = fmul double %227, %228, !dbg !632
  %230 = fadd double %224, %229, !dbg !633
  store double %230, ptr %217, align 8, !dbg !633, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !634
  br label %233

231:                                              ; preds = %195
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !635, !tbaa !201
  %232 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !635
  store double 0x7FF0000000000000, ptr %232, align 8, !dbg !635, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 847, i32 noundef 16) #7, !dbg !638
  br label %233, !dbg !638

233:                                              ; preds = %194, %197, %231, %5, %117
  %234 = phi i32 [ 1, %5 ], [ 0, %117 ], [ 0, %194 ], [ %210, %197 ], [ 16, %231 ], !dbg !640
  ret i32 %234, !dbg !641
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !642 double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !643 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare !dbg !644 i32 @gsl_sf_gamma_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_zeta_int_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !646 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !650, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !651, metadata !DIExpression()), !dbg !652
  %3 = icmp slt i32 %0, 0, !dbg !653
  br i1 %3, label %4, label %22, !dbg !655

4:                                                ; preds = %2
  %5 = and i32 %0, 1, !dbg !656
  %6 = icmp eq i32 %5, 0, !dbg !656
  br i1 %6, label %7, label %8, !dbg !659

7:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !660
  br label %38, !dbg !662

8:                                                ; preds = %4
  %9 = icmp ugt i32 %0, -99, !dbg !663
  br i1 %9, label %10, label %19, !dbg !665

10:                                               ; preds = %8
  %11 = xor i32 %0, -1, !dbg !666
  %12 = lshr exact i32 %11, 1
  %13 = zext nneg i32 %12 to i64, !dbg !668
  %14 = getelementptr inbounds [50 x double], ptr @zeta_neg_int_table, i64 0, i64 %13, !dbg !668
  %15 = load double, ptr %14, align 8, !dbg !668, !tbaa !276
  store double %15, ptr %1, align 8, !dbg !669, !tbaa !201
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !670
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !671
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !672
  store double %17, ptr %18, align 8, !dbg !673, !tbaa !206
  br label %38, !dbg !674

19:                                               ; preds = %8
  %20 = sitofp i32 %0 to double, !dbg !675
  %21 = tail call i32 @gsl_sf_zeta_e(double noundef %20, ptr noundef %1), !dbg !677
  br label %38, !dbg !678

22:                                               ; preds = %2
  %23 = icmp eq i32 %0, 1, !dbg !679
  br i1 %23, label %24, label %26, !dbg !681

24:                                               ; preds = %22
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !682, !tbaa !201
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !682
  store double 0x7FF8000000000000, ptr %25, align 8, !dbg !682, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 873, i32 noundef 1) #7, !dbg !685
  br label %38, !dbg !685

26:                                               ; preds = %22
  %27 = icmp ult i32 %0, 101, !dbg !687
  br i1 %27, label %28, label %36, !dbg !689

28:                                               ; preds = %26
  %29 = zext nneg i32 %0 to i64
  %30 = getelementptr inbounds [101 x double], ptr @zetam1_pos_int_table, i64 0, i64 %29, !dbg !690
  %31 = load double, ptr %30, align 8, !dbg !690, !tbaa !276
  %32 = fadd double %31, 1.000000e+00, !dbg !692
  store double %32, ptr %1, align 8, !dbg !693, !tbaa !201
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !694
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !695
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !696
  store double %34, ptr %35, align 8, !dbg !697, !tbaa !206
  br label %38, !dbg !698

36:                                               ; preds = %26
  store double 1.000000e+00, ptr %1, align 8, !dbg !699, !tbaa !201
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !701
  store double 0x3CB0000000000000, ptr %37, align 8, !dbg !702, !tbaa !206
  br label %38, !dbg !703

38:                                               ; preds = %7, %10, %19, %24, %28, %36
  %39 = phi i32 [ 0, %10 ], [ %21, %19 ], [ 0, %7 ], [ 1, %24 ], [ 0, %28 ], [ 0, %36 ], !dbg !704
  ret i32 %39, !dbg !705
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_zetam1_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !706 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !708, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !709, metadata !DIExpression()), !dbg !713
  %3 = fcmp ugt double %0, 5.000000e+00, !dbg !714
  br i1 %3, label %8, label %4, !dbg !715

4:                                                ; preds = %2
  %5 = tail call i32 @gsl_sf_zeta_e(double noundef %0, ptr noundef %1), !dbg !716
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !710, metadata !DIExpression()), !dbg !717
  %6 = load double, ptr %1, align 8, !dbg !718, !tbaa !201
  %7 = fadd double %6, -1.000000e+00, !dbg !719
  store double %7, ptr %1, align 8, !dbg !720, !tbaa !201
  br label %106

8:                                                ; preds = %2
  %9 = fcmp olt double %0, 1.500000e+01, !dbg !721
  br i1 %9, label %10, label %54, !dbg !723

10:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %0, metadata !724, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata ptr %1, metadata !727, metadata !DIExpression()), !dbg !730
  %11 = fadd double %0, -1.000000e+01, !dbg !733
  %12 = fdiv double %11, 5.000000e+00, !dbg !734
  call void @llvm.dbg.value(metadata double %12, metadata !728, metadata !DIExpression()), !dbg !730
  call void @llvm.dbg.value(metadata !377, metadata !378, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double %12, metadata !386, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata ptr undef, metadata !387, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !389, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !390, metadata !DIExpression()), !dbg !735
  %13 = fmul double %12, 2.000000e+00, !dbg !737
  %14 = fadd double %13, 1.000000e+00, !dbg !738
  %15 = fadd double %14, -1.000000e+00, !dbg !739
  %16 = fmul double %15, 5.000000e-01, !dbg !740
  call void @llvm.dbg.value(metadata double %16, metadata !391, metadata !DIExpression()), !dbg !735
  %17 = fmul double %16, 2.000000e+00, !dbg !741
  call void @llvm.dbg.value(metadata double %17, metadata !392, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !393, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i32 22, metadata !388, metadata !DIExpression()), !dbg !735
  br label %18, !dbg !742

18:                                               ; preds = %18, %10
  %19 = phi i64 [ 22, %10 ], [ %34, %18 ]
  %20 = phi double [ 0.000000e+00, %10 ], [ %27, %18 ]
  %21 = phi double [ 0.000000e+00, %10 ], [ %33, %18 ]
  %22 = phi double [ 0.000000e+00, %10 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !388, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double %20, metadata !389, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double %21, metadata !393, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double %22, metadata !390, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double %20, metadata !394, metadata !DIExpression()), !dbg !743
  %23 = fmul double %17, %20, !dbg !744
  %24 = fsub double %23, %22, !dbg !745
  %25 = getelementptr inbounds double, ptr @zetam1_inter_data, i64 %19, !dbg !746
  %26 = load double, ptr %25, align 8, !dbg !746, !tbaa !276
  %27 = fadd double %24, %26, !dbg !747
  call void @llvm.dbg.value(metadata double %27, metadata !389, metadata !DIExpression()), !dbg !735
  %28 = tail call double @llvm.fabs.f64(double %23), !dbg !748
  %29 = tail call double @llvm.fabs.f64(double %22), !dbg !749
  %30 = fadd double %28, %29, !dbg !750
  %31 = tail call double @llvm.fabs.f64(double %26), !dbg !751
  %32 = fadd double %30, %31, !dbg !752
  %33 = fadd double %21, %32, !dbg !753
  call void @llvm.dbg.value(metadata double %33, metadata !393, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double %20, metadata !390, metadata !DIExpression()), !dbg !735
  %34 = add nsw i64 %19, -1, !dbg !754
  call void @llvm.dbg.value(metadata i64 %34, metadata !388, metadata !DIExpression()), !dbg !735
  %35 = icmp ugt i64 %19, 1, !dbg !755
  br i1 %35, label %18, label %36, !dbg !742, !llvm.loop !756

36:                                               ; preds = %18
  call void @llvm.dbg.value(metadata double %27, metadata !398, metadata !DIExpression()), !dbg !758
  %37 = fmul double %16, %27, !dbg !759
  %38 = fsub double %37, %20, !dbg !760
  %39 = fadd double %38, 0xC025C03DD66624A5, !dbg !761
  call void @llvm.dbg.value(metadata double %39, metadata !389, metadata !DIExpression()), !dbg !735
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !762
  %41 = tail call double @llvm.fabs.f64(double %20), !dbg !763
  %42 = fadd double %41, %40, !dbg !764
  %43 = fadd double %42, 0x4025C03DD66624A5, !dbg !765
  %44 = fadd double %33, %43, !dbg !766
  call void @llvm.dbg.value(metadata double %44, metadata !393, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata double %39, metadata !729, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !730
  %45 = fmul double %44, 0x3CB0000000000000, !dbg !767
  %46 = fadd double %45, 0x3D596C415674B2A9, !dbg !768
  call void @llvm.dbg.value(metadata double %46, metadata !729, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !730
  %47 = tail call double @exp(double noundef %39) #7, !dbg !769
  %48 = fneg double %0, !dbg !770
  %49 = tail call double @exp2(double %48) #7, !dbg !771
  %50 = fadd double %47, %49, !dbg !772
  store double %50, ptr %1, align 8, !dbg !773, !tbaa !201
  %51 = fadd double %46, 0x3CC0000000000000, !dbg !774
  %52 = fmul double %50, %51, !dbg !775
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !776
  store double %52, ptr %53, align 8, !dbg !777, !tbaa !206
  br label %106, !dbg !778

54:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %0, metadata !779, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata ptr %1, metadata !782, metadata !DIExpression()), !dbg !793
  %55 = fneg double %0, !dbg !796
  %56 = tail call double @exp2(double %55) #7, !dbg !797
  call void @llvm.dbg.value(metadata double %56, metadata !783, metadata !DIExpression()), !dbg !793
  %57 = tail call double @pow(double noundef 3.000000e+00, double noundef %55) #7, !dbg !798
  call void @llvm.dbg.value(metadata double %57, metadata !784, metadata !DIExpression()), !dbg !793
  %58 = tail call double @pow(double noundef 5.000000e+00, double noundef %55) #7, !dbg !799
  call void @llvm.dbg.value(metadata double %58, metadata !785, metadata !DIExpression()), !dbg !793
  %59 = tail call double @pow(double noundef 7.000000e+00, double noundef %55) #7, !dbg !800
  call void @llvm.dbg.value(metadata double %59, metadata !786, metadata !DIExpression()), !dbg !793
  %60 = tail call double @pow(double noundef 1.100000e+01, double noundef %55) #7, !dbg !801
  call void @llvm.dbg.value(metadata double %60, metadata !787, metadata !DIExpression()), !dbg !793
  %61 = tail call double @pow(double noundef 1.300000e+01, double noundef %55) #7, !dbg !802
  call void @llvm.dbg.value(metadata double %61, metadata !788, metadata !DIExpression()), !dbg !793
  %62 = fadd double %56, %57, !dbg !803
  %63 = fadd double %62, %58, !dbg !804
  %64 = fadd double %63, %59, !dbg !805
  %65 = fadd double %64, %60, !dbg !806
  %66 = fadd double %65, %61, !dbg !807
  call void @llvm.dbg.value(metadata double %66, metadata !789, metadata !DIExpression()), !dbg !793
  %67 = fadd double %57, %58, !dbg !808
  %68 = fadd double %67, %59, !dbg !809
  %69 = fadd double %68, %60, !dbg !810
  %70 = fadd double %69, %61, !dbg !811
  %71 = fmul double %56, %70, !dbg !812
  %72 = fadd double %58, %59, !dbg !813
  %73 = fadd double %72, %60, !dbg !814
  %74 = fadd double %73, %61, !dbg !815
  %75 = fmul double %57, %74, !dbg !816
  %76 = fadd double %71, %75, !dbg !817
  %77 = fadd double %59, %60, !dbg !818
  %78 = fadd double %77, %61, !dbg !819
  %79 = fmul double %58, %78, !dbg !820
  %80 = fadd double %79, %76, !dbg !821
  %81 = fadd double %60, %61, !dbg !822
  %82 = fmul double %59, %81, !dbg !823
  %83 = fadd double %82, %80, !dbg !824
  %84 = fmul double %60, %61, !dbg !825
  %85 = fadd double %84, %83, !dbg !826
  call void @llvm.dbg.value(metadata double %85, metadata !790, metadata !DIExpression()), !dbg !793
  %86 = fsub double %66, %85, !dbg !827
  call void @llvm.dbg.value(metadata double %86, metadata !791, metadata !DIExpression()), !dbg !793
  %87 = fsub double 1.000000e+00, %56, !dbg !828
  %88 = fsub double 1.000000e+00, %57, !dbg !829
  %89 = fmul double %87, %88, !dbg !830
  %90 = fsub double 1.000000e+00, %58, !dbg !831
  %91 = fmul double %89, %90, !dbg !832
  %92 = fsub double 1.000000e+00, %59, !dbg !833
  %93 = fmul double %91, %92, !dbg !834
  %94 = fsub double 1.000000e+00, %60, !dbg !835
  %95 = fmul double %93, %94, !dbg !836
  %96 = fsub double 1.000000e+00, %61, !dbg !837
  %97 = fmul double %95, %96, !dbg !838
  %98 = fdiv double 1.000000e+00, %97, !dbg !839
  call void @llvm.dbg.value(metadata double %98, metadata !792, metadata !DIExpression()), !dbg !793
  %99 = fmul double %98, %86, !dbg !840
  store double %99, ptr %1, align 8, !dbg !841, !tbaa !201
  %100 = fdiv double 1.500000e+01, %0, !dbg !842
  %101 = fadd double %100, 1.000000e+00, !dbg !843
  %102 = fmul double %101, 6.000000e+00, !dbg !844
  %103 = fmul double %102, 0x3CB0000000000000, !dbg !845
  %104 = fmul double %103, %99, !dbg !846
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !847
  store double %104, ptr %105, align 8, !dbg !848, !tbaa !206
  br label %106, !dbg !849

106:                                              ; preds = %54, %36, %4
  %107 = phi i32 [ %5, %4 ], [ 0, %36 ], [ 0, %54 ], !dbg !850
  ret i32 %107, !dbg !851
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_zetam1_int_e(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !852 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !854, metadata !DIExpression()), !dbg !856
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !855, metadata !DIExpression()), !dbg !856
  %3 = icmp slt i32 %0, 0, !dbg !857
  br i1 %3, label %4, label %24, !dbg !859

4:                                                ; preds = %2
  %5 = and i32 %0, 1, !dbg !860
  %6 = icmp eq i32 %5, 0, !dbg !860
  br i1 %6, label %7, label %9, !dbg !863

7:                                                ; preds = %4
  store double -1.000000e+00, ptr %1, align 8, !dbg !864, !tbaa !201
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !866
  store double 0.000000e+00, ptr %8, align 8, !dbg !867, !tbaa !206
  br label %40, !dbg !868

9:                                                ; preds = %4
  %10 = icmp ugt i32 %0, -99, !dbg !869
  br i1 %10, label %11, label %21, !dbg !871

11:                                               ; preds = %9
  %12 = xor i32 %0, -1, !dbg !872
  %13 = lshr exact i32 %12, 1
  %14 = zext nneg i32 %13 to i64, !dbg !874
  %15 = getelementptr inbounds [50 x double], ptr @zeta_neg_int_table, i64 0, i64 %14, !dbg !874
  %16 = load double, ptr %15, align 8, !dbg !874, !tbaa !276
  %17 = fadd double %16, -1.000000e+00, !dbg !875
  store double %17, ptr %1, align 8, !dbg !876, !tbaa !201
  %18 = tail call double @llvm.fabs.f64(double %17), !dbg !877
  %19 = fmul double %18, 0x3CC0000000000000, !dbg !878
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !879
  store double %19, ptr %20, align 8, !dbg !880, !tbaa !206
  br label %40, !dbg !881

21:                                               ; preds = %9
  %22 = sitofp i32 %0 to double, !dbg !882
  %23 = tail call i32 @gsl_sf_zeta_e(double noundef %22, ptr noundef %1), !dbg !884
  br label %40, !dbg !885

24:                                               ; preds = %2
  %25 = icmp eq i32 %0, 1, !dbg !886
  br i1 %25, label %26, label %28, !dbg !888

26:                                               ; preds = %24
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !889, !tbaa !201
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !889
  store double 0x7FF8000000000000, ptr %27, align 8, !dbg !889, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 927, i32 noundef 1) #7, !dbg !892
  br label %40, !dbg !892

28:                                               ; preds = %24
  %29 = icmp ult i32 %0, 101, !dbg !894
  br i1 %29, label %30, label %37, !dbg !896

30:                                               ; preds = %28
  %31 = zext nneg i32 %0 to i64
  %32 = getelementptr inbounds [101 x double], ptr @zetam1_pos_int_table, i64 0, i64 %31, !dbg !897
  %33 = load double, ptr %32, align 8, !dbg !897, !tbaa !276
  store double %33, ptr %1, align 8, !dbg !899, !tbaa !201
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !900
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !901
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !902
  store double %35, ptr %36, align 8, !dbg !903, !tbaa !206
  br label %40, !dbg !904

37:                                               ; preds = %28
  %38 = sitofp i32 %0 to double, !dbg !905
  %39 = tail call i32 @gsl_sf_zetam1_e(double noundef %38, ptr noundef %1), !dbg !907
  br label %40, !dbg !908

40:                                               ; preds = %7, %11, %21, %26, %30, %37
  %41 = phi i32 [ 0, %11 ], [ %23, %21 ], [ 0, %7 ], [ 1, %26 ], [ 0, %30 ], [ %39, %37 ], !dbg !909
  ret i32 %41, !dbg !910
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_eta_int_e(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !911 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !928
  call void @llvm.dbg.assign(metadata i1 undef, metadata !917, metadata !DIExpression(), metadata !928, metadata ptr %3, metadata !DIExpression()), !dbg !929
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !930
  call void @llvm.dbg.assign(metadata i1 undef, metadata !924, metadata !DIExpression(), metadata !930, metadata ptr %4, metadata !DIExpression()), !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !915, metadata !DIExpression()), !dbg !931
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !916, metadata !DIExpression()), !dbg !931
  %5 = icmp sgt i32 %0, 100, !dbg !932
  br i1 %5, label %6, label %8, !dbg !933

6:                                                ; preds = %2
  store double 1.000000e+00, ptr %1, align 8, !dbg !934, !tbaa !201
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !936
  store double 0x3CB0000000000000, ptr %7, align 8, !dbg !937, !tbaa !206
  br label %62, !dbg !938

8:                                                ; preds = %2
  %9 = icmp sgt i32 %0, -1, !dbg !939
  br i1 %9, label %10, label %17, !dbg !940

10:                                               ; preds = %8
  %11 = zext nneg i32 %0 to i64
  %12 = getelementptr inbounds [101 x double], ptr @eta_pos_int_table, i64 0, i64 %11, !dbg !941
  %13 = load double, ptr %12, align 8, !dbg !941, !tbaa !276
  store double %13, ptr %1, align 8, !dbg !943, !tbaa !201
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !944
  %15 = fmul double %14, 0x3CC0000000000000, !dbg !945
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !946
  store double %15, ptr %16, align 8, !dbg !947, !tbaa !206
  br label %62, !dbg !948

17:                                               ; preds = %8
  %18 = and i32 %0, 1, !dbg !949
  %19 = icmp eq i32 %18, 0, !dbg !949
  br i1 %19, label %20, label %21, !dbg !950

20:                                               ; preds = %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !951
  br label %62, !dbg !953

21:                                               ; preds = %17
  %22 = icmp ugt i32 %0, -99, !dbg !954
  br i1 %22, label %23, label %32, !dbg !955

23:                                               ; preds = %21
  %24 = xor i32 %0, -1, !dbg !956
  %25 = lshr exact i32 %24, 1
  %26 = zext nneg i32 %25 to i64, !dbg !958
  %27 = getelementptr inbounds [50 x double], ptr @eta_neg_int_table, i64 0, i64 %26, !dbg !958
  %28 = load double, ptr %27, align 8, !dbg !958, !tbaa !276
  store double %28, ptr %1, align 8, !dbg !959, !tbaa !201
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !960
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !961
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !962
  store double %30, ptr %31, align 8, !dbg !963, !tbaa !206
  br label %62, !dbg !964

32:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !965
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !966
  call void @llvm.dbg.value(metadata i32 %0, metadata !650, metadata !DIExpression()), !dbg !967
  call void @llvm.dbg.value(metadata ptr %3, metadata !651, metadata !DIExpression()), !dbg !967
  %33 = sitofp i32 %0 to double, !dbg !969
  %34 = call i32 @gsl_sf_zeta_e(double noundef %33, ptr noundef nonnull %3), !dbg !970
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !925, metadata !DIExpression()), !dbg !929
  %35 = fsub double 1.000000e+00, %33, !dbg !971
  %36 = fmul double %35, 0x3FE62E42FEFA39EF, !dbg !972
  %37 = call i32 @gsl_sf_exp_e(double noundef %36, ptr noundef nonnull %4) #7, !dbg !973
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !926, metadata !DIExpression()), !dbg !929
  %38 = load double, ptr %4, align 8, !dbg !974, !tbaa !201
  %39 = fneg double %38, !dbg !975
  %40 = load double, ptr %3, align 8, !dbg !976, !tbaa !201
  %41 = call i32 @gsl_sf_multiply_e(double noundef %39, double noundef %40, ptr noundef %1) #7, !dbg !977
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !927, metadata !DIExpression()), !dbg !929
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !978
  %43 = load double, ptr %42, align 8, !dbg !978, !tbaa !206
  %44 = fmul double %36, %43, !dbg !979
  %45 = fmul double %40, %44, !dbg !980
  %46 = call double @llvm.fabs.f64(double %45), !dbg !981
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !982
  %48 = load double, ptr %47, align 8, !dbg !982, !tbaa !206
  %49 = load double, ptr %4, align 8, !dbg !983, !tbaa !201
  %50 = call double @llvm.fabs.f64(double %49), !dbg !984
  %51 = fmul double %48, %50, !dbg !985
  %52 = fadd double %46, %51, !dbg !986
  %53 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !987
  %54 = load double, ptr %1, align 8, !dbg !988, !tbaa !201
  %55 = call double @llvm.fabs.f64(double %54), !dbg !989
  %56 = fmul double %55, 0x3CC0000000000000, !dbg !990
  %57 = fadd double %52, %56, !dbg !991
  store double %57, ptr %53, align 8, !dbg !991, !tbaa !206
  %58 = icmp eq i32 %41, 0, !dbg !992
  %59 = icmp eq i32 %37, 0, !dbg !992
  %60 = select i1 %59, i32 %34, i32 %37, !dbg !992
  %61 = select i1 %58, i32 %60, i32 %41, !dbg !992
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !993
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !993
  br label %62

62:                                               ; preds = %32, %23, %20, %10, %6
  %63 = phi i32 [ 0, %6 ], [ 0, %10 ], [ 0, %23 ], [ %61, %32 ], [ 0, %20 ], !dbg !994
  ret i32 %63, !dbg !995
}

declare !dbg !996 i32 @gsl_sf_exp_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !998 i32 @gsl_sf_multiply_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_eta_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !1000 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1019
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1013, metadata !DIExpression(), metadata !1019, metadata ptr %3, metadata !DIExpression()), !dbg !1020
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1021
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1015, metadata !DIExpression(), metadata !1021, metadata ptr %4, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata double %0, metadata !1002, metadata !DIExpression()), !dbg !1022
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1003, metadata !DIExpression()), !dbg !1022
  %5 = fcmp ogt double %0, 1.000000e+02, !dbg !1023
  br i1 %5, label %6, label %8, !dbg !1024

6:                                                ; preds = %2
  store double 1.000000e+00, ptr %1, align 8, !dbg !1025, !tbaa !201
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1027
  store double 0x3CB0000000000000, ptr %7, align 8, !dbg !1028, !tbaa !206
  br label %53, !dbg !1029

8:                                                ; preds = %2
  %9 = fadd double %0, -1.000000e+00, !dbg !1030
  %10 = tail call double @llvm.fabs.f64(double %9), !dbg !1031
  %11 = fcmp olt double %10, 0x3F7E5078049F59F0, !dbg !1032
  br i1 %11, label %12, label %24, !dbg !1033

12:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double %9, metadata !1004, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata double 0x3FE62E42FEFA39EF, metadata !1008, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata double 0x3FC47695909C4D6F, metadata !1009, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata double 0xBFA0BC421B185F30, metadata !1010, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata double 0x3F59B4D403FF42D9, metadata !1011, metadata !DIExpression()), !dbg !1034
  tail call void @llvm.dbg.value(metadata double 0x3F489262C32F6CAD, metadata !1012, metadata !DIExpression()), !dbg !1034
  %13 = fmul double %9, 0x3F489262C32F6CAD, !dbg !1035
  %14 = fadd double %13, 0x3F59B4D403FF42D9, !dbg !1036
  %15 = fmul double %9, %14, !dbg !1037
  %16 = fadd double %15, 0xBFA0BC421B185F30, !dbg !1038
  %17 = fmul double %9, %16, !dbg !1039
  %18 = fadd double %17, 0x3FC47695909C4D6F, !dbg !1040
  %19 = fmul double %9, %18, !dbg !1041
  %20 = fadd double %19, 0x3FE62E42FEFA39EF, !dbg !1042
  store double %20, ptr %1, align 8, !dbg !1043, !tbaa !201
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !1044
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !1045
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1046
  store double %22, ptr %23, align 8, !dbg !1047, !tbaa !206
  br label %53

24:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1048
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1049
  %25 = call i32 @gsl_sf_zeta_e(double noundef %0, ptr noundef nonnull %3), !dbg !1050
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !1016, metadata !DIExpression()), !dbg !1020
  %26 = fsub double 1.000000e+00, %0, !dbg !1051
  %27 = fmul double %26, 0x3FE62E42FEFA39EF, !dbg !1052
  %28 = call i32 @gsl_sf_exp_e(double noundef %27, ptr noundef nonnull %4) #7, !dbg !1053
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1017, metadata !DIExpression()), !dbg !1020
  %29 = load double, ptr %4, align 8, !dbg !1054, !tbaa !201
  %30 = fsub double 1.000000e+00, %29, !dbg !1055
  %31 = load double, ptr %3, align 8, !dbg !1056, !tbaa !201
  %32 = call i32 @gsl_sf_multiply_e(double noundef %30, double noundef %31, ptr noundef %1) #7, !dbg !1057
  tail call void @llvm.dbg.value(metadata i32 %32, metadata !1018, metadata !DIExpression()), !dbg !1020
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1058
  %34 = load double, ptr %33, align 8, !dbg !1058, !tbaa !206
  %35 = fmul double %27, %34, !dbg !1059
  %36 = fmul double %31, %35, !dbg !1060
  %37 = call double @llvm.fabs.f64(double %36), !dbg !1061
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1062
  %39 = load double, ptr %38, align 8, !dbg !1062, !tbaa !206
  %40 = load double, ptr %4, align 8, !dbg !1063, !tbaa !201
  %41 = call double @llvm.fabs.f64(double %40), !dbg !1064
  %42 = fmul double %39, %41, !dbg !1065
  %43 = fadd double %37, %42, !dbg !1066
  %44 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !1067
  %45 = load double, ptr %1, align 8, !dbg !1068, !tbaa !201
  %46 = call double @llvm.fabs.f64(double %45), !dbg !1069
  %47 = fmul double %46, 0x3CC0000000000000, !dbg !1070
  %48 = fadd double %43, %47, !dbg !1071
  store double %48, ptr %44, align 8, !dbg !1071, !tbaa !206
  %49 = icmp eq i32 %32, 0, !dbg !1072
  %50 = icmp eq i32 %28, 0, !dbg !1072
  %51 = select i1 %50, i32 %25, i32 %28, !dbg !1072
  %52 = select i1 %49, i32 %51, i32 %32, !dbg !1072
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1073
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1073
  br label %53

53:                                               ; preds = %24, %12, %6
  %54 = phi i32 [ 0, %6 ], [ 0, %12 ], [ %52, %24 ], !dbg !1074
  ret i32 %54, !dbg !1075
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_zeta(double noundef %0) local_unnamed_addr #0 !dbg !1076 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1083
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1081, metadata !DIExpression(), metadata !1083, metadata ptr %2, metadata !DIExpression()), !dbg !1084
  tail call void @llvm.dbg.value(metadata double %0, metadata !1080, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1085
  %3 = call i32 @gsl_sf_zeta_e(double noundef %0, ptr noundef nonnull %2), !dbg !1085
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1082, metadata !DIExpression()), !dbg !1084
  %4 = icmp eq i32 %3, 0, !dbg !1086
  br i1 %4, label %6, label %5, !dbg !1085

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1019, i32 noundef %3) #7, !dbg !1088
  br label %6, !dbg !1088

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1085, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1091
  ret double %7, !dbg !1091
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hzeta(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1092 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1100
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1098, metadata !DIExpression(), metadata !1100, metadata ptr %3, metadata !DIExpression()), !dbg !1101
  tail call void @llvm.dbg.value(metadata double %0, metadata !1096, metadata !DIExpression()), !dbg !1101
  tail call void @llvm.dbg.value(metadata double %1, metadata !1097, metadata !DIExpression()), !dbg !1101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1102
  %4 = call i32 @gsl_sf_hzeta_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1102, !range !1103
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1099, metadata !DIExpression()), !dbg !1101
  %5 = icmp eq i32 %4, 0, !dbg !1104
  br i1 %5, label %7, label %6, !dbg !1102

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1024, i32 noundef %4) #7, !dbg !1106
  br label %7, !dbg !1106

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1102, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1109
  ret double %8, !dbg !1109
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_zeta_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1110 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1115, metadata !DIExpression(), metadata !1117, metadata ptr %2, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1114, metadata !DIExpression()), !dbg !1118
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %0, metadata !650, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata ptr %2, metadata !651, metadata !DIExpression()), !dbg !1120
  %3 = icmp slt i32 %0, 0, !dbg !1122
  br i1 %3, label %4, label %16, !dbg !1123

4:                                                ; preds = %1
  %5 = and i32 %0, 1, !dbg !1124
  %6 = icmp eq i32 %5, 0, !dbg !1124
  br i1 %6, label %7, label %8, !dbg !1125

7:                                                ; preds = %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1126, !DIAssignID !1127
  call void @llvm.dbg.assign(metadata i8 0, metadata !1115, metadata !DIExpression(), metadata !1127, metadata ptr %2, metadata !DIExpression()), !dbg !1118
  br label %33, !dbg !1128

8:                                                ; preds = %4
  %9 = icmp ugt i32 %0, -99, !dbg !1129
  br i1 %9, label %10, label %27, !dbg !1130

10:                                               ; preds = %8
  %11 = xor i32 %0, -1, !dbg !1131
  %12 = lshr exact i32 %11, 1
  %13 = zext nneg i32 %12 to i64, !dbg !1132
  %14 = getelementptr inbounds [50 x double], ptr @zeta_neg_int_table, i64 0, i64 %13, !dbg !1132
  %15 = load double, ptr %14, align 8, !dbg !1132, !tbaa !276
  store double %15, ptr %2, align 8, !dbg !1133, !tbaa !201, !DIAssignID !1134
  call void @llvm.dbg.assign(metadata double %15, metadata !1115, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1134, metadata ptr %2, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.assign(metadata double poison, metadata !1115, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1135, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1118
  br label %33, !dbg !1136

16:                                               ; preds = %1
  %17 = icmp eq i32 %0, 1, !dbg !1137
  br i1 %17, label %18, label %19, !dbg !1138

18:                                               ; preds = %16
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1139, !tbaa !201, !DIAssignID !1140
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !1115, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1140, metadata ptr %2, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !1115, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1141, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1118
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 873, i32 noundef 1) #7, !dbg !1142
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1116, metadata !DIExpression()), !dbg !1118
  br label %31, !dbg !1119

19:                                               ; preds = %16
  %20 = icmp ult i32 %0, 101, !dbg !1143
  br i1 %20, label %21, label %26, !dbg !1144

21:                                               ; preds = %19
  %22 = zext nneg i32 %0 to i64
  %23 = getelementptr inbounds [101 x double], ptr @zetam1_pos_int_table, i64 0, i64 %22, !dbg !1145
  %24 = load double, ptr %23, align 8, !dbg !1145, !tbaa !276
  %25 = fadd double %24, 1.000000e+00, !dbg !1146
  store double %25, ptr %2, align 8, !dbg !1147, !tbaa !201, !DIAssignID !1148
  call void @llvm.dbg.assign(metadata double %25, metadata !1115, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1148, metadata ptr %2, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.assign(metadata double poison, metadata !1115, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1149, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1118
  br label %33, !dbg !1150

26:                                               ; preds = %19
  store double 1.000000e+00, ptr %2, align 8, !dbg !1151, !tbaa !201, !DIAssignID !1152
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !1115, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1152, metadata ptr %2, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.assign(metadata double 0x3CB0000000000000, metadata !1115, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1153, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1118
  br label %33, !dbg !1154

27:                                               ; preds = %8
  %28 = sitofp i32 %0 to double, !dbg !1155
  %29 = call i32 @gsl_sf_zeta_e(double noundef %28, ptr noundef nonnull %2), !dbg !1156
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1116, metadata !DIExpression()), !dbg !1118
  %30 = icmp eq i32 %29, 0, !dbg !1157
  br i1 %30, label %33, label %31, !dbg !1119

31:                                               ; preds = %18, %27
  %32 = phi i32 [ 1, %18 ], [ %29, %27 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1029, i32 noundef %32) #7, !dbg !1159
  br label %33, !dbg !1159

33:                                               ; preds = %26, %21, %7, %10, %27, %31
  %34 = load double, ptr %2, align 8, !dbg !1119, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1162
  ret double %34, !dbg !1162
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_zetam1(double noundef %0) local_unnamed_addr #0 !dbg !1163 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1168
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1166, metadata !DIExpression(), metadata !1168, metadata ptr %2, metadata !DIExpression()), !dbg !1169
  tail call void @llvm.dbg.value(metadata double %0, metadata !1165, metadata !DIExpression()), !dbg !1169
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1170
  %3 = call i32 @gsl_sf_zetam1_e(double noundef %0, ptr noundef nonnull %2), !dbg !1170
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1167, metadata !DIExpression()), !dbg !1169
  %4 = icmp eq i32 %3, 0, !dbg !1171
  br i1 %4, label %6, label %5, !dbg !1170

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1034, i32 noundef %3) #7, !dbg !1173
  br label %6, !dbg !1173

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1170, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1176
  ret double %7, !dbg !1176
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_zetam1_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1177 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1182
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1180, metadata !DIExpression(), metadata !1182, metadata ptr %2, metadata !DIExpression()), !dbg !1183
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1179, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1184
  %3 = call i32 @gsl_sf_zetam1_int_e(i32 noundef %0, ptr noundef nonnull %2), !dbg !1184
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1181, metadata !DIExpression()), !dbg !1183
  %4 = icmp eq i32 %3, 0, !dbg !1185
  br i1 %4, label %6, label %5, !dbg !1184

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1039, i32 noundef %3) #7, !dbg !1187
  br label %6, !dbg !1187

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1184, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1190
  ret double %7, !dbg !1190
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_eta_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1191 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1196
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1194, metadata !DIExpression(), metadata !1196, metadata ptr %2, metadata !DIExpression()), !dbg !1197
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1193, metadata !DIExpression()), !dbg !1197
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1198
  %3 = call i32 @gsl_sf_eta_int_e(i32 noundef %0, ptr noundef nonnull %2), !dbg !1198
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1195, metadata !DIExpression()), !dbg !1197
  %4 = icmp eq i32 %3, 0, !dbg !1199
  br i1 %4, label %6, label %5, !dbg !1198

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1044, i32 noundef %3) #7, !dbg !1201
  br label %6, !dbg !1201

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1198, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1204
  ret double %7, !dbg !1204
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_eta(double noundef %0) local_unnamed_addr #0 !dbg !1205 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1210
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1208, metadata !DIExpression(), metadata !1210, metadata ptr %2, metadata !DIExpression()), !dbg !1211
  tail call void @llvm.dbg.value(metadata double %0, metadata !1207, metadata !DIExpression()), !dbg !1211
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !1212
  %3 = call i32 @gsl_sf_eta_e(double noundef %0, ptr noundef nonnull %2), !dbg !1212
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1209, metadata !DIExpression()), !dbg !1211
  %4 = icmp eq i32 %3, 0, !dbg !1213
  br i1 %4, label %6, label %5, !dbg !1212

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1049, i32 noundef %3) #7, !dbg !1215
  br label %6, !dbg !1215

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !1212, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !1218
  ret double %7, !dbg !1218
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1219 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "zeta.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f825cda0f72e76c9510304f9745bddbf")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 719, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 726, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 729, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 9)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "hzeta_c", scope: !24, file: !2, line: 531, type: !143, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !65, globals: !67, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 39, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!30 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!31 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!32 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!33 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!34 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!35 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!36 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!37 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!38 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!39 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!40 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!41 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!42 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!43 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!44 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!45 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!46 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!47 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!48 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!49 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!50 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!51 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!52 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!53 = !DIEnumerator(name: "GSL_ESING", value: 21)
!54 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!55 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!56 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!57 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!58 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!59 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!60 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!61 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!62 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!63 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!64 = !DIEnumerator(name: "GSL_EOF", value: 32)
!65 = !{!66}
!66 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!67 = !{!0, !7, !12, !17, !68, !73, !78, !80, !85, !90, !95, !22, !100, !112, !117, !119, !122, !127, !132, !134, !139, !141}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1019, type: !70, isLocal: true, isDefinition: true)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 26)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1024, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 30)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1029, type: !75, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1034, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 28)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1039, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 32)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1044, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 29)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1049, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 25)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "zeta_xlt1_cs", scope: !24, file: !2, line: 61, type: !102, isLocal: true, isDefinition: true)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !103, line: 29, baseType: !104)
!103 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !103, line: 22, size: 320, elements: !105)
!105 = !{!106, !108, !109, !110, !111}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !104, file: !103, line: 23, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !104, file: !103, line: 24, baseType: !28, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !104, file: !103, line: 25, baseType: !66, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !104, file: !103, line: 26, baseType: !66, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !104, file: !103, line: 27, baseType: !28, size: 32, offset: 256)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "zeta_xlt1_data", scope: !24, file: !2, line: 45, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 896, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 14)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "zeta_xgt1_cs", scope: !24, file: !2, line: 104, type: !102, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "zeta_xgt1_data", scope: !24, file: !2, line: 72, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 1920, elements: !76)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "zeta_neg_int_table", scope: !24, file: !2, line: 474, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 3200, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 50)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "zetam1_pos_int_table", scope: !24, file: !2, line: 367, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 6464, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 101)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "zetam1_inter_cs", scope: !24, file: !2, line: 142, type: !102, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "zetam1_inter_data", scope: !24, file: !2, line: 116, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 1536, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 24)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "eta_pos_int_table", scope: !24, file: !2, line: 550, type: !129, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "eta_neg_int_table", scope: !24, file: !2, line: 657, type: !124, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 960, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 15)
!146 = !{i32 7, !"Dwarf Version", i32 5}
!147 = !{i32 2, !"Debug Info Version", i32 3}
!148 = !{i32 1, !"wchar_size", i32 4}
!149 = !{i32 8, !"PIC Level", i32 2}
!150 = !{i32 7, !"PIE Level", i32 2}
!151 = !{i32 7, !"uwtable", i32 2}
!152 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!153 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!154 = distinct !DISubprogram(name: "gsl_sf_hzeta_e", scope: !2, file: !2, line: 714, type: !155, scopeLine: 715, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !165)
!155 = !DISubroutineType(types: !156)
!156 = !{!28, !157, !157, !158}
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !160, line: 41, baseType: !161)
!160 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !160, line: 37, size: 128, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !161, file: !160, line: 38, baseType: !66, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !161, file: !160, line: 39, baseType: !66, size: 64, offset: 64)
!165 = !{!166, !167, !168, !169, !172, !173, !179, !180, !181, !184, !185, !186, !187, !188, !189, !190, !191}
!166 = !DILocalVariable(name: "s", arg: 1, scope: !154, file: !2, line: 714, type: !157)
!167 = !DILocalVariable(name: "q", arg: 2, scope: !154, file: !2, line: 714, type: !157)
!168 = !DILocalVariable(name: "result", arg: 3, scope: !154, file: !2, line: 714, type: !158)
!169 = !DILocalVariable(name: "max_bits", scope: !170, file: !2, line: 722, type: !157)
!170 = distinct !DILexicalBlock(scope: !171, file: !2, line: 721, column: 8)
!171 = distinct !DILexicalBlock(scope: !154, file: !2, line: 718, column: 6)
!172 = !DILocalVariable(name: "ln_term0", scope: !170, file: !2, line: 723, type: !157)
!173 = !DILocalVariable(name: "p1", scope: !174, file: !2, line: 737, type: !157)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 736, column: 42)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 736, column: 13)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 731, column: 13)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 728, column: 13)
!178 = distinct !DILexicalBlock(scope: !170, file: !2, line: 725, column: 8)
!179 = !DILocalVariable(name: "p2", scope: !174, file: !2, line: 738, type: !157)
!180 = !DILocalVariable(name: "p3", scope: !174, file: !2, line: 739, type: !157)
!181 = !DILocalVariable(name: "jmax", scope: !182, file: !2, line: 748, type: !183)
!182 = distinct !DILexicalBlock(scope: !175, file: !2, line: 744, column: 10)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!184 = !DILocalVariable(name: "kmax", scope: !182, file: !2, line: 749, type: !183)
!185 = !DILocalVariable(name: "j", scope: !182, file: !2, line: 750, type: !28)
!186 = !DILocalVariable(name: "k", scope: !182, file: !2, line: 750, type: !28)
!187 = !DILocalVariable(name: "pmax", scope: !182, file: !2, line: 751, type: !157)
!188 = !DILocalVariable(name: "scp", scope: !182, file: !2, line: 752, type: !66)
!189 = !DILocalVariable(name: "pcp", scope: !182, file: !2, line: 753, type: !66)
!190 = !DILocalVariable(name: "ans", scope: !182, file: !2, line: 754, type: !66)
!191 = !DILocalVariable(name: "delta", scope: !192, file: !2, line: 761, type: !66)
!192 = distinct !DILexicalBlock(scope: !193, file: !2, line: 760, column: 30)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 760, column: 7)
!194 = distinct !DILexicalBlock(scope: !182, file: !2, line: 760, column: 7)
!195 = !DILocation(line: 0, scope: !154)
!196 = !DILocation(line: 718, column: 8, scope: !171)
!197 = !DILocation(line: 718, column: 15, scope: !171)
!198 = !DILocation(line: 719, column: 5, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 719, column: 5)
!200 = distinct !DILexicalBlock(scope: !171, file: !2, line: 718, column: 28)
!201 = !{!202, !203, i64 0}
!202 = !{!"gsl_sf_result_struct", !203, i64 0, !203, i64 8}
!203 = !{!"double", !204, i64 0}
!204 = !{!"omnipotent char", !205, i64 0}
!205 = !{!"Simple C/C++ TBAA"}
!206 = !{!202, !203, i64 8}
!207 = !DILocation(line: 719, column: 5, scope: !208)
!208 = distinct !DILexicalBlock(scope: !199, file: !2, line: 719, column: 5)
!209 = !DILocation(line: 0, scope: !170)
!210 = !DILocation(line: 723, column: 29, scope: !170)
!211 = !DILocation(line: 723, column: 34, scope: !170)
!212 = !DILocation(line: 723, column: 32, scope: !170)
!213 = !DILocation(line: 725, column: 17, scope: !178)
!214 = !DILocation(line: 725, column: 8, scope: !170)
!215 = !DILocation(line: 726, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 726, column: 7)
!217 = distinct !DILexicalBlock(scope: !178, file: !2, line: 725, column: 42)
!218 = !DILocation(line: 726, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !2, line: 726, column: 7)
!220 = !DILocation(line: 728, column: 22, scope: !177)
!221 = !DILocation(line: 728, column: 13, scope: !178)
!222 = !DILocation(line: 729, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !2, line: 729, column: 7)
!224 = distinct !DILexicalBlock(scope: !177, file: !2, line: 728, column: 47)
!225 = !DILocation(line: 729, column: 7, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !2, line: 729, column: 7)
!227 = !DILocation(line: 731, column: 16, scope: !176)
!228 = !DILocation(line: 731, column: 27, scope: !176)
!229 = !DILocation(line: 731, column: 45, scope: !176)
!230 = !DILocation(line: 731, column: 60, scope: !176)
!231 = !DILocation(line: 732, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !176, file: !2, line: 731, column: 74)
!233 = !DILocation(line: 732, column: 19, scope: !232)
!234 = !DILocation(line: 733, column: 45, scope: !232)
!235 = !DILocation(line: 733, column: 43, scope: !232)
!236 = !DILocation(line: 733, column: 15, scope: !232)
!237 = !DILocation(line: 733, column: 19, scope: !232)
!238 = !DILocation(line: 734, column: 7, scope: !232)
!239 = !DILocation(line: 736, column: 30, scope: !175)
!240 = !DILocation(line: 737, column: 25, scope: !174)
!241 = !DILocation(line: 0, scope: !174)
!242 = !DILocation(line: 738, column: 35, scope: !174)
!243 = !DILocation(line: 738, column: 30, scope: !174)
!244 = !DILocation(line: 738, column: 25, scope: !174)
!245 = !DILocation(line: 739, column: 35, scope: !174)
!246 = !DILocation(line: 739, column: 30, scope: !174)
!247 = !DILocation(line: 739, column: 25, scope: !174)
!248 = !DILocation(line: 740, column: 31, scope: !174)
!249 = !DILocation(line: 740, column: 36, scope: !174)
!250 = !DILocation(line: 740, column: 24, scope: !174)
!251 = !DILocation(line: 740, column: 19, scope: !174)
!252 = !DILocation(line: 741, column: 43, scope: !174)
!253 = !DILocation(line: 741, column: 46, scope: !174)
!254 = !DILocation(line: 741, column: 37, scope: !174)
!255 = !DILocation(line: 741, column: 55, scope: !174)
!256 = !DILocation(line: 741, column: 53, scope: !174)
!257 = !DILocation(line: 741, column: 15, scope: !174)
!258 = !DILocation(line: 741, column: 19, scope: !174)
!259 = !DILocation(line: 0, scope: !182)
!260 = !DILocation(line: 751, column: 37, scope: !182)
!261 = !DILocation(line: 751, column: 28, scope: !182)
!262 = !DILocation(line: 754, column: 37, scope: !182)
!263 = !DILocation(line: 754, column: 34, scope: !182)
!264 = !DILocation(line: 754, column: 43, scope: !182)
!265 = !DILocation(line: 754, column: 24, scope: !182)
!266 = !DILocation(line: 757, column: 22, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !2, line: 756, column: 29)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 756, column: 7)
!269 = distinct !DILexicalBlock(scope: !182, file: !2, line: 756, column: 7)
!270 = !DILocation(line: 757, column: 16, scope: !267)
!271 = !DILocation(line: 757, column: 13, scope: !267)
!272 = !DILocation(line: 753, column: 25, scope: !182)
!273 = !DILocation(line: 760, column: 7, scope: !194)
!274 = !DILocation(line: 761, column: 33, scope: !192)
!275 = !DILocation(line: 761, column: 24, scope: !192)
!276 = !{!203, !203, i64 0}
!277 = !DILocation(line: 761, column: 37, scope: !192)
!278 = !DILocation(line: 761, column: 43, scope: !192)
!279 = !DILocation(line: 0, scope: !192)
!280 = !DILocation(line: 762, column: 13, scope: !192)
!281 = !DILocation(line: 763, column: 22, scope: !282)
!282 = distinct !DILexicalBlock(scope: !192, file: !2, line: 763, column: 12)
!283 = !DILocation(line: 763, column: 12, scope: !282)
!284 = !DILocation(line: 763, column: 28, scope: !282)
!285 = !DILocation(line: 763, column: 12, scope: !192)
!286 = !DILocation(line: 764, column: 19, scope: !192)
!287 = !DILocation(line: 764, column: 18, scope: !192)
!288 = !DILocation(line: 764, column: 22, scope: !192)
!289 = !DILocation(line: 764, column: 32, scope: !192)
!290 = !DILocation(line: 764, column: 25, scope: !192)
!291 = !DILocation(line: 764, column: 13, scope: !192)
!292 = !DILocation(line: 765, column: 13, scope: !192)
!293 = !DILocation(line: 760, column: 17, scope: !193)
!294 = distinct !{!294, !273, !295, !296}
!295 = !DILocation(line: 766, column: 7, scope: !194)
!296 = !{!"llvm.loop.mustprogress"}
!297 = !DILocation(line: 768, column: 19, scope: !182)
!298 = !DILocation(line: 769, column: 60, scope: !182)
!299 = !DILocation(line: 769, column: 58, scope: !182)
!300 = !DILocation(line: 769, column: 15, scope: !182)
!301 = !DILocation(line: 769, column: 19, scope: !182)
!302 = !DILocation(line: 0, scope: !171)
!303 = !DILocation(line: 773, column: 1, scope: !154)
!304 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307, !307, !28, !28}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!309 = !DISubprogram(name: "log", scope: !310, file: !310, line: 104, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!311 = !DISubroutineType(types: !312)
!312 = !{!66, !66}
!313 = !DISubprogram(name: "pow", scope: !310, file: !310, line: 140, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!66, !66, !66}
!316 = distinct !DISubprogram(name: "gsl_sf_zeta_e", scope: !2, file: !2, line: 776, type: !317, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!28, !157, !158}
!319 = !{!320, !321, !322, !326, !327, !328, !335, !336, !337, !338, !339}
!320 = !DILocalVariable(name: "s", arg: 1, scope: !316, file: !2, line: 776, type: !157)
!321 = !DILocalVariable(name: "result", arg: 2, scope: !316, file: !2, line: 776, type: !158)
!322 = !DILocalVariable(name: "zeta_one_minus_s", scope: !323, file: !2, line: 789, type: !159)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 786, column: 8)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 783, column: 11)
!325 = distinct !DILexicalBlock(scope: !316, file: !2, line: 780, column: 6)
!326 = !DILocalVariable(name: "stat_zoms", scope: !323, file: !2, line: 790, type: !183)
!327 = !DILocalVariable(name: "sin_term", scope: !323, file: !2, line: 791, type: !157)
!328 = !DILocalVariable(name: "twopi_pow", scope: !329, file: !2, line: 805, type: !332)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 798, column: 23)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 798, column: 13)
!331 = distinct !DILexicalBlock(scope: !323, file: !2, line: 793, column: 8)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1152, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 18)
!335 = !DILocalVariable(name: "n", scope: !329, file: !2, line: 824, type: !183)
!336 = !DILocalVariable(name: "fs", scope: !329, file: !2, line: 825, type: !157)
!337 = !DILocalVariable(name: "p", scope: !329, file: !2, line: 826, type: !157)
!338 = !DILocalVariable(name: "g", scope: !329, file: !2, line: 828, type: !159)
!339 = !DILocalVariable(name: "stat_g", scope: !329, file: !2, line: 829, type: !183)
!340 = distinct !DIAssignID()
!341 = !DILocation(line: 0, scope: !329)
!342 = !DILocation(line: 0, scope: !316)
!343 = !DILocation(line: 780, column: 8, scope: !325)
!344 = !DILocation(line: 780, column: 6, scope: !316)
!345 = !DILocation(line: 781, column: 5, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 781, column: 5)
!347 = distinct !DILexicalBlock(scope: !325, file: !2, line: 780, column: 16)
!348 = !DILocation(line: 781, column: 5, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !2, line: 781, column: 5)
!350 = !DILocation(line: 783, column: 13, scope: !324)
!351 = !DILocation(line: 783, column: 11, scope: !325)
!352 = !DILocalVariable(name: "s", arg: 1, scope: !353, file: !2, line: 154, type: !66)
!353 = distinct !DISubprogram(name: "riemann_zeta_sgt0", scope: !2, file: !2, line: 154, type: !354, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!28, !66, !158}
!356 = !{!352, !357, !358, !361, !364, !365, !367, !368, !369}
!357 = !DILocalVariable(name: "result", arg: 2, scope: !353, file: !2, line: 154, type: !158)
!358 = !DILocalVariable(name: "c", scope: !359, file: !2, line: 157, type: !159)
!359 = distinct !DILexicalBlock(scope: !360, file: !2, line: 156, column: 15)
!360 = distinct !DILexicalBlock(scope: !353, file: !2, line: 156, column: 6)
!361 = !DILocalVariable(name: "x", scope: !362, file: !2, line: 164, type: !66)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 163, column: 22)
!363 = distinct !DILexicalBlock(scope: !360, file: !2, line: 163, column: 11)
!364 = !DILocalVariable(name: "c", scope: !362, file: !2, line: 165, type: !159)
!365 = !DILocalVariable(name: "f2", scope: !366, file: !2, line: 172, type: !66)
!366 = distinct !DILexicalBlock(scope: !363, file: !2, line: 171, column: 8)
!367 = !DILocalVariable(name: "f3", scope: !366, file: !2, line: 173, type: !66)
!368 = !DILocalVariable(name: "f5", scope: !366, file: !2, line: 174, type: !66)
!369 = !DILocalVariable(name: "f7", scope: !366, file: !2, line: 175, type: !66)
!370 = !DILocation(line: 0, scope: !353, inlinedAt: !371)
!371 = distinct !DILocation(line: 784, column: 12, scope: !372)
!372 = distinct !DILexicalBlock(scope: !324, file: !2, line: 783, column: 21)
!373 = !DILocation(line: 156, column: 8, scope: !360, inlinedAt: !371)
!374 = !DILocation(line: 156, column: 6, scope: !353, inlinedAt: !371)
!375 = !DILocation(line: 158, column: 35, scope: !359, inlinedAt: !371)
!376 = !DILocation(line: 158, column: 38, scope: !359, inlinedAt: !371)
!377 = !{}
!378 = !DILocalVariable(name: "cs", arg: 1, scope: !379, file: !380, line: 3, type: !383)
!379 = distinct !DISubprogram(name: "cheb_eval_e", scope: !380, file: !380, line: 3, type: !381, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !385)
!380 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!381 = !DISubroutineType(types: !382)
!382 = !{!28, !383, !157, !158}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!385 = !{!378, !386, !387, !388, !389, !390, !391, !392, !393, !394, !398}
!386 = !DILocalVariable(name: "x", arg: 2, scope: !379, file: !380, line: 4, type: !157)
!387 = !DILocalVariable(name: "result", arg: 3, scope: !379, file: !380, line: 5, type: !158)
!388 = !DILocalVariable(name: "j", scope: !379, file: !380, line: 7, type: !28)
!389 = !DILocalVariable(name: "d", scope: !379, file: !380, line: 8, type: !66)
!390 = !DILocalVariable(name: "dd", scope: !379, file: !380, line: 9, type: !66)
!391 = !DILocalVariable(name: "y", scope: !379, file: !380, line: 11, type: !66)
!392 = !DILocalVariable(name: "y2", scope: !379, file: !380, line: 12, type: !66)
!393 = !DILocalVariable(name: "e", scope: !379, file: !380, line: 14, type: !66)
!394 = !DILocalVariable(name: "temp", scope: !395, file: !380, line: 17, type: !66)
!395 = distinct !DILexicalBlock(scope: !396, file: !380, line: 16, column: 33)
!396 = distinct !DILexicalBlock(scope: !397, file: !380, line: 16, column: 3)
!397 = distinct !DILexicalBlock(scope: !379, file: !380, line: 16, column: 3)
!398 = !DILocalVariable(name: "temp", scope: !399, file: !380, line: 24, type: !66)
!399 = distinct !DILexicalBlock(scope: !379, file: !380, line: 23, column: 3)
!400 = !DILocation(line: 0, scope: !379, inlinedAt: !401)
!401 = distinct !DILocation(line: 158, column: 5, scope: !359, inlinedAt: !371)
!402 = !DILocation(line: 11, column: 19, scope: !379, inlinedAt: !401)
!403 = !DILocation(line: 11, column: 22, scope: !379, inlinedAt: !401)
!404 = !DILocation(line: 11, column: 30, scope: !379, inlinedAt: !401)
!405 = !DILocation(line: 11, column: 39, scope: !379, inlinedAt: !401)
!406 = !DILocation(line: 12, column: 19, scope: !379, inlinedAt: !401)
!407 = !DILocation(line: 16, column: 3, scope: !397, inlinedAt: !401)
!408 = !DILocation(line: 0, scope: !395, inlinedAt: !401)
!409 = !DILocation(line: 18, column: 11, scope: !395, inlinedAt: !401)
!410 = !DILocation(line: 18, column: 14, scope: !395, inlinedAt: !401)
!411 = !DILocation(line: 18, column: 21, scope: !395, inlinedAt: !401)
!412 = !DILocation(line: 18, column: 19, scope: !395, inlinedAt: !401)
!413 = !DILocation(line: 19, column: 10, scope: !395, inlinedAt: !401)
!414 = !DILocation(line: 19, column: 26, scope: !395, inlinedAt: !401)
!415 = !DILocation(line: 19, column: 24, scope: !395, inlinedAt: !401)
!416 = !DILocation(line: 19, column: 37, scope: !395, inlinedAt: !401)
!417 = !DILocation(line: 19, column: 35, scope: !395, inlinedAt: !401)
!418 = !DILocation(line: 19, column: 7, scope: !395, inlinedAt: !401)
!419 = !DILocation(line: 16, column: 29, scope: !396, inlinedAt: !401)
!420 = !DILocation(line: 16, column: 23, scope: !396, inlinedAt: !401)
!421 = distinct !{!421, !407, !422, !296}
!422 = !DILocation(line: 21, column: 3, scope: !397, inlinedAt: !401)
!423 = !DILocation(line: 0, scope: !399, inlinedAt: !401)
!424 = !DILocation(line: 25, column: 10, scope: !399, inlinedAt: !401)
!425 = !DILocation(line: 25, column: 13, scope: !399, inlinedAt: !401)
!426 = !DILocation(line: 25, column: 18, scope: !399, inlinedAt: !401)
!427 = !DILocation(line: 26, column: 10, scope: !399, inlinedAt: !401)
!428 = !DILocation(line: 26, column: 25, scope: !399, inlinedAt: !401)
!429 = !DILocation(line: 26, column: 23, scope: !399, inlinedAt: !401)
!430 = !DILocation(line: 26, column: 34, scope: !399, inlinedAt: !401)
!431 = !DILocation(line: 26, column: 7, scope: !399, inlinedAt: !401)
!432 = !DILocation(line: 0, scope: !359, inlinedAt: !371)
!433 = !DILocation(line: 30, column: 33, scope: !379, inlinedAt: !401)
!434 = !DILocation(line: 30, column: 37, scope: !379, inlinedAt: !401)
!435 = !DILocation(line: 159, column: 30, scope: !359, inlinedAt: !371)
!436 = !DILocation(line: 159, column: 25, scope: !359, inlinedAt: !371)
!437 = !DILocation(line: 159, column: 17, scope: !359, inlinedAt: !371)
!438 = !DILocation(line: 160, column: 27, scope: !359, inlinedAt: !371)
!439 = !DILocation(line: 160, column: 25, scope: !359, inlinedAt: !371)
!440 = !DILocation(line: 160, column: 59, scope: !359, inlinedAt: !371)
!441 = !DILocation(line: 160, column: 57, scope: !359, inlinedAt: !371)
!442 = !DILocation(line: 160, column: 39, scope: !359, inlinedAt: !371)
!443 = !DILocation(line: 163, column: 13, scope: !363, inlinedAt: !371)
!444 = !DILocation(line: 163, column: 11, scope: !360, inlinedAt: !371)
!445 = !DILocation(line: 164, column: 20, scope: !362, inlinedAt: !371)
!446 = !DILocation(line: 164, column: 23, scope: !362, inlinedAt: !371)
!447 = !DILocation(line: 164, column: 30, scope: !362, inlinedAt: !371)
!448 = !DILocation(line: 0, scope: !362, inlinedAt: !371)
!449 = !DILocation(line: 0, scope: !379, inlinedAt: !450)
!450 = distinct !DILocation(line: 166, column: 5, scope: !362, inlinedAt: !371)
!451 = !DILocation(line: 11, column: 19, scope: !379, inlinedAt: !450)
!452 = !DILocation(line: 11, column: 22, scope: !379, inlinedAt: !450)
!453 = !DILocation(line: 11, column: 30, scope: !379, inlinedAt: !450)
!454 = !DILocation(line: 11, column: 39, scope: !379, inlinedAt: !450)
!455 = !DILocation(line: 12, column: 19, scope: !379, inlinedAt: !450)
!456 = !DILocation(line: 16, column: 3, scope: !397, inlinedAt: !450)
!457 = !DILocation(line: 0, scope: !395, inlinedAt: !450)
!458 = !DILocation(line: 18, column: 11, scope: !395, inlinedAt: !450)
!459 = !DILocation(line: 18, column: 14, scope: !395, inlinedAt: !450)
!460 = !DILocation(line: 18, column: 21, scope: !395, inlinedAt: !450)
!461 = !DILocation(line: 18, column: 19, scope: !395, inlinedAt: !450)
!462 = !DILocation(line: 19, column: 10, scope: !395, inlinedAt: !450)
!463 = !DILocation(line: 19, column: 26, scope: !395, inlinedAt: !450)
!464 = !DILocation(line: 19, column: 24, scope: !395, inlinedAt: !450)
!465 = !DILocation(line: 19, column: 37, scope: !395, inlinedAt: !450)
!466 = !DILocation(line: 19, column: 35, scope: !395, inlinedAt: !450)
!467 = !DILocation(line: 19, column: 7, scope: !395, inlinedAt: !450)
!468 = !DILocation(line: 16, column: 29, scope: !396, inlinedAt: !450)
!469 = !DILocation(line: 16, column: 23, scope: !396, inlinedAt: !450)
!470 = distinct !{!470, !456, !471, !296}
!471 = !DILocation(line: 21, column: 3, scope: !397, inlinedAt: !450)
!472 = !DILocation(line: 0, scope: !399, inlinedAt: !450)
!473 = !DILocation(line: 25, column: 10, scope: !399, inlinedAt: !450)
!474 = !DILocation(line: 25, column: 13, scope: !399, inlinedAt: !450)
!475 = !DILocation(line: 25, column: 18, scope: !399, inlinedAt: !450)
!476 = !DILocation(line: 26, column: 10, scope: !399, inlinedAt: !450)
!477 = !DILocation(line: 26, column: 25, scope: !399, inlinedAt: !450)
!478 = !DILocation(line: 26, column: 23, scope: !399, inlinedAt: !450)
!479 = !DILocation(line: 26, column: 34, scope: !399, inlinedAt: !450)
!480 = !DILocation(line: 26, column: 7, scope: !399, inlinedAt: !450)
!481 = !DILocation(line: 30, column: 33, scope: !379, inlinedAt: !450)
!482 = !DILocation(line: 30, column: 37, scope: !379, inlinedAt: !450)
!483 = !DILocation(line: 167, column: 30, scope: !362, inlinedAt: !371)
!484 = !DILocation(line: 167, column: 25, scope: !362, inlinedAt: !371)
!485 = !DILocation(line: 167, column: 17, scope: !362, inlinedAt: !371)
!486 = !DILocation(line: 168, column: 25, scope: !362, inlinedAt: !371)
!487 = !DILocation(line: 168, column: 57, scope: !362, inlinedAt: !371)
!488 = !DILocation(line: 168, column: 55, scope: !362, inlinedAt: !371)
!489 = !DILocation(line: 168, column: 37, scope: !362, inlinedAt: !371)
!490 = !DILocation(line: 172, column: 31, scope: !366, inlinedAt: !371)
!491 = !DILocation(line: 172, column: 23, scope: !366, inlinedAt: !371)
!492 = !DILocation(line: 172, column: 21, scope: !366, inlinedAt: !371)
!493 = !DILocation(line: 0, scope: !366, inlinedAt: !371)
!494 = !DILocation(line: 173, column: 23, scope: !366, inlinedAt: !371)
!495 = !DILocation(line: 173, column: 21, scope: !366, inlinedAt: !371)
!496 = !DILocation(line: 174, column: 23, scope: !366, inlinedAt: !371)
!497 = !DILocation(line: 174, column: 21, scope: !366, inlinedAt: !371)
!498 = !DILocation(line: 175, column: 23, scope: !366, inlinedAt: !371)
!499 = !DILocation(line: 175, column: 21, scope: !366, inlinedAt: !371)
!500 = !DILocation(line: 176, column: 26, scope: !366, inlinedAt: !371)
!501 = !DILocation(line: 176, column: 29, scope: !366, inlinedAt: !371)
!502 = !DILocation(line: 176, column: 32, scope: !366, inlinedAt: !371)
!503 = !DILocation(line: 176, column: 22, scope: !366, inlinedAt: !371)
!504 = !DILocation(line: 176, column: 17, scope: !366, inlinedAt: !371)
!505 = !DILocation(line: 177, column: 43, scope: !366, inlinedAt: !371)
!506 = !DILocation(line: 177, column: 41, scope: !366, inlinedAt: !371)
!507 = !DILocation(line: 0, scope: !360, inlinedAt: !371)
!508 = !DILocation(line: 784, column: 5, scope: !372)
!509 = !DILocalVariable(name: "s", arg: 1, scope: !510, file: !2, line: 185, type: !66)
!510 = distinct !DISubprogram(name: "riemann_zeta1ms_slt0", scope: !2, file: !2, line: 185, type: !354, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !511)
!511 = !{!509, !512, !513, !516, !517, !519, !520, !521}
!512 = !DILocalVariable(name: "result", arg: 2, scope: !510, file: !2, line: 185, type: !158)
!513 = !DILocalVariable(name: "x", scope: !514, file: !2, line: 188, type: !66)
!514 = distinct !DILexicalBlock(scope: !515, file: !2, line: 187, column: 17)
!515 = distinct !DILexicalBlock(scope: !510, file: !2, line: 187, column: 6)
!516 = !DILocalVariable(name: "c", scope: !514, file: !2, line: 189, type: !159)
!517 = !DILocalVariable(name: "f2", scope: !518, file: !2, line: 196, type: !66)
!518 = distinct !DILexicalBlock(scope: !515, file: !2, line: 195, column: 8)
!519 = !DILocalVariable(name: "f3", scope: !518, file: !2, line: 197, type: !66)
!520 = !DILocalVariable(name: "f5", scope: !518, file: !2, line: 198, type: !66)
!521 = !DILocalVariable(name: "f7", scope: !518, file: !2, line: 199, type: !66)
!522 = !DILocation(line: 0, scope: !510, inlinedAt: !523)
!523 = distinct !DILocation(line: 790, column: 27, scope: !323)
!524 = !DILocation(line: 187, column: 8, scope: !515, inlinedAt: !523)
!525 = !DILocation(line: 187, column: 6, scope: !510, inlinedAt: !523)
!526 = !DILocation(line: 188, column: 26, scope: !514, inlinedAt: !523)
!527 = !DILocation(line: 188, column: 21, scope: !514, inlinedAt: !523)
!528 = !DILocation(line: 188, column: 29, scope: !514, inlinedAt: !523)
!529 = !DILocation(line: 0, scope: !514, inlinedAt: !523)
!530 = !DILocation(line: 0, scope: !379, inlinedAt: !531)
!531 = distinct !DILocation(line: 190, column: 5, scope: !514, inlinedAt: !523)
!532 = !DILocation(line: 11, column: 19, scope: !379, inlinedAt: !531)
!533 = !DILocation(line: 11, column: 22, scope: !379, inlinedAt: !531)
!534 = !DILocation(line: 11, column: 30, scope: !379, inlinedAt: !531)
!535 = !DILocation(line: 11, column: 39, scope: !379, inlinedAt: !531)
!536 = !DILocation(line: 12, column: 19, scope: !379, inlinedAt: !531)
!537 = !DILocation(line: 16, column: 3, scope: !397, inlinedAt: !531)
!538 = !DILocation(line: 0, scope: !395, inlinedAt: !531)
!539 = !DILocation(line: 18, column: 11, scope: !395, inlinedAt: !531)
!540 = !DILocation(line: 18, column: 14, scope: !395, inlinedAt: !531)
!541 = !DILocation(line: 18, column: 21, scope: !395, inlinedAt: !531)
!542 = !DILocation(line: 18, column: 19, scope: !395, inlinedAt: !531)
!543 = !DILocation(line: 19, column: 10, scope: !395, inlinedAt: !531)
!544 = !DILocation(line: 19, column: 26, scope: !395, inlinedAt: !531)
!545 = !DILocation(line: 19, column: 24, scope: !395, inlinedAt: !531)
!546 = !DILocation(line: 19, column: 37, scope: !395, inlinedAt: !531)
!547 = !DILocation(line: 19, column: 35, scope: !395, inlinedAt: !531)
!548 = !DILocation(line: 19, column: 7, scope: !395, inlinedAt: !531)
!549 = !DILocation(line: 16, column: 29, scope: !396, inlinedAt: !531)
!550 = !DILocation(line: 16, column: 23, scope: !396, inlinedAt: !531)
!551 = distinct !{!551, !537, !552, !296}
!552 = !DILocation(line: 21, column: 3, scope: !397, inlinedAt: !531)
!553 = !DILocation(line: 0, scope: !399, inlinedAt: !531)
!554 = !DILocation(line: 25, column: 10, scope: !399, inlinedAt: !531)
!555 = !DILocation(line: 25, column: 13, scope: !399, inlinedAt: !531)
!556 = !DILocation(line: 25, column: 18, scope: !399, inlinedAt: !531)
!557 = !DILocation(line: 26, column: 10, scope: !399, inlinedAt: !531)
!558 = !DILocation(line: 26, column: 25, scope: !399, inlinedAt: !531)
!559 = !DILocation(line: 26, column: 23, scope: !399, inlinedAt: !531)
!560 = !DILocation(line: 26, column: 34, scope: !399, inlinedAt: !531)
!561 = !DILocation(line: 26, column: 7, scope: !399, inlinedAt: !531)
!562 = !DILocation(line: 30, column: 33, scope: !379, inlinedAt: !531)
!563 = !DILocation(line: 30, column: 37, scope: !379, inlinedAt: !531)
!564 = !DILocation(line: 191, column: 28, scope: !514, inlinedAt: !523)
!565 = !DILocation(line: 191, column: 25, scope: !514, inlinedAt: !523)
!566 = !DILocation(line: 0, scope: !323)
!567 = !DILocation(line: 192, column: 52, scope: !514, inlinedAt: !523)
!568 = !DILocation(line: 192, column: 50, scope: !514, inlinedAt: !523)
!569 = !DILocation(line: 192, column: 32, scope: !514, inlinedAt: !523)
!570 = !DILocation(line: 196, column: 36, scope: !518, inlinedAt: !523)
!571 = !DILocation(line: 196, column: 31, scope: !518, inlinedAt: !523)
!572 = !DILocation(line: 196, column: 23, scope: !518, inlinedAt: !523)
!573 = !DILocation(line: 196, column: 21, scope: !518, inlinedAt: !523)
!574 = !DILocation(line: 0, scope: !518, inlinedAt: !523)
!575 = !DILocation(line: 197, column: 23, scope: !518, inlinedAt: !523)
!576 = !DILocation(line: 197, column: 21, scope: !518, inlinedAt: !523)
!577 = !DILocation(line: 198, column: 23, scope: !518, inlinedAt: !523)
!578 = !DILocation(line: 198, column: 21, scope: !518, inlinedAt: !523)
!579 = !DILocation(line: 199, column: 23, scope: !518, inlinedAt: !523)
!580 = !DILocation(line: 199, column: 21, scope: !518, inlinedAt: !523)
!581 = !DILocation(line: 200, column: 26, scope: !518, inlinedAt: !523)
!582 = !DILocation(line: 200, column: 29, scope: !518, inlinedAt: !523)
!583 = !DILocation(line: 200, column: 32, scope: !518, inlinedAt: !523)
!584 = !DILocation(line: 200, column: 22, scope: !518, inlinedAt: !523)
!585 = !DILocation(line: 201, column: 43, scope: !518, inlinedAt: !523)
!586 = !DILocation(line: 201, column: 41, scope: !518, inlinedAt: !523)
!587 = !DILocation(line: 0, scope: !515, inlinedAt: !523)
!588 = !DILocation(line: 791, column: 30, scope: !323)
!589 = !DILocation(line: 791, column: 42, scope: !323)
!590 = !DILocation(line: 791, column: 29, scope: !323)
!591 = !DILocation(line: 791, column: 71, scope: !323)
!592 = !DILocation(line: 791, column: 70, scope: !323)
!593 = !DILocation(line: 791, column: 58, scope: !323)
!594 = !DILocation(line: 791, column: 83, scope: !323)
!595 = !DILocation(line: 793, column: 17, scope: !331)
!596 = !DILocation(line: 793, column: 8, scope: !323)
!597 = !DILocation(line: 795, column: 19, scope: !598)
!598 = distinct !DILexicalBlock(scope: !331, file: !2, line: 793, column: 25)
!599 = !DILocation(line: 796, column: 7, scope: !598)
!600 = !DILocation(line: 798, column: 15, scope: !330)
!601 = !DILocation(line: 798, column: 13, scope: !331)
!602 = distinct !DIAssignID()
!603 = !DILocation(line: 824, column: 31, scope: !329)
!604 = !DILocation(line: 824, column: 21, scope: !329)
!605 = !DILocation(line: 825, column: 34, scope: !329)
!606 = !DILocation(line: 825, column: 33, scope: !329)
!607 = !DILocation(line: 825, column: 27, scope: !329)
!608 = !DILocation(line: 826, column: 24, scope: !329)
!609 = !DILocation(line: 826, column: 44, scope: !329)
!610 = !DILocation(line: 826, column: 42, scope: !329)
!611 = !DILocation(line: 828, column: 7, scope: !329)
!612 = !DILocation(line: 829, column: 44, scope: !329)
!613 = !DILocation(line: 829, column: 26, scope: !329)
!614 = !DILocation(line: 830, column: 28, scope: !329)
!615 = !DILocation(line: 830, column: 24, scope: !329)
!616 = !DILocation(line: 830, column: 32, scope: !329)
!617 = !DILocation(line: 830, column: 43, scope: !329)
!618 = !DILocation(line: 830, column: 20, scope: !329)
!619 = !DILocation(line: 831, column: 22, scope: !329)
!620 = !DILocation(line: 831, column: 49, scope: !329)
!621 = !DILocation(line: 831, column: 15, scope: !329)
!622 = !DILocation(line: 832, column: 29, scope: !329)
!623 = !DILocation(line: 832, column: 40, scope: !329)
!624 = !DILocation(line: 832, column: 22, scope: !329)
!625 = !DILocation(line: 832, column: 68, scope: !329)
!626 = !DILocation(line: 832, column: 64, scope: !329)
!627 = !DILocation(line: 832, column: 19, scope: !329)
!628 = !DILocation(line: 833, column: 41, scope: !329)
!629 = !DILocation(line: 833, column: 48, scope: !329)
!630 = !DILocation(line: 833, column: 38, scope: !329)
!631 = !DILocation(line: 833, column: 56, scope: !329)
!632 = !DILocation(line: 833, column: 54, scope: !329)
!633 = !DILocation(line: 833, column: 19, scope: !329)
!634 = !DILocation(line: 835, column: 5, scope: !330)
!635 = !DILocation(line: 847, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !2, line: 847, column: 7)
!637 = distinct !DILexicalBlock(scope: !330, file: !2, line: 836, column: 10)
!638 = !DILocation(line: 847, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !2, line: 847, column: 7)
!640 = !DILocation(line: 0, scope: !325)
!641 = !DILocation(line: 850, column: 1, scope: !316)
!642 = !DISubprogram(name: "fmod", scope: !310, file: !310, line: 168, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!643 = !DISubprogram(name: "sin", scope: !310, file: !310, line: 64, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DISubprogram(name: "gsl_sf_gamma_e", scope: !645, file: !645, line: 66, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!645 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!646 = distinct !DISubprogram(name: "gsl_sf_zeta_int_e", scope: !2, file: !2, line: 853, type: !647, scopeLine: 854, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{!28, !183, !158}
!649 = !{!650, !651}
!650 = !DILocalVariable(name: "n", arg: 1, scope: !646, file: !2, line: 853, type: !183)
!651 = !DILocalVariable(name: "result", arg: 2, scope: !646, file: !2, line: 853, type: !158)
!652 = !DILocation(line: 0, scope: !646)
!653 = !DILocation(line: 857, column: 8, scope: !654)
!654 = distinct !DILexicalBlock(scope: !646, file: !2, line: 857, column: 6)
!655 = !DILocation(line: 857, column: 6, scope: !646)
!656 = !DILocation(line: 858, column: 9, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !2, line: 858, column: 8)
!658 = distinct !DILexicalBlock(scope: !654, file: !2, line: 857, column: 13)
!659 = !DILocation(line: 858, column: 8, scope: !658)
!660 = !DILocation(line: 860, column: 19, scope: !661)
!661 = distinct !DILexicalBlock(scope: !657, file: !2, line: 858, column: 24)
!662 = !DILocation(line: 861, column: 7, scope: !661)
!663 = !DILocation(line: 863, column: 15, scope: !664)
!664 = distinct !DILexicalBlock(scope: !657, file: !2, line: 863, column: 13)
!665 = !DILocation(line: 863, column: 13, scope: !657)
!666 = !DILocation(line: 864, column: 40, scope: !667)
!667 = distinct !DILexicalBlock(scope: !664, file: !2, line: 863, column: 39)
!668 = !DILocation(line: 864, column: 21, scope: !667)
!669 = !DILocation(line: 864, column: 19, scope: !667)
!670 = !DILocation(line: 865, column: 45, scope: !667)
!671 = !DILocation(line: 865, column: 43, scope: !667)
!672 = !DILocation(line: 865, column: 15, scope: !667)
!673 = !DILocation(line: 865, column: 19, scope: !667)
!674 = !DILocation(line: 866, column: 7, scope: !667)
!675 = !DILocation(line: 869, column: 28, scope: !676)
!676 = distinct !DILexicalBlock(scope: !664, file: !2, line: 868, column: 10)
!677 = !DILocation(line: 869, column: 14, scope: !676)
!678 = !DILocation(line: 869, column: 7, scope: !676)
!679 = !DILocation(line: 872, column: 13, scope: !680)
!680 = distinct !DILexicalBlock(scope: !654, file: !2, line: 872, column: 11)
!681 = !DILocation(line: 872, column: 11, scope: !654)
!682 = !DILocation(line: 873, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !2, line: 873, column: 5)
!684 = distinct !DILexicalBlock(scope: !680, file: !2, line: 872, column: 18)
!685 = !DILocation(line: 873, column: 5, scope: !686)
!686 = distinct !DILexicalBlock(scope: !683, file: !2, line: 873, column: 5)
!687 = !DILocation(line: 875, column: 13, scope: !688)
!688 = distinct !DILexicalBlock(scope: !680, file: !2, line: 875, column: 11)
!689 = !DILocation(line: 875, column: 11, scope: !680)
!690 = !DILocation(line: 876, column: 25, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !2, line: 875, column: 36)
!692 = !DILocation(line: 876, column: 23, scope: !691)
!693 = !DILocation(line: 876, column: 17, scope: !691)
!694 = !DILocation(line: 877, column: 43, scope: !691)
!695 = !DILocation(line: 877, column: 41, scope: !691)
!696 = !DILocation(line: 877, column: 13, scope: !691)
!697 = !DILocation(line: 877, column: 17, scope: !691)
!698 = !DILocation(line: 878, column: 5, scope: !691)
!699 = !DILocation(line: 881, column: 17, scope: !700)
!700 = distinct !DILexicalBlock(scope: !688, file: !2, line: 880, column: 8)
!701 = !DILocation(line: 882, column: 13, scope: !700)
!702 = !DILocation(line: 882, column: 17, scope: !700)
!703 = !DILocation(line: 883, column: 5, scope: !700)
!704 = !DILocation(line: 0, scope: !654)
!705 = !DILocation(line: 885, column: 1, scope: !646)
!706 = distinct !DISubprogram(name: "gsl_sf_zetam1_e", scope: !2, file: !2, line: 888, type: !317, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !707)
!707 = !{!708, !709, !710}
!708 = !DILocalVariable(name: "s", arg: 1, scope: !706, file: !2, line: 888, type: !157)
!709 = !DILocalVariable(name: "result", arg: 2, scope: !706, file: !2, line: 888, type: !158)
!710 = !DILocalVariable(name: "stat", scope: !711, file: !2, line: 892, type: !28)
!711 = distinct !DILexicalBlock(scope: !712, file: !2, line: 891, column: 3)
!712 = distinct !DILexicalBlock(scope: !706, file: !2, line: 890, column: 6)
!713 = !DILocation(line: 0, scope: !706)
!714 = !DILocation(line: 890, column: 8, scope: !712)
!715 = !DILocation(line: 890, column: 6, scope: !706)
!716 = !DILocation(line: 892, column: 16, scope: !711)
!717 = !DILocation(line: 0, scope: !711)
!718 = !DILocation(line: 893, column: 27, scope: !711)
!719 = !DILocation(line: 893, column: 31, scope: !711)
!720 = !DILocation(line: 893, column: 17, scope: !711)
!721 = !DILocation(line: 896, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !712, file: !2, line: 896, column: 11)
!723 = !DILocation(line: 896, column: 11, scope: !712)
!724 = !DILocalVariable(name: "s", arg: 1, scope: !725, file: !2, line: 209, type: !66)
!725 = distinct !DISubprogram(name: "riemann_zeta_minus_1_intermediate_s", scope: !2, file: !2, line: 209, type: !354, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !726)
!726 = !{!724, !727, !728, !729}
!727 = !DILocalVariable(name: "result", arg: 2, scope: !725, file: !2, line: 209, type: !158)
!728 = !DILocalVariable(name: "t", scope: !725, file: !2, line: 211, type: !66)
!729 = !DILocalVariable(name: "c", scope: !725, file: !2, line: 212, type: !159)
!730 = !DILocation(line: 0, scope: !725, inlinedAt: !731)
!731 = distinct !DILocation(line: 898, column: 12, scope: !732)
!732 = distinct !DILexicalBlock(scope: !722, file: !2, line: 897, column: 3)
!733 = !DILocation(line: 211, column: 17, scope: !725, inlinedAt: !731)
!734 = !DILocation(line: 211, column: 24, scope: !725, inlinedAt: !731)
!735 = !DILocation(line: 0, scope: !379, inlinedAt: !736)
!736 = distinct !DILocation(line: 213, column: 3, scope: !725, inlinedAt: !731)
!737 = !DILocation(line: 11, column: 19, scope: !379, inlinedAt: !736)
!738 = !DILocation(line: 11, column: 22, scope: !379, inlinedAt: !736)
!739 = !DILocation(line: 11, column: 30, scope: !379, inlinedAt: !736)
!740 = !DILocation(line: 11, column: 39, scope: !379, inlinedAt: !736)
!741 = !DILocation(line: 12, column: 19, scope: !379, inlinedAt: !736)
!742 = !DILocation(line: 16, column: 3, scope: !397, inlinedAt: !736)
!743 = !DILocation(line: 0, scope: !395, inlinedAt: !736)
!744 = !DILocation(line: 18, column: 11, scope: !395, inlinedAt: !736)
!745 = !DILocation(line: 18, column: 14, scope: !395, inlinedAt: !736)
!746 = !DILocation(line: 18, column: 21, scope: !395, inlinedAt: !736)
!747 = !DILocation(line: 18, column: 19, scope: !395, inlinedAt: !736)
!748 = !DILocation(line: 19, column: 10, scope: !395, inlinedAt: !736)
!749 = !DILocation(line: 19, column: 26, scope: !395, inlinedAt: !736)
!750 = !DILocation(line: 19, column: 24, scope: !395, inlinedAt: !736)
!751 = !DILocation(line: 19, column: 37, scope: !395, inlinedAt: !736)
!752 = !DILocation(line: 19, column: 35, scope: !395, inlinedAt: !736)
!753 = !DILocation(line: 19, column: 7, scope: !395, inlinedAt: !736)
!754 = !DILocation(line: 16, column: 29, scope: !396, inlinedAt: !736)
!755 = !DILocation(line: 16, column: 23, scope: !396, inlinedAt: !736)
!756 = distinct !{!756, !742, !757, !296}
!757 = !DILocation(line: 21, column: 3, scope: !397, inlinedAt: !736)
!758 = !DILocation(line: 0, scope: !399, inlinedAt: !736)
!759 = !DILocation(line: 25, column: 10, scope: !399, inlinedAt: !736)
!760 = !DILocation(line: 25, column: 13, scope: !399, inlinedAt: !736)
!761 = !DILocation(line: 25, column: 18, scope: !399, inlinedAt: !736)
!762 = !DILocation(line: 26, column: 10, scope: !399, inlinedAt: !736)
!763 = !DILocation(line: 26, column: 25, scope: !399, inlinedAt: !736)
!764 = !DILocation(line: 26, column: 23, scope: !399, inlinedAt: !736)
!765 = !DILocation(line: 26, column: 34, scope: !399, inlinedAt: !736)
!766 = !DILocation(line: 26, column: 7, scope: !399, inlinedAt: !736)
!767 = !DILocation(line: 30, column: 33, scope: !379, inlinedAt: !736)
!768 = !DILocation(line: 30, column: 37, scope: !379, inlinedAt: !736)
!769 = !DILocation(line: 214, column: 17, scope: !725, inlinedAt: !731)
!770 = !DILocation(line: 214, column: 39, scope: !725, inlinedAt: !731)
!771 = !DILocation(line: 214, column: 30, scope: !725, inlinedAt: !731)
!772 = !DILocation(line: 214, column: 28, scope: !725, inlinedAt: !731)
!773 = !DILocation(line: 214, column: 15, scope: !725, inlinedAt: !731)
!774 = !DILocation(line: 215, column: 24, scope: !725, inlinedAt: !731)
!775 = !DILocation(line: 215, column: 46, scope: !725, inlinedAt: !731)
!776 = !DILocation(line: 215, column: 11, scope: !725, inlinedAt: !731)
!777 = !DILocation(line: 215, column: 15, scope: !725, inlinedAt: !731)
!778 = !DILocation(line: 898, column: 5, scope: !732)
!779 = !DILocalVariable(name: "s", arg: 1, scope: !780, file: !2, line: 227, type: !66)
!780 = distinct !DISubprogram(name: "riemann_zeta_minus1_large_s", scope: !2, file: !2, line: 227, type: !354, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !781)
!781 = !{!779, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!782 = !DILocalVariable(name: "result", arg: 2, scope: !780, file: !2, line: 227, type: !158)
!783 = !DILocalVariable(name: "a", scope: !780, file: !2, line: 229, type: !66)
!784 = !DILocalVariable(name: "b", scope: !780, file: !2, line: 230, type: !66)
!785 = !DILocalVariable(name: "c", scope: !780, file: !2, line: 231, type: !66)
!786 = !DILocalVariable(name: "d", scope: !780, file: !2, line: 232, type: !66)
!787 = !DILocalVariable(name: "e", scope: !780, file: !2, line: 233, type: !66)
!788 = !DILocalVariable(name: "f", scope: !780, file: !2, line: 234, type: !66)
!789 = !DILocalVariable(name: "t1", scope: !780, file: !2, line: 235, type: !66)
!790 = !DILocalVariable(name: "t2", scope: !780, file: !2, line: 236, type: !66)
!791 = !DILocalVariable(name: "numt", scope: !780, file: !2, line: 248, type: !66)
!792 = !DILocalVariable(name: "zeta", scope: !780, file: !2, line: 249, type: !66)
!793 = !DILocation(line: 0, scope: !780, inlinedAt: !794)
!794 = distinct !DILocation(line: 902, column: 12, scope: !795)
!795 = distinct !DILexicalBlock(scope: !722, file: !2, line: 901, column: 3)
!796 = !DILocation(line: 229, column: 23, scope: !780, inlinedAt: !794)
!797 = !DILocation(line: 229, column: 14, scope: !780, inlinedAt: !794)
!798 = !DILocation(line: 230, column: 14, scope: !780, inlinedAt: !794)
!799 = !DILocation(line: 231, column: 14, scope: !780, inlinedAt: !794)
!800 = !DILocation(line: 232, column: 14, scope: !780, inlinedAt: !794)
!801 = !DILocation(line: 233, column: 14, scope: !780, inlinedAt: !794)
!802 = !DILocation(line: 234, column: 14, scope: !780, inlinedAt: !794)
!803 = !DILocation(line: 235, column: 17, scope: !780, inlinedAt: !794)
!804 = !DILocation(line: 235, column: 21, scope: !780, inlinedAt: !794)
!805 = !DILocation(line: 235, column: 25, scope: !780, inlinedAt: !794)
!806 = !DILocation(line: 235, column: 29, scope: !780, inlinedAt: !794)
!807 = !DILocation(line: 235, column: 33, scope: !780, inlinedAt: !794)
!808 = !DILocation(line: 236, column: 19, scope: !780, inlinedAt: !794)
!809 = !DILocation(line: 236, column: 21, scope: !780, inlinedAt: !794)
!810 = !DILocation(line: 236, column: 23, scope: !780, inlinedAt: !794)
!811 = !DILocation(line: 236, column: 25, scope: !780, inlinedAt: !794)
!812 = !DILocation(line: 236, column: 16, scope: !780, inlinedAt: !794)
!813 = !DILocation(line: 236, column: 35, scope: !780, inlinedAt: !794)
!814 = !DILocation(line: 236, column: 37, scope: !780, inlinedAt: !794)
!815 = !DILocation(line: 236, column: 39, scope: !780, inlinedAt: !794)
!816 = !DILocation(line: 236, column: 32, scope: !780, inlinedAt: !794)
!817 = !DILocation(line: 236, column: 29, scope: !780, inlinedAt: !794)
!818 = !DILocation(line: 236, column: 49, scope: !780, inlinedAt: !794)
!819 = !DILocation(line: 236, column: 51, scope: !780, inlinedAt: !794)
!820 = !DILocation(line: 236, column: 46, scope: !780, inlinedAt: !794)
!821 = !DILocation(line: 236, column: 43, scope: !780, inlinedAt: !794)
!822 = !DILocation(line: 236, column: 61, scope: !780, inlinedAt: !794)
!823 = !DILocation(line: 236, column: 58, scope: !780, inlinedAt: !794)
!824 = !DILocation(line: 236, column: 55, scope: !780, inlinedAt: !794)
!825 = !DILocation(line: 236, column: 68, scope: !780, inlinedAt: !794)
!826 = !DILocation(line: 236, column: 65, scope: !780, inlinedAt: !794)
!827 = !DILocation(line: 248, column: 20, scope: !780, inlinedAt: !794)
!828 = !DILocation(line: 249, column: 26, scope: !780, inlinedAt: !794)
!829 = !DILocation(line: 249, column: 34, scope: !780, inlinedAt: !794)
!830 = !DILocation(line: 249, column: 29, scope: !780, inlinedAt: !794)
!831 = !DILocation(line: 249, column: 42, scope: !780, inlinedAt: !794)
!832 = !DILocation(line: 249, column: 37, scope: !780, inlinedAt: !794)
!833 = !DILocation(line: 249, column: 50, scope: !780, inlinedAt: !794)
!834 = !DILocation(line: 249, column: 45, scope: !780, inlinedAt: !794)
!835 = !DILocation(line: 249, column: 58, scope: !780, inlinedAt: !794)
!836 = !DILocation(line: 249, column: 53, scope: !780, inlinedAt: !794)
!837 = !DILocation(line: 249, column: 66, scope: !780, inlinedAt: !794)
!838 = !DILocation(line: 249, column: 61, scope: !780, inlinedAt: !794)
!839 = !DILocation(line: 249, column: 20, scope: !780, inlinedAt: !794)
!840 = !DILocation(line: 250, column: 21, scope: !780, inlinedAt: !794)
!841 = !DILocation(line: 250, column: 15, scope: !780, inlinedAt: !794)
!842 = !DILocation(line: 251, column: 22, scope: !780, inlinedAt: !794)
!843 = !DILocation(line: 251, column: 25, scope: !780, inlinedAt: !794)
!844 = !DILocation(line: 251, column: 32, scope: !780, inlinedAt: !794)
!845 = !DILocation(line: 251, column: 37, scope: !780, inlinedAt: !794)
!846 = !DILocation(line: 251, column: 53, scope: !780, inlinedAt: !794)
!847 = !DILocation(line: 251, column: 11, scope: !780, inlinedAt: !794)
!848 = !DILocation(line: 251, column: 15, scope: !780, inlinedAt: !794)
!849 = !DILocation(line: 902, column: 5, scope: !795)
!850 = !DILocation(line: 0, scope: !712)
!851 = !DILocation(line: 904, column: 1, scope: !706)
!852 = distinct !DISubprogram(name: "gsl_sf_zetam1_int_e", scope: !2, file: !2, line: 907, type: !647, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !853)
!853 = !{!854, !855}
!854 = !DILocalVariable(name: "n", arg: 1, scope: !852, file: !2, line: 907, type: !183)
!855 = !DILocalVariable(name: "result", arg: 2, scope: !852, file: !2, line: 907, type: !158)
!856 = !DILocation(line: 0, scope: !852)
!857 = !DILocation(line: 909, column: 8, scope: !858)
!858 = distinct !DILexicalBlock(scope: !852, file: !2, line: 909, column: 6)
!859 = !DILocation(line: 909, column: 6, scope: !852)
!860 = !DILocation(line: 910, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !2, line: 910, column: 8)
!862 = distinct !DILexicalBlock(scope: !858, file: !2, line: 909, column: 13)
!863 = !DILocation(line: 910, column: 8, scope: !862)
!864 = !DILocation(line: 911, column: 19, scope: !865)
!865 = distinct !DILexicalBlock(scope: !861, file: !2, line: 910, column: 24)
!866 = !DILocation(line: 912, column: 15, scope: !865)
!867 = !DILocation(line: 912, column: 19, scope: !865)
!868 = !DILocation(line: 913, column: 7, scope: !865)
!869 = !DILocation(line: 915, column: 15, scope: !870)
!870 = distinct !DILexicalBlock(scope: !861, file: !2, line: 915, column: 13)
!871 = !DILocation(line: 915, column: 13, scope: !861)
!872 = !DILocation(line: 916, column: 40, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !2, line: 915, column: 39)
!874 = !DILocation(line: 916, column: 21, scope: !873)
!875 = !DILocation(line: 916, column: 50, scope: !873)
!876 = !DILocation(line: 916, column: 19, scope: !873)
!877 = !DILocation(line: 917, column: 45, scope: !873)
!878 = !DILocation(line: 917, column: 43, scope: !873)
!879 = !DILocation(line: 917, column: 15, scope: !873)
!880 = !DILocation(line: 917, column: 19, scope: !873)
!881 = !DILocation(line: 918, column: 7, scope: !873)
!882 = !DILocation(line: 923, column: 28, scope: !883)
!883 = distinct !DILexicalBlock(scope: !870, file: !2, line: 920, column: 10)
!884 = !DILocation(line: 923, column: 14, scope: !883)
!885 = !DILocation(line: 923, column: 7, scope: !883)
!886 = !DILocation(line: 926, column: 13, scope: !887)
!887 = distinct !DILexicalBlock(scope: !858, file: !2, line: 926, column: 11)
!888 = !DILocation(line: 926, column: 11, scope: !858)
!889 = !DILocation(line: 927, column: 5, scope: !890)
!890 = distinct !DILexicalBlock(scope: !891, file: !2, line: 927, column: 5)
!891 = distinct !DILexicalBlock(scope: !887, file: !2, line: 926, column: 18)
!892 = !DILocation(line: 927, column: 5, scope: !893)
!893 = distinct !DILexicalBlock(scope: !890, file: !2, line: 927, column: 5)
!894 = !DILocation(line: 929, column: 13, scope: !895)
!895 = distinct !DILexicalBlock(scope: !887, file: !2, line: 929, column: 11)
!896 = !DILocation(line: 929, column: 11, scope: !887)
!897 = !DILocation(line: 930, column: 19, scope: !898)
!898 = distinct !DILexicalBlock(scope: !895, file: !2, line: 929, column: 36)
!899 = !DILocation(line: 930, column: 17, scope: !898)
!900 = !DILocation(line: 931, column: 43, scope: !898)
!901 = !DILocation(line: 931, column: 41, scope: !898)
!902 = !DILocation(line: 931, column: 13, scope: !898)
!903 = !DILocation(line: 931, column: 17, scope: !898)
!904 = !DILocation(line: 932, column: 5, scope: !898)
!905 = !DILocation(line: 935, column: 28, scope: !906)
!906 = distinct !DILexicalBlock(scope: !895, file: !2, line: 934, column: 8)
!907 = !DILocation(line: 935, column: 12, scope: !906)
!908 = !DILocation(line: 935, column: 5, scope: !906)
!909 = !DILocation(line: 0, scope: !858)
!910 = !DILocation(line: 937, column: 1, scope: !852)
!911 = distinct !DISubprogram(name: "gsl_sf_eta_int_e", scope: !2, file: !2, line: 940, type: !912, scopeLine: 941, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{!28, !28, !158}
!914 = !{!915, !916, !917, !924, !925, !926, !927}
!915 = !DILocalVariable(name: "n", arg: 1, scope: !911, file: !2, line: 940, type: !28)
!916 = !DILocalVariable(name: "result", arg: 2, scope: !911, file: !2, line: 940, type: !158)
!917 = !DILocalVariable(name: "z", scope: !918, file: !2, line: 967, type: !159)
!918 = distinct !DILexicalBlock(scope: !919, file: !2, line: 966, column: 10)
!919 = distinct !DILexicalBlock(scope: !920, file: !2, line: 961, column: 13)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 955, column: 8)
!921 = distinct !DILexicalBlock(scope: !922, file: !2, line: 952, column: 8)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 947, column: 11)
!923 = distinct !DILexicalBlock(scope: !911, file: !2, line: 942, column: 6)
!924 = !DILocalVariable(name: "p", scope: !918, file: !2, line: 968, type: !159)
!925 = !DILocalVariable(name: "stat_z", scope: !918, file: !2, line: 969, type: !28)
!926 = !DILocalVariable(name: "stat_p", scope: !918, file: !2, line: 970, type: !28)
!927 = !DILocalVariable(name: "stat_m", scope: !918, file: !2, line: 971, type: !28)
!928 = distinct !DIAssignID()
!929 = !DILocation(line: 0, scope: !918)
!930 = distinct !DIAssignID()
!931 = !DILocation(line: 0, scope: !911)
!932 = !DILocation(line: 942, column: 8, scope: !923)
!933 = !DILocation(line: 942, column: 6, scope: !911)
!934 = !DILocation(line: 943, column: 17, scope: !935)
!935 = distinct !DILexicalBlock(scope: !923, file: !2, line: 942, column: 30)
!936 = !DILocation(line: 944, column: 13, scope: !935)
!937 = !DILocation(line: 944, column: 17, scope: !935)
!938 = !DILocation(line: 945, column: 5, scope: !935)
!939 = !DILocation(line: 947, column: 13, scope: !922)
!940 = !DILocation(line: 947, column: 11, scope: !923)
!941 = !DILocation(line: 948, column: 19, scope: !942)
!942 = distinct !DILexicalBlock(scope: !922, file: !2, line: 947, column: 19)
!943 = !DILocation(line: 948, column: 17, scope: !942)
!944 = !DILocation(line: 949, column: 43, scope: !942)
!945 = !DILocation(line: 949, column: 41, scope: !942)
!946 = !DILocation(line: 949, column: 13, scope: !942)
!947 = !DILocation(line: 949, column: 17, scope: !942)
!948 = !DILocation(line: 950, column: 5, scope: !942)
!949 = !DILocation(line: 955, column: 9, scope: !920)
!950 = !DILocation(line: 955, column: 8, scope: !921)
!951 = !DILocation(line: 958, column: 19, scope: !952)
!952 = distinct !DILexicalBlock(scope: !920, file: !2, line: 955, column: 24)
!953 = !DILocation(line: 959, column: 7, scope: !952)
!954 = !DILocation(line: 961, column: 15, scope: !919)
!955 = !DILocation(line: 961, column: 13, scope: !920)
!956 = !DILocation(line: 962, column: 39, scope: !957)
!957 = distinct !DILexicalBlock(scope: !919, file: !2, line: 961, column: 38)
!958 = !DILocation(line: 962, column: 21, scope: !957)
!959 = !DILocation(line: 962, column: 19, scope: !957)
!960 = !DILocation(line: 963, column: 45, scope: !957)
!961 = !DILocation(line: 963, column: 43, scope: !957)
!962 = !DILocation(line: 963, column: 15, scope: !957)
!963 = !DILocation(line: 963, column: 19, scope: !957)
!964 = !DILocation(line: 964, column: 7, scope: !957)
!965 = !DILocation(line: 967, column: 7, scope: !918)
!966 = !DILocation(line: 968, column: 7, scope: !918)
!967 = !DILocation(line: 0, scope: !646, inlinedAt: !968)
!968 = distinct !DILocation(line: 969, column: 20, scope: !918)
!969 = !DILocation(line: 869, column: 28, scope: !676, inlinedAt: !968)
!970 = !DILocation(line: 869, column: 14, scope: !676, inlinedAt: !968)
!971 = !DILocation(line: 970, column: 37, scope: !918)
!972 = !DILocation(line: 970, column: 40, scope: !918)
!973 = !DILocation(line: 970, column: 20, scope: !918)
!974 = !DILocation(line: 971, column: 41, scope: !918)
!975 = !DILocation(line: 971, column: 38, scope: !918)
!976 = !DILocation(line: 971, column: 48, scope: !918)
!977 = !DILocation(line: 971, column: 20, scope: !918)
!978 = !DILocation(line: 972, column: 29, scope: !918)
!979 = !DILocation(line: 972, column: 33, scope: !918)
!980 = !DILocation(line: 972, column: 51, scope: !918)
!981 = !DILocation(line: 972, column: 22, scope: !918)
!982 = !DILocation(line: 972, column: 64, scope: !918)
!983 = !DILocation(line: 972, column: 77, scope: !918)
!984 = !DILocation(line: 972, column: 70, scope: !918)
!985 = !DILocation(line: 972, column: 68, scope: !918)
!986 = !DILocation(line: 972, column: 60, scope: !918)
!987 = !DILocation(line: 972, column: 15, scope: !918)
!988 = !DILocation(line: 973, column: 59, scope: !918)
!989 = !DILocation(line: 973, column: 46, scope: !918)
!990 = !DILocation(line: 973, column: 44, scope: !918)
!991 = !DILocation(line: 973, column: 19, scope: !918)
!992 = !DILocation(line: 974, column: 14, scope: !918)
!993 = !DILocation(line: 975, column: 5, scope: !919)
!994 = !DILocation(line: 0, scope: !923)
!995 = !DILocation(line: 977, column: 1, scope: !911)
!996 = !DISubprogram(name: "gsl_sf_exp_e", scope: !997, file: !997, line: 45, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!998 = !DISubprogram(name: "gsl_sf_multiply_e", scope: !999, file: !999, line: 46, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!999 = !DIFile(filename: "../gsl/gsl_sf_elementary.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "24579d359b4176c41b805fec4d3d9c1d")
!1000 = distinct !DISubprogram(name: "gsl_sf_eta_e", scope: !2, file: !2, line: 980, type: !317, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1001)
!1001 = !{!1002, !1003, !1004, !1008, !1009, !1010, !1011, !1012, !1013, !1015, !1016, !1017, !1018}
!1002 = !DILocalVariable(name: "s", arg: 1, scope: !1000, file: !2, line: 980, type: !157)
!1003 = !DILocalVariable(name: "result", arg: 2, scope: !1000, file: !2, line: 980, type: !158)
!1004 = !DILocalVariable(name: "del", scope: !1005, file: !2, line: 990, type: !66)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 989, column: 53)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 989, column: 11)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !2, line: 984, column: 6)
!1008 = !DILocalVariable(name: "c0", scope: !1005, file: !2, line: 991, type: !66)
!1009 = !DILocalVariable(name: "c1", scope: !1005, file: !2, line: 992, type: !66)
!1010 = !DILocalVariable(name: "c2", scope: !1005, file: !2, line: 993, type: !66)
!1011 = !DILocalVariable(name: "c3", scope: !1005, file: !2, line: 994, type: !66)
!1012 = !DILocalVariable(name: "c4", scope: !1005, file: !2, line: 995, type: !66)
!1013 = !DILocalVariable(name: "z", scope: !1014, file: !2, line: 1001, type: !159)
!1014 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 1000, column: 8)
!1015 = !DILocalVariable(name: "p", scope: !1014, file: !2, line: 1002, type: !159)
!1016 = !DILocalVariable(name: "stat_z", scope: !1014, file: !2, line: 1003, type: !28)
!1017 = !DILocalVariable(name: "stat_p", scope: !1014, file: !2, line: 1004, type: !28)
!1018 = !DILocalVariable(name: "stat_m", scope: !1014, file: !2, line: 1005, type: !28)
!1019 = distinct !DIAssignID()
!1020 = !DILocation(line: 0, scope: !1014)
!1021 = distinct !DIAssignID()
!1022 = !DILocation(line: 0, scope: !1000)
!1023 = !DILocation(line: 984, column: 8, scope: !1007)
!1024 = !DILocation(line: 984, column: 6, scope: !1000)
!1025 = !DILocation(line: 985, column: 17, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 984, column: 17)
!1027 = !DILocation(line: 986, column: 13, scope: !1026)
!1028 = !DILocation(line: 986, column: 17, scope: !1026)
!1029 = !DILocation(line: 987, column: 5, scope: !1026)
!1030 = !DILocation(line: 989, column: 17, scope: !1006)
!1031 = !DILocation(line: 989, column: 11, scope: !1006)
!1032 = !DILocation(line: 989, column: 23, scope: !1006)
!1033 = !DILocation(line: 989, column: 11, scope: !1007)
!1034 = !DILocation(line: 0, scope: !1005)
!1035 = !DILocation(line: 996, column: 64, scope: !1005)
!1036 = !DILocation(line: 996, column: 58, scope: !1005)
!1037 = !DILocation(line: 996, column: 52, scope: !1005)
!1038 = !DILocation(line: 996, column: 46, scope: !1005)
!1039 = !DILocation(line: 996, column: 40, scope: !1005)
!1040 = !DILocation(line: 996, column: 34, scope: !1005)
!1041 = !DILocation(line: 996, column: 28, scope: !1005)
!1042 = !DILocation(line: 996, column: 22, scope: !1005)
!1043 = !DILocation(line: 996, column: 17, scope: !1005)
!1044 = !DILocation(line: 997, column: 43, scope: !1005)
!1045 = !DILocation(line: 997, column: 41, scope: !1005)
!1046 = !DILocation(line: 997, column: 13, scope: !1005)
!1047 = !DILocation(line: 997, column: 17, scope: !1005)
!1048 = !DILocation(line: 1001, column: 5, scope: !1014)
!1049 = !DILocation(line: 1002, column: 5, scope: !1014)
!1050 = !DILocation(line: 1003, column: 18, scope: !1014)
!1051 = !DILocation(line: 1004, column: 35, scope: !1014)
!1052 = !DILocation(line: 1004, column: 38, scope: !1014)
!1053 = !DILocation(line: 1004, column: 18, scope: !1014)
!1054 = !DILocation(line: 1005, column: 42, scope: !1014)
!1055 = !DILocation(line: 1005, column: 39, scope: !1014)
!1056 = !DILocation(line: 1005, column: 49, scope: !1014)
!1057 = !DILocation(line: 1005, column: 18, scope: !1014)
!1058 = !DILocation(line: 1006, column: 27, scope: !1014)
!1059 = !DILocation(line: 1006, column: 31, scope: !1014)
!1060 = !DILocation(line: 1006, column: 49, scope: !1014)
!1061 = !DILocation(line: 1006, column: 20, scope: !1014)
!1062 = !DILocation(line: 1006, column: 62, scope: !1014)
!1063 = !DILocation(line: 1006, column: 75, scope: !1014)
!1064 = !DILocation(line: 1006, column: 68, scope: !1014)
!1065 = !DILocation(line: 1006, column: 66, scope: !1014)
!1066 = !DILocation(line: 1006, column: 58, scope: !1014)
!1067 = !DILocation(line: 1006, column: 13, scope: !1014)
!1068 = !DILocation(line: 1007, column: 57, scope: !1014)
!1069 = !DILocation(line: 1007, column: 44, scope: !1014)
!1070 = !DILocation(line: 1007, column: 42, scope: !1014)
!1071 = !DILocation(line: 1007, column: 17, scope: !1014)
!1072 = !DILocation(line: 1008, column: 12, scope: !1014)
!1073 = !DILocation(line: 1009, column: 3, scope: !1006)
!1074 = !DILocation(line: 0, scope: !1007)
!1075 = !DILocation(line: 1010, column: 1, scope: !1000)
!1076 = distinct !DISubprogram(name: "gsl_sf_zeta", scope: !2, file: !2, line: 1017, type: !1077, scopeLine: 1018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1079)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!66, !157}
!1079 = !{!1080, !1081, !1082}
!1080 = !DILocalVariable(name: "s", arg: 1, scope: !1076, file: !2, line: 1017, type: !157)
!1081 = !DILocalVariable(name: "result", scope: !1076, file: !2, line: 1019, type: !159)
!1082 = !DILocalVariable(name: "status", scope: !1076, file: !2, line: 1019, type: !28)
!1083 = distinct !DIAssignID()
!1084 = !DILocation(line: 0, scope: !1076)
!1085 = !DILocation(line: 1019, column: 3, scope: !1076)
!1086 = !DILocation(line: 1019, column: 3, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 1019, column: 3)
!1088 = !DILocation(line: 1019, column: 3, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 1019, column: 3)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 1019, column: 3)
!1091 = !DILocation(line: 1020, column: 1, scope: !1076)
!1092 = distinct !DISubprogram(name: "gsl_sf_hzeta", scope: !2, file: !2, line: 1022, type: !1093, scopeLine: 1023, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1095)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!66, !157, !157}
!1095 = !{!1096, !1097, !1098, !1099}
!1096 = !DILocalVariable(name: "s", arg: 1, scope: !1092, file: !2, line: 1022, type: !157)
!1097 = !DILocalVariable(name: "a", arg: 2, scope: !1092, file: !2, line: 1022, type: !157)
!1098 = !DILocalVariable(name: "result", scope: !1092, file: !2, line: 1024, type: !159)
!1099 = !DILocalVariable(name: "status", scope: !1092, file: !2, line: 1024, type: !28)
!1100 = distinct !DIAssignID()
!1101 = !DILocation(line: 0, scope: !1092)
!1102 = !DILocation(line: 1024, column: 3, scope: !1092)
!1103 = !{i32 0, i32 17}
!1104 = !DILocation(line: 1024, column: 3, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1092, file: !2, line: 1024, column: 3)
!1106 = !DILocation(line: 1024, column: 3, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 1024, column: 3)
!1108 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 1024, column: 3)
!1109 = !DILocation(line: 1025, column: 1, scope: !1092)
!1110 = distinct !DISubprogram(name: "gsl_sf_zeta_int", scope: !2, file: !2, line: 1027, type: !1111, scopeLine: 1028, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!66, !183}
!1113 = !{!1114, !1115, !1116}
!1114 = !DILocalVariable(name: "s", arg: 1, scope: !1110, file: !2, line: 1027, type: !183)
!1115 = !DILocalVariable(name: "result", scope: !1110, file: !2, line: 1029, type: !159)
!1116 = !DILocalVariable(name: "status", scope: !1110, file: !2, line: 1029, type: !28)
!1117 = distinct !DIAssignID()
!1118 = !DILocation(line: 0, scope: !1110)
!1119 = !DILocation(line: 1029, column: 3, scope: !1110)
!1120 = !DILocation(line: 0, scope: !646, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 1029, column: 3, scope: !1110)
!1122 = !DILocation(line: 857, column: 8, scope: !654, inlinedAt: !1121)
!1123 = !DILocation(line: 857, column: 6, scope: !646, inlinedAt: !1121)
!1124 = !DILocation(line: 858, column: 9, scope: !657, inlinedAt: !1121)
!1125 = !DILocation(line: 858, column: 8, scope: !658, inlinedAt: !1121)
!1126 = !DILocation(line: 860, column: 19, scope: !661, inlinedAt: !1121)
!1127 = distinct !DIAssignID()
!1128 = !DILocation(line: 861, column: 7, scope: !661, inlinedAt: !1121)
!1129 = !DILocation(line: 863, column: 15, scope: !664, inlinedAt: !1121)
!1130 = !DILocation(line: 863, column: 13, scope: !657, inlinedAt: !1121)
!1131 = !DILocation(line: 864, column: 40, scope: !667, inlinedAt: !1121)
!1132 = !DILocation(line: 864, column: 21, scope: !667, inlinedAt: !1121)
!1133 = !DILocation(line: 864, column: 19, scope: !667, inlinedAt: !1121)
!1134 = distinct !DIAssignID()
!1135 = distinct !DIAssignID()
!1136 = !DILocation(line: 866, column: 7, scope: !667, inlinedAt: !1121)
!1137 = !DILocation(line: 872, column: 13, scope: !680, inlinedAt: !1121)
!1138 = !DILocation(line: 872, column: 11, scope: !654, inlinedAt: !1121)
!1139 = !DILocation(line: 873, column: 5, scope: !683, inlinedAt: !1121)
!1140 = distinct !DIAssignID()
!1141 = distinct !DIAssignID()
!1142 = !DILocation(line: 873, column: 5, scope: !686, inlinedAt: !1121)
!1143 = !DILocation(line: 875, column: 13, scope: !688, inlinedAt: !1121)
!1144 = !DILocation(line: 875, column: 11, scope: !680, inlinedAt: !1121)
!1145 = !DILocation(line: 876, column: 25, scope: !691, inlinedAt: !1121)
!1146 = !DILocation(line: 876, column: 23, scope: !691, inlinedAt: !1121)
!1147 = !DILocation(line: 876, column: 17, scope: !691, inlinedAt: !1121)
!1148 = distinct !DIAssignID()
!1149 = distinct !DIAssignID()
!1150 = !DILocation(line: 878, column: 5, scope: !691, inlinedAt: !1121)
!1151 = !DILocation(line: 881, column: 17, scope: !700, inlinedAt: !1121)
!1152 = distinct !DIAssignID()
!1153 = distinct !DIAssignID()
!1154 = !DILocation(line: 883, column: 5, scope: !700, inlinedAt: !1121)
!1155 = !DILocation(line: 869, column: 28, scope: !676, inlinedAt: !1121)
!1156 = !DILocation(line: 869, column: 14, scope: !676, inlinedAt: !1121)
!1157 = !DILocation(line: 1029, column: 3, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1110, file: !2, line: 1029, column: 3)
!1159 = !DILocation(line: 1029, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !2, line: 1029, column: 3)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 1029, column: 3)
!1162 = !DILocation(line: 1030, column: 1, scope: !1110)
!1163 = distinct !DISubprogram(name: "gsl_sf_zetam1", scope: !2, file: !2, line: 1032, type: !1077, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DILocalVariable(name: "s", arg: 1, scope: !1163, file: !2, line: 1032, type: !157)
!1166 = !DILocalVariable(name: "result", scope: !1163, file: !2, line: 1034, type: !159)
!1167 = !DILocalVariable(name: "status", scope: !1163, file: !2, line: 1034, type: !28)
!1168 = distinct !DIAssignID()
!1169 = !DILocation(line: 0, scope: !1163)
!1170 = !DILocation(line: 1034, column: 3, scope: !1163)
!1171 = !DILocation(line: 1034, column: 3, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 1034, column: 3)
!1173 = !DILocation(line: 1034, column: 3, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 1034, column: 3)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !2, line: 1034, column: 3)
!1176 = !DILocation(line: 1035, column: 1, scope: !1163)
!1177 = distinct !DISubprogram(name: "gsl_sf_zetam1_int", scope: !2, file: !2, line: 1037, type: !1111, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1178)
!1178 = !{!1179, !1180, !1181}
!1179 = !DILocalVariable(name: "s", arg: 1, scope: !1177, file: !2, line: 1037, type: !183)
!1180 = !DILocalVariable(name: "result", scope: !1177, file: !2, line: 1039, type: !159)
!1181 = !DILocalVariable(name: "status", scope: !1177, file: !2, line: 1039, type: !28)
!1182 = distinct !DIAssignID()
!1183 = !DILocation(line: 0, scope: !1177)
!1184 = !DILocation(line: 1039, column: 3, scope: !1177)
!1185 = !DILocation(line: 1039, column: 3, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 1039, column: 3)
!1187 = !DILocation(line: 1039, column: 3, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 1039, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 1039, column: 3)
!1190 = !DILocation(line: 1040, column: 1, scope: !1177)
!1191 = distinct !DISubprogram(name: "gsl_sf_eta_int", scope: !2, file: !2, line: 1042, type: !1111, scopeLine: 1043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DILocalVariable(name: "s", arg: 1, scope: !1191, file: !2, line: 1042, type: !183)
!1194 = !DILocalVariable(name: "result", scope: !1191, file: !2, line: 1044, type: !159)
!1195 = !DILocalVariable(name: "status", scope: !1191, file: !2, line: 1044, type: !28)
!1196 = distinct !DIAssignID()
!1197 = !DILocation(line: 0, scope: !1191)
!1198 = !DILocation(line: 1044, column: 3, scope: !1191)
!1199 = !DILocation(line: 1044, column: 3, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 1044, column: 3)
!1201 = !DILocation(line: 1044, column: 3, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 1044, column: 3)
!1203 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 1044, column: 3)
!1204 = !DILocation(line: 1045, column: 1, scope: !1191)
!1205 = distinct !DISubprogram(name: "gsl_sf_eta", scope: !2, file: !2, line: 1047, type: !1077, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1206)
!1206 = !{!1207, !1208, !1209}
!1207 = !DILocalVariable(name: "s", arg: 1, scope: !1205, file: !2, line: 1047, type: !157)
!1208 = !DILocalVariable(name: "result", scope: !1205, file: !2, line: 1049, type: !159)
!1209 = !DILocalVariable(name: "status", scope: !1205, file: !2, line: 1049, type: !28)
!1210 = distinct !DIAssignID()
!1211 = !DILocation(line: 0, scope: !1205)
!1212 = !DILocation(line: 1049, column: 3, scope: !1205)
!1213 = !DILocation(line: 1049, column: 3, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 1049, column: 3)
!1215 = !DILocation(line: 1049, column: 3, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 1049, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 1049, column: 3)
!1218 = !DILocation(line: 1050, column: 1, scope: !1205)
!1219 = !DISubprogram(name: "exp", scope: !310, file: !310, line: 95, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
