; ModuleID = 'laguerre.ll'
source_filename = "laguerre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"laguerre.c\00", align 1, !dbg !7
@.str.5 = private unnamed_addr constant [38 x i8] c"gsl_sf_laguerre_n_e(n, a, x, &result)\00", align 1, !dbg !12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_laguerre_1_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !76 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !89, metadata !DIExpression()), !dbg !92
  tail call void @llvm.dbg.value(metadata double %1, metadata !90, metadata !DIExpression()), !dbg !92
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !91, metadata !DIExpression()), !dbg !92
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !93
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !95
  store double %handler_result1, ptr %2, align 8, !dbg !95, !tbaa !96
  %4 = tail call double @llvm.fabs.f64(double %0), !dbg !101
  %handler_result2 = call double @fAddHandlerDouble(double %4, double 1.000000e+00), !dbg !102
  %5 = tail call double @llvm.fabs.f64(double %1), !dbg !102
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %5), !dbg !103
  %6 = fmul double %handler_result3, 0x3CC0000000000000, !dbg !103
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !104
  store double %6, ptr %7, align 8, !dbg !105, !tbaa !106
  ret i32 0, !dbg !107
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_laguerre_2_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !108 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !110, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata double %1, metadata !111, metadata !DIExpression()), !dbg !118
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !112, metadata !DIExpression()), !dbg !118
  %4 = fcmp oeq double %0, -2.000000e+00, !dbg !119
  br i1 %4, label %5, label %10, !dbg !120

5:                                                ; preds = %3
  %6 = fmul double %1, 5.000000e-01, !dbg !121
  %7 = fmul double %6, %1, !dbg !123
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !124
  %9 = fmul double %8, 0x3CC0000000000000, !dbg !125
  br label %27, !dbg !126

10:                                               ; preds = %3
  %handler_result = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !127
  %11 = fmul double %handler_result, 5.000000e-01, !dbg !127
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !128
  %12 = fmul double %handler_result1, %11, !dbg !128
  tail call void @llvm.dbg.value(metadata double %12, metadata !113, metadata !DIExpression()), !dbg !129
  %13 = fneg double %handler_result, !dbg !130
  tail call void @llvm.dbg.value(metadata double %13, metadata !116, metadata !DIExpression()), !dbg !129
  %14 = fdiv double -5.000000e-01, %handler_result, !dbg !131
  tail call void @llvm.dbg.value(metadata double %14, metadata !117, metadata !DIExpression()), !dbg !129
  %15 = fmul double %13, %1, !dbg !132
  %16 = fmul double %14, %1, !dbg !133
  %handler_result2 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !134
  %17 = fmul double %15, %handler_result2, !dbg !134
  %handler_result3 = call double @fAddHandlerDouble(double %12, double %17), !dbg !135
  %18 = tail call double @llvm.fabs.f64(double %12), !dbg !135
  %19 = tail call double @llvm.fabs.f64(double %15), !dbg !136
  %20 = fmul double %19, 2.000000e+00, !dbg !137
  %21 = tail call double @llvm.fabs.f64(double %16), !dbg !138
  %22 = fmul double %21, 2.000000e+00, !dbg !139
  %handler_result4 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !140
  %23 = fmul double %20, %handler_result4, !dbg !140
  %handler_result5 = call double @fAddHandlerDouble(double %18, double %23), !dbg !141
  %24 = fmul double %handler_result5, 0x3CC0000000000000, !dbg !141
  %25 = tail call double @llvm.fabs.f64(double %handler_result3), !dbg !142
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !143
  %handler_result6 = call double @fAddHandlerDouble(double %26, double %24)
  br label %27

27:                                               ; preds = %10, %5
  %28 = phi double [ %7, %5 ], [ %handler_result3, %10 ], !dbg !144
  %29 = phi double [ %9, %5 ], [ %handler_result6, %10 ], !dbg !144
  store double %28, ptr %2, align 8, !dbg !144
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !144
  store double %29, ptr %30, align 8, !dbg !144
  ret i32 0, !dbg !145
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gsl_sf_laguerre_3_e(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !146 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !148, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata double %1, metadata !149, metadata !DIExpression()), !dbg !160
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !150, metadata !DIExpression()), !dbg !160
  %4 = fcmp oeq double %0, -2.000000e+00, !dbg !161
  br i1 %4, label %5, label %16, !dbg !162

5:                                                ; preds = %3
  %6 = fmul double %1, %1, !dbg !163
  %7 = fdiv double %6, 6.000000e+00, !dbg !164
  tail call void @llvm.dbg.value(metadata double %7, metadata !151, metadata !DIExpression()), !dbg !165
  %handler_result = call double @fSubHandlerDouble(double 3.000000e+00, double %1), !dbg !166
  %8 = fmul double %handler_result, %7, !dbg !166
  store double %8, ptr %2, align 8, !dbg !167, !tbaa !96
  %9 = tail call double @llvm.fabs.f64(double %1), !dbg !168
  %handler_result1 = call double @fAddHandlerDouble(double %9, double 3.000000e+00), !dbg !169
  %10 = fmul double %7, %handler_result1, !dbg !169
  %11 = fmul double %10, 2.000000e+00, !dbg !170
  %12 = fmul double %11, 0x3CB0000000000000, !dbg !171
  %13 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !172
  %14 = tail call double @llvm.fabs.f64(double %8), !dbg !173
  %15 = fmul double %14, 0x3CC0000000000000, !dbg !174
  %handler_result2 = call double @fAddHandlerDouble(double %12, double %15), !dbg !175
  store double %handler_result2, ptr %13, align 8, !dbg !175, !tbaa !106
  br label %52

16:                                               ; preds = %3
  %17 = fcmp oeq double %0, -3.000000e+00, !dbg !176
  br i1 %17, label %18, label %25, !dbg !177

18:                                               ; preds = %16
  %19 = fneg double %1, !dbg !178
  %20 = fmul double %19, %1, !dbg !180
  %21 = fdiv double %20, 6.000000e+00, !dbg !181
  store double %21, ptr %2, align 8, !dbg !182, !tbaa !96
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !183
  %23 = fmul double %22, 0x3CC0000000000000, !dbg !184
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !185
  store double %23, ptr %24, align 8, !dbg !186, !tbaa !106
  br label %52, !dbg !187

25:                                               ; preds = %16
  %handler_result3 = call double @fAddHandlerDouble(double %0, double 3.000000e+00), !dbg !188
  %handler_result4 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !189
  %26 = fmul double %handler_result3, %handler_result4, !dbg !189
  %handler_result5 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !190
  %27 = fmul double %handler_result5, %26, !dbg !190
  %28 = fdiv double %27, 6.000000e+00, !dbg !191
  tail call void @llvm.dbg.value(metadata double %28, metadata !154, metadata !DIExpression()), !dbg !192
  %29 = fmul double %28, -3.000000e+00, !dbg !193
  %30 = fdiv double %29, %handler_result5, !dbg !194
  tail call void @llvm.dbg.value(metadata double %30, metadata !157, metadata !DIExpression()), !dbg !192
  %31 = fdiv double -1.000000e+00, %handler_result4, !dbg !195
  tail call void @llvm.dbg.value(metadata double %31, metadata !158, metadata !DIExpression()), !dbg !192
  %32 = fmul double %handler_result3, 3.000000e+00, !dbg !196
  %33 = fdiv double -1.000000e+00, %32, !dbg !197
  tail call void @llvm.dbg.value(metadata double %33, metadata !159, metadata !DIExpression()), !dbg !192
  %34 = fmul double %30, %1, !dbg !198
  %35 = fmul double %31, %1, !dbg !199
  %36 = fmul double %33, %1, !dbg !200
  %handler_result6 = call double @fAddHandlerDouble(double %36, double 1.000000e+00), !dbg !201
  %37 = fmul double %35, %handler_result6, !dbg !201
  %handler_result7 = call double @fAddHandlerDouble(double %37, double 1.000000e+00), !dbg !202
  %38 = fmul double %34, %handler_result7, !dbg !202
  %handler_result8 = call double @fAddHandlerDouble(double %28, double %38), !dbg !203
  store double %handler_result8, ptr %2, align 8, !dbg !203, !tbaa !96
  %39 = tail call double @llvm.fabs.f64(double %36), !dbg !204
  %40 = fmul double %39, 2.000000e+00, !dbg !205
  %handler_result9 = call double @fAddHandlerDouble(double %40, double 1.000000e+00), !dbg !206
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !206
  %42 = tail call double @llvm.fabs.f64(double %35), !dbg !207
  %43 = fmul double %42, 2.000000e+00, !dbg !208
  %44 = fmul double %43, %handler_result9, !dbg !209
  %handler_result10 = call double @fAddHandlerDouble(double %44, double 1.000000e+00), !dbg !210
  %45 = tail call double @llvm.fabs.f64(double %28), !dbg !210
  %46 = tail call double @llvm.fabs.f64(double %34), !dbg !211
  %47 = fmul double %46, 2.000000e+00, !dbg !212
  %48 = fmul double %47, %handler_result10, !dbg !213
  %handler_result11 = call double @fAddHandlerDouble(double %45, double %48), !dbg !214
  %49 = fmul double %handler_result11, 0x3CC0000000000000, !dbg !214
  %50 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !215
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !216
  %handler_result12 = call double @fAddHandlerDouble(double %51, double %49), !dbg !217
  store double %handler_result12, ptr %41, align 8, !dbg !217, !tbaa !106
  br label %52

52:                                               ; preds = %25, %18, %5
  ret i32 0, !dbg !218
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_laguerre_n_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #3 !dbg !219 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !246
  call void @llvm.dbg.assign(metadata i1 undef, metadata !235, metadata !DIExpression(), metadata !246, metadata ptr %5, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !224, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %1, metadata !225, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %2, metadata !226, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !227, metadata !DIExpression()), !dbg !248
  %6 = icmp slt i32 %0, 0, !dbg !249
  br i1 %6, label %7, label %9, !dbg !250

7:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !251, !tbaa !96
  %8 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !251
  store double 0x7FF8000000000000, ptr %8, align 8, !dbg !251, !tbaa !106
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 244, i32 noundef 1) #8, !dbg !254
  br label %151, !dbg !254

9:                                                ; preds = %4
  switch i32 %0, label %17 [
    i32 0, label %10
    i32 1, label %12
  ], !dbg !256

10:                                               ; preds = %9
  store double 1.000000e+00, ptr %3, align 8, !dbg !257, !tbaa !96
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !259
  store double 0.000000e+00, ptr %11, align 8, !dbg !260, !tbaa !106
  br label %151, !dbg !261

12:                                               ; preds = %9
  %handler_result = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !262
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %2), !dbg !264
  store double %handler_result1, ptr %3, align 8, !dbg !264, !tbaa !96
  %13 = tail call double @llvm.fabs.f64(double %1), !dbg !265
  %handler_result2 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !266
  %14 = tail call double @llvm.fabs.f64(double %2), !dbg !266
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result2, double %14), !dbg !267
  %15 = fmul double %handler_result3, 0x3CC0000000000000, !dbg !267
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !268
  store double %15, ptr %16, align 8, !dbg !269, !tbaa !106
  br label %151, !dbg !270

17:                                               ; preds = %9
  %18 = fcmp oeq double %2, 0.000000e+00, !dbg !271
  br i1 %18, label %19, label %71, !dbg !272

19:                                               ; preds = %17
  %handler_result4 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !273
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !228, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 2, metadata !234, metadata !DIExpression()), !dbg !275
  %20 = add nsw i32 %0, -1, !dbg !273
  %21 = add nsw i32 %0, -2, !dbg !273
  %22 = and i32 %20, 3, !dbg !273
  %23 = icmp ult i32 %21, 3, !dbg !273
  br i1 %23, label %48, label %24, !dbg !273

24:                                               ; preds = %19
  %25 = and i32 %20, -4, !dbg !273
  br label %26, !dbg !273

