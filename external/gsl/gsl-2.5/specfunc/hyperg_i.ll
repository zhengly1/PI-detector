; ModuleID = 'hyperg.ll'
source_filename = "hyperg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"hyperg.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [41 x i8] c"hypergeometric series failed to converge\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !19

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hyperg_1F1_series_e(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !74 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !87, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %1, metadata !88, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %2, metadata !89, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !90, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %0, metadata !91, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %1, metadata !92, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !93, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !94, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !95, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !96, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !97, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !98, metadata !DIExpression()), !dbg !102
  br label %5, !dbg !103

5:                                                ; preds = %44, %4
  %6 = phi double [ 1.000000e+00, %4 ], [ %40, %44 ]
  %7 = phi double [ %0, %4 ], [ %handler_result3, %44 ]
  %8 = phi double [ 0.000000e+00, %4 ], [ %handler_result2, %44 ]
  %9 = phi double [ 1.000000e+00, %4 ], [ %handler_result1, %44 ]
  %10 = phi double [ 1.000000e+00, %4 ], [ %47, %44 ]
  %11 = phi double [ 1.000000e+00, %4 ], [ %39, %44 ]
  %12 = phi double [ 1.000000e+00, %4 ], [ %handler_result5, %44 ]
  %13 = phi double [ %1, %4 ], [ %handler_result4, %44 ]
  tail call void @llvm.dbg.value(metadata double %7, metadata !91, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %8, metadata !98, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %9, metadata !97, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %10, metadata !96, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %11, metadata !94, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %12, metadata !93, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %13, metadata !92, metadata !DIExpression()), !dbg !102
  %14 = fcmp oeq double %13, 0.000000e+00, !dbg !104
  br i1 %14, label %15, label %17, !dbg !106

15:                                               ; preds = %5
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !107, !tbaa !110
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !107
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !107, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 55, i32 noundef 1) #5, !dbg !116
  br label %55, !dbg !116

17:                                               ; preds = %5
  %18 = fcmp oeq double %7, 0.000000e+00, !dbg !118
  br i1 %18, label %19, label %23, !dbg !120

19:                                               ; preds = %17
  store double %9, ptr %3, align 8, !dbg !121, !tbaa !110
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !123
  %21 = fmul double %12, 0x3CC0000000000000, !dbg !124
  %22 = fmul double %21, %6, !dbg !125
  %handler_result = call double @fAddHandlerDouble(double %8, double %22), !dbg !126
  store double %handler_result, ptr %20, align 8, !dbg !126, !tbaa !115
  br label %55, !dbg !127

23:                                               ; preds = %17
  %24 = fcmp ogt double %12, 1.000000e+04, !dbg !128
  br i1 %24, label %25, label %27, !dbg !130

25:                                               ; preds = %23
  store double %9, ptr %3, align 8, !dbg !131, !tbaa !110
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !133
  store double %8, ptr %26, align 8, !dbg !134, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef 5) #5, !dbg !135
  br label %55, !dbg !135

27:                                               ; preds = %23
  %28 = fmul double %13, %12, !dbg !137
  %29 = fdiv double %7, %28, !dbg !138
  %30 = fmul double %29, %2, !dbg !139
  tail call void @llvm.dbg.value(metadata double %30, metadata !99, metadata !DIExpression()), !dbg !140
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !141
  tail call void @llvm.dbg.value(metadata double %31, metadata !101, metadata !DIExpression()), !dbg !140
  %32 = fcmp ogt double %31, 1.000000e+00, !dbg !142
  %33 = fdiv double 0x7FEFFFFFFFFFFFFF, %31
  %34 = fcmp ogt double %10, %33
  %35 = select i1 %32, i1 %34, i1 false, !dbg !144
  br i1 %35, label %36, label %38, !dbg !144

36:                                               ; preds = %27
  store double %9, ptr %3, align 8, !dbg !145, !tbaa !110
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !147
  store double %6, ptr %37, align 8, !dbg !148, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 76, i32 noundef 16) #5, !dbg !149
  br label %55, !dbg !149

38:                                               ; preds = %27
  %39 = fmul double %11, %30, !dbg !151
  tail call void @llvm.dbg.value(metadata double %39, metadata !94, metadata !DIExpression()), !dbg !102
  %handler_result1 = call double @fAddHandlerDouble(double %9, double %39), !dbg !152
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !97, metadata !DIExpression()), !dbg !102
  %40 = tail call double @llvm.fabs.f64(double %handler_result1), !dbg !152
  %41 = fcmp ogt double %40, 0x7EE4F8B588E368F0, !dbg !154
  br i1 %41, label %42, label %44, !dbg !155

42:                                               ; preds = %38
  store double %handler_result1, ptr %3, align 8, !dbg !156, !tbaa !110
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !158
  store double %40, ptr %43, align 8, !dbg !159, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 16) #5, !dbg !160
  br label %55, !dbg !160

44:                                               ; preds = %38
  %45 = tail call double @llvm.fabs.f64(double %39), !dbg !162
  tail call void @llvm.dbg.value(metadata double %45, metadata !95, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %45, metadata !163, metadata !DIExpression()), !dbg !170
  tail call void @llvm.dbg.value(metadata double %10, metadata !169, metadata !DIExpression()), !dbg !170
  %46 = fcmp ogt double %45, %10, !dbg !172
  %47 = select i1 %46, double %45, double %10, !dbg !172
  tail call void @llvm.dbg.value(metadata double %47, metadata !96, metadata !DIExpression()), !dbg !102
  %48 = fmul double %45, 0x3CC0000000000000, !dbg !173
  %handler_result2 = call double @fAddHandlerDouble(double %8, double %48), !dbg !174
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !98, metadata !DIExpression()), !dbg !102
  %handler_result3 = call double @fAddHandlerDouble(double %7, double 1.000000e+00), !dbg !175
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !91, metadata !DIExpression()), !dbg !102
  %handler_result4 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !176
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !92, metadata !DIExpression()), !dbg !102
  %handler_result5 = call double @fAddHandlerDouble(double %12, double 1.000000e+00), !dbg !177
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !97, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %39, metadata !94, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !93, metadata !DIExpression()), !dbg !102
  %49 = fdiv double %45, %40, !dbg !177
  %50 = fcmp ogt double %49, 0x3C90000000000000, !dbg !178
  br i1 %50, label %5, label %51, !dbg !103, !llvm.loop !179

51:                                               ; preds = %44
  store double %handler_result1, ptr %3, align 8, !dbg !182, !tbaa !110
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !183
  %handler_result6 = call double @fAddHandlerDouble(double %45, double %handler_result2), !dbg !184
  %53 = fmul double %handler_result5, 0x3CC0000000000000, !dbg !184
  %54 = fmul double %53, %40, !dbg !185
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %54), !dbg !186
  store double %handler_result7, ptr %52, align 8, !dbg !186, !tbaa !115
  br label %55, !dbg !187

55:                                               ; preds = %51, %42, %36, %25, %19, %15
  %56 = phi i32 [ 0, %51 ], [ 16, %42 ], [ 16, %36 ], [ 5, %25 ], [ 0, %19 ], [ 1, %15 ], !dbg !102
  ret i32 %56, !dbg !188
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !189 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hyperg_1F1_large_b_e(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !194 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !196, metadata !DIExpression()), !dbg !211
  tail call void @llvm.dbg.value(metadata double %1, metadata !197, metadata !DIExpression()), !dbg !211
  tail call void @llvm.dbg.value(metadata double %2, metadata !198, metadata !DIExpression()), !dbg !211
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !199, metadata !DIExpression()), !dbg !211
  %5 = fdiv double %2, %1, !dbg !212
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !213
  %7 = fcmp olt double %6, 1.000000e+00, !dbg !214
  br i1 %7, label %8, label %35, !dbg !215

8:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %5, metadata !200, metadata !DIExpression()), !dbg !216
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %5), !dbg !217
  %9 = fdiv double 1.000000e+00, %handler_result, !dbg !217
  tail call void @llvm.dbg.value(metadata double %9, metadata !203, metadata !DIExpression()), !dbg !216
  %10 = tail call double @pow(double noundef %9, double noundef %0) #5, !dbg !218
  tail call void @llvm.dbg.value(metadata double %10, metadata !204, metadata !DIExpression()), !dbg !216
  %11 = fmul double %5, %9, !dbg !219
  tail call void @llvm.dbg.value(metadata double %11, metadata !205, metadata !DIExpression()), !dbg !216
  %12 = fmul double %11, %11, !dbg !220
  tail call void @llvm.dbg.value(metadata double %12, metadata !206, metadata !DIExpression()), !dbg !216
  %handler_result1 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !221
  %13 = fmul double %handler_result1, %0, !dbg !221
  %14 = fmul double %1, 2.000000e+00, !dbg !222
  %15 = fdiv double %13, %14, !dbg !223
  %16 = fmul double %15, %12, !dbg !224
  tail call void @llvm.dbg.value(metadata double %16, metadata !207, metadata !DIExpression()), !dbg !216
  %17 = fmul double %1, 2.400000e+01, !dbg !225
  %18 = fmul double %17, %1, !dbg !226
  %19 = fdiv double %13, %18, !dbg !227
  %20 = fmul double %19, %12, !dbg !228
  tail call void @llvm.dbg.value(metadata double %20, metadata !208, metadata !DIExpression()), !dbg !216
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !229
  %21 = fmul double %handler_result2, 1.600000e+01, !dbg !229
  %22 = fmul double %21, %11, !dbg !230
  %handler_result3 = call double @fAddHandlerDouble(double %22, double 1.200000e+01), !dbg !231
  %23 = fmul double %handler_result2, 3.000000e+00, !dbg !231
  %handler_result4 = call double @fAddHandlerDouble(double %0, double 3.000000e+00), !dbg !232
  %24 = fmul double %handler_result4, %23, !dbg !232
  %25 = fmul double %24, %12, !dbg !233
  %handler_result5 = call double @fAddHandlerDouble(double %handler_result3, double %25), !dbg !234
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !209, metadata !DIExpression()), !dbg !216
  %26 = fmul double %20, %handler_result5, !dbg !234
  tail call void @llvm.dbg.value(metadata double %26, metadata !210, metadata !DIExpression()), !dbg !216
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %16), !dbg !235
  %handler_result7 = call double @fAddHandlerDouble(double %handler_result6, double %26), !dbg !236
  %27 = fmul double %handler_result7, %10, !dbg !236
  store double %27, ptr %3, align 8, !dbg !237, !tbaa !110
  %28 = fmul double %10, 0x3CB0000000000000, !dbg !238
  %29 = tail call double @llvm.fabs.f64(double %16), !dbg !239
  %handler_result8 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !240
  %30 = tail call double @llvm.fabs.f64(double %26), !dbg !240
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %30), !dbg !241
  %31 = fmul double %handler_result9, %28, !dbg !241
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !242
  %33 = tail call double @llvm.fabs.f64(double %27), !dbg !243
  %34 = fmul double %33, 0x3CC0000000000000, !dbg !244
  %handler_result10 = call double @fAddHandlerDouble(double %31, double %34), !dbg !245
  store double %handler_result10, ptr %32, align 8, !dbg !245, !tbaa !115
  br label %37

35:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !246, !tbaa !110
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !246
  store double 0x7FF8000000000000, ptr %36, align 8, !dbg !246, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #5, !dbg !249
  br label %37, !dbg !249

37:                                               ; preds = %35, %8
  %38 = phi i32 [ 0, %8 ], [ 1, %35 ], !dbg !251
  ret i32 %38, !dbg !252
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !253 double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_U_large_b_e(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !255 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !313
  call void @llvm.dbg.assign(metadata i1 undef, metadata !275, metadata !DIExpression(), metadata !313, metadata ptr %6, metadata !DIExpression()), !dbg !314
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !315
  call void @llvm.dbg.assign(metadata i1 undef, metadata !276, metadata !DIExpression(), metadata !315, metadata ptr %7, metadata !DIExpression()), !dbg !314
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !316
  call void @llvm.dbg.assign(metadata i1 undef, metadata !277, metadata !DIExpression(), metadata !316, metadata ptr %8, metadata !DIExpression()), !dbg !317
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !318
  call void @llvm.dbg.assign(metadata i1 undef, metadata !279, metadata !DIExpression(), metadata !318, metadata ptr %9, metadata !DIExpression()), !dbg !317
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !319
  call void @llvm.dbg.assign(metadata i1 undef, metadata !280, metadata !DIExpression(), metadata !319, metadata ptr %10, metadata !DIExpression()), !dbg !320
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !321
  call void @llvm.dbg.assign(metadata i1 undef, metadata !286, metadata !DIExpression(), metadata !321, metadata ptr %11, metadata !DIExpression()), !dbg !322
  %12 = alloca double, align 8, !DIAssignID !323
  call void @llvm.dbg.assign(metadata i1 undef, metadata !287, metadata !DIExpression(), metadata !323, metadata ptr %12, metadata !DIExpression()), !dbg !322
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !288, metadata !DIExpression(), metadata !324, metadata ptr %13, metadata !DIExpression()), !dbg !322
  %14 = alloca double, align 8, !DIAssignID !325
  call void @llvm.dbg.assign(metadata i1 undef, metadata !289, metadata !DIExpression(), metadata !325, metadata ptr %14, metadata !DIExpression()), !dbg !322
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !326
  call void @llvm.dbg.assign(metadata i1 undef, metadata !290, metadata !DIExpression(), metadata !326, metadata ptr %15, metadata !DIExpression()), !dbg !322
  %16 = alloca double, align 8, !DIAssignID !327
  call void @llvm.dbg.assign(metadata i1 undef, metadata !291, metadata !DIExpression(), metadata !327, metadata ptr %16, metadata !DIExpression()), !dbg !322
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !328
  call void @llvm.dbg.assign(metadata i1 undef, metadata !292, metadata !DIExpression(), metadata !328, metadata ptr %17, metadata !DIExpression()), !dbg !322
  %18 = alloca double, align 8, !DIAssignID !329
  call void @llvm.dbg.assign(metadata i1 undef, metadata !293, metadata !DIExpression(), metadata !329, metadata ptr %18, metadata !DIExpression()), !dbg !322
  tail call void @llvm.dbg.value(metadata double %0, metadata !260, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %1, metadata !261, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata double %2, metadata !262, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !263, metadata !DIExpression()), !dbg !330
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !264, metadata !DIExpression()), !dbg !330
  %19 = tail call double @llvm.floor.f64(double %1), !dbg !331
  tail call void @llvm.dbg.value(metadata double %19, metadata !265, metadata !DIExpression()), !dbg !330
  %handler_result = call double @fSubHandlerDouble(double %1, double %19), !dbg !332
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !266, metadata !DIExpression()), !dbg !330
  %20 = tail call double @llvm.fabs.f64(double %handler_result), !dbg !332
  %21 = fcmp olt double %20, 0x3E50000000000000, !dbg !333
  br i1 %21, label %22, label %133, !dbg !334

