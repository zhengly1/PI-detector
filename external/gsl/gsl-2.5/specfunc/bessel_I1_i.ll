; ModuleID = 'bessel_I1.ll'
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
  br label %131, !dbg !150

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x20000000000000, !dbg !151
  br i1 %7, label %8, label %10, !dbg !152

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !153, !tbaa !156
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !153
  store double 0x10000000000000, ptr %9, align 8, !dbg !153, !tbaa !161
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 158, i32 noundef 15) #6, !dbg !162
  br label %131, !dbg !162

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 0x3E66A09E667F3BCD, !dbg !164
  br i1 %11, label %12, label %15, !dbg !165

12:                                               ; preds = %10
  %13 = fmul double %0, 5.000000e-01, !dbg !166
  store double %13, ptr %1, align 8, !dbg !168, !tbaa !156
  %14 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !169
  store double 0.000000e+00, ptr %14, align 8, !dbg !170, !tbaa !161
  br label %131, !dbg !171

15:                                               ; preds = %10
  %16 = fcmp ugt double %3, 3.000000e+00, !dbg !172
  br i1 %16, label %65, label %17, !dbg !173

17:                                               ; preds = %15
  %18 = fneg double %3, !dbg !174
  %19 = tail call double @exp(double noundef %18) #6, !dbg !175
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
  %handler_result = call double @fAddHandlerDouble(double %21, double -1.000000e+00), !dbg !204
  call void @llvm.dbg.value(metadata double %handler_result, metadata !186, metadata !DIExpression()), !dbg !200
  %22 = fmul double %handler_result, 2.000000e+00, !dbg !204
  %handler_result1 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !205
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !206
  %23 = fmul double %handler_result2, 5.000000e-01, !dbg !206
  call void @llvm.dbg.value(metadata double %23, metadata !191, metadata !DIExpression()), !dbg !200
  %24 = fmul double %23, 2.000000e+00, !dbg !207
  call void @llvm.dbg.value(metadata double %24, metadata !192, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 10, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !194, metadata !DIExpression()), !dbg !208
  %25 = fmul double %24, 0.000000e+00, !dbg !209
  %handler_result3 = call double @fAddHandlerDouble(double %25, double 2.400000e-17), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !189, metadata !DIExpression()), !dbg !200
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !210
  %handler_result4 = call double @fAddHandlerDouble(double %26, double 2.400000e-17), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 9, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 9, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !194, metadata !DIExpression()), !dbg !208
  %27 = fmul double %24, %handler_result3, !dbg !209
  %handler_result5 = call double @fAddHandlerDouble(double %27, double 4.741000e-15), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !189, metadata !DIExpression()), !dbg !200
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !210
  %handler_result6 = call double @fAddHandlerDouble(double %28, double 4.741000e-15), !dbg !211
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result4, double %handler_result6), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 8, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 8, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !194, metadata !DIExpression()), !dbg !208
  %29 = fmul double %24, %handler_result5, !dbg !209
  %handler_result8 = call double @fSubHandlerDouble(double %29, double %handler_result3), !dbg !212
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 7.663800e-13), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !189, metadata !DIExpression()), !dbg !200
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !210
  %31 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !213
  %handler_result10 = call double @fAddHandlerDouble(double %30, double %31), !dbg !214
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 7.663800e-13), !dbg !211
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 7, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 7, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !194, metadata !DIExpression()), !dbg !208
  %32 = fmul double %24, %handler_result9, !dbg !209
  %handler_result13 = call double @fSubHandlerDouble(double %32, double %handler_result5), !dbg !212
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0x3DDB4D2B79D27314), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !189, metadata !DIExpression()), !dbg !200
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !210
  %34 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !213
  %handler_result15 = call double @fAddHandlerDouble(double %33, double %34), !dbg !214
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 0x3DDB4D2B79D27314), !dbg !211
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result12, double %handler_result16), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 6, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 6, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !194, metadata !DIExpression()), !dbg !208
  %35 = fmul double %24, %handler_result14, !dbg !209
  %handler_result18 = call double @fSubHandlerDouble(double %35, double %handler_result9), !dbg !212
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3E4590EB5F26E7D5), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !189, metadata !DIExpression()), !dbg !200
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !210
  %37 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !213
  %handler_result20 = call double @fAddHandlerDouble(double %36, double %37), !dbg !214
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 0x3E4590EB5F26E7D5), !dbg !211
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result17, double %handler_result21), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 5, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 5, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !194, metadata !DIExpression()), !dbg !208
  %38 = fmul double %24, %handler_result19, !dbg !209
  %handler_result23 = call double @fSubHandlerDouble(double %38, double %handler_result14), !dbg !212
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3EA9AA76C61912B6), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !189, metadata !DIExpression()), !dbg !200
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !210
  %40 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !213
  %handler_result25 = call double @fAddHandlerDouble(double %39, double %40), !dbg !214
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3EA9AA76C61912B6), !dbg !211
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result22, double %handler_result26), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 4, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 4, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !194, metadata !DIExpression()), !dbg !208
  %41 = fmul double %24, %handler_result24, !dbg !209
  %handler_result28 = call double @fSubHandlerDouble(double %41, double %handler_result19), !dbg !212
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double 0x3F05F62EA024E03C), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !189, metadata !DIExpression()), !dbg !200
  %42 = tail call double @llvm.fabs.f64(double %41), !dbg !210
  %43 = tail call double @llvm.fabs.f64(double %handler_result19), !dbg !213
  %handler_result30 = call double @fAddHandlerDouble(double %42, double %43), !dbg !214
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double 0x3F05F62EA024E03C), !dbg !211
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result27, double %handler_result31), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 3, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 3, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !194, metadata !DIExpression()), !dbg !208
  %44 = fmul double %24, %handler_result29, !dbg !209
  %handler_result33 = call double @fSubHandlerDouble(double %44, double %handler_result24), !dbg !212
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3F5951DAC509D682), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !189, metadata !DIExpression()), !dbg !200
  %45 = tail call double @llvm.fabs.f64(double %44), !dbg !210
  %46 = tail call double @llvm.fabs.f64(double %handler_result24), !dbg !213
  %handler_result35 = call double @fAddHandlerDouble(double %45, double %46), !dbg !214
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3F5951DAC509D682), !dbg !211
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result32, double %handler_result36), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 2, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 2, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !194, metadata !DIExpression()), !dbg !208
  %47 = fmul double %24, %handler_result34, !dbg !209
  %handler_result38 = call double @fSubHandlerDouble(double %47, double %handler_result29), !dbg !212
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double 0x3FA1D66AAA49A788), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !189, metadata !DIExpression()), !dbg !200
  %48 = tail call double @llvm.fabs.f64(double %47), !dbg !210
  %49 = tail call double @llvm.fabs.f64(double %handler_result29), !dbg !213
  %handler_result40 = call double @fAddHandlerDouble(double %48, double %49), !dbg !214
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double 0x3FA1D66AAA49A788), !dbg !211
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result37, double %handler_result41), !dbg !209
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !189, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !194, metadata !DIExpression()), !dbg !208
  %50 = fmul double %24, %handler_result39, !dbg !209
  %handler_result43 = call double @fSubHandlerDouble(double %50, double %handler_result34), !dbg !212
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0x3FDA120105D88A96), !dbg !210
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !189, metadata !DIExpression()), !dbg !200
  %51 = tail call double @llvm.fabs.f64(double %50), !dbg !210
  %52 = tail call double @llvm.fabs.f64(double %handler_result34), !dbg !213
  %handler_result45 = call double @fAddHandlerDouble(double %51, double %52), !dbg !214
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 0x3FDA120105D88A96), !dbg !211
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result42, double %handler_result46), !dbg !215
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !193, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !190, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i64 0, metadata !188, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !198, metadata !DIExpression()), !dbg !216
  %53 = fmul double %23, %handler_result44, !dbg !215
  %handler_result48 = call double @fSubHandlerDouble(double %53, double %handler_result39), !dbg !217
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double 0xBF5026FB7F270595), !dbg !218
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !189, metadata !DIExpression()), !dbg !200
  %54 = tail call double @llvm.fabs.f64(double %53), !dbg !218
  %55 = tail call double @llvm.fabs.f64(double %handler_result39), !dbg !219
  %handler_result50 = call double @fAddHandlerDouble(double %55, double %54), !dbg !220
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double 0x3F5026FB7F270595), !dbg !221
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result47, double %handler_result51), !dbg !222
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !193, metadata !DIExpression()), !dbg !200
  tail call void @llvm.dbg.value(metadata double %handler_result49, metadata !132, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !176
  %56 = fmul double %handler_result52, 0x3CB0000000000000, !dbg !222
  %handler_result53 = call double @fAddHandlerDouble(double %56, double 2.400000e-17), !dbg !223
  tail call void @llvm.dbg.value(metadata double %handler_result53, metadata !132, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !176
  %57 = fmul double %19, %0, !dbg !223
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result49, double 8.750000e-01), !dbg !224
  %58 = fmul double %57, %handler_result54, !dbg !224
  store double %58, ptr %1, align 8, !dbg !225, !tbaa !156
  %59 = fmul double %19, %handler_result53, !dbg !226
  %60 = fmul double %3, 0x3CB0000000000000, !dbg !227
  %61 = tail call double @llvm.fabs.f64(double %58), !dbg !228
  %62 = fmul double %60, %61, !dbg !229
  %handler_result55 = call double @fAddHandlerDouble(double %62, double %59), !dbg !230
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !230
  %64 = fmul double %61, 0x3CC0000000000000, !dbg !231
  %handler_result56 = call double @fAddHandlerDouble(double %64, double %handler_result55), !dbg !232
  store double %handler_result56, ptr %63, align 8, !dbg !232, !tbaa !161
  br label %131

65:                                               ; preds = %15
  %66 = fcmp ugt double %3, 8.000000e+00, !dbg !233
  %67 = tail call double @llvm.sqrt.f64(double %3), !dbg !234
  br i1 %66, label %100, label %68, !dbg !235

68:                                               ; preds = %65
  tail call void @llvm.dbg.value(metadata double %67, metadata !133, metadata !DIExpression()), !dbg !236
  %69 = fdiv double 4.800000e+01, %3, !dbg !237
  %handler_result57 = call double @fAddHandlerDouble(double %69, double -1.100000e+01), !dbg !238
  %70 = fdiv double %handler_result57, 5.000000e+00, !dbg !238
  call void @llvm.dbg.value(metadata !177, metadata !178, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata double %70, metadata !186, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr undef, metadata !187, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !239
  %71 = fmul double %70, 2.000000e+00, !dbg !241
  %handler_result58 = call double @fAddHandlerDouble(double %71, double 1.000000e+00), !dbg !242
  %handler_result59 = call double @fAddHandlerDouble(double %handler_result58, double -1.000000e+00), !dbg !243
  %72 = fmul double %handler_result59, 5.000000e-01, !dbg !243
  call void @llvm.dbg.value(metadata double %72, metadata !191, metadata !DIExpression()), !dbg !239
  %73 = fmul double %72, 2.000000e+00, !dbg !244
  call void @llvm.dbg.value(metadata double %73, metadata !192, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 20, metadata !188, metadata !DIExpression()), !dbg !239
  br label %74, !dbg !245

74:                                               ; preds = %74, %68
  %75 = phi i64 [ 20, %68 ], [ %85, %74 ]
  %76 = phi double [ 0.000000e+00, %68 ], [ %handler_result61, %74 ]
  %77 = phi double [ 0.000000e+00, %68 ], [ %handler_result64, %74 ]
  %78 = phi double [ 0.000000e+00, %68 ], [ %76, %74 ]
  call void @llvm.dbg.value(metadata i64 %75, metadata !188, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata double %76, metadata !189, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata double %77, metadata !193, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata double %78, metadata !190, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata double %76, metadata !194, metadata !DIExpression()), !dbg !246
  %79 = fmul double %73, %76, !dbg !247
  %handler_result60 = call double @fSubHandlerDouble(double %79, double %78), !dbg !248
  %80 = getelementptr inbounds double, ptr @ai1_data, i64 %75, !dbg !248
  %81 = load double, ptr %80, align 8, !dbg !248, !tbaa !249
  %handler_result61 = call double @fAddHandlerDouble(double %handler_result60, double %81), !dbg !250
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !189, metadata !DIExpression()), !dbg !239
  %82 = tail call double @llvm.fabs.f64(double %79), !dbg !250
  %83 = tail call double @llvm.fabs.f64(double %78), !dbg !251
  %handler_result62 = call double @fAddHandlerDouble(double %82, double %83), !dbg !252
  %84 = tail call double @llvm.fabs.f64(double %81), !dbg !252
  %handler_result63 = call double @fAddHandlerDouble(double %handler_result62, double %84), !dbg !253
  %handler_result64 = call double @fAddHandlerDouble(double %77, double %handler_result63), !dbg !254
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !193, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata double %76, metadata !190, metadata !DIExpression()), !dbg !239
  %85 = add nsw i64 %75, -1, !dbg !254
  call void @llvm.dbg.value(metadata i64 %85, metadata !188, metadata !DIExpression()), !dbg !239
  %86 = icmp ugt i64 %75, 1, !dbg !255
  br i1 %86, label %74, label %87, !dbg !245, !llvm.loop !256