26:                                               ; preds = %26, %24
  %27 = phi double [ %handler_result4, %24 ], [ %44, %26 ]
  %28 = phi i32 [ 2, %24 ], [ %45, %26 ]
  %29 = phi i32 [ 0, %24 ], [ %46, %26 ]
  tail call void @llvm.dbg.value(metadata double %27, metadata !228, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !234, metadata !DIExpression()), !dbg !275
  %30 = sitofp i32 %28 to double, !dbg !276
  %handler_result5 = call double @fAddHandlerDouble(double %30, double %1), !dbg !279
  %31 = fdiv double %handler_result5, %30, !dbg !279
  %32 = fmul double %27, %31, !dbg !280
  tail call void @llvm.dbg.value(metadata double %32, metadata !228, metadata !DIExpression()), !dbg !275
  %33 = or disjoint i32 %28, 1, !dbg !281
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !234, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double %32, metadata !228, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !234, metadata !DIExpression()), !dbg !275
  %34 = sitofp i32 %33 to double, !dbg !276
  %handler_result6 = call double @fAddHandlerDouble(double %34, double %1), !dbg !279
  %35 = fdiv double %handler_result6, %34, !dbg !279
  %36 = fmul double %32, %35, !dbg !280
  tail call void @llvm.dbg.value(metadata double %36, metadata !228, metadata !DIExpression()), !dbg !275
  %37 = add nuw i32 %28, 2, !dbg !281
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !234, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double %36, metadata !228, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !234, metadata !DIExpression()), !dbg !275
  %38 = sitofp i32 %37 to double, !dbg !276
  %handler_result7 = call double @fAddHandlerDouble(double %38, double %1), !dbg !279
  %39 = fdiv double %handler_result7, %38, !dbg !279
  %40 = fmul double %36, %39, !dbg !280
  tail call void @llvm.dbg.value(metadata double %40, metadata !228, metadata !DIExpression()), !dbg !275
  %41 = add nuw i32 %28, 3, !dbg !281
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !234, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata double %40, metadata !228, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !234, metadata !DIExpression()), !dbg !275
  %42 = sitofp i32 %41 to double, !dbg !276
  %handler_result8 = call double @fAddHandlerDouble(double %42, double %1), !dbg !279
  %43 = fdiv double %handler_result8, %42, !dbg !279
  %44 = fmul double %40, %43, !dbg !280
  tail call void @llvm.dbg.value(metadata double %44, metadata !228, metadata !DIExpression()), !dbg !275
  %45 = add nuw i32 %28, 4, !dbg !281
  tail call void @llvm.dbg.value(metadata i32 %45, metadata !234, metadata !DIExpression()), !dbg !275
  %46 = add i32 %29, 4, !dbg !273
  %47 = icmp eq i32 %46, %25, !dbg !273
  br i1 %47, label %48, label %26, !dbg !273, !llvm.loop !282

48:                                               ; preds = %26, %19
  %49 = phi double [ undef, %19 ], [ %44, %26 ]
  %50 = phi double [ %handler_result4, %19 ], [ %44, %26 ]
  %51 = phi i32 [ 2, %19 ], [ %45, %26 ]
  %52 = icmp eq i32 %22, 0, !dbg !273
  br i1 %52, label %63, label %53, !dbg !273

53:                                               ; preds = %53, %48
  %54 = phi double [ %59, %53 ], [ %50, %48 ]
  %55 = phi i32 [ %60, %53 ], [ %51, %48 ]
  %56 = phi i32 [ %61, %53 ], [ 0, %48 ]
  tail call void @llvm.dbg.value(metadata double %54, metadata !228, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !234, metadata !DIExpression()), !dbg !275
  %57 = sitofp i32 %55 to double, !dbg !276
  %handler_result9 = call double @fAddHandlerDouble(double %57, double %1), !dbg !279
  %58 = fdiv double %handler_result9, %57, !dbg !279
  %59 = fmul double %54, %58, !dbg !280
  tail call void @llvm.dbg.value(metadata double %59, metadata !228, metadata !DIExpression()), !dbg !275
  %60 = add nuw i32 %55, 1, !dbg !281
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !234, metadata !DIExpression()), !dbg !275
  %61 = add i32 %56, 1, !dbg !273
  %62 = icmp eq i32 %61, %22, !dbg !273
  br i1 %62, label %63, label %53, !dbg !273, !llvm.loop !285

63:                                               ; preds = %53, %48
  %64 = phi double [ %49, %48 ], [ %59, %53 ], !dbg !280
  store double %64, ptr %3, align 8, !dbg !287, !tbaa !96
  %65 = sitofp i32 %0 to double, !dbg !288
  %handler_result10 = call double @fAddHandlerDouble(double %65, double 1.000000e+00), !dbg !289
  %66 = fmul double %handler_result10, 2.000000e+00, !dbg !289
  %67 = fmul double %66, 0x3CB0000000000000, !dbg !290
  %68 = tail call double @llvm.fabs.f64(double %64), !dbg !291
  %69 = fmul double %67, %68, !dbg !292
  %handler_result11 = call double @fAddHandlerDouble(double %69, double 0x3CB0000000000000), !dbg !293
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !293
  store double %handler_result11, ptr %70, align 8, !dbg !294, !tbaa !106
  br label %151

71:                                               ; preds = %17
  %72 = fcmp olt double %2, 0.000000e+00, !dbg !295
  %73 = fcmp ogt double %1, -1.000000e+00
  %74 = and i1 %73, %72, !dbg !296
  br i1 %74, label %75, label %77, !dbg !296

75:                                               ; preds = %71
  %76 = tail call fastcc i32 @laguerre_n_cp(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !297
  br label %151, !dbg !299

77:                                               ; preds = %71
  %78 = icmp ult i32 %0, 5, !dbg !300
  br i1 %78, label %85, label %79, !dbg !301

79:                                               ; preds = %77
  %80 = fcmp ogt double %2, 0.000000e+00, !dbg !302
  br i1 %80, label %81, label %102, !dbg !303

81:                                               ; preds = %79
  %82 = xor i32 %0, -1, !dbg !304
  %83 = sitofp i32 %82 to double, !dbg !305
  %84 = fcmp ogt double %83, %1, !dbg !306
  br i1 %84, label %85, label %90, !dbg !307

85:                                               ; preds = %81, %77
  %86 = tail call fastcc i32 @laguerre_n_cp(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !308
  %87 = icmp eq i32 %86, 0, !dbg !311
  br i1 %87, label %151, label %88, !dbg !312

88:                                               ; preds = %85
  %89 = tail call fastcc i32 @laguerre_n_poly_safe(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !313
  br label %151, !dbg !314

90:                                               ; preds = %81
  %91 = sitofp i32 %0 to double, !dbg !315
  %92 = icmp ugt i32 %0, 10000000, !dbg !316
  %93 = and i1 %73, %92, !dbg !317
  br i1 %93, label %94, label %100, !dbg !317

94:                                               ; preds = %90
  %handler_result12 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !318
  %95 = fmul double %handler_result12, 2.000000e+00, !dbg !318
  %96 = fmul double %91, 4.000000e+00, !dbg !319
  %handler_result13 = call double @fAddHandlerDouble(double %96, double %95), !dbg !320
  %97 = fcmp ogt double %handler_result13, %2, !dbg !320
  br i1 %97, label %98, label %100, !dbg !321

98:                                               ; preds = %94
  %99 = tail call fastcc i32 @laguerre_large_n(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !322
  br label %151, !dbg !324

100:                                              ; preds = %94, %90
  %101 = fcmp ult double %1, 0.000000e+00, !dbg !325
  br i1 %101, label %149, label %105, !dbg !326

102:                                              ; preds = %79
  %103 = sitofp i32 %0 to double, !dbg !315
  %104 = fcmp ult double %1, 0.000000e+00, !dbg !325
  br i1 %104, label %149, label %105, !dbg !326

105:                                              ; preds = %102, %100
  %106 = phi double [ %103, %102 ], [ %91, %100 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !327
  %107 = call i32 @gsl_sf_laguerre_2_e(double noundef %1, double noundef %2, ptr noundef nonnull %5), !dbg !328
  tail call void @llvm.dbg.value(metadata i32 0, metadata !241, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double poison, metadata !242, metadata !DIExpression()), !dbg !247
  %108 = load double, ptr %5, align 8, !dbg !329, !tbaa !96
  tail call void @llvm.dbg.value(metadata double %108, metadata !243, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 2, metadata !245, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double poison, metadata !242, metadata !DIExpression()), !dbg !247
  %109 = and i32 %0, 1, !dbg !330
  %handler_result14 = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !332
  %handler_result15 = call double @fSubHandlerDouble(double %handler_result14, double %2), !dbg !330
  tail call void @llvm.dbg.value(metadata double %handler_result15, metadata !242, metadata !DIExpression()), !dbg !247
  %110 = and i32 %0, 2147483646, !dbg !330
  %111 = add nsw i32 %110, -4
  br label %112, !dbg !330

112:                                              ; preds = %112, %105
  %113 = phi i32 [ 2, %105 ], [ %128, %112 ]
  %114 = phi double [ %108, %105 ], [ %127, %112 ]
  %115 = phi double [ %handler_result15, %105 ], [ %121, %112 ]
  %116 = phi i32 [ 0, %105 ], [ %129, %112 ]
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !245, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %114, metadata !243, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %115, metadata !242, metadata !DIExpression()), !dbg !247
  %117 = sitofp i32 %113 to double, !dbg !333
  %handler_result16 = call double @fAddHandlerDouble(double %117, double %1), !dbg !336
  %118 = fmul double %117, 2.000000e+00, !dbg !336
  %handler_result17 = call double @fAddHandlerDouble(double %118, double %1), !dbg !337
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double 1.000000e+00), !dbg !338
  %handler_result19 = call double @fSubHandlerDouble(double %handler_result18, double %2), !dbg !339
  %119 = fmul double %114, %handler_result19, !dbg !339
  %120 = fmul double %115, %handler_result16, !dbg !340
  %handler_result20 = call double @fSubHandlerDouble(double %119, double %120), !dbg !341
  %handler_result21 = call double @fAddHandlerDouble(double %117, double 1.000000e+00), !dbg !342
  %121 = fdiv double %handler_result20, %handler_result21, !dbg !342
  tail call void @llvm.dbg.value(metadata double %121, metadata !244, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %114, metadata !242, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %121, metadata !243, metadata !DIExpression()), !dbg !247
  %122 = or disjoint i32 %113, 1, !dbg !343
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !245, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !245, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %121, metadata !243, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %114, metadata !242, metadata !DIExpression()), !dbg !247
  %123 = sitofp i32 %122 to double, !dbg !333
  %handler_result22 = call double @fAddHandlerDouble(double %123, double %1), !dbg !336
  %124 = fmul double %123, 2.000000e+00, !dbg !336
  %handler_result23 = call double @fAddHandlerDouble(double %124, double %1), !dbg !337
  %handler_result24 = call double @fAddHandlerDouble(double %handler_result23, double 1.000000e+00), !dbg !338
  %handler_result25 = call double @fSubHandlerDouble(double %handler_result24, double %2), !dbg !339
  %125 = fmul double %121, %handler_result25, !dbg !339
  %126 = fmul double %114, %handler_result22, !dbg !340
  %handler_result26 = call double @fSubHandlerDouble(double %125, double %126), !dbg !341
  %handler_result27 = call double @fAddHandlerDouble(double %123, double 1.000000e+00), !dbg !342
  %127 = fdiv double %handler_result26, %handler_result27, !dbg !342
  tail call void @llvm.dbg.value(metadata double %127, metadata !244, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %121, metadata !242, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %127, metadata !243, metadata !DIExpression()), !dbg !247
  %128 = add nuw nsw i32 %113, 2, !dbg !343
  tail call void @llvm.dbg.value(metadata i32 %128, metadata !245, metadata !DIExpression()), !dbg !247
  %129 = add i32 %116, 2, !dbg !330
  %130 = icmp eq i32 %116, %111, !dbg !330
  br i1 %130, label %131, label %112, !dbg !330, !llvm.loop !344

131:                                              ; preds = %112
  %132 = sitofp i32 %128 to double, !dbg !333
  %133 = icmp eq i32 %109, 0, !dbg !330
  br i1 %133, label %139, label %134, !dbg !330

134:                                              ; preds = %131
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !245, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %127, metadata !243, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %121, metadata !242, metadata !DIExpression()), !dbg !247
  %handler_result28 = call double @fAddHandlerDouble(double %132, double %1), !dbg !336
  %135 = fmul double %132, 2.000000e+00, !dbg !336
  %handler_result29 = call double @fAddHandlerDouble(double %135, double %1), !dbg !337
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result29, double 1.000000e+00), !dbg !338
  %handler_result31 = call double @fSubHandlerDouble(double %handler_result30, double %2), !dbg !339
  %136 = fmul double %127, %handler_result31, !dbg !339
  %137 = fmul double %121, %handler_result28, !dbg !340
  %handler_result32 = call double @fSubHandlerDouble(double %136, double %137), !dbg !341
  %handler_result33 = call double @fAddHandlerDouble(double %132, double 1.000000e+00), !dbg !342
  %138 = fdiv double %handler_result32, %handler_result33, !dbg !342
  tail call void @llvm.dbg.value(metadata double %138, metadata !244, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %127, metadata !242, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %138, metadata !243, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !245, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !247
  br label %139, !dbg !346

139:                                              ; preds = %134, %131
  %140 = phi double [ %127, %131 ], [ %138, %134 ], !dbg !342
  store double %140, ptr %3, align 8, !dbg !346, !tbaa !96
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !347
  %142 = load double, ptr %141, align 8, !dbg !347, !tbaa !106
  %143 = fdiv double %142, %108, !dbg !348
  %144 = tail call double @llvm.fabs.f64(double %143), !dbg !349
  %handler_result34 = call double @fAddHandlerDouble(double %144, double 0x3CB0000000000000), !dbg !350
  %145 = fmul double %106, %handler_result34, !dbg !350
  %146 = tail call double @llvm.fabs.f64(double %140), !dbg !351
  %147 = fmul double %146, %145, !dbg !352
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !353
  store double %147, ptr %148, align 8, !dbg !354, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !355
  br label %151

149:                                              ; preds = %102, %100
  %150 = tail call fastcc i32 @laguerre_n_poly_safe(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3), !dbg !356
  br label %151, !dbg !358

151:                                              ; preds = %149, %139, %98, %88, %85, %75, %63, %12, %10, %7
  %152 = phi i32 [ 1, %7 ], [ 0, %10 ], [ 0, %12 ], [ 0, %63 ], [ %76, %75 ], [ %89, %88 ], [ %99, %98 ], [ 0, %139 ], [ %150, %149 ], [ 0, %85 ], !dbg !359
  ret i32 %152, !dbg !360
}

