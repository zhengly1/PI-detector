; ModuleID = 'beta.ll'
source_filename = "beta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"beta.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [31 x i8] c"gsl_sf_lnbeta_e(x, y, &result)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [29 x i8] c"gsl_sf_beta_e(x, y, &result)\00", align 1, !dbg !17

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lnbeta_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !72 {
  %4 = alloca double, align 8, !DIAssignID !90
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !90, metadata ptr %4, metadata !DIExpression()), !dbg !91
  tail call void @llvm.dbg.value(metadata double %0, metadata !85, metadata !DIExpression()), !dbg !91
  tail call void @llvm.dbg.value(metadata double %1, metadata !86, metadata !DIExpression()), !dbg !91
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !87, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6, !dbg !92
  %5 = call i32 @gsl_sf_lnbeta_sgn_e(double noundef %0, double noundef %1, ptr noundef %2, ptr noundef nonnull %4), !dbg !93
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !89, metadata !DIExpression()), !dbg !91
  %6 = load double, ptr %4, align 8, !dbg !94, !tbaa !96
  %7 = fcmp oeq double %6, -1.000000e+00, !dbg !100
  br i1 %7, label %8, label %10, !dbg !101

8:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !102, !tbaa !105
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !102
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !102, !tbaa !107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 1) #6, !dbg !108
  br label %10, !dbg !108

10:                                               ; preds = %8, %3
  %11 = phi i32 [ 1, %8 ], [ %5, %3 ], !dbg !91
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6, !dbg !110
  ret i32 %11, !dbg !110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_lnbeta_sgn_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !111 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !149
  call void @llvm.dbg.assign(metadata i1 undef, metadata !134, metadata !DIExpression(), metadata !149, metadata ptr %5, metadata !DIExpression()), !dbg !150
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !151
  call void @llvm.dbg.assign(metadata i1 undef, metadata !135, metadata !DIExpression(), metadata !151, metadata ptr %6, metadata !DIExpression()), !dbg !150
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !152
  call void @llvm.dbg.assign(metadata i1 undef, metadata !136, metadata !DIExpression(), metadata !152, metadata ptr %7, metadata !DIExpression()), !dbg !150
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !153
  call void @llvm.dbg.assign(metadata i1 undef, metadata !137, metadata !DIExpression(), metadata !153, metadata ptr %8, metadata !DIExpression()), !dbg !150
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !138, metadata !DIExpression(), metadata !154, metadata ptr %9, metadata !DIExpression()), !dbg !155
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !156
  call void @llvm.dbg.assign(metadata i1 undef, metadata !140, metadata !DIExpression(), metadata !156, metadata ptr %10, metadata !DIExpression()), !dbg !155
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !157
  call void @llvm.dbg.assign(metadata i1 undef, metadata !141, metadata !DIExpression(), metadata !157, metadata ptr %11, metadata !DIExpression()), !dbg !155
  %12 = alloca double, align 8, !DIAssignID !158
  call void @llvm.dbg.assign(metadata i1 undef, metadata !142, metadata !DIExpression(), metadata !158, metadata ptr %12, metadata !DIExpression()), !dbg !155
  %13 = alloca double, align 8, !DIAssignID !159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !143, metadata !DIExpression(), metadata !159, metadata ptr %13, metadata !DIExpression()), !dbg !155
  %14 = alloca double, align 8, !DIAssignID !160
  call void @llvm.dbg.assign(metadata i1 undef, metadata !144, metadata !DIExpression(), metadata !160, metadata ptr %14, metadata !DIExpression()), !dbg !155
  tail call void @llvm.dbg.value(metadata double %0, metadata !116, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata double %1, metadata !117, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !118, metadata !DIExpression()), !dbg !161
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !119, metadata !DIExpression()), !dbg !161
  %15 = fcmp oeq double %0, 0.000000e+00, !dbg !162
  %16 = fcmp oeq double %1, 0.000000e+00
  %17 = or i1 %15, %16, !dbg !164
  br i1 %17, label %18, label %20, !dbg !164

18:                                               ; preds = %4
  store double 0.000000e+00, ptr %3, align 8, !dbg !165, !tbaa !96
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !167, !tbaa !105
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !167
  store double 0x7FF8000000000000, ptr %19, align 8, !dbg !167, !tbaa !107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 56, i32 noundef 1) #6, !dbg !169
  br label %111, !dbg !169

20:                                               ; preds = %4
  call void @llvm.dbg.value(metadata double %0, metadata !171, metadata !DIExpression()), !dbg !176
  %21 = fcmp olt double %0, 0.000000e+00, !dbg !179
  %22 = tail call double @llvm.floor.f64(double %0)
  %23 = fcmp oeq double %22, %0
  %24 = and i1 %21, %23, !dbg !180
  br i1 %24, label %30, label %25, !dbg !180

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata double %1, metadata !171, metadata !DIExpression()), !dbg !181
  %26 = fcmp olt double %1, 0.000000e+00, !dbg !183
  %27 = tail call double @llvm.floor.f64(double %1)
  %28 = fcmp oeq double %27, %1
  %29 = and i1 %26, %28, !dbg !184
  br i1 %29, label %30, label %32, !dbg !184

30:                                               ; preds = %25, %20
  store double 0.000000e+00, ptr %3, align 8, !dbg !185, !tbaa !96
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !187, !tbaa !105
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !187
  store double 0x7FF8000000000000, ptr %31, align 8, !dbg !187, !tbaa !107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 59, i32 noundef 1) #6, !dbg !189
  br label %111, !dbg !189

32:                                               ; preds = %25
  %33 = fcmp ogt double %0, 0.000000e+00, !dbg !191
  %34 = fcmp ogt double %1, 0.000000e+00
  %35 = and i1 %33, %34, !dbg !192
  br i1 %35, label %36, label %82, !dbg !192

36:                                               ; preds = %32
  %37 = fcmp ogt double %0, %1, !dbg !193
  %38 = select i1 %37, double %0, double %1, !dbg !193
  tail call void @llvm.dbg.value(metadata double %38, metadata !120, metadata !DIExpression()), !dbg !194
  %39 = fcmp olt double %0, %1, !dbg !195
  %40 = select i1 %39, double %0, double %1, !dbg !195
  tail call void @llvm.dbg.value(metadata double %40, metadata !123, metadata !DIExpression()), !dbg !194
  %41 = fdiv double %40, %38, !dbg !196
  tail call void @llvm.dbg.value(metadata double %41, metadata !124, metadata !DIExpression()), !dbg !194
  %42 = fcmp olt double %41, 2.000000e-01, !dbg !197
  br i1 %42, label %43, label %82, !dbg !198

43:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !199
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !200
  %44 = call i32 @gsl_sf_gammastar_e(double noundef %0, ptr noundef nonnull %6) #6, !dbg !201
  %45 = call i32 @gsl_sf_gammastar_e(double noundef %1, ptr noundef nonnull %7) #6, !dbg !202
  %handler_result = call double @fAddHandlerDouble(double %0, double %1), !dbg !203
  %46 = call i32 @gsl_sf_gammastar_e(double noundef %handler_result, ptr noundef nonnull %8) #6, !dbg !203
  %47 = call i32 @gsl_sf_log_1plusx_e(double noundef %41, ptr noundef nonnull %5) #6, !dbg !204
  %48 = load double, ptr %6, align 8, !dbg !205, !tbaa !105
  %49 = load double, ptr %7, align 8, !dbg !206, !tbaa !105
  %50 = fmul double %48, %49, !dbg !207
  %51 = load double, ptr %8, align 8, !dbg !208, !tbaa !105
  %52 = fdiv double %50, %51, !dbg !209
  %53 = fmul double %52, 0x3FF6A09E667F3BCD, !dbg !210
  %54 = fmul double %53, 0x3FFC5BF891B4EF6B, !dbg !211
  %handler_result21 = call double @callHandler(i32 12, double %54, double %54), !dbg !212
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !125, metadata !DIExpression()), !dbg !150
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !212
  %56 = load double, ptr %55, align 8, !dbg !212, !tbaa !107
  %57 = load double, ptr %6, align 8, !dbg !213, !tbaa !105
  %58 = fdiv double %56, %57, !dbg !214
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !215
  %60 = load double, ptr %59, align 8, !dbg !215, !tbaa !107
  %61 = load double, ptr %7, align 8, !dbg !216, !tbaa !105
  %62 = fdiv double %60, %61, !dbg !217
  %handler_result1 = call double @fAddHandlerDouble(double %58, double %62), !dbg !218
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !218
  %64 = load double, ptr %63, align 8, !dbg !218, !tbaa !107
  %65 = load double, ptr %8, align 8, !dbg !219, !tbaa !105
  %66 = fdiv double %64, %65, !dbg !220
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %66), !dbg !221
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !128, metadata !DIExpression()), !dbg !150
  %handler_result22 = call double @callHandler(i32 12, double %41, double %41), !dbg !222
  %67 = fmul double %40, %handler_result22, !dbg !222
  tail call void @llvm.dbg.value(metadata double %67, metadata !131, metadata !DIExpression()), !dbg !150
  %handler_result23 = call double @callHandler(i32 12, double %40, double %40), !dbg !223
  %68 = fmul double %handler_result23, 5.000000e-01, !dbg !223
  tail call void @llvm.dbg.value(metadata double %68, metadata !132, metadata !DIExpression()), !dbg !150
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result, double -5.000000e-01), !dbg !224
  %69 = load double, ptr %5, align 8, !dbg !224, !tbaa !105
  %70 = fmul double %handler_result3, %69, !dbg !225
  tail call void @llvm.dbg.value(metadata double %70, metadata !133, metadata !DIExpression()), !dbg !150
  %handler_result4 = call double @fSubHandlerDouble(double %67, double %68), !dbg !226
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %70), !dbg !227
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !129, metadata !DIExpression()), !dbg !150
  %71 = call double @llvm.fabs.f64(double %67), !dbg !227
  %72 = call double @llvm.fabs.f64(double %68), !dbg !228
  %handler_result6 = call double @fAddHandlerDouble(double %71, double %72), !dbg !229
  %73 = call double @llvm.fabs.f64(double %70), !dbg !229
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %73), !dbg !230
  %74 = fmul double %handler_result7, 0x3CB0000000000000, !dbg !230
  tail call void @llvm.dbg.value(metadata double %74, metadata !130, metadata !DIExpression()), !dbg !150
  %75 = call double @llvm.fabs.f64(double %handler_result3), !dbg !231
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !232
  %77 = load double, ptr %76, align 8, !dbg !232, !tbaa !107
  %78 = fmul double %75, %77, !dbg !233
  %handler_result8 = call double @fAddHandlerDouble(double %78, double %74), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !130, metadata !DIExpression()), !dbg !150
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result21, double %handler_result5), !dbg !235
  store double %handler_result9, ptr %2, align 8, !dbg !235, !tbaa !105
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result2, double %handler_result8), !dbg !236
  %79 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !236
  %80 = call double @llvm.fabs.f64(double %handler_result9), !dbg !237
  %81 = fmul double %80, 0x3CC0000000000000, !dbg !238
  %handler_result11 = call double @fAddHandlerDouble(double %81, double %handler_result10), !dbg !239
  store double %handler_result11, ptr %79, align 8, !dbg !239, !tbaa !107
  store double 1.000000e+00, ptr %3, align 8, !dbg !240, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !241
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !241
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !241
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !241
  br label %111

