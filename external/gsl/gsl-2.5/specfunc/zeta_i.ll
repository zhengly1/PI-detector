; ModuleID = 'zeta.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 719, i32 noundef 1) #6, !dbg !207
  br label %87, !dbg !207

9:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata double 5.400000e+01, metadata !169, metadata !DIExpression()), !dbg !209
  %10 = fneg double %0, !dbg !210
  %handler_result32 = call double @callHandler(i32 12, double %1, double %1), !dbg !211
  %11 = fmul double %handler_result32, %10, !dbg !211
  tail call void @llvm.dbg.value(metadata double %11, metadata !172, metadata !DIExpression()), !dbg !209
  %12 = fcmp olt double %11, 0xC0861B2BDD7ABCD2, !dbg !212
  br i1 %12, label %13, label %15, !dbg !213

13:                                               ; preds = %9
  store double 0.000000e+00, ptr %2, align 8, !dbg !214, !tbaa !201
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !214
  store double 0x10000000000000, ptr %14, align 8, !dbg !214, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 726, i32 noundef 15) #6, !dbg !217
  br label %87, !dbg !217

15:                                               ; preds = %9
  %16 = fcmp ogt double %11, 0x40862642FEFA39EF, !dbg !219
  br i1 %16, label %17, label %19, !dbg !220

17:                                               ; preds = %15
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !221, !tbaa !201
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !221
  store double 0x7FF0000000000000, ptr %18, align 8, !dbg !221, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 729, i32 noundef 16) #6, !dbg !224
  br label %87, !dbg !224

19:                                               ; preds = %15
  %20 = fcmp ogt double %0, 5.400000e+01, !dbg !226
  %21 = fcmp olt double %1, 1.000000e+00
  %22 = and i1 %20, %21, !dbg !227
  br i1 %22, label %27, label %23, !dbg !227

23:                                               ; preds = %19
  %24 = fcmp ogt double %0, 2.700000e+01, !dbg !228
  %25 = fcmp olt double %1, 2.500000e-01
  %26 = and i1 %24, %25, !dbg !229
  br i1 %26, label %27, label %32, !dbg !229

27:                                               ; preds = %23, %19
  %28 = tail call double @pow(double noundef %1, double noundef %10) #6, !dbg !230
  store double %28, ptr %2, align 8, !dbg !232, !tbaa !201
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !233
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !234
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !235
  store double %30, ptr %31, align 8, !dbg !236, !tbaa !206
  br label %87, !dbg !237

32:                                               ; preds = %23
  %33 = and i1 %24, %21, !dbg !238
  br i1 %33, label %34, label %46, !dbg !238

34:                                               ; preds = %32
  %35 = tail call double @pow(double noundef %1, double noundef %10) #6, !dbg !239
  tail call void @llvm.dbg.value(metadata double %35, metadata !173, metadata !DIExpression()), !dbg !240
  %handler_result = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !241
  %36 = fdiv double %1, %handler_result, !dbg !241
  %37 = tail call double @pow(double noundef %36, double noundef %0) #6, !dbg !242
  tail call void @llvm.dbg.value(metadata double %37, metadata !179, metadata !DIExpression()), !dbg !240
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 2.000000e+00), !dbg !243
  %38 = fdiv double %1, %handler_result1, !dbg !243
  %39 = tail call double @pow(double noundef %38, double noundef %0) #6, !dbg !244
  tail call void @llvm.dbg.value(metadata double %39, metadata !180, metadata !DIExpression()), !dbg !240
  %handler_result2 = call double @fAddHandlerDouble(double %37, double 1.000000e+00), !dbg !245
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %39), !dbg !246
  %40 = fmul double %35, %handler_result3, !dbg !246
  store double %40, ptr %2, align 8, !dbg !247, !tbaa !201
  %41 = fmul double %0, 5.000000e-01, !dbg !248
  %handler_result4 = call double @fAddHandlerDouble(double %41, double 2.000000e+00), !dbg !249
  %42 = fmul double %handler_result4, 0x3CB0000000000000, !dbg !249
  %43 = tail call double @llvm.fabs.f64(double %40), !dbg !250
  %44 = fmul double %42, %43, !dbg !251
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !252
  store double %44, ptr %45, align 8, !dbg !253, !tbaa !206
  br label %87

46:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata i32 12, metadata !181, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 10, metadata !184, metadata !DIExpression()), !dbg !254
  %handler_result5 = call double @fAddHandlerDouble(double %1, double 1.000000e+01), !dbg !255
  %47 = tail call double @pow(double noundef %handler_result5, double noundef %10) #6, !dbg !255
  tail call void @llvm.dbg.value(metadata double %47, metadata !187, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %0, metadata !188, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %60, metadata !189, metadata !DIExpression()), !dbg !254
  %handler_result6 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !256
  %48 = fdiv double %handler_result5, %handler_result6, !dbg !256
  %handler_result7 = call double @fAddHandlerDouble(double %48, double 5.000000e-01), !dbg !257
  %49 = fmul double %handler_result7, %47, !dbg !257
  tail call void @llvm.dbg.value(metadata double %49, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %49, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result8 = call double @fAddHandlerDouble(double %1, double 0.000000e+00), !dbg !258
  %50 = tail call double @pow(double noundef %handler_result8, double noundef %10) #6, !dbg !258
  %handler_result9 = call double @fAddHandlerDouble(double %49, double %50), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 1, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 1, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result10 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !258
  %51 = tail call double @pow(double noundef %handler_result10, double noundef %10) #6, !dbg !258
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result9, double %51), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 2, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 2, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result12 = call double @fAddHandlerDouble(double %1, double 2.000000e+00), !dbg !258
  %52 = tail call double @pow(double noundef %handler_result12, double noundef %10) #6, !dbg !258
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result11, double %52), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 3, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 3, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result14 = call double @fAddHandlerDouble(double %1, double 3.000000e+00), !dbg !258
  %53 = tail call double @pow(double noundef %handler_result14, double noundef %10) #6, !dbg !258
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result13, double %53), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 4, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 4, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result16 = call double @fAddHandlerDouble(double %1, double 4.000000e+00), !dbg !258
  %54 = tail call double @pow(double noundef %handler_result16, double noundef %10) #6, !dbg !258
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result15, double %54), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 5, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 5, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result18 = call double @fAddHandlerDouble(double %1, double 5.000000e+00), !dbg !258
  %55 = tail call double @pow(double noundef %handler_result18, double noundef %10) #6, !dbg !258
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result17, double %55), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 6, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 6, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result20 = call double @fAddHandlerDouble(double %1, double 6.000000e+00), !dbg !258
  %56 = tail call double @pow(double noundef %handler_result20, double noundef %10) #6, !dbg !258
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result19, double %56), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 7, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 7, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result22 = call double @fAddHandlerDouble(double %1, double 7.000000e+00), !dbg !258
  %57 = tail call double @pow(double noundef %handler_result22, double noundef %10) #6, !dbg !258
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result21, double %57), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 8, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 8, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result24 = call double @fAddHandlerDouble(double %1, double 8.000000e+00), !dbg !258
  %58 = tail call double @pow(double noundef %handler_result24, double noundef %10) #6, !dbg !258
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result23, double %58), !dbg !262
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 9, metadata !186, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 9, metadata !186, metadata !DIExpression()), !dbg !254
  %handler_result26 = call double @fAddHandlerDouble(double %1, double 9.000000e+00), !dbg !258
  %59 = tail call double @pow(double noundef %handler_result26, double noundef %10) #6, !dbg !258
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result25, double %59), !dbg !263
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 10, metadata !186, metadata !DIExpression()), !dbg !254
  %60 = fdiv double %47, %handler_result5, !dbg !263
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %60, metadata !189, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %0, metadata !188, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i32 0, metadata !185, metadata !DIExpression()), !dbg !254
  %61 = fmul double %handler_result5, %handler_result5
  br label %62, !dbg !264

62:                                               ; preds = %75, %46
  %63 = phi i64 [ 0, %46 ], [ %67, %75 ]
  %64 = phi double [ %handler_result27, %46 ], [ %handler_result28, %75 ]
  %65 = phi double [ %60, %46 ], [ %81, %75 ]
  %66 = phi double [ %0, %46 ], [ %80, %75 ]
  tail call void @llvm.dbg.value(metadata double %64, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %65, metadata !189, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %66, metadata !188, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !185, metadata !DIExpression()), !dbg !254
  %67 = add nuw nsw i64 %63, 1, !dbg !265
  %68 = getelementptr inbounds [15 x double], ptr @hzeta_c, i64 0, i64 %67, !dbg !266
  %69 = load double, ptr %68, align 8, !dbg !266, !tbaa !267
  %70 = fmul double %66, %69, !dbg !268
  %71 = fmul double %65, %70, !dbg !269
  tail call void @llvm.dbg.value(metadata double %71, metadata !191, metadata !DIExpression()), !dbg !270
  %handler_result28 = call double @fAddHandlerDouble(double %64, double %71), !dbg !271
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !190, metadata !DIExpression()), !dbg !254
  %72 = fdiv double %71, %handler_result28, !dbg !271
  %73 = tail call double @llvm.fabs.f64(double %72), !dbg !273
  %74 = fcmp olt double %73, 0x3CA0000000000000, !dbg !274
  br i1 %74, label %83, label %75, !dbg !275

75:                                               ; preds = %62
  %76 = trunc i64 %63 to i32, !dbg !276
  %77 = shl i32 %76, 1, !dbg !276
  %78 = sitofp i32 %77 to double, !dbg !276
  %handler_result29 = call double @fAddHandlerDouble(double %78, double %0), !dbg !277
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 1.000000e+00), !dbg !278
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result29, double 2.000000e+00), !dbg !279
  %79 = fmul double %handler_result30, %handler_result31, !dbg !279
  %80 = fmul double %66, %79, !dbg !280
  tail call void @llvm.dbg.value(metadata double %80, metadata !188, metadata !DIExpression()), !dbg !254
  %81 = fdiv double %65, %61, !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !190, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata double %81, metadata !189, metadata !DIExpression()), !dbg !254
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !185, metadata !DIExpression()), !dbg !254
  %82 = icmp eq i64 %67, 13, !dbg !282
  br i1 %82, label %83, label %62, !dbg !264, !llvm.loop !283

83:                                               ; preds = %75, %62
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !190, metadata !DIExpression()), !dbg !254
  store double %handler_result28, ptr %2, align 8, !dbg !286, !tbaa !201
  %84 = tail call double @llvm.fabs.f64(double %handler_result28), !dbg !287
  %85 = fmul double %84, 0x3CFA000000000000, !dbg !288
  %86 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !289
  store double %85, ptr %86, align 8, !dbg !290, !tbaa !206
  br label %87

87:                                               ; preds = %83, %34, %27, %17, %13, %7
  %88 = phi i32 [ 1, %7 ], [ 15, %13 ], [ 16, %17 ], [ 0, %27 ], [ 0, %34 ], [ 0, %83 ], !dbg !291
  ret i32 %88, !dbg !292
}

declare !dbg !293 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !298 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !302 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_zeta_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !305 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !329
  call void @llvm.dbg.assign(metadata i1 undef, metadata !327, metadata !DIExpression(), metadata !329, metadata ptr %3, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %0, metadata !309, metadata !DIExpression()), !dbg !331
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !310, metadata !DIExpression()), !dbg !331
  %4 = fcmp oeq double %0, 1.000000e+00, !dbg !332
  br i1 %4, label %5, label %7, !dbg !333

5:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !334, !tbaa !201
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !334
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !334, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 781, i32 noundef 1) #6, !dbg !337
  br label %169, !dbg !337

7:                                                ; preds = %2
  %8 = fcmp ult double %0, 0.000000e+00, !dbg !339
  br i1 %8, label %84, label %9, !dbg !340

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata double %0, metadata !341, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata ptr %1, metadata !346, metadata !DIExpression()), !dbg !359
  %10 = fcmp olt double %0, 1.000000e+00, !dbg !362
  br i1 %10, label %11, label %39, !dbg !363

11:                                               ; preds = %9
  %12 = fmul double %0, 2.000000e+00, !dbg !364
  %handler_result = call double @fAddHandlerDouble(double %12, double -1.000000e+00), !dbg !365
  call void @llvm.dbg.value(metadata !389, metadata !373, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double %handler_result, metadata !374, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata ptr undef, metadata !375, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !378, metadata !DIExpression()), !dbg !390
  %13 = fmul double %handler_result, 2.000000e+00, !dbg !365
  %handler_result1 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !391
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !392
  %14 = fmul double %handler_result2, 5.000000e-01, !dbg !392
  call void @llvm.dbg.value(metadata double %14, metadata !379, metadata !DIExpression()), !dbg !390
  %15 = fmul double %14, 2.000000e+00, !dbg !393
  call void @llvm.dbg.value(metadata double %15, metadata !380, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !381, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata i32 13, metadata !376, metadata !DIExpression()), !dbg !390
  br label %16, !dbg !394

16:                                               ; preds = %16, %11
  %17 = phi i64 [ 13, %11 ], [ %27, %16 ]
  %18 = phi double [ 0.000000e+00, %11 ], [ %handler_result4, %16 ]
  %19 = phi double [ 0.000000e+00, %11 ], [ %handler_result7, %16 ]
  %20 = phi double [ 0.000000e+00, %11 ], [ %18, %16 ]
  call void @llvm.dbg.value(metadata i64 %17, metadata !376, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double %18, metadata !377, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double %19, metadata !381, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double %20, metadata !378, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double %18, metadata !382, metadata !DIExpression()), !dbg !395
  %21 = fmul double %15, %18, !dbg !396
  %handler_result3 = call double @fSubHandlerDouble(double %21, double %20), !dbg !397
  %22 = getelementptr inbounds double, ptr @zeta_xlt1_data, i64 %17, !dbg !397
  %23 = load double, ptr %22, align 8, !dbg !397, !tbaa !267
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %23), !dbg !398
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !377, metadata !DIExpression()), !dbg !390
  %24 = tail call double @llvm.fabs.f64(double %21), !dbg !398
  %25 = tail call double @llvm.fabs.f64(double %20), !dbg !399
  %handler_result5 = call double @fAddHandlerDouble(double %24, double %25), !dbg !400
  %26 = tail call double @llvm.fabs.f64(double %23), !dbg !400
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %26), !dbg !401
  %handler_result7 = call double @fAddHandlerDouble(double %19, double %handler_result6), !dbg !402
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !381, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double %18, metadata !378, metadata !DIExpression()), !dbg !390
  %27 = add nsw i64 %17, -1, !dbg !402
  call void @llvm.dbg.value(metadata i64 %27, metadata !376, metadata !DIExpression()), !dbg !390
  %28 = icmp ugt i64 %17, 1, !dbg !403
  br i1 %28, label %16, label %29, !dbg !394, !llvm.loop !404

29:                                               ; preds = %16
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !386, metadata !DIExpression()), !dbg !406
  %30 = fmul double %14, %handler_result4, !dbg !407
  %handler_result8 = call double @fSubHandlerDouble(double %30, double %18), !dbg !408
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3FE7AED852FDCAE3), !dbg !409
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !377, metadata !DIExpression()), !dbg !390
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !409
  %32 = tail call double @llvm.fabs.f64(double %18), !dbg !410
  %handler_result10 = call double @fAddHandlerDouble(double %32, double %31), !dbg !411
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3FE7AED852FDCAE3), !dbg !412
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !413
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !381, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !347, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !414
  %33 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !413
  %handler_result13 = call double @fAddHandlerDouble(double %33, double 0x3BC082B84F83B91C), !dbg !415
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !347, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !414
  %handler_result14 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !416
  %34 = fdiv double %handler_result9, %handler_result14, !dbg !416
  store double %34, ptr %1, align 8, !dbg !417, !tbaa !201
  %35 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !418
  %36 = fdiv double %handler_result13, %35, !dbg !419
  %37 = tail call double @llvm.fabs.f64(double %34), !dbg !420
  %38 = fmul double %37, 0x3CB0000000000000, !dbg !421
  %handler_result15 = call double @fAddHandlerDouble(double %38, double %36)
  br label %81

39:                                               ; preds = %9
  %40 = fcmp ugt double %0, 2.000000e+01, !dbg !422
  br i1 %40, label %69, label %41, !dbg !423

41:                                               ; preds = %39
  %42 = fmul double %0, 2.000000e+00, !dbg !424
  %handler_result16 = call double @fAddHandlerDouble(double %42, double -2.100000e+01), !dbg !425
  %43 = fdiv double %handler_result16, 1.900000e+01, !dbg !425
  call void @llvm.dbg.value(metadata double %43, metadata !350, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.value(metadata !389, metadata !373, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %43, metadata !374, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata ptr undef, metadata !375, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !378, metadata !DIExpression()), !dbg !427
  %44 = fmul double %43, 2.000000e+00, !dbg !429
  %handler_result17 = call double @fAddHandlerDouble(double %44, double 1.000000e+00), !dbg !430
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double -1.000000e+00), !dbg !431
  %45 = fmul double %handler_result18, 5.000000e-01, !dbg !431
  call void @llvm.dbg.value(metadata double %45, metadata !379, metadata !DIExpression()), !dbg !427
  %46 = fmul double %45, 2.000000e+00, !dbg !432
  call void @llvm.dbg.value(metadata double %46, metadata !380, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !381, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata i32 29, metadata !376, metadata !DIExpression()), !dbg !427
  br label %47, !dbg !433