declare !dbg !361 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @laguerre_n_cp(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #3 !dbg !366 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !372, metadata !DIExpression(), metadata !391, metadata ptr %5, metadata !DIExpression()), !dbg !392
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !393
  call void @llvm.dbg.assign(metadata i1 undef, metadata !373, metadata !DIExpression(), metadata !393, metadata ptr %6, metadata !DIExpression()), !dbg !392
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !394
  call void @llvm.dbg.assign(metadata i1 undef, metadata !374, metadata !DIExpression(), metadata !394, metadata ptr %7, metadata !DIExpression()), !dbg !392
  %8 = alloca double, align 8, !DIAssignID !395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !375, metadata !DIExpression(), metadata !395, metadata ptr %8, metadata !DIExpression()), !dbg !392
  %9 = alloca double, align 8, !DIAssignID !396
  call void @llvm.dbg.assign(metadata i1 undef, metadata !376, metadata !DIExpression(), metadata !396, metadata ptr %9, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !368, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double %1, metadata !369, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double %2, metadata !370, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !371, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !397
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !398
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !399
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !400
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8, !dbg !400
  %10 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %5) #8, !dbg !401
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !377, metadata !DIExpression()), !dbg !392
  %handler_result = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !402
  %11 = sitofp i32 %0 to double, !dbg !402
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %11), !dbg !403
  %12 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result1, ptr noundef nonnull %6, ptr noundef nonnull %8) #8, !dbg !403
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !378, metadata !DIExpression()), !dbg !392
  %13 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result, ptr noundef nonnull %7, ptr noundef nonnull %9) #8, !dbg !404
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !379, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !380, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !381, metadata !DIExpression()), !dbg !392
  %14 = load double, ptr %6, align 8, !dbg !405, !tbaa !96
  %15 = load double, ptr %7, align 8, !dbg !406, !tbaa !96
  %handler_result2 = call double @fSubHandlerDouble(double %14, double %15), !dbg !407
  %16 = load double, ptr %5, align 8, !dbg !407, !tbaa !96
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %16), !dbg !408
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !384, metadata !DIExpression()), !dbg !392
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !408
  %18 = load double, ptr %17, align 8, !dbg !408, !tbaa !106
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !409
  %20 = load double, ptr %19, align 8, !dbg !409, !tbaa !106
  %handler_result4 = call double @fAddHandlerDouble(double %18, double %20), !dbg !410
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !410
  %22 = load double, ptr %21, align 8, !dbg !410, !tbaa !106
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result4, double %22), !dbg !411
  %23 = call double @llvm.fabs.f64(double %handler_result3), !dbg !411
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !412
  %handler_result6 = call double @fAddHandlerDouble(double %24, double %handler_result5), !dbg !413
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !385, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !383, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !392
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !380, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !381, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !383, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !392
  %25 = icmp sgt i32 %0, 0, !dbg !413
  br i1 %25, label %26, label %48, !dbg !414

26:                                               ; preds = %43, %4
  %27 = phi double [ %handler_result9, %43 ], [ 1.000000e+00, %4 ]
  %28 = phi double [ %handler_result11, %43 ], [ 0.000000e+00, %4 ]
  %29 = phi i32 [ %30, %43 ], [ %0, %4 ]
  %30 = add nsw i32 %29, -1, !dbg !415
  tail call void @llvm.dbg.value(metadata double %27, metadata !380, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double %28, metadata !381, metadata !DIExpression()), !dbg !392
  %31 = sub nsw i32 %30, %0, !dbg !416
  %32 = sitofp i32 %31 to double, !dbg !417
  %33 = sitofp i32 %30 to double, !dbg !418
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result, double %33), !dbg !419
  %34 = fdiv double %32, %handler_result7, !dbg !419
  %35 = sitofp i32 %29 to double, !dbg !420
  %36 = fdiv double %2, %35, !dbg !421
  %37 = fmul double %36, %34, !dbg !422
  tail call void @llvm.dbg.value(metadata double %37, metadata !386, metadata !DIExpression()), !dbg !423
  %38 = fdiv double 1.000000e+00, %27, !dbg !424
  %handler_result8 = call double @fAddHandlerDouble(double %38, double %37), !dbg !425
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !390, metadata !DIExpression()), !dbg !423
  %39 = fdiv double 0x7FECCCCCCCCCCCCC, %27, !dbg !425
  %40 = fcmp ule double %handler_result8, %39, !dbg !427
  br i1 %40, label %43, label %41, !dbg !428

41:                                               ; preds = %26
  store double 0x7FF0000000000000, ptr %3, align 8, !dbg !429, !tbaa !96
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !429
  store double 0x7FF0000000000000, ptr %42, align 8, !dbg !429, !tbaa !106
  tail call void @llvm.dbg.value(metadata double poison, metadata !380, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata double poison, metadata !381, metadata !DIExpression()), !dbg !392
  br label %58

43:                                               ; preds = %26
  %44 = fmul double %27, %37, !dbg !432
  %handler_result9 = call double @fAddHandlerDouble(double %44, double 1.000000e+00), !dbg !434
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !380, metadata !DIExpression()), !dbg !392
  %45 = call double @llvm.fabs.f64(double %37), !dbg !434
  %46 = fmul double %28, %45, !dbg !435
  %handler_result10 = call double @fAddHandlerDouble(double %46, double 0x3CB0000000000000), !dbg !436
  %handler_result11 = call double @fAddHandlerDouble(double %28, double %handler_result10), !dbg !413
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !381, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !383, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !392
  %47 = icmp ugt i32 %29, 1, !dbg !413
  br i1 %47, label %26, label %48, !dbg !414

48:                                               ; preds = %43, %4
  %49 = phi double [ 0.000000e+00, %4 ], [ %handler_result11, %43 ], !dbg !437
  %50 = phi double [ 1.000000e+00, %4 ], [ %handler_result9, %43 ], !dbg !438
  %51 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result3, double noundef %handler_result6, double noundef %50, double noundef %49, ptr noundef %3) #8, !dbg !439
  tail call void @llvm.dbg.value(metadata i32 %51, metadata !382, metadata !DIExpression()), !dbg !392
  %52 = icmp eq i32 %51, 0, !dbg !440
  br i1 %52, label %53, label %58, !dbg !440

53:                                               ; preds = %48
  %54 = icmp eq i32 %10, 0, !dbg !440
  br i1 %54, label %55, label %58, !dbg !440

55:                                               ; preds = %53
  %56 = icmp eq i32 %12, 0, !dbg !440
  %57 = select i1 %56, i32 %13, i32 %12, !dbg !440
  br label %58, !dbg !440

58:                                               ; preds = %55, %53, %48, %41
  %59 = phi i32 [ %51, %48 ], [ %10, %53 ], [ %57, %55 ], [ 16, %41 ], !dbg !392
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8, !dbg !441
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !441
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !441
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !441
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !441
  ret i32 %59, !dbg !441
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @laguerre_n_poly_safe(i32 noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #3 !dbg !442 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !459
  call void @llvm.dbg.assign(metadata i1 undef, metadata !451, metadata !DIExpression(), metadata !459, metadata ptr %5, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !444, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata double %1, metadata !445, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata double %2, metadata !446, metadata !DIExpression()), !dbg !460
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !447, metadata !DIExpression()), !dbg !460
  %handler_result = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !461
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !448, metadata !DIExpression()), !dbg !460
  %6 = fneg double %2, !dbg !461
  tail call void @llvm.dbg.value(metadata double %6, metadata !449, metadata !DIExpression()), !dbg !460
  %7 = fcmp olt double %2, 0.000000e+00, !dbg !462
  br i1 %7, label %12, label %8, !dbg !463

8:                                                ; preds = %4
  %9 = and i32 %0, 1, !dbg !464
  %10 = icmp eq i32 %9, 0, !dbg !464
  %11 = select i1 %10, double 1.000000e+00, double -1.000000e+00, !dbg !464
  br label %12, !dbg !463

12:                                               ; preds = %8, %4
  %13 = phi double [ %11, %8 ], [ 1.000000e+00, %4 ], !dbg !463
  tail call void @llvm.dbg.value(metadata double %13, metadata !450, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !465
  %14 = tail call double @llvm.fabs.f64(double %2), !dbg !466
  %15 = call i32 @gsl_sf_taylorcoeff_e(i32 noundef %0, double noundef %14, ptr noundef nonnull %5) #8, !dbg !467
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !452, metadata !DIExpression()), !dbg !460
  switch i32 %15, label %45 [
    i32 0, label %16
    i32 16, label %44
  ], !dbg !468

