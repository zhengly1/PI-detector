; ModuleID = 'expint.c'
source_filename = "expint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [31 x i8] c"gsl_sf_expint_E1_e(x, &result)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"expint.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_E1_scaled_e(x, &result)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_expint_E2_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_E2_scaled_e(x, &result)\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [34 x i8] c"gsl_sf_expint_En_e(n, x, &result)\00", align 1, !dbg !21
@.str.6 = private unnamed_addr constant [41 x i8] c"gsl_sf_expint_En_scaled_e(n, x, &result)\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [31 x i8] c"gsl_sf_expint_Ei_e(x, &result)\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [38 x i8] c"gsl_sf_expint_Ei_scaled_e(x, &result)\00", align 1, !dbg !33
@.str.9 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !35
@.str.10 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !37
@E12_cs = internal global %struct.cheb_series_struct { ptr @E12_data, i32 15, double -1.000000e+00, double 1.000000e+00, i32 10 }, align 8, !dbg !42
@AE13_cs = internal global %struct.cheb_series_struct { ptr @AE13_data, i32 24, double -1.000000e+00, double 1.000000e+00, i32 15 }, align 8, !dbg !128
@AE14_cs = internal global %struct.cheb_series_struct { ptr @AE14_data, i32 25, double -1.000000e+00, double 1.000000e+00, i32 13 }, align 8, !dbg !132
@.str.11 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !86
@AE11_data = internal unnamed_addr constant [39 x double] [double 0x3FBF1AD618F044DF, double 0xBFB0A9A87F0D6293, double 0x3F740F8F46851DF9, double 0xBF454633A6CCE18E, double 0x3F18998663F01ADE, double 0x3E9C339B261640BC, double 0xBEE103D5BB9AAB3D, double 0x3EC78613786DBCF4, double 0x3E6E53896974958F, double 0xBE9723C6C96448E2, double 0x3E6F4038BD973D1B, double 0x3E64C8753A8F884E, double 0xBE4ABE3D048C8226, double 0xBE35FBDB0B4CF7A6, double 0x3E227532D4BEE2DB, double 0x3E0DD70DD6257CBA, double 0xBDF79D8E7C1D6A26, double 0xBDE8B607D41BA0A3, double 0x3DCA14E059932535, double 0x3DC6391238D631A5, double 0xBD8F2C3766A739DE, double 0xBDA3780BBF472071, double -9.601510e-13, double 0x3D7DC83D06C8BD15, double 6.079900e-13, double -2.243380e-13, double -2.003270e-13, double -6.246000e-15, double 4.557100e-14, double 1.638300e-14, double -5.561000e-15, double -6.074000e-15, double -8.620000e-16, double 1.223000e-15, double 7.160000e-16, double -2.400000e-17, double -2.010000e-16, double -8.200000e-17, double 1.700000e-17], align 16, !dbg !104
@AE12_data = internal unnamed_addr constant [25 x double] [double 0x3FE2A32A03C719BA, double 0xBFC444C66FFFF02B, double 0xBF7BB4DB6710AAA4, double 0x3F74FED642164FBE, double 0x3F3C85FD51ED19A0, double 0xBF22D2DD6C505977, double 0xBF05EA7A701079D6, double 0xBEC6C2F917FC2887, double 0x3EB35125CD543029, double 0x3E9C3AB65C98BE9D, double 0x3E71DF79324B4BE3, double 0x3E06C0473BD28C1A, double 0xBE286E40B43F5CA9, double 0xBE1029594928050C, double 0xBDE864671E054CAB, double 0xBDB167CFB5DD2F89, double 0x3D898F20746803A5, double 0x3D7F207894EAA0FD, double 4.927350e-13, double 9.370900e-14, double 1.070700e-14, double -5.370000e-16, double -7.160000e-16, double -2.440000e-16, double -5.800000e-17], align 16, !dbg !111
@E11_data = internal unnamed_addr constant [19 x double] [double 0xC0301D0BD2B40793, double 0x401F2D216A1D5FE7, double 0xBFFF49579CA6CE02, double 0x3FD7E5579C3127C2, double 0xBFAD25471CC32C31, double 0x3F7D895CF3089CDB, double 0xBF4997E9FCA6E946, double 0x3F135E10C6179A12, double 0xBEDA0445B08214F5, double 0x3E9F6AED8E51A362, double 0xBE613AD021ADF608, double 0x3E214F789ACCD237, double 0xBDE00B503B5D3E9D, double 0x3D9B9A73DA68CF00, double 0xBD562735D31E6432, double 0x3D10A98869E609EA, double -6.545700e-16, double 2.733000e-17, double -1.080000e-18], align 16, !dbg !118
@E12_data = internal global [16 x double] [double 0xBFA324CF6B72236A, double 0x3FA5DFEB15C8ADAA, double 0xBFC0AE445CAF33EF, double 0x3F8D87C610FC0172, double 0xBF560E3FDE8933CC, double 0x3F1C2178C9AB7FF5, double 0xBEDF29E6B730A23C, double 0x3E9E73C3E3AE0B72, double 0xBE5A971FB1379A1F, double 0x3E14F8FC1DAFFB75, double 0xBDCE27A67D72C000, double 0x3D83E938E81DB5D9, double 0xBD384ED1D16C533F, double 3.062910e-15, double -1.014800e-16, double 3.150000e-18], align 16, !dbg !123
@AE13_data = internal global [25 x double] [double 0xBFE3627E93639ECB, double 0xBFBCCF1C1668E374, double 0x3F8B826041F79E1F, double 0xBF5F91C6441CC96F, double 0x3F34422526AEBE51, double 0xBF0C154190DDAF92, double 0x3EE49C445132B1D8, double 0xBEBFA1991F1EC704, double 0x3E9929799AB5A0F3, double 0xBE749F44873ABCF5, double 0x3E51556DAD3D8637, double 0xBE2DC79424A8F98F, double 0x3E0A121296222EF5, double 0xBDE73562B1C0EAD6, double 0x3DC4F887E60BE657, double 0xBDA33441AF38DBBC, double 0x3D81CCE77BC8F968, double -4.741320e-13, double 1.122110e-13, double -2.680400e-14, double 0x3CFD146A061406CD, double -1.568000e-15, double 3.830000e-16, double 0xBC9B17F9CC2CD364, double 2.300000e-17], align 16, !dbg !130
@AE14_data = internal global [26 x double] [double 0xBFC83AB6B55CB8D9, double 0xBFB623A1699A5ACE, double 0x3F7D9704FDF957C5, double 0xBF4A88B9A7027465, double 0x3F1CD564E82AD33F, double 0xBEF201EE402CD659, double 0x3EC90B96158D12D3, double 0xBEA2FD9A024B975C, double 0x3E7EF1299403D73D, double 0xBE5ACA499664FCC2, double 0x3E3872C6D255FBC4, double 0xBE175D2833E46755, double 0x3DF7425C9CCBD929, double 0xBDD804B7A91C9ADE, double 0x3DB9A2D637369C57, double -6.411480e-12, double 1.812240e-12, double -5.253800e-13, double 1.559200e-13, double -4.729000e-14, double 1.463000e-14, double -4.610000e-15, double 1.480000e-15, double -4.800000e-16, double 1.600000e-16, double -5.000000e-17], align 16, !dbg !134

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_E1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !147 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !159, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !160, metadata !DIExpression()), !dbg !161
  %3 = tail call fastcc i32 @expint_E1_impl(double noundef %0, ptr noundef %1, i32 noundef 0), !dbg !162, !range !163
  ret i32 %3, !dbg !164
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @expint_E1_impl(double noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !dbg !165 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !203
  call void @llvm.dbg.assign(metadata i1 undef, metadata !194, metadata !DIExpression(), metadata !203, metadata ptr %4, metadata !DIExpression()), !dbg !204
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !205
  call void @llvm.dbg.assign(metadata i1 undef, metadata !198, metadata !DIExpression(), metadata !205, metadata ptr %5, metadata !DIExpression()), !dbg !206
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !207
  call void @llvm.dbg.assign(metadata i1 undef, metadata !202, metadata !DIExpression(), metadata !207, metadata ptr %6, metadata !DIExpression()), !dbg !208
  tail call void @llvm.dbg.value(metadata double %0, metadata !170, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !171, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !172, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !173, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata double 0x4085EEAAD5511C64, metadata !174, metadata !DIExpression()), !dbg !209
  %7 = fcmp uge double %0, 0xC085EEAAD5511C64, !dbg !210
  %8 = icmp ne i32 %2, 0
  %9 = or i1 %7, %8, !dbg !211
  br i1 %9, label %12, label %10, !dbg !211

10:                                               ; preds = %3
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !212, !tbaa !215
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !212
  store double 0x7FF0000000000000, ptr %11, align 8, !dbg !212, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 298, i32 noundef 16) #7, !dbg !221
  br label %264, !dbg !221

12:                                               ; preds = %3
  %13 = fcmp ugt double %0, -1.000000e+01, !dbg !223
  br i1 %13, label %68, label %14, !dbg !224

14:                                               ; preds = %12
  %15 = fdiv double 1.000000e+00, %0, !dbg !225
  br i1 %8, label %19, label %16, !dbg !226

16:                                               ; preds = %14
  %17 = fneg double %0, !dbg !227
  %18 = tail call double @exp(double noundef %17) #7, !dbg !228
  br label %19, !dbg !226

19:                                               ; preds = %14, %16
  %20 = phi double [ %18, %16 ], [ 1.000000e+00, %14 ], !dbg !226
  %21 = fmul double %15, %20, !dbg !229
  tail call void @llvm.dbg.value(metadata double %21, metadata !175, metadata !DIExpression()), !dbg !230
  %22 = fdiv double 2.000000e+01, %0, !dbg !231
  %23 = fadd double %22, 1.000000e+00, !dbg !232
  call void @llvm.dbg.value(metadata !233, metadata !234, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %23, metadata !242, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata ptr undef, metadata !243, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !246, metadata !DIExpression()), !dbg !256
  %24 = fmul double %23, 2.000000e+00, !dbg !258
  %25 = fadd double %24, 1.000000e+00, !dbg !259
  %26 = fadd double %25, -1.000000e+00, !dbg !260
  %27 = fmul double %26, 5.000000e-01, !dbg !261
  call void @llvm.dbg.value(metadata double %27, metadata !247, metadata !DIExpression()), !dbg !256
  %28 = fmul double %27, 2.000000e+00, !dbg !262
  call void @llvm.dbg.value(metadata double %28, metadata !248, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i32 38, metadata !244, metadata !DIExpression()), !dbg !256
  br label %29, !dbg !263

29:                                               ; preds = %29, %19
  %30 = phi i64 [ 38, %19 ], [ %45, %29 ]
  %31 = phi double [ 0.000000e+00, %19 ], [ %38, %29 ]
  %32 = phi double [ 0.000000e+00, %19 ], [ %44, %29 ]
  %33 = phi double [ 0.000000e+00, %19 ], [ %31, %29 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !244, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %31, metadata !245, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %32, metadata !249, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %33, metadata !246, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %31, metadata !250, metadata !DIExpression()), !dbg !264
  %34 = fmul double %28, %31, !dbg !265
  %35 = fsub double %34, %33, !dbg !266
  %36 = getelementptr inbounds double, ptr @AE11_data, i64 %30, !dbg !267
  %37 = load double, ptr %36, align 8, !dbg !267, !tbaa !268
  %38 = fadd double %35, %37, !dbg !269
  call void @llvm.dbg.value(metadata double %38, metadata !245, metadata !DIExpression()), !dbg !256
  %39 = tail call double @llvm.fabs.f64(double %34), !dbg !270
  %40 = tail call double @llvm.fabs.f64(double %33), !dbg !271
  %41 = fadd double %39, %40, !dbg !272
  %42 = tail call double @llvm.fabs.f64(double %37), !dbg !273
  %43 = fadd double %41, %42, !dbg !274
  %44 = fadd double %32, %43, !dbg !275
  call void @llvm.dbg.value(metadata double %44, metadata !249, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %31, metadata !246, metadata !DIExpression()), !dbg !256
  %45 = add nsw i64 %30, -1, !dbg !276
  call void @llvm.dbg.value(metadata i64 %45, metadata !244, metadata !DIExpression()), !dbg !256
  %46 = icmp ugt i64 %30, 1, !dbg !277
  br i1 %46, label %29, label %47, !dbg !263, !llvm.loop !278

