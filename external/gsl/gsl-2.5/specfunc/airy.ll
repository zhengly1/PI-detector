; ModuleID = 'airy.c'
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
  br i1 %7, label %8, label %32, !dbg !215

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !216
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !217
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !218
  %9 = call fastcc i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !219, !range !220
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !197, metadata !DIExpression()), !dbg !210
  %10 = load double, ptr %5, align 8, !dbg !221, !tbaa !222
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !227
  %12 = load double, ptr %11, align 8, !dbg !227, !tbaa !228
  %13 = call i32 @gsl_sf_cos_err_e(double noundef %10, double noundef %12, ptr noundef nonnull %6) #8, !dbg !229
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
  %25 = fadd double %20, %24, !dbg !240
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !241
  %27 = call double @llvm.fabs.f64(double %16), !dbg !242
  %28 = fmul double %27, 0x3CB0000000000000, !dbg !243
  %29 = fadd double %28, %25, !dbg !244
  store double %29, ptr %26, align 8, !dbg !244, !tbaa !228
  %30 = icmp eq i32 %9, 0, !dbg !245
  %31 = select i1 %30, i32 %13, i32 %9, !dbg !245
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !246
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !246
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !246
  br label %199

32:                                               ; preds = %3
  %33 = fcmp ugt double %0, 1.000000e+00, !dbg !247
  br i1 %33, label %110, label %34, !dbg !248

34:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata double poison, metadata !199, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata i32 8, metadata !267, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 8, metadata !262, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double poison, metadata !199, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !272
  tail call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !249
  tail call void @llvm.dbg.value(metadata double poison, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !249
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i32 7, metadata !267, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i32 7, metadata !262, metadata !DIExpression()), !dbg !283
  %35 = fmul double %0, %0, !dbg !287
  %36 = fmul double %35, %0, !dbg !288
  tail call void @llvm.dbg.value(metadata double %36, metadata !199, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %36, metadata !259, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %36, metadata !259, metadata !DIExpression()), !dbg !283
  %37 = fmul double %36, 2.000000e+00, !dbg !289
  %38 = fadd double %37, 1.000000e+00, !dbg !290
  %39 = fadd double %38, -1.000000e+00, !dbg !291
  %40 = fmul double %39, 5.000000e-01, !dbg !292
  call void @llvm.dbg.value(metadata double %40, metadata !265, metadata !DIExpression()), !dbg !283
  %41 = fmul double %40, 2.000000e+00, !dbg !293
  call void @llvm.dbg.value(metadata double %41, metadata !266, metadata !DIExpression()), !dbg !283
  %42 = fadd double %37, 1.000000e+00, !dbg !294
  %43 = fadd double %42, -1.000000e+00, !dbg !295
  %44 = fmul double %43, 5.000000e-01, !dbg !296
  call void @llvm.dbg.value(metadata double %44, metadata !265, metadata !DIExpression()), !dbg !272
  %45 = fmul double %44, 2.000000e+00, !dbg !297
  call void @llvm.dbg.value(metadata double %45, metadata !266, metadata !DIExpression()), !dbg !272
  %46 = fmul double %45, 0.000000e+00, !dbg !298
  %47 = fadd double %46, 0x3BFD83C94FB6D2AC, !dbg !299
  call void @llvm.dbg.value(metadata double %47, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %47, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %47, metadata !264, metadata !DIExpression()), !dbg !272
  %48 = fmul double %45, %47, !dbg !298
  %49 = fadd double %48, 1.201400e-16, !dbg !299
  call void @llvm.dbg.value(metadata double %49, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %49, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %49, metadata !264, metadata !DIExpression()), !dbg !272
  %50 = fmul double %45, %49, !dbg !298
  %51 = fsub double %50, %47, !dbg !300
  %52 = fadd double %51, 0x3D3C686128FEBABC, !dbg !299
  call void @llvm.dbg.value(metadata double %52, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %52, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %52, metadata !264, metadata !DIExpression()), !dbg !272
  %53 = fmul double %45, %52, !dbg !298
  %54 = fsub double %53, %49, !dbg !300
  %55 = fadd double %54, 0x3DD0FA67A3B60159, !dbg !299
  call void @llvm.dbg.value(metadata double %55, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %55, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %55, metadata !264, metadata !DIExpression()), !dbg !272
  %56 = fmul double %45, %55, !dbg !298
  %57 = fsub double %56, %52, !dbg !300
  %58 = fadd double %57, 0x3E5BDAE3C9D3830E, !dbg !299
  call void @llvm.dbg.value(metadata double %58, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %58, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %58, metadata !264, metadata !DIExpression()), !dbg !272
  %59 = fmul double %45, %58, !dbg !298
  %60 = fsub double %59, %55, !dbg !300
  %61 = fadd double %60, 0x3EDCB9E3DA9E0C35, !dbg !299
  call void @llvm.dbg.value(metadata double %61, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %61, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %61, metadata !264, metadata !DIExpression()), !dbg !272
  %62 = fmul double %45, %61, !dbg !298
  %63 = fsub double %62, %58, !dbg !300
  %64 = fadd double %63, 0x3F5028CFD615B254, !dbg !299
  call void @llvm.dbg.value(metadata double %64, metadata !263, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata double %64, metadata !268, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata double %64, metadata !264, metadata !DIExpression()), !dbg !272
  %65 = fmul double %45, %64, !dbg !298
  %66 = fsub double %65, %61, !dbg !300
  %67 = fadd double %66, 0x3FAE4E6632E97C0F, !dbg !299
  call void @llvm.dbg.value(metadata double %67, metadata !263, metadata !DIExpression()), !dbg !272
  %68 = fmul double %44, %67, !dbg !301
  %69 = fsub double %68, %64, !dbg !302
  %70 = fadd double %69, 0xBF9370FB5DDB1451, !dbg !303
  tail call void @llvm.dbg.value(metadata double %70, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !249
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !304
  %72 = fmul double %71, 0x3CB0000000000000, !dbg !305
  %73 = fadd double %72, 0x3BFD83C94FB6D2AC, !dbg !306
  tail call void @llvm.dbg.value(metadata double %73, metadata !202, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !249
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !307
  %74 = fmul double %41, 0.000000e+00, !dbg !308
  %75 = fadd double %74, 1.000000e-17, !dbg !309
  call void @llvm.dbg.value(metadata double %75, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %75, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %75, metadata !268, metadata !DIExpression()), !dbg !307
  %76 = fmul double %41, %75, !dbg !308
  %77 = fadd double %76, 1.392000e-14, !dbg !309
  call void @llvm.dbg.value(metadata double %77, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %75, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %77, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %75, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %77, metadata !268, metadata !DIExpression()), !dbg !307
  %78 = fmul double %41, %77, !dbg !308
  %79 = fsub double %78, %75, !dbg !310
  %80 = fadd double %79, 9.525170e-12, !dbg !309
  call void @llvm.dbg.value(metadata double %80, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %77, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %80, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %77, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %80, metadata !268, metadata !DIExpression()), !dbg !307
  %81 = fmul double %41, %80, !dbg !308
  %82 = fsub double %81, %77, !dbg !310
  %83 = fadd double %82, 0x3E33A317F0CCD43B, !dbg !309
  call void @llvm.dbg.value(metadata double %83, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %80, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %83, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %80, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %83, metadata !268, metadata !DIExpression()), !dbg !307
  %84 = fmul double %41, %83, !dbg !308
  %85 = fsub double %84, %80, !dbg !310
  %86 = fadd double %85, 0x3EB7EEDCE1362561, !dbg !309
  call void @llvm.dbg.value(metadata double %86, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %83, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %86, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %83, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %86, metadata !268, metadata !DIExpression()), !dbg !307
  %87 = fmul double %41, %86, !dbg !308
  %88 = fsub double %87, %83, !dbg !310
  %89 = fadd double %88, 0x3F30D41D08E63267, !dbg !309
  call void @llvm.dbg.value(metadata double %89, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %86, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %89, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %86, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %89, metadata !268, metadata !DIExpression()), !dbg !307
  %90 = fmul double %41, %89, !dbg !308
  %91 = fsub double %90, %86, !dbg !310
  %92 = fadd double %91, 0x3F96171E3527D823, !dbg !309
  call void @llvm.dbg.value(metadata double %92, metadata !263, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata double %89, metadata !264, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !283
  %93 = fmul double %40, %92, !dbg !311
  %94 = fsub double %93, %89, !dbg !312
  %95 = fadd double %94, 0x3F829688A21082BA, !dbg !313
  tail call void @llvm.dbg.value(metadata double %95, metadata !203, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !249
  %96 = tail call double @llvm.fabs.f64(double %95), !dbg !314
  %97 = fmul double %96, 0x3CB0000000000000, !dbg !315
  %98 = fadd double %97, 1.000000e-17, !dbg !316
  tail call void @llvm.dbg.value(metadata double %98, metadata !203, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !249
  %99 = fadd double %95, 2.500000e-01, !dbg !317
  %100 = fmul double %99, %0, !dbg !318
  %101 = fsub double %70, %100, !dbg !319
  %102 = fadd double %101, 3.750000e-01, !dbg !320
  store double %102, ptr %2, align 8, !dbg !321, !tbaa !222
  %103 = fmul double %98, %0, !dbg !322
  %104 = tail call double @llvm.fabs.f64(double %103), !dbg !323
  %105 = fadd double %73, %104, !dbg !324
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !325
  %107 = tail call double @llvm.fabs.f64(double %102), !dbg !326
  %108 = fmul double %107, 0x3CB0000000000000, !dbg !327
  %109 = fadd double %105, %108, !dbg !328
  store double %109, ptr %106, align 8, !dbg !328, !tbaa !228
  br label %199

110:                                              ; preds = %32
  %111 = tail call double @sqrt(double noundef %0) #8, !dbg !329
  %112 = fmul double %111, %0, !dbg !330
  tail call void @llvm.dbg.value(metadata double %112, metadata !204, metadata !DIExpression()), !dbg !331
  %113 = fmul double %112, -2.000000e+00, !dbg !332
  %114 = fdiv double %113, 3.000000e+00, !dbg !333
  %115 = tail call double @exp(double noundef %114) #8, !dbg !334
  tail call void @llvm.dbg.value(metadata double %115, metadata !206, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.value(metadata double %0, metadata !335, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i32 %1, metadata !340, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata ptr undef, metadata !341, metadata !DIExpression()), !dbg !346
  %116 = tail call double @sqrt(double noundef %0) #8, !dbg !348
  call void @llvm.dbg.value(metadata double %116, metadata !342, metadata !DIExpression()), !dbg !346
  %117 = fmul double %116, %0, !dbg !349
  %118 = fdiv double 2.000000e+00, %117, !dbg !350
  %119 = fadd double %118, -1.000000e+00, !dbg !351
  call void @llvm.dbg.value(metadata double %119, metadata !343, metadata !DIExpression()), !dbg !346
  %120 = tail call double @sqrt(double noundef %116) #8, !dbg !352
  call void @llvm.dbg.value(metadata double %120, metadata !344, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %119, metadata !259, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !353
  %121 = fmul double %119, 2.000000e+00, !dbg !355
  %122 = fadd double %121, 1.000000e+00, !dbg !356
  %123 = fadd double %122, -1.000000e+00, !dbg !357
  %124 = fmul double %123, 5.000000e-01, !dbg !358
  call void @llvm.dbg.value(metadata double %124, metadata !265, metadata !DIExpression()), !dbg !353
  %125 = fmul double %124, 2.000000e+00, !dbg !359
  call void @llvm.dbg.value(metadata double %125, metadata !266, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !360
  %126 = and i32 %1, 7, !dbg !362
  %127 = icmp eq i32 %126, 0, !dbg !363
  %128 = select i1 %127, i32 35, i32 17, !dbg !364
  call void @llvm.dbg.value(metadata i32 %128, metadata !267, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i32 %128, metadata !262, metadata !DIExpression()), !dbg !353
  %129 = zext nneg i32 %128 to i64, !dbg !365
  %130 = and i64 %129, 3, !dbg !365
  br label %131, !dbg !365

131:                                              ; preds = %131, %110
  %132 = phi i64 [ %129, %110 ], [ %141, %131 ]
  %133 = phi double [ 0.000000e+00, %110 ], [ %140, %131 ]
  %134 = phi double [ 0.000000e+00, %110 ], [ %133, %131 ]
  %135 = phi i64 [ 0, %110 ], [ %142, %131 ]
  call void @llvm.dbg.value(metadata i64 %132, metadata !262, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %133, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %134, metadata !264, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %133, metadata !268, metadata !DIExpression()), !dbg !366
  %136 = fmul double %125, %133, !dbg !367
  %137 = fsub double %136, %134, !dbg !368
  %138 = getelementptr inbounds double, ptr @data_aip, i64 %132, !dbg !369
  %139 = load double, ptr %138, align 8, !dbg !369, !tbaa !370
  %140 = fadd double %137, %139, !dbg !371
  call void @llvm.dbg.value(metadata double %140, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %133, metadata !264, metadata !DIExpression()), !dbg !353
  %141 = add nsw i64 %132, -1, !dbg !372
  call void @llvm.dbg.value(metadata i64 %141, metadata !262, metadata !DIExpression()), !dbg !353
  %142 = add i64 %135, 1, !dbg !365
  %143 = icmp eq i64 %142, %130, !dbg !365
  br i1 %143, label %144, label %131, !dbg !365, !llvm.loop !373

144:                                              ; preds = %131, %144
  %145 = phi i64 [ %169, %144 ], [ %141, %131 ]
  %146 = phi double [ %168, %144 ], [ %140, %131 ]
  %147 = phi double [ %162, %144 ], [ %133, %131 ]
  call void @llvm.dbg.value(metadata i64 %145, metadata !262, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %146, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %147, metadata !264, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %146, metadata !268, metadata !DIExpression()), !dbg !366
  %148 = fmul double %125, %146, !dbg !367
  %149 = fsub double %148, %147, !dbg !368
  %150 = getelementptr inbounds double, ptr @data_aip, i64 %145, !dbg !369
  %151 = load double, ptr %150, align 8, !dbg !369, !tbaa !370
  %152 = fadd double %149, %151, !dbg !371
  call void @llvm.dbg.value(metadata double %152, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %146, metadata !264, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i64 %145, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !353
  call void @llvm.dbg.value(metadata i64 %145, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !353
  call void @llvm.dbg.value(metadata double %152, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %146, metadata !264, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %152, metadata !268, metadata !DIExpression()), !dbg !366
  %153 = fmul double %125, %152, !dbg !367
  %154 = fsub double %153, %146, !dbg !368
  %155 = getelementptr double, ptr getelementptr (double, ptr @data_aip, i64 -1), i64 %145, !dbg !369
  %156 = load double, ptr %155, align 8, !dbg !369, !tbaa !370
  %157 = fadd double %154, %156, !dbg !371
  call void @llvm.dbg.value(metadata double %157, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %152, metadata !264, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i64 %145, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !353
  call void @llvm.dbg.value(metadata i64 %145, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !353
  call void @llvm.dbg.value(metadata double %157, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %152, metadata !264, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %157, metadata !268, metadata !DIExpression()), !dbg !366
  %158 = fmul double %125, %157, !dbg !367
  %159 = fsub double %158, %152, !dbg !368
  %160 = getelementptr double, ptr getelementptr (double, ptr @data_aip, i64 -2), i64 %145, !dbg !369
  %161 = load double, ptr %160, align 8, !dbg !369, !tbaa !370
  %162 = fadd double %159, %161, !dbg !371
  call void @llvm.dbg.value(metadata double %162, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %157, metadata !264, metadata !DIExpression()), !dbg !353
  %163 = add nsw i64 %145, -3, !dbg !372
  call void @llvm.dbg.value(metadata i64 %163, metadata !262, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata i64 %163, metadata !262, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %162, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %157, metadata !264, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %162, metadata !268, metadata !DIExpression()), !dbg !366
  %164 = fmul double %125, %162, !dbg !367
  %165 = fsub double %164, %157, !dbg !368
  %166 = getelementptr inbounds double, ptr @data_aip, i64 %163, !dbg !369
  %167 = load double, ptr %166, align 8, !dbg !369, !tbaa !370
  %168 = fadd double %165, %167, !dbg !371
  call void @llvm.dbg.value(metadata double %168, metadata !263, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %162, metadata !264, metadata !DIExpression()), !dbg !353
  %169 = add nsw i64 %145, -4, !dbg !372
  call void @llvm.dbg.value(metadata i64 %169, metadata !262, metadata !DIExpression()), !dbg !353
  %170 = icmp ugt i64 %163, 1, !dbg !375
  br i1 %170, label %144, label %171, !dbg !365, !llvm.loop !376

171:                                              ; preds = %144
  %172 = fmul double %124, %168, !dbg !379
  %173 = fsub double %172, %162, !dbg !380
  %174 = fadd double %173, 0xBF8333B4B48EB2F9, !dbg !381
  call void @llvm.dbg.value(metadata double %174, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  %175 = tail call double @llvm.fabs.f64(double %174), !dbg !382
  %176 = fmul double %175, 0x3CB0000000000000, !dbg !383
  %177 = zext nneg i32 %128 to i64, !dbg !384
  %178 = getelementptr inbounds double, ptr @data_aip, i64 %177, !dbg !384
  %179 = load double, ptr %178, align 8, !dbg !384, !tbaa !370
  %180 = tail call double @llvm.fabs.f64(double %179), !dbg !385
  %181 = fadd double %180, %176, !dbg !386
  call void @llvm.dbg.value(metadata double %181, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  %182 = fadd double %174, 2.812500e-01, !dbg !387
  %183 = fdiv double %182, %120, !dbg !388
  tail call void @llvm.dbg.value(metadata double %183, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !331
  %184 = fdiv double %181, %120, !dbg !389
  %185 = tail call double @llvm.fabs.f64(double %183), !dbg !390
  %186 = fmul double %185, 0x3CB0000000000000, !dbg !391
  %187 = fadd double %184, %186, !dbg !392
  tail call void @llvm.dbg.value(metadata double %187, metadata !207, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !331
  tail call void @llvm.dbg.value(metadata i32 0, metadata !208, metadata !DIExpression()), !dbg !331
  %188 = fmul double %115, %183, !dbg !393
  store double %188, ptr %2, align 8, !dbg !394, !tbaa !222
  %189 = fmul double %115, %187, !dbg !395
  %190 = fmul double %112, %188, !dbg !396
  %191 = fmul double %190, 0x3CB0000000000000, !dbg !397
  %192 = fadd double %191, %189, !dbg !398
  %193 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !399
  %194 = tail call double @llvm.fabs.f64(double %188), !dbg !400
  %195 = fmul double %194, 0x3CB0000000000000, !dbg !401
  %196 = fadd double %195, %192, !dbg !402
  store double %196, ptr %193, align 8, !dbg !402, !tbaa !228
  %197 = fcmp olt double %194, 0x10000000000000, !dbg !403
  br i1 %197, label %198, label %199, !dbg !405

198:                                              ; preds = %171
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 693, i32 noundef 15) #8, !dbg !406
  br label %199, !dbg !406

199:                                              ; preds = %198, %171, %34, %8
  %200 = phi i32 [ %31, %8 ], [ 0, %34 ], [ 15, %198 ], [ 0, %171 ], !dbg !408
  ret i32 %200, !dbg !409
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !410 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !414, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !415, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !416, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !417, metadata !DIExpression()), !dbg !429
  %5 = fcmp olt double %0, -2.000000e+00, !dbg !430
  br i1 %5, label %6, label %108, !dbg !431

6:                                                ; preds = %4
  %7 = fmul double %0, %0, !dbg !432
  %8 = fmul double %7, %0, !dbg !433
  %9 = fdiv double 1.600000e+01, %8, !dbg !434
  %10 = fadd double %9, 1.000000e+00, !dbg !435
  tail call void @llvm.dbg.value(metadata double %10, metadata !423, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %10, metadata !259, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !437
  %11 = fmul double %10, 2.000000e+00, !dbg !439
  %12 = fadd double %11, 1.000000e+00, !dbg !440
  %13 = fadd double %12, -1.000000e+00, !dbg !441
  %14 = fmul double %13, 5.000000e-01, !dbg !442
  call void @llvm.dbg.value(metadata double %14, metadata !265, metadata !DIExpression()), !dbg !437
  %15 = fmul double %14, 2.000000e+00, !dbg !443
  call void @llvm.dbg.value(metadata double %15, metadata !266, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !444
  %16 = and i32 %1, 7, !dbg !446
  %17 = icmp eq i32 %16, 0, !dbg !447
  %18 = select i1 %17, i32 36, i32 20, !dbg !448
  call void @llvm.dbg.value(metadata i32 %18, metadata !267, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i32 %18, metadata !262, metadata !DIExpression()), !dbg !437
  %19 = zext nneg i32 %18 to i64, !dbg !449
  br label %20, !dbg !449

20:                                               ; preds = %20, %6
  %21 = phi i64 [ %19, %6 ], [ %45, %20 ]
  %22 = phi double [ 0.000000e+00, %6 ], [ %44, %20 ]
  %23 = phi double [ 0.000000e+00, %6 ], [ %38, %20 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !262, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %22, metadata !263, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %23, metadata !264, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %22, metadata !268, metadata !DIExpression()), !dbg !450
  %24 = fmul double %15, %22, !dbg !451
  %25 = fsub double %24, %23, !dbg !452
  %26 = getelementptr inbounds double, ptr @am21_data, i64 %21, !dbg !453
  %27 = load double, ptr %26, align 16, !dbg !453, !tbaa !370
  %28 = fadd double %25, %27, !dbg !454
  call void @llvm.dbg.value(metadata double %28, metadata !263, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %22, metadata !264, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i64 %21, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !437
  call void @llvm.dbg.value(metadata i64 %21, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !437
  call void @llvm.dbg.value(metadata double %28, metadata !263, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %22, metadata !264, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %28, metadata !268, metadata !DIExpression()), !dbg !450
  %29 = fmul double %15, %28, !dbg !451
  %30 = fsub double %29, %22, !dbg !452
  %31 = getelementptr double, ptr getelementptr (double, ptr @am21_data, i64 -1), i64 %21, !dbg !453
  %32 = load double, ptr %31, align 8, !dbg !453, !tbaa !370
  %33 = fadd double %30, %32, !dbg !454
  call void @llvm.dbg.value(metadata double %33, metadata !263, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %28, metadata !264, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i64 %21, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !437
  call void @llvm.dbg.value(metadata i64 %21, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !437
  call void @llvm.dbg.value(metadata double %33, metadata !263, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %28, metadata !264, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %33, metadata !268, metadata !DIExpression()), !dbg !450
  %34 = fmul double %15, %33, !dbg !451
  %35 = fsub double %34, %28, !dbg !452
  %36 = getelementptr double, ptr getelementptr (double, ptr @am21_data, i64 -2), i64 %21, !dbg !453
  %37 = load double, ptr %36, align 16, !dbg !453, !tbaa !370
  %38 = fadd double %35, %37, !dbg !454
  call void @llvm.dbg.value(metadata double %38, metadata !263, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %33, metadata !264, metadata !DIExpression()), !dbg !437
  %39 = add nsw i64 %21, -3, !dbg !455
  call void @llvm.dbg.value(metadata i64 %39, metadata !262, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata i64 %39, metadata !262, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %38, metadata !263, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %33, metadata !264, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %38, metadata !268, metadata !DIExpression()), !dbg !450
  %40 = fmul double %15, %38, !dbg !451
  %41 = fsub double %40, %33, !dbg !452
  %42 = getelementptr inbounds double, ptr @am21_data, i64 %39, !dbg !453
  %43 = load double, ptr %42, align 8, !dbg !453, !tbaa !370
  %44 = fadd double %41, %43, !dbg !454
  call void @llvm.dbg.value(metadata double %44, metadata !263, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.value(metadata double %38, metadata !264, metadata !DIExpression()), !dbg !437
  %45 = add nsw i64 %21, -4, !dbg !455
  call void @llvm.dbg.value(metadata i64 %45, metadata !262, metadata !DIExpression()), !dbg !437
  %46 = icmp eq i64 %39, 1, !dbg !456
  br i1 %46, label %47, label %20, !dbg !449, !llvm.loop !457

47:                                               ; preds = %20
  %48 = fmul double %14, %44, !dbg !459
  %49 = fsub double %48, %38, !dbg !460
  %50 = fadd double %49, 0x3F6AF4980A3A11BC, !dbg !461
  tail call void @llvm.dbg.value(metadata double %50, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !429
  %51 = tail call double @llvm.fabs.f64(double %50), !dbg !462
  %52 = fmul double %51, 0x3CB0000000000000, !dbg !463
  %53 = zext nneg i32 %18 to i64, !dbg !464
  %54 = getelementptr inbounds double, ptr @am21_data, i64 %53, !dbg !464
  %55 = load double, ptr %54, align 16, !dbg !464, !tbaa !370
  %56 = tail call double @llvm.fabs.f64(double %55), !dbg !465
  %57 = fadd double %56, %52, !dbg !466
  tail call void @llvm.dbg.value(metadata double %57, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !429
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %10, metadata !259, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !467
  %58 = fadd double %11, 1.000000e+00, !dbg !469
  %59 = fadd double %58, -1.000000e+00, !dbg !470
  %60 = fmul double %59, 5.000000e-01, !dbg !471
  call void @llvm.dbg.value(metadata double %60, metadata !265, metadata !DIExpression()), !dbg !467
  %61 = fmul double %60, 2.000000e+00, !dbg !472
  call void @llvm.dbg.value(metadata double %61, metadata !266, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !473
  %62 = select i1 %17, i32 35, i32 15, !dbg !475
  call void @llvm.dbg.value(metadata i32 %62, metadata !267, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i32 %62, metadata !262, metadata !DIExpression()), !dbg !467
  %63 = zext nneg i32 %62 to i64, !dbg !476
  br label %64, !dbg !476

64:                                               ; preds = %64, %47
  %65 = phi i64 [ %63, %47 ], [ %74, %64 ]
  %66 = phi double [ 0.000000e+00, %47 ], [ %73, %64 ]
  %67 = phi double [ 0.000000e+00, %47 ], [ %66, %64 ]
  %68 = phi i64 [ 0, %47 ], [ %75, %64 ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !262, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %66, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %67, metadata !264, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %66, metadata !268, metadata !DIExpression()), !dbg !477
  %69 = fmul double %61, %66, !dbg !478
  %70 = fsub double %69, %67, !dbg !479
  %71 = getelementptr inbounds double, ptr @ath1_data, i64 %65, !dbg !480
  %72 = load double, ptr %71, align 8, !dbg !480, !tbaa !370
  %73 = fadd double %70, %72, !dbg !481
  call void @llvm.dbg.value(metadata double %73, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %66, metadata !264, metadata !DIExpression()), !dbg !467
  %74 = add nsw i64 %65, -1, !dbg !482
  call void @llvm.dbg.value(metadata i64 %74, metadata !262, metadata !DIExpression()), !dbg !467
  %75 = add i64 %68, 1, !dbg !476
  %76 = icmp eq i64 %75, 3, !dbg !476
  br i1 %76, label %77, label %64, !dbg !476, !llvm.loop !483

77:                                               ; preds = %64, %77
  %78 = phi i64 [ %102, %77 ], [ %74, %64 ]
  %79 = phi double [ %101, %77 ], [ %73, %64 ]
  %80 = phi double [ %95, %77 ], [ %66, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !262, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %79, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %80, metadata !264, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %79, metadata !268, metadata !DIExpression()), !dbg !477
  %81 = fmul double %61, %79, !dbg !478
  %82 = fsub double %81, %80, !dbg !479
  %83 = getelementptr inbounds double, ptr @ath1_data, i64 %78, !dbg !480
  %84 = load double, ptr %83, align 8, !dbg !480, !tbaa !370
  %85 = fadd double %82, %84, !dbg !481
  call void @llvm.dbg.value(metadata double %85, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %79, metadata !264, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64 %78, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !467
  call void @llvm.dbg.value(metadata i64 %78, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !467
  call void @llvm.dbg.value(metadata double %85, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %79, metadata !264, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %85, metadata !268, metadata !DIExpression()), !dbg !477
  %86 = fmul double %61, %85, !dbg !478
  %87 = fsub double %86, %79, !dbg !479
  %88 = getelementptr double, ptr getelementptr (double, ptr @ath1_data, i64 -1), i64 %78, !dbg !480
  %89 = load double, ptr %88, align 8, !dbg !480, !tbaa !370
  %90 = fadd double %87, %89, !dbg !481
  call void @llvm.dbg.value(metadata double %90, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %85, metadata !264, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64 %78, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !467
  call void @llvm.dbg.value(metadata i64 %78, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !467
  call void @llvm.dbg.value(metadata double %90, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %85, metadata !264, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %90, metadata !268, metadata !DIExpression()), !dbg !477
  %91 = fmul double %61, %90, !dbg !478
  %92 = fsub double %91, %85, !dbg !479
  %93 = getelementptr double, ptr getelementptr (double, ptr @ath1_data, i64 -2), i64 %78, !dbg !480
  %94 = load double, ptr %93, align 8, !dbg !480, !tbaa !370
  %95 = fadd double %92, %94, !dbg !481
  call void @llvm.dbg.value(metadata double %95, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %90, metadata !264, metadata !DIExpression()), !dbg !467
  %96 = add nsw i64 %78, -3, !dbg !482
  call void @llvm.dbg.value(metadata i64 %96, metadata !262, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata i64 %96, metadata !262, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %95, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %90, metadata !264, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %95, metadata !268, metadata !DIExpression()), !dbg !477
  %97 = fmul double %61, %95, !dbg !478
  %98 = fsub double %97, %90, !dbg !479
  %99 = getelementptr inbounds double, ptr @ath1_data, i64 %96, !dbg !480
  %100 = load double, ptr %99, align 8, !dbg !480, !tbaa !370
  %101 = fadd double %98, %100, !dbg !481
  call void @llvm.dbg.value(metadata double %101, metadata !263, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.value(metadata double %95, metadata !264, metadata !DIExpression()), !dbg !467
  %102 = add nsw i64 %78, -4, !dbg !482
  call void @llvm.dbg.value(metadata i64 %102, metadata !262, metadata !DIExpression()), !dbg !467
  %103 = icmp ugt i64 %96, 1, !dbg !484
  br i1 %103, label %77, label %104, !dbg !476, !llvm.loop !485

104:                                              ; preds = %77
  %105 = fmul double %60, %101, !dbg !487
  %106 = fsub double %105, %95, !dbg !488
  %107 = fadd double %106, 0xBFA23DFD33BFBE77, !dbg !489
  tail call void @llvm.dbg.value(metadata double %107, metadata !419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !429
  tail call void @llvm.dbg.value(metadata double %216, metadata !419, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !429
  br label %204, !dbg !490

108:                                              ; preds = %4
  %109 = fcmp ugt double %0, -1.000000e+00, !dbg !491
  br i1 %109, label %203, label %110, !dbg !492

110:                                              ; preds = %108
  %111 = fmul double %0, %0, !dbg !493
  %112 = fmul double %111, %0, !dbg !494
  %113 = fdiv double 1.600000e+01, %112, !dbg !495
  %114 = fadd double %113, 9.000000e+00, !dbg !496
  %115 = fdiv double %114, 7.000000e+00, !dbg !497
  tail call void @llvm.dbg.value(metadata double %115, metadata !426, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata double %115, metadata !259, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !499
  %116 = fmul double %115, 2.000000e+00, !dbg !501
  %117 = fadd double %116, 1.000000e+00, !dbg !502
  %118 = fadd double %117, -1.000000e+00, !dbg !503
  %119 = fmul double %118, 5.000000e-01, !dbg !504
  call void @llvm.dbg.value(metadata double %119, metadata !265, metadata !DIExpression()), !dbg !499
  %120 = fmul double %119, 2.000000e+00, !dbg !505
  call void @llvm.dbg.value(metadata double %120, metadata !266, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !506
  %121 = and i32 %1, 7, !dbg !508
  %122 = icmp eq i32 %121, 0, !dbg !509
  %123 = select i1 %122, i32 32, i32 15, !dbg !510
  call void @llvm.dbg.value(metadata i32 %123, metadata !267, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata i32 %123, metadata !262, metadata !DIExpression()), !dbg !499
  %124 = zext nneg i32 %123 to i64, !dbg !511
  br label %125, !dbg !511

125:                                              ; preds = %125, %110
  %126 = phi i64 [ %124, %110 ], [ %134, %125 ]
  %127 = phi double [ 0.000000e+00, %110 ], [ %133, %125 ]
  %128 = phi double [ 0.000000e+00, %110 ], [ %127, %125 ]
  call void @llvm.dbg.value(metadata i64 %126, metadata !262, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata double %127, metadata !263, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata double %128, metadata !264, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata double %127, metadata !268, metadata !DIExpression()), !dbg !512
  %129 = fmul double %120, %127, !dbg !513
  %130 = fsub double %129, %128, !dbg !514
  %131 = getelementptr inbounds double, ptr @am22_data, i64 %126, !dbg !515
  %132 = load double, ptr %131, align 8, !dbg !515, !tbaa !370
  %133 = fadd double %130, %132, !dbg !516
  call void @llvm.dbg.value(metadata double %133, metadata !263, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata double %127, metadata !264, metadata !DIExpression()), !dbg !499
  %134 = add nsw i64 %126, -1, !dbg !517
  call void @llvm.dbg.value(metadata i64 %134, metadata !262, metadata !DIExpression()), !dbg !499
  %135 = icmp ugt i64 %126, 1, !dbg !518
  br i1 %135, label %125, label %136, !dbg !511, !llvm.loop !519

136:                                              ; preds = %125
  %137 = fmul double %119, %133, !dbg !521
  %138 = fsub double %137, %127, !dbg !522
  %139 = fadd double %138, 0xBF8000E72D521FCE, !dbg !523
  tail call void @llvm.dbg.value(metadata double %139, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !429
  %140 = tail call double @llvm.fabs.f64(double %139), !dbg !524
  %141 = fmul double %140, 0x3CB0000000000000, !dbg !525
  %142 = zext nneg i32 %123 to i64, !dbg !526
  %143 = getelementptr inbounds double, ptr @am22_data, i64 %142, !dbg !526
  %144 = load double, ptr %143, align 8, !dbg !526, !tbaa !370
  %145 = tail call double @llvm.fabs.f64(double %144), !dbg !527
  %146 = fadd double %145, %141, !dbg !528
  tail call void @llvm.dbg.value(metadata double %146, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !429
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %115, metadata !259, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !529
  %147 = fadd double %116, 1.000000e+00, !dbg !531
  %148 = fadd double %147, -1.000000e+00, !dbg !532
  %149 = fmul double %148, 5.000000e-01, !dbg !533
  call void @llvm.dbg.value(metadata double %149, metadata !265, metadata !DIExpression()), !dbg !529
  %150 = fmul double %149, 2.000000e+00, !dbg !534
  call void @llvm.dbg.value(metadata double %150, metadata !266, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !535
  %151 = select i1 %122, i32 31, i32 16, !dbg !537
  call void @llvm.dbg.value(metadata i32 %151, metadata !267, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 %151, metadata !262, metadata !DIExpression()), !dbg !529
  %152 = zext nneg i32 %151 to i64, !dbg !538
  %153 = and i64 %152, 3, !dbg !538
  %154 = icmp eq i64 %153, 0, !dbg !538
  br i1 %154, label %168, label %155, !dbg !538

155:                                              ; preds = %136, %155
  %156 = phi i64 [ %165, %155 ], [ %152, %136 ]
  %157 = phi double [ %164, %155 ], [ 0.000000e+00, %136 ]
  %158 = phi double [ %157, %155 ], [ 0.000000e+00, %136 ]
  %159 = phi i64 [ %166, %155 ], [ 0, %136 ]
  call void @llvm.dbg.value(metadata i64 %156, metadata !262, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %157, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %158, metadata !264, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %157, metadata !268, metadata !DIExpression()), !dbg !539
  %160 = fmul double %150, %157, !dbg !540
  %161 = fsub double %160, %158, !dbg !541
  %162 = getelementptr inbounds double, ptr @ath2_data, i64 %156, !dbg !542
  %163 = load double, ptr %162, align 8, !dbg !542, !tbaa !370
  %164 = fadd double %161, %163, !dbg !543
  call void @llvm.dbg.value(metadata double %164, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %157, metadata !264, metadata !DIExpression()), !dbg !529
  %165 = add nsw i64 %156, -1, !dbg !544
  call void @llvm.dbg.value(metadata i64 %165, metadata !262, metadata !DIExpression()), !dbg !529
  %166 = add i64 %159, 1, !dbg !538
  %167 = icmp eq i64 %166, %153, !dbg !538
  br i1 %167, label %168, label %155, !dbg !538, !llvm.loop !545

168:                                              ; preds = %136, %155
  %169 = phi i64 [ %152, %136 ], [ %165, %155 ]
  %170 = phi double [ 0.000000e+00, %136 ], [ %164, %155 ]
  %171 = phi double [ 0.000000e+00, %136 ], [ %157, %155 ]
  br label %172, !dbg !538

172:                                              ; preds = %172, %168
  %173 = phi i64 [ %169, %168 ], [ %197, %172 ]
  %174 = phi double [ %170, %168 ], [ %196, %172 ]
  %175 = phi double [ %171, %168 ], [ %190, %172 ]
  call void @llvm.dbg.value(metadata i64 %173, metadata !262, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %174, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %175, metadata !264, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %174, metadata !268, metadata !DIExpression()), !dbg !539
  %176 = fmul double %150, %174, !dbg !540
  %177 = fsub double %176, %175, !dbg !541
  %178 = getelementptr inbounds double, ptr @ath2_data, i64 %173, !dbg !542
  %179 = load double, ptr %178, align 8, !dbg !542, !tbaa !370
  %180 = fadd double %177, %179, !dbg !543
  call void @llvm.dbg.value(metadata double %180, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %174, metadata !264, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i64 %173, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !529
  call void @llvm.dbg.value(metadata i64 %173, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !529
  call void @llvm.dbg.value(metadata double %180, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %174, metadata !264, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %180, metadata !268, metadata !DIExpression()), !dbg !539
  %181 = fmul double %150, %180, !dbg !540
  %182 = fsub double %181, %174, !dbg !541
  %183 = getelementptr double, ptr getelementptr (double, ptr @ath2_data, i64 -1), i64 %173, !dbg !542
  %184 = load double, ptr %183, align 8, !dbg !542, !tbaa !370
  %185 = fadd double %182, %184, !dbg !543
  call void @llvm.dbg.value(metadata double %185, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %180, metadata !264, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i64 %173, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !529
  call void @llvm.dbg.value(metadata i64 %173, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !529
  call void @llvm.dbg.value(metadata double %185, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %180, metadata !264, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %185, metadata !268, metadata !DIExpression()), !dbg !539
  %186 = fmul double %150, %185, !dbg !540
  %187 = fsub double %186, %180, !dbg !541
  %188 = getelementptr double, ptr getelementptr (double, ptr @ath2_data, i64 -2), i64 %173, !dbg !542
  %189 = load double, ptr %188, align 8, !dbg !542, !tbaa !370
  %190 = fadd double %187, %189, !dbg !543
  call void @llvm.dbg.value(metadata double %190, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %185, metadata !264, metadata !DIExpression()), !dbg !529
  %191 = add nsw i64 %173, -3, !dbg !544
  call void @llvm.dbg.value(metadata i64 %191, metadata !262, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i64 %191, metadata !262, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %190, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %185, metadata !264, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %190, metadata !268, metadata !DIExpression()), !dbg !539
  %192 = fmul double %150, %190, !dbg !540
  %193 = fsub double %192, %185, !dbg !541
  %194 = getelementptr inbounds double, ptr @ath2_data, i64 %191, !dbg !542
  %195 = load double, ptr %194, align 8, !dbg !542, !tbaa !370
  %196 = fadd double %193, %195, !dbg !543
  call void @llvm.dbg.value(metadata double %196, metadata !263, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata double %190, metadata !264, metadata !DIExpression()), !dbg !529
  %197 = add nsw i64 %173, -4, !dbg !544
  call void @llvm.dbg.value(metadata i64 %197, metadata !262, metadata !DIExpression()), !dbg !529
  %198 = icmp ugt i64 %191, 1, !dbg !546
  br i1 %198, label %172, label %199, !dbg !538, !llvm.loop !547

199:                                              ; preds = %172
  %200 = fmul double %149, %196, !dbg !549
  %201 = fsub double %200, %190, !dbg !550
  %202 = fadd double %201, 0x3F620B4396F64EFD, !dbg !551
  tail call void @llvm.dbg.value(metadata double %202, metadata !419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !429
  tail call void @llvm.dbg.value(metadata double %216, metadata !419, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !429
  br label %204

203:                                              ; preds = %108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !554
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 265, i32 noundef 1) #8, !dbg !555
  br label %238, !dbg !555

204:                                              ; preds = %199, %104
  %205 = phi double [ %202, %199 ], [ %107, %104 ]
  %206 = phi i32 [ %151, %199 ], [ %62, %104 ]
  %207 = phi ptr [ @ath2_data, %199 ], [ @ath1_data, %104 ]
  %208 = phi double [ %146, %199 ], [ %57, %104 ], !dbg !557
  %209 = phi double [ %139, %199 ], [ %50, %104 ], !dbg !559
  %210 = tail call double @llvm.fabs.f64(double %205), !dbg !560
  %211 = fmul double %210, 0x3CB0000000000000, !dbg !561
  %212 = zext nneg i32 %206 to i64, !dbg !562
  %213 = getelementptr inbounds double, ptr %207, i64 %212, !dbg !562
  %214 = load double, ptr %213, align 8, !dbg !562, !tbaa !370
  %215 = tail call double @llvm.fabs.f64(double %214), !dbg !563
  %216 = fadd double %215, %211, !dbg !564
  tail call void @llvm.dbg.value(metadata double %205, metadata !419, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !429
  tail call void @llvm.dbg.value(metadata double %216, metadata !419, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !429
  tail call void @llvm.dbg.value(metadata double %209, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !429
  tail call void @llvm.dbg.value(metadata double %208, metadata !418, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !429
  %217 = fadd double %209, 3.125000e-01, !dbg !565
  tail call void @llvm.dbg.value(metadata double %217, metadata !420, metadata !DIExpression()), !dbg !429
  %218 = fadd double %205, -6.250000e-01, !dbg !566
  tail call void @llvm.dbg.value(metadata double %218, metadata !421, metadata !DIExpression()), !dbg !429
  %219 = fneg double %0, !dbg !567
  %220 = tail call double @sqrt(double noundef %219) #8, !dbg !568
  tail call void @llvm.dbg.value(metadata double %220, metadata !422, metadata !DIExpression()), !dbg !429
  %221 = fdiv double %217, %220, !dbg !569
  %222 = tail call double @sqrt(double noundef %221) #8, !dbg !570
  store double %222, ptr %2, align 8, !dbg !571, !tbaa !222
  %223 = tail call double @llvm.fabs.f64(double %222), !dbg !572
  %224 = fdiv double %208, %209, !dbg !573
  %225 = tail call double @llvm.fabs.f64(double %224), !dbg !574
  %226 = fadd double %225, 0x3CB0000000000000, !dbg !575
  %227 = fmul double %226, %223, !dbg !576
  %228 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !577
  store double %227, ptr %228, align 8, !dbg !578, !tbaa !228
  %229 = fmul double %220, %0, !dbg !579
  %230 = fmul double %218, %229, !dbg !580
  %231 = fsub double 0x3FE921FB54442D18, %230, !dbg !581
  store double %231, ptr %3, align 8, !dbg !582, !tbaa !222
  %232 = tail call double @llvm.fabs.f64(double %231), !dbg !583
  %233 = fdiv double %216, %205, !dbg !584
  %234 = tail call double @llvm.fabs.f64(double %233), !dbg !585
  %235 = fadd double %234, 0x3CB0000000000000, !dbg !586
  %236 = fmul double %235, %232, !dbg !587
  %237 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !588
  store double %236, ptr %237, align 8, !dbg !589, !tbaa !228
  br label %238, !dbg !590

238:                                              ; preds = %204, %203
  %239 = phi i32 [ 0, %204 ], [ 1, %203 ], !dbg !429
  ret i32 %239, !dbg !591
}

declare !dbg !592 i32 @gsl_sf_cos_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !596 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !600 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !601 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Ai_scaled_e(double noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !606 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !626
  call void @llvm.dbg.assign(metadata i1 undef, metadata !611, metadata !DIExpression(), metadata !626, metadata ptr %4, metadata !DIExpression()), !dbg !627
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !628
  call void @llvm.dbg.assign(metadata i1 undef, metadata !614, metadata !DIExpression(), metadata !628, metadata ptr %5, metadata !DIExpression()), !dbg !627
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !615, metadata !DIExpression(), metadata !629, metadata ptr %6, metadata !DIExpression()), !dbg !627
  tail call void @llvm.dbg.value(metadata double %0, metadata !608, metadata !DIExpression()), !dbg !630
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !609, metadata !DIExpression()), !dbg !630
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !610, metadata !DIExpression()), !dbg !630
  %7 = fcmp olt double %0, -1.000000e+00, !dbg !631
  br i1 %7, label %8, label %32, !dbg !632

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !633
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !634
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !635
  %9 = call fastcc i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !636, !range !220
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !616, metadata !DIExpression()), !dbg !627
  %10 = load double, ptr %5, align 8, !dbg !637, !tbaa !222
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !638
  %12 = load double, ptr %11, align 8, !dbg !638, !tbaa !228
  %13 = call i32 @gsl_sf_cos_err_e(double noundef %10, double noundef %12, ptr noundef nonnull %6) #8, !dbg !639
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !617, metadata !DIExpression()), !dbg !627
  %14 = load double, ptr %4, align 8, !dbg !640, !tbaa !222
  %15 = load double, ptr %6, align 8, !dbg !641, !tbaa !222
  %16 = fmul double %14, %15, !dbg !642
  store double %16, ptr %2, align 8, !dbg !643, !tbaa !222
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !644
  %18 = load double, ptr %17, align 8, !dbg !644, !tbaa !228
  %19 = fmul double %14, %18, !dbg !645
  %20 = call double @llvm.fabs.f64(double %19), !dbg !646
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !647
  %22 = load double, ptr %21, align 8, !dbg !647, !tbaa !228
  %23 = fmul double %15, %22, !dbg !648
  %24 = call double @llvm.fabs.f64(double %23), !dbg !649
  %25 = fadd double %20, %24, !dbg !650
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !651
  %27 = call double @llvm.fabs.f64(double %16), !dbg !652
  %28 = fmul double %27, 0x3CB0000000000000, !dbg !653
  %29 = fadd double %28, %25, !dbg !654
  store double %29, ptr %26, align 8, !dbg !654, !tbaa !228
  %30 = icmp eq i32 %9, 0, !dbg !655
  %31 = select i1 %30, i32 %13, i32 %9, !dbg !655
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !656
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !656
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !656
  br label %193

32:                                               ; preds = %3
  %33 = fcmp ugt double %0, 1.000000e+00, !dbg !657
  br i1 %33, label %119, label %34, !dbg !658

34:                                               ; preds = %32
  %35 = fmul double %0, %0, !dbg !659
  %36 = fmul double %35, %0, !dbg !660
  tail call void @llvm.dbg.value(metadata double %36, metadata !618, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double %36, metadata !259, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32 8, metadata !267, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i32 8, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !662
  tail call void @llvm.dbg.value(metadata double poison, metadata !621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !661
  tail call void @llvm.dbg.value(metadata double poison, metadata !621, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !661
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %36, metadata !259, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 7, metadata !267, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i32 7, metadata !262, metadata !DIExpression()), !dbg !667
  %37 = fmul double %36, 2.000000e+00, !dbg !671
  %38 = fadd double %37, 1.000000e+00, !dbg !672
  %39 = fadd double %38, -1.000000e+00, !dbg !673
  %40 = fmul double %39, 5.000000e-01, !dbg !674
  call void @llvm.dbg.value(metadata double %40, metadata !265, metadata !DIExpression()), !dbg !667
  %41 = fmul double %40, 2.000000e+00, !dbg !675
  call void @llvm.dbg.value(metadata double %41, metadata !266, metadata !DIExpression()), !dbg !667
  %42 = fadd double %37, 1.000000e+00, !dbg !676
  %43 = fadd double %42, -1.000000e+00, !dbg !677
  %44 = fmul double %43, 5.000000e-01, !dbg !678
  call void @llvm.dbg.value(metadata double %44, metadata !265, metadata !DIExpression()), !dbg !662
  %45 = fmul double %44, 2.000000e+00, !dbg !679
  call void @llvm.dbg.value(metadata double %45, metadata !266, metadata !DIExpression()), !dbg !662
  %46 = fmul double %45, 0.000000e+00, !dbg !680
  %47 = fadd double %46, 0x3BFD83C94FB6D2AC, !dbg !681
  call void @llvm.dbg.value(metadata double %47, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double %47, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %47, metadata !264, metadata !DIExpression()), !dbg !662
  %48 = fmul double %45, %47, !dbg !680
  %49 = fadd double %48, 1.201400e-16, !dbg !681
  call void @llvm.dbg.value(metadata double %49, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double %49, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %49, metadata !264, metadata !DIExpression()), !dbg !662
  %50 = fmul double %45, %49, !dbg !680
  %51 = fsub double %50, %47, !dbg !682
  %52 = fadd double %51, 0x3D3C686128FEBABC, !dbg !681
  call void @llvm.dbg.value(metadata double %52, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double %52, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %52, metadata !264, metadata !DIExpression()), !dbg !662
  %53 = fmul double %45, %52, !dbg !680
  %54 = fsub double %53, %49, !dbg !682
  %55 = fadd double %54, 0x3DD0FA67A3B60159, !dbg !681
  call void @llvm.dbg.value(metadata double %55, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double %55, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %55, metadata !264, metadata !DIExpression()), !dbg !662
  %56 = fmul double %45, %55, !dbg !680
  %57 = fsub double %56, %52, !dbg !682
  %58 = fadd double %57, 0x3E5BDAE3C9D3830E, !dbg !681
  call void @llvm.dbg.value(metadata double %58, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double %58, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %58, metadata !264, metadata !DIExpression()), !dbg !662
  %59 = fmul double %45, %58, !dbg !680
  %60 = fsub double %59, %55, !dbg !682
  %61 = fadd double %60, 0x3EDCB9E3DA9E0C35, !dbg !681
  call void @llvm.dbg.value(metadata double %61, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double %61, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %61, metadata !264, metadata !DIExpression()), !dbg !662
  %62 = fmul double %45, %61, !dbg !680
  %63 = fsub double %62, %58, !dbg !682
  %64 = fadd double %63, 0x3F5028CFD615B254, !dbg !681
  call void @llvm.dbg.value(metadata double %64, metadata !263, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata double %64, metadata !268, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata double %64, metadata !264, metadata !DIExpression()), !dbg !662
  %65 = fmul double %45, %64, !dbg !680
  %66 = fsub double %65, %61, !dbg !682
  %67 = fadd double %66, 0x3FAE4E6632E97C0F, !dbg !681
  call void @llvm.dbg.value(metadata double %67, metadata !263, metadata !DIExpression()), !dbg !662
  %68 = fmul double %44, %67, !dbg !683
  %69 = fsub double %68, %64, !dbg !684
  %70 = fadd double %69, 0xBF9370FB5DDB1451, !dbg !685
  tail call void @llvm.dbg.value(metadata double %70, metadata !621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !661
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !686
  %72 = fmul double %71, 0x3CB0000000000000, !dbg !687
  %73 = fadd double %72, 0x3BFD83C94FB6D2AC, !dbg !688
  tail call void @llvm.dbg.value(metadata double %73, metadata !621, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !661
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !689
  %74 = fmul double %41, 0.000000e+00, !dbg !690
  %75 = fadd double %74, 1.000000e-17, !dbg !691
  call void @llvm.dbg.value(metadata double %75, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %75, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %75, metadata !268, metadata !DIExpression()), !dbg !689
  %76 = fmul double %41, %75, !dbg !690
  %77 = fadd double %76, 1.392000e-14, !dbg !691
  call void @llvm.dbg.value(metadata double %77, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %75, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %77, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %75, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %77, metadata !268, metadata !DIExpression()), !dbg !689
  %78 = fmul double %41, %77, !dbg !690
  %79 = fsub double %78, %75, !dbg !692
  %80 = fadd double %79, 9.525170e-12, !dbg !691
  call void @llvm.dbg.value(metadata double %80, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %77, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %80, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %77, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %80, metadata !268, metadata !DIExpression()), !dbg !689
  %81 = fmul double %41, %80, !dbg !690
  %82 = fsub double %81, %77, !dbg !692
  %83 = fadd double %82, 0x3E33A317F0CCD43B, !dbg !691
  call void @llvm.dbg.value(metadata double %83, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %80, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %83, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %80, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %83, metadata !268, metadata !DIExpression()), !dbg !689
  %84 = fmul double %41, %83, !dbg !690
  %85 = fsub double %84, %80, !dbg !692
  %86 = fadd double %85, 0x3EB7EEDCE1362561, !dbg !691
  call void @llvm.dbg.value(metadata double %86, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %83, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %86, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %83, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %86, metadata !268, metadata !DIExpression()), !dbg !689
  %87 = fmul double %41, %86, !dbg !690
  %88 = fsub double %87, %83, !dbg !692
  %89 = fadd double %88, 0x3F30D41D08E63267, !dbg !691
  call void @llvm.dbg.value(metadata double %89, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %86, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %89, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %86, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %89, metadata !268, metadata !DIExpression()), !dbg !689
  %90 = fmul double %41, %89, !dbg !690
  %91 = fsub double %90, %86, !dbg !692
  %92 = fadd double %91, 0x3F96171E3527D823, !dbg !691
  call void @llvm.dbg.value(metadata double %92, metadata !263, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata double %89, metadata !264, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !667
  %93 = fmul double %40, %92, !dbg !693
  %94 = fsub double %93, %89, !dbg !694
  %95 = fadd double %94, 0x3F829688A21082BA, !dbg !695
  tail call void @llvm.dbg.value(metadata double %95, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !661
  %96 = tail call double @llvm.fabs.f64(double %95), !dbg !696
  %97 = fmul double %96, 0x3CB0000000000000, !dbg !697
  %98 = fadd double %97, 1.000000e-17, !dbg !698
  tail call void @llvm.dbg.value(metadata double %98, metadata !622, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !661
  %99 = fadd double %95, 2.500000e-01, !dbg !699
  %100 = fmul double %99, %0, !dbg !700
  %101 = fsub double %70, %100, !dbg !701
  %102 = fadd double %101, 3.750000e-01, !dbg !702
  store double %102, ptr %2, align 8, !dbg !703, !tbaa !222
  %103 = fmul double %98, %0, !dbg !704
  %104 = tail call double @llvm.fabs.f64(double %103), !dbg !705
  %105 = fadd double %73, %104, !dbg !706
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !707
  %107 = tail call double @llvm.fabs.f64(double %102), !dbg !708
  %108 = fmul double %107, 0x3CB0000000000000, !dbg !709
  %109 = fadd double %105, %108, !dbg !710
  store double %109, ptr %106, align 8, !dbg !710, !tbaa !228
  %110 = fcmp ogt double %0, 0.000000e+00, !dbg !711
  br i1 %110, label %111, label %193, !dbg !712

111:                                              ; preds = %34
  %112 = tail call double @sqrt(double noundef %36) #8, !dbg !713
  %113 = fmul double %112, 0x3FE5555555555555, !dbg !714
  %114 = tail call double @exp(double noundef %113) #8, !dbg !715
  tail call void @llvm.dbg.value(metadata double %114, metadata !623, metadata !DIExpression()), !dbg !716
  %115 = load double, ptr %2, align 8, !dbg !717, !tbaa !222
  %116 = fmul double %114, %115, !dbg !717
  store double %116, ptr %2, align 8, !dbg !717, !tbaa !222
  %117 = load double, ptr %106, align 8, !dbg !718, !tbaa !228
  %118 = fmul double %114, %117, !dbg !718
  store double %118, ptr %106, align 8, !dbg !718, !tbaa !228
  br label %193, !dbg !719

119:                                              ; preds = %32
  call void @llvm.dbg.value(metadata double %0, metadata !335, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata i32 %1, metadata !340, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata ptr %2, metadata !341, metadata !DIExpression()), !dbg !720
  %120 = tail call double @sqrt(double noundef %0) #8, !dbg !723
  call void @llvm.dbg.value(metadata double %120, metadata !342, metadata !DIExpression()), !dbg !720
  %121 = fmul double %120, %0, !dbg !724
  %122 = fdiv double 2.000000e+00, %121, !dbg !725
  %123 = fadd double %122, -1.000000e+00, !dbg !726
  call void @llvm.dbg.value(metadata double %123, metadata !343, metadata !DIExpression()), !dbg !720
  %124 = tail call double @sqrt(double noundef %120) #8, !dbg !727
  call void @llvm.dbg.value(metadata double %124, metadata !344, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %123, metadata !259, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !728
  %125 = fmul double %123, 2.000000e+00, !dbg !730
  %126 = fadd double %125, 1.000000e+00, !dbg !731
  %127 = fadd double %126, -1.000000e+00, !dbg !732
  %128 = fmul double %127, 5.000000e-01, !dbg !733
  call void @llvm.dbg.value(metadata double %128, metadata !265, metadata !DIExpression()), !dbg !728
  %129 = fmul double %128, 2.000000e+00, !dbg !734
  call void @llvm.dbg.value(metadata double %129, metadata !266, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !735
  %130 = and i32 %1, 7, !dbg !737
  %131 = icmp eq i32 %130, 0, !dbg !738
  %132 = select i1 %131, i32 35, i32 17, !dbg !739
  call void @llvm.dbg.value(metadata i32 %132, metadata !267, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i32 %132, metadata !262, metadata !DIExpression()), !dbg !728
  %133 = zext nneg i32 %132 to i64, !dbg !740
  %134 = and i64 %133, 3, !dbg !740
  br label %135, !dbg !740

135:                                              ; preds = %135, %119
  %136 = phi i64 [ %133, %119 ], [ %145, %135 ]
  %137 = phi double [ 0.000000e+00, %119 ], [ %144, %135 ]
  %138 = phi double [ 0.000000e+00, %119 ], [ %137, %135 ]
  %139 = phi i64 [ 0, %119 ], [ %146, %135 ]
  call void @llvm.dbg.value(metadata i64 %136, metadata !262, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %137, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %138, metadata !264, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %137, metadata !268, metadata !DIExpression()), !dbg !741
  %140 = fmul double %129, %137, !dbg !742
  %141 = fsub double %140, %138, !dbg !743
  %142 = getelementptr inbounds double, ptr @data_aip, i64 %136, !dbg !744
  %143 = load double, ptr %142, align 8, !dbg !744, !tbaa !370
  %144 = fadd double %141, %143, !dbg !745
  call void @llvm.dbg.value(metadata double %144, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %137, metadata !264, metadata !DIExpression()), !dbg !728
  %145 = add nsw i64 %136, -1, !dbg !746
  call void @llvm.dbg.value(metadata i64 %145, metadata !262, metadata !DIExpression()), !dbg !728
  %146 = add i64 %139, 1, !dbg !740
  %147 = icmp eq i64 %146, %134, !dbg !740
  br i1 %147, label %148, label %135, !dbg !740, !llvm.loop !747

148:                                              ; preds = %135, %148
  %149 = phi i64 [ %173, %148 ], [ %145, %135 ]
  %150 = phi double [ %172, %148 ], [ %144, %135 ]
  %151 = phi double [ %166, %148 ], [ %137, %135 ]
  call void @llvm.dbg.value(metadata i64 %149, metadata !262, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %150, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %151, metadata !264, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %150, metadata !268, metadata !DIExpression()), !dbg !741
  %152 = fmul double %129, %150, !dbg !742
  %153 = fsub double %152, %151, !dbg !743
  %154 = getelementptr inbounds double, ptr @data_aip, i64 %149, !dbg !744
  %155 = load double, ptr %154, align 8, !dbg !744, !tbaa !370
  %156 = fadd double %153, %155, !dbg !745
  call void @llvm.dbg.value(metadata double %156, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %150, metadata !264, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i64 %149, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !728
  call void @llvm.dbg.value(metadata i64 %149, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !728
  call void @llvm.dbg.value(metadata double %156, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %150, metadata !264, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %156, metadata !268, metadata !DIExpression()), !dbg !741
  %157 = fmul double %129, %156, !dbg !742
  %158 = fsub double %157, %150, !dbg !743
  %159 = getelementptr double, ptr getelementptr (double, ptr @data_aip, i64 -1), i64 %149, !dbg !744
  %160 = load double, ptr %159, align 8, !dbg !744, !tbaa !370
  %161 = fadd double %158, %160, !dbg !745
  call void @llvm.dbg.value(metadata double %161, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %156, metadata !264, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i64 %149, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !728
  call void @llvm.dbg.value(metadata i64 %149, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !728
  call void @llvm.dbg.value(metadata double %161, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %156, metadata !264, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %161, metadata !268, metadata !DIExpression()), !dbg !741
  %162 = fmul double %129, %161, !dbg !742
  %163 = fsub double %162, %156, !dbg !743
  %164 = getelementptr double, ptr getelementptr (double, ptr @data_aip, i64 -2), i64 %149, !dbg !744
  %165 = load double, ptr %164, align 8, !dbg !744, !tbaa !370
  %166 = fadd double %163, %165, !dbg !745
  call void @llvm.dbg.value(metadata double %166, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %161, metadata !264, metadata !DIExpression()), !dbg !728
  %167 = add nsw i64 %149, -3, !dbg !746
  call void @llvm.dbg.value(metadata i64 %167, metadata !262, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i64 %167, metadata !262, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %166, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %161, metadata !264, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %166, metadata !268, metadata !DIExpression()), !dbg !741
  %168 = fmul double %129, %166, !dbg !742
  %169 = fsub double %168, %161, !dbg !743
  %170 = getelementptr inbounds double, ptr @data_aip, i64 %167, !dbg !744
  %171 = load double, ptr %170, align 8, !dbg !744, !tbaa !370
  %172 = fadd double %169, %171, !dbg !745
  call void @llvm.dbg.value(metadata double %172, metadata !263, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata double %166, metadata !264, metadata !DIExpression()), !dbg !728
  %173 = add nsw i64 %149, -4, !dbg !746
  call void @llvm.dbg.value(metadata i64 %173, metadata !262, metadata !DIExpression()), !dbg !728
  %174 = icmp ugt i64 %167, 1, !dbg !748
  br i1 %174, label %148, label %175, !dbg !740, !llvm.loop !749

175:                                              ; preds = %148
  %176 = fmul double %128, %172, !dbg !751
  %177 = fsub double %176, %166, !dbg !752
  %178 = fadd double %177, 0xBF8333B4B48EB2F9, !dbg !753
  call void @llvm.dbg.value(metadata double %178, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !720
  %179 = tail call double @llvm.fabs.f64(double %178), !dbg !754
  %180 = fmul double %179, 0x3CB0000000000000, !dbg !755
  %181 = zext nneg i32 %132 to i64, !dbg !756
  %182 = getelementptr inbounds double, ptr @data_aip, i64 %181, !dbg !756
  %183 = load double, ptr %182, align 8, !dbg !756, !tbaa !370
  %184 = tail call double @llvm.fabs.f64(double %183), !dbg !757
  %185 = fadd double %184, %180, !dbg !758
  call void @llvm.dbg.value(metadata double %185, metadata !345, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !720
  %186 = fadd double %178, 2.812500e-01, !dbg !759
  %187 = fdiv double %186, %124, !dbg !760
  store double %187, ptr %2, align 8, !dbg !761, !tbaa !222
  %188 = fdiv double %185, %124, !dbg !762
  %189 = tail call double @llvm.fabs.f64(double %187), !dbg !763
  %190 = fmul double %189, 0x3CB0000000000000, !dbg !764
  %191 = fadd double %188, %190, !dbg !765
  %192 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !766
  store double %191, ptr %192, align 8, !dbg !767, !tbaa !228
  br label %193, !dbg !768

193:                                              ; preds = %34, %111, %175, %8
  %194 = phi i32 [ %31, %8 ], [ 0, %175 ], [ 0, %111 ], [ 0, %34 ], !dbg !769
  ret i32 %194, !dbg !770
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Bi_e(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !771 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !800
  call void @llvm.dbg.assign(metadata i1 undef, metadata !776, metadata !DIExpression(), metadata !800, metadata ptr %4, metadata !DIExpression()), !dbg !801
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !802
  call void @llvm.dbg.assign(metadata i1 undef, metadata !779, metadata !DIExpression(), metadata !802, metadata ptr %5, metadata !DIExpression()), !dbg !801
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !803
  call void @llvm.dbg.assign(metadata i1 undef, metadata !780, metadata !DIExpression(), metadata !803, metadata ptr %6, metadata !DIExpression()), !dbg !801
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !804
  call void @llvm.dbg.assign(metadata i1 undef, metadata !796, metadata !DIExpression(), metadata !804, metadata ptr %7, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata double %0, metadata !773, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !774, metadata !DIExpression()), !dbg !806
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !775, metadata !DIExpression()), !dbg !806
  %8 = fcmp olt double %0, -1.000000e+00, !dbg !807
  br i1 %8, label %9, label %33, !dbg !808

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !809
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !810
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !811
  %10 = call fastcc i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !812, !range !220
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !781, metadata !DIExpression()), !dbg !801
  %11 = load double, ptr %5, align 8, !dbg !813, !tbaa !222
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !814
  %13 = load double, ptr %12, align 8, !dbg !814, !tbaa !228
  %14 = call i32 @gsl_sf_sin_err_e(double noundef %11, double noundef %13, ptr noundef nonnull %6) #8, !dbg !815
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !782, metadata !DIExpression()), !dbg !801
  %15 = load double, ptr %4, align 8, !dbg !816, !tbaa !222
  %16 = load double, ptr %6, align 8, !dbg !817, !tbaa !222
  %17 = fmul double %15, %16, !dbg !818
  store double %17, ptr %2, align 8, !dbg !819, !tbaa !222
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !820
  %19 = load double, ptr %18, align 8, !dbg !820, !tbaa !228
  %20 = fmul double %15, %19, !dbg !821
  %21 = call double @llvm.fabs.f64(double %20), !dbg !822
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !823
  %23 = load double, ptr %22, align 8, !dbg !823, !tbaa !228
  %24 = fmul double %16, %23, !dbg !824
  %25 = call double @llvm.fabs.f64(double %24), !dbg !825
  %26 = fadd double %21, %25, !dbg !826
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !827
  %28 = call double @llvm.fabs.f64(double %17), !dbg !828
  %29 = fmul double %28, 0x3CB0000000000000, !dbg !829
  %30 = fadd double %29, %26, !dbg !830
  store double %30, ptr %27, align 8, !dbg !830, !tbaa !228
  %31 = icmp eq i32 %10, 0, !dbg !831
  %32 = select i1 %31, i32 %14, i32 %10, !dbg !831
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !832
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !832
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !832
  br label %224

33:                                               ; preds = %3
  %34 = fcmp olt double %0, 1.000000e+00, !dbg !833
  br i1 %34, label %35, label %111, !dbg !834

35:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata double poison, metadata !783, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i32 8, metadata !267, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i32 8, metadata !262, metadata !DIExpression()), !dbg !836
  tail call void @llvm.dbg.value(metadata double poison, metadata !783, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !836
  tail call void @llvm.dbg.value(metadata double poison, metadata !786, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !835
  tail call void @llvm.dbg.value(metadata double poison, metadata !786, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !835
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i32 7, metadata !267, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i32 7, metadata !262, metadata !DIExpression()), !dbg !841
  %36 = fmul double %0, %0, !dbg !845
  %37 = fmul double %36, %0, !dbg !846
  tail call void @llvm.dbg.value(metadata double %37, metadata !783, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata double %37, metadata !259, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double %37, metadata !259, metadata !DIExpression()), !dbg !841
  %38 = fmul double %37, 2.000000e+00, !dbg !847
  %39 = fadd double %38, 1.000000e+00, !dbg !848
  %40 = fadd double %39, -1.000000e+00, !dbg !849
  %41 = fmul double %40, 5.000000e-01, !dbg !850
  call void @llvm.dbg.value(metadata double %41, metadata !265, metadata !DIExpression()), !dbg !841
  %42 = fmul double %41, 2.000000e+00, !dbg !851
  call void @llvm.dbg.value(metadata double %42, metadata !266, metadata !DIExpression()), !dbg !841
  %43 = fadd double %38, 1.000000e+00, !dbg !852
  %44 = fadd double %43, -1.000000e+00, !dbg !853
  %45 = fmul double %44, 5.000000e-01, !dbg !854
  call void @llvm.dbg.value(metadata double %45, metadata !265, metadata !DIExpression()), !dbg !836
  %46 = fmul double %45, 2.000000e+00, !dbg !855
  call void @llvm.dbg.value(metadata double %46, metadata !266, metadata !DIExpression()), !dbg !836
  %47 = fmul double %46, 0.000000e+00, !dbg !856
  %48 = fadd double %47, 1.800000e-19, !dbg !857
  call void @llvm.dbg.value(metadata double %48, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double %48, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %48, metadata !264, metadata !DIExpression()), !dbg !836
  %49 = fmul double %46, %48, !dbg !856
  %50 = fadd double %49, 2.081000e-16, !dbg !857
  call void @llvm.dbg.value(metadata double %50, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double %50, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %50, metadata !264, metadata !DIExpression()), !dbg !836
  %51 = fmul double %46, %50, !dbg !856
  %52 = fsub double %51, %48, !dbg !858
  %53 = fadd double %52, 0x3D489A10BD02D422, !dbg !857
  call void @llvm.dbg.value(metadata double %53, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double %53, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %53, metadata !264, metadata !DIExpression()), !dbg !836
  %54 = fmul double %46, %53, !dbg !856
  %55 = fsub double %54, %50, !dbg !858
  %56 = fadd double %55, 0x3DDD6831AB093FE3, !dbg !857
  call void @llvm.dbg.value(metadata double %56, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double %56, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %56, metadata !264, metadata !DIExpression()), !dbg !836
  %57 = fmul double %46, %56, !dbg !856
  %58 = fsub double %57, %53, !dbg !858
  %59 = fadd double %58, 0x3E681F881E9A9EB8, !dbg !857
  call void @llvm.dbg.value(metadata double %59, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double %59, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %59, metadata !264, metadata !DIExpression()), !dbg !836
  %60 = fmul double %46, %59, !dbg !856
  %61 = fsub double %60, %56, !dbg !858
  %62 = fadd double %61, 0x3EE8E0A7D5A866A9, !dbg !857
  call void @llvm.dbg.value(metadata double %62, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double %62, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %62, metadata !264, metadata !DIExpression()), !dbg !836
  %63 = fmul double %46, %62, !dbg !856
  %64 = fsub double %63, %59, !dbg !858
  %65 = fadd double %64, 0x3F5BFD2B174187A5, !dbg !857
  call void @llvm.dbg.value(metadata double %65, metadata !263, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata double %65, metadata !268, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %65, metadata !264, metadata !DIExpression()), !dbg !836
  %66 = fmul double %46, %65, !dbg !856
  %67 = fsub double %66, %62, !dbg !858
  %68 = fadd double %67, 0x3FBA3EF8872837DE, !dbg !857
  call void @llvm.dbg.value(metadata double %68, metadata !263, metadata !DIExpression()), !dbg !836
  %69 = fmul double %45, %68, !dbg !859
  %70 = fsub double %69, %65, !dbg !860
  %71 = fadd double %70, 0xBF8121B9D268A2B4, !dbg !861
  tail call void @llvm.dbg.value(metadata double %71, metadata !786, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !835
  %72 = tail call double @llvm.fabs.f64(double %71), !dbg !862
  %73 = fmul double %72, 0x3CB0000000000000, !dbg !863
  %74 = fadd double %73, 1.800000e-19, !dbg !864
  tail call void @llvm.dbg.value(metadata double %74, metadata !786, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !835
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !865
  %75 = fmul double %42, 0.000000e+00, !dbg !866
  %76 = fadd double %75, 2.000000e-17, !dbg !867
  call void @llvm.dbg.value(metadata double %76, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %76, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %76, metadata !268, metadata !DIExpression()), !dbg !865
  %77 = fmul double %42, %76, !dbg !866
  %78 = fadd double %77, 2.411000e-14, !dbg !867
  call void @llvm.dbg.value(metadata double %78, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %76, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %78, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %76, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %78, metadata !268, metadata !DIExpression()), !dbg !865
  %79 = fmul double %42, %78, !dbg !866
  %80 = fsub double %79, %76, !dbg !868
  %81 = fadd double %80, 0x3DB223CB3B000986, !dbg !867
  call void @llvm.dbg.value(metadata double %81, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %78, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %81, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %78, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %81, metadata !268, metadata !DIExpression()), !dbg !865
  %82 = fmul double %42, %81, !dbg !866
  %83 = fsub double %82, %78, !dbg !868
  %84 = fadd double %83, 0x3E410197375ECA6C, !dbg !867
  call void @llvm.dbg.value(metadata double %84, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %81, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %84, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %81, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %84, metadata !268, metadata !DIExpression()), !dbg !865
  %85 = fmul double %42, %84, !dbg !866
  %86 = fsub double %85, %81, !dbg !868
  %87 = fadd double %86, 0x3EC4BA04D2B6F238, !dbg !867
  call void @llvm.dbg.value(metadata double %87, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %84, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %87, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %84, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %87, metadata !268, metadata !DIExpression()), !dbg !865
  %88 = fmul double %42, %87, !dbg !866
  %89 = fsub double %88, %84, !dbg !868
  %90 = fadd double %89, 0x3F3D25DF0F0797C5, !dbg !867
  call void @llvm.dbg.value(metadata double %90, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %87, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %90, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %87, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %90, metadata !268, metadata !DIExpression()), !dbg !865
  %91 = fmul double %42, %90, !dbg !866
  %92 = fsub double %91, %87, !dbg !868
  %93 = fadd double %92, 0x3FA32179D12FAB23, !dbg !867
  call void @llvm.dbg.value(metadata double %93, metadata !263, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata double %90, metadata !264, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !841
  %94 = fmul double %41, %93, !dbg !869
  %95 = fsub double %94, %90, !dbg !870
  %96 = fadd double %95, 0x3F870162B87813A5, !dbg !871
  tail call void @llvm.dbg.value(metadata double %96, metadata !787, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !835
  %97 = tail call double @llvm.fabs.f64(double %96), !dbg !872
  %98 = fmul double %97, 0x3CB0000000000000, !dbg !873
  %99 = fadd double %98, 2.000000e-17, !dbg !874
  tail call void @llvm.dbg.value(metadata double %99, metadata !787, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !835
  %100 = fadd double %71, 6.250000e-01, !dbg !875
  %101 = fadd double %96, 4.375000e-01, !dbg !876
  %102 = fmul double %101, %0, !dbg !877
  %103 = fadd double %100, %102, !dbg !878
  store double %103, ptr %2, align 8, !dbg !879, !tbaa !222
  %104 = fmul double %99, %0, !dbg !880
  %105 = tail call double @llvm.fabs.f64(double %104), !dbg !881
  %106 = fadd double %74, %105, !dbg !882
  %107 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !883
  %108 = tail call double @llvm.fabs.f64(double %103), !dbg !884
  %109 = fmul double %108, 0x3CB0000000000000, !dbg !885
  %110 = fadd double %109, %106, !dbg !886
  store double %110, ptr %107, align 8, !dbg !886, !tbaa !228
  br label %224

111:                                              ; preds = %33
  %112 = fcmp ugt double %0, 2.000000e+00, !dbg !887
  %113 = fmul double %0, 2.000000e+00, !dbg !888
  br i1 %112, label %201, label %114, !dbg !889

114:                                              ; preds = %111
  tail call void @llvm.dbg.value(metadata double poison, metadata !788, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata i32 9, metadata !267, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i32 9, metadata !262, metadata !DIExpression()), !dbg !891
  tail call void @llvm.dbg.value(metadata double poison, metadata !788, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 9, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !891
  tail call void @llvm.dbg.value(metadata double poison, metadata !791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !890
  tail call void @llvm.dbg.value(metadata double poison, metadata !791, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !890
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 9, metadata !267, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i32 9, metadata !262, metadata !DIExpression()), !dbg !896
  %115 = fmul double %113, %0, !dbg !900
  %116 = fmul double %115, %0, !dbg !901
  %117 = fadd double %116, -9.000000e+00, !dbg !902
  %118 = fdiv double %117, 7.000000e+00, !dbg !903
  tail call void @llvm.dbg.value(metadata double %118, metadata !788, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double %118, metadata !259, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double %118, metadata !259, metadata !DIExpression()), !dbg !896
  %119 = fmul double %118, 2.000000e+00, !dbg !904
  %120 = fadd double %119, 1.000000e+00, !dbg !905
  %121 = fadd double %120, -1.000000e+00, !dbg !906
  %122 = fmul double %121, 5.000000e-01, !dbg !907
  call void @llvm.dbg.value(metadata double %122, metadata !265, metadata !DIExpression()), !dbg !896
  %123 = fmul double %122, 2.000000e+00, !dbg !908
  call void @llvm.dbg.value(metadata double %123, metadata !266, metadata !DIExpression()), !dbg !896
  %124 = fadd double %119, 1.000000e+00, !dbg !909
  %125 = fadd double %124, -1.000000e+00, !dbg !910
  %126 = fmul double %125, 5.000000e-01, !dbg !911
  call void @llvm.dbg.value(metadata double %126, metadata !265, metadata !DIExpression()), !dbg !891
  %127 = fmul double %126, 2.000000e+00, !dbg !912
  call void @llvm.dbg.value(metadata double %127, metadata !266, metadata !DIExpression()), !dbg !891
  %128 = fmul double %127, 0.000000e+00, !dbg !913
  %129 = fadd double %128, 1.110000e-17, !dbg !914
  call void @llvm.dbg.value(metadata double %129, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double %129, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double %129, metadata !264, metadata !DIExpression()), !dbg !891
  %130 = fmul double %127, %129, !dbg !913
  %131 = fadd double %130, 4.496200e-15, !dbg !914
  call void @llvm.dbg.value(metadata double %131, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double %131, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double %131, metadata !264, metadata !DIExpression()), !dbg !891
  %132 = fmul double %127, %131, !dbg !913
  %133 = fsub double %132, %129, !dbg !915
  %134 = fadd double %133, 0x3D79232729612F79, !dbg !914
  call void @llvm.dbg.value(metadata double %134, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double %134, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double %134, metadata !264, metadata !DIExpression()), !dbg !891
  %135 = fmul double %127, %134, !dbg !913
  %136 = fsub double %135, %131, !dbg !915
  %137 = fadd double %136, 0x3DF7CBBDB5EAF10A, !dbg !914
  call void @llvm.dbg.value(metadata double %137, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double %137, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double %137, metadata !264, metadata !DIExpression()), !dbg !891
  %138 = fmul double %127, %137, !dbg !913
  %139 = fsub double %138, %134, !dbg !915
  %140 = fadd double %139, 0x3E7077AAC00260F6, !dbg !914
  call void @llvm.dbg.value(metadata double %140, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double %140, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double %140, metadata !264, metadata !DIExpression()), !dbg !891
  %141 = fmul double %127, %140, !dbg !913
  %142 = fsub double %141, %137, !dbg !915
  %143 = fadd double %142, 0x3EDF74CFF88B3AF0, !dbg !914
  call void @llvm.dbg.value(metadata double %143, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double %143, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double %143, metadata !264, metadata !DIExpression()), !dbg !891
  %144 = fmul double %127, %143, !dbg !913
  %145 = fsub double %144, %140, !dbg !915
  %146 = fadd double %145, 0x3F4312C07E6D492C, !dbg !914
  call void @llvm.dbg.value(metadata double %146, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double %146, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double %146, metadata !264, metadata !DIExpression()), !dbg !891
  %147 = fmul double %127, %146, !dbg !913
  %148 = fsub double %147, %143, !dbg !915
  %149 = fadd double %148, 0x3F99C249B2C6A9FD, !dbg !914
  call void @llvm.dbg.value(metadata double %149, metadata !263, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata double %149, metadata !268, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata double %149, metadata !264, metadata !DIExpression()), !dbg !891
  %150 = fmul double %127, %149, !dbg !913
  %151 = fsub double %150, %146, !dbg !915
  %152 = fadd double %151, 0x3FDEA1CAA8BE19EF, !dbg !914
  call void @llvm.dbg.value(metadata double %152, metadata !263, metadata !DIExpression()), !dbg !891
  %153 = fmul double %126, %152, !dbg !916
  %154 = fsub double %153, %149, !dbg !917
  %155 = fadd double %154, 0x3FA98F7D53D84138, !dbg !918
  tail call void @llvm.dbg.value(metadata double %155, metadata !791, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !890
  %156 = tail call double @llvm.fabs.f64(double %155), !dbg !919
  %157 = fmul double %156, 0x3CB0000000000000, !dbg !920
  %158 = fadd double %157, 1.110000e-17, !dbg !921
  tail call void @llvm.dbg.value(metadata double %158, metadata !791, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !890
  call void @llvm.dbg.value(metadata i64 9, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !922
  %159 = fmul double %123, 0.000000e+00, !dbg !923
  %160 = fadd double %159, 1.100000e-18, !dbg !924
  call void @llvm.dbg.value(metadata double %160, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %160, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %160, metadata !268, metadata !DIExpression()), !dbg !922
  %161 = fmul double %123, %160, !dbg !923
  %162 = fadd double %161, 5.167000e-16, !dbg !924
  call void @llvm.dbg.value(metadata double %162, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %160, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %162, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %160, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %162, metadata !268, metadata !DIExpression()), !dbg !922
  %163 = fmul double %123, %162, !dbg !923
  %164 = fsub double %163, %160, !dbg !925
  %165 = fadd double %164, 0x3D491851EC9BC775, !dbg !924
  call void @llvm.dbg.value(metadata double %165, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %162, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %165, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %162, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %165, metadata !268, metadata !DIExpression()), !dbg !922
  %166 = fmul double %123, %165, !dbg !923
  %167 = fsub double %166, %162, !dbg !925
  %168 = fadd double %167, 0x3DCA171F5386423D, !dbg !924
  call void @llvm.dbg.value(metadata double %168, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %165, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %168, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %165, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %168, metadata !268, metadata !DIExpression()), !dbg !922
  %169 = fmul double %123, %168, !dbg !923
  %170 = fsub double %169, %165, !dbg !925
  %171 = fadd double %170, 0x3E44217AF2B8D920, !dbg !924
  call void @llvm.dbg.value(metadata double %171, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %168, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %171, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %168, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %171, metadata !268, metadata !DIExpression()), !dbg !922
  %172 = fmul double %123, %171, !dbg !923
  %173 = fsub double %172, %168, !dbg !925
  %174 = fadd double %173, 0x3EB5E2EEF2F3371D, !dbg !924
  call void @llvm.dbg.value(metadata double %174, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %171, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %174, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %171, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %174, metadata !268, metadata !DIExpression()), !dbg !922
  %175 = fmul double %123, %174, !dbg !923
  %176 = fsub double %175, %171, !dbg !925
  %177 = fadd double %176, 0x3F1F23E4822735E6, !dbg !924
  call void @llvm.dbg.value(metadata double %177, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %174, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %177, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %174, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %177, metadata !268, metadata !DIExpression()), !dbg !922
  %178 = fmul double %123, %177, !dbg !923
  %179 = fsub double %178, %174, !dbg !925
  %180 = fadd double %179, 0x3F79E1F59BCEBE7A, !dbg !924
  call void @llvm.dbg.value(metadata double %180, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %177, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %180, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %177, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %180, metadata !268, metadata !DIExpression()), !dbg !922
  %181 = fmul double %123, %180, !dbg !923
  %182 = fsub double %181, %177, !dbg !925
  %183 = fadd double %182, 0x3FC4A5C7C5BFB00C, !dbg !924
  call void @llvm.dbg.value(metadata double %183, metadata !263, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %180, metadata !264, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !896
  %184 = fmul double %122, %183, !dbg !926
  %185 = fsub double %184, %180, !dbg !927
  %186 = fadd double %185, 0x3F910D70935F8B41, !dbg !928
  tail call void @llvm.dbg.value(metadata double %186, metadata !792, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !890
  %187 = tail call double @llvm.fabs.f64(double %186), !dbg !929
  %188 = fmul double %187, 0x3CB0000000000000, !dbg !930
  %189 = fadd double %188, 1.100000e-18, !dbg !931
  tail call void @llvm.dbg.value(metadata double %189, metadata !792, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !890
  %190 = fadd double %155, 1.125000e+00, !dbg !932
  %191 = fadd double %186, 6.250000e-01, !dbg !933
  %192 = fmul double %191, %0, !dbg !934
  %193 = fadd double %190, %192, !dbg !935
  store double %193, ptr %2, align 8, !dbg !936, !tbaa !222
  %194 = fmul double %189, %0, !dbg !937
  %195 = tail call double @llvm.fabs.f64(double %194), !dbg !938
  %196 = fadd double %158, %195, !dbg !939
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !940
  %198 = tail call double @llvm.fabs.f64(double %193), !dbg !941
  %199 = fmul double %198, 0x3CB0000000000000, !dbg !942
  %200 = fadd double %199, %196, !dbg !943
  store double %200, ptr %197, align 8, !dbg !943, !tbaa !228
  br label %224

201:                                              ; preds = %111
  %202 = tail call double @sqrt(double noundef %0) #8, !dbg !944
  %203 = fmul double %113, %202, !dbg !945
  %204 = fdiv double %203, 3.000000e+00, !dbg !946
  tail call void @llvm.dbg.value(metadata double %204, metadata !793, metadata !DIExpression()), !dbg !947
  %205 = tail call double @exp(double noundef %204) #8, !dbg !948
  tail call void @llvm.dbg.value(metadata double %205, metadata !795, metadata !DIExpression()), !dbg !947
  %206 = fcmp ogt double %204, 0x40862642FEFA39EF, !dbg !949
  br i1 %206, label %207, label %209, !dbg !950

207:                                              ; preds = %201
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !951, !tbaa !222
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !951
  store double 0x7FF0000000000000, ptr %208, align 8, !dbg !951, !tbaa !228
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 780, i32 noundef 16) #8, !dbg !954
  br label %224, !dbg !954

209:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !956
  call fastcc void @airy_bie(double noundef %0, i32 noundef %1, ptr noundef nonnull %7), !dbg !957
  tail call void @llvm.dbg.value(metadata i32 0, metadata !799, metadata !DIExpression()), !dbg !805
  %210 = load double, ptr %7, align 8, !dbg !958, !tbaa !222
  %211 = fmul double %205, %210, !dbg !959
  store double %211, ptr %2, align 8, !dbg !960, !tbaa !222
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !961
  %213 = load double, ptr %212, align 8, !dbg !961, !tbaa !228
  %214 = fmul double %205, %213, !dbg !962
  %215 = fmul double %204, 1.500000e+00, !dbg !963
  %216 = fmul double %211, 0x3CB0000000000000, !dbg !964
  %217 = fmul double %215, %216, !dbg !965
  %218 = tail call double @llvm.fabs.f64(double %217), !dbg !966
  %219 = fadd double %214, %218, !dbg !967
  %220 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !968
  %221 = tail call double @llvm.fabs.f64(double %211), !dbg !969
  %222 = fmul double %221, 0x3CB0000000000000, !dbg !970
  %223 = fadd double %222, %219, !dbg !971
  store double %223, ptr %220, align 8, !dbg !971, !tbaa !228
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !972
  br label %224

224:                                              ; preds = %207, %209, %9, %35, %114
  %225 = phi i32 [ %32, %9 ], [ 0, %35 ], [ 0, %114 ], [ 16, %207 ], [ 0, %209 ], !dbg !973
  ret i32 %225, !dbg !974
}

declare !dbg !975 i32 @gsl_sf_sin_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @airy_bie(double noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !dbg !976 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !979, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !980, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !981, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata double 0x4021805A83B66B50, metadata !982, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata double 0xC000C02D41DB35A8, metadata !983, metadata !DIExpression()), !dbg !995
  %4 = fcmp olt double %0, 4.000000e+00, !dbg !996
  %5 = tail call double @sqrt(double noundef %0) #8, !dbg !997
  %6 = fmul double %5, %0, !dbg !997
  %7 = tail call double @sqrt(double noundef %5) #8, !dbg !997
  %8 = and i32 %1, 7, !dbg !998
  %9 = icmp eq i32 %8, 0, !dbg !1000
  br i1 %4, label %10, label %64, !dbg !1001

10:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double %5, metadata !984, metadata !DIExpression()), !dbg !1002
  %11 = fdiv double 0x4021805A83B66B50, %6, !dbg !1003
  %12 = fadd double %11, 0xC000C02D41DB35A8, !dbg !1004
  tail call void @llvm.dbg.value(metadata double %12, metadata !987, metadata !DIExpression()), !dbg !1002
  tail call void @llvm.dbg.value(metadata double %7, metadata !988, metadata !DIExpression()), !dbg !1002
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %12, metadata !259, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1005
  %13 = fmul double %12, 2.000000e+00, !dbg !1007
  %14 = fadd double %13, 1.000000e+00, !dbg !1008
  %15 = fadd double %14, -1.000000e+00, !dbg !1009
  %16 = fmul double %15, 5.000000e-01, !dbg !1010
  call void @llvm.dbg.value(metadata double %16, metadata !265, metadata !DIExpression()), !dbg !1005
  %17 = fmul double %16, 2.000000e+00, !dbg !1011
  call void @llvm.dbg.value(metadata double %17, metadata !266, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !1012
  %18 = select i1 %9, i32 23, i32 14, !dbg !1014
  call void @llvm.dbg.value(metadata i32 %18, metadata !267, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i32 %18, metadata !262, metadata !DIExpression()), !dbg !1005
  %19 = zext nneg i32 %18 to i64, !dbg !1015
  %20 = and i64 %19, 3, !dbg !1015
  br label %21, !dbg !1015

21:                                               ; preds = %21, %10
  %22 = phi i64 [ %19, %10 ], [ %31, %21 ]
  %23 = phi double [ 0.000000e+00, %10 ], [ %30, %21 ]
  %24 = phi double [ 0.000000e+00, %10 ], [ %23, %21 ]
  %25 = phi i64 [ 0, %10 ], [ %32, %21 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !262, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %23, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %24, metadata !264, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %23, metadata !268, metadata !DIExpression()), !dbg !1016
  %26 = fmul double %17, %23, !dbg !1017
  %27 = fsub double %26, %24, !dbg !1018
  %28 = getelementptr inbounds double, ptr @data_bip, i64 %22, !dbg !1019
  %29 = load double, ptr %28, align 8, !dbg !1019, !tbaa !370
  %30 = fadd double %27, %29, !dbg !1020
  call void @llvm.dbg.value(metadata double %30, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %23, metadata !264, metadata !DIExpression()), !dbg !1005
  %31 = add nsw i64 %22, -1, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %31, metadata !262, metadata !DIExpression()), !dbg !1005
  %32 = add i64 %25, 1, !dbg !1015
  %33 = icmp eq i64 %32, %20, !dbg !1015
  br i1 %33, label %34, label %21, !dbg !1015, !llvm.loop !1022

34:                                               ; preds = %21, %34
  %35 = phi i64 [ %59, %34 ], [ %31, %21 ]
  %36 = phi double [ %58, %34 ], [ %30, %21 ]
  %37 = phi double [ %52, %34 ], [ %23, %21 ]
  call void @llvm.dbg.value(metadata i64 %35, metadata !262, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %36, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %37, metadata !264, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %36, metadata !268, metadata !DIExpression()), !dbg !1016
  %38 = fmul double %17, %36, !dbg !1017
  %39 = fsub double %38, %37, !dbg !1018
  %40 = getelementptr inbounds double, ptr @data_bip, i64 %35, !dbg !1019
  %41 = load double, ptr %40, align 8, !dbg !1019, !tbaa !370
  %42 = fadd double %39, %41, !dbg !1020
  call void @llvm.dbg.value(metadata double %42, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %36, metadata !264, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i64 %35, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1005
  call void @llvm.dbg.value(metadata i64 %35, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1005
  call void @llvm.dbg.value(metadata double %42, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %36, metadata !264, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %42, metadata !268, metadata !DIExpression()), !dbg !1016
  %43 = fmul double %17, %42, !dbg !1017
  %44 = fsub double %43, %36, !dbg !1018
  %45 = getelementptr double, ptr getelementptr (double, ptr @data_bip, i64 -1), i64 %35, !dbg !1019
  %46 = load double, ptr %45, align 8, !dbg !1019, !tbaa !370
  %47 = fadd double %44, %46, !dbg !1020
  call void @llvm.dbg.value(metadata double %47, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %42, metadata !264, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i64 %35, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1005
  call void @llvm.dbg.value(metadata i64 %35, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1005
  call void @llvm.dbg.value(metadata double %47, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %42, metadata !264, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %47, metadata !268, metadata !DIExpression()), !dbg !1016
  %48 = fmul double %17, %47, !dbg !1017
  %49 = fsub double %48, %42, !dbg !1018
  %50 = getelementptr double, ptr getelementptr (double, ptr @data_bip, i64 -2), i64 %35, !dbg !1019
  %51 = load double, ptr %50, align 8, !dbg !1019, !tbaa !370
  %52 = fadd double %49, %51, !dbg !1020
  call void @llvm.dbg.value(metadata double %52, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %47, metadata !264, metadata !DIExpression()), !dbg !1005
  %53 = add nsw i64 %35, -3, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %53, metadata !262, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i64 %53, metadata !262, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %52, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %47, metadata !264, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %52, metadata !268, metadata !DIExpression()), !dbg !1016
  %54 = fmul double %17, %52, !dbg !1017
  %55 = fsub double %54, %47, !dbg !1018
  %56 = getelementptr inbounds double, ptr @data_bip, i64 %53, !dbg !1019
  %57 = load double, ptr %56, align 8, !dbg !1019, !tbaa !370
  %58 = fadd double %55, %57, !dbg !1020
  call void @llvm.dbg.value(metadata double %58, metadata !263, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata double %52, metadata !264, metadata !DIExpression()), !dbg !1005
  %59 = add nsw i64 %35, -4, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %59, metadata !262, metadata !DIExpression()), !dbg !1005
  %60 = icmp ugt i64 %53, 1, !dbg !1023
  br i1 %60, label %34, label %61, !dbg !1015, !llvm.loop !1024

61:                                               ; preds = %34
  %62 = fmul double %16, %58, !dbg !1026
  %63 = fsub double %62, %52, !dbg !1027
  tail call void @llvm.dbg.value(metadata double %129, metadata !989, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1002
  tail call void @llvm.dbg.value(metadata double %136, metadata !989, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1002
  br label %123, !dbg !1028

64:                                               ; preds = %3
  tail call void @llvm.dbg.value(metadata double %5, metadata !990, metadata !DIExpression()), !dbg !1029
  %65 = fdiv double 1.600000e+01, %6, !dbg !1030
  %66 = fadd double %65, -1.000000e+00, !dbg !1031
  tail call void @llvm.dbg.value(metadata double %66, metadata !992, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata double %7, metadata !993, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %66, metadata !259, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1032
  %67 = fmul double %66, 2.000000e+00, !dbg !1034
  %68 = fadd double %67, 1.000000e+00, !dbg !1035
  %69 = fadd double %68, -1.000000e+00, !dbg !1036
  %70 = fmul double %69, 5.000000e-01, !dbg !1037
  call void @llvm.dbg.value(metadata double %70, metadata !265, metadata !DIExpression()), !dbg !1032
  %71 = fmul double %70, 2.000000e+00, !dbg !1038
  call void @llvm.dbg.value(metadata double %71, metadata !266, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !1039
  %72 = select i1 %9, i32 28, i32 10, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %72, metadata !267, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %72, metadata !262, metadata !DIExpression()), !dbg !1032
  %73 = zext nneg i32 %72 to i64, !dbg !1042
  %74 = and i64 %73, 2, !dbg !1042
  %75 = icmp eq i64 %74, 0, !dbg !1042
  br i1 %75, label %89, label %76, !dbg !1042

76:                                               ; preds = %64, %76
  %77 = phi i64 [ %86, %76 ], [ %73, %64 ]
  %78 = phi double [ %85, %76 ], [ 0.000000e+00, %64 ]
  %79 = phi double [ %78, %76 ], [ 0.000000e+00, %64 ]
  %80 = phi i64 [ %87, %76 ], [ 0, %64 ]
  call void @llvm.dbg.value(metadata i64 %77, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %78, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %79, metadata !264, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %78, metadata !268, metadata !DIExpression()), !dbg !1043
  %81 = fmul double %71, %78, !dbg !1044
  %82 = fsub double %81, %79, !dbg !1045
  %83 = getelementptr inbounds double, ptr @data_bip2, i64 %77, !dbg !1046
  %84 = load double, ptr %83, align 8, !dbg !1046, !tbaa !370
  %85 = fadd double %82, %84, !dbg !1047
  call void @llvm.dbg.value(metadata double %85, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %78, metadata !264, metadata !DIExpression()), !dbg !1032
  %86 = add nsw i64 %77, -1, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %86, metadata !262, metadata !DIExpression()), !dbg !1032
  %87 = add i64 %80, 1, !dbg !1042
  %88 = icmp eq i64 %87, %74, !dbg !1042
  br i1 %88, label %89, label %76, !dbg !1042, !llvm.loop !1049

89:                                               ; preds = %64, %76
  %90 = phi i64 [ %73, %64 ], [ %86, %76 ]
  %91 = phi double [ 0.000000e+00, %64 ], [ %85, %76 ]
  %92 = phi double [ 0.000000e+00, %64 ], [ %78, %76 ]
  br label %93, !dbg !1042

93:                                               ; preds = %93, %89
  %94 = phi i64 [ %90, %89 ], [ %118, %93 ]
  %95 = phi double [ %91, %89 ], [ %117, %93 ]
  %96 = phi double [ %92, %89 ], [ %111, %93 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %95, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %96, metadata !264, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %95, metadata !268, metadata !DIExpression()), !dbg !1043
  %97 = fmul double %71, %95, !dbg !1044
  %98 = fsub double %97, %96, !dbg !1045
  %99 = getelementptr inbounds double, ptr @data_bip2, i64 %94, !dbg !1046
  %100 = load double, ptr %99, align 8, !dbg !1046, !tbaa !370
  %101 = fadd double %98, %100, !dbg !1047
  call void @llvm.dbg.value(metadata double %101, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %95, metadata !264, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 %94, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1032
  call void @llvm.dbg.value(metadata i64 %94, metadata !262, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1032
  call void @llvm.dbg.value(metadata double %101, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %95, metadata !264, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %101, metadata !268, metadata !DIExpression()), !dbg !1043
  %102 = fmul double %71, %101, !dbg !1044
  %103 = fsub double %102, %95, !dbg !1045
  %104 = getelementptr double, ptr getelementptr (double, ptr @data_bip2, i64 -1), i64 %94, !dbg !1046
  %105 = load double, ptr %104, align 8, !dbg !1046, !tbaa !370
  %106 = fadd double %103, %105, !dbg !1047
  call void @llvm.dbg.value(metadata double %106, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %101, metadata !264, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 %94, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1032
  call void @llvm.dbg.value(metadata i64 %94, metadata !262, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1032
  call void @llvm.dbg.value(metadata double %106, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %101, metadata !264, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %106, metadata !268, metadata !DIExpression()), !dbg !1043
  %107 = fmul double %71, %106, !dbg !1044
  %108 = fsub double %107, %101, !dbg !1045
  %109 = getelementptr double, ptr getelementptr (double, ptr @data_bip2, i64 -2), i64 %94, !dbg !1046
  %110 = load double, ptr %109, align 8, !dbg !1046, !tbaa !370
  %111 = fadd double %108, %110, !dbg !1047
  call void @llvm.dbg.value(metadata double %111, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %106, metadata !264, metadata !DIExpression()), !dbg !1032
  %112 = add nsw i64 %94, -3, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %112, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i64 %112, metadata !262, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %111, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %106, metadata !264, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %111, metadata !268, metadata !DIExpression()), !dbg !1043
  %113 = fmul double %71, %111, !dbg !1044
  %114 = fsub double %113, %106, !dbg !1045
  %115 = getelementptr inbounds double, ptr @data_bip2, i64 %112, !dbg !1046
  %116 = load double, ptr %115, align 8, !dbg !1046, !tbaa !370
  %117 = fadd double %114, %116, !dbg !1047
  call void @llvm.dbg.value(metadata double %117, metadata !263, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata double %111, metadata !264, metadata !DIExpression()), !dbg !1032
  %118 = add nsw i64 %94, -4, !dbg !1048
  call void @llvm.dbg.value(metadata i64 %118, metadata !262, metadata !DIExpression()), !dbg !1032
  %119 = icmp ugt i64 %112, 1, !dbg !1050
  br i1 %119, label %93, label %120, !dbg !1042, !llvm.loop !1051

120:                                              ; preds = %93
  %121 = fmul double %70, %117, !dbg !1053
  %122 = fsub double %121, %111, !dbg !1054
  tail call void @llvm.dbg.value(metadata double %129, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1029
  tail call void @llvm.dbg.value(metadata double %136, metadata !994, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1029
  br label %123

123:                                              ; preds = %120, %61
  %124 = phi ptr [ @data_bip2, %120 ], [ @data_bip, %61 ]
  %125 = phi double [ %122, %120 ], [ %63, %61 ]
  %126 = phi i32 [ %72, %120 ], [ %18, %61 ]
  %127 = load double, ptr %124, align 16, !dbg !1055, !tbaa !370
  %128 = fmul double %127, 5.000000e-01, !dbg !1056
  %129 = fadd double %125, %128, !dbg !1057
  %130 = tail call double @llvm.fabs.f64(double %129), !dbg !1058
  %131 = fmul double %130, 0x3CB0000000000000, !dbg !1059
  %132 = zext nneg i32 %126 to i64, !dbg !1060
  %133 = getelementptr inbounds double, ptr %124, i64 %132, !dbg !1060
  %134 = load double, ptr %133, align 8, !dbg !1060, !tbaa !370
  %135 = tail call double @llvm.fabs.f64(double %134), !dbg !1061
  %136 = fadd double %135, %131, !dbg !1062
  %137 = fadd double %129, 6.250000e-01, !dbg !997
  %138 = fdiv double %137, %7, !dbg !997
  store double %138, ptr %2, align 8, !dbg !997, !tbaa !222
  %139 = fdiv double %136, %7, !dbg !997
  %140 = tail call double @llvm.fabs.f64(double %138), !dbg !997
  %141 = fmul double %140, 0x3CB0000000000000, !dbg !997
  %142 = fadd double %139, %141, !dbg !997
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !997
  store double %142, ptr %143, align 8, !dbg !997, !tbaa !228
  ret void, !dbg !1063
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_airy_Bi_scaled_e(double noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !1064 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1091
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1069, metadata !DIExpression(), metadata !1091, metadata ptr %4, metadata !DIExpression()), !dbg !1092
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1093
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1072, metadata !DIExpression(), metadata !1093, metadata ptr %5, metadata !DIExpression()), !dbg !1092
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1094
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1073, metadata !DIExpression(), metadata !1094, metadata ptr %6, metadata !DIExpression()), !dbg !1092
  tail call void @llvm.dbg.value(metadata double %0, metadata !1066, metadata !DIExpression()), !dbg !1095
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1067, metadata !DIExpression()), !dbg !1095
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1068, metadata !DIExpression()), !dbg !1095
  %7 = fcmp olt double %0, -1.000000e+00, !dbg !1096
  br i1 %7, label %8, label %32, !dbg !1097

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !1098
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1099
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1100
  %9 = call fastcc i32 @airy_mod_phase(double noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5), !dbg !1101, !range !220
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1074, metadata !DIExpression()), !dbg !1092
  %10 = load double, ptr %5, align 8, !dbg !1102, !tbaa !222
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1103
  %12 = load double, ptr %11, align 8, !dbg !1103, !tbaa !228
  %13 = call i32 @gsl_sf_sin_err_e(double noundef %10, double noundef %12, ptr noundef nonnull %6) #8, !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !1075, metadata !DIExpression()), !dbg !1092
  %14 = load double, ptr %4, align 8, !dbg !1105, !tbaa !222
  %15 = load double, ptr %6, align 8, !dbg !1106, !tbaa !222
  %16 = fmul double %14, %15, !dbg !1107
  store double %16, ptr %2, align 8, !dbg !1108, !tbaa !222
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1109
  %18 = load double, ptr %17, align 8, !dbg !1109, !tbaa !228
  %19 = fmul double %14, %18, !dbg !1110
  %20 = call double @llvm.fabs.f64(double %19), !dbg !1111
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1112
  %22 = load double, ptr %21, align 8, !dbg !1112, !tbaa !228
  %23 = fmul double %15, %22, !dbg !1113
  %24 = call double @llvm.fabs.f64(double %23), !dbg !1114
  %25 = fadd double %20, %24, !dbg !1115
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1116
  %27 = call double @llvm.fabs.f64(double %16), !dbg !1117
  %28 = fmul double %27, 0x3CB0000000000000, !dbg !1118
  %29 = fadd double %28, %25, !dbg !1119
  store double %29, ptr %26, align 8, !dbg !1119, !tbaa !228
  %30 = icmp eq i32 %9, 0, !dbg !1120
  %31 = select i1 %30, i32 %13, i32 1, !dbg !1120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !1121
  br label %215

32:                                               ; preds = %3
  %33 = fcmp olt double %0, 1.000000e+00, !dbg !1122
  br i1 %33, label %34, label %119, !dbg !1123

34:                                               ; preds = %32
  %35 = fmul double %0, %0, !dbg !1124
  %36 = fmul double %35, %0, !dbg !1125
  tail call void @llvm.dbg.value(metadata double %36, metadata !1076, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %36, metadata !259, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata i32 8, metadata !267, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 8, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !1127
  tail call void @llvm.dbg.value(metadata double poison, metadata !1079, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1126
  tail call void @llvm.dbg.value(metadata double poison, metadata !1079, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1126
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %36, metadata !259, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i32 7, metadata !267, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i32 7, metadata !262, metadata !DIExpression()), !dbg !1132
  %37 = fmul double %36, 2.000000e+00, !dbg !1136
  %38 = fadd double %37, 1.000000e+00, !dbg !1137
  %39 = fadd double %38, -1.000000e+00, !dbg !1138
  %40 = fmul double %39, 5.000000e-01, !dbg !1139
  call void @llvm.dbg.value(metadata double %40, metadata !265, metadata !DIExpression()), !dbg !1132
  %41 = fmul double %40, 2.000000e+00, !dbg !1140
  call void @llvm.dbg.value(metadata double %41, metadata !266, metadata !DIExpression()), !dbg !1132
  %42 = fadd double %37, 1.000000e+00, !dbg !1141
  %43 = fadd double %42, -1.000000e+00, !dbg !1142
  %44 = fmul double %43, 5.000000e-01, !dbg !1143
  call void @llvm.dbg.value(metadata double %44, metadata !265, metadata !DIExpression()), !dbg !1127
  %45 = fmul double %44, 2.000000e+00, !dbg !1144
  call void @llvm.dbg.value(metadata double %45, metadata !266, metadata !DIExpression()), !dbg !1127
  %46 = fmul double %45, 0.000000e+00, !dbg !1145
  %47 = fadd double %46, 1.800000e-19, !dbg !1146
  call void @llvm.dbg.value(metadata double %47, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %47, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double %47, metadata !264, metadata !DIExpression()), !dbg !1127
  %48 = fmul double %45, %47, !dbg !1145
  %49 = fadd double %48, 2.081000e-16, !dbg !1146
  call void @llvm.dbg.value(metadata double %49, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %49, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double %49, metadata !264, metadata !DIExpression()), !dbg !1127
  %50 = fmul double %45, %49, !dbg !1145
  %51 = fsub double %50, %47, !dbg !1147
  %52 = fadd double %51, 0x3D489A10BD02D422, !dbg !1146
  call void @llvm.dbg.value(metadata double %52, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %52, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double %52, metadata !264, metadata !DIExpression()), !dbg !1127
  %53 = fmul double %45, %52, !dbg !1145
  %54 = fsub double %53, %49, !dbg !1147
  %55 = fadd double %54, 0x3DDD6831AB093FE3, !dbg !1146
  call void @llvm.dbg.value(metadata double %55, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %55, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double %55, metadata !264, metadata !DIExpression()), !dbg !1127
  %56 = fmul double %45, %55, !dbg !1145
  %57 = fsub double %56, %52, !dbg !1147
  %58 = fadd double %57, 0x3E681F881E9A9EB8, !dbg !1146
  call void @llvm.dbg.value(metadata double %58, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %58, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double %58, metadata !264, metadata !DIExpression()), !dbg !1127
  %59 = fmul double %45, %58, !dbg !1145
  %60 = fsub double %59, %55, !dbg !1147
  %61 = fadd double %60, 0x3EE8E0A7D5A866A9, !dbg !1146
  call void @llvm.dbg.value(metadata double %61, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %61, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double %61, metadata !264, metadata !DIExpression()), !dbg !1127
  %62 = fmul double %45, %61, !dbg !1145
  %63 = fsub double %62, %58, !dbg !1147
  %64 = fadd double %63, 0x3F5BFD2B174187A5, !dbg !1146
  call void @llvm.dbg.value(metadata double %64, metadata !263, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %64, metadata !268, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata double %64, metadata !264, metadata !DIExpression()), !dbg !1127
  %65 = fmul double %45, %64, !dbg !1145
  %66 = fsub double %65, %61, !dbg !1147
  %67 = fadd double %66, 0x3FBA3EF8872837DE, !dbg !1146
  call void @llvm.dbg.value(metadata double %67, metadata !263, metadata !DIExpression()), !dbg !1127
  %68 = fmul double %44, %67, !dbg !1148
  %69 = fsub double %68, %64, !dbg !1149
  %70 = fadd double %69, 0xBF8121B9D268A2B4, !dbg !1150
  tail call void @llvm.dbg.value(metadata double %70, metadata !1079, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1126
  %71 = tail call double @llvm.fabs.f64(double %70), !dbg !1151
  %72 = fmul double %71, 0x3CB0000000000000, !dbg !1152
  %73 = fadd double %72, 1.800000e-19, !dbg !1153
  tail call void @llvm.dbg.value(metadata double %73, metadata !1079, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1126
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !1154
  %74 = fmul double %41, 0.000000e+00, !dbg !1155
  %75 = fadd double %74, 2.000000e-17, !dbg !1156
  call void @llvm.dbg.value(metadata double %75, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %75, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %75, metadata !268, metadata !DIExpression()), !dbg !1154
  %76 = fmul double %41, %75, !dbg !1155
  %77 = fadd double %76, 2.411000e-14, !dbg !1156
  call void @llvm.dbg.value(metadata double %77, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %75, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %77, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %75, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %77, metadata !268, metadata !DIExpression()), !dbg !1154
  %78 = fmul double %41, %77, !dbg !1155
  %79 = fsub double %78, %75, !dbg !1157
  %80 = fadd double %79, 0x3DB223CB3B000986, !dbg !1156
  call void @llvm.dbg.value(metadata double %80, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %77, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %80, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %77, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %80, metadata !268, metadata !DIExpression()), !dbg !1154
  %81 = fmul double %41, %80, !dbg !1155
  %82 = fsub double %81, %77, !dbg !1157
  %83 = fadd double %82, 0x3E410197375ECA6C, !dbg !1156
  call void @llvm.dbg.value(metadata double %83, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %80, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %83, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %80, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %83, metadata !268, metadata !DIExpression()), !dbg !1154
  %84 = fmul double %41, %83, !dbg !1155
  %85 = fsub double %84, %80, !dbg !1157
  %86 = fadd double %85, 0x3EC4BA04D2B6F238, !dbg !1156
  call void @llvm.dbg.value(metadata double %86, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %83, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %86, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %83, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %86, metadata !268, metadata !DIExpression()), !dbg !1154
  %87 = fmul double %41, %86, !dbg !1155
  %88 = fsub double %87, %83, !dbg !1157
  %89 = fadd double %88, 0x3F3D25DF0F0797C5, !dbg !1156
  call void @llvm.dbg.value(metadata double %89, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %86, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %89, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %86, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %89, metadata !268, metadata !DIExpression()), !dbg !1154
  %90 = fmul double %41, %89, !dbg !1155
  %91 = fsub double %90, %86, !dbg !1157
  %92 = fadd double %91, 0x3FA32179D12FAB23, !dbg !1156
  call void @llvm.dbg.value(metadata double %92, metadata !263, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata double %89, metadata !264, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !1132
  %93 = fmul double %40, %92, !dbg !1158
  %94 = fsub double %93, %89, !dbg !1159
  %95 = fadd double %94, 0x3F870162B87813A5, !dbg !1160
  tail call void @llvm.dbg.value(metadata double %95, metadata !1080, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1126
  %96 = tail call double @llvm.fabs.f64(double %95), !dbg !1161
  %97 = fmul double %96, 0x3CB0000000000000, !dbg !1162
  %98 = fadd double %97, 2.000000e-17, !dbg !1163
  tail call void @llvm.dbg.value(metadata double %98, metadata !1080, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1126
  %99 = fadd double %70, 6.250000e-01, !dbg !1164
  %100 = fadd double %95, 4.375000e-01, !dbg !1165
  %101 = fmul double %100, %0, !dbg !1166
  %102 = fadd double %99, %101, !dbg !1167
  store double %102, ptr %2, align 8, !dbg !1168, !tbaa !222
  %103 = fmul double %98, %0, !dbg !1169
  %104 = tail call double @llvm.fabs.f64(double %103), !dbg !1170
  %105 = fadd double %73, %104, !dbg !1171
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1172
  %107 = tail call double @llvm.fabs.f64(double %102), !dbg !1173
  %108 = fmul double %107, 0x3CB0000000000000, !dbg !1174
  %109 = fadd double %108, %105, !dbg !1175
  store double %109, ptr %106, align 8, !dbg !1175, !tbaa !228
  %110 = fcmp ogt double %0, 0.000000e+00, !dbg !1176
  br i1 %110, label %111, label %215, !dbg !1177

111:                                              ; preds = %34
  %112 = tail call double @sqrt(double noundef %36) #8, !dbg !1178
  %113 = fmul double %112, 0xBFE5555555555555, !dbg !1179
  %114 = tail call double @exp(double noundef %113) #8, !dbg !1180
  tail call void @llvm.dbg.value(metadata double %114, metadata !1081, metadata !DIExpression()), !dbg !1181
  %115 = load double, ptr %2, align 8, !dbg !1182, !tbaa !222
  %116 = fmul double %114, %115, !dbg !1182
  store double %116, ptr %2, align 8, !dbg !1182, !tbaa !222
  %117 = load double, ptr %106, align 8, !dbg !1183, !tbaa !228
  %118 = fmul double %114, %117, !dbg !1183
  store double %118, ptr %106, align 8, !dbg !1183, !tbaa !228
  br label %215, !dbg !1184

119:                                              ; preds = %32
  %120 = fcmp ugt double %0, 2.000000e+00, !dbg !1185
  br i1 %120, label %214, label %121, !dbg !1186

121:                                              ; preds = %119
  %122 = fmul double %0, %0, !dbg !1187
  %123 = fmul double %122, %0, !dbg !1188
  tail call void @llvm.dbg.value(metadata double %123, metadata !1084, metadata !DIExpression()), !dbg !1189
  tail call void @llvm.dbg.value(metadata double poison, metadata !1087, metadata !DIExpression()), !dbg !1189
  %124 = tail call double @sqrt(double noundef %123) #8, !dbg !1190
  %125 = fmul double %124, 0xBFE5555555555555, !dbg !1191
  %126 = tail call double @exp(double noundef %125) #8, !dbg !1192
  tail call void @llvm.dbg.value(metadata double %126, metadata !1088, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i32 9, metadata !267, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i32 9, metadata !262, metadata !DIExpression()), !dbg !1193
  tail call void @llvm.dbg.value(metadata double poison, metadata !1087, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 9, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double poison, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double poison, metadata !264, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !1193
  tail call void @llvm.dbg.value(metadata double poison, metadata !1089, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1189
  tail call void @llvm.dbg.value(metadata double poison, metadata !1089, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1189
  call void @llvm.dbg.value(metadata !250, metadata !251, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double poison, metadata !259, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i32 %1, metadata !260, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata ptr undef, metadata !261, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double poison, metadata !265, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double poison, metadata !266, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i32 %1, metadata !274, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i32 9, metadata !267, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i32 9, metadata !262, metadata !DIExpression()), !dbg !1198
  %127 = fmul double %123, 2.000000e+00, !dbg !1202
  %128 = fadd double %127, -9.000000e+00, !dbg !1203
  %129 = fdiv double %128, 7.000000e+00, !dbg !1204
  tail call void @llvm.dbg.value(metadata double %129, metadata !1087, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata double %129, metadata !259, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %129, metadata !259, metadata !DIExpression()), !dbg !1198
  %130 = fmul double %129, 2.000000e+00, !dbg !1205
  %131 = fadd double %130, 1.000000e+00, !dbg !1206
  %132 = fadd double %131, -1.000000e+00, !dbg !1207
  %133 = fmul double %132, 5.000000e-01, !dbg !1208
  call void @llvm.dbg.value(metadata double %133, metadata !265, metadata !DIExpression()), !dbg !1198
  %134 = fmul double %133, 2.000000e+00, !dbg !1209
  call void @llvm.dbg.value(metadata double %134, metadata !266, metadata !DIExpression()), !dbg !1198
  %135 = fadd double %130, 1.000000e+00, !dbg !1210
  %136 = fadd double %135, -1.000000e+00, !dbg !1211
  %137 = fmul double %136, 5.000000e-01, !dbg !1212
  call void @llvm.dbg.value(metadata double %137, metadata !265, metadata !DIExpression()), !dbg !1193
  %138 = fmul double %137, 2.000000e+00, !dbg !1213
  call void @llvm.dbg.value(metadata double %138, metadata !266, metadata !DIExpression()), !dbg !1193
  %139 = fmul double %138, 0.000000e+00, !dbg !1214
  %140 = fadd double %139, 1.110000e-17, !dbg !1215
  call void @llvm.dbg.value(metadata double %140, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %140, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double %140, metadata !264, metadata !DIExpression()), !dbg !1193
  %141 = fmul double %138, %140, !dbg !1214
  %142 = fadd double %141, 4.496200e-15, !dbg !1215
  call void @llvm.dbg.value(metadata double %142, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %142, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double %142, metadata !264, metadata !DIExpression()), !dbg !1193
  %143 = fmul double %138, %142, !dbg !1214
  %144 = fsub double %143, %140, !dbg !1216
  %145 = fadd double %144, 0x3D79232729612F79, !dbg !1215
  call void @llvm.dbg.value(metadata double %145, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %145, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double %145, metadata !264, metadata !DIExpression()), !dbg !1193
  %146 = fmul double %138, %145, !dbg !1214
  %147 = fsub double %146, %142, !dbg !1216
  %148 = fadd double %147, 0x3DF7CBBDB5EAF10A, !dbg !1215
  call void @llvm.dbg.value(metadata double %148, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %148, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double %148, metadata !264, metadata !DIExpression()), !dbg !1193
  %149 = fmul double %138, %148, !dbg !1214
  %150 = fsub double %149, %145, !dbg !1216
  %151 = fadd double %150, 0x3E7077AAC00260F6, !dbg !1215
  call void @llvm.dbg.value(metadata double %151, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %151, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double %151, metadata !264, metadata !DIExpression()), !dbg !1193
  %152 = fmul double %138, %151, !dbg !1214
  %153 = fsub double %152, %148, !dbg !1216
  %154 = fadd double %153, 0x3EDF74CFF88B3AF0, !dbg !1215
  call void @llvm.dbg.value(metadata double %154, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %154, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double %154, metadata !264, metadata !DIExpression()), !dbg !1193
  %155 = fmul double %138, %154, !dbg !1214
  %156 = fsub double %155, %151, !dbg !1216
  %157 = fadd double %156, 0x3F4312C07E6D492C, !dbg !1215
  call void @llvm.dbg.value(metadata double %157, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %157, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double %157, metadata !264, metadata !DIExpression()), !dbg !1193
  %158 = fmul double %138, %157, !dbg !1214
  %159 = fsub double %158, %154, !dbg !1216
  %160 = fadd double %159, 0x3F99C249B2C6A9FD, !dbg !1215
  call void @llvm.dbg.value(metadata double %160, metadata !263, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %160, metadata !268, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata double %160, metadata !264, metadata !DIExpression()), !dbg !1193
  %161 = fmul double %138, %160, !dbg !1214
  %162 = fsub double %161, %157, !dbg !1216
  %163 = fadd double %162, 0x3FDEA1CAA8BE19EF, !dbg !1215
  call void @llvm.dbg.value(metadata double %163, metadata !263, metadata !DIExpression()), !dbg !1193
  %164 = fmul double %137, %163, !dbg !1217
  %165 = fsub double %164, %160, !dbg !1218
  %166 = fadd double %165, 0x3FA98F7D53D84138, !dbg !1219
  tail call void @llvm.dbg.value(metadata double %166, metadata !1089, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1189
  %167 = tail call double @llvm.fabs.f64(double %166), !dbg !1220
  %168 = fmul double %167, 0x3CB0000000000000, !dbg !1221
  %169 = fadd double %168, 1.110000e-17, !dbg !1222
  tail call void @llvm.dbg.value(metadata double %169, metadata !1089, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1189
  call void @llvm.dbg.value(metadata i64 9, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !268, metadata !DIExpression()), !dbg !1223
  %170 = fmul double %134, 0.000000e+00, !dbg !1224
  %171 = fadd double %170, 1.100000e-18, !dbg !1225
  call void @llvm.dbg.value(metadata double %171, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 8, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %171, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %171, metadata !268, metadata !DIExpression()), !dbg !1223
  %172 = fmul double %134, %171, !dbg !1224
  %173 = fadd double %172, 5.167000e-16, !dbg !1225
  call void @llvm.dbg.value(metadata double %173, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %171, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 7, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %173, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %171, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %173, metadata !268, metadata !DIExpression()), !dbg !1223
  %174 = fmul double %134, %173, !dbg !1224
  %175 = fsub double %174, %171, !dbg !1226
  %176 = fadd double %175, 0x3D491851EC9BC775, !dbg !1225
  call void @llvm.dbg.value(metadata double %176, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %173, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 6, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %176, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %173, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %176, metadata !268, metadata !DIExpression()), !dbg !1223
  %177 = fmul double %134, %176, !dbg !1224
  %178 = fsub double %177, %173, !dbg !1226
  %179 = fadd double %178, 0x3DCA171F5386423D, !dbg !1225
  call void @llvm.dbg.value(metadata double %179, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %176, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 5, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %179, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %176, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %179, metadata !268, metadata !DIExpression()), !dbg !1223
  %180 = fmul double %134, %179, !dbg !1224
  %181 = fsub double %180, %176, !dbg !1226
  %182 = fadd double %181, 0x3E44217AF2B8D920, !dbg !1225
  call void @llvm.dbg.value(metadata double %182, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %179, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 4, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %182, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %179, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %182, metadata !268, metadata !DIExpression()), !dbg !1223
  %183 = fmul double %134, %182, !dbg !1224
  %184 = fsub double %183, %179, !dbg !1226
  %185 = fadd double %184, 0x3EB5E2EEF2F3371D, !dbg !1225
  call void @llvm.dbg.value(metadata double %185, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %182, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 3, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %185, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %182, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %185, metadata !268, metadata !DIExpression()), !dbg !1223
  %186 = fmul double %134, %185, !dbg !1224
  %187 = fsub double %186, %182, !dbg !1226
  %188 = fadd double %187, 0x3F1F23E4822735E6, !dbg !1225
  call void @llvm.dbg.value(metadata double %188, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %185, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 2, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %188, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %185, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %188, metadata !268, metadata !DIExpression()), !dbg !1223
  %189 = fmul double %134, %188, !dbg !1224
  %190 = fsub double %189, %185, !dbg !1226
  %191 = fadd double %190, 0x3F79E1F59BCEBE7A, !dbg !1225
  call void @llvm.dbg.value(metadata double %191, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %188, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 1, metadata !262, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %191, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %188, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %191, metadata !268, metadata !DIExpression()), !dbg !1223
  %192 = fmul double %134, %191, !dbg !1224
  %193 = fsub double %192, %188, !dbg !1226
  %194 = fadd double %193, 0x3FC4A5C7C5BFB00C, !dbg !1225
  call void @llvm.dbg.value(metadata double %194, metadata !263, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata double %191, metadata !264, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata i64 0, metadata !262, metadata !DIExpression()), !dbg !1198
  %195 = fmul double %133, %194, !dbg !1227
  %196 = fsub double %195, %191, !dbg !1228
  %197 = fadd double %196, 0x3F910D70935F8B41, !dbg !1229
  tail call void @llvm.dbg.value(metadata double %197, metadata !1090, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1189
  %198 = tail call double @llvm.fabs.f64(double %197), !dbg !1230
  %199 = fmul double %198, 0x3CB0000000000000, !dbg !1231
  %200 = fadd double %199, 1.100000e-18, !dbg !1232
  tail call void @llvm.dbg.value(metadata double %200, metadata !1090, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1189
  %201 = fadd double %166, 1.125000e+00, !dbg !1233
  %202 = fadd double %197, 6.250000e-01, !dbg !1234
  %203 = fmul double %202, %0, !dbg !1235
  %204 = fadd double %201, %203, !dbg !1236
  %205 = fmul double %126, %204, !dbg !1237
  store double %205, ptr %2, align 8, !dbg !1238, !tbaa !222
  %206 = fmul double %200, %0, !dbg !1239
  %207 = tail call double @llvm.fabs.f64(double %206), !dbg !1240
  %208 = fadd double %169, %207, !dbg !1241
  %209 = fmul double %126, %208, !dbg !1242
  %210 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1243
  %211 = tail call double @llvm.fabs.f64(double %205), !dbg !1244
  %212 = fmul double %211, 0x3CB0000000000000, !dbg !1245
  %213 = fadd double %212, %209, !dbg !1246
  store double %213, ptr %210, align 8, !dbg !1246, !tbaa !228
  br label %215

214:                                              ; preds = %119
  tail call fastcc void @airy_bie(double noundef %0, i32 noundef %1, ptr noundef %2), !dbg !1247
  br label %215, !dbg !1249

215:                                              ; preds = %34, %111, %214, %121, %8
  %216 = phi i32 [ %31, %8 ], [ 0, %121 ], [ 0, %214 ], [ 0, %111 ], [ 0, %34 ], !dbg !1250
  ret i32 %216, !dbg !1251
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Ai(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1252 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1260
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1258, metadata !DIExpression(), metadata !1260, metadata ptr %3, metadata !DIExpression()), !dbg !1261
  tail call void @llvm.dbg.value(metadata double %0, metadata !1256, metadata !DIExpression()), !dbg !1261
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1257, metadata !DIExpression()), !dbg !1261
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1262
  %4 = call i32 @gsl_sf_airy_Ai_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1262
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1259, metadata !DIExpression()), !dbg !1261
  %5 = icmp eq i32 %4, 0, !dbg !1263
  br i1 %5, label %7, label %6, !dbg !1262

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 851, i32 noundef %4) #8, !dbg !1265
  br label %7, !dbg !1265

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1262, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1268
  ret double %8, !dbg !1268
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Ai_scaled(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1269 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1275
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1273, metadata !DIExpression(), metadata !1275, metadata ptr %3, metadata !DIExpression()), !dbg !1276
  tail call void @llvm.dbg.value(metadata double %0, metadata !1271, metadata !DIExpression()), !dbg !1276
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1272, metadata !DIExpression()), !dbg !1276
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1277
  %4 = call i32 @gsl_sf_airy_Ai_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1277
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1274, metadata !DIExpression()), !dbg !1276
  %5 = icmp eq i32 %4, 0, !dbg !1278
  br i1 %5, label %7, label %6, !dbg !1277

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 856, i32 noundef %4) #8, !dbg !1280
  br label %7, !dbg !1280

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1277, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1283
  ret double %8, !dbg !1283
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Bi(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1284 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1290
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1288, metadata !DIExpression(), metadata !1290, metadata ptr %3, metadata !DIExpression()), !dbg !1291
  tail call void @llvm.dbg.value(metadata double %0, metadata !1286, metadata !DIExpression()), !dbg !1291
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1287, metadata !DIExpression()), !dbg !1291
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1292
  %4 = call i32 @gsl_sf_airy_Bi_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1292
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1289, metadata !DIExpression()), !dbg !1291
  %5 = icmp eq i32 %4, 0, !dbg !1293
  br i1 %5, label %7, label %6, !dbg !1292

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 861, i32 noundef %4) #8, !dbg !1295
  br label %7, !dbg !1295

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1292, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1298
  ret double %8, !dbg !1298
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_airy_Bi_scaled(double noundef %0, i32 noundef %1) local_unnamed_addr #0 !dbg !1299 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1305
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1303, metadata !DIExpression(), metadata !1305, metadata ptr %3, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %0, metadata !1301, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1302, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !1307
  %4 = call i32 @gsl_sf_airy_Bi_scaled_e(double noundef %0, i32 noundef %1, ptr noundef nonnull %3), !dbg !1307
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1304, metadata !DIExpression()), !dbg !1306
  %5 = icmp eq i32 %4, 0, !dbg !1308
  br i1 %5, label %7, label %6, !dbg !1307

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 866, i32 noundef %4) #8, !dbg !1310
  br label %7, !dbg !1310

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !1307, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !1313
  ret double %8, !dbg !1313
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!240 = !DILocation(line: 670, column: 51, scope: !193)
!241 = !DILocation(line: 670, column: 13, scope: !193)
!242 = !DILocation(line: 671, column: 38, scope: !193)
!243 = !DILocation(line: 671, column: 36, scope: !193)
!244 = !DILocation(line: 671, column: 17, scope: !193)
!245 = !DILocation(line: 672, column: 12, scope: !193)
!246 = !DILocation(line: 673, column: 3, scope: !194)
!247 = !DILocation(line: 674, column: 13, scope: !201)
!248 = !DILocation(line: 674, column: 11, scope: !194)
!249 = !DILocation(line: 0, scope: !200)
!250 = !{}
!251 = !DILocalVariable(name: "cs", arg: 1, scope: !252, file: !253, line: 2, type: !256)
!252 = distinct !DISubprogram(name: "cheb_eval_mode_e", scope: !253, file: !253, line: 2, type: !254, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !258)
!253 = !DIFile(filename: "./cheb_eval_mode.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "1b36305c73b17885740c92e41c9327b0")
!254 = !DISubroutineType(types: !255)
!255 = !{!42, !256, !177, !179, !181}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!258 = !{!251, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268}
!259 = !DILocalVariable(name: "x", arg: 2, scope: !252, file: !253, line: 3, type: !177)
!260 = !DILocalVariable(name: "mode", arg: 3, scope: !252, file: !253, line: 4, type: !179)
!261 = !DILocalVariable(name: "result", arg: 4, scope: !252, file: !253, line: 5, type: !181)
!262 = !DILocalVariable(name: "j", scope: !252, file: !253, line: 7, type: !42)
!263 = !DILocalVariable(name: "d", scope: !252, file: !253, line: 8, type: !90)
!264 = !DILocalVariable(name: "dd", scope: !252, file: !253, line: 9, type: !90)
!265 = !DILocalVariable(name: "y", scope: !252, file: !253, line: 11, type: !90)
!266 = !DILocalVariable(name: "y2", scope: !252, file: !253, line: 12, type: !90)
!267 = !DILocalVariable(name: "eval_order", scope: !252, file: !253, line: 14, type: !42)
!268 = !DILocalVariable(name: "temp", scope: !269, file: !253, line: 22, type: !90)
!269 = distinct !DILexicalBlock(scope: !270, file: !253, line: 21, column: 34)
!270 = distinct !DILexicalBlock(scope: !271, file: !253, line: 21, column: 3)
!271 = distinct !DILexicalBlock(scope: !252, file: !253, line: 21, column: 3)
!272 = !DILocation(line: 0, scope: !252, inlinedAt: !273)
!273 = distinct !DILocation(line: 678, column: 5, scope: !200)
!274 = !DILocalVariable(name: "mt", arg: 1, scope: !275, file: !180, line: 74, type: !179)
!275 = distinct !DISubprogram(name: "GSL_MODE_PREC", scope: !180, file: !180, line: 74, type: !276, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{!80, !179}
!278 = !{!274}
!279 = !DILocation(line: 0, scope: !275, inlinedAt: !280)
!280 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !273)
!281 = distinct !DILexicalBlock(scope: !252, file: !253, line: 16, column: 6)
!282 = !DILocation(line: 0, scope: !269, inlinedAt: !273)
!283 = !DILocation(line: 0, scope: !252, inlinedAt: !284)
!284 = distinct !DILocation(line: 679, column: 5, scope: !200)
!285 = !DILocation(line: 0, scope: !275, inlinedAt: !286)
!286 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !284)
!287 = !DILocation(line: 675, column: 23, scope: !200)
!288 = !DILocation(line: 675, column: 25, scope: !200)
!289 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !273)
!290 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !284)
!291 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !284)
!292 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !284)
!293 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !284)
!294 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !273)
!295 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !273)
!296 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !273)
!297 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !273)
!298 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !273)
!299 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !273)
!300 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !273)
!301 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !273)
!302 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !273)
!303 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !273)
!304 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !273)
!305 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !273)
!306 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !273)
!307 = !DILocation(line: 0, scope: !269, inlinedAt: !284)
!308 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !284)
!309 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !284)
!310 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !284)
!311 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !284)
!312 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !284)
!313 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !284)
!314 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !284)
!315 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !284)
!316 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !284)
!317 = !DILocation(line: 680, column: 53, scope: !200)
!318 = !DILocation(line: 680, column: 46, scope: !200)
!319 = !DILocation(line: 680, column: 43, scope: !200)
!320 = !DILocation(line: 680, column: 26, scope: !200)
!321 = !DILocation(line: 680, column: 18, scope: !200)
!322 = !DILocation(line: 681, column: 42, scope: !200)
!323 = !DILocation(line: 681, column: 36, scope: !200)
!324 = !DILocation(line: 681, column: 34, scope: !200)
!325 = !DILocation(line: 681, column: 13, scope: !200)
!326 = !DILocation(line: 682, column: 38, scope: !200)
!327 = !DILocation(line: 682, column: 36, scope: !200)
!328 = !DILocation(line: 682, column: 17, scope: !200)
!329 = !DILocation(line: 686, column: 22, scope: !205)
!330 = !DILocation(line: 686, column: 20, scope: !205)
!331 = !DILocation(line: 0, scope: !205)
!332 = !DILocation(line: 687, column: 26, scope: !205)
!333 = !DILocation(line: 687, column: 30, scope: !205)
!334 = !DILocation(line: 687, column: 18, scope: !205)
!335 = !DILocalVariable(name: "x", arg: 1, scope: !336, file: !2, line: 615, type: !177)
!336 = distinct !DISubprogram(name: "airy_aie", scope: !2, file: !2, line: 615, type: !337, scopeLine: 616, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{!42, !177, !179, !181}
!339 = !{!335, !340, !341, !342, !343, !344, !345}
!340 = !DILocalVariable(name: "mode", arg: 2, scope: !336, file: !2, line: 615, type: !179)
!341 = !DILocalVariable(name: "result", arg: 3, scope: !336, file: !2, line: 615, type: !181)
!342 = !DILocalVariable(name: "sqx", scope: !336, file: !2, line: 617, type: !90)
!343 = !DILocalVariable(name: "z", scope: !336, file: !2, line: 618, type: !90)
!344 = !DILocalVariable(name: "y", scope: !336, file: !2, line: 619, type: !90)
!345 = !DILocalVariable(name: "result_c", scope: !336, file: !2, line: 620, type: !182)
!346 = !DILocation(line: 0, scope: !336, inlinedAt: !347)
!347 = distinct !DILocation(line: 689, column: 20, scope: !205)
!348 = !DILocation(line: 617, column: 16, scope: !336, inlinedAt: !347)
!349 = !DILocation(line: 618, column: 22, scope: !336, inlinedAt: !347)
!350 = !DILocation(line: 618, column: 19, scope: !336, inlinedAt: !347)
!351 = !DILocation(line: 618, column: 28, scope: !336, inlinedAt: !347)
!352 = !DILocation(line: 619, column: 16, scope: !336, inlinedAt: !347)
!353 = !DILocation(line: 0, scope: !252, inlinedAt: !354)
!354 = distinct !DILocation(line: 621, column: 3, scope: !336, inlinedAt: !347)
!355 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !354)
!356 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !354)
!357 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !354)
!358 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !354)
!359 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !354)
!360 = !DILocation(line: 0, scope: !275, inlinedAt: !361)
!361 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !354)
!362 = !DILocation(line: 75, column: 15, scope: !275, inlinedAt: !361)
!363 = !DILocation(line: 16, column: 26, scope: !281, inlinedAt: !354)
!364 = !DILocation(line: 0, scope: !281, inlinedAt: !354)
!365 = !DILocation(line: 21, column: 3, scope: !271, inlinedAt: !354)
!366 = !DILocation(line: 0, scope: !269, inlinedAt: !354)
!367 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !354)
!368 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !354)
!369 = !DILocation(line: 23, column: 21, scope: !269, inlinedAt: !354)
!370 = !{!224, !224, i64 0}
!371 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !354)
!372 = !DILocation(line: 21, column: 30, scope: !270, inlinedAt: !354)
!373 = distinct !{!373, !374}
!374 = !{!"llvm.loop.unroll.disable"}
!375 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !354)
!376 = distinct !{!376, !365, !377, !378}
!377 = !DILocation(line: 25, column: 3, scope: !271, inlinedAt: !354)
!378 = !{!"llvm.loop.mustprogress"}
!379 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !354)
!380 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !354)
!381 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !354)
!382 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !354)
!383 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !354)
!384 = !DILocation(line: 28, column: 60, scope: !252, inlinedAt: !354)
!385 = !DILocation(line: 28, column: 55, scope: !252, inlinedAt: !354)
!386 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !354)
!387 = !DILocation(line: 622, column: 26, scope: !336, inlinedAt: !347)
!388 = !DILocation(line: 622, column: 41, scope: !336, inlinedAt: !347)
!389 = !DILocation(line: 623, column: 29, scope: !336, inlinedAt: !347)
!390 = !DILocation(line: 623, column: 52, scope: !336, inlinedAt: !347)
!391 = !DILocation(line: 623, column: 50, scope: !336, inlinedAt: !347)
!392 = !DILocation(line: 623, column: 32, scope: !336, inlinedAt: !347)
!393 = !DILocation(line: 690, column: 35, scope: !205)
!394 = !DILocation(line: 690, column: 18, scope: !205)
!395 = !DILocation(line: 691, column: 35, scope: !205)
!396 = !DILocation(line: 691, column: 53, scope: !205)
!397 = !DILocation(line: 691, column: 59, scope: !205)
!398 = !DILocation(line: 691, column: 39, scope: !205)
!399 = !DILocation(line: 691, column: 13, scope: !205)
!400 = !DILocation(line: 692, column: 38, scope: !205)
!401 = !DILocation(line: 692, column: 36, scope: !205)
!402 = !DILocation(line: 692, column: 17, scope: !205)
!403 = !DILocation(line: 693, column: 5, scope: !404)
!404 = distinct !DILexicalBlock(scope: !205, file: !2, line: 693, column: 5)
!405 = !DILocation(line: 693, column: 5, scope: !205)
!406 = !DILocation(line: 693, column: 5, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !2, line: 693, column: 5)
!408 = !DILocation(line: 0, scope: !194)
!409 = !DILocation(line: 696, column: 1, scope: !174)
!410 = distinct !DISubprogram(name: "airy_mod_phase", scope: !2, file: !2, line: 243, type: !411, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !413)
!411 = !DISubroutineType(types: !412)
!412 = !{!42, !177, !179, !181, !181}
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !426}
!414 = !DILocalVariable(name: "x", arg: 1, scope: !410, file: !2, line: 243, type: !177)
!415 = !DILocalVariable(name: "mode", arg: 2, scope: !410, file: !2, line: 243, type: !179)
!416 = !DILocalVariable(name: "mod", arg: 3, scope: !410, file: !2, line: 243, type: !181)
!417 = !DILocalVariable(name: "phase", arg: 4, scope: !410, file: !2, line: 243, type: !181)
!418 = !DILocalVariable(name: "result_m", scope: !410, file: !2, line: 245, type: !182)
!419 = !DILocalVariable(name: "result_p", scope: !410, file: !2, line: 246, type: !182)
!420 = !DILocalVariable(name: "m", scope: !410, file: !2, line: 247, type: !90)
!421 = !DILocalVariable(name: "p", scope: !410, file: !2, line: 247, type: !90)
!422 = !DILocalVariable(name: "sqx", scope: !410, file: !2, line: 248, type: !90)
!423 = !DILocalVariable(name: "z", scope: !424, file: !2, line: 251, type: !90)
!424 = distinct !DILexicalBlock(scope: !425, file: !2, line: 250, column: 16)
!425 = distinct !DILexicalBlock(scope: !410, file: !2, line: 250, column: 6)
!426 = !DILocalVariable(name: "z", scope: !427, file: !2, line: 256, type: !90)
!427 = distinct !DILexicalBlock(scope: !428, file: !2, line: 255, column: 22)
!428 = distinct !DILexicalBlock(scope: !425, file: !2, line: 255, column: 11)
!429 = !DILocation(line: 0, scope: !410)
!430 = !DILocation(line: 250, column: 8, scope: !425)
!431 = !DILocation(line: 250, column: 6, scope: !410)
!432 = !DILocation(line: 251, column: 23, scope: !424)
!433 = !DILocation(line: 251, column: 25, scope: !424)
!434 = !DILocation(line: 251, column: 20, scope: !424)
!435 = !DILocation(line: 251, column: 29, scope: !424)
!436 = !DILocation(line: 0, scope: !424)
!437 = !DILocation(line: 0, scope: !252, inlinedAt: !438)
!438 = distinct !DILocation(line: 252, column: 5, scope: !424)
!439 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !438)
!440 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !438)
!441 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !438)
!442 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !438)
!443 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !438)
!444 = !DILocation(line: 0, scope: !275, inlinedAt: !445)
!445 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !438)
!446 = !DILocation(line: 75, column: 15, scope: !275, inlinedAt: !445)
!447 = !DILocation(line: 16, column: 26, scope: !281, inlinedAt: !438)
!448 = !DILocation(line: 0, scope: !281, inlinedAt: !438)
!449 = !DILocation(line: 21, column: 3, scope: !271, inlinedAt: !438)
!450 = !DILocation(line: 0, scope: !269, inlinedAt: !438)
!451 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !438)
!452 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !438)
!453 = !DILocation(line: 23, column: 21, scope: !269, inlinedAt: !438)
!454 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !438)
!455 = !DILocation(line: 21, column: 30, scope: !270, inlinedAt: !438)
!456 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !438)
!457 = distinct !{!457, !449, !458, !378}
!458 = !DILocation(line: 25, column: 3, scope: !271, inlinedAt: !438)
!459 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !438)
!460 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !438)
!461 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !438)
!462 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !438)
!463 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !438)
!464 = !DILocation(line: 28, column: 60, scope: !252, inlinedAt: !438)
!465 = !DILocation(line: 28, column: 55, scope: !252, inlinedAt: !438)
!466 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !438)
!467 = !DILocation(line: 0, scope: !252, inlinedAt: !468)
!468 = distinct !DILocation(line: 253, column: 5, scope: !424)
!469 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !468)
!470 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !468)
!471 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !468)
!472 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !468)
!473 = !DILocation(line: 0, scope: !275, inlinedAt: !474)
!474 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !468)
!475 = !DILocation(line: 0, scope: !281, inlinedAt: !468)
!476 = !DILocation(line: 21, column: 3, scope: !271, inlinedAt: !468)
!477 = !DILocation(line: 0, scope: !269, inlinedAt: !468)
!478 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !468)
!479 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !468)
!480 = !DILocation(line: 23, column: 21, scope: !269, inlinedAt: !468)
!481 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !468)
!482 = !DILocation(line: 21, column: 30, scope: !270, inlinedAt: !468)
!483 = distinct !{!483, !374}
!484 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !468)
!485 = distinct !{!485, !476, !486, !378}
!486 = !DILocation(line: 25, column: 3, scope: !271, inlinedAt: !468)
!487 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !468)
!488 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !468)
!489 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !468)
!490 = !DILocation(line: 254, column: 3, scope: !424)
!491 = !DILocation(line: 255, column: 13, scope: !428)
!492 = !DILocation(line: 255, column: 11, scope: !425)
!493 = !DILocation(line: 256, column: 24, scope: !427)
!494 = !DILocation(line: 256, column: 26, scope: !427)
!495 = !DILocation(line: 256, column: 21, scope: !427)
!496 = !DILocation(line: 256, column: 30, scope: !427)
!497 = !DILocation(line: 256, column: 36, scope: !427)
!498 = !DILocation(line: 0, scope: !427)
!499 = !DILocation(line: 0, scope: !252, inlinedAt: !500)
!500 = distinct !DILocation(line: 257, column: 5, scope: !427)
!501 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !500)
!502 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !500)
!503 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !500)
!504 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !500)
!505 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !500)
!506 = !DILocation(line: 0, scope: !275, inlinedAt: !507)
!507 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !500)
!508 = !DILocation(line: 75, column: 15, scope: !275, inlinedAt: !507)
!509 = !DILocation(line: 16, column: 26, scope: !281, inlinedAt: !500)
!510 = !DILocation(line: 0, scope: !281, inlinedAt: !500)
!511 = !DILocation(line: 21, column: 3, scope: !271, inlinedAt: !500)
!512 = !DILocation(line: 0, scope: !269, inlinedAt: !500)
!513 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !500)
!514 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !500)
!515 = !DILocation(line: 23, column: 21, scope: !269, inlinedAt: !500)
!516 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !500)
!517 = !DILocation(line: 21, column: 30, scope: !270, inlinedAt: !500)
!518 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !500)
!519 = distinct !{!519, !511, !520, !378}
!520 = !DILocation(line: 25, column: 3, scope: !271, inlinedAt: !500)
!521 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !500)
!522 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !500)
!523 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !500)
!524 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !500)
!525 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !500)
!526 = !DILocation(line: 28, column: 60, scope: !252, inlinedAt: !500)
!527 = !DILocation(line: 28, column: 55, scope: !252, inlinedAt: !500)
!528 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !500)
!529 = !DILocation(line: 0, scope: !252, inlinedAt: !530)
!530 = distinct !DILocation(line: 258, column: 5, scope: !427)
!531 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !530)
!532 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !530)
!533 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !530)
!534 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !530)
!535 = !DILocation(line: 0, scope: !275, inlinedAt: !536)
!536 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !530)
!537 = !DILocation(line: 0, scope: !281, inlinedAt: !530)
!538 = !DILocation(line: 21, column: 3, scope: !271, inlinedAt: !530)
!539 = !DILocation(line: 0, scope: !269, inlinedAt: !530)
!540 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !530)
!541 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !530)
!542 = !DILocation(line: 23, column: 21, scope: !269, inlinedAt: !530)
!543 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !530)
!544 = !DILocation(line: 21, column: 30, scope: !270, inlinedAt: !530)
!545 = distinct !{!545, !374}
!546 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !530)
!547 = distinct !{!547, !538, !548, !378}
!548 = !DILocation(line: 25, column: 3, scope: !271, inlinedAt: !530)
!549 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !530)
!550 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !530)
!551 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !530)
!552 = !DILocation(line: 262, column: 14, scope: !553)
!553 = distinct !DILexicalBlock(scope: !428, file: !2, line: 260, column: 8)
!554 = !DILocation(line: 264, column: 16, scope: !553)
!555 = !DILocation(line: 265, column: 5, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !2, line: 265, column: 5)
!557 = !DILocation(line: 28, column: 15, scope: !252, inlinedAt: !558)
!558 = !DILocation(line: 0, scope: !425)
!559 = !DILocation(line: 27, column: 15, scope: !252, inlinedAt: !558)
!560 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !558)
!561 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !558)
!562 = !DILocation(line: 28, column: 60, scope: !252, inlinedAt: !558)
!563 = !DILocation(line: 28, column: 55, scope: !252, inlinedAt: !558)
!564 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !558)
!565 = !DILocation(line: 268, column: 15, scope: !410)
!566 = !DILocation(line: 269, column: 15, scope: !410)
!567 = !DILocation(line: 271, column: 14, scope: !410)
!568 = !DILocation(line: 271, column: 9, scope: !410)
!569 = !DILocation(line: 273, column: 22, scope: !410)
!570 = !DILocation(line: 273, column: 16, scope: !410)
!571 = !DILocation(line: 273, column: 14, scope: !410)
!572 = !DILocation(line: 274, column: 15, scope: !410)
!573 = !DILocation(line: 274, column: 68, scope: !410)
!574 = !DILocation(line: 274, column: 51, scope: !410)
!575 = !DILocation(line: 274, column: 49, scope: !410)
!576 = !DILocation(line: 274, column: 30, scope: !410)
!577 = !DILocation(line: 274, column: 8, scope: !410)
!578 = !DILocation(line: 274, column: 13, scope: !410)
!579 = !DILocation(line: 275, column: 26, scope: !410)
!580 = !DILocation(line: 275, column: 31, scope: !410)
!581 = !DILocation(line: 275, column: 23, scope: !410)
!582 = !DILocation(line: 275, column: 14, scope: !410)
!583 = !DILocation(line: 276, column: 16, scope: !410)
!584 = !DILocation(line: 276, column: 71, scope: !410)
!585 = !DILocation(line: 276, column: 54, scope: !410)
!586 = !DILocation(line: 276, column: 52, scope: !410)
!587 = !DILocation(line: 276, column: 33, scope: !410)
!588 = !DILocation(line: 276, column: 10, scope: !410)
!589 = !DILocation(line: 276, column: 14, scope: !410)
!590 = !DILocation(line: 278, column: 3, scope: !410)
!591 = !DILocation(line: 279, column: 1, scope: !410)
!592 = !DISubprogram(name: "gsl_sf_cos_err_e", scope: !593, file: !593, line: 126, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!594 = !DISubroutineType(types: !595)
!595 = !{!42, !177, !177, !181}
!596 = !DISubprogram(name: "sqrt", scope: !597, file: !597, line: 143, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!598 = !DISubroutineType(types: !599)
!599 = !{!90, !90}
!600 = !DISubprogram(name: "exp", scope: !597, file: !597, line: 95, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubprogram(name: "gsl_error", scope: !41, file: !41, line: 77, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !604, !604, !42, !42}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!606 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_scaled_e", scope: !2, file: !2, line: 700, type: !337, scopeLine: 701, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !607)
!607 = !{!608, !609, !610, !611, !614, !615, !616, !617, !618, !621, !622, !623}
!608 = !DILocalVariable(name: "x", arg: 1, scope: !606, file: !2, line: 700, type: !177)
!609 = !DILocalVariable(name: "mode", arg: 2, scope: !606, file: !2, line: 700, type: !179)
!610 = !DILocalVariable(name: "result", arg: 3, scope: !606, file: !2, line: 700, type: !181)
!611 = !DILocalVariable(name: "mod", scope: !612, file: !2, line: 705, type: !182)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 704, column: 16)
!613 = distinct !DILexicalBlock(scope: !606, file: !2, line: 704, column: 6)
!614 = !DILocalVariable(name: "theta", scope: !612, file: !2, line: 706, type: !182)
!615 = !DILocalVariable(name: "cos_result", scope: !612, file: !2, line: 707, type: !182)
!616 = !DILocalVariable(name: "stat_mp", scope: !612, file: !2, line: 708, type: !42)
!617 = !DILocalVariable(name: "stat_cos", scope: !612, file: !2, line: 709, type: !42)
!618 = !DILocalVariable(name: "z", scope: !619, file: !2, line: 716, type: !177)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 715, column: 21)
!620 = distinct !DILexicalBlock(scope: !613, file: !2, line: 715, column: 11)
!621 = !DILocalVariable(name: "result_c0", scope: !619, file: !2, line: 717, type: !182)
!622 = !DILocalVariable(name: "result_c1", scope: !619, file: !2, line: 718, type: !182)
!623 = !DILocalVariable(name: "scale", scope: !624, file: !2, line: 726, type: !177)
!624 = distinct !DILexicalBlock(scope: !625, file: !2, line: 725, column: 17)
!625 = distinct !DILexicalBlock(scope: !619, file: !2, line: 725, column: 8)
!626 = distinct !DIAssignID()
!627 = !DILocation(line: 0, scope: !612)
!628 = distinct !DIAssignID()
!629 = distinct !DIAssignID()
!630 = !DILocation(line: 0, scope: !606)
!631 = !DILocation(line: 704, column: 8, scope: !613)
!632 = !DILocation(line: 704, column: 6, scope: !606)
!633 = !DILocation(line: 705, column: 5, scope: !612)
!634 = !DILocation(line: 706, column: 5, scope: !612)
!635 = !DILocation(line: 707, column: 5, scope: !612)
!636 = !DILocation(line: 708, column: 20, scope: !612)
!637 = !DILocation(line: 709, column: 43, scope: !612)
!638 = !DILocation(line: 709, column: 54, scope: !612)
!639 = !DILocation(line: 709, column: 20, scope: !612)
!640 = !DILocation(line: 710, column: 24, scope: !612)
!641 = !DILocation(line: 710, column: 41, scope: !612)
!642 = !DILocation(line: 710, column: 28, scope: !612)
!643 = !DILocation(line: 710, column: 18, scope: !612)
!644 = !DILocation(line: 711, column: 46, scope: !612)
!645 = !DILocation(line: 711, column: 33, scope: !612)
!646 = !DILocation(line: 711, column: 20, scope: !612)
!647 = !DILocation(line: 711, column: 79, scope: !612)
!648 = !DILocation(line: 711, column: 73, scope: !612)
!649 = !DILocation(line: 711, column: 53, scope: !612)
!650 = !DILocation(line: 711, column: 51, scope: !612)
!651 = !DILocation(line: 711, column: 13, scope: !612)
!652 = !DILocation(line: 712, column: 38, scope: !612)
!653 = !DILocation(line: 712, column: 36, scope: !612)
!654 = !DILocation(line: 712, column: 17, scope: !612)
!655 = !DILocation(line: 713, column: 12, scope: !612)
!656 = !DILocation(line: 714, column: 3, scope: !613)
!657 = !DILocation(line: 715, column: 13, scope: !620)
!658 = !DILocation(line: 715, column: 11, scope: !613)
!659 = !DILocation(line: 716, column: 23, scope: !619)
!660 = !DILocation(line: 716, column: 25, scope: !619)
!661 = !DILocation(line: 0, scope: !619)
!662 = !DILocation(line: 0, scope: !252, inlinedAt: !663)
!663 = distinct !DILocation(line: 719, column: 5, scope: !619)
!664 = !DILocation(line: 0, scope: !275, inlinedAt: !665)
!665 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !663)
!666 = !DILocation(line: 0, scope: !269, inlinedAt: !663)
!667 = !DILocation(line: 0, scope: !252, inlinedAt: !668)
!668 = distinct !DILocation(line: 720, column: 5, scope: !619)
!669 = !DILocation(line: 0, scope: !275, inlinedAt: !670)
!670 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !668)
!671 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !663)
!672 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !668)
!673 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !668)
!674 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !668)
!675 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !668)
!676 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !663)
!677 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !663)
!678 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !663)
!679 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !663)
!680 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !663)
!681 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !663)
!682 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !663)
!683 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !663)
!684 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !663)
!685 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !663)
!686 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !663)
!687 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !663)
!688 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !663)
!689 = !DILocation(line: 0, scope: !269, inlinedAt: !668)
!690 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !668)
!691 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !668)
!692 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !668)
!693 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !668)
!694 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !668)
!695 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !668)
!696 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !668)
!697 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !668)
!698 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !668)
!699 = !DILocation(line: 721, column: 53, scope: !619)
!700 = !DILocation(line: 721, column: 46, scope: !619)
!701 = !DILocation(line: 721, column: 43, scope: !619)
!702 = !DILocation(line: 721, column: 26, scope: !619)
!703 = !DILocation(line: 721, column: 18, scope: !619)
!704 = !DILocation(line: 722, column: 42, scope: !619)
!705 = !DILocation(line: 722, column: 36, scope: !619)
!706 = !DILocation(line: 722, column: 34, scope: !619)
!707 = !DILocation(line: 722, column: 13, scope: !619)
!708 = !DILocation(line: 723, column: 38, scope: !619)
!709 = !DILocation(line: 723, column: 36, scope: !619)
!710 = !DILocation(line: 723, column: 17, scope: !619)
!711 = !DILocation(line: 725, column: 10, scope: !625)
!712 = !DILocation(line: 725, column: 8, scope: !619)
!713 = !DILocation(line: 726, column: 42, scope: !624)
!714 = !DILocation(line: 726, column: 40, scope: !624)
!715 = !DILocation(line: 726, column: 28, scope: !624)
!716 = !DILocation(line: 0, scope: !624)
!717 = !DILocation(line: 727, column: 19, scope: !624)
!718 = !DILocation(line: 728, column: 19, scope: !624)
!719 = !DILocation(line: 729, column: 5, scope: !624)
!720 = !DILocation(line: 0, scope: !336, inlinedAt: !721)
!721 = distinct !DILocation(line: 734, column: 12, scope: !722)
!722 = distinct !DILexicalBlock(scope: !620, file: !2, line: 733, column: 8)
!723 = !DILocation(line: 617, column: 16, scope: !336, inlinedAt: !721)
!724 = !DILocation(line: 618, column: 22, scope: !336, inlinedAt: !721)
!725 = !DILocation(line: 618, column: 19, scope: !336, inlinedAt: !721)
!726 = !DILocation(line: 618, column: 28, scope: !336, inlinedAt: !721)
!727 = !DILocation(line: 619, column: 16, scope: !336, inlinedAt: !721)
!728 = !DILocation(line: 0, scope: !252, inlinedAt: !729)
!729 = distinct !DILocation(line: 621, column: 3, scope: !336, inlinedAt: !721)
!730 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !729)
!731 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !729)
!732 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !729)
!733 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !729)
!734 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !729)
!735 = !DILocation(line: 0, scope: !275, inlinedAt: !736)
!736 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !729)
!737 = !DILocation(line: 75, column: 15, scope: !275, inlinedAt: !736)
!738 = !DILocation(line: 16, column: 26, scope: !281, inlinedAt: !729)
!739 = !DILocation(line: 0, scope: !281, inlinedAt: !729)
!740 = !DILocation(line: 21, column: 3, scope: !271, inlinedAt: !729)
!741 = !DILocation(line: 0, scope: !269, inlinedAt: !729)
!742 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !729)
!743 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !729)
!744 = !DILocation(line: 23, column: 21, scope: !269, inlinedAt: !729)
!745 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !729)
!746 = !DILocation(line: 21, column: 30, scope: !270, inlinedAt: !729)
!747 = distinct !{!747, !374}
!748 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !729)
!749 = distinct !{!749, !740, !750, !378}
!750 = !DILocation(line: 25, column: 3, scope: !271, inlinedAt: !729)
!751 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !729)
!752 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !729)
!753 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !729)
!754 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !729)
!755 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !729)
!756 = !DILocation(line: 28, column: 60, scope: !252, inlinedAt: !729)
!757 = !DILocation(line: 28, column: 55, scope: !252, inlinedAt: !729)
!758 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !729)
!759 = !DILocation(line: 622, column: 26, scope: !336, inlinedAt: !721)
!760 = !DILocation(line: 622, column: 41, scope: !336, inlinedAt: !721)
!761 = !DILocation(line: 622, column: 15, scope: !336, inlinedAt: !721)
!762 = !DILocation(line: 623, column: 29, scope: !336, inlinedAt: !721)
!763 = !DILocation(line: 623, column: 52, scope: !336, inlinedAt: !721)
!764 = !DILocation(line: 623, column: 50, scope: !336, inlinedAt: !721)
!765 = !DILocation(line: 623, column: 32, scope: !336, inlinedAt: !721)
!766 = !DILocation(line: 623, column: 11, scope: !336, inlinedAt: !721)
!767 = !DILocation(line: 623, column: 15, scope: !336, inlinedAt: !721)
!768 = !DILocation(line: 734, column: 5, scope: !722)
!769 = !DILocation(line: 0, scope: !613)
!770 = !DILocation(line: 736, column: 1, scope: !606)
!771 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_e", scope: !2, file: !2, line: 739, type: !337, scopeLine: 740, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !772)
!772 = !{!773, !774, !775, !776, !779, !780, !781, !782, !783, !786, !787, !788, !791, !792, !793, !795, !796, !799}
!773 = !DILocalVariable(name: "x", arg: 1, scope: !771, file: !2, line: 739, type: !177)
!774 = !DILocalVariable(name: "mode", arg: 2, scope: !771, file: !2, line: 739, type: !179)
!775 = !DILocalVariable(name: "result", arg: 3, scope: !771, file: !2, line: 739, type: !181)
!776 = !DILocalVariable(name: "mod", scope: !777, file: !2, line: 743, type: !182)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 742, column: 16)
!778 = distinct !DILexicalBlock(scope: !771, file: !2, line: 742, column: 6)
!779 = !DILocalVariable(name: "theta", scope: !777, file: !2, line: 744, type: !182)
!780 = !DILocalVariable(name: "sin_result", scope: !777, file: !2, line: 745, type: !182)
!781 = !DILocalVariable(name: "stat_mp", scope: !777, file: !2, line: 746, type: !42)
!782 = !DILocalVariable(name: "stat_sin", scope: !777, file: !2, line: 747, type: !42)
!783 = !DILocalVariable(name: "z", scope: !784, file: !2, line: 754, type: !177)
!784 = distinct !DILexicalBlock(scope: !785, file: !2, line: 753, column: 20)
!785 = distinct !DILexicalBlock(scope: !778, file: !2, line: 753, column: 11)
!786 = !DILocalVariable(name: "result_c0", scope: !784, file: !2, line: 755, type: !182)
!787 = !DILocalVariable(name: "result_c1", scope: !784, file: !2, line: 756, type: !182)
!788 = !DILocalVariable(name: "z", scope: !789, file: !2, line: 765, type: !177)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 764, column: 21)
!790 = distinct !DILexicalBlock(scope: !785, file: !2, line: 764, column: 11)
!791 = !DILocalVariable(name: "result_c0", scope: !789, file: !2, line: 766, type: !182)
!792 = !DILocalVariable(name: "result_c1", scope: !789, file: !2, line: 767, type: !182)
!793 = !DILocalVariable(name: "y", scope: !794, file: !2, line: 776, type: !177)
!794 = distinct !DILexicalBlock(scope: !790, file: !2, line: 775, column: 8)
!795 = !DILocalVariable(name: "s", scope: !794, file: !2, line: 777, type: !177)
!796 = !DILocalVariable(name: "result_bie", scope: !797, file: !2, line: 783, type: !182)
!797 = distinct !DILexicalBlock(scope: !798, file: !2, line: 782, column: 10)
!798 = distinct !DILexicalBlock(scope: !794, file: !2, line: 779, column: 8)
!799 = !DILocalVariable(name: "stat_bie", scope: !797, file: !2, line: 784, type: !42)
!800 = distinct !DIAssignID()
!801 = !DILocation(line: 0, scope: !777)
!802 = distinct !DIAssignID()
!803 = distinct !DIAssignID()
!804 = distinct !DIAssignID()
!805 = !DILocation(line: 0, scope: !797)
!806 = !DILocation(line: 0, scope: !771)
!807 = !DILocation(line: 742, column: 8, scope: !778)
!808 = !DILocation(line: 742, column: 6, scope: !771)
!809 = !DILocation(line: 743, column: 5, scope: !777)
!810 = !DILocation(line: 744, column: 5, scope: !777)
!811 = !DILocation(line: 745, column: 5, scope: !777)
!812 = !DILocation(line: 746, column: 20, scope: !777)
!813 = !DILocation(line: 747, column: 43, scope: !777)
!814 = !DILocation(line: 747, column: 54, scope: !777)
!815 = !DILocation(line: 747, column: 20, scope: !777)
!816 = !DILocation(line: 748, column: 24, scope: !777)
!817 = !DILocation(line: 748, column: 41, scope: !777)
!818 = !DILocation(line: 748, column: 28, scope: !777)
!819 = !DILocation(line: 748, column: 18, scope: !777)
!820 = !DILocation(line: 749, column: 46, scope: !777)
!821 = !DILocation(line: 749, column: 33, scope: !777)
!822 = !DILocation(line: 749, column: 20, scope: !777)
!823 = !DILocation(line: 749, column: 79, scope: !777)
!824 = !DILocation(line: 749, column: 73, scope: !777)
!825 = !DILocation(line: 749, column: 53, scope: !777)
!826 = !DILocation(line: 749, column: 51, scope: !777)
!827 = !DILocation(line: 749, column: 13, scope: !777)
!828 = !DILocation(line: 750, column: 38, scope: !777)
!829 = !DILocation(line: 750, column: 36, scope: !777)
!830 = !DILocation(line: 750, column: 17, scope: !777)
!831 = !DILocation(line: 751, column: 12, scope: !777)
!832 = !DILocation(line: 752, column: 3, scope: !778)
!833 = !DILocation(line: 753, column: 13, scope: !785)
!834 = !DILocation(line: 753, column: 11, scope: !778)
!835 = !DILocation(line: 0, scope: !784)
!836 = !DILocation(line: 0, scope: !252, inlinedAt: !837)
!837 = distinct !DILocation(line: 757, column: 5, scope: !784)
!838 = !DILocation(line: 0, scope: !275, inlinedAt: !839)
!839 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !837)
!840 = !DILocation(line: 0, scope: !269, inlinedAt: !837)
!841 = !DILocation(line: 0, scope: !252, inlinedAt: !842)
!842 = distinct !DILocation(line: 758, column: 5, scope: !784)
!843 = !DILocation(line: 0, scope: !275, inlinedAt: !844)
!844 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !842)
!845 = !DILocation(line: 754, column: 23, scope: !784)
!846 = !DILocation(line: 754, column: 25, scope: !784)
!847 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !837)
!848 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !842)
!849 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !842)
!850 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !842)
!851 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !842)
!852 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !837)
!853 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !837)
!854 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !837)
!855 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !837)
!856 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !837)
!857 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !837)
!858 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !837)
!859 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !837)
!860 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !837)
!861 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !837)
!862 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !837)
!863 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !837)
!864 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !837)
!865 = !DILocation(line: 0, scope: !269, inlinedAt: !842)
!866 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !842)
!867 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !842)
!868 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !842)
!869 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !842)
!870 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !842)
!871 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !842)
!872 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !842)
!873 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !842)
!874 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !842)
!875 = !DILocation(line: 759, column: 26, scope: !784)
!876 = !DILocation(line: 759, column: 54, scope: !784)
!877 = !DILocation(line: 759, column: 45, scope: !784)
!878 = !DILocation(line: 759, column: 42, scope: !784)
!879 = !DILocation(line: 759, column: 18, scope: !784)
!880 = !DILocation(line: 760, column: 43, scope: !784)
!881 = !DILocation(line: 760, column: 36, scope: !784)
!882 = !DILocation(line: 760, column: 34, scope: !784)
!883 = !DILocation(line: 760, column: 13, scope: !784)
!884 = !DILocation(line: 761, column: 38, scope: !784)
!885 = !DILocation(line: 761, column: 36, scope: !784)
!886 = !DILocation(line: 761, column: 17, scope: !784)
!887 = !DILocation(line: 764, column: 13, scope: !790)
!888 = !DILocation(line: 0, scope: !790)
!889 = !DILocation(line: 764, column: 11, scope: !785)
!890 = !DILocation(line: 0, scope: !789)
!891 = !DILocation(line: 0, scope: !252, inlinedAt: !892)
!892 = distinct !DILocation(line: 768, column: 5, scope: !789)
!893 = !DILocation(line: 0, scope: !275, inlinedAt: !894)
!894 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !892)
!895 = !DILocation(line: 0, scope: !269, inlinedAt: !892)
!896 = !DILocation(line: 0, scope: !252, inlinedAt: !897)
!897 = distinct !DILocation(line: 769, column: 5, scope: !789)
!898 = !DILocation(line: 0, scope: !275, inlinedAt: !899)
!899 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !897)
!900 = !DILocation(line: 765, column: 28, scope: !789)
!901 = !DILocation(line: 765, column: 30, scope: !789)
!902 = !DILocation(line: 765, column: 33, scope: !789)
!903 = !DILocation(line: 765, column: 39, scope: !789)
!904 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !892)
!905 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !897)
!906 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !897)
!907 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !897)
!908 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !897)
!909 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !892)
!910 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !892)
!911 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !892)
!912 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !892)
!913 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !892)
!914 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !892)
!915 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !892)
!916 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !892)
!917 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !892)
!918 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !892)
!919 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !892)
!920 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !892)
!921 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !892)
!922 = !DILocation(line: 0, scope: !269, inlinedAt: !897)
!923 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !897)
!924 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !897)
!925 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !897)
!926 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !897)
!927 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !897)
!928 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !897)
!929 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !897)
!930 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !897)
!931 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !897)
!932 = !DILocation(line: 770, column: 26, scope: !789)
!933 = !DILocation(line: 770, column: 53, scope: !789)
!934 = !DILocation(line: 770, column: 45, scope: !789)
!935 = !DILocation(line: 770, column: 42, scope: !789)
!936 = !DILocation(line: 770, column: 18, scope: !789)
!937 = !DILocation(line: 771, column: 43, scope: !789)
!938 = !DILocation(line: 771, column: 36, scope: !789)
!939 = !DILocation(line: 771, column: 34, scope: !789)
!940 = !DILocation(line: 771, column: 13, scope: !789)
!941 = !DILocation(line: 772, column: 38, scope: !789)
!942 = !DILocation(line: 772, column: 36, scope: !789)
!943 = !DILocation(line: 772, column: 17, scope: !789)
!944 = !DILocation(line: 776, column: 28, scope: !794)
!945 = !DILocation(line: 776, column: 27, scope: !794)
!946 = !DILocation(line: 776, column: 35, scope: !794)
!947 = !DILocation(line: 0, scope: !794)
!948 = !DILocation(line: 777, column: 22, scope: !794)
!949 = !DILocation(line: 779, column: 10, scope: !798)
!950 = !DILocation(line: 779, column: 8, scope: !794)
!951 = !DILocation(line: 780, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !2, line: 780, column: 7)
!953 = distinct !DILexicalBlock(scope: !798, file: !2, line: 779, column: 35)
!954 = !DILocation(line: 780, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !952, file: !2, line: 780, column: 7)
!956 = !DILocation(line: 783, column: 7, scope: !797)
!957 = !DILocation(line: 784, column: 22, scope: !797)
!958 = !DILocation(line: 785, column: 33, scope: !797)
!959 = !DILocation(line: 785, column: 37, scope: !797)
!960 = !DILocation(line: 785, column: 20, scope: !797)
!961 = !DILocation(line: 786, column: 33, scope: !797)
!962 = !DILocation(line: 786, column: 37, scope: !797)
!963 = !DILocation(line: 786, column: 51, scope: !797)
!964 = !DILocation(line: 786, column: 73, scope: !797)
!965 = !DILocation(line: 786, column: 54, scope: !797)
!966 = !DILocation(line: 786, column: 43, scope: !797)
!967 = !DILocation(line: 786, column: 41, scope: !797)
!968 = !DILocation(line: 786, column: 15, scope: !797)
!969 = !DILocation(line: 787, column: 40, scope: !797)
!970 = !DILocation(line: 787, column: 38, scope: !797)
!971 = !DILocation(line: 787, column: 19, scope: !797)
!972 = !DILocation(line: 789, column: 5, scope: !798)
!973 = !DILocation(line: 0, scope: !778)
!974 = !DILocation(line: 791, column: 1, scope: !771)
!975 = !DISubprogram(name: "gsl_sf_sin_err_e", scope: !593, file: !593, line: 121, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!976 = distinct !DISubprogram(name: "airy_bie", scope: !2, file: !2, line: 628, type: !977, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !978)
!977 = !DISubroutineType(cc: DW_CC_nocall, types: !338)
!978 = !{!979, !980, !981, !982, !983, !984, !987, !988, !989, !990, !992, !993, !994}
!979 = !DILocalVariable(name: "x", arg: 1, scope: !976, file: !2, line: 628, type: !177)
!980 = !DILocalVariable(name: "mode", arg: 2, scope: !976, file: !2, line: 628, type: !179)
!981 = !DILocalVariable(name: "result", arg: 3, scope: !976, file: !2, line: 628, type: !181)
!982 = !DILocalVariable(name: "ATR", scope: !976, file: !2, line: 630, type: !177)
!983 = !DILocalVariable(name: "BTR", scope: !976, file: !2, line: 631, type: !177)
!984 = !DILocalVariable(name: "sqx", scope: !985, file: !2, line: 634, type: !90)
!985 = distinct !DILexicalBlock(scope: !986, file: !2, line: 633, column: 15)
!986 = distinct !DILexicalBlock(scope: !976, file: !2, line: 633, column: 6)
!987 = !DILocalVariable(name: "z", scope: !985, file: !2, line: 635, type: !90)
!988 = !DILocalVariable(name: "y", scope: !985, file: !2, line: 636, type: !90)
!989 = !DILocalVariable(name: "result_c", scope: !985, file: !2, line: 637, type: !182)
!990 = !DILocalVariable(name: "sqx", scope: !991, file: !2, line: 643, type: !90)
!991 = distinct !DILexicalBlock(scope: !986, file: !2, line: 642, column: 8)
!992 = !DILocalVariable(name: "z", scope: !991, file: !2, line: 644, type: !90)
!993 = !DILocalVariable(name: "y", scope: !991, file: !2, line: 645, type: !90)
!994 = !DILocalVariable(name: "result_c", scope: !991, file: !2, line: 646, type: !182)
!995 = !DILocation(line: 0, scope: !976)
!996 = !DILocation(line: 633, column: 8, scope: !986)
!997 = !DILocation(line: 0, scope: !986)
!998 = !DILocation(line: 75, column: 15, scope: !275, inlinedAt: !999)
!999 = !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !997)
!1000 = !DILocation(line: 16, column: 26, scope: !281, inlinedAt: !997)
!1001 = !DILocation(line: 633, column: 6, scope: !976)
!1002 = !DILocation(line: 0, scope: !985)
!1003 = !DILocation(line: 635, column: 21, scope: !985)
!1004 = !DILocation(line: 635, column: 30, scope: !985)
!1005 = !DILocation(line: 0, scope: !252, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 638, column: 5, scope: !985)
!1007 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !1006)
!1008 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !1006)
!1009 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !1006)
!1010 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !1006)
!1011 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !1006)
!1012 = !DILocation(line: 0, scope: !275, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !1006)
!1014 = !DILocation(line: 0, scope: !281, inlinedAt: !1006)
!1015 = !DILocation(line: 21, column: 3, scope: !271, inlinedAt: !1006)
!1016 = !DILocation(line: 0, scope: !269, inlinedAt: !1006)
!1017 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !1006)
!1018 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !1006)
!1019 = !DILocation(line: 23, column: 21, scope: !269, inlinedAt: !1006)
!1020 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !1006)
!1021 = !DILocation(line: 21, column: 30, scope: !270, inlinedAt: !1006)
!1022 = distinct !{!1022, !374}
!1023 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !1006)
!1024 = distinct !{!1024, !1015, !1025, !378}
!1025 = !DILocation(line: 25, column: 3, scope: !271, inlinedAt: !1006)
!1026 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !1006)
!1027 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !1006)
!1028 = !DILocation(line: 641, column: 3, scope: !985)
!1029 = !DILocation(line: 0, scope: !991)
!1030 = !DILocation(line: 644, column: 22, scope: !991)
!1031 = !DILocation(line: 644, column: 31, scope: !991)
!1032 = !DILocation(line: 0, scope: !252, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 647, column: 5, scope: !991)
!1034 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !1033)
!1035 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !1033)
!1036 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !1033)
!1037 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !1033)
!1038 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !1033)
!1039 = !DILocation(line: 0, scope: !275, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !1033)
!1041 = !DILocation(line: 0, scope: !281, inlinedAt: !1033)
!1042 = !DILocation(line: 21, column: 3, scope: !271, inlinedAt: !1033)
!1043 = !DILocation(line: 0, scope: !269, inlinedAt: !1033)
!1044 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !1033)
!1045 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !1033)
!1046 = !DILocation(line: 23, column: 21, scope: !269, inlinedAt: !1033)
!1047 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !1033)
!1048 = !DILocation(line: 21, column: 30, scope: !270, inlinedAt: !1033)
!1049 = distinct !{!1049, !374}
!1050 = !DILocation(line: 21, column: 24, scope: !270, inlinedAt: !1033)
!1051 = distinct !{!1051, !1042, !1052, !378}
!1052 = !DILocation(line: 25, column: 3, scope: !271, inlinedAt: !1033)
!1053 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !1033)
!1054 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !1033)
!1055 = !DILocation(line: 27, column: 34, scope: !252, inlinedAt: !997)
!1056 = !DILocation(line: 27, column: 32, scope: !252, inlinedAt: !997)
!1057 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !997)
!1058 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !997)
!1059 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !997)
!1060 = !DILocation(line: 28, column: 60, scope: !252, inlinedAt: !997)
!1061 = !DILocation(line: 28, column: 55, scope: !252, inlinedAt: !997)
!1062 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !997)
!1063 = !DILocation(line: 652, column: 3, scope: !976)
!1064 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_scaled_e", scope: !2, file: !2, line: 795, type: !337, scopeLine: 796, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1072, !1073, !1074, !1075, !1076, !1079, !1080, !1081, !1084, !1087, !1088, !1089, !1090}
!1066 = !DILocalVariable(name: "x", arg: 1, scope: !1064, file: !2, line: 795, type: !177)
!1067 = !DILocalVariable(name: "mode", arg: 2, scope: !1064, file: !2, line: 795, type: !179)
!1068 = !DILocalVariable(name: "result", arg: 3, scope: !1064, file: !2, line: 795, type: !181)
!1069 = !DILocalVariable(name: "mod", scope: !1070, file: !2, line: 800, type: !182)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 799, column: 16)
!1071 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 799, column: 6)
!1072 = !DILocalVariable(name: "theta", scope: !1070, file: !2, line: 801, type: !182)
!1073 = !DILocalVariable(name: "sin_result", scope: !1070, file: !2, line: 802, type: !182)
!1074 = !DILocalVariable(name: "stat_mp", scope: !1070, file: !2, line: 803, type: !42)
!1075 = !DILocalVariable(name: "stat_sin", scope: !1070, file: !2, line: 804, type: !42)
!1076 = !DILocalVariable(name: "z", scope: !1077, file: !2, line: 811, type: !177)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 810, column: 20)
!1078 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 810, column: 11)
!1079 = !DILocalVariable(name: "result_c0", scope: !1077, file: !2, line: 812, type: !182)
!1080 = !DILocalVariable(name: "result_c1", scope: !1077, file: !2, line: 813, type: !182)
!1081 = !DILocalVariable(name: "scale", scope: !1082, file: !2, line: 820, type: !177)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 819, column: 17)
!1083 = distinct !DILexicalBlock(scope: !1077, file: !2, line: 819, column: 8)
!1084 = !DILocalVariable(name: "x3", scope: !1085, file: !2, line: 827, type: !177)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 826, column: 21)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 826, column: 11)
!1087 = !DILocalVariable(name: "z", scope: !1085, file: !2, line: 828, type: !177)
!1088 = !DILocalVariable(name: "s", scope: !1085, file: !2, line: 829, type: !177)
!1089 = !DILocalVariable(name: "result_c0", scope: !1085, file: !2, line: 830, type: !182)
!1090 = !DILocalVariable(name: "result_c1", scope: !1085, file: !2, line: 831, type: !182)
!1091 = distinct !DIAssignID()
!1092 = !DILocation(line: 0, scope: !1070)
!1093 = distinct !DIAssignID()
!1094 = distinct !DIAssignID()
!1095 = !DILocation(line: 0, scope: !1064)
!1096 = !DILocation(line: 799, column: 8, scope: !1071)
!1097 = !DILocation(line: 799, column: 6, scope: !1064)
!1098 = !DILocation(line: 800, column: 5, scope: !1070)
!1099 = !DILocation(line: 801, column: 5, scope: !1070)
!1100 = !DILocation(line: 802, column: 5, scope: !1070)
!1101 = !DILocation(line: 803, column: 20, scope: !1070)
!1102 = !DILocation(line: 804, column: 43, scope: !1070)
!1103 = !DILocation(line: 804, column: 54, scope: !1070)
!1104 = !DILocation(line: 804, column: 20, scope: !1070)
!1105 = !DILocation(line: 805, column: 24, scope: !1070)
!1106 = !DILocation(line: 805, column: 41, scope: !1070)
!1107 = !DILocation(line: 805, column: 28, scope: !1070)
!1108 = !DILocation(line: 805, column: 18, scope: !1070)
!1109 = !DILocation(line: 806, column: 46, scope: !1070)
!1110 = !DILocation(line: 806, column: 33, scope: !1070)
!1111 = !DILocation(line: 806, column: 20, scope: !1070)
!1112 = !DILocation(line: 806, column: 79, scope: !1070)
!1113 = !DILocation(line: 806, column: 73, scope: !1070)
!1114 = !DILocation(line: 806, column: 53, scope: !1070)
!1115 = !DILocation(line: 806, column: 51, scope: !1070)
!1116 = !DILocation(line: 806, column: 13, scope: !1070)
!1117 = !DILocation(line: 807, column: 38, scope: !1070)
!1118 = !DILocation(line: 807, column: 36, scope: !1070)
!1119 = !DILocation(line: 807, column: 17, scope: !1070)
!1120 = !DILocation(line: 808, column: 12, scope: !1070)
!1121 = !DILocation(line: 809, column: 3, scope: !1071)
!1122 = !DILocation(line: 810, column: 13, scope: !1078)
!1123 = !DILocation(line: 810, column: 11, scope: !1071)
!1124 = !DILocation(line: 811, column: 23, scope: !1077)
!1125 = !DILocation(line: 811, column: 25, scope: !1077)
!1126 = !DILocation(line: 0, scope: !1077)
!1127 = !DILocation(line: 0, scope: !252, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 814, column: 5, scope: !1077)
!1129 = !DILocation(line: 0, scope: !275, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !1128)
!1131 = !DILocation(line: 0, scope: !269, inlinedAt: !1128)
!1132 = !DILocation(line: 0, scope: !252, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 815, column: 5, scope: !1077)
!1134 = !DILocation(line: 0, scope: !275, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !1133)
!1136 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !1128)
!1137 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !1133)
!1138 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !1133)
!1139 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !1133)
!1140 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !1133)
!1141 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !1128)
!1142 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !1128)
!1143 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !1128)
!1144 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !1128)
!1145 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !1128)
!1146 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !1128)
!1147 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !1128)
!1148 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !1128)
!1149 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !1128)
!1150 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !1128)
!1151 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !1128)
!1152 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !1128)
!1153 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !1128)
!1154 = !DILocation(line: 0, scope: !269, inlinedAt: !1133)
!1155 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !1133)
!1156 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !1133)
!1157 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !1133)
!1158 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !1133)
!1159 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !1133)
!1160 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !1133)
!1161 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !1133)
!1162 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !1133)
!1163 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !1133)
!1164 = !DILocation(line: 816, column: 26, scope: !1077)
!1165 = !DILocation(line: 816, column: 54, scope: !1077)
!1166 = !DILocation(line: 816, column: 45, scope: !1077)
!1167 = !DILocation(line: 816, column: 42, scope: !1077)
!1168 = !DILocation(line: 816, column: 18, scope: !1077)
!1169 = !DILocation(line: 817, column: 43, scope: !1077)
!1170 = !DILocation(line: 817, column: 36, scope: !1077)
!1171 = !DILocation(line: 817, column: 34, scope: !1077)
!1172 = !DILocation(line: 817, column: 13, scope: !1077)
!1173 = !DILocation(line: 818, column: 38, scope: !1077)
!1174 = !DILocation(line: 818, column: 36, scope: !1077)
!1175 = !DILocation(line: 818, column: 17, scope: !1077)
!1176 = !DILocation(line: 819, column: 10, scope: !1083)
!1177 = !DILocation(line: 819, column: 8, scope: !1077)
!1178 = !DILocation(line: 820, column: 43, scope: !1082)
!1179 = !DILocation(line: 820, column: 41, scope: !1082)
!1180 = !DILocation(line: 820, column: 28, scope: !1082)
!1181 = !DILocation(line: 0, scope: !1082)
!1182 = !DILocation(line: 821, column: 19, scope: !1082)
!1183 = !DILocation(line: 822, column: 19, scope: !1082)
!1184 = !DILocation(line: 823, column: 5, scope: !1082)
!1185 = !DILocation(line: 826, column: 13, scope: !1086)
!1186 = !DILocation(line: 826, column: 11, scope: !1078)
!1187 = !DILocation(line: 827, column: 24, scope: !1085)
!1188 = !DILocation(line: 827, column: 26, scope: !1085)
!1189 = !DILocation(line: 0, scope: !1085)
!1190 = !DILocation(line: 829, column: 38, scope: !1085)
!1191 = !DILocation(line: 829, column: 36, scope: !1085)
!1192 = !DILocation(line: 829, column: 23, scope: !1085)
!1193 = !DILocation(line: 0, scope: !252, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 832, column: 5, scope: !1085)
!1195 = !DILocation(line: 0, scope: !275, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !1194)
!1197 = !DILocation(line: 0, scope: !269, inlinedAt: !1194)
!1198 = !DILocation(line: 0, scope: !252, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 833, column: 5, scope: !1085)
!1200 = !DILocation(line: 0, scope: !275, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 16, column: 6, scope: !281, inlinedAt: !1199)
!1202 = !DILocation(line: 828, column: 27, scope: !1085)
!1203 = !DILocation(line: 828, column: 31, scope: !1085)
!1204 = !DILocation(line: 828, column: 37, scope: !1085)
!1205 = !DILocation(line: 11, column: 18, scope: !252, inlinedAt: !1194)
!1206 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !1199)
!1207 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !1199)
!1208 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !1199)
!1209 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !1199)
!1210 = !DILocation(line: 11, column: 21, scope: !252, inlinedAt: !1194)
!1211 = !DILocation(line: 11, column: 29, scope: !252, inlinedAt: !1194)
!1212 = !DILocation(line: 11, column: 38, scope: !252, inlinedAt: !1194)
!1213 = !DILocation(line: 12, column: 19, scope: !252, inlinedAt: !1194)
!1214 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !1194)
!1215 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !1194)
!1216 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !1194)
!1217 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !1194)
!1218 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !1194)
!1219 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !1194)
!1220 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !1194)
!1221 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !1194)
!1222 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !1194)
!1223 = !DILocation(line: 0, scope: !269, inlinedAt: !1199)
!1224 = !DILocation(line: 23, column: 11, scope: !269, inlinedAt: !1199)
!1225 = !DILocation(line: 23, column: 19, scope: !269, inlinedAt: !1199)
!1226 = !DILocation(line: 23, column: 14, scope: !269, inlinedAt: !1199)
!1227 = !DILocation(line: 27, column: 18, scope: !252, inlinedAt: !1199)
!1228 = !DILocation(line: 27, column: 21, scope: !252, inlinedAt: !1199)
!1229 = !DILocation(line: 27, column: 26, scope: !252, inlinedAt: !1199)
!1230 = !DILocation(line: 28, column: 35, scope: !252, inlinedAt: !1199)
!1231 = !DILocation(line: 28, column: 33, scope: !252, inlinedAt: !1199)
!1232 = !DILocation(line: 28, column: 53, scope: !252, inlinedAt: !1199)
!1233 = !DILocation(line: 834, column: 31, scope: !1085)
!1234 = !DILocation(line: 834, column: 58, scope: !1085)
!1235 = !DILocation(line: 834, column: 50, scope: !1085)
!1236 = !DILocation(line: 834, column: 47, scope: !1085)
!1237 = !DILocation(line: 834, column: 22, scope: !1085)
!1238 = !DILocation(line: 834, column: 18, scope: !1085)
!1239 = !DILocation(line: 835, column: 48, scope: !1085)
!1240 = !DILocation(line: 835, column: 41, scope: !1085)
!1241 = !DILocation(line: 835, column: 39, scope: !1085)
!1242 = !DILocation(line: 835, column: 22, scope: !1085)
!1243 = !DILocation(line: 835, column: 13, scope: !1085)
!1244 = !DILocation(line: 836, column: 38, scope: !1085)
!1245 = !DILocation(line: 836, column: 36, scope: !1085)
!1246 = !DILocation(line: 836, column: 17, scope: !1085)
!1247 = !DILocation(line: 840, column: 12, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 839, column: 8)
!1249 = !DILocation(line: 840, column: 5, scope: !1248)
!1250 = !DILocation(line: 0, scope: !1071)
!1251 = !DILocation(line: 842, column: 1, scope: !1064)
!1252 = distinct !DISubprogram(name: "gsl_sf_airy_Ai", scope: !2, file: !2, line: 849, type: !1253, scopeLine: 850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!90, !177, !179}
!1255 = !{!1256, !1257, !1258, !1259}
!1256 = !DILocalVariable(name: "x", arg: 1, scope: !1252, file: !2, line: 849, type: !177)
!1257 = !DILocalVariable(name: "mode", arg: 2, scope: !1252, file: !2, line: 849, type: !179)
!1258 = !DILocalVariable(name: "result", scope: !1252, file: !2, line: 851, type: !182)
!1259 = !DILocalVariable(name: "status", scope: !1252, file: !2, line: 851, type: !42)
!1260 = distinct !DIAssignID()
!1261 = !DILocation(line: 0, scope: !1252)
!1262 = !DILocation(line: 851, column: 3, scope: !1252)
!1263 = !DILocation(line: 851, column: 3, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 851, column: 3)
!1265 = !DILocation(line: 851, column: 3, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !2, line: 851, column: 3)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 851, column: 3)
!1268 = !DILocation(line: 852, column: 1, scope: !1252)
!1269 = distinct !DISubprogram(name: "gsl_sf_airy_Ai_scaled", scope: !2, file: !2, line: 854, type: !1253, scopeLine: 855, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1270)
!1270 = !{!1271, !1272, !1273, !1274}
!1271 = !DILocalVariable(name: "x", arg: 1, scope: !1269, file: !2, line: 854, type: !177)
!1272 = !DILocalVariable(name: "mode", arg: 2, scope: !1269, file: !2, line: 854, type: !179)
!1273 = !DILocalVariable(name: "result", scope: !1269, file: !2, line: 856, type: !182)
!1274 = !DILocalVariable(name: "status", scope: !1269, file: !2, line: 856, type: !42)
!1275 = distinct !DIAssignID()
!1276 = !DILocation(line: 0, scope: !1269)
!1277 = !DILocation(line: 856, column: 3, scope: !1269)
!1278 = !DILocation(line: 856, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 856, column: 3)
!1280 = !DILocation(line: 856, column: 3, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 856, column: 3)
!1282 = distinct !DILexicalBlock(scope: !1279, file: !2, line: 856, column: 3)
!1283 = !DILocation(line: 857, column: 1, scope: !1269)
!1284 = distinct !DISubprogram(name: "gsl_sf_airy_Bi", scope: !2, file: !2, line: 859, type: !1253, scopeLine: 860, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1285)
!1285 = !{!1286, !1287, !1288, !1289}
!1286 = !DILocalVariable(name: "x", arg: 1, scope: !1284, file: !2, line: 859, type: !177)
!1287 = !DILocalVariable(name: "mode", arg: 2, scope: !1284, file: !2, line: 859, type: !179)
!1288 = !DILocalVariable(name: "result", scope: !1284, file: !2, line: 861, type: !182)
!1289 = !DILocalVariable(name: "status", scope: !1284, file: !2, line: 861, type: !42)
!1290 = distinct !DIAssignID()
!1291 = !DILocation(line: 0, scope: !1284)
!1292 = !DILocation(line: 861, column: 3, scope: !1284)
!1293 = !DILocation(line: 861, column: 3, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 861, column: 3)
!1295 = !DILocation(line: 861, column: 3, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !2, line: 861, column: 3)
!1297 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 861, column: 3)
!1298 = !DILocation(line: 862, column: 1, scope: !1284)
!1299 = distinct !DISubprogram(name: "gsl_sf_airy_Bi_scaled", scope: !2, file: !2, line: 864, type: !1253, scopeLine: 865, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !38, retainedNodes: !1300)
!1300 = !{!1301, !1302, !1303, !1304}
!1301 = !DILocalVariable(name: "x", arg: 1, scope: !1299, file: !2, line: 864, type: !177)
!1302 = !DILocalVariable(name: "mode", arg: 2, scope: !1299, file: !2, line: 864, type: !179)
!1303 = !DILocalVariable(name: "result", scope: !1299, file: !2, line: 866, type: !182)
!1304 = !DILocalVariable(name: "status", scope: !1299, file: !2, line: 866, type: !42)
!1305 = distinct !DIAssignID()
!1306 = !DILocation(line: 0, scope: !1299)
!1307 = !DILocation(line: 866, column: 3, scope: !1299)
!1308 = !DILocation(line: 866, column: 3, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 866, column: 3)
!1310 = !DILocation(line: 866, column: 3, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 866, column: 3)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 866, column: 3)
!1313 = !DILocation(line: 867, column: 1, scope: !1299)