16:                                               ; preds = %12
  %17 = load double, ptr %5, align 8, !dbg !469, !tbaa !96
  %18 = fmul double %13, %17, !dbg !470
  tail call void @llvm.dbg.value(metadata double %18, metadata !453, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %18, metadata !456, metadata !DIExpression()), !dbg !471
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !472
  %20 = load double, ptr %19, align 8, !dbg !472, !tbaa !106
  tail call void @llvm.dbg.value(metadata double %20, metadata !457, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !458, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !471
  tail call void @llvm.dbg.value(metadata double %18, metadata !456, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %18, metadata !453, metadata !DIExpression()), !dbg !471
  %21 = icmp sgt i32 %0, 0, !dbg !473
  br i1 %21, label %22, label %38, !dbg !476

22:                                               ; preds = %22, %16
  %23 = phi i32 [ %27, %22 ], [ %0, %16 ]
  %24 = phi double [ %handler_result4, %22 ], [ %20, %16 ]
  %25 = phi double [ %handler_result3, %22 ], [ %18, %16 ]
  %26 = phi double [ %34, %22 ], [ %18, %16 ]
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !458, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !471
  tail call void @llvm.dbg.value(metadata double %24, metadata !457, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %25, metadata !456, metadata !DIExpression()), !dbg !471
  tail call void @llvm.dbg.value(metadata double %26, metadata !453, metadata !DIExpression()), !dbg !471
  %27 = add nsw i32 %23, -1, !dbg !477
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !458, metadata !DIExpression()), !dbg !471
  %28 = sitofp i32 %27 to double, !dbg !478
  %handler_result1 = call double @fAddHandlerDouble(double %handler_result, double %28), !dbg !480
  %29 = sub nsw i32 %0, %27, !dbg !480
  %30 = sitofp i32 %29 to double, !dbg !481
  %31 = fdiv double %handler_result1, %30, !dbg !482
  %handler_result2 = call double @fAddHandlerDouble(double %28, double 1.000000e+00), !dbg !483
  %32 = fmul double %handler_result2, %31, !dbg !483
  %33 = fdiv double %32, %6, !dbg !484
  %34 = fmul double %26, %33, !dbg !485
  tail call void @llvm.dbg.value(metadata double %34, metadata !453, metadata !DIExpression()), !dbg !471
  %handler_result3 = call double @fAddHandlerDouble(double %25, double %34), !dbg !486
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !456, metadata !DIExpression()), !dbg !471
  %35 = call double @llvm.fabs.f64(double %34), !dbg !486
  %36 = fmul double %35, 0x3CD0000000000000, !dbg !487
  %handler_result4 = call double @fAddHandlerDouble(double %24, double %36), !dbg !473
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !458, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !471
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !457, metadata !DIExpression()), !dbg !471
  %37 = icmp ugt i32 %23, 1, !dbg !473
  br i1 %37, label %22, label %38, !dbg !476, !llvm.loop !488

38:                                               ; preds = %22, %16
  %39 = phi double [ %18, %16 ], [ %handler_result3, %22 ], !dbg !471
  %40 = phi double [ %20, %16 ], [ %handler_result4, %22 ], !dbg !471
  store double %39, ptr %3, align 8, !dbg !490, !tbaa !96
  %41 = call double @llvm.fabs.f64(double %39), !dbg !491
  %42 = fmul double %41, 0x3CC0000000000000, !dbg !492
  %handler_result5 = call double @fAddHandlerDouble(double %40, double %42), !dbg !493
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !493
  store double %handler_result5, ptr %43, align 8, !dbg !494, !tbaa !106
  br label %46

44:                                               ; preds = %12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !495
  br label %46, !dbg !498

45:                                               ; preds = %12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !499
  br label %46, !dbg !501