22:                                               ; preds = %5
  %23 = fcmp ogt double %1, 1.000000e+00, !dbg !335
  br i1 %23, label %24, label %71, !dbg !336

24:                                               ; preds = %22
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !337
  %handler_result87 = call double @callHandler(i32 12, double %2, double %2), !dbg !338
  %25 = fmul double %handler_result1, %handler_result87, !dbg !338
  tail call void @llvm.dbg.value(metadata double %25, metadata !272, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5, !dbg !339
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5, !dbg !340
  %handler_result2 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !341
  %26 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result2, ptr noundef nonnull %6) #5, !dbg !341
  %27 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %7) #5, !dbg !342
  %handler_result3 = call double @fAddHandlerDouble(double %25, double %2), !dbg !343
  %28 = load double, ptr %6, align 8, !dbg !343, !tbaa !110
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double %28), !dbg !344
  %29 = load double, ptr %7, align 8, !dbg !344, !tbaa !110
  %handler_result5 = call double @fSubHandlerDouble(double %handler_result4, double %29), !dbg !345
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !267, metadata !DIExpression()), !dbg !346
  %30 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !345
  %31 = load double, ptr %30, align 8, !dbg !345, !tbaa !115
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !347
  %33 = load double, ptr %32, align 8, !dbg !347, !tbaa !115
  %handler_result6 = call double @fAddHandlerDouble(double %31, double %33), !dbg !348
  %34 = call double @llvm.fabs.f64(double %2), !dbg !348
  %35 = call double @llvm.fabs.f64(double %25), !dbg !349
  %handler_result7 = call double @fAddHandlerDouble(double %34, double %35), !dbg !350
  %36 = fmul double %handler_result7, 0x3CB0000000000000, !dbg !350
  %handler_result8 = call double @fAddHandlerDouble(double %36, double %handler_result6), !dbg !351
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !270, metadata !DIExpression()), !dbg !346
  %handler_result9 = call double @fSubHandlerDouble(double 2.000000e+00, double %1), !dbg !352
  %37 = fneg double %2, !dbg !352
  call void @llvm.dbg.value(metadata double poison, metadata !196, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !197, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %37, metadata !198, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata ptr undef, metadata !199, metadata !DIExpression()), !dbg !353
  %38 = fdiv double %37, %handler_result9, !dbg !355
  %39 = call double @llvm.fabs.f64(double %38), !dbg !356
  %40 = fcmp olt double %39, 1.000000e+00, !dbg !357
  br i1 %40, label %41, label %67, !dbg !358

