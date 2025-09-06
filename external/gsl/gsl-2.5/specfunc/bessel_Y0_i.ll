; ModuleID = 'bessel_Y0.ll'
source_filename = "bessel_Y0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cheb_series_struct = type { ptr, i32, double, double, i32 }
%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [12 x i8] c"bessel_Y0.c\00", align 1, !dbg !7
@_gsl_sf_bessel_amp_phase_bm0_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@_gsl_sf_bessel_amp_phase_bth0_cs = external local_unnamed_addr constant %struct.cheb_series_struct, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_Y0_e(x, &result)\00", align 1, !dbg !17
@by0_data = internal unnamed_addr constant [13 x double] [double 0xBF8718D5FAE52AD9, double 0xBFC06D9DE2F5AD77, double 0xBFBAB8927A8B99F7, double 0x3F983B0C3783AFDB, double 0xBF611FDE7868149D, double 0x3F1B41ACB26FE761, double 0xBECC447A18082B07, double 0x3E74BF97A912DBDD, double 0xBE16C34F3962C677, double 0x3DB36789230EB520, double -1.881050e-13, double 1.641000e-15, double -1.100000e-17], align 16, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_Y0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !88 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !104, metadata !DIExpression(), metadata !122, metadata ptr %3, metadata !DIExpression()), !dbg !123
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !124
  call void @llvm.dbg.assign(metadata i1 undef, metadata !115, metadata !DIExpression(), metadata !124, metadata ptr %4, metadata !DIExpression()), !dbg !125
  tail call void @llvm.dbg.value(metadata double %0, metadata !100, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !101, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata double 0x3FE45F306DC9C883, metadata !102, metadata !DIExpression()), !dbg !126
  tail call void @llvm.dbg.value(metadata double 0x4330000000000000, metadata !103, metadata !DIExpression()), !dbg !126
  %5 = fcmp ugt double %0, 0.000000e+00, !dbg !127
  br i1 %5, label %8, label %6, !dbg !128

6:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !129, !tbaa !132
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !129
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !129, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 1) #5, !dbg !138
  br label %160, !dbg !138

8:                                                ; preds = %2
  %9 = fcmp olt double %0, 4.000000e+00, !dbg !140
  br i1 %9, label %10, label %41, !dbg !141

10:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !142
  %11 = call i32 @gsl_sf_bessel_J0_e(double noundef %0, ptr noundef nonnull %3) #5, !dbg !143
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !109, metadata !DIExpression()), !dbg !123
  %12 = fmul double %0, 1.250000e-01, !dbg !144
  %13 = fmul double %12, %0, !dbg !145
  %handler_result = call double @fAddHandlerDouble(double %13, double -1.000000e+00), !dbg !146
  call void @llvm.dbg.value(metadata !170, metadata !154, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %handler_result, metadata !155, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !171
  %14 = fmul double %handler_result, 2.000000e+00, !dbg !146
  %handler_result1 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !172
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double -1.000000e+00), !dbg !173
  %15 = fmul double %handler_result2, 5.000000e-01, !dbg !173
  call void @llvm.dbg.value(metadata double %15, metadata !160, metadata !DIExpression()), !dbg !171
  %16 = fmul double %15, 2.000000e+00, !dbg !174
  call void @llvm.dbg.value(metadata double %16, metadata !161, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i32 12, metadata !157, metadata !DIExpression()), !dbg !171
  br label %17, !dbg !175

17:                                               ; preds = %17, %10
  %18 = phi i64 [ 12, %10 ], [ %28, %17 ]
  %19 = phi double [ 0.000000e+00, %10 ], [ %handler_result4, %17 ]
  %20 = phi double [ 0.000000e+00, %10 ], [ %handler_result7, %17 ]
  %21 = phi double [ 0.000000e+00, %10 ], [ %19, %17 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !157, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %19, metadata !158, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %20, metadata !162, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %21, metadata !159, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %19, metadata !163, metadata !DIExpression()), !dbg !176
  %22 = fmul double %16, %19, !dbg !177
  %handler_result3 = call double @fSubHandlerDouble(double %22, double %21), !dbg !178
  %23 = getelementptr inbounds double, ptr @by0_data, i64 %18, !dbg !178
  %24 = load double, ptr %23, align 8, !dbg !178, !tbaa !179
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %24), !dbg !180
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !158, metadata !DIExpression()), !dbg !171
  %25 = call double @llvm.fabs.f64(double %22), !dbg !180
  %26 = call double @llvm.fabs.f64(double %21), !dbg !181
  %handler_result5 = call double @fAddHandlerDouble(double %25, double %26), !dbg !182
  %27 = call double @llvm.fabs.f64(double %24), !dbg !182
  %handler_result6 = call double @fAddHandlerDouble(double %handler_result5, double %27), !dbg !183
  %handler_result7 = call double @fAddHandlerDouble(double %20, double %handler_result6), !dbg !184
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !162, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata double %19, metadata !159, metadata !DIExpression()), !dbg !171
  %28 = add nsw i64 %18, -1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %28, metadata !157, metadata !DIExpression()), !dbg !171
  %29 = icmp ugt i64 %18, 1, !dbg !185
  br i1 %29, label %17, label %30, !dbg !175, !llvm.loop !186