82:                                               ; preds = %36, %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !242
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !242
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6, !dbg !242
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6, !dbg !243
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #6, !dbg !243
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #6, !dbg !243
  %handler_result12 = call double @fAddHandlerDouble(double %0, double %1), !dbg !244
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !145, metadata !DIExpression()), !dbg !155
  %83 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %12) #6, !dbg !244
  tail call void @llvm.dbg.value(metadata i32 %83, metadata !146, metadata !DIExpression()), !dbg !155
  %84 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %13) #6, !dbg !245
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !147, metadata !DIExpression()), !dbg !155
  %85 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result12, ptr noundef nonnull %11, ptr noundef nonnull %14) #6, !dbg !246
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !148, metadata !DIExpression()), !dbg !155
  %86 = load double, ptr %12, align 8, !dbg !247, !tbaa !96
  %87 = load double, ptr %13, align 8, !dbg !248, !tbaa !96
  %88 = fmul double %86, %87, !dbg !249
  %89 = load double, ptr %14, align 8, !dbg !250, !tbaa !96
  %90 = fmul double %88, %89, !dbg !251
  store double %90, ptr %3, align 8, !dbg !252, !tbaa !96
  %91 = load double, ptr %9, align 8, !dbg !253, !tbaa !105
  %92 = load double, ptr %10, align 8, !dbg !254, !tbaa !105
  %handler_result13 = call double @fAddHandlerDouble(double %91, double %92), !dbg !255
  %93 = load double, ptr %11, align 8, !dbg !255, !tbaa !105
  %handler_result14 = call double @fSubHandlerDouble(double %handler_result13, double %93), !dbg !256
  store double %handler_result14, ptr %2, align 8, !dbg !256, !tbaa !105
  %94 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !257
  %95 = load double, ptr %94, align 8, !dbg !257, !tbaa !107
  %96 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !258
  %97 = load double, ptr %96, align 8, !dbg !258, !tbaa !107
  %handler_result15 = call double @fAddHandlerDouble(double %95, double %97), !dbg !259
  %98 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !259
  %99 = load double, ptr %98, align 8, !dbg !259, !tbaa !107
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double %99), !dbg !260
  %100 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !260
  %101 = call double @llvm.fabs.f64(double %91), !dbg !261
  %102 = call double @llvm.fabs.f64(double %92), !dbg !262
  %handler_result17 = call double @fAddHandlerDouble(double %101, double %102), !dbg !263
  %103 = call double @llvm.fabs.f64(double %93), !dbg !263
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %103), !dbg !264
  %104 = fmul double %handler_result18, 0x3CC0000000000000, !dbg !264
  %handler_result19 = call double @fAddHandlerDouble(double %104, double %handler_result16), !dbg !265
  %105 = call double @llvm.fabs.f64(double %handler_result14), !dbg !265
  %106 = fmul double %105, 0x3CC0000000000000, !dbg !266
  %handler_result20 = call double @fAddHandlerDouble(double %106, double %handler_result19), !dbg !267
  store double %handler_result20, ptr %100, align 8, !dbg !267, !tbaa !107
  %107 = icmp eq i32 %83, 0, !dbg !268
  %108 = icmp eq i32 %84, 0, !dbg !268
  %109 = select i1 %108, i32 %85, i32 %84, !dbg !268
  %110 = select i1 %107, i32 %109, i32 %83, !dbg !268
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #6, !dbg !269
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #6, !dbg !269
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6, !dbg !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !269
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !269
  br label %111

111:                                              ; preds = %82, %43, %30, %18
  %112 = phi i32 [ 1, %18 ], [ 1, %30 ], [ 0, %43 ], [ %110, %82 ], !dbg !161
  ret i32 %112, !dbg !270
}

declare !dbg !271 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !276 i32 @gsl_sf_gammastar_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !280 i32 @gsl_sf_log_1plusx_e(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !282 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare !dbg !286 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_beta_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !289 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !308
  call void @llvm.dbg.assign(metadata i1 undef, metadata !294, metadata !DIExpression(), metadata !308, metadata ptr %4, metadata !DIExpression()), !dbg !309
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !310
  call void @llvm.dbg.assign(metadata i1 undef, metadata !297, metadata !DIExpression(), metadata !310, metadata ptr %5, metadata !DIExpression()), !dbg !309
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !311
  call void @llvm.dbg.assign(metadata i1 undef, metadata !298, metadata !DIExpression(), metadata !311, metadata ptr %6, metadata !DIExpression()), !dbg !309
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !312
  call void @llvm.dbg.assign(metadata i1 undef, metadata !299, metadata !DIExpression(), metadata !312, metadata ptr %7, metadata !DIExpression()), !dbg !313
  %8 = alloca double, align 8, !DIAssignID !314
  call void @llvm.dbg.assign(metadata i1 undef, metadata !303, metadata !DIExpression(), metadata !314, metadata ptr %8, metadata !DIExpression()), !dbg !313
  tail call void @llvm.dbg.value(metadata double %0, metadata !291, metadata !DIExpression()), !dbg !315
  tail call void @llvm.dbg.value(metadata double %1, metadata !292, metadata !DIExpression()), !dbg !315
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !293, metadata !DIExpression()), !dbg !315
  %9 = fcmp ogt double %0, 0.000000e+00, !dbg !316
  %10 = fcmp ogt double %1, 0.000000e+00
  %11 = and i1 %9, %10, !dbg !317
  %12 = fcmp olt double %0, 5.000000e+01
  %13 = and i1 %12, %11, !dbg !317
  %14 = fcmp olt double %1, 5.000000e+01
  %15 = and i1 %14, %13, !dbg !317
  br i1 %15, label %16, label %44, !dbg !317

16:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !318
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !318
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !318
  %17 = call i32 @gsl_sf_gamma_e(double noundef %0, ptr noundef nonnull %4) #6, !dbg !319
  %18 = call i32 @gsl_sf_gamma_e(double noundef %1, ptr noundef nonnull %5) #6, !dbg !320
  %handler_result = call double @fAddHandlerDouble(double %0, double %1), !dbg !321
  %19 = call i32 @gsl_sf_gamma_e(double noundef %handler_result, ptr noundef nonnull %6) #6, !dbg !321
  %20 = load double, ptr %4, align 8, !dbg !322, !tbaa !105
  %21 = load double, ptr %5, align 8, !dbg !323, !tbaa !105
  %22 = fmul double %20, %21, !dbg !324
  %23 = load double, ptr %6, align 8, !dbg !325, !tbaa !105
  %24 = fdiv double %22, %23, !dbg !326
  store double %24, ptr %2, align 8, !dbg !327, !tbaa !105
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !328
  %26 = load double, ptr %25, align 8, !dbg !328, !tbaa !107
  %27 = fdiv double %21, %23, !dbg !329
  %28 = call double @llvm.fabs.f64(double %27), !dbg !330
  %29 = fmul double %26, %28, !dbg !331
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !332
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !333
  %32 = load double, ptr %31, align 8, !dbg !333, !tbaa !107
  %33 = fdiv double %20, %23, !dbg !334
  %34 = call double @llvm.fabs.f64(double %33), !dbg !335
  %35 = fmul double %34, %32, !dbg !336
  %handler_result1 = call double @fAddHandlerDouble(double %29, double %35), !dbg !337
  %36 = fmul double %23, %23, !dbg !337
  %37 = fdiv double %22, %36, !dbg !338
  %38 = call double @llvm.fabs.f64(double %37), !dbg !339
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !340
  %40 = load double, ptr %39, align 8, !dbg !340, !tbaa !107
  %41 = fmul double %38, %40, !dbg !341
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %41), !dbg !342
  %42 = call double @llvm.fabs.f64(double %24), !dbg !342
  %43 = fmul double %42, 0x3CC0000000000000, !dbg !343
  %handler_result3 = call double @fAddHandlerDouble(double %43, double %handler_result2), !dbg !344
  store double %handler_result3, ptr %30, align 8, !dbg !344, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !345
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !345
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !345
  br label %78