41:                                               ; preds = %24
  %handler_result10 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !359
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !196, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.value(metadata double %38, metadata !200, metadata !DIExpression()), !dbg !360
  %handler_result11 = call double @fSubHandlerDouble(double 1.000000e+00, double %38), !dbg !361
  %42 = fdiv double 1.000000e+00, %handler_result11, !dbg !361
  call void @llvm.dbg.value(metadata double %42, metadata !203, metadata !DIExpression()), !dbg !360
  %43 = call double @pow(double noundef %42, double noundef %handler_result10) #5, !dbg !362
  call void @llvm.dbg.value(metadata double %43, metadata !204, metadata !DIExpression()), !dbg !360
  %44 = fmul double %38, %42, !dbg !363
  call void @llvm.dbg.value(metadata double %44, metadata !205, metadata !DIExpression()), !dbg !360
  %45 = fmul double %44, %44, !dbg !364
  call void @llvm.dbg.value(metadata double %45, metadata !206, metadata !DIExpression()), !dbg !360
  %handler_result12 = call double @fAddHandlerDouble(double %handler_result10, double 1.000000e+00), !dbg !365
  %46 = fmul double %handler_result10, %handler_result12, !dbg !365
  %47 = fmul double %handler_result9, 2.000000e+00, !dbg !366
  %48 = fdiv double %46, %47, !dbg !367
  %49 = fmul double %48, %45, !dbg !368
  call void @llvm.dbg.value(metadata double %49, metadata !207, metadata !DIExpression()), !dbg !360
  %50 = fmul double %handler_result9, 2.400000e+01, !dbg !369
  %51 = fmul double %handler_result9, %50, !dbg !370
  %52 = fdiv double %46, %51, !dbg !371
  %53 = fmul double %52, %45, !dbg !372
  call void @llvm.dbg.value(metadata double %53, metadata !208, metadata !DIExpression()), !dbg !360
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result10, double 2.000000e+00), !dbg !373
  %54 = fmul double %handler_result13, 1.600000e+01, !dbg !373
  %55 = fmul double %54, %44, !dbg !374
  %handler_result14 = call double @fAddHandlerDouble(double %55, double 1.200000e+01), !dbg !375
  %56 = fmul double %handler_result13, 3.000000e+00, !dbg !375
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result10, double 3.000000e+00), !dbg !376
  %57 = fmul double %handler_result15, %56, !dbg !376
  %58 = fmul double %57, %45, !dbg !377
  %handler_result16 = call double @fAddHandlerDouble(double %handler_result14, double %58), !dbg !378
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !209, metadata !DIExpression()), !dbg !360
  %59 = fmul double %53, %handler_result16, !dbg !378
  call void @llvm.dbg.value(metadata double %59, metadata !210, metadata !DIExpression()), !dbg !360
  %handler_result17 = call double @fSubHandlerDouble(double 1.000000e+00, double %49), !dbg !379
  %handler_result18 = call double @fAddHandlerDouble(double %handler_result17, double %59), !dbg !380
  %60 = fmul double %handler_result18, %43, !dbg !380
  tail call void @llvm.dbg.value(metadata double %60, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  %61 = fmul double %43, 0x3CB0000000000000, !dbg !381
  %62 = call double @llvm.fabs.f64(double %49), !dbg !382
  %handler_result19 = call double @fAddHandlerDouble(double %62, double 1.000000e+00), !dbg !383
  %63 = call double @llvm.fabs.f64(double %59), !dbg !383
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double %63), !dbg !384
  %64 = fmul double %handler_result20, %61, !dbg !384
  %65 = call double @llvm.fabs.f64(double %60), !dbg !385
  %66 = fmul double %65, 0x3CC0000000000000, !dbg !386
  %handler_result21 = call double @fAddHandlerDouble(double %64, double %66)
  tail call void @llvm.dbg.value(metadata double %handler_result21, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  br label %68

67:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #5, !dbg !387
  br label %68, !dbg !387

68:                                               ; preds = %67, %41
  %69 = phi double [ %handler_result21, %41 ], [ 0x7FF8000000000000, %67 ], !dbg !388
  %70 = phi double [ %60, %41 ], [ 0x7FF8000000000000, %67 ], !dbg !388
  tail call void @llvm.dbg.value(metadata double %70, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata double %69, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5, !dbg !389
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5, !dbg !389
  br label %113, !dbg !390

71:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5, !dbg !391
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5, !dbg !392
  %handler_result22 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !393
  %72 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result22, ptr noundef nonnull %8) #5, !dbg !393
  %handler_result23 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !394
  %handler_result24 = call double @fSubHandlerDouble(double %handler_result23, double %1), !dbg !395
  %73 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result24, ptr noundef nonnull %9) #5, !dbg !395
  %74 = load double, ptr %8, align 8, !dbg !396, !tbaa !110
  %75 = load double, ptr %9, align 8, !dbg !397, !tbaa !110
  %handler_result25 = call double @fSubHandlerDouble(double %74, double %75), !dbg !398
  tail call void @llvm.dbg.value(metadata double %handler_result25, metadata !267, metadata !DIExpression()), !dbg !346
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !398
  %77 = load double, ptr %76, align 8, !dbg !398, !tbaa !115
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !399
  %79 = load double, ptr %78, align 8, !dbg !399, !tbaa !115
  %handler_result26 = call double @fAddHandlerDouble(double %77, double %79), !dbg !400
  tail call void @llvm.dbg.value(metadata double %handler_result26, metadata !270, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %0, metadata !196, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double %1, metadata !197, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata double %2, metadata !198, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.value(metadata ptr undef, metadata !199, metadata !DIExpression()), !dbg !402
  %80 = fdiv double %2, %1, !dbg !400
  %81 = call double @llvm.fabs.f64(double %80), !dbg !403
  %82 = fcmp olt double %81, 1.000000e+00, !dbg !404
  br i1 %82, label %83, label %109, !dbg !405

83:                                               ; preds = %71
  call void @llvm.dbg.value(metadata double %80, metadata !200, metadata !DIExpression()), !dbg !406
  %handler_result27 = call double @fSubHandlerDouble(double 1.000000e+00, double %80), !dbg !407
  %84 = fdiv double 1.000000e+00, %handler_result27, !dbg !407
  call void @llvm.dbg.value(metadata double %84, metadata !203, metadata !DIExpression()), !dbg !406
  %85 = call double @pow(double noundef %84, double noundef %0) #5, !dbg !408
  call void @llvm.dbg.value(metadata double %85, metadata !204, metadata !DIExpression()), !dbg !406
  %86 = fmul double %80, %84, !dbg !409
  call void @llvm.dbg.value(metadata double %86, metadata !205, metadata !DIExpression()), !dbg !406
  %87 = fmul double %86, %86, !dbg !410
  call void @llvm.dbg.value(metadata double %87, metadata !206, metadata !DIExpression()), !dbg !406
  %88 = fmul double %handler_result23, %0, !dbg !411
  %89 = fmul double %1, 2.000000e+00, !dbg !412
  %90 = fdiv double %88, %89, !dbg !413
  %91 = fmul double %90, %87, !dbg !414
  call void @llvm.dbg.value(metadata double %91, metadata !207, metadata !DIExpression()), !dbg !406
  %92 = fmul double %1, 2.400000e+01, !dbg !415
  %93 = fmul double %92, %1, !dbg !416
  %94 = fdiv double %88, %93, !dbg !417
  %95 = fmul double %94, %87, !dbg !418
  call void @llvm.dbg.value(metadata double %95, metadata !208, metadata !DIExpression()), !dbg !406
  %handler_result28 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !419
  %96 = fmul double %handler_result28, 1.600000e+01, !dbg !419
  %97 = fmul double %96, %86, !dbg !420
  %handler_result29 = call double @fAddHandlerDouble(double %97, double 1.200000e+01), !dbg !421
  %98 = fmul double %handler_result28, 3.000000e+00, !dbg !421
  %handler_result30 = call double @fAddHandlerDouble(double %0, double 3.000000e+00), !dbg !422
  %99 = fmul double %handler_result30, %98, !dbg !422
  %100 = fmul double %99, %87, !dbg !423
  %handler_result31 = call double @fAddHandlerDouble(double %handler_result29, double %100), !dbg !424
  call void @llvm.dbg.value(metadata double %handler_result31, metadata !209, metadata !DIExpression()), !dbg !406
  %101 = fmul double %95, %handler_result31, !dbg !424
  call void @llvm.dbg.value(metadata double %101, metadata !210, metadata !DIExpression()), !dbg !406
  %handler_result32 = call double @fSubHandlerDouble(double 1.000000e+00, double %91), !dbg !425
  %handler_result33 = call double @fAddHandlerDouble(double %handler_result32, double %101), !dbg !426
  %102 = fmul double %handler_result33, %85, !dbg !426
  tail call void @llvm.dbg.value(metadata double %102, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  %103 = fmul double %85, 0x3CB0000000000000, !dbg !427
  %104 = call double @llvm.fabs.f64(double %91), !dbg !428
  %handler_result34 = call double @fAddHandlerDouble(double %104, double 1.000000e+00), !dbg !429
  %105 = call double @llvm.fabs.f64(double %101), !dbg !429
  %handler_result35 = call double @fAddHandlerDouble(double %handler_result34, double %105), !dbg !430
  %106 = fmul double %handler_result35, %103, !dbg !430
  %107 = call double @llvm.fabs.f64(double %102), !dbg !431
  %108 = fmul double %107, 0x3CC0000000000000, !dbg !432
  %handler_result36 = call double @fAddHandlerDouble(double %106, double %108)
  tail call void @llvm.dbg.value(metadata double %handler_result36, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  br label %110

109:                                              ; preds = %71
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #5, !dbg !433
  br label %110, !dbg !433

110:                                              ; preds = %109, %83
  %111 = phi double [ %handler_result36, %83 ], [ 0x7FF8000000000000, %109 ], !dbg !434
  %112 = phi double [ %102, %83 ], [ 0x7FF8000000000000, %109 ], !dbg !434
  tail call void @llvm.dbg.value(metadata double %112, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata double %111, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5, !dbg !435
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5, !dbg !435
  br label %113

113:                                              ; preds = %110, %68
  %114 = phi double [ %69, %68 ], [ %111, %110 ], !dbg !436
  %115 = phi double [ %70, %68 ], [ %112, %110 ], !dbg !438
  %116 = phi double [ %handler_result8, %68 ], [ %handler_result26, %110 ], !dbg !437
  %117 = phi double [ %handler_result5, %68 ], [ %handler_result25, %110 ], !dbg !437
  tail call void @llvm.dbg.value(metadata double %115, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata double %114, metadata !271, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !346
  tail call void @llvm.dbg.value(metadata double %117, metadata !267, metadata !DIExpression()), !dbg !346
  tail call void @llvm.dbg.value(metadata double %116, metadata !270, metadata !DIExpression()), !dbg !346
  %118 = fcmp ogt double %117, 0x4085DE42FEFA39EF, !dbg !439
  br i1 %118, label %119, label %121, !dbg !440

119:                                              ; preds = %113
  store double %115, ptr %3, align 8, !dbg !441, !tbaa !110
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !443
  store double %114, ptr %120, align 8, !dbg !444, !tbaa !115
  store double %117, ptr %4, align 8, !dbg !445, !tbaa !446
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 16) #5, !dbg !447
  br label %279, !dbg !447

121:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #5, !dbg !449
  %122 = call i32 @gsl_sf_exp_err_e(double noundef %117, double noundef %116, ptr noundef nonnull %10) #5, !dbg !450
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !283, metadata !DIExpression()), !dbg !320
  %123 = load double, ptr %10, align 8, !dbg !451, !tbaa !110
  %124 = fmul double %115, %123, !dbg !452
  store double %124, ptr %3, align 8, !dbg !453, !tbaa !110
  %125 = fmul double %114, %123, !dbg !454
  %126 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !455
  %127 = load double, ptr %126, align 8, !dbg !455, !tbaa !115
  %128 = call double @llvm.fabs.f64(double %115), !dbg !456
  %129 = fmul double %128, %127, !dbg !457
  %handler_result37 = call double @fAddHandlerDouble(double %125, double %129), !dbg !458
  %130 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !458
  %131 = call double @llvm.fabs.f64(double %124), !dbg !459
  %132 = fmul double %131, 0x3CC0000000000000, !dbg !460
  %handler_result38 = call double @fAddHandlerDouble(double %132, double %handler_result37), !dbg !461
  store double %handler_result38, ptr %130, align 8, !dbg !461, !tbaa !115
  store double 0.000000e+00, ptr %4, align 8, !dbg !462, !tbaa !446
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #5, !dbg !463
  br label %279

133:                                              ; preds = %5
  %handler_result39 = call double @fSubHandlerDouble(double 1.000000e+00, double %1), !dbg !464
  %handler_result88 = call double @callHandler(i32 12, double %2, double %2), !dbg !465
  %134 = fmul double %handler_result39, %handler_result88, !dbg !465
  tail call void @llvm.dbg.value(metadata double %134, metadata !284, metadata !DIExpression()), !dbg !322
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #5, !dbg !466
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5, !dbg !467
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #5, !dbg !468
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #5, !dbg !469
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #5, !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #5, !dbg !471
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #5, !dbg !472
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #5, !dbg !473
  call void @llvm.dbg.value(metadata double %0, metadata !196, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double %1, metadata !197, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata double %2, metadata !198, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata ptr undef, metadata !199, metadata !DIExpression()), !dbg !474
  %135 = fdiv double %2, %1, !dbg !476
  %136 = tail call double @llvm.fabs.f64(double %135), !dbg !477
  %137 = fcmp olt double %136, 1.000000e+00, !dbg !478
  br i1 %137, label %138, label %164, !dbg !479

138:                                              ; preds = %133
  call void @llvm.dbg.value(metadata double %135, metadata !200, metadata !DIExpression()), !dbg !480
  %handler_result40 = call double @fSubHandlerDouble(double 1.000000e+00, double %135), !dbg !481
  %139 = fdiv double 1.000000e+00, %handler_result40, !dbg !481
  call void @llvm.dbg.value(metadata double %139, metadata !203, metadata !DIExpression()), !dbg !480
  %140 = tail call double @pow(double noundef %139, double noundef %0) #5, !dbg !482
  call void @llvm.dbg.value(metadata double %140, metadata !204, metadata !DIExpression()), !dbg !480
  %141 = fmul double %135, %139, !dbg !483
  call void @llvm.dbg.value(metadata double %141, metadata !205, metadata !DIExpression()), !dbg !480
  %142 = fmul double %141, %141, !dbg !484
  call void @llvm.dbg.value(metadata double %142, metadata !206, metadata !DIExpression()), !dbg !480
  %handler_result41 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !485
  %143 = fmul double %handler_result41, %0, !dbg !485
  %144 = fmul double %1, 2.000000e+00, !dbg !486
  %145 = fdiv double %143, %144, !dbg !487
  %146 = fmul double %145, %142, !dbg !488
  call void @llvm.dbg.value(metadata double %146, metadata !207, metadata !DIExpression()), !dbg !480
  %147 = fmul double %1, 2.400000e+01, !dbg !489
  %148 = fmul double %147, %1, !dbg !490
  %149 = fdiv double %143, %148, !dbg !491
  %150 = fmul double %149, %142, !dbg !492
  call void @llvm.dbg.value(metadata double %150, metadata !208, metadata !DIExpression()), !dbg !480
  %handler_result42 = call double @fAddHandlerDouble(double %0, double 2.000000e+00), !dbg !493
  %151 = fmul double %handler_result42, 1.600000e+01, !dbg !493
  %152 = fmul double %151, %141, !dbg !494
  %handler_result43 = call double @fAddHandlerDouble(double %152, double 1.200000e+01), !dbg !495
  %153 = fmul double %handler_result42, 3.000000e+00, !dbg !495
  %handler_result44 = call double @fAddHandlerDouble(double %0, double 3.000000e+00), !dbg !496
  %154 = fmul double %handler_result44, %153, !dbg !496
  %155 = fmul double %154, %142, !dbg !497
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result43, double %155), !dbg !498
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !209, metadata !DIExpression()), !dbg !480
  %156 = fmul double %150, %handler_result45, !dbg !498
  call void @llvm.dbg.value(metadata double %156, metadata !210, metadata !DIExpression()), !dbg !480
  %handler_result46 = call double @fSubHandlerDouble(double 1.000000e+00, double %146), !dbg !499
  %handler_result47 = call double @fAddHandlerDouble(double %handler_result46, double %156), !dbg !500
  %157 = fmul double %handler_result47, %140, !dbg !500
  tail call void @llvm.dbg.value(metadata double %157, metadata !294, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !322
  %158 = fmul double %140, 0x3CB0000000000000, !dbg !501
  %159 = tail call double @llvm.fabs.f64(double %146), !dbg !502
  %handler_result48 = call double @fAddHandlerDouble(double %159, double 1.000000e+00), !dbg !503
  %160 = tail call double @llvm.fabs.f64(double %156), !dbg !503
  %handler_result49 = call double @fAddHandlerDouble(double %handler_result48, double %160), !dbg !504
  %161 = fmul double %handler_result49, %158, !dbg !504
  %162 = tail call double @llvm.fabs.f64(double %157), !dbg !505
  %163 = fmul double %162, 0x3CC0000000000000, !dbg !506
  %handler_result50 = call double @fAddHandlerDouble(double %161, double %163)
  tail call void @llvm.dbg.value(metadata double %handler_result50, metadata !294, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !322
  br label %165

164:                                              ; preds = %133
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !294, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !322
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !294, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !322
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #5, !dbg !507
  br label %165, !dbg !507

165:                                              ; preds = %164, %138
  %166 = phi double [ %handler_result50, %138 ], [ 0x7FF8000000000000, %164 ], !dbg !508
  %167 = phi double [ %157, %138 ], [ 0x7FF8000000000000, %164 ], !dbg !508
  tail call void @llvm.dbg.value(metadata double %167, metadata !294, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !322
  tail call void @llvm.dbg.value(metadata double %166, metadata !294, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !322
  %handler_result51 = call double @fSubHandlerDouble(double 2.000000e+00, double %1), !dbg !509
  call void @llvm.dbg.value(metadata double poison, metadata !196, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !197, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata double %2, metadata !198, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata ptr undef, metadata !199, metadata !DIExpression()), !dbg !511
  %168 = fdiv double %2, %handler_result51, !dbg !509
  %169 = tail call double @llvm.fabs.f64(double %168), !dbg !512
  %170 = fcmp olt double %169, 1.000000e+00, !dbg !513
  br i1 %170, label %171, label %197, !dbg !514

171:                                              ; preds = %165
  %handler_result52 = call double @fSubHandlerDouble(double 1.000000e+00, double %0), !dbg !515
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !196, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.value(metadata double %168, metadata !200, metadata !DIExpression()), !dbg !516
  %handler_result53 = call double @fSubHandlerDouble(double 1.000000e+00, double %168), !dbg !517
  %172 = fdiv double 1.000000e+00, %handler_result53, !dbg !517
  call void @llvm.dbg.value(metadata double %172, metadata !203, metadata !DIExpression()), !dbg !516
  %173 = tail call double @pow(double noundef %172, double noundef %handler_result52) #5, !dbg !518
  call void @llvm.dbg.value(metadata double %173, metadata !204, metadata !DIExpression()), !dbg !516
  %174 = fmul double %168, %172, !dbg !519
  call void @llvm.dbg.value(metadata double %174, metadata !205, metadata !DIExpression()), !dbg !516
  %175 = fmul double %174, %174, !dbg !520
  call void @llvm.dbg.value(metadata double %175, metadata !206, metadata !DIExpression()), !dbg !516
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result52, double 1.000000e+00), !dbg !521
  %176 = fmul double %handler_result52, %handler_result54, !dbg !521
  %177 = fmul double %handler_result51, 2.000000e+00, !dbg !522
  %178 = fdiv double %176, %177, !dbg !523
  %179 = fmul double %178, %175, !dbg !524
  call void @llvm.dbg.value(metadata double %179, metadata !207, metadata !DIExpression()), !dbg !516
  %180 = fmul double %handler_result51, 2.400000e+01, !dbg !525
  %181 = fmul double %handler_result51, %180, !dbg !526
  %182 = fdiv double %176, %181, !dbg !527
  %183 = fmul double %182, %175, !dbg !528
  call void @llvm.dbg.value(metadata double %183, metadata !208, metadata !DIExpression()), !dbg !516
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result52, double 2.000000e+00), !dbg !529
  %184 = fmul double %handler_result55, 1.600000e+01, !dbg !529
  %185 = fmul double %184, %174, !dbg !530
  %handler_result56 = call double @fAddHandlerDouble(double %185, double 1.200000e+01), !dbg !531
  %186 = fmul double %handler_result55, 3.000000e+00, !dbg !531
  %handler_result57 = call double @fAddHandlerDouble(double %handler_result52, double 3.000000e+00), !dbg !532
  %187 = fmul double %handler_result57, %186, !dbg !532
  %188 = fmul double %187, %175, !dbg !533
  %handler_result58 = call double @fAddHandlerDouble(double %handler_result56, double %188), !dbg !534
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !209, metadata !DIExpression()), !dbg !516
  %189 = fmul double %183, %handler_result58, !dbg !534
  call void @llvm.dbg.value(metadata double %189, metadata !210, metadata !DIExpression()), !dbg !516
  %handler_result59 = call double @fSubHandlerDouble(double 1.000000e+00, double %179), !dbg !535
  %handler_result60 = call double @fAddHandlerDouble(double %handler_result59, double %189), !dbg !536
  %190 = fmul double %handler_result60, %173, !dbg !536
  tail call void @llvm.dbg.value(metadata double %190, metadata !295, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !322
  %191 = fmul double %173, 0x3CB0000000000000, !dbg !537
  %192 = tail call double @llvm.fabs.f64(double %179), !dbg !538
  %handler_result61 = call double @fAddHandlerDouble(double %192, double 1.000000e+00), !dbg !539
  %193 = tail call double @llvm.fabs.f64(double %189), !dbg !539
  %handler_result62 = call double @fAddHandlerDouble(double %handler_result61, double %193), !dbg !540
  %194 = fmul double %handler_result62, %191, !dbg !540
  %195 = tail call double @llvm.fabs.f64(double %190), !dbg !541
  %196 = fmul double %195, 0x3CC0000000000000, !dbg !542
  %handler_result63 = call double @fAddHandlerDouble(double %194, double %196)
  tail call void @llvm.dbg.value(metadata double %handler_result63, metadata !295, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !322
  br label %198

197:                                              ; preds = %165
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !295, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !322
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !295, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !322
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #5, !dbg !543
  br label %198, !dbg !543

198:                                              ; preds = %197, %171
  %199 = phi double [ %handler_result63, %171 ], [ 0x7FF8000000000000, %197 ], !dbg !544
  %200 = phi double [ %190, %171 ], [ 0x7FF8000000000000, %197 ], !dbg !544
  tail call void @llvm.dbg.value(metadata double %200, metadata !295, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !322
  tail call void @llvm.dbg.value(metadata double %199, metadata !295, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !322
  %201 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result39, ptr noundef nonnull %11, ptr noundef nonnull %12) #5, !dbg !545
  %handler_result64 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !546
  %handler_result65 = call double @fSubHandlerDouble(double %handler_result64, double %1), !dbg !547
  %202 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result65, ptr noundef nonnull %13, ptr noundef nonnull %14) #5, !dbg !547
  %handler_result66 = call double @fAddHandlerDouble(double %1, double -1.000000e+00), !dbg !548
  %203 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %handler_result66, ptr noundef nonnull %15, ptr noundef nonnull %16) #5, !dbg !548
  %204 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %18) #5, !dbg !549
  %205 = load double, ptr %11, align 8, !dbg !550, !tbaa !110
  %206 = load double, ptr %13, align 8, !dbg !551, !tbaa !110
  %handler_result67 = call double @fSubHandlerDouble(double %205, double %206), !dbg !552
  tail call void @llvm.dbg.value(metadata double %handler_result67, metadata !296, metadata !DIExpression()), !dbg !322
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !552
  %208 = load double, ptr %207, align 8, !dbg !552, !tbaa !115
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !553
  %210 = load double, ptr %209, align 8, !dbg !553, !tbaa !115
  %handler_result68 = call double @fAddHandlerDouble(double %208, double %210), !dbg !554
  tail call void @llvm.dbg.value(metadata double %handler_result68, metadata !298, metadata !DIExpression()), !dbg !322
  %211 = load double, ptr %15, align 8, !dbg !554, !tbaa !110
  %212 = load double, ptr %17, align 8, !dbg !555, !tbaa !110
  %handler_result69 = call double @fSubHandlerDouble(double %211, double %212), !dbg !556
  %handler_result70 = call double @fSubHandlerDouble(double %handler_result69, double %134), !dbg !557
  %handler_result71 = call double @fSubHandlerDouble(double %handler_result70, double %2), !dbg !558
  tail call void @llvm.dbg.value(metadata double %handler_result71, metadata !297, metadata !DIExpression()), !dbg !322
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !558
  %214 = load double, ptr %213, align 8, !dbg !558, !tbaa !115
  %215 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !559
  %216 = load double, ptr %215, align 8, !dbg !559, !tbaa !115
  %handler_result72 = call double @fAddHandlerDouble(double %214, double %216), !dbg !560
  %217 = call double @llvm.fabs.f64(double %134), !dbg !560
  %218 = call double @llvm.fabs.f64(double %2), !dbg !561
  %handler_result73 = call double @fAddHandlerDouble(double %218, double %217), !dbg !562
  %219 = fmul double %handler_result73, 0x3CB0000000000000, !dbg !562
  %handler_result74 = call double @fAddHandlerDouble(double %219, double %handler_result72), !dbg !563
  tail call void @llvm.dbg.value(metadata double %handler_result74, metadata !299, metadata !DIExpression()), !dbg !322
  %220 = load double, ptr %12, align 8, !dbg !563, !tbaa !446
  %221 = load double, ptr %14, align 8, !dbg !564, !tbaa !446
  %222 = fmul double %220, %221, !dbg !565
  tail call void @llvm.dbg.value(metadata double %222, metadata !300, metadata !DIExpression()), !dbg !322
  %223 = load double, ptr %16, align 8, !dbg !566, !tbaa !446
  %224 = load double, ptr %18, align 8, !dbg !567, !tbaa !446
  %225 = fmul double %223, %224, !dbg !568
  tail call void @llvm.dbg.value(metadata double %225, metadata !301, metadata !DIExpression()), !dbg !322
  %226 = fcmp ogt double %handler_result67, 0x4085DE42FEFA39EF, !dbg !569
  %227 = fcmp ogt double %handler_result71, 0x4085DE42FEFA39EF
  %228 = select i1 %226, i1 true, i1 %227, !dbg !570
  br i1 %228, label %229, label %254, !dbg !570

229:                                              ; preds = %198
  %230 = fcmp ogt double %handler_result67, %handler_result71, !dbg !571
  %231 = select i1 %230, double %handler_result67, double %handler_result71, !dbg !571
  tail call void @llvm.dbg.value(metadata double %231, metadata !302, metadata !DIExpression()), !dbg !572
  %232 = fcmp ogt double %handler_result68, %handler_result74, !dbg !573
  %233 = select i1 %232, double %handler_result68, double %handler_result74, !dbg !573
  tail call void @llvm.dbg.value(metadata double %233, metadata !305, metadata !DIExpression()), !dbg !572
  %handler_result75 = call double @fSubHandlerDouble(double %handler_result67, double %231), !dbg !574
  tail call void @llvm.dbg.value(metadata double %handler_result75, metadata !306, metadata !DIExpression()), !dbg !572
  %handler_result76 = call double @fSubHandlerDouble(double %handler_result71, double %231), !dbg !575
  tail call void @llvm.dbg.value(metadata double %handler_result76, metadata !307, metadata !DIExpression()), !dbg !572
  %234 = call double @exp(double noundef %handler_result75) #5, !dbg !575
  %235 = fmul double %222, %234, !dbg !576
  tail call void @llvm.dbg.value(metadata double %235, metadata !308, metadata !DIExpression()), !dbg !572
  %236 = call double @exp(double noundef %handler_result76) #5, !dbg !577
  %237 = fmul double %225, %236, !dbg !578
  tail call void @llvm.dbg.value(metadata double %237, metadata !309, metadata !DIExpression()), !dbg !572
  %238 = fmul double %167, %235, !dbg !579
  %239 = fmul double %200, %237, !dbg !580
  %handler_result77 = call double @fAddHandlerDouble(double %238, double %239), !dbg !581
  store double %handler_result77, ptr %3, align 8, !dbg !581, !tbaa !110
  %240 = call double @llvm.fabs.f64(double %235), !dbg !582
  %241 = fmul double %166, %240, !dbg !583
  %242 = call double @llvm.fabs.f64(double %237), !dbg !584
  %243 = fmul double %199, %242, !dbg !585
  %handler_result78 = call double @fAddHandlerDouble(double %241, double %243), !dbg !586
  %244 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !586
  store double %handler_result78, ptr %244, align 8, !dbg !587, !tbaa !115
  %245 = call double @exp(double noundef %233) #5, !dbg !588
  %246 = fmul double %245, 0x3CB0000000000000, !dbg !589
  %247 = call double @llvm.fabs.f64(double %238), !dbg !590
  %248 = call double @llvm.fabs.f64(double %239), !dbg !591
  %handler_result79 = call double @fAddHandlerDouble(double %247, double %248), !dbg !592
  %249 = fmul double %246, %handler_result79, !dbg !592
  %250 = load double, ptr %244, align 8, !dbg !593, !tbaa !115
  %handler_result80 = call double @fAddHandlerDouble(double %250, double %249), !dbg !594
  %251 = load double, ptr %3, align 8, !dbg !594, !tbaa !110
  %252 = call double @llvm.fabs.f64(double %251), !dbg !595
  %253 = fmul double %252, 0x3CC0000000000000, !dbg !596
  %handler_result81 = call double @fAddHandlerDouble(double %handler_result80, double %253), !dbg !597
  store double %handler_result81, ptr %244, align 8, !dbg !597, !tbaa !115
  store double %231, ptr %4, align 8, !dbg !598, !tbaa !446
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 215, i32 noundef 16) #5, !dbg !599
  br label %277

254:                                              ; preds = %198
  %255 = call double @exp(double noundef %handler_result67) #5, !dbg !601
  %256 = fmul double %222, %255, !dbg !602
  tail call void @llvm.dbg.value(metadata double %256, metadata !310, metadata !DIExpression()), !dbg !603
  %257 = call double @exp(double noundef %handler_result71) #5, !dbg !604
  %258 = fmul double %225, %257, !dbg !605
  tail call void @llvm.dbg.value(metadata double %258, metadata !312, metadata !DIExpression()), !dbg !603
  %259 = fmul double %167, %256, !dbg !606
  %260 = fmul double %200, %258, !dbg !607
  %handler_result82 = call double @fAddHandlerDouble(double %259, double %260), !dbg !608
  store double %handler_result82, ptr %3, align 8, !dbg !608, !tbaa !110
  %261 = call double @llvm.fabs.f64(double %256), !dbg !609
  %262 = fmul double %166, %261, !dbg !610
  %263 = call double @llvm.fabs.f64(double %258), !dbg !611
  %264 = fmul double %199, %263, !dbg !612
  %handler_result83 = call double @fAddHandlerDouble(double %262, double %264), !dbg !613
  %265 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !613
  store double %handler_result83, ptr %265, align 8, !dbg !614, !tbaa !115
  %266 = call double @exp(double noundef %handler_result68) #5, !dbg !615
  %267 = call double @llvm.fabs.f64(double %259), !dbg !616
  %268 = fmul double %267, %266, !dbg !617
  %269 = call double @exp(double noundef %handler_result74) #5, !dbg !618
  %270 = call double @llvm.fabs.f64(double %260), !dbg !619
  %271 = fmul double %270, %269, !dbg !620
  %handler_result84 = call double @fAddHandlerDouble(double %268, double %271), !dbg !621
  %272 = fmul double %handler_result84, 0x3CB0000000000000, !dbg !621
  %273 = load double, ptr %265, align 8, !dbg !622, !tbaa !115
  %handler_result85 = call double @fAddHandlerDouble(double %273, double %272), !dbg !623
  %274 = load double, ptr %3, align 8, !dbg !623, !tbaa !110
  %275 = call double @llvm.fabs.f64(double %274), !dbg !624
  %276 = fmul double %275, 0x3CC0000000000000, !dbg !625
  %handler_result86 = call double @fAddHandlerDouble(double %handler_result85, double %276), !dbg !626
  store double %handler_result86, ptr %265, align 8, !dbg !626, !tbaa !115
  store double 0.000000e+00, ptr %4, align 8, !dbg !627, !tbaa !446
  br label %277

277:                                              ; preds = %254, %229
  %278 = phi i32 [ 16, %229 ], [ 0, %254 ], !dbg !628
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #5, !dbg !629
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #5, !dbg !629
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #5, !dbg !629
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #5, !dbg !629
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #5, !dbg !629
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #5, !dbg !629
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5, !dbg !629
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #5, !dbg !629
  br label %279

279:                                              ; preds = %277, %121, %119
  %280 = phi i32 [ %278, %277 ], [ 16, %119 ], [ %122, %121 ], !dbg !630
  ret i32 %280, !dbg !631
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !632 double @log(double noundef) local_unnamed_addr #4

declare !dbg !635 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !639 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !643 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !646 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hyperg_2F0_series_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !647 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !651, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %1, metadata !652, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %2, metadata !653, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !654, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !655, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata i32 2000, metadata !656, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %0, metadata !658, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %1, metadata !659, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !660, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !661, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !662, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !663, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !664, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !665, metadata !DIExpression()), !dbg !669
  %6 = icmp slt i32 %3, 0
  %7 = sitofp i32 %3 to double
  br label %8, !dbg !670

