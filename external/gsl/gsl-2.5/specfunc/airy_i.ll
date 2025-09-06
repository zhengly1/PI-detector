; ModuleID = 'airy.ll'
source_filename = "airy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"airy.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [35 x i8] c"gsl_sf_airy_Ai_e(x, mode, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [42 x i8] c"gsl_sf_airy_Ai_scaled_e(x, mode, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [35 x i8] c"gsl_sf_airy_Bi_e(x, mode, &result)\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [42 x i8] c"gsl_sf_airy_Bi_scaled_e(x, mode, &result)\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [22 x i8] c"x is greater than 1.0\00", align 1, !dbg !31
@am21_data = internal unnamed_addr constant [37 x double] [double 0x3F7AF4980A3A11BC, double 0x3F636536BFC3316F, double 0x3F215D186E131003, double 0x3EF086912A78217D, double 0x3EC717F568CBC411, double 0x3EA47A294ED62747, double 0x3E8568AEA7816129, double 0x3E6949D75DA33A76, double 0x3E506BD071C777C0, double 0x3E37045CB901EE7E, double 0x3E212E3F22A24277, double 0x3E0B0C8A90DE0247, double 0x3DF64953BF091664, double 0x3DE31B002C37732C, double 6.170110e-11, double 2.824910e-11, double 1.329790e-11, double 6.418800e-12, double 3.169700e-12, double 1.598100e-12, double 8.213000e-13, double 4.296000e-13, double 2.284000e-13, double 1.232000e-13, double 6.750000e-14, double 3.740000e-14, double 2.100000e-14, double 1.190000e-14, double 6.800000e-15, double 3.900000e-15, double 2.300000e-15, double 1.300000e-15, double 0x3CCCD2B297D889BC, double 5.000000e-16, double 3.000000e-16, double 0x3C9CD2B297D889BC, double 0x3C9CD2B297D889BC], align 16, !dbg !36
@ath1_data = internal unnamed_addr constant [36 x double] [double 0xBFB23DFD33BFBE77, double 0xBF782F8C26D0186B, double 0xBF1FC1EED2C8E5DB, double 0xBEE4BB8D3C03A634, double 0xBEB72AAAB4DCD763, double 0xBE918B457957BE7D, double 0xBE703DD35B885262, double 0xBE5160B93ED5415B, double 0xBE34C3C0BEE25B8F, double 0xBE1B15C08F8233E4, double 0xBE02FA37382BE0EC, double 0xBDEC3CC8CF02B842, double 0xBDD61C0C4A9BC75C, double 0xBDC2180680A16370, double 0xBDAEC8987D342495, double -6.161510e-12, double -2.796140e-12, double -1.304280e-12, double -6.237300e-13, double -3.051200e-13, double -1.523900e-13, double 0xBD35D63A67BDB3F3, double -4.020000e-14, double -2.117000e-14, double -1.132000e-14, double -6.140000e-15, double -3.370000e-15, double -1.880000e-15, double -1.050000e-15, double -6.000000e-16, double -3.400000e-16, double -2.000000e-16, double -1.100000e-16, double -7.000000e-17, double -4.000000e-17, double -2.000000e-17], align 16, !dbg !97
@am22_data = internal unnamed_addr constant [33 x double] [double 0xBF9000E72D521FCE, double 0x3F7FE172FC6A0F0A, double 0x3F4C6968624BEDC4, double 0x3F2492EA0501F2F6, double 0x3F02AF78370F5158, double 0x3EE363E646A9BF8B, double 0x3EC5FCC5DA8303B2, double 0x3EAA923768E643A7, double 0x3E90D8DC50E61501, double 0x3E762FD17181BABF, double 0x3E5E20480FD1D738, double 0x3E44FA2177C128F7, double 0x3E2DD794BD9F332C, double 0x3E159DFAD22B13E6, double 0x3DFFD0F9C155A231, double 0x3DE7BD55C3C19752, double 0x3DD1EE49CD6B4EFB, double 0x3DBB620D7B9996A7, double 9.601560e-12, double 3.734480e-12, double 1.464170e-12, double 5.782600e-13, double 2.299100e-13, double 0x3D39E3230D6DF51B, double 3.700000e-14, double 1.496000e-14, double 6.080000e-15, double 2.480000e-15, double 1.010000e-15, double 4.100000e-16, double 1.700000e-16, double 7.000000e-17, double 2.000000e-17], align 16, !dbg !104
@ath2_data = internal unnamed_addr constant [32 x double] [double 0x3F720B4396F64EFD, double 0xBF9F28D4AD486592, double 0xBF56B3D9E264AD5A, double 0xBF27A6B583E9C0CC, double 0xBF01B9B238964A5D, double 0xBEE01A31827832B9, double 0xBEC081E72CCB56AC, double 0xBEA2667C587104CE, double 0xBE85D10B19A826E4, double 0xBE6B20DBE83AF65F, double 0xBE5184DAD97B6067, double 0xBE3756F879AD7878, double 0xBE1FE8ECDABAEAB7, double 0xBE064C3C30F5D049, double 0xBDEFC1AEC6ABA941, double 0xBDD6FD22F2ACF7B0, double 0xBDC0E252F90F9DDA, double 0xBDA91EF459BEBA1A, double -4.298110e-12, double -1.633890e-12, double -6.269300e-13, double -2.426000e-13, double -9.461000e-14, double -3.716000e-14, double -1.469000e-14, double -5.840000e-15, double -2.330000e-15, double -9.300000e-16, double -3.700000e-16, double -1.500000e-16, double -6.000000e-17, double -2.000000e-17], align 16, !dbg !111
@data_aip = internal unnamed_addr constant [36 x double] [double 0xBF9333B4B48EB2F9, double 0xBF82BA4A8E1F9D98, double 0x3F4D8684FAB9D568, double 0xBF22461B0BD401D2, double 0x3EFCB62FF551D77C, double 0xBEDA51C6711546C1, double 0x3EBAF3CC4C4750D2, double 0xBE9E0A62176D0050, double 0x3E81E9C6216348A8, double 0xBE66968ADAEC008A, double 0x3E4DDAD092C69F01, double 0xBE348B2AD504624F, double 0x3E1D49BEAAA57E83, double 0xBE0589BBD9127D7F, double 0x3DF04909F910854C, double 0xBDD9405CC1CA7DDE, double 0x3DC406C3C4BF5369, double 0xBDB0371157FAE287, double 0x3D9AC336D9D392FD, double 0xBD8679F907D1CB83, double 0x3D732FB5C8087AFD, double 0xBD60A0AF80F5DE7A, double 0x3D4D3B11D6B0857E, double 0xBD3A0927F30B660F, double 0x3D277AFF4CF6452B, double 0xBD156CFF7766C739, double 0x3D03C4C9B4AE4205, double 0xBCF26EA04571ADDB, double 0x3CE15B9B11F598FD, double 0xBCD080656B19030B, double 0x3CBFA8B35AA692E2, double 0xBCAEA1B8D3460F47, double 0x3C9DE1C10BD6DA56, double -5.096420e-17, double 2.523770e-17, double -1.257930e-17], align 16, !dbg !130
@data_bip = internal unnamed_addr constant [24 x double] [double 0xBFB54DEFE189070D, double 0x3F8778F6C8D4B375, double 0x3F3C1CD4199B414E, double 0xBF2389D692961C8A, double 0xBEEB6C71D7EDB4EE, double 0x3EDA8A3500CB4DEF, double 0xBE9C567DC5FBA980, double 0xBE89B2EC5162638A, double 0x3E71528A768F5F2E, double 0xBE40D8C1248C77B5, double 0xBE1081854912A917, double 0x3E080DADFF3528B7, double 0xBDE85ED19110A555, double 0x3DB8FB5CAAF4F7D5, double 1.654040e-12, double -1.851710e-12, double 5.957600e-13, double -1.219400e-13, double 1.334000e-14, double 1.720000e-15, double -1.450000e-15, double 4.900000e-16, double -1.100000e-16, double 1.000000e-17], align 16, !dbg !151
@data_bip2 = internal unnamed_addr constant [29 x double] [double 0xBFBD14AD00DD36AA, double 0x3F70F3297BA05425, double 0x3F21BD7E695FEB52, double 0x3EE5DE1F7D01FCDD, double 0x3EB69B72F1F21C48, double 0x3E86C5421558F801, double 0xBE45AE9C2C49DAE6, double 0xBE51F6772145B286, double 0xBE33AD73DD79DA08, double 0x3DF9ADA3AE45C323, double 0x3E03D0A543132A2D, double 0x3DD1179E16689BDD, double 0xBDD165ED812CCCF7, double 0xBDB0663677755AF4, double 0x3DA1597641EB4F12, double 0x3D85F49B9C352549, double 0xBD7556E66E978314, double 0xBD5A5245ED50B1D0, double 0x3D4F7E42DD217074, double 4.749020e-14, double -4.526160e-14, double -3.017200e-15, double 9.105800e-15, double -9.814000e-16, double -1.642900e-15, double 5.533000e-16, double 2.175000e-16, double -1.737000e-16, double -1.000000e-18], align 16, !dbg !158

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Ai_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !174 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !209
  call void @llvm.dbg.assign(metadata i1 undef, metadata !192, metadata !DIExpression(), metadata !209, metadata ptr %4, metadata !DIExpression()), !dbg !210
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !211
  call void @llvm.dbg.assign(metadata i1 undef, metadata !195, metadata !DIExpression(), metadata !211, metadata ptr %5, metadata !DIExpression()), !dbg !210
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !212
  call void @llvm.dbg.assign(metadata i1 undef, metadata !196, metadata !DIExpression(), metadata !212, metadata ptr %6, metadata !DIExpression()), !dbg !210
  tail call void @llvm.dbg.value(metadata double %0, metadata !189, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !190, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !191, metadata !DIExpression()), !dbg !213
  %7 = fcmp olt double %0, -1.000000e+00, !dbg !214
  br i1 %7, label %8, label %30, !dbg !215

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !216
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !217
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !218
  %9 = call fastcc i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !219, !range !220
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !197, metadata !DIExpression()), !dbg !210
  %10 = load double, ptr %5, align 8, !dbg !221, !tbaa !222
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !227
  %12 = load double, ptr %11, align 8, !dbg !227, !tbaa !228
  %13 = call i32 @gsl_sf_cos_err_e(double noundef %10, double noundef %12, ptr noundef nonnull %6) #7, !dbg !229
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !198, metadata !DIExpression()), !dbg !210
  %14 = load double, ptr %4, align 8, !dbg !230, !tbaa !222
  %15 = load double, ptr %6, align 8, !dbg !231, !tbaa !222
  %16 = fmul double %14, %15, !dbg !232
  store double %16, ptr %2, align 8, !dbg !233, !tbaa !222
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !234
  %18 = load double, ptr %17, align 8, !dbg !234, !tbaa !228
  %19 = fmul double %14, %18, !dbg !235
  %20 = call double @llvm.fabs.f64(double %19), !dbg !236
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !237
  %22 = load double, ptr %21, align 8, !dbg !237, !tbaa !228
  %23 = fmul double %15, %22, !dbg !238
  %24 = call double @llvm.fabs.f64(double %23), !dbg !239
  %handler_result = call double @fAddHandlerDouble(double %20, double %24), !dbg !240
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !240
  %26 = call double @llvm.fabs.f64(double %16), !dbg !241
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !242
  %handler_result1 = call double @fAddHandlerDouble(double %27, double %handler_result), !dbg !243
  store double %handler_result1, ptr %25, align 8, !dbg !243, !tbaa !228
  %28 = icmp eq i32 %9, 0, !dbg !244
  %29 = select i1 %28, i32 %13, i32 %9, !dbg !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !245
  br label %136

30:                                               ; preds = %3
  %31 = fcmp ugt double %0, 1.000000e+00, !dbg !246
  br i1 %31, label %67, label %32, !dbg !247

32:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata double poison, metadata !199, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.value(metadata i32 8, metadata !266, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i32 8, metadata !261, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double poison, metadata !199, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !271
  tail call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !248
  tail call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !248
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 7, metadata !266, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 7, metadata !261, metadata !DIExpression()), !dbg !282
  %33 = fmul double %0, %0, !dbg !286
  %34 = fmul double %33, %0, !dbg !287
  tail call void @llvm.dbg.value(metadata double %34, metadata !199, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata double %34, metadata !258, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %34, metadata !258, metadata !DIExpression()), !dbg !282
  %35 = fmul double %34, 2.000000e+00, !dbg !288
  %handler_result2 = call double @fAddHandlerDouble(double %35, double 1.000000e+00), !dbg !289
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !290
  %36 = fmul double %handler_result3, 5.000000e-01, !dbg !290
  call void @llvm.dbg.value(metadata double %36, metadata !264, metadata !DIExpression()), !dbg !282
  %37 = fmul double %36, 2.000000e+00, !dbg !291
  call void @llvm.dbg.value(metadata double %37, metadata !265, metadata !DIExpression()), !dbg !282
  %handler_result4 = call double @fAddHandlerDouble(double %35, double 1.000000e+00), !dbg !292
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !293
  %38 = fmul double %handler_result5, 5.000000e-01, !dbg !293
  call void @llvm.dbg.value(metadata double %38, metadata !264, metadata !DIExpression()), !dbg !271
  %39 = fmul double %38, 2.000000e+00, !dbg !294
  call void @llvm.dbg.value(metadata double %39, metadata !265, metadata !DIExpression()), !dbg !271
  %40 = fmul double %39, 0.000000e+00, !dbg !295
  %handler_result6 = call double @fAddHandlerDouble(double %40, double 0x3BFD83C94FB6D2AC), !dbg !295
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !263, metadata !DIExpression()), !dbg !271
  %41 = fmul double %39, %handler_result6, !dbg !295
  %handler_result7 = call double @fAddHandlerDouble(double %41, double 1.201400e-16), !dbg !295
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !263, metadata !DIExpression()), !dbg !271
  %42 = fmul double %39, %handler_result7, !dbg !295
  %handler_result8 = call double @fSubHandlerDouble(double %42, double %handler_result6), !dbg !296
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3D3C686128FEBABC), !dbg !295
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !263, metadata !DIExpression()), !dbg !271
  %43 = fmul double %39, %handler_result9, !dbg !295
  %handler_result10 = call double @fSubHandlerDouble(double %43, double %handler_result7), !dbg !296
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3DD0FA67A3B60159), !dbg !295
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !263, metadata !DIExpression()), !dbg !271
  %44 = fmul double %39, %handler_result11, !dbg !295
  %handler_result12 = call double @fSubHandlerDouble(double %44, double %handler_result9), !dbg !296
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3E5BDAE3C9D3830E), !dbg !295
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !263, metadata !DIExpression()), !dbg !271
  %45 = fmul double %39, %handler_result13, !dbg !295
  %handler_result14 = call double @fSubHandlerDouble(double %45, double %handler_result11), !dbg !296
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 0x3EDCB9E3DA9E0C35), !dbg !295
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !263, metadata !DIExpression()), !dbg !271
  %46 = fmul double %39, %handler_result15, !dbg !295
  %handler_result16 = call double @fSubHandlerDouble(double %46, double %handler_result13), !dbg !296
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 0x3F5028CFD615B254), !dbg !295
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !262, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !267, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !263, metadata !DIExpression()), !dbg !271
  %47 = fmul double %39, %handler_result17, !dbg !295
  %handler_result18 = call double @fSubHandlerDouble(double %47, double %handler_result15), !dbg !296
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FAE4E6632E97C0F), !dbg !297
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !262, metadata !DIExpression()), !dbg !271
  %48 = fmul double %38, %handler_result19, !dbg !297
  %handler_result20 = call double @fSubHandlerDouble(double %48, double %handler_result17), !dbg !298
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 0xBF9370FB5DDB1451), !dbg !299
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !248
  %49 = tail call double @llvm.fabs.f64(double %handler_result21), !dbg !299
  %50 = fmul double %49, 0x3CB0000000000000, !dbg !300
  %handler_result22 = call double @fAddHandlerDouble(double %50, double 0x3BFD83C94FB6D2AC), !dbg !301
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !248
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !302
  %51 = fmul double %37, 0.000000e+00, !dbg !301
  %handler_result23 = call double @fAddHandlerDouble(double %51, double 1.000000e-17), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !267, metadata !DIExpression()), !dbg !302
  %52 = fmul double %37, %handler_result23, !dbg !301
  %handler_result24 = call double @fAddHandlerDouble(double %52, double 1.392000e-14), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !267, metadata !DIExpression()), !dbg !302
  %53 = fmul double %37, %handler_result24, !dbg !301
  %handler_result25 = call double @fSubHandlerDouble(double %53, double %handler_result23), !dbg !303
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 9.525170e-12), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !267, metadata !DIExpression()), !dbg !302
  %54 = fmul double %37, %handler_result26, !dbg !301
  %handler_result27 = call double @fSubHandlerDouble(double %54, double %handler_result24), !dbg !303
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3E33A317F0CCD43B), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !267, metadata !DIExpression()), !dbg !302
  %55 = fmul double %37, %handler_result28, !dbg !301
  %handler_result29 = call double @fSubHandlerDouble(double %55, double %handler_result26), !dbg !303
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0x3EB7EEDCE1362561), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !267, metadata !DIExpression()), !dbg !302
  %56 = fmul double %37, %handler_result30, !dbg !301
  %handler_result31 = call double @fSubHandlerDouble(double %56, double %handler_result28), !dbg !303
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0x3F30D41D08E63267), !dbg !301
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !267, metadata !DIExpression()), !dbg !302
  %57 = fmul double %37, %handler_result32, !dbg !301
  %handler_result33 = call double @fSubHandlerDouble(double %57, double %handler_result30), !dbg !303
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3F96171E3527D823), !dbg !304
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !262, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !263, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !282
  %58 = fmul double %36, %handler_result34, !dbg !304
  %handler_result35 = call double @fSubHandlerDouble(double %58, double %handler_result32), !dbg !305
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3F829688A21082BA), !dbg !306
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !203, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !248
  %59 = tail call double @llvm.fabs.f64(double %handler_result36), !dbg !306
  %60 = fmul double %59, 0x3CB0000000000000, !dbg !307
  %handler_result37 = call double @fAddHandlerDouble(double %60, double 1.000000e-17), !dbg !308
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !203, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !248
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result36, double 2.500000e-01), !dbg !309
  %61 = fmul double %handler_result38, %0, !dbg !309
  %handler_result39 = call double @fSubHandlerDouble(double %handler_result21, double %61), !dbg !310
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 3.750000e-01), !dbg !311
  store double %handler_result40, ptr %2, align 8, !dbg !311, !tbaa !222
  %62 = fmul double %handler_result37, %0, !dbg !312
  %63 = tail call double @llvm.fabs.f64(double %62), !dbg !313
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result22, double %63), !dbg !314
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !314
  %65 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !315
  %66 = fmul double %65, 0x3CB0000000000000, !dbg !316
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double %66), !dbg !317
  store double %handler_result42, ptr %64, align 8, !dbg !317, !tbaa !228
  br label %136

67:                                               ; preds = %30
  %68 = tail call double @sqrt(double noundef %0) #7, !dbg !318
  %69 = fmul double %68, %0, !dbg !319
  tail call void @llvm.dbg.value(metadata double %69, metadata !204, metadata !DIExpression()), !dbg !320
  %70 = fmul double %69, -2.000000e+00, !dbg !321
  %71 = fdiv double %70, 3.000000e+00, !dbg !322
  %72 = tail call double @exp(double noundef %71) #7, !dbg !323
  tail call void @llvm.dbg.value(metadata double %72, metadata !206, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata double %0, metadata !324, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata i32 %1, metadata !329, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr undef, metadata !330, metadata !DIExpression()), !dbg !335
  %73 = tail call double @sqrt(double noundef %0) #7, !dbg !337
  call void @llvm.dbg.value(metadata double %73, metadata !331, metadata !DIExpression()), !dbg !335
  %74 = fmul double %73, %0, !dbg !338
  %75 = fdiv double 2.000000e+00, %74, !dbg !339
  %handler_result43 = call double @fAddHandlerDouble(double %75, double -1.000000e+00), !dbg !340
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !332, metadata !DIExpression()), !dbg !335
  %76 = tail call double @sqrt(double noundef %73) #7, !dbg !340
  call void @llvm.dbg.value(metadata double %76, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !258, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !341
  %77 = fmul double %handler_result43, 2.000000e+00, !dbg !343
  %handler_result44 = call double @fAddHandlerDouble(double %77, double 1.000000e+00), !dbg !344
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double -1.000000e+00), !dbg !345
  %78 = fmul double %handler_result45, 5.000000e-01, !dbg !345
  call void @llvm.dbg.value(metadata double %78, metadata !264, metadata !DIExpression()), !dbg !341
  %79 = fmul double %78, 2.000000e+00, !dbg !346
  call void @llvm.dbg.value(metadata double %79, metadata !265, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !347
  %80 = and i32 %1, 7, !dbg !349
  %81 = icmp eq i32 %80, 0, !dbg !350
  %82 = select i1 %81, i32 35, i32 17, !dbg !351
  call void @llvm.dbg.value(metadata i32 %82, metadata !266, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i32 %82, metadata !261, metadata !DIExpression()), !dbg !341
  %83 = zext nneg i32 %82 to i64, !dbg !352
  %84 = and i64 %83, 3, !dbg !352
  br label %85, !dbg !352

85:                                               ; preds = %85, %67
  %86 = phi i64 [ %83, %67 ], [ %93, %85 ]
  %87 = phi double [ 0.000000e+00, %67 ], [ %handler_result47, %85 ]
  %88 = phi double [ 0.000000e+00, %67 ], [ %87, %85 ]
  %89 = phi i64 [ 0, %67 ], [ %94, %85 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !261, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %87, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %88, metadata !263, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %87, metadata !267, metadata !DIExpression()), !dbg !353
  %90 = fmul double %79, %87, !dbg !354
  %handler_result46 = call double @fSubHandlerDouble(double %90, double %88), !dbg !355
  %91 = getelementptr inbounds double, ptr @data_aip, i64 %86, !dbg !355
  %92 = load double, ptr %91, align 8, !dbg !355, !tbaa !356
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double %92), !dbg !357
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %87, metadata !263, metadata !DIExpression()), !dbg !341
  %93 = add nsw i64 %86, -1, !dbg !357
  call void @llvm.dbg.value(metadata i64 %93, metadata !261, metadata !DIExpression()), !dbg !341
  %94 = add i64 %89, 1, !dbg !352
  %95 = icmp eq i64 %94, %84, !dbg !352
  br i1 %95, label %96, label %85, !dbg !352, !llvm.loop !358

96:                                               ; preds = %96, %85
  %97 = phi i64 [ %113, %96 ], [ %93, %85 ]
  %98 = phi double [ %handler_result55, %96 ], [ %handler_result47, %85 ]
  %99 = phi double [ %handler_result53, %96 ], [ %87, %85 ]
  call void @llvm.dbg.value(metadata i64 %97, metadata !261, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %98, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %99, metadata !263, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %98, metadata !267, metadata !DIExpression()), !dbg !353
  %100 = fmul double %79, %98, !dbg !354
  %handler_result48 = call double @fSubHandlerDouble(double %100, double %99), !dbg !355
  %101 = getelementptr inbounds double, ptr @data_aip, i64 %97, !dbg !355
  %102 = load double, ptr %101, align 8, !dbg !355, !tbaa !356
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double %102), !dbg !354
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %98, metadata !263, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %97, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !341
  call void @llvm.dbg.value(metadata i64 %97, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %98, metadata !263, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !267, metadata !DIExpression()), !dbg !353
  %103 = fmul double %79, %handler_result49, !dbg !354
  %handler_result50 = call double @fSubHandlerDouble(double %103, double %98), !dbg !355
  %104 = getelementptr double, ptr getelementptr (double, ptr @data_aip, i64 -1), i64 %97, !dbg !355
  %105 = load double, ptr %104, align 8, !dbg !355, !tbaa !356
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double %105), !dbg !354
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !263, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %97, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !341
  call void @llvm.dbg.value(metadata i64 %97, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !263, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !267, metadata !DIExpression()), !dbg !353
  %106 = fmul double %79, %handler_result51, !dbg !354
  %handler_result52 = call double @fSubHandlerDouble(double %106, double %handler_result49), !dbg !355
  %107 = getelementptr double, ptr getelementptr (double, ptr @data_aip, i64 -2), i64 %97, !dbg !355
  %108 = load double, ptr %107, align 8, !dbg !355, !tbaa !356
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double %108), !dbg !357
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !263, metadata !DIExpression()), !dbg !341
  %109 = add nsw i64 %97, -3, !dbg !357
  call void @llvm.dbg.value(metadata i64 %109, metadata !261, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata i64 %109, metadata !261, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !263, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !267, metadata !DIExpression()), !dbg !353
  %110 = fmul double %79, %handler_result53, !dbg !354
  %handler_result54 = call double @fSubHandlerDouble(double %110, double %handler_result51), !dbg !355
  %111 = getelementptr inbounds double, ptr @data_aip, i64 %109, !dbg !355
  %112 = load double, ptr %111, align 8, !dbg !355, !tbaa !356
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double %112), !dbg !357
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !262, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !263, metadata !DIExpression()), !dbg !341
  %113 = add nsw i64 %97, -4, !dbg !357
  call void @llvm.dbg.value(metadata i64 %113, metadata !261, metadata !DIExpression()), !dbg !341
  %114 = icmp ugt i64 %109, 1, !dbg !360
  br i1 %114, label %96, label %115, !dbg !352, !llvm.loop !361