47:                                               ; preds = %47, %41
  %48 = phi i64 [ 29, %41 ], [ %58, %47 ]
  %49 = phi double [ 0.000000e+00, %41 ], [ %handler_result20, %47 ]
  %50 = phi double [ 0.000000e+00, %41 ], [ %handler_result23, %47 ]
  %51 = phi double [ 0.000000e+00, %41 ], [ %49, %47 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !376, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %49, metadata !377, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %50, metadata !381, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %51, metadata !378, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %49, metadata !382, metadata !DIExpression()), !dbg !434
  %52 = fmul double %46, %49, !dbg !435
  %handler_result19 = call double @fSubHandlerDouble(double %52, double %51), !dbg !436
  %53 = getelementptr inbounds double, ptr @zeta_xgt1_data, i64 %48, !dbg !436
  %54 = load double, ptr %53, align 8, !dbg !436, !tbaa !267
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %54), !dbg !437
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !377, metadata !DIExpression()), !dbg !427
  %55 = tail call double @llvm.fabs.f64(double %52), !dbg !437
  %56 = tail call double @llvm.fabs.f64(double %51), !dbg !438
  %handler_result21 = call double @fAddHandlerDouble(double %55, double %56), !dbg !439
  %57 = tail call double @llvm.fabs.f64(double %54), !dbg !439
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %57), !dbg !440
  %handler_result23 = call double @fAddHandlerDouble(double %50, double %handler_result22), !dbg !441
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !381, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %49, metadata !378, metadata !DIExpression()), !dbg !427
  %58 = add nsw i64 %48, -1, !dbg !441
  call void @llvm.dbg.value(metadata i64 %58, metadata !376, metadata !DIExpression()), !dbg !427
  %59 = icmp ugt i64 %48, 1, !dbg !442
  br i1 %59, label %47, label %60, !dbg !433, !llvm.loop !443

60:                                               ; preds = %47
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !386, metadata !DIExpression()), !dbg !445
  %61 = fmul double %45, %handler_result20, !dbg !446
  %handler_result24 = call double @fSubHandlerDouble(double %61, double %49), !dbg !447
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double 0x40236450627983A1), !dbg !448
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !377, metadata !DIExpression()), !dbg !427
  %62 = tail call double @llvm.fabs.f64(double %61), !dbg !448
  %63 = tail call double @llvm.fabs.f64(double %49), !dbg !449
  %handler_result26 = call double @fAddHandlerDouble(double %63, double %62), !dbg !450
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0x40236450627983A1), !dbg !451
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result23, double %handler_result27), !dbg !452
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !381, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !426
  %64 = fmul double %handler_result28, 0x3CB0000000000000, !dbg !452
  %handler_result29 = call double @fAddHandlerDouble(double %64, double 0x3C969E53D45F55DC), !dbg !453
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !353, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !426
  %handler_result30 = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !454
  %65 = fdiv double %handler_result25, %handler_result30, !dbg !454
  store double %65, ptr %1, align 8, !dbg !455, !tbaa !201
  %66 = fdiv double %handler_result29, %handler_result30, !dbg !456
  %67 = tail call double @llvm.fabs.f64(double %65), !dbg !457
  %68 = fmul double %67, 0x3CB0000000000000, !dbg !458
  %handler_result31 = call double @fAddHandlerDouble(double %68, double %66)
  br label %81

69:                                               ; preds = %39
  %70 = fneg double %0, !dbg !459
  %71 = tail call double @exp2(double %70) #6, !dbg !460
  %handler_result32 = call double @fSubHandlerDouble(double 1.000000e+00, double %71), !dbg !461
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !354, metadata !DIExpression()), !dbg !462
  %72 = tail call double @pow(double noundef 3.000000e+00, double noundef %70) #6, !dbg !461
  %handler_result33 = call double @fSubHandlerDouble(double 1.000000e+00, double %72), !dbg !463
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !356, metadata !DIExpression()), !dbg !462
  %73 = tail call double @pow(double noundef 5.000000e+00, double noundef %70) #6, !dbg !463
  %handler_result34 = call double @fSubHandlerDouble(double 1.000000e+00, double %73), !dbg !464
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !357, metadata !DIExpression()), !dbg !462
  %74 = tail call double @pow(double noundef 7.000000e+00, double noundef %70) #6, !dbg !464
  %handler_result35 = call double @fSubHandlerDouble(double 1.000000e+00, double %74), !dbg !465
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !358, metadata !DIExpression()), !dbg !462
  %75 = fmul double %handler_result32, %handler_result33, !dbg !465
  %76 = fmul double %75, %handler_result34, !dbg !466
  %77 = fmul double %76, %handler_result35, !dbg !467
  %78 = fdiv double 1.000000e+00, %77, !dbg !468
  store double %78, ptr %1, align 8, !dbg !469, !tbaa !201
  %79 = tail call double @llvm.fabs.f64(double %78), !dbg !470
  %80 = fmul double %79, 0x3CC8000000000000, !dbg !471
  br label %81

81:                                               ; preds = %69, %60, %29
  %82 = phi double [ %80, %69 ], [ %handler_result31, %60 ], [ %handler_result15, %29 ]
  %83 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !472
  store double %82, ptr %83, align 8, !dbg !472, !tbaa !206
  br label %169, !dbg !473

84:                                               ; preds = %7
  call void @llvm.dbg.value(metadata double %0, metadata !474, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata ptr undef, metadata !477, metadata !DIExpression()), !dbg !487
  %85 = fcmp ogt double %0, -1.900000e+01, !dbg !489
  br i1 %85, label %86, label %115, !dbg !490

86:                                               ; preds = %84
  %87 = fmul double %0, 2.000000e+00, !dbg !491
  %handler_result36 = call double @fSubHandlerDouble(double -1.900000e+01, double %87), !dbg !492
  %88 = fdiv double %handler_result36, 1.900000e+01, !dbg !492
  call void @llvm.dbg.value(metadata double %88, metadata !478, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata !389, metadata !373, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double %88, metadata !374, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata ptr undef, metadata !375, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !378, metadata !DIExpression()), !dbg !494
  %89 = fmul double %88, 2.000000e+00, !dbg !496
  %handler_result37 = call double @fAddHandlerDouble(double %89, double 1.000000e+00), !dbg !497
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result37, double -1.000000e+00), !dbg !498
  %90 = fmul double %handler_result38, 5.000000e-01, !dbg !498
  call void @llvm.dbg.value(metadata double %90, metadata !379, metadata !DIExpression()), !dbg !494
  %91 = fmul double %90, 2.000000e+00, !dbg !499
  call void @llvm.dbg.value(metadata double %91, metadata !380, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !381, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata i32 29, metadata !376, metadata !DIExpression()), !dbg !494
  br label %92, !dbg !500

92:                                               ; preds = %92, %86
  %93 = phi i64 [ 29, %86 ], [ %103, %92 ]
  %94 = phi double [ 0.000000e+00, %86 ], [ %handler_result40, %92 ]
  %95 = phi double [ 0.000000e+00, %86 ], [ %handler_result43, %92 ]
  %96 = phi double [ 0.000000e+00, %86 ], [ %94, %92 ]
  call void @llvm.dbg.value(metadata i64 %93, metadata !376, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double %94, metadata !377, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double %95, metadata !381, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double %96, metadata !378, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double %94, metadata !382, metadata !DIExpression()), !dbg !501
  %97 = fmul double %91, %94, !dbg !502
  %handler_result39 = call double @fSubHandlerDouble(double %97, double %96), !dbg !503
  %98 = getelementptr inbounds double, ptr @zeta_xgt1_data, i64 %93, !dbg !503
  %99 = load double, ptr %98, align 8, !dbg !503, !tbaa !267
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double %99), !dbg !504
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !377, metadata !DIExpression()), !dbg !494
  %100 = tail call double @llvm.fabs.f64(double %97), !dbg !504
  %101 = tail call double @llvm.fabs.f64(double %96), !dbg !505
  %handler_result41 = call double @fAddHandlerDouble(double %100, double %101), !dbg !506
  %102 = tail call double @llvm.fabs.f64(double %99), !dbg !506
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double %102), !dbg !507
  %handler_result43 = call double @fAddHandlerDouble(double %95, double %handler_result42), !dbg !508
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !381, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double %94, metadata !378, metadata !DIExpression()), !dbg !494
  %103 = add nsw i64 %93, -1, !dbg !508
  call void @llvm.dbg.value(metadata i64 %103, metadata !376, metadata !DIExpression()), !dbg !494
  %104 = icmp ugt i64 %93, 1, !dbg !509
  br i1 %104, label %92, label %105, !dbg !500, !llvm.loop !510

105:                                              ; preds = %92
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !386, metadata !DIExpression()), !dbg !512
  %106 = fmul double %90, %handler_result40, !dbg !513
  %handler_result44 = call double @fSubHandlerDouble(double %106, double %94), !dbg !514
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double 0x40236450627983A1), !dbg !515
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !377, metadata !DIExpression()), !dbg !494
  %107 = tail call double @llvm.fabs.f64(double %106), !dbg !515
  %108 = tail call double @llvm.fabs.f64(double %94), !dbg !516
  %handler_result46 = call double @fAddHandlerDouble(double %108, double %107), !dbg !517
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double 0x40236450627983A1), !dbg !518
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result43, double %handler_result47), !dbg !519
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !381, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !481, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !493
  %109 = fmul double %handler_result48, 0x3CB0000000000000, !dbg !519
  %handler_result49 = call double @fAddHandlerDouble(double %109, double 0x3C969E53D45F55DC), !dbg !520
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !481, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !493
  %110 = fneg double %0, !dbg !520
  %111 = fdiv double %handler_result45, %110, !dbg !521
  tail call void @llvm.dbg.value(metadata double %111, metadata !311, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !522
  %112 = tail call double @llvm.fabs.f64(double %111), !dbg !523
  %113 = fmul double %112, 0x3CB0000000000000, !dbg !524
  %114 = fdiv double %handler_result49, %0, !dbg !525
  %handler_result50 = call double @fSubHandlerDouble(double %113, double %114)
  br label %127

115:                                              ; preds = %84
  %handler_result51 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !526
  %116 = fneg double %handler_result51, !dbg !526
  %117 = tail call double @exp2(double %116) #6, !dbg !527
  %handler_result52 = call double @fSubHandlerDouble(double 1.000000e+00, double %117), !dbg !528
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !482, metadata !DIExpression()), !dbg !529
  %118 = tail call double @pow(double noundef 3.000000e+00, double noundef %116) #6, !dbg !528
  %handler_result53 = call double @fSubHandlerDouble(double 1.000000e+00, double %118), !dbg !530
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !484, metadata !DIExpression()), !dbg !529
  %119 = tail call double @pow(double noundef 5.000000e+00, double noundef %116) #6, !dbg !530
  %handler_result54 = call double @fSubHandlerDouble(double 1.000000e+00, double %119), !dbg !531
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !485, metadata !DIExpression()), !dbg !529
  %120 = tail call double @pow(double noundef 7.000000e+00, double noundef %116) #6, !dbg !531
  %handler_result55 = call double @fSubHandlerDouble(double 1.000000e+00, double %120), !dbg !532
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !486, metadata !DIExpression()), !dbg !529
  %121 = fmul double %handler_result52, %handler_result53, !dbg !532
  %122 = fmul double %121, %handler_result54, !dbg !533
  %123 = fmul double %122, %handler_result55, !dbg !534
  %124 = fdiv double 1.000000e+00, %123, !dbg !535
  tail call void @llvm.dbg.value(metadata double %124, metadata !311, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !522
  %125 = tail call double @llvm.fabs.f64(double %124), !dbg !536
  %126 = fmul double %125, 0x3CC8000000000000, !dbg !537
  br label %127

127:                                              ; preds = %115, %105
  %128 = phi double [ %111, %105 ], [ %124, %115 ], !dbg !538
  %129 = phi double [ %handler_result50, %105 ], [ %126, %115 ]
  tail call void @llvm.dbg.value(metadata double %128, metadata !311, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !522
  tail call void @llvm.dbg.value(metadata double %129, metadata !311, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !522
  tail call void @llvm.dbg.value(metadata i32 0, metadata !315, metadata !DIExpression()), !dbg !522
  %handler_result61 = call double @callHandler(i32 30, double %0, double 2.000000e+00), !dbg !539
  %130 = fcmp oeq double %handler_result61, 0.000000e+00, !dbg !539
  br i1 %130, label %135, label %131, !dbg !540

131:                                              ; preds = %127
  %handler_result62 = call double @callHandler(i32 30, double %0, double 4.000000e+00), !dbg !541
  %132 = fmul double %handler_result62, 0x3FF921FB54442D18, !dbg !541
  %handler_result63 = call double @callHandler(i32 1, double %132, double %132), !dbg !542
  %133 = fdiv double %handler_result63, 0x400921FB54442D18, !dbg !542
  tail call void @llvm.dbg.value(metadata double %133, metadata !316, metadata !DIExpression()), !dbg !522
  %134 = fcmp oeq double %133, 0.000000e+00, !dbg !543
  br i1 %134, label %135, label %136, !dbg !544

135:                                              ; preds = %131, %127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !545
  br label %169, !dbg !547

136:                                              ; preds = %131
  %137 = fcmp ogt double %0, -1.700000e+02, !dbg !548
  br i1 %137, label %138, label %167, !dbg !549

138:                                              ; preds = %136
  call void @llvm.dbg.assign(metadata i1 undef, metadata !317, metadata !DIExpression(), metadata !550, metadata ptr @__const.gsl_sf_zeta_e.twopi_pow, metadata !DIExpression()), !dbg !330
  %139 = fdiv double %0, -1.000000e+01, !dbg !551
  %140 = tail call double @llvm.floor.f64(double %139), !dbg !552
  %141 = fptosi double %140 to i32, !dbg !552
  tail call void @llvm.dbg.value(metadata i32 %141, metadata !324, metadata !DIExpression()), !dbg !330
  %142 = sitofp i32 %141 to double, !dbg !553
  %143 = fmul double %142, 1.000000e+01, !dbg !554
  %handler_result56 = call double @fAddHandlerDouble(double %143, double %0), !dbg !555
  tail call void @llvm.dbg.value(metadata double %handler_result56, metadata !325, metadata !DIExpression()), !dbg !330
  %144 = tail call double @pow(double noundef 0x401921FB54442D18, double noundef %handler_result56) #6, !dbg !555
  %145 = sext i32 %141 to i64, !dbg !556
  %146 = getelementptr inbounds [18 x double], ptr @__const.gsl_sf_zeta_e.twopi_pow, i64 0, i64 %145, !dbg !556
  %147 = load double, ptr %146, align 8, !dbg !556, !tbaa !267
  %148 = fdiv double %144, %147, !dbg !557
  tail call void @llvm.dbg.value(metadata double %148, metadata !326, metadata !DIExpression()), !dbg !330
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !558
  %handler_result57 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !559
  %149 = call i32 @gsl_sf_gamma_e(double noundef %handler_result57, ptr noundef nonnull %3) #6, !dbg !559
  tail call void @llvm.dbg.value(metadata i32 %149, metadata !328, metadata !DIExpression()), !dbg !330
  %150 = load double, ptr %3, align 8, !dbg !560, !tbaa !201
  %151 = fmul double %148, %150, !dbg !561
  %152 = fmul double %133, %151, !dbg !562
  %153 = fmul double %128, %152, !dbg !563
  store double %153, ptr %1, align 8, !dbg !564, !tbaa !201
  %154 = call double @llvm.fabs.f64(double %152), !dbg !565
  %155 = fmul double %129, %154, !dbg !566
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !567
  %157 = fmul double %133, %148, !dbg !568
  %158 = fmul double %128, %157, !dbg !569
  %159 = call double @llvm.fabs.f64(double %158), !dbg !570
  %160 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !571
  %161 = load double, ptr %160, align 8, !dbg !571, !tbaa !206
  %162 = fmul double %159, %161, !dbg !572
  %handler_result58 = call double @fAddHandlerDouble(double %155, double %162), !dbg !573
  %163 = call double @llvm.fabs.f64(double %0), !dbg !573
  %handler_result59 = call double @fAddHandlerDouble(double %163, double 2.000000e+00), !dbg !574
  %164 = fmul double %handler_result59, 0x3CB0000000000000, !dbg !574
  %165 = call double @llvm.fabs.f64(double %153), !dbg !575
  %166 = fmul double %164, %165, !dbg !576
  %handler_result60 = call double @fAddHandlerDouble(double %handler_result58, double %166), !dbg !577
  store double %handler_result60, ptr %156, align 8, !dbg !577, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !578
  br label %169

167:                                              ; preds = %136
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !579, !tbaa !201
  %168 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !579
  store double 0x7FF0000000000000, ptr %168, align 8, !dbg !579, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 847, i32 noundef 16) #6, !dbg !582
  br label %169, !dbg !582

169:                                              ; preds = %167, %138, %135, %81, %5
  %170 = phi i32 [ 1, %5 ], [ 0, %81 ], [ 0, %135 ], [ %149, %138 ], [ 16, %167 ], !dbg !584
  ret i32 %170, !dbg !585
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !586 double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !587 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare !dbg !588 i32 @gsl_sf_gamma_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_zeta_int_e(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !590 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !594, metadata !DIExpression()), !dbg !596
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !595, metadata !DIExpression()), !dbg !596
  %3 = icmp slt i32 %0, 0, !dbg !597
  br i1 %3, label %4, label %22, !dbg !599

4:                                                ; preds = %2
  %5 = and i32 %0, 1, !dbg !600
  %6 = icmp eq i32 %5, 0, !dbg !600
  br i1 %6, label %7, label %8, !dbg !603

7:                                                ; preds = %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !604
  br label %37, !dbg !606

8:                                                ; preds = %4
  %9 = icmp ugt i32 %0, -99, !dbg !607
  br i1 %9, label %10, label %19, !dbg !609

10:                                               ; preds = %8
  %11 = xor i32 %0, -1, !dbg !610
  %12 = lshr exact i32 %11, 1
  %13 = zext nneg i32 %12 to i64, !dbg !612
  %14 = getelementptr inbounds [50 x double], ptr @zeta_neg_int_table, i64 0, i64 %13, !dbg !612
  %15 = load double, ptr %14, align 8, !dbg !612, !tbaa !267
  store double %15, ptr %1, align 8, !dbg !613, !tbaa !201
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !614
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !615
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !616
  store double %17, ptr %18, align 8, !dbg !617, !tbaa !206
  br label %37, !dbg !618

19:                                               ; preds = %8
  %20 = sitofp i32 %0 to double, !dbg !619
  %21 = tail call i32 @gsl_sf_zeta_e(double noundef %20, ptr noundef %1), !dbg !621
  br label %37, !dbg !622

22:                                               ; preds = %2
  %23 = icmp eq i32 %0, 1, !dbg !623
  br i1 %23, label %24, label %26, !dbg !625

24:                                               ; preds = %22
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !626, !tbaa !201
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !626
  store double 0x7FF8000000000000, ptr %25, align 8, !dbg !626, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 873, i32 noundef 1) #6, !dbg !629
  br label %37, !dbg !629