30:                                               ; preds = %17
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !167, metadata !DIExpression()), !dbg !189
  %31 = fmul double %15, %handler_result4, !dbg !190
  %handler_result8 = call double @fSubHandlerDouble(double %31, double %19), !dbg !191
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double 0xBF7718D5FAE52AD9), !dbg !192
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !158, metadata !DIExpression()), !dbg !171
  %32 = call double @llvm.fabs.f64(double %31), !dbg !192
  %33 = call double @llvm.fabs.f64(double %19), !dbg !193
  %handler_result10 = call double @fAddHandlerDouble(double %33, double %32), !dbg !194
  %handler_result11 = call double @fAddHandlerDouble(double %handler_result10, double 0x3F7718D5FAE52AD9), !dbg !195
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result7, double %handler_result11), !dbg !196
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !162, metadata !DIExpression()), !dbg !171
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !123
  %34 = fmul double %handler_result12, 0x3CB0000000000000, !dbg !196
  %handler_result13 = call double @fAddHandlerDouble(double %34, double 1.100000e-17), !dbg !197
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !108, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !123
  %handler_result51 = call double @callHandler(i32 12, double %0, double %0), !dbg !198
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result51, double 0xBFE62E42FEFA39EF), !dbg !198
  %35 = fmul double %handler_result14, 0x3FE45F306DC9C883, !dbg !198
  %36 = load double, ptr %3, align 8, !dbg !199, !tbaa !132
  %37 = fmul double %36, %35, !dbg !200
  %handler_result15 = call double @fAddHandlerDouble(double %37, double 3.750000e-01), !dbg !201
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result9, double %handler_result15), !dbg !202
  store double %handler_result16, ptr %1, align 8, !dbg !202, !tbaa !132
  %38 = call double @llvm.fabs.f64(double %handler_result16), !dbg !203
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !204
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result13, double %39), !dbg !205
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !205
  store double %handler_result17, ptr %40, align 8, !dbg !206, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !207
  br label %160

41:                                               ; preds = %8
  %42 = fcmp olt double %0, 0x4330000000000000, !dbg !208
  br i1 %42, label %43, label %158, !dbg !209

43:                                               ; preds = %41
  %44 = fmul double %0, %0, !dbg !210
  %45 = fdiv double 3.200000e+01, %44, !dbg !211
  %handler_result18 = call double @fAddHandlerDouble(double %45, double -1.000000e+00), !dbg !212
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !110, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !212
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bm0_cs, metadata !154, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !155, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !213
  %46 = fmul double %handler_result18, 2.000000e+00, !dbg !215
  %47 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 2), align 8, !dbg !216, !tbaa !217
  %handler_result19 = call double @fSubHandlerDouble(double %46, double %47), !dbg !221
  %48 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 3), align 8, !dbg !221, !tbaa !222
  %handler_result20 = call double @fSubHandlerDouble(double %handler_result19, double %48), !dbg !223
  %handler_result21 = call double @fSubHandlerDouble(double %48, double %47), !dbg !224
  %49 = fdiv double %handler_result20, %handler_result21, !dbg !224
  call void @llvm.dbg.value(metadata double %49, metadata !160, metadata !DIExpression()), !dbg !213
  %50 = fmul double %49, 2.000000e+00, !dbg !225
  call void @llvm.dbg.value(metadata double %50, metadata !161, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !213
  %51 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, i64 0, i32 1), align 8, !dbg !226, !tbaa !227
  call void @llvm.dbg.value(metadata i32 %51, metadata !157, metadata !DIExpression()), !dbg !213
  %52 = icmp sgt i32 %51, 0, !dbg !228
  %53 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bm0_cs, align 8, !dbg !229, !tbaa !230
  br i1 %52, label %54, label %69, !dbg !231

54:                                               ; preds = %43
  %55 = zext nneg i32 %51 to i64, !dbg !231
  br label %56, !dbg !231

56:                                               ; preds = %56, %54
  %57 = phi i64 [ %55, %54 ], [ %67, %56 ]
  %58 = phi double [ 0.000000e+00, %54 ], [ %handler_result23, %56 ]
  %59 = phi double [ 0.000000e+00, %54 ], [ %handler_result26, %56 ]
  %60 = phi double [ 0.000000e+00, %54 ], [ %58, %56 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !157, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double %58, metadata !158, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double %59, metadata !162, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double %60, metadata !159, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double %58, metadata !163, metadata !DIExpression()), !dbg !232
  %61 = fmul double %50, %58, !dbg !233
  %handler_result22 = call double @fSubHandlerDouble(double %61, double %60), !dbg !234
  %62 = getelementptr inbounds double, ptr %53, i64 %57, !dbg !234
  %63 = load double, ptr %62, align 8, !dbg !234, !tbaa !179
  %handler_result23 = call double @fAddHandlerDouble(double %handler_result22, double %63), !dbg !235
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !158, metadata !DIExpression()), !dbg !213
  %64 = tail call double @llvm.fabs.f64(double %61), !dbg !235
  %65 = tail call double @llvm.fabs.f64(double %60), !dbg !236
  %handler_result24 = call double @fAddHandlerDouble(double %64, double %65), !dbg !237
  %66 = tail call double @llvm.fabs.f64(double %63), !dbg !237
  %handler_result25 = call double @fAddHandlerDouble(double %handler_result24, double %66), !dbg !238
  %handler_result26 = call double @fAddHandlerDouble(double %59, double %handler_result25), !dbg !239
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !162, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double %58, metadata !159, metadata !DIExpression()), !dbg !213
  %67 = add nsw i64 %57, -1, !dbg !239
  call void @llvm.dbg.value(metadata i64 %67, metadata !157, metadata !DIExpression()), !dbg !213
  %68 = icmp ugt i64 %57, 1, !dbg !228
  br i1 %68, label %56, label %69, !dbg !231, !llvm.loop !240