115:                                              ; preds = %96
  %116 = fmul double %78, %handler_result55, !dbg !364
  %handler_result56 = call double @fSubHandlerDouble(double %116, double %handler_result53), !dbg !365
  %handler_result57 = call double @fAddHandlerDouble(double %handler_result56, double 0xBF8333B4B48EB2F9), !dbg !366
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !334, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !335
  %117 = tail call double @llvm.fabs.f64(double %handler_result57), !dbg !366
  %118 = fmul double %117, 0x3CB0000000000000, !dbg !367
  %119 = zext nneg i32 %82 to i64, !dbg !368
  %120 = getelementptr inbounds double, ptr @data_aip, i64 %119, !dbg !368
  %121 = load double, ptr %120, align 8, !dbg !368, !tbaa !356
  %122 = tail call double @llvm.fabs.f64(double %121), !dbg !369
  %handler_result58 = call double @fAddHandlerDouble(double %122, double %118), !dbg !370
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !334, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !335
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result57, double 2.812500e-01), !dbg !371
  %123 = fdiv double %handler_result59, %76, !dbg !371
  tail call void @llvm.dbg.value(metadata double %123, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !320
  %124 = fdiv double %handler_result58, %76, !dbg !372
  %125 = tail call double @llvm.fabs.f64(double %123), !dbg !373
  %126 = fmul double %125, 0x3CB0000000000000, !dbg !374
  %handler_result60 = call double @fAddHandlerDouble(double %124, double %126), !dbg !375
  tail call void @llvm.dbg.value(metadata double %handler_result60, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !320
  tail call void @llvm.dbg.value(metadata i32 0, metadata !208, metadata !DIExpression()), !dbg !320
  %127 = fmul double %72, %123, !dbg !375
  store double %127, ptr %2, align 8, !dbg !376, !tbaa !222
  %128 = fmul double %72, %handler_result60, !dbg !377
  %129 = fmul double %69, %127, !dbg !378
  %130 = fmul double %129, 0x3CB0000000000000, !dbg !379
  %handler_result61 = call double @fAddHandlerDouble(double %130, double %128), !dbg !380
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !380
  %132 = tail call double @llvm.fabs.f64(double %127), !dbg !381
  %133 = fmul double %132, 0x3CB0000000000000, !dbg !382
  %handler_result62 = call double @fAddHandlerDouble(double %133, double %handler_result61), !dbg !383
  store double %handler_result62, ptr %131, align 8, !dbg !383, !tbaa !228
  %134 = fcmp olt double %132, 0x10000000000000, !dbg !384
  br i1 %134, label %135, label %136, !dbg !386

135:                                              ; preds = %115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 693, i32 noundef 15) #7, !dbg !387
  br label %136, !dbg !387

136:                                              ; preds = %135, %115, %32, %8
  %137 = phi i32 [ %29, %8 ], [ 0, %32 ], [ 15, %135 ], [ 0, %115 ], !dbg !389
  ret i32 %137, !dbg !390
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !391 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !395, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !396, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !397, metadata !DIExpression()), !dbg !410
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !398, metadata !DIExpression()), !dbg !410
  %5 = fcmp olt double %0, -2.000000e+00, !dbg !411
  br i1 %5, label %6, label %80, !dbg !412

6:                                                ; preds = %4
  %7 = fmul double %0, %0, !dbg !413
  %8 = fmul double %7, %0, !dbg !414
  %9 = fdiv double 1.600000e+01, %8, !dbg !415
  %handler_result = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !416
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !404, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result, metadata !258, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !419
  %10 = fmul double %handler_result, 2.000000e+00, !dbg !416
  %handler_result1 = call double @fAddHandlerDouble(double %10, double 1.000000e+00), !dbg !420
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !421
  %11 = fmul double %handler_result2, 5.000000e-01, !dbg !421
  call void @llvm.dbg.value(metadata double %11, metadata !264, metadata !DIExpression()), !dbg !419
  %12 = fmul double %11, 2.000000e+00, !dbg !422
  call void @llvm.dbg.value(metadata double %12, metadata !265, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !423
  %13 = and i32 %1, 7, !dbg !425
  %14 = icmp eq i32 %13, 0, !dbg !426
  %15 = select i1 %14, i32 36, i32 20, !dbg !427
  call void @llvm.dbg.value(metadata i32 %15, metadata !266, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i32 %15, metadata !261, metadata !DIExpression()), !dbg !419
  %16 = zext nneg i32 %15 to i64, !dbg !428
  br label %17, !dbg !428

17:                                               ; preds = %17, %6
  %18 = phi i64 [ %16, %6 ], [ %34, %17 ]
  %19 = phi double [ 0.000000e+00, %6 ], [ %handler_result10, %17 ]
  %20 = phi double [ 0.000000e+00, %6 ], [ %handler_result8, %17 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !261, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %19, metadata !262, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %20, metadata !263, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %19, metadata !267, metadata !DIExpression()), !dbg !429
  %21 = fmul double %12, %19, !dbg !430
  %handler_result3 = call double @fSubHandlerDouble(double %21, double %20), !dbg !431
  %22 = getelementptr inbounds double, ptr @am21_data, i64 %18, !dbg !431
  %23 = load double, ptr %22, align 16, !dbg !431, !tbaa !356
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %23), !dbg !430
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !262, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %19, metadata !263, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i64 %18, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !419
  call void @llvm.dbg.value(metadata i64 %18, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !262, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %19, metadata !263, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !267, metadata !DIExpression()), !dbg !429
  %24 = fmul double %12, %handler_result4, !dbg !430
  %handler_result5 = call double @fSubHandlerDouble(double %24, double %19), !dbg !431
  %25 = getelementptr double, ptr getelementptr (double, ptr @am21_data, i64 -1), i64 %18, !dbg !431
  %26 = load double, ptr %25, align 8, !dbg !431, !tbaa !356
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %26), !dbg !430
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !262, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !263, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i64 %18, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !419
  call void @llvm.dbg.value(metadata i64 %18, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !262, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !263, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !267, metadata !DIExpression()), !dbg !429
  %27 = fmul double %12, %handler_result6, !dbg !430
  %handler_result7 = call double @fSubHandlerDouble(double %27, double %handler_result4), !dbg !431
  %28 = getelementptr double, ptr getelementptr (double, ptr @am21_data, i64 -2), i64 %18, !dbg !431
  %29 = load double, ptr %28, align 16, !dbg !431, !tbaa !356
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %29), !dbg !432
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !262, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !263, metadata !DIExpression()), !dbg !419
  %30 = add nsw i64 %18, -3, !dbg !432
  call void @llvm.dbg.value(metadata i64 %30, metadata !261, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata i64 %30, metadata !261, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !262, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !263, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !267, metadata !DIExpression()), !dbg !429
  %31 = fmul double %12, %handler_result8, !dbg !430
  %handler_result9 = call double @fSubHandlerDouble(double %31, double %handler_result6), !dbg !431
  %32 = getelementptr inbounds double, ptr @am21_data, i64 %30, !dbg !431
  %33 = load double, ptr %32, align 8, !dbg !431, !tbaa !356
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double %33), !dbg !432
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !262, metadata !DIExpression()), !dbg !419
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !263, metadata !DIExpression()), !dbg !419
  %34 = add nsw i64 %18, -4, !dbg !432
  call void @llvm.dbg.value(metadata i64 %34, metadata !261, metadata !DIExpression()), !dbg !419
  %35 = icmp eq i64 %30, 1, !dbg !433
  br i1 %35, label %36, label %17, !dbg !428, !llvm.loop !434

36:                                               ; preds = %17
  %37 = fmul double %11, %handler_result10, !dbg !436
  %handler_result11 = call double @fSubHandlerDouble(double %37, double %handler_result8), !dbg !437
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double 0x3F6AF4980A3A11BC), !dbg !438
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  %38 = tail call double @llvm.fabs.f64(double %handler_result12), !dbg !438
  %39 = fmul double %38, 0x3CB0000000000000, !dbg !439
  %40 = zext nneg i32 %15 to i64, !dbg !440
  %41 = getelementptr inbounds double, ptr @am21_data, i64 %40, !dbg !440
  %42 = load double, ptr %41, align 16, !dbg !440, !tbaa !356
  %43 = tail call double @llvm.fabs.f64(double %42), !dbg !441
  %handler_result13 = call double @fAddHandlerDouble(double %43, double %39), !dbg !442
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result, metadata !258, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !444
  %handler_result14 = call double @fAddHandlerDouble(double %10, double 1.000000e+00), !dbg !445
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double -1.000000e+00), !dbg !446
  %44 = fmul double %handler_result15, 5.000000e-01, !dbg !446
  call void @llvm.dbg.value(metadata double %44, metadata !264, metadata !DIExpression()), !dbg !444
  %45 = fmul double %44, 2.000000e+00, !dbg !447
  call void @llvm.dbg.value(metadata double %45, metadata !265, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !448
  %46 = select i1 %14, i32 35, i32 15, !dbg !450
  call void @llvm.dbg.value(metadata i32 %46, metadata !266, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 %46, metadata !261, metadata !DIExpression()), !dbg !444
  %47 = zext nneg i32 %46 to i64, !dbg !451
  br label %48, !dbg !451

48:                                               ; preds = %48, %36
  %49 = phi i64 [ %47, %36 ], [ %56, %48 ]
  %50 = phi double [ 0.000000e+00, %36 ], [ %handler_result17, %48 ]
  %51 = phi double [ 0.000000e+00, %36 ], [ %50, %48 ]
  %52 = phi i64 [ 0, %36 ], [ %57, %48 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !261, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %50, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %51, metadata !263, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %50, metadata !267, metadata !DIExpression()), !dbg !452
  %53 = fmul double %45, %50, !dbg !453
  %handler_result16 = call double @fSubHandlerDouble(double %53, double %51), !dbg !454
  %54 = getelementptr inbounds double, ptr @ath1_data, i64 %49, !dbg !454
  %55 = load double, ptr %54, align 8, !dbg !454, !tbaa !356
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double %55), !dbg !455
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %50, metadata !263, metadata !DIExpression()), !dbg !444
  %56 = add nsw i64 %49, -1, !dbg !455
  call void @llvm.dbg.value(metadata i64 %56, metadata !261, metadata !DIExpression()), !dbg !444
  %57 = add i64 %52, 1, !dbg !451
  %58 = icmp eq i64 %57, 3, !dbg !451
  br i1 %58, label %59, label %48, !dbg !451, !llvm.loop !456

59:                                               ; preds = %59, %48
  %60 = phi i64 [ %76, %59 ], [ %56, %48 ]
  %61 = phi double [ %handler_result25, %59 ], [ %handler_result17, %48 ]
  %62 = phi double [ %handler_result23, %59 ], [ %50, %48 ]
  call void @llvm.dbg.value(metadata i64 %60, metadata !261, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %61, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %62, metadata !263, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %61, metadata !267, metadata !DIExpression()), !dbg !452
  %63 = fmul double %45, %61, !dbg !453
  %handler_result18 = call double @fSubHandlerDouble(double %63, double %62), !dbg !454
  %64 = getelementptr inbounds double, ptr @ath1_data, i64 %60, !dbg !454
  %65 = load double, ptr %64, align 8, !dbg !454, !tbaa !356
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %65), !dbg !453
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %61, metadata !263, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 %60, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !444
  call void @llvm.dbg.value(metadata i64 %60, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %61, metadata !263, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !267, metadata !DIExpression()), !dbg !452
  %66 = fmul double %45, %handler_result19, !dbg !453
  %handler_result20 = call double @fSubHandlerDouble(double %66, double %61), !dbg !454
  %67 = getelementptr double, ptr getelementptr (double, ptr @ath1_data, i64 -1), i64 %60, !dbg !454
  %68 = load double, ptr %67, align 8, !dbg !454, !tbaa !356
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double %68), !dbg !453
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !263, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 %60, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !444
  call void @llvm.dbg.value(metadata i64 %60, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !263, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !267, metadata !DIExpression()), !dbg !452
  %69 = fmul double %45, %handler_result21, !dbg !453
  %handler_result22 = call double @fSubHandlerDouble(double %69, double %handler_result19), !dbg !454
  %70 = getelementptr double, ptr getelementptr (double, ptr @ath1_data, i64 -2), i64 %60, !dbg !454
  %71 = load double, ptr %70, align 8, !dbg !454, !tbaa !356
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %71), !dbg !455
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !263, metadata !DIExpression()), !dbg !444
  %72 = add nsw i64 %60, -3, !dbg !455
  call void @llvm.dbg.value(metadata i64 %72, metadata !261, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i64 %72, metadata !261, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !263, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !267, metadata !DIExpression()), !dbg !452
  %73 = fmul double %45, %handler_result23, !dbg !453
  %handler_result24 = call double @fSubHandlerDouble(double %73, double %handler_result21), !dbg !454
  %74 = getelementptr inbounds double, ptr @ath1_data, i64 %72, !dbg !454
  %75 = load double, ptr %74, align 8, !dbg !454, !tbaa !356
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double %75), !dbg !455
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !262, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !263, metadata !DIExpression()), !dbg !444
  %76 = add nsw i64 %60, -4, !dbg !455
  call void @llvm.dbg.value(metadata i64 %76, metadata !261, metadata !DIExpression()), !dbg !444
  %77 = icmp ugt i64 %72, 1, !dbg !457
  br i1 %77, label %59, label %78, !dbg !451, !llvm.loop !458

78:                                               ; preds = %59
  %79 = fmul double %44, %handler_result25, !dbg !460
  %handler_result26 = call double @fSubHandlerDouble(double %79, double %handler_result23), !dbg !461
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result26, double 0xBFA23DFD33BFBE77), !dbg !462
  tail call void @llvm.dbg.value(metadata double %handler_result27, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  br label %154, !dbg !462

80:                                               ; preds = %4
  %81 = fcmp ugt double %0, -1.000000e+00, !dbg !463
  br i1 %81, label %153, label %82, !dbg !464

82:                                               ; preds = %80
  %83 = fmul double %0, %0, !dbg !465
  %84 = fmul double %83, %0, !dbg !466
  %85 = fdiv double 1.600000e+01, %84, !dbg !467
  %handler_result28 = call double @fAddHandlerDouble(double %85, double 9.000000e+00), !dbg !468
  %86 = fdiv double %handler_result28, 7.000000e+00, !dbg !468
  tail call void @llvm.dbg.value(metadata double %86, metadata !407, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata double %86, metadata !258, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !470
  %87 = fmul double %86, 2.000000e+00, !dbg !472
  %handler_result29 = call double @fAddHandlerDouble(double %87, double 1.000000e+00), !dbg !473
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double -1.000000e+00), !dbg !474
  %88 = fmul double %handler_result30, 5.000000e-01, !dbg !474
  call void @llvm.dbg.value(metadata double %88, metadata !264, metadata !DIExpression()), !dbg !470
  %89 = fmul double %88, 2.000000e+00, !dbg !475
  call void @llvm.dbg.value(metadata double %89, metadata !265, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !476
  %90 = and i32 %1, 7, !dbg !478
  %91 = icmp eq i32 %90, 0, !dbg !479
  %92 = select i1 %91, i32 32, i32 15, !dbg !480
  call void @llvm.dbg.value(metadata i32 %92, metadata !266, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata i32 %92, metadata !261, metadata !DIExpression()), !dbg !470
  %93 = zext nneg i32 %92 to i64, !dbg !481
  br label %94, !dbg !481

94:                                               ; preds = %94, %82
  %95 = phi i64 [ %93, %82 ], [ %101, %94 ]
  %96 = phi double [ 0.000000e+00, %82 ], [ %handler_result32, %94 ]
  %97 = phi double [ 0.000000e+00, %82 ], [ %96, %94 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !261, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata double %96, metadata !262, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata double %97, metadata !263, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata double %96, metadata !267, metadata !DIExpression()), !dbg !482
  %98 = fmul double %89, %96, !dbg !483
  %handler_result31 = call double @fSubHandlerDouble(double %98, double %97), !dbg !484
  %99 = getelementptr inbounds double, ptr @am22_data, i64 %95, !dbg !484
  %100 = load double, ptr %99, align 8, !dbg !484, !tbaa !356
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double %100), !dbg !485
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !262, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata double %96, metadata !263, metadata !DIExpression()), !dbg !470
  %101 = add nsw i64 %95, -1, !dbg !485
  call void @llvm.dbg.value(metadata i64 %101, metadata !261, metadata !DIExpression()), !dbg !470
  %102 = icmp ugt i64 %95, 1, !dbg !486
  br i1 %102, label %94, label %103, !dbg !481, !llvm.loop !487

103:                                              ; preds = %94
  %104 = fmul double %88, %handler_result32, !dbg !489
  %handler_result33 = call double @fSubHandlerDouble(double %104, double %96), !dbg !490
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0xBF8000E72D521FCE), !dbg !491
  tail call void @llvm.dbg.value(metadata double %handler_result34, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  %105 = tail call double @llvm.fabs.f64(double %handler_result34), !dbg !491
  %106 = fmul double %105, 0x3CB0000000000000, !dbg !492
  %107 = zext nneg i32 %92 to i64, !dbg !493
  %108 = getelementptr inbounds double, ptr @am22_data, i64 %107, !dbg !493
  %109 = load double, ptr %108, align 8, !dbg !493, !tbaa !356
  %110 = tail call double @llvm.fabs.f64(double %109), !dbg !494
  %handler_result35 = call double @fAddHandlerDouble(double %110, double %106), !dbg !495
  tail call void @llvm.dbg.value(metadata double %handler_result35, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %86, metadata !258, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !497
  %handler_result36 = call double @fAddHandlerDouble(double %87, double 1.000000e+00), !dbg !498
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double -1.000000e+00), !dbg !499
  %111 = fmul double %handler_result37, 5.000000e-01, !dbg !499
  call void @llvm.dbg.value(metadata double %111, metadata !264, metadata !DIExpression()), !dbg !497
  %112 = fmul double %111, 2.000000e+00, !dbg !500
  call void @llvm.dbg.value(metadata double %112, metadata !265, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !501
  %113 = select i1 %91, i32 31, i32 16, !dbg !503
  call void @llvm.dbg.value(metadata i32 %113, metadata !266, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i32 %113, metadata !261, metadata !DIExpression()), !dbg !497
  %114 = zext nneg i32 %113 to i64, !dbg !504
  %115 = and i64 %114, 3, !dbg !504
  %116 = icmp eq i64 %115, 0, !dbg !504
  br i1 %116, label %128, label %117, !dbg !504

117:                                              ; preds = %117, %103
  %118 = phi i64 [ %125, %117 ], [ %114, %103 ]
  %119 = phi double [ %handler_result39, %117 ], [ 0.000000e+00, %103 ]
  %120 = phi double [ %119, %117 ], [ 0.000000e+00, %103 ]
  %121 = phi i64 [ %126, %117 ], [ 0, %103 ]
  call void @llvm.dbg.value(metadata i64 %118, metadata !261, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %119, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %120, metadata !263, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %119, metadata !267, metadata !DIExpression()), !dbg !505
  %122 = fmul double %112, %119, !dbg !506
  %handler_result38 = call double @fSubHandlerDouble(double %122, double %120), !dbg !507
  %123 = getelementptr inbounds double, ptr @ath2_data, i64 %118, !dbg !507
  %124 = load double, ptr %123, align 8, !dbg !507, !tbaa !356
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double %124), !dbg !508
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %119, metadata !263, metadata !DIExpression()), !dbg !497
  %125 = add nsw i64 %118, -1, !dbg !508
  call void @llvm.dbg.value(metadata i64 %125, metadata !261, metadata !DIExpression()), !dbg !497
  %126 = add i64 %121, 1, !dbg !504
  %127 = icmp eq i64 %126, %115, !dbg !504
  br i1 %127, label %128, label %117, !dbg !504, !llvm.loop !509

128:                                              ; preds = %117, %103
  %129 = phi i64 [ %114, %103 ], [ %125, %117 ]
  %130 = phi double [ 0.000000e+00, %103 ], [ %handler_result39, %117 ]
  %131 = phi double [ 0.000000e+00, %103 ], [ %119, %117 ]
  br label %132, !dbg !504

132:                                              ; preds = %132, %128
  %133 = phi i64 [ %129, %128 ], [ %149, %132 ]
  %134 = phi double [ %130, %128 ], [ %handler_result47, %132 ]
  %135 = phi double [ %131, %128 ], [ %handler_result45, %132 ]
  call void @llvm.dbg.value(metadata i64 %133, metadata !261, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %134, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %135, metadata !263, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %134, metadata !267, metadata !DIExpression()), !dbg !505
  %136 = fmul double %112, %134, !dbg !506
  %handler_result40 = call double @fSubHandlerDouble(double %136, double %135), !dbg !507
  %137 = getelementptr inbounds double, ptr @ath2_data, i64 %133, !dbg !507
  %138 = load double, ptr %137, align 8, !dbg !507, !tbaa !356
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double %138), !dbg !506
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %134, metadata !263, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 %133, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !497
  call void @llvm.dbg.value(metadata i64 %133, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %134, metadata !263, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !267, metadata !DIExpression()), !dbg !505
  %139 = fmul double %112, %handler_result41, !dbg !506
  %handler_result42 = call double @fSubHandlerDouble(double %139, double %134), !dbg !507
  %140 = getelementptr double, ptr getelementptr (double, ptr @ath2_data, i64 -1), i64 %133, !dbg !507
  %141 = load double, ptr %140, align 8, !dbg !507, !tbaa !356
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double %141), !dbg !506
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !263, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 %133, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !497
  call void @llvm.dbg.value(metadata i64 %133, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !263, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !267, metadata !DIExpression()), !dbg !505
  %142 = fmul double %112, %handler_result43, !dbg !506
  %handler_result44 = call double @fSubHandlerDouble(double %142, double %handler_result41), !dbg !507
  %143 = getelementptr double, ptr getelementptr (double, ptr @ath2_data, i64 -2), i64 %133, !dbg !507
  %144 = load double, ptr %143, align 8, !dbg !507, !tbaa !356
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double %144), !dbg !508
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !263, metadata !DIExpression()), !dbg !497
  %145 = add nsw i64 %133, -3, !dbg !508
  call void @llvm.dbg.value(metadata i64 %145, metadata !261, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata i64 %145, metadata !261, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !263, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !267, metadata !DIExpression()), !dbg !505
  %146 = fmul double %112, %handler_result45, !dbg !506
  %handler_result46 = call double @fSubHandlerDouble(double %146, double %handler_result43), !dbg !507
  %147 = getelementptr inbounds double, ptr @ath2_data, i64 %145, !dbg !507
  %148 = load double, ptr %147, align 8, !dbg !507, !tbaa !356
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double %148), !dbg !508
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !262, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !263, metadata !DIExpression()), !dbg !497
  %149 = add nsw i64 %133, -4, !dbg !508
  call void @llvm.dbg.value(metadata i64 %149, metadata !261, metadata !DIExpression()), !dbg !497
  %150 = icmp ugt i64 %145, 1, !dbg !510
  br i1 %150, label %132, label %151, !dbg !504, !llvm.loop !511

151:                                              ; preds = %132
  %152 = fmul double %111, %handler_result47, !dbg !513
  %handler_result48 = call double @fSubHandlerDouble(double %152, double %handler_result45), !dbg !514
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double 0x3F620B4396F64EFD)
  tail call void @llvm.dbg.value(metadata double %handler_result49, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  br label %154

153:                                              ; preds = %80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !515
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !517
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 265, i32 noundef 1) #7, !dbg !518
  br label %182, !dbg !518

