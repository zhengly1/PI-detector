; ModuleID = 'bessel_I1.c'
source_filename = "bessel_I1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_I1.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_I1_scaled_e(x, &result)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_I1_e(x, &result)\00", align 1, !dbg !22
@ai1_data = internal unnamed_addr constant [21 x double] [double 0xBF9D2691AE734B64, double 0xBF93B0E811A1A674, double 0xBF4409CA29D74D42, double 0xBEF5B48969F48C07, double 0x3EE2015E82A3A13C, double 0x3EB19B8F868CF242, double 0xBE9395AB07A2DC75, double 0xBE50BE62D17D7E85, double 0x3E4C4DD980642A6E, double 0xBE18E23BC84A8F08, double 0xBDF3FCB5722DDBED, double 0x3DE167B5B7337A1C, double 0xBDB24E68C00D8B2E, double -1.666650e-12, double 1.242600e-12, double -2.731500e-13, double 2.023000e-14, double 7.300000e-15, double -3.330000e-15, double 7.100000e-16, double -6.000000e-17], align 16, !dbg !27
@ai12_data = internal unnamed_addr constant [22 x double] [double 0x3F9D4316AB62A28A, double 0xBF83FDA053FCDB4D, double 0xBF1CFD7F804AAB76, double 0xBED048DF49C9DFFC, double 0xBE90DBFD2E996C58, double 0xBE5C415394C05F14, double 0xBE30790B9B1FA782, double 0xBE0334CA4ACA4422, double 0xBDB4DCF93E76209C, double 0x3DC1E1A15F5692E9, double 1.412580e-11, double 2.035640e-12, double -7.198500e-13, double -4.083600e-13, double -2.101000e-14, double 4.273000e-14, double 1.041000e-14, double -3.820000e-15, double -1.860000e-15, double 3.300000e-16, double 2.800000e-16, double -3.000000e-17], align 16, !dbg !93

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_I1_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !109 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !121, metadata !DIExpression()), !dbg !144
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !122, metadata !DIExpression()), !dbg !144
  tail call void @llvm.dbg.value(metadata double 0x20000000000000, metadata !123, metadata !DIExpression()), !dbg !144
  tail call void @llvm.dbg.value(metadata double 0x3E66A09E667F3BCD, metadata !124, metadata !DIExpression()), !dbg !144
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !145
  tail call void @llvm.dbg.value(metadata double %3, metadata !125, metadata !DIExpression()), !dbg !144
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !146
  br i1 %4, label %5, label %6, !dbg !147

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !148
  br label %220, !dbg !150

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x20000000000000, !dbg !151
  br i1 %7, label %8, label %10, !dbg !152

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !153, !tbaa !156
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !153
  store double 0x10000000000000, ptr %9, align 8, !dbg !153, !tbaa !161
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 158, i32 noundef 15) #7, !dbg !162
  br label %220, !dbg !162

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 0x3E66A09E667F3BCD, !dbg !164
  br i1 %11, label %12, label %15, !dbg !165

12:                                               ; preds = %10
  %13 = fmul double %0, 5.000000e-01, !dbg !166
  store double %13, ptr %1, align 8, !dbg !168, !tbaa !156
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !169
  store double 0.000000e+00, ptr %14, align 8, !dbg !170, !tbaa !161
  br label %220, !dbg !171

15:                                               ; preds = %10
  %16 = fcmp ugt double %3, 3.000000e+00, !dbg !172
  br i1 %16, label %122, label %17, !dbg !173