47:                                               ; preds = %29
  call void @llvm.dbg.value(metadata double %38, metadata !254, metadata !DIExpression()), !dbg !281
  %48 = fmul double %27, %38, !dbg !282
  %49 = fsub double %48, %31, !dbg !283
  %50 = fadd double %49, 0x3FAF1AD618F044DF, !dbg !284
  call void @llvm.dbg.value(metadata double %50, metadata !245, metadata !DIExpression()), !dbg !256
  %51 = tail call double @llvm.fabs.f64(double %48), !dbg !285
  %52 = tail call double @llvm.fabs.f64(double %31), !dbg !286
  %53 = fadd double %52, %51, !dbg !287
  %54 = fadd double %53, 0x3FAF1AD618F044DF, !dbg !288
  %55 = fadd double %44, %54, !dbg !289
  call void @llvm.dbg.value(metadata double %55, metadata !249, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata double %50, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !230
  %56 = fmul double %55, 0x3CB0000000000000, !dbg !290
  %57 = fadd double %56, 1.700000e-17, !dbg !291
  tail call void @llvm.dbg.value(metadata double %57, metadata !179, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !230
  %58 = fadd double %50, 1.000000e+00, !dbg !292
  %59 = fmul double %21, %58, !dbg !293
  store double %59, ptr %1, align 8, !dbg !294, !tbaa !215
  %60 = fmul double %21, %57, !dbg !295
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !296
  %62 = tail call double @llvm.fabs.f64(double %0), !dbg !297
  %63 = fadd double %62, 1.000000e+00, !dbg !298
  %64 = fmul double %63, 0x3CC0000000000000, !dbg !299
  %65 = tail call double @llvm.fabs.f64(double %59), !dbg !300
  %66 = fmul double %64, %65, !dbg !301
  %67 = fadd double %66, %60, !dbg !302
  store double %67, ptr %61, align 8, !dbg !302, !tbaa !220
  br label %264

68:                                               ; preds = %12
  %69 = fcmp ugt double %0, -4.000000e+00, !dbg !303
  br i1 %69, label %122, label %70, !dbg !304

70:                                               ; preds = %68
  %71 = fdiv double 1.000000e+00, %0, !dbg !305
  br i1 %8, label %75, label %72, !dbg !306

72:                                               ; preds = %70
  %73 = fneg double %0, !dbg !307
  %74 = tail call double @exp(double noundef %73) #7, !dbg !308
  br label %75, !dbg !306

75:                                               ; preds = %70, %72
  %76 = phi double [ %74, %72 ], [ 1.000000e+00, %70 ], !dbg !306
  %77 = fmul double %71, %76, !dbg !309
  tail call void @llvm.dbg.value(metadata double %77, metadata !180, metadata !DIExpression()), !dbg !310
  %78 = fdiv double 4.000000e+01, %0, !dbg !311
  %79 = fadd double %78, 7.000000e+00, !dbg !312
  %80 = fdiv double %79, 3.000000e+00, !dbg !313
  call void @llvm.dbg.value(metadata !233, metadata !234, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double %80, metadata !242, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata ptr undef, metadata !243, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !246, metadata !DIExpression()), !dbg !314
  %81 = fmul double %80, 2.000000e+00, !dbg !316
  %82 = fadd double %81, 1.000000e+00, !dbg !317
  %83 = fadd double %82, -1.000000e+00, !dbg !318
  %84 = fmul double %83, 5.000000e-01, !dbg !319
  call void @llvm.dbg.value(metadata double %84, metadata !247, metadata !DIExpression()), !dbg !314
  %85 = fmul double %84, 2.000000e+00, !dbg !320
  call void @llvm.dbg.value(metadata double %85, metadata !248, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata i32 24, metadata !244, metadata !DIExpression()), !dbg !314
  br label %86, !dbg !321

86:                                               ; preds = %86, %75
  %87 = phi i64 [ 24, %75 ], [ %102, %86 ]
  %88 = phi double [ 0.000000e+00, %75 ], [ %95, %86 ]
  %89 = phi double [ 0.000000e+00, %75 ], [ %101, %86 ]
  %90 = phi double [ 0.000000e+00, %75 ], [ %88, %86 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !244, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double %88, metadata !245, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double %89, metadata !249, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double %90, metadata !246, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double %88, metadata !250, metadata !DIExpression()), !dbg !322
  %91 = fmul double %85, %88, !dbg !323
  %92 = fsub double %91, %90, !dbg !324
  %93 = getelementptr inbounds double, ptr @AE12_data, i64 %87, !dbg !325
  %94 = load double, ptr %93, align 8, !dbg !325, !tbaa !268
  %95 = fadd double %92, %94, !dbg !326
  call void @llvm.dbg.value(metadata double %95, metadata !245, metadata !DIExpression()), !dbg !314
  %96 = tail call double @llvm.fabs.f64(double %91), !dbg !327
  %97 = tail call double @llvm.fabs.f64(double %90), !dbg !328
  %98 = fadd double %96, %97, !dbg !329
  %99 = tail call double @llvm.fabs.f64(double %94), !dbg !330
  %100 = fadd double %98, %99, !dbg !331
  %101 = fadd double %89, %100, !dbg !332
  call void @llvm.dbg.value(metadata double %101, metadata !249, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.value(metadata double %88, metadata !246, metadata !DIExpression()), !dbg !314
  %102 = add nsw i64 %87, -1, !dbg !333
  call void @llvm.dbg.value(metadata i64 %102, metadata !244, metadata !DIExpression()), !dbg !314
  %103 = icmp ugt i64 %87, 1, !dbg !334
  br i1 %103, label %86, label %104, !dbg !321, !llvm.loop !335

104:                                              ; preds = %86
  call void @llvm.dbg.value(metadata double %95, metadata !254, metadata !DIExpression()), !dbg !337
  %105 = fmul double %84, %95, !dbg !338
  %106 = fsub double %105, %88, !dbg !339
  %107 = fadd double %106, 0x3FD2A32A03C719BA, !dbg !340
  call void @llvm.dbg.value(metadata double %107, metadata !245, metadata !DIExpression()), !dbg !314
  %108 = tail call double @llvm.fabs.f64(double %105), !dbg !341
  %109 = tail call double @llvm.fabs.f64(double %88), !dbg !342
  %110 = fadd double %109, %108, !dbg !343
  %111 = fadd double %110, 0x3FD2A32A03C719BA, !dbg !344
  %112 = fadd double %101, %111, !dbg !345
  call void @llvm.dbg.value(metadata double %112, metadata !249, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata double %107, metadata !183, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !310
  %113 = fmul double %112, 0x3CB0000000000000, !dbg !346
  %114 = fadd double %113, 5.800000e-17, !dbg !347
  tail call void @llvm.dbg.value(metadata double %114, metadata !183, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !310
  %115 = fadd double %107, 1.000000e+00, !dbg !348
  %116 = fmul double %77, %115, !dbg !349
  store double %116, ptr %1, align 8, !dbg !350, !tbaa !215
  %117 = fmul double %77, %114, !dbg !351
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !352
  %119 = tail call double @llvm.fabs.f64(double %116), !dbg !353
  %120 = fmul double %119, 0x3CC0000000000000, !dbg !354
  %121 = fadd double %120, %117, !dbg !355
  store double %121, ptr %118, align 8, !dbg !355, !tbaa !220
  br label %264

122:                                              ; preds = %68
  %123 = fcmp ugt double %0, -1.000000e+00, !dbg !356
  br i1 %123, label %179, label %124, !dbg !357

124:                                              ; preds = %122
  %125 = tail call double @llvm.fabs.f64(double %0), !dbg !358
  %126 = tail call double @log(double noundef %125) #7, !dbg !359
  %127 = fneg double %126, !dbg !360
  tail call void @llvm.dbg.value(metadata double %127, metadata !184, metadata !DIExpression()), !dbg !361
  br i1 %8, label %128, label %130, !dbg !362

128:                                              ; preds = %124
  %129 = tail call double @exp(double noundef %0) #7, !dbg !363
  br label %130, !dbg !362

130:                                              ; preds = %124, %128
  %131 = phi double [ %129, %128 ], [ 1.000000e+00, %124 ], !dbg !362
  tail call void @llvm.dbg.value(metadata double %131, metadata !187, metadata !DIExpression()), !dbg !361
  %132 = fmul double %0, 2.000000e+00, !dbg !364
  %133 = fadd double %132, 5.000000e+00, !dbg !365
  %134 = fdiv double %133, 3.000000e+00, !dbg !366
  call void @llvm.dbg.value(metadata !233, metadata !234, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double %134, metadata !242, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata ptr undef, metadata !243, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !246, metadata !DIExpression()), !dbg !367
  %135 = fmul double %134, 2.000000e+00, !dbg !369
  %136 = fadd double %135, 1.000000e+00, !dbg !370
  %137 = fadd double %136, -1.000000e+00, !dbg !371
  %138 = fmul double %137, 5.000000e-01, !dbg !372
  call void @llvm.dbg.value(metadata double %138, metadata !247, metadata !DIExpression()), !dbg !367
  %139 = fmul double %138, 2.000000e+00, !dbg !373
  call void @llvm.dbg.value(metadata double %139, metadata !248, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 18, metadata !244, metadata !DIExpression()), !dbg !367
  br label %140, !dbg !374

140:                                              ; preds = %140, %130
  %141 = phi i64 [ 18, %130 ], [ %156, %140 ]
  %142 = phi double [ 0.000000e+00, %130 ], [ %149, %140 ]
  %143 = phi double [ 0.000000e+00, %130 ], [ %155, %140 ]
  %144 = phi double [ 0.000000e+00, %130 ], [ %142, %140 ]
  call void @llvm.dbg.value(metadata i64 %141, metadata !244, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double %142, metadata !245, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double %143, metadata !249, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double %144, metadata !246, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double %142, metadata !250, metadata !DIExpression()), !dbg !375
  %145 = fmul double %139, %142, !dbg !376
  %146 = fsub double %145, %144, !dbg !377
  %147 = getelementptr inbounds double, ptr @E11_data, i64 %141, !dbg !378
  %148 = load double, ptr %147, align 8, !dbg !378, !tbaa !268
  %149 = fadd double %146, %148, !dbg !379
  call void @llvm.dbg.value(metadata double %149, metadata !245, metadata !DIExpression()), !dbg !367
  %150 = tail call double @llvm.fabs.f64(double %145), !dbg !380
  %151 = tail call double @llvm.fabs.f64(double %144), !dbg !381
  %152 = fadd double %150, %151, !dbg !382
  %153 = tail call double @llvm.fabs.f64(double %148), !dbg !383
  %154 = fadd double %152, %153, !dbg !384
  %155 = fadd double %143, %154, !dbg !385
  call void @llvm.dbg.value(metadata double %155, metadata !249, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata double %142, metadata !246, metadata !DIExpression()), !dbg !367
  %156 = add nsw i64 %141, -1, !dbg !386
  call void @llvm.dbg.value(metadata i64 %156, metadata !244, metadata !DIExpression()), !dbg !367
  %157 = icmp ugt i64 %141, 1, !dbg !387
  br i1 %157, label %140, label %158, !dbg !374, !llvm.loop !388

158:                                              ; preds = %140
  call void @llvm.dbg.value(metadata double %149, metadata !254, metadata !DIExpression()), !dbg !390
  %159 = fmul double %138, %149, !dbg !391
  %160 = fsub double %159, %142, !dbg !392
  %161 = fadd double %160, 0xC0201D0BD2B40793, !dbg !393
  call void @llvm.dbg.value(metadata double %161, metadata !245, metadata !DIExpression()), !dbg !367
  %162 = tail call double @llvm.fabs.f64(double %159), !dbg !394
  %163 = tail call double @llvm.fabs.f64(double %142), !dbg !395
  %164 = fadd double %163, %162, !dbg !396
  %165 = fadd double %164, 0x40201D0BD2B40793, !dbg !397
  %166 = fadd double %155, %165, !dbg !398
  call void @llvm.dbg.value(metadata double %166, metadata !249, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double %161, metadata !188, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !361
  %167 = fmul double %166, 0x3CB0000000000000, !dbg !399
  %168 = fadd double %167, 1.080000e-18, !dbg !400
  tail call void @llvm.dbg.value(metadata double %168, metadata !188, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !361
  %169 = fsub double %161, %126, !dbg !401
  %170 = fmul double %131, %169, !dbg !402
  store double %170, ptr %1, align 8, !dbg !403, !tbaa !215
  %171 = tail call double @llvm.fabs.f64(double %127), !dbg !404
  %172 = fmul double %171, 0x3CB0000000000000, !dbg !405
  %173 = fadd double %172, %168, !dbg !406
  %174 = fmul double %131, %173, !dbg !407
  %175 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !408
  %176 = tail call double @llvm.fabs.f64(double %170), !dbg !409
  %177 = fmul double %176, 0x3CC0000000000000, !dbg !410
  %178 = fadd double %177, %174, !dbg !411
  store double %178, ptr %175, align 8, !dbg !411, !tbaa !220
  br label %264

179:                                              ; preds = %122
  %180 = fcmp oeq double %0, 0.000000e+00, !dbg !412
  br i1 %180, label %181, label %183, !dbg !413

181:                                              ; preds = %179
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !414, !tbaa !215
  %182 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !414
  store double 0x7FF8000000000000, ptr %182, align 8, !dbg !414, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 329, i32 noundef 1) #7, !dbg !417
  br label %264, !dbg !417

183:                                              ; preds = %179
  %184 = fcmp ugt double %0, 1.000000e+00, !dbg !419
  br i1 %184, label %208, label %185, !dbg !420

185:                                              ; preds = %183
  %186 = tail call double @llvm.fabs.f64(double %0), !dbg !421
  %187 = tail call double @log(double noundef %186) #7, !dbg !422
  %188 = fneg double %187, !dbg !423
  tail call void @llvm.dbg.value(metadata double %188, metadata !189, metadata !DIExpression()), !dbg !204
  br i1 %8, label %189, label %191, !dbg !424

189:                                              ; preds = %185
  %190 = tail call double @exp(double noundef %0) #7, !dbg !425
  br label %191, !dbg !424

191:                                              ; preds = %185, %189
  %192 = phi double [ %190, %189 ], [ 1.000000e+00, %185 ], !dbg !424
  tail call void @llvm.dbg.value(metadata double %192, metadata !193, metadata !DIExpression()), !dbg !204
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !426
  call fastcc void @cheb_eval_e(ptr noundef nonnull @E12_cs, double noundef %0, ptr noundef nonnull %4), !dbg !427
  %193 = fsub double -6.875000e-01, %187, !dbg !428
  %194 = fadd double %193, %0, !dbg !429
  %195 = load double, ptr %4, align 8, !dbg !430, !tbaa !215
  %196 = fadd double %194, %195, !dbg !431
  %197 = fmul double %192, %196, !dbg !432
  store double %197, ptr %1, align 8, !dbg !433, !tbaa !215
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !434
  %199 = load double, ptr %198, align 8, !dbg !434, !tbaa !220
  %200 = tail call double @llvm.fabs.f64(double %188), !dbg !435
  %201 = fmul double %200, 0x3CB0000000000000, !dbg !436
  %202 = fadd double %201, %199, !dbg !437
  %203 = fmul double %192, %202, !dbg !438
  %204 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !439
  %205 = tail call double @llvm.fabs.f64(double %197), !dbg !440
  %206 = fmul double %205, 0x3CC0000000000000, !dbg !441
  %207 = fadd double %203, %206, !dbg !442
  store double %207, ptr %204, align 8, !dbg !442, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !443
  br label %264

208:                                              ; preds = %183
  %209 = fcmp ugt double %0, 4.000000e+00, !dbg !444
  br i1 %209, label %231, label %210, !dbg !445

210:                                              ; preds = %208
  %211 = fdiv double 1.000000e+00, %0, !dbg !446
  br i1 %8, label %215, label %212, !dbg !447

212:                                              ; preds = %210
  %213 = fneg double %0, !dbg !448
  %214 = tail call double @exp(double noundef %213) #7, !dbg !449
  br label %215, !dbg !447

215:                                              ; preds = %210, %212
  %216 = phi double [ %214, %212 ], [ 1.000000e+00, %210 ], !dbg !447
  %217 = fmul double %211, %216, !dbg !450
  tail call void @llvm.dbg.value(metadata double %217, metadata !195, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !451
  %218 = fdiv double 8.000000e+00, %0, !dbg !452
  %219 = fadd double %218, -5.000000e+00, !dbg !453
  %220 = fdiv double %219, 3.000000e+00, !dbg !454
  call fastcc void @cheb_eval_e(ptr noundef nonnull @AE13_cs, double noundef %220, ptr noundef nonnull %5), !dbg !455
  %221 = load double, ptr %5, align 8, !dbg !456, !tbaa !215
  %222 = fadd double %221, 1.000000e+00, !dbg !457
  %223 = fmul double %217, %222, !dbg !458
  store double %223, ptr %1, align 8, !dbg !459, !tbaa !215
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !460
  %225 = load double, ptr %224, align 8, !dbg !460, !tbaa !220
  %226 = fmul double %217, %225, !dbg !461
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !462
  %228 = tail call double @llvm.fabs.f64(double %223), !dbg !463
  %229 = fmul double %228, 0x3CC0000000000000, !dbg !464
  %230 = fadd double %226, %229, !dbg !465
  store double %230, ptr %227, align 8, !dbg !465, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !466
  br label %264

231:                                              ; preds = %208
  %232 = fcmp ole double %0, 0x4085EEAAD5511C64, !dbg !467
  %233 = or i1 %232, %8, !dbg !468
  br i1 %233, label %234, label %262, !dbg !468

234:                                              ; preds = %231
  %235 = fdiv double 1.000000e+00, %0, !dbg !469
  br i1 %8, label %239, label %236, !dbg !470

236:                                              ; preds = %234
  %237 = fneg double %0, !dbg !471
  %238 = tail call double @exp(double noundef %237) #7, !dbg !472
  br label %239, !dbg !470

239:                                              ; preds = %234, %236
  %240 = phi double [ %238, %236 ], [ 1.000000e+00, %234 ], !dbg !470
  %241 = fmul double %235, %240, !dbg !473
  tail call void @llvm.dbg.value(metadata double %241, metadata !199, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !474
  %242 = fdiv double 8.000000e+00, %0, !dbg !475
  %243 = fadd double %242, -1.000000e+00, !dbg !476
  call fastcc void @cheb_eval_e(ptr noundef nonnull @AE14_cs, double noundef %243, ptr noundef nonnull %6), !dbg !477
  %244 = load double, ptr %6, align 8, !dbg !478, !tbaa !215
  %245 = fadd double %244, 1.000000e+00, !dbg !479
  %246 = fmul double %241, %245, !dbg !480
  store double %246, ptr %1, align 8, !dbg !481, !tbaa !215
  %247 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !482
  %248 = load double, ptr %247, align 8, !dbg !482, !tbaa !220
  %249 = fadd double %248, 0x3CB0000000000000, !dbg !483
  %250 = fmul double %241, %249, !dbg !484
  %251 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !485
  %252 = fadd double %0, 1.000000e+00, !dbg !486
  %253 = fmul double %252, 2.000000e+00, !dbg !487
  %254 = fmul double %253, 0x3CB0000000000000, !dbg !488
  %255 = tail call double @llvm.fabs.f64(double %246), !dbg !489
  %256 = fmul double %254, %255, !dbg !490
  %257 = fadd double %250, %256, !dbg !491
  store double %257, ptr %251, align 8, !dbg !491, !tbaa !220
  %258 = fcmp oeq double %246, 0.000000e+00, !dbg !492
  br i1 %258, label %259, label %260, !dbg !494

259:                                              ; preds = %239
  store double 0.000000e+00, ptr %1, align 8, !dbg !495, !tbaa !215
  store double 0x10000000000000, ptr %251, align 8, !dbg !495, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 358, i32 noundef 15) #7, !dbg !497
  br label %260, !dbg !497

260:                                              ; preds = %239, %259
  %261 = phi i32 [ 15, %259 ], [ 0, %239 ], !dbg !499
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !500
  br label %264

262:                                              ; preds = %231
  store double 0.000000e+00, ptr %1, align 8, !dbg !501, !tbaa !215
  %263 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !501
  store double 0x10000000000000, ptr %263, align 8, !dbg !501, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 363, i32 noundef 15) #7, !dbg !504
  br label %264, !dbg !504

264:                                              ; preds = %260, %262, %215, %191, %181, %158, %104, %47, %10
  %265 = phi i32 [ 0, %47 ], [ 0, %104 ], [ 0, %158 ], [ 1, %181 ], [ 0, %191 ], [ 0, %215 ], [ %261, %260 ], [ 15, %262 ], [ 16, %10 ], !dbg !506
  ret i32 %265, !dbg !507
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_E1_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !508 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !510, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !511, metadata !DIExpression()), !dbg !512
  %3 = tail call fastcc i32 @expint_E1_impl(double noundef %0, ptr noundef %1, i32 noundef 1), !dbg !513, !range !163
  ret i32 %3, !dbg !514
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_E2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !515 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !517, metadata !DIExpression()), !dbg !519
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !518, metadata !DIExpression()), !dbg !519
  %3 = tail call fastcc i32 @expint_E2_impl(double noundef %0, ptr noundef %1, i32 noundef 0), !dbg !520, !range !163
  ret i32 %3, !dbg !521
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @expint_E2_impl(double noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !dbg !522 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !555
  call void @llvm.dbg.assign(metadata i1 undef, metadata !534, metadata !DIExpression(), metadata !555, metadata ptr %4, metadata !DIExpression()), !dbg !556
  tail call void @llvm.dbg.value(metadata double %0, metadata !524, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !525, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !526, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata double 0x4086232BDD7ABCD2, metadata !527, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata double 0x4085EEAAD5511C64, metadata !528, metadata !DIExpression()), !dbg !557
  %5 = fcmp uge double %0, 0xC085EEAAD5511C64, !dbg !558
  %6 = icmp ne i32 %2, 0
  %7 = or i1 %5, %6, !dbg !559
  br i1 %7, label %10, label %8, !dbg !559

8:                                                ; preds = %3
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !560, !tbaa !215
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !560
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !560, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 377, i32 noundef 16) #7, !dbg !563
  br label %83, !dbg !563

10:                                               ; preds = %3
  %11 = fcmp oeq double %0, 0.000000e+00, !dbg !565
  br i1 %11, label %12, label %14, !dbg !566

12:                                               ; preds = %10
  store double 1.000000e+00, ptr %1, align 8, !dbg !567, !tbaa !215
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !569
  store double 0.000000e+00, ptr %13, align 8, !dbg !570, !tbaa !220
  br label %83, !dbg !571

14:                                               ; preds = %10
  %15 = fcmp olt double %0, 1.000000e+02, !dbg !572
  br i1 %15, label %16, label %36, !dbg !573

16:                                               ; preds = %14
  br i1 %6, label %20, label %17, !dbg !574

17:                                               ; preds = %16
  %18 = fneg double %0, !dbg !575
  %19 = tail call double @exp(double noundef %18) #7, !dbg !576
  br label %20, !dbg !574

20:                                               ; preds = %16, %17
  %21 = phi double [ %19, %17 ], [ 1.000000e+00, %16 ], !dbg !574
  tail call void @llvm.dbg.value(metadata double %21, metadata !529, metadata !DIExpression()), !dbg !556
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !577
  %22 = call fastcc i32 @expint_E1_impl(double noundef %0, ptr noundef nonnull %4, i32 noundef %2), !dbg !578, !range !163
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !535, metadata !DIExpression()), !dbg !556
  %23 = load double, ptr %4, align 8, !dbg !579, !tbaa !215
  %24 = fmul double %23, %0, !dbg !580
  %25 = fsub double %21, %24, !dbg !581
  store double %25, ptr %1, align 8, !dbg !582, !tbaa !215
  %26 = fmul double %21, 0x3CB0000000000000, !dbg !583
  %27 = tail call double @llvm.fabs.f64(double %0), !dbg !584
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !585
  %29 = load double, ptr %28, align 8, !dbg !585, !tbaa !220
  %30 = fmul double %27, %29, !dbg !586
  %31 = fadd double %26, %30, !dbg !587
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !588
  %33 = tail call double @llvm.fabs.f64(double %25), !dbg !589
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !590
  %35 = fadd double %31, %34, !dbg !591
  store double %35, ptr %32, align 8, !dbg !591, !tbaa !220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !592
  br label %83

36:                                               ; preds = %14
  %37 = fcmp olt double %0, 0x4085EEAAD5511C64, !dbg !593
  %38 = or i1 %37, %6, !dbg !594
  br i1 %38, label %39, label %81, !dbg !594

39:                                               ; preds = %36
  br i1 %6, label %43, label %40, !dbg !595

40:                                               ; preds = %39
  %41 = fneg double %0, !dbg !596
  %42 = tail call double @exp(double noundef %41) #7, !dbg !597
  br label %43, !dbg !595

43:                                               ; preds = %39, %40
  %44 = phi double [ %42, %40 ], [ 1.000000e+00, %39 ], !dbg !595
  tail call void @llvm.dbg.value(metadata double %44, metadata !536, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double -2.000000e+00, metadata !539, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double 6.000000e+00, metadata !540, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double -2.400000e+01, metadata !541, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double 1.200000e+02, metadata !542, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double -7.200000e+02, metadata !543, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double 5.040000e+03, metadata !544, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double -4.032000e+04, metadata !545, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double 3.628800e+05, metadata !546, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double -3.628800e+06, metadata !547, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double 3.991680e+07, metadata !548, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double 0xC1BC8CFC00000000, metadata !549, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double 0x41F7328CC0000000, metadata !550, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata double 0xC2344C3B28000000, metadata !551, metadata !DIExpression()), !dbg !598
  %45 = fdiv double 1.000000e+00, %0, !dbg !599
  tail call void @llvm.dbg.value(metadata double %45, metadata !552, metadata !DIExpression()), !dbg !598
  %46 = fmul double %45, 0x42344C3B28000000, !dbg !600
  %47 = fsub double 0x41F7328CC0000000, %46, !dbg !601
  %48 = fmul double %45, %47, !dbg !602
  %49 = fadd double %48, 0xC1BC8CFC00000000, !dbg !603
  %50 = fmul double %45, %49, !dbg !604
  %51 = fadd double %50, 3.991680e+07, !dbg !605
  %52 = fmul double %45, %51, !dbg !606
  %53 = fadd double %52, -3.628800e+06, !dbg !607
  %54 = fmul double %45, %53, !dbg !608
  %55 = fadd double %54, 3.628800e+05, !dbg !609
  %56 = fmul double %45, %55, !dbg !610
  %57 = fadd double %56, -4.032000e+04, !dbg !611
  %58 = fmul double %45, %57, !dbg !612
  %59 = fadd double %58, 5.040000e+03, !dbg !613
  tail call void @llvm.dbg.value(metadata double %59, metadata !553, metadata !DIExpression()), !dbg !598
  %60 = fmul double %45, %59, !dbg !614
  %61 = fadd double %60, -7.200000e+02, !dbg !615
  %62 = fmul double %45, %61, !dbg !616
  %63 = fadd double %62, 1.200000e+02, !dbg !617
  %64 = fmul double %45, %63, !dbg !618
  %65 = fadd double %64, -2.400000e+01, !dbg !619
  %66 = fmul double %45, %65, !dbg !620
  %67 = fadd double %66, 6.000000e+00, !dbg !621
  %68 = fmul double %45, %67, !dbg !622
  %69 = fadd double %68, -2.000000e+00, !dbg !623
  %70 = fmul double %45, %69, !dbg !624
  tail call void @llvm.dbg.value(metadata double %70, metadata !554, metadata !DIExpression()), !dbg !598
  %71 = fadd double %70, 1.000000e+00, !dbg !625
  %72 = fmul double %71, %44, !dbg !626
  %73 = fdiv double %72, %0, !dbg !627
  store double %73, ptr %1, align 8, !dbg !628, !tbaa !215
  %74 = fadd double %0, 1.000000e+00, !dbg !629
  %75 = fmul double %74, 2.000000e+00, !dbg !630
  %76 = fmul double %75, 0x3CB0000000000000, !dbg !631
  %77 = fmul double %76, %73, !dbg !632
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !633
  store double %77, ptr %78, align 8, !dbg !634, !tbaa !220
  %79 = fcmp oeq double %73, 0.000000e+00, !dbg !635
  br i1 %79, label %80, label %83, !dbg !637

80:                                               ; preds = %43
  store double 0.000000e+00, ptr %1, align 8, !dbg !638, !tbaa !215
  store double 0x10000000000000, ptr %78, align 8, !dbg !638, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 413, i32 noundef 15) #7, !dbg !640
  br label %83, !dbg !640

81:                                               ; preds = %36
  store double 0.000000e+00, ptr %1, align 8, !dbg !642, !tbaa !215
  %82 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !642
  store double 0x10000000000000, ptr %82, align 8, !dbg !642, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 418, i32 noundef 15) #7, !dbg !645
  br label %83, !dbg !645