69:                                               ; preds = %56, %43
  %70 = phi double [ 0.000000e+00, %43 ], [ %58, %56 ], !dbg !213
  %71 = phi double [ 0.000000e+00, %43 ], [ %handler_result26, %56 ], !dbg !213
  %72 = phi double [ 0.000000e+00, %43 ], [ %handler_result23, %56 ], !dbg !213
  call void @llvm.dbg.value(metadata double %72, metadata !167, metadata !DIExpression()), !dbg !242
  %73 = fmul double %49, %72, !dbg !243
  %handler_result27 = call double @fSubHandlerDouble(double %73, double %70), !dbg !244
  %74 = load double, ptr %53, align 8, !dbg !244, !tbaa !179
  %75 = fmul double %74, 5.000000e-01, !dbg !245
  %handler_result28 = call double @fAddHandlerDouble(double %handler_result27, double %75), !dbg !246
  call void @llvm.dbg.value(metadata double %handler_result28, metadata !158, metadata !DIExpression()), !dbg !213
  %76 = tail call double @llvm.fabs.f64(double %73), !dbg !246
  %77 = tail call double @llvm.fabs.f64(double %70), !dbg !247
  %handler_result29 = call double @fAddHandlerDouble(double %77, double %76), !dbg !248
  %78 = tail call double @llvm.fabs.f64(double %74), !dbg !248
  %79 = fmul double %78, 5.000000e-01, !dbg !249
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double %79), !dbg !250
  %handler_result31 = call double @fAddHandlerDouble(double %71, double %handler_result30), !dbg !251
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !162, metadata !DIExpression()), !dbg !213
  tail call void @llvm.dbg.value(metadata double %handler_result28, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  %80 = fmul double %handler_result31, 0x3CB0000000000000, !dbg !251
  %81 = sext i32 %51 to i64, !dbg !252
  %82 = getelementptr inbounds double, ptr %53, i64 %81, !dbg !252
  %83 = load double, ptr %82, align 8, !dbg !252, !tbaa !179
  %84 = tail call double @llvm.fabs.f64(double %83), !dbg !253
  %handler_result32 = call double @fAddHandlerDouble(double %84, double %80), !dbg !254
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !113, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 0, metadata !116, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.value(metadata ptr @_gsl_sf_bessel_amp_phase_bth0_cs, metadata !154, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !155, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata ptr undef, metadata !156, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !159, metadata !DIExpression()), !dbg !256
  %85 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 2), align 8, !dbg !254, !tbaa !217
  %handler_result33 = call double @fSubHandlerDouble(double %46, double %85), !dbg !257
  %86 = load double, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 3), align 8, !dbg !257, !tbaa !222
  %handler_result34 = call double @fSubHandlerDouble(double %handler_result33, double %86), !dbg !258
  %handler_result35 = call double @fSubHandlerDouble(double %86, double %85), !dbg !259
  %87 = fdiv double %handler_result34, %handler_result35, !dbg !259
  call void @llvm.dbg.value(metadata double %87, metadata !160, metadata !DIExpression()), !dbg !256
  %88 = fmul double %87, 2.000000e+00, !dbg !260
  call void @llvm.dbg.value(metadata double %88, metadata !161, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !162, metadata !DIExpression()), !dbg !256
  %89 = load i32, ptr getelementptr inbounds (%struct.cheb_series_struct, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, i64 0, i32 1), align 8, !dbg !261, !tbaa !227
  call void @llvm.dbg.value(metadata i32 %89, metadata !157, metadata !DIExpression()), !dbg !256
  %90 = icmp sgt i32 %89, 0, !dbg !262
  %91 = load ptr, ptr @_gsl_sf_bessel_amp_phase_bth0_cs, align 8, !dbg !263, !tbaa !230
  br i1 %90, label %92, label %136, !dbg !264

92:                                               ; preds = %69
  %93 = zext nneg i32 %89 to i64, !dbg !264
  %94 = and i64 %93, 3, !dbg !264
  %95 = icmp eq i64 %94, 0, !dbg !264
  br i1 %95, label %107, label %96, !dbg !264

96:                                               ; preds = %96, %92
  %97 = phi i64 [ %104, %96 ], [ %93, %92 ]
  %98 = phi double [ %handler_result37, %96 ], [ 0.000000e+00, %92 ]
  %99 = phi double [ %98, %96 ], [ 0.000000e+00, %92 ]
  %100 = phi i64 [ %105, %96 ], [ 0, %92 ]
  call void @llvm.dbg.value(metadata i64 %97, metadata !157, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %98, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double poison, metadata !162, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %99, metadata !159, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %98, metadata !163, metadata !DIExpression()), !dbg !265
  %101 = fmul double %88, %98, !dbg !266
  %handler_result36 = call double @fSubHandlerDouble(double %101, double %99), !dbg !267
  %102 = getelementptr inbounds double, ptr %91, i64 %97, !dbg !267
  %103 = load double, ptr %102, align 8, !dbg !267, !tbaa !179
  %handler_result37 = call double @fAddHandlerDouble(double %handler_result36, double %103), !dbg !268
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %98, metadata !159, metadata !DIExpression()), !dbg !256
  %104 = add nsw i64 %97, -1, !dbg !268
  call void @llvm.dbg.value(metadata i64 %104, metadata !157, metadata !DIExpression()), !dbg !256
  %105 = add i64 %100, 1, !dbg !264
  %106 = icmp eq i64 %105, %94, !dbg !264
  br i1 %106, label %107, label %96, !dbg !264, !llvm.loop !269