26:                                               ; preds = %22
  %27 = icmp ult i32 %0, 101, !dbg !631
  br i1 %27, label %28, label %35, !dbg !633

28:                                               ; preds = %26
  %29 = zext nneg i32 %0 to i64
  %30 = getelementptr inbounds [101 x double], ptr @zetam1_pos_int_table, i64 0, i64 %29, !dbg !634
  %31 = load double, ptr %30, align 8, !dbg !634, !tbaa !267
  %handler_result = call double @fAddHandlerDouble(double %31, double 1.000000e+00), !dbg !636
  store double %handler_result, ptr %1, align 8, !dbg !636, !tbaa !201
  %32 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !637
  %33 = fmul double %32, 0x3CC0000000000000, !dbg !638
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !639
  store double %33, ptr %34, align 8, !dbg !640, !tbaa !206
  br label %37, !dbg !641

35:                                               ; preds = %26
  store double 1.000000e+00, ptr %1, align 8, !dbg !642, !tbaa !201
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !644
  store double 0x3CB0000000000000, ptr %36, align 8, !dbg !645, !tbaa !206
  br label %37, !dbg !646

37:                                               ; preds = %35, %28, %24, %19, %10, %7
  %38 = phi i32 [ 0, %10 ], [ %21, %19 ], [ 0, %7 ], [ 1, %24 ], [ 0, %28 ], [ 0, %35 ], !dbg !647
  ret i32 %38, !dbg !648
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_zetam1_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !649 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !651, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !652, metadata !DIExpression()), !dbg !656
  %3 = fcmp ugt double %0, 5.000000e+00, !dbg !657
  br i1 %3, label %7, label %4, !dbg !658

4:                                                ; preds = %2
  %5 = tail call i32 @gsl_sf_zeta_e(double noundef %0, ptr noundef %1), !dbg !659
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !653, metadata !DIExpression()), !dbg !660
  %6 = load double, ptr %1, align 8, !dbg !661, !tbaa !201
  %handler_result = call double @fAddHandlerDouble(double %6, double -1.000000e+00), !dbg !662
  store double %handler_result, ptr %1, align 8, !dbg !662, !tbaa !201
  br label %62

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 1.500000e+01, !dbg !663
  br i1 %8, label %9, label %37, !dbg !665

9:                                                ; preds = %7
  call void @llvm.dbg.value(metadata double %0, metadata !666, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata ptr %1, metadata !669, metadata !DIExpression()), !dbg !672
  %handler_result1 = call double @fAddHandlerDouble(double %0, double -1.000000e+01), !dbg !675
  %10 = fdiv double %handler_result1, 5.000000e+00, !dbg !675
  call void @llvm.dbg.value(metadata double %10, metadata !670, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata !389, metadata !373, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double %10, metadata !374, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata ptr undef, metadata !375, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !377, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !378, metadata !DIExpression()), !dbg !676
  %11 = fmul double %10, 2.000000e+00, !dbg !678
  %handler_result2 = call double @fAddHandlerDouble(double %11, double 1.000000e+00), !dbg !679
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !680
  %12 = fmul double %handler_result3, 5.000000e-01, !dbg !680
  call void @llvm.dbg.value(metadata double %12, metadata !379, metadata !DIExpression()), !dbg !676
  %13 = fmul double %12, 2.000000e+00, !dbg !681
  call void @llvm.dbg.value(metadata double %13, metadata !380, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !381, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata i32 22, metadata !376, metadata !DIExpression()), !dbg !676
  br label %14, !dbg !682

14:                                               ; preds = %14, %9
  %15 = phi i64 [ 22, %9 ], [ %25, %14 ]
  %16 = phi double [ 0.000000e+00, %9 ], [ %handler_result5, %14 ]
  %17 = phi double [ 0.000000e+00, %9 ], [ %handler_result8, %14 ]
  %18 = phi double [ 0.000000e+00, %9 ], [ %16, %14 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !376, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double %16, metadata !377, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double %17, metadata !381, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double %18, metadata !378, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double %16, metadata !382, metadata !DIExpression()), !dbg !683
  %19 = fmul double %13, %16, !dbg !684
  %handler_result4 = call double @fSubHandlerDouble(double %19, double %18), !dbg !685
  %20 = getelementptr inbounds double, ptr @zetam1_inter_data, i64 %15, !dbg !685
  %21 = load double, ptr %20, align 8, !dbg !685, !tbaa !267
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %21), !dbg !686
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !377, metadata !DIExpression()), !dbg !676
  %22 = tail call double @llvm.fabs.f64(double %19), !dbg !686
  %23 = tail call double @llvm.fabs.f64(double %18), !dbg !687
  %handler_result6 = call double @fAddHandlerDouble(double %22, double %23), !dbg !688
  %24 = tail call double @llvm.fabs.f64(double %21), !dbg !688
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %24), !dbg !689
  %handler_result8 = call double @fAddHandlerDouble(double %17, double %handler_result7), !dbg !690
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !381, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double %16, metadata !378, metadata !DIExpression()), !dbg !676
  %25 = add nsw i64 %15, -1, !dbg !690
  call void @llvm.dbg.value(metadata i64 %25, metadata !376, metadata !DIExpression()), !dbg !676
  %26 = icmp ugt i64 %15, 1, !dbg !691
  br i1 %26, label %14, label %27, !dbg !682, !llvm.loop !692

27:                                               ; preds = %14
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !386, metadata !DIExpression()), !dbg !694
  %28 = fmul double %12, %handler_result5, !dbg !695
  %handler_result9 = call double @fSubHandlerDouble(double %28, double %16), !dbg !696
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double 0xC025C03DD66624A5), !dbg !697
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !377, metadata !DIExpression()), !dbg !676
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !697
  %30 = tail call double @llvm.fabs.f64(double %16), !dbg !698
  %handler_result11 = call double @fAddHandlerDouble(double %30, double %29), !dbg !699
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x4025C03DD66624A5), !dbg !700
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result8, double %handler_result12), !dbg !701
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !381, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !671, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !672
  %31 = fmul double %handler_result13, 0x3CB0000000000000, !dbg !701
  %handler_result14 = call double @fAddHandlerDouble(double %31, double 0x3D596C415674B2A9), !dbg !702
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !671, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !672
  %32 = tail call double @exp(double noundef %handler_result10) #6, !dbg !702
  %33 = fneg double %0, !dbg !703
  %34 = tail call double @exp2(double %33) #6, !dbg !704
  %handler_result15 = call double @fAddHandlerDouble(double %32, double %34), !dbg !705
  store double %handler_result15, ptr %1, align 8, !dbg !705, !tbaa !201
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result14, double 0x3CC0000000000000), !dbg !706
  %35 = fmul double %handler_result15, %handler_result16, !dbg !706
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !707
  store double %35, ptr %36, align 8, !dbg !708, !tbaa !206
  br label %62, !dbg !709

37:                                               ; preds = %7
  call void @llvm.dbg.value(metadata double %0, metadata !710, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %1, metadata !713, metadata !DIExpression()), !dbg !724
  %38 = fneg double %0, !dbg !727
  %39 = tail call double @exp2(double %38) #6, !dbg !728
  call void @llvm.dbg.value(metadata double %39, metadata !714, metadata !DIExpression()), !dbg !724
  %40 = tail call double @pow(double noundef 3.000000e+00, double noundef %38) #6, !dbg !729
  call void @llvm.dbg.value(metadata double %40, metadata !715, metadata !DIExpression()), !dbg !724
  %41 = tail call double @pow(double noundef 5.000000e+00, double noundef %38) #6, !dbg !730
  call void @llvm.dbg.value(metadata double %41, metadata !716, metadata !DIExpression()), !dbg !724
  %42 = tail call double @pow(double noundef 7.000000e+00, double noundef %38) #6, !dbg !731
  call void @llvm.dbg.value(metadata double %42, metadata !717, metadata !DIExpression()), !dbg !724
  %43 = tail call double @pow(double noundef 1.100000e+01, double noundef %38) #6, !dbg !732
  call void @llvm.dbg.value(metadata double %43, metadata !718, metadata !DIExpression()), !dbg !724
  %44 = tail call double @pow(double noundef 1.300000e+01, double noundef %38) #6, !dbg !733
  call void @llvm.dbg.value(metadata double %44, metadata !719, metadata !DIExpression()), !dbg !724
  %handler_result17 = call double @fAddHandlerDouble(double %39, double %40), !dbg !734
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %41), !dbg !735
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %42), !dbg !736
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %43), !dbg !737
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %44), !dbg !738
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !720, metadata !DIExpression()), !dbg !724
  %handler_result22 = call double @fAddHandlerDouble(double %40, double %41), !dbg !739
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %42), !dbg !740
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double %43), !dbg !741
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double %44), !dbg !742
  %45 = fmul double %39, %handler_result25, !dbg !742
  %handler_result26 = call double @fAddHandlerDouble(double %41, double %42), !dbg !743
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double %43), !dbg !744
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double %44), !dbg !745
  %46 = fmul double %40, %handler_result28, !dbg !745
  %handler_result29 = call double @fAddHandlerDouble(double %45, double %46), !dbg !746
  %handler_result30 = call double @fAddHandlerDouble(double %42, double %43), !dbg !747
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double %44), !dbg !748
  %47 = fmul double %41, %handler_result31, !dbg !748
  %handler_result32 = call double @fAddHandlerDouble(double %47, double %handler_result29), !dbg !749
  %handler_result33 = call double @fAddHandlerDouble(double %43, double %44), !dbg !750
  %48 = fmul double %42, %handler_result33, !dbg !750
  %handler_result34 = call double @fAddHandlerDouble(double %48, double %handler_result32), !dbg !751
  %49 = fmul double %43, %44, !dbg !751
  %handler_result35 = call double @fAddHandlerDouble(double %49, double %handler_result34), !dbg !752
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !721, metadata !DIExpression()), !dbg !724
  %handler_result36 = call double @fSubHandlerDouble(double %handler_result21, double %handler_result35), !dbg !753
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !722, metadata !DIExpression()), !dbg !724
  %handler_result37 = call double @fSubHandlerDouble(double 1.000000e+00, double %39), !dbg !754
  %handler_result38 = call double @fSubHandlerDouble(double 1.000000e+00, double %40), !dbg !755
  %50 = fmul double %handler_result37, %handler_result38, !dbg !755
  %handler_result39 = call double @fSubHandlerDouble(double 1.000000e+00, double %41), !dbg !756
  %51 = fmul double %50, %handler_result39, !dbg !756
  %handler_result40 = call double @fSubHandlerDouble(double 1.000000e+00, double %42), !dbg !757
  %52 = fmul double %51, %handler_result40, !dbg !757
  %handler_result41 = call double @fSubHandlerDouble(double 1.000000e+00, double %43), !dbg !758
  %53 = fmul double %52, %handler_result41, !dbg !758
  %handler_result42 = call double @fSubHandlerDouble(double 1.000000e+00, double %44), !dbg !759
  %54 = fmul double %53, %handler_result42, !dbg !759
  %55 = fdiv double 1.000000e+00, %54, !dbg !760
  call void @llvm.dbg.value(metadata double %55, metadata !723, metadata !DIExpression()), !dbg !724
  %56 = fmul double %55, %handler_result36, !dbg !761
  store double %56, ptr %1, align 8, !dbg !762, !tbaa !201
  %57 = fdiv double 1.500000e+01, %0, !dbg !763
  %handler_result43 = call double @fAddHandlerDouble(double %57, double 1.000000e+00), !dbg !764
  %58 = fmul double %handler_result43, 6.000000e+00, !dbg !764
  %59 = fmul double %58, 0x3CB0000000000000, !dbg !765
  %60 = fmul double %59, %56, !dbg !766
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !767
  store double %60, ptr %61, align 8, !dbg !768, !tbaa !206
  br label %62, !dbg !769

62:                                               ; preds = %37, %27, %4
  %63 = phi i32 [ %5, %4 ], [ 0, %27 ], [ 0, %37 ], !dbg !770
  ret i32 %63, !dbg !771
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_zetam1_int_e(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !772 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !774, metadata !DIExpression()), !dbg !776
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !775, metadata !DIExpression()), !dbg !776
  %3 = icmp slt i32 %0, 0, !dbg !777
  br i1 %3, label %4, label %23, !dbg !779

4:                                                ; preds = %2
  %5 = and i32 %0, 1, !dbg !780
  %6 = icmp eq i32 %5, 0, !dbg !780
  br i1 %6, label %7, label %9, !dbg !783

7:                                                ; preds = %4
  store double -1.000000e+00, ptr %1, align 8, !dbg !784, !tbaa !201
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !786
  store double 0.000000e+00, ptr %8, align 8, !dbg !787, !tbaa !206
  br label %39, !dbg !788

9:                                                ; preds = %4
  %10 = icmp ugt i32 %0, -99, !dbg !789
  br i1 %10, label %11, label %20, !dbg !791

11:                                               ; preds = %9
  %12 = xor i32 %0, -1, !dbg !792
  %13 = lshr exact i32 %12, 1
  %14 = zext nneg i32 %13 to i64, !dbg !794
  %15 = getelementptr inbounds [50 x double], ptr @zeta_neg_int_table, i64 0, i64 %14, !dbg !794
  %16 = load double, ptr %15, align 8, !dbg !794, !tbaa !267
  %handler_result = call double @fAddHandlerDouble(double %16, double -1.000000e+00), !dbg !795
  store double %handler_result, ptr %1, align 8, !dbg !795, !tbaa !201
  %17 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !796
  %18 = fmul double %17, 0x3CC0000000000000, !dbg !797
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !798
  store double %18, ptr %19, align 8, !dbg !799, !tbaa !206
  br label %39, !dbg !800

20:                                               ; preds = %9
  %21 = sitofp i32 %0 to double, !dbg !801
  %22 = tail call i32 @gsl_sf_zeta_e(double noundef %21, ptr noundef %1), !dbg !803
  br label %39, !dbg !804

23:                                               ; preds = %2
  %24 = icmp eq i32 %0, 1, !dbg !805
  br i1 %24, label %25, label %27, !dbg !807

25:                                               ; preds = %23
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !808, !tbaa !201
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !808
  store double 0x7FF8000000000000, ptr %26, align 8, !dbg !808, !tbaa !206
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 927, i32 noundef 1) #6, !dbg !811
  br label %39, !dbg !811

27:                                               ; preds = %23
  %28 = icmp ult i32 %0, 101, !dbg !813
  br i1 %28, label %29, label %36, !dbg !815

29:                                               ; preds = %27
  %30 = zext nneg i32 %0 to i64
  %31 = getelementptr inbounds [101 x double], ptr @zetam1_pos_int_table, i64 0, i64 %30, !dbg !816
  %32 = load double, ptr %31, align 8, !dbg !816, !tbaa !267
  store double %32, ptr %1, align 8, !dbg !818, !tbaa !201
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !819
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !820
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !821
  store double %34, ptr %35, align 8, !dbg !822, !tbaa !206
  br label %39, !dbg !823

36:                                               ; preds = %27
  %37 = sitofp i32 %0 to double, !dbg !824
  %38 = tail call i32 @gsl_sf_zetam1_e(double noundef %37, ptr noundef %1), !dbg !826
  br label %39, !dbg !827

39:                                               ; preds = %36, %29, %25, %20, %11, %7
  %40 = phi i32 [ 0, %11 ], [ %22, %20 ], [ 0, %7 ], [ 1, %25 ], [ 0, %29 ], [ %38, %36 ], !dbg !828
  ret i32 %40, !dbg !829
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_eta_int_e(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !830 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !847
  call void @llvm.dbg.assign(metadata i1 undef, metadata !836, metadata !DIExpression(), metadata !847, metadata ptr %3, metadata !DIExpression()), !dbg !848
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !849
  call void @llvm.dbg.assign(metadata i1 undef, metadata !843, metadata !DIExpression(), metadata !849, metadata ptr %4, metadata !DIExpression()), !dbg !848
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !834, metadata !DIExpression()), !dbg !850
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !835, metadata !DIExpression()), !dbg !850
  %5 = icmp sgt i32 %0, 100, !dbg !851
  br i1 %5, label %6, label %8, !dbg !852

6:                                                ; preds = %2
  store double 1.000000e+00, ptr %1, align 8, !dbg !853, !tbaa !201
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !855
  store double 0x3CB0000000000000, ptr %7, align 8, !dbg !856, !tbaa !206
  br label %59, !dbg !857