8:                                                ; preds = %40, %5
  %9 = phi double [ %1, %5 ], [ %handler_result2, %40 ], !dbg !671
  %10 = phi double [ 1.000000e+00, %5 ], [ %handler_result3, %40 ], !dbg !672
  %11 = phi double [ 1.000000e+00, %5 ], [ %handler_result, %40 ], !dbg !673
  %12 = phi double [ 1.000000e+00, %5 ], [ %33, %40 ], !dbg !674
  %13 = phi double [ 1.000000e+00, %5 ], [ %34, %40 ], !dbg !675
  %14 = phi double [ 1.000000e+00, %5 ], [ %42, %40 ], !dbg !676
  %15 = phi double [ %0, %5 ], [ %handler_result1, %40 ], !dbg !677
  tail call void @llvm.dbg.value(metadata double %15, metadata !658, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %13, metadata !665, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %14, metadata !664, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %13, metadata !663, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %12, metadata !662, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %11, metadata !661, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %10, metadata !660, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %9, metadata !659, metadata !DIExpression()), !dbg !669
  %16 = tail call double @llvm.fabs.f64(double %11), !dbg !678
  %17 = fdiv double %13, %16, !dbg !679
  %18 = fcmp ogt double %17, 0x3CB0000000000000, !dbg !680
  %19 = fcmp olt double %10, 2.000000e+03, !dbg !681
  %20 = select i1 %18, i1 %19, i1 false, !dbg !681
  br i1 %20, label %21, label %45, !dbg !670