83:                                               ; preds = %80, %43, %81, %20, %12, %8
  %84 = phi i32 [ 0, %12 ], [ %22, %20 ], [ 15, %81 ], [ 16, %8 ], [ 15, %80 ], [ 0, %43 ], !dbg !647
  ret i32 %84, !dbg !648
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_E2_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !649 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !651, metadata !DIExpression()), !dbg !653
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !652, metadata !DIExpression()), !dbg !653
  %3 = tail call fastcc i32 @expint_E2_impl(double noundef %0, ptr noundef %1, i32 noundef 1), !dbg !654, !range !163
  ret i32 %3, !dbg !655
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_expint_En_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !656 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !660, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata double %1, metadata !661, metadata !DIExpression()), !dbg !663
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !662, metadata !DIExpression()), !dbg !663
  %4 = tail call fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef 0), !dbg !664
  ret i32 %4, !dbg !665
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) unnamed_addr #0 !dbg !666 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !674, metadata !DIExpression(), metadata !685, metadata ptr %5, metadata !DIExpression()), !dbg !686
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !670, metadata !DIExpression()), !dbg !687
  tail call void @llvm.dbg.value(metadata double %1, metadata !671, metadata !DIExpression()), !dbg !687
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !672, metadata !DIExpression()), !dbg !687
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !673, metadata !DIExpression()), !dbg !687
  %6 = icmp slt i32 %0, 0, !dbg !688
  br i1 %6, label %7, label %9, !dbg !689

7:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !690, !tbaa !215
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !690
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !690, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 426, i32 noundef 1) #7, !dbg !693
  br label %82, !dbg !693

9:                                                ; preds = %4
  switch i32 %0, label %31 [
    i32 0, label %10
    i32 1, label %27
    i32 2, label %29
  ], !dbg !695

10:                                               ; preds = %9
  %11 = fcmp oeq double %1, 0.000000e+00, !dbg !696
  br i1 %11, label %12, label %14, !dbg !699

12:                                               ; preds = %10
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !700, !tbaa !215
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !700
  store double 0x7FF8000000000000, ptr %13, align 8, !dbg !700, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 429, i32 noundef 1) #7, !dbg !703
  br label %82, !dbg !703

14:                                               ; preds = %10
  %15 = icmp eq i32 %3, 0, !dbg !705
  br i1 %15, label %16, label %19, !dbg !705

16:                                               ; preds = %14
  %17 = fneg double %1, !dbg !707
  %18 = tail call double @exp(double noundef %17) #7, !dbg !708
  br label %19, !dbg !705

19:                                               ; preds = %14, %16
  %20 = phi double [ %18, %16 ], [ 1.000000e+00, %14 ], !dbg !705
  %21 = fdiv double %20, %1, !dbg !709
  store double %21, ptr %2, align 8, !dbg !710, !tbaa !215
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !711
  %23 = fmul double %22, 0x3CC0000000000000, !dbg !712
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !713
  store double %23, ptr %24, align 8, !dbg !714, !tbaa !220
  %25 = fcmp olt double %22, 0x10000000000000, !dbg !715
  br i1 %25, label %26, label %82, !dbg !717

26:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 433, i32 noundef 15) #7, !dbg !718
  br label %82, !dbg !718

27:                                               ; preds = %9
  %28 = tail call fastcc i32 @expint_E1_impl(double noundef %1, ptr noundef %2, i32 noundef %3), !dbg !720, !range !163
  br label %82, !dbg !722

29:                                               ; preds = %9
  %30 = tail call fastcc i32 @expint_E2_impl(double noundef %1, ptr noundef %2, i32 noundef %3), !dbg !723, !range !163
  br label %82, !dbg !725

31:                                               ; preds = %9
  %32 = fcmp olt double %1, 0.000000e+00, !dbg !726
  br i1 %32, label %33, label %35, !dbg !728

33:                                               ; preds = %31
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !729, !tbaa !215
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !729
  store double 0x7FF8000000000000, ptr %34, align 8, !dbg !729, !tbaa !220
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 442, i32 noundef 1) #7, !dbg !732
  br label %82, !dbg !732

35:                                               ; preds = %31
  %36 = fcmp oeq double %1, 0.000000e+00, !dbg !734
  br i1 %36, label %37, label %52, !dbg !735

37:                                               ; preds = %35
  %38 = icmp eq i32 %3, 0, !dbg !736
  br i1 %38, label %41, label %39, !dbg !736

39:                                               ; preds = %37
  %40 = tail call double @exp(double noundef %1) #7, !dbg !738
  br label %41, !dbg !736

41:                                               ; preds = %37, %39
  %42 = phi double [ %40, %39 ], [ 1.000000e+00, %37 ], !dbg !736
  %43 = add nsw i32 %0, -1, !dbg !739
  %44 = sitofp i32 %43 to double, !dbg !739
  %45 = fdiv double 1.000000e+00, %44, !dbg !740
  %46 = fmul double %45, %42, !dbg !741
  store double %46, ptr %2, align 8, !dbg !742, !tbaa !215
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !743
  %48 = fmul double %47, 0x3CC0000000000000, !dbg !744
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !745
  store double %48, ptr %49, align 8, !dbg !746, !tbaa !220
  %50 = fcmp olt double %47, 0x10000000000000, !dbg !747
  br i1 %50, label %51, label %82, !dbg !749

51:                                               ; preds = %41
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 15) #7, !dbg !750
  br label %82, !dbg !750

52:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !752
  %53 = add nsw i32 %0, -1, !dbg !753
  %54 = sitofp i32 %53 to double, !dbg !754
  %55 = tail call double @pow(double noundef %1, double noundef %54) #7, !dbg !755
  tail call void @llvm.dbg.value(metadata double %55, metadata !682, metadata !DIExpression()), !dbg !686
  %56 = sub nsw i32 1, %0, !dbg !756
  %57 = sitofp i32 %56 to double, !dbg !757
  %58 = call i32 @gsl_sf_gamma_inc_e(double noundef %57, double noundef %1, ptr noundef nonnull %5) #7, !dbg !758
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !683, metadata !DIExpression()), !dbg !686
  %59 = icmp eq i32 %3, 0, !dbg !759
  br i1 %59, label %62, label %60, !dbg !759

60:                                               ; preds = %52
  %61 = call double @exp(double noundef %1) #7, !dbg !760
  br label %62, !dbg !759

62:                                               ; preds = %52, %60
  %63 = phi double [ %61, %60 ], [ 1.000000e+00, %52 ], !dbg !759
  tail call void @llvm.dbg.value(metadata double %63, metadata !684, metadata !DIExpression()), !dbg !686
  %64 = fmul double %55, %63, !dbg !761
  %65 = load double, ptr %5, align 8, !dbg !762, !tbaa !215
  %66 = fmul double %64, %65, !dbg !763
  store double %66, ptr %2, align 8, !dbg !764, !tbaa !215
  %67 = call double @llvm.fabs.f64(double %66), !dbg !765
  %68 = fmul double %67, 0x3CC0000000000000, !dbg !766
  %69 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !767
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !768
  %71 = load double, ptr %70, align 8, !dbg !768, !tbaa !220
  %72 = fmul double %64, %71, !dbg !769
  %73 = call double @llvm.fabs.f64(double %72), !dbg !770
  %74 = fmul double %73, 2.000000e+00, !dbg !771
  %75 = fadd double %68, %74, !dbg !772
  store double %75, ptr %69, align 8, !dbg !772, !tbaa !220
  %76 = icmp eq i32 %58, 0, !dbg !773
  br i1 %76, label %77, label %80, !dbg !775

77:                                               ; preds = %62
  %78 = fcmp olt double %67, 0x10000000000000, !dbg !776
  br i1 %78, label %79, label %80, !dbg !778

79:                                               ; preds = %77
  call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 457, i32 noundef 15) #7, !dbg !779
  br label %80, !dbg !779

80:                                               ; preds = %62, %77, %79
  %81 = phi i32 [ 15, %79 ], [ 0, %77 ], [ %58, %62 ], !dbg !686
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !781
  br label %82