8:                                                ; preds = %2
  %9 = icmp sgt i32 %0, -1, !dbg !858
  br i1 %9, label %10, label %17, !dbg !859

10:                                               ; preds = %8
  %11 = zext nneg i32 %0 to i64
  %12 = getelementptr inbounds [101 x double], ptr @eta_pos_int_table, i64 0, i64 %11, !dbg !860
  %13 = load double, ptr %12, align 8, !dbg !860, !tbaa !267
  store double %13, ptr %1, align 8, !dbg !862, !tbaa !201
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !863
  %15 = fmul double %14, 0x3CC0000000000000, !dbg !864
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !865
  store double %15, ptr %16, align 8, !dbg !866, !tbaa !206
  br label %59, !dbg !867

17:                                               ; preds = %8
  %18 = and i32 %0, 1, !dbg !868
  %19 = icmp eq i32 %18, 0, !dbg !868
  br i1 %19, label %20, label %21, !dbg !869

20:                                               ; preds = %17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !870
  br label %59, !dbg !872

21:                                               ; preds = %17
  %22 = icmp ugt i32 %0, -99, !dbg !873
  br i1 %22, label %23, label %32, !dbg !874

23:                                               ; preds = %21
  %24 = xor i32 %0, -1, !dbg !875
  %25 = lshr exact i32 %24, 1
  %26 = zext nneg i32 %25 to i64, !dbg !877
  %27 = getelementptr inbounds [50 x double], ptr @eta_neg_int_table, i64 0, i64 %26, !dbg !877
  %28 = load double, ptr %27, align 8, !dbg !877, !tbaa !267
  store double %28, ptr %1, align 8, !dbg !878, !tbaa !201
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !879
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !880
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !881
  store double %30, ptr %31, align 8, !dbg !882, !tbaa !206
  br label %59, !dbg !883

32:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !884
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !885
  call void @llvm.dbg.value(metadata i32 %0, metadata !594, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata ptr %3, metadata !595, metadata !DIExpression()), !dbg !886
  %33 = sitofp i32 %0 to double, !dbg !888
  %34 = call i32 @gsl_sf_zeta_e(double noundef %33, ptr noundef nonnull %3), !dbg !889
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !844, metadata !DIExpression()), !dbg !848
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %33), !dbg !890
  %35 = fmul double %handler_result, 0x3FE62E42FEFA39EF, !dbg !890
  %36 = call i32 @gsl_sf_exp_e(double noundef %35, ptr noundef nonnull %4) #6, !dbg !891
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !845, metadata !DIExpression()), !dbg !848
  %37 = load double, ptr %4, align 8, !dbg !892, !tbaa !201
  %38 = fneg double %37, !dbg !893
  %39 = load double, ptr %3, align 8, !dbg !894, !tbaa !201
  %40 = call i32 @gsl_sf_multiply_e(double noundef %38, double noundef %39, ptr noundef %1) #6, !dbg !895
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !846, metadata !DIExpression()), !dbg !848
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !896
  %42 = load double, ptr %41, align 8, !dbg !896, !tbaa !206
  %43 = fmul double %35, %42, !dbg !897
  %44 = fmul double %39, %43, !dbg !898
  %45 = call double @llvm.fabs.f64(double %44), !dbg !899
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !900
  %47 = load double, ptr %46, align 8, !dbg !900, !tbaa !206
  %48 = load double, ptr %4, align 8, !dbg !901, !tbaa !201
  %49 = call double @llvm.fabs.f64(double %48), !dbg !902
  %50 = fmul double %47, %49, !dbg !903
  %handler_result1 = call double @fAddHandlerDouble(double %45, double %50), !dbg !904
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !904
  %52 = load double, ptr %1, align 8, !dbg !905, !tbaa !201
  %53 = call double @llvm.fabs.f64(double %52), !dbg !906
  %54 = fmul double %53, 0x3CC0000000000000, !dbg !907
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %54), !dbg !908
  store double %handler_result2, ptr %51, align 8, !dbg !908, !tbaa !206
  %55 = icmp eq i32 %40, 0, !dbg !909
  %56 = icmp eq i32 %36, 0, !dbg !909
  %57 = select i1 %56, i32 %34, i32 %36, !dbg !909
  %58 = select i1 %55, i32 %57, i32 %40, !dbg !909
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !910
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !910
  br label %59

59:                                               ; preds = %32, %23, %20, %10, %6
  %60 = phi i32 [ 0, %6 ], [ 0, %10 ], [ 0, %23 ], [ %58, %32 ], [ 0, %20 ], !dbg !911
  ret i32 %60, !dbg !912
}

declare !dbg !913 i32 @gsl_sf_exp_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !915 i32 @gsl_sf_multiply_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_eta_e(double noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !917 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !936
  call void @llvm.dbg.assign(metadata i1 undef, metadata !930, metadata !DIExpression(), metadata !936, metadata ptr %3, metadata !DIExpression()), !dbg !937
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !938
  call void @llvm.dbg.assign(metadata i1 undef, metadata !932, metadata !DIExpression(), metadata !938, metadata ptr %4, metadata !DIExpression()), !dbg !937
  tail call void @llvm.dbg.value(metadata double %0, metadata !919, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !920, metadata !DIExpression()), !dbg !939
  %5 = fcmp ogt double %0, 1.000000e+02, !dbg !940
  br i1 %5, label %6, label %8, !dbg !941

6:                                                ; preds = %2
  store double 1.000000e+00, ptr %1, align 8, !dbg !942, !tbaa !201
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !944
  store double 0x3CB0000000000000, ptr %7, align 8, !dbg !945, !tbaa !206
  br label %44, !dbg !946

8:                                                ; preds = %2
  %handler_result = call double @fAddHandlerDouble(double %0, double -1.000000e+00), !dbg !947
  %9 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !947
  %10 = fcmp olt double %9, 0x3F7E5078049F59F0, !dbg !948
  br i1 %10, label %11, label %19, !dbg !949

11:                                               ; preds = %8
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !921, metadata !DIExpression()), !dbg !950
  tail call void @llvm.dbg.value(metadata double 0x3FE62E42FEFA39EF, metadata !925, metadata !DIExpression()), !dbg !950
  tail call void @llvm.dbg.value(metadata double 0x3FC47695909C4D6F, metadata !926, metadata !DIExpression()), !dbg !950
  tail call void @llvm.dbg.value(metadata double 0xBFA0BC421B185F30, metadata !927, metadata !DIExpression()), !dbg !950
  tail call void @llvm.dbg.value(metadata double 0x3F59B4D403FF42D9, metadata !928, metadata !DIExpression()), !dbg !950
  tail call void @llvm.dbg.value(metadata double 0x3F489262C32F6CAD, metadata !929, metadata !DIExpression()), !dbg !950
  %12 = fmul double %handler_result, 0x3F489262C32F6CAD, !dbg !951
  %handler_result1 = call double @fAddHandlerDouble(double %12, double 0x3F59B4D403FF42D9), !dbg !952
  %13 = fmul double %handler_result, %handler_result1, !dbg !952
  %handler_result2 = call double @fAddHandlerDouble(double %13, double 0xBFA0BC421B185F30), !dbg !953
  %14 = fmul double %handler_result, %handler_result2, !dbg !953
  %handler_result3 = call double @fAddHandlerDouble(double %14, double 0x3FC47695909C4D6F), !dbg !954
  %15 = fmul double %handler_result, %handler_result3, !dbg !954
  %handler_result4 = call double @fAddHandlerDouble(double %15, double 0x3FE62E42FEFA39EF), !dbg !955
  store double %handler_result4, ptr %1, align 8, !dbg !955, !tbaa !201
  %16 = tail call double @llvm.fabs.f64(double %handler_result4), !dbg !956
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !957
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !958
  store double %17, ptr %18, align 8, !dbg !959, !tbaa !206
  br label %44

19:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !960
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !961
  %20 = call i32 @gsl_sf_zeta_e(double noundef %0, ptr noundef nonnull %3), !dbg !962
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !933, metadata !DIExpression()), !dbg !937
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !963
  %21 = fmul double %handler_result5, 0x3FE62E42FEFA39EF, !dbg !963
  %22 = call i32 @gsl_sf_exp_e(double noundef %21, ptr noundef nonnull %4) #6, !dbg !964
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !934, metadata !DIExpression()), !dbg !937
  %23 = load double, ptr %4, align 8, !dbg !965, !tbaa !201
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %23), !dbg !966
  %24 = load double, ptr %3, align 8, !dbg !966, !tbaa !201
  %25 = call i32 @gsl_sf_multiply_e(double noundef %handler_result6, double noundef %24, ptr noundef %1) #6, !dbg !967
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !935, metadata !DIExpression()), !dbg !937
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !968
  %27 = load double, ptr %26, align 8, !dbg !968, !tbaa !206
  %28 = fmul double %21, %27, !dbg !969
  %29 = fmul double %24, %28, !dbg !970
  %30 = call double @llvm.fabs.f64(double %29), !dbg !971
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !972
  %32 = load double, ptr %31, align 8, !dbg !972, !tbaa !206
  %33 = load double, ptr %4, align 8, !dbg !973, !tbaa !201
  %34 = call double @llvm.fabs.f64(double %33), !dbg !974
  %35 = fmul double %32, %34, !dbg !975
  %handler_result7 = call double @fAddHandlerDouble(double %30, double %35), !dbg !976
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !976
  %37 = load double, ptr %1, align 8, !dbg !977, !tbaa !201
  %38 = call double @llvm.fabs.f64(double %37), !dbg !978
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !979
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %39), !dbg !980
  store double %handler_result8, ptr %36, align 8, !dbg !980, !tbaa !206
  %40 = icmp eq i32 %25, 0, !dbg !981
  %41 = icmp eq i32 %22, 0, !dbg !981
  %42 = select i1 %41, i32 %20, i32 %22, !dbg !981
  %43 = select i1 %40, i32 %42, i32 %25, !dbg !981
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !982
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !982
  br label %44

44:                                               ; preds = %19, %11, %6
  %45 = phi i32 [ 0, %6 ], [ 0, %11 ], [ %43, %19 ], !dbg !983
  ret i32 %45, !dbg !984
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_zeta(double noundef %0) local_unnamed_addr #0 !dbg !985 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !992
  call void @llvm.dbg.assign(metadata i1 undef, metadata !990, metadata !DIExpression(), metadata !992, metadata ptr %2, metadata !DIExpression()), !dbg !993
  tail call void @llvm.dbg.value(metadata double %0, metadata !989, metadata !DIExpression()), !dbg !993
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !994
  %3 = call i32 @gsl_sf_zeta_e(double noundef %0, ptr noundef nonnull %2), !dbg !994
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !991, metadata !DIExpression()), !dbg !993
  %4 = icmp eq i32 %3, 0, !dbg !995
  br i1 %4, label %6, label %5, !dbg !994

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1019, i32 noundef %3) #6, !dbg !997
  br label %6, !dbg !997

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !994, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1000
  ret double %7, !dbg !1000
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_hzeta(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1001 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1009
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1007, metadata !DIExpression(), metadata !1009, metadata ptr %3, metadata !DIExpression()), !dbg !1010
  tail call void @llvm.dbg.value(metadata double %0, metadata !1005, metadata !DIExpression()), !dbg !1010
  tail call void @llvm.dbg.value(metadata double %1, metadata !1006, metadata !DIExpression()), !dbg !1010
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !1011
  %4 = call i32 @gsl_sf_hzeta_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !1011, !range !1012
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1008, metadata !DIExpression()), !dbg !1010
  %5 = icmp eq i32 %4, 0, !dbg !1013
  br i1 %5, label %7, label %6, !dbg !1011

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 1024, i32 noundef %4) #6, !dbg !1015
  br label %7, !dbg !1015

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1011, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !1018
  ret double %8, !dbg !1018
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_zeta_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1019 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1026
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1024, metadata !DIExpression(), metadata !1026, metadata ptr %2, metadata !DIExpression()), !dbg !1027
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1023, metadata !DIExpression()), !dbg !1027
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1028
  call void @llvm.dbg.value(metadata i32 %0, metadata !594, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata ptr %2, metadata !595, metadata !DIExpression()), !dbg !1029
  %3 = icmp slt i32 %0, 0, !dbg !1031
  br i1 %3, label %4, label %16, !dbg !1032

4:                                                ; preds = %1
  %5 = and i32 %0, 1, !dbg !1033
  %6 = icmp eq i32 %5, 0, !dbg !1033
  br i1 %6, label %7, label %8, !dbg !1034

7:                                                ; preds = %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !1035, !DIAssignID !1036
  call void @llvm.dbg.assign(metadata i8 0, metadata !1024, metadata !DIExpression(), metadata !1036, metadata ptr %2, metadata !DIExpression()), !dbg !1027
  br label %32, !dbg !1037

8:                                                ; preds = %4
  %9 = icmp ugt i32 %0, -99, !dbg !1038
  br i1 %9, label %10, label %26, !dbg !1039

10:                                               ; preds = %8
  %11 = xor i32 %0, -1, !dbg !1040
  %12 = lshr exact i32 %11, 1
  %13 = zext nneg i32 %12 to i64, !dbg !1041
  %14 = getelementptr inbounds [50 x double], ptr @zeta_neg_int_table, i64 0, i64 %13, !dbg !1041
  %15 = load double, ptr %14, align 8, !dbg !1041, !tbaa !267
  store double %15, ptr %2, align 8, !dbg !1042, !tbaa !201, !DIAssignID !1043
  call void @llvm.dbg.assign(metadata double %15, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1043, metadata ptr %2, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.assign(metadata double poison, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1044, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1027
  br label %32, !dbg !1045

16:                                               ; preds = %1
  %17 = icmp eq i32 %0, 1, !dbg !1046
  br i1 %17, label %18, label %19, !dbg !1047

18:                                               ; preds = %16
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !1048, !tbaa !201, !DIAssignID !1049
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1049, metadata ptr %2, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1050, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1027
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 873, i32 noundef 1) #6, !dbg !1051
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1025, metadata !DIExpression()), !dbg !1027
  br label %30, !dbg !1028

19:                                               ; preds = %16
  %20 = icmp ult i32 %0, 101, !dbg !1052
  br i1 %20, label %21, label %25, !dbg !1053

21:                                               ; preds = %19
  %22 = zext nneg i32 %0 to i64
  %23 = getelementptr inbounds [101 x double], ptr @zetam1_pos_int_table, i64 0, i64 %22, !dbg !1054
  %24 = load double, ptr %23, align 8, !dbg !1054, !tbaa !267
  %handler_result = call double @fAddHandlerDouble(double %24, double 1.000000e+00), !dbg !1055
  store double %handler_result, ptr %2, align 8, !dbg !1055, !tbaa !201, !DIAssignID !1056
  call void @llvm.dbg.assign(metadata double %handler_result, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1056, metadata ptr %2, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.assign(metadata double poison, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1057, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1027
  br label %32, !dbg !1058

25:                                               ; preds = %19
  store double 1.000000e+00, ptr %2, align 8, !dbg !1059, !tbaa !201, !DIAssignID !1060
  call void @llvm.dbg.assign(metadata double 1.000000e+00, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1060, metadata ptr %2, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.assign(metadata double 0x3CB0000000000000, metadata !1024, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1061, metadata ptr %2, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !1027
  br label %32, !dbg !1062

26:                                               ; preds = %8
  %27 = sitofp i32 %0 to double, !dbg !1063
  %28 = call i32 @gsl_sf_zeta_e(double noundef %27, ptr noundef nonnull %2), !dbg !1064
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1025, metadata !DIExpression()), !dbg !1027
  %29 = icmp eq i32 %28, 0, !dbg !1065
  br i1 %29, label %32, label %30, !dbg !1028

30:                                               ; preds = %26, %18
  %31 = phi i32 [ 1, %18 ], [ %28, %26 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 1029, i32 noundef %31) #6, !dbg !1067
  br label %32, !dbg !1067

32:                                               ; preds = %30, %26, %25, %21, %10, %7
  %33 = load double, ptr %2, align 8, !dbg !1028, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1070
  ret double %33, !dbg !1070
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_zetam1(double noundef %0) local_unnamed_addr #0 !dbg !1071 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1076
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1074, metadata !DIExpression(), metadata !1076, metadata ptr %2, metadata !DIExpression()), !dbg !1077
  tail call void @llvm.dbg.value(metadata double %0, metadata !1073, metadata !DIExpression()), !dbg !1077
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1078
  %3 = call i32 @gsl_sf_zetam1_e(double noundef %0, ptr noundef nonnull %2), !dbg !1078
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1075, metadata !DIExpression()), !dbg !1077
  %4 = icmp eq i32 %3, 0, !dbg !1079
  br i1 %4, label %6, label %5, !dbg !1078

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 1034, i32 noundef %3) #6, !dbg !1081
  br label %6, !dbg !1081

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1078, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1084
  ret double %7, !dbg !1084
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_zetam1_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1085 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1090
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1088, metadata !DIExpression(), metadata !1090, metadata ptr %2, metadata !DIExpression()), !dbg !1091
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1087, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1092
  %3 = call i32 @gsl_sf_zetam1_int_e(i32 noundef %0, ptr noundef nonnull %2), !dbg !1092
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1089, metadata !DIExpression()), !dbg !1091
  %4 = icmp eq i32 %3, 0, !dbg !1093
  br i1 %4, label %6, label %5, !dbg !1092

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 1039, i32 noundef %3) #6, !dbg !1095
  br label %6, !dbg !1095

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1092, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1098
  ret double %7, !dbg !1098
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_eta_int(i32 noundef %0) local_unnamed_addr #0 !dbg !1099 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1104
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1102, metadata !DIExpression(), metadata !1104, metadata ptr %2, metadata !DIExpression()), !dbg !1105
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1101, metadata !DIExpression()), !dbg !1105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1106
  %3 = call i32 @gsl_sf_eta_int_e(i32 noundef %0, ptr noundef nonnull %2), !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1103, metadata !DIExpression()), !dbg !1105
  %4 = icmp eq i32 %3, 0, !dbg !1107
  br i1 %4, label %6, label %5, !dbg !1106

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1044, i32 noundef %3) #6, !dbg !1109
  br label %6, !dbg !1109

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1106, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1112
  ret double %7, !dbg !1112
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_eta(double noundef %0) local_unnamed_addr #0 !dbg !1113 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1118
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1116, metadata !DIExpression(), metadata !1118, metadata ptr %2, metadata !DIExpression()), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %0, metadata !1115, metadata !DIExpression()), !dbg !1119
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !1120
  %3 = call i32 @gsl_sf_eta_e(double noundef %0, ptr noundef nonnull %2), !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1117, metadata !DIExpression()), !dbg !1119
  %4 = icmp eq i32 %3, 0, !dbg !1121
  br i1 %4, label %6, label %5, !dbg !1120