21:                                               ; preds = %8
  %22 = fdiv double %9, %10, !dbg !682
  %23 = fmul double %22, %2, !dbg !683
  %24 = fmul double %23, %15, !dbg !684
  tail call void @llvm.dbg.value(metadata double %24, metadata !666, metadata !DIExpression()), !dbg !685
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !686
  tail call void @llvm.dbg.value(metadata double %25, metadata !668, metadata !DIExpression()), !dbg !685
  %26 = fcmp ogt double %25, 1.000000e+00, !dbg !687
  %27 = fdiv double 0x7FEFFFFFFFFFFFFF, %25
  %28 = fcmp ogt double %14, %27
  %29 = select i1 %26, i1 %28, i1 false, !dbg !689
  br i1 %29, label %30, label %32, !dbg !689

30:                                               ; preds = %21
  store double %11, ptr %4, align 8, !dbg !690, !tbaa !110
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !692
  store double %16, ptr %31, align 8, !dbg !693, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 263, i32 noundef 16) #5, !dbg !694
  tail call void @llvm.dbg.value(metadata double poison, metadata !658, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double poison, metadata !665, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double poison, metadata !664, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double poison, metadata !663, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double poison, metadata !662, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double poison, metadata !661, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double poison, metadata !660, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double poison, metadata !659, metadata !DIExpression()), !dbg !669
  br label %53

32:                                               ; preds = %21
  %33 = fmul double %12, %24, !dbg !696
  tail call void @llvm.dbg.value(metadata double %33, metadata !662, metadata !DIExpression()), !dbg !669
  %handler_result = call double @fAddHandlerDouble(double %11, double %33), !dbg !697
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !661, metadata !DIExpression()), !dbg !669
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !697
  tail call void @llvm.dbg.value(metadata double %34, metadata !663, metadata !DIExpression()), !dbg !669
  %35 = fcmp ogt double %34, %13, !dbg !698
  br i1 %35, label %45, label %36, !dbg !700

36:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata double %34, metadata !665, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double poison, metadata !664, metadata !DIExpression()), !dbg !669
  %handler_result1 = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !701
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !658, metadata !DIExpression()), !dbg !669
  %handler_result2 = call double @fAddHandlerDouble(double %9, double 1.000000e+00), !dbg !702
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !659, metadata !DIExpression()), !dbg !669
  %handler_result3 = call double @fAddHandlerDouble(double %10, double 1.000000e+00), !dbg !703
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !660, metadata !DIExpression()), !dbg !669
  %37 = fcmp oeq double %handler_result1, 0.000000e+00, !dbg !703
  %38 = fcmp oeq double %handler_result2, 0.000000e+00
  %39 = select i1 %37, i1 true, i1 %38, !dbg !705
  br i1 %39, label %45, label %40, !dbg !705

40:                                               ; preds = %36
  %41 = fcmp ogt double %34, %14, !dbg !706
  %42 = select i1 %41, double %34, double %14, !dbg !706
  tail call void @llvm.dbg.value(metadata double %42, metadata !664, metadata !DIExpression()), !dbg !669
  %43 = fcmp ult double %handler_result3, %7
  %44 = select i1 %6, i1 true, i1 %43, !dbg !707
  br i1 %44, label %8, label %45, !dbg !707

45:                                               ; preds = %40, %36, %32, %8
  %46 = phi double [ %10, %8 ], [ %handler_result3, %40 ], [ %handler_result3, %36 ], [ %10, %32 ], !dbg !672
  %47 = phi double [ %11, %8 ], [ %handler_result, %40 ], [ %handler_result, %36 ], [ %handler_result, %32 ], !dbg !673
  %48 = phi double [ %13, %8 ], [ %34, %40 ], [ %34, %36 ], [ %34, %32 ], !dbg !675
  tail call void @llvm.dbg.value(metadata double %48, metadata !663, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %47, metadata !661, metadata !DIExpression()), !dbg !669
  tail call void @llvm.dbg.value(metadata double %46, metadata !660, metadata !DIExpression()), !dbg !669
  store double %47, ptr %4, align 8, !dbg !709, !tbaa !110
  %49 = fmul double %46, 0x3CB0000000000000, !dbg !710
  %handler_result4 = call double @fAddHandlerDouble(double %49, double %48), !dbg !711
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !711
  store double %handler_result4, ptr %50, align 8, !dbg !712, !tbaa !115
  %51 = fcmp ult double %46, 2.000000e+03, !dbg !713
  br i1 %51, label %53, label %52, !dbg !715

52:                                               ; preds = %45
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 288, i32 noundef 11) #5, !dbg !716
  br label %53, !dbg !716