17:                                               ; preds = %15
  %18 = fneg double %3, !dbg !174
  %19 = tail call double @exp(double noundef %18) #7, !dbg !175
  tail call void @llvm.dbg.value(metadata double %19, metadata !126, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.value(metadata !177, metadata !178, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double poison, metadata !186, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata ptr undef, metadata !187, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double poison, metadata !191, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double poison, metadata !192, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 10, metadata !188, metadata !DIExpression()), !dbg !200
  %20 = fmul double %0, %0, !dbg !202
  %21 = fdiv double %20, 4.500000e+00, !dbg !203
  %22 = fadd double %21, -1.000000e+00, !dbg !204
  call void @llvm.dbg.value(metadata double %22, metadata !186, metadata !DIExpression()), !dbg !200
  %23 = fmul double %22, 2.000000e+00, !dbg !205
  %24 = fadd double %23, 1.000000e+00, !dbg !206
  %25 = fadd double %24, -1.000000e+00, !dbg !207
  %26 = fmul double %25, 5.000000e-01, !dbg !208
  call void @llvm.dbg.value(metadata double %26, metadata !191, metadata !DIExpression()), !dbg !200
  %27 = fmul double %26, 2.000000e+00, !dbg !209
  call void @llvm.dbg.value(metadata double %27, metadata !192, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 10, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !194, metadata !DIExpression()), !dbg !210
  %28 = fmul double %27, 0.000000e+00, !dbg !211
  %29 = fadd double %28, 2.400000e-17, !dbg !212
  call void @llvm.dbg.value(metadata double %29, metadata !189, metadata !DIExpression()), !dbg !200
  %30 = tail call double @llvm.fabs.f64(double %28), !dbg !213
  %31 = fadd double %30, 2.400000e-17, !dbg !214
  call void @llvm.dbg.value(metadata double %31, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 9, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 9, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %29, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %31, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %29, metadata !194, metadata !DIExpression()), !dbg !210
  %32 = fmul double %27, %29, !dbg !211
  %33 = fadd double %32, 4.741000e-15, !dbg !212
  call void @llvm.dbg.value(metadata double %33, metadata !189, metadata !DIExpression()), !dbg !200
  %34 = tail call double @llvm.fabs.f64(double %32), !dbg !213
  %35 = fadd double %34, 4.741000e-15, !dbg !214
  %36 = fadd double %31, %35, !dbg !215
  call void @llvm.dbg.value(metadata double %36, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %29, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 8, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 8, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %33, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %36, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %29, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %33, metadata !194, metadata !DIExpression()), !dbg !210
  %37 = fmul double %27, %33, !dbg !211
  %38 = fsub double %37, %29, !dbg !216
  %39 = fadd double %38, 7.663800e-13, !dbg !212
  call void @llvm.dbg.value(metadata double %39, metadata !189, metadata !DIExpression()), !dbg !200
  %40 = tail call double @llvm.fabs.f64(double %37), !dbg !213
  %41 = tail call double @llvm.fabs.f64(double %29), !dbg !217
  %42 = fadd double %40, %41, !dbg !218
  %43 = fadd double %42, 7.663800e-13, !dbg !214
  %44 = fadd double %36, %43, !dbg !215
  call void @llvm.dbg.value(metadata double %44, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %33, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 7, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 7, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %39, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %44, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %33, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %39, metadata !194, metadata !DIExpression()), !dbg !210
  %45 = fmul double %27, %39, !dbg !211
  %46 = fsub double %45, %33, !dbg !216
  %47 = fadd double %46, 0x3DDB4D2B79D27314, !dbg !212
  call void @llvm.dbg.value(metadata double %47, metadata !189, metadata !DIExpression()), !dbg !200
  %48 = tail call double @llvm.fabs.f64(double %45), !dbg !213
  %49 = tail call double @llvm.fabs.f64(double %33), !dbg !217
  %50 = fadd double %48, %49, !dbg !218
  %51 = fadd double %50, 0x3DDB4D2B79D27314, !dbg !214
  %52 = fadd double %44, %51, !dbg !215
  call void @llvm.dbg.value(metadata double %52, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %39, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 6, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 6, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %47, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %52, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %39, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %47, metadata !194, metadata !DIExpression()), !dbg !210
  %53 = fmul double %27, %47, !dbg !211
  %54 = fsub double %53, %39, !dbg !216
  %55 = fadd double %54, 0x3E4590EB5F26E7D5, !dbg !212
  call void @llvm.dbg.value(metadata double %55, metadata !189, metadata !DIExpression()), !dbg !200
  %56 = tail call double @llvm.fabs.f64(double %53), !dbg !213
  %57 = tail call double @llvm.fabs.f64(double %39), !dbg !217
  %58 = fadd double %56, %57, !dbg !218
  %59 = fadd double %58, 0x3E4590EB5F26E7D5, !dbg !214
  %60 = fadd double %52, %59, !dbg !215
  call void @llvm.dbg.value(metadata double %60, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %47, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 5, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 5, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %55, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %60, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %47, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %55, metadata !194, metadata !DIExpression()), !dbg !210
  %61 = fmul double %27, %55, !dbg !211
  %62 = fsub double %61, %47, !dbg !216
  %63 = fadd double %62, 0x3EA9AA76C61912B6, !dbg !212
  call void @llvm.dbg.value(metadata double %63, metadata !189, metadata !DIExpression()), !dbg !200
  %64 = tail call double @llvm.fabs.f64(double %61), !dbg !213
  %65 = tail call double @llvm.fabs.f64(double %47), !dbg !217
  %66 = fadd double %64, %65, !dbg !218
  %67 = fadd double %66, 0x3EA9AA76C61912B6, !dbg !214
  %68 = fadd double %60, %67, !dbg !215
  call void @llvm.dbg.value(metadata double %68, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %55, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 4, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 4, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %63, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %68, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %55, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %63, metadata !194, metadata !DIExpression()), !dbg !210
  %69 = fmul double %27, %63, !dbg !211
  %70 = fsub double %69, %55, !dbg !216
  %71 = fadd double %70, 0x3F05F62EA024E03C, !dbg !212
  call void @llvm.dbg.value(metadata double %71, metadata !189, metadata !DIExpression()), !dbg !200
  %72 = tail call double @llvm.fabs.f64(double %69), !dbg !213
  %73 = tail call double @llvm.fabs.f64(double %55), !dbg !217
  %74 = fadd double %72, %73, !dbg !218
  %75 = fadd double %74, 0x3F05F62EA024E03C, !dbg !214
  %76 = fadd double %68, %75, !dbg !215
  call void @llvm.dbg.value(metadata double %76, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %63, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 3, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 3, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %71, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %76, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %63, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %71, metadata !194, metadata !DIExpression()), !dbg !210
  %77 = fmul double %27, %71, !dbg !211
  %78 = fsub double %77, %63, !dbg !216
  %79 = fadd double %78, 0x3F5951DAC509D682, !dbg !212
  call void @llvm.dbg.value(metadata double %79, metadata !189, metadata !DIExpression()), !dbg !200
  %80 = tail call double @llvm.fabs.f64(double %77), !dbg !213
  %81 = tail call double @llvm.fabs.f64(double %63), !dbg !217
  %82 = fadd double %80, %81, !dbg !218
  %83 = fadd double %82, 0x3F5951DAC509D682, !dbg !214
  %84 = fadd double %76, %83, !dbg !215
  call void @llvm.dbg.value(metadata double %84, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %71, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 2, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 2, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %79, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %84, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %71, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %79, metadata !194, metadata !DIExpression()), !dbg !210
  %85 = fmul double %27, %79, !dbg !211
  %86 = fsub double %85, %71, !dbg !216
  %87 = fadd double %86, 0x3FA1D66AAA49A788, !dbg !212
  call void @llvm.dbg.value(metadata double %87, metadata !189, metadata !DIExpression()), !dbg !200
  %88 = tail call double @llvm.fabs.f64(double %85), !dbg !213
  %89 = tail call double @llvm.fabs.f64(double %71), !dbg !217
  %90 = fadd double %88, %89, !dbg !218
  %91 = fadd double %90, 0x3FA1D66AAA49A788, !dbg !214
  %92 = fadd double %84, %91, !dbg !215
  call void @llvm.dbg.value(metadata double %92, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %79, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %87, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %92, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %79, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %87, metadata !194, metadata !DIExpression()), !dbg !210
  %93 = fmul double %27, %87, !dbg !211
  %94 = fsub double %93, %79, !dbg !216
  %95 = fadd double %94, 0x3FDA120105D88A96, !dbg !212
  call void @llvm.dbg.value(metadata double %95, metadata !189, metadata !DIExpression()), !dbg !200
  %96 = tail call double @llvm.fabs.f64(double %93), !dbg !213
  %97 = tail call double @llvm.fabs.f64(double %79), !dbg !217
  %98 = fadd double %96, %97, !dbg !218
  %99 = fadd double %98, 0x3FDA120105D88A96, !dbg !214
  %100 = fadd double %92, %99, !dbg !215
  call void @llvm.dbg.value(metadata double %100, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %87, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 0, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %95, metadata !198, metadata !DIExpression()), !dbg !219
  %101 = fmul double %26, %95, !dbg !220
  %102 = fsub double %101, %87, !dbg !221
  %103 = fadd double %102, 0xBF5026FB7F270595, !dbg !222
  call void @llvm.dbg.value(metadata double %103, metadata !189, metadata !DIExpression()), !dbg !200
  %104 = tail call double @llvm.fabs.f64(double %101), !dbg !223
  %105 = tail call double @llvm.fabs.f64(double %87), !dbg !224
  %106 = fadd double %105, %104, !dbg !225
  %107 = fadd double %106, 0x3F5026FB7F270595, !dbg !226
  %108 = fadd double %100, %107, !dbg !227
  call void @llvm.dbg.value(metadata double %108, metadata !193, metadata !DIExpression()), !dbg !200
  tail call void @llvm.dbg.value(metadata double %103, metadata !132, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !176
  %109 = fmul double %108, 0x3CB0000000000000, !dbg !228
  %110 = fadd double %109, 2.400000e-17, !dbg !229
  tail call void @llvm.dbg.value(metadata double %110, metadata !132, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !176
  %111 = fmul double %19, %0, !dbg !230
  %112 = fadd double %103, 8.750000e-01, !dbg !231
  %113 = fmul double %111, %112, !dbg !232
  store double %113, ptr %1, align 8, !dbg !233, !tbaa !156
  %114 = fmul double %19, %110, !dbg !234
  %115 = fmul double %3, 0x3CB0000000000000, !dbg !235
  %116 = tail call double @llvm.fabs.f64(double %113), !dbg !236
  %117 = fmul double %115, %116, !dbg !237
  %118 = fadd double %117, %114, !dbg !238
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !239
  %120 = fmul double %116, 0x3CC0000000000000, !dbg !240
  %121 = fadd double %120, %118, !dbg !241
  store double %121, ptr %119, align 8, !dbg !241, !tbaa !161
  br label %220

122:                                              ; preds = %15
  %123 = fcmp ugt double %3, 8.000000e+00, !dbg !242
  %124 = tail call double @llvm.sqrt.f64(double %3), !dbg !243
  br i1 %123, label %173, label %125, !dbg !244

125:                                              ; preds = %122
  tail call void @llvm.dbg.value(metadata double %124, metadata !133, metadata !DIExpression()), !dbg !245
  %126 = fdiv double 4.800000e+01, %3, !dbg !246
  %127 = fadd double %126, -1.100000e+01, !dbg !247
  %128 = fdiv double %127, 5.000000e+00, !dbg !248
  call void @llvm.dbg.value(metadata !177, metadata !178, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %128, metadata !186, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata ptr undef, metadata !187, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !249
  %129 = fmul double %128, 2.000000e+00, !dbg !251
  %130 = fadd double %129, 1.000000e+00, !dbg !252
  %131 = fadd double %130, -1.000000e+00, !dbg !253
  %132 = fmul double %131, 5.000000e-01, !dbg !254
  call void @llvm.dbg.value(metadata double %132, metadata !191, metadata !DIExpression()), !dbg !249
  %133 = fmul double %132, 2.000000e+00, !dbg !255
  call void @llvm.dbg.value(metadata double %133, metadata !192, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 20, metadata !188, metadata !DIExpression()), !dbg !249
  br label %134, !dbg !256

134:                                              ; preds = %134, %125
  %135 = phi i64 [ 20, %125 ], [ %150, %134 ]
  %136 = phi double [ 0.000000e+00, %125 ], [ %143, %134 ]
  %137 = phi double [ 0.000000e+00, %125 ], [ %149, %134 ]
  %138 = phi double [ 0.000000e+00, %125 ], [ %136, %134 ]
  call void @llvm.dbg.value(metadata i64 %135, metadata !188, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %136, metadata !189, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %137, metadata !193, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %138, metadata !190, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %136, metadata !194, metadata !DIExpression()), !dbg !257
  %139 = fmul double %133, %136, !dbg !258
  %140 = fsub double %139, %138, !dbg !259
  %141 = getelementptr inbounds double, ptr @ai1_data, i64 %135, !dbg !260
  %142 = load double, ptr %141, align 8, !dbg !260, !tbaa !261
  %143 = fadd double %140, %142, !dbg !262
  call void @llvm.dbg.value(metadata double %143, metadata !189, metadata !DIExpression()), !dbg !249
  %144 = tail call double @llvm.fabs.f64(double %139), !dbg !263
  %145 = tail call double @llvm.fabs.f64(double %138), !dbg !264
  %146 = fadd double %144, %145, !dbg !265
  %147 = tail call double @llvm.fabs.f64(double %142), !dbg !266
  %148 = fadd double %146, %147, !dbg !267
  %149 = fadd double %137, %148, !dbg !268
  call void @llvm.dbg.value(metadata double %149, metadata !193, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %136, metadata !190, metadata !DIExpression()), !dbg !249
  %150 = add nsw i64 %135, -1, !dbg !269
  call void @llvm.dbg.value(metadata i64 %150, metadata !188, metadata !DIExpression()), !dbg !249
  %151 = icmp ugt i64 %135, 1, !dbg !270
  br i1 %151, label %134, label %152, !dbg !256, !llvm.loop !271

152:                                              ; preds = %134
  call void @llvm.dbg.value(metadata double %143, metadata !198, metadata !DIExpression()), !dbg !274
  %153 = fmul double %132, %143, !dbg !275
  %154 = fsub double %153, %136, !dbg !276
  %155 = fadd double %154, 0xBF8D2691AE734B64, !dbg !277
  call void @llvm.dbg.value(metadata double %155, metadata !189, metadata !DIExpression()), !dbg !249
  %156 = tail call double @llvm.fabs.f64(double %153), !dbg !278
  %157 = tail call double @llvm.fabs.f64(double %136), !dbg !279
  %158 = fadd double %157, %156, !dbg !280
  %159 = fadd double %158, 0x3F8D2691AE734B64, !dbg !281
  %160 = fadd double %149, %159, !dbg !282
  call void @llvm.dbg.value(metadata double %160, metadata !193, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata double %155, metadata !136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !245
  %161 = fmul double %160, 0x3CB0000000000000, !dbg !283
  %162 = fadd double %161, 6.000000e-17, !dbg !284
  tail call void @llvm.dbg.value(metadata double %162, metadata !136, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !245
  %163 = fadd double %155, 3.750000e-01, !dbg !285
  %164 = fdiv double %163, %124, !dbg !286
  tail call void @llvm.dbg.value(metadata double %164, metadata !137, metadata !DIExpression()), !dbg !245
  %165 = fcmp ogt double %0, 0.000000e+00, !dbg !287
  tail call void @llvm.dbg.value(metadata double poison, metadata !138, metadata !DIExpression()), !dbg !245
  %166 = fneg double %164, !dbg !288
  %167 = select i1 %165, double %164, double %166, !dbg !288
  store double %167, ptr %1, align 8, !dbg !289, !tbaa !156
  %168 = fdiv double %162, %124, !dbg !290
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !291
  %170 = tail call double @llvm.fabs.f64(double %164), !dbg !292
  %171 = fmul double %170, 0x3CC0000000000000, !dbg !293
  %172 = fadd double %171, %168, !dbg !294
  store double %172, ptr %169, align 8, !dbg !294, !tbaa !161
  br label %220

173:                                              ; preds = %122
  tail call void @llvm.dbg.value(metadata double %124, metadata !139, metadata !DIExpression()), !dbg !295
  %174 = fdiv double 1.600000e+01, %3, !dbg !296
  %175 = fadd double %174, -1.000000e+00, !dbg !297
  call void @llvm.dbg.value(metadata !177, metadata !178, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %175, metadata !186, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata ptr undef, metadata !187, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !298
  %176 = fmul double %175, 2.000000e+00, !dbg !300
  %177 = fadd double %176, 1.000000e+00, !dbg !301
  %178 = fadd double %177, -1.000000e+00, !dbg !302
  %179 = fmul double %178, 5.000000e-01, !dbg !303
  call void @llvm.dbg.value(metadata double %179, metadata !191, metadata !DIExpression()), !dbg !298
  %180 = fmul double %179, 2.000000e+00, !dbg !304
  call void @llvm.dbg.value(metadata double %180, metadata !192, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata i32 21, metadata !188, metadata !DIExpression()), !dbg !298
  br label %181, !dbg !305

181:                                              ; preds = %181, %173
  %182 = phi i64 [ 21, %173 ], [ %197, %181 ]
  %183 = phi double [ 0.000000e+00, %173 ], [ %190, %181 ]
  %184 = phi double [ 0.000000e+00, %173 ], [ %196, %181 ]
  %185 = phi double [ 0.000000e+00, %173 ], [ %183, %181 ]
  call void @llvm.dbg.value(metadata i64 %182, metadata !188, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %183, metadata !189, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %184, metadata !193, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %185, metadata !190, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %183, metadata !194, metadata !DIExpression()), !dbg !306
  %186 = fmul double %180, %183, !dbg !307
  %187 = fsub double %186, %185, !dbg !308
  %188 = getelementptr inbounds double, ptr @ai12_data, i64 %182, !dbg !309
  %189 = load double, ptr %188, align 8, !dbg !309, !tbaa !261
  %190 = fadd double %187, %189, !dbg !310
  call void @llvm.dbg.value(metadata double %190, metadata !189, metadata !DIExpression()), !dbg !298
  %191 = tail call double @llvm.fabs.f64(double %186), !dbg !311
  %192 = tail call double @llvm.fabs.f64(double %185), !dbg !312
  %193 = fadd double %191, %192, !dbg !313
  %194 = tail call double @llvm.fabs.f64(double %189), !dbg !314
  %195 = fadd double %193, %194, !dbg !315
  %196 = fadd double %184, %195, !dbg !316
  call void @llvm.dbg.value(metadata double %196, metadata !193, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.value(metadata double %183, metadata !190, metadata !DIExpression()), !dbg !298
  %197 = add nsw i64 %182, -1, !dbg !317
  call void @llvm.dbg.value(metadata i64 %197, metadata !188, metadata !DIExpression()), !dbg !298
  %198 = icmp ugt i64 %182, 1, !dbg !318
  br i1 %198, label %181, label %199, !dbg !305, !llvm.loop !319

199:                                              ; preds = %181
  call void @llvm.dbg.value(metadata double %190, metadata !198, metadata !DIExpression()), !dbg !321
  %200 = fmul double %179, %190, !dbg !322
  %201 = fsub double %200, %183, !dbg !323
  %202 = fadd double %201, 0x3F8D4316AB62A28A, !dbg !324
  call void @llvm.dbg.value(metadata double %202, metadata !189, metadata !DIExpression()), !dbg !298
  %203 = tail call double @llvm.fabs.f64(double %200), !dbg !325
  %204 = tail call double @llvm.fabs.f64(double %183), !dbg !326
  %205 = fadd double %204, %203, !dbg !327
  %206 = fadd double %205, 0x3F8D4316AB62A28A, !dbg !328
  %207 = fadd double %196, %206, !dbg !329
  call void @llvm.dbg.value(metadata double %207, metadata !193, metadata !DIExpression()), !dbg !298
  tail call void @llvm.dbg.value(metadata double %202, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !295
  %208 = fmul double %207, 0x3CB0000000000000, !dbg !330
  %209 = fadd double %208, 3.000000e-17, !dbg !331
  tail call void @llvm.dbg.value(metadata double %209, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !295
  %210 = fadd double %202, 3.750000e-01, !dbg !332
  %211 = fdiv double %210, %124, !dbg !333
  tail call void @llvm.dbg.value(metadata double %211, metadata !142, metadata !DIExpression()), !dbg !295
  %212 = fcmp ogt double %0, 0.000000e+00, !dbg !334
  tail call void @llvm.dbg.value(metadata double poison, metadata !143, metadata !DIExpression()), !dbg !295
  %213 = fneg double %211, !dbg !335
  %214 = select i1 %212, double %211, double %213, !dbg !335
  store double %214, ptr %1, align 8, !dbg !336, !tbaa !156
  %215 = fdiv double %209, %124, !dbg !337
  %216 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !338
  %217 = tail call double @llvm.fabs.f64(double %211), !dbg !339
  %218 = fmul double %217, 0x3CC0000000000000, !dbg !340
  %219 = fadd double %218, %215, !dbg !341
  store double %219, ptr %216, align 8, !dbg !341, !tbaa !161
  br label %220

220:                                              ; preds = %199, %152, %17, %12, %8, %5
  %221 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %17 ], [ 0, %152 ], [ 0, %199 ], !dbg !342
  ret i32 %221, !dbg !343
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !344 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !349 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_I1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !353 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !370
  call void @llvm.dbg.assign(metadata i1 undef, metadata !369, metadata !DIExpression(), metadata !370, metadata ptr %3, metadata !DIExpression()), !dbg !371
  tail call void @llvm.dbg.value(metadata double %0, metadata !355, metadata !DIExpression()), !dbg !372
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !356, metadata !DIExpression()), !dbg !372
  tail call void @llvm.dbg.value(metadata double 0x20000000000000, metadata !357, metadata !DIExpression()), !dbg !372
  tail call void @llvm.dbg.value(metadata double 0x3E66A09E667F3BCD, metadata !358, metadata !DIExpression()), !dbg !372
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !373
  tail call void @llvm.dbg.value(metadata double %4, metadata !359, metadata !DIExpression()), !dbg !372
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !374
  br i1 %5, label %6, label %7, !dbg !375

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !376
  br label %136, !dbg !378

7:                                                ; preds = %2
  %8 = fcmp olt double %4, 0x20000000000000, !dbg !379
  br i1 %8, label %9, label %11, !dbg !380

9:                                                ; preds = %7
  store double 0.000000e+00, ptr %1, align 8, !dbg !381, !tbaa !156
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !381
  store double 0x10000000000000, ptr %10, align 8, !dbg !381, !tbaa !161
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 217, i32 noundef 15) #7, !dbg !384
  br label %136, !dbg !384

11:                                               ; preds = %7
  %12 = fcmp olt double %4, 0x3E66A09E667F3BCD, !dbg !386
  br i1 %12, label %13, label %16, !dbg !387

13:                                               ; preds = %11
  %14 = fmul double %0, 5.000000e-01, !dbg !388
  store double %14, ptr %1, align 8, !dbg !390, !tbaa !156
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !391
  store double 0.000000e+00, ptr %15, align 8, !dbg !392, !tbaa !161
  br label %136, !dbg !393

16:                                               ; preds = %11
  %17 = fcmp ugt double %4, 3.000000e+00, !dbg !394
  br i1 %17, label %117, label %18, !dbg !395

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata !177, metadata !178, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double poison, metadata !186, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata ptr undef, metadata !187, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double poison, metadata !191, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double poison, metadata !192, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i32 10, metadata !188, metadata !DIExpression()), !dbg !396
  %19 = fmul double %0, %0, !dbg !398
  %20 = fdiv double %19, 4.500000e+00, !dbg !399
  %21 = fadd double %20, -1.000000e+00, !dbg !400
  call void @llvm.dbg.value(metadata double %21, metadata !186, metadata !DIExpression()), !dbg !396
  %22 = fmul double %21, 2.000000e+00, !dbg !401
  %23 = fadd double %22, 1.000000e+00, !dbg !402
  %24 = fadd double %23, -1.000000e+00, !dbg !403
  %25 = fmul double %24, 5.000000e-01, !dbg !404
  call void @llvm.dbg.value(metadata double %25, metadata !191, metadata !DIExpression()), !dbg !396
  %26 = fmul double %25, 2.000000e+00, !dbg !405
  call void @llvm.dbg.value(metadata double %26, metadata !192, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 10, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !194, metadata !DIExpression()), !dbg !406
  %27 = fmul double %26, 0.000000e+00, !dbg !407
  %28 = fadd double %27, 2.400000e-17, !dbg !408
  call void @llvm.dbg.value(metadata double %28, metadata !189, metadata !DIExpression()), !dbg !396
  %29 = tail call double @llvm.fabs.f64(double %27), !dbg !409
  %30 = fadd double %29, 2.400000e-17, !dbg !410
  call void @llvm.dbg.value(metadata double %30, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 9, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 9, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %28, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %30, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %28, metadata !194, metadata !DIExpression()), !dbg !406
  %31 = fmul double %26, %28, !dbg !407
  %32 = fadd double %31, 4.741000e-15, !dbg !408
  call void @llvm.dbg.value(metadata double %32, metadata !189, metadata !DIExpression()), !dbg !396
  %33 = tail call double @llvm.fabs.f64(double %31), !dbg !409
  %34 = fadd double %33, 4.741000e-15, !dbg !410
  %35 = fadd double %30, %34, !dbg !411
  call void @llvm.dbg.value(metadata double %35, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %28, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 8, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 8, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %32, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %35, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %28, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %32, metadata !194, metadata !DIExpression()), !dbg !406
  %36 = fmul double %26, %32, !dbg !407
  %37 = fsub double %36, %28, !dbg !412
  %38 = fadd double %37, 7.663800e-13, !dbg !408
  call void @llvm.dbg.value(metadata double %38, metadata !189, metadata !DIExpression()), !dbg !396
  %39 = tail call double @llvm.fabs.f64(double %36), !dbg !409
  %40 = tail call double @llvm.fabs.f64(double %28), !dbg !413
  %41 = fadd double %39, %40, !dbg !414
  %42 = fadd double %41, 7.663800e-13, !dbg !410
  %43 = fadd double %35, %42, !dbg !411
  call void @llvm.dbg.value(metadata double %43, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %32, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 7, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 7, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %38, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %43, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %32, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %38, metadata !194, metadata !DIExpression()), !dbg !406
  %44 = fmul double %26, %38, !dbg !407
  %45 = fsub double %44, %32, !dbg !412
  %46 = fadd double %45, 0x3DDB4D2B79D27314, !dbg !408
  call void @llvm.dbg.value(metadata double %46, metadata !189, metadata !DIExpression()), !dbg !396
  %47 = tail call double @llvm.fabs.f64(double %44), !dbg !409
  %48 = tail call double @llvm.fabs.f64(double %32), !dbg !413
  %49 = fadd double %47, %48, !dbg !414
  %50 = fadd double %49, 0x3DDB4D2B79D27314, !dbg !410
  %51 = fadd double %43, %50, !dbg !411
  call void @llvm.dbg.value(metadata double %51, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %38, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 6, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 6, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %46, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %51, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %38, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %46, metadata !194, metadata !DIExpression()), !dbg !406
  %52 = fmul double %26, %46, !dbg !407
  %53 = fsub double %52, %38, !dbg !412
  %54 = fadd double %53, 0x3E4590EB5F26E7D5, !dbg !408
  call void @llvm.dbg.value(metadata double %54, metadata !189, metadata !DIExpression()), !dbg !396
  %55 = tail call double @llvm.fabs.f64(double %52), !dbg !409
  %56 = tail call double @llvm.fabs.f64(double %38), !dbg !413
  %57 = fadd double %55, %56, !dbg !414
  %58 = fadd double %57, 0x3E4590EB5F26E7D5, !dbg !410
  %59 = fadd double %51, %58, !dbg !411
  call void @llvm.dbg.value(metadata double %59, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %46, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 5, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 5, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %54, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %59, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %46, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %54, metadata !194, metadata !DIExpression()), !dbg !406
  %60 = fmul double %26, %54, !dbg !407
  %61 = fsub double %60, %46, !dbg !412
  %62 = fadd double %61, 0x3EA9AA76C61912B6, !dbg !408
  call void @llvm.dbg.value(metadata double %62, metadata !189, metadata !DIExpression()), !dbg !396
  %63 = tail call double @llvm.fabs.f64(double %60), !dbg !409
  %64 = tail call double @llvm.fabs.f64(double %46), !dbg !413
  %65 = fadd double %63, %64, !dbg !414
  %66 = fadd double %65, 0x3EA9AA76C61912B6, !dbg !410
  %67 = fadd double %59, %66, !dbg !411
  call void @llvm.dbg.value(metadata double %67, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %54, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 4, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 4, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %62, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %67, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %54, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %62, metadata !194, metadata !DIExpression()), !dbg !406
  %68 = fmul double %26, %62, !dbg !407
  %69 = fsub double %68, %54, !dbg !412
  %70 = fadd double %69, 0x3F05F62EA024E03C, !dbg !408
  call void @llvm.dbg.value(metadata double %70, metadata !189, metadata !DIExpression()), !dbg !396
  %71 = tail call double @llvm.fabs.f64(double %68), !dbg !409
  %72 = tail call double @llvm.fabs.f64(double %54), !dbg !413
  %73 = fadd double %71, %72, !dbg !414
  %74 = fadd double %73, 0x3F05F62EA024E03C, !dbg !410
  %75 = fadd double %67, %74, !dbg !411
  call void @llvm.dbg.value(metadata double %75, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %62, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 3, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 3, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %70, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %75, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %62, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %70, metadata !194, metadata !DIExpression()), !dbg !406
  %76 = fmul double %26, %70, !dbg !407
  %77 = fsub double %76, %62, !dbg !412
  %78 = fadd double %77, 0x3F5951DAC509D682, !dbg !408
  call void @llvm.dbg.value(metadata double %78, metadata !189, metadata !DIExpression()), !dbg !396
  %79 = tail call double @llvm.fabs.f64(double %76), !dbg !409
  %80 = tail call double @llvm.fabs.f64(double %62), !dbg !413
  %81 = fadd double %79, %80, !dbg !414
  %82 = fadd double %81, 0x3F5951DAC509D682, !dbg !410
  %83 = fadd double %75, %82, !dbg !411
  call void @llvm.dbg.value(metadata double %83, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %70, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 2, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 2, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %78, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %83, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %70, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %78, metadata !194, metadata !DIExpression()), !dbg !406
  %84 = fmul double %26, %78, !dbg !407
  %85 = fsub double %84, %70, !dbg !412
  %86 = fadd double %85, 0x3FA1D66AAA49A788, !dbg !408
  call void @llvm.dbg.value(metadata double %86, metadata !189, metadata !DIExpression()), !dbg !396
  %87 = tail call double @llvm.fabs.f64(double %84), !dbg !409
  %88 = tail call double @llvm.fabs.f64(double %70), !dbg !413
  %89 = fadd double %87, %88, !dbg !414
  %90 = fadd double %89, 0x3FA1D66AAA49A788, !dbg !410
  %91 = fadd double %83, %90, !dbg !411
  call void @llvm.dbg.value(metadata double %91, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %78, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %86, metadata !189, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %91, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %78, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %86, metadata !194, metadata !DIExpression()), !dbg !406
  %92 = fmul double %26, %86, !dbg !407
  %93 = fsub double %92, %78, !dbg !412
  %94 = fadd double %93, 0x3FDA120105D88A96, !dbg !408
  call void @llvm.dbg.value(metadata double %94, metadata !189, metadata !DIExpression()), !dbg !396
  %95 = tail call double @llvm.fabs.f64(double %92), !dbg !409
  %96 = tail call double @llvm.fabs.f64(double %78), !dbg !413
  %97 = fadd double %95, %96, !dbg !414
  %98 = fadd double %97, 0x3FDA120105D88A96, !dbg !410
  %99 = fadd double %91, %98, !dbg !411
  call void @llvm.dbg.value(metadata double %99, metadata !193, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %86, metadata !190, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata i64 0, metadata !188, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %94, metadata !198, metadata !DIExpression()), !dbg !415
  %100 = fmul double %25, %94, !dbg !416
  %101 = fsub double %100, %86, !dbg !417
  %102 = fadd double %101, 0xBF5026FB7F270595, !dbg !418
  call void @llvm.dbg.value(metadata double %102, metadata !189, metadata !DIExpression()), !dbg !396
  %103 = tail call double @llvm.fabs.f64(double %100), !dbg !419
  %104 = tail call double @llvm.fabs.f64(double %86), !dbg !420
  %105 = fadd double %104, %103, !dbg !421
  %106 = fadd double %105, 0x3F5026FB7F270595, !dbg !422
  %107 = fadd double %99, %106, !dbg !423
  call void @llvm.dbg.value(metadata double %107, metadata !193, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %102, metadata !360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !424
  %108 = fmul double %107, 0x3CB0000000000000, !dbg !425
  %109 = fadd double %108, 2.400000e-17, !dbg !426
  tail call void @llvm.dbg.value(metadata double %109, metadata !360, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !424
  %110 = fadd double %102, 8.750000e-01, !dbg !427
  %111 = fmul double %110, %0, !dbg !428
  store double %111, ptr %1, align 8, !dbg !429, !tbaa !156
  %112 = fmul double %4, %109, !dbg !430
  %113 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !431
  %114 = tail call double @llvm.fabs.f64(double %111), !dbg !432
  %115 = fmul double %114, 0x3CC0000000000000, !dbg !433
  %116 = fadd double %115, %112, !dbg !434
  store double %116, ptr %113, align 8, !dbg !434, !tbaa !161
  br label %136

117:                                              ; preds = %16
  %118 = fcmp olt double %4, 0x40862E42FEFA39EF, !dbg !435
  br i1 %118, label %119, label %134, !dbg !436

119:                                              ; preds = %117
  %120 = tail call double @exp(double noundef %4) #7, !dbg !437
  tail call void @llvm.dbg.value(metadata double %120, metadata !366, metadata !DIExpression()), !dbg !371
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !438
  %121 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %0, ptr noundef nonnull %3), !dbg !439, !range !440
  %122 = load double, ptr %3, align 8, !dbg !441, !tbaa !156
  %123 = fmul double %120, %122, !dbg !442
  store double %123, ptr %1, align 8, !dbg !443, !tbaa !156
  %124 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !444
  %125 = load double, ptr %124, align 8, !dbg !444, !tbaa !161
  %126 = fmul double %120, %125, !dbg !445
  %127 = fmul double %4, 0x3CB0000000000000, !dbg !446
  %128 = tail call double @llvm.fabs.f64(double %123), !dbg !447
  %129 = fmul double %127, %128, !dbg !448
  %130 = fadd double %126, %129, !dbg !449
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !450
  %132 = fmul double %128, 0x3CC0000000000000, !dbg !451
  %133 = fadd double %132, %130, !dbg !452
  store double %133, ptr %131, align 8, !dbg !452, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !453
  br label %136

134:                                              ; preds = %117
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !454, !tbaa !156
  %135 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !454
  store double 0x7FF0000000000000, ptr %135, align 8, !dbg !454, !tbaa !161
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 242, i32 noundef 16) #7, !dbg !457
  br label %136, !dbg !457

136:                                              ; preds = %134, %119, %18, %13, %9, %6
  %137 = phi i32 [ 0, %6 ], [ 15, %9 ], [ 0, %13 ], [ 0, %18 ], [ 0, %119 ], [ 16, %134 ], !dbg !459
  ret i32 %137, !dbg !460
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_I1_scaled(double noundef %0) local_unnamed_addr #0 !dbg !461 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !468
  call void @llvm.dbg.assign(metadata i1 undef, metadata !466, metadata !DIExpression(), metadata !468, metadata ptr %2, metadata !DIExpression()), !dbg !469
  tail call void @llvm.dbg.value(metadata double %0, metadata !465, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !470
  %3 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !470, !range !440
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !467, metadata !DIExpression()), !dbg !469
  %4 = icmp eq i32 %3, 0, !dbg !471
  br i1 %4, label %6, label %5, !dbg !470

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 252, i32 noundef %3) #7, !dbg !473
  br label %6, !dbg !473

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !470, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !476
  ret double %7, !dbg !476
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_I1(double noundef %0) local_unnamed_addr #0 !dbg !477 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !482
  call void @llvm.dbg.assign(metadata i1 undef, metadata !480, metadata !DIExpression(), metadata !482, metadata ptr %2, metadata !DIExpression()), !dbg !483
  tail call void @llvm.dbg.value(metadata double %0, metadata !479, metadata !DIExpression()), !dbg !483
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !484
  %3 = call i32 @gsl_sf_bessel_I1_e(double noundef %0, ptr noundef nonnull %2), !dbg !484, !range !485
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !481, metadata !DIExpression()), !dbg !483
  %4 = icmp eq i32 %3, 0, !dbg !486
  br i1 %4, label %6, label %5, !dbg !484

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef %3) #7, !dbg !488
  br label %6, !dbg !488

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !484, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !491
  ret double %7, !dbg !491
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_I1.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "9601435fe13eaee259189825fbc8c785")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 252, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 38)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 257, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 31)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "ai1_data", scope: !29, file: !2, line: 80, type: !98, isLocal: true, isDefinition: true)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !30, globals: !70, splitDebugInlining: false, nameTableKind: None)
!30 = !{!31}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 39, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!36 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!37 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!38 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!39 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!40 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!41 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!42 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!43 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!44 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!45 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!46 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!47 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!48 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!49 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!50 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!51 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!52 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!53 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!54 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!55 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!56 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!57 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!58 = !DIEnumerator(name: "GSL_ESING", value: 21)
!59 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!60 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!61 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!62 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!63 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!64 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!65 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!66 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!67 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!68 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!69 = !DIEnumerator(name: "GSL_EOF", value: 32)
!70 = !{!0, !7, !12, !17, !22, !71, !84, !89, !27, !91, !93}
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "bi1_cs", scope: !29, file: !2, line: 73, type: !73, isLocal: true, isDefinition: true)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !74, line: 29, baseType: !75)
!74 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !74, line: 22, size: 320, elements: !76)
!76 = !{!77, !80, !81, !82, !83}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !75, file: !74, line: 23, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !75, file: !74, line: 24, baseType: !33, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !75, file: !74, line: 25, baseType: !79, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !75, file: !74, line: 26, baseType: !79, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !75, file: !74, line: 27, baseType: !33, size: 32, offset: 256)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "bi1_data", scope: !29, file: !2, line: 60, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 704, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 11)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "ai1_cs", scope: !29, file: !2, line: 103, type: !73, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "ai12_cs", scope: !29, file: !2, line: 134, type: !73, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "ai12_data", scope: !29, file: !2, line: 110, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 1408, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 22)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 1344, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 21)
!101 = !{i32 7, !"Dwarf Version", i32 5}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{i32 8, !"PIC Level", i32 2}
!105 = !{i32 7, !"PIE Level", i32 2}
!106 = !{i32 7, !"uwtable", i32 2}
!107 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!108 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!109 = distinct !DISubprogram(name: "gsl_sf_bessel_I1_scaled_e", scope: !2, file: !2, line: 144, type: !110, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !120)
!110 = !DISubroutineType(types: !111)
!111 = !{!33, !112, !113}
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !115, line: 41, baseType: !116)
!115 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !115, line: 37, size: 128, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !116, file: !115, line: 38, baseType: !79, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !116, file: !115, line: 39, baseType: !79, size: 64, offset: 64)
!120 = !{!121, !122, !123, !124, !125, !126, !132, !133, !136, !137, !138, !139, !141, !142, !143}
!121 = !DILocalVariable(name: "x", arg: 1, scope: !109, file: !2, line: 144, type: !112)
!122 = !DILocalVariable(name: "result", arg: 2, scope: !109, file: !2, line: 144, type: !113)
!123 = !DILocalVariable(name: "xmin", scope: !109, file: !2, line: 146, type: !112)
!124 = !DILocalVariable(name: "x_small", scope: !109, file: !2, line: 147, type: !112)
!125 = !DILocalVariable(name: "y", scope: !109, file: !2, line: 148, type: !112)
!126 = !DILocalVariable(name: "ey", scope: !127, file: !2, line: 166, type: !112)
!127 = distinct !DILexicalBlock(scope: !128, file: !2, line: 165, column: 21)
!128 = distinct !DILexicalBlock(scope: !129, file: !2, line: 165, column: 11)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 160, column: 11)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 157, column: 11)
!131 = distinct !DILexicalBlock(scope: !109, file: !2, line: 152, column: 6)
!132 = !DILocalVariable(name: "c", scope: !127, file: !2, line: 167, type: !114)
!133 = !DILocalVariable(name: "sy", scope: !134, file: !2, line: 175, type: !112)
!134 = distinct !DILexicalBlock(scope: !135, file: !2, line: 174, column: 21)
!135 = distinct !DILexicalBlock(scope: !128, file: !2, line: 174, column: 11)
!136 = !DILocalVariable(name: "c", scope: !134, file: !2, line: 176, type: !114)
!137 = !DILocalVariable(name: "b", scope: !134, file: !2, line: 177, type: !79)
!138 = !DILocalVariable(name: "s", scope: !134, file: !2, line: 178, type: !79)
!139 = !DILocalVariable(name: "sy", scope: !140, file: !2, line: 188, type: !112)
!140 = distinct !DILexicalBlock(scope: !135, file: !2, line: 187, column: 8)
!141 = !DILocalVariable(name: "c", scope: !140, file: !2, line: 189, type: !114)
!142 = !DILocalVariable(name: "b", scope: !140, file: !2, line: 190, type: !79)
!143 = !DILocalVariable(name: "s", scope: !140, file: !2, line: 191, type: !79)
!144 = !DILocation(line: 0, scope: !109)
!145 = !DILocation(line: 148, column: 20, scope: !109)
!146 = !DILocation(line: 152, column: 8, scope: !131)
!147 = !DILocation(line: 152, column: 6, scope: !109)
!148 = !DILocation(line: 154, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !131, file: !2, line: 152, column: 16)
!150 = !DILocation(line: 155, column: 5, scope: !149)
!151 = !DILocation(line: 157, column: 13, scope: !130)
!152 = !DILocation(line: 157, column: 11, scope: !131)
!153 = !DILocation(line: 158, column: 5, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 158, column: 5)
!155 = distinct !DILexicalBlock(scope: !130, file: !2, line: 157, column: 21)
!156 = !{!157, !158, i64 0}
!157 = !{!"gsl_sf_result_struct", !158, i64 0, !158, i64 8}
!158 = !{!"double", !159, i64 0}
!159 = !{!"omnipotent char", !160, i64 0}
!160 = !{!"Simple C/C++ TBAA"}
!161 = !{!157, !158, i64 8}
!162 = !DILocation(line: 158, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !154, file: !2, line: 158, column: 5)
!164 = !DILocation(line: 160, column: 13, scope: !129)
!165 = !DILocation(line: 160, column: 11, scope: !130)
!166 = !DILocation(line: 161, column: 22, scope: !167)
!167 = distinct !DILexicalBlock(scope: !129, file: !2, line: 160, column: 24)
!168 = !DILocation(line: 161, column: 17, scope: !167)
!169 = !DILocation(line: 162, column: 13, scope: !167)
!170 = !DILocation(line: 162, column: 17, scope: !167)
!171 = !DILocation(line: 163, column: 5, scope: !167)
!172 = !DILocation(line: 165, column: 13, scope: !128)
!173 = !DILocation(line: 165, column: 11, scope: !129)
!174 = !DILocation(line: 166, column: 27, scope: !127)
!175 = !DILocation(line: 166, column: 23, scope: !127)
!176 = !DILocation(line: 0, scope: !127)
!177 = !{}
!178 = !DILocalVariable(name: "cs", arg: 1, scope: !179, file: !180, line: 3, type: !183)
!179 = distinct !DISubprogram(name: "cheb_eval_e", scope: !180, file: !180, line: 3, type: !181, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !185)
!180 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!181 = !DISubroutineType(types: !182)
!182 = !{!33, !183, !112, !113}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!185 = !{!178, !186, !187, !188, !189, !190, !191, !192, !193, !194, !198}
!186 = !DILocalVariable(name: "x", arg: 2, scope: !179, file: !180, line: 4, type: !112)
!187 = !DILocalVariable(name: "result", arg: 3, scope: !179, file: !180, line: 5, type: !113)
!188 = !DILocalVariable(name: "j", scope: !179, file: !180, line: 7, type: !33)
!189 = !DILocalVariable(name: "d", scope: !179, file: !180, line: 8, type: !79)
!190 = !DILocalVariable(name: "dd", scope: !179, file: !180, line: 9, type: !79)
!191 = !DILocalVariable(name: "y", scope: !179, file: !180, line: 11, type: !79)
!192 = !DILocalVariable(name: "y2", scope: !179, file: !180, line: 12, type: !79)
!193 = !DILocalVariable(name: "e", scope: !179, file: !180, line: 14, type: !79)
!194 = !DILocalVariable(name: "temp", scope: !195, file: !180, line: 17, type: !79)
!195 = distinct !DILexicalBlock(scope: !196, file: !180, line: 16, column: 33)
!196 = distinct !DILexicalBlock(scope: !197, file: !180, line: 16, column: 3)
!197 = distinct !DILexicalBlock(scope: !179, file: !180, line: 16, column: 3)
!198 = !DILocalVariable(name: "temp", scope: !199, file: !180, line: 24, type: !79)
!199 = distinct !DILexicalBlock(scope: !179, file: !180, line: 23, column: 3)
!200 = !DILocation(line: 0, scope: !179, inlinedAt: !201)
!201 = distinct !DILocation(line: 168, column: 5, scope: !127)
!202 = !DILocation(line: 168, column: 27, scope: !127)
!203 = !DILocation(line: 168, column: 29, scope: !127)
!204 = !DILocation(line: 168, column: 33, scope: !127)
!205 = !DILocation(line: 11, column: 19, scope: !179, inlinedAt: !201)
!206 = !DILocation(line: 11, column: 22, scope: !179, inlinedAt: !201)
!207 = !DILocation(line: 11, column: 30, scope: !179, inlinedAt: !201)
!208 = !DILocation(line: 11, column: 39, scope: !179, inlinedAt: !201)
!209 = !DILocation(line: 12, column: 19, scope: !179, inlinedAt: !201)
!210 = !DILocation(line: 0, scope: !195, inlinedAt: !201)
!211 = !DILocation(line: 18, column: 11, scope: !195, inlinedAt: !201)
!212 = !DILocation(line: 18, column: 19, scope: !195, inlinedAt: !201)
!213 = !DILocation(line: 19, column: 10, scope: !195, inlinedAt: !201)
!214 = !DILocation(line: 19, column: 35, scope: !195, inlinedAt: !201)
!215 = !DILocation(line: 19, column: 7, scope: !195, inlinedAt: !201)
!216 = !DILocation(line: 18, column: 14, scope: !195, inlinedAt: !201)
!217 = !DILocation(line: 19, column: 26, scope: !195, inlinedAt: !201)
!218 = !DILocation(line: 19, column: 24, scope: !195, inlinedAt: !201)
!219 = !DILocation(line: 0, scope: !199, inlinedAt: !201)
!220 = !DILocation(line: 25, column: 10, scope: !199, inlinedAt: !201)
!221 = !DILocation(line: 25, column: 13, scope: !199, inlinedAt: !201)
!222 = !DILocation(line: 25, column: 18, scope: !199, inlinedAt: !201)
!223 = !DILocation(line: 26, column: 10, scope: !199, inlinedAt: !201)
!224 = !DILocation(line: 26, column: 25, scope: !199, inlinedAt: !201)
!225 = !DILocation(line: 26, column: 23, scope: !199, inlinedAt: !201)
!226 = !DILocation(line: 26, column: 34, scope: !199, inlinedAt: !201)
!227 = !DILocation(line: 26, column: 7, scope: !199, inlinedAt: !201)
!228 = !DILocation(line: 30, column: 33, scope: !179, inlinedAt: !201)
!229 = !DILocation(line: 30, column: 37, scope: !179, inlinedAt: !201)
!230 = !DILocation(line: 169, column: 22, scope: !127)
!231 = !DILocation(line: 169, column: 36, scope: !127)
!232 = !DILocation(line: 169, column: 27, scope: !127)
!233 = !DILocation(line: 169, column: 18, scope: !127)
!234 = !DILocation(line: 170, column: 23, scope: !127)
!235 = !DILocation(line: 170, column: 35, scope: !127)
!236 = !DILocation(line: 170, column: 55, scope: !127)
!237 = !DILocation(line: 170, column: 53, scope: !127)
!238 = !DILocation(line: 170, column: 31, scope: !127)
!239 = !DILocation(line: 170, column: 13, scope: !127)
!240 = !DILocation(line: 171, column: 42, scope: !127)
!241 = !DILocation(line: 171, column: 17, scope: !127)
!242 = !DILocation(line: 174, column: 13, scope: !135)
!243 = !DILocation(line: 0, scope: !135)
!244 = !DILocation(line: 174, column: 11, scope: !128)
!245 = !DILocation(line: 0, scope: !134)
!246 = !DILocation(line: 179, column: 31, scope: !134)
!247 = !DILocation(line: 179, column: 33, scope: !134)
!248 = !DILocation(line: 179, column: 39, scope: !134)
!249 = !DILocation(line: 0, scope: !179, inlinedAt: !250)
!250 = distinct !DILocation(line: 179, column: 5, scope: !134)
!251 = !DILocation(line: 11, column: 19, scope: !179, inlinedAt: !250)
!252 = !DILocation(line: 11, column: 22, scope: !179, inlinedAt: !250)
!253 = !DILocation(line: 11, column: 30, scope: !179, inlinedAt: !250)
!254 = !DILocation(line: 11, column: 39, scope: !179, inlinedAt: !250)
!255 = !DILocation(line: 12, column: 19, scope: !179, inlinedAt: !250)
!256 = !DILocation(line: 16, column: 3, scope: !197, inlinedAt: !250)
!257 = !DILocation(line: 0, scope: !195, inlinedAt: !250)
!258 = !DILocation(line: 18, column: 11, scope: !195, inlinedAt: !250)
!259 = !DILocation(line: 18, column: 14, scope: !195, inlinedAt: !250)
!260 = !DILocation(line: 18, column: 21, scope: !195, inlinedAt: !250)
!261 = !{!158, !158, i64 0}
!262 = !DILocation(line: 18, column: 19, scope: !195, inlinedAt: !250)
!263 = !DILocation(line: 19, column: 10, scope: !195, inlinedAt: !250)
!264 = !DILocation(line: 19, column: 26, scope: !195, inlinedAt: !250)
!265 = !DILocation(line: 19, column: 24, scope: !195, inlinedAt: !250)
!266 = !DILocation(line: 19, column: 37, scope: !195, inlinedAt: !250)
!267 = !DILocation(line: 19, column: 35, scope: !195, inlinedAt: !250)
!268 = !DILocation(line: 19, column: 7, scope: !195, inlinedAt: !250)
!269 = !DILocation(line: 16, column: 29, scope: !196, inlinedAt: !250)
!270 = !DILocation(line: 16, column: 23, scope: !196, inlinedAt: !250)
!271 = distinct !{!271, !256, !272, !273}
!272 = !DILocation(line: 21, column: 3, scope: !197, inlinedAt: !250)
!273 = !{!"llvm.loop.mustprogress"}
!274 = !DILocation(line: 0, scope: !199, inlinedAt: !250)
!275 = !DILocation(line: 25, column: 10, scope: !199, inlinedAt: !250)
!276 = !DILocation(line: 25, column: 13, scope: !199, inlinedAt: !250)
!277 = !DILocation(line: 25, column: 18, scope: !199, inlinedAt: !250)
!278 = !DILocation(line: 26, column: 10, scope: !199, inlinedAt: !250)
!279 = !DILocation(line: 26, column: 25, scope: !199, inlinedAt: !250)
!280 = !DILocation(line: 26, column: 23, scope: !199, inlinedAt: !250)
!281 = !DILocation(line: 26, column: 34, scope: !199, inlinedAt: !250)
!282 = !DILocation(line: 26, column: 7, scope: !199, inlinedAt: !250)
!283 = !DILocation(line: 30, column: 33, scope: !179, inlinedAt: !250)
!284 = !DILocation(line: 30, column: 37, scope: !179, inlinedAt: !250)
!285 = !DILocation(line: 180, column: 16, scope: !134)
!286 = !DILocation(line: 180, column: 25, scope: !134)
!287 = !DILocation(line: 181, column: 12, scope: !134)
!288 = !DILocation(line: 182, column: 22, scope: !134)
!289 = !DILocation(line: 182, column: 18, scope: !134)
!290 = !DILocation(line: 183, column: 26, scope: !134)
!291 = !DILocation(line: 183, column: 13, scope: !134)
!292 = !DILocation(line: 184, column: 44, scope: !134)
!293 = !DILocation(line: 184, column: 42, scope: !134)
!294 = !DILocation(line: 184, column: 17, scope: !134)
!295 = !DILocation(line: 0, scope: !140)
!296 = !DILocation(line: 192, column: 31, scope: !140)
!297 = !DILocation(line: 192, column: 33, scope: !140)
!298 = !DILocation(line: 0, scope: !179, inlinedAt: !299)
!299 = distinct !DILocation(line: 192, column: 5, scope: !140)
!300 = !DILocation(line: 11, column: 19, scope: !179, inlinedAt: !299)
!301 = !DILocation(line: 11, column: 22, scope: !179, inlinedAt: !299)
!302 = !DILocation(line: 11, column: 30, scope: !179, inlinedAt: !299)
!303 = !DILocation(line: 11, column: 39, scope: !179, inlinedAt: !299)
!304 = !DILocation(line: 12, column: 19, scope: !179, inlinedAt: !299)
!305 = !DILocation(line: 16, column: 3, scope: !197, inlinedAt: !299)
!306 = !DILocation(line: 0, scope: !195, inlinedAt: !299)
!307 = !DILocation(line: 18, column: 11, scope: !195, inlinedAt: !299)
!308 = !DILocation(line: 18, column: 14, scope: !195, inlinedAt: !299)
!309 = !DILocation(line: 18, column: 21, scope: !195, inlinedAt: !299)
!310 = !DILocation(line: 18, column: 19, scope: !195, inlinedAt: !299)
!311 = !DILocation(line: 19, column: 10, scope: !195, inlinedAt: !299)
!312 = !DILocation(line: 19, column: 26, scope: !195, inlinedAt: !299)
!313 = !DILocation(line: 19, column: 24, scope: !195, inlinedAt: !299)
!314 = !DILocation(line: 19, column: 37, scope: !195, inlinedAt: !299)
!315 = !DILocation(line: 19, column: 35, scope: !195, inlinedAt: !299)
!316 = !DILocation(line: 19, column: 7, scope: !195, inlinedAt: !299)
!317 = !DILocation(line: 16, column: 29, scope: !196, inlinedAt: !299)
!318 = !DILocation(line: 16, column: 23, scope: !196, inlinedAt: !299)
!319 = distinct !{!319, !305, !320, !273}
!320 = !DILocation(line: 21, column: 3, scope: !197, inlinedAt: !299)
!321 = !DILocation(line: 0, scope: !199, inlinedAt: !299)
!322 = !DILocation(line: 25, column: 10, scope: !199, inlinedAt: !299)
!323 = !DILocation(line: 25, column: 13, scope: !199, inlinedAt: !299)
!324 = !DILocation(line: 25, column: 18, scope: !199, inlinedAt: !299)
!325 = !DILocation(line: 26, column: 10, scope: !199, inlinedAt: !299)
!326 = !DILocation(line: 26, column: 25, scope: !199, inlinedAt: !299)
!327 = !DILocation(line: 26, column: 23, scope: !199, inlinedAt: !299)
!328 = !DILocation(line: 26, column: 34, scope: !199, inlinedAt: !299)
!329 = !DILocation(line: 26, column: 7, scope: !199, inlinedAt: !299)
!330 = !DILocation(line: 30, column: 33, scope: !179, inlinedAt: !299)
!331 = !DILocation(line: 30, column: 37, scope: !179, inlinedAt: !299)
!332 = !DILocation(line: 193, column: 16, scope: !140)
!333 = !DILocation(line: 193, column: 25, scope: !140)
!334 = !DILocation(line: 194, column: 12, scope: !140)
!335 = !DILocation(line: 195, column: 22, scope: !140)
!336 = !DILocation(line: 195, column: 18, scope: !140)
!337 = !DILocation(line: 196, column: 26, scope: !140)
!338 = !DILocation(line: 196, column: 13, scope: !140)
!339 = !DILocation(line: 197, column: 44, scope: !140)
!340 = !DILocation(line: 197, column: 42, scope: !140)
!341 = !DILocation(line: 197, column: 17, scope: !140)
!342 = !DILocation(line: 0, scope: !131)
!343 = !DILocation(line: 200, column: 1, scope: !109)
!344 = !DISubprogram(name: "gsl_error", scope: !32, file: !32, line: 77, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347, !347, !33, !33}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!349 = !DISubprogram(name: "exp", scope: !350, file: !350, line: 95, type: !351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!351 = !DISubroutineType(types: !352)
!352 = !{!79, !79}
!353 = distinct !DISubprogram(name: "gsl_sf_bessel_I1_e", scope: !2, file: !2, line: 203, type: !110, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !366, !369}
!355 = !DILocalVariable(name: "x", arg: 1, scope: !353, file: !2, line: 203, type: !112)
!356 = !DILocalVariable(name: "result", arg: 2, scope: !353, file: !2, line: 203, type: !113)
!357 = !DILocalVariable(name: "xmin", scope: !353, file: !2, line: 205, type: !112)
!358 = !DILocalVariable(name: "x_small", scope: !353, file: !2, line: 206, type: !112)
!359 = !DILocalVariable(name: "y", scope: !353, file: !2, line: 207, type: !112)
!360 = !DILocalVariable(name: "c", scope: !361, file: !2, line: 225, type: !114)
!361 = distinct !DILexicalBlock(scope: !362, file: !2, line: 224, column: 21)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 224, column: 11)
!363 = distinct !DILexicalBlock(scope: !364, file: !2, line: 219, column: 11)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 216, column: 11)
!365 = distinct !DILexicalBlock(scope: !353, file: !2, line: 211, column: 6)
!366 = !DILocalVariable(name: "ey", scope: !367, file: !2, line: 233, type: !112)
!367 = distinct !DILexicalBlock(scope: !368, file: !2, line: 232, column: 32)
!368 = distinct !DILexicalBlock(scope: !362, file: !2, line: 232, column: 11)
!369 = !DILocalVariable(name: "I1_scaled", scope: !367, file: !2, line: 234, type: !114)
!370 = distinct !DIAssignID()
!371 = !DILocation(line: 0, scope: !367)
!372 = !DILocation(line: 0, scope: !353)
!373 = !DILocation(line: 207, column: 20, scope: !353)
!374 = !DILocation(line: 211, column: 8, scope: !365)
!375 = !DILocation(line: 211, column: 6, scope: !353)
!376 = !DILocation(line: 213, column: 17, scope: !377)
!377 = distinct !DILexicalBlock(scope: !365, file: !2, line: 211, column: 16)
!378 = !DILocation(line: 214, column: 5, scope: !377)
!379 = !DILocation(line: 216, column: 13, scope: !364)
!380 = !DILocation(line: 216, column: 11, scope: !365)
!381 = !DILocation(line: 217, column: 5, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 217, column: 5)
!383 = distinct !DILexicalBlock(scope: !364, file: !2, line: 216, column: 21)
!384 = !DILocation(line: 217, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !2, line: 217, column: 5)
!386 = !DILocation(line: 219, column: 13, scope: !363)
!387 = !DILocation(line: 219, column: 11, scope: !364)
!388 = !DILocation(line: 220, column: 22, scope: !389)
!389 = distinct !DILexicalBlock(scope: !363, file: !2, line: 219, column: 24)
!390 = !DILocation(line: 220, column: 17, scope: !389)
!391 = !DILocation(line: 221, column: 13, scope: !389)
!392 = !DILocation(line: 221, column: 17, scope: !389)
!393 = !DILocation(line: 222, column: 5, scope: !389)
!394 = !DILocation(line: 224, column: 13, scope: !362)
!395 = !DILocation(line: 224, column: 11, scope: !363)
!396 = !DILocation(line: 0, scope: !179, inlinedAt: !397)
!397 = distinct !DILocation(line: 226, column: 5, scope: !361)
!398 = !DILocation(line: 226, column: 27, scope: !361)
!399 = !DILocation(line: 226, column: 29, scope: !361)
!400 = !DILocation(line: 226, column: 33, scope: !361)
!401 = !DILocation(line: 11, column: 19, scope: !179, inlinedAt: !397)
!402 = !DILocation(line: 11, column: 22, scope: !179, inlinedAt: !397)
!403 = !DILocation(line: 11, column: 30, scope: !179, inlinedAt: !397)
!404 = !DILocation(line: 11, column: 39, scope: !179, inlinedAt: !397)
!405 = !DILocation(line: 12, column: 19, scope: !179, inlinedAt: !397)
!406 = !DILocation(line: 0, scope: !195, inlinedAt: !397)
!407 = !DILocation(line: 18, column: 11, scope: !195, inlinedAt: !397)
!408 = !DILocation(line: 18, column: 19, scope: !195, inlinedAt: !397)
!409 = !DILocation(line: 19, column: 10, scope: !195, inlinedAt: !397)
!410 = !DILocation(line: 19, column: 35, scope: !195, inlinedAt: !397)
!411 = !DILocation(line: 19, column: 7, scope: !195, inlinedAt: !397)
!412 = !DILocation(line: 18, column: 14, scope: !195, inlinedAt: !397)
!413 = !DILocation(line: 19, column: 26, scope: !195, inlinedAt: !397)
!414 = !DILocation(line: 19, column: 24, scope: !195, inlinedAt: !397)
!415 = !DILocation(line: 0, scope: !199, inlinedAt: !397)
!416 = !DILocation(line: 25, column: 10, scope: !199, inlinedAt: !397)
!417 = !DILocation(line: 25, column: 13, scope: !199, inlinedAt: !397)
!418 = !DILocation(line: 25, column: 18, scope: !199, inlinedAt: !397)
!419 = !DILocation(line: 26, column: 10, scope: !199, inlinedAt: !397)
!420 = !DILocation(line: 26, column: 25, scope: !199, inlinedAt: !397)
!421 = !DILocation(line: 26, column: 23, scope: !199, inlinedAt: !397)
!422 = !DILocation(line: 26, column: 34, scope: !199, inlinedAt: !397)
!423 = !DILocation(line: 26, column: 7, scope: !199, inlinedAt: !397)
!424 = !DILocation(line: 0, scope: !361)
!425 = !DILocation(line: 30, column: 33, scope: !179, inlinedAt: !397)
!426 = !DILocation(line: 30, column: 37, scope: !179, inlinedAt: !397)
!427 = !DILocation(line: 227, column: 31, scope: !361)
!428 = !DILocation(line: 227, column: 22, scope: !361)
!429 = !DILocation(line: 227, column: 18, scope: !361)
!430 = !DILocation(line: 228, column: 22, scope: !361)
!431 = !DILocation(line: 228, column: 13, scope: !361)
!432 = !DILocation(line: 229, column: 44, scope: !361)
!433 = !DILocation(line: 229, column: 42, scope: !361)
!434 = !DILocation(line: 229, column: 17, scope: !361)
!435 = !DILocation(line: 232, column: 13, scope: !368)
!436 = !DILocation(line: 232, column: 11, scope: !362)
!437 = !DILocation(line: 233, column: 23, scope: !367)
!438 = !DILocation(line: 234, column: 5, scope: !367)
!439 = !DILocation(line: 235, column: 5, scope: !367)
!440 = !{i32 0, i32 16}
!441 = !DILocation(line: 236, column: 35, scope: !367)
!442 = !DILocation(line: 236, column: 23, scope: !367)
!443 = !DILocation(line: 236, column: 18, scope: !367)
!444 = !DILocation(line: 237, column: 35, scope: !367)
!445 = !DILocation(line: 237, column: 23, scope: !367)
!446 = !DILocation(line: 237, column: 43, scope: !367)
!447 = !DILocation(line: 237, column: 63, scope: !367)
!448 = !DILocation(line: 237, column: 61, scope: !367)
!449 = !DILocation(line: 237, column: 39, scope: !367)
!450 = !DILocation(line: 237, column: 13, scope: !367)
!451 = !DILocation(line: 238, column: 42, scope: !367)
!452 = !DILocation(line: 238, column: 17, scope: !367)
!453 = !DILocation(line: 240, column: 3, scope: !368)
!454 = !DILocation(line: 242, column: 5, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !2, line: 242, column: 5)
!456 = distinct !DILexicalBlock(scope: !368, file: !2, line: 241, column: 8)
!457 = !DILocation(line: 242, column: 5, scope: !458)
!458 = distinct !DILexicalBlock(scope: !455, file: !2, line: 242, column: 5)
!459 = !DILocation(line: 0, scope: !365)
!460 = !DILocation(line: 244, column: 1, scope: !353)
!461 = distinct !DISubprogram(name: "gsl_sf_bessel_I1_scaled", scope: !2, file: !2, line: 250, type: !462, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !464)
!462 = !DISubroutineType(types: !463)
!463 = !{!79, !112}
!464 = !{!465, !466, !467}
!465 = !DILocalVariable(name: "x", arg: 1, scope: !461, file: !2, line: 250, type: !112)
!466 = !DILocalVariable(name: "result", scope: !461, file: !2, line: 252, type: !114)
!467 = !DILocalVariable(name: "status", scope: !461, file: !2, line: 252, type: !33)
!468 = distinct !DIAssignID()
!469 = !DILocation(line: 0, scope: !461)
!470 = !DILocation(line: 252, column: 3, scope: !461)
!471 = !DILocation(line: 252, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !461, file: !2, line: 252, column: 3)
!473 = !DILocation(line: 252, column: 3, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 252, column: 3)
!475 = distinct !DILexicalBlock(scope: !472, file: !2, line: 252, column: 3)
!476 = !DILocation(line: 253, column: 1, scope: !461)
!477 = distinct !DISubprogram(name: "gsl_sf_bessel_I1", scope: !2, file: !2, line: 255, type: !462, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !478)
!478 = !{!479, !480, !481}
!479 = !DILocalVariable(name: "x", arg: 1, scope: !477, file: !2, line: 255, type: !112)
!480 = !DILocalVariable(name: "result", scope: !477, file: !2, line: 257, type: !114)
!481 = !DILocalVariable(name: "status", scope: !477, file: !2, line: 257, type: !33)
!482 = distinct !DIAssignID()
!483 = !DILocation(line: 0, scope: !477)
!484 = !DILocation(line: 257, column: 3, scope: !477)
!485 = !{i32 0, i32 17}
!486 = !DILocation(line: 257, column: 3, scope: !487)
!487 = distinct !DILexicalBlock(scope: !477, file: !2, line: 257, column: 3)
!488 = !DILocation(line: 257, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !2, line: 257, column: 3)
!490 = distinct !DILexicalBlock(scope: !487, file: !2, line: 257, column: 3)
!491 = !DILocation(line: 258, column: 1, scope: !477)