154:                                              ; preds = %151, %78
  %155 = phi double [ %handler_result49, %151 ], [ %handler_result27, %78 ]
  %156 = phi i32 [ %113, %151 ], [ %46, %78 ]
  %157 = phi ptr [ @ath2_data, %151 ], [ @ath1_data, %78 ]
  %158 = phi double [ %handler_result35, %151 ], [ %handler_result13, %78 ], !dbg !520
  %159 = phi double [ %handler_result34, %151 ], [ %handler_result12, %78 ], !dbg !522
  %160 = tail call double @llvm.fabs.f64(double %155), !dbg !523
  %161 = fmul double %160, 0x3CB0000000000000, !dbg !524
  %162 = zext nneg i32 %156 to i64, !dbg !525
  %163 = getelementptr inbounds double, ptr %157, i64 %162, !dbg !525
  %164 = load double, ptr %163, align 8, !dbg !525, !tbaa !356
  %165 = tail call double @llvm.fabs.f64(double %164), !dbg !526
  %handler_result50 = call double @fAddHandlerDouble(double %165, double %161), !dbg !527
  tail call void @llvm.dbg.value(metadata double %155, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !400, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  tail call void @llvm.dbg.value(metadata double %159, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !410
  tail call void @llvm.dbg.value(metadata double %158, metadata !399, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !410
  %handler_result51 = call double @fAddHandlerDouble(double %159, double 3.125000e-01), !dbg !528
  tail call void @llvm.dbg.value(metadata double %handler_result51, metadata !401, metadata !DIExpression()), !dbg !410
  %handler_result52 = call double @fAddHandlerDouble(double %155, double -6.250000e-01), !dbg !529
  tail call void @llvm.dbg.value(metadata double %handler_result52, metadata !402, metadata !DIExpression()), !dbg !410
  %166 = fneg double %0, !dbg !529
  %167 = tail call double @sqrt(double noundef %166) #7, !dbg !530
  tail call void @llvm.dbg.value(metadata double %167, metadata !403, metadata !DIExpression()), !dbg !410
  %168 = fdiv double %handler_result51, %167, !dbg !531
  %169 = tail call double @sqrt(double noundef %168) #7, !dbg !532
  store double %169, ptr %2, align 8, !dbg !533, !tbaa !222
  %170 = tail call double @llvm.fabs.f64(double %169), !dbg !534
  %171 = fdiv double %158, %159, !dbg !535
  %172 = tail call double @llvm.fabs.f64(double %171), !dbg !536
  %handler_result53 = call double @fAddHandlerDouble(double %172, double 0x3CB0000000000000), !dbg !537
  %173 = fmul double %handler_result53, %170, !dbg !537
  %174 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !538
  store double %173, ptr %174, align 8, !dbg !539, !tbaa !228
  %175 = fmul double %167, %0, !dbg !540
  %176 = fmul double %handler_result52, %175, !dbg !541
  %handler_result54 = call double @fSubHandlerDouble(double 0x3FE921FB54442D18, double %176), !dbg !542
  store double %handler_result54, ptr %3, align 8, !dbg !542, !tbaa !222
  %177 = tail call double @llvm.fabs.f64(double %handler_result54), !dbg !543
  %178 = fdiv double %handler_result50, %155, !dbg !544
  %179 = tail call double @llvm.fabs.f64(double %178), !dbg !545
  %handler_result55 = call double @fAddHandlerDouble(double %179, double 0x3CB0000000000000), !dbg !546
  %180 = fmul double %handler_result55, %177, !dbg !546
  %181 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !547
  store double %180, ptr %181, align 8, !dbg !548, !tbaa !228
  br label %182, !dbg !549

182:                                              ; preds = %154, %153
  %183 = phi i32 [ 0, %154 ], [ 1, %153 ], !dbg !410
  ret i32 %183, !dbg !550
}

declare !dbg !551 i32 @gsl_sf_cos_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !555 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !559 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !560 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Ai_scaled_e(double noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !565 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !585
  call void @llvm.dbg.assign(metadata i1 undef, metadata !570, metadata !DIExpression(), metadata !585, metadata ptr %4, metadata !DIExpression()), !dbg !586
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !587
  call void @llvm.dbg.assign(metadata i1 undef, metadata !573, metadata !DIExpression(), metadata !587, metadata ptr %5, metadata !DIExpression()), !dbg !586
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !588
  call void @llvm.dbg.assign(metadata i1 undef, metadata !574, metadata !DIExpression(), metadata !588, metadata ptr %6, metadata !DIExpression()), !dbg !586
  tail call void @llvm.dbg.value(metadata double %0, metadata !567, metadata !DIExpression()), !dbg !589
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !568, metadata !DIExpression()), !dbg !589
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !569, metadata !DIExpression()), !dbg !589
  %7 = fcmp olt double %0, -1.000000e+00, !dbg !590
  br i1 %7, label %8, label %30, !dbg !591

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !592
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !593
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !594
  %9 = call fastcc i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !595, !range !220
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !575, metadata !DIExpression()), !dbg !586
  %10 = load double, ptr %5, align 8, !dbg !596, !tbaa !222
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !597
  %12 = load double, ptr %11, align 8, !dbg !597, !tbaa !228
  %13 = call i32 @gsl_sf_cos_err_e(double noundef %10, double noundef %12, ptr noundef nonnull %6) #7, !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !576, metadata !DIExpression()), !dbg !586
  %14 = load double, ptr %4, align 8, !dbg !599, !tbaa !222
  %15 = load double, ptr %6, align 8, !dbg !600, !tbaa !222
  %16 = fmul double %14, %15, !dbg !601
  store double %16, ptr %2, align 8, !dbg !602, !tbaa !222
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !603
  %18 = load double, ptr %17, align 8, !dbg !603, !tbaa !228
  %19 = fmul double %14, %18, !dbg !604
  %20 = call double @llvm.fabs.f64(double %19), !dbg !605
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !606
  %22 = load double, ptr %21, align 8, !dbg !606, !tbaa !228
  %23 = fmul double %15, %22, !dbg !607
  %24 = call double @llvm.fabs.f64(double %23), !dbg !608
  %handler_result = call double @fAddHandlerDouble(double %20, double %24), !dbg !609
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !609
  %26 = call double @llvm.fabs.f64(double %16), !dbg !610
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !611
  %handler_result1 = call double @fAddHandlerDouble(double %27, double %handler_result), !dbg !612
  store double %handler_result1, ptr %25, align 8, !dbg !612, !tbaa !228
  %28 = icmp eq i32 %9, 0, !dbg !613
  %29 = select i1 %28, i32 %13, i32 %9, !dbg !613
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !614
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !614
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !614
  br label %132

30:                                               ; preds = %3
  %31 = fcmp ugt double %0, 1.000000e+00, !dbg !615
  br i1 %31, label %76, label %32, !dbg !616

32:                                               ; preds = %30
  %33 = fmul double %0, %0, !dbg !617
  %34 = fmul double %33, %0, !dbg !618
  tail call void @llvm.dbg.value(metadata double %34, metadata !577, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double %34, metadata !258, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata i32 8, metadata !266, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 8, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !620
  tail call void @llvm.dbg.value(metadata double poison, metadata !580, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !619
  tail call void @llvm.dbg.value(metadata double poison, metadata !580, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !619
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %34, metadata !258, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i32 7, metadata !266, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i32 7, metadata !261, metadata !DIExpression()), !dbg !625
  %35 = fmul double %34, 2.000000e+00, !dbg !629
  %handler_result2 = call double @fAddHandlerDouble(double %35, double 1.000000e+00), !dbg !630
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !631
  %36 = fmul double %handler_result3, 5.000000e-01, !dbg !631
  call void @llvm.dbg.value(metadata double %36, metadata !264, metadata !DIExpression()), !dbg !625
  %37 = fmul double %36, 2.000000e+00, !dbg !632
  call void @llvm.dbg.value(metadata double %37, metadata !265, metadata !DIExpression()), !dbg !625
  %handler_result4 = call double @fAddHandlerDouble(double %35, double 1.000000e+00), !dbg !633
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !634
  %38 = fmul double %handler_result5, 5.000000e-01, !dbg !634
  call void @llvm.dbg.value(metadata double %38, metadata !264, metadata !DIExpression()), !dbg !620
  %39 = fmul double %38, 2.000000e+00, !dbg !635
  call void @llvm.dbg.value(metadata double %39, metadata !265, metadata !DIExpression()), !dbg !620
  %40 = fmul double %39, 0.000000e+00, !dbg !636
  %handler_result6 = call double @fAddHandlerDouble(double %40, double 0x3BFD83C94FB6D2AC), !dbg !636
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !263, metadata !DIExpression()), !dbg !620
  %41 = fmul double %39, %handler_result6, !dbg !636
  %handler_result7 = call double @fAddHandlerDouble(double %41, double 1.201400e-16), !dbg !636
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !263, metadata !DIExpression()), !dbg !620
  %42 = fmul double %39, %handler_result7, !dbg !636
  %handler_result8 = call double @fSubHandlerDouble(double %42, double %handler_result6), !dbg !637
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3D3C686128FEBABC), !dbg !636
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !263, metadata !DIExpression()), !dbg !620
  %43 = fmul double %39, %handler_result9, !dbg !636
  %handler_result10 = call double @fSubHandlerDouble(double %43, double %handler_result7), !dbg !637
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3DD0FA67A3B60159), !dbg !636
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !263, metadata !DIExpression()), !dbg !620
  %44 = fmul double %39, %handler_result11, !dbg !636
  %handler_result12 = call double @fSubHandlerDouble(double %44, double %handler_result9), !dbg !637
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3E5BDAE3C9D3830E), !dbg !636
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !263, metadata !DIExpression()), !dbg !620
  %45 = fmul double %39, %handler_result13, !dbg !636
  %handler_result14 = call double @fSubHandlerDouble(double %45, double %handler_result11), !dbg !637
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 0x3EDCB9E3DA9E0C35), !dbg !636
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !263, metadata !DIExpression()), !dbg !620
  %46 = fmul double %39, %handler_result15, !dbg !636
  %handler_result16 = call double @fSubHandlerDouble(double %46, double %handler_result13), !dbg !637
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 0x3F5028CFD615B254), !dbg !636
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !262, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !267, metadata !DIExpression()), !dbg !624
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !263, metadata !DIExpression()), !dbg !620
  %47 = fmul double %39, %handler_result17, !dbg !636
  %handler_result18 = call double @fSubHandlerDouble(double %47, double %handler_result15), !dbg !637
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FAE4E6632E97C0F), !dbg !638
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !262, metadata !DIExpression()), !dbg !620
  %48 = fmul double %38, %handler_result19, !dbg !638
  %handler_result20 = call double @fSubHandlerDouble(double %48, double %handler_result17), !dbg !639
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 0xBF9370FB5DDB1451), !dbg !640
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !580, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !619
  %49 = tail call double @llvm.fabs.f64(double %handler_result21), !dbg !640
  %50 = fmul double %49, 0x3CB0000000000000, !dbg !641
  %handler_result22 = call double @fAddHandlerDouble(double %50, double 0x3BFD83C94FB6D2AC), !dbg !642
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !580, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !619
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !643
  %51 = fmul double %37, 0.000000e+00, !dbg !642
  %handler_result23 = call double @fAddHandlerDouble(double %51, double 1.000000e-17), !dbg !642
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !267, metadata !DIExpression()), !dbg !643
  %52 = fmul double %37, %handler_result23, !dbg !642
  %handler_result24 = call double @fAddHandlerDouble(double %52, double 1.392000e-14), !dbg !642
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !267, metadata !DIExpression()), !dbg !643
  %53 = fmul double %37, %handler_result24, !dbg !642
  %handler_result25 = call double @fSubHandlerDouble(double %53, double %handler_result23), !dbg !644
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 9.525170e-12), !dbg !642
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !267, metadata !DIExpression()), !dbg !643
  %54 = fmul double %37, %handler_result26, !dbg !642
  %handler_result27 = call double @fSubHandlerDouble(double %54, double %handler_result24), !dbg !644
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3E33A317F0CCD43B), !dbg !642
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !267, metadata !DIExpression()), !dbg !643
  %55 = fmul double %37, %handler_result28, !dbg !642
  %handler_result29 = call double @fSubHandlerDouble(double %55, double %handler_result26), !dbg !644
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0x3EB7EEDCE1362561), !dbg !642
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !267, metadata !DIExpression()), !dbg !643
  %56 = fmul double %37, %handler_result30, !dbg !642
  %handler_result31 = call double @fSubHandlerDouble(double %56, double %handler_result28), !dbg !644
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0x3F30D41D08E63267), !dbg !642
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !267, metadata !DIExpression()), !dbg !643
  %57 = fmul double %37, %handler_result32, !dbg !642
  %handler_result33 = call double @fSubHandlerDouble(double %57, double %handler_result30), !dbg !644
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3F96171E3527D823), !dbg !645
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !262, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !263, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !625
  %58 = fmul double %36, %handler_result34, !dbg !645
  %handler_result35 = call double @fSubHandlerDouble(double %58, double %handler_result32), !dbg !646
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3F829688A21082BA), !dbg !647
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !581, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !619
  %59 = tail call double @llvm.fabs.f64(double %handler_result36), !dbg !647
  %60 = fmul double %59, 0x3CB0000000000000, !dbg !648
  %handler_result37 = call double @fAddHandlerDouble(double %60, double 1.000000e-17), !dbg !649
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !581, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !619
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result36, double 2.500000e-01), !dbg !650
  %61 = fmul double %handler_result38, %0, !dbg !650
  %handler_result39 = call double @fSubHandlerDouble(double %handler_result21, double %61), !dbg !651
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result39, double 3.750000e-01), !dbg !652
  store double %handler_result40, ptr %2, align 8, !dbg !652, !tbaa !222
  %62 = fmul double %handler_result37, %0, !dbg !653
  %63 = tail call double @llvm.fabs.f64(double %62), !dbg !654
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result22, double %63), !dbg !655
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !655
  %65 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !656
  %66 = fmul double %65, 0x3CB0000000000000, !dbg !657
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result41, double %66), !dbg !658
  store double %handler_result42, ptr %64, align 8, !dbg !658, !tbaa !228
  %67 = fcmp ogt double %0, 0.000000e+00, !dbg !659
  br i1 %67, label %68, label %132, !dbg !660

68:                                               ; preds = %32
  %69 = tail call double @sqrt(double noundef %34) #7, !dbg !661
  %70 = fmul double %69, 0x3FE5555555555555, !dbg !662
  %71 = tail call double @exp(double noundef %70) #7, !dbg !663
  tail call void @llvm.dbg.value(metadata double %71, metadata !582, metadata !DIExpression()), !dbg !664
  %72 = load double, ptr %2, align 8, !dbg !665, !tbaa !222
  %73 = fmul double %71, %72, !dbg !665
  store double %73, ptr %2, align 8, !dbg !665, !tbaa !222
  %74 = load double, ptr %64, align 8, !dbg !666, !tbaa !228
  %75 = fmul double %71, %74, !dbg !666
  store double %75, ptr %64, align 8, !dbg !666, !tbaa !228
  br label %132, !dbg !667

76:                                               ; preds = %30
  call void @llvm.dbg.value(metadata double %0, metadata !324, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata i32 %1, metadata !329, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata ptr %2, metadata !330, metadata !DIExpression()), !dbg !668
  %77 = tail call double @sqrt(double noundef %0) #7, !dbg !671
  call void @llvm.dbg.value(metadata double %77, metadata !331, metadata !DIExpression()), !dbg !668
  %78 = fmul double %77, %0, !dbg !672
  %79 = fdiv double 2.000000e+00, %78, !dbg !673
  %handler_result43 = call double @fAddHandlerDouble(double %79, double -1.000000e+00), !dbg !674
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !332, metadata !DIExpression()), !dbg !668
  %80 = tail call double @sqrt(double noundef %77) #7, !dbg !674
  call void @llvm.dbg.value(metadata double %80, metadata !333, metadata !DIExpression()), !dbg !668
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !258, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !675
  %81 = fmul double %handler_result43, 2.000000e+00, !dbg !677
  %handler_result44 = call double @fAddHandlerDouble(double %81, double 1.000000e+00), !dbg !678
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double -1.000000e+00), !dbg !679
  %82 = fmul double %handler_result45, 5.000000e-01, !dbg !679
  call void @llvm.dbg.value(metadata double %82, metadata !264, metadata !DIExpression()), !dbg !675
  %83 = fmul double %82, 2.000000e+00, !dbg !680
  call void @llvm.dbg.value(metadata double %83, metadata !265, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !681
  %84 = and i32 %1, 7, !dbg !683
  %85 = icmp eq i32 %84, 0, !dbg !684
  %86 = select i1 %85, i32 35, i32 17, !dbg !685
  call void @llvm.dbg.value(metadata i32 %86, metadata !266, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %86, metadata !261, metadata !DIExpression()), !dbg !675
  %87 = zext nneg i32 %86 to i64, !dbg !686
  %88 = and i64 %87, 3, !dbg !686
  br label %89, !dbg !686

89:                                               ; preds = %89, %76
  %90 = phi i64 [ %87, %76 ], [ %97, %89 ]
  %91 = phi double [ 0.000000e+00, %76 ], [ %handler_result47, %89 ]
  %92 = phi double [ 0.000000e+00, %76 ], [ %91, %89 ]
  %93 = phi i64 [ 0, %76 ], [ %98, %89 ]
  call void @llvm.dbg.value(metadata i64 %90, metadata !261, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %91, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %92, metadata !263, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %91, metadata !267, metadata !DIExpression()), !dbg !687
  %94 = fmul double %83, %91, !dbg !688
  %handler_result46 = call double @fSubHandlerDouble(double %94, double %92), !dbg !689
  %95 = getelementptr inbounds double, ptr @data_aip, i64 %90, !dbg !689
  %96 = load double, ptr %95, align 8, !dbg !689, !tbaa !356
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double %96), !dbg !690
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %91, metadata !263, metadata !DIExpression()), !dbg !675
  %97 = add nsw i64 %90, -1, !dbg !690
  call void @llvm.dbg.value(metadata i64 %97, metadata !261, metadata !DIExpression()), !dbg !675
  %98 = add i64 %93, 1, !dbg !686
  %99 = icmp eq i64 %98, %88, !dbg !686
  br i1 %99, label %100, label %89, !dbg !686, !llvm.loop !691

100:                                              ; preds = %100, %89
  %101 = phi i64 [ %117, %100 ], [ %97, %89 ]
  %102 = phi double [ %handler_result55, %100 ], [ %handler_result47, %89 ]
  %103 = phi double [ %handler_result53, %100 ], [ %91, %89 ]
  call void @llvm.dbg.value(metadata i64 %101, metadata !261, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %102, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %103, metadata !263, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %102, metadata !267, metadata !DIExpression()), !dbg !687
  %104 = fmul double %83, %102, !dbg !688
  %handler_result48 = call double @fSubHandlerDouble(double %104, double %103), !dbg !689
  %105 = getelementptr inbounds double, ptr @data_aip, i64 %101, !dbg !689
  %106 = load double, ptr %105, align 8, !dbg !689, !tbaa !356
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double %106), !dbg !688
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %102, metadata !263, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i64 %101, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !675
  call void @llvm.dbg.value(metadata i64 %101, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %102, metadata !263, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !267, metadata !DIExpression()), !dbg !687
  %107 = fmul double %83, %handler_result49, !dbg !688
  %handler_result50 = call double @fSubHandlerDouble(double %107, double %102), !dbg !689
  %108 = getelementptr double, ptr getelementptr (double, ptr @data_aip, i64 -1), i64 %101, !dbg !689
  %109 = load double, ptr %108, align 8, !dbg !689, !tbaa !356
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double %109), !dbg !688
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !263, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i64 %101, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !675
  call void @llvm.dbg.value(metadata i64 %101, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !263, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !267, metadata !DIExpression()), !dbg !687
  %110 = fmul double %83, %handler_result51, !dbg !688
  %handler_result52 = call double @fSubHandlerDouble(double %110, double %handler_result49), !dbg !689
  %111 = getelementptr double, ptr getelementptr (double, ptr @data_aip, i64 -2), i64 %101, !dbg !689
  %112 = load double, ptr %111, align 8, !dbg !689, !tbaa !356
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double %112), !dbg !690
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !263, metadata !DIExpression()), !dbg !675
  %113 = add nsw i64 %101, -3, !dbg !690
  call void @llvm.dbg.value(metadata i64 %113, metadata !261, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i64 %113, metadata !261, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !263, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !267, metadata !DIExpression()), !dbg !687
  %114 = fmul double %83, %handler_result53, !dbg !688
  %handler_result54 = call double @fSubHandlerDouble(double %114, double %handler_result51), !dbg !689
  %115 = getelementptr inbounds double, ptr @data_aip, i64 %113, !dbg !689
  %116 = load double, ptr %115, align 8, !dbg !689, !tbaa !356
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double %116), !dbg !690
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !262, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !263, metadata !DIExpression()), !dbg !675
  %117 = add nsw i64 %101, -4, !dbg !690
  call void @llvm.dbg.value(metadata i64 %117, metadata !261, metadata !DIExpression()), !dbg !675
  %118 = icmp ugt i64 %113, 1, !dbg !692
  br i1 %118, label %100, label %119, !dbg !686, !llvm.loop !693

119:                                              ; preds = %100
  %120 = fmul double %82, %handler_result55, !dbg !695
  %handler_result56 = call double @fSubHandlerDouble(double %120, double %handler_result53), !dbg !696
  %handler_result57 = call double @fAddHandlerDouble(double %handler_result56, double 0xBF8333B4B48EB2F9), !dbg !697
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !334, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !668
  %121 = tail call double @llvm.fabs.f64(double %handler_result57), !dbg !697
  %122 = fmul double %121, 0x3CB0000000000000, !dbg !698
  %123 = zext nneg i32 %86 to i64, !dbg !699
  %124 = getelementptr inbounds double, ptr @data_aip, i64 %123, !dbg !699
  %125 = load double, ptr %124, align 8, !dbg !699, !tbaa !356
  %126 = tail call double @llvm.fabs.f64(double %125), !dbg !700
  %handler_result58 = call double @fAddHandlerDouble(double %126, double %122), !dbg !701
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !334, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !668
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result57, double 2.812500e-01), !dbg !702
  %127 = fdiv double %handler_result59, %80, !dbg !702
  store double %127, ptr %2, align 8, !dbg !703, !tbaa !222
  %128 = fdiv double %handler_result58, %80, !dbg !704
  %129 = tail call double @llvm.fabs.f64(double %127), !dbg !705
  %130 = fmul double %129, 0x3CB0000000000000, !dbg !706
  %handler_result60 = call double @fAddHandlerDouble(double %128, double %130), !dbg !707
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !707
  store double %handler_result60, ptr %131, align 8, !dbg !708, !tbaa !228
  br label %132, !dbg !709

132:                                              ; preds = %119, %68, %32, %8
  %133 = phi i32 [ %29, %8 ], [ 0, %119 ], [ 0, %68 ], [ 0, %32 ], !dbg !710
  ret i32 %133, !dbg !711
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Bi_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !712 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !741
  call void @llvm.dbg.assign(metadata i1 undef, metadata !717, metadata !DIExpression(), metadata !741, metadata ptr %4, metadata !DIExpression()), !dbg !742
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !743
  call void @llvm.dbg.assign(metadata i1 undef, metadata !720, metadata !DIExpression(), metadata !743, metadata ptr %5, metadata !DIExpression()), !dbg !742
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !744
  call void @llvm.dbg.assign(metadata i1 undef, metadata !721, metadata !DIExpression(), metadata !744, metadata ptr %6, metadata !DIExpression()), !dbg !742
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !745
  call void @llvm.dbg.assign(metadata i1 undef, metadata !737, metadata !DIExpression(), metadata !745, metadata ptr %7, metadata !DIExpression()), !dbg !746
  tail call void @llvm.dbg.value(metadata double %0, metadata !714, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !715, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !716, metadata !DIExpression()), !dbg !747
  %8 = fcmp olt double %0, -1.000000e+00, !dbg !748
  br i1 %8, label %9, label %31, !dbg !749

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !750
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !751
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !752
  %10 = call fastcc i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !753, !range !220
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !722, metadata !DIExpression()), !dbg !742
  %11 = load double, ptr %5, align 8, !dbg !754, !tbaa !222
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !755
  %13 = load double, ptr %12, align 8, !dbg !755, !tbaa !228
  %14 = call i32 @gsl_sf_sin_err_e(double noundef %11, double noundef %13, ptr noundef nonnull %6) #7, !dbg !756
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !723, metadata !DIExpression()), !dbg !742
  %15 = load double, ptr %4, align 8, !dbg !757, !tbaa !222
  %16 = load double, ptr %6, align 8, !dbg !758, !tbaa !222
  %17 = fmul double %15, %16, !dbg !759
  store double %17, ptr %2, align 8, !dbg !760, !tbaa !222
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !761
  %19 = load double, ptr %18, align 8, !dbg !761, !tbaa !228
  %20 = fmul double %15, %19, !dbg !762
  %21 = call double @llvm.fabs.f64(double %20), !dbg !763
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !764
  %23 = load double, ptr %22, align 8, !dbg !764, !tbaa !228
  %24 = fmul double %16, %23, !dbg !765
  %25 = call double @llvm.fabs.f64(double %24), !dbg !766
  %handler_result = call double @fAddHandlerDouble(double %21, double %25), !dbg !767
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !767
  %27 = call double @llvm.fabs.f64(double %17), !dbg !768
  %28 = fmul double %27, 0x3CB0000000000000, !dbg !769
  %handler_result1 = call double @fAddHandlerDouble(double %28, double %handler_result), !dbg !770
  store double %handler_result1, ptr %26, align 8, !dbg !770, !tbaa !228
  %29 = icmp eq i32 %10, 0, !dbg !771
  %30 = select i1 %29, i32 %14, i32 %10, !dbg !771
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !772
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !772
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !772
  br label %131

31:                                               ; preds = %3
  %32 = fcmp olt double %0, 1.000000e+00, !dbg !773
  br i1 %32, label %33, label %68, !dbg !774

33:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata double poison, metadata !724, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata i32 8, metadata !266, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i32 8, metadata !261, metadata !DIExpression()), !dbg !776
  tail call void @llvm.dbg.value(metadata double poison, metadata !724, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !776
  tail call void @llvm.dbg.value(metadata double poison, metadata !727, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !775
  tail call void @llvm.dbg.value(metadata double poison, metadata !727, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !775
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !783
  call void @llvm.dbg.value(metadata i32 7, metadata !266, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i32 7, metadata !261, metadata !DIExpression()), !dbg !781
  %34 = fmul double %0, %0, !dbg !785
  %35 = fmul double %34, %0, !dbg !786
  tail call void @llvm.dbg.value(metadata double %35, metadata !724, metadata !DIExpression()), !dbg !775
  call void @llvm.dbg.value(metadata double %35, metadata !258, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double %35, metadata !258, metadata !DIExpression()), !dbg !781
  %36 = fmul double %35, 2.000000e+00, !dbg !787
  %handler_result2 = call double @fAddHandlerDouble(double %36, double 1.000000e+00), !dbg !788
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !789
  %37 = fmul double %handler_result3, 5.000000e-01, !dbg !789
  call void @llvm.dbg.value(metadata double %37, metadata !264, metadata !DIExpression()), !dbg !781
  %38 = fmul double %37, 2.000000e+00, !dbg !790
  call void @llvm.dbg.value(metadata double %38, metadata !265, metadata !DIExpression()), !dbg !781
  %handler_result4 = call double @fAddHandlerDouble(double %36, double 1.000000e+00), !dbg !791
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !792
  %39 = fmul double %handler_result5, 5.000000e-01, !dbg !792
  call void @llvm.dbg.value(metadata double %39, metadata !264, metadata !DIExpression()), !dbg !776
  %40 = fmul double %39, 2.000000e+00, !dbg !793
  call void @llvm.dbg.value(metadata double %40, metadata !265, metadata !DIExpression()), !dbg !776
  %41 = fmul double %40, 0.000000e+00, !dbg !794
  %handler_result6 = call double @fAddHandlerDouble(double %41, double 1.800000e-19), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !263, metadata !DIExpression()), !dbg !776
  %42 = fmul double %40, %handler_result6, !dbg !794
  %handler_result7 = call double @fAddHandlerDouble(double %42, double 2.081000e-16), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !263, metadata !DIExpression()), !dbg !776
  %43 = fmul double %40, %handler_result7, !dbg !794
  %handler_result8 = call double @fSubHandlerDouble(double %43, double %handler_result6), !dbg !795
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3D489A10BD02D422), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !263, metadata !DIExpression()), !dbg !776
  %44 = fmul double %40, %handler_result9, !dbg !794
  %handler_result10 = call double @fSubHandlerDouble(double %44, double %handler_result7), !dbg !795
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3DDD6831AB093FE3), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !263, metadata !DIExpression()), !dbg !776
  %45 = fmul double %40, %handler_result11, !dbg !794
  %handler_result12 = call double @fSubHandlerDouble(double %45, double %handler_result9), !dbg !795
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3E681F881E9A9EB8), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !263, metadata !DIExpression()), !dbg !776
  %46 = fmul double %40, %handler_result13, !dbg !794
  %handler_result14 = call double @fSubHandlerDouble(double %46, double %handler_result11), !dbg !795
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 0x3EE8E0A7D5A866A9), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !263, metadata !DIExpression()), !dbg !776
  %47 = fmul double %40, %handler_result15, !dbg !794
  %handler_result16 = call double @fSubHandlerDouble(double %47, double %handler_result13), !dbg !795
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 0x3F5BFD2B174187A5), !dbg !794
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !262, metadata !DIExpression()), !dbg !776
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !267, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !263, metadata !DIExpression()), !dbg !776
  %48 = fmul double %40, %handler_result17, !dbg !794
  %handler_result18 = call double @fSubHandlerDouble(double %48, double %handler_result15), !dbg !795
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FBA3EF8872837DE), !dbg !796
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !262, metadata !DIExpression()), !dbg !776
  %49 = fmul double %39, %handler_result19, !dbg !796
  %handler_result20 = call double @fSubHandlerDouble(double %49, double %handler_result17), !dbg !797
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 0xBF8121B9D268A2B4), !dbg !798
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !727, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !775
  %50 = tail call double @llvm.fabs.f64(double %handler_result21), !dbg !798
  %51 = fmul double %50, 0x3CB0000000000000, !dbg !799
  %handler_result22 = call double @fAddHandlerDouble(double %51, double 1.800000e-19), !dbg !800
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !727, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !775
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !801
  %52 = fmul double %38, 0.000000e+00, !dbg !800
  %handler_result23 = call double @fAddHandlerDouble(double %52, double 2.000000e-17), !dbg !800
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !267, metadata !DIExpression()), !dbg !801
  %53 = fmul double %38, %handler_result23, !dbg !800
  %handler_result24 = call double @fAddHandlerDouble(double %53, double 2.411000e-14), !dbg !800
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !267, metadata !DIExpression()), !dbg !801
  %54 = fmul double %38, %handler_result24, !dbg !800
  %handler_result25 = call double @fSubHandlerDouble(double %54, double %handler_result23), !dbg !802
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3DB223CB3B000986), !dbg !800
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !267, metadata !DIExpression()), !dbg !801
  %55 = fmul double %38, %handler_result26, !dbg !800
  %handler_result27 = call double @fSubHandlerDouble(double %55, double %handler_result24), !dbg !802
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3E410197375ECA6C), !dbg !800
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !267, metadata !DIExpression()), !dbg !801
  %56 = fmul double %38, %handler_result28, !dbg !800
  %handler_result29 = call double @fSubHandlerDouble(double %56, double %handler_result26), !dbg !802
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0x3EC4BA04D2B6F238), !dbg !800
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !267, metadata !DIExpression()), !dbg !801
  %57 = fmul double %38, %handler_result30, !dbg !800
  %handler_result31 = call double @fSubHandlerDouble(double %57, double %handler_result28), !dbg !802
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0x3F3D25DF0F0797C5), !dbg !800
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !267, metadata !DIExpression()), !dbg !801
  %58 = fmul double %38, %handler_result32, !dbg !800
  %handler_result33 = call double @fSubHandlerDouble(double %58, double %handler_result30), !dbg !802
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3FA32179D12FAB23), !dbg !803
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !262, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !263, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !781
  %59 = fmul double %37, %handler_result34, !dbg !803
  %handler_result35 = call double @fSubHandlerDouble(double %59, double %handler_result32), !dbg !804
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3F870162B87813A5), !dbg !805
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !728, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !775
  %60 = tail call double @llvm.fabs.f64(double %handler_result36), !dbg !805
  %61 = fmul double %60, 0x3CB0000000000000, !dbg !806
  %handler_result37 = call double @fAddHandlerDouble(double %61, double 2.000000e-17), !dbg !807
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !728, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !775
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result21, double 6.250000e-01), !dbg !808
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result36, double 4.375000e-01), !dbg !809
  %62 = fmul double %handler_result39, %0, !dbg !809
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result38, double %62), !dbg !810
  store double %handler_result40, ptr %2, align 8, !dbg !810, !tbaa !222
  %63 = fmul double %handler_result37, %0, !dbg !811
  %64 = tail call double @llvm.fabs.f64(double %63), !dbg !812
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result22, double %64), !dbg !813
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !813
  %66 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !814
  %67 = fmul double %66, 0x3CB0000000000000, !dbg !815
  %handler_result42 = call double @fAddHandlerDouble(double %67, double %handler_result41), !dbg !816
  store double %handler_result42, ptr %65, align 8, !dbg !816, !tbaa !228
  br label %131

68:                                               ; preds = %31
  %69 = fcmp ugt double %0, 2.000000e+00, !dbg !817
  %70 = fmul double %0, 2.000000e+00, !dbg !818
  br i1 %69, label %110, label %71, !dbg !819

71:                                               ; preds = %68
  tail call void @llvm.dbg.value(metadata double poison, metadata !729, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 9, metadata !266, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i32 9, metadata !261, metadata !DIExpression()), !dbg !821
  tail call void @llvm.dbg.value(metadata double poison, metadata !729, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 9, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !821
  tail call void @llvm.dbg.value(metadata double poison, metadata !732, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !820
  tail call void @llvm.dbg.value(metadata double poison, metadata !732, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !820
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i32 9, metadata !266, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 9, metadata !261, metadata !DIExpression()), !dbg !826
  %72 = fmul double %70, %0, !dbg !830
  %73 = fmul double %72, %0, !dbg !831
  %handler_result43 = call double @fAddHandlerDouble(double %73, double -9.000000e+00), !dbg !832
  %74 = fdiv double %handler_result43, 7.000000e+00, !dbg !832
  tail call void @llvm.dbg.value(metadata double %74, metadata !729, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata double %74, metadata !258, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double %74, metadata !258, metadata !DIExpression()), !dbg !826
  %75 = fmul double %74, 2.000000e+00, !dbg !833
  %handler_result44 = call double @fAddHandlerDouble(double %75, double 1.000000e+00), !dbg !834
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double -1.000000e+00), !dbg !835
  %76 = fmul double %handler_result45, 5.000000e-01, !dbg !835
  call void @llvm.dbg.value(metadata double %76, metadata !264, metadata !DIExpression()), !dbg !826
  %77 = fmul double %76, 2.000000e+00, !dbg !836
  call void @llvm.dbg.value(metadata double %77, metadata !265, metadata !DIExpression()), !dbg !826
  %handler_result46 = call double @fAddHandlerDouble(double %75, double 1.000000e+00), !dbg !837
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double -1.000000e+00), !dbg !838
  %78 = fmul double %handler_result47, 5.000000e-01, !dbg !838
  call void @llvm.dbg.value(metadata double %78, metadata !264, metadata !DIExpression()), !dbg !821
  %79 = fmul double %78, 2.000000e+00, !dbg !839
  call void @llvm.dbg.value(metadata double %79, metadata !265, metadata !DIExpression()), !dbg !821
  %80 = fmul double %79, 0.000000e+00, !dbg !840
  %handler_result48 = call double @fAddHandlerDouble(double %80, double 1.110000e-17), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !263, metadata !DIExpression()), !dbg !821
  %81 = fmul double %79, %handler_result48, !dbg !840
  %handler_result49 = call double @fAddHandlerDouble(double %81, double 4.496200e-15), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !263, metadata !DIExpression()), !dbg !821
  %82 = fmul double %79, %handler_result49, !dbg !840
  %handler_result50 = call double @fSubHandlerDouble(double %82, double %handler_result48), !dbg !841
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double 0x3D79232729612F79), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !263, metadata !DIExpression()), !dbg !821
  %83 = fmul double %79, %handler_result51, !dbg !840
  %handler_result52 = call double @fSubHandlerDouble(double %83, double %handler_result49), !dbg !841
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double 0x3DF7CBBDB5EAF10A), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !263, metadata !DIExpression()), !dbg !821
  %84 = fmul double %79, %handler_result53, !dbg !840
  %handler_result54 = call double @fSubHandlerDouble(double %84, double %handler_result51), !dbg !841
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double 0x3E7077AAC00260F6), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !263, metadata !DIExpression()), !dbg !821
  %85 = fmul double %79, %handler_result55, !dbg !840
  %handler_result56 = call double @fSubHandlerDouble(double %85, double %handler_result53), !dbg !841
  %handler_result57 = call double @fAddHandlerDouble(double %handler_result56, double 0x3EDF74CFF88B3AF0), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !263, metadata !DIExpression()), !dbg !821
  %86 = fmul double %79, %handler_result57, !dbg !840
  %handler_result58 = call double @fSubHandlerDouble(double %86, double %handler_result55), !dbg !841
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result58, double 0x3F4312C07E6D492C), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !263, metadata !DIExpression()), !dbg !821
  %87 = fmul double %79, %handler_result59, !dbg !840
  %handler_result60 = call double @fSubHandlerDouble(double %87, double %handler_result57), !dbg !841
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result60, double 0x3F99C249B2C6A9FD), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !262, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !267, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !263, metadata !DIExpression()), !dbg !821
  %88 = fmul double %79, %handler_result61, !dbg !840
  %handler_result62 = call double @fSubHandlerDouble(double %88, double %handler_result59), !dbg !841
  %handler_result63 = call double @fAddHandlerDouble(double %handler_result62, double 0x3FDEA1CAA8BE19EF), !dbg !842
  call void @llvm.dbg.value(metadata double %handler_result63, metadata !262, metadata !DIExpression()), !dbg !821
  %89 = fmul double %78, %handler_result63, !dbg !842
  %handler_result64 = call double @fSubHandlerDouble(double %89, double %handler_result61), !dbg !843
  %handler_result65 = call double @fAddHandlerDouble(double %handler_result64, double 0x3FA98F7D53D84138), !dbg !844
  tail call void @llvm.dbg.value(metadata double %handler_result65, metadata !732, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !820
  %90 = tail call double @llvm.fabs.f64(double %handler_result65), !dbg !844
  %91 = fmul double %90, 0x3CB0000000000000, !dbg !845
  %handler_result66 = call double @fAddHandlerDouble(double %91, double 1.110000e-17), !dbg !846
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !732, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !820
  call void @llvm.dbg.value(metadata i64 9, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !847
  %92 = fmul double %77, 0.000000e+00, !dbg !846
  %handler_result67 = call double @fAddHandlerDouble(double %92, double 1.100000e-18), !dbg !846
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !267, metadata !DIExpression()), !dbg !847
  %93 = fmul double %77, %handler_result67, !dbg !846
  %handler_result68 = call double @fAddHandlerDouble(double %93, double 5.167000e-16), !dbg !846
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !267, metadata !DIExpression()), !dbg !847
  %94 = fmul double %77, %handler_result68, !dbg !846
  %handler_result69 = call double @fSubHandlerDouble(double %94, double %handler_result67), !dbg !848
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double 0x3D491851EC9BC775), !dbg !846
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !267, metadata !DIExpression()), !dbg !847
  %95 = fmul double %77, %handler_result70, !dbg !846
  %handler_result71 = call double @fSubHandlerDouble(double %95, double %handler_result68), !dbg !848
  %handler_result72 = call double @fAddHandlerDouble(double %handler_result71, double 0x3DCA171F5386423D), !dbg !846
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !267, metadata !DIExpression()), !dbg !847
  %96 = fmul double %77, %handler_result72, !dbg !846
  %handler_result73 = call double @fSubHandlerDouble(double %96, double %handler_result70), !dbg !848
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0x3E44217AF2B8D920), !dbg !846
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !267, metadata !DIExpression()), !dbg !847
  %97 = fmul double %77, %handler_result74, !dbg !846
  %handler_result75 = call double @fSubHandlerDouble(double %97, double %handler_result72), !dbg !848
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result75, double 0x3EB5E2EEF2F3371D), !dbg !846
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !267, metadata !DIExpression()), !dbg !847
  %98 = fmul double %77, %handler_result76, !dbg !846
  %handler_result77 = call double @fSubHandlerDouble(double %98, double %handler_result74), !dbg !848
  %handler_result78 = call double @fAddHandlerDouble(double %handler_result77, double 0x3F1F23E4822735E6), !dbg !846
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !267, metadata !DIExpression()), !dbg !847
  %99 = fmul double %77, %handler_result78, !dbg !846
  %handler_result79 = call double @fSubHandlerDouble(double %99, double %handler_result76), !dbg !848
  %handler_result80 = call double @fAddHandlerDouble(double %handler_result79, double 0x3F79E1F59BCEBE7A), !dbg !846
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !267, metadata !DIExpression()), !dbg !847
  %100 = fmul double %77, %handler_result80, !dbg !846
  %handler_result81 = call double @fSubHandlerDouble(double %100, double %handler_result78), !dbg !848
  %handler_result82 = call double @fAddHandlerDouble(double %handler_result81, double 0x3FC4A5C7C5BFB00C), !dbg !849
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !262, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !263, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !826
  %101 = fmul double %76, %handler_result82, !dbg !849
  %handler_result83 = call double @fSubHandlerDouble(double %101, double %handler_result80), !dbg !850
  %handler_result84 = call double @fAddHandlerDouble(double %handler_result83, double 0x3F910D70935F8B41), !dbg !851
  tail call void @llvm.dbg.value(metadata double %handler_result84, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !820
  %102 = tail call double @llvm.fabs.f64(double %handler_result84), !dbg !851
  %103 = fmul double %102, 0x3CB0000000000000, !dbg !852
  %handler_result85 = call double @fAddHandlerDouble(double %103, double 1.100000e-18), !dbg !853
  tail call void @llvm.dbg.value(metadata double %handler_result85, metadata !733, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !820
  %handler_result86 = call double @fAddHandlerDouble(double %handler_result65, double 1.125000e+00), !dbg !854
  %handler_result87 = call double @fAddHandlerDouble(double %handler_result84, double 6.250000e-01), !dbg !855
  %104 = fmul double %handler_result87, %0, !dbg !855
  %handler_result88 = call double @fAddHandlerDouble(double %handler_result86, double %104), !dbg !856
  store double %handler_result88, ptr %2, align 8, !dbg !856, !tbaa !222
  %105 = fmul double %handler_result85, %0, !dbg !857
  %106 = tail call double @llvm.fabs.f64(double %105), !dbg !858
  %handler_result89 = call double @fAddHandlerDouble(double %handler_result66, double %106), !dbg !859
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !859
  %108 = tail call double @llvm.fabs.f64(double %handler_result88), !dbg !860
  %109 = fmul double %108, 0x3CB0000000000000, !dbg !861
  %handler_result90 = call double @fAddHandlerDouble(double %109, double %handler_result89), !dbg !862
  store double %handler_result90, ptr %107, align 8, !dbg !862, !tbaa !228
  br label %131

110:                                              ; preds = %68
  %111 = tail call double @sqrt(double noundef %0) #7, !dbg !863
  %112 = fmul double %70, %111, !dbg !864
  %113 = fdiv double %112, 3.000000e+00, !dbg !865
  tail call void @llvm.dbg.value(metadata double %113, metadata !734, metadata !DIExpression()), !dbg !866
  %114 = tail call double @exp(double noundef %113) #7, !dbg !867
  tail call void @llvm.dbg.value(metadata double %114, metadata !736, metadata !DIExpression()), !dbg !866
  %115 = fcmp ogt double %113, 0x40862642FEFA39EF, !dbg !868
  br i1 %115, label %116, label %118, !dbg !869

116:                                              ; preds = %110
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !870, !tbaa !222
  %117 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !870
  store double 0x7FF0000000000000, ptr %117, align 8, !dbg !870, !tbaa !228
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 780, i32 noundef 16) #7, !dbg !873
  br label %131, !dbg !873

118:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !875
  call fastcc void @airy_bie(double noundef %0, i32 noundef %1, ptr noundef nonnull %7), !dbg !876
  tail call void @llvm.dbg.value(metadata i32 0, metadata !740, metadata !DIExpression()), !dbg !746
  %119 = load double, ptr %7, align 8, !dbg !877, !tbaa !222
  %120 = fmul double %114, %119, !dbg !878
  store double %120, ptr %2, align 8, !dbg !879, !tbaa !222
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !880
  %122 = load double, ptr %121, align 8, !dbg !880, !tbaa !228
  %123 = fmul double %114, %122, !dbg !881
  %124 = fmul double %113, 1.500000e+00, !dbg !882
  %125 = fmul double %120, 0x3CB0000000000000, !dbg !883
  %126 = fmul double %124, %125, !dbg !884
  %127 = tail call double @llvm.fabs.f64(double %126), !dbg !885
  %handler_result91 = call double @fAddHandlerDouble(double %123, double %127), !dbg !886
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !886
  %129 = tail call double @llvm.fabs.f64(double %120), !dbg !887
  %130 = fmul double %129, 0x3CB0000000000000, !dbg !888
  %handler_result92 = call double @fAddHandlerDouble(double %130, double %handler_result91), !dbg !889
  store double %handler_result92, ptr %128, align 8, !dbg !889, !tbaa !228
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !890
  br label %131

131:                                              ; preds = %118, %116, %71, %33, %9
  %132 = phi i32 [ %30, %9 ], [ 0, %33 ], [ 0, %71 ], [ 16, %116 ], [ 0, %118 ], !dbg !891
  ret i32 %132, !dbg !892
}

declare !dbg !893 i32 @gsl_sf_sin_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @airy_bie(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !dbg !894 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !897, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !898, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !899, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata double 0x4021805A83B66B50, metadata !900, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata double 0xC000C02D41DB35A8, metadata !901, metadata !DIExpression()), !dbg !913
  %4 = fcmp olt double %0, 4.000000e+00, !dbg !914
  %5 = tail call double @sqrt(double noundef %0) #7, !dbg !915
  %6 = fmul double %5, %0, !dbg !915
  %7 = tail call double @sqrt(double noundef %5) #7, !dbg !915
  %8 = and i32 %1, 7, !dbg !916
  %9 = icmp eq i32 %8, 0, !dbg !918
  br i1 %4, label %10, label %50, !dbg !919

10:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double %5, metadata !902, metadata !DIExpression()), !dbg !920
  %11 = fdiv double 0x4021805A83B66B50, %6, !dbg !921
  %handler_result = call double @fAddHandlerDouble(double %11, double 0xC000C02D41DB35A8), !dbg !922
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !905, metadata !DIExpression()), !dbg !920
  tail call void @llvm.dbg.value(metadata double %7, metadata !906, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result, metadata !258, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !924
  %12 = fmul double %handler_result, 2.000000e+00, !dbg !922
  %handler_result1 = call double @fAddHandlerDouble(double %12, double 1.000000e+00), !dbg !925
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !926
  %13 = fmul double %handler_result2, 5.000000e-01, !dbg !926
  call void @llvm.dbg.value(metadata double %13, metadata !264, metadata !DIExpression()), !dbg !924
  %14 = fmul double %13, 2.000000e+00, !dbg !927
  call void @llvm.dbg.value(metadata double %14, metadata !265, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !928
  %15 = select i1 %9, i32 23, i32 14, !dbg !930
  call void @llvm.dbg.value(metadata i32 %15, metadata !266, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i32 %15, metadata !261, metadata !DIExpression()), !dbg !924
  %16 = zext nneg i32 %15 to i64, !dbg !931
  %17 = and i64 %16, 3, !dbg !931
  br label %18, !dbg !931

18:                                               ; preds = %18, %10
  %19 = phi i64 [ %16, %10 ], [ %26, %18 ]
  %20 = phi double [ 0.000000e+00, %10 ], [ %handler_result4, %18 ]
  %21 = phi double [ 0.000000e+00, %10 ], [ %20, %18 ]
  %22 = phi i64 [ 0, %10 ], [ %27, %18 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !261, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %20, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %21, metadata !263, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %20, metadata !267, metadata !DIExpression()), !dbg !932
  %23 = fmul double %14, %20, !dbg !933
  %handler_result3 = call double @fSubHandlerDouble(double %23, double %21), !dbg !934
  %24 = getelementptr inbounds double, ptr @data_bip, i64 %19, !dbg !934
  %25 = load double, ptr %24, align 8, !dbg !934, !tbaa !356
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %25), !dbg !935
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %20, metadata !263, metadata !DIExpression()), !dbg !924
  %26 = add nsw i64 %19, -1, !dbg !935
  call void @llvm.dbg.value(metadata i64 %26, metadata !261, metadata !DIExpression()), !dbg !924
  %27 = add i64 %22, 1, !dbg !931
  %28 = icmp eq i64 %27, %17, !dbg !931
  br i1 %28, label %29, label %18, !dbg !931, !llvm.loop !936

29:                                               ; preds = %29, %18
  %30 = phi i64 [ %46, %29 ], [ %26, %18 ]
  %31 = phi double [ %handler_result12, %29 ], [ %handler_result4, %18 ]
  %32 = phi double [ %handler_result10, %29 ], [ %20, %18 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !261, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %31, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %32, metadata !263, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %31, metadata !267, metadata !DIExpression()), !dbg !932
  %33 = fmul double %14, %31, !dbg !933
  %handler_result5 = call double @fSubHandlerDouble(double %33, double %32), !dbg !934
  %34 = getelementptr inbounds double, ptr @data_bip, i64 %30, !dbg !934
  %35 = load double, ptr %34, align 8, !dbg !934, !tbaa !356
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %35), !dbg !933
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %31, metadata !263, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i64 %30, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !924
  call void @llvm.dbg.value(metadata i64 %30, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %31, metadata !263, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !267, metadata !DIExpression()), !dbg !932
  %36 = fmul double %14, %handler_result6, !dbg !933
  %handler_result7 = call double @fSubHandlerDouble(double %36, double %31), !dbg !934
  %37 = getelementptr double, ptr getelementptr (double, ptr @data_bip, i64 -1), i64 %30, !dbg !934
  %38 = load double, ptr %37, align 8, !dbg !934, !tbaa !356
  %handler_result8 = call double @fAddHandlerDouble(double %handler_result7, double %38), !dbg !933
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !263, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i64 %30, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !924
  call void @llvm.dbg.value(metadata i64 %30, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !263, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !267, metadata !DIExpression()), !dbg !932
  %39 = fmul double %14, %handler_result8, !dbg !933
  %handler_result9 = call double @fSubHandlerDouble(double %39, double %handler_result6), !dbg !934
  %40 = getelementptr double, ptr getelementptr (double, ptr @data_bip, i64 -2), i64 %30, !dbg !934
  %41 = load double, ptr %40, align 8, !dbg !934, !tbaa !356
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result9, double %41), !dbg !935
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !263, metadata !DIExpression()), !dbg !924
  %42 = add nsw i64 %30, -3, !dbg !935
  call void @llvm.dbg.value(metadata i64 %42, metadata !261, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i64 %42, metadata !261, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !263, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !267, metadata !DIExpression()), !dbg !932
  %43 = fmul double %14, %handler_result10, !dbg !933
  %handler_result11 = call double @fSubHandlerDouble(double %43, double %handler_result8), !dbg !934
  %44 = getelementptr inbounds double, ptr @data_bip, i64 %42, !dbg !934
  %45 = load double, ptr %44, align 8, !dbg !934, !tbaa !356
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result11, double %45), !dbg !935
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !262, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !263, metadata !DIExpression()), !dbg !924
  %46 = add nsw i64 %30, -4, !dbg !935
  call void @llvm.dbg.value(metadata i64 %46, metadata !261, metadata !DIExpression()), !dbg !924
  %47 = icmp ugt i64 %42, 1, !dbg !937
  br i1 %47, label %29, label %48, !dbg !931, !llvm.loop !938

48:                                               ; preds = %29
  %49 = fmul double %13, %handler_result12, !dbg !940
  %handler_result13 = call double @fSubHandlerDouble(double %49, double %handler_result10), !dbg !941
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !907, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !920
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !907, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !920
  br label %95, !dbg !941

50:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double %5, metadata !908, metadata !DIExpression()), !dbg !942
  %51 = fdiv double 1.600000e+01, %6, !dbg !943
  %handler_result14 = call double @fAddHandlerDouble(double %51, double -1.000000e+00), !dbg !944
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !910, metadata !DIExpression()), !dbg !942
  tail call void @llvm.dbg.value(metadata double %7, metadata !911, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !258, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !946
  %52 = fmul double %handler_result14, 2.000000e+00, !dbg !944
  %handler_result15 = call double @fAddHandlerDouble(double %52, double 1.000000e+00), !dbg !947
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double -1.000000e+00), !dbg !948
  %53 = fmul double %handler_result16, 5.000000e-01, !dbg !948
  call void @llvm.dbg.value(metadata double %53, metadata !264, metadata !DIExpression()), !dbg !946
  %54 = fmul double %53, 2.000000e+00, !dbg !949
  call void @llvm.dbg.value(metadata double %54, metadata !265, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !950
  %55 = select i1 %9, i32 28, i32 10, !dbg !952
  call void @llvm.dbg.value(metadata i32 %55, metadata !266, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i32 %55, metadata !261, metadata !DIExpression()), !dbg !946
  %56 = zext nneg i32 %55 to i64, !dbg !953
  %57 = and i64 %56, 2, !dbg !953
  %58 = icmp eq i64 %57, 0, !dbg !953
  br i1 %58, label %70, label %59, !dbg !953

59:                                               ; preds = %59, %50
  %60 = phi i64 [ %67, %59 ], [ %56, %50 ]
  %61 = phi double [ %handler_result18, %59 ], [ 0.000000e+00, %50 ]
  %62 = phi double [ %61, %59 ], [ 0.000000e+00, %50 ]
  %63 = phi i64 [ %68, %59 ], [ 0, %50 ]
  call void @llvm.dbg.value(metadata i64 %60, metadata !261, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %61, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %62, metadata !263, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %61, metadata !267, metadata !DIExpression()), !dbg !954
  %64 = fmul double %54, %61, !dbg !955
  %handler_result17 = call double @fSubHandlerDouble(double %64, double %62), !dbg !956
  %65 = getelementptr inbounds double, ptr @data_bip2, i64 %60, !dbg !956
  %66 = load double, ptr %65, align 8, !dbg !956, !tbaa !356
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %66), !dbg !957
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %61, metadata !263, metadata !DIExpression()), !dbg !946
  %67 = add nsw i64 %60, -1, !dbg !957
  call void @llvm.dbg.value(metadata i64 %67, metadata !261, metadata !DIExpression()), !dbg !946
  %68 = add i64 %63, 1, !dbg !953
  %69 = icmp eq i64 %68, %57, !dbg !953
  br i1 %69, label %70, label %59, !dbg !953, !llvm.loop !958

70:                                               ; preds = %59, %50
  %71 = phi i64 [ %56, %50 ], [ %67, %59 ]
  %72 = phi double [ 0.000000e+00, %50 ], [ %handler_result18, %59 ]
  %73 = phi double [ 0.000000e+00, %50 ], [ %61, %59 ]
  br label %74, !dbg !953

74:                                               ; preds = %74, %70
  %75 = phi i64 [ %71, %70 ], [ %91, %74 ]
  %76 = phi double [ %72, %70 ], [ %handler_result26, %74 ]
  %77 = phi double [ %73, %70 ], [ %handler_result24, %74 ]
  call void @llvm.dbg.value(metadata i64 %75, metadata !261, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %76, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %77, metadata !263, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %76, metadata !267, metadata !DIExpression()), !dbg !954
  %78 = fmul double %54, %76, !dbg !955
  %handler_result19 = call double @fSubHandlerDouble(double %78, double %77), !dbg !956
  %79 = getelementptr inbounds double, ptr @data_bip2, i64 %75, !dbg !956
  %80 = load double, ptr %79, align 8, !dbg !956, !tbaa !356
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %80), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %76, metadata !263, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 %75, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !946
  call void @llvm.dbg.value(metadata i64 %75, metadata !261, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %76, metadata !263, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !267, metadata !DIExpression()), !dbg !954
  %81 = fmul double %54, %handler_result20, !dbg !955
  %handler_result21 = call double @fSubHandlerDouble(double %81, double %76), !dbg !956
  %82 = getelementptr double, ptr getelementptr (double, ptr @data_bip2, i64 -1), i64 %75, !dbg !956
  %83 = load double, ptr %82, align 8, !dbg !956, !tbaa !356
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result21, double %83), !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !263, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 %75, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !946
  call void @llvm.dbg.value(metadata i64 %75, metadata !261, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !263, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !267, metadata !DIExpression()), !dbg !954
  %84 = fmul double %54, %handler_result22, !dbg !955
  %handler_result23 = call double @fSubHandlerDouble(double %84, double %handler_result20), !dbg !956
  %85 = getelementptr double, ptr getelementptr (double, ptr @data_bip2, i64 -2), i64 %75, !dbg !956
  %86 = load double, ptr %85, align 8, !dbg !956, !tbaa !356
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double %86), !dbg !957
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !263, metadata !DIExpression()), !dbg !946
  %87 = add nsw i64 %75, -3, !dbg !957
  call void @llvm.dbg.value(metadata i64 %87, metadata !261, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata i64 %87, metadata !261, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !263, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !267, metadata !DIExpression()), !dbg !954
  %88 = fmul double %54, %handler_result24, !dbg !955
  %handler_result25 = call double @fSubHandlerDouble(double %88, double %handler_result22), !dbg !956
  %89 = getelementptr inbounds double, ptr @data_bip2, i64 %87, !dbg !956
  %90 = load double, ptr %89, align 8, !dbg !956, !tbaa !356
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double %90), !dbg !957
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !262, metadata !DIExpression()), !dbg !946
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !263, metadata !DIExpression()), !dbg !946
  %91 = add nsw i64 %75, -4, !dbg !957
  call void @llvm.dbg.value(metadata i64 %91, metadata !261, metadata !DIExpression()), !dbg !946
  %92 = icmp ugt i64 %87, 1, !dbg !959
  br i1 %92, label %74, label %93, !dbg !953, !llvm.loop !960

93:                                               ; preds = %74
  %94 = fmul double %53, %handler_result26, !dbg !962
  %handler_result27 = call double @fSubHandlerDouble(double %94, double %handler_result24)
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !912, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !942
  tail call void @llvm.dbg.value(metadata double %handler_result29, metadata !912, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !942
  br label %95

95:                                               ; preds = %93, %48
  %96 = phi ptr [ @data_bip2, %93 ], [ @data_bip, %48 ]
  %97 = phi double [ %handler_result27, %93 ], [ %handler_result13, %48 ]
  %98 = phi i32 [ %55, %93 ], [ %15, %48 ]
  %99 = load double, ptr %96, align 16, !dbg !963, !tbaa !356
  %100 = fmul double %99, 5.000000e-01, !dbg !964
  %handler_result28 = call double @fAddHandlerDouble(double %97, double %100), !dbg !965
  %101 = tail call double @llvm.fabs.f64(double %handler_result28), !dbg !965
  %102 = fmul double %101, 0x3CB0000000000000, !dbg !966
  %103 = zext nneg i32 %98 to i64, !dbg !967
  %104 = getelementptr inbounds double, ptr %96, i64 %103, !dbg !967
  %105 = load double, ptr %104, align 8, !dbg !967, !tbaa !356
  %106 = tail call double @llvm.fabs.f64(double %105), !dbg !968
  %handler_result29 = call double @fAddHandlerDouble(double %106, double %102), !dbg !915
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result28, double 6.250000e-01), !dbg !915
  %107 = fdiv double %handler_result30, %7, !dbg !915
  store double %107, ptr %2, align 8, !dbg !915, !tbaa !222
  %108 = fdiv double %handler_result29, %7, !dbg !915
  %109 = tail call double @llvm.fabs.f64(double %107), !dbg !915
  %110 = fmul double %109, 0x3CB0000000000000, !dbg !915
  %handler_result31 = call double @fAddHandlerDouble(double %108, double %110), !dbg !915
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !915
  store double %handler_result31, ptr %111, align 8, !dbg !915, !tbaa !228
  ret void, !dbg !969
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Bi_scaled_e(double noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !970 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !997
  call void @llvm.dbg.assign(metadata i1 undef, metadata !975, metadata !DIExpression(), metadata !997, metadata ptr %4, metadata !DIExpression()), !dbg !998
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !999
  call void @llvm.dbg.assign(metadata i1 undef, metadata !978, metadata !DIExpression(), metadata !999, metadata ptr %5, metadata !DIExpression()), !dbg !998
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !979, metadata !DIExpression(), metadata !1000, metadata ptr %6, metadata !DIExpression()), !dbg !998
  tail call void @llvm.dbg.value(metadata double %0, metadata !972, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !973, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !974, metadata !DIExpression()), !dbg !1001
  %7 = fcmp olt double %0, -1.000000e+00, !dbg !1002
  br i1 %7, label %8, label %30, !dbg !1003

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !1004
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !1005
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !1006
  %9 = call fastcc i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !1007, !range !220
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !980, metadata !DIExpression()), !dbg !998
  %10 = load double, ptr %5, align 8, !dbg !1008, !tbaa !222
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1009
  %12 = load double, ptr %11, align 8, !dbg !1009, !tbaa !228
  %13 = call i32 @gsl_sf_sin_err_e(double noundef %10, double noundef %12, ptr noundef nonnull %6) #7, !dbg !1010
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !981, metadata !DIExpression()), !dbg !998
  %14 = load double, ptr %4, align 8, !dbg !1011, !tbaa !222
  %15 = load double, ptr %6, align 8, !dbg !1012, !tbaa !222
  %16 = fmul double %14, %15, !dbg !1013
  store double %16, ptr %2, align 8, !dbg !1014, !tbaa !222
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1015
  %18 = load double, ptr %17, align 8, !dbg !1015, !tbaa !228
  %19 = fmul double %14, %18, !dbg !1016
  %20 = call double @llvm.fabs.f64(double %19), !dbg !1017
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1018
  %22 = load double, ptr %21, align 8, !dbg !1018, !tbaa !228
  %23 = fmul double %15, %22, !dbg !1019
  %24 = call double @llvm.fabs.f64(double %23), !dbg !1020
  %handler_result = call double @fAddHandlerDouble(double %20, double %24), !dbg !1021
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1021
  %26 = call double @llvm.fabs.f64(double %16), !dbg !1022
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !1023
  %handler_result1 = call double @fAddHandlerDouble(double %27, double %handler_result), !dbg !1024
  store double %handler_result1, ptr %25, align 8, !dbg !1024, !tbaa !228
  %28 = icmp eq i32 %9, 0, !dbg !1025
  %29 = select i1 %28, i32 %13, i32 1, !dbg !1025
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !1026
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !1026
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !1026
  br label %124

30:                                               ; preds = %3
  %31 = fcmp olt double %0, 1.000000e+00, !dbg !1027
  br i1 %31, label %32, label %76, !dbg !1028

32:                                               ; preds = %30
  %33 = fmul double %0, %0, !dbg !1029
  %34 = fmul double %33, %0, !dbg !1030
  tail call void @llvm.dbg.value(metadata double %34, metadata !982, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %34, metadata !258, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i32 8, metadata !266, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 8, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !1032
  tail call void @llvm.dbg.value(metadata double poison, metadata !985, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1031
  tail call void @llvm.dbg.value(metadata double poison, metadata !985, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1031
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %34, metadata !258, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !1039
  call void @llvm.dbg.value(metadata i32 7, metadata !266, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i32 7, metadata !261, metadata !DIExpression()), !dbg !1037
  %35 = fmul double %34, 2.000000e+00, !dbg !1041
  %handler_result2 = call double @fAddHandlerDouble(double %35, double 1.000000e+00), !dbg !1042
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double -1.000000e+00), !dbg !1043
  %36 = fmul double %handler_result3, 5.000000e-01, !dbg !1043
  call void @llvm.dbg.value(metadata double %36, metadata !264, metadata !DIExpression()), !dbg !1037
  %37 = fmul double %36, 2.000000e+00, !dbg !1044
  call void @llvm.dbg.value(metadata double %37, metadata !265, metadata !DIExpression()), !dbg !1037
  %handler_result4 = call double @fAddHandlerDouble(double %35, double 1.000000e+00), !dbg !1045
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double -1.000000e+00), !dbg !1046
  %38 = fmul double %handler_result5, 5.000000e-01, !dbg !1046
  call void @llvm.dbg.value(metadata double %38, metadata !264, metadata !DIExpression()), !dbg !1032
  %39 = fmul double %38, 2.000000e+00, !dbg !1047
  call void @llvm.dbg.value(metadata double %39, metadata !265, metadata !DIExpression()), !dbg !1032
  %40 = fmul double %39, 0.000000e+00, !dbg !1048
  %handler_result6 = call double @fAddHandlerDouble(double %40, double 1.800000e-19), !dbg !1048
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !263, metadata !DIExpression()), !dbg !1032
  %41 = fmul double %39, %handler_result6, !dbg !1048
  %handler_result7 = call double @fAddHandlerDouble(double %41, double 2.081000e-16), !dbg !1048
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !263, metadata !DIExpression()), !dbg !1032
  %42 = fmul double %39, %handler_result7, !dbg !1048
  %handler_result8 = call double @fSubHandlerDouble(double %42, double %handler_result6), !dbg !1049
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0x3D489A10BD02D422), !dbg !1048
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !263, metadata !DIExpression()), !dbg !1032
  %43 = fmul double %39, %handler_result9, !dbg !1048
  %handler_result10 = call double @fSubHandlerDouble(double %43, double %handler_result7), !dbg !1049
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3DDD6831AB093FE3), !dbg !1048
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !263, metadata !DIExpression()), !dbg !1032
  %44 = fmul double %39, %handler_result11, !dbg !1048
  %handler_result12 = call double @fSubHandlerDouble(double %44, double %handler_result9), !dbg !1049
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result12, double 0x3E681F881E9A9EB8), !dbg !1048
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !263, metadata !DIExpression()), !dbg !1032
  %45 = fmul double %39, %handler_result13, !dbg !1048
  %handler_result14 = call double @fSubHandlerDouble(double %45, double %handler_result11), !dbg !1049
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result14, double 0x3EE8E0A7D5A866A9), !dbg !1048
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !263, metadata !DIExpression()), !dbg !1032
  %46 = fmul double %39, %handler_result15, !dbg !1048
  %handler_result16 = call double @fSubHandlerDouble(double %46, double %handler_result13), !dbg !1049
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double 0x3F5BFD2B174187A5), !dbg !1048
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !267, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !263, metadata !DIExpression()), !dbg !1032
  %47 = fmul double %39, %handler_result17, !dbg !1048
  %handler_result18 = call double @fSubHandlerDouble(double %47, double %handler_result15), !dbg !1049
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3FBA3EF8872837DE), !dbg !1050
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !262, metadata !DIExpression()), !dbg !1032
  %48 = fmul double %38, %handler_result19, !dbg !1050
  %handler_result20 = call double @fSubHandlerDouble(double %48, double %handler_result17), !dbg !1051
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 0xBF8121B9D268A2B4), !dbg !1052
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !985, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1031
  %49 = tail call double @llvm.fabs.f64(double %handler_result21), !dbg !1052
  %50 = fmul double %49, 0x3CB0000000000000, !dbg !1053
  %handler_result22 = call double @fAddHandlerDouble(double %50, double 1.800000e-19), !dbg !1054
  tail call void @llvm.dbg.value(metadata double %handler_result22, metadata !985, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1031
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !1055
  %51 = fmul double %37, 0.000000e+00, !dbg !1054
  %handler_result23 = call double @fAddHandlerDouble(double %51, double 2.000000e-17), !dbg !1054
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !267, metadata !DIExpression()), !dbg !1055
  %52 = fmul double %37, %handler_result23, !dbg !1054
  %handler_result24 = call double @fAddHandlerDouble(double %52, double 2.411000e-14), !dbg !1054
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !267, metadata !DIExpression()), !dbg !1055
  %53 = fmul double %37, %handler_result24, !dbg !1054
  %handler_result25 = call double @fSubHandlerDouble(double %53, double %handler_result23), !dbg !1056
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3DB223CB3B000986), !dbg !1054
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !267, metadata !DIExpression()), !dbg !1055
  %54 = fmul double %37, %handler_result26, !dbg !1054
  %handler_result27 = call double @fSubHandlerDouble(double %54, double %handler_result24), !dbg !1056
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double 0x3E410197375ECA6C), !dbg !1054
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !267, metadata !DIExpression()), !dbg !1055
  %55 = fmul double %37, %handler_result28, !dbg !1054
  %handler_result29 = call double @fSubHandlerDouble(double %55, double %handler_result26), !dbg !1056
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 0x3EC4BA04D2B6F238), !dbg !1054
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !267, metadata !DIExpression()), !dbg !1055
  %56 = fmul double %37, %handler_result30, !dbg !1054
  %handler_result31 = call double @fSubHandlerDouble(double %56, double %handler_result28), !dbg !1056
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result31, double 0x3F3D25DF0F0797C5), !dbg !1054
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result30, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !267, metadata !DIExpression()), !dbg !1055
  %57 = fmul double %37, %handler_result32, !dbg !1054
  %handler_result33 = call double @fSubHandlerDouble(double %57, double %handler_result30), !dbg !1056
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3FA32179D12FAB23), !dbg !1057
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !262, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !263, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !1037
  %58 = fmul double %36, %handler_result34, !dbg !1057
  %handler_result35 = call double @fSubHandlerDouble(double %58, double %handler_result32), !dbg !1058
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3F870162B87813A5), !dbg !1059
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !986, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1031
  %59 = tail call double @llvm.fabs.f64(double %handler_result36), !dbg !1059
  %60 = fmul double %59, 0x3CB0000000000000, !dbg !1060
  %handler_result37 = call double @fAddHandlerDouble(double %60, double 2.000000e-17), !dbg !1061
  tail call void @llvm.dbg.value(metadata double %handler_result37, metadata !986, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1031
  %handler_result38 = call double @fAddHandlerDouble(double %handler_result21, double 6.250000e-01), !dbg !1062
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result36, double 4.375000e-01), !dbg !1063
  %61 = fmul double %handler_result39, %0, !dbg !1063
  %handler_result40 = call double @fAddHandlerDouble(double %handler_result38, double %61), !dbg !1064
  store double %handler_result40, ptr %2, align 8, !dbg !1064, !tbaa !222
  %62 = fmul double %handler_result37, %0, !dbg !1065
  %63 = tail call double @llvm.fabs.f64(double %62), !dbg !1066
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result22, double %63), !dbg !1067
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1067
  %65 = tail call double @llvm.fabs.f64(double %handler_result40), !dbg !1068
  %66 = fmul double %65, 0x3CB0000000000000, !dbg !1069
  %handler_result42 = call double @fAddHandlerDouble(double %66, double %handler_result41), !dbg !1070
  store double %handler_result42, ptr %64, align 8, !dbg !1070, !tbaa !228
  %67 = fcmp ogt double %0, 0.000000e+00, !dbg !1071
  br i1 %67, label %68, label %124, !dbg !1072

68:                                               ; preds = %32
  %69 = tail call double @sqrt(double noundef %34) #7, !dbg !1073
  %70 = fmul double %69, 0xBFE5555555555555, !dbg !1074
  %71 = tail call double @exp(double noundef %70) #7, !dbg !1075
  tail call void @llvm.dbg.value(metadata double %71, metadata !987, metadata !DIExpression()), !dbg !1076
  %72 = load double, ptr %2, align 8, !dbg !1077, !tbaa !222
  %73 = fmul double %71, %72, !dbg !1077
  store double %73, ptr %2, align 8, !dbg !1077, !tbaa !222
  %74 = load double, ptr %64, align 8, !dbg !1078, !tbaa !228
  %75 = fmul double %71, %74, !dbg !1078
  store double %75, ptr %64, align 8, !dbg !1078, !tbaa !228
  br label %124, !dbg !1079

76:                                               ; preds = %30
  %77 = fcmp ugt double %0, 2.000000e+00, !dbg !1080
  br i1 %77, label %123, label %78, !dbg !1081