53:                                               ; preds = %52, %45, %30
  %54 = phi i32 [ 11, %52 ], [ 0, %45 ], [ 16, %30 ], !dbg !669
  ret i32 %54, !dbg !718
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hyperg.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "31998f238863d046467b250d8332aa4e")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 41)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !9, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 6)
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
!65 = !{!0, !7, !12, !17, !19}
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 8, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!73 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!74 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_series_e", scope: !2, file: !2, line: 38, type: !75, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !86)
!75 = !DISubroutineType(types: !76)
!76 = !{!28, !77, !77, !77, !79}
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !81, line: 41, baseType: !82)
!81 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !81, line: 37, size: 128, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !82, file: !81, line: 38, baseType: !78, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !82, file: !81, line: 39, baseType: !78, size: 64, offset: 64)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !101}
!87 = !DILocalVariable(name: "a", arg: 1, scope: !74, file: !2, line: 38, type: !77)
!88 = !DILocalVariable(name: "b", arg: 2, scope: !74, file: !2, line: 38, type: !77)
!89 = !DILocalVariable(name: "x", arg: 3, scope: !74, file: !2, line: 38, type: !77)
!90 = !DILocalVariable(name: "result", arg: 4, scope: !74, file: !2, line: 39, type: !79)
!91 = !DILocalVariable(name: "an", scope: !74, file: !2, line: 42, type: !78)
!92 = !DILocalVariable(name: "bn", scope: !74, file: !2, line: 43, type: !78)
!93 = !DILocalVariable(name: "n", scope: !74, file: !2, line: 44, type: !78)
!94 = !DILocalVariable(name: "del", scope: !74, file: !2, line: 45, type: !78)
!95 = !DILocalVariable(name: "abs_del", scope: !74, file: !2, line: 46, type: !78)
!96 = !DILocalVariable(name: "max_abs_del", scope: !74, file: !2, line: 47, type: !78)
!97 = !DILocalVariable(name: "sum_val", scope: !74, file: !2, line: 48, type: !78)
!98 = !DILocalVariable(name: "sum_err", scope: !74, file: !2, line: 49, type: !78)
!99 = !DILocalVariable(name: "u", scope: !100, file: !2, line: 52, type: !78)
!100 = distinct !DILexicalBlock(scope: !74, file: !2, line: 51, column: 55)
!101 = !DILocalVariable(name: "abs_u", scope: !100, file: !2, line: 52, type: !78)
!102 = !DILocation(line: 0, scope: !74)
!103 = !DILocation(line: 51, column: 3, scope: !74)
!104 = !DILocation(line: 54, column: 11, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !2, line: 54, column: 8)
!106 = !DILocation(line: 54, column: 8, scope: !100)
!107 = !DILocation(line: 55, column: 7, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 55, column: 7)
!109 = distinct !DILexicalBlock(scope: !105, file: !2, line: 54, column: 19)
!110 = !{!111, !112, i64 0}
!111 = !{!"gsl_sf_result_struct", !112, i64 0, !112, i64 8}
!112 = !{!"double", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!111, !112, i64 8}
!116 = !DILocation(line: 55, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !108, file: !2, line: 55, column: 7)
!118 = !DILocation(line: 58, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !100, file: !2, line: 58, column: 8)
!120 = !DILocation(line: 58, column: 8, scope: !100)
!121 = !DILocation(line: 59, column: 20, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !2, line: 58, column: 19)
!123 = !DILocation(line: 60, column: 15, scope: !122)
!124 = !DILocation(line: 61, column: 44, scope: !122)
!125 = !DILocation(line: 61, column: 48, scope: !122)
!126 = !DILocation(line: 61, column: 19, scope: !122)
!127 = !DILocation(line: 62, column: 7, scope: !122)
!128 = !DILocation(line: 65, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !100, file: !2, line: 65, column: 9)
!130 = !DILocation(line: 65, column: 9, scope: !100)
!131 = !DILocation(line: 66, column: 20, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !2, line: 65, column: 22)
!133 = !DILocation(line: 67, column: 15, scope: !132)
!134 = !DILocation(line: 67, column: 20, scope: !132)
!135 = !DILocation(line: 68, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !2, line: 68, column: 7)
!137 = !DILocation(line: 71, column: 20, scope: !100)
!138 = !DILocation(line: 71, column: 16, scope: !100)
!139 = !DILocation(line: 71, column: 11, scope: !100)
!140 = !DILocation(line: 0, scope: !100)
!141 = !DILocation(line: 72, column: 13, scope: !100)
!142 = !DILocation(line: 73, column: 14, scope: !143)
!143 = distinct !DILexicalBlock(scope: !100, file: !2, line: 73, column: 8)
!144 = !DILocation(line: 73, column: 20, scope: !143)
!145 = !DILocation(line: 74, column: 19, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !2, line: 73, column: 56)
!147 = !DILocation(line: 75, column: 15, scope: !146)
!148 = !DILocation(line: 75, column: 19, scope: !146)
!149 = !DILocation(line: 76, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !146, file: !2, line: 76, column: 7)
!151 = !DILocation(line: 78, column: 9, scope: !100)
!152 = !DILocation(line: 80, column: 8, scope: !153)
!153 = distinct !DILexicalBlock(scope: !100, file: !2, line: 80, column: 8)
!154 = !DILocation(line: 80, column: 22, scope: !153)
!155 = !DILocation(line: 80, column: 8, scope: !100)
!156 = !DILocation(line: 81, column: 19, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !2, line: 80, column: 35)
!158 = !DILocation(line: 82, column: 15, scope: !157)
!159 = !DILocation(line: 82, column: 19, scope: !157)
!160 = !DILocation(line: 83, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !157, file: !2, line: 83, column: 7)
!162 = !DILocation(line: 86, column: 15, scope: !100)
!163 = !DILocalVariable(name: "a", arg: 1, scope: !164, file: !165, line: 69, type: !78)
!164 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !165, file: !165, line: 69, type: !166, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !168)
!165 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!166 = !DISubroutineType(types: !167)
!167 = !{!78, !78, !78}
!168 = !{!163, !169}
!169 = !DILocalVariable(name: "b", arg: 2, scope: !164, file: !165, line: 69, type: !78)
!170 = !DILocation(line: 0, scope: !164, inlinedAt: !171)
!171 = distinct !DILocation(line: 87, column: 19, scope: !100)
!172 = !DILocation(line: 71, column: 10, scope: !164, inlinedAt: !171)
!173 = !DILocation(line: 88, column: 35, scope: !100)
!174 = !DILocation(line: 90, column: 8, scope: !100)
!175 = !DILocation(line: 91, column: 8, scope: !100)
!176 = !DILocation(line: 92, column: 8, scope: !100)
!177 = !DILocation(line: 51, column: 16, scope: !74)
!178 = !DILocation(line: 51, column: 31, scope: !74)
!179 = distinct !{!179, !103, !180, !181}
!180 = !DILocation(line: 93, column: 3, scope: !74)
!181 = !{!"llvm.loop.mustprogress"}
!182 = !DILocation(line: 95, column: 16, scope: !74)
!183 = !DILocation(line: 96, column: 11, scope: !74)
!184 = !DILocation(line: 98, column: 40, scope: !74)
!185 = !DILocation(line: 98, column: 44, scope: !74)
!186 = !DILocation(line: 98, column: 15, scope: !74)
!187 = !DILocation(line: 100, column: 3, scope: !74)
!188 = !DILocation(line: 101, column: 1, scope: !74)
!189 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !192, !192, !28, !28}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!194 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_large_b_e", scope: !2, file: !2, line: 105, type: !75, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !195)
!195 = !{!196, !197, !198, !199, !200, !203, !204, !205, !206, !207, !208, !209, !210}
!196 = !DILocalVariable(name: "a", arg: 1, scope: !194, file: !2, line: 105, type: !77)
!197 = !DILocalVariable(name: "b", arg: 2, scope: !194, file: !2, line: 105, type: !77)
!198 = !DILocalVariable(name: "x", arg: 3, scope: !194, file: !2, line: 105, type: !77)
!199 = !DILocalVariable(name: "result", arg: 4, scope: !194, file: !2, line: 105, type: !79)
!200 = !DILocalVariable(name: "u", scope: !201, file: !2, line: 108, type: !77)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 107, column: 23)
!202 = distinct !DILexicalBlock(scope: !194, file: !2, line: 107, column: 6)
!203 = !DILocalVariable(name: "v", scope: !201, file: !2, line: 109, type: !77)
!204 = !DILocalVariable(name: "pre", scope: !201, file: !2, line: 110, type: !77)
!205 = !DILocalVariable(name: "uv", scope: !201, file: !2, line: 111, type: !77)
!206 = !DILocalVariable(name: "uv2", scope: !201, file: !2, line: 112, type: !77)
!207 = !DILocalVariable(name: "t1", scope: !201, file: !2, line: 113, type: !77)
!208 = !DILocalVariable(name: "t2a", scope: !201, file: !2, line: 114, type: !77)
!209 = !DILocalVariable(name: "t2b", scope: !201, file: !2, line: 115, type: !77)
!210 = !DILocalVariable(name: "t2", scope: !201, file: !2, line: 116, type: !77)
!211 = !DILocation(line: 0, scope: !194)
!212 = !DILocation(line: 107, column: 12, scope: !202)
!213 = !DILocation(line: 107, column: 6, scope: !202)
!214 = !DILocation(line: 107, column: 16, scope: !202)
!215 = !DILocation(line: 107, column: 6, scope: !194)
!216 = !DILocation(line: 0, scope: !201)
!217 = !DILocation(line: 109, column: 25, scope: !201)
!218 = !DILocation(line: 110, column: 24, scope: !201)
!219 = !DILocation(line: 111, column: 25, scope: !201)
!220 = !DILocation(line: 112, column: 26, scope: !201)
!221 = !DILocation(line: 113, column: 25, scope: !201)
!222 = !DILocation(line: 113, column: 38, scope: !201)
!223 = !DILocation(line: 113, column: 33, scope: !201)
!224 = !DILocation(line: 113, column: 41, scope: !201)
!225 = !DILocation(line: 114, column: 39, scope: !201)
!226 = !DILocation(line: 114, column: 41, scope: !201)
!227 = !DILocation(line: 114, column: 33, scope: !201)
!228 = !DILocation(line: 114, column: 44, scope: !201)
!229 = !DILocation(line: 115, column: 35, scope: !201)
!230 = !DILocation(line: 115, column: 43, scope: !201)
!231 = !DILocation(line: 115, column: 52, scope: !201)
!232 = !DILocation(line: 115, column: 60, scope: !201)
!233 = !DILocation(line: 115, column: 68, scope: !201)
!234 = !DILocation(line: 116, column: 27, scope: !201)
!235 = !DILocation(line: 117, column: 36, scope: !201)
!236 = !DILocation(line: 117, column: 24, scope: !201)
!237 = !DILocation(line: 117, column: 18, scope: !201)
!238 = !DILocation(line: 118, column: 24, scope: !201)
!239 = !DILocation(line: 118, column: 51, scope: !201)
!240 = !DILocation(line: 118, column: 62, scope: !201)
!241 = !DILocation(line: 118, column: 42, scope: !201)
!242 = !DILocation(line: 118, column: 13, scope: !201)
!243 = !DILocation(line: 119, column: 44, scope: !201)
!244 = !DILocation(line: 119, column: 42, scope: !201)
!245 = !DILocation(line: 119, column: 17, scope: !201)
!246 = !DILocation(line: 123, column: 5, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !2, line: 123, column: 5)
!248 = distinct !DILexicalBlock(scope: !202, file: !2, line: 122, column: 8)
!249 = !DILocation(line: 123, column: 5, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !2, line: 123, column: 5)
!251 = !DILocation(line: 0, scope: !202)
!252 = !DILocation(line: 125, column: 1, scope: !194)
!253 = !DISubprogram(name: "pow", scope: !254, file: !254, line: 140, type: !166, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!255 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_large_b_e", scope: !2, file: !2, line: 129, type: !256, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !259)
!256 = !DISubroutineType(types: !257)
!257 = !{!28, !77, !77, !77, !79, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !270, !271, !272, !275, !276, !277, !279, !280, !283, !284, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !305, !306, !307, !308, !309, !310, !312}
!260 = !DILocalVariable(name: "a", arg: 1, scope: !255, file: !2, line: 129, type: !77)
!261 = !DILocalVariable(name: "b", arg: 2, scope: !255, file: !2, line: 129, type: !77)
!262 = !DILocalVariable(name: "x", arg: 3, scope: !255, file: !2, line: 129, type: !77)
!263 = !DILocalVariable(name: "result", arg: 4, scope: !255, file: !2, line: 130, type: !79)
!264 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !255, file: !2, line: 131, type: !258)
!265 = !DILocalVariable(name: "N", scope: !255, file: !2, line: 134, type: !78)
!266 = !DILocalVariable(name: "eps", scope: !255, file: !2, line: 135, type: !78)
!267 = !DILocalVariable(name: "lnpre_val", scope: !268, file: !2, line: 138, type: !78)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 137, column: 40)
!269 = distinct !DILexicalBlock(scope: !255, file: !2, line: 137, column: 6)
!270 = !DILocalVariable(name: "lnpre_err", scope: !268, file: !2, line: 139, type: !78)
!271 = !DILocalVariable(name: "M", scope: !268, file: !2, line: 140, type: !80)
!272 = !DILocalVariable(name: "tmp", scope: !273, file: !2, line: 142, type: !78)
!273 = distinct !DILexicalBlock(scope: !274, file: !2, line: 141, column: 17)
!274 = distinct !DILexicalBlock(scope: !268, file: !2, line: 141, column: 8)
!275 = !DILocalVariable(name: "lg_bm1", scope: !273, file: !2, line: 143, type: !80)
!276 = !DILocalVariable(name: "lg_a", scope: !273, file: !2, line: 144, type: !80)
!277 = !DILocalVariable(name: "lg_1mb", scope: !278, file: !2, line: 152, type: !80)
!278 = distinct !DILexicalBlock(scope: !274, file: !2, line: 151, column: 10)
!279 = !DILocalVariable(name: "lg_1pamb", scope: !278, file: !2, line: 153, type: !80)
!280 = !DILocalVariable(name: "epre", scope: !281, file: !2, line: 168, type: !80)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 167, column: 10)
!282 = distinct !DILexicalBlock(scope: !268, file: !2, line: 161, column: 8)
!283 = !DILocalVariable(name: "stat_e", scope: !281, file: !2, line: 169, type: !28)
!284 = !DILocalVariable(name: "omb_lnx", scope: !285, file: !2, line: 178, type: !78)
!285 = distinct !DILexicalBlock(scope: !269, file: !2, line: 177, column: 8)
!286 = !DILocalVariable(name: "lg_1mb", scope: !285, file: !2, line: 179, type: !80)
!287 = !DILocalVariable(name: "sgn_1mb", scope: !285, file: !2, line: 179, type: !78)
!288 = !DILocalVariable(name: "lg_1pamb", scope: !285, file: !2, line: 180, type: !80)
!289 = !DILocalVariable(name: "sgn_1pamb", scope: !285, file: !2, line: 180, type: !78)
!290 = !DILocalVariable(name: "lg_bm1", scope: !285, file: !2, line: 181, type: !80)
!291 = !DILocalVariable(name: "sgn_bm1", scope: !285, file: !2, line: 181, type: !78)
!292 = !DILocalVariable(name: "lg_a", scope: !285, file: !2, line: 182, type: !80)
!293 = !DILocalVariable(name: "sgn_a", scope: !285, file: !2, line: 182, type: !78)
!294 = !DILocalVariable(name: "M1", scope: !285, file: !2, line: 183, type: !80)
!295 = !DILocalVariable(name: "M2", scope: !285, file: !2, line: 183, type: !80)
!296 = !DILocalVariable(name: "lnpre1_val", scope: !285, file: !2, line: 184, type: !78)
!297 = !DILocalVariable(name: "lnpre2_val", scope: !285, file: !2, line: 184, type: !78)
!298 = !DILocalVariable(name: "lnpre1_err", scope: !285, file: !2, line: 185, type: !78)
!299 = !DILocalVariable(name: "lnpre2_err", scope: !285, file: !2, line: 185, type: !78)
!300 = !DILocalVariable(name: "sgpre1", scope: !285, file: !2, line: 186, type: !78)
!301 = !DILocalVariable(name: "sgpre2", scope: !285, file: !2, line: 186, type: !78)
!302 = !DILocalVariable(name: "max_lnpre_val", scope: !303, file: !2, line: 204, type: !78)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 203, column: 80)
!304 = distinct !DILexicalBlock(scope: !285, file: !2, line: 203, column: 8)
!305 = !DILocalVariable(name: "max_lnpre_err", scope: !303, file: !2, line: 205, type: !78)
!306 = !DILocalVariable(name: "lp1", scope: !303, file: !2, line: 206, type: !78)
!307 = !DILocalVariable(name: "lp2", scope: !303, file: !2, line: 207, type: !78)
!308 = !DILocalVariable(name: "t1", scope: !303, file: !2, line: 208, type: !78)
!309 = !DILocalVariable(name: "t2", scope: !303, file: !2, line: 209, type: !78)
!310 = !DILocalVariable(name: "t1", scope: !311, file: !2, line: 218, type: !78)
!311 = distinct !DILexicalBlock(scope: !304, file: !2, line: 217, column: 10)
!312 = !DILocalVariable(name: "t2", scope: !311, file: !2, line: 219, type: !78)
!313 = distinct !DIAssignID()
!314 = !DILocation(line: 0, scope: !273)
!315 = distinct !DIAssignID()
!316 = distinct !DIAssignID()
!317 = !DILocation(line: 0, scope: !278)
!318 = distinct !DIAssignID()
!319 = distinct !DIAssignID()
!320 = !DILocation(line: 0, scope: !281)
!321 = distinct !DIAssignID()
!322 = !DILocation(line: 0, scope: !285)
!323 = distinct !DIAssignID()
!324 = distinct !DIAssignID()
!325 = distinct !DIAssignID()
!326 = distinct !DIAssignID()
!327 = distinct !DIAssignID()
!328 = distinct !DIAssignID()
!329 = distinct !DIAssignID()
!330 = !DILocation(line: 0, scope: !255)
!331 = !DILocation(line: 134, column: 16, scope: !255)
!332 = !DILocation(line: 137, column: 6, scope: !269)
!333 = !DILocation(line: 137, column: 16, scope: !269)
!334 = !DILocation(line: 137, column: 6, scope: !255)
!335 = !DILocation(line: 141, column: 10, scope: !274)
!336 = !DILocation(line: 141, column: 8, scope: !268)
!337 = !DILocation(line: 142, column: 28, scope: !273)
!338 = !DILocation(line: 142, column: 27, scope: !273)
!339 = !DILocation(line: 143, column: 7, scope: !273)
!340 = !DILocation(line: 144, column: 7, scope: !273)
!341 = !DILocation(line: 145, column: 7, scope: !273)
!342 = !DILocation(line: 146, column: 7, scope: !273)
!343 = !DILocation(line: 147, column: 36, scope: !273)
!344 = !DILocation(line: 147, column: 47, scope: !273)
!345 = !DILocation(line: 148, column: 26, scope: !273)
!346 = !DILocation(line: 0, scope: !268)
!347 = !DILocation(line: 148, column: 37, scope: !273)
!348 = !DILocation(line: 148, column: 62, scope: !273)
!349 = !DILocation(line: 148, column: 72, scope: !273)
!350 = !DILocation(line: 148, column: 59, scope: !273)
!351 = !DILocation(line: 149, column: 45, scope: !273)
!352 = !DILocation(line: 149, column: 49, scope: !273)
!353 = !DILocation(line: 0, scope: !194, inlinedAt: !354)
!354 = distinct !DILocation(line: 149, column: 7, scope: !273)
!355 = !DILocation(line: 107, column: 12, scope: !202, inlinedAt: !354)
!356 = !DILocation(line: 107, column: 6, scope: !202, inlinedAt: !354)
!357 = !DILocation(line: 107, column: 16, scope: !202, inlinedAt: !354)
!358 = !DILocation(line: 107, column: 6, scope: !194, inlinedAt: !354)
!359 = !DILocation(line: 109, column: 30, scope: !201, inlinedAt: !354)
!360 = !DILocation(line: 0, scope: !201, inlinedAt: !354)
!361 = !DILocation(line: 109, column: 25, scope: !201, inlinedAt: !354)
!362 = !DILocation(line: 110, column: 24, scope: !201, inlinedAt: !354)
!363 = !DILocation(line: 111, column: 25, scope: !201, inlinedAt: !354)
!364 = !DILocation(line: 112, column: 26, scope: !201, inlinedAt: !354)
!365 = !DILocation(line: 113, column: 25, scope: !201, inlinedAt: !354)
!366 = !DILocation(line: 113, column: 38, scope: !201, inlinedAt: !354)
!367 = !DILocation(line: 113, column: 33, scope: !201, inlinedAt: !354)
!368 = !DILocation(line: 113, column: 41, scope: !201, inlinedAt: !354)
!369 = !DILocation(line: 114, column: 39, scope: !201, inlinedAt: !354)
!370 = !DILocation(line: 114, column: 41, scope: !201, inlinedAt: !354)
!371 = !DILocation(line: 114, column: 33, scope: !201, inlinedAt: !354)
!372 = !DILocation(line: 114, column: 44, scope: !201, inlinedAt: !354)
!373 = !DILocation(line: 115, column: 35, scope: !201, inlinedAt: !354)
!374 = !DILocation(line: 115, column: 43, scope: !201, inlinedAt: !354)
!375 = !DILocation(line: 115, column: 52, scope: !201, inlinedAt: !354)
!376 = !DILocation(line: 115, column: 60, scope: !201, inlinedAt: !354)
!377 = !DILocation(line: 115, column: 68, scope: !201, inlinedAt: !354)
!378 = !DILocation(line: 116, column: 27, scope: !201, inlinedAt: !354)
!379 = !DILocation(line: 117, column: 36, scope: !201, inlinedAt: !354)
!380 = !DILocation(line: 117, column: 24, scope: !201, inlinedAt: !354)
!381 = !DILocation(line: 118, column: 24, scope: !201, inlinedAt: !354)
!382 = !DILocation(line: 118, column: 51, scope: !201, inlinedAt: !354)
!383 = !DILocation(line: 118, column: 62, scope: !201, inlinedAt: !354)
!384 = !DILocation(line: 118, column: 42, scope: !201, inlinedAt: !354)
!385 = !DILocation(line: 119, column: 44, scope: !201, inlinedAt: !354)
!386 = !DILocation(line: 119, column: 42, scope: !201, inlinedAt: !354)
!387 = !DILocation(line: 123, column: 5, scope: !250, inlinedAt: !354)
!388 = !DILocation(line: 0, scope: !202, inlinedAt: !354)
!389 = !DILocation(line: 150, column: 5, scope: !274)
!390 = !DILocation(line: 150, column: 5, scope: !273)
!391 = !DILocation(line: 152, column: 7, scope: !278)
!392 = !DILocation(line: 153, column: 7, scope: !278)
!393 = !DILocation(line: 154, column: 7, scope: !278)
!394 = !DILocation(line: 155, column: 29, scope: !278)
!395 = !DILocation(line: 155, column: 7, scope: !278)
!396 = !DILocation(line: 156, column: 26, scope: !278)
!397 = !DILocation(line: 156, column: 41, scope: !278)
!398 = !DILocation(line: 157, column: 26, scope: !278)
!399 = !DILocation(line: 157, column: 41, scope: !278)
!400 = !DILocation(line: 107, column: 12, scope: !202, inlinedAt: !401)
!401 = distinct !DILocation(line: 158, column: 7, scope: !278)
!402 = !DILocation(line: 0, scope: !194, inlinedAt: !401)
!403 = !DILocation(line: 107, column: 6, scope: !202, inlinedAt: !401)
!404 = !DILocation(line: 107, column: 16, scope: !202, inlinedAt: !401)
!405 = !DILocation(line: 107, column: 6, scope: !194, inlinedAt: !401)
!406 = !DILocation(line: 0, scope: !201, inlinedAt: !401)
!407 = !DILocation(line: 109, column: 25, scope: !201, inlinedAt: !401)
!408 = !DILocation(line: 110, column: 24, scope: !201, inlinedAt: !401)
!409 = !DILocation(line: 111, column: 25, scope: !201, inlinedAt: !401)
!410 = !DILocation(line: 112, column: 26, scope: !201, inlinedAt: !401)
!411 = !DILocation(line: 113, column: 25, scope: !201, inlinedAt: !401)
!412 = !DILocation(line: 113, column: 38, scope: !201, inlinedAt: !401)
!413 = !DILocation(line: 113, column: 33, scope: !201, inlinedAt: !401)
!414 = !DILocation(line: 113, column: 41, scope: !201, inlinedAt: !401)
!415 = !DILocation(line: 114, column: 39, scope: !201, inlinedAt: !401)
!416 = !DILocation(line: 114, column: 41, scope: !201, inlinedAt: !401)
!417 = !DILocation(line: 114, column: 33, scope: !201, inlinedAt: !401)
!418 = !DILocation(line: 114, column: 44, scope: !201, inlinedAt: !401)
!419 = !DILocation(line: 115, column: 35, scope: !201, inlinedAt: !401)
!420 = !DILocation(line: 115, column: 43, scope: !201, inlinedAt: !401)
!421 = !DILocation(line: 115, column: 52, scope: !201, inlinedAt: !401)
!422 = !DILocation(line: 115, column: 60, scope: !201, inlinedAt: !401)
!423 = !DILocation(line: 115, column: 68, scope: !201, inlinedAt: !401)
!424 = !DILocation(line: 116, column: 27, scope: !201, inlinedAt: !401)
!425 = !DILocation(line: 117, column: 36, scope: !201, inlinedAt: !401)
!426 = !DILocation(line: 117, column: 24, scope: !201, inlinedAt: !401)
!427 = !DILocation(line: 118, column: 24, scope: !201, inlinedAt: !401)
!428 = !DILocation(line: 118, column: 51, scope: !201, inlinedAt: !401)
!429 = !DILocation(line: 118, column: 62, scope: !201, inlinedAt: !401)
!430 = !DILocation(line: 118, column: 42, scope: !201, inlinedAt: !401)
!431 = !DILocation(line: 119, column: 44, scope: !201, inlinedAt: !401)
!432 = !DILocation(line: 119, column: 42, scope: !201, inlinedAt: !401)
!433 = !DILocation(line: 123, column: 5, scope: !250, inlinedAt: !401)
!434 = !DILocation(line: 0, scope: !202, inlinedAt: !401)
!435 = !DILocation(line: 159, column: 5, scope: !274)
!436 = !DILocation(line: 119, column: 17, scope: !201, inlinedAt: !437)
!437 = !DILocation(line: 0, scope: !274)
!438 = !DILocation(line: 117, column: 18, scope: !201, inlinedAt: !437)
!439 = !DILocation(line: 161, column: 18, scope: !282)
!440 = !DILocation(line: 161, column: 8, scope: !268)
!441 = !DILocation(line: 162, column: 20, scope: !442)
!442 = distinct !DILexicalBlock(scope: !282, file: !2, line: 161, column: 42)
!443 = !DILocation(line: 163, column: 15, scope: !442)
!444 = !DILocation(line: 163, column: 20, scope: !442)
!445 = !DILocation(line: 164, column: 22, scope: !442)
!446 = !{!112, !112, i64 0}
!447 = !DILocation(line: 165, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !442, file: !2, line: 165, column: 7)
!449 = !DILocation(line: 168, column: 7, scope: !281)
!450 = !DILocation(line: 169, column: 20, scope: !281)
!451 = !DILocation(line: 170, column: 27, scope: !281)
!452 = !DILocation(line: 170, column: 31, scope: !281)
!453 = !DILocation(line: 170, column: 20, scope: !281)
!454 = !DILocation(line: 171, column: 31, scope: !281)
!455 = !DILocation(line: 171, column: 46, scope: !281)
!456 = !DILocation(line: 171, column: 52, scope: !281)
!457 = !DILocation(line: 171, column: 50, scope: !281)
!458 = !DILocation(line: 171, column: 15, scope: !281)
!459 = !DILocation(line: 172, column: 46, scope: !281)
!460 = !DILocation(line: 172, column: 44, scope: !281)
!461 = !DILocation(line: 172, column: 19, scope: !281)
!462 = !DILocation(line: 173, column: 22, scope: !281)
!463 = !DILocation(line: 175, column: 5, scope: !282)
!464 = !DILocation(line: 178, column: 30, scope: !285)
!465 = !DILocation(line: 178, column: 29, scope: !285)
!466 = !DILocation(line: 179, column: 5, scope: !285)
!467 = !DILocation(line: 179, column: 30, scope: !285)
!468 = !DILocation(line: 180, column: 5, scope: !285)
!469 = !DILocation(line: 180, column: 30, scope: !285)
!470 = !DILocation(line: 181, column: 5, scope: !285)
!471 = !DILocation(line: 181, column: 30, scope: !285)
!472 = !DILocation(line: 182, column: 5, scope: !285)
!473 = !DILocation(line: 182, column: 30, scope: !285)
!474 = !DILocation(line: 0, scope: !194, inlinedAt: !475)
!475 = distinct !DILocation(line: 187, column: 5, scope: !285)
!476 = !DILocation(line: 107, column: 12, scope: !202, inlinedAt: !475)
!477 = !DILocation(line: 107, column: 6, scope: !202, inlinedAt: !475)
!478 = !DILocation(line: 107, column: 16, scope: !202, inlinedAt: !475)
!479 = !DILocation(line: 107, column: 6, scope: !194, inlinedAt: !475)
!480 = !DILocation(line: 0, scope: !201, inlinedAt: !475)
!481 = !DILocation(line: 109, column: 25, scope: !201, inlinedAt: !475)
!482 = !DILocation(line: 110, column: 24, scope: !201, inlinedAt: !475)
!483 = !DILocation(line: 111, column: 25, scope: !201, inlinedAt: !475)
!484 = !DILocation(line: 112, column: 26, scope: !201, inlinedAt: !475)
!485 = !DILocation(line: 113, column: 25, scope: !201, inlinedAt: !475)
!486 = !DILocation(line: 113, column: 38, scope: !201, inlinedAt: !475)
!487 = !DILocation(line: 113, column: 33, scope: !201, inlinedAt: !475)
!488 = !DILocation(line: 113, column: 41, scope: !201, inlinedAt: !475)
!489 = !DILocation(line: 114, column: 39, scope: !201, inlinedAt: !475)
!490 = !DILocation(line: 114, column: 41, scope: !201, inlinedAt: !475)
!491 = !DILocation(line: 114, column: 33, scope: !201, inlinedAt: !475)
!492 = !DILocation(line: 114, column: 44, scope: !201, inlinedAt: !475)
!493 = !DILocation(line: 115, column: 35, scope: !201, inlinedAt: !475)
!494 = !DILocation(line: 115, column: 43, scope: !201, inlinedAt: !475)
!495 = !DILocation(line: 115, column: 52, scope: !201, inlinedAt: !475)
!496 = !DILocation(line: 115, column: 60, scope: !201, inlinedAt: !475)
!497 = !DILocation(line: 115, column: 68, scope: !201, inlinedAt: !475)
!498 = !DILocation(line: 116, column: 27, scope: !201, inlinedAt: !475)
!499 = !DILocation(line: 117, column: 36, scope: !201, inlinedAt: !475)
!500 = !DILocation(line: 117, column: 24, scope: !201, inlinedAt: !475)
!501 = !DILocation(line: 118, column: 24, scope: !201, inlinedAt: !475)
!502 = !DILocation(line: 118, column: 51, scope: !201, inlinedAt: !475)
!503 = !DILocation(line: 118, column: 62, scope: !201, inlinedAt: !475)
!504 = !DILocation(line: 118, column: 42, scope: !201, inlinedAt: !475)
!505 = !DILocation(line: 119, column: 44, scope: !201, inlinedAt: !475)
!506 = !DILocation(line: 119, column: 42, scope: !201, inlinedAt: !475)
!507 = !DILocation(line: 123, column: 5, scope: !250, inlinedAt: !475)
!508 = !DILocation(line: 0, scope: !202, inlinedAt: !475)
!509 = !DILocation(line: 107, column: 12, scope: !202, inlinedAt: !510)
!510 = distinct !DILocation(line: 188, column: 5, scope: !285)
!511 = !DILocation(line: 0, scope: !194, inlinedAt: !510)
!512 = !DILocation(line: 107, column: 6, scope: !202, inlinedAt: !510)
!513 = !DILocation(line: 107, column: 16, scope: !202, inlinedAt: !510)
!514 = !DILocation(line: 107, column: 6, scope: !194, inlinedAt: !510)
!515 = !DILocation(line: 109, column: 30, scope: !201, inlinedAt: !510)
!516 = !DILocation(line: 0, scope: !201, inlinedAt: !510)
!517 = !DILocation(line: 109, column: 25, scope: !201, inlinedAt: !510)
!518 = !DILocation(line: 110, column: 24, scope: !201, inlinedAt: !510)
!519 = !DILocation(line: 111, column: 25, scope: !201, inlinedAt: !510)
!520 = !DILocation(line: 112, column: 26, scope: !201, inlinedAt: !510)
!521 = !DILocation(line: 113, column: 25, scope: !201, inlinedAt: !510)
!522 = !DILocation(line: 113, column: 38, scope: !201, inlinedAt: !510)
!523 = !DILocation(line: 113, column: 33, scope: !201, inlinedAt: !510)
!524 = !DILocation(line: 113, column: 41, scope: !201, inlinedAt: !510)
!525 = !DILocation(line: 114, column: 39, scope: !201, inlinedAt: !510)
!526 = !DILocation(line: 114, column: 41, scope: !201, inlinedAt: !510)
!527 = !DILocation(line: 114, column: 33, scope: !201, inlinedAt: !510)
!528 = !DILocation(line: 114, column: 44, scope: !201, inlinedAt: !510)
!529 = !DILocation(line: 115, column: 35, scope: !201, inlinedAt: !510)
!530 = !DILocation(line: 115, column: 43, scope: !201, inlinedAt: !510)
!531 = !DILocation(line: 115, column: 52, scope: !201, inlinedAt: !510)
!532 = !DILocation(line: 115, column: 60, scope: !201, inlinedAt: !510)
!533 = !DILocation(line: 115, column: 68, scope: !201, inlinedAt: !510)
!534 = !DILocation(line: 116, column: 27, scope: !201, inlinedAt: !510)
!535 = !DILocation(line: 117, column: 36, scope: !201, inlinedAt: !510)
!536 = !DILocation(line: 117, column: 24, scope: !201, inlinedAt: !510)
!537 = !DILocation(line: 118, column: 24, scope: !201, inlinedAt: !510)
!538 = !DILocation(line: 118, column: 51, scope: !201, inlinedAt: !510)
!539 = !DILocation(line: 118, column: 62, scope: !201, inlinedAt: !510)
!540 = !DILocation(line: 118, column: 42, scope: !201, inlinedAt: !510)
!541 = !DILocation(line: 119, column: 44, scope: !201, inlinedAt: !510)
!542 = !DILocation(line: 119, column: 42, scope: !201, inlinedAt: !510)
!543 = !DILocation(line: 123, column: 5, scope: !250, inlinedAt: !510)
!544 = !DILocation(line: 0, scope: !202, inlinedAt: !510)
!545 = !DILocation(line: 190, column: 5, scope: !285)
!546 = !DILocation(line: 191, column: 31, scope: !285)
!547 = !DILocation(line: 191, column: 5, scope: !285)
!548 = !DILocation(line: 193, column: 5, scope: !285)
!549 = !DILocation(line: 194, column: 5, scope: !285)
!550 = !DILocation(line: 196, column: 25, scope: !285)
!551 = !DILocation(line: 196, column: 40, scope: !285)
!552 = !DILocation(line: 197, column: 25, scope: !285)
!553 = !DILocation(line: 197, column: 40, scope: !285)
!554 = !DILocation(line: 198, column: 25, scope: !285)
!555 = !DILocation(line: 198, column: 36, scope: !285)
!556 = !DILocation(line: 198, column: 40, scope: !285)
!557 = !DILocation(line: 198, column: 50, scope: !285)
!558 = !DILocation(line: 199, column: 25, scope: !285)
!559 = !DILocation(line: 199, column: 36, scope: !285)
!560 = !DILocation(line: 199, column: 61, scope: !285)
!561 = !DILocation(line: 199, column: 75, scope: !285)
!562 = !DILocation(line: 199, column: 58, scope: !285)
!563 = !DILocation(line: 200, column: 14, scope: !285)
!564 = !DILocation(line: 200, column: 24, scope: !285)
!565 = !DILocation(line: 200, column: 22, scope: !285)
!566 = !DILocation(line: 201, column: 14, scope: !285)
!567 = !DILocation(line: 201, column: 24, scope: !285)
!568 = !DILocation(line: 201, column: 22, scope: !285)
!569 = !DILocation(line: 203, column: 19, scope: !304)
!570 = !DILocation(line: 203, column: 42, scope: !304)
!571 = !DILocation(line: 204, column: 30, scope: !303)
!572 = !DILocation(line: 0, scope: !303)
!573 = !DILocation(line: 205, column: 30, scope: !303)
!574 = !DILocation(line: 207, column: 31, scope: !303)
!575 = !DILocation(line: 208, column: 27, scope: !303)
!576 = !DILocation(line: 208, column: 26, scope: !303)
!577 = !DILocation(line: 209, column: 27, scope: !303)
!578 = !DILocation(line: 209, column: 26, scope: !303)
!579 = !DILocation(line: 210, column: 24, scope: !303)
!580 = !DILocation(line: 210, column: 36, scope: !303)
!581 = !DILocation(line: 210, column: 20, scope: !303)
!582 = !DILocation(line: 211, column: 22, scope: !303)
!583 = !DILocation(line: 211, column: 30, scope: !303)
!584 = !DILocation(line: 211, column: 40, scope: !303)
!585 = !DILocation(line: 211, column: 48, scope: !303)
!586 = !DILocation(line: 211, column: 15, scope: !303)
!587 = !DILocation(line: 211, column: 20, scope: !303)
!588 = !DILocation(line: 212, column: 40, scope: !303)
!589 = !DILocation(line: 212, column: 38, scope: !303)
!590 = !DILocation(line: 212, column: 62, scope: !303)
!591 = !DILocation(line: 212, column: 80, scope: !303)
!592 = !DILocation(line: 212, column: 59, scope: !303)
!593 = !DILocation(line: 212, column: 19, scope: !303)
!594 = !DILocation(line: 213, column: 59, scope: !303)
!595 = !DILocation(line: 213, column: 46, scope: !303)
!596 = !DILocation(line: 213, column: 44, scope: !303)
!597 = !DILocation(line: 213, column: 19, scope: !303)
!598 = !DILocation(line: 214, column: 22, scope: !303)
!599 = !DILocation(line: 215, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !303, file: !2, line: 215, column: 7)
!601 = !DILocation(line: 218, column: 26, scope: !311)
!602 = !DILocation(line: 218, column: 25, scope: !311)
!603 = !DILocation(line: 0, scope: !311)
!604 = !DILocation(line: 219, column: 26, scope: !311)
!605 = !DILocation(line: 219, column: 25, scope: !311)
!606 = !DILocation(line: 220, column: 24, scope: !311)
!607 = !DILocation(line: 220, column: 36, scope: !311)
!608 = !DILocation(line: 220, column: 20, scope: !311)
!609 = !DILocation(line: 221, column: 22, scope: !311)
!610 = !DILocation(line: 221, column: 31, scope: !311)
!611 = !DILocation(line: 221, column: 42, scope: !311)
!612 = !DILocation(line: 221, column: 50, scope: !311)
!613 = !DILocation(line: 221, column: 15, scope: !311)
!614 = !DILocation(line: 221, column: 20, scope: !311)
!615 = !DILocation(line: 222, column: 41, scope: !311)
!616 = !DILocation(line: 222, column: 57, scope: !311)
!617 = !DILocation(line: 222, column: 56, scope: !311)
!618 = !DILocation(line: 222, column: 75, scope: !311)
!619 = !DILocation(line: 222, column: 91, scope: !311)
!620 = !DILocation(line: 222, column: 90, scope: !311)
!621 = !DILocation(line: 222, column: 38, scope: !311)
!622 = !DILocation(line: 222, column: 19, scope: !311)
!623 = !DILocation(line: 223, column: 59, scope: !311)
!624 = !DILocation(line: 223, column: 46, scope: !311)
!625 = !DILocation(line: 223, column: 44, scope: !311)
!626 = !DILocation(line: 223, column: 19, scope: !311)
!627 = !DILocation(line: 224, column: 22, scope: !311)
!628 = !DILocation(line: 0, scope: !304)
!629 = !DILocation(line: 227, column: 3, scope: !269)
!630 = !DILocation(line: 0, scope: !269)
!631 = !DILocation(line: 228, column: 1, scope: !255)
!632 = !DISubprogram(name: "log", scope: !254, file: !254, line: 104, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!633 = !DISubroutineType(types: !634)
!634 = !{!78, !78}
!635 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !636, file: !636, line: 47, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!637 = !DISubroutineType(types: !638)
!638 = !{!28, !78, !79}
!639 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !640, file: !640, line: 110, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!641 = !DISubroutineType(types: !642)
!642 = !{!28, !77, !77, !79}
!643 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !636, file: !636, line: 58, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DISubroutineType(types: !645)
!645 = !{!28, !78, !79, !258}
!646 = !DISubprogram(name: "exp", scope: !254, file: !254, line: 95, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F0_series_e", scope: !2, file: !2, line: 240, type: !648, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!28, !77, !77, !77, !28, !79}
!650 = !{!651, !652, !653, !654, !655, !656, !658, !659, !660, !661, !662, !663, !664, !665, !666, !668}
!651 = !DILocalVariable(name: "a", arg: 1, scope: !647, file: !2, line: 240, type: !77)
!652 = !DILocalVariable(name: "b", arg: 2, scope: !647, file: !2, line: 240, type: !77)
!653 = !DILocalVariable(name: "x", arg: 3, scope: !647, file: !2, line: 240, type: !77)
!654 = !DILocalVariable(name: "n_trunc", arg: 4, scope: !647, file: !2, line: 241, type: !28)
!655 = !DILocalVariable(name: "result", arg: 5, scope: !647, file: !2, line: 242, type: !79)
!656 = !DILocalVariable(name: "maxiter", scope: !647, file: !2, line: 245, type: !657)
!657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!658 = !DILocalVariable(name: "an", scope: !647, file: !2, line: 246, type: !78)
!659 = !DILocalVariable(name: "bn", scope: !647, file: !2, line: 247, type: !78)
!660 = !DILocalVariable(name: "n", scope: !647, file: !2, line: 248, type: !78)
!661 = !DILocalVariable(name: "sum", scope: !647, file: !2, line: 249, type: !78)
!662 = !DILocalVariable(name: "del", scope: !647, file: !2, line: 250, type: !78)
!663 = !DILocalVariable(name: "abs_del", scope: !647, file: !2, line: 251, type: !78)
!664 = !DILocalVariable(name: "max_abs_del", scope: !647, file: !2, line: 252, type: !78)
!665 = !DILocalVariable(name: "last_abs_del", scope: !647, file: !2, line: 253, type: !78)
!666 = !DILocalVariable(name: "u", scope: !667, file: !2, line: 257, type: !78)
!667 = distinct !DILexicalBlock(scope: !647, file: !2, line: 255, column: 61)
!668 = !DILocalVariable(name: "abs_u", scope: !667, file: !2, line: 258, type: !78)
!669 = !DILocation(line: 0, scope: !647)
!670 = !DILocation(line: 255, column: 3, scope: !647)
!671 = !DILocation(line: 247, column: 10, scope: !647)
!672 = !DILocation(line: 248, column: 10, scope: !647)
!673 = !DILocation(line: 249, column: 10, scope: !647)
!674 = !DILocation(line: 250, column: 10, scope: !647)
!675 = !DILocation(line: 251, column: 10, scope: !647)
!676 = !DILocation(line: 252, column: 10, scope: !647)
!677 = !DILocation(line: 246, column: 10, scope: !647)
!678 = !DILocation(line: 255, column: 17, scope: !647)
!679 = !DILocation(line: 255, column: 16, scope: !647)
!680 = !DILocation(line: 255, column: 27, scope: !647)
!681 = !DILocation(line: 255, column: 45, scope: !647)
!682 = !DILocation(line: 257, column: 24, scope: !667)
!683 = !DILocation(line: 257, column: 27, scope: !667)
!684 = !DILocation(line: 257, column: 19, scope: !667)
!685 = !DILocation(line: 0, scope: !667)
!686 = !DILocation(line: 258, column: 20, scope: !667)
!687 = !DILocation(line: 260, column: 14, scope: !688)
!688 = distinct !DILexicalBlock(scope: !667, file: !2, line: 260, column: 8)
!689 = !DILocation(line: 260, column: 20, scope: !688)
!690 = !DILocation(line: 261, column: 19, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !2, line: 260, column: 58)
!692 = !DILocation(line: 262, column: 15, scope: !691)
!693 = !DILocation(line: 262, column: 19, scope: !691)
!694 = !DILocation(line: 263, column: 7, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !2, line: 263, column: 7)
!696 = !DILocation(line: 266, column: 9, scope: !667)
!697 = !DILocation(line: 269, column: 15, scope: !667)
!698 = !DILocation(line: 271, column: 16, scope: !699)
!699 = distinct !DILexicalBlock(scope: !667, file: !2, line: 271, column: 8)
!700 = !DILocation(line: 271, column: 8, scope: !667)
!701 = !DILocation(line: 277, column: 8, scope: !667)
!702 = !DILocation(line: 278, column: 8, scope: !667)
!703 = !DILocation(line: 280, column: 11, scope: !704)
!704 = distinct !DILexicalBlock(scope: !667, file: !2, line: 280, column: 8)
!705 = !DILocation(line: 280, column: 18, scope: !704)
!706 = !DILocation(line: 274, column: 20, scope: !667)
!707 = !DILocation(line: 282, column: 21, scope: !708)
!708 = distinct !DILexicalBlock(scope: !667, file: !2, line: 282, column: 8)
!709 = !DILocation(line: 285, column: 15, scope: !647)
!710 = !DILocation(line: 286, column: 33, scope: !647)
!711 = !DILocation(line: 286, column: 11, scope: !647)
!712 = !DILocation(line: 286, column: 15, scope: !647)
!713 = !DILocation(line: 287, column: 8, scope: !714)
!714 = distinct !DILexicalBlock(scope: !647, file: !2, line: 287, column: 6)
!715 = !DILocation(line: 287, column: 6, scope: !647)
!716 = !DILocation(line: 288, column: 5, scope: !717)
!717 = distinct !DILexicalBlock(scope: !714, file: !2, line: 288, column: 5)
!718 = !DILocation(line: 291, column: 1, scope: !647)