82:                                               ; preds = %41, %19, %7, %12, %26, %27, %29, %33, %51, %80
  %83 = phi i32 [ 1, %7 ], [ 1, %12 ], [ 15, %26 ], [ %28, %27 ], [ %30, %29 ], [ 1, %33 ], [ 15, %51 ], [ %81, %80 ], [ 0, %19 ], [ 0, %41 ], !dbg !782
  ret i32 %83, !dbg !783
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_expint_En_scaled_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !784 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !786, metadata !DIExpression()), !dbg !789
  tail call void @llvm.dbg.value(metadata double %1, metadata !787, metadata !DIExpression()), !dbg !789
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !788, metadata !DIExpression()), !dbg !789
  %4 = tail call fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr noundef %2, i32 noundef 1), !dbg !790
  ret i32 %4, !dbg !791
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_Ei_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !792 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !794, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !795, metadata !DIExpression()), !dbg !798
  %3 = fneg double %0, !dbg !799
  call void @llvm.dbg.value(metadata double %3, metadata !159, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %1, metadata !160, metadata !DIExpression()), !dbg !800
  %4 = tail call fastcc noundef i32 @expint_E1_impl(double noundef %3, ptr noundef %1, i32 noundef 0), !dbg !802, !range !163
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !796, metadata !DIExpression()), !dbg !803
  %5 = load double, ptr %1, align 8, !dbg !804, !tbaa !215
  %6 = fneg double %5, !dbg !805
  store double %6, ptr %1, align 8, !dbg !806, !tbaa !215
  ret i32 %4, !dbg !807
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_expint_Ei_scaled_e(double noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !dbg !808 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !810, metadata !DIExpression()), !dbg !814
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !811, metadata !DIExpression()), !dbg !814
  %3 = fneg double %0, !dbg !815
  call void @llvm.dbg.value(metadata double %3, metadata !510, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata ptr %1, metadata !511, metadata !DIExpression()), !dbg !816
  %4 = tail call fastcc noundef i32 @expint_E1_impl(double noundef %3, ptr noundef %1, i32 noundef 1), !dbg !818, !range !163
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !812, metadata !DIExpression()), !dbg !819
  %5 = load double, ptr %1, align 8, !dbg !820, !tbaa !215
  %6 = fneg double %5, !dbg !821
  store double %6, ptr %1, align 8, !dbg !822, !tbaa !215
  ret i32 %4, !dbg !823
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_E1(double noundef %0) local_unnamed_addr #0 !dbg !824 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !831
  call void @llvm.dbg.assign(metadata i1 undef, metadata !829, metadata !DIExpression(), metadata !831, metadata ptr %2, metadata !DIExpression()), !dbg !832
  tail call void @llvm.dbg.value(metadata double %0, metadata !828, metadata !DIExpression()), !dbg !832
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !833
  call void @llvm.dbg.value(metadata double %0, metadata !159, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr %2, metadata !160, metadata !DIExpression()), !dbg !834
  %3 = call fastcc noundef i32 @expint_E1_impl(double noundef %0, ptr noundef nonnull %2, i32 noundef 0), !dbg !836, !range !163
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !830, metadata !DIExpression()), !dbg !832
  %4 = icmp eq i32 %3, 0, !dbg !837
  br i1 %4, label %6, label %5, !dbg !833

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 545, i32 noundef %3) #7, !dbg !839
  br label %6, !dbg !839

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !833, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !842
  ret double %7, !dbg !842
}

declare !dbg !843 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_E1_scaled(double noundef %0) local_unnamed_addr #0 !dbg !848 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !853
  call void @llvm.dbg.assign(metadata i1 undef, metadata !851, metadata !DIExpression(), metadata !853, metadata ptr %2, metadata !DIExpression()), !dbg !854
  tail call void @llvm.dbg.value(metadata double %0, metadata !850, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !855
  call void @llvm.dbg.value(metadata double %0, metadata !510, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata ptr %2, metadata !511, metadata !DIExpression()), !dbg !856
  %3 = call fastcc noundef i32 @expint_E1_impl(double noundef %0, ptr noundef nonnull %2, i32 noundef 1), !dbg !858, !range !163
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !852, metadata !DIExpression()), !dbg !854
  %4 = icmp eq i32 %3, 0, !dbg !859
  br i1 %4, label %6, label %5, !dbg !855

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 550, i32 noundef %3) #7, !dbg !861
  br label %6, !dbg !861

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !855, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !864
  ret double %7, !dbg !864
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_E2(double noundef %0) local_unnamed_addr #0 !dbg !865 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !870
  call void @llvm.dbg.assign(metadata i1 undef, metadata !868, metadata !DIExpression(), metadata !870, metadata ptr %2, metadata !DIExpression()), !dbg !871
  tail call void @llvm.dbg.value(metadata double %0, metadata !867, metadata !DIExpression()), !dbg !871
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !872
  call void @llvm.dbg.value(metadata double %0, metadata !517, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata ptr %2, metadata !518, metadata !DIExpression()), !dbg !873
  %3 = call fastcc noundef i32 @expint_E2_impl(double noundef %0, ptr noundef nonnull %2, i32 noundef 0), !dbg !875, !range !163
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !869, metadata !DIExpression()), !dbg !871
  %4 = icmp eq i32 %3, 0, !dbg !876
  br i1 %4, label %6, label %5, !dbg !872

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 555, i32 noundef %3) #7, !dbg !878
  br label %6, !dbg !878

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !872, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !881
  ret double %7, !dbg !881
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_E2_scaled(double noundef %0) local_unnamed_addr #0 !dbg !882 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !887
  call void @llvm.dbg.assign(metadata i1 undef, metadata !885, metadata !DIExpression(), metadata !887, metadata ptr %2, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %0, metadata !884, metadata !DIExpression()), !dbg !888
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !889
  call void @llvm.dbg.value(metadata double %0, metadata !651, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr %2, metadata !652, metadata !DIExpression()), !dbg !890
  %3 = call fastcc noundef i32 @expint_E2_impl(double noundef %0, ptr noundef nonnull %2, i32 noundef 1), !dbg !892, !range !163
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !886, metadata !DIExpression()), !dbg !888
  %4 = icmp eq i32 %3, 0, !dbg !893
  br i1 %4, label %6, label %5, !dbg !889

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 560, i32 noundef %3) #7, !dbg !895
  br label %6, !dbg !895

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !889, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !898
  ret double %7, !dbg !898
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_En(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !899 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !907
  call void @llvm.dbg.assign(metadata i1 undef, metadata !905, metadata !DIExpression(), metadata !907, metadata ptr %3, metadata !DIExpression()), !dbg !908
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !903, metadata !DIExpression()), !dbg !908
  tail call void @llvm.dbg.value(metadata double %1, metadata !904, metadata !DIExpression()), !dbg !908
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !909
  call void @llvm.dbg.value(metadata i32 %0, metadata !660, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata double %1, metadata !661, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr %3, metadata !662, metadata !DIExpression()), !dbg !910
  %4 = call fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr noundef nonnull %3, i32 noundef 0), !dbg !912
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !906, metadata !DIExpression()), !dbg !908
  %5 = icmp eq i32 %4, 0, !dbg !913
  br i1 %5, label %7, label %6, !dbg !909

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 565, i32 noundef %4) #7, !dbg !915
  br label %7, !dbg !915

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !909, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !918
  ret double %8, !dbg !918
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_En_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !919 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !925
  call void @llvm.dbg.assign(metadata i1 undef, metadata !923, metadata !DIExpression(), metadata !925, metadata ptr %3, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !921, metadata !DIExpression()), !dbg !926
  tail call void @llvm.dbg.value(metadata double %1, metadata !922, metadata !DIExpression()), !dbg !926
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !927
  call void @llvm.dbg.value(metadata i32 %0, metadata !786, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata double %1, metadata !787, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %3, metadata !788, metadata !DIExpression()), !dbg !928
  %4 = call fastcc i32 @expint_En_impl(i32 noundef %0, double noundef %1, ptr noundef nonnull %3, i32 noundef 1), !dbg !930
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !924, metadata !DIExpression()), !dbg !926
  %5 = icmp eq i32 %4, 0, !dbg !931
  br i1 %5, label %7, label %6, !dbg !927

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 570, i32 noundef %4) #7, !dbg !933
  br label %7, !dbg !933

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !927, !tbaa !215
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !936
  ret double %8, !dbg !936
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_Ei(double noundef %0) local_unnamed_addr #0 !dbg !937 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !942
  call void @llvm.dbg.assign(metadata i1 undef, metadata !940, metadata !DIExpression(), metadata !942, metadata ptr %2, metadata !DIExpression()), !dbg !943
  tail call void @llvm.dbg.value(metadata double %0, metadata !939, metadata !DIExpression()), !dbg !943
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !944
  call void @llvm.dbg.value(metadata double %0, metadata !794, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata ptr %2, metadata !795, metadata !DIExpression()), !dbg !945
  %3 = fneg double %0, !dbg !947
  call void @llvm.dbg.value(metadata double %3, metadata !159, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata ptr %2, metadata !160, metadata !DIExpression()), !dbg !948
  %4 = call fastcc noundef i32 @expint_E1_impl(double noundef %3, ptr noundef nonnull %2, i32 noundef 0), !dbg !950, !range !163
  call void @llvm.dbg.value(metadata i32 %4, metadata !796, metadata !DIExpression()), !dbg !951
  %5 = load double, ptr %2, align 8, !dbg !952, !tbaa !215
  call void @llvm.dbg.assign(metadata double %9, metadata !940, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !953, metadata ptr %2, metadata !DIExpression()), !dbg !943
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !941, metadata !DIExpression()), !dbg !943
  %6 = icmp eq i32 %4, 0, !dbg !954
  br i1 %6, label %8, label %7, !dbg !944

7:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 575, i32 noundef %4) #7, !dbg !956
  br label %8, !dbg !956

8:                                                ; preds = %1, %7
  %9 = fneg double %5, !dbg !959
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !960
  ret double %9, !dbg !960
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_expint_Ei_scaled(double noundef %0) local_unnamed_addr #0 !dbg !961 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !966
  call void @llvm.dbg.assign(metadata i1 undef, metadata !964, metadata !DIExpression(), metadata !966, metadata ptr %2, metadata !DIExpression()), !dbg !967
  tail call void @llvm.dbg.value(metadata double %0, metadata !963, metadata !DIExpression()), !dbg !967
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !968
  call void @llvm.dbg.value(metadata double %0, metadata !810, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata ptr %2, metadata !811, metadata !DIExpression()), !dbg !969
  %3 = fneg double %0, !dbg !971
  call void @llvm.dbg.value(metadata double %3, metadata !510, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr %2, metadata !511, metadata !DIExpression()), !dbg !972
  %4 = call fastcc noundef i32 @expint_E1_impl(double noundef %3, ptr noundef nonnull %2, i32 noundef 1), !dbg !974, !range !163
  call void @llvm.dbg.value(metadata i32 %4, metadata !812, metadata !DIExpression()), !dbg !975
  %5 = load double, ptr %2, align 8, !dbg !976, !tbaa !215
  call void @llvm.dbg.assign(metadata double %9, metadata !964, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !977, metadata ptr %2, metadata !DIExpression()), !dbg !967
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !965, metadata !DIExpression()), !dbg !967
  %6 = icmp eq i32 %4, 0, !dbg !978
  br i1 %6, label %8, label %7, !dbg !968

7:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 580, i32 noundef %4) #7, !dbg !980
  br label %8, !dbg !980

8:                                                ; preds = %1, %7
  %9 = fneg double %5, !dbg !983
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !984
  ret double %9, !dbg !984
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !985 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !989 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @cheb_eval_e(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !dbg !235 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !234, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double %1, metadata !242, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !243, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !246, metadata !DIExpression()), !dbg !990
  %4 = fmul double %1, 2.000000e+00, !dbg !991
  %5 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 2, !dbg !992
  %6 = load double, ptr %5, align 8, !dbg !992, !tbaa !993
  %7 = fsub double %4, %6, !dbg !997
  %8 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 3, !dbg !998
  %9 = load double, ptr %8, align 8, !dbg !998, !tbaa !999
  %10 = fsub double %7, %9, !dbg !1000
  %11 = fsub double %9, %6, !dbg !1001
  %12 = fdiv double %10, %11, !dbg !1002
  tail call void @llvm.dbg.value(metadata double %12, metadata !247, metadata !DIExpression()), !dbg !990
  %13 = fmul double %12, 2.000000e+00, !dbg !1003
  tail call void @llvm.dbg.value(metadata double %13, metadata !248, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !990
  %14 = getelementptr inbounds %struct.cheb_series_struct, ptr %0, i64 0, i32 1, !dbg !1004
  %15 = load i32, ptr %14, align 8, !dbg !1004, !tbaa !1005
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !244, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !245, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !249, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !246, metadata !DIExpression()), !dbg !990
  %16 = icmp sgt i32 %15, 0, !dbg !1006
  %17 = load ptr, ptr %0, align 8, !dbg !1007, !tbaa !1008
  br i1 %16, label %18, label %38, !dbg !1009

18:                                               ; preds = %3
  %19 = zext nneg i32 %15 to i64, !dbg !1009
  br label %20, !dbg !1009

20:                                               ; preds = %18, %20
  %21 = phi i64 [ %19, %18 ], [ %36, %20 ]
  %22 = phi double [ 0.000000e+00, %18 ], [ %29, %20 ]
  %23 = phi double [ 0.000000e+00, %18 ], [ %35, %20 ]
  %24 = phi double [ 0.000000e+00, %18 ], [ %22, %20 ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !244, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double %22, metadata !245, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double %23, metadata !249, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double %24, metadata !246, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double %22, metadata !250, metadata !DIExpression()), !dbg !1010
  %25 = fmul double %13, %22, !dbg !1011
  %26 = fsub double %25, %24, !dbg !1012
  %27 = getelementptr inbounds double, ptr %17, i64 %21, !dbg !1013
  %28 = load double, ptr %27, align 8, !dbg !1013, !tbaa !268
  %29 = fadd double %26, %28, !dbg !1014
  tail call void @llvm.dbg.value(metadata double %29, metadata !245, metadata !DIExpression()), !dbg !990
  %30 = tail call double @llvm.fabs.f64(double %25), !dbg !1015
  %31 = tail call double @llvm.fabs.f64(double %24), !dbg !1016
  %32 = fadd double %31, %30, !dbg !1017
  %33 = tail call double @llvm.fabs.f64(double %28), !dbg !1018
  %34 = fadd double %32, %33, !dbg !1019
  %35 = fadd double %23, %34, !dbg !1020
  tail call void @llvm.dbg.value(metadata double %35, metadata !249, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata double %22, metadata !246, metadata !DIExpression()), !dbg !990
  %36 = add nsw i64 %21, -1, !dbg !1021
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !244, metadata !DIExpression()), !dbg !990
  %37 = icmp ugt i64 %21, 1, !dbg !1006
  br i1 %37, label %20, label %38, !dbg !1009, !llvm.loop !1022