87:                                               ; preds = %74
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !198, metadata !DIExpression()), !dbg !259
  %88 = fmul double %72, %handler_result61, !dbg !260
  %handler_result65 = call double @fSubHandlerDouble(double %88, double %76), !dbg !261
  %handler_result66 = call double @fAddHandlerDouble(double %handler_result65, double 0xBF8D2691AE734B64), !dbg !262
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !189, metadata !DIExpression()), !dbg !239
  %89 = tail call double @llvm.fabs.f64(double %88), !dbg !262
  %90 = tail call double @llvm.fabs.f64(double %76), !dbg !263
  %handler_result67 = call double @fAddHandlerDouble(double %90, double %89), !dbg !264
  %handler_result68 = call double @fAddHandlerDouble(double %handler_result67, double 0x3F8D2691AE734B64), !dbg !265
  %handler_result69 = call double @fAddHandlerDouble(double %handler_result64, double %handler_result68), !dbg !266
  call void @llvm.dbg.value(metadata double %handler_result69, metadata !193, metadata !DIExpression()), !dbg !239
  tail call void @llvm.dbg.value(metadata double %handler_result66, metadata !136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !236
  %91 = fmul double %handler_result69, 0x3CB0000000000000, !dbg !266
  %handler_result70 = call double @fAddHandlerDouble(double %91, double 6.000000e-17), !dbg !267
  tail call void @llvm.dbg.value(metadata double %handler_result70, metadata !136, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !236
  %handler_result71 = call double @fAddHandlerDouble(double %handler_result66, double 3.750000e-01), !dbg !268
  %92 = fdiv double %handler_result71, %67, !dbg !268
  tail call void @llvm.dbg.value(metadata double %92, metadata !137, metadata !DIExpression()), !dbg !236
  %93 = fcmp ogt double %0, 0.000000e+00, !dbg !269
  tail call void @llvm.dbg.value(metadata double poison, metadata !138, metadata !DIExpression()), !dbg !236
  %94 = fneg double %92, !dbg !270
  %95 = select i1 %93, double %92, double %94, !dbg !270
  store double %95, ptr %1, align 8, !dbg !271, !tbaa !156
  %96 = fdiv double %handler_result70, %67, !dbg !272
  %97 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !273
  %98 = tail call double @llvm.fabs.f64(double %92), !dbg !274
  %99 = fmul double %98, 0x3CC0000000000000, !dbg !275
  %handler_result72 = call double @fAddHandlerDouble(double %99, double %96), !dbg !276
  store double %handler_result72, ptr %97, align 8, !dbg !276, !tbaa !161
  br label %131

100:                                              ; preds = %65
  tail call void @llvm.dbg.value(metadata double %67, metadata !139, metadata !DIExpression()), !dbg !277
  %101 = fdiv double 1.600000e+01, %3, !dbg !278
  %handler_result73 = call double @fAddHandlerDouble(double %101, double -1.000000e+00), !dbg !279
  call void @llvm.dbg.value(metadata !177, metadata !178, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !186, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata ptr undef, metadata !187, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !281
  %102 = fmul double %handler_result73, 2.000000e+00, !dbg !279
  %handler_result74 = call double @fAddHandlerDouble(double %102, double 1.000000e+00), !dbg !282
  %handler_result75 = call double @fAddHandlerDouble(double %handler_result74, double -1.000000e+00), !dbg !283
  %103 = fmul double %handler_result75, 5.000000e-01, !dbg !283
  call void @llvm.dbg.value(metadata double %103, metadata !191, metadata !DIExpression()), !dbg !281
  %104 = fmul double %103, 2.000000e+00, !dbg !284
  call void @llvm.dbg.value(metadata double %104, metadata !192, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 21, metadata !188, metadata !DIExpression()), !dbg !281
  br label %105, !dbg !285

105:                                              ; preds = %105, %100
  %106 = phi i64 [ 21, %100 ], [ %116, %105 ]
  %107 = phi double [ 0.000000e+00, %100 ], [ %handler_result77, %105 ]
  %108 = phi double [ 0.000000e+00, %100 ], [ %handler_result80, %105 ]
  %109 = phi double [ 0.000000e+00, %100 ], [ %107, %105 ]
  call void @llvm.dbg.value(metadata i64 %106, metadata !188, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %107, metadata !189, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %108, metadata !193, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %109, metadata !190, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %107, metadata !194, metadata !DIExpression()), !dbg !286
  %110 = fmul double %104, %107, !dbg !287
  %handler_result76 = call double @fSubHandlerDouble(double %110, double %109), !dbg !288
  %111 = getelementptr inbounds double, ptr @ai12_data, i64 %106, !dbg !288
  %112 = load double, ptr %111, align 8, !dbg !288, !tbaa !249
  %handler_result77 = call double @fAddHandlerDouble(double %handler_result76, double %112), !dbg !289
  call void @llvm.dbg.value(metadata double %handler_result77, metadata !189, metadata !DIExpression()), !dbg !281
  %113 = tail call double @llvm.fabs.f64(double %110), !dbg !289
  %114 = tail call double @llvm.fabs.f64(double %109), !dbg !290
  %handler_result78 = call double @fAddHandlerDouble(double %113, double %114), !dbg !291
  %115 = tail call double @llvm.fabs.f64(double %112), !dbg !291
  %handler_result79 = call double @fAddHandlerDouble(double %handler_result78, double %115), !dbg !292
  %handler_result80 = call double @fAddHandlerDouble(double %108, double %handler_result79), !dbg !293
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !193, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata double %107, metadata !190, metadata !DIExpression()), !dbg !281
  %116 = add nsw i64 %106, -1, !dbg !293
  call void @llvm.dbg.value(metadata i64 %116, metadata !188, metadata !DIExpression()), !dbg !281
  %117 = icmp ugt i64 %106, 1, !dbg !294
  br i1 %117, label %105, label %118, !dbg !285, !llvm.loop !295

118:                                              ; preds = %105
  call void @llvm.dbg.value(metadata double %handler_result77, metadata !198, metadata !DIExpression()), !dbg !297
  %119 = fmul double %103, %handler_result77, !dbg !298
  %handler_result81 = call double @fSubHandlerDouble(double %119, double %107), !dbg !299
  %handler_result82 = call double @fAddHandlerDouble(double %handler_result81, double 0x3F8D4316AB62A28A), !dbg !300
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !189, metadata !DIExpression()), !dbg !281
  %120 = tail call double @llvm.fabs.f64(double %119), !dbg !300
  %121 = tail call double @llvm.fabs.f64(double %107), !dbg !301
  %handler_result83 = call double @fAddHandlerDouble(double %121, double %120), !dbg !302
  %handler_result84 = call double @fAddHandlerDouble(double %handler_result83, double 0x3F8D4316AB62A28A), !dbg !303
  %handler_result85 = call double @fAddHandlerDouble(double %handler_result80, double %handler_result84), !dbg !304
  call void @llvm.dbg.value(metadata double %handler_result85, metadata !193, metadata !DIExpression()), !dbg !281
  tail call void @llvm.dbg.value(metadata double %handler_result82, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !277
  %122 = fmul double %handler_result85, 0x3CB0000000000000, !dbg !304
  %handler_result86 = call double @fAddHandlerDouble(double %122, double 3.000000e-17), !dbg !305
  tail call void @llvm.dbg.value(metadata double %handler_result86, metadata !141, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !277
  %handler_result87 = call double @fAddHandlerDouble(double %handler_result82, double 3.750000e-01), !dbg !306
  %123 = fdiv double %handler_result87, %67, !dbg !306
  tail call void @llvm.dbg.value(metadata double %123, metadata !142, metadata !DIExpression()), !dbg !277
  %124 = fcmp ogt double %0, 0.000000e+00, !dbg !307
  tail call void @llvm.dbg.value(metadata double poison, metadata !143, metadata !DIExpression()), !dbg !277
  %125 = fneg double %123, !dbg !308
  %126 = select i1 %124, double %123, double %125, !dbg !308
  store double %126, ptr %1, align 8, !dbg !309, !tbaa !156
  %127 = fdiv double %handler_result86, %67, !dbg !310
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !311
  %129 = tail call double @llvm.fabs.f64(double %123), !dbg !312
  %130 = fmul double %129, 0x3CC0000000000000, !dbg !313
  %handler_result88 = call double @fAddHandlerDouble(double %130, double %127), !dbg !314
  store double %handler_result88, ptr %128, align 8, !dbg !314, !tbaa !161
  br label %131

131:                                              ; preds = %118, %87, %17, %12, %8, %5
  %132 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %17 ], [ 0, %87 ], [ 0, %118 ], !dbg !315
  ret i32 %132, !dbg !316
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !317 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !322 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_I1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !326 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !343
  call void @llvm.dbg.assign(metadata i1 undef, metadata !342, metadata !DIExpression(), metadata !343, metadata ptr %3, metadata !DIExpression()), !dbg !344
  tail call void @llvm.dbg.value(metadata double %0, metadata !328, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !329, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata double 0x20000000000000, metadata !330, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata double 0x3E66A09E667F3BCD, metadata !331, metadata !DIExpression()), !dbg !345
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !346
  tail call void @llvm.dbg.value(metadata double %4, metadata !332, metadata !DIExpression()), !dbg !345
  %5 = fcmp oeq double %0, 0.000000e+00, !dbg !347
  br i1 %5, label %6, label %7, !dbg !348

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !349
  br label %78, !dbg !351

7:                                                ; preds = %2
  %8 = fcmp olt double %4, 0x20000000000000, !dbg !352
  br i1 %8, label %9, label %11, !dbg !353

9:                                                ; preds = %7
  store double 0.000000e+00, ptr %1, align 8, !dbg !354, !tbaa !156
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !354
  store double 0x10000000000000, ptr %10, align 8, !dbg !354, !tbaa !161
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 217, i32 noundef 15) #6, !dbg !357
  br label %78, !dbg !357

11:                                               ; preds = %7
  %12 = fcmp olt double %4, 0x3E66A09E667F3BCD, !dbg !359
  br i1 %12, label %13, label %16, !dbg !360

13:                                               ; preds = %11
  %14 = fmul double %0, 5.000000e-01, !dbg !361
  store double %14, ptr %1, align 8, !dbg !363, !tbaa !156
  %15 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !364
  store double 0.000000e+00, ptr %15, align 8, !dbg !365, !tbaa !161
  br label %78, !dbg !366

16:                                               ; preds = %11
  %17 = fcmp ugt double %4, 3.000000e+00, !dbg !367
  br i1 %17, label %61, label %18, !dbg !368

18:                                               ; preds = %16
  call void @llvm.dbg.value(metadata !177, metadata !178, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double poison, metadata !186, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata ptr undef, metadata !187, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double poison, metadata !191, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double poison, metadata !192, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i32 10, metadata !188, metadata !DIExpression()), !dbg !369
  %19 = fmul double %0, %0, !dbg !371
  %20 = fdiv double %19, 4.500000e+00, !dbg !372
  %handler_result = call double @fAddHandlerDouble(double %20, double -1.000000e+00), !dbg !373
  call void @llvm.dbg.value(metadata double %handler_result, metadata !186, metadata !DIExpression()), !dbg !369
  %21 = fmul double %handler_result, 2.000000e+00, !dbg !373
  %handler_result1 = call double @fAddHandlerDouble(double %21, double 1.000000e+00), !dbg !374
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !375
  %22 = fmul double %handler_result2, 5.000000e-01, !dbg !375
  call void @llvm.dbg.value(metadata double %22, metadata !191, metadata !DIExpression()), !dbg !369
  %23 = fmul double %22, 2.000000e+00, !dbg !376
  call void @llvm.dbg.value(metadata double %23, metadata !192, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 10, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !194, metadata !DIExpression()), !dbg !377
  %24 = fmul double %23, 0.000000e+00, !dbg !378
  %handler_result3 = call double @fAddHandlerDouble(double %24, double 2.400000e-17), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !189, metadata !DIExpression()), !dbg !369
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !379
  %handler_result4 = call double @fAddHandlerDouble(double %25, double 2.400000e-17), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 9, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 9, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !194, metadata !DIExpression()), !dbg !377
  %26 = fmul double %23, %handler_result3, !dbg !378
  %handler_result5 = call double @fAddHandlerDouble(double %26, double 4.741000e-15), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !189, metadata !DIExpression()), !dbg !369
  %27 = tail call double @llvm.fabs.f64(double %26), !dbg !379
  %handler_result6 = call double @fAddHandlerDouble(double %27, double 4.741000e-15), !dbg !380
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result4, double %handler_result6), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 8, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 8, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !194, metadata !DIExpression()), !dbg !377
  %28 = fmul double %23, %handler_result5, !dbg !378
  %handler_result8 = call double @fSubHandlerDouble(double %28, double %handler_result3), !dbg !381
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 7.663800e-13), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !189, metadata !DIExpression()), !dbg !369
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !379
  %30 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !382
  %handler_result10 = call double @fAddHandlerDouble(double %29, double %30), !dbg !383
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 7.663800e-13), !dbg !380
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 7, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 7, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !194, metadata !DIExpression()), !dbg !377
  %31 = fmul double %23, %handler_result9, !dbg !378
  %handler_result13 = call double @fSubHandlerDouble(double %31, double %handler_result5), !dbg !381
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 0x3DDB4D2B79D27314), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !189, metadata !DIExpression()), !dbg !369
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !379
  %33 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !382
  %handler_result15 = call double @fAddHandlerDouble(double %32, double %33), !dbg !383
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double 0x3DDB4D2B79D27314), !dbg !380
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result12, double %handler_result16), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 6, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 6, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !194, metadata !DIExpression()), !dbg !377
  %34 = fmul double %23, %handler_result14, !dbg !378
  %handler_result18 = call double @fSubHandlerDouble(double %34, double %handler_result9), !dbg !381
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double 0x3E4590EB5F26E7D5), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !189, metadata !DIExpression()), !dbg !369
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !379
  %36 = tail call double @llvm.fabs.f64(double %handler_result9), !dbg !382
  %handler_result20 = call double @fAddHandlerDouble(double %35, double %36), !dbg !383
  %handler_result21 = call double @fAddHandlerDouble(double %handler_result20, double 0x3E4590EB5F26E7D5), !dbg !380
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result17, double %handler_result21), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 5, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 5, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !194, metadata !DIExpression()), !dbg !377
  %37 = fmul double %23, %handler_result19, !dbg !378
  %handler_result23 = call double @fSubHandlerDouble(double %37, double %handler_result14), !dbg !381
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 0x3EA9AA76C61912B6), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !189, metadata !DIExpression()), !dbg !369
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !379
  %39 = tail call double @llvm.fabs.f64(double %handler_result14), !dbg !382
  %handler_result25 = call double @fAddHandlerDouble(double %38, double %39), !dbg !383
  %handler_result26 = call double @fAddHandlerDouble(double %handler_result25, double 0x3EA9AA76C61912B6), !dbg !380
  %handler_result27 = call double @fAddHandlerDouble(double %handler_result22, double %handler_result26), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 4, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 4, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !194, metadata !DIExpression()), !dbg !377
  %40 = fmul double %23, %handler_result24, !dbg !378
  %handler_result28 = call double @fSubHandlerDouble(double %40, double %handler_result19), !dbg !381
  %handler_result29 = call double @fAddHandlerDouble(double %handler_result28, double 0x3F05F62EA024E03C), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !189, metadata !DIExpression()), !dbg !369
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !379
  %42 = tail call double @llvm.fabs.f64(double %handler_result19), !dbg !382
  %handler_result30 = call double @fAddHandlerDouble(double %41, double %42), !dbg !383
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result30, double 0x3F05F62EA024E03C), !dbg !380
  %handler_result32 = call double @fAddHandlerDouble(double %handler_result27, double %handler_result31), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 3, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 3, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !194, metadata !DIExpression()), !dbg !377
  %43 = fmul double %23, %handler_result29, !dbg !378
  %handler_result33 = call double @fSubHandlerDouble(double %43, double %handler_result24), !dbg !381
  %handler_result34 = call double @fAddHandlerDouble(double %handler_result33, double 0x3F5951DAC509D682), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !189, metadata !DIExpression()), !dbg !369
  %44 = tail call double @llvm.fabs.f64(double %43), !dbg !379
  %45 = tail call double @llvm.fabs.f64(double %handler_result24), !dbg !382
  %handler_result35 = call double @fAddHandlerDouble(double %44, double %45), !dbg !383
  %handler_result36 = call double @fAddHandlerDouble(double %handler_result35, double 0x3F5951DAC509D682), !dbg !380
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result32, double %handler_result36), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 2, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 2, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result29, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !194, metadata !DIExpression()), !dbg !377
  %46 = fmul double %23, %handler_result34, !dbg !378
  %handler_result38 = call double @fSubHandlerDouble(double %46, double %handler_result29), !dbg !381
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double 0x3FA1D66AAA49A788), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !189, metadata !DIExpression()), !dbg !369
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !379
  %48 = tail call double @llvm.fabs.f64(double %handler_result29), !dbg !382
  %handler_result40 = call double @fAddHandlerDouble(double %47, double %48), !dbg !383
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double 0x3FA1D66AAA49A788), !dbg !380
  %handler_result42 = call double @fAddHandlerDouble(double %handler_result37, double %handler_result41), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !189, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !194, metadata !DIExpression()), !dbg !377
  %49 = fmul double %23, %handler_result39, !dbg !378
  %handler_result43 = call double @fSubHandlerDouble(double %49, double %handler_result34), !dbg !381
  %handler_result44 = call double @fAddHandlerDouble(double %handler_result43, double 0x3FDA120105D88A96), !dbg !379
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !189, metadata !DIExpression()), !dbg !369
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !379
  %51 = tail call double @llvm.fabs.f64(double %handler_result34), !dbg !382
  %handler_result45 = call double @fAddHandlerDouble(double %50, double %51), !dbg !383
  %handler_result46 = call double @fAddHandlerDouble(double %handler_result45, double 0x3FDA120105D88A96), !dbg !380
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result42, double %handler_result46), !dbg !384
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !193, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !190, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata i64 0, metadata !188, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !198, metadata !DIExpression()), !dbg !385
  %52 = fmul double %22, %handler_result44, !dbg !384
  %handler_result48 = call double @fSubHandlerDouble(double %52, double %handler_result39), !dbg !386
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double 0xBF5026FB7F270595), !dbg !387
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !189, metadata !DIExpression()), !dbg !369
  %53 = tail call double @llvm.fabs.f64(double %52), !dbg !387
  %54 = tail call double @llvm.fabs.f64(double %handler_result39), !dbg !388
  %handler_result50 = call double @fAddHandlerDouble(double %54, double %53), !dbg !389
  %handler_result51 = call double @fAddHandlerDouble(double %handler_result50, double 0x3F5026FB7F270595), !dbg !390
  %handler_result52 = call double @fAddHandlerDouble(double %handler_result47, double %handler_result51), !dbg !391
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !193, metadata !DIExpression()), !dbg !369
  tail call void @llvm.dbg.value(metadata double %handler_result49, metadata !333, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !392
  %55 = fmul double %handler_result52, 0x3CB0000000000000, !dbg !391
  %handler_result53 = call double @fAddHandlerDouble(double %55, double 2.400000e-17), !dbg !393
  tail call void @llvm.dbg.value(metadata double %handler_result53, metadata !333, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !392
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result49, double 8.750000e-01), !dbg !394
  %56 = fmul double %handler_result54, %0, !dbg !394
  store double %56, ptr %1, align 8, !dbg !395, !tbaa !156
  %57 = fmul double %4, %handler_result53, !dbg !396
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !397
  %59 = tail call double @llvm.fabs.f64(double %56), !dbg !398
  %60 = fmul double %59, 0x3CC0000000000000, !dbg !399
  %handler_result55 = call double @fAddHandlerDouble(double %60, double %57), !dbg !400
  store double %handler_result55, ptr %58, align 8, !dbg !400, !tbaa !161
  br label %78

61:                                               ; preds = %16
  %62 = fcmp olt double %4, 0x40862E42FEFA39EF, !dbg !401
  br i1 %62, label %63, label %76, !dbg !402

63:                                               ; preds = %61
  %64 = tail call double @exp(double noundef %4) #6, !dbg !403
  tail call void @llvm.dbg.value(metadata double %64, metadata !339, metadata !DIExpression()), !dbg !344
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !404
  %65 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %0, ptr noundef nonnull %3), !dbg !405, !range !406
  %66 = load double, ptr %3, align 8, !dbg !407, !tbaa !156
  %67 = fmul double %64, %66, !dbg !408
  store double %67, ptr %1, align 8, !dbg !409, !tbaa !156
  %68 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !410
  %69 = load double, ptr %68, align 8, !dbg !410, !tbaa !161
  %70 = fmul double %64, %69, !dbg !411
  %71 = fmul double %4, 0x3CB0000000000000, !dbg !412
  %72 = tail call double @llvm.fabs.f64(double %67), !dbg !413
  %73 = fmul double %71, %72, !dbg !414
  %handler_result56 = call double @fAddHandlerDouble(double %70, double %73), !dbg !415
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !415
  %75 = fmul double %72, 0x3CC0000000000000, !dbg !416
  %handler_result57 = call double @fAddHandlerDouble(double %75, double %handler_result56), !dbg !417
  store double %handler_result57, ptr %74, align 8, !dbg !417, !tbaa !161
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !418
  br label %78