5:                                                ; preds = %1
  call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 1049, i32 noundef %3) #6, !dbg !1123
  br label %6, !dbg !1123

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !1120, !tbaa !201
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !1126
  ret double %7, !dbg !1126
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1127 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!211 = !DILocation(line: 723, column: 32, scope: !170)
!212 = !DILocation(line: 725, column: 17, scope: !178)
!213 = !DILocation(line: 725, column: 8, scope: !170)
!214 = !DILocation(line: 726, column: 7, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !2, line: 726, column: 7)
!216 = distinct !DILexicalBlock(scope: !178, file: !2, line: 725, column: 42)
!217 = !DILocation(line: 726, column: 7, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !2, line: 726, column: 7)
!219 = !DILocation(line: 728, column: 22, scope: !177)
!220 = !DILocation(line: 728, column: 13, scope: !178)
!221 = !DILocation(line: 729, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !2, line: 729, column: 7)
!223 = distinct !DILexicalBlock(scope: !177, file: !2, line: 728, column: 47)
!224 = !DILocation(line: 729, column: 7, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !2, line: 729, column: 7)
!226 = !DILocation(line: 731, column: 16, scope: !176)
!227 = !DILocation(line: 731, column: 27, scope: !176)
!228 = !DILocation(line: 731, column: 45, scope: !176)
!229 = !DILocation(line: 731, column: 60, scope: !176)
!230 = !DILocation(line: 732, column: 21, scope: !231)
!231 = distinct !DILexicalBlock(scope: !176, file: !2, line: 731, column: 74)
!232 = !DILocation(line: 732, column: 19, scope: !231)
!233 = !DILocation(line: 733, column: 45, scope: !231)
!234 = !DILocation(line: 733, column: 43, scope: !231)
!235 = !DILocation(line: 733, column: 15, scope: !231)
!236 = !DILocation(line: 733, column: 19, scope: !231)
!237 = !DILocation(line: 734, column: 7, scope: !231)
!238 = !DILocation(line: 736, column: 30, scope: !175)
!239 = !DILocation(line: 737, column: 25, scope: !174)
!240 = !DILocation(line: 0, scope: !174)
!241 = !DILocation(line: 738, column: 30, scope: !174)
!242 = !DILocation(line: 738, column: 25, scope: !174)
!243 = !DILocation(line: 739, column: 30, scope: !174)
!244 = !DILocation(line: 739, column: 25, scope: !174)
!245 = !DILocation(line: 740, column: 36, scope: !174)
!246 = !DILocation(line: 740, column: 24, scope: !174)
!247 = !DILocation(line: 740, column: 19, scope: !174)
!248 = !DILocation(line: 741, column: 43, scope: !174)
!249 = !DILocation(line: 741, column: 37, scope: !174)
!250 = !DILocation(line: 741, column: 55, scope: !174)
!251 = !DILocation(line: 741, column: 53, scope: !174)
!252 = !DILocation(line: 741, column: 15, scope: !174)
!253 = !DILocation(line: 741, column: 19, scope: !174)
!254 = !DILocation(line: 0, scope: !182)
!255 = !DILocation(line: 751, column: 28, scope: !182)
!256 = !DILocation(line: 754, column: 34, scope: !182)
!257 = !DILocation(line: 754, column: 24, scope: !182)
!258 = !DILocation(line: 757, column: 16, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 756, column: 29)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 756, column: 7)
!261 = distinct !DILexicalBlock(scope: !182, file: !2, line: 756, column: 7)
!262 = !DILocation(line: 757, column: 22, scope: !259)
!263 = !DILocation(line: 753, column: 25, scope: !182)
!264 = !DILocation(line: 760, column: 7, scope: !194)
!265 = !DILocation(line: 761, column: 33, scope: !192)
!266 = !DILocation(line: 761, column: 24, scope: !192)
!267 = !{!203, !203, i64 0}
!268 = !DILocation(line: 761, column: 37, scope: !192)
!269 = !DILocation(line: 761, column: 43, scope: !192)
!270 = !DILocation(line: 0, scope: !192)
!271 = !DILocation(line: 763, column: 22, scope: !272)
!272 = distinct !DILexicalBlock(scope: !192, file: !2, line: 763, column: 12)
!273 = !DILocation(line: 763, column: 12, scope: !272)
!274 = !DILocation(line: 763, column: 28, scope: !272)
!275 = !DILocation(line: 763, column: 12, scope: !192)
!276 = !DILocation(line: 764, column: 19, scope: !192)
!277 = !DILocation(line: 764, column: 22, scope: !192)
!278 = !DILocation(line: 764, column: 32, scope: !192)
!279 = !DILocation(line: 764, column: 25, scope: !192)
!280 = !DILocation(line: 764, column: 13, scope: !192)
!281 = !DILocation(line: 765, column: 13, scope: !192)
!282 = !DILocation(line: 760, column: 17, scope: !193)
!283 = distinct !{!283, !264, !284, !285}
!284 = !DILocation(line: 766, column: 7, scope: !194)
!285 = !{!"llvm.loop.mustprogress"}
!286 = !DILocation(line: 768, column: 19, scope: !182)
!287 = !DILocation(line: 769, column: 60, scope: !182)
!288 = !DILocation(line: 769, column: 58, scope: !182)
!289 = !DILocation(line: 769, column: 15, scope: !182)
!290 = !DILocation(line: 769, column: 19, scope: !182)
!291 = !DILocation(line: 0, scope: !171)
!292 = !DILocation(line: 773, column: 1, scope: !154)
!293 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !296, !296, !28, !28}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!298 = !DISubprogram(name: "log", scope: !299, file: !299, line: 104, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!300 = !DISubroutineType(types: !301)
!301 = !{!66, !66}
!302 = !DISubprogram(name: "pow", scope: !299, file: !299, line: 140, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubroutineType(types: !304)
!304 = !{!66, !66, !66}
!305 = distinct !DISubprogram(name: "gsl_sf_zeta_e", scope: !2, file: !2, line: 776, type: !306, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!28, !157, !158}
!308 = !{!309, !310, !311, !315, !316, !317, !324, !325, !326, !327, !328}
!309 = !DILocalVariable(name: "s", arg: 1, scope: !305, file: !2, line: 776, type: !157)
!310 = !DILocalVariable(name: "result", arg: 2, scope: !305, file: !2, line: 776, type: !158)
!311 = !DILocalVariable(name: "zeta_one_minus_s", scope: !312, file: !2, line: 789, type: !159)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 786, column: 8)
!313 = distinct !DILexicalBlock(scope: !314, file: !2, line: 783, column: 11)
!314 = distinct !DILexicalBlock(scope: !305, file: !2, line: 780, column: 6)
!315 = !DILocalVariable(name: "stat_zoms", scope: !312, file: !2, line: 790, type: !183)
!316 = !DILocalVariable(name: "sin_term", scope: !312, file: !2, line: 791, type: !157)
!317 = !DILocalVariable(name: "twopi_pow", scope: !318, file: !2, line: 805, type: !321)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 798, column: 23)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 798, column: 13)
!320 = distinct !DILexicalBlock(scope: !312, file: !2, line: 793, column: 8)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 1152, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 18)
!324 = !DILocalVariable(name: "n", scope: !318, file: !2, line: 824, type: !183)
!325 = !DILocalVariable(name: "fs", scope: !318, file: !2, line: 825, type: !157)
!326 = !DILocalVariable(name: "p", scope: !318, file: !2, line: 826, type: !157)
!327 = !DILocalVariable(name: "g", scope: !318, file: !2, line: 828, type: !159)
!328 = !DILocalVariable(name: "stat_g", scope: !318, file: !2, line: 829, type: !183)
!329 = distinct !DIAssignID()
!330 = !DILocation(line: 0, scope: !318)
!331 = !DILocation(line: 0, scope: !305)
!332 = !DILocation(line: 780, column: 8, scope: !314)
!333 = !DILocation(line: 780, column: 6, scope: !305)
!334 = !DILocation(line: 781, column: 5, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 781, column: 5)
!336 = distinct !DILexicalBlock(scope: !314, file: !2, line: 780, column: 16)
!337 = !DILocation(line: 781, column: 5, scope: !338)
!338 = distinct !DILexicalBlock(scope: !335, file: !2, line: 781, column: 5)
!339 = !DILocation(line: 783, column: 13, scope: !313)
!340 = !DILocation(line: 783, column: 11, scope: !314)
!341 = !DILocalVariable(name: "s", arg: 1, scope: !342, file: !2, line: 154, type: !66)
!342 = distinct !DISubprogram(name: "riemann_zeta_sgt0", scope: !2, file: !2, line: 154, type: !343, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{!28, !66, !158}
!345 = !{!341, !346, !347, !350, !353, !354, !356, !357, !358}
!346 = !DILocalVariable(name: "result", arg: 2, scope: !342, file: !2, line: 154, type: !158)
!347 = !DILocalVariable(name: "c", scope: !348, file: !2, line: 157, type: !159)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 156, column: 15)
!349 = distinct !DILexicalBlock(scope: !342, file: !2, line: 156, column: 6)
!350 = !DILocalVariable(name: "x", scope: !351, file: !2, line: 164, type: !66)
!351 = distinct !DILexicalBlock(scope: !352, file: !2, line: 163, column: 22)
!352 = distinct !DILexicalBlock(scope: !349, file: !2, line: 163, column: 11)
!353 = !DILocalVariable(name: "c", scope: !351, file: !2, line: 165, type: !159)
!354 = !DILocalVariable(name: "f2", scope: !355, file: !2, line: 172, type: !66)
!355 = distinct !DILexicalBlock(scope: !352, file: !2, line: 171, column: 8)
!356 = !DILocalVariable(name: "f3", scope: !355, file: !2, line: 173, type: !66)
!357 = !DILocalVariable(name: "f5", scope: !355, file: !2, line: 174, type: !66)
!358 = !DILocalVariable(name: "f7", scope: !355, file: !2, line: 175, type: !66)
!359 = !DILocation(line: 0, scope: !342, inlinedAt: !360)
!360 = distinct !DILocation(line: 784, column: 12, scope: !361)
!361 = distinct !DILexicalBlock(scope: !313, file: !2, line: 783, column: 21)
!362 = !DILocation(line: 156, column: 8, scope: !349, inlinedAt: !360)
!363 = !DILocation(line: 156, column: 6, scope: !342, inlinedAt: !360)
!364 = !DILocation(line: 158, column: 35, scope: !348, inlinedAt: !360)
!365 = !DILocation(line: 11, column: 19, scope: !366, inlinedAt: !388)
!366 = distinct !DISubprogram(name: "cheb_eval_e", scope: !367, file: !367, line: 3, type: !368, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !372)
!367 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!368 = !DISubroutineType(types: !369)
!369 = !{!28, !370, !157, !158}
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !386}
!373 = !DILocalVariable(name: "cs", arg: 1, scope: !366, file: !367, line: 3, type: !370)
!374 = !DILocalVariable(name: "x", arg: 2, scope: !366, file: !367, line: 4, type: !157)
!375 = !DILocalVariable(name: "result", arg: 3, scope: !366, file: !367, line: 5, type: !158)
!376 = !DILocalVariable(name: "j", scope: !366, file: !367, line: 7, type: !28)
!377 = !DILocalVariable(name: "d", scope: !366, file: !367, line: 8, type: !66)
!378 = !DILocalVariable(name: "dd", scope: !366, file: !367, line: 9, type: !66)
!379 = !DILocalVariable(name: "y", scope: !366, file: !367, line: 11, type: !66)
!380 = !DILocalVariable(name: "y2", scope: !366, file: !367, line: 12, type: !66)
!381 = !DILocalVariable(name: "e", scope: !366, file: !367, line: 14, type: !66)
!382 = !DILocalVariable(name: "temp", scope: !383, file: !367, line: 17, type: !66)
!383 = distinct !DILexicalBlock(scope: !384, file: !367, line: 16, column: 33)
!384 = distinct !DILexicalBlock(scope: !385, file: !367, line: 16, column: 3)
!385 = distinct !DILexicalBlock(scope: !366, file: !367, line: 16, column: 3)
!386 = !DILocalVariable(name: "temp", scope: !387, file: !367, line: 24, type: !66)
!387 = distinct !DILexicalBlock(scope: !366, file: !367, line: 23, column: 3)
!388 = distinct !DILocation(line: 158, column: 5, scope: !348, inlinedAt: !360)
!389 = !{}
!390 = !DILocation(line: 0, scope: !366, inlinedAt: !388)
!391 = !DILocation(line: 11, column: 30, scope: !366, inlinedAt: !388)
!392 = !DILocation(line: 11, column: 39, scope: !366, inlinedAt: !388)
!393 = !DILocation(line: 12, column: 19, scope: !366, inlinedAt: !388)
!394 = !DILocation(line: 16, column: 3, scope: !385, inlinedAt: !388)
!395 = !DILocation(line: 0, scope: !383, inlinedAt: !388)
!396 = !DILocation(line: 18, column: 11, scope: !383, inlinedAt: !388)
!397 = !DILocation(line: 18, column: 21, scope: !383, inlinedAt: !388)
!398 = !DILocation(line: 19, column: 10, scope: !383, inlinedAt: !388)
!399 = !DILocation(line: 19, column: 26, scope: !383, inlinedAt: !388)
!400 = !DILocation(line: 19, column: 37, scope: !383, inlinedAt: !388)
!401 = !DILocation(line: 19, column: 7, scope: !383, inlinedAt: !388)
!402 = !DILocation(line: 16, column: 29, scope: !384, inlinedAt: !388)
!403 = !DILocation(line: 16, column: 23, scope: !384, inlinedAt: !388)
!404 = distinct !{!404, !394, !405, !285}
!405 = !DILocation(line: 21, column: 3, scope: !385, inlinedAt: !388)
!406 = !DILocation(line: 0, scope: !387, inlinedAt: !388)
!407 = !DILocation(line: 25, column: 10, scope: !387, inlinedAt: !388)
!408 = !DILocation(line: 25, column: 18, scope: !387, inlinedAt: !388)
!409 = !DILocation(line: 26, column: 10, scope: !387, inlinedAt: !388)
!410 = !DILocation(line: 26, column: 25, scope: !387, inlinedAt: !388)
!411 = !DILocation(line: 26, column: 34, scope: !387, inlinedAt: !388)
!412 = !DILocation(line: 26, column: 7, scope: !387, inlinedAt: !388)
!413 = !DILocation(line: 30, column: 33, scope: !366, inlinedAt: !388)
!414 = !DILocation(line: 0, scope: !348, inlinedAt: !360)
!415 = !DILocation(line: 159, column: 30, scope: !348, inlinedAt: !360)
!416 = !DILocation(line: 159, column: 25, scope: !348, inlinedAt: !360)
!417 = !DILocation(line: 159, column: 17, scope: !348, inlinedAt: !360)
!418 = !DILocation(line: 160, column: 27, scope: !348, inlinedAt: !360)
!419 = !DILocation(line: 160, column: 25, scope: !348, inlinedAt: !360)
!420 = !DILocation(line: 160, column: 59, scope: !348, inlinedAt: !360)
!421 = !DILocation(line: 160, column: 57, scope: !348, inlinedAt: !360)
!422 = !DILocation(line: 163, column: 13, scope: !352, inlinedAt: !360)
!423 = !DILocation(line: 163, column: 11, scope: !349, inlinedAt: !360)
!424 = !DILocation(line: 164, column: 20, scope: !351, inlinedAt: !360)
!425 = !DILocation(line: 164, column: 30, scope: !351, inlinedAt: !360)
!426 = !DILocation(line: 0, scope: !351, inlinedAt: !360)
!427 = !DILocation(line: 0, scope: !366, inlinedAt: !428)
!428 = distinct !DILocation(line: 166, column: 5, scope: !351, inlinedAt: !360)
!429 = !DILocation(line: 11, column: 19, scope: !366, inlinedAt: !428)
!430 = !DILocation(line: 11, column: 30, scope: !366, inlinedAt: !428)
!431 = !DILocation(line: 11, column: 39, scope: !366, inlinedAt: !428)
!432 = !DILocation(line: 12, column: 19, scope: !366, inlinedAt: !428)
!433 = !DILocation(line: 16, column: 3, scope: !385, inlinedAt: !428)
!434 = !DILocation(line: 0, scope: !383, inlinedAt: !428)
!435 = !DILocation(line: 18, column: 11, scope: !383, inlinedAt: !428)
!436 = !DILocation(line: 18, column: 21, scope: !383, inlinedAt: !428)
!437 = !DILocation(line: 19, column: 10, scope: !383, inlinedAt: !428)
!438 = !DILocation(line: 19, column: 26, scope: !383, inlinedAt: !428)
!439 = !DILocation(line: 19, column: 37, scope: !383, inlinedAt: !428)
!440 = !DILocation(line: 19, column: 7, scope: !383, inlinedAt: !428)
!441 = !DILocation(line: 16, column: 29, scope: !384, inlinedAt: !428)
!442 = !DILocation(line: 16, column: 23, scope: !384, inlinedAt: !428)
!443 = distinct !{!443, !433, !444, !285}
!444 = !DILocation(line: 21, column: 3, scope: !385, inlinedAt: !428)
!445 = !DILocation(line: 0, scope: !387, inlinedAt: !428)
!446 = !DILocation(line: 25, column: 10, scope: !387, inlinedAt: !428)
!447 = !DILocation(line: 25, column: 18, scope: !387, inlinedAt: !428)
!448 = !DILocation(line: 26, column: 10, scope: !387, inlinedAt: !428)
!449 = !DILocation(line: 26, column: 25, scope: !387, inlinedAt: !428)
!450 = !DILocation(line: 26, column: 34, scope: !387, inlinedAt: !428)
!451 = !DILocation(line: 26, column: 7, scope: !387, inlinedAt: !428)
!452 = !DILocation(line: 30, column: 33, scope: !366, inlinedAt: !428)
!453 = !DILocation(line: 167, column: 30, scope: !351, inlinedAt: !360)
!454 = !DILocation(line: 167, column: 25, scope: !351, inlinedAt: !360)
!455 = !DILocation(line: 167, column: 17, scope: !351, inlinedAt: !360)
!456 = !DILocation(line: 168, column: 25, scope: !351, inlinedAt: !360)
!457 = !DILocation(line: 168, column: 57, scope: !351, inlinedAt: !360)
!458 = !DILocation(line: 168, column: 55, scope: !351, inlinedAt: !360)
!459 = !DILocation(line: 172, column: 31, scope: !355, inlinedAt: !360)
!460 = !DILocation(line: 172, column: 23, scope: !355, inlinedAt: !360)
!461 = !DILocation(line: 173, column: 23, scope: !355, inlinedAt: !360)
!462 = !DILocation(line: 0, scope: !355, inlinedAt: !360)
!463 = !DILocation(line: 174, column: 23, scope: !355, inlinedAt: !360)
!464 = !DILocation(line: 175, column: 23, scope: !355, inlinedAt: !360)
!465 = !DILocation(line: 176, column: 26, scope: !355, inlinedAt: !360)
!466 = !DILocation(line: 176, column: 29, scope: !355, inlinedAt: !360)
!467 = !DILocation(line: 176, column: 32, scope: !355, inlinedAt: !360)
!468 = !DILocation(line: 176, column: 22, scope: !355, inlinedAt: !360)
!469 = !DILocation(line: 176, column: 17, scope: !355, inlinedAt: !360)
!470 = !DILocation(line: 177, column: 43, scope: !355, inlinedAt: !360)
!471 = !DILocation(line: 177, column: 41, scope: !355, inlinedAt: !360)
!472 = !DILocation(line: 0, scope: !349, inlinedAt: !360)
!473 = !DILocation(line: 784, column: 5, scope: !361)
!474 = !DILocalVariable(name: "s", arg: 1, scope: !475, file: !2, line: 185, type: !66)
!475 = distinct !DISubprogram(name: "riemann_zeta1ms_slt0", scope: !2, file: !2, line: 185, type: !343, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !476)
!476 = !{!474, !477, !478, !481, !482, !484, !485, !486}
!477 = !DILocalVariable(name: "result", arg: 2, scope: !475, file: !2, line: 185, type: !158)
!478 = !DILocalVariable(name: "x", scope: !479, file: !2, line: 188, type: !66)
!479 = distinct !DILexicalBlock(scope: !480, file: !2, line: 187, column: 17)
!480 = distinct !DILexicalBlock(scope: !475, file: !2, line: 187, column: 6)
!481 = !DILocalVariable(name: "c", scope: !479, file: !2, line: 189, type: !159)
!482 = !DILocalVariable(name: "f2", scope: !483, file: !2, line: 196, type: !66)
!483 = distinct !DILexicalBlock(scope: !480, file: !2, line: 195, column: 8)
!484 = !DILocalVariable(name: "f3", scope: !483, file: !2, line: 197, type: !66)
!485 = !DILocalVariable(name: "f5", scope: !483, file: !2, line: 198, type: !66)
!486 = !DILocalVariable(name: "f7", scope: !483, file: !2, line: 199, type: !66)
!487 = !DILocation(line: 0, scope: !475, inlinedAt: !488)
!488 = distinct !DILocation(line: 790, column: 27, scope: !312)
!489 = !DILocation(line: 187, column: 8, scope: !480, inlinedAt: !488)
!490 = !DILocation(line: 187, column: 6, scope: !475, inlinedAt: !488)
!491 = !DILocation(line: 188, column: 26, scope: !479, inlinedAt: !488)
!492 = !DILocation(line: 188, column: 29, scope: !479, inlinedAt: !488)
!493 = !DILocation(line: 0, scope: !479, inlinedAt: !488)
!494 = !DILocation(line: 0, scope: !366, inlinedAt: !495)
!495 = distinct !DILocation(line: 190, column: 5, scope: !479, inlinedAt: !488)
!496 = !DILocation(line: 11, column: 19, scope: !366, inlinedAt: !495)
!497 = !DILocation(line: 11, column: 30, scope: !366, inlinedAt: !495)
!498 = !DILocation(line: 11, column: 39, scope: !366, inlinedAt: !495)
!499 = !DILocation(line: 12, column: 19, scope: !366, inlinedAt: !495)
!500 = !DILocation(line: 16, column: 3, scope: !385, inlinedAt: !495)
!501 = !DILocation(line: 0, scope: !383, inlinedAt: !495)
!502 = !DILocation(line: 18, column: 11, scope: !383, inlinedAt: !495)
!503 = !DILocation(line: 18, column: 21, scope: !383, inlinedAt: !495)
!504 = !DILocation(line: 19, column: 10, scope: !383, inlinedAt: !495)
!505 = !DILocation(line: 19, column: 26, scope: !383, inlinedAt: !495)
!506 = !DILocation(line: 19, column: 37, scope: !383, inlinedAt: !495)
!507 = !DILocation(line: 19, column: 7, scope: !383, inlinedAt: !495)
!508 = !DILocation(line: 16, column: 29, scope: !384, inlinedAt: !495)
!509 = !DILocation(line: 16, column: 23, scope: !384, inlinedAt: !495)
!510 = distinct !{!510, !500, !511, !285}
!511 = !DILocation(line: 21, column: 3, scope: !385, inlinedAt: !495)
!512 = !DILocation(line: 0, scope: !387, inlinedAt: !495)
!513 = !DILocation(line: 25, column: 10, scope: !387, inlinedAt: !495)
!514 = !DILocation(line: 25, column: 18, scope: !387, inlinedAt: !495)
!515 = !DILocation(line: 26, column: 10, scope: !387, inlinedAt: !495)
!516 = !DILocation(line: 26, column: 25, scope: !387, inlinedAt: !495)
!517 = !DILocation(line: 26, column: 34, scope: !387, inlinedAt: !495)
!518 = !DILocation(line: 26, column: 7, scope: !387, inlinedAt: !495)
!519 = !DILocation(line: 30, column: 33, scope: !366, inlinedAt: !495)
!520 = !DILocation(line: 191, column: 28, scope: !479, inlinedAt: !488)
!521 = !DILocation(line: 191, column: 25, scope: !479, inlinedAt: !488)
!522 = !DILocation(line: 0, scope: !312)
!523 = !DILocation(line: 192, column: 52, scope: !479, inlinedAt: !488)
!524 = !DILocation(line: 192, column: 50, scope: !479, inlinedAt: !488)
!525 = !DILocation(line: 192, column: 32, scope: !479, inlinedAt: !488)
!526 = !DILocation(line: 196, column: 31, scope: !483, inlinedAt: !488)
!527 = !DILocation(line: 196, column: 23, scope: !483, inlinedAt: !488)
!528 = !DILocation(line: 197, column: 23, scope: !483, inlinedAt: !488)
!529 = !DILocation(line: 0, scope: !483, inlinedAt: !488)
!530 = !DILocation(line: 198, column: 23, scope: !483, inlinedAt: !488)
!531 = !DILocation(line: 199, column: 23, scope: !483, inlinedAt: !488)
!532 = !DILocation(line: 200, column: 26, scope: !483, inlinedAt: !488)
!533 = !DILocation(line: 200, column: 29, scope: !483, inlinedAt: !488)
!534 = !DILocation(line: 200, column: 32, scope: !483, inlinedAt: !488)
!535 = !DILocation(line: 200, column: 22, scope: !483, inlinedAt: !488)
!536 = !DILocation(line: 201, column: 43, scope: !483, inlinedAt: !488)
!537 = !DILocation(line: 201, column: 41, scope: !483, inlinedAt: !488)
!538 = !DILocation(line: 0, scope: !480, inlinedAt: !488)
!539 = !DILocation(line: 791, column: 42, scope: !312)
!540 = !DILocation(line: 791, column: 29, scope: !312)
!541 = !DILocation(line: 791, column: 70, scope: !312)
!542 = !DILocation(line: 791, column: 83, scope: !312)
!543 = !DILocation(line: 793, column: 17, scope: !320)
!544 = !DILocation(line: 793, column: 8, scope: !312)
!545 = !DILocation(line: 795, column: 19, scope: !546)
!546 = distinct !DILexicalBlock(scope: !320, file: !2, line: 793, column: 25)
!547 = !DILocation(line: 796, column: 7, scope: !546)
!548 = !DILocation(line: 798, column: 15, scope: !319)
!549 = !DILocation(line: 798, column: 13, scope: !320)
!550 = distinct !DIAssignID()
!551 = !DILocation(line: 824, column: 31, scope: !318)
!552 = !DILocation(line: 824, column: 21, scope: !318)
!553 = !DILocation(line: 825, column: 34, scope: !318)
!554 = !DILocation(line: 825, column: 33, scope: !318)
!555 = !DILocation(line: 826, column: 24, scope: !318)
!556 = !DILocation(line: 826, column: 44, scope: !318)
!557 = !DILocation(line: 826, column: 42, scope: !318)
!558 = !DILocation(line: 828, column: 7, scope: !318)
!559 = !DILocation(line: 829, column: 26, scope: !318)
!560 = !DILocation(line: 830, column: 28, scope: !318)
!561 = !DILocation(line: 830, column: 24, scope: !318)
!562 = !DILocation(line: 830, column: 32, scope: !318)
!563 = !DILocation(line: 830, column: 43, scope: !318)
!564 = !DILocation(line: 830, column: 20, scope: !318)
!565 = !DILocation(line: 831, column: 22, scope: !318)
!566 = !DILocation(line: 831, column: 49, scope: !318)
!567 = !DILocation(line: 831, column: 15, scope: !318)
!568 = !DILocation(line: 832, column: 29, scope: !318)
!569 = !DILocation(line: 832, column: 40, scope: !318)
!570 = !DILocation(line: 832, column: 22, scope: !318)
!571 = !DILocation(line: 832, column: 68, scope: !318)
!572 = !DILocation(line: 832, column: 64, scope: !318)
!573 = !DILocation(line: 833, column: 41, scope: !318)
!574 = !DILocation(line: 833, column: 38, scope: !318)
!575 = !DILocation(line: 833, column: 56, scope: !318)
!576 = !DILocation(line: 833, column: 54, scope: !318)
!577 = !DILocation(line: 833, column: 19, scope: !318)
!578 = !DILocation(line: 835, column: 5, scope: !319)
!579 = !DILocation(line: 847, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !2, line: 847, column: 7)
!581 = distinct !DILexicalBlock(scope: !319, file: !2, line: 836, column: 10)
!582 = !DILocation(line: 847, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !2, line: 847, column: 7)
!584 = !DILocation(line: 0, scope: !314)
!585 = !DILocation(line: 850, column: 1, scope: !305)
!586 = !DISubprogram(name: "fmod", scope: !299, file: !299, line: 168, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!587 = !DISubprogram(name: "sin", scope: !299, file: !299, line: 64, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!588 = !DISubprogram(name: "gsl_sf_gamma_e", scope: !589, file: !589, line: 66, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!590 = distinct !DISubprogram(name: "gsl_sf_zeta_int_e", scope: !2, file: !2, line: 853, type: !591, scopeLine: 854, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{!28, !183, !158}
!593 = !{!594, !595}
!594 = !DILocalVariable(name: "n", arg: 1, scope: !590, file: !2, line: 853, type: !183)
!595 = !DILocalVariable(name: "result", arg: 2, scope: !590, file: !2, line: 853, type: !158)
!596 = !DILocation(line: 0, scope: !590)
!597 = !DILocation(line: 857, column: 8, scope: !598)
!598 = distinct !DILexicalBlock(scope: !590, file: !2, line: 857, column: 6)
!599 = !DILocation(line: 857, column: 6, scope: !590)
!600 = !DILocation(line: 858, column: 9, scope: !601)
!601 = distinct !DILexicalBlock(scope: !602, file: !2, line: 858, column: 8)
!602 = distinct !DILexicalBlock(scope: !598, file: !2, line: 857, column: 13)
!603 = !DILocation(line: 858, column: 8, scope: !602)
!604 = !DILocation(line: 860, column: 19, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !2, line: 858, column: 24)
!606 = !DILocation(line: 861, column: 7, scope: !605)
!607 = !DILocation(line: 863, column: 15, scope: !608)
!608 = distinct !DILexicalBlock(scope: !601, file: !2, line: 863, column: 13)
!609 = !DILocation(line: 863, column: 13, scope: !601)
!610 = !DILocation(line: 864, column: 40, scope: !611)
!611 = distinct !DILexicalBlock(scope: !608, file: !2, line: 863, column: 39)
!612 = !DILocation(line: 864, column: 21, scope: !611)
!613 = !DILocation(line: 864, column: 19, scope: !611)
!614 = !DILocation(line: 865, column: 45, scope: !611)
!615 = !DILocation(line: 865, column: 43, scope: !611)
!616 = !DILocation(line: 865, column: 15, scope: !611)
!617 = !DILocation(line: 865, column: 19, scope: !611)
!618 = !DILocation(line: 866, column: 7, scope: !611)
!619 = !DILocation(line: 869, column: 28, scope: !620)
!620 = distinct !DILexicalBlock(scope: !608, file: !2, line: 868, column: 10)
!621 = !DILocation(line: 869, column: 14, scope: !620)
!622 = !DILocation(line: 869, column: 7, scope: !620)
!623 = !DILocation(line: 872, column: 13, scope: !624)
!624 = distinct !DILexicalBlock(scope: !598, file: !2, line: 872, column: 11)
!625 = !DILocation(line: 872, column: 11, scope: !598)
!626 = !DILocation(line: 873, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !2, line: 873, column: 5)
!628 = distinct !DILexicalBlock(scope: !624, file: !2, line: 872, column: 18)
!629 = !DILocation(line: 873, column: 5, scope: !630)
!630 = distinct !DILexicalBlock(scope: !627, file: !2, line: 873, column: 5)
!631 = !DILocation(line: 875, column: 13, scope: !632)
!632 = distinct !DILexicalBlock(scope: !624, file: !2, line: 875, column: 11)
!633 = !DILocation(line: 875, column: 11, scope: !624)
!634 = !DILocation(line: 876, column: 25, scope: !635)
!635 = distinct !DILexicalBlock(scope: !632, file: !2, line: 875, column: 36)
!636 = !DILocation(line: 876, column: 17, scope: !635)
!637 = !DILocation(line: 877, column: 43, scope: !635)
!638 = !DILocation(line: 877, column: 41, scope: !635)
!639 = !DILocation(line: 877, column: 13, scope: !635)
!640 = !DILocation(line: 877, column: 17, scope: !635)
!641 = !DILocation(line: 878, column: 5, scope: !635)
!642 = !DILocation(line: 881, column: 17, scope: !643)
!643 = distinct !DILexicalBlock(scope: !632, file: !2, line: 880, column: 8)
!644 = !DILocation(line: 882, column: 13, scope: !643)
!645 = !DILocation(line: 882, column: 17, scope: !643)
!646 = !DILocation(line: 883, column: 5, scope: !643)
!647 = !DILocation(line: 0, scope: !598)
!648 = !DILocation(line: 885, column: 1, scope: !590)
!649 = distinct !DISubprogram(name: "gsl_sf_zetam1_e", scope: !2, file: !2, line: 888, type: !306, scopeLine: 889, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !650)
!650 = !{!651, !652, !653}
!651 = !DILocalVariable(name: "s", arg: 1, scope: !649, file: !2, line: 888, type: !157)
!652 = !DILocalVariable(name: "result", arg: 2, scope: !649, file: !2, line: 888, type: !158)
!653 = !DILocalVariable(name: "stat", scope: !654, file: !2, line: 892, type: !28)
!654 = distinct !DILexicalBlock(scope: !655, file: !2, line: 891, column: 3)
!655 = distinct !DILexicalBlock(scope: !649, file: !2, line: 890, column: 6)
!656 = !DILocation(line: 0, scope: !649)
!657 = !DILocation(line: 890, column: 8, scope: !655)
!658 = !DILocation(line: 890, column: 6, scope: !649)
!659 = !DILocation(line: 892, column: 16, scope: !654)
!660 = !DILocation(line: 0, scope: !654)
!661 = !DILocation(line: 893, column: 27, scope: !654)
!662 = !DILocation(line: 893, column: 17, scope: !654)
!663 = !DILocation(line: 896, column: 13, scope: !664)
!664 = distinct !DILexicalBlock(scope: !655, file: !2, line: 896, column: 11)
!665 = !DILocation(line: 896, column: 11, scope: !655)
!666 = !DILocalVariable(name: "s", arg: 1, scope: !667, file: !2, line: 209, type: !66)
!667 = distinct !DISubprogram(name: "riemann_zeta_minus_1_intermediate_s", scope: !2, file: !2, line: 209, type: !343, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !668)
!668 = !{!666, !669, !670, !671}
!669 = !DILocalVariable(name: "result", arg: 2, scope: !667, file: !2, line: 209, type: !158)
!670 = !DILocalVariable(name: "t", scope: !667, file: !2, line: 211, type: !66)
!671 = !DILocalVariable(name: "c", scope: !667, file: !2, line: 212, type: !159)
!672 = !DILocation(line: 0, scope: !667, inlinedAt: !673)
!673 = distinct !DILocation(line: 898, column: 12, scope: !674)
!674 = distinct !DILexicalBlock(scope: !664, file: !2, line: 897, column: 3)
!675 = !DILocation(line: 211, column: 24, scope: !667, inlinedAt: !673)
!676 = !DILocation(line: 0, scope: !366, inlinedAt: !677)
!677 = distinct !DILocation(line: 213, column: 3, scope: !667, inlinedAt: !673)
!678 = !DILocation(line: 11, column: 19, scope: !366, inlinedAt: !677)
!679 = !DILocation(line: 11, column: 30, scope: !366, inlinedAt: !677)
!680 = !DILocation(line: 11, column: 39, scope: !366, inlinedAt: !677)
!681 = !DILocation(line: 12, column: 19, scope: !366, inlinedAt: !677)
!682 = !DILocation(line: 16, column: 3, scope: !385, inlinedAt: !677)
!683 = !DILocation(line: 0, scope: !383, inlinedAt: !677)
!684 = !DILocation(line: 18, column: 11, scope: !383, inlinedAt: !677)
!685 = !DILocation(line: 18, column: 21, scope: !383, inlinedAt: !677)
!686 = !DILocation(line: 19, column: 10, scope: !383, inlinedAt: !677)
!687 = !DILocation(line: 19, column: 26, scope: !383, inlinedAt: !677)
!688 = !DILocation(line: 19, column: 37, scope: !383, inlinedAt: !677)
!689 = !DILocation(line: 19, column: 7, scope: !383, inlinedAt: !677)
!690 = !DILocation(line: 16, column: 29, scope: !384, inlinedAt: !677)
!691 = !DILocation(line: 16, column: 23, scope: !384, inlinedAt: !677)
!692 = distinct !{!692, !682, !693, !285}
!693 = !DILocation(line: 21, column: 3, scope: !385, inlinedAt: !677)
!694 = !DILocation(line: 0, scope: !387, inlinedAt: !677)
!695 = !DILocation(line: 25, column: 10, scope: !387, inlinedAt: !677)
!696 = !DILocation(line: 25, column: 18, scope: !387, inlinedAt: !677)
!697 = !DILocation(line: 26, column: 10, scope: !387, inlinedAt: !677)
!698 = !DILocation(line: 26, column: 25, scope: !387, inlinedAt: !677)
!699 = !DILocation(line: 26, column: 34, scope: !387, inlinedAt: !677)
!700 = !DILocation(line: 26, column: 7, scope: !387, inlinedAt: !677)
!701 = !DILocation(line: 30, column: 33, scope: !366, inlinedAt: !677)
!702 = !DILocation(line: 214, column: 17, scope: !667, inlinedAt: !673)
!703 = !DILocation(line: 214, column: 39, scope: !667, inlinedAt: !673)
!704 = !DILocation(line: 214, column: 30, scope: !667, inlinedAt: !673)
!705 = !DILocation(line: 214, column: 15, scope: !667, inlinedAt: !673)
!706 = !DILocation(line: 215, column: 46, scope: !667, inlinedAt: !673)
!707 = !DILocation(line: 215, column: 11, scope: !667, inlinedAt: !673)
!708 = !DILocation(line: 215, column: 15, scope: !667, inlinedAt: !673)
!709 = !DILocation(line: 898, column: 5, scope: !674)
!710 = !DILocalVariable(name: "s", arg: 1, scope: !711, file: !2, line: 227, type: !66)
!711 = distinct !DISubprogram(name: "riemann_zeta_minus1_large_s", scope: !2, file: !2, line: 227, type: !343, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !712)
!712 = !{!710, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723}
!713 = !DILocalVariable(name: "result", arg: 2, scope: !711, file: !2, line: 227, type: !158)
!714 = !DILocalVariable(name: "a", scope: !711, file: !2, line: 229, type: !66)
!715 = !DILocalVariable(name: "b", scope: !711, file: !2, line: 230, type: !66)
!716 = !DILocalVariable(name: "c", scope: !711, file: !2, line: 231, type: !66)
!717 = !DILocalVariable(name: "d", scope: !711, file: !2, line: 232, type: !66)
!718 = !DILocalVariable(name: "e", scope: !711, file: !2, line: 233, type: !66)
!719 = !DILocalVariable(name: "f", scope: !711, file: !2, line: 234, type: !66)
!720 = !DILocalVariable(name: "t1", scope: !711, file: !2, line: 235, type: !66)
!721 = !DILocalVariable(name: "t2", scope: !711, file: !2, line: 236, type: !66)
!722 = !DILocalVariable(name: "numt", scope: !711, file: !2, line: 248, type: !66)
!723 = !DILocalVariable(name: "zeta", scope: !711, file: !2, line: 249, type: !66)
!724 = !DILocation(line: 0, scope: !711, inlinedAt: !725)
!725 = distinct !DILocation(line: 902, column: 12, scope: !726)
!726 = distinct !DILexicalBlock(scope: !664, file: !2, line: 901, column: 3)
!727 = !DILocation(line: 229, column: 23, scope: !711, inlinedAt: !725)
!728 = !DILocation(line: 229, column: 14, scope: !711, inlinedAt: !725)
!729 = !DILocation(line: 230, column: 14, scope: !711, inlinedAt: !725)
!730 = !DILocation(line: 231, column: 14, scope: !711, inlinedAt: !725)
!731 = !DILocation(line: 232, column: 14, scope: !711, inlinedAt: !725)
!732 = !DILocation(line: 233, column: 14, scope: !711, inlinedAt: !725)
!733 = !DILocation(line: 234, column: 14, scope: !711, inlinedAt: !725)
!734 = !DILocation(line: 235, column: 21, scope: !711, inlinedAt: !725)
!735 = !DILocation(line: 235, column: 25, scope: !711, inlinedAt: !725)
!736 = !DILocation(line: 235, column: 29, scope: !711, inlinedAt: !725)
!737 = !DILocation(line: 235, column: 33, scope: !711, inlinedAt: !725)
!738 = !DILocation(line: 236, column: 19, scope: !711, inlinedAt: !725)
!739 = !DILocation(line: 236, column: 21, scope: !711, inlinedAt: !725)
!740 = !DILocation(line: 236, column: 23, scope: !711, inlinedAt: !725)
!741 = !DILocation(line: 236, column: 25, scope: !711, inlinedAt: !725)
!742 = !DILocation(line: 236, column: 16, scope: !711, inlinedAt: !725)
!743 = !DILocation(line: 236, column: 37, scope: !711, inlinedAt: !725)
!744 = !DILocation(line: 236, column: 39, scope: !711, inlinedAt: !725)
!745 = !DILocation(line: 236, column: 32, scope: !711, inlinedAt: !725)
!746 = !DILocation(line: 236, column: 49, scope: !711, inlinedAt: !725)
!747 = !DILocation(line: 236, column: 51, scope: !711, inlinedAt: !725)
!748 = !DILocation(line: 236, column: 46, scope: !711, inlinedAt: !725)
!749 = !DILocation(line: 236, column: 61, scope: !711, inlinedAt: !725)
!750 = !DILocation(line: 236, column: 58, scope: !711, inlinedAt: !725)
!751 = !DILocation(line: 236, column: 68, scope: !711, inlinedAt: !725)
!752 = !DILocation(line: 248, column: 20, scope: !711, inlinedAt: !725)
!753 = !DILocation(line: 249, column: 26, scope: !711, inlinedAt: !725)
!754 = !DILocation(line: 249, column: 34, scope: !711, inlinedAt: !725)
!755 = !DILocation(line: 249, column: 29, scope: !711, inlinedAt: !725)
!756 = !DILocation(line: 249, column: 37, scope: !711, inlinedAt: !725)
!757 = !DILocation(line: 249, column: 45, scope: !711, inlinedAt: !725)
!758 = !DILocation(line: 249, column: 53, scope: !711, inlinedAt: !725)
!759 = !DILocation(line: 249, column: 61, scope: !711, inlinedAt: !725)
!760 = !DILocation(line: 249, column: 20, scope: !711, inlinedAt: !725)
!761 = !DILocation(line: 250, column: 21, scope: !711, inlinedAt: !725)
!762 = !DILocation(line: 250, column: 15, scope: !711, inlinedAt: !725)
!763 = !DILocation(line: 251, column: 22, scope: !711, inlinedAt: !725)
!764 = !DILocation(line: 251, column: 32, scope: !711, inlinedAt: !725)
!765 = !DILocation(line: 251, column: 37, scope: !711, inlinedAt: !725)
!766 = !DILocation(line: 251, column: 53, scope: !711, inlinedAt: !725)
!767 = !DILocation(line: 251, column: 11, scope: !711, inlinedAt: !725)
!768 = !DILocation(line: 251, column: 15, scope: !711, inlinedAt: !725)
!769 = !DILocation(line: 902, column: 5, scope: !726)
!770 = !DILocation(line: 0, scope: !655)
!771 = !DILocation(line: 904, column: 1, scope: !649)
!772 = distinct !DISubprogram(name: "gsl_sf_zetam1_int_e", scope: !2, file: !2, line: 907, type: !591, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !773)
!773 = !{!774, !775}
!774 = !DILocalVariable(name: "n", arg: 1, scope: !772, file: !2, line: 907, type: !183)
!775 = !DILocalVariable(name: "result", arg: 2, scope: !772, file: !2, line: 907, type: !158)
!776 = !DILocation(line: 0, scope: !772)
!777 = !DILocation(line: 909, column: 8, scope: !778)
!778 = distinct !DILexicalBlock(scope: !772, file: !2, line: 909, column: 6)
!779 = !DILocation(line: 909, column: 6, scope: !772)
!780 = !DILocation(line: 910, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 910, column: 8)
!782 = distinct !DILexicalBlock(scope: !778, file: !2, line: 909, column: 13)
!783 = !DILocation(line: 910, column: 8, scope: !782)
!784 = !DILocation(line: 911, column: 19, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !2, line: 910, column: 24)
!786 = !DILocation(line: 912, column: 15, scope: !785)
!787 = !DILocation(line: 912, column: 19, scope: !785)
!788 = !DILocation(line: 913, column: 7, scope: !785)
!789 = !DILocation(line: 915, column: 15, scope: !790)
!790 = distinct !DILexicalBlock(scope: !781, file: !2, line: 915, column: 13)
!791 = !DILocation(line: 915, column: 13, scope: !781)
!792 = !DILocation(line: 916, column: 40, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !2, line: 915, column: 39)
!794 = !DILocation(line: 916, column: 21, scope: !793)
!795 = !DILocation(line: 916, column: 19, scope: !793)
!796 = !DILocation(line: 917, column: 45, scope: !793)
!797 = !DILocation(line: 917, column: 43, scope: !793)
!798 = !DILocation(line: 917, column: 15, scope: !793)
!799 = !DILocation(line: 917, column: 19, scope: !793)
!800 = !DILocation(line: 918, column: 7, scope: !793)
!801 = !DILocation(line: 923, column: 28, scope: !802)
!802 = distinct !DILexicalBlock(scope: !790, file: !2, line: 920, column: 10)
!803 = !DILocation(line: 923, column: 14, scope: !802)
!804 = !DILocation(line: 923, column: 7, scope: !802)
!805 = !DILocation(line: 926, column: 13, scope: !806)
!806 = distinct !DILexicalBlock(scope: !778, file: !2, line: 926, column: 11)
!807 = !DILocation(line: 926, column: 11, scope: !778)
!808 = !DILocation(line: 927, column: 5, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !2, line: 927, column: 5)
!810 = distinct !DILexicalBlock(scope: !806, file: !2, line: 926, column: 18)
!811 = !DILocation(line: 927, column: 5, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !2, line: 927, column: 5)
!813 = !DILocation(line: 929, column: 13, scope: !814)
!814 = distinct !DILexicalBlock(scope: !806, file: !2, line: 929, column: 11)
!815 = !DILocation(line: 929, column: 11, scope: !806)
!816 = !DILocation(line: 930, column: 19, scope: !817)
!817 = distinct !DILexicalBlock(scope: !814, file: !2, line: 929, column: 36)
!818 = !DILocation(line: 930, column: 17, scope: !817)
!819 = !DILocation(line: 931, column: 43, scope: !817)
!820 = !DILocation(line: 931, column: 41, scope: !817)
!821 = !DILocation(line: 931, column: 13, scope: !817)
!822 = !DILocation(line: 931, column: 17, scope: !817)
!823 = !DILocation(line: 932, column: 5, scope: !817)
!824 = !DILocation(line: 935, column: 28, scope: !825)
!825 = distinct !DILexicalBlock(scope: !814, file: !2, line: 934, column: 8)
!826 = !DILocation(line: 935, column: 12, scope: !825)
!827 = !DILocation(line: 935, column: 5, scope: !825)
!828 = !DILocation(line: 0, scope: !778)
!829 = !DILocation(line: 937, column: 1, scope: !772)
!830 = distinct !DISubprogram(name: "gsl_sf_eta_int_e", scope: !2, file: !2, line: 940, type: !831, scopeLine: 941, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!28, !28, !158}
!833 = !{!834, !835, !836, !843, !844, !845, !846}
!834 = !DILocalVariable(name: "n", arg: 1, scope: !830, file: !2, line: 940, type: !28)
!835 = !DILocalVariable(name: "result", arg: 2, scope: !830, file: !2, line: 940, type: !158)
!836 = !DILocalVariable(name: "z", scope: !837, file: !2, line: 967, type: !159)
!837 = distinct !DILexicalBlock(scope: !838, file: !2, line: 966, column: 10)
!838 = distinct !DILexicalBlock(scope: !839, file: !2, line: 961, column: 13)
!839 = distinct !DILexicalBlock(scope: !840, file: !2, line: 955, column: 8)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 952, column: 8)
!841 = distinct !DILexicalBlock(scope: !842, file: !2, line: 947, column: 11)
!842 = distinct !DILexicalBlock(scope: !830, file: !2, line: 942, column: 6)
!843 = !DILocalVariable(name: "p", scope: !837, file: !2, line: 968, type: !159)
!844 = !DILocalVariable(name: "stat_z", scope: !837, file: !2, line: 969, type: !28)
!845 = !DILocalVariable(name: "stat_p", scope: !837, file: !2, line: 970, type: !28)
!846 = !DILocalVariable(name: "stat_m", scope: !837, file: !2, line: 971, type: !28)
!847 = distinct !DIAssignID()
!848 = !DILocation(line: 0, scope: !837)
!849 = distinct !DIAssignID()
!850 = !DILocation(line: 0, scope: !830)
!851 = !DILocation(line: 942, column: 8, scope: !842)
!852 = !DILocation(line: 942, column: 6, scope: !830)
!853 = !DILocation(line: 943, column: 17, scope: !854)
!854 = distinct !DILexicalBlock(scope: !842, file: !2, line: 942, column: 30)
!855 = !DILocation(line: 944, column: 13, scope: !854)
!856 = !DILocation(line: 944, column: 17, scope: !854)
!857 = !DILocation(line: 945, column: 5, scope: !854)
!858 = !DILocation(line: 947, column: 13, scope: !841)
!859 = !DILocation(line: 947, column: 11, scope: !842)
!860 = !DILocation(line: 948, column: 19, scope: !861)
!861 = distinct !DILexicalBlock(scope: !841, file: !2, line: 947, column: 19)
!862 = !DILocation(line: 948, column: 17, scope: !861)
!863 = !DILocation(line: 949, column: 43, scope: !861)
!864 = !DILocation(line: 949, column: 41, scope: !861)
!865 = !DILocation(line: 949, column: 13, scope: !861)
!866 = !DILocation(line: 949, column: 17, scope: !861)
!867 = !DILocation(line: 950, column: 5, scope: !861)
!868 = !DILocation(line: 955, column: 9, scope: !839)
!869 = !DILocation(line: 955, column: 8, scope: !840)
!870 = !DILocation(line: 958, column: 19, scope: !871)
!871 = distinct !DILexicalBlock(scope: !839, file: !2, line: 955, column: 24)
!872 = !DILocation(line: 959, column: 7, scope: !871)
!873 = !DILocation(line: 961, column: 15, scope: !838)
!874 = !DILocation(line: 961, column: 13, scope: !839)
!875 = !DILocation(line: 962, column: 39, scope: !876)
!876 = distinct !DILexicalBlock(scope: !838, file: !2, line: 961, column: 38)
!877 = !DILocation(line: 962, column: 21, scope: !876)
!878 = !DILocation(line: 962, column: 19, scope: !876)
!879 = !DILocation(line: 963, column: 45, scope: !876)
!880 = !DILocation(line: 963, column: 43, scope: !876)
!881 = !DILocation(line: 963, column: 15, scope: !876)
!882 = !DILocation(line: 963, column: 19, scope: !876)
!883 = !DILocation(line: 964, column: 7, scope: !876)
!884 = !DILocation(line: 967, column: 7, scope: !837)
!885 = !DILocation(line: 968, column: 7, scope: !837)
!886 = !DILocation(line: 0, scope: !590, inlinedAt: !887)
!887 = distinct !DILocation(line: 969, column: 20, scope: !837)
!888 = !DILocation(line: 869, column: 28, scope: !620, inlinedAt: !887)
!889 = !DILocation(line: 869, column: 14, scope: !620, inlinedAt: !887)
!890 = !DILocation(line: 970, column: 40, scope: !837)
!891 = !DILocation(line: 970, column: 20, scope: !837)
!892 = !DILocation(line: 971, column: 41, scope: !837)
!893 = !DILocation(line: 971, column: 38, scope: !837)
!894 = !DILocation(line: 971, column: 48, scope: !837)
!895 = !DILocation(line: 971, column: 20, scope: !837)
!896 = !DILocation(line: 972, column: 29, scope: !837)
!897 = !DILocation(line: 972, column: 33, scope: !837)
!898 = !DILocation(line: 972, column: 51, scope: !837)
!899 = !DILocation(line: 972, column: 22, scope: !837)
!900 = !DILocation(line: 972, column: 64, scope: !837)
!901 = !DILocation(line: 972, column: 77, scope: !837)
!902 = !DILocation(line: 972, column: 70, scope: !837)
!903 = !DILocation(line: 972, column: 68, scope: !837)
!904 = !DILocation(line: 972, column: 15, scope: !837)
!905 = !DILocation(line: 973, column: 59, scope: !837)
!906 = !DILocation(line: 973, column: 46, scope: !837)
!907 = !DILocation(line: 973, column: 44, scope: !837)
!908 = !DILocation(line: 973, column: 19, scope: !837)
!909 = !DILocation(line: 974, column: 14, scope: !837)
!910 = !DILocation(line: 975, column: 5, scope: !838)
!911 = !DILocation(line: 0, scope: !842)
!912 = !DILocation(line: 977, column: 1, scope: !830)
!913 = !DISubprogram(name: "gsl_sf_exp_e", scope: !914, file: !914, line: 45, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!914 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!915 = !DISubprogram(name: "gsl_sf_multiply_e", scope: !916, file: !916, line: 46, type: !155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!916 = !DIFile(filename: "../gsl/gsl_sf_elementary.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "24579d359b4176c41b805fec4d3d9c1d")
!917 = distinct !DISubprogram(name: "gsl_sf_eta_e", scope: !2, file: !2, line: 980, type: !306, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !918)
!918 = !{!919, !920, !921, !925, !926, !927, !928, !929, !930, !932, !933, !934, !935}
!919 = !DILocalVariable(name: "s", arg: 1, scope: !917, file: !2, line: 980, type: !157)
!920 = !DILocalVariable(name: "result", arg: 2, scope: !917, file: !2, line: 980, type: !158)
!921 = !DILocalVariable(name: "del", scope: !922, file: !2, line: 990, type: !66)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 989, column: 53)
!923 = distinct !DILexicalBlock(scope: !924, file: !2, line: 989, column: 11)
!924 = distinct !DILexicalBlock(scope: !917, file: !2, line: 984, column: 6)
!925 = !DILocalVariable(name: "c0", scope: !922, file: !2, line: 991, type: !66)
!926 = !DILocalVariable(name: "c1", scope: !922, file: !2, line: 992, type: !66)
!927 = !DILocalVariable(name: "c2", scope: !922, file: !2, line: 993, type: !66)
!928 = !DILocalVariable(name: "c3", scope: !922, file: !2, line: 994, type: !66)
!929 = !DILocalVariable(name: "c4", scope: !922, file: !2, line: 995, type: !66)
!930 = !DILocalVariable(name: "z", scope: !931, file: !2, line: 1001, type: !159)
!931 = distinct !DILexicalBlock(scope: !923, file: !2, line: 1000, column: 8)
!932 = !DILocalVariable(name: "p", scope: !931, file: !2, line: 1002, type: !159)
!933 = !DILocalVariable(name: "stat_z", scope: !931, file: !2, line: 1003, type: !28)
!934 = !DILocalVariable(name: "stat_p", scope: !931, file: !2, line: 1004, type: !28)
!935 = !DILocalVariable(name: "stat_m", scope: !931, file: !2, line: 1005, type: !28)
!936 = distinct !DIAssignID()
!937 = !DILocation(line: 0, scope: !931)
!938 = distinct !DIAssignID()
!939 = !DILocation(line: 0, scope: !917)
!940 = !DILocation(line: 984, column: 8, scope: !924)
!941 = !DILocation(line: 984, column: 6, scope: !917)
!942 = !DILocation(line: 985, column: 17, scope: !943)
!943 = distinct !DILexicalBlock(scope: !924, file: !2, line: 984, column: 17)
!944 = !DILocation(line: 986, column: 13, scope: !943)
!945 = !DILocation(line: 986, column: 17, scope: !943)
!946 = !DILocation(line: 987, column: 5, scope: !943)
!947 = !DILocation(line: 989, column: 11, scope: !923)
!948 = !DILocation(line: 989, column: 23, scope: !923)
!949 = !DILocation(line: 989, column: 11, scope: !924)
!950 = !DILocation(line: 0, scope: !922)
!951 = !DILocation(line: 996, column: 64, scope: !922)
!952 = !DILocation(line: 996, column: 52, scope: !922)
!953 = !DILocation(line: 996, column: 40, scope: !922)
!954 = !DILocation(line: 996, column: 28, scope: !922)
!955 = !DILocation(line: 996, column: 17, scope: !922)
!956 = !DILocation(line: 997, column: 43, scope: !922)
!957 = !DILocation(line: 997, column: 41, scope: !922)
!958 = !DILocation(line: 997, column: 13, scope: !922)
!959 = !DILocation(line: 997, column: 17, scope: !922)
!960 = !DILocation(line: 1001, column: 5, scope: !931)
!961 = !DILocation(line: 1002, column: 5, scope: !931)
!962 = !DILocation(line: 1003, column: 18, scope: !931)
!963 = !DILocation(line: 1004, column: 38, scope: !931)
!964 = !DILocation(line: 1004, column: 18, scope: !931)
!965 = !DILocation(line: 1005, column: 42, scope: !931)
!966 = !DILocation(line: 1005, column: 49, scope: !931)
!967 = !DILocation(line: 1005, column: 18, scope: !931)
!968 = !DILocation(line: 1006, column: 27, scope: !931)
!969 = !DILocation(line: 1006, column: 31, scope: !931)
!970 = !DILocation(line: 1006, column: 49, scope: !931)
!971 = !DILocation(line: 1006, column: 20, scope: !931)
!972 = !DILocation(line: 1006, column: 62, scope: !931)
!973 = !DILocation(line: 1006, column: 75, scope: !931)
!974 = !DILocation(line: 1006, column: 68, scope: !931)
!975 = !DILocation(line: 1006, column: 66, scope: !931)
!976 = !DILocation(line: 1006, column: 13, scope: !931)
!977 = !DILocation(line: 1007, column: 57, scope: !931)
!978 = !DILocation(line: 1007, column: 44, scope: !931)
!979 = !DILocation(line: 1007, column: 42, scope: !931)
!980 = !DILocation(line: 1007, column: 17, scope: !931)
!981 = !DILocation(line: 1008, column: 12, scope: !931)
!982 = !DILocation(line: 1009, column: 3, scope: !923)
!983 = !DILocation(line: 0, scope: !924)
!984 = !DILocation(line: 1010, column: 1, scope: !917)
!985 = distinct !DISubprogram(name: "gsl_sf_zeta", scope: !2, file: !2, line: 1017, type: !986, scopeLine: 1018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{!66, !157}
!988 = !{!989, !990, !991}
!989 = !DILocalVariable(name: "s", arg: 1, scope: !985, file: !2, line: 1017, type: !157)
!990 = !DILocalVariable(name: "result", scope: !985, file: !2, line: 1019, type: !159)
!991 = !DILocalVariable(name: "status", scope: !985, file: !2, line: 1019, type: !28)
!992 = distinct !DIAssignID()
!993 = !DILocation(line: 0, scope: !985)
!994 = !DILocation(line: 1019, column: 3, scope: !985)
!995 = !DILocation(line: 1019, column: 3, scope: !996)
!996 = distinct !DILexicalBlock(scope: !985, file: !2, line: 1019, column: 3)
!997 = !DILocation(line: 1019, column: 3, scope: !998)
!998 = distinct !DILexicalBlock(scope: !999, file: !2, line: 1019, column: 3)
!999 = distinct !DILexicalBlock(scope: !996, file: !2, line: 1019, column: 3)
!1000 = !DILocation(line: 1020, column: 1, scope: !985)
!1001 = distinct !DISubprogram(name: "gsl_sf_hzeta", scope: !2, file: !2, line: 1022, type: !1002, scopeLine: 1023, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!66, !157, !157}
!1004 = !{!1005, !1006, !1007, !1008}
!1005 = !DILocalVariable(name: "s", arg: 1, scope: !1001, file: !2, line: 1022, type: !157)
!1006 = !DILocalVariable(name: "a", arg: 2, scope: !1001, file: !2, line: 1022, type: !157)
!1007 = !DILocalVariable(name: "result", scope: !1001, file: !2, line: 1024, type: !159)
!1008 = !DILocalVariable(name: "status", scope: !1001, file: !2, line: 1024, type: !28)
!1009 = distinct !DIAssignID()
!1010 = !DILocation(line: 0, scope: !1001)
!1011 = !DILocation(line: 1024, column: 3, scope: !1001)
!1012 = !{i32 0, i32 17}
!1013 = !DILocation(line: 1024, column: 3, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 1024, column: 3)
!1015 = !DILocation(line: 1024, column: 3, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 1024, column: 3)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 1024, column: 3)
!1018 = !DILocation(line: 1025, column: 1, scope: !1001)
!1019 = distinct !DISubprogram(name: "gsl_sf_zeta_int", scope: !2, file: !2, line: 1027, type: !1020, scopeLine: 1028, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1022)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!66, !183}
!1022 = !{!1023, !1024, !1025}
!1023 = !DILocalVariable(name: "s", arg: 1, scope: !1019, file: !2, line: 1027, type: !183)
!1024 = !DILocalVariable(name: "result", scope: !1019, file: !2, line: 1029, type: !159)
!1025 = !DILocalVariable(name: "status", scope: !1019, file: !2, line: 1029, type: !28)
!1026 = distinct !DIAssignID()
!1027 = !DILocation(line: 0, scope: !1019)
!1028 = !DILocation(line: 1029, column: 3, scope: !1019)
!1029 = !DILocation(line: 0, scope: !590, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 1029, column: 3, scope: !1019)
!1031 = !DILocation(line: 857, column: 8, scope: !598, inlinedAt: !1030)
!1032 = !DILocation(line: 857, column: 6, scope: !590, inlinedAt: !1030)
!1033 = !DILocation(line: 858, column: 9, scope: !601, inlinedAt: !1030)
!1034 = !DILocation(line: 858, column: 8, scope: !602, inlinedAt: !1030)
!1035 = !DILocation(line: 860, column: 19, scope: !605, inlinedAt: !1030)
!1036 = distinct !DIAssignID()
!1037 = !DILocation(line: 861, column: 7, scope: !605, inlinedAt: !1030)
!1038 = !DILocation(line: 863, column: 15, scope: !608, inlinedAt: !1030)
!1039 = !DILocation(line: 863, column: 13, scope: !601, inlinedAt: !1030)
!1040 = !DILocation(line: 864, column: 40, scope: !611, inlinedAt: !1030)
!1041 = !DILocation(line: 864, column: 21, scope: !611, inlinedAt: !1030)
!1042 = !DILocation(line: 864, column: 19, scope: !611, inlinedAt: !1030)
!1043 = distinct !DIAssignID()
!1044 = distinct !DIAssignID()
!1045 = !DILocation(line: 866, column: 7, scope: !611, inlinedAt: !1030)
!1046 = !DILocation(line: 872, column: 13, scope: !624, inlinedAt: !1030)
!1047 = !DILocation(line: 872, column: 11, scope: !598, inlinedAt: !1030)
!1048 = !DILocation(line: 873, column: 5, scope: !627, inlinedAt: !1030)
!1049 = distinct !DIAssignID()
!1050 = distinct !DIAssignID()
!1051 = !DILocation(line: 873, column: 5, scope: !630, inlinedAt: !1030)
!1052 = !DILocation(line: 875, column: 13, scope: !632, inlinedAt: !1030)
!1053 = !DILocation(line: 875, column: 11, scope: !624, inlinedAt: !1030)
!1054 = !DILocation(line: 876, column: 25, scope: !635, inlinedAt: !1030)
!1055 = !DILocation(line: 876, column: 17, scope: !635, inlinedAt: !1030)
!1056 = distinct !DIAssignID()
!1057 = distinct !DIAssignID()
!1058 = !DILocation(line: 878, column: 5, scope: !635, inlinedAt: !1030)
!1059 = !DILocation(line: 881, column: 17, scope: !643, inlinedAt: !1030)
!1060 = distinct !DIAssignID()
!1061 = distinct !DIAssignID()
!1062 = !DILocation(line: 883, column: 5, scope: !643, inlinedAt: !1030)
!1063 = !DILocation(line: 869, column: 28, scope: !620, inlinedAt: !1030)
!1064 = !DILocation(line: 869, column: 14, scope: !620, inlinedAt: !1030)
!1065 = !DILocation(line: 1029, column: 3, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 1029, column: 3)
!1067 = !DILocation(line: 1029, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 1029, column: 3)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 1029, column: 3)
!1070 = !DILocation(line: 1030, column: 1, scope: !1019)
!1071 = distinct !DISubprogram(name: "gsl_sf_zetam1", scope: !2, file: !2, line: 1032, type: !986, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1072)
!1072 = !{!1073, !1074, !1075}
!1073 = !DILocalVariable(name: "s", arg: 1, scope: !1071, file: !2, line: 1032, type: !157)
!1074 = !DILocalVariable(name: "result", scope: !1071, file: !2, line: 1034, type: !159)
!1075 = !DILocalVariable(name: "status", scope: !1071, file: !2, line: 1034, type: !28)
!1076 = distinct !DIAssignID()
!1077 = !DILocation(line: 0, scope: !1071)
!1078 = !DILocation(line: 1034, column: 3, scope: !1071)
!1079 = !DILocation(line: 1034, column: 3, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 1034, column: 3)
!1081 = !DILocation(line: 1034, column: 3, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 1034, column: 3)
!1083 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 1034, column: 3)
!1084 = !DILocation(line: 1035, column: 1, scope: !1071)
!1085 = distinct !DISubprogram(name: "gsl_sf_zetam1_int", scope: !2, file: !2, line: 1037, type: !1020, scopeLine: 1038, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1086)
!1086 = !{!1087, !1088, !1089}
!1087 = !DILocalVariable(name: "s", arg: 1, scope: !1085, file: !2, line: 1037, type: !183)
!1088 = !DILocalVariable(name: "result", scope: !1085, file: !2, line: 1039, type: !159)
!1089 = !DILocalVariable(name: "status", scope: !1085, file: !2, line: 1039, type: !28)
!1090 = distinct !DIAssignID()
!1091 = !DILocation(line: 0, scope: !1085)
!1092 = !DILocation(line: 1039, column: 3, scope: !1085)
!1093 = !DILocation(line: 1039, column: 3, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 1039, column: 3)
!1095 = !DILocation(line: 1039, column: 3, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !2, line: 1039, column: 3)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 1039, column: 3)
!1098 = !DILocation(line: 1040, column: 1, scope: !1085)
!1099 = distinct !DISubprogram(name: "gsl_sf_eta_int", scope: !2, file: !2, line: 1042, type: !1020, scopeLine: 1043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1100)
!1100 = !{!1101, !1102, !1103}
!1101 = !DILocalVariable(name: "s", arg: 1, scope: !1099, file: !2, line: 1042, type: !183)
!1102 = !DILocalVariable(name: "result", scope: !1099, file: !2, line: 1044, type: !159)
!1103 = !DILocalVariable(name: "status", scope: !1099, file: !2, line: 1044, type: !28)
!1104 = distinct !DIAssignID()
!1105 = !DILocation(line: 0, scope: !1099)
!1106 = !DILocation(line: 1044, column: 3, scope: !1099)
!1107 = !DILocation(line: 1044, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1099, file: !2, line: 1044, column: 3)
!1109 = !DILocation(line: 1044, column: 3, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !2, line: 1044, column: 3)
!1111 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 1044, column: 3)
!1112 = !DILocation(line: 1045, column: 1, scope: !1099)
!1113 = distinct !DISubprogram(name: "gsl_sf_eta", scope: !2, file: !2, line: 1047, type: !986, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DILocalVariable(name: "s", arg: 1, scope: !1113, file: !2, line: 1047, type: !157)
!1116 = !DILocalVariable(name: "result", scope: !1113, file: !2, line: 1049, type: !159)
!1117 = !DILocalVariable(name: "status", scope: !1113, file: !2, line: 1049, type: !28)
!1118 = distinct !DIAssignID()
!1119 = !DILocation(line: 0, scope: !1113)
!1120 = !DILocation(line: 1049, column: 3, scope: !1113)
!1121 = !DILocation(line: 1049, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 1049, column: 3)
!1123 = !DILocation(line: 1049, column: 3, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !2, line: 1049, column: 3)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !2, line: 1049, column: 3)
!1126 = !DILocation(line: 1050, column: 1, scope: !1113)
!1127 = !DISubprogram(name: "exp", scope: !299, file: !299, line: 95, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