38:                                               ; preds = %20, %3
  %39 = phi double [ 0.000000e+00, %3 ], [ %22, %20 ], !dbg !990
  %40 = phi double [ 0.000000e+00, %3 ], [ %35, %20 ], !dbg !990
  %41 = phi double [ 0.000000e+00, %3 ], [ %29, %20 ], !dbg !990
  tail call void @llvm.dbg.value(metadata double %41, metadata !254, metadata !DIExpression()), !dbg !1024
  %42 = fmul double %12, %41, !dbg !1025
  %43 = fsub double %42, %39, !dbg !1026
  %44 = load double, ptr %17, align 8, !dbg !1027, !tbaa !268
  %45 = fmul double %44, 5.000000e-01, !dbg !1028
  %46 = fadd double %43, %45, !dbg !1029
  tail call void @llvm.dbg.value(metadata double %46, metadata !245, metadata !DIExpression()), !dbg !990
  %47 = tail call double @llvm.fabs.f64(double %42), !dbg !1030
  %48 = tail call double @llvm.fabs.f64(double %39), !dbg !1031
  %49 = fadd double %48, %47, !dbg !1032
  %50 = tail call double @llvm.fabs.f64(double %44), !dbg !1033
  %51 = fmul double %50, 5.000000e-01, !dbg !1034
  %52 = fadd double %49, %51, !dbg !1035
  %53 = fadd double %40, %52, !dbg !1036
  tail call void @llvm.dbg.value(metadata double %53, metadata !249, metadata !DIExpression()), !dbg !990
  store double %46, ptr %2, align 8, !dbg !1037, !tbaa !215
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !1038
  %55 = sext i32 %15 to i64, !dbg !1039
  %56 = getelementptr inbounds double, ptr %17, i64 %55, !dbg !1039
  %57 = load double, ptr %56, align 8, !dbg !1039, !tbaa !268
  %58 = tail call double @llvm.fabs.f64(double %57), !dbg !1040
  %59 = fadd double %58, %54, !dbg !1041
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1042
  store double %59, ptr %60, align 8, !dbg !1043, !tbaa !220
  ret void, !dbg !1044
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1045 double @pow(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !1048 i32 @gsl_sf_gamma_inc_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!44}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "expint.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "a26164276d2c3a853c959e981a3b4114")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 545, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 550, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 555, type: !3, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 560, type: !14, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 565, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 34)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 570, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 41)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 575, type: !3, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 580, type: !14, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !9, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 329, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 13)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "E12_cs", scope: !44, file: !2, line: 210, type: !93, isLocal: true, isDefinition: true)
!44 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !45, globals: !85, splitDebugInlining: false, nameTableKind: None)
!45 = !{!46}
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 39, baseType: !48, size: 32, elements: !49)
!47 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84}
!50 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!51 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!52 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!53 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!54 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!55 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!56 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!57 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!58 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!59 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!60 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!61 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!62 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!63 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!64 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!65 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!66 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!67 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!68 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!69 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!70 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!71 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!72 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!73 = !DIEnumerator(name: "GSL_ESING", value: 21)
!74 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!75 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!76 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!77 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!78 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!79 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!80 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!81 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!82 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!83 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!84 = !DIEnumerator(name: "GSL_EOF", value: 32)
!85 = !{!0, !7, !12, !17, !19, !21, !26, !31, !33, !35, !37, !86, !91, !104, !109, !111, !116, !118, !42, !123, !128, !130, !132, !134}
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 10)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "AE11_cs", scope: !44, file: !2, line: 123, type: !93, isLocal: true, isDefinition: true)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !94, line: 29, baseType: !95)
!94 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !94, line: 22, size: 320, elements: !96)
!96 = !{!97, !100, !101, !102, !103}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !95, file: !94, line: 23, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !95, file: !94, line: 24, baseType: !48, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !95, file: !94, line: 25, baseType: !99, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !95, file: !94, line: 26, baseType: !99, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !95, file: !94, line: 27, baseType: !48, size: 32, offset: 256)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "AE11_data", scope: !44, file: !2, line: 82, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 2496, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 39)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "AE12_cs", scope: !44, file: !2, line: 157, type: !93, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "AE12_data", scope: !44, file: !2, line: 130, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1600, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 25)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "E11_cs", scope: !44, file: !2, line: 185, type: !93, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "E11_data", scope: !44, file: !2, line: 164, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1216, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 19)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "E12_data", scope: !44, file: !2, line: 192, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1024, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "AE13_cs", scope: !44, file: !2, line: 244, type: !93, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "AE13_data", scope: !44, file: !2, line: 217, type: !113, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "AE14_cs", scope: !44, file: !2, line: 279, type: !93, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "AE14_data", scope: !44, file: !2, line: 251, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 1664, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 26)
!139 = !{i32 7, !"Dwarf Version", i32 5}
!140 = !{i32 2, !"Debug Info Version", i32 3}
!141 = !{i32 1, !"wchar_size", i32 4}
!142 = !{i32 8, !"PIC Level", i32 2}
!143 = !{i32 7, !"PIE Level", i32 2}
!144 = !{i32 7, !"uwtable", i32 2}
!145 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!146 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!147 = distinct !DISubprogram(name: "gsl_sf_expint_E1_e", scope: !2, file: !2, line: 466, type: !148, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !158)
!148 = !DISubroutineType(types: !149)
!149 = !{!48, !150, !151}
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !153, line: 41, baseType: !154)
!153 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !153, line: 37, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !154, file: !153, line: 38, baseType: !99, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !154, file: !153, line: 39, baseType: !99, size: 64, offset: 64)
!158 = !{!159, !160}
!159 = !DILocalVariable(name: "x", arg: 1, scope: !147, file: !2, line: 466, type: !150)
!160 = !DILocalVariable(name: "result", arg: 2, scope: !147, file: !2, line: 466, type: !151)
!161 = !DILocation(line: 0, scope: !147)
!162 = !DILocation(line: 468, column: 10, scope: !147)
!163 = !{i32 0, i32 17}
!164 = !DILocation(line: 468, column: 3, scope: !147)
!165 = distinct !DISubprogram(name: "expint_E1_impl", scope: !2, file: !2, line: 290, type: !166, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !169)
!166 = !DISubroutineType(types: !167)
!167 = !{!48, !150, !151, !168}
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!169 = !{!170, !171, !172, !173, !174, !175, !179, !180, !183, !184, !187, !188, !189, !193, !194, !195, !198, !199, !202}
!170 = !DILocalVariable(name: "x", arg: 1, scope: !165, file: !2, line: 290, type: !150)
!171 = !DILocalVariable(name: "result", arg: 2, scope: !165, file: !2, line: 290, type: !151)
!172 = !DILocalVariable(name: "scale", arg: 3, scope: !165, file: !2, line: 290, type: !168)
!173 = !DILocalVariable(name: "xmaxt", scope: !165, file: !2, line: 292, type: !150)
!174 = !DILocalVariable(name: "xmax", scope: !165, file: !2, line: 293, type: !150)
!175 = !DILocalVariable(name: "s", scope: !176, file: !2, line: 301, type: !150)
!176 = distinct !DILexicalBlock(scope: !177, file: !2, line: 300, column: 23)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 300, column: 11)
!178 = distinct !DILexicalBlock(scope: !165, file: !2, line: 297, column: 6)
!179 = !DILocalVariable(name: "result_c", scope: !176, file: !2, line: 302, type: !152)
!180 = !DILocalVariable(name: "s", scope: !181, file: !2, line: 310, type: !150)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 309, column: 22)
!182 = distinct !DILexicalBlock(scope: !177, file: !2, line: 309, column: 11)
!183 = !DILocalVariable(name: "result_c", scope: !181, file: !2, line: 311, type: !152)
!184 = !DILocalVariable(name: "ln_term", scope: !185, file: !2, line: 319, type: !150)
!185 = distinct !DILexicalBlock(scope: !186, file: !2, line: 318, column: 22)
!186 = distinct !DILexicalBlock(scope: !182, file: !2, line: 318, column: 11)
!187 = !DILocalVariable(name: "scale_factor", scope: !185, file: !2, line: 320, type: !150)
!188 = !DILocalVariable(name: "result_c", scope: !185, file: !2, line: 321, type: !152)
!189 = !DILocalVariable(name: "ln_term", scope: !190, file: !2, line: 332, type: !150)
!190 = distinct !DILexicalBlock(scope: !191, file: !2, line: 331, column: 21)
!191 = distinct !DILexicalBlock(scope: !192, file: !2, line: 331, column: 11)
!192 = distinct !DILexicalBlock(scope: !186, file: !2, line: 328, column: 11)
!193 = !DILocalVariable(name: "scale_factor", scope: !190, file: !2, line: 333, type: !150)
!194 = !DILocalVariable(name: "result_c", scope: !190, file: !2, line: 334, type: !152)
!195 = !DILocalVariable(name: "s", scope: !196, file: !2, line: 342, type: !150)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 341, column: 21)
!197 = distinct !DILexicalBlock(scope: !191, file: !2, line: 341, column: 11)
!198 = !DILocalVariable(name: "result_c", scope: !196, file: !2, line: 343, type: !152)
!199 = !DILocalVariable(name: "s", scope: !200, file: !2, line: 351, type: !150)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 350, column: 31)
!201 = distinct !DILexicalBlock(scope: !197, file: !2, line: 350, column: 11)
!202 = !DILocalVariable(name: "result_c", scope: !200, file: !2, line: 352, type: !152)
!203 = distinct !DIAssignID()
!204 = !DILocation(line: 0, scope: !190)
!205 = distinct !DIAssignID()
!206 = !DILocation(line: 0, scope: !196)
!207 = distinct !DIAssignID()
!208 = !DILocation(line: 0, scope: !200)
!209 = !DILocation(line: 0, scope: !165)
!210 = !DILocation(line: 297, column: 8, scope: !178)
!211 = !DILocation(line: 297, column: 16, scope: !178)
!212 = !DILocation(line: 298, column: 7, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !2, line: 298, column: 7)
!214 = distinct !DILexicalBlock(scope: !178, file: !2, line: 297, column: 27)
!215 = !{!216, !217, i64 0}
!216 = !{!"gsl_sf_result_struct", !217, i64 0, !217, i64 8}
!217 = !{!"double", !218, i64 0}
!218 = !{!"omnipotent char", !219, i64 0}
!219 = !{!"Simple C/C++ TBAA"}
!220 = !{!216, !217, i64 8}
!221 = !DILocation(line: 298, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !213, file: !2, line: 298, column: 7)
!223 = !DILocation(line: 300, column: 13, scope: !177)
!224 = !DILocation(line: 300, column: 11, scope: !178)
!225 = !DILocation(line: 301, column: 25, scope: !176)
!226 = !DILocation(line: 301, column: 32, scope: !176)
!227 = !DILocation(line: 301, column: 50, scope: !176)
!228 = !DILocation(line: 301, column: 46, scope: !176)
!229 = !DILocation(line: 301, column: 28, scope: !176)
!230 = !DILocation(line: 0, scope: !176)
!231 = !DILocation(line: 303, column: 31, scope: !176)
!232 = !DILocation(line: 303, column: 33, scope: !176)
!233 = !{}
!234 = !DILocalVariable(name: "cs", arg: 1, scope: !235, file: !236, line: 3, type: !239)
!235 = distinct !DISubprogram(name: "cheb_eval_e", scope: !236, file: !236, line: 3, type: !237, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !241)
!236 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!237 = !DISubroutineType(cc: DW_CC_nocall, types: !238)
!238 = !{!48, !239, !150, !151}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!241 = !{!234, !242, !243, !244, !245, !246, !247, !248, !249, !250, !254}
!242 = !DILocalVariable(name: "x", arg: 2, scope: !235, file: !236, line: 4, type: !150)
!243 = !DILocalVariable(name: "result", arg: 3, scope: !235, file: !236, line: 5, type: !151)
!244 = !DILocalVariable(name: "j", scope: !235, file: !236, line: 7, type: !48)
!245 = !DILocalVariable(name: "d", scope: !235, file: !236, line: 8, type: !99)
!246 = !DILocalVariable(name: "dd", scope: !235, file: !236, line: 9, type: !99)
!247 = !DILocalVariable(name: "y", scope: !235, file: !236, line: 11, type: !99)
!248 = !DILocalVariable(name: "y2", scope: !235, file: !236, line: 12, type: !99)
!249 = !DILocalVariable(name: "e", scope: !235, file: !236, line: 14, type: !99)
!250 = !DILocalVariable(name: "temp", scope: !251, file: !236, line: 17, type: !99)
!251 = distinct !DILexicalBlock(scope: !252, file: !236, line: 16, column: 33)
!252 = distinct !DILexicalBlock(scope: !253, file: !236, line: 16, column: 3)
!253 = distinct !DILexicalBlock(scope: !235, file: !236, line: 16, column: 3)
!254 = !DILocalVariable(name: "temp", scope: !255, file: !236, line: 24, type: !99)
!255 = distinct !DILexicalBlock(scope: !235, file: !236, line: 23, column: 3)
!256 = !DILocation(line: 0, scope: !235, inlinedAt: !257)
!257 = distinct !DILocation(line: 303, column: 5, scope: !176)
!258 = !DILocation(line: 11, column: 19, scope: !235, inlinedAt: !257)
!259 = !DILocation(line: 11, column: 22, scope: !235, inlinedAt: !257)
!260 = !DILocation(line: 11, column: 30, scope: !235, inlinedAt: !257)
!261 = !DILocation(line: 11, column: 39, scope: !235, inlinedAt: !257)
!262 = !DILocation(line: 12, column: 19, scope: !235, inlinedAt: !257)
!263 = !DILocation(line: 16, column: 3, scope: !253, inlinedAt: !257)
!264 = !DILocation(line: 0, scope: !251, inlinedAt: !257)
!265 = !DILocation(line: 18, column: 11, scope: !251, inlinedAt: !257)
!266 = !DILocation(line: 18, column: 14, scope: !251, inlinedAt: !257)
!267 = !DILocation(line: 18, column: 21, scope: !251, inlinedAt: !257)
!268 = !{!217, !217, i64 0}
!269 = !DILocation(line: 18, column: 19, scope: !251, inlinedAt: !257)
!270 = !DILocation(line: 19, column: 10, scope: !251, inlinedAt: !257)
!271 = !DILocation(line: 19, column: 26, scope: !251, inlinedAt: !257)
!272 = !DILocation(line: 19, column: 24, scope: !251, inlinedAt: !257)
!273 = !DILocation(line: 19, column: 37, scope: !251, inlinedAt: !257)
!274 = !DILocation(line: 19, column: 35, scope: !251, inlinedAt: !257)
!275 = !DILocation(line: 19, column: 7, scope: !251, inlinedAt: !257)
!276 = !DILocation(line: 16, column: 29, scope: !252, inlinedAt: !257)
!277 = !DILocation(line: 16, column: 23, scope: !252, inlinedAt: !257)
!278 = distinct !{!278, !263, !279, !280}
!279 = !DILocation(line: 21, column: 3, scope: !253, inlinedAt: !257)
!280 = !{!"llvm.loop.mustprogress"}
!281 = !DILocation(line: 0, scope: !255, inlinedAt: !257)
!282 = !DILocation(line: 25, column: 10, scope: !255, inlinedAt: !257)
!283 = !DILocation(line: 25, column: 13, scope: !255, inlinedAt: !257)
!284 = !DILocation(line: 25, column: 18, scope: !255, inlinedAt: !257)
!285 = !DILocation(line: 26, column: 10, scope: !255, inlinedAt: !257)
!286 = !DILocation(line: 26, column: 25, scope: !255, inlinedAt: !257)
!287 = !DILocation(line: 26, column: 23, scope: !255, inlinedAt: !257)
!288 = !DILocation(line: 26, column: 34, scope: !255, inlinedAt: !257)
!289 = !DILocation(line: 26, column: 7, scope: !255, inlinedAt: !257)
!290 = !DILocation(line: 30, column: 33, scope: !235, inlinedAt: !257)
!291 = !DILocation(line: 30, column: 37, scope: !235, inlinedAt: !257)
!292 = !DILocation(line: 304, column: 29, scope: !176)
!293 = !DILocation(line: 304, column: 22, scope: !176)
!294 = !DILocation(line: 304, column: 18, scope: !176)
!295 = !DILocation(line: 305, column: 22, scope: !176)
!296 = !DILocation(line: 305, column: 13, scope: !176)
!297 = !DILocation(line: 306, column: 45, scope: !176)
!298 = !DILocation(line: 306, column: 53, scope: !176)
!299 = !DILocation(line: 306, column: 42, scope: !176)
!300 = !DILocation(line: 306, column: 62, scope: !176)
!301 = !DILocation(line: 306, column: 60, scope: !176)
!302 = !DILocation(line: 306, column: 17, scope: !176)
!303 = !DILocation(line: 309, column: 13, scope: !182)
!304 = !DILocation(line: 309, column: 11, scope: !177)
!305 = !DILocation(line: 310, column: 25, scope: !181)
!306 = !DILocation(line: 310, column: 32, scope: !181)
!307 = !DILocation(line: 310, column: 50, scope: !181)
!308 = !DILocation(line: 310, column: 46, scope: !181)
!309 = !DILocation(line: 310, column: 28, scope: !181)
!310 = !DILocation(line: 0, scope: !181)
!311 = !DILocation(line: 312, column: 32, scope: !181)
!312 = !DILocation(line: 312, column: 34, scope: !181)
!313 = !DILocation(line: 312, column: 39, scope: !181)
!314 = !DILocation(line: 0, scope: !235, inlinedAt: !315)
!315 = distinct !DILocation(line: 312, column: 5, scope: !181)
!316 = !DILocation(line: 11, column: 19, scope: !235, inlinedAt: !315)
!317 = !DILocation(line: 11, column: 22, scope: !235, inlinedAt: !315)
!318 = !DILocation(line: 11, column: 30, scope: !235, inlinedAt: !315)
!319 = !DILocation(line: 11, column: 39, scope: !235, inlinedAt: !315)
!320 = !DILocation(line: 12, column: 19, scope: !235, inlinedAt: !315)
!321 = !DILocation(line: 16, column: 3, scope: !253, inlinedAt: !315)
!322 = !DILocation(line: 0, scope: !251, inlinedAt: !315)
!323 = !DILocation(line: 18, column: 11, scope: !251, inlinedAt: !315)
!324 = !DILocation(line: 18, column: 14, scope: !251, inlinedAt: !315)
!325 = !DILocation(line: 18, column: 21, scope: !251, inlinedAt: !315)
!326 = !DILocation(line: 18, column: 19, scope: !251, inlinedAt: !315)
!327 = !DILocation(line: 19, column: 10, scope: !251, inlinedAt: !315)
!328 = !DILocation(line: 19, column: 26, scope: !251, inlinedAt: !315)
!329 = !DILocation(line: 19, column: 24, scope: !251, inlinedAt: !315)
!330 = !DILocation(line: 19, column: 37, scope: !251, inlinedAt: !315)
!331 = !DILocation(line: 19, column: 35, scope: !251, inlinedAt: !315)
!332 = !DILocation(line: 19, column: 7, scope: !251, inlinedAt: !315)
!333 = !DILocation(line: 16, column: 29, scope: !252, inlinedAt: !315)
!334 = !DILocation(line: 16, column: 23, scope: !252, inlinedAt: !315)
!335 = distinct !{!335, !321, !336, !280}
!336 = !DILocation(line: 21, column: 3, scope: !253, inlinedAt: !315)
!337 = !DILocation(line: 0, scope: !255, inlinedAt: !315)
!338 = !DILocation(line: 25, column: 10, scope: !255, inlinedAt: !315)
!339 = !DILocation(line: 25, column: 13, scope: !255, inlinedAt: !315)
!340 = !DILocation(line: 25, column: 18, scope: !255, inlinedAt: !315)
!341 = !DILocation(line: 26, column: 10, scope: !255, inlinedAt: !315)
!342 = !DILocation(line: 26, column: 25, scope: !255, inlinedAt: !315)
!343 = !DILocation(line: 26, column: 23, scope: !255, inlinedAt: !315)
!344 = !DILocation(line: 26, column: 34, scope: !255, inlinedAt: !315)
!345 = !DILocation(line: 26, column: 7, scope: !255, inlinedAt: !315)
!346 = !DILocation(line: 30, column: 33, scope: !235, inlinedAt: !315)
!347 = !DILocation(line: 30, column: 37, scope: !235, inlinedAt: !315)
!348 = !DILocation(line: 313, column: 29, scope: !181)
!349 = !DILocation(line: 313, column: 22, scope: !181)
!350 = !DILocation(line: 313, column: 18, scope: !181)
!351 = !DILocation(line: 314, column: 22, scope: !181)
!352 = !DILocation(line: 314, column: 13, scope: !181)
!353 = !DILocation(line: 315, column: 44, scope: !181)
!354 = !DILocation(line: 315, column: 42, scope: !181)
!355 = !DILocation(line: 315, column: 17, scope: !181)
!356 = !DILocation(line: 318, column: 13, scope: !186)
!357 = !DILocation(line: 318, column: 11, scope: !182)
!358 = !DILocation(line: 319, column: 33, scope: !185)
!359 = !DILocation(line: 319, column: 29, scope: !185)
!360 = !DILocation(line: 319, column: 28, scope: !185)
!361 = !DILocation(line: 0, scope: !185)
!362 = !DILocation(line: 320, column: 35, scope: !185)
!363 = !DILocation(line: 320, column: 43, scope: !185)
!364 = !DILocation(line: 322, column: 30, scope: !185)
!365 = !DILocation(line: 322, column: 32, scope: !185)
!366 = !DILocation(line: 322, column: 37, scope: !185)
!367 = !DILocation(line: 0, scope: !235, inlinedAt: !368)
!368 = distinct !DILocation(line: 322, column: 5, scope: !185)
!369 = !DILocation(line: 11, column: 19, scope: !235, inlinedAt: !368)
!370 = !DILocation(line: 11, column: 22, scope: !235, inlinedAt: !368)
!371 = !DILocation(line: 11, column: 30, scope: !235, inlinedAt: !368)
!372 = !DILocation(line: 11, column: 39, scope: !235, inlinedAt: !368)
!373 = !DILocation(line: 12, column: 19, scope: !235, inlinedAt: !368)
!374 = !DILocation(line: 16, column: 3, scope: !253, inlinedAt: !368)
!375 = !DILocation(line: 0, scope: !251, inlinedAt: !368)
!376 = !DILocation(line: 18, column: 11, scope: !251, inlinedAt: !368)
!377 = !DILocation(line: 18, column: 14, scope: !251, inlinedAt: !368)
!378 = !DILocation(line: 18, column: 21, scope: !251, inlinedAt: !368)
!379 = !DILocation(line: 18, column: 19, scope: !251, inlinedAt: !368)
!380 = !DILocation(line: 19, column: 10, scope: !251, inlinedAt: !368)
!381 = !DILocation(line: 19, column: 26, scope: !251, inlinedAt: !368)
!382 = !DILocation(line: 19, column: 24, scope: !251, inlinedAt: !368)
!383 = !DILocation(line: 19, column: 37, scope: !251, inlinedAt: !368)
!384 = !DILocation(line: 19, column: 35, scope: !251, inlinedAt: !368)
!385 = !DILocation(line: 19, column: 7, scope: !251, inlinedAt: !368)
!386 = !DILocation(line: 16, column: 29, scope: !252, inlinedAt: !368)
!387 = !DILocation(line: 16, column: 23, scope: !252, inlinedAt: !368)
!388 = distinct !{!388, !374, !389, !280}
!389 = !DILocation(line: 21, column: 3, scope: !253, inlinedAt: !368)
!390 = !DILocation(line: 0, scope: !255, inlinedAt: !368)
!391 = !DILocation(line: 25, column: 10, scope: !255, inlinedAt: !368)
!392 = !DILocation(line: 25, column: 13, scope: !255, inlinedAt: !368)
!393 = !DILocation(line: 25, column: 18, scope: !255, inlinedAt: !368)
!394 = !DILocation(line: 26, column: 10, scope: !255, inlinedAt: !368)
!395 = !DILocation(line: 26, column: 25, scope: !255, inlinedAt: !368)
!396 = !DILocation(line: 26, column: 23, scope: !255, inlinedAt: !368)
!397 = !DILocation(line: 26, column: 34, scope: !255, inlinedAt: !368)
!398 = !DILocation(line: 26, column: 7, scope: !255, inlinedAt: !368)
!399 = !DILocation(line: 30, column: 33, scope: !235, inlinedAt: !368)
!400 = !DILocation(line: 30, column: 37, scope: !235, inlinedAt: !368)
!401 = !DILocation(line: 323, column: 44, scope: !185)
!402 = !DILocation(line: 323, column: 33, scope: !185)
!403 = !DILocation(line: 323, column: 18, scope: !185)
!404 = !DILocation(line: 324, column: 69, scope: !185)
!405 = !DILocation(line: 324, column: 67, scope: !185)
!406 = !DILocation(line: 324, column: 49, scope: !185)
!407 = !DILocation(line: 324, column: 33, scope: !185)
!408 = !DILocation(line: 324, column: 13, scope: !185)
!409 = !DILocation(line: 325, column: 44, scope: !185)
!410 = !DILocation(line: 325, column: 42, scope: !185)
!411 = !DILocation(line: 325, column: 17, scope: !185)
!412 = !DILocation(line: 328, column: 13, scope: !192)
!413 = !DILocation(line: 328, column: 11, scope: !186)
!414 = !DILocation(line: 329, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 329, column: 5)
!416 = distinct !DILexicalBlock(scope: !192, file: !2, line: 328, column: 21)
!417 = !DILocation(line: 329, column: 5, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !2, line: 329, column: 5)
!419 = !DILocation(line: 331, column: 13, scope: !191)
!420 = !DILocation(line: 331, column: 11, scope: !192)
!421 = !DILocation(line: 332, column: 33, scope: !190)
!422 = !DILocation(line: 332, column: 29, scope: !190)
!423 = !DILocation(line: 332, column: 28, scope: !190)
!424 = !DILocation(line: 333, column: 35, scope: !190)
!425 = !DILocation(line: 333, column: 43, scope: !190)
!426 = !DILocation(line: 334, column: 5, scope: !190)
!427 = !DILocation(line: 335, column: 5, scope: !190)
!428 = !DILocation(line: 336, column: 44, scope: !190)
!429 = !DILocation(line: 336, column: 53, scope: !190)
!430 = !DILocation(line: 336, column: 68, scope: !190)
!431 = !DILocation(line: 336, column: 57, scope: !190)
!432 = !DILocation(line: 336, column: 33, scope: !190)
!433 = !DILocation(line: 336, column: 18, scope: !190)
!434 = !DILocation(line: 337, column: 45, scope: !190)
!435 = !DILocation(line: 337, column: 69, scope: !190)
!436 = !DILocation(line: 337, column: 67, scope: !190)
!437 = !DILocation(line: 337, column: 49, scope: !190)
!438 = !DILocation(line: 337, column: 33, scope: !190)
!439 = !DILocation(line: 337, column: 13, scope: !190)
!440 = !DILocation(line: 338, column: 44, scope: !190)
!441 = !DILocation(line: 338, column: 42, scope: !190)
!442 = !DILocation(line: 338, column: 17, scope: !190)
!443 = !DILocation(line: 340, column: 3, scope: !191)
!444 = !DILocation(line: 341, column: 13, scope: !197)
!445 = !DILocation(line: 341, column: 11, scope: !191)
!446 = !DILocation(line: 342, column: 25, scope: !196)
!447 = !DILocation(line: 342, column: 32, scope: !196)
!448 = !DILocation(line: 342, column: 50, scope: !196)
!449 = !DILocation(line: 342, column: 46, scope: !196)
!450 = !DILocation(line: 342, column: 28, scope: !196)
!451 = !DILocation(line: 343, column: 5, scope: !196)
!452 = !DILocation(line: 344, column: 31, scope: !196)
!453 = !DILocation(line: 344, column: 33, scope: !196)
!454 = !DILocation(line: 344, column: 38, scope: !196)
!455 = !DILocation(line: 344, column: 5, scope: !196)
!456 = !DILocation(line: 345, column: 40, scope: !196)
!457 = !DILocation(line: 345, column: 29, scope: !196)
!458 = !DILocation(line: 345, column: 22, scope: !196)
!459 = !DILocation(line: 345, column: 18, scope: !196)
!460 = !DILocation(line: 346, column: 33, scope: !196)
!461 = !DILocation(line: 346, column: 22, scope: !196)
!462 = !DILocation(line: 346, column: 13, scope: !196)
!463 = !DILocation(line: 347, column: 44, scope: !196)
!464 = !DILocation(line: 347, column: 42, scope: !196)
!465 = !DILocation(line: 347, column: 17, scope: !196)
!466 = !DILocation(line: 349, column: 3, scope: !197)
!467 = !DILocation(line: 350, column: 13, scope: !201)
!468 = !DILocation(line: 350, column: 21, scope: !201)
!469 = !DILocation(line: 351, column: 25, scope: !200)
!470 = !DILocation(line: 351, column: 32, scope: !200)
!471 = !DILocation(line: 351, column: 50, scope: !200)
!472 = !DILocation(line: 351, column: 46, scope: !200)
!473 = !DILocation(line: 351, column: 28, scope: !200)
!474 = !DILocation(line: 352, column: 5, scope: !200)
!475 = !DILocation(line: 353, column: 30, scope: !200)
!476 = !DILocation(line: 353, column: 32, scope: !200)
!477 = !DILocation(line: 353, column: 5, scope: !200)
!478 = !DILocation(line: 354, column: 41, scope: !200)
!479 = !DILocation(line: 354, column: 29, scope: !200)
!480 = !DILocation(line: 354, column: 22, scope: !200)
!481 = !DILocation(line: 354, column: 18, scope: !200)
!482 = !DILocation(line: 355, column: 52, scope: !200)
!483 = !DILocation(line: 355, column: 41, scope: !200)
!484 = !DILocation(line: 355, column: 22, scope: !200)
!485 = !DILocation(line: 355, column: 13, scope: !200)
!486 = !DILocation(line: 356, column: 29, scope: !200)
!487 = !DILocation(line: 356, column: 24, scope: !200)
!488 = !DILocation(line: 356, column: 36, scope: !200)
!489 = !DILocation(line: 356, column: 56, scope: !200)
!490 = !DILocation(line: 356, column: 54, scope: !200)
!491 = !DILocation(line: 356, column: 17, scope: !200)
!492 = !DILocation(line: 357, column: 20, scope: !493)
!493 = distinct !DILexicalBlock(scope: !200, file: !2, line: 357, column: 8)
!494 = !DILocation(line: 357, column: 8, scope: !200)
!495 = !DILocation(line: 358, column: 7, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !2, line: 358, column: 7)
!497 = !DILocation(line: 358, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !496, file: !2, line: 358, column: 7)
!499 = !DILocation(line: 0, scope: !493)
!500 = !DILocation(line: 361, column: 3, scope: !201)
!501 = !DILocation(line: 363, column: 5, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !2, line: 363, column: 5)
!503 = distinct !DILexicalBlock(scope: !201, file: !2, line: 362, column: 8)
!504 = !DILocation(line: 363, column: 5, scope: !505)
!505 = distinct !DILexicalBlock(scope: !502, file: !2, line: 363, column: 5)
!506 = !DILocation(line: 0, scope: !178)
!507 = !DILocation(line: 365, column: 1, scope: !165)
!508 = distinct !DISubprogram(name: "gsl_sf_expint_E1_scaled_e", scope: !2, file: !2, line: 472, type: !148, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !509)
!509 = !{!510, !511}
!510 = !DILocalVariable(name: "x", arg: 1, scope: !508, file: !2, line: 472, type: !150)
!511 = !DILocalVariable(name: "result", arg: 2, scope: !508, file: !2, line: 472, type: !151)
!512 = !DILocation(line: 0, scope: !508)
!513 = !DILocation(line: 474, column: 10, scope: !508)
!514 = !DILocation(line: 474, column: 3, scope: !508)
!515 = distinct !DISubprogram(name: "gsl_sf_expint_E2_e", scope: !2, file: !2, line: 478, type: !148, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !516)
!516 = !{!517, !518}
!517 = !DILocalVariable(name: "x", arg: 1, scope: !515, file: !2, line: 478, type: !150)
!518 = !DILocalVariable(name: "result", arg: 2, scope: !515, file: !2, line: 478, type: !151)
!519 = !DILocation(line: 0, scope: !515)
!520 = !DILocation(line: 480, column: 10, scope: !515)
!521 = !DILocation(line: 480, column: 3, scope: !515)
!522 = distinct !DISubprogram(name: "expint_E2_impl", scope: !2, file: !2, line: 369, type: !166, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !523)
!523 = !{!524, !525, !526, !527, !528, !529, !534, !535, !536, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!524 = !DILocalVariable(name: "x", arg: 1, scope: !522, file: !2, line: 369, type: !150)
!525 = !DILocalVariable(name: "result", arg: 2, scope: !522, file: !2, line: 369, type: !151)
!526 = !DILocalVariable(name: "scale", arg: 3, scope: !522, file: !2, line: 369, type: !168)
!527 = !DILocalVariable(name: "xmaxt", scope: !522, file: !2, line: 371, type: !150)
!528 = !DILocalVariable(name: "xmax", scope: !522, file: !2, line: 372, type: !150)
!529 = !DILocalVariable(name: "ex", scope: !530, file: !2, line: 384, type: !150)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 383, column: 24)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 383, column: 13)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 379, column: 12)
!533 = distinct !DILexicalBlock(scope: !522, file: !2, line: 376, column: 6)
!534 = !DILocalVariable(name: "result_E1", scope: !530, file: !2, line: 385, type: !152)
!535 = !DILocalVariable(name: "stat_E1", scope: !530, file: !2, line: 386, type: !48)
!536 = !DILocalVariable(name: "s", scope: !537, file: !2, line: 393, type: !150)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 392, column: 30)
!538 = distinct !DILexicalBlock(scope: !531, file: !2, line: 392, column: 11)
!539 = !DILocalVariable(name: "c1", scope: !537, file: !2, line: 394, type: !150)
!540 = !DILocalVariable(name: "c2", scope: !537, file: !2, line: 395, type: !150)
!541 = !DILocalVariable(name: "c3", scope: !537, file: !2, line: 396, type: !150)
!542 = !DILocalVariable(name: "c4", scope: !537, file: !2, line: 397, type: !150)
!543 = !DILocalVariable(name: "c5", scope: !537, file: !2, line: 398, type: !150)
!544 = !DILocalVariable(name: "c6", scope: !537, file: !2, line: 399, type: !150)
!545 = !DILocalVariable(name: "c7", scope: !537, file: !2, line: 400, type: !150)
!546 = !DILocalVariable(name: "c8", scope: !537, file: !2, line: 401, type: !150)
!547 = !DILocalVariable(name: "c9", scope: !537, file: !2, line: 402, type: !150)
!548 = !DILocalVariable(name: "c10", scope: !537, file: !2, line: 403, type: !150)
!549 = !DILocalVariable(name: "c11", scope: !537, file: !2, line: 404, type: !150)
!550 = !DILocalVariable(name: "c12", scope: !537, file: !2, line: 405, type: !150)
!551 = !DILocalVariable(name: "c13", scope: !537, file: !2, line: 406, type: !150)
!552 = !DILocalVariable(name: "y", scope: !537, file: !2, line: 407, type: !150)
!553 = !DILocalVariable(name: "sum6", scope: !537, file: !2, line: 408, type: !150)
!554 = !DILocalVariable(name: "sum", scope: !537, file: !2, line: 409, type: !150)
!555 = distinct !DIAssignID()
!556 = !DILocation(line: 0, scope: !530)
!557 = !DILocation(line: 0, scope: !522)
!558 = !DILocation(line: 376, column: 8, scope: !533)
!559 = !DILocation(line: 376, column: 16, scope: !533)
!560 = !DILocation(line: 377, column: 5, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 377, column: 5)
!562 = distinct !DILexicalBlock(scope: !533, file: !2, line: 376, column: 27)
!563 = !DILocation(line: 377, column: 5, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !2, line: 377, column: 5)
!565 = !DILocation(line: 379, column: 14, scope: !532)
!566 = !DILocation(line: 379, column: 12, scope: !533)
!567 = !DILocation(line: 380, column: 17, scope: !568)
!568 = distinct !DILexicalBlock(scope: !532, file: !2, line: 379, column: 22)
!569 = !DILocation(line: 381, column: 13, scope: !568)
!570 = !DILocation(line: 381, column: 17, scope: !568)
!571 = !DILocation(line: 382, column: 5, scope: !568)
!572 = !DILocation(line: 383, column: 15, scope: !531)
!573 = !DILocation(line: 383, column: 13, scope: !532)
!574 = !DILocation(line: 384, column: 25, scope: !530)
!575 = !DILocation(line: 384, column: 43, scope: !530)
!576 = !DILocation(line: 384, column: 39, scope: !530)
!577 = !DILocation(line: 385, column: 5, scope: !530)
!578 = !DILocation(line: 386, column: 19, scope: !530)
!579 = !DILocation(line: 387, column: 37, scope: !530)
!580 = !DILocation(line: 387, column: 26, scope: !530)
!581 = !DILocation(line: 387, column: 23, scope: !530)
!582 = !DILocation(line: 387, column: 18, scope: !530)
!583 = !DILocation(line: 388, column: 35, scope: !530)
!584 = !DILocation(line: 388, column: 41, scope: !530)
!585 = !DILocation(line: 388, column: 61, scope: !530)
!586 = !DILocation(line: 388, column: 49, scope: !530)
!587 = !DILocation(line: 388, column: 39, scope: !530)
!588 = !DILocation(line: 388, column: 13, scope: !530)
!589 = !DILocation(line: 389, column: 44, scope: !530)
!590 = !DILocation(line: 389, column: 42, scope: !530)
!591 = !DILocation(line: 389, column: 17, scope: !530)
!592 = !DILocation(line: 391, column: 3, scope: !531)
!593 = !DILocation(line: 392, column: 13, scope: !538)
!594 = !DILocation(line: 392, column: 20, scope: !538)
!595 = !DILocation(line: 393, column: 24, scope: !537)
!596 = !DILocation(line: 393, column: 42, scope: !537)
!597 = !DILocation(line: 393, column: 38, scope: !537)
!598 = !DILocation(line: 0, scope: !537)
!599 = !DILocation(line: 407, column: 25, scope: !537)
!600 = !DILocation(line: 408, column: 68, scope: !537)
!601 = !DILocation(line: 408, column: 66, scope: !537)
!602 = !DILocation(line: 408, column: 61, scope: !537)
!603 = !DILocation(line: 408, column: 59, scope: !537)
!604 = !DILocation(line: 408, column: 54, scope: !537)
!605 = !DILocation(line: 408, column: 52, scope: !537)
!606 = !DILocation(line: 408, column: 47, scope: !537)
!607 = !DILocation(line: 408, column: 45, scope: !537)
!608 = !DILocation(line: 408, column: 41, scope: !537)
!609 = !DILocation(line: 408, column: 39, scope: !537)
!610 = !DILocation(line: 408, column: 35, scope: !537)
!611 = !DILocation(line: 408, column: 33, scope: !537)
!612 = !DILocation(line: 408, column: 29, scope: !537)
!613 = !DILocation(line: 408, column: 27, scope: !537)
!614 = !DILocation(line: 409, column: 56, scope: !537)
!615 = !DILocation(line: 409, column: 54, scope: !537)
!616 = !DILocation(line: 409, column: 50, scope: !537)
!617 = !DILocation(line: 409, column: 48, scope: !537)
!618 = !DILocation(line: 409, column: 44, scope: !537)
!619 = !DILocation(line: 409, column: 42, scope: !537)
!620 = !DILocation(line: 409, column: 38, scope: !537)
!621 = !DILocation(line: 409, column: 36, scope: !537)
!622 = !DILocation(line: 409, column: 32, scope: !537)
!623 = !DILocation(line: 409, column: 30, scope: !537)
!624 = !DILocation(line: 409, column: 26, scope: !537)
!625 = !DILocation(line: 410, column: 28, scope: !537)
!626 = !DILocation(line: 410, column: 21, scope: !537)
!627 = !DILocation(line: 410, column: 34, scope: !537)
!628 = !DILocation(line: 410, column: 17, scope: !537)
!629 = !DILocation(line: 411, column: 28, scope: !537)
!630 = !DILocation(line: 411, column: 23, scope: !537)
!631 = !DILocation(line: 411, column: 35, scope: !537)
!632 = !DILocation(line: 411, column: 53, scope: !537)
!633 = !DILocation(line: 411, column: 13, scope: !537)
!634 = !DILocation(line: 411, column: 17, scope: !537)
!635 = !DILocation(line: 412, column: 20, scope: !636)
!636 = distinct !DILexicalBlock(scope: !537, file: !2, line: 412, column: 8)
!637 = !DILocation(line: 412, column: 8, scope: !537)
!638 = !DILocation(line: 413, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !636, file: !2, line: 413, column: 7)
!640 = !DILocation(line: 413, column: 7, scope: !641)
!641 = distinct !DILexicalBlock(scope: !639, file: !2, line: 413, column: 7)
!642 = !DILocation(line: 418, column: 5, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !2, line: 418, column: 5)
!644 = distinct !DILexicalBlock(scope: !538, file: !2, line: 417, column: 8)
!645 = !DILocation(line: 418, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !2, line: 418, column: 5)
!647 = !DILocation(line: 0, scope: !533)
!648 = !DILocation(line: 420, column: 1, scope: !522)
!649 = distinct !DISubprogram(name: "gsl_sf_expint_E2_scaled_e", scope: !2, file: !2, line: 484, type: !148, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !650)
!650 = !{!651, !652}
!651 = !DILocalVariable(name: "x", arg: 1, scope: !649, file: !2, line: 484, type: !150)
!652 = !DILocalVariable(name: "result", arg: 2, scope: !649, file: !2, line: 484, type: !151)
!653 = !DILocation(line: 0, scope: !649)
!654 = !DILocation(line: 486, column: 10, scope: !649)
!655 = !DILocation(line: 486, column: 3, scope: !649)
!656 = distinct !DISubprogram(name: "gsl_sf_expint_En_e", scope: !2, file: !2, line: 489, type: !657, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!48, !168, !150, !151}
!659 = !{!660, !661, !662}
!660 = !DILocalVariable(name: "n", arg: 1, scope: !656, file: !2, line: 489, type: !168)
!661 = !DILocalVariable(name: "x", arg: 2, scope: !656, file: !2, line: 489, type: !150)
!662 = !DILocalVariable(name: "result", arg: 3, scope: !656, file: !2, line: 489, type: !151)
!663 = !DILocation(line: 0, scope: !656)
!664 = !DILocation(line: 491, column: 10, scope: !656)
!665 = !DILocation(line: 491, column: 3, scope: !656)
!666 = distinct !DISubprogram(name: "expint_En_impl", scope: !2, file: !2, line: 423, type: !667, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!48, !168, !150, !151, !168}
!669 = !{!670, !671, !672, !673, !674, !682, !683, !684}
!670 = !DILocalVariable(name: "n", arg: 1, scope: !666, file: !2, line: 423, type: !168)
!671 = !DILocalVariable(name: "x", arg: 2, scope: !666, file: !2, line: 423, type: !150)
!672 = !DILocalVariable(name: "result", arg: 3, scope: !666, file: !2, line: 423, type: !151)
!673 = !DILocalVariable(name: "scale", arg: 4, scope: !666, file: !2, line: 423, type: !168)
!674 = !DILocalVariable(name: "result_g", scope: !675, file: !2, line: 450, type: !152)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 449, column: 12)
!676 = distinct !DILexicalBlock(scope: !677, file: !2, line: 444, column: 9)
!677 = distinct !DILexicalBlock(scope: !678, file: !2, line: 440, column: 10)
!678 = distinct !DILexicalBlock(scope: !679, file: !2, line: 438, column: 14)
!679 = distinct !DILexicalBlock(scope: !680, file: !2, line: 436, column: 14)
!680 = distinct !DILexicalBlock(scope: !681, file: !2, line: 427, column: 14)
!681 = distinct !DILexicalBlock(scope: !666, file: !2, line: 425, column: 7)
!682 = !DILocalVariable(name: "prefactor", scope: !675, file: !2, line: 451, type: !99)
!683 = !DILocalVariable(name: "status", scope: !675, file: !2, line: 452, type: !48)
!684 = !DILocalVariable(name: "scale_factor", scope: !675, file: !2, line: 453, type: !99)
!685 = distinct !DIAssignID()
!686 = !DILocation(line: 0, scope: !675)
!687 = !DILocation(line: 0, scope: !666)
!688 = !DILocation(line: 425, column: 9, scope: !681)
!689 = !DILocation(line: 425, column: 7, scope: !666)
!690 = !DILocation(line: 426, column: 5, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !2, line: 426, column: 5)
!692 = distinct !DILexicalBlock(scope: !681, file: !2, line: 425, column: 14)
!693 = !DILocation(line: 426, column: 5, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !2, line: 426, column: 5)
!695 = !DILocation(line: 427, column: 14, scope: !681)
!696 = !DILocation(line: 428, column: 11, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 428, column: 9)
!698 = distinct !DILexicalBlock(scope: !680, file: !2, line: 427, column: 22)
!699 = !DILocation(line: 428, column: 9, scope: !698)
!700 = !DILocation(line: 429, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !2, line: 429, column: 7)
!702 = distinct !DILexicalBlock(scope: !697, file: !2, line: 428, column: 17)
!703 = !DILocation(line: 429, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !2, line: 429, column: 7)
!705 = !DILocation(line: 431, column: 22, scope: !706)
!706 = distinct !DILexicalBlock(scope: !697, file: !2, line: 430, column: 12)
!707 = !DILocation(line: 431, column: 40, scope: !706)
!708 = !DILocation(line: 431, column: 36, scope: !706)
!709 = !DILocation(line: 431, column: 45, scope: !706)
!710 = !DILocation(line: 431, column: 19, scope: !706)
!711 = !DILocation(line: 432, column: 43, scope: !706)
!712 = !DILocation(line: 432, column: 41, scope: !706)
!713 = !DILocation(line: 432, column: 15, scope: !706)
!714 = !DILocation(line: 432, column: 19, scope: !706)
!715 = !DILocation(line: 433, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !706, file: !2, line: 433, column: 7)
!717 = !DILocation(line: 433, column: 7, scope: !706)
!718 = !DILocation(line: 433, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !716, file: !2, line: 433, column: 7)
!720 = !DILocation(line: 437, column: 12, scope: !721)
!721 = distinct !DILexicalBlock(scope: !679, file: !2, line: 436, column: 22)
!722 = !DILocation(line: 437, column: 5, scope: !721)
!723 = !DILocation(line: 439, column: 12, scope: !724)
!724 = distinct !DILexicalBlock(scope: !678, file: !2, line: 438, column: 22)
!725 = !DILocation(line: 439, column: 5, scope: !724)
!726 = !DILocation(line: 441, column: 10, scope: !727)
!727 = distinct !DILexicalBlock(scope: !677, file: !2, line: 441, column: 8)
!728 = !DILocation(line: 441, column: 8, scope: !677)
!729 = !DILocation(line: 442, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !2, line: 442, column: 7)
!731 = distinct !DILexicalBlock(scope: !727, file: !2, line: 441, column: 15)
!732 = !DILocation(line: 442, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !2, line: 442, column: 7)
!734 = !DILocation(line: 444, column: 11, scope: !676)
!735 = !DILocation(line: 444, column: 9, scope: !677)
!736 = !DILocation(line: 445, column: 22, scope: !737)
!737 = distinct !DILexicalBlock(scope: !676, file: !2, line: 444, column: 17)
!738 = !DILocation(line: 445, column: 30, scope: !737)
!739 = !DILocation(line: 445, column: 50, scope: !737)
!740 = !DILocation(line: 445, column: 47, scope: !737)
!741 = !DILocation(line: 445, column: 43, scope: !737)
!742 = !DILocation(line: 445, column: 19, scope: !737)
!743 = !DILocation(line: 446, column: 43, scope: !737)
!744 = !DILocation(line: 446, column: 41, scope: !737)
!745 = !DILocation(line: 446, column: 15, scope: !737)
!746 = !DILocation(line: 446, column: 19, scope: !737)
!747 = !DILocation(line: 447, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !737, file: !2, line: 447, column: 7)
!749 = !DILocation(line: 447, column: 7, scope: !737)
!750 = !DILocation(line: 447, column: 7, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !2, line: 447, column: 7)
!752 = !DILocation(line: 450, column: 7, scope: !675)
!753 = !DILocation(line: 451, column: 34, scope: !675)
!754 = !DILocation(line: 451, column: 33, scope: !675)
!755 = !DILocation(line: 451, column: 26, scope: !675)
!756 = !DILocation(line: 452, column: 41, scope: !675)
!757 = !DILocation(line: 452, column: 40, scope: !675)
!758 = !DILocation(line: 452, column: 20, scope: !675)
!759 = !DILocation(line: 453, column: 31, scope: !675)
!760 = !DILocation(line: 453, column: 39, scope: !675)
!761 = !DILocation(line: 454, column: 34, scope: !675)
!762 = !DILocation(line: 454, column: 57, scope: !675)
!763 = !DILocation(line: 454, column: 46, scope: !675)
!764 = !DILocation(line: 454, column: 19, scope: !675)
!765 = !DILocation(line: 455, column: 43, scope: !675)
!766 = !DILocation(line: 455, column: 41, scope: !675)
!767 = !DILocation(line: 455, column: 15, scope: !675)
!768 = !DILocation(line: 456, column: 67, scope: !675)
!769 = !DILocation(line: 456, column: 56, scope: !675)
!770 = !DILocation(line: 456, column: 26, scope: !675)
!771 = !DILocation(line: 456, column: 24, scope: !675)
!772 = !DILocation(line: 456, column: 19, scope: !675)
!773 = !DILocation(line: 457, column: 18, scope: !774)
!774 = distinct !DILexicalBlock(scope: !675, file: !2, line: 457, column: 11)
!775 = !DILocation(line: 457, column: 11, scope: !675)
!776 = !DILocation(line: 457, column: 34, scope: !777)
!777 = distinct !DILexicalBlock(scope: !774, file: !2, line: 457, column: 34)
!778 = !DILocation(line: 457, column: 34, scope: !774)
!779 = !DILocation(line: 457, column: 34, scope: !780)
!780 = distinct !DILexicalBlock(scope: !777, file: !2, line: 457, column: 34)
!781 = !DILocation(line: 459, column: 5, scope: !676)
!782 = !DILocation(line: 0, scope: !681)
!783 = !DILocation(line: 461, column: 1, scope: !666)
!784 = distinct !DISubprogram(name: "gsl_sf_expint_En_scaled_e", scope: !2, file: !2, line: 495, type: !657, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !785)
!785 = !{!786, !787, !788}
!786 = !DILocalVariable(name: "n", arg: 1, scope: !784, file: !2, line: 495, type: !168)
!787 = !DILocalVariable(name: "x", arg: 2, scope: !784, file: !2, line: 495, type: !150)
!788 = !DILocalVariable(name: "result", arg: 3, scope: !784, file: !2, line: 495, type: !151)
!789 = !DILocation(line: 0, scope: !784)
!790 = !DILocation(line: 497, column: 10, scope: !784)
!791 = !DILocation(line: 497, column: 3, scope: !784)
!792 = distinct !DISubprogram(name: "gsl_sf_expint_Ei_e", scope: !2, file: !2, line: 501, type: !148, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !793)
!793 = !{!794, !795, !796}
!794 = !DILocalVariable(name: "x", arg: 1, scope: !792, file: !2, line: 501, type: !150)
!795 = !DILocalVariable(name: "result", arg: 2, scope: !792, file: !2, line: 501, type: !151)
!796 = !DILocalVariable(name: "status", scope: !797, file: !2, line: 506, type: !48)
!797 = distinct !DILexicalBlock(scope: !792, file: !2, line: 505, column: 3)
!798 = !DILocation(line: 0, scope: !792)
!799 = !DILocation(line: 506, column: 37, scope: !797)
!800 = !DILocation(line: 0, scope: !147, inlinedAt: !801)
!801 = distinct !DILocation(line: 506, column: 18, scope: !797)
!802 = !DILocation(line: 468, column: 10, scope: !147, inlinedAt: !801)
!803 = !DILocation(line: 0, scope: !797)
!804 = !DILocation(line: 507, column: 28, scope: !797)
!805 = !DILocation(line: 507, column: 19, scope: !797)
!806 = !DILocation(line: 507, column: 17, scope: !797)
!807 = !DILocation(line: 508, column: 5, scope: !797)
!808 = distinct !DISubprogram(name: "gsl_sf_expint_Ei_scaled_e", scope: !2, file: !2, line: 513, type: !148, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !809)
!809 = !{!810, !811, !812}
!810 = !DILocalVariable(name: "x", arg: 1, scope: !808, file: !2, line: 513, type: !150)
!811 = !DILocalVariable(name: "result", arg: 2, scope: !808, file: !2, line: 513, type: !151)
!812 = !DILocalVariable(name: "status", scope: !813, file: !2, line: 518, type: !48)
!813 = distinct !DILexicalBlock(scope: !808, file: !2, line: 517, column: 3)
!814 = !DILocation(line: 0, scope: !808)
!815 = !DILocation(line: 518, column: 44, scope: !813)
!816 = !DILocation(line: 0, scope: !508, inlinedAt: !817)
!817 = distinct !DILocation(line: 518, column: 18, scope: !813)
!818 = !DILocation(line: 474, column: 10, scope: !508, inlinedAt: !817)
!819 = !DILocation(line: 0, scope: !813)
!820 = !DILocation(line: 519, column: 28, scope: !813)
!821 = !DILocation(line: 519, column: 19, scope: !813)
!822 = !DILocation(line: 519, column: 17, scope: !813)
!823 = !DILocation(line: 520, column: 5, scope: !813)
!824 = distinct !DISubprogram(name: "gsl_sf_expint_E1", scope: !2, file: !2, line: 543, type: !825, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{!99, !150}
!827 = !{!828, !829, !830}
!828 = !DILocalVariable(name: "x", arg: 1, scope: !824, file: !2, line: 543, type: !150)
!829 = !DILocalVariable(name: "result", scope: !824, file: !2, line: 545, type: !152)
!830 = !DILocalVariable(name: "status", scope: !824, file: !2, line: 545, type: !48)
!831 = distinct !DIAssignID()
!832 = !DILocation(line: 0, scope: !824)
!833 = !DILocation(line: 545, column: 3, scope: !824)
!834 = !DILocation(line: 0, scope: !147, inlinedAt: !835)
!835 = distinct !DILocation(line: 545, column: 3, scope: !824)
!836 = !DILocation(line: 468, column: 10, scope: !147, inlinedAt: !835)
!837 = !DILocation(line: 545, column: 3, scope: !838)
!838 = distinct !DILexicalBlock(scope: !824, file: !2, line: 545, column: 3)
!839 = !DILocation(line: 545, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 545, column: 3)
!841 = distinct !DILexicalBlock(scope: !838, file: !2, line: 545, column: 3)
!842 = !DILocation(line: 546, column: 1, scope: !824)
!843 = !DISubprogram(name: "gsl_error", scope: !47, file: !47, line: 77, type: !844, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !846, !846, !48, !48}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!848 = distinct !DISubprogram(name: "gsl_sf_expint_E1_scaled", scope: !2, file: !2, line: 548, type: !825, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !849)
!849 = !{!850, !851, !852}
!850 = !DILocalVariable(name: "x", arg: 1, scope: !848, file: !2, line: 548, type: !150)
!851 = !DILocalVariable(name: "result", scope: !848, file: !2, line: 550, type: !152)
!852 = !DILocalVariable(name: "status", scope: !848, file: !2, line: 550, type: !48)
!853 = distinct !DIAssignID()
!854 = !DILocation(line: 0, scope: !848)
!855 = !DILocation(line: 550, column: 3, scope: !848)
!856 = !DILocation(line: 0, scope: !508, inlinedAt: !857)
!857 = distinct !DILocation(line: 550, column: 3, scope: !848)
!858 = !DILocation(line: 474, column: 10, scope: !508, inlinedAt: !857)
!859 = !DILocation(line: 550, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !848, file: !2, line: 550, column: 3)
!861 = !DILocation(line: 550, column: 3, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !2, line: 550, column: 3)
!863 = distinct !DILexicalBlock(scope: !860, file: !2, line: 550, column: 3)
!864 = !DILocation(line: 551, column: 1, scope: !848)
!865 = distinct !DISubprogram(name: "gsl_sf_expint_E2", scope: !2, file: !2, line: 553, type: !825, scopeLine: 554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !866)
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(name: "x", arg: 1, scope: !865, file: !2, line: 553, type: !150)
!868 = !DILocalVariable(name: "result", scope: !865, file: !2, line: 555, type: !152)
!869 = !DILocalVariable(name: "status", scope: !865, file: !2, line: 555, type: !48)
!870 = distinct !DIAssignID()
!871 = !DILocation(line: 0, scope: !865)
!872 = !DILocation(line: 555, column: 3, scope: !865)
!873 = !DILocation(line: 0, scope: !515, inlinedAt: !874)
!874 = distinct !DILocation(line: 555, column: 3, scope: !865)
!875 = !DILocation(line: 480, column: 10, scope: !515, inlinedAt: !874)
!876 = !DILocation(line: 555, column: 3, scope: !877)
!877 = distinct !DILexicalBlock(scope: !865, file: !2, line: 555, column: 3)
!878 = !DILocation(line: 555, column: 3, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !2, line: 555, column: 3)
!880 = distinct !DILexicalBlock(scope: !877, file: !2, line: 555, column: 3)
!881 = !DILocation(line: 556, column: 1, scope: !865)
!882 = distinct !DISubprogram(name: "gsl_sf_expint_E2_scaled", scope: !2, file: !2, line: 558, type: !825, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !883)
!883 = !{!884, !885, !886}
!884 = !DILocalVariable(name: "x", arg: 1, scope: !882, file: !2, line: 558, type: !150)
!885 = !DILocalVariable(name: "result", scope: !882, file: !2, line: 560, type: !152)
!886 = !DILocalVariable(name: "status", scope: !882, file: !2, line: 560, type: !48)
!887 = distinct !DIAssignID()
!888 = !DILocation(line: 0, scope: !882)
!889 = !DILocation(line: 560, column: 3, scope: !882)
!890 = !DILocation(line: 0, scope: !649, inlinedAt: !891)
!891 = distinct !DILocation(line: 560, column: 3, scope: !882)
!892 = !DILocation(line: 486, column: 10, scope: !649, inlinedAt: !891)
!893 = !DILocation(line: 560, column: 3, scope: !894)
!894 = distinct !DILexicalBlock(scope: !882, file: !2, line: 560, column: 3)
!895 = !DILocation(line: 560, column: 3, scope: !896)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 560, column: 3)
!897 = distinct !DILexicalBlock(scope: !894, file: !2, line: 560, column: 3)
!898 = !DILocation(line: 561, column: 1, scope: !882)
!899 = distinct !DISubprogram(name: "gsl_sf_expint_En", scope: !2, file: !2, line: 563, type: !900, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !902)
!900 = !DISubroutineType(types: !901)
!901 = !{!99, !168, !150}
!902 = !{!903, !904, !905, !906}
!903 = !DILocalVariable(name: "n", arg: 1, scope: !899, file: !2, line: 563, type: !168)
!904 = !DILocalVariable(name: "x", arg: 2, scope: !899, file: !2, line: 563, type: !150)
!905 = !DILocalVariable(name: "result", scope: !899, file: !2, line: 565, type: !152)
!906 = !DILocalVariable(name: "status", scope: !899, file: !2, line: 565, type: !48)
!907 = distinct !DIAssignID()
!908 = !DILocation(line: 0, scope: !899)
!909 = !DILocation(line: 565, column: 3, scope: !899)
!910 = !DILocation(line: 0, scope: !656, inlinedAt: !911)
!911 = distinct !DILocation(line: 565, column: 3, scope: !899)
!912 = !DILocation(line: 491, column: 10, scope: !656, inlinedAt: !911)
!913 = !DILocation(line: 565, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !899, file: !2, line: 565, column: 3)
!915 = !DILocation(line: 565, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !917, file: !2, line: 565, column: 3)
!917 = distinct !DILexicalBlock(scope: !914, file: !2, line: 565, column: 3)
!918 = !DILocation(line: 566, column: 1, scope: !899)
!919 = distinct !DISubprogram(name: "gsl_sf_expint_En_scaled", scope: !2, file: !2, line: 568, type: !900, scopeLine: 569, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !920)
!920 = !{!921, !922, !923, !924}
!921 = !DILocalVariable(name: "n", arg: 1, scope: !919, file: !2, line: 568, type: !168)
!922 = !DILocalVariable(name: "x", arg: 2, scope: !919, file: !2, line: 568, type: !150)
!923 = !DILocalVariable(name: "result", scope: !919, file: !2, line: 570, type: !152)
!924 = !DILocalVariable(name: "status", scope: !919, file: !2, line: 570, type: !48)
!925 = distinct !DIAssignID()
!926 = !DILocation(line: 0, scope: !919)
!927 = !DILocation(line: 570, column: 3, scope: !919)
!928 = !DILocation(line: 0, scope: !784, inlinedAt: !929)
!929 = distinct !DILocation(line: 570, column: 3, scope: !919)
!930 = !DILocation(line: 497, column: 10, scope: !784, inlinedAt: !929)
!931 = !DILocation(line: 570, column: 3, scope: !932)
!932 = distinct !DILexicalBlock(scope: !919, file: !2, line: 570, column: 3)
!933 = !DILocation(line: 570, column: 3, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !2, line: 570, column: 3)
!935 = distinct !DILexicalBlock(scope: !932, file: !2, line: 570, column: 3)
!936 = !DILocation(line: 571, column: 1, scope: !919)
!937 = distinct !DISubprogram(name: "gsl_sf_expint_Ei", scope: !2, file: !2, line: 573, type: !825, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !938)
!938 = !{!939, !940, !941}
!939 = !DILocalVariable(name: "x", arg: 1, scope: !937, file: !2, line: 573, type: !150)
!940 = !DILocalVariable(name: "result", scope: !937, file: !2, line: 575, type: !152)
!941 = !DILocalVariable(name: "status", scope: !937, file: !2, line: 575, type: !48)
!942 = distinct !DIAssignID()
!943 = !DILocation(line: 0, scope: !937)
!944 = !DILocation(line: 575, column: 3, scope: !937)
!945 = !DILocation(line: 0, scope: !792, inlinedAt: !946)
!946 = distinct !DILocation(line: 575, column: 3, scope: !937)
!947 = !DILocation(line: 506, column: 37, scope: !797, inlinedAt: !946)
!948 = !DILocation(line: 0, scope: !147, inlinedAt: !949)
!949 = distinct !DILocation(line: 506, column: 18, scope: !797, inlinedAt: !946)
!950 = !DILocation(line: 468, column: 10, scope: !147, inlinedAt: !949)
!951 = !DILocation(line: 0, scope: !797, inlinedAt: !946)
!952 = !DILocation(line: 507, column: 28, scope: !797, inlinedAt: !946)
!953 = distinct !DIAssignID()
!954 = !DILocation(line: 575, column: 3, scope: !955)
!955 = distinct !DILexicalBlock(scope: !937, file: !2, line: 575, column: 3)
!956 = !DILocation(line: 575, column: 3, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !2, line: 575, column: 3)
!958 = distinct !DILexicalBlock(scope: !955, file: !2, line: 575, column: 3)
!959 = !DILocation(line: 507, column: 19, scope: !797, inlinedAt: !946)
!960 = !DILocation(line: 576, column: 1, scope: !937)
!961 = distinct !DISubprogram(name: "gsl_sf_expint_Ei_scaled", scope: !2, file: !2, line: 578, type: !825, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !44, retainedNodes: !962)
!962 = !{!963, !964, !965}
!963 = !DILocalVariable(name: "x", arg: 1, scope: !961, file: !2, line: 578, type: !150)
!964 = !DILocalVariable(name: "result", scope: !961, file: !2, line: 580, type: !152)
!965 = !DILocalVariable(name: "status", scope: !961, file: !2, line: 580, type: !48)
!966 = distinct !DIAssignID()
!967 = !DILocation(line: 0, scope: !961)
!968 = !DILocation(line: 580, column: 3, scope: !961)
!969 = !DILocation(line: 0, scope: !808, inlinedAt: !970)
!970 = distinct !DILocation(line: 580, column: 3, scope: !961)
!971 = !DILocation(line: 518, column: 44, scope: !813, inlinedAt: !970)
!972 = !DILocation(line: 0, scope: !508, inlinedAt: !973)
!973 = distinct !DILocation(line: 518, column: 18, scope: !813, inlinedAt: !970)
!974 = !DILocation(line: 474, column: 10, scope: !508, inlinedAt: !973)
!975 = !DILocation(line: 0, scope: !813, inlinedAt: !970)
!976 = !DILocation(line: 519, column: 28, scope: !813, inlinedAt: !970)
!977 = distinct !DIAssignID()
!978 = !DILocation(line: 580, column: 3, scope: !979)
!979 = distinct !DILexicalBlock(scope: !961, file: !2, line: 580, column: 3)
!980 = !DILocation(line: 580, column: 3, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !2, line: 580, column: 3)
!982 = distinct !DILexicalBlock(scope: !979, file: !2, line: 580, column: 3)
!983 = !DILocation(line: 519, column: 19, scope: !813, inlinedAt: !970)
!984 = !DILocation(line: 581, column: 1, scope: !961)
!985 = !DISubprogram(name: "log", scope: !986, file: !986, line: 104, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!986 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!987 = !DISubroutineType(types: !988)
!988 = !{!99, !99}
!989 = !DISubprogram(name: "exp", scope: !986, file: !986, line: 95, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DILocation(line: 0, scope: !235)
!991 = !DILocation(line: 11, column: 19, scope: !235)
!992 = !DILocation(line: 11, column: 28, scope: !235)
!993 = !{!994, !217, i64 16}
!994 = !{!"cheb_series_struct", !995, i64 0, !996, i64 8, !217, i64 16, !217, i64 24, !996, i64 32}
!995 = !{!"any pointer", !218, i64 0}
!996 = !{!"int", !218, i64 0}
!997 = !DILocation(line: 11, column: 22, scope: !235)
!998 = !DILocation(line: 11, column: 36, scope: !235)
!999 = !{!994, !217, i64 24}
!1000 = !DILocation(line: 11, column: 30, scope: !235)
!1001 = !DILocation(line: 11, column: 48, scope: !235)
!1002 = !DILocation(line: 11, column: 39, scope: !235)
!1003 = !DILocation(line: 12, column: 19, scope: !235)
!1004 = !DILocation(line: 16, column: 15, scope: !253)
!1005 = !{!994, !996, i64 8}
!1006 = !DILocation(line: 16, column: 23, scope: !252)
!1007 = !DILocation(line: 25, column: 30, scope: !255)
!1008 = !{!994, !995, i64 0}
!1009 = !DILocation(line: 16, column: 3, scope: !253)
!1010 = !DILocation(line: 0, scope: !251)
!1011 = !DILocation(line: 18, column: 11, scope: !251)
!1012 = !DILocation(line: 18, column: 14, scope: !251)
!1013 = !DILocation(line: 18, column: 21, scope: !251)
!1014 = !DILocation(line: 18, column: 19, scope: !251)
!1015 = !DILocation(line: 19, column: 10, scope: !251)
!1016 = !DILocation(line: 19, column: 26, scope: !251)
!1017 = !DILocation(line: 19, column: 24, scope: !251)
!1018 = !DILocation(line: 19, column: 37, scope: !251)
!1019 = !DILocation(line: 19, column: 35, scope: !251)
!1020 = !DILocation(line: 19, column: 7, scope: !251)
!1021 = !DILocation(line: 16, column: 29, scope: !252)
!1022 = distinct !{!1022, !1009, !1023, !280}
!1023 = !DILocation(line: 21, column: 3, scope: !253)
!1024 = !DILocation(line: 0, scope: !255)
!1025 = !DILocation(line: 25, column: 10, scope: !255)
!1026 = !DILocation(line: 25, column: 13, scope: !255)
!1027 = !DILocation(line: 25, column: 26, scope: !255)
!1028 = !DILocation(line: 25, column: 24, scope: !255)
!1029 = !DILocation(line: 25, column: 18, scope: !255)
!1030 = !DILocation(line: 26, column: 10, scope: !255)
!1031 = !DILocation(line: 26, column: 25, scope: !255)
!1032 = !DILocation(line: 26, column: 23, scope: !255)
!1033 = !DILocation(line: 26, column: 42, scope: !255)
!1034 = !DILocation(line: 26, column: 40, scope: !255)
!1035 = !DILocation(line: 26, column: 34, scope: !255)
!1036 = !DILocation(line: 26, column: 7, scope: !255)
!1037 = !DILocation(line: 29, column: 15, scope: !235)
!1038 = !DILocation(line: 30, column: 33, scope: !235)
!1039 = !DILocation(line: 30, column: 44, scope: !235)
!1040 = !DILocation(line: 30, column: 39, scope: !235)
!1041 = !DILocation(line: 30, column: 37, scope: !235)
!1042 = !DILocation(line: 30, column: 11, scope: !235)
!1043 = !DILocation(line: 30, column: 15, scope: !235)
!1044 = !DILocation(line: 32, column: 3, scope: !235)
!1045 = !DISubprogram(name: "pow", scope: !986, file: !986, line: 140, type: !1046, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!99, !99, !99}
!1048 = !DISubprogram(name: "gsl_sf_gamma_inc_e", scope: !1049, file: !1049, line: 244, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1049 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!48, !150, !150, !151}