76:                                               ; preds = %61
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !419, !tbaa !156
  %77 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !419
  store double 0x7FF0000000000000, ptr %77, align 8, !dbg !419, !tbaa !161
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 242, i32 noundef 16) #6, !dbg !422
  br label %78, !dbg !422

78:                                               ; preds = %76, %63, %18, %13, %9, %6
  %79 = phi i32 [ 0, %6 ], [ 15, %9 ], [ 0, %13 ], [ 0, %18 ], [ 0, %63 ], [ 16, %76 ], !dbg !424
  ret i32 %79, !dbg !425
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_I1_scaled(double noundef %0) local_unnamed_addr #0 !dbg !426 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !433
  call void @llvm.dbg.assign(metadata i1 undef, metadata !431, metadata !DIExpression(), metadata !433, metadata ptr %2, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata double %0, metadata !430, metadata !DIExpression()), !dbg !434
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !435
  %3 = call i32 @gsl_sf_bessel_I1_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !435, !range !406
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !432, metadata !DIExpression()), !dbg !434
  %4 = icmp eq i32 %3, 0, !dbg !436
  br i1 %4, label %6, label %5, !dbg !435

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 252, i32 noundef %3) #6, !dbg !438
  br label %6, !dbg !438

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !435, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !441
  ret double %7, !dbg !441
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_I1(double noundef %0) local_unnamed_addr #0 !dbg !442 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !447
  call void @llvm.dbg.assign(metadata i1 undef, metadata !445, metadata !DIExpression(), metadata !447, metadata ptr %2, metadata !DIExpression()), !dbg !448
  tail call void @llvm.dbg.value(metadata double %0, metadata !444, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !449
  %3 = call i32 @gsl_sf_bessel_I1_e(double noundef %0, ptr noundef nonnull %2), !dbg !449, !range !450
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !446, metadata !DIExpression()), !dbg !448
  %4 = icmp eq i32 %3, 0, !dbg !451
  br i1 %4, label %6, label %5, !dbg !449

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef %3) #6, !dbg !453
  br label %6, !dbg !453

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !449, !tbaa !156
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !456
  ret double %7, !dbg !456
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

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
!204 = !DILocation(line: 11, column: 19, scope: !179, inlinedAt: !201)
!205 = !DILocation(line: 11, column: 30, scope: !179, inlinedAt: !201)
!206 = !DILocation(line: 11, column: 39, scope: !179, inlinedAt: !201)
!207 = !DILocation(line: 12, column: 19, scope: !179, inlinedAt: !201)
!208 = !DILocation(line: 0, scope: !195, inlinedAt: !201)
!209 = !DILocation(line: 18, column: 11, scope: !195, inlinedAt: !201)
!210 = !DILocation(line: 19, column: 10, scope: !195, inlinedAt: !201)
!211 = !DILocation(line: 19, column: 7, scope: !195, inlinedAt: !201)
!212 = !DILocation(line: 18, column: 19, scope: !195, inlinedAt: !201)
!213 = !DILocation(line: 19, column: 26, scope: !195, inlinedAt: !201)
!214 = !DILocation(line: 19, column: 35, scope: !195, inlinedAt: !201)
!215 = !DILocation(line: 25, column: 10, scope: !199, inlinedAt: !201)
!216 = !DILocation(line: 0, scope: !199, inlinedAt: !201)
!217 = !DILocation(line: 25, column: 18, scope: !199, inlinedAt: !201)
!218 = !DILocation(line: 26, column: 10, scope: !199, inlinedAt: !201)
!219 = !DILocation(line: 26, column: 25, scope: !199, inlinedAt: !201)
!220 = !DILocation(line: 26, column: 34, scope: !199, inlinedAt: !201)
!221 = !DILocation(line: 26, column: 7, scope: !199, inlinedAt: !201)
!222 = !DILocation(line: 30, column: 33, scope: !179, inlinedAt: !201)
!223 = !DILocation(line: 169, column: 22, scope: !127)
!224 = !DILocation(line: 169, column: 27, scope: !127)
!225 = !DILocation(line: 169, column: 18, scope: !127)
!226 = !DILocation(line: 170, column: 23, scope: !127)
!227 = !DILocation(line: 170, column: 35, scope: !127)
!228 = !DILocation(line: 170, column: 55, scope: !127)
!229 = !DILocation(line: 170, column: 53, scope: !127)
!230 = !DILocation(line: 170, column: 13, scope: !127)
!231 = !DILocation(line: 171, column: 42, scope: !127)
!232 = !DILocation(line: 171, column: 17, scope: !127)
!233 = !DILocation(line: 174, column: 13, scope: !135)
!234 = !DILocation(line: 0, scope: !135)
!235 = !DILocation(line: 174, column: 11, scope: !128)
!236 = !DILocation(line: 0, scope: !134)
!237 = !DILocation(line: 179, column: 31, scope: !134)
!238 = !DILocation(line: 179, column: 39, scope: !134)
!239 = !DILocation(line: 0, scope: !179, inlinedAt: !240)
!240 = distinct !DILocation(line: 179, column: 5, scope: !134)
!241 = !DILocation(line: 11, column: 19, scope: !179, inlinedAt: !240)
!242 = !DILocation(line: 11, column: 30, scope: !179, inlinedAt: !240)
!243 = !DILocation(line: 11, column: 39, scope: !179, inlinedAt: !240)
!244 = !DILocation(line: 12, column: 19, scope: !179, inlinedAt: !240)
!245 = !DILocation(line: 16, column: 3, scope: !197, inlinedAt: !240)
!246 = !DILocation(line: 0, scope: !195, inlinedAt: !240)
!247 = !DILocation(line: 18, column: 11, scope: !195, inlinedAt: !240)
!248 = !DILocation(line: 18, column: 21, scope: !195, inlinedAt: !240)
!249 = !{!158, !158, i64 0}
!250 = !DILocation(line: 19, column: 10, scope: !195, inlinedAt: !240)
!251 = !DILocation(line: 19, column: 26, scope: !195, inlinedAt: !240)
!252 = !DILocation(line: 19, column: 37, scope: !195, inlinedAt: !240)
!253 = !DILocation(line: 19, column: 7, scope: !195, inlinedAt: !240)
!254 = !DILocation(line: 16, column: 29, scope: !196, inlinedAt: !240)
!255 = !DILocation(line: 16, column: 23, scope: !196, inlinedAt: !240)
!256 = distinct !{!256, !245, !257, !258}
!257 = !DILocation(line: 21, column: 3, scope: !197, inlinedAt: !240)
!258 = !{!"llvm.loop.mustprogress"}
!259 = !DILocation(line: 0, scope: !199, inlinedAt: !240)
!260 = !DILocation(line: 25, column: 10, scope: !199, inlinedAt: !240)
!261 = !DILocation(line: 25, column: 18, scope: !199, inlinedAt: !240)
!262 = !DILocation(line: 26, column: 10, scope: !199, inlinedAt: !240)
!263 = !DILocation(line: 26, column: 25, scope: !199, inlinedAt: !240)
!264 = !DILocation(line: 26, column: 34, scope: !199, inlinedAt: !240)
!265 = !DILocation(line: 26, column: 7, scope: !199, inlinedAt: !240)
!266 = !DILocation(line: 30, column: 33, scope: !179, inlinedAt: !240)
!267 = !DILocation(line: 180, column: 16, scope: !134)
!268 = !DILocation(line: 180, column: 25, scope: !134)
!269 = !DILocation(line: 181, column: 12, scope: !134)
!270 = !DILocation(line: 182, column: 22, scope: !134)
!271 = !DILocation(line: 182, column: 18, scope: !134)
!272 = !DILocation(line: 183, column: 26, scope: !134)
!273 = !DILocation(line: 183, column: 13, scope: !134)
!274 = !DILocation(line: 184, column: 44, scope: !134)
!275 = !DILocation(line: 184, column: 42, scope: !134)
!276 = !DILocation(line: 184, column: 17, scope: !134)
!277 = !DILocation(line: 0, scope: !140)
!278 = !DILocation(line: 192, column: 31, scope: !140)
!279 = !DILocation(line: 11, column: 19, scope: !179, inlinedAt: !280)
!280 = distinct !DILocation(line: 192, column: 5, scope: !140)
!281 = !DILocation(line: 0, scope: !179, inlinedAt: !280)
!282 = !DILocation(line: 11, column: 30, scope: !179, inlinedAt: !280)
!283 = !DILocation(line: 11, column: 39, scope: !179, inlinedAt: !280)
!284 = !DILocation(line: 12, column: 19, scope: !179, inlinedAt: !280)
!285 = !DILocation(line: 16, column: 3, scope: !197, inlinedAt: !280)
!286 = !DILocation(line: 0, scope: !195, inlinedAt: !280)
!287 = !DILocation(line: 18, column: 11, scope: !195, inlinedAt: !280)
!288 = !DILocation(line: 18, column: 21, scope: !195, inlinedAt: !280)
!289 = !DILocation(line: 19, column: 10, scope: !195, inlinedAt: !280)
!290 = !DILocation(line: 19, column: 26, scope: !195, inlinedAt: !280)
!291 = !DILocation(line: 19, column: 37, scope: !195, inlinedAt: !280)
!292 = !DILocation(line: 19, column: 7, scope: !195, inlinedAt: !280)
!293 = !DILocation(line: 16, column: 29, scope: !196, inlinedAt: !280)
!294 = !DILocation(line: 16, column: 23, scope: !196, inlinedAt: !280)
!295 = distinct !{!295, !285, !296, !258}
!296 = !DILocation(line: 21, column: 3, scope: !197, inlinedAt: !280)
!297 = !DILocation(line: 0, scope: !199, inlinedAt: !280)
!298 = !DILocation(line: 25, column: 10, scope: !199, inlinedAt: !280)
!299 = !DILocation(line: 25, column: 18, scope: !199, inlinedAt: !280)
!300 = !DILocation(line: 26, column: 10, scope: !199, inlinedAt: !280)
!301 = !DILocation(line: 26, column: 25, scope: !199, inlinedAt: !280)
!302 = !DILocation(line: 26, column: 34, scope: !199, inlinedAt: !280)
!303 = !DILocation(line: 26, column: 7, scope: !199, inlinedAt: !280)
!304 = !DILocation(line: 30, column: 33, scope: !179, inlinedAt: !280)
!305 = !DILocation(line: 193, column: 16, scope: !140)
!306 = !DILocation(line: 193, column: 25, scope: !140)
!307 = !DILocation(line: 194, column: 12, scope: !140)
!308 = !DILocation(line: 195, column: 22, scope: !140)
!309 = !DILocation(line: 195, column: 18, scope: !140)
!310 = !DILocation(line: 196, column: 26, scope: !140)
!311 = !DILocation(line: 196, column: 13, scope: !140)
!312 = !DILocation(line: 197, column: 44, scope: !140)
!313 = !DILocation(line: 197, column: 42, scope: !140)
!314 = !DILocation(line: 197, column: 17, scope: !140)
!315 = !DILocation(line: 0, scope: !131)
!316 = !DILocation(line: 200, column: 1, scope: !109)
!317 = !DISubprogram(name: "gsl_error", scope: !32, file: !32, line: 77, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320, !320, !33, !33}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!322 = !DISubprogram(name: "exp", scope: !323, file: !323, line: 95, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!324 = !DISubroutineType(types: !325)
!325 = !{!79, !79}
!326 = distinct !DISubprogram(name: "gsl_sf_bessel_I1_e", scope: !2, file: !2, line: 203, type: !110, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !327)
!327 = !{!328, !329, !330, !331, !332, !333, !339, !342}
!328 = !DILocalVariable(name: "x", arg: 1, scope: !326, file: !2, line: 203, type: !112)
!329 = !DILocalVariable(name: "result", arg: 2, scope: !326, file: !2, line: 203, type: !113)
!330 = !DILocalVariable(name: "xmin", scope: !326, file: !2, line: 205, type: !112)
!331 = !DILocalVariable(name: "x_small", scope: !326, file: !2, line: 206, type: !112)
!332 = !DILocalVariable(name: "y", scope: !326, file: !2, line: 207, type: !112)
!333 = !DILocalVariable(name: "c", scope: !334, file: !2, line: 225, type: !114)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 224, column: 21)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 224, column: 11)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 219, column: 11)
!337 = distinct !DILexicalBlock(scope: !338, file: !2, line: 216, column: 11)
!338 = distinct !DILexicalBlock(scope: !326, file: !2, line: 211, column: 6)
!339 = !DILocalVariable(name: "ey", scope: !340, file: !2, line: 233, type: !112)
!340 = distinct !DILexicalBlock(scope: !341, file: !2, line: 232, column: 32)
!341 = distinct !DILexicalBlock(scope: !335, file: !2, line: 232, column: 11)
!342 = !DILocalVariable(name: "I1_scaled", scope: !340, file: !2, line: 234, type: !114)
!343 = distinct !DIAssignID()
!344 = !DILocation(line: 0, scope: !340)
!345 = !DILocation(line: 0, scope: !326)
!346 = !DILocation(line: 207, column: 20, scope: !326)
!347 = !DILocation(line: 211, column: 8, scope: !338)
!348 = !DILocation(line: 211, column: 6, scope: !326)
!349 = !DILocation(line: 213, column: 17, scope: !350)
!350 = distinct !DILexicalBlock(scope: !338, file: !2, line: 211, column: 16)
!351 = !DILocation(line: 214, column: 5, scope: !350)
!352 = !DILocation(line: 216, column: 13, scope: !337)
!353 = !DILocation(line: 216, column: 11, scope: !338)
!354 = !DILocation(line: 217, column: 5, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 217, column: 5)
!356 = distinct !DILexicalBlock(scope: !337, file: !2, line: 216, column: 21)
!357 = !DILocation(line: 217, column: 5, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !2, line: 217, column: 5)
!359 = !DILocation(line: 219, column: 13, scope: !336)
!360 = !DILocation(line: 219, column: 11, scope: !337)
!361 = !DILocation(line: 220, column: 22, scope: !362)
!362 = distinct !DILexicalBlock(scope: !336, file: !2, line: 219, column: 24)
!363 = !DILocation(line: 220, column: 17, scope: !362)
!364 = !DILocation(line: 221, column: 13, scope: !362)
!365 = !DILocation(line: 221, column: 17, scope: !362)
!366 = !DILocation(line: 222, column: 5, scope: !362)
!367 = !DILocation(line: 224, column: 13, scope: !335)
!368 = !DILocation(line: 224, column: 11, scope: !336)
!369 = !DILocation(line: 0, scope: !179, inlinedAt: !370)
!370 = distinct !DILocation(line: 226, column: 5, scope: !334)
!371 = !DILocation(line: 226, column: 27, scope: !334)
!372 = !DILocation(line: 226, column: 29, scope: !334)
!373 = !DILocation(line: 11, column: 19, scope: !179, inlinedAt: !370)
!374 = !DILocation(line: 11, column: 30, scope: !179, inlinedAt: !370)
!375 = !DILocation(line: 11, column: 39, scope: !179, inlinedAt: !370)
!376 = !DILocation(line: 12, column: 19, scope: !179, inlinedAt: !370)
!377 = !DILocation(line: 0, scope: !195, inlinedAt: !370)
!378 = !DILocation(line: 18, column: 11, scope: !195, inlinedAt: !370)
!379 = !DILocation(line: 19, column: 10, scope: !195, inlinedAt: !370)
!380 = !DILocation(line: 19, column: 7, scope: !195, inlinedAt: !370)
!381 = !DILocation(line: 18, column: 19, scope: !195, inlinedAt: !370)
!382 = !DILocation(line: 19, column: 26, scope: !195, inlinedAt: !370)
!383 = !DILocation(line: 19, column: 35, scope: !195, inlinedAt: !370)
!384 = !DILocation(line: 25, column: 10, scope: !199, inlinedAt: !370)
!385 = !DILocation(line: 0, scope: !199, inlinedAt: !370)
!386 = !DILocation(line: 25, column: 18, scope: !199, inlinedAt: !370)
!387 = !DILocation(line: 26, column: 10, scope: !199, inlinedAt: !370)
!388 = !DILocation(line: 26, column: 25, scope: !199, inlinedAt: !370)
!389 = !DILocation(line: 26, column: 34, scope: !199, inlinedAt: !370)
!390 = !DILocation(line: 26, column: 7, scope: !199, inlinedAt: !370)
!391 = !DILocation(line: 30, column: 33, scope: !179, inlinedAt: !370)
!392 = !DILocation(line: 0, scope: !334)
!393 = !DILocation(line: 227, column: 31, scope: !334)
!394 = !DILocation(line: 227, column: 22, scope: !334)
!395 = !DILocation(line: 227, column: 18, scope: !334)
!396 = !DILocation(line: 228, column: 22, scope: !334)
!397 = !DILocation(line: 228, column: 13, scope: !334)
!398 = !DILocation(line: 229, column: 44, scope: !334)
!399 = !DILocation(line: 229, column: 42, scope: !334)
!400 = !DILocation(line: 229, column: 17, scope: !334)
!401 = !DILocation(line: 232, column: 13, scope: !341)
!402 = !DILocation(line: 232, column: 11, scope: !335)
!403 = !DILocation(line: 233, column: 23, scope: !340)
!404 = !DILocation(line: 234, column: 5, scope: !340)
!405 = !DILocation(line: 235, column: 5, scope: !340)
!406 = !{i32 0, i32 16}
!407 = !DILocation(line: 236, column: 35, scope: !340)
!408 = !DILocation(line: 236, column: 23, scope: !340)
!409 = !DILocation(line: 236, column: 18, scope: !340)
!410 = !DILocation(line: 237, column: 35, scope: !340)
!411 = !DILocation(line: 237, column: 23, scope: !340)
!412 = !DILocation(line: 237, column: 43, scope: !340)
!413 = !DILocation(line: 237, column: 63, scope: !340)
!414 = !DILocation(line: 237, column: 61, scope: !340)
!415 = !DILocation(line: 237, column: 13, scope: !340)
!416 = !DILocation(line: 238, column: 42, scope: !340)
!417 = !DILocation(line: 238, column: 17, scope: !340)
!418 = !DILocation(line: 240, column: 3, scope: !341)
!419 = !DILocation(line: 242, column: 5, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 242, column: 5)
!421 = distinct !DILexicalBlock(scope: !341, file: !2, line: 241, column: 8)
!422 = !DILocation(line: 242, column: 5, scope: !423)
!423 = distinct !DILexicalBlock(scope: !420, file: !2, line: 242, column: 5)
!424 = !DILocation(line: 0, scope: !338)
!425 = !DILocation(line: 244, column: 1, scope: !326)
!426 = distinct !DISubprogram(name: "gsl_sf_bessel_I1_scaled", scope: !2, file: !2, line: 250, type: !427, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{!79, !112}
!429 = !{!430, !431, !432}
!430 = !DILocalVariable(name: "x", arg: 1, scope: !426, file: !2, line: 250, type: !112)
!431 = !DILocalVariable(name: "result", scope: !426, file: !2, line: 252, type: !114)
!432 = !DILocalVariable(name: "status", scope: !426, file: !2, line: 252, type: !33)
!433 = distinct !DIAssignID()
!434 = !DILocation(line: 0, scope: !426)
!435 = !DILocation(line: 252, column: 3, scope: !426)
!436 = !DILocation(line: 252, column: 3, scope: !437)
!437 = distinct !DILexicalBlock(scope: !426, file: !2, line: 252, column: 3)
!438 = !DILocation(line: 252, column: 3, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 252, column: 3)
!440 = distinct !DILexicalBlock(scope: !437, file: !2, line: 252, column: 3)
!441 = !DILocation(line: 253, column: 1, scope: !426)
!442 = distinct !DISubprogram(name: "gsl_sf_bessel_I1", scope: !2, file: !2, line: 255, type: !427, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !443)
!443 = !{!444, !445, !446}
!444 = !DILocalVariable(name: "x", arg: 1, scope: !442, file: !2, line: 255, type: !112)
!445 = !DILocalVariable(name: "result", scope: !442, file: !2, line: 257, type: !114)
!446 = !DILocalVariable(name: "status", scope: !442, file: !2, line: 257, type: !33)
!447 = distinct !DIAssignID()
!448 = !DILocation(line: 0, scope: !442)
!449 = !DILocation(line: 257, column: 3, scope: !442)
!450 = !{i32 0, i32 17}
!451 = !DILocation(line: 257, column: 3, scope: !452)
!452 = distinct !DILexicalBlock(scope: !442, file: !2, line: 257, column: 3)
!453 = !DILocation(line: 257, column: 3, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 257, column: 3)
!455 = distinct !DILexicalBlock(scope: !452, file: !2, line: 257, column: 3)
!456 = !DILocation(line: 258, column: 1, scope: !442)