44:                                               ; preds = %3
  call void @llvm.dbg.value(metadata double %0, metadata !171, metadata !DIExpression()), !dbg !346
  %45 = fcmp olt double %0, 0.000000e+00, !dbg !348
  %46 = tail call double @llvm.floor.f64(double %0)
  %47 = fcmp oeq double %46, %0
  %48 = and i1 %45, %47, !dbg !349
  br i1 %48, label %54, label %49, !dbg !349

49:                                               ; preds = %44
  call void @llvm.dbg.value(metadata double %1, metadata !171, metadata !DIExpression()), !dbg !350
  %50 = fcmp olt double %1, 0.000000e+00, !dbg !352
  %51 = tail call double @llvm.floor.f64(double %1)
  %52 = fcmp oeq double %51, %1
  %53 = and i1 %50, %52, !dbg !353
  br i1 %53, label %54, label %56, !dbg !353

54:                                               ; preds = %49, %44
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !354, !tbaa !105
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !354
  store double 0x7FF8000000000000, ptr %55, align 8, !dbg !354, !tbaa !107
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 134, i32 noundef 1) #6, !dbg !357
  br label %78, !dbg !357

56:                                               ; preds = %49
  %handler_result4 = call double @fAddHandlerDouble(double %0, double %1), !dbg !359
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !171, metadata !DIExpression()), !dbg !361
  %57 = fcmp olt double %handler_result4, 0.000000e+00, !dbg !359
  %58 = tail call double @llvm.floor.f64(double %handler_result4)
  %59 = fcmp oeq double %58, %handler_result4
  %60 = and i1 %57, %59, !dbg !362
  br i1 %60, label %61, label %62, !dbg !362

61:                                               ; preds = %56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !dbg !363
  br label %78, !dbg !365

62:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !366
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #6, !dbg !367
  %63 = call i32 @gsl_sf_lnbeta_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !368
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !304, metadata !DIExpression()), !dbg !313
  %64 = icmp eq i32 %63, 0, !dbg !369
  br i1 %64, label %65, label %73, !dbg !370

65:                                               ; preds = %62
  %66 = load double, ptr %7, align 8, !dbg !371, !tbaa !105
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !372
  %68 = load double, ptr %67, align 8, !dbg !372, !tbaa !107
  %69 = tail call i32 @gsl_sf_exp_err_e(double noundef %66, double noundef %68, ptr noundef %2) #6, !dbg !373
  tail call void @llvm.dbg.value(metadata i32 %69, metadata !305, metadata !DIExpression()), !dbg !374
  %70 = load double, ptr %8, align 8, !dbg !375, !tbaa !96
  %71 = load double, ptr %2, align 8, !dbg !376, !tbaa !105
  %72 = fmul double %70, %71, !dbg !376
  br label %75

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !377
  store double 0.000000e+00, ptr %74, align 8, !dbg !379, !tbaa !107
  br label %75, !dbg !380

75:                                               ; preds = %73, %65
  %76 = phi double [ %72, %65 ], [ 0.000000e+00, %73 ], !dbg !381
  %77 = phi i32 [ %69, %65 ], [ %63, %73 ], !dbg !381
  store double %76, ptr %2, align 8, !dbg !381
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #6, !dbg !382
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !382
  br label %78

78:                                               ; preds = %75, %61, %54, %16
  %79 = phi i32 [ 0, %16 ], [ 1, %54 ], [ 0, %61 ], [ %77, %75 ], !dbg !383
  ret i32 %79, !dbg !384
}

declare !dbg !385 i32 @gsl_sf_gamma_e(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !386 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_lnbeta(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !388 {
  %3 = alloca double, align 8, !DIAssignID !396
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !394, metadata !DIExpression(), metadata !397, metadata ptr %4, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double %0, metadata !392, metadata !DIExpression()), !dbg !398
  tail call void @llvm.dbg.value(metadata double %1, metadata !393, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !399
  call void @llvm.dbg.assign(metadata i1 undef, metadata !88, metadata !DIExpression(), metadata !396, metadata ptr %3, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %0, metadata !85, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata double %1, metadata !86, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.value(metadata ptr %4, metadata !87, metadata !DIExpression()), !dbg !400
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #6, !dbg !402
  %5 = call i32 @gsl_sf_lnbeta_sgn_e(double noundef %0, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %3), !dbg !403
  call void @llvm.dbg.value(metadata i32 %5, metadata !89, metadata !DIExpression()), !dbg !400
  %6 = load double, ptr %3, align 8, !dbg !404, !tbaa !96
  %7 = fcmp oeq double %6, -1.000000e+00, !dbg !405
  br i1 %7, label %8, label %9, !dbg !406

8:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %4, align 8, !dbg !407, !tbaa !105, !DIAssignID !408
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !408, metadata ptr %4, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !394, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !409, metadata ptr %4, metadata !DIExpression(DW_OP_plus_uconst, 8)), !dbg !398
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 44, i32 noundef 1) #6, !dbg !410
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6, !dbg !411
  tail call void @llvm.dbg.value(metadata i32 1, metadata !395, metadata !DIExpression()), !dbg !398
  br label %11, !dbg !399

9:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #6, !dbg !411
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !395, metadata !DIExpression()), !dbg !398
  %10 = icmp eq i32 %5, 0, !dbg !412
  br i1 %10, label %13, label %11, !dbg !399

11:                                               ; preds = %9, %8
  %12 = phi i32 [ 1, %8 ], [ %5, %9 ]
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 163, i32 noundef %12) #6, !dbg !414
  br label %13, !dbg !414