107:                                              ; preds = %96, %92
  %108 = phi i64 [ %93, %92 ], [ %104, %96 ]
  %109 = phi double [ 0.000000e+00, %92 ], [ %handler_result37, %96 ]
  %110 = phi double [ 0.000000e+00, %92 ], [ %98, %96 ]
  %111 = phi double [ undef, %92 ], [ %98, %96 ]
  %112 = phi double [ undef, %92 ], [ %handler_result37, %96 ]
  %113 = icmp ult i32 %89, 4, !dbg !264
  br i1 %113, label %136, label %114, !dbg !264

114:                                              ; preds = %107
  %115 = getelementptr double, ptr %91, i64 -1, !dbg !264
  %116 = getelementptr double, ptr %91, i64 -2, !dbg !264
  br label %117, !dbg !264

117:                                              ; preds = %117, %114
  %118 = phi i64 [ %108, %114 ], [ %134, %117 ]
  %119 = phi double [ %109, %114 ], [ %handler_result45, %117 ]
  %120 = phi double [ %110, %114 ], [ %handler_result43, %117 ]
  call void @llvm.dbg.value(metadata i64 %118, metadata !157, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %119, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double poison, metadata !162, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %120, metadata !159, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %119, metadata !163, metadata !DIExpression()), !dbg !265
  %121 = fmul double %88, %119, !dbg !266
  %handler_result38 = call double @fSubHandlerDouble(double %121, double %120), !dbg !267
  %122 = getelementptr inbounds double, ptr %91, i64 %118, !dbg !267
  %123 = load double, ptr %122, align 8, !dbg !267, !tbaa !179
  %handler_result39 = call double @fAddHandlerDouble(double %handler_result38, double %123), !dbg !266
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %119, metadata !159, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i64 %118, metadata !157, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !256
  call void @llvm.dbg.value(metadata i64 %118, metadata !157, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double poison, metadata !162, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %119, metadata !159, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !163, metadata !DIExpression()), !dbg !265
  %124 = fmul double %88, %handler_result39, !dbg !266
  %handler_result40 = call double @fSubHandlerDouble(double %124, double %119), !dbg !267
  %125 = getelementptr double, ptr %115, i64 %118, !dbg !267
  %126 = load double, ptr %125, align 8, !dbg !267, !tbaa !179
  %handler_result41 = call double @fAddHandlerDouble(double %handler_result40, double %126), !dbg !266
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !159, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i64 %118, metadata !157, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !256
  call void @llvm.dbg.value(metadata i64 %118, metadata !157, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double poison, metadata !162, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !159, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !163, metadata !DIExpression()), !dbg !265
  %127 = fmul double %88, %handler_result41, !dbg !266
  %handler_result42 = call double @fSubHandlerDouble(double %127, double %handler_result39), !dbg !267
  %128 = getelementptr double, ptr %116, i64 %118, !dbg !267
  %129 = load double, ptr %128, align 8, !dbg !267, !tbaa !179
  %handler_result43 = call double @fAddHandlerDouble(double %handler_result42, double %129), !dbg !268
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !159, metadata !DIExpression()), !dbg !256
  %130 = add nsw i64 %118, -3, !dbg !268
  call void @llvm.dbg.value(metadata i64 %130, metadata !157, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata i64 %130, metadata !157, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double poison, metadata !162, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !159, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !163, metadata !DIExpression()), !dbg !265
  %131 = fmul double %88, %handler_result43, !dbg !266
  %handler_result44 = call double @fSubHandlerDouble(double %131, double %handler_result41), !dbg !267
  %132 = getelementptr inbounds double, ptr %91, i64 %130, !dbg !267
  %133 = load double, ptr %132, align 8, !dbg !267, !tbaa !179
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double %133), !dbg !268
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !159, metadata !DIExpression()), !dbg !256
  %134 = add nsw i64 %118, -4, !dbg !268
  call void @llvm.dbg.value(metadata i64 %134, metadata !157, metadata !DIExpression()), !dbg !256
  %135 = icmp ugt i64 %130, 1, !dbg !262
  br i1 %135, label %117, label %136, !dbg !264, !llvm.loop !271

136:                                              ; preds = %117, %107, %69
  %137 = phi double [ 0.000000e+00, %69 ], [ %111, %107 ], [ %handler_result43, %117 ], !dbg !256
  %138 = phi double [ 0.000000e+00, %69 ], [ %112, %107 ], [ %handler_result45, %117 ], !dbg !256
  call void @llvm.dbg.value(metadata double %138, metadata !167, metadata !DIExpression()), !dbg !273
  %139 = fmul double %87, %138, !dbg !274
  %handler_result46 = call double @fSubHandlerDouble(double %139, double %137), !dbg !275
  %140 = load double, ptr %91, align 8, !dbg !275, !tbaa !179
  %141 = fmul double %140, 5.000000e-01, !dbg !276
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double %141), !dbg !277
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !158, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.value(metadata double poison, metadata !162, metadata !DIExpression()), !dbg !256
  tail call void @llvm.dbg.value(metadata double %handler_result47, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata double poison, metadata !114, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !125
  tail call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()), !dbg !125
  %142 = fdiv double %handler_result47, %0, !dbg !277
  %143 = call i32 @gsl_sf_bessel_sin_pi4_e(double noundef %0, double noundef %142, ptr noundef nonnull %4) #5, !dbg !278
  tail call void @llvm.dbg.value(metadata i32 %143, metadata !119, metadata !DIExpression()), !dbg !125
  %144 = call double @sqrt(double noundef %0) #5, !dbg !279
  tail call void @llvm.dbg.value(metadata double %144, metadata !120, metadata !DIExpression()), !dbg !125
  %handler_result48 = call double @fAddHandlerDouble(double %handler_result28, double 7.500000e-01), !dbg !280
  %145 = fdiv double %handler_result48, %144, !dbg !280
  tail call void @llvm.dbg.value(metadata double %145, metadata !121, metadata !DIExpression()), !dbg !125
  %146 = load double, ptr %4, align 8, !dbg !281, !tbaa !132
  %147 = fmul double %145, %146, !dbg !282
  store double %147, ptr %1, align 8, !dbg !283, !tbaa !132
  %148 = call double @llvm.fabs.f64(double %146), !dbg !284
  %149 = fmul double %handler_result32, %148, !dbg !285
  %150 = fdiv double %149, %144, !dbg !286
  %151 = call double @llvm.fabs.f64(double %145), !dbg !287
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !288
  %153 = load double, ptr %152, align 8, !dbg !288, !tbaa !137
  %154 = fmul double %151, %153, !dbg !289
  %handler_result49 = call double @fAddHandlerDouble(double %150, double %154), !dbg !290
  %155 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !290
  %156 = call double @llvm.fabs.f64(double %147), !dbg !291
  %157 = fmul double %156, 0x3CC0000000000000, !dbg !292
  %handler_result50 = call double @fAddHandlerDouble(double %157, double %handler_result49), !dbg !293
  store double %handler_result50, ptr %155, align 8, !dbg !293, !tbaa !137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !294
  br label %160