46:                                               ; preds = %45, %44, %38
  %47 = phi i32 [ 0, %38 ], [ 16, %44 ], [ %15, %45 ], !dbg !502
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !503
  ret i32 %47, !dbg !503
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @laguerre_large_n(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #3 !dbg !504 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !517, metadata !DIExpression(), metadata !532, metadata ptr %5, metadata !DIExpression()), !dbg !533
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !534
  call void @llvm.dbg.assign(metadata i1 undef, metadata !518, metadata !DIExpression(), metadata !534, metadata ptr %6, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !506, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double %1, metadata !507, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata double %2, metadata !508, metadata !DIExpression()), !dbg !533
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !509, metadata !DIExpression()), !dbg !533
  %7 = sub nsw i32 0, %0, !dbg !535
  %8 = sitofp i32 %7 to double, !dbg !535
  tail call void @llvm.dbg.value(metadata double %8, metadata !510, metadata !DIExpression()), !dbg !533
  %handler_result = call double @fAddHandlerDouble(double %1, double 1.000000e+00), !dbg !536
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !511, metadata !DIExpression()), !dbg !533
  %9 = fmul double %handler_result, 2.000000e+00, !dbg !536
  %10 = fmul double %8, 4.000000e+00, !dbg !537
  %handler_result1 = call double @fSubHandlerDouble(double %9, double %10), !dbg !538
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !512, metadata !DIExpression()), !dbg !533
  %11 = fdiv double %2, %handler_result1, !dbg !538
  tail call void @llvm.dbg.value(metadata double %11, metadata !513, metadata !DIExpression()), !dbg !533
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %11), !dbg !539
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !514, metadata !DIExpression()), !dbg !533
  %12 = tail call double @sqrt(double noundef %11) #8, !dbg !539
  %handler_result21 = call double @callHandler(i32 4, double %12, double %12), !dbg !540
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !515, metadata !DIExpression()), !dbg !533
  %13 = fmul double %handler_result1, 0x4003BD3CC9BE45DE, !dbg !540
  %14 = fmul double %handler_result1, %13, !dbg !541
  %15 = fmul double %11, %14, !dbg !542
  %16 = fmul double %handler_result2, %15, !dbg !543
  tail call void @llvm.dbg.value(metadata double %16, metadata !516, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !544
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !545
  %17 = sitofp i32 %0 to double, !dbg !546
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result, double %17), !dbg !547
  %18 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result3, ptr noundef nonnull %5) #8, !dbg !547
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !519, metadata !DIExpression()), !dbg !533
  %19 = call i32 @gsl_sf_lnfact_e(i32 noundef %0, ptr noundef nonnull %6) #8, !dbg !548
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !520, metadata !DIExpression()), !dbg !533
  %handler_result4 = call double @fSubHandlerDouble(double 1.000000e+00, double %handler_result), !dbg !549
  %20 = fmul double %handler_result4, 5.000000e-01, !dbg !549
  %21 = fmul double %2, 2.500000e-01, !dbg !550
  %22 = fmul double %21, %handler_result1, !dbg !551
  %handler_result22 = call double @callHandler(i32 12, double %22, double %22), !dbg !552
  %23 = fmul double %20, %handler_result22, !dbg !552
  tail call void @llvm.dbg.value(metadata double %23, metadata !521, metadata !DIExpression()), !dbg !533
  %handler_result23 = call double @callHandler(i32 12, double %16, double %16), !dbg !553
  %24 = fmul double %handler_result23, 2.500000e-01, !dbg !553
  tail call void @llvm.dbg.value(metadata double %24, metadata !522, metadata !DIExpression()), !dbg !533
  %25 = load double, ptr %5, align 8, !dbg !554, !tbaa !96
  %26 = load double, ptr %6, align 8, !dbg !555, !tbaa !96
  %handler_result5 = call double @fSubHandlerDouble(double %25, double %26), !dbg !556
  %27 = fmul double %2, 5.000000e-01, !dbg !556
  %handler_result6 = call double @fAddHandlerDouble(double %27, double %handler_result5), !dbg !557
  %handler_result7 = call double @fAddHandlerDouble(double %23, double %handler_result6), !dbg !558
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result7, double %24), !dbg !559
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !523, metadata !DIExpression()), !dbg !533
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !559
  %29 = load double, ptr %28, align 8, !dbg !559, !tbaa !106
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !560
  %31 = load double, ptr %30, align 8, !dbg !560, !tbaa !106
  %handler_result9 = call double @fAddHandlerDouble(double %29, double %31), !dbg !561
  %32 = call double @llvm.fabs.f64(double %23), !dbg !561
  %33 = call double @llvm.fabs.f64(double %24), !dbg !562
  %handler_result10 = call double @fAddHandlerDouble(double %32, double %33), !dbg !563
  %34 = fmul double %handler_result10, 0x3CB0000000000000, !dbg !563
  %handler_result11 = call double @fAddHandlerDouble(double %34, double %handler_result9), !dbg !564
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !524, metadata !DIExpression()), !dbg !533
  %35 = fmul double %handler_result1, 2.500000e-01, !dbg !564
  %36 = fmul double %handler_result21, 2.000000e+00, !dbg !565
  %handler_result24 = call double @callHandler(i32 1, double %36, double %36), !dbg !566
  %handler_result12 = call double @fAddHandlerDouble(double %36, double %handler_result24), !dbg !566
  %37 = fmul double %35, %handler_result12, !dbg !566
  tail call void @llvm.dbg.value(metadata double %37, metadata !525, metadata !DIExpression()), !dbg !533
  %handler_result25 = call double @callHandler(i32 1, double %37, double %37), !dbg !567
  %38 = fneg double %handler_result25, !dbg !567
  tail call void @llvm.dbg.value(metadata double %38, metadata !526, metadata !DIExpression()), !dbg !533
  %39 = fmul double %handler_result2, 4.000000e+00, !dbg !568
  %40 = fdiv double 5.000000e+00, %39, !dbg !569
  %41 = fmul double %handler_result, 3.000000e+00, !dbg !570
  %42 = fmul double %handler_result, %41, !dbg !571
  %43 = fmul double %handler_result, 6.000000e+00, !dbg !572
  %handler_result13 = call double @fSubHandlerDouble(double %42, double %43), !dbg !573
  %handler_result14 = call double @fAddHandlerDouble(double %handler_result13, double 2.000000e+00), !dbg !574
  %44 = fmul double %handler_result14, %handler_result2, !dbg !574
  %handler_result15 = call double @fAddHandlerDouble(double %44, double %40), !dbg !575
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result15, double -1.000000e+00), !dbg !576
  tail call void @llvm.dbg.value(metadata double poison, metadata !527, metadata !DIExpression()), !dbg !533
  %45 = fmul double %handler_result16, 0xBFB5555555555555, !dbg !576
  %handler_result26 = call double @callHandler(i32 2, double %37, double %37), !dbg !577
  %46 = fmul double %45, %handler_result26, !dbg !577
  %handler_result27 = call double @callHandler(i32 1, double %36, double %36), !dbg !578
  %47 = fmul double %35, %handler_result27, !dbg !578
  %48 = fdiv double %46, %47, !dbg !579
  tail call void @llvm.dbg.value(metadata double %48, metadata !528, metadata !DIExpression()), !dbg !533
  %handler_result17 = call double @fSubHandlerDouble(double %48, double %handler_result25), !dbg !580
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !529, metadata !DIExpression()), !dbg !533
  %49 = fmul double %48, %48, !dbg !580
  %50 = call double @llvm.fabs.f64(double %38), !dbg !581
  %51 = call double @llvm.fabs.f64(double %48), !dbg !582
  %handler_result18 = call double @fAddHandlerDouble(double %50, double %51), !dbg !583
  %52 = fmul double %handler_result18, 0x3CB0000000000000, !dbg !583
  %handler_result19 = call double @fAddHandlerDouble(double %49, double %52), !dbg !584
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !530, metadata !DIExpression()), !dbg !533
  %53 = call i32 @gsl_sf_exp_mult_err_e(double noundef %handler_result8, double noundef %handler_result11, double noundef %handler_result17, double noundef %handler_result19, ptr noundef %3) #8, !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !531, metadata !DIExpression()), !dbg !533
  %54 = load double, ptr %3, align 8, !dbg !585, !tbaa !96
  %55 = call double @llvm.fabs.f64(double %54), !dbg !586
  %56 = fmul double %55, 0x3E60000000000000, !dbg !587
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !588
  %58 = load double, ptr %57, align 8, !dbg !589, !tbaa !106
  %handler_result20 = call double @fAddHandlerDouble(double %58, double %56), !dbg !589
  store double %handler_result20, ptr %57, align 8, !dbg !589, !tbaa !106
  %59 = icmp eq i32 %53, 0, !dbg !590
  %60 = icmp eq i32 %19, 0, !dbg !590
  %61 = select i1 %60, i32 %18, i32 %19, !dbg !590
  %62 = select i1 %59, i32 %61, i32 %53, !dbg !590
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !591
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !591
  ret i32 %62, !dbg !592
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @gsl_sf_laguerre_1(double noundef %0, double noundef %1) local_unnamed_addr #5 !dbg !593 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !597, metadata !DIExpression()), !dbg !601
  tail call void @llvm.dbg.value(metadata double %1, metadata !598, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata double %0, metadata !89, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata double %1, metadata !90, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata ptr undef, metadata !91, metadata !DIExpression()), !dbg !602
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !604
  %handler_result1 = call double @fSubHandlerDouble(double %handler_result, double %1), !dbg !605
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !599, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !601
  tail call void @llvm.dbg.value(metadata double poison, metadata !599, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !601
  tail call void @llvm.dbg.value(metadata i32 0, metadata !600, metadata !DIExpression()), !dbg !601
  ret double %handler_result1, !dbg !605
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_laguerre_2(double noundef %0, double noundef %1) local_unnamed_addr #5 !dbg !606 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !608, metadata !DIExpression()), !dbg !612
  tail call void @llvm.dbg.value(metadata double %1, metadata !609, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata double %0, metadata !110, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata double %1, metadata !111, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.value(metadata ptr undef, metadata !112, metadata !DIExpression()), !dbg !613
  %3 = fcmp oeq double %0, -2.000000e+00, !dbg !615
  br i1 %3, label %4, label %7, !dbg !616

4:                                                ; preds = %2
  %5 = fmul double %1, 5.000000e-01, !dbg !617
  %6 = fmul double %5, %1, !dbg !618
  br label %15, !dbg !619

7:                                                ; preds = %2
  %handler_result = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !620
  %8 = fmul double %handler_result, 5.000000e-01, !dbg !620
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !621
  %9 = fmul double %handler_result1, %8, !dbg !621
  call void @llvm.dbg.value(metadata double %9, metadata !113, metadata !DIExpression()), !dbg !622
  %10 = fneg double %handler_result, !dbg !623
  call void @llvm.dbg.value(metadata double %10, metadata !116, metadata !DIExpression()), !dbg !622
  %11 = fdiv double 5.000000e-01, %handler_result, !dbg !624
  call void @llvm.dbg.value(metadata double %11, metadata !117, metadata !DIExpression()), !dbg !622
  %12 = fmul double %10, %1, !dbg !625
  %13 = fmul double %11, %1, !dbg !626
  %handler_result2 = call double @fSubHandlerDouble(double 1.000000e+00, double %13), !dbg !627
  %14 = fmul double %12, %handler_result2, !dbg !627
  %handler_result3 = call double @fAddHandlerDouble(double %9, double %14)
  br label %15

15:                                               ; preds = %7, %4
  %16 = phi double [ %6, %4 ], [ %handler_result3, %7 ], !dbg !628
  tail call void @llvm.dbg.value(metadata double %16, metadata !610, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !612
  tail call void @llvm.dbg.value(metadata double poison, metadata !610, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !612
  tail call void @llvm.dbg.value(metadata i32 0, metadata !611, metadata !DIExpression()), !dbg !612
  ret double %16, !dbg !629
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @gsl_sf_laguerre_3(double noundef %0, double noundef %1) local_unnamed_addr #5 !dbg !630 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !634, metadata !DIExpression(), metadata !636, metadata ptr %3, metadata !DIExpression()), !dbg !637
  tail call void @llvm.dbg.value(metadata double %0, metadata !632, metadata !DIExpression()), !dbg !637
  tail call void @llvm.dbg.value(metadata double %1, metadata !633, metadata !DIExpression()), !dbg !637
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !638
  %4 = call i32 @gsl_sf_laguerre_3_e(double noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !638
  tail call void @llvm.dbg.value(metadata i32 0, metadata !635, metadata !DIExpression()), !dbg !637
  %5 = load double, ptr %3, align 8, !dbg !638, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !639
  ret double %5, !dbg !639
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_laguerre_n(i32 noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #3 !dbg !640 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !647, metadata !DIExpression(), metadata !649, metadata ptr %4, metadata !DIExpression()), !dbg !650
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !644, metadata !DIExpression()), !dbg !650
  tail call void @llvm.dbg.value(metadata double %1, metadata !645, metadata !DIExpression()), !dbg !650
  tail call void @llvm.dbg.value(metadata double %2, metadata !646, metadata !DIExpression()), !dbg !650
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !651
  %5 = call i32 @gsl_sf_laguerre_n_e(i32 noundef %0, double noundef %1, double noundef %2, ptr noundef nonnull %4), !dbg !651
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !648, metadata !DIExpression()), !dbg !650
  %6 = icmp eq i32 %5, 0, !dbg !652
  br i1 %6, label %8, label %7, !dbg !651

7:                                                ; preds = %3
  call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 334, i32 noundef %5) #8, !dbg !654
  br label %8, !dbg !654

8:                                                ; preds = %7, %3
  %9 = load double, ptr %4, align 8, !dbg !651, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !657
  ret double %9, !dbg !657
}

declare !dbg !658 i32 @gsl_sf_lnfact_e(i32 noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !664 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !668 i32 @gsl_sf_exp_mult_err_e(double noundef, double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !672 i32 @gsl_sf_taylorcoeff_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !675 double @asin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !679 double @sqrt(double noundef) local_unnamed_addr #6

declare !dbg !680 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !683 double @log(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !684 double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !685 double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "laguerre.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c5a290d7ce6958bcc8af086b9673dfc2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !18, globals: !58, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 39, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!23 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!24 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!25 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!26 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!27 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!28 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!29 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!30 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!31 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!32 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!33 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!34 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!35 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!36 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!37 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!38 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!39 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!40 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!41 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!42 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!43 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!44 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!45 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!46 = !DIEnumerator(name: "GSL_ESING", value: 21)
!47 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!48 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!49 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!50 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!51 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!52 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!53 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!54 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!55 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!56 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!57 = !DIEnumerator(name: "GSL_EOF", value: 32)
!58 = !{!0, !7, !59, !64, !66, !12}
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 35)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !61, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 329, type: !61, isLocal: true, isDefinition: true)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 7, !"uwtable", i32 2}
!74 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!75 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!76 = distinct !DISubprogram(name: "gsl_sf_laguerre_1_e", scope: !2, file: !2, line: 174, type: !77, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !88)
!77 = !DISubroutineType(types: !78)
!78 = !{!21, !79, !79, !81}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !83, line: 41, baseType: !84)
!83 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !83, line: 37, size: 128, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !84, file: !83, line: 38, baseType: !80, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !84, file: !83, line: 39, baseType: !80, size: 64, offset: 64)
!88 = !{!89, !90, !91}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !76, file: !2, line: 174, type: !79)
!90 = !DILocalVariable(name: "x", arg: 2, scope: !76, file: !2, line: 174, type: !79)
!91 = !DILocalVariable(name: "result", arg: 3, scope: !76, file: !2, line: 174, type: !81)
!92 = !DILocation(line: 0, scope: !76)
!93 = !DILocation(line: 179, column: 27, scope: !94)
!94 = distinct !DILexicalBlock(scope: !76, file: !2, line: 178, column: 3)
!95 = !DILocation(line: 179, column: 17, scope: !94)
!96 = !{!97, !98, i64 0}
!97 = !{!"gsl_sf_result_struct", !98, i64 0, !98, i64 8}
!98 = !{!"double", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C/C++ TBAA"}
!101 = !DILocation(line: 180, column: 50, scope: !94)
!102 = !DILocation(line: 180, column: 60, scope: !94)
!103 = !DILocation(line: 180, column: 41, scope: !94)
!104 = !DILocation(line: 180, column: 13, scope: !94)
!105 = !DILocation(line: 180, column: 17, scope: !94)
!106 = !{!97, !98, i64 8}
!107 = !DILocation(line: 181, column: 5, scope: !94)
!108 = distinct !DISubprogram(name: "gsl_sf_laguerre_2_e", scope: !2, file: !2, line: 186, type: !77, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !109)
!109 = !{!110, !111, !112, !113, !116, !117}
!110 = !DILocalVariable(name: "a", arg: 1, scope: !108, file: !2, line: 186, type: !79)
!111 = !DILocalVariable(name: "x", arg: 2, scope: !108, file: !2, line: 186, type: !79)
!112 = !DILocalVariable(name: "result", arg: 3, scope: !108, file: !2, line: 186, type: !81)
!113 = !DILocalVariable(name: "c0", scope: !114, file: !2, line: 196, type: !80)
!114 = distinct !DILexicalBlock(scope: !115, file: !2, line: 195, column: 8)
!115 = distinct !DILexicalBlock(scope: !108, file: !2, line: 190, column: 6)
!116 = !DILocalVariable(name: "c1", scope: !114, file: !2, line: 197, type: !80)
!117 = !DILocalVariable(name: "c2", scope: !114, file: !2, line: 198, type: !80)
!118 = !DILocation(line: 0, scope: !108)
!119 = !DILocation(line: 190, column: 8, scope: !115)
!120 = !DILocation(line: 190, column: 6, scope: !108)
!121 = !DILocation(line: 191, column: 22, scope: !122)
!122 = distinct !DILexicalBlock(scope: !115, file: !2, line: 190, column: 17)
!123 = !DILocation(line: 191, column: 24, scope: !122)
!124 = !DILocation(line: 192, column: 43, scope: !122)
!125 = !DILocation(line: 192, column: 41, scope: !122)
!126 = !DILocation(line: 193, column: 5, scope: !122)
!127 = !DILocation(line: 196, column: 21, scope: !114)
!128 = !DILocation(line: 196, column: 30, scope: !114)
!129 = !DILocation(line: 0, scope: !114)
!130 = !DILocation(line: 197, column: 17, scope: !114)
!131 = !DILocation(line: 198, column: 21, scope: !114)
!132 = !DILocation(line: 199, column: 27, scope: !114)
!133 = !DILocation(line: 199, column: 39, scope: !114)
!134 = !DILocation(line: 199, column: 29, scope: !114)
!135 = !DILocation(line: 200, column: 45, scope: !114)
!136 = !DILocation(line: 200, column: 62, scope: !114)
!137 = !DILocation(line: 200, column: 60, scope: !114)
!138 = !DILocation(line: 200, column: 88, scope: !114)
!139 = !DILocation(line: 200, column: 86, scope: !114)
!140 = !DILocation(line: 200, column: 73, scope: !114)
!141 = !DILocation(line: 200, column: 42, scope: !114)
!142 = !DILocation(line: 201, column: 44, scope: !114)
!143 = !DILocation(line: 201, column: 42, scope: !114)
!144 = !DILocation(line: 0, scope: !115)
!145 = !DILocation(line: 204, column: 1, scope: !108)
!146 = distinct !DISubprogram(name: "gsl_sf_laguerre_3_e", scope: !2, file: !2, line: 207, type: !77, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !147)
!147 = !{!148, !149, !150, !151, !154, !157, !158, !159}
!148 = !DILocalVariable(name: "a", arg: 1, scope: !146, file: !2, line: 207, type: !79)
!149 = !DILocalVariable(name: "x", arg: 2, scope: !146, file: !2, line: 207, type: !79)
!150 = !DILocalVariable(name: "result", arg: 3, scope: !146, file: !2, line: 207, type: !81)
!151 = !DILocalVariable(name: "x2_6", scope: !152, file: !2, line: 212, type: !80)
!152 = distinct !DILexicalBlock(scope: !153, file: !2, line: 211, column: 17)
!153 = distinct !DILexicalBlock(scope: !146, file: !2, line: 211, column: 6)
!154 = !DILocalVariable(name: "c0", scope: !155, file: !2, line: 224, type: !80)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 223, column: 8)
!156 = distinct !DILexicalBlock(scope: !153, file: !2, line: 218, column: 11)
!157 = !DILocalVariable(name: "c1", scope: !155, file: !2, line: 225, type: !80)
!158 = !DILocalVariable(name: "c2", scope: !155, file: !2, line: 226, type: !80)
!159 = !DILocalVariable(name: "c3", scope: !155, file: !2, line: 227, type: !80)
!160 = !DILocation(line: 0, scope: !146)
!161 = !DILocation(line: 211, column: 8, scope: !153)
!162 = !DILocation(line: 211, column: 6, scope: !146)
!163 = !DILocation(line: 212, column: 21, scope: !152)
!164 = !DILocation(line: 212, column: 23, scope: !152)
!165 = !DILocation(line: 0, scope: !152)
!166 = !DILocation(line: 213, column: 25, scope: !152)
!167 = !DILocation(line: 213, column: 18, scope: !152)
!168 = !DILocation(line: 214, column: 34, scope: !152)
!169 = !DILocation(line: 214, column: 25, scope: !152)
!170 = !DILocation(line: 214, column: 43, scope: !152)
!171 = !DILocation(line: 214, column: 49, scope: !152)
!172 = !DILocation(line: 214, column: 13, scope: !152)
!173 = !DILocation(line: 215, column: 44, scope: !152)
!174 = !DILocation(line: 215, column: 42, scope: !152)
!175 = !DILocation(line: 215, column: 17, scope: !152)
!176 = !DILocation(line: 218, column: 13, scope: !156)
!177 = !DILocation(line: 218, column: 11, scope: !153)
!178 = !DILocation(line: 219, column: 19, scope: !179)
!179 = distinct !DILexicalBlock(scope: !156, file: !2, line: 218, column: 22)
!180 = !DILocation(line: 219, column: 21, scope: !179)
!181 = !DILocation(line: 219, column: 23, scope: !179)
!182 = !DILocation(line: 219, column: 17, scope: !179)
!183 = !DILocation(line: 220, column: 43, scope: !179)
!184 = !DILocation(line: 220, column: 41, scope: !179)
!185 = !DILocation(line: 220, column: 13, scope: !179)
!186 = !DILocation(line: 220, column: 17, scope: !179)
!187 = !DILocation(line: 221, column: 5, scope: !179)
!188 = !DILocation(line: 224, column: 29, scope: !155)
!189 = !DILocation(line: 224, column: 24, scope: !155)
!190 = !DILocation(line: 224, column: 32, scope: !155)
!191 = !DILocation(line: 224, column: 41, scope: !155)
!192 = !DILocation(line: 0, scope: !155)
!193 = !DILocation(line: 225, column: 21, scope: !155)
!194 = !DILocation(line: 225, column: 27, scope: !155)
!195 = !DILocation(line: 226, column: 21, scope: !155)
!196 = !DILocation(line: 227, column: 26, scope: !155)
!197 = !DILocation(line: 227, column: 21, scope: !155)
!198 = !DILocation(line: 228, column: 27, scope: !155)
!199 = !DILocation(line: 228, column: 39, scope: !155)
!200 = !DILocation(line: 228, column: 51, scope: !155)
!201 = !DILocation(line: 228, column: 41, scope: !155)
!202 = !DILocation(line: 228, column: 29, scope: !155)
!203 = !DILocation(line: 228, column: 18, scope: !155)
!204 = !DILocation(line: 229, column: 32, scope: !155)
!205 = !DILocation(line: 229, column: 30, scope: !155)
!206 = !DILocation(line: 229, column: 13, scope: !155)
!207 = !DILocation(line: 230, column: 32, scope: !155)
!208 = !DILocation(line: 230, column: 30, scope: !155)
!209 = !DILocation(line: 230, column: 43, scope: !155)
!210 = !DILocation(line: 231, column: 45, scope: !155)
!211 = !DILocation(line: 231, column: 62, scope: !155)
!212 = !DILocation(line: 231, column: 60, scope: !155)
!213 = !DILocation(line: 231, column: 73, scope: !155)
!214 = !DILocation(line: 231, column: 42, scope: !155)
!215 = !DILocation(line: 232, column: 44, scope: !155)
!216 = !DILocation(line: 232, column: 42, scope: !155)
!217 = !DILocation(line: 232, column: 17, scope: !155)
!218 = !DILocation(line: 235, column: 1, scope: !146)
!219 = distinct !DISubprogram(name: "gsl_sf_laguerre_n_e", scope: !2, file: !2, line: 238, type: !220, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !223)
!220 = !DISubroutineType(types: !221)
!221 = !{!21, !222, !79, !79, !81}
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!223 = !{!224, !225, !226, !227, !228, !234, !235, !241, !242, !243, !244, !245}
!224 = !DILocalVariable(name: "n", arg: 1, scope: !219, file: !2, line: 238, type: !222)
!225 = !DILocalVariable(name: "a", arg: 2, scope: !219, file: !2, line: 238, type: !79)
!226 = !DILocalVariable(name: "x", arg: 3, scope: !219, file: !2, line: 238, type: !79)
!227 = !DILocalVariable(name: "result", arg: 4, scope: !219, file: !2, line: 239, type: !81)
!228 = !DILocalVariable(name: "product", scope: !229, file: !2, line: 257, type: !80)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 256, column: 21)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 256, column: 11)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 251, column: 11)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 246, column: 11)
!233 = distinct !DILexicalBlock(scope: !219, file: !2, line: 243, column: 6)
!234 = !DILocalVariable(name: "k", scope: !229, file: !2, line: 258, type: !21)
!235 = !DILocalVariable(name: "lg2", scope: !236, file: !2, line: 290, type: !82)
!236 = distinct !DILexicalBlock(scope: !237, file: !2, line: 289, column: 46)
!237 = distinct !DILexicalBlock(scope: !238, file: !2, line: 289, column: 11)
!238 = distinct !DILexicalBlock(scope: !239, file: !2, line: 286, column: 11)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 273, column: 11)
!240 = distinct !DILexicalBlock(scope: !230, file: !2, line: 266, column: 11)
!241 = !DILocalVariable(name: "stat_lg2", scope: !236, file: !2, line: 291, type: !21)
!242 = !DILocalVariable(name: "Lkm1", scope: !236, file: !2, line: 292, type: !80)
!243 = !DILocalVariable(name: "Lk", scope: !236, file: !2, line: 293, type: !80)
!244 = !DILocalVariable(name: "Lkp1", scope: !236, file: !2, line: 294, type: !80)
!245 = !DILocalVariable(name: "k", scope: !236, file: !2, line: 295, type: !21)
!246 = distinct !DIAssignID()
!247 = !DILocation(line: 0, scope: !236)
!248 = !DILocation(line: 0, scope: !219)
!249 = !DILocation(line: 243, column: 8, scope: !233)
!250 = !DILocation(line: 243, column: 6, scope: !219)
!251 = !DILocation(line: 244, column: 5, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !2, line: 244, column: 5)
!253 = distinct !DILexicalBlock(scope: !233, file: !2, line: 243, column: 13)
!254 = !DILocation(line: 244, column: 5, scope: !255)
!255 = distinct !DILexicalBlock(scope: !252, file: !2, line: 244, column: 5)
!256 = !DILocation(line: 246, column: 11, scope: !233)
!257 = !DILocation(line: 247, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !232, file: !2, line: 246, column: 19)
!259 = !DILocation(line: 248, column: 13, scope: !258)
!260 = !DILocation(line: 248, column: 17, scope: !258)
!261 = !DILocation(line: 249, column: 5, scope: !258)
!262 = !DILocation(line: 252, column: 27, scope: !263)
!263 = distinct !DILexicalBlock(scope: !231, file: !2, line: 251, column: 19)
!264 = !DILocation(line: 252, column: 17, scope: !263)
!265 = !DILocation(line: 253, column: 50, scope: !263)
!266 = !DILocation(line: 253, column: 60, scope: !263)
!267 = !DILocation(line: 253, column: 41, scope: !263)
!268 = !DILocation(line: 253, column: 13, scope: !263)
!269 = !DILocation(line: 253, column: 17, scope: !263)
!270 = !DILocation(line: 254, column: 5, scope: !263)
!271 = !DILocation(line: 256, column: 13, scope: !230)
!272 = !DILocation(line: 256, column: 11, scope: !231)
!273 = !DILocation(line: 259, column: 5, scope: !274)
!274 = distinct !DILexicalBlock(scope: !229, file: !2, line: 259, column: 5)
!275 = !DILocation(line: 0, scope: !229)
!276 = !DILocation(line: 260, column: 23, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 259, column: 25)
!278 = distinct !DILexicalBlock(scope: !274, file: !2, line: 259, column: 5)
!279 = !DILocation(line: 260, column: 25, scope: !277)
!280 = !DILocation(line: 260, column: 15, scope: !277)
!281 = !DILocation(line: 259, column: 21, scope: !278)
!282 = distinct !{!282, !273, !283, !284}
!283 = !DILocation(line: 261, column: 5, scope: !274)
!284 = !{!"llvm.loop.mustprogress"}
!285 = distinct !{!285, !286}
!286 = !{!"llvm.loop.unroll.disable"}
!287 = !DILocation(line: 262, column: 17, scope: !229)
!288 = !DILocation(line: 263, column: 26, scope: !229)
!289 = !DILocation(line: 263, column: 23, scope: !229)
!290 = !DILocation(line: 263, column: 35, scope: !229)
!291 = !DILocation(line: 263, column: 55, scope: !229)
!292 = !DILocation(line: 263, column: 53, scope: !229)
!293 = !DILocation(line: 263, column: 13, scope: !229)
!294 = !DILocation(line: 263, column: 17, scope: !229)
!295 = !DILocation(line: 266, column: 13, scope: !240)
!296 = !DILocation(line: 266, column: 19, scope: !240)
!297 = !DILocation(line: 271, column: 12, scope: !298)
!298 = distinct !DILexicalBlock(scope: !240, file: !2, line: 266, column: 32)
!299 = !DILocation(line: 271, column: 5, scope: !298)
!300 = !DILocation(line: 273, column: 13, scope: !239)
!301 = !DILocation(line: 273, column: 17, scope: !239)
!302 = !DILocation(line: 273, column: 23, scope: !239)
!303 = !DILocation(line: 273, column: 29, scope: !239)
!304 = !DILocation(line: 273, column: 38, scope: !239)
!305 = !DILocation(line: 273, column: 36, scope: !239)
!306 = !DILocation(line: 273, column: 34, scope: !239)
!307 = !DILocation(line: 273, column: 11, scope: !240)
!308 = !DILocation(line: 281, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 281, column: 8)
!310 = distinct !DILexicalBlock(scope: !239, file: !2, line: 273, column: 43)
!311 = !DILocation(line: 281, column: 39, scope: !309)
!312 = !DILocation(line: 281, column: 8, scope: !310)
!313 = !DILocation(line: 284, column: 14, scope: !309)
!314 = !DILocation(line: 284, column: 7, scope: !309)
!315 = !DILocation(line: 286, column: 11, scope: !238)
!316 = !DILocation(line: 286, column: 13, scope: !238)
!317 = !DILocation(line: 286, column: 23, scope: !238)
!318 = !DILocation(line: 286, column: 56, scope: !238)
!319 = !DILocation(line: 286, column: 68, scope: !238)
!320 = !DILocation(line: 286, column: 51, scope: !238)
!321 = !DILocation(line: 286, column: 11, scope: !239)
!322 = !DILocation(line: 287, column: 12, scope: !323)
!323 = distinct !DILexicalBlock(scope: !238, file: !2, line: 286, column: 72)
!324 = !DILocation(line: 287, column: 5, scope: !323)
!325 = !DILocation(line: 289, column: 13, scope: !237)
!326 = !DILocation(line: 289, column: 20, scope: !237)
!327 = !DILocation(line: 290, column: 5, scope: !236)
!328 = !DILocation(line: 291, column: 20, scope: !236)
!329 = !DILocation(line: 293, column: 23, scope: !236)
!330 = !DILocation(line: 297, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !236, file: !2, line: 297, column: 5)
!332 = !DILocation(line: 292, column: 27, scope: !236)
!333 = !DILocation(line: 298, column: 17, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 297, column: 24)
!335 = distinct !DILexicalBlock(scope: !331, file: !2, line: 297, column: 5)
!336 = !DILocation(line: 298, column: 33, scope: !334)
!337 = !DILocation(line: 298, column: 37, scope: !334)
!338 = !DILocation(line: 298, column: 41, scope: !334)
!339 = !DILocation(line: 298, column: 44, scope: !334)
!340 = !DILocation(line: 298, column: 27, scope: !334)
!341 = !DILocation(line: 298, column: 51, scope: !334)
!342 = !DILocation(line: 298, column: 48, scope: !334)
!343 = !DILocation(line: 297, column: 20, scope: !335)
!344 = distinct !{!344, !330, !345, !284}
!345 = !DILocation(line: 301, column: 5, scope: !331)
!346 = !DILocation(line: 302, column: 17, scope: !236)
!347 = !DILocation(line: 303, column: 29, scope: !236)
!348 = !DILocation(line: 303, column: 32, scope: !236)
!349 = !DILocation(line: 303, column: 20, scope: !236)
!350 = !DILocation(line: 303, column: 61, scope: !236)
!351 = !DILocation(line: 303, column: 67, scope: !236)
!352 = !DILocation(line: 303, column: 65, scope: !236)
!353 = !DILocation(line: 303, column: 13, scope: !236)
!354 = !DILocation(line: 303, column: 17, scope: !236)
!355 = !DILocation(line: 305, column: 3, scope: !237)
!356 = !DILocation(line: 308, column: 12, scope: !357)
!357 = distinct !DILexicalBlock(scope: !237, file: !2, line: 306, column: 8)
!358 = !DILocation(line: 308, column: 5, scope: !357)
!359 = !DILocation(line: 0, scope: !233)
!360 = !DILocation(line: 310, column: 1, scope: !219)
!361 = !DISubprogram(name: "gsl_error", scope: !20, file: !20, line: 77, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364, !364, !21, !21}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!366 = distinct !DISubprogram(name: "laguerre_n_cp", scope: !2, file: !2, line: 89, type: !220, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !367)
!367 = !{!368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !390}
!368 = !DILocalVariable(name: "n", arg: 1, scope: !366, file: !2, line: 89, type: !222)
!369 = !DILocalVariable(name: "a", arg: 2, scope: !366, file: !2, line: 89, type: !79)
!370 = !DILocalVariable(name: "x", arg: 3, scope: !366, file: !2, line: 89, type: !79)
!371 = !DILocalVariable(name: "result", arg: 4, scope: !366, file: !2, line: 89, type: !81)
!372 = !DILocalVariable(name: "lnfact", scope: !366, file: !2, line: 91, type: !82)
!373 = !DILocalVariable(name: "lg1", scope: !366, file: !2, line: 92, type: !82)
!374 = !DILocalVariable(name: "lg2", scope: !366, file: !2, line: 93, type: !82)
!375 = !DILocalVariable(name: "s1", scope: !366, file: !2, line: 94, type: !80)
!376 = !DILocalVariable(name: "s2", scope: !366, file: !2, line: 94, type: !80)
!377 = !DILocalVariable(name: "stat_f", scope: !366, file: !2, line: 95, type: !21)
!378 = !DILocalVariable(name: "stat_g1", scope: !366, file: !2, line: 96, type: !21)
!379 = !DILocalVariable(name: "stat_g2", scope: !366, file: !2, line: 97, type: !21)
!380 = !DILocalVariable(name: "poly_1F1_val", scope: !366, file: !2, line: 98, type: !80)
!381 = !DILocalVariable(name: "poly_1F1_err", scope: !366, file: !2, line: 99, type: !80)
!382 = !DILocalVariable(name: "stat_e", scope: !366, file: !2, line: 100, type: !21)
!383 = !DILocalVariable(name: "k", scope: !366, file: !2, line: 101, type: !21)
!384 = !DILocalVariable(name: "lnpre_val", scope: !366, file: !2, line: 103, type: !80)
!385 = !DILocalVariable(name: "lnpre_err", scope: !366, file: !2, line: 104, type: !80)
!386 = !DILocalVariable(name: "t", scope: !387, file: !2, line: 107, type: !80)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 106, column: 25)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 106, column: 3)
!389 = distinct !DILexicalBlock(scope: !366, file: !2, line: 106, column: 3)
!390 = !DILocalVariable(name: "r", scope: !387, file: !2, line: 108, type: !80)
!391 = distinct !DIAssignID()
!392 = !DILocation(line: 0, scope: !366)
!393 = distinct !DIAssignID()
!394 = distinct !DIAssignID()
!395 = distinct !DIAssignID()
!396 = distinct !DIAssignID()
!397 = !DILocation(line: 91, column: 3, scope: !366)
!398 = !DILocation(line: 92, column: 3, scope: !366)
!399 = !DILocation(line: 93, column: 3, scope: !366)
!400 = !DILocation(line: 94, column: 3, scope: !366)
!401 = !DILocation(line: 95, column: 16, scope: !366)
!402 = !DILocation(line: 96, column: 44, scope: !366)
!403 = !DILocation(line: 96, column: 17, scope: !366)
!404 = !DILocation(line: 97, column: 17, scope: !366)
!405 = !DILocation(line: 103, column: 27, scope: !366)
!406 = !DILocation(line: 103, column: 37, scope: !366)
!407 = !DILocation(line: 103, column: 51, scope: !366)
!408 = !DILocation(line: 104, column: 26, scope: !366)
!409 = !DILocation(line: 104, column: 36, scope: !366)
!410 = !DILocation(line: 104, column: 49, scope: !366)
!411 = !DILocation(line: 104, column: 79, scope: !366)
!412 = !DILocation(line: 104, column: 77, scope: !366)
!413 = !DILocation(line: 106, column: 15, scope: !388)
!414 = !DILocation(line: 106, column: 3, scope: !389)
!415 = !DILocation(line: 106, scope: !389)
!416 = !DILocation(line: 107, column: 19, scope: !387)
!417 = !DILocation(line: 107, column: 16, scope: !387)
!418 = !DILocation(line: 107, column: 30, scope: !387)
!419 = !DILocation(line: 107, column: 22, scope: !387)
!420 = !DILocation(line: 107, column: 38, scope: !387)
!421 = !DILocation(line: 107, column: 37, scope: !387)
!422 = !DILocation(line: 107, column: 33, scope: !387)
!423 = !DILocation(line: 0, scope: !387)
!424 = !DILocation(line: 108, column: 23, scope: !387)
!425 = !DILocation(line: 109, column: 27, scope: !426)
!426 = distinct !DILexicalBlock(scope: !387, file: !2, line: 109, column: 8)
!427 = !DILocation(line: 109, column: 10, scope: !426)
!428 = !DILocation(line: 109, column: 8, scope: !387)
!429 = !DILocation(line: 111, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !431, file: !2, line: 111, column: 7)
!431 = distinct !DILexicalBlock(scope: !426, file: !2, line: 109, column: 42)
!432 = !DILocation(line: 115, column: 31, scope: !433)
!433 = distinct !DILexicalBlock(scope: !426, file: !2, line: 113, column: 10)
!434 = !DILocation(line: 116, column: 41, scope: !433)
!435 = !DILocation(line: 116, column: 49, scope: !433)
!436 = !DILocation(line: 116, column: 20, scope: !433)
!437 = !DILocation(line: 99, column: 10, scope: !366)
!438 = !DILocation(line: 98, column: 10, scope: !366)
!439 = !DILocation(line: 120, column: 12, scope: !366)
!440 = !DILocation(line: 124, column: 10, scope: !366)
!441 = !DILocation(line: 125, column: 1, scope: !366)
!442 = distinct !DISubprogram(name: "laguerre_n_poly_safe", scope: !2, file: !2, line: 135, type: !220, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !456, !457, !458}
!444 = !DILocalVariable(name: "n", arg: 1, scope: !442, file: !2, line: 135, type: !222)
!445 = !DILocalVariable(name: "a", arg: 2, scope: !442, file: !2, line: 135, type: !79)
!446 = !DILocalVariable(name: "x", arg: 3, scope: !442, file: !2, line: 135, type: !79)
!447 = !DILocalVariable(name: "result", arg: 4, scope: !442, file: !2, line: 135, type: !81)
!448 = !DILocalVariable(name: "b", scope: !442, file: !2, line: 137, type: !79)
!449 = !DILocalVariable(name: "mx", scope: !442, file: !2, line: 138, type: !79)
!450 = !DILocalVariable(name: "tc_sgn", scope: !442, file: !2, line: 139, type: !79)
!451 = !DILocalVariable(name: "tc", scope: !442, file: !2, line: 140, type: !82)
!452 = !DILocalVariable(name: "stat_tc", scope: !442, file: !2, line: 141, type: !21)
!453 = !DILocalVariable(name: "term", scope: !454, file: !2, line: 144, type: !80)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 143, column: 30)
!455 = distinct !DILexicalBlock(scope: !442, file: !2, line: 143, column: 6)
!456 = !DILocalVariable(name: "sum_val", scope: !454, file: !2, line: 145, type: !80)
!457 = !DILocalVariable(name: "sum_err", scope: !454, file: !2, line: 146, type: !80)
!458 = !DILocalVariable(name: "k", scope: !454, file: !2, line: 147, type: !21)
!459 = distinct !DIAssignID()
!460 = !DILocation(line: 0, scope: !442)
!461 = !DILocation(line: 138, column: 21, scope: !442)
!462 = !DILocation(line: 139, column: 28, scope: !442)
!463 = !DILocation(line: 139, column: 26, scope: !442)
!464 = !DILocation(line: 139, column: 43, scope: !442)
!465 = !DILocation(line: 140, column: 3, scope: !442)
!466 = !DILocation(line: 141, column: 41, scope: !442)
!467 = !DILocation(line: 141, column: 17, scope: !442)
!468 = !DILocation(line: 143, column: 6, scope: !442)
!469 = !DILocation(line: 144, column: 22, scope: !454)
!470 = !DILocation(line: 144, column: 26, scope: !454)
!471 = !DILocation(line: 0, scope: !454)
!472 = !DILocation(line: 146, column: 25, scope: !454)
!473 = !DILocation(line: 148, column: 17, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 148, column: 5)
!475 = distinct !DILexicalBlock(scope: !454, file: !2, line: 148, column: 5)
!476 = !DILocation(line: 148, column: 5, scope: !475)
!477 = !DILocation(line: 148, scope: !475)
!478 = !DILocation(line: 149, column: 19, scope: !479)
!479 = distinct !DILexicalBlock(scope: !474, file: !2, line: 148, column: 27)
!480 = !DILocation(line: 149, column: 24, scope: !479)
!481 = !DILocation(line: 149, column: 22, scope: !479)
!482 = !DILocation(line: 149, column: 21, scope: !479)
!483 = !DILocation(line: 149, column: 28, scope: !479)
!484 = !DILocation(line: 149, column: 36, scope: !479)
!485 = !DILocation(line: 149, column: 12, scope: !479)
!486 = !DILocation(line: 151, column: 42, scope: !479)
!487 = !DILocation(line: 151, column: 40, scope: !479)
!488 = distinct !{!488, !476, !489, !284}
!489 = !DILocation(line: 152, column: 5, scope: !475)
!490 = !DILocation(line: 153, column: 17, scope: !454)
!491 = !DILocation(line: 154, column: 53, scope: !454)
!492 = !DILocation(line: 154, column: 51, scope: !454)
!493 = !DILocation(line: 154, column: 13, scope: !454)
!494 = !DILocation(line: 154, column: 17, scope: !454)
!495 = !DILocation(line: 159, column: 17, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !2, line: 157, column: 35)
!497 = distinct !DILexicalBlock(scope: !455, file: !2, line: 157, column: 11)
!498 = !DILocation(line: 160, column: 5, scope: !496)
!499 = !DILocation(line: 164, column: 17, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !2, line: 162, column: 8)
!501 = !DILocation(line: 165, column: 5, scope: !500)
!502 = !DILocation(line: 0, scope: !455)
!503 = !DILocation(line: 167, column: 1, scope: !442)
!504 = distinct !DISubprogram(name: "laguerre_large_n", scope: !2, file: !2, line: 48, type: !220, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!506 = !DILocalVariable(name: "n", arg: 1, scope: !504, file: !2, line: 48, type: !222)
!507 = !DILocalVariable(name: "alpha", arg: 2, scope: !504, file: !2, line: 48, type: !79)
!508 = !DILocalVariable(name: "x", arg: 3, scope: !504, file: !2, line: 48, type: !79)
!509 = !DILocalVariable(name: "result", arg: 4, scope: !504, file: !2, line: 49, type: !81)
!510 = !DILocalVariable(name: "a", scope: !504, file: !2, line: 51, type: !79)
!511 = !DILocalVariable(name: "b", scope: !504, file: !2, line: 52, type: !79)
!512 = !DILocalVariable(name: "eta", scope: !504, file: !2, line: 53, type: !79)
!513 = !DILocalVariable(name: "cos2th", scope: !504, file: !2, line: 54, type: !79)
!514 = !DILocalVariable(name: "sin2th", scope: !504, file: !2, line: 55, type: !79)
!515 = !DILocalVariable(name: "eps", scope: !504, file: !2, line: 56, type: !79)
!516 = !DILocalVariable(name: "pre_h", scope: !504, file: !2, line: 57, type: !79)
!517 = !DILocalVariable(name: "lg_b", scope: !504, file: !2, line: 58, type: !82)
!518 = !DILocalVariable(name: "lnfact", scope: !504, file: !2, line: 59, type: !82)
!519 = !DILocalVariable(name: "stat_lg", scope: !504, file: !2, line: 60, type: !21)
!520 = !DILocalVariable(name: "stat_lf", scope: !504, file: !2, line: 61, type: !21)
!521 = !DILocalVariable(name: "pre_term1", scope: !504, file: !2, line: 62, type: !80)
!522 = !DILocalVariable(name: "pre_term2", scope: !504, file: !2, line: 63, type: !80)
!523 = !DILocalVariable(name: "lnpre_val", scope: !504, file: !2, line: 64, type: !80)
!524 = !DILocalVariable(name: "lnpre_err", scope: !504, file: !2, line: 65, type: !80)
!525 = !DILocalVariable(name: "phi1", scope: !504, file: !2, line: 67, type: !80)
!526 = !DILocalVariable(name: "ser_term1", scope: !504, file: !2, line: 68, type: !80)
!527 = !DILocalVariable(name: "A1", scope: !504, file: !2, line: 70, type: !80)
!528 = !DILocalVariable(name: "ser_term2", scope: !504, file: !2, line: 71, type: !80)
!529 = !DILocalVariable(name: "ser_val", scope: !504, file: !2, line: 73, type: !80)
!530 = !DILocalVariable(name: "ser_err", scope: !504, file: !2, line: 74, type: !80)
!531 = !DILocalVariable(name: "stat_e", scope: !504, file: !2, line: 75, type: !21)
!532 = distinct !DIAssignID()
!533 = !DILocation(line: 0, scope: !504)
!534 = distinct !DIAssignID()
!535 = !DILocation(line: 51, column: 20, scope: !504)
!536 = !DILocation(line: 53, column: 28, scope: !504)
!537 = !DILocation(line: 53, column: 36, scope: !504)
!538 = !DILocation(line: 54, column: 26, scope: !504)
!539 = !DILocation(line: 56, column: 27, scope: !504)
!540 = !DILocation(line: 57, column: 39, scope: !504)
!541 = !DILocation(line: 57, column: 43, scope: !504)
!542 = !DILocation(line: 57, column: 47, scope: !504)
!543 = !DILocation(line: 57, column: 54, scope: !504)
!544 = !DILocation(line: 58, column: 3, scope: !504)
!545 = !DILocation(line: 59, column: 3, scope: !504)
!546 = !DILocation(line: 60, column: 36, scope: !504)
!547 = !DILocation(line: 60, column: 17, scope: !504)
!548 = !DILocation(line: 61, column: 17, scope: !504)
!549 = !DILocation(line: 62, column: 25, scope: !504)
!550 = !DILocation(line: 62, column: 42, scope: !504)
!551 = !DILocation(line: 62, column: 44, scope: !504)
!552 = !DILocation(line: 62, column: 33, scope: !504)
!553 = !DILocation(line: 63, column: 26, scope: !504)
!554 = !DILocation(line: 64, column: 27, scope: !504)
!555 = !DILocation(line: 64, column: 40, scope: !504)
!556 = !DILocation(line: 64, column: 49, scope: !504)
!557 = !DILocation(line: 64, column: 52, scope: !504)
!558 = !DILocation(line: 64, column: 64, scope: !504)
!559 = !DILocation(line: 65, column: 27, scope: !504)
!560 = !DILocation(line: 65, column: 40, scope: !504)
!561 = !DILocation(line: 65, column: 65, scope: !504)
!562 = !DILocation(line: 65, column: 81, scope: !504)
!563 = !DILocation(line: 65, column: 62, scope: !504)
!564 = !DILocation(line: 67, column: 21, scope: !504)
!565 = !DILocation(line: 67, column: 28, scope: !504)
!566 = !DILocation(line: 67, column: 25, scope: !504)
!567 = !DILocation(line: 68, column: 22, scope: !504)
!568 = !DILocation(line: 70, column: 35, scope: !504)
!569 = !DILocation(line: 70, column: 30, scope: !504)
!570 = !DILocation(line: 70, column: 48, scope: !504)
!571 = !DILocation(line: 70, column: 50, scope: !504)
!572 = !DILocation(line: 70, column: 56, scope: !504)
!573 = !DILocation(line: 70, column: 58, scope: !504)
!574 = !DILocation(line: 70, column: 63, scope: !504)
!575 = !DILocation(line: 70, column: 71, scope: !504)
!576 = !DILocation(line: 71, column: 22, scope: !504)
!577 = !DILocation(line: 71, column: 26, scope: !504)
!578 = !DILocation(line: 71, column: 47, scope: !504)
!579 = !DILocation(line: 71, column: 37, scope: !504)
!580 = !DILocation(line: 74, column: 29, scope: !504)
!581 = !DILocation(line: 74, column: 61, scope: !504)
!582 = !DILocation(line: 74, column: 79, scope: !504)
!583 = !DILocation(line: 74, column: 58, scope: !504)
!584 = !DILocation(line: 75, column: 16, scope: !504)
!585 = !DILocation(line: 76, column: 60, scope: !504)
!586 = !DILocation(line: 76, column: 47, scope: !504)
!587 = !DILocation(line: 76, column: 45, scope: !504)
!588 = !DILocation(line: 76, column: 11, scope: !504)
!589 = !DILocation(line: 76, column: 15, scope: !504)
!590 = !DILocation(line: 77, column: 10, scope: !504)
!591 = !DILocation(line: 78, column: 1, scope: !504)
!592 = !DILocation(line: 77, column: 3, scope: !504)
!593 = distinct !DISubprogram(name: "gsl_sf_laguerre_1", scope: !2, file: !2, line: 317, type: !594, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{!80, !80, !80}
!596 = !{!597, !598, !599, !600}
!597 = !DILocalVariable(name: "a", arg: 1, scope: !593, file: !2, line: 317, type: !80)
!598 = !DILocalVariable(name: "x", arg: 2, scope: !593, file: !2, line: 317, type: !80)
!599 = !DILocalVariable(name: "result", scope: !593, file: !2, line: 319, type: !82)
!600 = !DILocalVariable(name: "status", scope: !593, file: !2, line: 319, type: !21)
!601 = !DILocation(line: 0, scope: !593)
!602 = !DILocation(line: 0, scope: !76, inlinedAt: !603)
!603 = distinct !DILocation(line: 319, column: 3, scope: !593)
!604 = !DILocation(line: 179, column: 27, scope: !94, inlinedAt: !603)
!605 = !DILocation(line: 320, column: 1, scope: !593)
!606 = distinct !DISubprogram(name: "gsl_sf_laguerre_2", scope: !2, file: !2, line: 322, type: !594, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !607)
!607 = !{!608, !609, !610, !611}
!608 = !DILocalVariable(name: "a", arg: 1, scope: !606, file: !2, line: 322, type: !80)
!609 = !DILocalVariable(name: "x", arg: 2, scope: !606, file: !2, line: 322, type: !80)
!610 = !DILocalVariable(name: "result", scope: !606, file: !2, line: 324, type: !82)
!611 = !DILocalVariable(name: "status", scope: !606, file: !2, line: 324, type: !21)
!612 = !DILocation(line: 0, scope: !606)
!613 = !DILocation(line: 0, scope: !108, inlinedAt: !614)
!614 = distinct !DILocation(line: 324, column: 3, scope: !606)
!615 = !DILocation(line: 190, column: 8, scope: !115, inlinedAt: !614)
!616 = !DILocation(line: 190, column: 6, scope: !108, inlinedAt: !614)
!617 = !DILocation(line: 191, column: 22, scope: !122, inlinedAt: !614)
!618 = !DILocation(line: 191, column: 24, scope: !122, inlinedAt: !614)
!619 = !DILocation(line: 193, column: 5, scope: !122, inlinedAt: !614)
!620 = !DILocation(line: 196, column: 21, scope: !114, inlinedAt: !614)
!621 = !DILocation(line: 196, column: 30, scope: !114, inlinedAt: !614)
!622 = !DILocation(line: 0, scope: !114, inlinedAt: !614)
!623 = !DILocation(line: 197, column: 17, scope: !114, inlinedAt: !614)
!624 = !DILocation(line: 198, column: 21, scope: !114, inlinedAt: !614)
!625 = !DILocation(line: 199, column: 27, scope: !114, inlinedAt: !614)
!626 = !DILocation(line: 199, column: 39, scope: !114, inlinedAt: !614)
!627 = !DILocation(line: 199, column: 29, scope: !114, inlinedAt: !614)
!628 = !DILocation(line: 0, scope: !115, inlinedAt: !614)
!629 = !DILocation(line: 325, column: 1, scope: !606)
!630 = distinct !DISubprogram(name: "gsl_sf_laguerre_3", scope: !2, file: !2, line: 327, type: !594, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !631)
!631 = !{!632, !633, !634, !635}
!632 = !DILocalVariable(name: "a", arg: 1, scope: !630, file: !2, line: 327, type: !80)
!633 = !DILocalVariable(name: "x", arg: 2, scope: !630, file: !2, line: 327, type: !80)
!634 = !DILocalVariable(name: "result", scope: !630, file: !2, line: 329, type: !82)
!635 = !DILocalVariable(name: "status", scope: !630, file: !2, line: 329, type: !21)
!636 = distinct !DIAssignID()
!637 = !DILocation(line: 0, scope: !630)
!638 = !DILocation(line: 329, column: 3, scope: !630)
!639 = !DILocation(line: 330, column: 1, scope: !630)
!640 = distinct !DISubprogram(name: "gsl_sf_laguerre_n", scope: !2, file: !2, line: 332, type: !641, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!80, !21, !80, !80}
!643 = !{!644, !645, !646, !647, !648}
!644 = !DILocalVariable(name: "n", arg: 1, scope: !640, file: !2, line: 332, type: !21)
!645 = !DILocalVariable(name: "a", arg: 2, scope: !640, file: !2, line: 332, type: !80)
!646 = !DILocalVariable(name: "x", arg: 3, scope: !640, file: !2, line: 332, type: !80)
!647 = !DILocalVariable(name: "result", scope: !640, file: !2, line: 334, type: !82)
!648 = !DILocalVariable(name: "status", scope: !640, file: !2, line: 334, type: !21)
!649 = distinct !DIAssignID()
!650 = !DILocation(line: 0, scope: !640)
!651 = !DILocation(line: 334, column: 3, scope: !640)
!652 = !DILocation(line: 334, column: 3, scope: !653)
!653 = distinct !DILexicalBlock(scope: !640, file: !2, line: 334, column: 3)
!654 = !DILocation(line: 334, column: 3, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !2, line: 334, column: 3)
!656 = distinct !DILexicalBlock(scope: !653, file: !2, line: 334, column: 3)
!657 = !DILocation(line: 335, column: 1, scope: !640)
!658 = !DISubprogram(name: "gsl_sf_lnfact_e", scope: !659, file: !659, line: 136, type: !660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!659 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!660 = !DISubroutineType(types: !661)
!661 = !{!21, !662, !81}
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!663 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!664 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !659, file: !659, line: 58, type: !665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!665 = !DISubroutineType(types: !666)
!666 = !{!21, !80, !81, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!668 = !DISubprogram(name: "gsl_sf_exp_mult_err_e", scope: !669, file: !669, line: 122, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!669 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!670 = !DISubroutineType(types: !671)
!671 = !{!21, !79, !79, !79, !79, !81}
!672 = !DISubprogram(name: "gsl_sf_taylorcoeff_e", scope: !659, file: !659, line: 111, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!673 = !DISubroutineType(types: !674)
!674 = !{!21, !222, !79, !81}
!675 = !DISubprogram(name: "asin", scope: !676, file: !676, line: 55, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!676 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!677 = !DISubroutineType(types: !678)
!678 = !{!80, !80}
!679 = !DISubprogram(name: "sqrt", scope: !676, file: !676, line: 143, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!680 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !659, file: !659, line: 47, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!681 = !DISubroutineType(types: !682)
!682 = !{!21, !80, !81}
!683 = !DISubprogram(name: "log", scope: !676, file: !676, line: 104, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = !DISubprogram(name: "sin", scope: !676, file: !676, line: 64, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = !DISubprogram(name: "cos", scope: !676, file: !676, line: 62, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