78:                                               ; preds = %76
  %79 = fmul double %0, %0, !dbg !1082
  %80 = fmul double %79, %0, !dbg !1083
  tail call void @llvm.dbg.value(metadata double %80, metadata !990, metadata !DIExpression()), !dbg !1084
  tail call void @llvm.dbg.value(metadata double poison, metadata !993, metadata !DIExpression()), !dbg !1084
  %81 = tail call double @sqrt(double noundef %80) #7, !dbg !1085
  %82 = fmul double %81, 0xBFE5555555555555, !dbg !1086
  %83 = tail call double @exp(double noundef %82) #7, !dbg !1087
  tail call void @llvm.dbg.value(metadata double %83, metadata !994, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i32 9, metadata !266, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 9, metadata !261, metadata !DIExpression()), !dbg !1088
  tail call void @llvm.dbg.value(metadata double poison, metadata !993, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 9, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double poison, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !1088
  tail call void @llvm.dbg.value(metadata double poison, metadata !995, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1084
  tail call void @llvm.dbg.value(metadata double poison, metadata !995, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1084
  call void @llvm.dbg.value(metadata !249, metadata !250, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double poison, metadata !258, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i32 %1, metadata !259, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata ptr undef, metadata !260, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i32 %1, metadata !273, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i32 9, metadata !266, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i32 9, metadata !261, metadata !DIExpression()), !dbg !1093
  %84 = fmul double %80, 2.000000e+00, !dbg !1097
  %handler_result43 = call double @fAddHandlerDouble(double %84, double -9.000000e+00), !dbg !1098
  %85 = fdiv double %handler_result43, 7.000000e+00, !dbg !1098
  tail call void @llvm.dbg.value(metadata double %85, metadata !993, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %85, metadata !258, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %85, metadata !258, metadata !DIExpression()), !dbg !1093
  %86 = fmul double %85, 2.000000e+00, !dbg !1099
  %handler_result44 = call double @fAddHandlerDouble(double %86, double 1.000000e+00), !dbg !1100
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double -1.000000e+00), !dbg !1101
  %87 = fmul double %handler_result45, 5.000000e-01, !dbg !1101
  call void @llvm.dbg.value(metadata double %87, metadata !264, metadata !DIExpression()), !dbg !1093
  %88 = fmul double %87, 2.000000e+00, !dbg !1102
  call void @llvm.dbg.value(metadata double %88, metadata !265, metadata !DIExpression()), !dbg !1093
  %handler_result46 = call double @fAddHandlerDouble(double %86, double 1.000000e+00), !dbg !1103
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double -1.000000e+00), !dbg !1104
  %89 = fmul double %handler_result47, 5.000000e-01, !dbg !1104
  call void @llvm.dbg.value(metadata double %89, metadata !264, metadata !DIExpression()), !dbg !1088
  %90 = fmul double %89, 2.000000e+00, !dbg !1105
  call void @llvm.dbg.value(metadata double %90, metadata !265, metadata !DIExpression()), !dbg !1088
  %91 = fmul double %90, 0.000000e+00, !dbg !1106
  %handler_result48 = call double @fAddHandlerDouble(double %91, double 1.110000e-17), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !263, metadata !DIExpression()), !dbg !1088
  %92 = fmul double %90, %handler_result48, !dbg !1106
  %handler_result49 = call double @fAddHandlerDouble(double %92, double 4.496200e-15), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !263, metadata !DIExpression()), !dbg !1088
  %93 = fmul double %90, %handler_result49, !dbg !1106
  %handler_result50 = call double @fSubHandlerDouble(double %93, double %handler_result48), !dbg !1107
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double 0x3D79232729612F79), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !263, metadata !DIExpression()), !dbg !1088
  %94 = fmul double %90, %handler_result51, !dbg !1106
  %handler_result52 = call double @fSubHandlerDouble(double %94, double %handler_result49), !dbg !1107
  %handler_result53 = call double @fAddHandlerDouble(double %handler_result52, double 0x3DF7CBBDB5EAF10A), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !263, metadata !DIExpression()), !dbg !1088
  %95 = fmul double %90, %handler_result53, !dbg !1106
  %handler_result54 = call double @fSubHandlerDouble(double %95, double %handler_result51), !dbg !1107
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double 0x3E7077AAC00260F6), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !263, metadata !DIExpression()), !dbg !1088
  %96 = fmul double %90, %handler_result55, !dbg !1106
  %handler_result56 = call double @fSubHandlerDouble(double %96, double %handler_result53), !dbg !1107
  %handler_result57 = call double @fAddHandlerDouble(double %handler_result56, double 0x3EDF74CFF88B3AF0), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !263, metadata !DIExpression()), !dbg !1088
  %97 = fmul double %90, %handler_result57, !dbg !1106
  %handler_result58 = call double @fSubHandlerDouble(double %97, double %handler_result55), !dbg !1107
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result58, double 0x3F4312C07E6D492C), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %handler_result59, metadata !263, metadata !DIExpression()), !dbg !1088
  %98 = fmul double %90, %handler_result59, !dbg !1106
  %handler_result60 = call double @fSubHandlerDouble(double %98, double %handler_result57), !dbg !1107
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result60, double 0x3F99C249B2C6A9FD), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !262, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !267, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !263, metadata !DIExpression()), !dbg !1088
  %99 = fmul double %90, %handler_result61, !dbg !1106
  %handler_result62 = call double @fSubHandlerDouble(double %99, double %handler_result59), !dbg !1107
  %handler_result63 = call double @fAddHandlerDouble(double %handler_result62, double 0x3FDEA1CAA8BE19EF), !dbg !1108
  call void @llvm.dbg.value(metadata double %handler_result63, metadata !262, metadata !DIExpression()), !dbg !1088
  %100 = fmul double %89, %handler_result63, !dbg !1108
  %handler_result64 = call double @fSubHandlerDouble(double %100, double %handler_result61), !dbg !1109
  %handler_result65 = call double @fAddHandlerDouble(double %handler_result64, double 0x3FA98F7D53D84138), !dbg !1110
  tail call void @llvm.dbg.value(metadata double %handler_result65, metadata !995, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1084
  %101 = tail call double @llvm.fabs.f64(double %handler_result65), !dbg !1110
  %102 = fmul double %101, 0x3CB0000000000000, !dbg !1111
  %handler_result66 = call double @fAddHandlerDouble(double %102, double 1.110000e-17), !dbg !1112
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !995, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1084
  call void @llvm.dbg.value(metadata i64 9, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !267, metadata !DIExpression()), !dbg !1113
  %103 = fmul double %88, 0.000000e+00, !dbg !1112
  %handler_result67 = call double @fAddHandlerDouble(double %103, double 1.100000e-18), !dbg !1112
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 8, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !267, metadata !DIExpression()), !dbg !1113
  %104 = fmul double %88, %handler_result67, !dbg !1112
  %handler_result68 = call double @fAddHandlerDouble(double %104, double 5.167000e-16), !dbg !1112
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 7, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !267, metadata !DIExpression()), !dbg !1113
  %105 = fmul double %88, %handler_result68, !dbg !1112
  %handler_result69 = call double @fSubHandlerDouble(double %105, double %handler_result67), !dbg !1114
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double 0x3D491851EC9BC775), !dbg !1112
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 6, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !267, metadata !DIExpression()), !dbg !1113
  %106 = fmul double %88, %handler_result70, !dbg !1112
  %handler_result71 = call double @fSubHandlerDouble(double %106, double %handler_result68), !dbg !1114
  %handler_result72 = call double @fAddHandlerDouble(double %handler_result71, double 0x3DCA171F5386423D), !dbg !1112
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 5, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result70, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !267, metadata !DIExpression()), !dbg !1113
  %107 = fmul double %88, %handler_result72, !dbg !1112
  %handler_result73 = call double @fSubHandlerDouble(double %107, double %handler_result70), !dbg !1114
  %handler_result74 = call double @fAddHandlerDouble(double %handler_result73, double 0x3E44217AF2B8D920), !dbg !1112
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 4, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !267, metadata !DIExpression()), !dbg !1113
  %108 = fmul double %88, %handler_result74, !dbg !1112
  %handler_result75 = call double @fSubHandlerDouble(double %108, double %handler_result72), !dbg !1114
  %handler_result76 = call double @fAddHandlerDouble(double %handler_result75, double 0x3EB5E2EEF2F3371D), !dbg !1112
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 3, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !267, metadata !DIExpression()), !dbg !1113
  %109 = fmul double %88, %handler_result76, !dbg !1112
  %handler_result77 = call double @fSubHandlerDouble(double %109, double %handler_result74), !dbg !1114
  %handler_result78 = call double @fAddHandlerDouble(double %handler_result77, double 0x3F1F23E4822735E6), !dbg !1112
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 2, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !267, metadata !DIExpression()), !dbg !1113
  %110 = fmul double %88, %handler_result78, !dbg !1112
  %handler_result79 = call double @fSubHandlerDouble(double %110, double %handler_result76), !dbg !1114
  %handler_result80 = call double @fAddHandlerDouble(double %handler_result79, double 0x3F79E1F59BCEBE7A), !dbg !1112
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 1, metadata !261, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !267, metadata !DIExpression()), !dbg !1113
  %111 = fmul double %88, %handler_result80, !dbg !1112
  %handler_result81 = call double @fSubHandlerDouble(double %111, double %handler_result78), !dbg !1114
  %handler_result82 = call double @fAddHandlerDouble(double %handler_result81, double 0x3FC4A5C7C5BFB00C), !dbg !1115
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !262, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !263, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !1093
  %112 = fmul double %87, %handler_result82, !dbg !1115
  %handler_result83 = call double @fSubHandlerDouble(double %112, double %handler_result80), !dbg !1116
  %handler_result84 = call double @fAddHandlerDouble(double %handler_result83, double 0x3F910D70935F8B41), !dbg !1117
  tail call void @llvm.dbg.value(metadata double %handler_result84, metadata !996, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1084
  %113 = tail call double @llvm.fabs.f64(double %handler_result84), !dbg !1117
  %114 = fmul double %113, 0x3CB0000000000000, !dbg !1118
  %handler_result85 = call double @fAddHandlerDouble(double %114, double 1.100000e-18), !dbg !1119
  tail call void @llvm.dbg.value(metadata double %handler_result85, metadata !996, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1084
  %handler_result86 = call double @fAddHandlerDouble(double %handler_result65, double 1.125000e+00), !dbg !1120
  %handler_result87 = call double @fAddHandlerDouble(double %handler_result84, double 6.250000e-01), !dbg !1121
  %115 = fmul double %handler_result87, %0, !dbg !1121
  %handler_result88 = call double @fAddHandlerDouble(double %handler_result86, double %115), !dbg !1122
  %116 = fmul double %83, %handler_result88, !dbg !1122
  store double %116, ptr %2, align 8, !dbg !1123, !tbaa !222
  %117 = fmul double %handler_result85, %0, !dbg !1124
  %118 = tail call double @llvm.fabs.f64(double %117), !dbg !1125
  %handler_result89 = call double @fAddHandlerDouble(double %handler_result66, double %118), !dbg !1126
  %119 = fmul double %83, %handler_result89, !dbg !1126
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1127
  %121 = tail call double @llvm.fabs.f64(double %116), !dbg !1128
  %122 = fmul double %121, 0x3CB0000000000000, !dbg !1129
  %handler_result90 = call double @fAddHandlerDouble(double %122, double %119), !dbg !1130
  store double %handler_result90, ptr %120, align 8, !dbg !1130, !tbaa !228
  br label %124

123:                                              ; preds = %76
  tail call fastcc void @airy_bie(double noundef %0, i32 noundef %1, ptr noundef %2), !dbg !1131
  br label %124, !dbg !1133

124:                                              ; preds = %123, %78, %68, %32, %8
  %125 = phi i32 [ %29, %8 ], [ 0, %78 ], [ 0, %123 ], [ 0, %68 ], [ 0, %32 ], !dbg !1134
  ret i32 %125, !dbg !1135
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Ai(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1136 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1144
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1142, metadata !DIExpression(), metadata !1144, metadata ptr %3, metadata !DIExpression()), !dbg !1145
  tail call void @llvm.dbg.value(metadata double %0, metadata !1140, metadata !DIExpression()), !dbg !1145
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1141, metadata !DIExpression()), !dbg !1145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1146
  %4 = call i32 @gsl_sf_airy_Ai_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1146
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1143, metadata !DIExpression()), !dbg !1145
  %5 = icmp eq i32 %4, 0, !dbg !1147
  br i1 %5, label %7, label %6, !dbg !1146

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 851, i32 noundef %4) #7, !dbg !1149
  br label %7, !dbg !1149

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1146, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1152
  ret double %8, !dbg !1152
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Ai_scaled(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1153 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1157, metadata !DIExpression(), metadata !1159, metadata ptr %3, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata double %0, metadata !1155, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1156, metadata !DIExpression()), !dbg !1160
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1161
  %4 = call i32 @gsl_sf_airy_Ai_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1161
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1158, metadata !DIExpression()), !dbg !1160
  %5 = icmp eq i32 %4, 0, !dbg !1162
  br i1 %5, label %7, label %6, !dbg !1161

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 856, i32 noundef %4) #7, !dbg !1164
  br label %7, !dbg !1164

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1161, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1167
  ret double %8, !dbg !1167
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Bi(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1168 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1172, metadata !DIExpression(), metadata !1174, metadata ptr %3, metadata !DIExpression()), !dbg !1175
  tail call void @llvm.dbg.value(metadata double %0, metadata !1170, metadata !DIExpression()), !dbg !1175
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1171, metadata !DIExpression()), !dbg !1175
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1176
  %4 = call i32 @gsl_sf_airy_Bi_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1176
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1173, metadata !DIExpression()), !dbg !1175
  %5 = icmp eq i32 %4, 0, !dbg !1177
  br i1 %5, label %7, label %6, !dbg !1176

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 861, i32 noundef %4) #7, !dbg !1179
  br label %7, !dbg !1179

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1176, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1182
  ret double %8, !dbg !1182
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Bi_scaled(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1183 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1189
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1187, metadata !DIExpression(), metadata !1189, metadata ptr %3, metadata !DIExpression()), !dbg !1190
  tail call void @llvm.dbg.value(metadata double %0, metadata !1185, metadata !DIExpression()), !dbg !1190
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1186, metadata !DIExpression()), !dbg !1190
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !1191
  %4 = call i32 @gsl_sf_airy_Bi_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1191
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1188, metadata !DIExpression()), !dbg !1190
  %5 = icmp eq i32 %4, 0, !dbg !1192
  br i1 %5, label %7, label %6, !dbg !1191

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 866, i32 noundef %4) #7, !dbg !1194
  br label %7, !dbg !1194

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !1191, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !1197
  ret double %8, !dbg !1197
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!38}
!llvm.module.flags = !{!166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 693, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "airy.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ec1f1dcb10ff8fb7daf2beb0a913311")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 693, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 780, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 851, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 35)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 856, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 42)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 861, type: !19, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 866, type: !24, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 265, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 22)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "am21_data", scope: !38, file: !2, line: 65, type: !163, isLocal: true, isDefinition: true)
!38 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !79, globals: !81, splitDebugInlining: false, nameTableKind: None)
!39 = !{!40}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !41, line: 39, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!44 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!45 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!46 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!47 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!48 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!49 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!50 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!51 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!52 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!53 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!54 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!55 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!56 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!57 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!58 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!59 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!60 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!61 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!62 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!63 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!64 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!65 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!66 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!67 = !DIEnumerator(name: "GSL_ESING", value: 21)
!68 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!69 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!70 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!71 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!72 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!73 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!74 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!75 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!76 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!77 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!78 = !DIEnumerator(name: "GSL_EOF", value: 32)
!79 = !{!80}
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !{!0, !7, !12, !17, !22, !27, !29, !31, !82, !36, !95, !97, !102, !104, !109, !111, !116, !118, !121, !123, !128, !130, !132, !134, !136, !138, !140, !142, !145, !147, !149, !151, !156, !158}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "am21_cs", scope: !38, file: !2, line: 104, type: !84, isLocal: true, isDefinition: true)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !85, line: 29, baseType: !86)
!85 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !85, line: 22, size: 320, elements: !87)
!87 = !{!88, !91, !92, !93, !94}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !86, file: !85, line: 23, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !86, file: !85, line: 24, baseType: !42, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !86, file: !85, line: 25, baseType: !90, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !86, file: !85, line: 26, baseType: !90, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !86, file: !85, line: 27, baseType: !42, size: 32, offset: 256)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "ath1_cs", scope: !38, file: !2, line: 149, type: !84, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "ath1_data", scope: !38, file: !2, line: 111, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2304, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 36)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "am22_cs", scope: !38, file: !2, line: 191, type: !84, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "am22_data", scope: !38, file: !2, line: 156, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2112, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 33)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "ath2_cs", scope: !38, file: !2, line: 232, type: !84, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "ath2_data", scope: !38, file: !2, line: 198, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2048, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 32)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "aif_cs", scope: !38, file: !2, line: 309, type: !84, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "ai_data_f", scope: !38, file: !2, line: 298, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 576, elements: !15)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "aig_cs", scope: !38, file: !2, line: 326, type: !84, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "ai_data_g", scope: !38, file: !2, line: 316, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 512, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 8)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "aip_cs", scope: !38, file: !2, line: 518, type: !84, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "data_aip", scope: !38, file: !2, line: 444, type: !99, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "bif_cs", scope: !38, file: !2, line: 360, type: !84, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "data_bif", scope: !38, file: !2, line: 349, type: !120, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "big_cs", scope: !38, file: !2, line: 377, type: !84, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "data_big", scope: !38, file: !2, line: 367, type: !125, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "bif2_cs", scope: !38, file: !2, line: 400, type: !84, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "data_bif2", scope: !38, file: !2, line: 388, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 640, elements: !5)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "big2_cs", scope: !38, file: !2, line: 419, type: !84, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "data_big2", scope: !38, file: !2, line: 407, type: !144, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "bip_cs", scope: !38, file: !2, line: 567, type: !84, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "data_bip", scope: !38, file: !2, line: 541, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1536, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 24)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "bip2_cs", scope: !38, file: !2, line: 605, type: !84, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "data_bip2", scope: !38, file: !2, line: 574, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1856, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 29)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2368, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 37)
!166 = !{i32 7, !"Dwarf Version", i32 5}
!167 = !{i32 2, !"Debug Info Version", i32 3}
!168 = !{i32 1, !"wchar_size", i32 4}
!169 = !{i32 8, !"PIC Level", i32 2}
!170 = !{i32 7, !"PIE Level", i32 2}
!171 = !{i32 7, !"uwtable", i32 2}
!172 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!173 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!174 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_e", scope: !2, file: !2, line: 659, type: !175, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !188)
!175 = !DISubroutineType(types: !176)
!176 = !{!42, !177, !178, !181}
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !180, line: 50, baseType: !80)
!180 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !183, line: 41, baseType: !184)
!183 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !183, line: 37, size: 128, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !184, file: !183, line: 38, baseType: !90, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !184, file: !183, line: 39, baseType: !90, size: 64, offset: 64)
!188 = !{!189, !190, !191, !192, !195, !196, !197, !198, !199, !202, !203, !204, !206, !207, !208}
!189 = !DILocalVariable(name: "x", arg: 1, scope: !174, file: !2, line: 659, type: !177)
!190 = !DILocalVariable(name: "mode", arg: 2, scope: !174, file: !2, line: 659, type: !178)
!191 = !DILocalVariable(name: "result", arg: 3, scope: !174, file: !2, line: 659, type: !181)
!192 = !DILocalVariable(name: "mod", scope: !193, file: !2, line: 664, type: !182)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 663, column: 16)
!194 = distinct !DILexicalBlock(scope: !174, file: !2, line: 663, column: 6)
!195 = !DILocalVariable(name: "theta", scope: !193, file: !2, line: 665, type: !182)
!196 = !DILocalVariable(name: "cos_result", scope: !193, file: !2, line: 666, type: !182)
!197 = !DILocalVariable(name: "stat_mp", scope: !193, file: !2, line: 667, type: !42)
!198 = !DILocalVariable(name: "stat_cos", scope: !193, file: !2, line: 668, type: !42)
!199 = !DILocalVariable(name: "z", scope: !200, file: !2, line: 675, type: !177)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 674, column: 21)
!201 = distinct !DILexicalBlock(scope: !194, file: !2, line: 674, column: 11)
!202 = !DILocalVariable(name: "result_c0", scope: !200, file: !2, line: 676, type: !182)
!203 = !DILocalVariable(name: "result_c1", scope: !200, file: !2, line: 677, type: !182)
!204 = !DILocalVariable(name: "x32", scope: !205, file: !2, line: 686, type: !90)
!205 = distinct !DILexicalBlock(scope: !201, file: !2, line: 685, column: 8)
!206 = !DILocalVariable(name: "s", scope: !205, file: !2, line: 687, type: !90)
!207 = !DILocalVariable(name: "result_aie", scope: !205, file: !2, line: 688, type: !182)
!208 = !DILocalVariable(name: "stat_aie", scope: !205, file: !2, line: 689, type: !42)
!209 = distinct !DIAssignID()
!210 = !DILocation(line: 0, scope: !193)
!211 = distinct !DIAssignID()
!212 = distinct !DIAssignID()
!213 = !DILocation(line: 0, scope: !174)
!214 = !DILocation(line: 663, column: 8, scope: !194)
!215 = !DILocation(line: 663, column: 6, scope: !174)
!216 = !DILocation(line: 664, column: 5, scope: !193)
!217 = !DILocation(line: 665, column: 5, scope: !193)
!218 = !DILocation(line: 666, column: 5, scope: !193)
!219 = !DILocation(line: 667, column: 20, scope: !193)
!220 = !{i32 0, i32 2}
!221 = !DILocation(line: 668, column: 43, scope: !193)
!222 = !{!223, !224, i64 0}
!223 = !{!"gsl_sf_result_struct", !224, i64 0, !224, i64 8}
!224 = !{!"double", !225, i64 0}
!225 = !{!"omnipotent char", !226, i64 0}
!226 = !{!"Simple C/C++ TBAA"}
!227 = !DILocation(line: 668, column: 54, scope: !193)
!228 = !{!223, !224, i64 8}
!229 = !DILocation(line: 668, column: 20, scope: !193)
!230 = !DILocation(line: 669, column: 24, scope: !193)
!231 = !DILocation(line: 669, column: 41, scope: !193)
!232 = !DILocation(line: 669, column: 28, scope: !193)
!233 = !DILocation(line: 669, column: 18, scope: !193)
!234 = !DILocation(line: 670, column: 46, scope: !193)
!235 = !DILocation(line: 670, column: 33, scope: !193)
!236 = !DILocation(line: 670, column: 20, scope: !193)
!237 = !DILocation(line: 670, column: 79, scope: !193)
!238 = !DILocation(line: 670, column: 73, scope: !193)
!239 = !DILocation(line: 670, column: 53, scope: !193)
!240 = !DILocation(line: 670, column: 13, scope: !193)
!241 = !DILocation(line: 671, column: 38, scope: !193)
!242 = !DILocation(line: 671, column: 36, scope: !193)
!243 = !DILocation(line: 671, column: 17, scope: !193)
!244 = !DILocation(line: 672, column: 12, scope: !193)
!245 = !DILocation(line: 673, column: 3, scope: !194)
!246 = !DILocation(line: 674, column: 13, scope: !201)
!247 = !DILocation(line: 674, column: 11, scope: !194)
!248 = !DILocation(line: 0, scope: !200)
!249 = !{}
!250 = !DILocalVariable(name: "cs", arg: 1, scope: !251, file: !252, line: 2, type: !255)
!251 = distinct !DISubprogram(name: "cheb_eval_mode_e", scope: !252, file: !252, line: 2, type: !253, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !257)
!252 = !DIFile(filename: "./cheb_eval_mode.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "1b36305c73b17885740c92e41c9327b0")
!253 = !DISubroutineType(types: !254)
!254 = !{!42, !255, !177, !179, !181}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!257 = !{!250, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267}
!258 = !DILocalVariable(name: "x", arg: 2, scope: !251, file: !252, line: 3, type: !177)
!259 = !DILocalVariable(name: "mode", arg: 3, scope: !251, file: !252, line: 4, type: !179)
!260 = !DILocalVariable(name: "result", arg: 4, scope: !251, file: !252, line: 5, type: !181)
!261 = !DILocalVariable(name: "j", scope: !251, file: !252, line: 7, type: !42)
!262 = !DILocalVariable(name: "d", scope: !251, file: !252, line: 8, type: !90)
!263 = !DILocalVariable(name: "dd", scope: !251, file: !252, line: 9, type: !90)
!264 = !DILocalVariable(name: "y", scope: !251, file: !252, line: 11, type: !90)
!265 = !DILocalVariable(name: "y2", scope: !251, file: !252, line: 12, type: !90)
!266 = !DILocalVariable(name: "eval_order", scope: !251, file: !252, line: 14, type: !42)
!267 = !DILocalVariable(name: "temp", scope: !268, file: !252, line: 22, type: !90)
!268 = distinct !DILexicalBlock(scope: !269, file: !252, line: 21, column: 34)
!269 = distinct !DILexicalBlock(scope: !270, file: !252, line: 21, column: 3)
!270 = distinct !DILexicalBlock(scope: !251, file: !252, line: 21, column: 3)
!271 = !DILocation(line: 0, scope: !251, inlinedAt: !272)
!272 = distinct !DILocation(line: 678, column: 5, scope: !200)
!273 = !DILocalVariable(name: "mt", arg: 1, scope: !274, file: !180, line: 74, type: !179)
!274 = distinct !DISubprogram(name: "GSL_MODE_PREC", scope: !180, file: !180, line: 74, type: !275, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !277)
!275 = !DISubroutineType(types: !276)
!276 = !{!80, !179}
!277 = !{!273}
!278 = !DILocation(line: 0, scope: !274, inlinedAt: !279)
!279 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !272)
!280 = distinct !DILexicalBlock(scope: !251, file: !252, line: 16, column: 6)
!281 = !DILocation(line: 0, scope: !268, inlinedAt: !272)
!282 = !DILocation(line: 0, scope: !251, inlinedAt: !283)
!283 = distinct !DILocation(line: 679, column: 5, scope: !200)
!284 = !DILocation(line: 0, scope: !274, inlinedAt: !285)
!285 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !283)
!286 = !DILocation(line: 675, column: 23, scope: !200)
!287 = !DILocation(line: 675, column: 25, scope: !200)
!288 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !272)
!289 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !283)
!290 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !283)
!291 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !283)
!292 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !272)
!293 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !272)
!294 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !272)
!295 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !272)
!296 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !272)
!297 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !272)
!298 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !272)
!299 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !272)
!300 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !272)
!301 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !283)
!302 = !DILocation(line: 0, scope: !268, inlinedAt: !283)
!303 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !283)
!304 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !283)
!305 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !283)
!306 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !283)
!307 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !283)
!308 = !DILocation(line: 680, column: 53, scope: !200)
!309 = !DILocation(line: 680, column: 46, scope: !200)
!310 = !DILocation(line: 680, column: 26, scope: !200)
!311 = !DILocation(line: 680, column: 18, scope: !200)
!312 = !DILocation(line: 681, column: 42, scope: !200)
!313 = !DILocation(line: 681, column: 36, scope: !200)
!314 = !DILocation(line: 681, column: 13, scope: !200)
!315 = !DILocation(line: 682, column: 38, scope: !200)
!316 = !DILocation(line: 682, column: 36, scope: !200)
!317 = !DILocation(line: 682, column: 17, scope: !200)
!318 = !DILocation(line: 686, column: 22, scope: !205)
!319 = !DILocation(line: 686, column: 20, scope: !205)
!320 = !DILocation(line: 0, scope: !205)
!321 = !DILocation(line: 687, column: 26, scope: !205)
!322 = !DILocation(line: 687, column: 30, scope: !205)
!323 = !DILocation(line: 687, column: 18, scope: !205)
!324 = !DILocalVariable(name: "x", arg: 1, scope: !325, file: !2, line: 615, type: !177)
!325 = distinct !DISubprogram(name: "airy_aie", scope: !2, file: !2, line: 615, type: !326, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!42, !177, !179, !181}
!328 = !{!324, !329, !330, !331, !332, !333, !334}
!329 = !DILocalVariable(name: "mode", arg: 2, scope: !325, file: !2, line: 615, type: !179)
!330 = !DILocalVariable(name: "result", arg: 3, scope: !325, file: !2, line: 615, type: !181)
!331 = !DILocalVariable(name: "sqx", scope: !325, file: !2, line: 617, type: !90)
!332 = !DILocalVariable(name: "z", scope: !325, file: !2, line: 618, type: !90)
!333 = !DILocalVariable(name: "y", scope: !325, file: !2, line: 619, type: !90)
!334 = !DILocalVariable(name: "result_c", scope: !325, file: !2, line: 620, type: !182)
!335 = !DILocation(line: 0, scope: !325, inlinedAt: !336)
!336 = distinct !DILocation(line: 689, column: 20, scope: !205)
!337 = !DILocation(line: 617, column: 16, scope: !325, inlinedAt: !336)
!338 = !DILocation(line: 618, column: 22, scope: !325, inlinedAt: !336)
!339 = !DILocation(line: 618, column: 19, scope: !325, inlinedAt: !336)
!340 = !DILocation(line: 619, column: 16, scope: !325, inlinedAt: !336)
!341 = !DILocation(line: 0, scope: !251, inlinedAt: !342)
!342 = distinct !DILocation(line: 621, column: 3, scope: !325, inlinedAt: !336)
!343 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !342)
!344 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !342)
!345 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !342)
!346 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !342)
!347 = !DILocation(line: 0, scope: !274, inlinedAt: !348)
!348 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !342)
!349 = !DILocation(line: 75, column: 15, scope: !274, inlinedAt: !348)
!350 = !DILocation(line: 16, column: 26, scope: !280, inlinedAt: !342)
!351 = !DILocation(line: 0, scope: !280, inlinedAt: !342)
!352 = !DILocation(line: 21, column: 3, scope: !270, inlinedAt: !342)
!353 = !DILocation(line: 0, scope: !268, inlinedAt: !342)
!354 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !342)
!355 = !DILocation(line: 23, column: 21, scope: !268, inlinedAt: !342)
!356 = !{!224, !224, i64 0}
!357 = !DILocation(line: 21, column: 30, scope: !269, inlinedAt: !342)
!358 = distinct !{!358, !359}
!359 = !{!"llvm.loop.unroll.disable"}
!360 = !DILocation(line: 21, column: 24, scope: !269, inlinedAt: !342)
!361 = distinct !{!361, !352, !362, !363}
!362 = !DILocation(line: 25, column: 3, scope: !270, inlinedAt: !342)
!363 = !{!"llvm.loop.mustprogress"}
!364 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !342)
!365 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !342)
!366 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !342)
!367 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !342)
!368 = !DILocation(line: 28, column: 60, scope: !251, inlinedAt: !342)
!369 = !DILocation(line: 28, column: 55, scope: !251, inlinedAt: !342)
!370 = !DILocation(line: 622, column: 26, scope: !325, inlinedAt: !336)
!371 = !DILocation(line: 622, column: 41, scope: !325, inlinedAt: !336)
!372 = !DILocation(line: 623, column: 29, scope: !325, inlinedAt: !336)
!373 = !DILocation(line: 623, column: 52, scope: !325, inlinedAt: !336)
!374 = !DILocation(line: 623, column: 50, scope: !325, inlinedAt: !336)
!375 = !DILocation(line: 690, column: 35, scope: !205)
!376 = !DILocation(line: 690, column: 18, scope: !205)
!377 = !DILocation(line: 691, column: 35, scope: !205)
!378 = !DILocation(line: 691, column: 53, scope: !205)
!379 = !DILocation(line: 691, column: 59, scope: !205)
!380 = !DILocation(line: 691, column: 13, scope: !205)
!381 = !DILocation(line: 692, column: 38, scope: !205)
!382 = !DILocation(line: 692, column: 36, scope: !205)
!383 = !DILocation(line: 692, column: 17, scope: !205)
!384 = !DILocation(line: 693, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !205, file: !2, line: 693, column: 5)
!386 = !DILocation(line: 693, column: 5, scope: !205)
!387 = !DILocation(line: 693, column: 5, scope: !388)
!388 = distinct !DILexicalBlock(scope: !385, file: !2, line: 693, column: 5)
!389 = !DILocation(line: 0, scope: !194)
!390 = !DILocation(line: 696, column: 1, scope: !174)
!391 = distinct !DISubprogram(name: "airy_mod_phase", scope: !2, file: !2, line: 243, type: !392, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{!42, !177, !179, !181, !181}
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !407}
!395 = !DILocalVariable(name: "x", arg: 1, scope: !391, file: !2, line: 243, type: !177)
!396 = !DILocalVariable(name: "mode", arg: 2, scope: !391, file: !2, line: 243, type: !179)
!397 = !DILocalVariable(name: "mod", arg: 3, scope: !391, file: !2, line: 243, type: !181)
!398 = !DILocalVariable(name: "phase", arg: 4, scope: !391, file: !2, line: 243, type: !181)
!399 = !DILocalVariable(name: "result_m", scope: !391, file: !2, line: 245, type: !182)
!400 = !DILocalVariable(name: "result_p", scope: !391, file: !2, line: 246, type: !182)
!401 = !DILocalVariable(name: "m", scope: !391, file: !2, line: 247, type: !90)
!402 = !DILocalVariable(name: "p", scope: !391, file: !2, line: 247, type: !90)
!403 = !DILocalVariable(name: "sqx", scope: !391, file: !2, line: 248, type: !90)
!404 = !DILocalVariable(name: "z", scope: !405, file: !2, line: 251, type: !90)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 250, column: 16)
!406 = distinct !DILexicalBlock(scope: !391, file: !2, line: 250, column: 6)
!407 = !DILocalVariable(name: "z", scope: !408, file: !2, line: 256, type: !90)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 255, column: 22)
!409 = distinct !DILexicalBlock(scope: !406, file: !2, line: 255, column: 11)
!410 = !DILocation(line: 0, scope: !391)
!411 = !DILocation(line: 250, column: 8, scope: !406)
!412 = !DILocation(line: 250, column: 6, scope: !391)
!413 = !DILocation(line: 251, column: 23, scope: !405)
!414 = !DILocation(line: 251, column: 25, scope: !405)
!415 = !DILocation(line: 251, column: 20, scope: !405)
!416 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !417)
!417 = distinct !DILocation(line: 252, column: 5, scope: !405)
!418 = !DILocation(line: 0, scope: !405)
!419 = !DILocation(line: 0, scope: !251, inlinedAt: !417)
!420 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !417)
!421 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !417)
!422 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !417)
!423 = !DILocation(line: 0, scope: !274, inlinedAt: !424)
!424 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !417)
!425 = !DILocation(line: 75, column: 15, scope: !274, inlinedAt: !424)
!426 = !DILocation(line: 16, column: 26, scope: !280, inlinedAt: !417)
!427 = !DILocation(line: 0, scope: !280, inlinedAt: !417)
!428 = !DILocation(line: 21, column: 3, scope: !270, inlinedAt: !417)
!429 = !DILocation(line: 0, scope: !268, inlinedAt: !417)
!430 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !417)
!431 = !DILocation(line: 23, column: 21, scope: !268, inlinedAt: !417)
!432 = !DILocation(line: 21, column: 30, scope: !269, inlinedAt: !417)
!433 = !DILocation(line: 21, column: 24, scope: !269, inlinedAt: !417)
!434 = distinct !{!434, !428, !435, !363}
!435 = !DILocation(line: 25, column: 3, scope: !270, inlinedAt: !417)
!436 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !417)
!437 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !417)
!438 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !417)
!439 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !417)
!440 = !DILocation(line: 28, column: 60, scope: !251, inlinedAt: !417)
!441 = !DILocation(line: 28, column: 55, scope: !251, inlinedAt: !417)
!442 = !DILocation(line: 11, column: 21, scope: !251, inlinedAt: !443)
!443 = distinct !DILocation(line: 253, column: 5, scope: !405)
!444 = !DILocation(line: 0, scope: !251, inlinedAt: !443)
!445 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !443)
!446 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !443)
!447 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !443)
!448 = !DILocation(line: 0, scope: !274, inlinedAt: !449)
!449 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !443)
!450 = !DILocation(line: 0, scope: !280, inlinedAt: !443)
!451 = !DILocation(line: 21, column: 3, scope: !270, inlinedAt: !443)
!452 = !DILocation(line: 0, scope: !268, inlinedAt: !443)
!453 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !443)
!454 = !DILocation(line: 23, column: 21, scope: !268, inlinedAt: !443)
!455 = !DILocation(line: 21, column: 30, scope: !269, inlinedAt: !443)
!456 = distinct !{!456, !359}
!457 = !DILocation(line: 21, column: 24, scope: !269, inlinedAt: !443)
!458 = distinct !{!458, !451, !459, !363}
!459 = !DILocation(line: 25, column: 3, scope: !270, inlinedAt: !443)
!460 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !443)
!461 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !443)
!462 = !DILocation(line: 254, column: 3, scope: !405)
!463 = !DILocation(line: 255, column: 13, scope: !409)
!464 = !DILocation(line: 255, column: 11, scope: !406)
!465 = !DILocation(line: 256, column: 24, scope: !408)
!466 = !DILocation(line: 256, column: 26, scope: !408)
!467 = !DILocation(line: 256, column: 21, scope: !408)
!468 = !DILocation(line: 256, column: 36, scope: !408)
!469 = !DILocation(line: 0, scope: !408)
!470 = !DILocation(line: 0, scope: !251, inlinedAt: !471)
!471 = distinct !DILocation(line: 257, column: 5, scope: !408)
!472 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !471)
!473 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !471)
!474 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !471)
!475 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !471)
!476 = !DILocation(line: 0, scope: !274, inlinedAt: !477)
!477 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !471)
!478 = !DILocation(line: 75, column: 15, scope: !274, inlinedAt: !477)
!479 = !DILocation(line: 16, column: 26, scope: !280, inlinedAt: !471)
!480 = !DILocation(line: 0, scope: !280, inlinedAt: !471)
!481 = !DILocation(line: 21, column: 3, scope: !270, inlinedAt: !471)
!482 = !DILocation(line: 0, scope: !268, inlinedAt: !471)
!483 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !471)
!484 = !DILocation(line: 23, column: 21, scope: !268, inlinedAt: !471)
!485 = !DILocation(line: 21, column: 30, scope: !269, inlinedAt: !471)
!486 = !DILocation(line: 21, column: 24, scope: !269, inlinedAt: !471)
!487 = distinct !{!487, !481, !488, !363}
!488 = !DILocation(line: 25, column: 3, scope: !270, inlinedAt: !471)
!489 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !471)
!490 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !471)
!491 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !471)
!492 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !471)
!493 = !DILocation(line: 28, column: 60, scope: !251, inlinedAt: !471)
!494 = !DILocation(line: 28, column: 55, scope: !251, inlinedAt: !471)
!495 = !DILocation(line: 11, column: 21, scope: !251, inlinedAt: !496)
!496 = distinct !DILocation(line: 258, column: 5, scope: !408)
!497 = !DILocation(line: 0, scope: !251, inlinedAt: !496)
!498 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !496)
!499 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !496)
!500 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !496)
!501 = !DILocation(line: 0, scope: !274, inlinedAt: !502)
!502 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !496)
!503 = !DILocation(line: 0, scope: !280, inlinedAt: !496)
!504 = !DILocation(line: 21, column: 3, scope: !270, inlinedAt: !496)
!505 = !DILocation(line: 0, scope: !268, inlinedAt: !496)
!506 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !496)
!507 = !DILocation(line: 23, column: 21, scope: !268, inlinedAt: !496)
!508 = !DILocation(line: 21, column: 30, scope: !269, inlinedAt: !496)
!509 = distinct !{!509, !359}
!510 = !DILocation(line: 21, column: 24, scope: !269, inlinedAt: !496)
!511 = distinct !{!511, !504, !512, !363}
!512 = !DILocation(line: 25, column: 3, scope: !270, inlinedAt: !496)
!513 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !496)
!514 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !496)
!515 = !DILocation(line: 262, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !409, file: !2, line: 260, column: 8)
!517 = !DILocation(line: 264, column: 16, scope: !516)
!518 = !DILocation(line: 265, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !516, file: !2, line: 265, column: 5)
!520 = !DILocation(line: 28, column: 15, scope: !251, inlinedAt: !521)
!521 = !DILocation(line: 0, scope: !406)
!522 = !DILocation(line: 27, column: 15, scope: !251, inlinedAt: !521)
!523 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !521)
!524 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !521)
!525 = !DILocation(line: 28, column: 60, scope: !251, inlinedAt: !521)
!526 = !DILocation(line: 28, column: 55, scope: !251, inlinedAt: !521)
!527 = !DILocation(line: 268, column: 15, scope: !391)
!528 = !DILocation(line: 269, column: 15, scope: !391)
!529 = !DILocation(line: 271, column: 14, scope: !391)
!530 = !DILocation(line: 271, column: 9, scope: !391)
!531 = !DILocation(line: 273, column: 22, scope: !391)
!532 = !DILocation(line: 273, column: 16, scope: !391)
!533 = !DILocation(line: 273, column: 14, scope: !391)
!534 = !DILocation(line: 274, column: 15, scope: !391)
!535 = !DILocation(line: 274, column: 68, scope: !391)
!536 = !DILocation(line: 274, column: 51, scope: !391)
!537 = !DILocation(line: 274, column: 30, scope: !391)
!538 = !DILocation(line: 274, column: 8, scope: !391)
!539 = !DILocation(line: 274, column: 13, scope: !391)
!540 = !DILocation(line: 275, column: 26, scope: !391)
!541 = !DILocation(line: 275, column: 31, scope: !391)
!542 = !DILocation(line: 275, column: 14, scope: !391)
!543 = !DILocation(line: 276, column: 16, scope: !391)
!544 = !DILocation(line: 276, column: 71, scope: !391)
!545 = !DILocation(line: 276, column: 54, scope: !391)
!546 = !DILocation(line: 276, column: 33, scope: !391)
!547 = !DILocation(line: 276, column: 10, scope: !391)
!548 = !DILocation(line: 276, column: 14, scope: !391)
!549 = !DILocation(line: 278, column: 3, scope: !391)
!550 = !DILocation(line: 279, column: 1, scope: !391)
!551 = !DISubprogram(name: "gsl_sf_cos_err_e", scope: !552, file: !552, line: 126, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!553 = !DISubroutineType(types: !554)
!554 = !{!42, !177, !177, !181}
!555 = !DISubprogram(name: "sqrt", scope: !556, file: !556, line: 143, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!557 = !DISubroutineType(types: !558)
!558 = !{!90, !90}
!559 = !DISubprogram(name: "exp", scope: !556, file: !556, line: 95, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DISubprogram(name: "gsl_error", scope: !41, file: !41, line: 77, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563, !563, !42, !42}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!565 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_scaled_e", scope: !2, file: !2, line: 700, type: !326, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !566)
!566 = !{!567, !568, !569, !570, !573, !574, !575, !576, !577, !580, !581, !582}
!567 = !DILocalVariable(name: "x", arg: 1, scope: !565, file: !2, line: 700, type: !177)
!568 = !DILocalVariable(name: "mode", arg: 2, scope: !565, file: !2, line: 700, type: !179)
!569 = !DILocalVariable(name: "result", arg: 3, scope: !565, file: !2, line: 700, type: !181)
!570 = !DILocalVariable(name: "mod", scope: !571, file: !2, line: 705, type: !182)
!571 = distinct !DILexicalBlock(scope: !572, file: !2, line: 704, column: 16)
!572 = distinct !DILexicalBlock(scope: !565, file: !2, line: 704, column: 6)
!573 = !DILocalVariable(name: "theta", scope: !571, file: !2, line: 706, type: !182)
!574 = !DILocalVariable(name: "cos_result", scope: !571, file: !2, line: 707, type: !182)
!575 = !DILocalVariable(name: "stat_mp", scope: !571, file: !2, line: 708, type: !42)
!576 = !DILocalVariable(name: "stat_cos", scope: !571, file: !2, line: 709, type: !42)
!577 = !DILocalVariable(name: "z", scope: !578, file: !2, line: 716, type: !177)
!578 = distinct !DILexicalBlock(scope: !579, file: !2, line: 715, column: 21)
!579 = distinct !DILexicalBlock(scope: !572, file: !2, line: 715, column: 11)
!580 = !DILocalVariable(name: "result_c0", scope: !578, file: !2, line: 717, type: !182)
!581 = !DILocalVariable(name: "result_c1", scope: !578, file: !2, line: 718, type: !182)
!582 = !DILocalVariable(name: "scale", scope: !583, file: !2, line: 726, type: !177)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 725, column: 17)
!584 = distinct !DILexicalBlock(scope: !578, file: !2, line: 725, column: 8)
!585 = distinct !DIAssignID()
!586 = !DILocation(line: 0, scope: !571)
!587 = distinct !DIAssignID()
!588 = distinct !DIAssignID()
!589 = !DILocation(line: 0, scope: !565)
!590 = !DILocation(line: 704, column: 8, scope: !572)
!591 = !DILocation(line: 704, column: 6, scope: !565)
!592 = !DILocation(line: 705, column: 5, scope: !571)
!593 = !DILocation(line: 706, column: 5, scope: !571)
!594 = !DILocation(line: 707, column: 5, scope: !571)
!595 = !DILocation(line: 708, column: 20, scope: !571)
!596 = !DILocation(line: 709, column: 43, scope: !571)
!597 = !DILocation(line: 709, column: 54, scope: !571)
!598 = !DILocation(line: 709, column: 20, scope: !571)
!599 = !DILocation(line: 710, column: 24, scope: !571)
!600 = !DILocation(line: 710, column: 41, scope: !571)
!601 = !DILocation(line: 710, column: 28, scope: !571)
!602 = !DILocation(line: 710, column: 18, scope: !571)
!603 = !DILocation(line: 711, column: 46, scope: !571)
!604 = !DILocation(line: 711, column: 33, scope: !571)
!605 = !DILocation(line: 711, column: 20, scope: !571)
!606 = !DILocation(line: 711, column: 79, scope: !571)
!607 = !DILocation(line: 711, column: 73, scope: !571)
!608 = !DILocation(line: 711, column: 53, scope: !571)
!609 = !DILocation(line: 711, column: 13, scope: !571)
!610 = !DILocation(line: 712, column: 38, scope: !571)
!611 = !DILocation(line: 712, column: 36, scope: !571)
!612 = !DILocation(line: 712, column: 17, scope: !571)
!613 = !DILocation(line: 713, column: 12, scope: !571)
!614 = !DILocation(line: 714, column: 3, scope: !572)
!615 = !DILocation(line: 715, column: 13, scope: !579)
!616 = !DILocation(line: 715, column: 11, scope: !572)
!617 = !DILocation(line: 716, column: 23, scope: !578)
!618 = !DILocation(line: 716, column: 25, scope: !578)
!619 = !DILocation(line: 0, scope: !578)
!620 = !DILocation(line: 0, scope: !251, inlinedAt: !621)
!621 = distinct !DILocation(line: 719, column: 5, scope: !578)
!622 = !DILocation(line: 0, scope: !274, inlinedAt: !623)
!623 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !621)
!624 = !DILocation(line: 0, scope: !268, inlinedAt: !621)
!625 = !DILocation(line: 0, scope: !251, inlinedAt: !626)
!626 = distinct !DILocation(line: 720, column: 5, scope: !578)
!627 = !DILocation(line: 0, scope: !274, inlinedAt: !628)
!628 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !626)
!629 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !621)
!630 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !626)
!631 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !626)
!632 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !626)
!633 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !621)
!634 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !621)
!635 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !621)
!636 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !621)
!637 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !621)
!638 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !621)
!639 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !621)
!640 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !621)
!641 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !621)
!642 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !626)
!643 = !DILocation(line: 0, scope: !268, inlinedAt: !626)
!644 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !626)
!645 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !626)
!646 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !626)
!647 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !626)
!648 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !626)
!649 = !DILocation(line: 721, column: 53, scope: !578)
!650 = !DILocation(line: 721, column: 46, scope: !578)
!651 = !DILocation(line: 721, column: 26, scope: !578)
!652 = !DILocation(line: 721, column: 18, scope: !578)
!653 = !DILocation(line: 722, column: 42, scope: !578)
!654 = !DILocation(line: 722, column: 36, scope: !578)
!655 = !DILocation(line: 722, column: 13, scope: !578)
!656 = !DILocation(line: 723, column: 38, scope: !578)
!657 = !DILocation(line: 723, column: 36, scope: !578)
!658 = !DILocation(line: 723, column: 17, scope: !578)
!659 = !DILocation(line: 725, column: 10, scope: !584)
!660 = !DILocation(line: 725, column: 8, scope: !578)
!661 = !DILocation(line: 726, column: 42, scope: !583)
!662 = !DILocation(line: 726, column: 40, scope: !583)
!663 = !DILocation(line: 726, column: 28, scope: !583)
!664 = !DILocation(line: 0, scope: !583)
!665 = !DILocation(line: 727, column: 19, scope: !583)
!666 = !DILocation(line: 728, column: 19, scope: !583)
!667 = !DILocation(line: 729, column: 5, scope: !583)
!668 = !DILocation(line: 0, scope: !325, inlinedAt: !669)
!669 = distinct !DILocation(line: 734, column: 12, scope: !670)
!670 = distinct !DILexicalBlock(scope: !579, file: !2, line: 733, column: 8)
!671 = !DILocation(line: 617, column: 16, scope: !325, inlinedAt: !669)
!672 = !DILocation(line: 618, column: 22, scope: !325, inlinedAt: !669)
!673 = !DILocation(line: 618, column: 19, scope: !325, inlinedAt: !669)
!674 = !DILocation(line: 619, column: 16, scope: !325, inlinedAt: !669)
!675 = !DILocation(line: 0, scope: !251, inlinedAt: !676)
!676 = distinct !DILocation(line: 621, column: 3, scope: !325, inlinedAt: !669)
!677 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !676)
!678 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !676)
!679 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !676)
!680 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !676)
!681 = !DILocation(line: 0, scope: !274, inlinedAt: !682)
!682 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !676)
!683 = !DILocation(line: 75, column: 15, scope: !274, inlinedAt: !682)
!684 = !DILocation(line: 16, column: 26, scope: !280, inlinedAt: !676)
!685 = !DILocation(line: 0, scope: !280, inlinedAt: !676)
!686 = !DILocation(line: 21, column: 3, scope: !270, inlinedAt: !676)
!687 = !DILocation(line: 0, scope: !268, inlinedAt: !676)
!688 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !676)
!689 = !DILocation(line: 23, column: 21, scope: !268, inlinedAt: !676)
!690 = !DILocation(line: 21, column: 30, scope: !269, inlinedAt: !676)
!691 = distinct !{!691, !359}
!692 = !DILocation(line: 21, column: 24, scope: !269, inlinedAt: !676)
!693 = distinct !{!693, !686, !694, !363}
!694 = !DILocation(line: 25, column: 3, scope: !270, inlinedAt: !676)
!695 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !676)
!696 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !676)
!697 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !676)
!698 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !676)
!699 = !DILocation(line: 28, column: 60, scope: !251, inlinedAt: !676)
!700 = !DILocation(line: 28, column: 55, scope: !251, inlinedAt: !676)
!701 = !DILocation(line: 622, column: 26, scope: !325, inlinedAt: !669)
!702 = !DILocation(line: 622, column: 41, scope: !325, inlinedAt: !669)
!703 = !DILocation(line: 622, column: 15, scope: !325, inlinedAt: !669)
!704 = !DILocation(line: 623, column: 29, scope: !325, inlinedAt: !669)
!705 = !DILocation(line: 623, column: 52, scope: !325, inlinedAt: !669)
!706 = !DILocation(line: 623, column: 50, scope: !325, inlinedAt: !669)
!707 = !DILocation(line: 623, column: 11, scope: !325, inlinedAt: !669)
!708 = !DILocation(line: 623, column: 15, scope: !325, inlinedAt: !669)
!709 = !DILocation(line: 734, column: 5, scope: !670)
!710 = !DILocation(line: 0, scope: !572)
!711 = !DILocation(line: 736, column: 1, scope: !565)
!712 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_e", scope: !2, file: !2, line: 739, type: !326, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !713)
!713 = !{!714, !715, !716, !717, !720, !721, !722, !723, !724, !727, !728, !729, !732, !733, !734, !736, !737, !740}
!714 = !DILocalVariable(name: "x", arg: 1, scope: !712, file: !2, line: 739, type: !177)
!715 = !DILocalVariable(name: "mode", arg: 2, scope: !712, file: !2, line: 739, type: !179)
!716 = !DILocalVariable(name: "result", arg: 3, scope: !712, file: !2, line: 739, type: !181)
!717 = !DILocalVariable(name: "mod", scope: !718, file: !2, line: 743, type: !182)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 742, column: 16)
!719 = distinct !DILexicalBlock(scope: !712, file: !2, line: 742, column: 6)
!720 = !DILocalVariable(name: "theta", scope: !718, file: !2, line: 744, type: !182)
!721 = !DILocalVariable(name: "sin_result", scope: !718, file: !2, line: 745, type: !182)
!722 = !DILocalVariable(name: "stat_mp", scope: !718, file: !2, line: 746, type: !42)
!723 = !DILocalVariable(name: "stat_sin", scope: !718, file: !2, line: 747, type: !42)
!724 = !DILocalVariable(name: "z", scope: !725, file: !2, line: 754, type: !177)
!725 = distinct !DILexicalBlock(scope: !726, file: !2, line: 753, column: 20)
!726 = distinct !DILexicalBlock(scope: !719, file: !2, line: 753, column: 11)
!727 = !DILocalVariable(name: "result_c0", scope: !725, file: !2, line: 755, type: !182)
!728 = !DILocalVariable(name: "result_c1", scope: !725, file: !2, line: 756, type: !182)
!729 = !DILocalVariable(name: "z", scope: !730, file: !2, line: 765, type: !177)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 764, column: 21)
!731 = distinct !DILexicalBlock(scope: !726, file: !2, line: 764, column: 11)
!732 = !DILocalVariable(name: "result_c0", scope: !730, file: !2, line: 766, type: !182)
!733 = !DILocalVariable(name: "result_c1", scope: !730, file: !2, line: 767, type: !182)
!734 = !DILocalVariable(name: "y", scope: !735, file: !2, line: 776, type: !177)
!735 = distinct !DILexicalBlock(scope: !731, file: !2, line: 775, column: 8)
!736 = !DILocalVariable(name: "s", scope: !735, file: !2, line: 777, type: !177)
!737 = !DILocalVariable(name: "result_bie", scope: !738, file: !2, line: 783, type: !182)
!738 = distinct !DILexicalBlock(scope: !739, file: !2, line: 782, column: 10)
!739 = distinct !DILexicalBlock(scope: !735, file: !2, line: 779, column: 8)
!740 = !DILocalVariable(name: "stat_bie", scope: !738, file: !2, line: 784, type: !42)
!741 = distinct !DIAssignID()
!742 = !DILocation(line: 0, scope: !718)
!743 = distinct !DIAssignID()
!744 = distinct !DIAssignID()
!745 = distinct !DIAssignID()
!746 = !DILocation(line: 0, scope: !738)
!747 = !DILocation(line: 0, scope: !712)
!748 = !DILocation(line: 742, column: 8, scope: !719)
!749 = !DILocation(line: 742, column: 6, scope: !712)
!750 = !DILocation(line: 743, column: 5, scope: !718)
!751 = !DILocation(line: 744, column: 5, scope: !718)
!752 = !DILocation(line: 745, column: 5, scope: !718)
!753 = !DILocation(line: 746, column: 20, scope: !718)
!754 = !DILocation(line: 747, column: 43, scope: !718)
!755 = !DILocation(line: 747, column: 54, scope: !718)
!756 = !DILocation(line: 747, column: 20, scope: !718)
!757 = !DILocation(line: 748, column: 24, scope: !718)
!758 = !DILocation(line: 748, column: 41, scope: !718)
!759 = !DILocation(line: 748, column: 28, scope: !718)
!760 = !DILocation(line: 748, column: 18, scope: !718)
!761 = !DILocation(line: 749, column: 46, scope: !718)
!762 = !DILocation(line: 749, column: 33, scope: !718)
!763 = !DILocation(line: 749, column: 20, scope: !718)
!764 = !DILocation(line: 749, column: 79, scope: !718)
!765 = !DILocation(line: 749, column: 73, scope: !718)
!766 = !DILocation(line: 749, column: 53, scope: !718)
!767 = !DILocation(line: 749, column: 13, scope: !718)
!768 = !DILocation(line: 750, column: 38, scope: !718)
!769 = !DILocation(line: 750, column: 36, scope: !718)
!770 = !DILocation(line: 750, column: 17, scope: !718)
!771 = !DILocation(line: 751, column: 12, scope: !718)
!772 = !DILocation(line: 752, column: 3, scope: !719)
!773 = !DILocation(line: 753, column: 13, scope: !726)
!774 = !DILocation(line: 753, column: 11, scope: !719)
!775 = !DILocation(line: 0, scope: !725)
!776 = !DILocation(line: 0, scope: !251, inlinedAt: !777)
!777 = distinct !DILocation(line: 757, column: 5, scope: !725)
!778 = !DILocation(line: 0, scope: !274, inlinedAt: !779)
!779 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !777)
!780 = !DILocation(line: 0, scope: !268, inlinedAt: !777)
!781 = !DILocation(line: 0, scope: !251, inlinedAt: !782)
!782 = distinct !DILocation(line: 758, column: 5, scope: !725)
!783 = !DILocation(line: 0, scope: !274, inlinedAt: !784)
!784 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !782)
!785 = !DILocation(line: 754, column: 23, scope: !725)
!786 = !DILocation(line: 754, column: 25, scope: !725)
!787 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !777)
!788 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !782)
!789 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !782)
!790 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !782)
!791 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !777)
!792 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !777)
!793 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !777)
!794 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !777)
!795 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !777)
!796 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !777)
!797 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !777)
!798 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !777)
!799 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !777)
!800 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !782)
!801 = !DILocation(line: 0, scope: !268, inlinedAt: !782)
!802 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !782)
!803 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !782)
!804 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !782)
!805 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !782)
!806 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !782)
!807 = !DILocation(line: 759, column: 26, scope: !725)
!808 = !DILocation(line: 759, column: 54, scope: !725)
!809 = !DILocation(line: 759, column: 45, scope: !725)
!810 = !DILocation(line: 759, column: 18, scope: !725)
!811 = !DILocation(line: 760, column: 43, scope: !725)
!812 = !DILocation(line: 760, column: 36, scope: !725)
!813 = !DILocation(line: 760, column: 13, scope: !725)
!814 = !DILocation(line: 761, column: 38, scope: !725)
!815 = !DILocation(line: 761, column: 36, scope: !725)
!816 = !DILocation(line: 761, column: 17, scope: !725)
!817 = !DILocation(line: 764, column: 13, scope: !731)
!818 = !DILocation(line: 0, scope: !731)
!819 = !DILocation(line: 764, column: 11, scope: !726)
!820 = !DILocation(line: 0, scope: !730)
!821 = !DILocation(line: 0, scope: !251, inlinedAt: !822)
!822 = distinct !DILocation(line: 768, column: 5, scope: !730)
!823 = !DILocation(line: 0, scope: !274, inlinedAt: !824)
!824 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !822)
!825 = !DILocation(line: 0, scope: !268, inlinedAt: !822)
!826 = !DILocation(line: 0, scope: !251, inlinedAt: !827)
!827 = distinct !DILocation(line: 769, column: 5, scope: !730)
!828 = !DILocation(line: 0, scope: !274, inlinedAt: !829)
!829 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !827)
!830 = !DILocation(line: 765, column: 28, scope: !730)
!831 = !DILocation(line: 765, column: 30, scope: !730)
!832 = !DILocation(line: 765, column: 39, scope: !730)
!833 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !822)
!834 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !827)
!835 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !827)
!836 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !827)
!837 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !822)
!838 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !822)
!839 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !822)
!840 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !822)
!841 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !822)
!842 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !822)
!843 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !822)
!844 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !822)
!845 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !822)
!846 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !827)
!847 = !DILocation(line: 0, scope: !268, inlinedAt: !827)
!848 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !827)
!849 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !827)
!850 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !827)
!851 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !827)
!852 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !827)
!853 = !DILocation(line: 770, column: 26, scope: !730)
!854 = !DILocation(line: 770, column: 53, scope: !730)
!855 = !DILocation(line: 770, column: 45, scope: !730)
!856 = !DILocation(line: 770, column: 18, scope: !730)
!857 = !DILocation(line: 771, column: 43, scope: !730)
!858 = !DILocation(line: 771, column: 36, scope: !730)
!859 = !DILocation(line: 771, column: 13, scope: !730)
!860 = !DILocation(line: 772, column: 38, scope: !730)
!861 = !DILocation(line: 772, column: 36, scope: !730)
!862 = !DILocation(line: 772, column: 17, scope: !730)
!863 = !DILocation(line: 776, column: 28, scope: !735)
!864 = !DILocation(line: 776, column: 27, scope: !735)
!865 = !DILocation(line: 776, column: 35, scope: !735)
!866 = !DILocation(line: 0, scope: !735)
!867 = !DILocation(line: 777, column: 22, scope: !735)
!868 = !DILocation(line: 779, column: 10, scope: !739)
!869 = !DILocation(line: 779, column: 8, scope: !735)
!870 = !DILocation(line: 780, column: 7, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !2, line: 780, column: 7)
!872 = distinct !DILexicalBlock(scope: !739, file: !2, line: 779, column: 35)
!873 = !DILocation(line: 780, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !2, line: 780, column: 7)
!875 = !DILocation(line: 783, column: 7, scope: !738)
!876 = !DILocation(line: 784, column: 22, scope: !738)
!877 = !DILocation(line: 785, column: 33, scope: !738)
!878 = !DILocation(line: 785, column: 37, scope: !738)
!879 = !DILocation(line: 785, column: 20, scope: !738)
!880 = !DILocation(line: 786, column: 33, scope: !738)
!881 = !DILocation(line: 786, column: 37, scope: !738)
!882 = !DILocation(line: 786, column: 51, scope: !738)
!883 = !DILocation(line: 786, column: 73, scope: !738)
!884 = !DILocation(line: 786, column: 54, scope: !738)
!885 = !DILocation(line: 786, column: 43, scope: !738)
!886 = !DILocation(line: 786, column: 15, scope: !738)
!887 = !DILocation(line: 787, column: 40, scope: !738)
!888 = !DILocation(line: 787, column: 38, scope: !738)
!889 = !DILocation(line: 787, column: 19, scope: !738)
!890 = !DILocation(line: 789, column: 5, scope: !739)
!891 = !DILocation(line: 0, scope: !719)
!892 = !DILocation(line: 791, column: 1, scope: !712)
!893 = !DISubprogram(name: "gsl_sf_sin_err_e", scope: !552, file: !552, line: 121, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!894 = distinct !DISubprogram(name: "airy_bie", scope: !2, file: !2, line: 628, type: !895, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !896)
!895 = !DISubroutineType(cc: DW_CC_nocall, types: !327)
!896 = !{!897, !898, !899, !900, !901, !902, !905, !906, !907, !908, !910, !911, !912}
!897 = !DILocalVariable(name: "x", arg: 1, scope: !894, file: !2, line: 628, type: !177)
!898 = !DILocalVariable(name: "mode", arg: 2, scope: !894, file: !2, line: 628, type: !179)
!899 = !DILocalVariable(name: "result", arg: 3, scope: !894, file: !2, line: 628, type: !181)
!900 = !DILocalVariable(name: "ATR", scope: !894, file: !2, line: 630, type: !177)
!901 = !DILocalVariable(name: "BTR", scope: !894, file: !2, line: 631, type: !177)
!902 = !DILocalVariable(name: "sqx", scope: !903, file: !2, line: 634, type: !90)
!903 = distinct !DILexicalBlock(scope: !904, file: !2, line: 633, column: 15)
!904 = distinct !DILexicalBlock(scope: !894, file: !2, line: 633, column: 6)
!905 = !DILocalVariable(name: "z", scope: !903, file: !2, line: 635, type: !90)
!906 = !DILocalVariable(name: "y", scope: !903, file: !2, line: 636, type: !90)
!907 = !DILocalVariable(name: "result_c", scope: !903, file: !2, line: 637, type: !182)
!908 = !DILocalVariable(name: "sqx", scope: !909, file: !2, line: 643, type: !90)
!909 = distinct !DILexicalBlock(scope: !904, file: !2, line: 642, column: 8)
!910 = !DILocalVariable(name: "z", scope: !909, file: !2, line: 644, type: !90)
!911 = !DILocalVariable(name: "y", scope: !909, file: !2, line: 645, type: !90)
!912 = !DILocalVariable(name: "result_c", scope: !909, file: !2, line: 646, type: !182)
!913 = !DILocation(line: 0, scope: !894)
!914 = !DILocation(line: 633, column: 8, scope: !904)
!915 = !DILocation(line: 0, scope: !904)
!916 = !DILocation(line: 75, column: 15, scope: !274, inlinedAt: !917)
!917 = !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !915)
!918 = !DILocation(line: 16, column: 26, scope: !280, inlinedAt: !915)
!919 = !DILocation(line: 633, column: 6, scope: !894)
!920 = !DILocation(line: 0, scope: !903)
!921 = !DILocation(line: 635, column: 21, scope: !903)
!922 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !923)
!923 = distinct !DILocation(line: 638, column: 5, scope: !903)
!924 = !DILocation(line: 0, scope: !251, inlinedAt: !923)
!925 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !923)
!926 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !923)
!927 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !923)
!928 = !DILocation(line: 0, scope: !274, inlinedAt: !929)
!929 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !923)
!930 = !DILocation(line: 0, scope: !280, inlinedAt: !923)
!931 = !DILocation(line: 21, column: 3, scope: !270, inlinedAt: !923)
!932 = !DILocation(line: 0, scope: !268, inlinedAt: !923)
!933 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !923)
!934 = !DILocation(line: 23, column: 21, scope: !268, inlinedAt: !923)
!935 = !DILocation(line: 21, column: 30, scope: !269, inlinedAt: !923)
!936 = distinct !{!936, !359}
!937 = !DILocation(line: 21, column: 24, scope: !269, inlinedAt: !923)
!938 = distinct !{!938, !931, !939, !363}
!939 = !DILocation(line: 25, column: 3, scope: !270, inlinedAt: !923)
!940 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !923)
!941 = !DILocation(line: 641, column: 3, scope: !903)
!942 = !DILocation(line: 0, scope: !909)
!943 = !DILocation(line: 644, column: 22, scope: !909)
!944 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !945)
!945 = distinct !DILocation(line: 647, column: 5, scope: !909)
!946 = !DILocation(line: 0, scope: !251, inlinedAt: !945)
!947 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !945)
!948 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !945)
!949 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !945)
!950 = !DILocation(line: 0, scope: !274, inlinedAt: !951)
!951 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !945)
!952 = !DILocation(line: 0, scope: !280, inlinedAt: !945)
!953 = !DILocation(line: 21, column: 3, scope: !270, inlinedAt: !945)
!954 = !DILocation(line: 0, scope: !268, inlinedAt: !945)
!955 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !945)
!956 = !DILocation(line: 23, column: 21, scope: !268, inlinedAt: !945)
!957 = !DILocation(line: 21, column: 30, scope: !269, inlinedAt: !945)
!958 = distinct !{!958, !359}
!959 = !DILocation(line: 21, column: 24, scope: !269, inlinedAt: !945)
!960 = distinct !{!960, !953, !961, !363}
!961 = !DILocation(line: 25, column: 3, scope: !270, inlinedAt: !945)
!962 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !945)
!963 = !DILocation(line: 27, column: 34, scope: !251, inlinedAt: !915)
!964 = !DILocation(line: 27, column: 32, scope: !251, inlinedAt: !915)
!965 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !915)
!966 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !915)
!967 = !DILocation(line: 28, column: 60, scope: !251, inlinedAt: !915)
!968 = !DILocation(line: 28, column: 55, scope: !251, inlinedAt: !915)
!969 = !DILocation(line: 652, column: 3, scope: !894)
!970 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_scaled_e", scope: !2, file: !2, line: 795, type: !326, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !971)
!971 = !{!972, !973, !974, !975, !978, !979, !980, !981, !982, !985, !986, !987, !990, !993, !994, !995, !996}
!972 = !DILocalVariable(name: "x", arg: 1, scope: !970, file: !2, line: 795, type: !177)
!973 = !DILocalVariable(name: "mode", arg: 2, scope: !970, file: !2, line: 795, type: !179)
!974 = !DILocalVariable(name: "result", arg: 3, scope: !970, file: !2, line: 795, type: !181)
!975 = !DILocalVariable(name: "mod", scope: !976, file: !2, line: 800, type: !182)
!976 = distinct !DILexicalBlock(scope: !977, file: !2, line: 799, column: 16)
!977 = distinct !DILexicalBlock(scope: !970, file: !2, line: 799, column: 6)
!978 = !DILocalVariable(name: "theta", scope: !976, file: !2, line: 801, type: !182)
!979 = !DILocalVariable(name: "sin_result", scope: !976, file: !2, line: 802, type: !182)
!980 = !DILocalVariable(name: "stat_mp", scope: !976, file: !2, line: 803, type: !42)
!981 = !DILocalVariable(name: "stat_sin", scope: !976, file: !2, line: 804, type: !42)
!982 = !DILocalVariable(name: "z", scope: !983, file: !2, line: 811, type: !177)
!983 = distinct !DILexicalBlock(scope: !984, file: !2, line: 810, column: 20)
!984 = distinct !DILexicalBlock(scope: !977, file: !2, line: 810, column: 11)
!985 = !DILocalVariable(name: "result_c0", scope: !983, file: !2, line: 812, type: !182)
!986 = !DILocalVariable(name: "result_c1", scope: !983, file: !2, line: 813, type: !182)
!987 = !DILocalVariable(name: "scale", scope: !988, file: !2, line: 820, type: !177)
!988 = distinct !DILexicalBlock(scope: !989, file: !2, line: 819, column: 17)
!989 = distinct !DILexicalBlock(scope: !983, file: !2, line: 819, column: 8)
!990 = !DILocalVariable(name: "x3", scope: !991, file: !2, line: 827, type: !177)
!991 = distinct !DILexicalBlock(scope: !992, file: !2, line: 826, column: 21)
!992 = distinct !DILexicalBlock(scope: !984, file: !2, line: 826, column: 11)
!993 = !DILocalVariable(name: "z", scope: !991, file: !2, line: 828, type: !177)
!994 = !DILocalVariable(name: "s", scope: !991, file: !2, line: 829, type: !177)
!995 = !DILocalVariable(name: "result_c0", scope: !991, file: !2, line: 830, type: !182)
!996 = !DILocalVariable(name: "result_c1", scope: !991, file: !2, line: 831, type: !182)
!997 = distinct !DIAssignID()
!998 = !DILocation(line: 0, scope: !976)
!999 = distinct !DIAssignID()
!1000 = distinct !DIAssignID()
!1001 = !DILocation(line: 0, scope: !970)
!1002 = !DILocation(line: 799, column: 8, scope: !977)
!1003 = !DILocation(line: 799, column: 6, scope: !970)
!1004 = !DILocation(line: 800, column: 5, scope: !976)
!1005 = !DILocation(line: 801, column: 5, scope: !976)
!1006 = !DILocation(line: 802, column: 5, scope: !976)
!1007 = !DILocation(line: 803, column: 20, scope: !976)
!1008 = !DILocation(line: 804, column: 43, scope: !976)
!1009 = !DILocation(line: 804, column: 54, scope: !976)
!1010 = !DILocation(line: 804, column: 20, scope: !976)
!1011 = !DILocation(line: 805, column: 24, scope: !976)
!1012 = !DILocation(line: 805, column: 41, scope: !976)
!1013 = !DILocation(line: 805, column: 28, scope: !976)
!1014 = !DILocation(line: 805, column: 18, scope: !976)
!1015 = !DILocation(line: 806, column: 46, scope: !976)
!1016 = !DILocation(line: 806, column: 33, scope: !976)
!1017 = !DILocation(line: 806, column: 20, scope: !976)
!1018 = !DILocation(line: 806, column: 79, scope: !976)
!1019 = !DILocation(line: 806, column: 73, scope: !976)
!1020 = !DILocation(line: 806, column: 53, scope: !976)
!1021 = !DILocation(line: 806, column: 13, scope: !976)
!1022 = !DILocation(line: 807, column: 38, scope: !976)
!1023 = !DILocation(line: 807, column: 36, scope: !976)
!1024 = !DILocation(line: 807, column: 17, scope: !976)
!1025 = !DILocation(line: 808, column: 12, scope: !976)
!1026 = !DILocation(line: 809, column: 3, scope: !977)
!1027 = !DILocation(line: 810, column: 13, scope: !984)
!1028 = !DILocation(line: 810, column: 11, scope: !977)
!1029 = !DILocation(line: 811, column: 23, scope: !983)
!1030 = !DILocation(line: 811, column: 25, scope: !983)
!1031 = !DILocation(line: 0, scope: !983)
!1032 = !DILocation(line: 0, scope: !251, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 814, column: 5, scope: !983)
!1034 = !DILocation(line: 0, scope: !274, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !1033)
!1036 = !DILocation(line: 0, scope: !268, inlinedAt: !1033)
!1037 = !DILocation(line: 0, scope: !251, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 815, column: 5, scope: !983)
!1039 = !DILocation(line: 0, scope: !274, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !1038)
!1041 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !1033)
!1042 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !1038)
!1043 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !1038)
!1044 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !1038)
!1045 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !1033)
!1046 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !1033)
!1047 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !1033)
!1048 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !1033)
!1049 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !1033)
!1050 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !1033)
!1051 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !1033)
!1052 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !1033)
!1053 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !1033)
!1054 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !1038)
!1055 = !DILocation(line: 0, scope: !268, inlinedAt: !1038)
!1056 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !1038)
!1057 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !1038)
!1058 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !1038)
!1059 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !1038)
!1060 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !1038)
!1061 = !DILocation(line: 816, column: 26, scope: !983)
!1062 = !DILocation(line: 816, column: 54, scope: !983)
!1063 = !DILocation(line: 816, column: 45, scope: !983)
!1064 = !DILocation(line: 816, column: 18, scope: !983)
!1065 = !DILocation(line: 817, column: 43, scope: !983)
!1066 = !DILocation(line: 817, column: 36, scope: !983)
!1067 = !DILocation(line: 817, column: 13, scope: !983)
!1068 = !DILocation(line: 818, column: 38, scope: !983)
!1069 = !DILocation(line: 818, column: 36, scope: !983)
!1070 = !DILocation(line: 818, column: 17, scope: !983)
!1071 = !DILocation(line: 819, column: 10, scope: !989)
!1072 = !DILocation(line: 819, column: 8, scope: !983)
!1073 = !DILocation(line: 820, column: 43, scope: !988)
!1074 = !DILocation(line: 820, column: 41, scope: !988)
!1075 = !DILocation(line: 820, column: 28, scope: !988)
!1076 = !DILocation(line: 0, scope: !988)
!1077 = !DILocation(line: 821, column: 19, scope: !988)
!1078 = !DILocation(line: 822, column: 19, scope: !988)
!1079 = !DILocation(line: 823, column: 5, scope: !988)
!1080 = !DILocation(line: 826, column: 13, scope: !992)
!1081 = !DILocation(line: 826, column: 11, scope: !984)
!1082 = !DILocation(line: 827, column: 24, scope: !991)
!1083 = !DILocation(line: 827, column: 26, scope: !991)
!1084 = !DILocation(line: 0, scope: !991)
!1085 = !DILocation(line: 829, column: 38, scope: !991)
!1086 = !DILocation(line: 829, column: 36, scope: !991)
!1087 = !DILocation(line: 829, column: 23, scope: !991)
!1088 = !DILocation(line: 0, scope: !251, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 832, column: 5, scope: !991)
!1090 = !DILocation(line: 0, scope: !274, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !1089)
!1092 = !DILocation(line: 0, scope: !268, inlinedAt: !1089)
!1093 = !DILocation(line: 0, scope: !251, inlinedAt: !1094)
!1094 = distinct !DILocation(line: 833, column: 5, scope: !991)
!1095 = !DILocation(line: 0, scope: !274, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 16, column: 6, scope: !280, inlinedAt: !1094)
!1097 = !DILocation(line: 828, column: 27, scope: !991)
!1098 = !DILocation(line: 828, column: 37, scope: !991)
!1099 = !DILocation(line: 11, column: 18, scope: !251, inlinedAt: !1089)
!1100 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !1094)
!1101 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !1094)
!1102 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !1094)
!1103 = !DILocation(line: 11, column: 29, scope: !251, inlinedAt: !1089)
!1104 = !DILocation(line: 11, column: 38, scope: !251, inlinedAt: !1089)
!1105 = !DILocation(line: 12, column: 19, scope: !251, inlinedAt: !1089)
!1106 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !1089)
!1107 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !1089)
!1108 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !1089)
!1109 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !1089)
!1110 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !1089)
!1111 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !1089)
!1112 = !DILocation(line: 23, column: 11, scope: !268, inlinedAt: !1094)
!1113 = !DILocation(line: 0, scope: !268, inlinedAt: !1094)
!1114 = !DILocation(line: 23, column: 19, scope: !268, inlinedAt: !1094)
!1115 = !DILocation(line: 27, column: 18, scope: !251, inlinedAt: !1094)
!1116 = !DILocation(line: 27, column: 26, scope: !251, inlinedAt: !1094)
!1117 = !DILocation(line: 28, column: 35, scope: !251, inlinedAt: !1094)
!1118 = !DILocation(line: 28, column: 33, scope: !251, inlinedAt: !1094)
!1119 = !DILocation(line: 834, column: 31, scope: !991)
!1120 = !DILocation(line: 834, column: 58, scope: !991)
!1121 = !DILocation(line: 834, column: 50, scope: !991)
!1122 = !DILocation(line: 834, column: 22, scope: !991)
!1123 = !DILocation(line: 834, column: 18, scope: !991)
!1124 = !DILocation(line: 835, column: 48, scope: !991)
!1125 = !DILocation(line: 835, column: 41, scope: !991)
!1126 = !DILocation(line: 835, column: 22, scope: !991)
!1127 = !DILocation(line: 835, column: 13, scope: !991)
!1128 = !DILocation(line: 836, column: 38, scope: !991)
!1129 = !DILocation(line: 836, column: 36, scope: !991)
!1130 = !DILocation(line: 836, column: 17, scope: !991)
!1131 = !DILocation(line: 840, column: 12, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !992, file: !2, line: 839, column: 8)
!1133 = !DILocation(line: 840, column: 5, scope: !1132)
!1134 = !DILocation(line: 0, scope: !977)
!1135 = !DILocation(line: 842, column: 1, scope: !970)
!1136 = distinct !DISubprogram(name: "gsl_sf_airy_Ai", scope: !2, file: !2, line: 849, type: !1137, scopeLine: 850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!90, !177, !179}
!1139 = !{!1140, !1141, !1142, !1143}
!1140 = !DILocalVariable(name: "x", arg: 1, scope: !1136, file: !2, line: 849, type: !177)
!1141 = !DILocalVariable(name: "mode", arg: 2, scope: !1136, file: !2, line: 849, type: !179)
!1142 = !DILocalVariable(name: "result", scope: !1136, file: !2, line: 851, type: !182)
!1143 = !DILocalVariable(name: "status", scope: !1136, file: !2, line: 851, type: !42)
!1144 = distinct !DIAssignID()
!1145 = !DILocation(line: 0, scope: !1136)
!1146 = !DILocation(line: 851, column: 3, scope: !1136)
!1147 = !DILocation(line: 851, column: 3, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 851, column: 3)
!1149 = !DILocation(line: 851, column: 3, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 851, column: 3)
!1151 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 851, column: 3)
!1152 = !DILocation(line: 852, column: 1, scope: !1136)
!1153 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_scaled", scope: !2, file: !2, line: 854, type: !1137, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1154)
!1154 = !{!1155, !1156, !1157, !1158}
!1155 = !DILocalVariable(name: "x", arg: 1, scope: !1153, file: !2, line: 854, type: !177)
!1156 = !DILocalVariable(name: "mode", arg: 2, scope: !1153, file: !2, line: 854, type: !179)
!1157 = !DILocalVariable(name: "result", scope: !1153, file: !2, line: 856, type: !182)
!1158 = !DILocalVariable(name: "status", scope: !1153, file: !2, line: 856, type: !42)
!1159 = distinct !DIAssignID()
!1160 = !DILocation(line: 0, scope: !1153)
!1161 = !DILocation(line: 856, column: 3, scope: !1153)
!1162 = !DILocation(line: 856, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 856, column: 3)
!1164 = !DILocation(line: 856, column: 3, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 856, column: 3)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 856, column: 3)
!1167 = !DILocation(line: 857, column: 1, scope: !1153)
!1168 = distinct !DISubprogram(name: "gsl_sf_airy_Bi", scope: !2, file: !2, line: 859, type: !1137, scopeLine: 860, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1169)
!1169 = !{!1170, !1171, !1172, !1173}
!1170 = !DILocalVariable(name: "x", arg: 1, scope: !1168, file: !2, line: 859, type: !177)
!1171 = !DILocalVariable(name: "mode", arg: 2, scope: !1168, file: !2, line: 859, type: !179)
!1172 = !DILocalVariable(name: "result", scope: !1168, file: !2, line: 861, type: !182)
!1173 = !DILocalVariable(name: "status", scope: !1168, file: !2, line: 861, type: !42)
!1174 = distinct !DIAssignID()
!1175 = !DILocation(line: 0, scope: !1168)
!1176 = !DILocation(line: 861, column: 3, scope: !1168)
!1177 = !DILocation(line: 861, column: 3, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 861, column: 3)
!1179 = !DILocation(line: 861, column: 3, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 861, column: 3)
!1181 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 861, column: 3)
!1182 = !DILocation(line: 862, column: 1, scope: !1168)
!1183 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_scaled", scope: !2, file: !2, line: 864, type: !1137, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1184)
!1184 = !{!1185, !1186, !1187, !1188}
!1185 = !DILocalVariable(name: "x", arg: 1, scope: !1183, file: !2, line: 864, type: !177)
!1186 = !DILocalVariable(name: "mode", arg: 2, scope: !1183, file: !2, line: 864, type: !179)
!1187 = !DILocalVariable(name: "result", scope: !1183, file: !2, line: 866, type: !182)
!1188 = !DILocalVariable(name: "status", scope: !1183, file: !2, line: 866, type: !42)
!1189 = distinct !DIAssignID()
!1190 = !DILocation(line: 0, scope: !1183)
!1191 = !DILocation(line: 866, column: 3, scope: !1183)
!1192 = !DILocation(line: 866, column: 3, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 866, column: 3)
!1194 = !DILocation(line: 866, column: 3, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 866, column: 3)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 866, column: 3)
!1197 = !DILocation(line: 867, column: 1, scope: !1183)