158:                                              ; preds = %41
  store double 0.000000e+00, ptr %1, align 8, !dbg !295, !tbaa !132
  %159 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !295
  store double 0x10000000000000, ptr %159, align 8, !dbg !295, !tbaa !137
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 15) #5, !dbg !298
  br label %160, !dbg !298

160:                                              ; preds = %158, %136, %30, %6
  %161 = phi i32 [ 1, %6 ], [ %11, %30 ], [ %143, %136 ], [ 15, %158 ], !dbg !300
  ret i32 %161, !dbg !301
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !302 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !307 i32 @gsl_sf_bessel_J0_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !309 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !313 i32 @gsl_sf_bessel_sin_pi4_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !317 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_Y0(double noundef %0) local_unnamed_addr #0 !dbg !318 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !325
  call void @llvm.dbg.assign(metadata i1 undef, metadata !323, metadata !DIExpression(), metadata !325, metadata ptr %2, metadata !DIExpression()), !dbg !326
  tail call void @llvm.dbg.value(metadata double %0, metadata !322, metadata !DIExpression()), !dbg !326
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !327
  %3 = call i32 @gsl_sf_bessel_Y0_e(double noundef %0, ptr noundef nonnull %2), !dbg !327
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !324, metadata !DIExpression()), !dbg !326
  %4 = icmp eq i32 %3, 0, !dbg !328
  br i1 %4, label %6, label %5, !dbg !327

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 121, i32 noundef %3) #5, !dbg !330
  br label %6, !dbg !330

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !327, !tbaa !132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !333
  ret double %7, !dbg !333
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_Y0.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3cfc018c36082496fd9bbb83781b60e4")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 31)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "by0_data", scope: !24, file: !2, line: 47, type: !79, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, globals: !65, splitDebugInlining: false, nameTableKind: None)
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
!65 = !{!0, !7, !12, !17, !66, !22}
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "by0_cs", scope: !24, file: !2, line: 62, type: !68, isLocal: true, isDefinition: true)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "cheb_series", file: !69, line: 29, baseType: !70)
!69 = !DIFile(filename: "./chebyshev.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "41e3a40b0ef4c15c011f3f1dbb3f3cf6")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cheb_series_struct", file: !69, line: 22, size: 320, elements: !71)
!71 = !{!72, !75, !76, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !70, file: !69, line: 23, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !70, file: !69, line: 24, baseType: !28, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !70, file: !69, line: 25, baseType: !74, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !70, file: !69, line: 26, baseType: !74, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "order_sp", scope: !70, file: !69, line: 27, baseType: !28, size: 32, offset: 256)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 832, elements: !5)
!80 = !{i32 7, !"Dwarf Version", i32 5}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 8, !"PIC Level", i32 2}
!84 = !{i32 7, !"PIE Level", i32 2}
!85 = !{i32 7, !"uwtable", i32 2}
!86 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!87 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!88 = distinct !DISubprogram(name: "gsl_sf_bessel_Y0_e", scope: !2, file: !2, line: 72, type: !89, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !99)
!89 = !DISubroutineType(types: !90)
!90 = !{!28, !91, !92}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !94, line: 41, baseType: !95)
!94 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !94, line: 37, size: 128, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !94, line: 38, baseType: !74, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !95, file: !94, line: 39, baseType: !74, size: 64, offset: 64)
!99 = !{!100, !101, !102, !103, !104, !108, !109, !110, !113, !114, !115, !116, !118, !119, !120, !121}
!100 = !DILocalVariable(name: "x", arg: 1, scope: !88, file: !2, line: 72, type: !91)
!101 = !DILocalVariable(name: "result", arg: 2, scope: !88, file: !2, line: 72, type: !92)
!102 = !DILocalVariable(name: "two_over_pi", scope: !88, file: !2, line: 74, type: !91)
!103 = !DILocalVariable(name: "xmax", scope: !88, file: !2, line: 75, type: !91)
!104 = !DILocalVariable(name: "J0", scope: !105, file: !2, line: 83, type: !93)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 82, column: 20)
!106 = distinct !DILexicalBlock(scope: !107, file: !2, line: 82, column: 11)
!107 = distinct !DILexicalBlock(scope: !88, file: !2, line: 79, column: 7)
!108 = !DILocalVariable(name: "c", scope: !105, file: !2, line: 84, type: !93)
!109 = !DILocalVariable(name: "stat_J0", scope: !105, file: !2, line: 85, type: !28)
!110 = !DILocalVariable(name: "z", scope: !111, file: !2, line: 95, type: !91)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 91, column: 21)
!112 = distinct !DILexicalBlock(scope: !106, file: !2, line: 91, column: 11)
!113 = !DILocalVariable(name: "c1", scope: !111, file: !2, line: 96, type: !93)
!114 = !DILocalVariable(name: "c2", scope: !111, file: !2, line: 97, type: !93)
!115 = !DILocalVariable(name: "sp", scope: !111, file: !2, line: 98, type: !93)
!116 = !DILocalVariable(name: "stat_c1", scope: !111, file: !2, line: 99, type: !117)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!118 = !DILocalVariable(name: "stat_c2", scope: !111, file: !2, line: 100, type: !117)
!119 = !DILocalVariable(name: "stat_sp", scope: !111, file: !2, line: 101, type: !117)
!120 = !DILocalVariable(name: "sqrtx", scope: !111, file: !2, line: 102, type: !91)
!121 = !DILocalVariable(name: "ampl", scope: !111, file: !2, line: 103, type: !91)
!122 = distinct !DIAssignID()
!123 = !DILocation(line: 0, scope: !105)
!124 = distinct !DIAssignID()
!125 = !DILocation(line: 0, scope: !111)
!126 = !DILocation(line: 0, scope: !88)
!127 = !DILocation(line: 79, column: 9, scope: !107)
!128 = !DILocation(line: 79, column: 7, scope: !88)
!129 = !DILocation(line: 80, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 80, column: 5)
!131 = distinct !DILexicalBlock(scope: !107, file: !2, line: 79, column: 17)
!132 = !{!133, !134, i64 0}
!133 = !{!"gsl_sf_result_struct", !134, i64 0, !134, i64 8}
!134 = !{!"double", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !{!133, !134, i64 8}
!138 = !DILocation(line: 80, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !130, file: !2, line: 80, column: 5)
!140 = !DILocation(line: 82, column: 13, scope: !106)
!141 = !DILocation(line: 82, column: 11, scope: !107)
!142 = !DILocation(line: 83, column: 5, scope: !105)
!143 = !DILocation(line: 85, column: 19, scope: !105)
!144 = !DILocation(line: 86, column: 31, scope: !105)
!145 = !DILocation(line: 86, column: 33, scope: !105)
!146 = !DILocation(line: 11, column: 19, scope: !147, inlinedAt: !169)
!147 = distinct !DISubprogram(name: "cheb_eval_e", scope: !148, file: !148, line: 3, type: !149, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !153)
!148 = !DIFile(filename: "./cheb_eval.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "540fdb014588703ccd0b3c3b3ea8a26b")
!149 = !DISubroutineType(types: !150)
!150 = !{!28, !151, !91, !92}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!153 = !{!154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !167}
!154 = !DILocalVariable(name: "cs", arg: 1, scope: !147, file: !148, line: 3, type: !151)
!155 = !DILocalVariable(name: "x", arg: 2, scope: !147, file: !148, line: 4, type: !91)
!156 = !DILocalVariable(name: "result", arg: 3, scope: !147, file: !148, line: 5, type: !92)
!157 = !DILocalVariable(name: "j", scope: !147, file: !148, line: 7, type: !28)
!158 = !DILocalVariable(name: "d", scope: !147, file: !148, line: 8, type: !74)
!159 = !DILocalVariable(name: "dd", scope: !147, file: !148, line: 9, type: !74)
!160 = !DILocalVariable(name: "y", scope: !147, file: !148, line: 11, type: !74)
!161 = !DILocalVariable(name: "y2", scope: !147, file: !148, line: 12, type: !74)
!162 = !DILocalVariable(name: "e", scope: !147, file: !148, line: 14, type: !74)
!163 = !DILocalVariable(name: "temp", scope: !164, file: !148, line: 17, type: !74)
!164 = distinct !DILexicalBlock(scope: !165, file: !148, line: 16, column: 33)
!165 = distinct !DILexicalBlock(scope: !166, file: !148, line: 16, column: 3)
!166 = distinct !DILexicalBlock(scope: !147, file: !148, line: 16, column: 3)
!167 = !DILocalVariable(name: "temp", scope: !168, file: !148, line: 24, type: !74)
!168 = distinct !DILexicalBlock(scope: !147, file: !148, line: 23, column: 3)
!169 = distinct !DILocation(line: 86, column: 5, scope: !105)
!170 = !{}
!171 = !DILocation(line: 0, scope: !147, inlinedAt: !169)
!172 = !DILocation(line: 11, column: 30, scope: !147, inlinedAt: !169)
!173 = !DILocation(line: 11, column: 39, scope: !147, inlinedAt: !169)
!174 = !DILocation(line: 12, column: 19, scope: !147, inlinedAt: !169)
!175 = !DILocation(line: 16, column: 3, scope: !166, inlinedAt: !169)
!176 = !DILocation(line: 0, scope: !164, inlinedAt: !169)
!177 = !DILocation(line: 18, column: 11, scope: !164, inlinedAt: !169)
!178 = !DILocation(line: 18, column: 21, scope: !164, inlinedAt: !169)
!179 = !{!134, !134, i64 0}
!180 = !DILocation(line: 19, column: 10, scope: !164, inlinedAt: !169)
!181 = !DILocation(line: 19, column: 26, scope: !164, inlinedAt: !169)
!182 = !DILocation(line: 19, column: 37, scope: !164, inlinedAt: !169)
!183 = !DILocation(line: 19, column: 7, scope: !164, inlinedAt: !169)
!184 = !DILocation(line: 16, column: 29, scope: !165, inlinedAt: !169)
!185 = !DILocation(line: 16, column: 23, scope: !165, inlinedAt: !169)
!186 = distinct !{!186, !175, !187, !188}
!187 = !DILocation(line: 21, column: 3, scope: !166, inlinedAt: !169)
!188 = !{!"llvm.loop.mustprogress"}
!189 = !DILocation(line: 0, scope: !168, inlinedAt: !169)
!190 = !DILocation(line: 25, column: 10, scope: !168, inlinedAt: !169)
!191 = !DILocation(line: 25, column: 18, scope: !168, inlinedAt: !169)
!192 = !DILocation(line: 26, column: 10, scope: !168, inlinedAt: !169)
!193 = !DILocation(line: 26, column: 25, scope: !168, inlinedAt: !169)
!194 = !DILocation(line: 26, column: 34, scope: !168, inlinedAt: !169)
!195 = !DILocation(line: 26, column: 7, scope: !168, inlinedAt: !169)
!196 = !DILocation(line: 30, column: 33, scope: !147, inlinedAt: !169)
!197 = !DILocation(line: 87, column: 41, scope: !105)
!198 = !DILocation(line: 87, column: 30, scope: !105)
!199 = !DILocation(line: 87, column: 52, scope: !105)
!200 = !DILocation(line: 87, column: 48, scope: !105)
!201 = !DILocation(line: 87, column: 64, scope: !105)
!202 = !DILocation(line: 87, column: 17, scope: !105)
!203 = !DILocation(line: 88, column: 43, scope: !105)
!204 = !DILocation(line: 88, column: 41, scope: !105)
!205 = !DILocation(line: 88, column: 13, scope: !105)
!206 = !DILocation(line: 88, column: 17, scope: !105)
!207 = !DILocation(line: 90, column: 3, scope: !106)
!208 = !DILocation(line: 91, column: 13, scope: !112)
!209 = !DILocation(line: 91, column: 11, scope: !106)
!210 = !DILocation(line: 95, column: 30, scope: !111)
!211 = !DILocation(line: 95, column: 27, scope: !111)
!212 = !DILocation(line: 98, column: 5, scope: !111)
!213 = !DILocation(line: 0, scope: !147, inlinedAt: !214)
!214 = distinct !DILocation(line: 99, column: 25, scope: !111)
!215 = !DILocation(line: 11, column: 19, scope: !147, inlinedAt: !214)
!216 = !DILocation(line: 11, column: 28, scope: !147, inlinedAt: !214)
!217 = !{!218, !134, i64 16}
!218 = !{!"cheb_series_struct", !219, i64 0, !220, i64 8, !134, i64 16, !134, i64 24, !220, i64 32}
!219 = !{!"any pointer", !135, i64 0}
!220 = !{!"int", !135, i64 0}
!221 = !DILocation(line: 11, column: 36, scope: !147, inlinedAt: !214)
!222 = !{!218, !134, i64 24}
!223 = !DILocation(line: 11, column: 48, scope: !147, inlinedAt: !214)
!224 = !DILocation(line: 11, column: 39, scope: !147, inlinedAt: !214)
!225 = !DILocation(line: 12, column: 19, scope: !147, inlinedAt: !214)
!226 = !DILocation(line: 16, column: 15, scope: !166, inlinedAt: !214)
!227 = !{!218, !220, i64 8}
!228 = !DILocation(line: 16, column: 23, scope: !165, inlinedAt: !214)
!229 = !DILocation(line: 25, column: 30, scope: !168, inlinedAt: !214)
!230 = !{!218, !219, i64 0}
!231 = !DILocation(line: 16, column: 3, scope: !166, inlinedAt: !214)
!232 = !DILocation(line: 0, scope: !164, inlinedAt: !214)
!233 = !DILocation(line: 18, column: 11, scope: !164, inlinedAt: !214)
!234 = !DILocation(line: 18, column: 21, scope: !164, inlinedAt: !214)
!235 = !DILocation(line: 19, column: 10, scope: !164, inlinedAt: !214)
!236 = !DILocation(line: 19, column: 26, scope: !164, inlinedAt: !214)
!237 = !DILocation(line: 19, column: 37, scope: !164, inlinedAt: !214)
!238 = !DILocation(line: 19, column: 7, scope: !164, inlinedAt: !214)
!239 = !DILocation(line: 16, column: 29, scope: !165, inlinedAt: !214)
!240 = distinct !{!240, !231, !241, !188}
!241 = !DILocation(line: 21, column: 3, scope: !166, inlinedAt: !214)
!242 = !DILocation(line: 0, scope: !168, inlinedAt: !214)
!243 = !DILocation(line: 25, column: 10, scope: !168, inlinedAt: !214)
!244 = !DILocation(line: 25, column: 26, scope: !168, inlinedAt: !214)
!245 = !DILocation(line: 25, column: 24, scope: !168, inlinedAt: !214)
!246 = !DILocation(line: 26, column: 10, scope: !168, inlinedAt: !214)
!247 = !DILocation(line: 26, column: 25, scope: !168, inlinedAt: !214)
!248 = !DILocation(line: 26, column: 42, scope: !168, inlinedAt: !214)
!249 = !DILocation(line: 26, column: 40, scope: !168, inlinedAt: !214)
!250 = !DILocation(line: 26, column: 7, scope: !168, inlinedAt: !214)
!251 = !DILocation(line: 30, column: 33, scope: !147, inlinedAt: !214)
!252 = !DILocation(line: 30, column: 44, scope: !147, inlinedAt: !214)
!253 = !DILocation(line: 30, column: 39, scope: !147, inlinedAt: !214)
!254 = !DILocation(line: 11, column: 28, scope: !147, inlinedAt: !255)
!255 = distinct !DILocation(line: 100, column: 25, scope: !111)
!256 = !DILocation(line: 0, scope: !147, inlinedAt: !255)
!257 = !DILocation(line: 11, column: 36, scope: !147, inlinedAt: !255)
!258 = !DILocation(line: 11, column: 48, scope: !147, inlinedAt: !255)
!259 = !DILocation(line: 11, column: 39, scope: !147, inlinedAt: !255)
!260 = !DILocation(line: 12, column: 19, scope: !147, inlinedAt: !255)
!261 = !DILocation(line: 16, column: 15, scope: !166, inlinedAt: !255)
!262 = !DILocation(line: 16, column: 23, scope: !165, inlinedAt: !255)
!263 = !DILocation(line: 25, column: 30, scope: !168, inlinedAt: !255)
!264 = !DILocation(line: 16, column: 3, scope: !166, inlinedAt: !255)
!265 = !DILocation(line: 0, scope: !164, inlinedAt: !255)
!266 = !DILocation(line: 18, column: 11, scope: !164, inlinedAt: !255)
!267 = !DILocation(line: 18, column: 21, scope: !164, inlinedAt: !255)
!268 = !DILocation(line: 16, column: 29, scope: !165, inlinedAt: !255)
!269 = distinct !{!269, !270}
!270 = !{!"llvm.loop.unroll.disable"}
!271 = distinct !{!271, !264, !272, !188}
!272 = !DILocation(line: 21, column: 3, scope: !166, inlinedAt: !255)
!273 = !DILocation(line: 0, scope: !168, inlinedAt: !255)
!274 = !DILocation(line: 25, column: 10, scope: !168, inlinedAt: !255)
!275 = !DILocation(line: 25, column: 26, scope: !168, inlinedAt: !255)
!276 = !DILocation(line: 25, column: 24, scope: !168, inlinedAt: !255)
!277 = !DILocation(line: 101, column: 58, scope: !111)
!278 = !DILocation(line: 101, column: 25, scope: !111)
!279 = !DILocation(line: 102, column: 26, scope: !111)
!280 = !DILocation(line: 103, column: 42, scope: !111)
!281 = !DILocation(line: 104, column: 30, scope: !111)
!282 = !DILocation(line: 104, column: 25, scope: !111)
!283 = !DILocation(line: 104, column: 18, scope: !111)
!284 = !DILocation(line: 105, column: 20, scope: !111)
!285 = !DILocation(line: 105, column: 33, scope: !111)
!286 = !DILocation(line: 105, column: 41, scope: !111)
!287 = !DILocation(line: 105, column: 50, scope: !111)
!288 = !DILocation(line: 105, column: 66, scope: !111)
!289 = !DILocation(line: 105, column: 61, scope: !111)
!290 = !DILocation(line: 105, column: 13, scope: !111)
!291 = !DILocation(line: 106, column: 44, scope: !111)
!292 = !DILocation(line: 106, column: 42, scope: !111)
!293 = !DILocation(line: 106, column: 17, scope: !111)
!294 = !DILocation(line: 108, column: 3, scope: !112)
!295 = !DILocation(line: 110, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 110, column: 5)
!297 = distinct !DILexicalBlock(scope: !112, file: !2, line: 109, column: 8)
!298 = !DILocation(line: 110, column: 5, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !2, line: 110, column: 5)
!300 = !DILocation(line: 0, scope: !107)
!301 = !DILocation(line: 112, column: 1, scope: !88)
!302 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305, !305, !28, !28}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!307 = !DISubprogram(name: "gsl_sf_bessel_J0_e", scope: !308, file: !308, line: 47, type: !89, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!309 = !DISubprogram(name: "log", scope: !310, file: !310, line: 104, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!310 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!311 = !DISubroutineType(types: !312)
!312 = !{!74, !74}
!313 = !DISubprogram(name: "gsl_sf_bessel_sin_pi4_e", scope: !314, file: !314, line: 92, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!315 = !DISubroutineType(types: !316)
!316 = !{!28, !74, !74, !92}
!317 = !DISubprogram(name: "sqrt", scope: !310, file: !310, line: 143, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = distinct !DISubprogram(name: "gsl_sf_bessel_Y0", scope: !2, file: !2, line: 119, type: !319, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !321)
!319 = !DISubroutineType(types: !320)
!320 = !{!74, !91}
!321 = !{!322, !323, !324}
!322 = !DILocalVariable(name: "x", arg: 1, scope: !318, file: !2, line: 119, type: !91)
!323 = !DILocalVariable(name: "result", scope: !318, file: !2, line: 121, type: !93)
!324 = !DILocalVariable(name: "status", scope: !318, file: !2, line: 121, type: !28)
!325 = distinct !DIAssignID()
!326 = !DILocation(line: 0, scope: !318)
!327 = !DILocation(line: 121, column: 3, scope: !318)
!328 = !DILocation(line: 121, column: 3, scope: !329)
!329 = distinct !DILexicalBlock(scope: !318, file: !2, line: 121, column: 3)
!330 = !DILocation(line: 121, column: 3, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 121, column: 3)
!332 = distinct !DILexicalBlock(scope: !329, file: !2, line: 121, column: 3)
!333 = !DILocation(line: 122, column: 1, scope: !318)