13:                                               ; preds = %11, %9
  %14 = load double, ptr %4, align 8, !dbg !399, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !417
  ret double %14, !dbg !417
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_beta(double noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !418 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !422, metadata !DIExpression(), metadata !424, metadata ptr %3, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double %0, metadata !420, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata double %1, metadata !421, metadata !DIExpression()), !dbg !425
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !426
  %4 = call i32 @gsl_sf_beta_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !426
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !423, metadata !DIExpression()), !dbg !425
  %5 = icmp eq i32 %4, 0, !dbg !427
  br i1 %5, label %7, label %6, !dbg !426

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 168, i32 noundef %4) #6, !dbg !429
  br label %7, !dbg !429

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !426, !tbaa !105
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !432
  ret double %8, !dbg !432
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!22}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "beta.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "02cc7358e457e8e6e50f5a7461c75053")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 163, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 31)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 168, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 29)
!22 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !23, globals: !63, splitDebugInlining: false, nameTableKind: None)
!23 = !{!24}
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 39, baseType: !26, size: 32, elements: !27)
!25 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!28 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!29 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!30 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!31 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!32 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!33 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!34 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!35 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!36 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!37 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!38 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!39 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!40 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!41 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!42 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!43 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!44 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!45 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!46 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!47 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!48 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!49 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!50 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!51 = !DIEnumerator(name: "GSL_ESING", value: 21)
!52 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!53 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!54 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!55 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!56 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!57 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!58 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!59 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!60 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!61 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!62 = !DIEnumerator(name: "GSL_EOF", value: 32)
!63 = !{!0, !7, !12, !17}
!64 = !{i32 7, !"Dwarf Version", i32 5}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{i32 8, !"PIC Level", i32 2}
!68 = !{i32 7, !"PIE Level", i32 2}
!69 = !{i32 7, !"uwtable", i32 2}
!70 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!71 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!72 = distinct !DISubprogram(name: "gsl_sf_lnbeta_e", scope: !2, file: !2, line: 39, type: !73, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !84)
!73 = !DISubroutineType(types: !74)
!74 = !{!26, !75, !75, !77}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !79, line: 41, baseType: !80)
!79 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !79, line: 37, size: 128, elements: !81)
!81 = !{!82, !83}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !80, file: !79, line: 38, baseType: !76, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !80, file: !79, line: 39, baseType: !76, size: 64, offset: 64)
!84 = !{!85, !86, !87, !88, !89}
!85 = !DILocalVariable(name: "x", arg: 1, scope: !72, file: !2, line: 39, type: !75)
!86 = !DILocalVariable(name: "y", arg: 2, scope: !72, file: !2, line: 39, type: !75)
!87 = !DILocalVariable(name: "result", arg: 3, scope: !72, file: !2, line: 39, type: !77)
!88 = !DILocalVariable(name: "sgn", scope: !72, file: !2, line: 41, type: !76)
!89 = !DILocalVariable(name: "status", scope: !72, file: !2, line: 42, type: !26)
!90 = distinct !DIAssignID()
!91 = !DILocation(line: 0, scope: !72)
!92 = !DILocation(line: 41, column: 3, scope: !72)
!93 = !DILocation(line: 42, column: 16, scope: !72)
!94 = !DILocation(line: 43, column: 7, scope: !95)
!95 = distinct !DILexicalBlock(scope: !72, file: !2, line: 43, column: 7)
!96 = !{!97, !97, i64 0}
!97 = !{!"double", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !DILocation(line: 43, column: 11, scope: !95)
!101 = !DILocation(line: 43, column: 7, scope: !72)
!102 = !DILocation(line: 44, column: 5, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 44, column: 5)
!104 = distinct !DILexicalBlock(scope: !95, file: !2, line: 43, column: 18)
!105 = !{!106, !97, i64 0}
!106 = !{!"gsl_sf_result_struct", !97, i64 0, !97, i64 8}
!107 = !{!106, !97, i64 8}
!108 = !DILocation(line: 44, column: 5, scope: !109)
!109 = distinct !DILexicalBlock(scope: !103, file: !2, line: 44, column: 5)
!110 = !DILocation(line: 47, column: 1, scope: !72)
!111 = distinct !DISubprogram(name: "gsl_sf_lnbeta_sgn_e", scope: !2, file: !2, line: 50, type: !112, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !115)
!112 = !DISubroutineType(types: !113)
!113 = !{!26, !75, !75, !77, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!115 = !{!116, !117, !118, !119, !120, !123, !124, !125, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!116 = !DILocalVariable(name: "x", arg: 1, scope: !111, file: !2, line: 50, type: !75)
!117 = !DILocalVariable(name: "y", arg: 2, scope: !111, file: !2, line: 50, type: !75)
!118 = !DILocalVariable(name: "result", arg: 3, scope: !111, file: !2, line: 50, type: !77)
!119 = !DILocalVariable(name: "sgn", arg: 4, scope: !111, file: !2, line: 50, type: !114)
!120 = !DILocalVariable(name: "max", scope: !121, file: !2, line: 65, type: !75)
!121 = distinct !DILexicalBlock(scope: !122, file: !2, line: 64, column: 23)
!122 = distinct !DILexicalBlock(scope: !111, file: !2, line: 64, column: 7)
!123 = !DILocalVariable(name: "min", scope: !121, file: !2, line: 66, type: !75)
!124 = !DILocalVariable(name: "rat", scope: !121, file: !2, line: 67, type: !75)
!125 = !DILocalVariable(name: "lnpre_val", scope: !126, file: !2, line: 73, type: !76)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 69, column: 19)
!127 = distinct !DILexicalBlock(scope: !121, file: !2, line: 69, column: 8)
!128 = !DILocalVariable(name: "lnpre_err", scope: !126, file: !2, line: 74, type: !76)
!129 = !DILocalVariable(name: "lnpow_val", scope: !126, file: !2, line: 75, type: !76)
!130 = !DILocalVariable(name: "lnpow_err", scope: !126, file: !2, line: 76, type: !76)
!131 = !DILocalVariable(name: "t1", scope: !126, file: !2, line: 77, type: !76)
!132 = !DILocalVariable(name: "t2", scope: !126, file: !2, line: 77, type: !76)
!133 = !DILocalVariable(name: "t3", scope: !126, file: !2, line: 77, type: !76)
!134 = !DILocalVariable(name: "lnopr", scope: !126, file: !2, line: 78, type: !78)
!135 = !DILocalVariable(name: "gsx", scope: !126, file: !2, line: 79, type: !78)
!136 = !DILocalVariable(name: "gsy", scope: !126, file: !2, line: 79, type: !78)
!137 = !DILocalVariable(name: "gsxy", scope: !126, file: !2, line: 79, type: !78)
!138 = !DILocalVariable(name: "lgx", scope: !139, file: !2, line: 102, type: !78)
!139 = distinct !DILexicalBlock(scope: !111, file: !2, line: 101, column: 3)
!140 = !DILocalVariable(name: "lgy", scope: !139, file: !2, line: 102, type: !78)
!141 = !DILocalVariable(name: "lgxy", scope: !139, file: !2, line: 102, type: !78)
!142 = !DILocalVariable(name: "sgx", scope: !139, file: !2, line: 103, type: !76)
!143 = !DILocalVariable(name: "sgy", scope: !139, file: !2, line: 103, type: !76)
!144 = !DILocalVariable(name: "sgxy", scope: !139, file: !2, line: 103, type: !76)
!145 = !DILocalVariable(name: "xy", scope: !139, file: !2, line: 103, type: !76)
!146 = !DILocalVariable(name: "stat_gx", scope: !139, file: !2, line: 104, type: !26)
!147 = !DILocalVariable(name: "stat_gy", scope: !139, file: !2, line: 105, type: !26)
!148 = !DILocalVariable(name: "stat_gxy", scope: !139, file: !2, line: 106, type: !26)
!149 = distinct !DIAssignID()
!150 = !DILocation(line: 0, scope: !126)
!151 = distinct !DIAssignID()
!152 = distinct !DIAssignID()
!153 = distinct !DIAssignID()
!154 = distinct !DIAssignID()
!155 = !DILocation(line: 0, scope: !139)
!156 = distinct !DIAssignID()
!157 = distinct !DIAssignID()
!158 = distinct !DIAssignID()
!159 = distinct !DIAssignID()
!160 = distinct !DIAssignID()
!161 = !DILocation(line: 0, scope: !111)
!162 = !DILocation(line: 54, column: 8, scope: !163)
!163 = distinct !DILexicalBlock(scope: !111, file: !2, line: 54, column: 6)
!164 = !DILocation(line: 54, column: 15, scope: !163)
!165 = !DILocation(line: 55, column: 10, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !2, line: 54, column: 28)
!167 = !DILocation(line: 56, column: 5, scope: !168)
!168 = distinct !DILexicalBlock(scope: !166, file: !2, line: 56, column: 5)
!169 = !DILocation(line: 56, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !168, file: !2, line: 56, column: 5)
!171 = !DILocalVariable(name: "x", arg: 1, scope: !172, file: !2, line: 33, type: !75)
!172 = distinct !DISubprogram(name: "isnegint", scope: !2, file: !2, line: 33, type: !173, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !175)
!173 = !DISubroutineType(types: !174)
!174 = !{!76, !75}
!175 = !{!171}
!176 = !DILocation(line: 0, scope: !172, inlinedAt: !177)
!177 = distinct !DILocation(line: 57, column: 14, scope: !178)
!178 = distinct !DILexicalBlock(scope: !163, file: !2, line: 57, column: 14)
!179 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !177)
!180 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !177)
!181 = !DILocation(line: 0, scope: !172, inlinedAt: !182)
!182 = distinct !DILocation(line: 57, column: 29, scope: !178)
!183 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !182)
!184 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !182)
!185 = !DILocation(line: 58, column: 10, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !2, line: 57, column: 42)
!187 = !DILocation(line: 59, column: 5, scope: !188)
!188 = distinct !DILexicalBlock(scope: !186, file: !2, line: 59, column: 5)
!189 = !DILocation(line: 59, column: 5, scope: !190)
!190 = distinct !DILexicalBlock(scope: !188, file: !2, line: 59, column: 5)
!191 = !DILocation(line: 64, column: 9, scope: !122)
!192 = !DILocation(line: 64, column: 13, scope: !122)
!193 = !DILocation(line: 65, column: 24, scope: !121)
!194 = !DILocation(line: 0, scope: !121)
!195 = !DILocation(line: 66, column: 24, scope: !121)
!196 = !DILocation(line: 67, column: 27, scope: !121)
!197 = !DILocation(line: 69, column: 12, scope: !127)
!198 = !DILocation(line: 69, column: 8, scope: !121)
!199 = !DILocation(line: 78, column: 7, scope: !126)
!200 = !DILocation(line: 79, column: 7, scope: !126)
!201 = !DILocation(line: 80, column: 7, scope: !126)
!202 = !DILocation(line: 81, column: 7, scope: !126)
!203 = !DILocation(line: 82, column: 7, scope: !126)
!204 = !DILocation(line: 83, column: 7, scope: !126)
!205 = !DILocation(line: 84, column: 27, scope: !126)
!206 = !DILocation(line: 84, column: 35, scope: !126)
!207 = !DILocation(line: 84, column: 30, scope: !126)
!208 = !DILocation(line: 84, column: 44, scope: !126)
!209 = !DILocation(line: 84, column: 38, scope: !126)
!210 = !DILocation(line: 84, column: 48, scope: !126)
!211 = !DILocation(line: 84, column: 57, scope: !126)
!212 = !DILocation(line: 85, column: 23, scope: !126)
!213 = !DILocation(line: 85, column: 31, scope: !126)
!214 = !DILocation(line: 85, column: 26, scope: !126)
!215 = !DILocation(line: 85, column: 41, scope: !126)
!216 = !DILocation(line: 85, column: 49, scope: !126)
!217 = !DILocation(line: 85, column: 44, scope: !126)
!218 = !DILocation(line: 85, column: 60, scope: !126)
!219 = !DILocation(line: 85, column: 69, scope: !126)
!220 = !DILocation(line: 85, column: 63, scope: !126)
!221 = !DILocation(line: 86, column: 16, scope: !126)
!222 = !DILocation(line: 86, column: 15, scope: !126)
!223 = !DILocation(line: 87, column: 15, scope: !126)
!224 = !DILocation(line: 88, column: 28, scope: !126)
!225 = !DILocation(line: 88, column: 21, scope: !126)
!226 = !DILocation(line: 89, column: 28, scope: !126)
!227 = !DILocation(line: 90, column: 39, scope: !126)
!228 = !DILocation(line: 90, column: 50, scope: !126)
!229 = !DILocation(line: 90, column: 61, scope: !126)
!230 = !DILocation(line: 90, column: 36, scope: !126)
!231 = !DILocation(line: 91, column: 20, scope: !126)
!232 = !DILocation(line: 91, column: 42, scope: !126)
!233 = !DILocation(line: 91, column: 34, scope: !126)
!234 = !DILocation(line: 92, column: 32, scope: !126)
!235 = !DILocation(line: 92, column: 20, scope: !126)
!236 = !DILocation(line: 93, column: 15, scope: !126)
!237 = !DILocation(line: 94, column: 46, scope: !126)
!238 = !DILocation(line: 94, column: 44, scope: !126)
!239 = !DILocation(line: 94, column: 19, scope: !126)
!240 = !DILocation(line: 95, column: 12, scope: !126)
!241 = !DILocation(line: 97, column: 5, scope: !127)
!242 = !DILocation(line: 102, column: 5, scope: !139)
!243 = !DILocation(line: 103, column: 5, scope: !139)
!244 = !DILocation(line: 104, column: 20, scope: !139)
!245 = !DILocation(line: 105, column: 20, scope: !139)
!246 = !DILocation(line: 106, column: 20, scope: !139)
!247 = !DILocation(line: 107, column: 12, scope: !139)
!248 = !DILocation(line: 107, column: 18, scope: !139)
!249 = !DILocation(line: 107, column: 16, scope: !139)
!250 = !DILocation(line: 107, column: 24, scope: !139)
!251 = !DILocation(line: 107, column: 22, scope: !139)
!252 = !DILocation(line: 107, column: 10, scope: !139)
!253 = !DILocation(line: 108, column: 24, scope: !139)
!254 = !DILocation(line: 108, column: 34, scope: !139)
!255 = !DILocation(line: 108, column: 45, scope: !139)
!256 = !DILocation(line: 108, column: 18, scope: !139)
!257 = !DILocation(line: 109, column: 24, scope: !139)
!258 = !DILocation(line: 109, column: 34, scope: !139)
!259 = !DILocation(line: 109, column: 45, scope: !139)
!260 = !DILocation(line: 109, column: 13, scope: !139)
!261 = !DILocation(line: 110, column: 45, scope: !139)
!262 = !DILocation(line: 110, column: 61, scope: !139)
!263 = !DILocation(line: 110, column: 77, scope: !139)
!264 = !DILocation(line: 110, column: 42, scope: !139)
!265 = !DILocation(line: 111, column: 44, scope: !139)
!266 = !DILocation(line: 111, column: 42, scope: !139)
!267 = !DILocation(line: 111, column: 17, scope: !139)
!268 = !DILocation(line: 112, column: 12, scope: !139)
!269 = !DILocation(line: 113, column: 3, scope: !111)
!270 = !DILocation(line: 114, column: 1, scope: !111)
!271 = !DISubprogram(name: "gsl_error", scope: !25, file: !25, line: 77, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !274, !274, !26, !26}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!276 = !DISubprogram(name: "gsl_sf_gammastar_e", scope: !277, file: !277, line: 77, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!278 = !DISubroutineType(types: !279)
!279 = !{!26, !75, !77}
!280 = !DISubprogram(name: "gsl_sf_log_1plusx_e", scope: !281, file: !281, line: 69, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DIFile(filename: "../gsl/gsl_sf_log.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f56b795d5c89d6a7f7c2549105288199")
!282 = !DISubprogram(name: "log", scope: !283, file: !283, line: 104, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!284 = !DISubroutineType(types: !285)
!285 = !{!76, !76}
!286 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !277, file: !277, line: 58, type: !287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!287 = !DISubroutineType(types: !288)
!288 = !{!26, !76, !77, !114}
!289 = distinct !DISubprogram(name: "gsl_sf_beta_e", scope: !2, file: !2, line: 118, type: !73, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !290)
!290 = !{!291, !292, !293, !294, !297, !298, !299, !303, !304, !305}
!291 = !DILocalVariable(name: "x", arg: 1, scope: !289, file: !2, line: 118, type: !75)
!292 = !DILocalVariable(name: "y", arg: 2, scope: !289, file: !2, line: 118, type: !75)
!293 = !DILocalVariable(name: "result", arg: 3, scope: !289, file: !2, line: 118, type: !77)
!294 = !DILocalVariable(name: "gx", scope: !295, file: !2, line: 122, type: !78)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 120, column: 48)
!296 = distinct !DILexicalBlock(scope: !289, file: !2, line: 120, column: 6)
!297 = !DILocalVariable(name: "gy", scope: !295, file: !2, line: 122, type: !78)
!298 = !DILocalVariable(name: "gxy", scope: !295, file: !2, line: 122, type: !78)
!299 = !DILocalVariable(name: "lb", scope: !300, file: !2, line: 140, type: !78)
!300 = distinct !DILexicalBlock(scope: !301, file: !2, line: 139, column: 10)
!301 = distinct !DILexicalBlock(scope: !302, file: !2, line: 135, column: 14)
!302 = distinct !DILexicalBlock(scope: !296, file: !2, line: 133, column: 12)
!303 = !DILocalVariable(name: "sgn", scope: !300, file: !2, line: 141, type: !76)
!304 = !DILocalVariable(name: "stat_lb", scope: !300, file: !2, line: 142, type: !26)
!305 = !DILocalVariable(name: "status", scope: !306, file: !2, line: 144, type: !26)
!306 = distinct !DILexicalBlock(scope: !307, file: !2, line: 143, column: 32)
!307 = distinct !DILexicalBlock(scope: !300, file: !2, line: 143, column: 8)
!308 = distinct !DIAssignID()
!309 = !DILocation(line: 0, scope: !295)
!310 = distinct !DIAssignID()
!311 = distinct !DIAssignID()
!312 = distinct !DIAssignID()
!313 = !DILocation(line: 0, scope: !300)
!314 = distinct !DIAssignID()
!315 = !DILocation(line: 0, scope: !289)
!316 = !DILocation(line: 120, column: 9, scope: !296)
!317 = !DILocation(line: 120, column: 13, scope: !296)
!318 = !DILocation(line: 122, column: 5, scope: !295)
!319 = !DILocation(line: 123, column: 5, scope: !295)
!320 = !DILocation(line: 124, column: 5, scope: !295)
!321 = !DILocation(line: 125, column: 5, scope: !295)
!322 = !DILocation(line: 126, column: 24, scope: !295)
!323 = !DILocation(line: 126, column: 31, scope: !295)
!324 = !DILocation(line: 126, column: 27, scope: !295)
!325 = !DILocation(line: 126, column: 40, scope: !295)
!326 = !DILocation(line: 126, column: 35, scope: !295)
!327 = !DILocation(line: 126, column: 18, scope: !295)
!328 = !DILocation(line: 127, column: 23, scope: !295)
!329 = !DILocation(line: 127, column: 40, scope: !295)
!330 = !DILocation(line: 127, column: 29, scope: !295)
!331 = !DILocation(line: 127, column: 27, scope: !295)
!332 = !DILocation(line: 127, column: 13, scope: !295)
!333 = !DILocation(line: 128, column: 23, scope: !295)
!334 = !DILocation(line: 128, column: 40, scope: !295)
!335 = !DILocation(line: 128, column: 29, scope: !295)
!336 = !DILocation(line: 128, column: 27, scope: !295)
!337 = !DILocation(line: 129, column: 49, scope: !295)
!338 = !DILocation(line: 129, column: 40, scope: !295)
!339 = !DILocation(line: 129, column: 20, scope: !295)
!340 = !DILocation(line: 129, column: 66, scope: !295)
!341 = !DILocation(line: 129, column: 60, scope: !295)
!342 = !DILocation(line: 130, column: 44, scope: !295)
!343 = !DILocation(line: 130, column: 42, scope: !295)
!344 = !DILocation(line: 130, column: 17, scope: !295)
!345 = !DILocation(line: 132, column: 3, scope: !296)
!346 = !DILocation(line: 0, scope: !172, inlinedAt: !347)
!347 = distinct !DILocation(line: 133, column: 12, scope: !302)
!348 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !347)
!349 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !347)
!350 = !DILocation(line: 0, scope: !172, inlinedAt: !351)
!351 = distinct !DILocation(line: 133, column: 27, scope: !302)
!352 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !351)
!353 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !351)
!354 = !DILocation(line: 134, column: 5, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 134, column: 5)
!356 = distinct !DILexicalBlock(scope: !302, file: !2, line: 133, column: 40)
!357 = !DILocation(line: 134, column: 5, scope: !358)
!358 = distinct !DILexicalBlock(scope: !355, file: !2, line: 134, column: 5)
!359 = !DILocation(line: 35, column: 13, scope: !172, inlinedAt: !360)
!360 = distinct !DILocation(line: 135, column: 14, scope: !301)
!361 = !DILocation(line: 0, scope: !172, inlinedAt: !360)
!362 = !DILocation(line: 35, column: 18, scope: !172, inlinedAt: !360)
!363 = !DILocation(line: 137, column: 17, scope: !364)
!364 = distinct !DILexicalBlock(scope: !301, file: !2, line: 135, column: 29)
!365 = !DILocation(line: 138, column: 5, scope: !364)
!366 = !DILocation(line: 140, column: 5, scope: !300)
!367 = !DILocation(line: 141, column: 5, scope: !300)
!368 = !DILocation(line: 142, column: 19, scope: !300)
!369 = !DILocation(line: 143, column: 16, scope: !307)
!370 = !DILocation(line: 143, column: 8, scope: !300)
!371 = !DILocation(line: 144, column: 40, scope: !306)
!372 = !DILocation(line: 144, column: 48, scope: !306)
!373 = !DILocation(line: 144, column: 20, scope: !306)
!374 = !DILocation(line: 0, scope: !306)
!375 = !DILocation(line: 145, column: 22, scope: !306)
!376 = !DILocation(line: 145, column: 19, scope: !306)
!377 = !DILocation(line: 150, column: 15, scope: !378)
!378 = distinct !DILexicalBlock(scope: !307, file: !2, line: 148, column: 10)
!379 = !DILocation(line: 150, column: 19, scope: !378)
!380 = !DILocation(line: 151, column: 7, scope: !378)
!381 = !DILocation(line: 0, scope: !307)
!382 = !DILocation(line: 153, column: 3, scope: !301)
!383 = !DILocation(line: 0, scope: !296)
!384 = !DILocation(line: 154, column: 1, scope: !289)
!385 = !DISubprogram(name: "gsl_sf_gamma_e", scope: !277, file: !277, line: 66, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!386 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !387, file: !387, line: 110, type: !73, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!387 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!388 = distinct !DISubprogram(name: "gsl_sf_lnbeta", scope: !2, file: !2, line: 161, type: !389, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !391)
!389 = !DISubroutineType(types: !390)
!390 = !{!76, !75, !75}
!391 = !{!392, !393, !394, !395}
!392 = !DILocalVariable(name: "x", arg: 1, scope: !388, file: !2, line: 161, type: !75)
!393 = !DILocalVariable(name: "y", arg: 2, scope: !388, file: !2, line: 161, type: !75)
!394 = !DILocalVariable(name: "result", scope: !388, file: !2, line: 163, type: !78)
!395 = !DILocalVariable(name: "status", scope: !388, file: !2, line: 163, type: !26)
!396 = distinct !DIAssignID()
!397 = distinct !DIAssignID()
!398 = !DILocation(line: 0, scope: !388)
!399 = !DILocation(line: 163, column: 3, scope: !388)
!400 = !DILocation(line: 0, scope: !72, inlinedAt: !401)
!401 = distinct !DILocation(line: 163, column: 3, scope: !388)
!402 = !DILocation(line: 41, column: 3, scope: !72, inlinedAt: !401)
!403 = !DILocation(line: 42, column: 16, scope: !72, inlinedAt: !401)
!404 = !DILocation(line: 43, column: 7, scope: !95, inlinedAt: !401)
!405 = !DILocation(line: 43, column: 11, scope: !95, inlinedAt: !401)
!406 = !DILocation(line: 43, column: 7, scope: !72, inlinedAt: !401)
!407 = !DILocation(line: 44, column: 5, scope: !103, inlinedAt: !401)
!408 = distinct !DIAssignID()
!409 = distinct !DIAssignID()
!410 = !DILocation(line: 44, column: 5, scope: !109, inlinedAt: !401)
!411 = !DILocation(line: 47, column: 1, scope: !72, inlinedAt: !401)
!412 = !DILocation(line: 163, column: 3, scope: !413)
!413 = distinct !DILexicalBlock(scope: !388, file: !2, line: 163, column: 3)
!414 = !DILocation(line: 163, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 163, column: 3)
!416 = distinct !DILexicalBlock(scope: !413, file: !2, line: 163, column: 3)
!417 = !DILocation(line: 164, column: 1, scope: !388)
!418 = distinct !DISubprogram(name: "gsl_sf_beta", scope: !2, file: !2, line: 166, type: !389, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !22, retainedNodes: !419)
!419 = !{!420, !421, !422, !423}
!420 = !DILocalVariable(name: "x", arg: 1, scope: !418, file: !2, line: 166, type: !75)
!421 = !DILocalVariable(name: "y", arg: 2, scope: !418, file: !2, line: 166, type: !75)
!422 = !DILocalVariable(name: "result", scope: !418, file: !2, line: 168, type: !78)
!423 = !DILocalVariable(name: "status", scope: !418, file: !2, line: 168, type: !26)
!424 = distinct !DIAssignID()
!425 = !DILocation(line: 0, scope: !418)
!426 = !DILocation(line: 168, column: 3, scope: !418)
!427 = !DILocation(line: 168, column: 3, scope: !428)
!428 = distinct !DILexicalBlock(scope: !418, file: !2, line: 168, column: 3)
!429 = !DILocation(line: 168, column: 3, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !2, line: 168, column: 3)
!431 = distinct !DILexicalBlock(scope: !428, file: !2, line: 168, column: 3)
!432 = !DILocation(line: 169, column: 1, scope: !418)
