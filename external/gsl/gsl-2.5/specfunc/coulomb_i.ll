; ModuleID = 'coulomb.ll'
source_filename = "coulomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [10 x i8] c"coulomb.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !22

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_CL_e(double noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !75 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !90
  tail call void @llvm.dbg.value(metadata double %0, metadata !87, metadata !DIExpression()), !dbg !91
  tail call void @llvm.dbg.value(metadata double %1, metadata !88, metadata !DIExpression()), !dbg !91
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !89, metadata !DIExpression()), !dbg !91
  %5 = fcmp ugt double %0, -1.000000e+00, !dbg !92
  br i1 %5, label %8, label %6, !dbg !94

6:                                                ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !95, !tbaa !98
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !95
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !95, !tbaa !103
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 1) #8, !dbg !104
  br label %28, !dbg !104

8:                                                ; preds = %3
  %9 = tail call double @llvm.fabs.f64(double %0), !dbg !106
  %10 = fcmp olt double %9, 0x3CB0000000000000, !dbg !108
  br i1 %10, label %11, label %26, !dbg !109

11:                                               ; preds = %8
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !90, metadata ptr %4, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.value(metadata double %1, metadata !118, metadata !DIExpression()), !dbg !123
  %12 = fmul double %1, 0x401921FB54442D18, !dbg !124
  call void @llvm.dbg.value(metadata double %12, metadata !119, metadata !DIExpression()), !dbg !123
  %13 = tail call double @llvm.fabs.f64(double %1), !dbg !125
  %14 = fcmp olt double %13, 0x3CB0000000000000, !dbg !126
  br i1 %14, label %21, label %15, !dbg !127

15:                                               ; preds = %11
  %16 = fcmp ogt double %12, 0x40862E42FEFA39EF, !dbg !128
  br i1 %16, label %21, label %17, !dbg !129

17:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !130
  %18 = call i32 @gsl_sf_expm1_e(double noundef %12, ptr noundef nonnull %4) #8, !dbg !131
  %19 = load double, ptr %4, align 8, !dbg !132, !tbaa !98
  %20 = fdiv double %12, %19, !dbg !133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !134
  br label %21

21:                                               ; preds = %17, %15, %11
  %22 = phi double [ %20, %17 ], [ 1.000000e+00, %11 ], [ 0.000000e+00, %15 ], !dbg !135
  %23 = call double @sqrt(double noundef %22) #8, !dbg !136
  store double %23, ptr %2, align 8, !dbg !137, !tbaa !98
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !138
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !139
  store double %24, ptr %25, align 8, !dbg !140, !tbaa !103
  br label %28, !dbg !141

26:                                               ; preds = %8
  %27 = tail call fastcc i32 @CLeta(double noundef %0, double noundef %1, ptr noundef %2), !dbg !142
  br label %28, !dbg !144

28:                                               ; preds = %26, %21, %6
  %29 = phi i32 [ 1, %6 ], [ 0, %21 ], [ %27, %26 ], !dbg !145
  ret i32 %29, !dbg !146
}

declare !dbg !147 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !152 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @CLeta(double noundef %0, double noundef %1, ptr noundef %2) unnamed_addr #0 !dbg !154 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !167
  call void @llvm.dbg.assign(metadata i1 undef, metadata !159, metadata !DIExpression(), metadata !167, metadata ptr %4, metadata !DIExpression()), !dbg !168
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !169
  call void @llvm.dbg.assign(metadata i1 undef, metadata !160, metadata !DIExpression(), metadata !169, metadata ptr %5, metadata !DIExpression()), !dbg !168
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !164, metadata !DIExpression(), metadata !170, metadata ptr %6, metadata !DIExpression()), !dbg !171
  tail call void @llvm.dbg.value(metadata double %0, metadata !156, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata double %1, metadata !157, metadata !DIExpression()), !dbg !168
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !158, metadata !DIExpression()), !dbg !168
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !172
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !173
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !161, metadata !DIExpression()), !dbg !168
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !174
  %7 = fdiv double %1, %handler_result, !dbg !174
  %8 = tail call double @llvm.fabs.f64(double %7), !dbg !175
  %9 = fcmp olt double %8, 0x3CB0000000000000, !dbg !176
  br i1 %9, label %10, label %12, !dbg !177

10:                                               ; preds = %3
  %11 = call i32 @gsl_sf_lngamma_e(double noundef %handler_result, ptr noundef nonnull %4) #8, !dbg !178
  br label %14, !dbg !180

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !181
  %13 = call i32 @gsl_sf_lngamma_complex_e(double noundef %handler_result, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %6) #8, !dbg !182
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !183
  br label %14

14:                                               ; preds = %12, %10
  %15 = fmul double %handler_result, 2.000000e+00, !dbg !184
  %16 = call i32 @gsl_sf_lngamma_e(double noundef %15, ptr noundef nonnull %5) #8, !dbg !185
  %17 = fmul double %0, 0x3FE62E42FEFA39EF, !dbg !186
  %18 = fmul double %1, 5.000000e-01, !dbg !187
  %19 = fmul double %18, 0x400921FB54442D18, !dbg !188
  %handler_result1 = call double @fSubHandlerDouble(double %17, double %19), !dbg !189
  %20 = load double, ptr %4, align 8, !dbg !189, !tbaa !98
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result1, double %20), !dbg !190
  %21 = load double, ptr %5, align 8, !dbg !190, !tbaa !98
  %handler_result3 = call double @fSubHandlerDouble(double %handler_result2, double %21), !dbg !191
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !162, metadata !DIExpression()), !dbg !168
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !191
  %23 = load double, ptr %22, align 8, !dbg !191, !tbaa !103
  %24 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !192
  %25 = load double, ptr %24, align 8, !dbg !192, !tbaa !103
  %handler_result4 = call double @fAddHandlerDouble(double %23, double %25), !dbg !193
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !163, metadata !DIExpression()), !dbg !168
  %26 = call double @llvm.fabs.f64(double %17), !dbg !193
  %27 = call double @llvm.fabs.f64(double %19), !dbg !194
  %handler_result5 = call double @fAddHandlerDouble(double %26, double %27), !dbg !195
  %28 = fmul double %handler_result5, 0x3CB0000000000000, !dbg !195
  %handler_result6 = call double @fAddHandlerDouble(double %28, double %handler_result4), !dbg !196
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !163, metadata !DIExpression()), !dbg !168
  %29 = call i32 @gsl_sf_exp_err_e(double noundef %handler_result3, double noundef %handler_result6, ptr noundef %2) #8, !dbg !196
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !197
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !197
  ret i32 %29, !dbg !198
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_coulomb_CL_array(double noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !199 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !214
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !215
  call void @llvm.dbg.assign(metadata i1 undef, metadata !209, metadata !DIExpression(), metadata !215, metadata ptr %6, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata double %0, metadata !204, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !205, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata double %2, metadata !206, metadata !DIExpression()), !dbg !216
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !207, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !217
  call void @llvm.dbg.value(metadata double %0, metadata !87, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata double %2, metadata !88, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata ptr %6, metadata !89, metadata !DIExpression()), !dbg !218
  %7 = fcmp ugt double %0, -1.000000e+00, !dbg !220
  br i1 %7, label %10, label %8, !dbg !221

8:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !222, !tbaa !98, !DIAssignID !223
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !223, metadata ptr %6, metadata !DIExpression()), !dbg !216
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !222
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !222, !tbaa !103, !DIAssignID !224
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !224, metadata ptr %9, metadata !DIExpression()), !dbg !216
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 1) #8, !dbg !225
  br label %31, !dbg !225

10:                                               ; preds = %4
  %11 = tail call double @llvm.fabs.f64(double %0), !dbg !226
  %12 = fcmp olt double %11, 0x3CB0000000000000, !dbg !227
  br i1 %12, label %13, label %28, !dbg !228

13:                                               ; preds = %10
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !214, metadata ptr %5, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata double %2, metadata !118, metadata !DIExpression()), !dbg !231
  %14 = fmul double %2, 0x401921FB54442D18, !dbg !232
  call void @llvm.dbg.value(metadata double %14, metadata !119, metadata !DIExpression()), !dbg !231
  %15 = tail call double @llvm.fabs.f64(double %2), !dbg !233
  %16 = fcmp olt double %15, 0x3CB0000000000000, !dbg !234
  br i1 %16, label %23, label %17, !dbg !235

17:                                               ; preds = %13
  %18 = fcmp ogt double %14, 0x40862E42FEFA39EF, !dbg !236
  br i1 %18, label %23, label %19, !dbg !237

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !238
  %20 = call i32 @gsl_sf_expm1_e(double noundef %14, ptr noundef nonnull %5) #8, !dbg !239
  %21 = load double, ptr %5, align 8, !dbg !240, !tbaa !98
  %22 = fdiv double %14, %21, !dbg !241
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !242
  br label %23

23:                                               ; preds = %19, %17, %13
  %24 = phi double [ %22, %19 ], [ 1.000000e+00, %13 ], [ 0.000000e+00, %17 ], !dbg !243
  %25 = call double @sqrt(double noundef %24) #8, !dbg !244
  store double %25, ptr %6, align 8, !dbg !245, !tbaa !98, !DIAssignID !246
  call void @llvm.dbg.assign(metadata double %25, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !246, metadata ptr %6, metadata !DIExpression()), !dbg !216
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !247
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !248
  store double %26, ptr %27, align 8, !dbg !249, !tbaa !103, !DIAssignID !250
  call void @llvm.dbg.assign(metadata double %26, metadata !209, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !250, metadata ptr %27, metadata !DIExpression()), !dbg !216
  br label %31, !dbg !251

28:                                               ; preds = %10
  %29 = call fastcc i32 @CLeta(double noundef %0, double noundef %2, ptr noundef nonnull %6), !dbg !252
  %30 = load double, ptr %6, align 8, !dbg !253, !tbaa !98
  br label %31, !dbg !254

31:                                               ; preds = %28, %23, %8
  %32 = phi double [ 0x7FF8000000000000, %8 ], [ %25, %23 ], [ %30, %28 ], !dbg !253
  store double %32, ptr %3, align 8, !dbg !255, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 1, metadata !208, metadata !DIExpression()), !dbg !216
  %33 = icmp slt i32 %1, 1, !dbg !257
  br i1 %33, label %51, label %34, !dbg !258

34:                                               ; preds = %31
  %35 = add nuw i32 %1, 1, !dbg !258
  %36 = zext i32 %35 to i64, !dbg !257
  br label %37, !dbg !258

37:                                               ; preds = %37, %34
  %38 = phi i64 [ 1, %34 ], [ %49, %37 ]
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !208, metadata !DIExpression()), !dbg !216
  %39 = trunc i64 %38 to i32, !dbg !259
  %40 = sitofp i32 %39 to double, !dbg !259
  %handler_result = call double @fAddHandlerDouble(double %40, double %0), !dbg !260
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !210, metadata !DIExpression()), !dbg !261
  %41 = getelementptr double, ptr %3, i64 %38, !dbg !260
  %42 = getelementptr double, ptr %41, i64 -1, !dbg !260
  %43 = load double, ptr %42, align 8, !dbg !260, !tbaa !256
  %44 = call double @hypot(double noundef %handler_result, double noundef %2) #8, !dbg !262
  %45 = fmul double %43, %44, !dbg !263
  %46 = fmul double %handler_result, 2.000000e+00, !dbg !264
  %handler_result1 = call double @fAddHandlerDouble(double %46, double 1.000000e+00), !dbg !265
  %47 = fmul double %handler_result, %handler_result1, !dbg !265
  %48 = fdiv double %45, %47, !dbg !266
  store double %48, ptr %41, align 8, !dbg !267, !tbaa !256
  %49 = add nuw nsw i64 %38, 1, !dbg !268
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !208, metadata !DIExpression()), !dbg !216
  %50 = icmp eq i64 %49, %36, !dbg !257
  br i1 %50, label %51, label %37, !dbg !258, !llvm.loop !269

51:                                               ; preds = %37, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !272
  ret i32 0, !dbg !273
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare !dbg !274 double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_FG_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9) local_unnamed_addr #0 !dbg !277 {
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !378
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !379
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !380
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !381
  call void @llvm.dbg.assign(metadata i1 undef, metadata !294, metadata !DIExpression(), metadata !381, metadata ptr %14, metadata !DIExpression()), !dbg !382
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !383
  call void @llvm.dbg.assign(metadata i1 undef, metadata !315, metadata !DIExpression(), metadata !383, metadata ptr %15, metadata !DIExpression()), !dbg !384
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !385
  call void @llvm.dbg.assign(metadata i1 undef, metadata !316, metadata !DIExpression(), metadata !385, metadata ptr %16, metadata !DIExpression()), !dbg !384
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !386
  call void @llvm.dbg.assign(metadata i1 undef, metadata !327, metadata !DIExpression(), metadata !386, metadata ptr %17, metadata !DIExpression()), !dbg !387
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !388
  call void @llvm.dbg.assign(metadata i1 undef, metadata !330, metadata !DIExpression(), metadata !388, metadata ptr %18, metadata !DIExpression()), !dbg !387
  %19 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !389
  call void @llvm.dbg.assign(metadata i1 undef, metadata !331, metadata !DIExpression(), metadata !389, metadata ptr %19, metadata !DIExpression()), !dbg !387
  %20 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !390
  call void @llvm.dbg.assign(metadata i1 undef, metadata !332, metadata !DIExpression(), metadata !390, metadata ptr %20, metadata !DIExpression()), !dbg !387
  %21 = alloca double, align 8, !DIAssignID !391
  call void @llvm.dbg.assign(metadata i1 undef, metadata !333, metadata !DIExpression(), metadata !391, metadata ptr %21, metadata !DIExpression()), !dbg !387
  %22 = alloca double, align 8, !DIAssignID !392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !334, metadata !DIExpression(), metadata !392, metadata ptr %22, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %0, metadata !283, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %1, metadata !284, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %2, metadata !285, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !286, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !287, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !288, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !289, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !290, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !291, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !292, metadata !DIExpression()), !dbg !393
  %23 = sitofp i32 %3 to double, !dbg !394
  %handler_result = call double @fSubHandlerDouble(double %2, double %23), !dbg !395
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !293, metadata !DIExpression()), !dbg !393
  %24 = fcmp olt double %1, 0.000000e+00, !dbg !395
  %25 = fcmp ole double %2, -5.000000e-01
  %26 = or i1 %24, %25, !dbg !396
  %27 = fcmp ole double %handler_result, -5.000000e-01
  %28 = or i1 %26, %27, !dbg !396
  br i1 %28, label %29, label %30, !dbg !396

29:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !397
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !402
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !dbg !404
  store double 0.000000e+00, ptr %8, align 8, !dbg !406, !tbaa !256
  store double 0.000000e+00, ptr %9, align 8, !dbg !407, !tbaa !256
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 912, i32 noundef 1) #8, !dbg !408
  br label %593, !dbg !408

30:                                               ; preds = %10
  %31 = fcmp oeq double %1, 0.000000e+00, !dbg !410
  br i1 %31, label %32, label %52, !dbg !411

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8, !dbg !412
  %33 = call fastcc i32 @CLeta(double noundef 0.000000e+00, double noundef %0, ptr noundef nonnull %14), !dbg !413
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !414
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !416
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !418
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !dbg !420
  store double 0.000000e+00, ptr %8, align 8, !dbg !422, !tbaa !256
  store double 0.000000e+00, ptr %9, align 8, !dbg !423, !tbaa !256
  %35 = fcmp oeq double %2, 0.000000e+00, !dbg !424
  br i1 %35, label %36, label %41, !dbg !426

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !416
  %38 = load double, ptr %14, align 8, !dbg !427, !tbaa !98
  store double %38, ptr %5, align 8, !dbg !427, !tbaa !98
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !427
  %40 = load double, ptr %39, align 8, !dbg !427, !tbaa !103
  store double %40, ptr %37, align 8, !dbg !427, !tbaa !103
  br label %41, !dbg !430

41:                                               ; preds = %36, %32
  %42 = fcmp oeq double %handler_result, 0.000000e+00, !dbg !431
  br i1 %42, label %43, label %51, !dbg !433

43:                                               ; preds = %41
  %44 = load double, ptr %14, align 8, !dbg !434, !tbaa !98
  %45 = fdiv double 1.000000e+00, %44, !dbg !434
  store double %45, ptr %7, align 8, !dbg !434, !tbaa !98
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !434
  %47 = load double, ptr %46, align 8, !dbg !434, !tbaa !103
  %48 = fdiv double %47, %44, !dbg !434
  %49 = fdiv double %48, %44, !dbg !434
  %50 = call double @llvm.fabs.f64(double %49), !dbg !434
  store double %50, ptr %34, align 8, !dbg !434, !tbaa !103
  br label %51, !dbg !437

51:                                               ; preds = %43, %41
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 929, i32 noundef 1) #8, !dbg !438
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !440
  br label %593

52:                                               ; preds = %30
  %53 = fcmp olt double %1, 1.200000e+00, !dbg !441
  %54 = fmul double %0, 0x401921FB54442D18
  %55 = fcmp olt double %54, 0x4083EC744754DD24
  %56 = and i1 %53, %55, !dbg !442
  br i1 %56, label %57, label %288, !dbg !442

57:                                               ; preds = %52
  %58 = fmul double %0, %1, !dbg !443
  %59 = tail call double @llvm.fabs.f64(double %58), !dbg !444
  %60 = fcmp olt double %59, 1.000000e+01, !dbg !445
  br i1 %60, label %61, label %288, !dbg !446

61:                                               ; preds = %57
  tail call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !298, metadata !DIExpression()), !dbg !384
  %handler_result1 = call double @fAddHandlerDouble(double %2, double 5.000000e-01), !dbg !447
  %62 = fptosi double %handler_result1 to i32, !dbg !447
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !301, metadata !DIExpression()), !dbg !384
  %63 = tail call i32 @llvm.smax.i32(i32 %62, i32 %3), !dbg !448
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !302, metadata !DIExpression()), !dbg !384
  %64 = sitofp i32 %62 to double, !dbg !449
  %handler_result2 = call double @fSubHandlerDouble(double %2, double %64), !dbg !450
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !303, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #8, !dbg !450
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #8, !dbg !451
  call void @llvm.dbg.value(metadata double %2, metadata !452, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double %0, metadata !458, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double %1, metadata !459, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata ptr undef, metadata !460, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata ptr undef, metadata !461, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata ptr undef, metadata !462, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double 1.000000e-30, metadata !463, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double 1.000000e+05, metadata !464, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !465, metadata !DIExpression()), !dbg !478
  %65 = fdiv double 1.000000e+00, %1, !dbg !480
  call void @llvm.dbg.value(metadata double %65, metadata !466, metadata !DIExpression()), !dbg !478
  %handler_result3 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !481
  %handler_result4 = call double @fAddHandlerDouble(double %handler_result3, double 1.000000e+05), !dbg !482
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !467, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !468, metadata !DIExpression()), !dbg !478
  %66 = fdiv double %0, %handler_result3, !dbg !482
  %67 = fmul double %65, %handler_result3, !dbg !483
  %handler_result5 = call double @fAddHandlerDouble(double %66, double %67), !dbg !484
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !469, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !311, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 0, metadata !322, metadata !DIExpression()), !dbg !384
  %68 = tail call double @llvm.fabs.f64(double %handler_result5), !dbg !484
  %69 = fcmp olt double %68, 1.000000e-30, !dbg !486
  %70 = select i1 %69, double 1.000000e-30, double %handler_result5, !dbg !487
  call void @llvm.dbg.value(metadata double %70, metadata !469, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !470, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double %70, metadata !471, metadata !DIExpression()), !dbg !478
  br label %71, !dbg !488

71:                                               ; preds = %94, %61
  %72 = phi i32 [ 0, %61 ], [ %95, %94 ], !dbg !478
  %73 = phi double [ %70, %61 ], [ %85, %94 ], !dbg !478
  %74 = phi double [ 0.000000e+00, %61 ], [ %89, %94 ], !dbg !478
  %75 = phi double [ %70, %61 ], [ %91, %94 ], !dbg !478
  %76 = phi double [ %handler_result3, %61 ], [ %handler_result6, %94 ], !dbg !478
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !322, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata double %76, metadata !468, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double %75, metadata !469, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double %74, metadata !470, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double %73, metadata !471, metadata !DIExpression()), !dbg !478
  %handler_result6 = call double @fAddHandlerDouble(double %76, double 1.000000e+00), !dbg !489
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !473, metadata !DIExpression()), !dbg !490
  %77 = fdiv double %0, %76, !dbg !489
  call void @llvm.dbg.value(metadata double %77, metadata !475, metadata !DIExpression()), !dbg !490
  %78 = fmul double %77, %77, !dbg !491
  %handler_result7 = call double @fAddHandlerDouble(double %78, double 1.000000e+00), !dbg !492
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !476, metadata !DIExpression()), !dbg !490
  %handler_result8 = call double @fAddHandlerDouble(double %76, double %handler_result6), !dbg !493
  %79 = fdiv double %77, %handler_result6, !dbg !493
  %handler_result9 = call double @fAddHandlerDouble(double %65, double %79), !dbg !494
  %80 = fmul double %handler_result8, %handler_result9, !dbg !494
  call void @llvm.dbg.value(metadata double %80, metadata !477, metadata !DIExpression()), !dbg !490
  %81 = fmul double %74, %handler_result7, !dbg !495
  %handler_result10 = call double @fSubHandlerDouble(double %80, double %81), !dbg !496
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !470, metadata !DIExpression()), !dbg !478
  %82 = fdiv double %handler_result7, %73, !dbg !496
  %handler_result11 = call double @fSubHandlerDouble(double %80, double %82), !dbg !497
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !471, metadata !DIExpression()), !dbg !478
  %83 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !497
  %84 = fcmp olt double %83, 1.000000e-30, !dbg !499
  %85 = select i1 %84, double 1.000000e-30, double %handler_result11, !dbg !500
  call void @llvm.dbg.value(metadata double %85, metadata !471, metadata !DIExpression()), !dbg !478
  %86 = tail call double @llvm.fabs.f64(double %handler_result10), !dbg !501
  %87 = fcmp olt double %86, 1.000000e-30, !dbg !503
  %88 = fdiv double 1.000000e+00, %handler_result10, !dbg !504
  call void @llvm.dbg.value(metadata double poison, metadata !470, metadata !DIExpression()), !dbg !478
  %89 = select i1 %87, double 0x46293E5939A08CE9, double %88, !dbg !504
  call void @llvm.dbg.value(metadata double %89, metadata !470, metadata !DIExpression()), !dbg !478
  %90 = fmul double %89, %85, !dbg !505
  call void @llvm.dbg.value(metadata double %90, metadata !472, metadata !DIExpression()), !dbg !478
  %91 = fmul double %75, %90, !dbg !506
  call void @llvm.dbg.value(metadata double %91, metadata !469, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !468, metadata !DIExpression()), !dbg !478
  %92 = fcmp ule double %handler_result6, %handler_result4, !dbg !507
  br i1 %92, label %94, label %93, !dbg !509

93:                                               ; preds = %71
  tail call void @llvm.dbg.value(metadata double %91, metadata !310, metadata !DIExpression()), !dbg !384
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 639, i32 noundef 10) #8, !dbg !510
  br label %98

94:                                               ; preds = %71
  %95 = add nuw nsw i32 %72, 1, !dbg !513
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !322, metadata !DIExpression()), !dbg !384
  %handler_result12 = call double @fAddHandlerDouble(double %90, double -1.000000e+00), !dbg !514
  %96 = tail call double @llvm.fabs.f64(double %handler_result12), !dbg !514
  %97 = fcmp ogt double %96, 0x3CC0000000000000, !dbg !515
  br i1 %97, label %71, label %98, !dbg !516, !llvm.loop !517

98:                                               ; preds = %94, %93
  %99 = phi i32 [ %72, %93 ], [ %95, %94 ], !dbg !478
  %100 = phi i32 [ 10, %93 ], [ 0, %94 ], !dbg !478
  tail call void @llvm.dbg.value(metadata double %91, metadata !310, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !322, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 %100, metadata !323, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !304, metadata !DIExpression()), !dbg !384
  %101 = fmul double %91, 0x3E50000000000000, !dbg !519
  tail call void @llvm.dbg.value(metadata double %101, metadata !305, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !520, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %63, metadata !525, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %0, metadata !526, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %1, metadata !527, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !528, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %101, metadata !529, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata ptr undef, metadata !530, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata ptr undef, metadata !531, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %65, metadata !532, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double poison, metadata !535, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double poison, metadata !536, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %63, metadata !537, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !533, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %101, metadata !534, metadata !DIExpression()), !dbg !545
  %102 = icmp sgt i32 %63, 0
  br i1 %102, label %103, label %119, !dbg !549

103:                                              ; preds = %98
  %104 = sitofp i32 %63 to double, !dbg !550
  %handler_result13 = call double @fAddHandlerDouble(double %handler_result2, double %104), !dbg !551
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !535, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !536, metadata !DIExpression()), !dbg !545
  br label %105, !dbg !551

105:                                              ; preds = %105, %103
  %106 = phi double [ %115, %105 ], [ 0x3E50000000000000, %103 ]
  %107 = phi double [ %handler_result16, %105 ], [ %101, %103 ]
  %108 = phi double [ %handler_result17, %105 ], [ %handler_result13, %103 ]
  %109 = phi i32 [ %110, %105 ], [ %63, %103 ]
  call void @llvm.dbg.value(metadata double %106, metadata !533, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %107, metadata !534, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %108, metadata !536, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %109, metadata !537, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  %110 = add nsw i32 %109, -1, !dbg !552
  call void @llvm.dbg.value(metadata i32 %110, metadata !537, metadata !DIExpression()), !dbg !545
  %111 = fdiv double %0, %108, !dbg !553
  call void @llvm.dbg.value(metadata double %111, metadata !538, metadata !DIExpression()), !dbg !554
  %112 = tail call double @hypot(double noundef 1.000000e+00, double noundef %111) #8, !dbg !555
  call void @llvm.dbg.value(metadata double %112, metadata !542, metadata !DIExpression()), !dbg !554
  %113 = fmul double %65, %108, !dbg !556
  %handler_result14 = call double @fAddHandlerDouble(double %111, double %113), !dbg !557
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !543, metadata !DIExpression()), !dbg !554
  %114 = fmul double %106, %handler_result14, !dbg !557
  %handler_result15 = call double @fAddHandlerDouble(double %107, double %114), !dbg !558
  %115 = fdiv double %handler_result15, %112, !dbg !558
  call void @llvm.dbg.value(metadata double %115, metadata !544, metadata !DIExpression()), !dbg !554
  %116 = fmul double %handler_result14, %115, !dbg !559
  %117 = fmul double %106, %112, !dbg !560
  %handler_result16 = call double @fSubHandlerDouble(double %116, double %117), !dbg !561
  call void @llvm.dbg.value(metadata double %handler_result16, metadata !534, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata double %115, metadata !533, metadata !DIExpression()), !dbg !545
  %handler_result17 = call double @fAddHandlerDouble(double %108, double -1.000000e+00), !dbg !562
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !536, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.value(metadata i32 %110, metadata !537, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !545
  %118 = icmp ugt i32 %109, 1, !dbg !562
  br i1 %118, label %105, label %119, !dbg !551, !llvm.loop !563

119:                                              ; preds = %105, %98
  %120 = phi double [ %101, %98 ], [ %handler_result16, %105 ], !dbg !565
  %121 = phi double [ 0x3E50000000000000, %98 ], [ %115, %105 ], !dbg !565
  tail call void @llvm.dbg.value(metadata double %121, metadata !312, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %120, metadata !313, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 0, metadata !325, metadata !DIExpression()), !dbg !384
  %122 = fcmp oeq double %handler_result2, -5.000000e-01, !dbg !566
  br i1 %122, label %123, label %199, !dbg !568

123:                                              ; preds = %119
  call void @llvm.dbg.assign(metadata i1 undef, metadata !569, metadata !DIExpression(), metadata !378, metadata ptr %11, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !592, metadata !DIExpression(), metadata !379, metadata ptr %12, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !593, metadata !DIExpression(), metadata !380, metadata ptr %13, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %0, metadata !574, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %1, metadata !575, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata ptr %15, metadata !576, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata ptr %16, metadata !577, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i32 800, metadata !578, metadata !DIExpression()), !dbg !597
  %124 = tail call double @sqrt(double noundef %1) #8, !dbg !600
  call void @llvm.dbg.value(metadata double %124, metadata !579, metadata !DIExpression()), !dbg !597
  %125 = fmul double %1, %1, !dbg !601
  call void @llvm.dbg.value(metadata double %125, metadata !580, metadata !DIExpression()), !dbg !597
  %126 = fmul double %0, 2.000000e+00, !dbg !602
  %127 = fmul double %126, %1, !dbg !603
  call void @llvm.dbg.value(metadata double %127, metadata !581, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !604
  %128 = call fastcc i32 @CLeta(double noundef -5.000000e-01, double noundef %0, ptr noundef nonnull %11), !dbg !605
  call void @llvm.dbg.value(metadata i32 %128, metadata !582, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !583, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %127, metadata !584, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !606
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8, !dbg !607
  call void @llvm.dbg.value(metadata i32 2, metadata !594, metadata !DIExpression()), !dbg !597
  %129 = call i32 @gsl_sf_psi_1piy_e(double noundef %0, ptr noundef nonnull %12) #8, !dbg !608
  %130 = call i32 @gsl_sf_psi_1piy_e(double noundef %126, ptr noundef nonnull %13) #8, !dbg !609
  %131 = load double, ptr %12, align 8, !dbg !610, !tbaa !98
  %handler_result18 = call double @fSubHandlerDouble(double 0x3FDD85ADF3CA6486, double %131), !dbg !611
  %132 = load double, ptr %13, align 8, !dbg !611, !tbaa !98
  %133 = fmul double %132, 2.000000e+00, !dbg !612
  %handler_result19 = call double @fAddHandlerDouble(double %handler_result18, double %133), !dbg !613
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !586, metadata !DIExpression()), !dbg !597
  %handler_result20 = call double @fAddHandlerDouble(double %handler_result19, double -2.000000e+00), !dbg !614
  %134 = fmul double %127, %handler_result20, !dbg !614
  call void @llvm.dbg.value(metadata double %134, metadata !587, metadata !DIExpression()), !dbg !597
  %handler_result21 = call double @fAddHandlerDouble(double %127, double 1.000000e+00), !dbg !615
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !589, metadata !DIExpression()), !dbg !597
  %handler_result22 = call double @fAddHandlerDouble(double %handler_result19, double %134), !dbg !616
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !590, metadata !DIExpression()), !dbg !597
  br label %135, !dbg !616

135:                                              ; preds = %163, %123
  %136 = phi i32 [ 2, %123 ], [ %164, %163 ]
  %137 = phi double [ 1.000000e+00, %123 ], [ %140, %163 ]
  %138 = phi double [ %handler_result22, %123 ], [ %handler_result27, %163 ]
  %139 = phi double [ %handler_result21, %123 ], [ %handler_result26, %163 ]
  %140 = phi double [ %127, %123 ], [ %147, %163 ]
  %141 = phi double [ %134, %123 ], [ %153, %163 ]
  %142 = phi double [ %handler_result19, %123 ], [ %141, %163 ]
  call void @llvm.dbg.value(metadata i32 %136, metadata !594, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %137, metadata !583, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %138, metadata !590, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %139, metadata !589, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %140, metadata !584, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %141, metadata !587, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %142, metadata !586, metadata !DIExpression()), !dbg !597
  %143 = mul nuw nsw i32 %136, %136, !dbg !617
  %144 = sitofp i32 %143 to double, !dbg !618
  call void @llvm.dbg.value(metadata double %144, metadata !595, metadata !DIExpression()), !dbg !619
  %145 = fmul double %127, %140, !dbg !620
  %146 = fmul double %125, %137, !dbg !621
  %handler_result23 = call double @fSubHandlerDouble(double %145, double %146), !dbg !622
  %147 = fdiv double %handler_result23, %144, !dbg !622
  call void @llvm.dbg.value(metadata double %147, metadata !585, metadata !DIExpression()), !dbg !597
  %148 = fmul double %127, %141, !dbg !623
  %149 = fmul double %125, %142, !dbg !624
  %handler_result24 = call double @fSubHandlerDouble(double %148, double %149), !dbg !625
  %150 = sitofp i32 %136 to double, !dbg !625
  %151 = fmul double %150, 2.000000e+00, !dbg !626
  %152 = fmul double %151, %147, !dbg !627
  %handler_result25 = call double @fSubHandlerDouble(double %handler_result24, double %152), !dbg !628
  %153 = fdiv double %handler_result25, %144, !dbg !628
  call void @llvm.dbg.value(metadata double %153, metadata !588, metadata !DIExpression()), !dbg !597
  %handler_result26 = call double @fAddHandlerDouble(double %139, double %147), !dbg !629
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !589, metadata !DIExpression()), !dbg !597
  %handler_result27 = call double @fAddHandlerDouble(double %138, double %153), !dbg !630
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !590, metadata !DIExpression()), !dbg !597
  %154 = fcmp une double %handler_result26, 0.000000e+00, !dbg !630
  %155 = fcmp une double %handler_result27, 0.000000e+00
  %156 = select i1 %154, i1 %155, i1 false, !dbg !632
  br i1 %156, label %157, label %163, !dbg !632

157:                                              ; preds = %135
  %158 = fdiv double %147, %handler_result26, !dbg !633
  %159 = call double @llvm.fabs.f64(double %158), !dbg !634
  %160 = fdiv double %153, %handler_result27, !dbg !635
  %161 = call double @llvm.fabs.f64(double %160), !dbg !636
  %handler_result28 = call double @fAddHandlerDouble(double %159, double %161), !dbg !637
  %162 = fcmp olt double %handler_result28, 0x3CE4000000000000, !dbg !637
  br i1 %162, label %166, label %163, !dbg !638

163:                                              ; preds = %157, %135
  call void @llvm.dbg.value(metadata double %140, metadata !583, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %147, metadata !584, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %141, metadata !586, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %153, metadata !587, metadata !DIExpression()), !dbg !597
  %164 = add nuw nsw i32 %136, 1, !dbg !639
  call void @llvm.dbg.value(metadata i32 %164, metadata !594, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !590, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !589, metadata !DIExpression()), !dbg !597
  %165 = icmp eq i32 %164, 800, !dbg !640
  br i1 %165, label %166, label %135, !dbg !616

166:                                              ; preds = %163, %157
  %167 = phi i32 [ %136, %157 ], [ 800, %163 ], !dbg !641
  call void @llvm.dbg.value(metadata i32 %167, metadata !594, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %handler_result27, metadata !590, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !589, metadata !DIExpression()), !dbg !597
  %168 = load double, ptr %11, align 8, !dbg !642, !tbaa !98
  %169 = fmul double %124, %168, !dbg !643
  %170 = fmul double %handler_result26, %169, !dbg !644
  store double %170, ptr %15, align 8, !dbg !645, !tbaa !98, !DIAssignID !646
  call void @llvm.dbg.assign(metadata double %170, metadata !315, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !646, metadata ptr %15, metadata !DIExpression()), !dbg !384
  %171 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !647
  %172 = load double, ptr %171, align 8, !dbg !647, !tbaa !103
  %173 = fmul double %124, %handler_result26, !dbg !648
  %174 = call double @llvm.fabs.f64(double %173), !dbg !649
  %175 = fmul double %174, %172, !dbg !650
  %176 = call double @llvm.fabs.f64(double %170), !dbg !651
  %177 = fmul double %176, 0x3CC0000000000000, !dbg !652
  %handler_result29 = call double @fAddHandlerDouble(double %175, double %177), !dbg !653
  %178 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !653
  store double %handler_result29, ptr %178, align 8, !dbg !654, !tbaa !103, !DIAssignID !655
  call void @llvm.dbg.assign(metadata double %handler_result29, metadata !315, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !655, metadata ptr %178, metadata !DIExpression()), !dbg !384
  %handler_result119 = call double @callHandler(i32 12, double %1, double %1), !dbg !656
  %179 = fmul double %handler_result26, %handler_result119, !dbg !656
  call void @llvm.dbg.value(metadata double %179, metadata !591, metadata !DIExpression()), !dbg !597
  %180 = fneg double %124, !dbg !657
  %handler_result30 = call double @fAddHandlerDouble(double %handler_result27, double %179), !dbg !658
  %181 = fmul double %handler_result30, %180, !dbg !658
  %182 = load double, ptr %11, align 8, !dbg !659, !tbaa !98
  %183 = fdiv double %181, %182, !dbg !660
  store double %183, ptr %16, align 8, !dbg !661, !tbaa !98, !DIAssignID !662
  call void @llvm.dbg.assign(metadata double %183, metadata !316, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !662, metadata ptr %16, metadata !DIExpression()), !dbg !384
  %184 = call double @llvm.fabs.f64(double %124), !dbg !663
  %185 = call double @llvm.fabs.f64(double %179), !dbg !664
  %186 = call double @llvm.fabs.f64(double %handler_result27), !dbg !665
  %handler_result31 = call double @fAddHandlerDouble(double %186, double %185), !dbg !666
  %187 = fmul double %184, %handler_result31, !dbg !666
  %188 = call double @llvm.fabs.f64(double %182), !dbg !667
  %189 = fdiv double %187, %188, !dbg !668
  %190 = load double, ptr %171, align 8, !dbg !669, !tbaa !103
  %191 = fdiv double %190, %182, !dbg !670
  %192 = call double @llvm.fabs.f64(double %191), !dbg !671
  %193 = fmul double %189, %192, !dbg !672
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !673
  store double %193, ptr %194, align 8, !dbg !674, !tbaa !103, !DIAssignID !675
  call void @llvm.dbg.assign(metadata double %193, metadata !316, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !675, metadata ptr %194, metadata !DIExpression()), !dbg !384
  %195 = icmp eq i32 %167, 800, !dbg !676
  br i1 %195, label %196, label %197, !dbg !678

196:                                              ; preds = %166
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 503, i32 noundef 11) #8, !dbg !679
  br label %197, !dbg !679

197:                                              ; preds = %196, %166
  %198 = phi i32 [ 11, %196 ], [ %128, %166 ], !dbg !681
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !682
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !682
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !682
  tail call void @llvm.dbg.value(metadata i32 %198, metadata !324, metadata !DIExpression()), !dbg !384
  br label %216, !dbg !683

199:                                              ; preds = %119
  %200 = fcmp oeq double %handler_result2, 0.000000e+00, !dbg !684
  br i1 %200, label %201, label %203, !dbg !686

201:                                              ; preds = %199
  %202 = call fastcc i32 @coulomb_FG0_series(double noundef %0, double noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %16), !dbg !687
  tail call void @llvm.dbg.value(metadata i32 %202, metadata !324, metadata !DIExpression()), !dbg !384
  br label %216, !dbg !689

203:                                              ; preds = %199
  %204 = fcmp oeq double %handler_result2, 5.000000e-01, !dbg !690
  br i1 %204, label %205, label %214, !dbg !692

205:                                              ; preds = %203
  store double 0x3E50000000000000, ptr %4, align 8, !dbg !693, !tbaa !98
  %206 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !695
  store double 0x3B20000000000000, ptr %206, align 8, !dbg !696, !tbaa !103
  store double %101, ptr %5, align 8, !dbg !697, !tbaa !98
  %207 = tail call double @llvm.fabs.f64(double %101), !dbg !698
  %208 = fmul double %207, 0x3CC0000000000000, !dbg !699
  %209 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !700
  store double %208, ptr %209, align 8, !dbg !701, !tbaa !103
  %210 = tail call double @llvm.fabs.f64(double undef), !dbg !702
  %211 = fmul double %210, 0x3CC0000000000000, !dbg !703
  %212 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !704
  store double %211, ptr %212, align 8, !dbg !705, !tbaa !103
  %213 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !706
  store double %211, ptr %213, align 8, !dbg !707, !tbaa !103
  store double 0.000000e+00, ptr %8, align 8, !dbg !708, !tbaa !256
  store double 0.000000e+00, ptr %9, align 8, !dbg !709, !tbaa !256
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1000, i32 noundef 7) #8, !dbg !710
  br label %286, !dbg !710

214:                                              ; preds = %203
  %215 = call fastcc i32 @coulomb_FG_series(double noundef %handler_result2, double noundef %0, double noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %16), !dbg !712
  tail call void @llvm.dbg.value(metadata i32 %215, metadata !324, metadata !DIExpression()), !dbg !384
  br label %216

216:                                              ; preds = %214, %201, %197
  %217 = phi i32 [ %198, %197 ], [ %202, %201 ], [ %215, %214 ], !dbg !714
  tail call void @llvm.dbg.value(metadata i32 %217, metadata !324, metadata !DIExpression()), !dbg !384
  %218 = fdiv double %120, %121, !dbg !715
  tail call void @llvm.dbg.value(metadata double %218, metadata !314, metadata !DIExpression()), !dbg !384
  %219 = load double, ptr %16, align 8, !dbg !716, !tbaa !98
  %220 = fmul double %218, %219, !dbg !717
  %221 = load double, ptr %15, align 8, !dbg !718, !tbaa !98
  %222 = fdiv double 1.000000e+00, %221, !dbg !719
  %handler_result32 = call double @fSubHandlerDouble(double %220, double %222), !dbg !720
  tail call void @llvm.dbg.value(metadata double %handler_result32, metadata !317, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !384
  %223 = call double @llvm.fabs.f64(double %218), !dbg !720
  %224 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !721
  %225 = load double, ptr %224, align 8, !dbg !721, !tbaa !103
  %226 = fmul double %223, %225, !dbg !722
  tail call void @llvm.dbg.value(metadata double %226, metadata !317, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !384
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !723
  %228 = load double, ptr %227, align 8, !dbg !723, !tbaa !103
  %229 = fdiv double %228, %221, !dbg !724
  %230 = call double @llvm.fabs.f64(double %229), !dbg !725
  %231 = fmul double %222, %229, !dbg !726
  %232 = call double @llvm.fabs.f64(double %231), !dbg !726
  %handler_result33 = call double @fAddHandlerDouble(double %226, double %232), !dbg !727
  tail call void @llvm.dbg.value(metadata double %handler_result33, metadata !317, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !384
  %233 = fdiv double %221, %121, !dbg !727
  tail call void @llvm.dbg.value(metadata double %233, metadata !318, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %230, metadata !320, metadata !DIExpression()), !dbg !384
  %234 = add i32 %63, 1, !dbg !728
  %235 = add i32 %234, %99, !dbg !729
  %236 = sitofp i32 %235 to double, !dbg !730
  %237 = fmul double %236, 0x3CC0000000000000, !dbg !731
  tail call void @llvm.dbg.value(metadata double %237, metadata !321, metadata !DIExpression()), !dbg !384
  %238 = fmul double %233, 0x3E50000000000000, !dbg !732
  tail call void @llvm.dbg.value(metadata double %238, metadata !304, metadata !DIExpression()), !dbg !384
  %239 = call double @llvm.fabs.f64(double %238), !dbg !733
  %handler_result34 = call double @fAddHandlerDouble(double %237, double %230), !dbg !734
  %240 = fmul double %239, %handler_result34, !dbg !734
  tail call void @llvm.dbg.value(metadata double %240, metadata !308, metadata !DIExpression()), !dbg !384
  %241 = fmul double %101, %233, !dbg !735
  tail call void @llvm.dbg.value(metadata double %241, metadata !305, metadata !DIExpression()), !dbg !384
  %242 = call double @llvm.fabs.f64(double %241), !dbg !736
  %243 = fmul double %242, %handler_result34, !dbg !737
  tail call void @llvm.dbg.value(metadata double %243, metadata !309, metadata !DIExpression()), !dbg !384
  %244 = sub nsw i32 %62, %3, !dbg !738
  %245 = call i32 @llvm.smax.i32(i32 %244, i32 0), !dbg !738
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !739, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 %245, metadata !744, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double %0, metadata !745, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double %1, metadata !746, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double %219, metadata !747, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !748, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata ptr undef, metadata !749, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata ptr undef, metadata !750, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double %65, metadata !751, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double %219, metadata !752, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !753, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double poison, metadata !754, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 1, metadata !755, metadata !DIExpression()), !dbg !763
  %246 = icmp slt i32 %244, 1, !dbg !765
  br i1 %246, label %261, label %247, !dbg !766

247:                                              ; preds = %247, %216
  %248 = phi double [ %256, %247 ], [ %219, %216 ]
  %249 = phi double [ %handler_result38, %247 ], [ %handler_result32, %216 ]
  %250 = phi double [ %handler_result35, %247 ], [ %handler_result2, %216 ]
  %251 = phi i32 [ %259, %247 ], [ 1, %216 ]
  call void @llvm.dbg.value(metadata double %248, metadata !752, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double %249, metadata !753, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 %251, metadata !755, metadata !DIExpression()), !dbg !763
  %handler_result35 = call double @fAddHandlerDouble(double %250, double 1.000000e+00), !dbg !767
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !754, metadata !DIExpression()), !dbg !763
  %252 = fdiv double %0, %handler_result35, !dbg !767
  call void @llvm.dbg.value(metadata double %252, metadata !756, metadata !DIExpression()), !dbg !768
  %253 = call double @hypot(double noundef 1.000000e+00, double noundef %252) #8, !dbg !769
  call void @llvm.dbg.value(metadata double %253, metadata !760, metadata !DIExpression()), !dbg !768
  %254 = fmul double %65, %handler_result35, !dbg !770
  %handler_result36 = call double @fAddHandlerDouble(double %252, double %254), !dbg !771
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !761, metadata !DIExpression()), !dbg !768
  %255 = fmul double %248, %handler_result36, !dbg !771
  %handler_result37 = call double @fSubHandlerDouble(double %255, double %249), !dbg !772
  %256 = fdiv double %handler_result37, %253, !dbg !772
  call void @llvm.dbg.value(metadata double %256, metadata !762, metadata !DIExpression()), !dbg !768
  %257 = fmul double %248, %253, !dbg !773
  %258 = fmul double %handler_result36, %256, !dbg !774
  %handler_result38 = call double @fSubHandlerDouble(double %257, double %258), !dbg !775
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !753, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double %256, metadata !752, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata double poison, metadata !754, metadata !DIExpression()), !dbg !763
  %259 = add nuw i32 %251, 1, !dbg !775
  call void @llvm.dbg.value(metadata i32 %259, metadata !755, metadata !DIExpression()), !dbg !763
  %260 = icmp eq i32 %251, %245, !dbg !765
  br i1 %260, label %261, label %247, !dbg !766, !llvm.loop !776

261:                                              ; preds = %247, %216
  %262 = phi double [ %handler_result32, %216 ], [ %handler_result38, %247 ], !dbg !763
  %263 = phi double [ %219, %216 ], [ %256, %247 ], !dbg !763
  tail call void @llvm.dbg.value(metadata double %263, metadata !306, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata double %262, metadata !307, metadata !DIExpression()), !dbg !384
  tail call void @llvm.dbg.value(metadata i32 0, metadata !326, metadata !DIExpression()), !dbg !384
  store double %238, ptr %4, align 8, !dbg !778, !tbaa !98
  %264 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !779
  %265 = fmul double %239, 0x3CC0000000000000, !dbg !780
  %handler_result39 = call double @fAddHandlerDouble(double %265, double %240), !dbg !781
  store double %handler_result39, ptr %264, align 8, !dbg !781, !tbaa !103
  store double %241, ptr %5, align 8, !dbg !782, !tbaa !98
  %266 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !783
  %267 = fmul double %242, 0x3CC0000000000000, !dbg !784
  %handler_result40 = call double @fAddHandlerDouble(double %267, double %243), !dbg !785
  store double %handler_result40, ptr %266, align 8, !dbg !785, !tbaa !103
  %268 = fdiv double %225, %219, !dbg !786
  %269 = call double @llvm.fabs.f64(double %268), !dbg !787
  %270 = fdiv double %handler_result33, %handler_result32, !dbg !788
  %271 = call double @llvm.fabs.f64(double %270), !dbg !789
  %handler_result41 = call double @fAddHandlerDouble(double %269, double %271), !dbg !790
  tail call void @llvm.dbg.value(metadata double %handler_result41, metadata !319, metadata !DIExpression()), !dbg !384
  store double %263, ptr %6, align 8, !dbg !790, !tbaa !98
  %272 = call double @llvm.fabs.f64(double %263), !dbg !791
  %273 = fmul double %handler_result41, %272, !dbg !792
  %274 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !793
  %275 = add nsw i32 %99, 1, !dbg !794
  %276 = sitofp i32 %275 to double, !dbg !795
  %277 = fmul double %276, 2.000000e+00, !dbg !796
  %278 = fmul double %277, 0x3CB0000000000000, !dbg !797
  %279 = fmul double %278, %272, !dbg !798
  %handler_result42 = call double @fAddHandlerDouble(double %273, double %279), !dbg !799
  store double %handler_result42, ptr %274, align 8, !dbg !799, !tbaa !103
  store double %262, ptr %7, align 8, !dbg !800, !tbaa !98
  %280 = call double @llvm.fabs.f64(double %262), !dbg !801
  %281 = fmul double %handler_result41, %280, !dbg !802
  %282 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !803
  %283 = fmul double %278, %280, !dbg !804
  %handler_result43 = call double @fAddHandlerDouble(double %281, double %283), !dbg !805
  store double %handler_result43, ptr %282, align 8, !dbg !805, !tbaa !103
  store double 0.000000e+00, ptr %8, align 8, !dbg !806, !tbaa !256
  store double 0.000000e+00, ptr %9, align 8, !dbg !807, !tbaa !256
  %284 = icmp eq i32 %217, 0, !dbg !808
  %285 = select i1 %284, i32 %100, i32 %217, !dbg !808
  br label %286, !dbg !808

286:                                              ; preds = %261, %205
  %287 = phi i32 [ 7, %205 ], [ %285, %261 ], !dbg !384
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #8, !dbg !809
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #8, !dbg !809
  br label %593

288:                                              ; preds = %57, %52
  %289 = fmul double %0, 2.000000e+00, !dbg !810
  %290 = fcmp ogt double %289, %1, !dbg !811
  br i1 %290, label %291, label %401, !dbg !812

291:                                              ; preds = %288
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #8, !dbg !813
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #8, !dbg !813
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #8, !dbg !814
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #8, !dbg !814
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #8, !dbg !815
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #8, !dbg !815
  %292 = call fastcc i32 @coulomb_jwkb(double noundef %2, double noundef %0, double noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %21), !dbg !816, !range !817
  tail call void @llvm.dbg.value(metadata i32 %292, metadata !335, metadata !DIExpression()), !dbg !387
  %293 = icmp eq i32 %3, 0, !dbg !818
  br i1 %293, label %294, label %296, !dbg !820

294:                                              ; preds = %291
  tail call void @llvm.dbg.value(metadata i32 %292, metadata !336, metadata !DIExpression()), !dbg !387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !dbg !821, !tbaa.struct !823, !DIAssignID !824
  call void @llvm.dbg.assign(metadata i1 undef, metadata !331, metadata !DIExpression(), metadata !824, metadata ptr %19, metadata !DIExpression()), !dbg !387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !dbg !825, !tbaa.struct !823, !DIAssignID !826
  call void @llvm.dbg.assign(metadata i1 undef, metadata !332, metadata !DIExpression(), metadata !826, metadata ptr %20, metadata !DIExpression()), !dbg !387
  %295 = load double, ptr %21, align 8, !dbg !827, !tbaa !256
  store double %295, ptr %22, align 8, !dbg !828, !tbaa !256, !DIAssignID !829
  call void @llvm.dbg.assign(metadata double %295, metadata !334, metadata !DIExpression(), metadata !829, metadata ptr %22, metadata !DIExpression()), !dbg !387
  br label %298, !dbg !830

296:                                              ; preds = %291
  %297 = call fastcc i32 @coulomb_jwkb(double noundef %handler_result, double noundef %0, double noundef %1, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %22), !dbg !831, !range !817
  tail call void @llvm.dbg.value(metadata i32 %297, metadata !336, metadata !DIExpression()), !dbg !387
  br label %298

298:                                              ; preds = %296, %294
  %299 = phi i32 [ %292, %294 ], [ %297, %296 ], !dbg !833
  tail call void @llvm.dbg.value(metadata i32 %299, metadata !336, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %2, metadata !452, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %0, metadata !458, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %1, metadata !459, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr undef, metadata !460, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr undef, metadata !461, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata ptr undef, metadata !462, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 1.000000e-30, metadata !463, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 1.000000e+05, metadata !464, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !465, metadata !DIExpression()), !dbg !834
  %300 = fdiv double 1.000000e+00, %1, !dbg !836
  call void @llvm.dbg.value(metadata double %300, metadata !466, metadata !DIExpression()), !dbg !834
  %handler_result44 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !837
  %handler_result45 = call double @fAddHandlerDouble(double %handler_result44, double 1.000000e+05), !dbg !838
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !467, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !468, metadata !DIExpression()), !dbg !834
  %301 = fdiv double %0, %handler_result44, !dbg !838
  %302 = fmul double %300, %handler_result44, !dbg !839
  %handler_result46 = call double @fAddHandlerDouble(double %301, double %302), !dbg !840
  call void @llvm.dbg.value(metadata double %handler_result46, metadata !469, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !342, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata i32 0, metadata !339, metadata !DIExpression()), !dbg !387
  %303 = tail call double @llvm.fabs.f64(double %handler_result46), !dbg !840
  %304 = fcmp olt double %303, 1.000000e-30, !dbg !841
  %305 = select i1 %304, double 1.000000e-30, double %handler_result46, !dbg !842
  call void @llvm.dbg.value(metadata double %305, metadata !469, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !470, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %305, metadata !471, metadata !DIExpression()), !dbg !834
  br label %306, !dbg !843

306:                                              ; preds = %328, %298
  %307 = phi double [ %305, %298 ], [ %319, %328 ], !dbg !834
  %308 = phi double [ 0.000000e+00, %298 ], [ %323, %328 ], !dbg !834
  %309 = phi double [ %305, %298 ], [ %325, %328 ], !dbg !834
  %310 = phi double [ %handler_result44, %298 ], [ %handler_result47, %328 ], !dbg !834
  tail call void @llvm.dbg.value(metadata double poison, metadata !342, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata double %310, metadata !468, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %309, metadata !469, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %308, metadata !470, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %307, metadata !471, metadata !DIExpression()), !dbg !834
  %handler_result47 = call double @fAddHandlerDouble(double %310, double 1.000000e+00), !dbg !844
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !473, metadata !DIExpression()), !dbg !845
  %311 = fdiv double %0, %310, !dbg !844
  call void @llvm.dbg.value(metadata double %311, metadata !475, metadata !DIExpression()), !dbg !845
  %312 = fmul double %311, %311, !dbg !846
  %handler_result48 = call double @fAddHandlerDouble(double %312, double 1.000000e+00), !dbg !847
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !476, metadata !DIExpression()), !dbg !845
  %handler_result49 = call double @fAddHandlerDouble(double %310, double %handler_result47), !dbg !848
  %313 = fdiv double %311, %handler_result47, !dbg !848
  %handler_result50 = call double @fAddHandlerDouble(double %300, double %313), !dbg !849
  %314 = fmul double %handler_result49, %handler_result50, !dbg !849
  call void @llvm.dbg.value(metadata double %314, metadata !477, metadata !DIExpression()), !dbg !845
  %315 = fmul double %308, %handler_result48, !dbg !850
  %handler_result51 = call double @fSubHandlerDouble(double %314, double %315), !dbg !851
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !470, metadata !DIExpression()), !dbg !834
  %316 = fdiv double %handler_result48, %307, !dbg !851
  %handler_result52 = call double @fSubHandlerDouble(double %314, double %316), !dbg !852
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !471, metadata !DIExpression()), !dbg !834
  %317 = tail call double @llvm.fabs.f64(double %handler_result52), !dbg !852
  %318 = fcmp olt double %317, 1.000000e-30, !dbg !853
  %319 = select i1 %318, double 1.000000e-30, double %handler_result52, !dbg !854
  call void @llvm.dbg.value(metadata double %319, metadata !471, metadata !DIExpression()), !dbg !834
  %320 = tail call double @llvm.fabs.f64(double %handler_result51), !dbg !855
  %321 = fcmp olt double %320, 1.000000e-30, !dbg !856
  %322 = fdiv double 1.000000e+00, %handler_result51, !dbg !857
  call void @llvm.dbg.value(metadata double poison, metadata !470, metadata !DIExpression()), !dbg !834
  %323 = select i1 %321, double 0x46293E5939A08CE9, double %322, !dbg !857
  call void @llvm.dbg.value(metadata double %323, metadata !470, metadata !DIExpression()), !dbg !834
  %324 = fmul double %323, %319, !dbg !858
  call void @llvm.dbg.value(metadata double %324, metadata !472, metadata !DIExpression()), !dbg !834
  %325 = fmul double %309, %324, !dbg !859
  call void @llvm.dbg.value(metadata double %325, metadata !469, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata double %handler_result47, metadata !468, metadata !DIExpression()), !dbg !834
  %326 = fcmp ule double %handler_result47, %handler_result45, !dbg !860
  br i1 %326, label %328, label %327, !dbg !861

327:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata double %325, metadata !340, metadata !DIExpression()), !dbg !387
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 639, i32 noundef 10) #8, !dbg !862
  br label %331

328:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata double poison, metadata !342, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !339, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !387
  %handler_result53 = call double @fAddHandlerDouble(double %324, double -1.000000e+00), !dbg !863
  %329 = tail call double @llvm.fabs.f64(double %handler_result53), !dbg !863
  %330 = fcmp ogt double %329, 0x3CC0000000000000, !dbg !864
  br i1 %330, label %306, label %331, !dbg !865, !llvm.loop !866

331:                                              ; preds = %328, %327
  tail call void @llvm.dbg.value(metadata double %325, metadata !340, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !337, metadata !DIExpression()), !dbg !387
  br i1 %293, label %363, label %332, !dbg !868

332:                                              ; preds = %331
  call void @llvm.dbg.value(metadata double %handler_result, metadata !452, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %0, metadata !458, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %1, metadata !459, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr undef, metadata !460, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr undef, metadata !461, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr undef, metadata !462, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double 1.000000e-30, metadata !463, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double 1.000000e+05, metadata !464, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !465, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %300, metadata !466, metadata !DIExpression()), !dbg !869
  %handler_result54 = call double @fAddHandlerDouble(double %handler_result, double 1.000000e+00), !dbg !873
  %handler_result55 = call double @fAddHandlerDouble(double %handler_result54, double 1.000000e+05), !dbg !874
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !467, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !468, metadata !DIExpression()), !dbg !869
  %333 = fdiv double %0, %handler_result54, !dbg !874
  %334 = fmul double %300, %handler_result54, !dbg !875
  %handler_result56 = call double @fAddHandlerDouble(double %333, double %334), !dbg !876
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !469, metadata !DIExpression()), !dbg !869
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !343, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata i32 0, metadata !339, metadata !DIExpression()), !dbg !387
  %335 = tail call double @llvm.fabs.f64(double %handler_result56), !dbg !876
  %336 = fcmp olt double %335, 1.000000e-30, !dbg !877
  %337 = select i1 %336, double 1.000000e-30, double %handler_result56, !dbg !878
  call void @llvm.dbg.value(metadata double %337, metadata !469, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !470, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %337, metadata !471, metadata !DIExpression()), !dbg !869
  br label %338, !dbg !879

338:                                              ; preds = %360, %332
  %339 = phi double [ %337, %332 ], [ %351, %360 ], !dbg !869
  %340 = phi double [ 0.000000e+00, %332 ], [ %355, %360 ], !dbg !869
  %341 = phi double [ %337, %332 ], [ %357, %360 ], !dbg !869
  %342 = phi double [ %handler_result54, %332 ], [ %handler_result57, %360 ], !dbg !869
  call void @llvm.dbg.value(metadata double %342, metadata !468, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %341, metadata !469, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %340, metadata !470, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %339, metadata !471, metadata !DIExpression()), !dbg !869
  %handler_result57 = call double @fAddHandlerDouble(double %342, double 1.000000e+00), !dbg !880
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !473, metadata !DIExpression()), !dbg !881
  %343 = fdiv double %0, %342, !dbg !880
  call void @llvm.dbg.value(metadata double %343, metadata !475, metadata !DIExpression()), !dbg !881
  %344 = fmul double %343, %343, !dbg !882
  %handler_result58 = call double @fAddHandlerDouble(double %344, double 1.000000e+00), !dbg !883
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !476, metadata !DIExpression()), !dbg !881
  %handler_result59 = call double @fAddHandlerDouble(double %342, double %handler_result57), !dbg !884
  %345 = fdiv double %343, %handler_result57, !dbg !884
  %handler_result60 = call double @fAddHandlerDouble(double %300, double %345), !dbg !885
  %346 = fmul double %handler_result59, %handler_result60, !dbg !885
  call void @llvm.dbg.value(metadata double %346, metadata !477, metadata !DIExpression()), !dbg !881
  %347 = fmul double %340, %handler_result58, !dbg !886
  %handler_result61 = call double @fSubHandlerDouble(double %346, double %347), !dbg !887
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !470, metadata !DIExpression()), !dbg !869
  %348 = fdiv double %handler_result58, %339, !dbg !887
  %handler_result62 = call double @fSubHandlerDouble(double %346, double %348), !dbg !888
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !471, metadata !DIExpression()), !dbg !869
  %349 = tail call double @llvm.fabs.f64(double %handler_result62), !dbg !888
  %350 = fcmp olt double %349, 1.000000e-30, !dbg !889
  %351 = select i1 %350, double 1.000000e-30, double %handler_result62, !dbg !890
  call void @llvm.dbg.value(metadata double %351, metadata !471, metadata !DIExpression()), !dbg !869
  %352 = tail call double @llvm.fabs.f64(double %handler_result61), !dbg !891
  %353 = fcmp olt double %352, 1.000000e-30, !dbg !892
  %354 = fdiv double 1.000000e+00, %handler_result61, !dbg !893
  call void @llvm.dbg.value(metadata double poison, metadata !470, metadata !DIExpression()), !dbg !869
  %355 = select i1 %353, double 0x46293E5939A08CE9, double %354, !dbg !893
  call void @llvm.dbg.value(metadata double %355, metadata !470, metadata !DIExpression()), !dbg !869
  %356 = fmul double %355, %351, !dbg !894
  call void @llvm.dbg.value(metadata double %356, metadata !472, metadata !DIExpression()), !dbg !869
  %357 = fmul double %341, %356, !dbg !895
  call void @llvm.dbg.value(metadata double %357, metadata !469, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !468, metadata !DIExpression()), !dbg !869
  %358 = fcmp ule double %handler_result57, %handler_result55, !dbg !896
  br i1 %358, label %360, label %359, !dbg !897

359:                                              ; preds = %338
  tail call void @llvm.dbg.value(metadata double %357, metadata !341, metadata !DIExpression()), !dbg !387
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 639, i32 noundef 10) #8, !dbg !898
  br label %363

360:                                              ; preds = %338
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !339, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !387
  %handler_result63 = call double @fAddHandlerDouble(double %356, double -1.000000e+00), !dbg !899
  %361 = tail call double @llvm.fabs.f64(double %handler_result63), !dbg !899
  %362 = fcmp ogt double %361, 0x3CC0000000000000, !dbg !900
  br i1 %362, label %338, label %363, !dbg !901, !llvm.loop !902

363:                                              ; preds = %360, %359, %331
  %364 = phi double [ %325, %331 ], [ %357, %359 ], [ %357, %360 ], !dbg !904
  tail call void @llvm.dbg.value(metadata double %364, metadata !341, metadata !DIExpression()), !dbg !387
  %365 = load double, ptr %17, align 8, !dbg !905, !tbaa !98
  store double %365, ptr %4, align 8, !dbg !906, !tbaa !98
  %366 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !907
  %367 = load double, ptr %366, align 8, !dbg !907, !tbaa !103
  %368 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !908
  store double %367, ptr %368, align 8, !dbg !909, !tbaa !103
  %369 = load double, ptr %20, align 8, !dbg !910, !tbaa !98
  store double %369, ptr %6, align 8, !dbg !911, !tbaa !98
  %370 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %20, i64 0, i32 1, !dbg !912
  %371 = load double, ptr %370, align 8, !dbg !912, !tbaa !103
  %372 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !913
  store double %371, ptr %372, align 8, !dbg !914, !tbaa !103
  %373 = fmul double %325, %365, !dbg !915
  store double %373, ptr %5, align 8, !dbg !916, !tbaa !98
  %374 = tail call double @llvm.fabs.f64(double %325), !dbg !917
  %375 = fmul double %374, %367, !dbg !918
  %376 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !919
  %377 = tail call double @llvm.fabs.f64(double %373), !dbg !920
  %378 = fmul double %377, 0x3CC0000000000000, !dbg !921
  %handler_result64 = call double @fAddHandlerDouble(double %375, double %378), !dbg !922
  store double %handler_result64, ptr %376, align 8, !dbg !922, !tbaa !103
  %379 = fmul double %364, %369, !dbg !923
  %380 = load double, ptr %19, align 8, !dbg !924, !tbaa !98
  %381 = fdiv double 1.000000e+00, %380, !dbg !925
  %handler_result65 = call double @fSubHandlerDouble(double %379, double %381), !dbg !926
  store double %handler_result65, ptr %7, align 8, !dbg !926, !tbaa !98
  %382 = tail call double @llvm.fabs.f64(double %364), !dbg !927
  %383 = fmul double %382, %371, !dbg !928
  %384 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !929
  %385 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %19, i64 0, i32 1, !dbg !930
  %386 = load double, ptr %385, align 8, !dbg !930, !tbaa !103
  %387 = fdiv double %386, %380, !dbg !931
  %388 = fmul double %381, %387, !dbg !932
  %389 = tail call double @llvm.fabs.f64(double %388), !dbg !932
  %handler_result66 = call double @fAddHandlerDouble(double %383, double %389), !dbg !933
  store double %handler_result66, ptr %384, align 8, !dbg !933, !tbaa !103
  %390 = load double, ptr %21, align 8, !dbg !934, !tbaa !256
  store double %390, ptr %8, align 8, !dbg !935, !tbaa !256
  %391 = load double, ptr %22, align 8, !dbg !936, !tbaa !256
  store double %391, ptr %9, align 8, !dbg !937, !tbaa !256
  %392 = icmp eq i32 %292, 16, !dbg !938
  %393 = icmp eq i32 %299, 16
  %394 = or i1 %392, %393, !dbg !940
  br i1 %394, label %395, label %396, !dbg !940

395:                                              ; preds = %363
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1107, i32 noundef 16) #8, !dbg !941
  br label %399, !dbg !941

396:                                              ; preds = %363
  %397 = icmp eq i32 %292, 0, !dbg !944
  %398 = select i1 %397, i32 %299, i32 %292, !dbg !944
  br label %399, !dbg !946

399:                                              ; preds = %396, %395
  %400 = phi i32 [ 16, %395 ], [ %398, %396 ], !dbg !947
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #8, !dbg !948
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #8, !dbg !948
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #8, !dbg !948
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #8, !dbg !948
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #8, !dbg !948
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #8, !dbg !948
  br label %593

401:                                              ; preds = %288
  tail call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !344, metadata !DIExpression()), !dbg !949
  %402 = fmul double %1, 4.000000e+00, !dbg !950
  %handler_result67 = call double @fSubHandlerDouble(double %1, double %289), !dbg !951
  %403 = fmul double %402, %handler_result67, !dbg !951
  %handler_result68 = call double @fAddHandlerDouble(double %403, double 1.000000e+00), !dbg !952
  %404 = tail call double @sqrt(double noundef %handler_result68) #8, !dbg !952
  tail call void @llvm.dbg.value(metadata double %404, metadata !346, metadata !DIExpression()), !dbg !949
  %handler_result69 = call double @fSubHandlerDouble(double %2, double %404), !dbg !953
  %handler_result70 = call double @fAddHandlerDouble(double %handler_result69, double 5.000000e-01), !dbg !954
  %405 = tail call double @llvm.ceil.f64(double %handler_result70), !dbg !954
  %406 = fptosi double %405 to i32, !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %406, metadata !347, metadata !DIExpression()), !dbg !949
  %407 = tail call i32 @llvm.smax.i32(i32 %406, i32 0), !dbg !955
  %408 = sitofp i32 %407 to double, !dbg !955
  %handler_result71 = call double @fSubHandlerDouble(double %2, double %408), !dbg !956
  tail call void @llvm.dbg.value(metadata double %handler_result71, metadata !348, metadata !DIExpression()), !dbg !949
  %409 = fcmp olt double %handler_result71, %handler_result, !dbg !956
  %410 = select i1 %409, double %handler_result71, double %handler_result, !dbg !956
  tail call void @llvm.dbg.value(metadata double %410, metadata !349, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %2, metadata !452, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double %0, metadata !458, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double %1, metadata !459, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr undef, metadata !460, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr undef, metadata !461, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata ptr undef, metadata !462, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double 1.000000e-30, metadata !463, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double 1.000000e+05, metadata !464, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !465, metadata !DIExpression()), !dbg !957
  %411 = fdiv double 1.000000e+00, %1, !dbg !959
  call void @llvm.dbg.value(metadata double %411, metadata !466, metadata !DIExpression()), !dbg !957
  %handler_result72 = call double @fAddHandlerDouble(double %2, double 1.000000e+00), !dbg !960
  %handler_result73 = call double @fAddHandlerDouble(double %handler_result72, double 1.000000e+05), !dbg !961
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !467, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !468, metadata !DIExpression()), !dbg !957
  %412 = fdiv double %0, %handler_result72, !dbg !961
  %413 = fmul double %411, %handler_result72, !dbg !962
  %handler_result74 = call double @fAddHandlerDouble(double %412, double %413), !dbg !963
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !469, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !362, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 0, metadata !369, metadata !DIExpression()), !dbg !949
  %414 = tail call double @llvm.fabs.f64(double %handler_result74), !dbg !963
  %415 = fcmp olt double %414, 1.000000e-30, !dbg !964
  %416 = select i1 %415, double 1.000000e-30, double %handler_result74, !dbg !965
  call void @llvm.dbg.value(metadata double %416, metadata !469, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !470, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double %416, metadata !471, metadata !DIExpression()), !dbg !957
  br label %417, !dbg !966

417:                                              ; preds = %445, %401
  %418 = phi double [ 1.000000e+00, %401 ], [ %442, %445 ], !dbg !957
  %419 = phi i32 [ 0, %401 ], [ %447, %445 ], !dbg !957
  %420 = phi double [ 1.000000e+00, %401 ], [ %446, %445 ]
  %421 = phi double [ %416, %401 ], [ %433, %445 ], !dbg !957
  %422 = phi double [ 0.000000e+00, %401 ], [ %437, %445 ], !dbg !957
  %423 = phi double [ %416, %401 ], [ %439, %445 ], !dbg !957
  %424 = phi double [ %handler_result72, %401 ], [ %handler_result75, %445 ], !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %419, metadata !369, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %418, metadata !362, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %424, metadata !468, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double %423, metadata !469, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double %422, metadata !470, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata double %421, metadata !471, metadata !DIExpression()), !dbg !957
  %handler_result75 = call double @fAddHandlerDouble(double %424, double 1.000000e+00), !dbg !967
  call void @llvm.dbg.value(metadata double %handler_result75, metadata !473, metadata !DIExpression()), !dbg !968
  %425 = fdiv double %0, %424, !dbg !967
  call void @llvm.dbg.value(metadata double %425, metadata !475, metadata !DIExpression()), !dbg !968
  %426 = fmul double %425, %425, !dbg !969
  %handler_result76 = call double @fAddHandlerDouble(double %426, double 1.000000e+00), !dbg !970
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !476, metadata !DIExpression()), !dbg !968
  %handler_result77 = call double @fAddHandlerDouble(double %424, double %handler_result75), !dbg !971
  %427 = fdiv double %425, %handler_result75, !dbg !971
  %handler_result78 = call double @fAddHandlerDouble(double %411, double %427), !dbg !972
  %428 = fmul double %handler_result77, %handler_result78, !dbg !972
  call void @llvm.dbg.value(metadata double %428, metadata !477, metadata !DIExpression()), !dbg !968
  %429 = fmul double %422, %handler_result76, !dbg !973
  %handler_result79 = call double @fSubHandlerDouble(double %428, double %429), !dbg !974
  call void @llvm.dbg.value(metadata double %handler_result79, metadata !470, metadata !DIExpression()), !dbg !957
  %430 = fdiv double %handler_result76, %421, !dbg !974
  %handler_result80 = call double @fSubHandlerDouble(double %428, double %430), !dbg !975
  call void @llvm.dbg.value(metadata double %handler_result80, metadata !471, metadata !DIExpression()), !dbg !957
  %431 = tail call double @llvm.fabs.f64(double %handler_result80), !dbg !975
  %432 = fcmp olt double %431, 1.000000e-30, !dbg !976
  %433 = select i1 %432, double 1.000000e-30, double %handler_result80, !dbg !977
  call void @llvm.dbg.value(metadata double %433, metadata !471, metadata !DIExpression()), !dbg !957
  %434 = tail call double @llvm.fabs.f64(double %handler_result79), !dbg !978
  %435 = fcmp olt double %434, 1.000000e-30, !dbg !979
  %436 = fdiv double 1.000000e+00, %handler_result79, !dbg !980
  call void @llvm.dbg.value(metadata double poison, metadata !470, metadata !DIExpression()), !dbg !957
  %437 = select i1 %435, double 0x46293E5939A08CE9, double %436, !dbg !980
  call void @llvm.dbg.value(metadata double %437, metadata !470, metadata !DIExpression()), !dbg !957
  %438 = fmul double %437, %433, !dbg !981
  call void @llvm.dbg.value(metadata double %438, metadata !472, metadata !DIExpression()), !dbg !957
  %439 = fmul double %423, %438, !dbg !982
  call void @llvm.dbg.value(metadata double %439, metadata !469, metadata !DIExpression()), !dbg !957
  %440 = fcmp olt double %437, 0.000000e+00, !dbg !983
  %441 = fneg double %420, !dbg !985
  %442 = select i1 %440, double %441, double %418, !dbg !985
  tail call void @llvm.dbg.value(metadata double %442, metadata !362, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %handler_result75, metadata !468, metadata !DIExpression()), !dbg !957
  %443 = fcmp ule double %handler_result75, %handler_result73, !dbg !986
  br i1 %443, label %445, label %444, !dbg !987

444:                                              ; preds = %417
  tail call void @llvm.dbg.value(metadata double %439, metadata !360, metadata !DIExpression()), !dbg !949
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 639, i32 noundef 10) #8, !dbg !988
  br label %450

445:                                              ; preds = %417
  %446 = select i1 %440, double %441, double %420, !dbg !985
  %447 = add nuw nsw i32 %419, 1, !dbg !989
  tail call void @llvm.dbg.value(metadata i32 %447, metadata !369, metadata !DIExpression()), !dbg !949
  %handler_result81 = call double @fAddHandlerDouble(double %438, double -1.000000e+00), !dbg !990
  %448 = tail call double @llvm.fabs.f64(double %handler_result81), !dbg !990
  %449 = fcmp ogt double %448, 0x3CC0000000000000, !dbg !991
  br i1 %449, label %417, label %450, !dbg !992, !llvm.loop !993

450:                                              ; preds = %445, %444
  %451 = phi i32 [ %419, %444 ], [ %447, %445 ], !dbg !957
  %452 = phi i32 [ 10, %444 ], [ 0, %445 ], !dbg !957
  tail call void @llvm.dbg.value(metadata i32 %451, metadata !369, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %439, metadata !360, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %452, metadata !371, metadata !DIExpression()), !dbg !949
  %453 = fmul double %442, 0x3E50000000000000, !dbg !995
  tail call void @llvm.dbg.value(metadata double %453, metadata !350, metadata !DIExpression()), !dbg !949
  %454 = fmul double %439, %453, !dbg !996
  tail call void @llvm.dbg.value(metadata double %454, metadata !351, metadata !DIExpression()), !dbg !949
  %455 = tail call i32 @llvm.smax.i32(i32 %406, i32 %3), !dbg !997
  tail call void @llvm.dbg.value(metadata i32 %455, metadata !375, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %410, metadata !520, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i32 %455, metadata !525, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %0, metadata !526, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %1, metadata !527, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %453, metadata !528, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %454, metadata !529, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr undef, metadata !530, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr undef, metadata !531, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %411, metadata !532, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double poison, metadata !535, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double poison, metadata !536, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i32 %455, metadata !537, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !998
  call void @llvm.dbg.value(metadata double %453, metadata !533, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %454, metadata !534, metadata !DIExpression()), !dbg !998
  %456 = icmp sgt i32 %455, 0, !dbg !1000
  br i1 %456, label %457, label %473, !dbg !1001

457:                                              ; preds = %450
  %458 = sitofp i32 %455 to double, !dbg !1002
  %handler_result82 = call double @fAddHandlerDouble(double %410, double %458), !dbg !1001
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !535, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %handler_result82, metadata !536, metadata !DIExpression()), !dbg !998
  br label %459, !dbg !1001

459:                                              ; preds = %459, %457
  %460 = phi double [ %469, %459 ], [ %453, %457 ]
  %461 = phi double [ %handler_result85, %459 ], [ %454, %457 ]
  %462 = phi double [ %handler_result86, %459 ], [ %handler_result82, %457 ]
  %463 = phi i32 [ %464, %459 ], [ %455, %457 ]
  call void @llvm.dbg.value(metadata double %460, metadata !533, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %461, metadata !534, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %462, metadata !536, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i32 %463, metadata !537, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !998
  %464 = add nsw i32 %463, -1, !dbg !1003
  call void @llvm.dbg.value(metadata i32 %464, metadata !537, metadata !DIExpression()), !dbg !998
  %465 = fdiv double %0, %462, !dbg !1004
  call void @llvm.dbg.value(metadata double %465, metadata !538, metadata !DIExpression()), !dbg !1005
  %466 = tail call double @hypot(double noundef 1.000000e+00, double noundef %465) #8, !dbg !1006
  call void @llvm.dbg.value(metadata double %466, metadata !542, metadata !DIExpression()), !dbg !1005
  %467 = fmul double %411, %462, !dbg !1007
  %handler_result83 = call double @fAddHandlerDouble(double %465, double %467), !dbg !1008
  call void @llvm.dbg.value(metadata double %handler_result83, metadata !543, metadata !DIExpression()), !dbg !1005
  %468 = fmul double %460, %handler_result83, !dbg !1008
  %handler_result84 = call double @fAddHandlerDouble(double %461, double %468), !dbg !1009
  %469 = fdiv double %handler_result84, %466, !dbg !1009
  call void @llvm.dbg.value(metadata double %469, metadata !544, metadata !DIExpression()), !dbg !1005
  %470 = fmul double %handler_result83, %469, !dbg !1010
  %471 = fmul double %460, %466, !dbg !1011
  %handler_result85 = call double @fSubHandlerDouble(double %470, double %471), !dbg !1012
  call void @llvm.dbg.value(metadata double %handler_result85, metadata !534, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata double %469, metadata !533, metadata !DIExpression()), !dbg !998
  %handler_result86 = call double @fAddHandlerDouble(double %462, double -1.000000e+00), !dbg !1000
  call void @llvm.dbg.value(metadata double %handler_result86, metadata !536, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i32 %464, metadata !537, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !998
  %472 = icmp ugt i32 %463, 1, !dbg !1000
  br i1 %472, label %459, label %473, !dbg !1001, !llvm.loop !1013

473:                                              ; preds = %459, %450
  %474 = phi double [ %454, %450 ], [ %handler_result85, %459 ], !dbg !998
  %475 = phi double [ %453, %450 ], [ %469, %459 ], !dbg !998
  tail call void @llvm.dbg.value(metadata double %475, metadata !354, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %474, metadata !355, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 0, metadata !373, metadata !DIExpression()), !dbg !949
  %476 = fdiv double %474, %475, !dbg !1015
  tail call void @llvm.dbg.value(metadata double %476, metadata !361, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %410, metadata !1016, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %0, metadata !1021, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %1, metadata !1022, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr undef, metadata !1023, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr undef, metadata !1024, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr undef, metadata !1025, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i32 0, metadata !1026, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double 0x3CD0000000000000, metadata !1027, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double 2.000000e+05, metadata !1028, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %289, metadata !1029, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %411, metadata !1030, metadata !DIExpression()), !dbg !1047
  %477 = fmul double %0, %0, !dbg !1049
  %handler_result87 = call double @fAddHandlerDouble(double %410, double 1.000000e+00), !dbg !1050
  %478 = fmul double %410, %handler_result87, !dbg !1050
  %handler_result88 = call double @fAddHandlerDouble(double %477, double %478), !dbg !1051
  call void @llvm.dbg.value(metadata double %handler_result88, metadata !1031, metadata !DIExpression()), !dbg !1047
  %479 = fneg double %handler_result88, !dbg !1051
  call void @llvm.dbg.value(metadata double %479, metadata !1032, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %0, metadata !1033, metadata !DIExpression()), !dbg !1047
  %handler_result89 = call double @fSubHandlerDouble(double %1, double %0), !dbg !1052
  %480 = fmul double %handler_result89, 2.000000e+00, !dbg !1052
  call void @llvm.dbg.value(metadata double %480, metadata !1034, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !1035, metadata !DIExpression()), !dbg !1047
  %481 = fmul double %480, %480, !dbg !1053
  %handler_result90 = call double @fAddHandlerDouble(double %481, double 4.000000e+00), !dbg !1054
  %482 = fdiv double %480, %handler_result90, !dbg !1054
  call void @llvm.dbg.value(metadata double %482, metadata !1036, metadata !DIExpression()), !dbg !1047
  %483 = fdiv double -2.000000e+00, %handler_result90, !dbg !1055
  call void @llvm.dbg.value(metadata double %483, metadata !1037, metadata !DIExpression()), !dbg !1047
  %484 = fneg double %411, !dbg !1056
  %485 = fmul double %482, %0, !dbg !1057
  %486 = fmul double %483, %handler_result88, !dbg !1058
  %handler_result91 = call double @fSubHandlerDouble(double %485, double %486), !dbg !1059
  %487 = fmul double %handler_result91, %484, !dbg !1059
  call void @llvm.dbg.value(metadata double %487, metadata !1038, metadata !DIExpression()), !dbg !1047
  %488 = fmul double %482, %479, !dbg !1060
  %489 = fmul double %483, %0, !dbg !1061
  %handler_result92 = call double @fSubHandlerDouble(double %488, double %489), !dbg !1062
  %490 = fmul double %411, %handler_result92, !dbg !1062
  call void @llvm.dbg.value(metadata double %490, metadata !1039, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1044, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1045, metadata !DIExpression()), !dbg !1047
  %491 = fmul double %411, %0, !dbg !1063
  %handler_result93 = call double @fSubHandlerDouble(double 1.000000e+00, double %491), !dbg !1064
  call void @llvm.dbg.value(metadata double %handler_result93, metadata !1046, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 0, metadata !370, metadata !DIExpression()), !dbg !949
  br label %492, !dbg !1064

492:                                              ; preds = %507, %473
  %493 = phi i32 [ 0, %473 ], [ %526, %507 ], !dbg !1047
  %494 = phi double [ %482, %473 ], [ %515, %507 ], !dbg !1047
  %495 = phi double [ %483, %473 ], [ %518, %507 ], !dbg !1047
  %496 = phi double [ %487, %473 ], [ %handler_result109, %507 ], !dbg !1047
  %497 = phi double [ %490, %473 ], [ %handler_result108, %507 ], !dbg !1047
  %498 = phi double [ 2.000000e+00, %473 ], [ %handler_result97, %507 ], !dbg !1047
  %499 = phi double [ %0, %473 ], [ %handler_result99, %507 ], !dbg !1047
  %500 = phi double [ %479, %473 ], [ %handler_result98, %507 ], !dbg !1047
  %501 = phi double [ 0.000000e+00, %473 ], [ %handler_result96, %507 ], !dbg !1047
  %502 = phi double [ 0.000000e+00, %473 ], [ %handler_result94, %507 ], !dbg !1047
  %503 = phi double [ %handler_result93, %473 ], [ %handler_result95, %507 ], !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %493, metadata !370, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %503, metadata !1046, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %502, metadata !1045, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %501, metadata !1044, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %500, metadata !1032, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %499, metadata !1033, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %498, metadata !1035, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %497, metadata !1039, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %496, metadata !1038, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %495, metadata !1037, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %494, metadata !1036, metadata !DIExpression()), !dbg !1047
  %handler_result94 = call double @fAddHandlerDouble(double %496, double %502), !dbg !1065
  call void @llvm.dbg.value(metadata double %handler_result94, metadata !1045, metadata !DIExpression()), !dbg !1047
  %handler_result95 = call double @fAddHandlerDouble(double %497, double %503), !dbg !1067
  call void @llvm.dbg.value(metadata double %handler_result95, metadata !1046, metadata !DIExpression()), !dbg !1047
  %handler_result96 = call double @fAddHandlerDouble(double %501, double 2.000000e+00), !dbg !1068
  call void @llvm.dbg.value(metadata double %handler_result96, metadata !1044, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1032, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1033, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1035, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1043, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1036, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1037, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1040, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1041, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1042, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1039, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double poison, metadata !1038, metadata !DIExpression()), !dbg !1047
  %504 = fcmp ogt double %handler_result96, 2.000000e+05, !dbg !1068
  br i1 %504, label %505, label %507, !dbg !1070

505:                                              ; preds = %492
  %506 = tail call double @llvm.fabs.f64(double %handler_result94), !dbg !1071
  br label %533, !dbg !1070

507:                                              ; preds = %492
  %handler_result97 = call double @fAddHandlerDouble(double %498, double 2.000000e+00), !dbg !1073
  call void @llvm.dbg.value(metadata double %handler_result97, metadata !1035, metadata !DIExpression()), !dbg !1047
  %handler_result98 = call double @fAddHandlerDouble(double %500, double %handler_result96), !dbg !1074
  call void @llvm.dbg.value(metadata double %handler_result98, metadata !1032, metadata !DIExpression()), !dbg !1047
  %508 = fmul double %494, %handler_result98, !dbg !1074
  %handler_result99 = call double @fAddHandlerDouble(double %289, double %499), !dbg !1075
  call void @llvm.dbg.value(metadata double %handler_result99, metadata !1033, metadata !DIExpression()), !dbg !1047
  %509 = fmul double %495, %handler_result99, !dbg !1075
  %handler_result100 = call double @fSubHandlerDouble(double %508, double %509), !dbg !1076
  %handler_result101 = call double @fAddHandlerDouble(double %480, double %handler_result100), !dbg !1077
  call void @llvm.dbg.value(metadata double %handler_result101, metadata !1043, metadata !DIExpression()), !dbg !1047
  %510 = fmul double %handler_result101, %handler_result101, !dbg !1077
  %511 = fmul double %494, %handler_result99, !dbg !1078
  %512 = fmul double %495, %handler_result98, !dbg !1079
  %handler_result102 = call double @fAddHandlerDouble(double %511, double %512), !dbg !1080
  %handler_result103 = call double @fAddHandlerDouble(double %handler_result97, double %handler_result102), !dbg !1081
  call void @llvm.dbg.value(metadata double %handler_result103, metadata !1037, metadata !DIExpression()), !dbg !1047
  %513 = fmul double %handler_result103, %handler_result103, !dbg !1081
  %handler_result104 = call double @fAddHandlerDouble(double %510, double %513), !dbg !1082
  %514 = fdiv double 1.000000e+00, %handler_result104, !dbg !1082
  call void @llvm.dbg.value(metadata double %514, metadata !1042, metadata !DIExpression()), !dbg !1047
  %515 = fmul double %handler_result101, %514, !dbg !1083
  call void @llvm.dbg.value(metadata double %515, metadata !1036, metadata !DIExpression()), !dbg !1047
  %516 = fmul double %handler_result97, %515, !dbg !1084
  %517 = fneg double %514, !dbg !1085
  %518 = fmul double %handler_result103, %517, !dbg !1086
  call void @llvm.dbg.value(metadata double %518, metadata !1037, metadata !DIExpression()), !dbg !1047
  %519 = fmul double %480, %518, !dbg !1087
  %handler_result105 = call double @fAddHandlerDouble(double %516, double %519), !dbg !1088
  call void @llvm.dbg.value(metadata double %handler_result105, metadata !1041, metadata !DIExpression()), !dbg !1047
  %520 = fmul double %496, %handler_result105, !dbg !1088
  %521 = fmul double %480, %515, !dbg !1089
  %522 = fmul double %handler_result97, %518, !dbg !1090
  %handler_result106 = call double @fSubHandlerDouble(double %521, double %522), !dbg !1091
  %handler_result107 = call double @fAddHandlerDouble(double %handler_result106, double -1.000000e+00), !dbg !1092
  call void @llvm.dbg.value(metadata double %handler_result107, metadata !1040, metadata !DIExpression()), !dbg !1047
  %523 = fmul double %497, %handler_result107, !dbg !1092
  %handler_result108 = call double @fAddHandlerDouble(double %520, double %523), !dbg !1093
  call void @llvm.dbg.value(metadata double %handler_result108, metadata !1039, metadata !DIExpression()), !dbg !1047
  %524 = fmul double %496, %handler_result107, !dbg !1093
  %525 = fmul double %497, %handler_result105, !dbg !1094
  %handler_result109 = call double @fSubHandlerDouble(double %524, double %525), !dbg !1095
  call void @llvm.dbg.value(metadata double %handler_result109, metadata !1042, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %handler_result109, metadata !1038, metadata !DIExpression()), !dbg !1047
  %526 = add nuw nsw i32 %493, 1, !dbg !1095
  tail call void @llvm.dbg.value(metadata i32 %526, metadata !370, metadata !DIExpression()), !dbg !949
  %527 = tail call double @llvm.fabs.f64(double %handler_result109), !dbg !1096
  %528 = tail call double @llvm.fabs.f64(double %handler_result108), !dbg !1097
  %handler_result110 = call double @fAddHandlerDouble(double %527, double %528), !dbg !1098
  %529 = tail call double @llvm.fabs.f64(double %handler_result94), !dbg !1098
  %530 = tail call double @llvm.fabs.f64(double %handler_result95), !dbg !1099
  %handler_result111 = call double @fAddHandlerDouble(double %529, double %530), !dbg !1100
  %531 = fmul double %handler_result111, 0x3CD0000000000000, !dbg !1100
  %532 = fcmp ogt double %handler_result110, %531, !dbg !1101
  br i1 %532, label %492, label %533, !dbg !1102, !llvm.loop !1103

533:                                              ; preds = %507, %505
  %534 = phi i32 [ %493, %505 ], [ %526, %507 ], !dbg !1047
  %535 = phi double [ %506, %505 ], [ %529, %507 ], !dbg !1071
  %536 = phi i32 [ 10, %505 ], [ 0, %507 ], !dbg !1047
  tail call void @llvm.dbg.value(metadata i32 %534, metadata !370, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i32 %536, metadata !1026, metadata !DIExpression()), !dbg !1047
  %537 = fmul double %535, 0x3DC86A0000000000, !dbg !1105
  %538 = fcmp olt double %handler_result95, %537, !dbg !1106
  %539 = select i1 %538, i32 17, i32 %536, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %539, metadata !1026, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata double %handler_result94, metadata !364, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %handler_result95, metadata !365, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 %539, metadata !372, metadata !DIExpression()), !dbg !949
  %handler_result112 = call double @fSubHandlerDouble(double %476, double %handler_result94), !dbg !1108
  tail call void @llvm.dbg.value(metadata double %handler_result112, metadata !366, metadata !DIExpression()), !dbg !949
  %540 = fdiv double %handler_result112, %handler_result95, !dbg !1108
  tail call void @llvm.dbg.value(metadata double %540, metadata !367, metadata !DIExpression()), !dbg !949
  %541 = fcmp oge double %475, 0.000000e+00, !dbg !1109
  %542 = select i1 %541, double 1.000000e+00, double -1.000000e+00, !dbg !1109
  tail call void @llvm.dbg.value(metadata double %542, metadata !363, metadata !DIExpression()), !dbg !949
  %543 = fmul double %handler_result112, %handler_result112, !dbg !1110
  %544 = fdiv double %543, %handler_result95, !dbg !1111
  %handler_result113 = call double @fAddHandlerDouble(double %handler_result95, double %544), !dbg !1112
  %545 = tail call double @sqrt(double noundef %handler_result113) #8, !dbg !1112
  %546 = fdiv double %542, %545, !dbg !1113
  tail call void @llvm.dbg.value(metadata double %546, metadata !356, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double poison, metadata !357, metadata !DIExpression()), !dbg !949
  %547 = fmul double %540, %546, !dbg !1114
  tail call void @llvm.dbg.value(metadata double %547, metadata !358, metadata !DIExpression()), !dbg !949
  %548 = fmul double %handler_result94, %540, !dbg !1115
  %handler_result114 = call double @fSubHandlerDouble(double %548, double %handler_result95), !dbg !1116
  %549 = fmul double %handler_result114, %546, !dbg !1116
  tail call void @llvm.dbg.value(metadata double %549, metadata !359, metadata !DIExpression()), !dbg !949
  %550 = fdiv double %546, %475, !dbg !1117
  tail call void @llvm.dbg.value(metadata double %550, metadata !368, metadata !DIExpression()), !dbg !949
  %551 = fmul double %453, %550, !dbg !1118
  tail call void @llvm.dbg.value(metadata double %551, metadata !350, metadata !DIExpression()), !dbg !949
  %552 = fmul double %454, %550, !dbg !1119
  tail call void @llvm.dbg.value(metadata double %552, metadata !351, metadata !DIExpression()), !dbg !949
  %553 = sub nsw i32 %406, %3, !dbg !1120
  %554 = tail call i32 @llvm.smax.i32(i32 %553, i32 0), !dbg !1120
  tail call void @llvm.dbg.value(metadata i32 %554, metadata !376, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %410, metadata !739, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32 %554, metadata !744, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %0, metadata !745, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %1, metadata !746, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %547, metadata !747, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %549, metadata !748, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr undef, metadata !749, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr undef, metadata !750, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %411, metadata !751, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %547, metadata !752, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %549, metadata !753, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double poison, metadata !754, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32 1, metadata !755, metadata !DIExpression()), !dbg !1121
  %555 = icmp slt i32 %553, 1, !dbg !1123
  br i1 %555, label %570, label %556, !dbg !1124

556:                                              ; preds = %556, %533
  %557 = phi double [ %565, %556 ], [ %547, %533 ]
  %558 = phi double [ %handler_result118, %556 ], [ %549, %533 ]
  %559 = phi double [ %handler_result115, %556 ], [ %410, %533 ]
  %560 = phi i32 [ %568, %556 ], [ 1, %533 ]
  call void @llvm.dbg.value(metadata double %557, metadata !752, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %558, metadata !753, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i32 %560, metadata !755, metadata !DIExpression()), !dbg !1121
  %handler_result115 = call double @fAddHandlerDouble(double %559, double 1.000000e+00), !dbg !1125
  call void @llvm.dbg.value(metadata double %handler_result115, metadata !754, metadata !DIExpression()), !dbg !1121
  %561 = fdiv double %0, %handler_result115, !dbg !1125
  call void @llvm.dbg.value(metadata double %561, metadata !756, metadata !DIExpression()), !dbg !1126
  %562 = tail call double @hypot(double noundef 1.000000e+00, double noundef %561) #8, !dbg !1127
  call void @llvm.dbg.value(metadata double %562, metadata !760, metadata !DIExpression()), !dbg !1126
  %563 = fmul double %411, %handler_result115, !dbg !1128
  %handler_result116 = call double @fAddHandlerDouble(double %561, double %563), !dbg !1129
  call void @llvm.dbg.value(metadata double %handler_result116, metadata !761, metadata !DIExpression()), !dbg !1126
  %564 = fmul double %557, %handler_result116, !dbg !1129
  %handler_result117 = call double @fSubHandlerDouble(double %564, double %558), !dbg !1130
  %565 = fdiv double %handler_result117, %562, !dbg !1130
  call void @llvm.dbg.value(metadata double %565, metadata !762, metadata !DIExpression()), !dbg !1126
  %566 = fmul double %557, %562, !dbg !1131
  %567 = fmul double %handler_result116, %565, !dbg !1132
  %handler_result118 = call double @fSubHandlerDouble(double %566, double %567), !dbg !1133
  call void @llvm.dbg.value(metadata double %handler_result118, metadata !753, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %565, metadata !752, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double poison, metadata !754, metadata !DIExpression()), !dbg !1121
  %568 = add nuw i32 %560, 1, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %568, metadata !755, metadata !DIExpression()), !dbg !1121
  %569 = icmp eq i32 %560, %554, !dbg !1123
  br i1 %569, label %570, label %556, !dbg !1124, !llvm.loop !1134

570:                                              ; preds = %556, %533
  %571 = phi double [ %549, %533 ], [ %handler_result118, %556 ], !dbg !1121
  %572 = phi double [ %547, %533 ], [ %565, %556 ], !dbg !1121
  tail call void @llvm.dbg.value(metadata double %572, metadata !352, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %571, metadata !353, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i32 0, metadata !374, metadata !DIExpression()), !dbg !949
  %573 = add i32 %455, 1, !dbg !1136
  %574 = add i32 %573, %554, !dbg !1137
  %575 = add i32 %574, %451, !dbg !1138
  %576 = add i32 %575, %534, !dbg !1139
  %577 = sitofp i32 %576 to double, !dbg !1140
  tail call void @llvm.dbg.value(metadata double %577, metadata !377, metadata !DIExpression()), !dbg !949
  store double %551, ptr %4, align 8, !dbg !1141, !tbaa !98
  %578 = fmul double %577, 8.000000e+00, !dbg !1142
  %579 = fmul double %578, 0x3CB0000000000000, !dbg !1143
  %580 = tail call double @llvm.fabs.f64(double %551), !dbg !1144
  %581 = fmul double %579, %580, !dbg !1145
  %582 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1146
  store double %581, ptr %582, align 8, !dbg !1147, !tbaa !103
  store double %552, ptr %5, align 8, !dbg !1148, !tbaa !98
  %583 = tail call double @llvm.fabs.f64(double %552), !dbg !1149
  %584 = fmul double %579, %583, !dbg !1150
  %585 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1151
  store double %584, ptr %585, align 8, !dbg !1152, !tbaa !103
  store double %572, ptr %6, align 8, !dbg !1153, !tbaa !98
  %586 = tail call double @llvm.fabs.f64(double %572), !dbg !1154
  %587 = fmul double %579, %586, !dbg !1155
  %588 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1156
  store double %587, ptr %588, align 8, !dbg !1157, !tbaa !103
  store double %571, ptr %7, align 8, !dbg !1158, !tbaa !98
  %589 = tail call double @llvm.fabs.f64(double %571), !dbg !1159
  %590 = fmul double %579, %589, !dbg !1160
  %591 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1161
  store double %590, ptr %591, align 8, !dbg !1162, !tbaa !103
  store double 0.000000e+00, ptr %8, align 8, !dbg !1163, !tbaa !256
  store double 0.000000e+00, ptr %9, align 8, !dbg !1164, !tbaa !256
  %592 = select i1 %443, i32 %539, i32 %452, !dbg !1165
  br label %593

593:                                              ; preds = %570, %399, %286, %51, %29
  %594 = phi i32 [ 1, %29 ], [ 1, %51 ], [ %287, %286 ], [ %400, %399 ], [ %592, %570 ], !dbg !1166
  ret i32 %594, !dbg !1167
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @coulomb_FG0_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !1168 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1205
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1177, metadata !DIExpression(), metadata !1205, metadata ptr %5, metadata !DIExpression()), !dbg !1206
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1207
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1179, metadata !DIExpression(), metadata !1207, metadata ptr %6, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %0, metadata !1170, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %1, metadata !1171, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1172, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1173, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i32 800, metadata !1174, metadata !DIExpression()), !dbg !1206
  %7 = fmul double %1, %1, !dbg !1208
  tail call void @llvm.dbg.value(metadata double %7, metadata !1175, metadata !DIExpression()), !dbg !1206
  %8 = fmul double %0, 2.000000e+00, !dbg !1209
  %9 = fmul double %8, %1, !dbg !1210
  tail call void @llvm.dbg.value(metadata double %9, metadata !1176, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !1211
  %10 = call fastcc i32 @CLeta(double noundef 0.000000e+00, double noundef %0, ptr noundef nonnull %5), !dbg !1212
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1178, metadata !DIExpression()), !dbg !1206
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1213
  %11 = call i32 @gsl_sf_psi_1piy_e(double noundef %0, ptr noundef nonnull %6) #8, !dbg !1214
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1180, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1181, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %1, metadata !1182, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1184, metadata !DIExpression()), !dbg !1206
  %12 = load double, ptr %6, align 8, !dbg !1215, !tbaa !98
  %handler_result = call double @fAddHandlerDouble(double %12, double 0x3FC3C467E37DB0C8), !dbg !1216
  %13 = fmul double %9, %handler_result, !dbg !1216
  tail call void @llvm.dbg.value(metadata double %13, metadata !1185, metadata !DIExpression()), !dbg !1206
  %handler_result1 = call double @fAddHandlerDouble(double %1, double 0.000000e+00), !dbg !1217
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1187, metadata !DIExpression()), !dbg !1206
  %handler_result2 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !1218
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1188, metadata !DIExpression()), !dbg !1206
  %14 = call double @llvm.fabs.f64(double %handler_result1), !dbg !1218
  tail call void @llvm.dbg.value(metadata double %14, metadata !1189, metadata !DIExpression()), !dbg !1206
  %15 = call double @llvm.fabs.f64(double %handler_result2), !dbg !1219
  tail call void @llvm.dbg.value(metadata double %15, metadata !1190, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1191, metadata !DIExpression()), !dbg !1206
  %16 = fmul double %14, 0x3CC0000000000000, !dbg !1220
  tail call void @llvm.dbg.value(metadata double %16, metadata !1192, metadata !DIExpression()), !dbg !1206
  %17 = fmul double %15, 0x3CC0000000000000, !dbg !1221
  tail call void @llvm.dbg.value(metadata double %17, metadata !1193, metadata !DIExpression()), !dbg !1206
  %18 = fmul double %1, 2.000000e+00, !dbg !1222
  %handler_result20 = call double @callHandler(i32 12, double %18, double %18), !dbg !1223
  tail call void @llvm.dbg.value(metadata double %handler_result20, metadata !1194, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1181, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %1, metadata !1182, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1184, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %13, metadata !1185, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1187, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !1188, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %14, metadata !1189, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %17, metadata !1193, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %16, metadata !1192, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1191, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %15, metadata !1190, metadata !DIExpression()), !dbg !1206
  br label %19, !dbg !1223

19:                                               ; preds = %61, %4
  %20 = phi double [ 0.000000e+00, %4 ], [ %21, %61 ]
  %21 = phi double [ %1, %4 ], [ %35, %61 ]
  %22 = phi double [ 1.000000e+00, %4 ], [ %23, %61 ]
  %23 = phi double [ %13, %4 ], [ %43, %61 ]
  %24 = phi double [ %handler_result1, %4 ], [ %handler_result7, %61 ]
  %25 = phi double [ %handler_result2, %4 ], [ %handler_result8, %61 ]
  %26 = phi double [ %14, %4 ], [ %44, %61 ]
  %27 = phi double [ %17, %4 ], [ %handler_result10, %61 ]
  %28 = phi double [ %16, %4 ], [ %handler_result9, %61 ]
  %29 = phi i32 [ 2, %4 ], [ %62, %61 ]
  %30 = phi double [ %15, %4 ], [ %45, %61 ]
  tail call void @llvm.dbg.value(metadata double %20, metadata !1181, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %21, metadata !1182, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %22, metadata !1184, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %23, metadata !1185, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %24, metadata !1187, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %25, metadata !1188, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %26, metadata !1189, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %27, metadata !1193, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %28, metadata !1192, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1191, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %30, metadata !1190, metadata !DIExpression()), !dbg !1206
  %31 = sitofp i32 %29 to double, !dbg !1224
  %handler_result3 = call double @fAddHandlerDouble(double %31, double -1.000000e+00), !dbg !1225
  %32 = fmul double %handler_result3, %31, !dbg !1225
  tail call void @llvm.dbg.value(metadata double %32, metadata !1198, metadata !DIExpression()), !dbg !1226
  %33 = fmul double %9, %21, !dbg !1227
  %34 = fmul double %7, %20, !dbg !1228
  %handler_result4 = call double @fSubHandlerDouble(double %33, double %34), !dbg !1229
  %35 = fdiv double %handler_result4, %32, !dbg !1229
  tail call void @llvm.dbg.value(metadata double %35, metadata !1183, metadata !DIExpression()), !dbg !1206
  %36 = fmul double %9, %23, !dbg !1230
  %37 = fmul double %7, %22, !dbg !1231
  %handler_result5 = call double @fSubHandlerDouble(double %36, double %37), !dbg !1232
  %38 = shl nuw nsw i32 %29, 1, !dbg !1232
  %39 = add nsw i32 %38, -1, !dbg !1233
  %40 = sitofp i32 %39 to double, !dbg !1234
  %41 = fmul double %8, %40, !dbg !1235
  %42 = fmul double %41, %35, !dbg !1236
  %handler_result6 = call double @fSubHandlerDouble(double %handler_result5, double %42), !dbg !1237
  %43 = fdiv double %handler_result6, %32, !dbg !1237
  tail call void @llvm.dbg.value(metadata double %43, metadata !1186, metadata !DIExpression()), !dbg !1206
  %handler_result7 = call double @fAddHandlerDouble(double %24, double %35), !dbg !1238
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1187, metadata !DIExpression()), !dbg !1206
  %handler_result8 = call double @fAddHandlerDouble(double %25, double %43), !dbg !1239
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1188, metadata !DIExpression()), !dbg !1206
  %44 = call double @llvm.fabs.f64(double %35), !dbg !1239
  tail call void @llvm.dbg.value(metadata double %44, metadata !1195, metadata !DIExpression()), !dbg !1226
  %45 = call double @llvm.fabs.f64(double %43), !dbg !1240
  tail call void @llvm.dbg.value(metadata double %45, metadata !1197, metadata !DIExpression()), !dbg !1226
  %46 = fmul double %44, 0x3CC0000000000000, !dbg !1241
  %handler_result9 = call double @fAddHandlerDouble(double %28, double %46), !dbg !1242
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1192, metadata !DIExpression()), !dbg !1206
  %47 = fmul double %45, 0x3CC0000000000000, !dbg !1242
  %handler_result10 = call double @fAddHandlerDouble(double %27, double %47), !dbg !1243
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !1193, metadata !DIExpression()), !dbg !1206
  %48 = icmp ugt i32 %29, 15, !dbg !1243
  br i1 %48, label %49, label %61, !dbg !1244

49:                                               ; preds = %19
  %50 = fcmp ogt double %44, %26, !dbg !1245
  %51 = select i1 %50, double %44, double %26, !dbg !1245
  tail call void @llvm.dbg.value(metadata double %51, metadata !1199, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata double poison, metadata !1202, metadata !DIExpression()), !dbg !1246
  %52 = call double @llvm.fabs.f64(double %handler_result7), !dbg !1247
  tail call void @llvm.dbg.value(metadata double %52, metadata !1203, metadata !DIExpression()), !dbg !1246
  tail call void @llvm.dbg.value(metadata double poison, metadata !1204, metadata !DIExpression()), !dbg !1246
  %handler_result11 = call double @fAddHandlerDouble(double %52, double %51), !dbg !1248
  %53 = fdiv double %51, %handler_result11, !dbg !1248
  %54 = fcmp olt double %53, 0x3D04000000000000, !dbg !1250
  br i1 %54, label %55, label %61, !dbg !1251

55:                                               ; preds = %49
  %56 = call double @llvm.fabs.f64(double %handler_result8), !dbg !1252
  tail call void @llvm.dbg.value(metadata double %56, metadata !1204, metadata !DIExpression()), !dbg !1246
  %57 = fcmp ogt double %45, %30, !dbg !1253
  %58 = select i1 %57, double %45, double %30, !dbg !1253
  tail call void @llvm.dbg.value(metadata double %58, metadata !1202, metadata !DIExpression()), !dbg !1246
  %handler_result12 = call double @fAddHandlerDouble(double %56, double %58), !dbg !1254
  %59 = fdiv double %58, %handler_result12, !dbg !1254
  %60 = fcmp olt double %59, 0x3D04000000000000, !dbg !1255
  br i1 %60, label %67, label %61, !dbg !1256

61:                                               ; preds = %55, %49, %19
  tail call void @llvm.dbg.value(metadata double %44, metadata !1189, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %45, metadata !1190, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %21, metadata !1181, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %35, metadata !1182, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %23, metadata !1184, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %43, metadata !1185, metadata !DIExpression()), !dbg !1206
  %62 = add nuw nsw i32 %29, 1, !dbg !1257
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1187, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1188, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !1193, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1192, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !1191, metadata !DIExpression()), !dbg !1206
  %63 = icmp eq i32 %62, 800, !dbg !1258
  br i1 %63, label %64, label %19, !dbg !1223

64:                                               ; preds = %61
  %65 = call double @llvm.fabs.f64(double %handler_result7), !dbg !1259
  %66 = call double @llvm.fabs.f64(double %handler_result8), !dbg !1260
  br label %69, !dbg !1223

67:                                               ; preds = %55
  %68 = icmp eq i32 %29, 800, !dbg !1261
  br label %69, !dbg !1263

69:                                               ; preds = %67, %64
  %70 = phi double [ %56, %67 ], [ %66, %64 ], !dbg !1260
  %71 = phi double [ %52, %67 ], [ %65, %64 ], !dbg !1259
  %72 = phi i1 [ %68, %67 ], [ true, %64 ], !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !1187, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1188, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !1193, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1192, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i1 %72, metadata !1191, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1206
  %73 = load double, ptr %5, align 8, !dbg !1263, !tbaa !98
  %74 = fmul double %handler_result7, %73, !dbg !1264
  store double %74, ptr %2, align 8, !dbg !1265, !tbaa !98
  %75 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1266
  %76 = load double, ptr %75, align 8, !dbg !1266, !tbaa !103
  %77 = fmul double %71, %76, !dbg !1267
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1268
  %79 = call double @llvm.fabs.f64(double %73), !dbg !1269
  %80 = fmul double %handler_result9, %79, !dbg !1270
  %handler_result13 = call double @fAddHandlerDouble(double %80, double %77), !dbg !1271
  %81 = call double @llvm.fabs.f64(double %74), !dbg !1271
  %82 = fmul double %81, 0x3CC0000000000000, !dbg !1272
  %handler_result14 = call double @fAddHandlerDouble(double %82, double %handler_result13), !dbg !1273
  store double %handler_result14, ptr %78, align 8, !dbg !1273, !tbaa !103
  %83 = fmul double %8, %handler_result7, !dbg !1274
  %84 = fmul double %handler_result20, %83, !dbg !1275
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result8, double %84), !dbg !1276
  %85 = fdiv double %handler_result15, %73, !dbg !1276
  store double %85, ptr %3, align 8, !dbg !1277, !tbaa !98
  %86 = call double @llvm.fabs.f64(double %84), !dbg !1278
  %handler_result16 = call double @fAddHandlerDouble(double %70, double %86), !dbg !1279
  %87 = fdiv double %handler_result16, %79, !dbg !1279
  %88 = fdiv double %76, %73, !dbg !1280
  %89 = call double @llvm.fabs.f64(double %88), !dbg !1281
  %90 = fmul double %87, %89, !dbg !1282
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1283
  %92 = fmul double %8, %handler_result9, !dbg !1284
  %93 = fmul double %handler_result20, %92, !dbg !1285
  %94 = call double @llvm.fabs.f64(double %93), !dbg !1286
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result10, double %94), !dbg !1287
  %95 = fdiv double %handler_result17, %79, !dbg !1287
  %handler_result18 = call double @fAddHandlerDouble(double %95, double %90), !dbg !1288
  %96 = call double @llvm.fabs.f64(double %85), !dbg !1288
  %97 = fmul double %96, 0x3CC0000000000000, !dbg !1289
  %handler_result19 = call double @fAddHandlerDouble(double %97, double %handler_result18), !dbg !1290
  store double %handler_result19, ptr %91, align 8, !dbg !1290, !tbaa !103
  br i1 %72, label %98, label %99, !dbg !1291

98:                                               ; preds = %69
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 11) #8, !dbg !1292
  br label %102, !dbg !1292

99:                                               ; preds = %69
  %100 = icmp eq i32 %11, 0, !dbg !1294
  %101 = select i1 %100, i32 %10, i32 %11, !dbg !1294
  br label %102, !dbg !1295

102:                                              ; preds = %99, %98
  %103 = phi i32 [ 11, %98 ], [ %101, %99 ], !dbg !1296
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1297
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !1297
  ret i32 %103, !dbg !1297
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @coulomb_FG_series(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !1298 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1339
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1308, metadata !DIExpression(), metadata !1339, metadata ptr %6, metadata !DIExpression()), !dbg !1340
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1341
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1309, metadata !DIExpression(), metadata !1341, metadata ptr %7, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %0, metadata !1302, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %1, metadata !1303, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %2, metadata !1304, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1305, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1306, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 800, metadata !1307, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !1342
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1343
  %8 = call fastcc i32 @CLeta(double noundef %0, double noundef %1, ptr noundef nonnull %6), !dbg !1344
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1310, metadata !DIExpression()), !dbg !1340
  %handler_result = call double @fSubHandlerDouble(double -1.000000e+00, double %0), !dbg !1345
  %9 = call fastcc i32 @CLeta(double noundef %handler_result, double noundef %1, ptr noundef nonnull %7), !dbg !1345
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1311, metadata !DIExpression()), !dbg !1340
  %10 = fmul double %0, 2.000000e+00, !dbg !1346
  %handler_result1 = call double @fAddHandlerDouble(double %10, double 1.000000e+00), !dbg !1347
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1312, metadata !DIExpression()), !dbg !1340
  %11 = call double @pow(double noundef %2, double noundef %0) #8, !dbg !1347
  tail call void @llvm.dbg.value(metadata double %11, metadata !1313, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1316, metadata !DIExpression()), !dbg !1340
  %12 = fmul double %1, %2, !dbg !1348
  %handler_result2 = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1349
  %13 = fdiv double %12, %handler_result2, !dbg !1349
  tail call void @llvm.dbg.value(metadata double %13, metadata !1317, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1319, metadata !DIExpression()), !dbg !1340
  %14 = fneg double %2, !dbg !1350
  %15 = fmul double %14, %1, !dbg !1351
  %16 = fdiv double %15, %0, !dbg !1352
  tail call void @llvm.dbg.value(metadata double %16, metadata !1320, metadata !DIExpression()), !dbg !1340
  %handler_result3 = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !1353
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1322, metadata !DIExpression()), !dbg !1340
  %handler_result4 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !1354
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1323, metadata !DIExpression()), !dbg !1340
  %17 = call double @llvm.fabs.f64(double %handler_result3), !dbg !1354
  tail call void @llvm.dbg.value(metadata double %17, metadata !1324, metadata !DIExpression()), !dbg !1340
  %18 = call double @llvm.fabs.f64(double %handler_result4), !dbg !1355
  tail call void @llvm.dbg.value(metadata double %18, metadata !1325, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1328, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata double %0, metadata !1356, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata double %1, metadata !1361, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr undef, metadata !1362, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr undef, metadata !1363, metadata !DIExpression()), !dbg !1373
  %19 = fcmp ogt double %1, 0x40915EFC686FD866, !dbg !1375
  br i1 %19, label %45, label %20, !dbg !1376

20:                                               ; preds = %5
  %21 = fcmp ogt double %1, 0x4006F233C496DA5E, !dbg !1377
  br i1 %21, label %22, label %33, !dbg !1378

22:                                               ; preds = %20
  %23 = fmul double %1, 0xC01921FB54442D18, !dbg !1379
  %24 = call double @exp(double noundef %23) #8, !dbg !1380
  %25 = fmul double %24, 2.000000e+00, !dbg !1381
  call void @llvm.dbg.value(metadata double %25, metadata !1364, metadata !DIExpression()), !dbg !1382
  %26 = fmul double %0, 0x400921FB54442D18, !dbg !1383
  %handler_result21 = call double @callHandler(i32 3, double %26, double %26), !dbg !1384
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !1368, metadata !DIExpression()), !dbg !1382
  %27 = fmul double %25, %handler_result21, !dbg !1384
  %28 = fmul double %handler_result21, %handler_result21, !dbg !1385
  %handler_result5 = call double @fAddHandlerDouble(double %28, double 1.000000e+00), !dbg !1386
  %29 = fdiv double %27, %handler_result5, !dbg !1386
  call void @llvm.dbg.value(metadata double %29, metadata !1369, metadata !DIExpression()), !dbg !1382
  %30 = fmul double %29, 5.000000e-01, !dbg !1387
  %31 = fmul double %29, %30, !dbg !1388
  %handler_result6 = call double @fAddHandlerDouble(double %31, double -1.000000e+00), !dbg !1389
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1314, metadata !DIExpression()), !dbg !1340
  %32 = fneg double %29, !dbg !1389
  tail call void @llvm.dbg.value(metadata double %32, metadata !1315, metadata !DIExpression()), !dbg !1340
  br label %41

33:                                               ; preds = %20
  %34 = fmul double %1, 0x400921FB54442D18, !dbg !1390
  %35 = call double @tanh(double noundef %34) #8, !dbg !1391
  %36 = fmul double %0, 0x400921FB54442D18, !dbg !1392
  %handler_result22 = call double @callHandler(i32 3, double %36, double %36), !dbg !1393
  %37 = fdiv double %35, %handler_result22, !dbg !1393
  call void @llvm.dbg.value(metadata double %37, metadata !1370, metadata !DIExpression()), !dbg !1394
  %38 = call double @atan(double noundef %37) #8, !dbg !1395
  %39 = fneg double %38, !dbg !1396
  %handler_result7 = call double @fAddHandlerDouble(double %0, double 5.000000e-01), !dbg !1397
  %40 = fmul double %handler_result7, 0x400921FB54442D18, !dbg !1397
  %handler_result8 = call double @fSubHandlerDouble(double %39, double %40), !dbg !1398
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !1372, metadata !DIExpression()), !dbg !1394
  %handler_result23 = call double @callHandler(i32 2, double %handler_result8, double %handler_result8), !dbg !1399
  tail call void @llvm.dbg.value(metadata double %handler_result23, metadata !1314, metadata !DIExpression()), !dbg !1340
  %handler_result24 = call double @callHandler(i32 1, double %handler_result8, double %handler_result8)
  tail call void @llvm.dbg.value(metadata double %handler_result24, metadata !1315, metadata !DIExpression()), !dbg !1340
  br label %41

41:                                               ; preds = %33, %22
  %42 = phi double [ %handler_result6, %22 ], [ %handler_result23, %33 ], !dbg !1400
  %43 = phi double [ %32, %22 ], [ %handler_result24, %33 ], !dbg !1400
  tail call void @llvm.dbg.value(metadata double %43, metadata !1315, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %42, metadata !1314, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1329, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1316, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %13, metadata !1317, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1319, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %16, metadata !1320, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1322, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1323, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1328, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %17, metadata !1324, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %18, metadata !1325, metadata !DIExpression()), !dbg !1340
  %44 = fmul double %1, 2.000000e+00
  br label %47, !dbg !1401

45:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1314, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1315, metadata !DIExpression()), !dbg !1340
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 242, i32 noundef 15) #8, !dbg !1402
  tail call void @llvm.dbg.value(metadata double poison, metadata !1315, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double poison, metadata !1314, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 15, metadata !1329, metadata !DIExpression()), !dbg !1340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !1405
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !1408, !tbaa !98
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1408
  store double 0x7FF0000000000000, ptr %46, align 8, !dbg !1408, !tbaa !103
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 308, i32 noundef 16) #8, !dbg !1410
  br label %127, !dbg !1410

47:                                               ; preds = %83, %41
  %48 = phi double [ 1.000000e+00, %41 ], [ %49, %83 ]
  %49 = phi double [ %13, %41 ], [ %62, %83 ]
  %50 = phi double [ 1.000000e+00, %41 ], [ %51, %83 ]
  %51 = phi double [ %16, %41 ], [ %67, %83 ]
  %52 = phi double [ %handler_result3, %41 ], [ %handler_result13, %83 ]
  %53 = phi double [ %handler_result4, %41 ], [ %handler_result14, %83 ]
  %54 = phi i32 [ 2, %41 ], [ %84, %83 ]
  %55 = phi double [ %17, %41 ], [ %68, %83 ]
  %56 = phi double [ %18, %41 ], [ %69, %83 ]
  tail call void @llvm.dbg.value(metadata double %48, metadata !1316, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %49, metadata !1317, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %50, metadata !1319, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %51, metadata !1320, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %52, metadata !1322, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %53, metadata !1323, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 %54, metadata !1328, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %55, metadata !1324, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %56, metadata !1325, metadata !DIExpression()), !dbg !1340
  %57 = fmul double %44, %49, !dbg !1412
  %58 = fmul double %48, %2, !dbg !1413
  %handler_result9 = call double @fSubHandlerDouble(double %57, double %58), !dbg !1414
  %59 = fmul double %handler_result9, %2, !dbg !1414
  %60 = sitofp i32 %54 to double, !dbg !1415
  %handler_result10 = call double @fAddHandlerDouble(double %handler_result1, double %60), !dbg !1416
  %61 = fmul double %handler_result10, %60, !dbg !1416
  %62 = fdiv double %59, %61, !dbg !1417
  tail call void @llvm.dbg.value(metadata double %62, metadata !1318, metadata !DIExpression()), !dbg !1340
  %63 = fmul double %44, %51, !dbg !1418
  %64 = fmul double %50, %2, !dbg !1419
  %handler_result11 = call double @fSubHandlerDouble(double %63, double %64), !dbg !1420
  %65 = fmul double %handler_result11, %2, !dbg !1420
  %handler_result12 = call double @fSubHandlerDouble(double %60, double %handler_result1), !dbg !1421
  %66 = fmul double %handler_result12, %60, !dbg !1421
  %67 = fdiv double %65, %66, !dbg !1422
  tail call void @llvm.dbg.value(metadata double %67, metadata !1321, metadata !DIExpression()), !dbg !1340
  %handler_result13 = call double @fAddHandlerDouble(double %52, double %62), !dbg !1423
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !1322, metadata !DIExpression()), !dbg !1340
  %handler_result14 = call double @fAddHandlerDouble(double %53, double %67), !dbg !1424
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !1323, metadata !DIExpression()), !dbg !1340
  %68 = call double @llvm.fabs.f64(double %62), !dbg !1424
  tail call void @llvm.dbg.value(metadata double %68, metadata !1330, metadata !DIExpression()), !dbg !1425
  %69 = call double @llvm.fabs.f64(double %67), !dbg !1426
  tail call void @llvm.dbg.value(metadata double %69, metadata !1332, metadata !DIExpression()), !dbg !1425
  %70 = icmp ugt i32 %54, 15, !dbg !1427
  br i1 %70, label %71, label %83, !dbg !1428

71:                                               ; preds = %47
  %72 = fcmp ogt double %68, %55, !dbg !1429
  %73 = select i1 %72, double %68, double %55, !dbg !1429
  tail call void @llvm.dbg.value(metadata double %73, metadata !1333, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata double poison, metadata !1336, metadata !DIExpression()), !dbg !1430
  %74 = call double @llvm.fabs.f64(double %handler_result13), !dbg !1431
  tail call void @llvm.dbg.value(metadata double %74, metadata !1337, metadata !DIExpression()), !dbg !1430
  tail call void @llvm.dbg.value(metadata double poison, metadata !1338, metadata !DIExpression()), !dbg !1430
  %handler_result15 = call double @fAddHandlerDouble(double %74, double %73), !dbg !1432
  %75 = fdiv double %73, %handler_result15, !dbg !1432
  %76 = fcmp olt double %75, 0x3CD0000000000000, !dbg !1434
  br i1 %76, label %77, label %83, !dbg !1435

77:                                               ; preds = %71
  %78 = call double @llvm.fabs.f64(double %handler_result14), !dbg !1436
  tail call void @llvm.dbg.value(metadata double %78, metadata !1338, metadata !DIExpression()), !dbg !1430
  %79 = fcmp ogt double %69, %56, !dbg !1437
  %80 = select i1 %79, double %69, double %56, !dbg !1437
  tail call void @llvm.dbg.value(metadata double %80, metadata !1336, metadata !DIExpression()), !dbg !1430
  %handler_result16 = call double @fAddHandlerDouble(double %78, double %80), !dbg !1438
  %81 = fdiv double %80, %handler_result16, !dbg !1438
  %82 = fcmp olt double %81, 0x3CD0000000000000, !dbg !1439
  br i1 %82, label %89, label %83, !dbg !1440

83:                                               ; preds = %77, %71, %47
  tail call void @llvm.dbg.value(metadata double %68, metadata !1324, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %69, metadata !1325, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %49, metadata !1316, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %62, metadata !1317, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %51, metadata !1319, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %67, metadata !1320, metadata !DIExpression()), !dbg !1340
  %84 = add nuw nsw i32 %54, 1, !dbg !1441
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !1322, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !1323, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata i32 %84, metadata !1328, metadata !DIExpression()), !dbg !1340
  %85 = icmp eq i32 %84, 800, !dbg !1442
  br i1 %85, label %86, label %47, !dbg !1401

86:                                               ; preds = %83
  %87 = call double @llvm.fabs.f64(double %handler_result13), !dbg !1443
  %88 = call double @llvm.fabs.f64(double %handler_result14), !dbg !1444
  br label %91, !dbg !1401

89:                                               ; preds = %77
  %90 = icmp ugt i32 %54, 799, !dbg !1445
  br label %91, !dbg !1447

91:                                               ; preds = %89, %86
  %92 = phi double [ %78, %89 ], [ %88, %86 ], !dbg !1444
  %93 = phi double [ %74, %89 ], [ %87, %86 ], !dbg !1443
  %94 = phi i1 [ %90, %89 ], [ true, %86 ], !dbg !1340
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !1322, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !1323, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata i1 %94, metadata !1328, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1340
  %95 = load double, ptr %6, align 8, !dbg !1447, !tbaa !98
  %96 = fmul double %handler_result13, %95, !dbg !1448
  %97 = fmul double %11, %96, !dbg !1449
  %98 = fmul double %97, %2, !dbg !1450
  tail call void @llvm.dbg.value(metadata double %98, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1340
  %99 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1451
  %100 = load double, ptr %99, align 8, !dbg !1451, !tbaa !103
  %101 = fmul double %93, %100, !dbg !1452
  %102 = fmul double %11, %101, !dbg !1453
  %103 = fmul double %102, %2, !dbg !1454
  %104 = call double @llvm.fabs.f64(double %98), !dbg !1455
  %105 = fmul double %104, 0x3CC0000000000000, !dbg !1456
  %handler_result17 = call double @fAddHandlerDouble(double %103, double %105), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !1326, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1340
  %106 = load double, ptr %7, align 8, !dbg !1457, !tbaa !98
  %107 = fmul double %handler_result14, %106, !dbg !1458
  %108 = fdiv double %107, %11, !dbg !1459
  tail call void @llvm.dbg.value(metadata double %108, metadata !1327, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1340
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1460
  %110 = load double, ptr %109, align 8, !dbg !1460, !tbaa !103
  %111 = fmul double %92, %110, !dbg !1461
  %112 = fdiv double %111, %11, !dbg !1462
  %113 = call double @llvm.fabs.f64(double %108), !dbg !1463
  %114 = fmul double %113, 0x3CC0000000000000, !dbg !1464
  %handler_result18 = call double @fAddHandlerDouble(double %112, double %114), !dbg !1465
  tail call void @llvm.dbg.value(metadata double %handler_result18, metadata !1327, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1340
  store double %98, ptr %3, align 8, !dbg !1465, !tbaa !98
  %115 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1466
  store double %handler_result17, ptr %115, align 8, !dbg !1467, !tbaa !103
  %116 = fmul double %42, %98, !dbg !1468
  %handler_result19 = call double @fSubHandlerDouble(double %116, double %108), !dbg !1469
  %117 = fdiv double %handler_result19, %43, !dbg !1469
  store double %117, ptr %4, align 8, !dbg !1470, !tbaa !98
  %118 = call double @llvm.fabs.f64(double %42), !dbg !1471
  %119 = fmul double %118, %handler_result17, !dbg !1472
  %handler_result20 = call double @fAddHandlerDouble(double %119, double %handler_result18), !dbg !1473
  %120 = call double @llvm.fabs.f64(double %43), !dbg !1473
  %121 = fdiv double %handler_result20, %120, !dbg !1474
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1475
  store double %121, ptr %122, align 8, !dbg !1476, !tbaa !103
  br i1 %94, label %123, label %124, !dbg !1477

123:                                              ; preds = %91
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 356, i32 noundef 11) #8, !dbg !1478
  br label %127, !dbg !1478

124:                                              ; preds = %91
  %125 = icmp eq i32 %8, 0, !dbg !1480
  %126 = select i1 %125, i32 %9, i32 %8, !dbg !1480
  br label %127, !dbg !1481

127:                                              ; preds = %124, %123, %45
  %128 = phi i32 [ 16, %45 ], [ 11, %123 ], [ %126, %124 ], !dbg !1340
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1482
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !1482
  ret i32 %128, !dbg !1482
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @coulomb_jwkb(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !dbg !1483 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1508
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1506, metadata !DIExpression(), metadata !1508, metadata ptr %7, metadata !DIExpression()), !dbg !1509
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1510
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1507, metadata !DIExpression(), metadata !1510, metadata ptr %8, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata double %0, metadata !1487, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata double %1, metadata !1488, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata double %2, metadata !1489, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1490, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1491, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1492, metadata !DIExpression()), !dbg !1509
  %handler_result = call double @fAddHandlerDouble(double %0, double 1.000000e+00), !dbg !1511
  %9 = fmul double %handler_result, %0, !dbg !1511
  %handler_result1 = call double @fAddHandlerDouble(double %9, double 0x3FC5F15F15F15F16), !dbg !1512
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1493, metadata !DIExpression()), !dbg !1509
  %10 = fcmp ogt double %handler_result1, 0.000000e+00, !dbg !1512
  %11 = select i1 %10, double %handler_result1, double 0.000000e+00, !dbg !1512
  tail call void @llvm.dbg.value(metadata double %11, metadata !1494, metadata !DIExpression()), !dbg !1509
  %12 = fmul double %1, 2.000000e+00, !dbg !1513
  %handler_result2 = call double @fSubHandlerDouble(double %12, double %2), !dbg !1514
  %13 = fmul double %handler_result2, %2, !dbg !1514
  %handler_result3 = call double @fAddHandlerDouble(double %13, double %11), !dbg !1515
  %14 = tail call double @sqrt(double noundef %handler_result3) #8, !dbg !1515
  tail call void @llvm.dbg.value(metadata double %14, metadata !1495, metadata !DIExpression()), !dbg !1509
  %15 = fmul double %1, %1, !dbg !1516
  %handler_result4 = call double @fAddHandlerDouble(double %15, double %11), !dbg !1517
  %16 = fdiv double %11, %handler_result4, !dbg !1517
  %17 = tail call double @llvm.sqrt.f64(double %16), !dbg !1518
  %18 = fmul double %17, %14, !dbg !1519
  %19 = fdiv double %18, %2, !dbg !1520
  tail call void @llvm.dbg.value(metadata double %19, metadata !1496, metadata !DIExpression()), !dbg !1509
  %20 = tail call double @hypot(double noundef 1.000000e+00, double noundef %19) #8, !dbg !1521
  %handler_result5 = call double @fAddHandlerDouble(double %20, double %19), !dbg !1522
  %handler_result11 = call double @callHandler(i32 12, double %handler_result5, double %handler_result5), !dbg !1523
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !1497, metadata !DIExpression()), !dbg !1509
  %handler_result6 = call double @fSubHandlerDouble(double %2, double %1), !dbg !1523
  %21 = tail call double @atan2(double noundef %14, double noundef %handler_result6) #8, !dbg !1523
  %22 = fmul double %21, %1, !dbg !1524
  %handler_result7 = call double @fSubHandlerDouble(double %14, double %22), !dbg !1525
  %23 = tail call double @llvm.sqrt.f64(double %11), !dbg !1525
  %24 = fmul double %23, %handler_result11, !dbg !1526
  %handler_result8 = call double @fSubHandlerDouble(double %handler_result7, double %24), !dbg !1527
  %25 = tail call double @llvm.fabs.f64(double %handler_result8), !dbg !1527
  tail call void @llvm.dbg.value(metadata double %25, metadata !1498, metadata !DIExpression()), !dbg !1509
  %26 = fmul double %25, 3.000000e+00, !dbg !1528
  %27 = fmul double %26, 5.000000e-01, !dbg !1529
  %28 = tail call double @pow(double noundef %27, double noundef 0x3FD5555555555555) #8, !dbg !1530
  tail call void @llvm.dbg.value(metadata double %28, metadata !1499, metadata !DIExpression()), !dbg !1509
  %29 = fmul double %25, 0x400921FB54442D18, !dbg !1531
  %30 = fmul double %29, %2, !dbg !1532
  %31 = fmul double %14, 6.000000e+00, !dbg !1533
  %32 = fdiv double %30, %31, !dbg !1534
  %33 = tail call double @sqrt(double noundef %32) #8, !dbg !1535
  tail call void @llvm.dbg.value(metadata double %33, metadata !1500, metadata !DIExpression()), !dbg !1509
  %34 = fmul double %33, 3.000000e+00, !dbg !1536
  %35 = fdiv double %34, %28, !dbg !1537
  tail call void @llvm.dbg.value(metadata double %35, metadata !1501, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata double %35, metadata !1502, metadata !DIExpression()), !dbg !1509
  tail call void @llvm.dbg.value(metadata double %25, metadata !1505, metadata !DIExpression()), !dbg !1509
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1538
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1539
  %36 = fmul double %28, %28, !dbg !1540
  %37 = call i32 @gsl_sf_airy_Ai_scaled_e(double noundef %36, i32 noundef 0, ptr noundef nonnull %7) #8, !dbg !1541
  %38 = call i32 @gsl_sf_airy_Bi_scaled_e(double noundef %36, i32 noundef 0, ptr noundef nonnull %8) #8, !dbg !1542
  %39 = load double, ptr %7, align 8, !dbg !1543, !tbaa !98
  %40 = fmul double %35, %39, !dbg !1544
  tail call void @llvm.dbg.value(metadata double %40, metadata !1501, metadata !DIExpression()), !dbg !1509
  %41 = load double, ptr %8, align 8, !dbg !1545, !tbaa !98
  %42 = fmul double %35, %41, !dbg !1546
  tail call void @llvm.dbg.value(metadata double %42, metadata !1502, metadata !DIExpression()), !dbg !1509
  %handler_result12 = call double @callHandler(i32 12, double %40, double %40), !dbg !1547
  tail call void @llvm.dbg.value(metadata double poison, metadata !1503, metadata !DIExpression()), !dbg !1509
  %handler_result13 = call double @callHandler(i32 12, double %42, double %42), !dbg !1548
  %handler_result9 = call double @fAddHandlerDouble(double %25, double %handler_result13), !dbg !1548
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !1504, metadata !DIExpression()), !dbg !1509
  %43 = fcmp ult double %handler_result9, 0x40862E42FEFA39EF, !dbg !1548
  br i1 %43, label %51, label %44, !dbg !1550

44:                                               ; preds = %6
  store double %40, ptr %3, align 8, !dbg !1551, !tbaa !98
  store double %42, ptr %4, align 8, !dbg !1553, !tbaa !98
  %45 = call double @llvm.fabs.f64(double %40), !dbg !1554
  %46 = fmul double %45, 1.000000e-03, !dbg !1555
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1556
  store double %46, ptr %47, align 8, !dbg !1557, !tbaa !103
  %48 = call double @llvm.fabs.f64(double %42), !dbg !1558
  %49 = fmul double %48, 1.000000e-03, !dbg !1559
  %50 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1560
  store double %49, ptr %50, align 8, !dbg !1561, !tbaa !103
  store double %25, ptr %5, align 8, !dbg !1562, !tbaa !256
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 858, i32 noundef 16) #8, !dbg !1563
  br label %61, !dbg !1563

51:                                               ; preds = %6
  %handler_result10 = call double @fSubHandlerDouble(double %handler_result12, double %25), !dbg !1565
  tail call void @llvm.dbg.value(metadata double %handler_result10, metadata !1503, metadata !DIExpression()), !dbg !1509
  %52 = call double @exp(double noundef %handler_result10) #8, !dbg !1565
  store double %52, ptr %3, align 8, !dbg !1567, !tbaa !98
  %53 = call double @exp(double noundef %handler_result9) #8, !dbg !1568
  store double %53, ptr %4, align 8, !dbg !1569, !tbaa !98
  %54 = load double, ptr %3, align 8, !dbg !1570, !tbaa !98
  %55 = call double @llvm.fabs.f64(double %54), !dbg !1571
  %56 = fmul double %55, 1.000000e-03, !dbg !1572
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1573
  store double %56, ptr %57, align 8, !dbg !1574, !tbaa !103
  %58 = call double @llvm.fabs.f64(double %53), !dbg !1575
  %59 = fmul double %58, 1.000000e-03, !dbg !1576
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1577
  store double %59, ptr %60, align 8, !dbg !1578, !tbaa !103
  store double 0.000000e+00, ptr %5, align 8, !dbg !1579, !tbaa !256
  br label %61, !dbg !1580

61:                                               ; preds = %51, %44
  %62 = phi i32 [ 16, %44 ], [ 0, %51 ], !dbg !1581
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1582
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1582
  ret i32 %62, !dbg !1582
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_F_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !1583 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1619
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1596, metadata !DIExpression(), metadata !1619, metadata ptr %7, metadata !DIExpression()), !dbg !1620
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1621
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1602, metadata !DIExpression(), metadata !1621, metadata ptr %8, metadata !DIExpression()), !dbg !1622
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1623
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1603, metadata !DIExpression(), metadata !1623, metadata ptr %9, metadata !DIExpression()), !dbg !1622
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1624
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1604, metadata !DIExpression(), metadata !1624, metadata ptr %10, metadata !DIExpression()), !dbg !1622
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1625
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1605, metadata !DIExpression(), metadata !1625, metadata ptr %11, metadata !DIExpression()), !dbg !1622
  %12 = alloca double, align 8, !DIAssignID !1626
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1606, metadata !DIExpression(), metadata !1626, metadata ptr %12, metadata !DIExpression()), !dbg !1622
  tail call void @llvm.dbg.value(metadata double %0, metadata !1587, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1588, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata double %2, metadata !1589, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata double %3, metadata !1590, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1591, metadata !DIExpression()), !dbg !1627
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1592, metadata !DIExpression()), !dbg !1627
  %13 = fcmp oeq double %3, 0.000000e+00, !dbg !1628
  br i1 %13, label %14, label %25, !dbg !1629

14:                                               ; preds = %6
  store double 0.000000e+00, ptr %5, align 8, !dbg !1630, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1593, metadata !DIExpression()), !dbg !1631
  %15 = icmp slt i32 %1, 0, !dbg !1632
  br i1 %15, label %20, label %16, !dbg !1635

16:                                               ; preds = %14
  %17 = add nuw i32 %1, 1, !dbg !1635
  %18 = zext i32 %17 to i64, !dbg !1635
  %19 = shl nuw nsw i64 %18, 3, !dbg !1635
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %19, i1 false), !dbg !1636, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1593, metadata !DIExpression()), !dbg !1631
  br label %20, !dbg !1638

20:                                               ; preds = %16, %14
  %21 = fcmp oeq double %0, 0.000000e+00, !dbg !1638
  br i1 %21, label %22, label %52, !dbg !1639

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1640
  %23 = call fastcc i32 @CLeta(double noundef 0.000000e+00, double noundef %2, ptr noundef nonnull %7), !dbg !1641
  %24 = load double, ptr %7, align 8, !dbg !1642, !tbaa !98
  store double %24, ptr %4, align 8, !dbg !1643, !tbaa !256
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1644
  br label %52, !dbg !1645

25:                                               ; preds = %6
  %26 = fdiv double 1.000000e+00, %3, !dbg !1646
  tail call void @llvm.dbg.value(metadata double %26, metadata !1599, metadata !DIExpression()), !dbg !1622
  %27 = sitofp i32 %1 to double, !dbg !1647
  %handler_result = call double @fAddHandlerDouble(double %27, double %0), !dbg !1648
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1601, metadata !DIExpression()), !dbg !1622
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #8, !dbg !1648
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !1648
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !1649
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !1649
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8, !dbg !1650
  %28 = call i32 @gsl_sf_coulomb_wave_FG_e(double noundef %2, double noundef %3, double noundef %handler_result, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %5, ptr noundef nonnull %12), !dbg !1651
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1607, metadata !DIExpression()), !dbg !1622
  %29 = load double, ptr %8, align 8, !dbg !1652, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %29, metadata !1608, metadata !DIExpression()), !dbg !1622
  %30 = load double, ptr %9, align 8, !dbg !1653, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %30, metadata !1609, metadata !DIExpression()), !dbg !1622
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1610, metadata !DIExpression()), !dbg !1622
  %31 = sext i32 %1 to i64, !dbg !1654
  %32 = getelementptr inbounds double, ptr %4, i64 %31, !dbg !1654
  store double %29, ptr %32, align 8, !dbg !1655, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1611, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1622
  tail call void @llvm.dbg.value(metadata double %29, metadata !1608, metadata !DIExpression()), !dbg !1622
  tail call void @llvm.dbg.value(metadata double %30, metadata !1609, metadata !DIExpression()), !dbg !1622
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1610, metadata !DIExpression()), !dbg !1622
  %33 = icmp sgt i32 %1, 0, !dbg !1656
  br i1 %33, label %34, label %51, !dbg !1657

34:                                               ; preds = %25
  %35 = zext nneg i32 %1 to i64, !dbg !1657
  br label %36, !dbg !1657

36:                                               ; preds = %36, %34
  %37 = phi i64 [ %35, %34 ], [ %41, %36 ]
  %38 = phi double [ %29, %34 ], [ %46, %36 ]
  %39 = phi double [ %30, %34 ], [ %handler_result3, %36 ]
  %40 = phi double [ %handler_result, %34 ], [ %handler_result4, %36 ]
  tail call void @llvm.dbg.value(metadata double %38, metadata !1608, metadata !DIExpression()), !dbg !1622
  tail call void @llvm.dbg.value(metadata double %39, metadata !1609, metadata !DIExpression()), !dbg !1622
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1611, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1622
  tail call void @llvm.dbg.value(metadata double %40, metadata !1610, metadata !DIExpression()), !dbg !1622
  %41 = add nsw i64 %37, -1, !dbg !1658
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !1611, metadata !DIExpression()), !dbg !1622
  %42 = fdiv double %2, %40, !dbg !1659
  tail call void @llvm.dbg.value(metadata double %42, metadata !1612, metadata !DIExpression()), !dbg !1660
  %43 = tail call double @hypot(double noundef 1.000000e+00, double noundef %42) #8, !dbg !1661
  tail call void @llvm.dbg.value(metadata double %43, metadata !1616, metadata !DIExpression()), !dbg !1660
  %44 = fmul double %26, %40, !dbg !1662
  %handler_result1 = call double @fAddHandlerDouble(double %42, double %44), !dbg !1663
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1617, metadata !DIExpression()), !dbg !1660
  %45 = fmul double %handler_result1, %38, !dbg !1663
  %handler_result2 = call double @fAddHandlerDouble(double %39, double %45), !dbg !1664
  %46 = fdiv double %handler_result2, %43, !dbg !1664
  tail call void @llvm.dbg.value(metadata double %46, metadata !1618, metadata !DIExpression()), !dbg !1660
  %47 = getelementptr inbounds double, ptr %4, i64 %41, !dbg !1665
  store double %46, ptr %47, align 8, !dbg !1666, !tbaa !256
  %48 = fmul double %handler_result1, %46, !dbg !1667
  %49 = fmul double %38, %43, !dbg !1668
  %handler_result3 = call double @fSubHandlerDouble(double %48, double %49), !dbg !1669
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1609, metadata !DIExpression()), !dbg !1622
  tail call void @llvm.dbg.value(metadata double %46, metadata !1608, metadata !DIExpression()), !dbg !1622
  %handler_result4 = call double @fAddHandlerDouble(double %40, double -1.000000e+00), !dbg !1656
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !1611, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1622
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1610, metadata !DIExpression()), !dbg !1622
  %50 = icmp ugt i64 %37, 1, !dbg !1656
  br i1 %50, label %36, label %51, !dbg !1657, !llvm.loop !1670

51:                                               ; preds = %36, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !1672
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #8, !dbg !1672
  br label %52

52:                                               ; preds = %51, %22, %20
  %53 = phi i32 [ %28, %51 ], [ 0, %22 ], [ 0, %20 ], !dbg !1673
  ret i32 %53, !dbg !1674
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_FG_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 !dbg !1675 {
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1714
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1689, metadata !DIExpression(), metadata !1714, metadata ptr %9, metadata !DIExpression()), !dbg !1715
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1690, metadata !DIExpression(), metadata !1716, metadata ptr %10, metadata !DIExpression()), !dbg !1715
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1717
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1691, metadata !DIExpression(), metadata !1717, metadata ptr %11, metadata !DIExpression()), !dbg !1715
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1718
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1692, metadata !DIExpression(), metadata !1718, metadata ptr %12, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %0, metadata !1679, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1680, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %2, metadata !1681, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %3, metadata !1682, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1683, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1684, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1685, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1686, metadata !DIExpression()), !dbg !1715
  %13 = fdiv double 1.000000e+00, %3, !dbg !1719
  tail call void @llvm.dbg.value(metadata double %13, metadata !1687, metadata !DIExpression()), !dbg !1715
  %14 = sitofp i32 %1 to double, !dbg !1720
  %handler_result = call double @fAddHandlerDouble(double %14, double %0), !dbg !1721
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1688, metadata !DIExpression()), !dbg !1715
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8, !dbg !1721
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !1721
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !1722
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !1722
  %15 = call i32 @gsl_sf_coulomb_wave_FG_e(double noundef %2, double noundef %3, double noundef %handler_result, i32 noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %6, ptr noundef %7), !dbg !1723
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1693, metadata !DIExpression()), !dbg !1715
  %16 = load double, ptr %9, align 8, !dbg !1724, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %16, metadata !1694, metadata !DIExpression()), !dbg !1715
  %17 = load double, ptr %10, align 8, !dbg !1725, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %17, metadata !1695, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1696, metadata !DIExpression()), !dbg !1715
  %18 = sext i32 %1 to i64, !dbg !1726
  %19 = getelementptr inbounds double, ptr %4, i64 %18, !dbg !1726
  store double %16, ptr %19, align 8, !dbg !1727, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1697, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %16, metadata !1694, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %17, metadata !1695, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1696, metadata !DIExpression()), !dbg !1715
  %20 = icmp sgt i32 %1, 0, !dbg !1728
  br i1 %20, label %23, label %21, !dbg !1729

21:                                               ; preds = %8
  %22 = load double, ptr %11, align 8, !dbg !1730, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %22, metadata !1698, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double poison, metadata !1699, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double poison, metadata !1696, metadata !DIExpression()), !dbg !1715
  store double %22, ptr %5, align 8, !dbg !1731, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1697, metadata !DIExpression()), !dbg !1715
  br label %60, !dbg !1732

23:                                               ; preds = %8
  %24 = zext nneg i32 %1 to i64, !dbg !1729
  br label %25, !dbg !1729

25:                                               ; preds = %25, %23
  %26 = phi i64 [ %24, %23 ], [ %30, %25 ]
  %27 = phi double [ %16, %23 ], [ %35, %25 ]
  %28 = phi double [ %17, %23 ], [ %handler_result3, %25 ]
  %29 = phi double [ %handler_result, %23 ], [ %handler_result4, %25 ]
  tail call void @llvm.dbg.value(metadata double %27, metadata !1694, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %28, metadata !1695, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %29, metadata !1696, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !1697, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1715
  %30 = add nsw i64 %26, -1, !dbg !1733
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1697, metadata !DIExpression()), !dbg !1715
  %31 = fdiv double %2, %29, !dbg !1734
  tail call void @llvm.dbg.value(metadata double %31, metadata !1700, metadata !DIExpression()), !dbg !1735
  %32 = tail call double @hypot(double noundef 1.000000e+00, double noundef %31) #8, !dbg !1736
  tail call void @llvm.dbg.value(metadata double %32, metadata !1704, metadata !DIExpression()), !dbg !1735
  %33 = fmul double %13, %29, !dbg !1737
  %handler_result1 = call double @fAddHandlerDouble(double %31, double %33), !dbg !1738
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1705, metadata !DIExpression()), !dbg !1735
  %34 = fmul double %27, %handler_result1, !dbg !1738
  %handler_result2 = call double @fAddHandlerDouble(double %28, double %34), !dbg !1739
  %35 = fdiv double %handler_result2, %32, !dbg !1739
  tail call void @llvm.dbg.value(metadata double %35, metadata !1706, metadata !DIExpression()), !dbg !1735
  %36 = getelementptr inbounds double, ptr %4, i64 %30, !dbg !1740
  store double %35, ptr %36, align 8, !dbg !1741, !tbaa !256
  %37 = fmul double %handler_result1, %35, !dbg !1742
  %38 = fmul double %27, %32, !dbg !1743
  %handler_result3 = call double @fSubHandlerDouble(double %37, double %38), !dbg !1744
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1695, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %35, metadata !1694, metadata !DIExpression()), !dbg !1715
  %handler_result4 = call double @fAddHandlerDouble(double %29, double -1.000000e+00), !dbg !1728
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1696, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1697, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1715
  %39 = icmp ugt i64 %26, 1, !dbg !1728
  br i1 %39, label %25, label %40, !dbg !1729, !llvm.loop !1745

40:                                               ; preds = %25
  %41 = load double, ptr %11, align 8, !dbg !1730, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %41, metadata !1698, metadata !DIExpression()), !dbg !1715
  %42 = load double, ptr %12, align 8, !dbg !1747, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %42, metadata !1699, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double poison, metadata !1696, metadata !DIExpression()), !dbg !1715
  store double %41, ptr %5, align 8, !dbg !1731, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1697, metadata !DIExpression()), !dbg !1715
  %43 = add nuw i32 %1, 1, !dbg !1732
  %44 = zext i32 %43 to i64, !dbg !1748
  br label %45, !dbg !1732

45:                                               ; preds = %45, %40
  %46 = phi i64 [ 1, %40 ], [ %58, %45 ]
  %47 = phi double [ %0, %40 ], [ %handler_result5, %45 ]
  %48 = phi double [ %41, %40 ], [ %54, %45 ]
  %49 = phi double [ %42, %40 ], [ %handler_result8, %45 ]
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1697, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %48, metadata !1698, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %49, metadata !1699, metadata !DIExpression()), !dbg !1715
  %handler_result5 = call double @fAddHandlerDouble(double %47, double 1.000000e+00), !dbg !1749
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1696, metadata !DIExpression()), !dbg !1715
  %50 = fdiv double %2, %handler_result5, !dbg !1749
  tail call void @llvm.dbg.value(metadata double %50, metadata !1707, metadata !DIExpression()), !dbg !1750
  %51 = tail call double @hypot(double noundef 1.000000e+00, double noundef %50) #8, !dbg !1751
  tail call void @llvm.dbg.value(metadata double %51, metadata !1711, metadata !DIExpression()), !dbg !1750
  %52 = fmul double %13, %handler_result5, !dbg !1752
  %handler_result6 = call double @fAddHandlerDouble(double %50, double %52), !dbg !1753
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1712, metadata !DIExpression()), !dbg !1750
  %53 = fmul double %48, %handler_result6, !dbg !1753
  %handler_result7 = call double @fSubHandlerDouble(double %53, double %49), !dbg !1754
  %54 = fdiv double %handler_result7, %51, !dbg !1754
  tail call void @llvm.dbg.value(metadata double %54, metadata !1713, metadata !DIExpression()), !dbg !1750
  %55 = getelementptr inbounds double, ptr %5, i64 %46, !dbg !1755
  store double %54, ptr %55, align 8, !dbg !1756, !tbaa !256
  %56 = fmul double %48, %51, !dbg !1757
  %57 = fmul double %handler_result6, %54, !dbg !1758
  %handler_result8 = call double @fSubHandlerDouble(double %56, double %57), !dbg !1759
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1699, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double %54, metadata !1698, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata double poison, metadata !1696, metadata !DIExpression()), !dbg !1715
  %58 = add nuw nsw i64 %46, 1, !dbg !1759
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1697, metadata !DIExpression()), !dbg !1715
  %59 = icmp eq i64 %58, %44, !dbg !1748
  br i1 %59, label %60, label %45, !dbg !1732, !llvm.loop !1760

60:                                               ; preds = %45, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !1762
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !1762
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !1762
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8, !dbg !1762
  ret i32 %15, !dbg !1763
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_FGp_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9) local_unnamed_addr #0 !dbg !1764 {
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1780, metadata !DIExpression(), metadata !1805, metadata ptr %11, metadata !DIExpression()), !dbg !1806
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1807
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1781, metadata !DIExpression(), metadata !1807, metadata ptr %12, metadata !DIExpression()), !dbg !1806
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1808
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1782, metadata !DIExpression(), metadata !1808, metadata ptr %13, metadata !DIExpression()), !dbg !1806
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1809
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1783, metadata !DIExpression(), metadata !1809, metadata ptr %14, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %0, metadata !1768, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1769, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %2, metadata !1770, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %3, metadata !1771, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1772, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1773, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1774, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1775, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1776, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1777, metadata !DIExpression()), !dbg !1806
  %15 = fdiv double 1.000000e+00, %3, !dbg !1810
  tail call void @llvm.dbg.value(metadata double %15, metadata !1778, metadata !DIExpression()), !dbg !1806
  %16 = sitofp i32 %1 to double, !dbg !1811
  %handler_result = call double @fAddHandlerDouble(double %16, double %0), !dbg !1812
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1779, metadata !DIExpression()), !dbg !1806
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !1812
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #8, !dbg !1812
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #8, !dbg !1813
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #8, !dbg !1813
  %17 = call i32 @gsl_sf_coulomb_wave_FG_e(double noundef %2, double noundef %3, double noundef %handler_result, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %8, ptr noundef %9), !dbg !1814
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !1784, metadata !DIExpression()), !dbg !1806
  %18 = load double, ptr %11, align 8, !dbg !1815, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %18, metadata !1785, metadata !DIExpression()), !dbg !1806
  %19 = load double, ptr %12, align 8, !dbg !1816, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %19, metadata !1786, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1787, metadata !DIExpression()), !dbg !1806
  %20 = sext i32 %1 to i64, !dbg !1817
  %21 = getelementptr inbounds double, ptr %4, i64 %20, !dbg !1817
  store double %18, ptr %21, align 8, !dbg !1818, !tbaa !256
  %22 = getelementptr inbounds double, ptr %5, i64 %20, !dbg !1819
  store double %19, ptr %22, align 8, !dbg !1820, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1788, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %18, metadata !1785, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %19, metadata !1786, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !1787, metadata !DIExpression()), !dbg !1806
  %23 = icmp sgt i32 %1, 0, !dbg !1821
  br i1 %23, label %27, label %24, !dbg !1822

24:                                               ; preds = %10
  %25 = load double, ptr %13, align 8, !dbg !1823, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %25, metadata !1789, metadata !DIExpression()), !dbg !1806
  %26 = load double, ptr %14, align 8, !dbg !1824, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %26, metadata !1790, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double poison, metadata !1787, metadata !DIExpression()), !dbg !1806
  store double %25, ptr %6, align 8, !dbg !1825, !tbaa !256
  store double %26, ptr %7, align 8, !dbg !1826, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1788, metadata !DIExpression()), !dbg !1806
  br label %66, !dbg !1827

27:                                               ; preds = %10
  %28 = zext nneg i32 %1 to i64, !dbg !1822
  br label %29, !dbg !1822

29:                                               ; preds = %29, %27
  %30 = phi i64 [ %28, %27 ], [ %34, %29 ]
  %31 = phi double [ %18, %27 ], [ %39, %29 ]
  %32 = phi double [ %19, %27 ], [ %handler_result3, %29 ]
  %33 = phi double [ %handler_result, %27 ], [ %handler_result4, %29 ]
  tail call void @llvm.dbg.value(metadata double %31, metadata !1785, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %32, metadata !1786, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %33, metadata !1787, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1788, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1806
  %34 = add nsw i64 %30, -1, !dbg !1828
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1788, metadata !DIExpression()), !dbg !1806
  %35 = fdiv double %2, %33, !dbg !1829
  tail call void @llvm.dbg.value(metadata double %35, metadata !1791, metadata !DIExpression()), !dbg !1830
  %36 = tail call double @hypot(double noundef 1.000000e+00, double noundef %35) #8, !dbg !1831
  tail call void @llvm.dbg.value(metadata double %36, metadata !1795, metadata !DIExpression()), !dbg !1830
  %37 = fmul double %15, %33, !dbg !1832
  %handler_result1 = call double @fAddHandlerDouble(double %35, double %37), !dbg !1833
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !1796, metadata !DIExpression()), !dbg !1830
  %38 = fmul double %31, %handler_result1, !dbg !1833
  %handler_result2 = call double @fAddHandlerDouble(double %32, double %38), !dbg !1834
  %39 = fdiv double %handler_result2, %36, !dbg !1834
  tail call void @llvm.dbg.value(metadata double %39, metadata !1797, metadata !DIExpression()), !dbg !1830
  %40 = getelementptr inbounds double, ptr %4, i64 %34, !dbg !1835
  store double %39, ptr %40, align 8, !dbg !1836, !tbaa !256
  %41 = fmul double %handler_result1, %39, !dbg !1837
  %42 = fmul double %31, %36, !dbg !1838
  %handler_result3 = call double @fSubHandlerDouble(double %41, double %42), !dbg !1839
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !1786, metadata !DIExpression()), !dbg !1806
  %43 = getelementptr inbounds double, ptr %5, i64 %34, !dbg !1839
  store double %handler_result3, ptr %43, align 8, !dbg !1840, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %39, metadata !1785, metadata !DIExpression()), !dbg !1806
  %handler_result4 = call double @fAddHandlerDouble(double %33, double -1.000000e+00), !dbg !1821
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !1787, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1788, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1806
  %44 = icmp ugt i64 %30, 1, !dbg !1821
  br i1 %44, label %29, label %45, !dbg !1822, !llvm.loop !1841

45:                                               ; preds = %29
  %46 = load double, ptr %13, align 8, !dbg !1823, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %46, metadata !1789, metadata !DIExpression()), !dbg !1806
  %47 = load double, ptr %14, align 8, !dbg !1824, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %47, metadata !1790, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double poison, metadata !1787, metadata !DIExpression()), !dbg !1806
  store double %46, ptr %6, align 8, !dbg !1825, !tbaa !256
  store double %47, ptr %7, align 8, !dbg !1826, !tbaa !256
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1788, metadata !DIExpression()), !dbg !1806
  %48 = add nuw i32 %1, 1, !dbg !1827
  %49 = zext i32 %48 to i64, !dbg !1843
  br label %50, !dbg !1827

50:                                               ; preds = %50, %45
  %51 = phi i64 [ 1, %45 ], [ %64, %50 ]
  %52 = phi double [ %0, %45 ], [ %handler_result5, %50 ]
  %53 = phi double [ %46, %45 ], [ %59, %50 ]
  %54 = phi double [ %47, %45 ], [ %handler_result8, %50 ]
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1788, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %53, metadata !1789, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double %54, metadata !1790, metadata !DIExpression()), !dbg !1806
  %handler_result5 = call double @fAddHandlerDouble(double %52, double 1.000000e+00), !dbg !1844
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !1787, metadata !DIExpression()), !dbg !1806
  %55 = fdiv double %2, %handler_result5, !dbg !1844
  tail call void @llvm.dbg.value(metadata double %55, metadata !1798, metadata !DIExpression()), !dbg !1845
  %56 = tail call double @hypot(double noundef 1.000000e+00, double noundef %55) #8, !dbg !1846
  tail call void @llvm.dbg.value(metadata double %56, metadata !1802, metadata !DIExpression()), !dbg !1845
  %57 = fmul double %15, %handler_result5, !dbg !1847
  %handler_result6 = call double @fAddHandlerDouble(double %55, double %57), !dbg !1848
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !1803, metadata !DIExpression()), !dbg !1845
  %58 = fmul double %53, %handler_result6, !dbg !1848
  %handler_result7 = call double @fSubHandlerDouble(double %58, double %54), !dbg !1849
  %59 = fdiv double %handler_result7, %56, !dbg !1849
  tail call void @llvm.dbg.value(metadata double %59, metadata !1804, metadata !DIExpression()), !dbg !1845
  %60 = getelementptr inbounds double, ptr %6, i64 %51, !dbg !1850
  store double %59, ptr %60, align 8, !dbg !1851, !tbaa !256
  %61 = fmul double %53, %56, !dbg !1852
  %62 = fmul double %handler_result6, %59, !dbg !1853
  %handler_result8 = call double @fSubHandlerDouble(double %61, double %62), !dbg !1854
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !1790, metadata !DIExpression()), !dbg !1806
  %63 = getelementptr inbounds double, ptr %7, i64 %51, !dbg !1854
  store double %handler_result8, ptr %63, align 8, !dbg !1855, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %59, metadata !1789, metadata !DIExpression()), !dbg !1806
  tail call void @llvm.dbg.value(metadata double poison, metadata !1787, metadata !DIExpression()), !dbg !1806
  %64 = add nuw nsw i64 %51, 1, !dbg !1856
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !1788, metadata !DIExpression()), !dbg !1806
  %65 = icmp eq i64 %64, %49, !dbg !1843
  br i1 %65, label %66, label %50, !dbg !1827, !llvm.loop !1857

66:                                               ; preds = %50, %24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #8, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #8, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #8, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !1859
  ret i32 %17, !dbg !1860
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_sphF_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !1861 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1876
  tail call void @llvm.dbg.value(metadata double %0, metadata !1863, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1864, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata double %2, metadata !1865, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata double %3, metadata !1866, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1867, metadata !DIExpression()), !dbg !1877
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1868, metadata !DIExpression()), !dbg !1877
  %8 = fcmp olt double %3, 0.000000e+00, !dbg !1878
  %9 = fcmp olt double %0, -5.000000e-01
  %10 = or i1 %9, %8, !dbg !1879
  br i1 %10, label %11, label %12, !dbg !1879

11:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1387, i32 noundef 1) #8, !dbg !1880
  br label %81, !dbg !1880

12:                                               ; preds = %6
  %13 = fcmp olt double %3, 0x24000000000001, !dbg !1883
  br i1 %13, label %14, label %38, !dbg !1884

14:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1869, metadata !DIExpression()), !dbg !1885
  %15 = icmp slt i32 %1, 0, !dbg !1886
  br i1 %15, label %20, label %16, !dbg !1889

16:                                               ; preds = %14
  %17 = add nuw i32 %1, 1, !dbg !1889
  %18 = zext i32 %17 to i64, !dbg !1889
  %19 = shl nuw nsw i64 %18, 3, !dbg !1889
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %19, i1 false), !dbg !1890, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1869, metadata !DIExpression()), !dbg !1885
  br label %20, !dbg !1892

20:                                               ; preds = %16, %14
  %21 = fcmp oeq double %0, 0.000000e+00, !dbg !1892
  br i1 %21, label %22, label %35, !dbg !1894

22:                                               ; preds = %20
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !1876, metadata ptr %7, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata double %2, metadata !118, metadata !DIExpression()), !dbg !1898
  %23 = fmul double %2, 0x401921FB54442D18, !dbg !1899
  call void @llvm.dbg.value(metadata double %23, metadata !119, metadata !DIExpression()), !dbg !1898
  %24 = tail call double @llvm.fabs.f64(double %2), !dbg !1900
  %25 = fcmp olt double %24, 0x3CB0000000000000, !dbg !1901
  br i1 %25, label %32, label %26, !dbg !1902

26:                                               ; preds = %22
  %27 = fcmp ogt double %23, 0x40862E42FEFA39EF, !dbg !1903
  br i1 %27, label %32, label %28, !dbg !1904

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !1905
  %29 = call i32 @gsl_sf_expm1_e(double noundef %23, ptr noundef nonnull %7) #8, !dbg !1906
  %30 = load double, ptr %7, align 8, !dbg !1907, !tbaa !98
  %31 = fdiv double %23, %30, !dbg !1908
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !1909
  br label %32

32:                                               ; preds = %28, %26, %22
  %33 = phi double [ %31, %28 ], [ 1.000000e+00, %22 ], [ 0.000000e+00, %26 ], !dbg !1910
  %34 = call double @sqrt(double noundef %33) #8, !dbg !1911
  store double %34, ptr %4, align 8, !dbg !1912, !tbaa !256
  br label %35, !dbg !1913

35:                                               ; preds = %32, %20
  store double 0.000000e+00, ptr %5, align 8, !dbg !1914, !tbaa !256
  %36 = fcmp oeq double %3, 0.000000e+00, !dbg !1915
  br i1 %36, label %81, label %37, !dbg !1917

37:                                               ; preds = %35
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1401, i32 noundef 15) #8, !dbg !1918
  br label %81, !dbg !1918

38:                                               ; preds = %12
  %39 = tail call i32 @gsl_sf_coulomb_wave_F_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5), !dbg !1920
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !1875, metadata !DIExpression()), !dbg !1921
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1873, metadata !DIExpression()), !dbg !1921
  %40 = icmp slt i32 %1, 0, !dbg !1922
  br i1 %40, label %81, label %41, !dbg !1925

41:                                               ; preds = %38
  %42 = add nuw i32 %1, 1, !dbg !1925
  %43 = zext i32 %42 to i64, !dbg !1922
  %44 = and i64 %43, 3, !dbg !1925
  %45 = icmp ult i32 %1, 3, !dbg !1925
  br i1 %45, label %69, label %46, !dbg !1925

46:                                               ; preds = %41
  %47 = and i64 %43, 4294967292, !dbg !1925
  br label %48, !dbg !1925

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %66, %48 ]
  %50 = phi i64 [ 0, %46 ], [ %67, %48 ]
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1873, metadata !DIExpression()), !dbg !1921
  %51 = getelementptr inbounds double, ptr %4, i64 %49, !dbg !1926
  %52 = load double, ptr %51, align 8, !dbg !1926, !tbaa !256
  %53 = fdiv double %52, %3, !dbg !1928
  store double %53, ptr %51, align 8, !dbg !1929, !tbaa !256
  %54 = or disjoint i64 %49, 1, !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !1873, metadata !DIExpression()), !dbg !1921
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !1873, metadata !DIExpression()), !dbg !1921
  %55 = getelementptr inbounds double, ptr %4, i64 %54, !dbg !1926
  %56 = load double, ptr %55, align 8, !dbg !1926, !tbaa !256
  %57 = fdiv double %56, %3, !dbg !1928
  store double %57, ptr %55, align 8, !dbg !1929, !tbaa !256
  %58 = or disjoint i64 %49, 2, !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1873, metadata !DIExpression()), !dbg !1921
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1873, metadata !DIExpression()), !dbg !1921
  %59 = getelementptr inbounds double, ptr %4, i64 %58, !dbg !1926
  %60 = load double, ptr %59, align 8, !dbg !1926, !tbaa !256
  %61 = fdiv double %60, %3, !dbg !1928
  store double %61, ptr %59, align 8, !dbg !1929, !tbaa !256
  %62 = or disjoint i64 %49, 3, !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !1873, metadata !DIExpression()), !dbg !1921
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !1873, metadata !DIExpression()), !dbg !1921
  %63 = getelementptr inbounds double, ptr %4, i64 %62, !dbg !1926
  %64 = load double, ptr %63, align 8, !dbg !1926, !tbaa !256
  %65 = fdiv double %64, %3, !dbg !1928
  store double %65, ptr %63, align 8, !dbg !1929, !tbaa !256
  %66 = add nuw nsw i64 %49, 4, !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !1873, metadata !DIExpression()), !dbg !1921
  %67 = add i64 %50, 4, !dbg !1925
  %68 = icmp eq i64 %67, %47, !dbg !1925
  br i1 %68, label %69, label %48, !dbg !1925, !llvm.loop !1931

69:                                               ; preds = %48, %41
  %70 = phi i64 [ 0, %41 ], [ %66, %48 ]
  %71 = icmp eq i64 %44, 0, !dbg !1925
  br i1 %71, label %81, label %72, !dbg !1925

72:                                               ; preds = %72, %69
  %73 = phi i64 [ %78, %72 ], [ %70, %69 ]
  %74 = phi i64 [ %79, %72 ], [ 0, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !1873, metadata !DIExpression()), !dbg !1921
  %75 = getelementptr inbounds double, ptr %4, i64 %73, !dbg !1926
  %76 = load double, ptr %75, align 8, !dbg !1926, !tbaa !256
  %77 = fdiv double %76, %3, !dbg !1928
  store double %77, ptr %75, align 8, !dbg !1929, !tbaa !256
  %78 = add nuw nsw i64 %73, 1, !dbg !1930
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !1873, metadata !DIExpression()), !dbg !1921
  %79 = add i64 %74, 1, !dbg !1925
  %80 = icmp eq i64 %79, %44, !dbg !1925
  br i1 %80, label %81, label %72, !dbg !1925, !llvm.loop !1933

81:                                               ; preds = %72, %69, %38, %37, %35, %11
  %82 = phi i32 [ 1, %11 ], [ 15, %37 ], [ 0, %35 ], [ %39, %38 ], [ %39, %72 ], [ %39, %69 ], !dbg !1935
  ret i32 %82, !dbg !1936
}

declare !dbg !1937 i32 @gsl_sf_expm1_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1941 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1945 i32 @gsl_sf_lngamma_complex_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1948 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1951 i32 @gsl_sf_psi_1piy_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1953 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1954 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1955 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1956 double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1957 double @tanh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1958 double @atan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1959 double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1960 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1961 double @atan2(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !1962 i32 @gsl_sf_airy_Ai_scaled_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1969 i32 @gsl_sf_airy_Bi_scaled_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "coulomb.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "1a46e71a557f331caf4c8d195687f081")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 10)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1000, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1107, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 9)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1401, type: !9, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !65, globals: !66, splitDebugInlining: false, nameTableKind: None)
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
!65 = !{!28}
!66 = !{!0, !7, !12, !17, !22}
!67 = !{i32 7, !"Dwarf Version", i32 5}
!68 = !{i32 2, !"Debug Info Version", i32 3}
!69 = !{i32 1, !"wchar_size", i32 4}
!70 = !{i32 8, !"PIC Level", i32 2}
!71 = !{i32 7, !"PIE Level", i32 2}
!72 = !{i32 7, !"uwtable", i32 2}
!73 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!74 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!75 = distinct !DISubprogram(name: "gsl_sf_coulomb_CL_e", scope: !2, file: !2, line: 105, type: !76, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !86)
!76 = !DISubroutineType(types: !77)
!77 = !{!28, !78, !78, !79}
!78 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !81, line: 41, baseType: !82)
!81 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !81, line: 37, size: 128, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !82, file: !81, line: 38, baseType: !78, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !82, file: !81, line: 39, baseType: !78, size: 64, offset: 64)
!86 = !{!87, !88, !89}
!87 = !DILocalVariable(name: "lam", arg: 1, scope: !75, file: !2, line: 105, type: !78)
!88 = !DILocalVariable(name: "eta", arg: 2, scope: !75, file: !2, line: 105, type: !78)
!89 = !DILocalVariable(name: "result", arg: 3, scope: !75, file: !2, line: 105, type: !79)
!90 = distinct !DIAssignID()
!91 = !DILocation(line: 0, scope: !75)
!92 = !DILocation(line: 109, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !75, file: !2, line: 109, column: 6)
!94 = !DILocation(line: 109, column: 6, scope: !75)
!95 = !DILocation(line: 110, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !2, line: 110, column: 5)
!97 = distinct !DILexicalBlock(scope: !93, file: !2, line: 109, column: 19)
!98 = !{!99, !100, i64 0}
!99 = !{!"gsl_sf_result_struct", !100, i64 0, !100, i64 8}
!100 = !{!"double", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!99, !100, i64 8}
!104 = !DILocation(line: 110, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !2, line: 110, column: 5)
!106 = !DILocation(line: 112, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !93, file: !2, line: 112, column: 11)
!108 = !DILocation(line: 112, column: 21, scope: !107)
!109 = !DILocation(line: 112, column: 11, scope: !93)
!110 = !DILocalVariable(name: "scale", scope: !111, file: !2, line: 61, type: !80)
!111 = distinct !DILexicalBlock(scope: !112, file: !2, line: 60, column: 8)
!112 = distinct !DILexicalBlock(scope: !113, file: !2, line: 57, column: 11)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 54, column: 6)
!114 = distinct !DISubprogram(name: "C0sq", scope: !2, file: !2, line: 50, type: !115, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !117)
!115 = !DISubroutineType(types: !116)
!116 = !{!78, !78}
!117 = !{!118, !119, !110}
!118 = !DILocalVariable(name: "eta", arg: 1, scope: !114, file: !2, line: 50, type: !78)
!119 = !DILocalVariable(name: "twopieta", scope: !114, file: !2, line: 52, type: !78)
!120 = !DILocation(line: 0, scope: !111, inlinedAt: !121)
!121 = distinct !DILocation(line: 114, column: 24, scope: !122)
!122 = distinct !DILexicalBlock(scope: !107, file: !2, line: 112, column: 40)
!123 = !DILocation(line: 0, scope: !114, inlinedAt: !121)
!124 = !DILocation(line: 52, column: 29, scope: !114, inlinedAt: !121)
!125 = !DILocation(line: 54, column: 6, scope: !113, inlinedAt: !121)
!126 = !DILocation(line: 54, column: 16, scope: !113, inlinedAt: !121)
!127 = !DILocation(line: 54, column: 6, scope: !114, inlinedAt: !121)
!128 = !DILocation(line: 57, column: 20, scope: !112, inlinedAt: !121)
!129 = !DILocation(line: 57, column: 11, scope: !113, inlinedAt: !121)
!130 = !DILocation(line: 61, column: 5, scope: !111, inlinedAt: !121)
!131 = !DILocation(line: 62, column: 5, scope: !111, inlinedAt: !121)
!132 = !DILocation(line: 63, column: 27, scope: !111, inlinedAt: !121)
!133 = !DILocation(line: 63, column: 20, scope: !111, inlinedAt: !121)
!134 = !DILocation(line: 64, column: 3, scope: !112, inlinedAt: !121)
!135 = !DILocation(line: 0, scope: !113, inlinedAt: !121)
!136 = !DILocation(line: 114, column: 19, scope: !122)
!137 = !DILocation(line: 114, column: 17, scope: !122)
!138 = !DILocation(line: 115, column: 41, scope: !122)
!139 = !DILocation(line: 115, column: 13, scope: !122)
!140 = !DILocation(line: 115, column: 17, scope: !122)
!141 = !DILocation(line: 116, column: 5, scope: !122)
!142 = !DILocation(line: 119, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !107, file: !2, line: 118, column: 8)
!144 = !DILocation(line: 119, column: 5, scope: !143)
!145 = !DILocation(line: 0, scope: !93)
!146 = !DILocation(line: 121, column: 1, scope: !75)
!147 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !150, !150, !28, !28}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!152 = !DISubprogram(name: "sqrt", scope: !153, file: !153, line: 143, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!154 = distinct !DISubprogram(name: "CLeta", scope: !2, file: !2, line: 79, type: !76, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164}
!156 = !DILocalVariable(name: "L", arg: 1, scope: !154, file: !2, line: 79, type: !78)
!157 = !DILocalVariable(name: "eta", arg: 2, scope: !154, file: !2, line: 79, type: !78)
!158 = !DILocalVariable(name: "result", arg: 3, scope: !154, file: !2, line: 79, type: !79)
!159 = !DILocalVariable(name: "ln1", scope: !154, file: !2, line: 81, type: !80)
!160 = !DILocalVariable(name: "ln2", scope: !154, file: !2, line: 82, type: !80)
!161 = !DILocalVariable(name: "sgn", scope: !154, file: !2, line: 83, type: !78)
!162 = !DILocalVariable(name: "arg_val", scope: !154, file: !2, line: 84, type: !78)
!163 = !DILocalVariable(name: "arg_err", scope: !154, file: !2, line: 84, type: !78)
!164 = !DILocalVariable(name: "p1", scope: !165, file: !2, line: 90, type: !80)
!165 = distinct !DILexicalBlock(scope: !166, file: !2, line: 89, column: 8)
!166 = distinct !DILexicalBlock(scope: !154, file: !2, line: 86, column: 6)
!167 = distinct !DIAssignID()
!168 = !DILocation(line: 0, scope: !154)
!169 = distinct !DIAssignID()
!170 = distinct !DIAssignID()
!171 = !DILocation(line: 0, scope: !165)
!172 = !DILocation(line: 81, column: 3, scope: !154)
!173 = !DILocation(line: 82, column: 3, scope: !154)
!174 = !DILocation(line: 86, column: 14, scope: !166)
!175 = !DILocation(line: 86, column: 6, scope: !166)
!176 = !DILocation(line: 86, column: 24, scope: !166)
!177 = !DILocation(line: 86, column: 6, scope: !154)
!178 = !DILocation(line: 87, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !166, file: !2, line: 86, column: 43)
!180 = !DILocation(line: 88, column: 3, scope: !179)
!181 = !DILocation(line: 90, column: 5, scope: !165)
!182 = !DILocation(line: 91, column: 5, scope: !165)
!183 = !DILocation(line: 92, column: 3, scope: !166)
!184 = !DILocation(line: 94, column: 23, scope: !154)
!185 = !DILocation(line: 94, column: 3, scope: !154)
!186 = !DILocation(line: 97, column: 15, scope: !154)
!187 = !DILocation(line: 97, column: 27, scope: !154)
!188 = !DILocation(line: 97, column: 31, scope: !154)
!189 = !DILocation(line: 97, column: 43, scope: !154)
!190 = !DILocation(line: 97, column: 53, scope: !154)
!191 = !DILocation(line: 98, column: 18, scope: !154)
!192 = !DILocation(line: 98, column: 28, scope: !154)
!193 = !DILocation(line: 99, column: 33, scope: !154)
!194 = !DILocation(line: 99, column: 49, scope: !154)
!195 = !DILocation(line: 99, column: 30, scope: !154)
!196 = !DILocation(line: 100, column: 10, scope: !154)
!197 = !DILocation(line: 101, column: 1, scope: !154)
!198 = !DILocation(line: 100, column: 3, scope: !154)
!199 = distinct !DISubprogram(name: "gsl_sf_coulomb_CL_array", scope: !2, file: !2, line: 127, type: !200, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !203)
!200 = !DISubroutineType(types: !201)
!201 = !{!28, !78, !28, !78, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!203 = !{!204, !205, !206, !207, !208, !209, !210}
!204 = !DILocalVariable(name: "lam_min", arg: 1, scope: !199, file: !2, line: 127, type: !78)
!205 = !DILocalVariable(name: "kmax", arg: 2, scope: !199, file: !2, line: 127, type: !28)
!206 = !DILocalVariable(name: "eta", arg: 3, scope: !199, file: !2, line: 127, type: !78)
!207 = !DILocalVariable(name: "cl", arg: 4, scope: !199, file: !2, line: 127, type: !202)
!208 = !DILocalVariable(name: "k", scope: !199, file: !2, line: 129, type: !28)
!209 = !DILocalVariable(name: "cl_0", scope: !199, file: !2, line: 130, type: !80)
!210 = !DILocalVariable(name: "L", scope: !211, file: !2, line: 135, type: !78)
!211 = distinct !DILexicalBlock(scope: !212, file: !2, line: 134, column: 26)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 134, column: 3)
!213 = distinct !DILexicalBlock(scope: !199, file: !2, line: 134, column: 3)
!214 = distinct !DIAssignID()
!215 = distinct !DIAssignID()
!216 = !DILocation(line: 0, scope: !199)
!217 = !DILocation(line: 130, column: 3, scope: !199)
!218 = !DILocation(line: 0, scope: !75, inlinedAt: !219)
!219 = distinct !DILocation(line: 131, column: 3, scope: !199)
!220 = !DILocation(line: 109, column: 10, scope: !93, inlinedAt: !219)
!221 = !DILocation(line: 109, column: 6, scope: !75, inlinedAt: !219)
!222 = !DILocation(line: 110, column: 5, scope: !96, inlinedAt: !219)
!223 = distinct !DIAssignID()
!224 = distinct !DIAssignID()
!225 = !DILocation(line: 110, column: 5, scope: !105, inlinedAt: !219)
!226 = !DILocation(line: 112, column: 11, scope: !107, inlinedAt: !219)
!227 = !DILocation(line: 112, column: 21, scope: !107, inlinedAt: !219)
!228 = !DILocation(line: 112, column: 11, scope: !93, inlinedAt: !219)
!229 = !DILocation(line: 0, scope: !111, inlinedAt: !230)
!230 = distinct !DILocation(line: 114, column: 24, scope: !122, inlinedAt: !219)
!231 = !DILocation(line: 0, scope: !114, inlinedAt: !230)
!232 = !DILocation(line: 52, column: 29, scope: !114, inlinedAt: !230)
!233 = !DILocation(line: 54, column: 6, scope: !113, inlinedAt: !230)
!234 = !DILocation(line: 54, column: 16, scope: !113, inlinedAt: !230)
!235 = !DILocation(line: 54, column: 6, scope: !114, inlinedAt: !230)
!236 = !DILocation(line: 57, column: 20, scope: !112, inlinedAt: !230)
!237 = !DILocation(line: 57, column: 11, scope: !113, inlinedAt: !230)
!238 = !DILocation(line: 61, column: 5, scope: !111, inlinedAt: !230)
!239 = !DILocation(line: 62, column: 5, scope: !111, inlinedAt: !230)
!240 = !DILocation(line: 63, column: 27, scope: !111, inlinedAt: !230)
!241 = !DILocation(line: 63, column: 20, scope: !111, inlinedAt: !230)
!242 = !DILocation(line: 64, column: 3, scope: !112, inlinedAt: !230)
!243 = !DILocation(line: 0, scope: !113, inlinedAt: !230)
!244 = !DILocation(line: 114, column: 19, scope: !122, inlinedAt: !219)
!245 = !DILocation(line: 114, column: 17, scope: !122, inlinedAt: !219)
!246 = distinct !DIAssignID()
!247 = !DILocation(line: 115, column: 41, scope: !122, inlinedAt: !219)
!248 = !DILocation(line: 115, column: 13, scope: !122, inlinedAt: !219)
!249 = !DILocation(line: 115, column: 17, scope: !122, inlinedAt: !219)
!250 = distinct !DIAssignID()
!251 = !DILocation(line: 116, column: 5, scope: !122, inlinedAt: !219)
!252 = !DILocation(line: 119, column: 12, scope: !143, inlinedAt: !219)
!253 = !DILocation(line: 132, column: 16, scope: !199)
!254 = !DILocation(line: 119, column: 5, scope: !143, inlinedAt: !219)
!255 = !DILocation(line: 132, column: 9, scope: !199)
!256 = !{!100, !100, i64 0}
!257 = !DILocation(line: 134, column: 13, scope: !212)
!258 = !DILocation(line: 134, column: 3, scope: !213)
!259 = !DILocation(line: 135, column: 26, scope: !211)
!260 = !DILocation(line: 136, column: 13, scope: !211)
!261 = !DILocation(line: 0, scope: !211)
!262 = !DILocation(line: 136, column: 23, scope: !211)
!263 = !DILocation(line: 136, column: 21, scope: !211)
!264 = !DILocation(line: 136, column: 44, scope: !211)
!265 = !DILocation(line: 136, column: 39, scope: !211)
!266 = !DILocation(line: 136, column: 36, scope: !211)
!267 = !DILocation(line: 136, column: 11, scope: !211)
!268 = !DILocation(line: 134, column: 22, scope: !212)
!269 = distinct !{!269, !258, !270, !271}
!270 = !DILocation(line: 137, column: 3, scope: !213)
!271 = !{!"llvm.loop.mustprogress"}
!272 = !DILocation(line: 140, column: 1, scope: !199)
!273 = !DILocation(line: 139, column: 3, scope: !199)
!274 = !DISubprogram(name: "hypot", scope: !153, file: !153, line: 147, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DISubroutineType(types: !276)
!276 = !{!78, !78, !78}
!277 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_FG_e", scope: !2, file: !2, line: 896, type: !278, scopeLine: 902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !282)
!278 = !DISubroutineType(types: !279)
!279 = !{!28, !280, !280, !280, !281, !79, !79, !79, !79, !202, !202}
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !298, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377}
!283 = !DILocalVariable(name: "eta", arg: 1, scope: !277, file: !2, line: 896, type: !280)
!284 = !DILocalVariable(name: "x", arg: 2, scope: !277, file: !2, line: 896, type: !280)
!285 = !DILocalVariable(name: "lam_F", arg: 3, scope: !277, file: !2, line: 897, type: !280)
!286 = !DILocalVariable(name: "k_lam_G", arg: 4, scope: !277, file: !2, line: 898, type: !281)
!287 = !DILocalVariable(name: "F", arg: 5, scope: !277, file: !2, line: 899, type: !79)
!288 = !DILocalVariable(name: "Fp", arg: 6, scope: !277, file: !2, line: 899, type: !79)
!289 = !DILocalVariable(name: "G", arg: 7, scope: !277, file: !2, line: 900, type: !79)
!290 = !DILocalVariable(name: "Gp", arg: 8, scope: !277, file: !2, line: 900, type: !79)
!291 = !DILocalVariable(name: "exp_F", arg: 9, scope: !277, file: !2, line: 901, type: !202)
!292 = !DILocalVariable(name: "exp_G", arg: 10, scope: !277, file: !2, line: 901, type: !202)
!293 = !DILocalVariable(name: "lam_G", scope: !277, file: !2, line: 903, type: !280)
!294 = !DILocalVariable(name: "C0", scope: !295, file: !2, line: 915, type: !80)
!295 = distinct !DILexicalBlock(scope: !296, file: !2, line: 914, column: 21)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 914, column: 11)
!297 = distinct !DILexicalBlock(scope: !277, file: !2, line: 905, column: 6)
!298 = !DILocalVariable(name: "SMALL", scope: !299, file: !2, line: 940, type: !280)
!299 = distinct !DILexicalBlock(scope: !300, file: !2, line: 932, column: 83)
!300 = distinct !DILexicalBlock(scope: !296, file: !2, line: 932, column: 11)
!301 = !DILocalVariable(name: "N", scope: !299, file: !2, line: 941, type: !281)
!302 = !DILocalVariable(name: "span", scope: !299, file: !2, line: 942, type: !281)
!303 = !DILocalVariable(name: "lam_min", scope: !299, file: !2, line: 943, type: !280)
!304 = !DILocalVariable(name: "F_lam_F", scope: !299, file: !2, line: 944, type: !78)
!305 = !DILocalVariable(name: "Fp_lam_F", scope: !299, file: !2, line: 944, type: !78)
!306 = !DILocalVariable(name: "G_lam_G", scope: !299, file: !2, line: 945, type: !78)
!307 = !DILocalVariable(name: "Gp_lam_G", scope: !299, file: !2, line: 945, type: !78)
!308 = !DILocalVariable(name: "F_lam_F_err", scope: !299, file: !2, line: 946, type: !78)
!309 = !DILocalVariable(name: "Fp_lam_F_err", scope: !299, file: !2, line: 946, type: !78)
!310 = !DILocalVariable(name: "Fp_over_F_lam_F", scope: !299, file: !2, line: 947, type: !78)
!311 = !DILocalVariable(name: "F_sign_lam_F", scope: !299, file: !2, line: 948, type: !78)
!312 = !DILocalVariable(name: "F_lam_min_unnorm", scope: !299, file: !2, line: 949, type: !78)
!313 = !DILocalVariable(name: "Fp_lam_min_unnorm", scope: !299, file: !2, line: 949, type: !78)
!314 = !DILocalVariable(name: "Fp_over_F_lam_min", scope: !299, file: !2, line: 950, type: !78)
!315 = !DILocalVariable(name: "F_lam_min", scope: !299, file: !2, line: 951, type: !80)
!316 = !DILocalVariable(name: "G_lam_min", scope: !299, file: !2, line: 952, type: !80)
!317 = !DILocalVariable(name: "Gp_lam_min", scope: !299, file: !2, line: 952, type: !80)
!318 = !DILocalVariable(name: "F_scale", scope: !299, file: !2, line: 953, type: !78)
!319 = !DILocalVariable(name: "Gerr_frac", scope: !299, file: !2, line: 954, type: !78)
!320 = !DILocalVariable(name: "F_scale_frac_err", scope: !299, file: !2, line: 955, type: !78)
!321 = !DILocalVariable(name: "F_unnorm_frac_err", scope: !299, file: !2, line: 956, type: !78)
!322 = !DILocalVariable(name: "CF1_count", scope: !299, file: !2, line: 959, type: !28)
!323 = !DILocalVariable(name: "stat_CF1", scope: !299, file: !2, line: 960, type: !28)
!324 = !DILocalVariable(name: "stat_ser", scope: !299, file: !2, line: 962, type: !28)
!325 = !DILocalVariable(name: "stat_Fr", scope: !299, file: !2, line: 963, type: !28)
!326 = !DILocalVariable(name: "stat_Gr", scope: !299, file: !2, line: 964, type: !28)
!327 = !DILocalVariable(name: "F_lam_F", scope: !328, file: !2, line: 1055, type: !80)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 1050, column: 24)
!329 = distinct !DILexicalBlock(scope: !300, file: !2, line: 1050, column: 11)
!330 = !DILocalVariable(name: "G_lam_F", scope: !328, file: !2, line: 1055, type: !80)
!331 = !DILocalVariable(name: "F_lam_G", scope: !328, file: !2, line: 1056, type: !80)
!332 = !DILocalVariable(name: "G_lam_G", scope: !328, file: !2, line: 1056, type: !80)
!333 = !DILocalVariable(name: "exp_lam_F", scope: !328, file: !2, line: 1057, type: !78)
!334 = !DILocalVariable(name: "exp_lam_G", scope: !328, file: !2, line: 1057, type: !78)
!335 = !DILocalVariable(name: "stat_lam_F", scope: !328, file: !2, line: 1058, type: !28)
!336 = !DILocalVariable(name: "stat_lam_G", scope: !328, file: !2, line: 1059, type: !28)
!337 = !DILocalVariable(name: "stat_CF1_lam_F", scope: !328, file: !2, line: 1060, type: !28)
!338 = !DILocalVariable(name: "stat_CF1_lam_G", scope: !328, file: !2, line: 1061, type: !28)
!339 = !DILocalVariable(name: "CF1_count", scope: !328, file: !2, line: 1062, type: !28)
!340 = !DILocalVariable(name: "Fp_over_F_lam_F", scope: !328, file: !2, line: 1063, type: !78)
!341 = !DILocalVariable(name: "Fp_over_F_lam_G", scope: !328, file: !2, line: 1064, type: !78)
!342 = !DILocalVariable(name: "F_sign_lam_F", scope: !328, file: !2, line: 1065, type: !78)
!343 = !DILocalVariable(name: "F_sign_lam_G", scope: !328, file: !2, line: 1066, type: !78)
!344 = !DILocalVariable(name: "SMALL", scope: !345, file: !2, line: 1123, type: !280)
!345 = distinct !DILexicalBlock(scope: !329, file: !2, line: 1113, column: 8)
!346 = !DILocalVariable(name: "C", scope: !345, file: !2, line: 1124, type: !280)
!347 = !DILocalVariable(name: "N", scope: !345, file: !2, line: 1125, type: !281)
!348 = !DILocalVariable(name: "lam_0", scope: !345, file: !2, line: 1126, type: !280)
!349 = !DILocalVariable(name: "lam_min", scope: !345, file: !2, line: 1127, type: !280)
!350 = !DILocalVariable(name: "F_lam_F", scope: !345, file: !2, line: 1128, type: !78)
!351 = !DILocalVariable(name: "Fp_lam_F", scope: !345, file: !2, line: 1128, type: !78)
!352 = !DILocalVariable(name: "G_lam_G", scope: !345, file: !2, line: 1129, type: !78)
!353 = !DILocalVariable(name: "Gp_lam_G", scope: !345, file: !2, line: 1129, type: !78)
!354 = !DILocalVariable(name: "F_lam_min_unnorm", scope: !345, file: !2, line: 1130, type: !78)
!355 = !DILocalVariable(name: "Fp_lam_min_unnorm", scope: !345, file: !2, line: 1130, type: !78)
!356 = !DILocalVariable(name: "F_lam_min", scope: !345, file: !2, line: 1131, type: !78)
!357 = !DILocalVariable(name: "Fp_lam_min", scope: !345, file: !2, line: 1131, type: !78)
!358 = !DILocalVariable(name: "G_lam_min", scope: !345, file: !2, line: 1132, type: !78)
!359 = !DILocalVariable(name: "Gp_lam_min", scope: !345, file: !2, line: 1132, type: !78)
!360 = !DILocalVariable(name: "Fp_over_F_lam_F", scope: !345, file: !2, line: 1133, type: !78)
!361 = !DILocalVariable(name: "Fp_over_F_lam_min", scope: !345, file: !2, line: 1134, type: !78)
!362 = !DILocalVariable(name: "F_sign_lam_F", scope: !345, file: !2, line: 1135, type: !78)
!363 = !DILocalVariable(name: "F_sign_lam_min", scope: !345, file: !2, line: 1135, type: !78)
!364 = !DILocalVariable(name: "P_lam_min", scope: !345, file: !2, line: 1136, type: !78)
!365 = !DILocalVariable(name: "Q_lam_min", scope: !345, file: !2, line: 1136, type: !78)
!366 = !DILocalVariable(name: "alpha", scope: !345, file: !2, line: 1137, type: !78)
!367 = !DILocalVariable(name: "gamma", scope: !345, file: !2, line: 1138, type: !78)
!368 = !DILocalVariable(name: "F_scale", scope: !345, file: !2, line: 1139, type: !78)
!369 = !DILocalVariable(name: "CF1_count", scope: !345, file: !2, line: 1141, type: !28)
!370 = !DILocalVariable(name: "CF2_count", scope: !345, file: !2, line: 1142, type: !28)
!371 = !DILocalVariable(name: "stat_CF1", scope: !345, file: !2, line: 1143, type: !28)
!372 = !DILocalVariable(name: "stat_CF2", scope: !345, file: !2, line: 1144, type: !28)
!373 = !DILocalVariable(name: "stat_Fr", scope: !345, file: !2, line: 1145, type: !28)
!374 = !DILocalVariable(name: "stat_Gr", scope: !345, file: !2, line: 1146, type: !28)
!375 = !DILocalVariable(name: "F_recur_count", scope: !345, file: !2, line: 1148, type: !28)
!376 = !DILocalVariable(name: "G_recur_count", scope: !345, file: !2, line: 1149, type: !28)
!377 = !DILocalVariable(name: "err_amplify", scope: !345, file: !2, line: 1151, type: !78)
!378 = distinct !DIAssignID()
!379 = distinct !DIAssignID()
!380 = distinct !DIAssignID()
!381 = distinct !DIAssignID()
!382 = !DILocation(line: 0, scope: !295)
!383 = distinct !DIAssignID()
!384 = !DILocation(line: 0, scope: !299)
!385 = distinct !DIAssignID()
!386 = distinct !DIAssignID()
!387 = !DILocation(line: 0, scope: !328)
!388 = distinct !DIAssignID()
!389 = distinct !DIAssignID()
!390 = distinct !DIAssignID()
!391 = distinct !DIAssignID()
!392 = distinct !DIAssignID()
!393 = !DILocation(line: 0, scope: !277)
!394 = !DILocation(line: 903, column: 32, scope: !277)
!395 = !DILocation(line: 905, column: 8, scope: !297)
!396 = !DILocation(line: 905, column: 14, scope: !297)
!397 = !DILocation(line: 906, column: 5, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 906, column: 5)
!399 = distinct !DILexicalBlock(scope: !297, file: !2, line: 905, column: 49)
!400 = !DILocation(line: 907, column: 5, scope: !401)
!401 = distinct !DILexicalBlock(scope: !399, file: !2, line: 907, column: 5)
!402 = !DILocation(line: 908, column: 5, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !2, line: 908, column: 5)
!404 = !DILocation(line: 909, column: 5, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !2, line: 909, column: 5)
!406 = !DILocation(line: 910, column: 12, scope: !399)
!407 = !DILocation(line: 911, column: 12, scope: !399)
!408 = !DILocation(line: 912, column: 5, scope: !409)
!409 = distinct !DILexicalBlock(scope: !399, file: !2, line: 912, column: 5)
!410 = !DILocation(line: 914, column: 13, scope: !296)
!411 = !DILocation(line: 914, column: 11, scope: !297)
!412 = !DILocation(line: 915, column: 5, scope: !295)
!413 = !DILocation(line: 916, column: 5, scope: !295)
!414 = !DILocation(line: 917, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !295, file: !2, line: 917, column: 5)
!416 = !DILocation(line: 918, column: 5, scope: !417)
!417 = distinct !DILexicalBlock(scope: !295, file: !2, line: 918, column: 5)
!418 = !DILocation(line: 919, column: 5, scope: !419)
!419 = distinct !DILexicalBlock(scope: !295, file: !2, line: 919, column: 5)
!420 = !DILocation(line: 920, column: 5, scope: !421)
!421 = distinct !DILexicalBlock(scope: !295, file: !2, line: 920, column: 5)
!422 = !DILocation(line: 921, column: 12, scope: !295)
!423 = !DILocation(line: 922, column: 12, scope: !295)
!424 = !DILocation(line: 923, column: 14, scope: !425)
!425 = distinct !DILexicalBlock(scope: !295, file: !2, line: 923, column: 8)
!426 = !DILocation(line: 923, column: 8, scope: !295)
!427 = !DILocation(line: 924, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !2, line: 924, column: 7)
!429 = distinct !DILexicalBlock(scope: !425, file: !2, line: 923, column: 21)
!430 = !DILocation(line: 925, column: 5, scope: !429)
!431 = !DILocation(line: 926, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !295, file: !2, line: 926, column: 8)
!433 = !DILocation(line: 926, column: 8, scope: !295)
!434 = !DILocation(line: 927, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !2, line: 927, column: 7)
!436 = distinct !DILexicalBlock(scope: !432, file: !2, line: 926, column: 22)
!437 = !DILocation(line: 928, column: 5, scope: !436)
!438 = !DILocation(line: 929, column: 5, scope: !439)
!439 = distinct !DILexicalBlock(scope: !295, file: !2, line: 929, column: 5)
!440 = !DILocation(line: 931, column: 3, scope: !296)
!441 = !DILocation(line: 932, column: 13, scope: !300)
!442 = !DILocation(line: 932, column: 19, scope: !300)
!443 = !DILocation(line: 932, column: 71, scope: !300)
!444 = !DILocation(line: 932, column: 63, scope: !300)
!445 = !DILocation(line: 932, column: 75, scope: !300)
!446 = !DILocation(line: 932, column: 11, scope: !296)
!447 = !DILocation(line: 941, column: 22, scope: !299)
!448 = !DILocation(line: 942, column: 22, scope: !299)
!449 = !DILocation(line: 943, column: 36, scope: !299)
!450 = !DILocation(line: 951, column: 5, scope: !299)
!451 = !DILocation(line: 952, column: 5, scope: !299)
!452 = !DILocalVariable(name: "lambda", arg: 1, scope: !453, file: !2, line: 595, type: !78)
!453 = distinct !DISubprogram(name: "coulomb_CF1", scope: !2, file: !2, line: 595, type: !454, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !457)
!454 = !DISubroutineType(types: !455)
!455 = !{!28, !78, !78, !78, !202, !202, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!457 = !{!452, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !475, !476, !477}
!458 = !DILocalVariable(name: "eta", arg: 2, scope: !453, file: !2, line: 596, type: !78)
!459 = !DILocalVariable(name: "x", arg: 3, scope: !453, file: !2, line: 596, type: !78)
!460 = !DILocalVariable(name: "fcl_sign", arg: 4, scope: !453, file: !2, line: 597, type: !202)
!461 = !DILocalVariable(name: "result", arg: 5, scope: !453, file: !2, line: 598, type: !202)
!462 = !DILocalVariable(name: "count", arg: 6, scope: !453, file: !2, line: 599, type: !456)
!463 = !DILocalVariable(name: "CF1_small", scope: !453, file: !2, line: 602, type: !280)
!464 = !DILocalVariable(name: "CF1_abort", scope: !453, file: !2, line: 603, type: !280)
!465 = !DILocalVariable(name: "CF1_acc", scope: !453, file: !2, line: 604, type: !280)
!466 = !DILocalVariable(name: "x_inv", scope: !453, file: !2, line: 605, type: !280)
!467 = !DILocalVariable(name: "px", scope: !453, file: !2, line: 606, type: !280)
!468 = !DILocalVariable(name: "pk", scope: !453, file: !2, line: 608, type: !78)
!469 = !DILocalVariable(name: "F", scope: !453, file: !2, line: 609, type: !78)
!470 = !DILocalVariable(name: "D", scope: !453, file: !2, line: 610, type: !78)
!471 = !DILocalVariable(name: "C", scope: !453, file: !2, line: 610, type: !78)
!472 = !DILocalVariable(name: "df", scope: !453, file: !2, line: 611, type: !78)
!473 = !DILocalVariable(name: "pk1", scope: !474, file: !2, line: 621, type: !78)
!474 = distinct !DILexicalBlock(scope: !453, file: !2, line: 620, column: 6)
!475 = !DILocalVariable(name: "ek", scope: !474, file: !2, line: 622, type: !78)
!476 = !DILocalVariable(name: "rk2", scope: !474, file: !2, line: 623, type: !78)
!477 = !DILocalVariable(name: "tk", scope: !474, file: !2, line: 624, type: !78)
!478 = !DILocation(line: 0, scope: !453, inlinedAt: !479)
!479 = distinct !DILocation(line: 960, column: 20, scope: !299)
!480 = !DILocation(line: 605, column: 31, scope: !453, inlinedAt: !479)
!481 = !DILocation(line: 606, column: 41, scope: !453, inlinedAt: !479)
!482 = !DILocation(line: 609, column: 18, scope: !453, inlinedAt: !479)
!483 = !DILocation(line: 609, column: 26, scope: !453, inlinedAt: !479)
!484 = !DILocation(line: 616, column: 6, scope: !485, inlinedAt: !479)
!485 = distinct !DILexicalBlock(scope: !453, file: !2, line: 616, column: 6)
!486 = !DILocation(line: 616, column: 14, scope: !485, inlinedAt: !479)
!487 = !DILocation(line: 616, column: 6, scope: !453, inlinedAt: !479)
!488 = !DILocation(line: 620, column: 3, scope: !453, inlinedAt: !479)
!489 = !DILocation(line: 622, column: 22, scope: !474, inlinedAt: !479)
!490 = !DILocation(line: 0, scope: !474, inlinedAt: !479)
!491 = !DILocation(line: 623, column: 26, scope: !474, inlinedAt: !479)
!492 = !DILocation(line: 624, column: 22, scope: !474, inlinedAt: !479)
!493 = !DILocation(line: 624, column: 40, scope: !474, inlinedAt: !479)
!494 = !DILocation(line: 624, column: 28, scope: !474, inlinedAt: !479)
!495 = !DILocation(line: 625, column: 21, scope: !474, inlinedAt: !479)
!496 = !DILocation(line: 626, column: 21, scope: !474, inlinedAt: !479)
!497 = !DILocation(line: 627, column: 8, scope: !498, inlinedAt: !479)
!498 = distinct !DILexicalBlock(scope: !474, file: !2, line: 627, column: 8)
!499 = !DILocation(line: 627, column: 16, scope: !498, inlinedAt: !479)
!500 = !DILocation(line: 627, column: 8, scope: !474, inlinedAt: !479)
!501 = !DILocation(line: 628, column: 8, scope: !502, inlinedAt: !479)
!502 = distinct !DILexicalBlock(scope: !474, file: !2, line: 628, column: 8)
!503 = !DILocation(line: 628, column: 16, scope: !502, inlinedAt: !479)
!504 = !DILocation(line: 629, column: 12, scope: !474, inlinedAt: !479)
!505 = !DILocation(line: 630, column: 12, scope: !474, inlinedAt: !479)
!506 = !DILocation(line: 631, column: 12, scope: !474, inlinedAt: !479)
!507 = !DILocation(line: 637, column: 12, scope: !508, inlinedAt: !479)
!508 = distinct !DILexicalBlock(scope: !474, file: !2, line: 637, column: 9)
!509 = !DILocation(line: 637, column: 9, scope: !474, inlinedAt: !479)
!510 = !DILocation(line: 639, column: 7, scope: !511, inlinedAt: !479)
!511 = distinct !DILexicalBlock(scope: !512, file: !2, line: 639, column: 7)
!512 = distinct !DILexicalBlock(scope: !508, file: !2, line: 637, column: 19)
!513 = !DILocation(line: 641, column: 5, scope: !474, inlinedAt: !479)
!514 = !DILocation(line: 643, column: 9, scope: !453, inlinedAt: !479)
!515 = !DILocation(line: 643, column: 22, scope: !453, inlinedAt: !479)
!516 = !DILocation(line: 642, column: 3, scope: !474, inlinedAt: !479)
!517 = distinct !{!517, !488, !518, !271}
!518 = !DILocation(line: 643, column: 31, scope: !453, inlinedAt: !479)
!519 = !DILocation(line: 968, column: 32, scope: !299)
!520 = !DILocalVariable(name: "lam_min", arg: 1, scope: !521, file: !2, line: 520, type: !78)
!521 = distinct !DISubprogram(name: "coulomb_F_recur", scope: !2, file: !2, line: 520, type: !522, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !524)
!522 = !DISubroutineType(types: !523)
!523 = !{!28, !78, !28, !78, !78, !78, !78, !202, !202}
!524 = !{!520, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !542, !543, !544}
!525 = !DILocalVariable(name: "kmax", arg: 2, scope: !521, file: !2, line: 520, type: !28)
!526 = !DILocalVariable(name: "eta", arg: 3, scope: !521, file: !2, line: 521, type: !78)
!527 = !DILocalVariable(name: "x", arg: 4, scope: !521, file: !2, line: 521, type: !78)
!528 = !DILocalVariable(name: "F_lam_max", arg: 5, scope: !521, file: !2, line: 522, type: !78)
!529 = !DILocalVariable(name: "Fp_lam_max", arg: 6, scope: !521, file: !2, line: 522, type: !78)
!530 = !DILocalVariable(name: "F_lam_min", arg: 7, scope: !521, file: !2, line: 523, type: !202)
!531 = !DILocalVariable(name: "Fp_lam_min", arg: 8, scope: !521, file: !2, line: 523, type: !202)
!532 = !DILocalVariable(name: "x_inv", scope: !521, file: !2, line: 526, type: !78)
!533 = !DILocalVariable(name: "fcl", scope: !521, file: !2, line: 527, type: !78)
!534 = !DILocalVariable(name: "fpl", scope: !521, file: !2, line: 528, type: !78)
!535 = !DILocalVariable(name: "lam_max", scope: !521, file: !2, line: 529, type: !78)
!536 = !DILocalVariable(name: "lam", scope: !521, file: !2, line: 530, type: !78)
!537 = !DILocalVariable(name: "k", scope: !521, file: !2, line: 531, type: !28)
!538 = !DILocalVariable(name: "el", scope: !539, file: !2, line: 534, type: !78)
!539 = distinct !DILexicalBlock(scope: !540, file: !2, line: 533, column: 28)
!540 = distinct !DILexicalBlock(scope: !541, file: !2, line: 533, column: 3)
!541 = distinct !DILexicalBlock(scope: !521, file: !2, line: 533, column: 3)
!542 = !DILocalVariable(name: "rl", scope: !539, file: !2, line: 535, type: !78)
!543 = !DILocalVariable(name: "sl", scope: !539, file: !2, line: 536, type: !78)
!544 = !DILocalVariable(name: "fc_lm1", scope: !539, file: !2, line: 537, type: !78)
!545 = !DILocation(line: 0, scope: !521, inlinedAt: !546)
!546 = distinct !DILocation(line: 970, column: 17, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 969, column: 19)
!548 = distinct !DILexicalBlock(scope: !299, file: !2, line: 969, column: 8)
!549 = !DILocation(line: 969, column: 8, scope: !299)
!550 = !DILocation(line: 529, column: 30, scope: !521, inlinedAt: !546)
!551 = !DILocation(line: 533, column: 3, scope: !541, inlinedAt: !546)
!552 = !DILocation(line: 533, scope: !541, inlinedAt: !546)
!553 = !DILocation(line: 534, column: 20, scope: !539, inlinedAt: !546)
!554 = !DILocation(line: 0, scope: !539, inlinedAt: !546)
!555 = !DILocation(line: 535, column: 17, scope: !539, inlinedAt: !546)
!556 = !DILocation(line: 536, column: 26, scope: !539, inlinedAt: !546)
!557 = !DILocation(line: 538, column: 18, scope: !539, inlinedAt: !546)
!558 = !DILocation(line: 538, column: 28, scope: !539, inlinedAt: !546)
!559 = !DILocation(line: 539, column: 21, scope: !539, inlinedAt: !546)
!560 = !DILocation(line: 539, column: 30, scope: !539, inlinedAt: !546)
!561 = !DILocation(line: 541, column: 9, scope: !539, inlinedAt: !546)
!562 = !DILocation(line: 533, column: 18, scope: !540, inlinedAt: !546)
!563 = distinct !{!563, !551, !564, !271}
!564 = !DILocation(line: 542, column: 3, scope: !541, inlinedAt: !546)
!565 = !DILocation(line: 0, scope: !548)
!566 = !DILocation(line: 982, column: 16, scope: !567)
!567 = distinct !DILexicalBlock(scope: !299, file: !2, line: 982, column: 8)
!568 = !DILocation(line: 982, column: 8, scope: !299)
!569 = !DILocalVariable(name: "Cmhalf", scope: !570, file: !2, line: 458, type: !80)
!570 = distinct !DISubprogram(name: "coulomb_FGmhalf_series", scope: !2, file: !2, line: 451, type: !571, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!28, !280, !280, !79, !79}
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !569, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!574 = !DILocalVariable(name: "eta", arg: 1, scope: !570, file: !2, line: 451, type: !280)
!575 = !DILocalVariable(name: "x", arg: 2, scope: !570, file: !2, line: 451, type: !280)
!576 = !DILocalVariable(name: "F", arg: 3, scope: !570, file: !2, line: 452, type: !79)
!577 = !DILocalVariable(name: "G", arg: 4, scope: !570, file: !2, line: 452, type: !79)
!578 = !DILocalVariable(name: "max_iter", scope: !570, file: !2, line: 454, type: !281)
!579 = !DILocalVariable(name: "rx", scope: !570, file: !2, line: 455, type: !280)
!580 = !DILocalVariable(name: "x2", scope: !570, file: !2, line: 456, type: !280)
!581 = !DILocalVariable(name: "tex", scope: !570, file: !2, line: 457, type: !280)
!582 = !DILocalVariable(name: "stat_CL", scope: !570, file: !2, line: 459, type: !28)
!583 = !DILocalVariable(name: "u_mm2", scope: !570, file: !2, line: 460, type: !78)
!584 = !DILocalVariable(name: "u_mm1", scope: !570, file: !2, line: 461, type: !78)
!585 = !DILocalVariable(name: "u_m", scope: !570, file: !2, line: 462, type: !78)
!586 = !DILocalVariable(name: "v_mm2", scope: !570, file: !2, line: 463, type: !78)
!587 = !DILocalVariable(name: "v_mm1", scope: !570, file: !2, line: 463, type: !78)
!588 = !DILocalVariable(name: "v_m", scope: !570, file: !2, line: 463, type: !78)
!589 = !DILocalVariable(name: "f_sum", scope: !570, file: !2, line: 464, type: !78)
!590 = !DILocalVariable(name: "g_sum", scope: !570, file: !2, line: 464, type: !78)
!591 = !DILocalVariable(name: "tmp1", scope: !570, file: !2, line: 465, type: !78)
!592 = !DILocalVariable(name: "rpsi_1pe", scope: !570, file: !2, line: 466, type: !80)
!593 = !DILocalVariable(name: "rpsi_1p2e", scope: !570, file: !2, line: 467, type: !80)
!594 = !DILocalVariable(name: "m", scope: !570, file: !2, line: 468, type: !28)
!595 = !DILocalVariable(name: "m2", scope: !596, file: !2, line: 480, type: !78)
!596 = distinct !DILexicalBlock(scope: !570, file: !2, line: 479, column: 23)
!597 = !DILocation(line: 0, scope: !570, inlinedAt: !598)
!598 = distinct !DILocation(line: 983, column: 18, scope: !599)
!599 = distinct !DILexicalBlock(scope: !567, file: !2, line: 982, column: 25)
!600 = !DILocation(line: 455, column: 22, scope: !570, inlinedAt: !598)
!601 = !DILocation(line: 456, column: 23, scope: !570, inlinedAt: !598)
!602 = !DILocation(line: 457, column: 25, scope: !570, inlinedAt: !598)
!603 = !DILocation(line: 457, column: 29, scope: !570, inlinedAt: !598)
!604 = !DILocation(line: 458, column: 3, scope: !570, inlinedAt: !598)
!605 = !DILocation(line: 459, column: 17, scope: !570, inlinedAt: !598)
!606 = !DILocation(line: 466, column: 3, scope: !570, inlinedAt: !598)
!607 = !DILocation(line: 467, column: 3, scope: !570, inlinedAt: !598)
!608 = !DILocation(line: 470, column: 3, scope: !570, inlinedAt: !598)
!609 = !DILocation(line: 471, column: 3, scope: !570, inlinedAt: !598)
!610 = !DILocation(line: 473, column: 42, scope: !570, inlinedAt: !598)
!611 = !DILocation(line: 473, column: 62, scope: !570, inlinedAt: !598)
!612 = !DILocation(line: 473, column: 51, scope: !570, inlinedAt: !598)
!613 = !DILocation(line: 474, column: 22, scope: !570, inlinedAt: !598)
!614 = !DILocation(line: 474, column: 14, scope: !570, inlinedAt: !598)
!615 = !DILocation(line: 477, column: 17, scope: !570, inlinedAt: !598)
!616 = !DILocation(line: 479, column: 3, scope: !570, inlinedAt: !598)
!617 = !DILocation(line: 480, column: 18, scope: !596, inlinedAt: !598)
!618 = !DILocation(line: 480, column: 17, scope: !596, inlinedAt: !598)
!619 = !DILocation(line: 0, scope: !596, inlinedAt: !598)
!620 = !DILocation(line: 481, column: 15, scope: !596, inlinedAt: !598)
!621 = !DILocation(line: 481, column: 26, scope: !596, inlinedAt: !598)
!622 = !DILocation(line: 481, column: 33, scope: !596, inlinedAt: !598)
!623 = !DILocation(line: 482, column: 15, scope: !596, inlinedAt: !598)
!624 = !DILocation(line: 482, column: 26, scope: !596, inlinedAt: !598)
!625 = !DILocation(line: 482, column: 39, scope: !596, inlinedAt: !598)
!626 = !DILocation(line: 482, column: 38, scope: !596, inlinedAt: !598)
!627 = !DILocation(line: 482, column: 40, scope: !596, inlinedAt: !598)
!628 = !DILocation(line: 482, column: 45, scope: !596, inlinedAt: !598)
!629 = !DILocation(line: 484, column: 11, scope: !596, inlinedAt: !598)
!630 = !DILocation(line: 485, column: 17, scope: !631, inlinedAt: !598)
!631 = distinct !DILexicalBlock(scope: !596, file: !2, line: 485, column: 11)
!632 = !DILocation(line: 486, column: 8, scope: !631, inlinedAt: !598)
!633 = !DILocation(line: 487, column: 20, scope: !631, inlinedAt: !598)
!634 = !DILocation(line: 487, column: 12, scope: !631, inlinedAt: !598)
!635 = !DILocation(line: 487, column: 38, scope: !631, inlinedAt: !598)
!636 = !DILocation(line: 487, column: 30, scope: !631, inlinedAt: !598)
!637 = !DILocation(line: 487, column: 46, scope: !631, inlinedAt: !598)
!638 = !DILocation(line: 485, column: 11, scope: !596, inlinedAt: !598)
!639 = !DILocation(line: 492, column: 6, scope: !596, inlinedAt: !598)
!640 = !DILocation(line: 479, column: 11, scope: !570, inlinedAt: !598)
!641 = !DILocation(line: 468, column: 7, scope: !570, inlinedAt: !598)
!642 = !DILocation(line: 495, column: 19, scope: !570, inlinedAt: !598)
!643 = !DILocation(line: 495, column: 23, scope: !570, inlinedAt: !598)
!644 = !DILocation(line: 495, column: 28, scope: !570, inlinedAt: !598)
!645 = !DILocation(line: 495, column: 10, scope: !570, inlinedAt: !598)
!646 = distinct !DIAssignID()
!647 = !DILocation(line: 496, column: 19, scope: !570, inlinedAt: !598)
!648 = !DILocation(line: 496, column: 33, scope: !570, inlinedAt: !598)
!649 = !DILocation(line: 496, column: 25, scope: !570, inlinedAt: !598)
!650 = !DILocation(line: 496, column: 23, scope: !570, inlinedAt: !598)
!651 = !DILocation(line: 496, column: 64, scope: !570, inlinedAt: !598)
!652 = !DILocation(line: 496, column: 63, scope: !570, inlinedAt: !598)
!653 = !DILocation(line: 496, column: 6, scope: !570, inlinedAt: !598)
!654 = !DILocation(line: 496, column: 10, scope: !570, inlinedAt: !598)
!655 = distinct !DIAssignID()
!656 = !DILocation(line: 498, column: 15, scope: !570, inlinedAt: !598)
!657 = !DILocation(line: 499, column: 12, scope: !570, inlinedAt: !598)
!658 = !DILocation(line: 499, column: 15, scope: !570, inlinedAt: !598)
!659 = !DILocation(line: 499, column: 38, scope: !570, inlinedAt: !598)
!660 = !DILocation(line: 499, column: 30, scope: !570, inlinedAt: !598)
!661 = !DILocation(line: 499, column: 10, scope: !570, inlinedAt: !598)
!662 = distinct !DIAssignID()
!663 = !DILocation(line: 500, column: 12, scope: !570, inlinedAt: !598)
!664 = !DILocation(line: 500, column: 22, scope: !570, inlinedAt: !598)
!665 = !DILocation(line: 500, column: 35, scope: !570, inlinedAt: !598)
!666 = !DILocation(line: 500, column: 20, scope: !570, inlinedAt: !598)
!667 = !DILocation(line: 500, column: 48, scope: !570, inlinedAt: !598)
!668 = !DILocation(line: 500, column: 47, scope: !570, inlinedAt: !598)
!669 = !DILocation(line: 500, column: 79, scope: !570, inlinedAt: !598)
!670 = !DILocation(line: 500, column: 82, scope: !570, inlinedAt: !598)
!671 = !DILocation(line: 500, column: 67, scope: !570, inlinedAt: !598)
!672 = !DILocation(line: 500, column: 65, scope: !570, inlinedAt: !598)
!673 = !DILocation(line: 500, column: 6, scope: !570, inlinedAt: !598)
!674 = !DILocation(line: 500, column: 10, scope: !570, inlinedAt: !598)
!675 = distinct !DIAssignID()
!676 = !DILocation(line: 502, column: 8, scope: !677, inlinedAt: !598)
!677 = distinct !DILexicalBlock(scope: !570, file: !2, line: 502, column: 6)
!678 = !DILocation(line: 502, column: 6, scope: !570, inlinedAt: !598)
!679 = !DILocation(line: 503, column: 5, scope: !680, inlinedAt: !598)
!680 = distinct !DILexicalBlock(scope: !677, file: !2, line: 503, column: 5)
!681 = !DILocation(line: 0, scope: !677, inlinedAt: !598)
!682 = !DILocation(line: 506, column: 1, scope: !570, inlinedAt: !598)
!683 = !DILocation(line: 984, column: 5, scope: !599)
!684 = !DILocation(line: 985, column: 21, scope: !685)
!685 = distinct !DILexicalBlock(scope: !567, file: !2, line: 985, column: 13)
!686 = !DILocation(line: 985, column: 13, scope: !567)
!687 = !DILocation(line: 986, column: 18, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !2, line: 985, column: 29)
!689 = !DILocation(line: 987, column: 5, scope: !688)
!690 = !DILocation(line: 988, column: 21, scope: !691)
!691 = distinct !DILexicalBlock(scope: !685, file: !2, line: 988, column: 13)
!692 = !DILocation(line: 988, column: 13, scope: !685)
!693 = !DILocation(line: 990, column: 15, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !2, line: 988, column: 29)
!695 = !DILocation(line: 991, column: 10, scope: !694)
!696 = !DILocation(line: 991, column: 15, scope: !694)
!697 = !DILocation(line: 992, column: 15, scope: !694)
!698 = !DILocation(line: 993, column: 41, scope: !694)
!699 = !DILocation(line: 993, column: 39, scope: !694)
!700 = !DILocation(line: 993, column: 11, scope: !694)
!701 = !DILocation(line: 993, column: 15, scope: !694)
!702 = !DILocation(line: 995, column: 41, scope: !694)
!703 = !DILocation(line: 995, column: 39, scope: !694)
!704 = !DILocation(line: 995, column: 10, scope: !694)
!705 = !DILocation(line: 995, column: 15, scope: !694)
!706 = !DILocation(line: 997, column: 11, scope: !694)
!707 = !DILocation(line: 997, column: 15, scope: !694)
!708 = !DILocation(line: 998, column: 14, scope: !694)
!709 = !DILocation(line: 999, column: 14, scope: !694)
!710 = !DILocation(line: 1000, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !694, file: !2, line: 1000, column: 7)
!712 = !DILocation(line: 1003, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !691, file: !2, line: 1002, column: 10)
!714 = !DILocation(line: 0, scope: !567)
!715 = !DILocation(line: 1007, column: 43, scope: !299)
!716 = !DILocation(line: 1008, column: 51, scope: !299)
!717 = !DILocation(line: 1008, column: 40, scope: !299)
!718 = !DILocation(line: 1008, column: 71, scope: !299)
!719 = !DILocation(line: 1008, column: 60, scope: !299)
!720 = !DILocation(line: 1009, column: 23, scope: !299)
!721 = !DILocation(line: 1009, column: 57, scope: !299)
!722 = !DILocation(line: 1009, column: 46, scope: !299)
!723 = !DILocation(line: 1010, column: 64, scope: !299)
!724 = !DILocation(line: 1010, column: 67, scope: !299)
!725 = !DILocation(line: 1010, column: 49, scope: !299)
!726 = !DILocation(line: 1010, column: 47, scope: !299)
!727 = !DILocation(line: 1011, column: 33, scope: !299)
!728 = !DILocation(line: 1015, column: 55, scope: !299)
!729 = !DILocation(line: 1015, column: 60, scope: !299)
!730 = !DILocation(line: 1015, column: 45, scope: !299)
!731 = !DILocation(line: 1015, column: 44, scope: !299)
!732 = !DILocation(line: 1016, column: 17, scope: !299)
!733 = !DILocation(line: 1017, column: 20, scope: !299)
!734 = !DILocation(line: 1017, column: 34, scope: !299)
!735 = !DILocation(line: 1018, column: 17, scope: !299)
!736 = !DILocation(line: 1019, column: 20, scope: !299)
!737 = !DILocation(line: 1019, column: 35, scope: !299)
!738 = !DILocation(line: 1022, column: 40, scope: !299)
!739 = !DILocalVariable(name: "lam_min", arg: 1, scope: !740, file: !2, line: 559, type: !280)
!740 = distinct !DISubprogram(name: "coulomb_G_recur", scope: !2, file: !2, line: 559, type: !741, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{!28, !280, !281, !280, !280, !280, !280, !202, !202}
!743 = !{!739, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !760, !761, !762}
!744 = !DILocalVariable(name: "kmax", arg: 2, scope: !740, file: !2, line: 559, type: !281)
!745 = !DILocalVariable(name: "eta", arg: 3, scope: !740, file: !2, line: 560, type: !280)
!746 = !DILocalVariable(name: "x", arg: 4, scope: !740, file: !2, line: 560, type: !280)
!747 = !DILocalVariable(name: "G_lam_min", arg: 5, scope: !740, file: !2, line: 561, type: !280)
!748 = !DILocalVariable(name: "Gp_lam_min", arg: 6, scope: !740, file: !2, line: 561, type: !280)
!749 = !DILocalVariable(name: "G_lam_max", arg: 7, scope: !740, file: !2, line: 562, type: !202)
!750 = !DILocalVariable(name: "Gp_lam_max", arg: 8, scope: !740, file: !2, line: 562, type: !202)
!751 = !DILocalVariable(name: "x_inv", scope: !740, file: !2, line: 565, type: !78)
!752 = !DILocalVariable(name: "gcl", scope: !740, file: !2, line: 566, type: !78)
!753 = !DILocalVariable(name: "gpl", scope: !740, file: !2, line: 567, type: !78)
!754 = !DILocalVariable(name: "lam", scope: !740, file: !2, line: 568, type: !78)
!755 = !DILocalVariable(name: "k", scope: !740, file: !2, line: 569, type: !28)
!756 = !DILocalVariable(name: "el", scope: !757, file: !2, line: 572, type: !78)
!757 = distinct !DILexicalBlock(scope: !758, file: !2, line: 571, column: 26)
!758 = distinct !DILexicalBlock(scope: !759, file: !2, line: 571, column: 3)
!759 = distinct !DILexicalBlock(scope: !740, file: !2, line: 571, column: 3)
!760 = !DILocalVariable(name: "rl", scope: !757, file: !2, line: 573, type: !78)
!761 = !DILocalVariable(name: "sl", scope: !757, file: !2, line: 574, type: !78)
!762 = !DILocalVariable(name: "gcl1", scope: !757, file: !2, line: 575, type: !78)
!763 = !DILocation(line: 0, scope: !740, inlinedAt: !764)
!764 = distinct !DILocation(line: 1022, column: 15, scope: !299)
!765 = !DILocation(line: 571, column: 13, scope: !758, inlinedAt: !764)
!766 = !DILocation(line: 571, column: 3, scope: !759, inlinedAt: !764)
!767 = !DILocation(line: 572, column: 20, scope: !757, inlinedAt: !764)
!768 = !DILocation(line: 0, scope: !757, inlinedAt: !764)
!769 = !DILocation(line: 573, column: 17, scope: !757, inlinedAt: !764)
!770 = !DILocation(line: 574, column: 25, scope: !757, inlinedAt: !764)
!771 = !DILocation(line: 575, column: 22, scope: !757, inlinedAt: !764)
!772 = !DILocation(line: 575, column: 33, scope: !757, inlinedAt: !764)
!773 = !DILocation(line: 576, column: 15, scope: !757, inlinedAt: !764)
!774 = !DILocation(line: 576, column: 24, scope: !757, inlinedAt: !764)
!775 = !DILocation(line: 571, column: 22, scope: !758, inlinedAt: !764)
!776 = distinct !{!776, !766, !777, !271}
!777 = !DILocation(line: 579, column: 3, scope: !759, inlinedAt: !764)
!778 = !DILocation(line: 1027, column: 13, scope: !299)
!779 = !DILocation(line: 1028, column: 8, scope: !299)
!780 = !DILocation(line: 1029, column: 37, scope: !299)
!781 = !DILocation(line: 1029, column: 12, scope: !299)
!782 = !DILocation(line: 1031, column: 14, scope: !299)
!783 = !DILocation(line: 1032, column: 9, scope: !299)
!784 = !DILocation(line: 1033, column: 38, scope: !299)
!785 = !DILocation(line: 1033, column: 13, scope: !299)
!786 = !DILocation(line: 1035, column: 35, scope: !299)
!787 = !DILocation(line: 1035, column: 17, scope: !299)
!788 = !DILocation(line: 1035, column: 72, scope: !299)
!789 = !DILocation(line: 1035, column: 53, scope: !299)
!790 = !DILocation(line: 1037, column: 13, scope: !299)
!791 = !DILocation(line: 1038, column: 27, scope: !299)
!792 = !DILocation(line: 1038, column: 25, scope: !299)
!793 = !DILocation(line: 1038, column: 8, scope: !299)
!794 = !DILocation(line: 1039, column: 31, scope: !299)
!795 = !DILocation(line: 1039, column: 21, scope: !299)
!796 = !DILocation(line: 1039, column: 19, scope: !299)
!797 = !DILocation(line: 1039, column: 35, scope: !299)
!798 = !DILocation(line: 1039, column: 53, scope: !299)
!799 = !DILocation(line: 1039, column: 12, scope: !299)
!800 = !DILocation(line: 1041, column: 14, scope: !299)
!801 = !DILocation(line: 1042, column: 28, scope: !299)
!802 = !DILocation(line: 1042, column: 26, scope: !299)
!803 = !DILocation(line: 1042, column: 9, scope: !299)
!804 = !DILocation(line: 1043, column: 54, scope: !299)
!805 = !DILocation(line: 1043, column: 13, scope: !299)
!806 = !DILocation(line: 1045, column: 12, scope: !299)
!807 = !DILocation(line: 1046, column: 12, scope: !299)
!808 = !DILocation(line: 1048, column: 12, scope: !299)
!809 = !DILocation(line: 1049, column: 3, scope: !300)
!810 = !DILocation(line: 1050, column: 18, scope: !329)
!811 = !DILocation(line: 1050, column: 13, scope: !329)
!812 = !DILocation(line: 1050, column: 11, scope: !300)
!813 = !DILocation(line: 1055, column: 5, scope: !328)
!814 = !DILocation(line: 1056, column: 5, scope: !328)
!815 = !DILocation(line: 1057, column: 5, scope: !328)
!816 = !DILocation(line: 1068, column: 18, scope: !328)
!817 = !{i32 0, i32 17}
!818 = !DILocation(line: 1069, column: 16, scope: !819)
!819 = distinct !DILexicalBlock(scope: !328, file: !2, line: 1069, column: 8)
!820 = !DILocation(line: 1069, column: 8, scope: !328)
!821 = !DILocation(line: 1071, column: 17, scope: !822)
!822 = distinct !DILexicalBlock(scope: !819, file: !2, line: 1069, column: 22)
!823 = !{i64 0, i64 8, !256, i64 8, i64 8, !256}
!824 = distinct !DIAssignID()
!825 = !DILocation(line: 1072, column: 17, scope: !822)
!826 = distinct !DIAssignID()
!827 = !DILocation(line: 1073, column: 19, scope: !822)
!828 = !DILocation(line: 1073, column: 17, scope: !822)
!829 = distinct !DIAssignID()
!830 = !DILocation(line: 1074, column: 5, scope: !822)
!831 = !DILocation(line: 1076, column: 20, scope: !832)
!832 = distinct !DILexicalBlock(scope: !819, file: !2, line: 1075, column: 10)
!833 = !DILocation(line: 0, scope: !819)
!834 = !DILocation(line: 0, scope: !453, inlinedAt: !835)
!835 = distinct !DILocation(line: 1079, column: 22, scope: !328)
!836 = !DILocation(line: 605, column: 31, scope: !453, inlinedAt: !835)
!837 = !DILocation(line: 606, column: 41, scope: !453, inlinedAt: !835)
!838 = !DILocation(line: 609, column: 18, scope: !453, inlinedAt: !835)
!839 = !DILocation(line: 609, column: 26, scope: !453, inlinedAt: !835)
!840 = !DILocation(line: 616, column: 6, scope: !485, inlinedAt: !835)
!841 = !DILocation(line: 616, column: 14, scope: !485, inlinedAt: !835)
!842 = !DILocation(line: 616, column: 6, scope: !453, inlinedAt: !835)
!843 = !DILocation(line: 620, column: 3, scope: !453, inlinedAt: !835)
!844 = !DILocation(line: 622, column: 22, scope: !474, inlinedAt: !835)
!845 = !DILocation(line: 0, scope: !474, inlinedAt: !835)
!846 = !DILocation(line: 623, column: 26, scope: !474, inlinedAt: !835)
!847 = !DILocation(line: 624, column: 22, scope: !474, inlinedAt: !835)
!848 = !DILocation(line: 624, column: 40, scope: !474, inlinedAt: !835)
!849 = !DILocation(line: 624, column: 28, scope: !474, inlinedAt: !835)
!850 = !DILocation(line: 625, column: 21, scope: !474, inlinedAt: !835)
!851 = !DILocation(line: 626, column: 21, scope: !474, inlinedAt: !835)
!852 = !DILocation(line: 627, column: 8, scope: !498, inlinedAt: !835)
!853 = !DILocation(line: 627, column: 16, scope: !498, inlinedAt: !835)
!854 = !DILocation(line: 627, column: 8, scope: !474, inlinedAt: !835)
!855 = !DILocation(line: 628, column: 8, scope: !502, inlinedAt: !835)
!856 = !DILocation(line: 628, column: 16, scope: !502, inlinedAt: !835)
!857 = !DILocation(line: 629, column: 12, scope: !474, inlinedAt: !835)
!858 = !DILocation(line: 630, column: 12, scope: !474, inlinedAt: !835)
!859 = !DILocation(line: 631, column: 12, scope: !474, inlinedAt: !835)
!860 = !DILocation(line: 637, column: 12, scope: !508, inlinedAt: !835)
!861 = !DILocation(line: 637, column: 9, scope: !474, inlinedAt: !835)
!862 = !DILocation(line: 639, column: 7, scope: !511, inlinedAt: !835)
!863 = !DILocation(line: 643, column: 9, scope: !453, inlinedAt: !835)
!864 = !DILocation(line: 643, column: 22, scope: !453, inlinedAt: !835)
!865 = !DILocation(line: 642, column: 3, scope: !474, inlinedAt: !835)
!866 = distinct !{!866, !843, !867, !271}
!867 = !DILocation(line: 643, column: 31, scope: !453, inlinedAt: !835)
!868 = !DILocation(line: 1080, column: 8, scope: !328)
!869 = !DILocation(line: 0, scope: !453, inlinedAt: !870)
!870 = distinct !DILocation(line: 1086, column: 24, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !2, line: 1085, column: 10)
!872 = distinct !DILexicalBlock(scope: !328, file: !2, line: 1080, column: 8)
!873 = !DILocation(line: 606, column: 41, scope: !453, inlinedAt: !870)
!874 = !DILocation(line: 609, column: 18, scope: !453, inlinedAt: !870)
!875 = !DILocation(line: 609, column: 26, scope: !453, inlinedAt: !870)
!876 = !DILocation(line: 616, column: 6, scope: !485, inlinedAt: !870)
!877 = !DILocation(line: 616, column: 14, scope: !485, inlinedAt: !870)
!878 = !DILocation(line: 616, column: 6, scope: !453, inlinedAt: !870)
!879 = !DILocation(line: 620, column: 3, scope: !453, inlinedAt: !870)
!880 = !DILocation(line: 622, column: 22, scope: !474, inlinedAt: !870)
!881 = !DILocation(line: 0, scope: !474, inlinedAt: !870)
!882 = !DILocation(line: 623, column: 26, scope: !474, inlinedAt: !870)
!883 = !DILocation(line: 624, column: 22, scope: !474, inlinedAt: !870)
!884 = !DILocation(line: 624, column: 40, scope: !474, inlinedAt: !870)
!885 = !DILocation(line: 624, column: 28, scope: !474, inlinedAt: !870)
!886 = !DILocation(line: 625, column: 21, scope: !474, inlinedAt: !870)
!887 = !DILocation(line: 626, column: 21, scope: !474, inlinedAt: !870)
!888 = !DILocation(line: 627, column: 8, scope: !498, inlinedAt: !870)
!889 = !DILocation(line: 627, column: 16, scope: !498, inlinedAt: !870)
!890 = !DILocation(line: 627, column: 8, scope: !474, inlinedAt: !870)
!891 = !DILocation(line: 628, column: 8, scope: !502, inlinedAt: !870)
!892 = !DILocation(line: 628, column: 16, scope: !502, inlinedAt: !870)
!893 = !DILocation(line: 629, column: 12, scope: !474, inlinedAt: !870)
!894 = !DILocation(line: 630, column: 12, scope: !474, inlinedAt: !870)
!895 = !DILocation(line: 631, column: 12, scope: !474, inlinedAt: !870)
!896 = !DILocation(line: 637, column: 12, scope: !508, inlinedAt: !870)
!897 = !DILocation(line: 637, column: 9, scope: !474, inlinedAt: !870)
!898 = !DILocation(line: 639, column: 7, scope: !511, inlinedAt: !870)
!899 = !DILocation(line: 643, column: 9, scope: !453, inlinedAt: !870)
!900 = !DILocation(line: 643, column: 22, scope: !453, inlinedAt: !870)
!901 = !DILocation(line: 642, column: 3, scope: !474, inlinedAt: !870)
!902 = distinct !{!902, !879, !903, !271}
!903 = !DILocation(line: 643, column: 31, scope: !453, inlinedAt: !870)
!904 = !DILocation(line: 0, scope: !872)
!905 = !DILocation(line: 1089, column: 22, scope: !328)
!906 = !DILocation(line: 1089, column: 12, scope: !328)
!907 = !DILocation(line: 1090, column: 22, scope: !328)
!908 = !DILocation(line: 1090, column: 8, scope: !328)
!909 = !DILocation(line: 1090, column: 12, scope: !328)
!910 = !DILocation(line: 1092, column: 22, scope: !328)
!911 = !DILocation(line: 1092, column: 12, scope: !328)
!912 = !DILocation(line: 1093, column: 22, scope: !328)
!913 = !DILocation(line: 1093, column: 8, scope: !328)
!914 = !DILocation(line: 1093, column: 12, scope: !328)
!915 = !DILocation(line: 1095, column: 32, scope: !328)
!916 = !DILocation(line: 1095, column: 14, scope: !328)
!917 = !DILocation(line: 1096, column: 16, scope: !328)
!918 = !DILocation(line: 1096, column: 38, scope: !328)
!919 = !DILocation(line: 1096, column: 9, scope: !328)
!920 = !DILocation(line: 1097, column: 36, scope: !328)
!921 = !DILocation(line: 1097, column: 35, scope: !328)
!922 = !DILocation(line: 1097, column: 13, scope: !328)
!923 = !DILocation(line: 1099, column: 32, scope: !328)
!924 = !DILocation(line: 1099, column: 60, scope: !328)
!925 = !DILocation(line: 1099, column: 51, scope: !328)
!926 = !DILocation(line: 1099, column: 14, scope: !328)
!927 = !DILocation(line: 1100, column: 16, scope: !328)
!928 = !DILocation(line: 1100, column: 38, scope: !328)
!929 = !DILocation(line: 1100, column: 9, scope: !328)
!930 = !DILocation(line: 1101, column: 53, scope: !328)
!931 = !DILocation(line: 1101, column: 56, scope: !328)
!932 = !DILocation(line: 1101, column: 38, scope: !328)
!933 = !DILocation(line: 1101, column: 13, scope: !328)
!934 = !DILocation(line: 1103, column: 14, scope: !328)
!935 = !DILocation(line: 1103, column: 12, scope: !328)
!936 = !DILocation(line: 1104, column: 14, scope: !328)
!937 = !DILocation(line: 1104, column: 12, scope: !328)
!938 = !DILocation(line: 1106, column: 19, scope: !939)
!939 = distinct !DILexicalBlock(scope: !328, file: !2, line: 1106, column: 8)
!940 = !DILocation(line: 1106, column: 34, scope: !939)
!941 = !DILocation(line: 1107, column: 7, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !2, line: 1107, column: 7)
!943 = distinct !DILexicalBlock(scope: !939, file: !2, line: 1106, column: 64)
!944 = !DILocation(line: 1110, column: 14, scope: !945)
!945 = distinct !DILexicalBlock(scope: !939, file: !2, line: 1109, column: 10)
!946 = !DILocation(line: 1110, column: 7, scope: !945)
!947 = !DILocation(line: 0, scope: !939)
!948 = !DILocation(line: 1112, column: 3, scope: !329)
!949 = !DILocation(line: 0, scope: !345)
!950 = !DILocation(line: 1124, column: 36, scope: !345)
!951 = !DILocation(line: 1124, column: 38, scope: !345)
!952 = !DILocation(line: 1124, column: 22, scope: !345)
!953 = !DILocation(line: 1125, column: 34, scope: !345)
!954 = !DILocation(line: 1125, column: 19, scope: !345)
!955 = !DILocation(line: 1126, column: 36, scope: !345)
!956 = !DILocation(line: 1127, column: 28, scope: !345)
!957 = !DILocation(line: 0, scope: !453, inlinedAt: !958)
!958 = distinct !DILocation(line: 1143, column: 20, scope: !345)
!959 = !DILocation(line: 605, column: 31, scope: !453, inlinedAt: !958)
!960 = !DILocation(line: 606, column: 41, scope: !453, inlinedAt: !958)
!961 = !DILocation(line: 609, column: 18, scope: !453, inlinedAt: !958)
!962 = !DILocation(line: 609, column: 26, scope: !453, inlinedAt: !958)
!963 = !DILocation(line: 616, column: 6, scope: !485, inlinedAt: !958)
!964 = !DILocation(line: 616, column: 14, scope: !485, inlinedAt: !958)
!965 = !DILocation(line: 616, column: 6, scope: !453, inlinedAt: !958)
!966 = !DILocation(line: 620, column: 3, scope: !453, inlinedAt: !958)
!967 = !DILocation(line: 622, column: 22, scope: !474, inlinedAt: !958)
!968 = !DILocation(line: 0, scope: !474, inlinedAt: !958)
!969 = !DILocation(line: 623, column: 26, scope: !474, inlinedAt: !958)
!970 = !DILocation(line: 624, column: 22, scope: !474, inlinedAt: !958)
!971 = !DILocation(line: 624, column: 40, scope: !474, inlinedAt: !958)
!972 = !DILocation(line: 624, column: 28, scope: !474, inlinedAt: !958)
!973 = !DILocation(line: 625, column: 21, scope: !474, inlinedAt: !958)
!974 = !DILocation(line: 626, column: 21, scope: !474, inlinedAt: !958)
!975 = !DILocation(line: 627, column: 8, scope: !498, inlinedAt: !958)
!976 = !DILocation(line: 627, column: 16, scope: !498, inlinedAt: !958)
!977 = !DILocation(line: 627, column: 8, scope: !474, inlinedAt: !958)
!978 = !DILocation(line: 628, column: 8, scope: !502, inlinedAt: !958)
!979 = !DILocation(line: 628, column: 16, scope: !502, inlinedAt: !958)
!980 = !DILocation(line: 629, column: 12, scope: !474, inlinedAt: !958)
!981 = !DILocation(line: 630, column: 12, scope: !474, inlinedAt: !958)
!982 = !DILocation(line: 631, column: 12, scope: !474, inlinedAt: !958)
!983 = !DILocation(line: 632, column: 10, scope: !984, inlinedAt: !958)
!984 = distinct !DILexicalBlock(scope: !474, file: !2, line: 632, column: 8)
!985 = !DILocation(line: 632, column: 8, scope: !474, inlinedAt: !958)
!986 = !DILocation(line: 637, column: 12, scope: !508, inlinedAt: !958)
!987 = !DILocation(line: 637, column: 9, scope: !474, inlinedAt: !958)
!988 = !DILocation(line: 639, column: 7, scope: !511, inlinedAt: !958)
!989 = !DILocation(line: 641, column: 5, scope: !474, inlinedAt: !958)
!990 = !DILocation(line: 643, column: 9, scope: !453, inlinedAt: !958)
!991 = !DILocation(line: 643, column: 22, scope: !453, inlinedAt: !958)
!992 = !DILocation(line: 642, column: 3, scope: !474, inlinedAt: !958)
!993 = distinct !{!993, !966, !994, !271}
!994 = !DILocation(line: 643, column: 31, scope: !453, inlinedAt: !958)
!995 = !DILocation(line: 1153, column: 29, scope: !345)
!996 = !DILocation(line: 1154, column: 32, scope: !345)
!997 = !DILocation(line: 1157, column: 21, scope: !345)
!998 = !DILocation(line: 0, scope: !521, inlinedAt: !999)
!999 = distinct !DILocation(line: 1158, column: 15, scope: !345)
!1000 = !DILocation(line: 533, column: 18, scope: !540, inlinedAt: !999)
!1001 = !DILocation(line: 533, column: 3, scope: !541, inlinedAt: !999)
!1002 = !DILocation(line: 529, column: 30, scope: !521, inlinedAt: !999)
!1003 = !DILocation(line: 533, scope: !541, inlinedAt: !999)
!1004 = !DILocation(line: 534, column: 20, scope: !539, inlinedAt: !999)
!1005 = !DILocation(line: 0, scope: !539, inlinedAt: !999)
!1006 = !DILocation(line: 535, column: 17, scope: !539, inlinedAt: !999)
!1007 = !DILocation(line: 536, column: 26, scope: !539, inlinedAt: !999)
!1008 = !DILocation(line: 538, column: 18, scope: !539, inlinedAt: !999)
!1009 = !DILocation(line: 538, column: 28, scope: !539, inlinedAt: !999)
!1010 = !DILocation(line: 539, column: 21, scope: !539, inlinedAt: !999)
!1011 = !DILocation(line: 539, column: 30, scope: !539, inlinedAt: !999)
!1012 = !DILocation(line: 541, column: 9, scope: !539, inlinedAt: !999)
!1013 = distinct !{!1013, !1001, !1014, !271}
!1014 = !DILocation(line: 542, column: 3, scope: !541, inlinedAt: !999)
!1015 = !DILocation(line: 1162, column: 43, scope: !345)
!1016 = !DILocalVariable(name: "lambda", arg: 1, scope: !1017, file: !2, line: 735, type: !280)
!1017 = distinct !DISubprogram(name: "coulomb_CF2", scope: !2, file: !2, line: 735, type: !1018, scopeLine: 738, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!28, !280, !280, !280, !202, !202, !456}
!1020 = !{!1016, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046}
!1021 = !DILocalVariable(name: "eta", arg: 2, scope: !1017, file: !2, line: 735, type: !280)
!1022 = !DILocalVariable(name: "x", arg: 3, scope: !1017, file: !2, line: 735, type: !280)
!1023 = !DILocalVariable(name: "result_P", arg: 4, scope: !1017, file: !2, line: 736, type: !202)
!1024 = !DILocalVariable(name: "result_Q", arg: 5, scope: !1017, file: !2, line: 736, type: !202)
!1025 = !DILocalVariable(name: "count", arg: 6, scope: !1017, file: !2, line: 736, type: !456)
!1026 = !DILocalVariable(name: "status", scope: !1017, file: !2, line: 739, type: !28)
!1027 = !DILocalVariable(name: "CF2_acc", scope: !1017, file: !2, line: 741, type: !280)
!1028 = !DILocalVariable(name: "CF2_abort", scope: !1017, file: !2, line: 742, type: !280)
!1029 = !DILocalVariable(name: "wi", scope: !1017, file: !2, line: 744, type: !280)
!1030 = !DILocalVariable(name: "x_inv", scope: !1017, file: !2, line: 745, type: !280)
!1031 = !DILocalVariable(name: "e2mm1", scope: !1017, file: !2, line: 746, type: !280)
!1032 = !DILocalVariable(name: "ar", scope: !1017, file: !2, line: 748, type: !78)
!1033 = !DILocalVariable(name: "ai", scope: !1017, file: !2, line: 749, type: !78)
!1034 = !DILocalVariable(name: "br", scope: !1017, file: !2, line: 751, type: !78)
!1035 = !DILocalVariable(name: "bi", scope: !1017, file: !2, line: 752, type: !78)
!1036 = !DILocalVariable(name: "dr", scope: !1017, file: !2, line: 754, type: !78)
!1037 = !DILocalVariable(name: "di", scope: !1017, file: !2, line: 755, type: !78)
!1038 = !DILocalVariable(name: "dp", scope: !1017, file: !2, line: 757, type: !78)
!1039 = !DILocalVariable(name: "dq", scope: !1017, file: !2, line: 758, type: !78)
!1040 = !DILocalVariable(name: "A", scope: !1017, file: !2, line: 760, type: !78)
!1041 = !DILocalVariable(name: "B", scope: !1017, file: !2, line: 760, type: !78)
!1042 = !DILocalVariable(name: "C", scope: !1017, file: !2, line: 760, type: !78)
!1043 = !DILocalVariable(name: "D", scope: !1017, file: !2, line: 760, type: !78)
!1044 = !DILocalVariable(name: "pk", scope: !1017, file: !2, line: 762, type: !78)
!1045 = !DILocalVariable(name: "P", scope: !1017, file: !2, line: 763, type: !78)
!1046 = !DILocalVariable(name: "Q", scope: !1017, file: !2, line: 764, type: !78)
!1047 = !DILocation(line: 0, scope: !1017, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 1165, column: 16, scope: !345)
!1049 = !DILocation(line: 746, column: 27, scope: !1017, inlinedAt: !1048)
!1050 = !DILocation(line: 746, column: 40, scope: !1017, inlinedAt: !1048)
!1051 = !DILocation(line: 748, column: 15, scope: !1017, inlinedAt: !1048)
!1052 = !DILocation(line: 751, column: 19, scope: !1017, inlinedAt: !1048)
!1053 = !DILocation(line: 754, column: 22, scope: !1017, inlinedAt: !1048)
!1054 = !DILocation(line: 754, column: 18, scope: !1017, inlinedAt: !1048)
!1055 = !DILocation(line: 755, column: 18, scope: !1017, inlinedAt: !1048)
!1056 = !DILocation(line: 757, column: 15, scope: !1017, inlinedAt: !1048)
!1057 = !DILocation(line: 757, column: 33, scope: !1017, inlinedAt: !1048)
!1058 = !DILocation(line: 757, column: 29, scope: !1017, inlinedAt: !1048)
!1059 = !DILocation(line: 757, column: 21, scope: !1017, inlinedAt: !1048)
!1060 = !DILocation(line: 758, column: 25, scope: !1017, inlinedAt: !1048)
!1061 = !DILocation(line: 758, column: 33, scope: !1017, inlinedAt: !1048)
!1062 = !DILocation(line: 758, column: 21, scope: !1017, inlinedAt: !1048)
!1063 = !DILocation(line: 764, column: 25, scope: !1017, inlinedAt: !1048)
!1064 = !DILocation(line: 768, column: 3, scope: !1017, inlinedAt: !1048)
!1065 = !DILocation(line: 770, column: 7, scope: !1066, inlinedAt: !1048)
!1066 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 768, column: 6)
!1067 = !DILocation(line: 771, column: 8, scope: !1066, inlinedAt: !1048)
!1068 = !DILocation(line: 785, column: 11, scope: !1069, inlinedAt: !1048)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !2, line: 785, column: 8)
!1070 = !DILocation(line: 785, column: 8, scope: !1066, inlinedAt: !1048)
!1071 = !DILocation(line: 793, column: 36, scope: !1072, inlinedAt: !1048)
!1072 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 793, column: 6)
!1073 = !DILocation(line: 772, column: 8, scope: !1066, inlinedAt: !1048)
!1074 = !DILocation(line: 775, column: 12, scope: !1066, inlinedAt: !1048)
!1075 = !DILocation(line: 775, column: 20, scope: !1066, inlinedAt: !1048)
!1076 = !DILocation(line: 775, column: 24, scope: !1066, inlinedAt: !1048)
!1077 = !DILocation(line: 777, column: 16, scope: !1066, inlinedAt: !1048)
!1078 = !DILocation(line: 776, column: 12, scope: !1066, inlinedAt: !1048)
!1079 = !DILocation(line: 776, column: 20, scope: !1066, inlinedAt: !1048)
!1080 = !DILocation(line: 776, column: 24, scope: !1066, inlinedAt: !1048)
!1081 = !DILocation(line: 777, column: 23, scope: !1066, inlinedAt: !1048)
!1082 = !DILocation(line: 777, column: 13, scope: !1066, inlinedAt: !1048)
!1083 = !DILocation(line: 778, column: 12, scope: !1066, inlinedAt: !1048)
!1084 = !DILocation(line: 781, column: 12, scope: !1066, inlinedAt: !1048)
!1085 = !DILocation(line: 779, column: 10, scope: !1066, inlinedAt: !1048)
!1086 = !DILocation(line: 779, column: 12, scope: !1066, inlinedAt: !1048)
!1087 = !DILocation(line: 781, column: 20, scope: !1066, inlinedAt: !1048)
!1088 = !DILocation(line: 783, column: 12, scope: !1066, inlinedAt: !1048)
!1089 = !DILocation(line: 780, column: 12, scope: !1066, inlinedAt: !1048)
!1090 = !DILocation(line: 780, column: 20, scope: !1066, inlinedAt: !1048)
!1091 = !DILocation(line: 780, column: 24, scope: !1066, inlinedAt: !1048)
!1092 = !DILocation(line: 783, column: 20, scope: !1066, inlinedAt: !1048)
!1093 = !DILocation(line: 782, column: 12, scope: !1066, inlinedAt: !1048)
!1094 = !DILocation(line: 782, column: 20, scope: !1066, inlinedAt: !1048)
!1095 = !DILocation(line: 789, column: 5, scope: !1066, inlinedAt: !1048)
!1096 = !DILocation(line: 791, column: 9, scope: !1017, inlinedAt: !1048)
!1097 = !DILocation(line: 791, column: 18, scope: !1017, inlinedAt: !1048)
!1098 = !DILocation(line: 791, column: 30, scope: !1017, inlinedAt: !1048)
!1099 = !DILocation(line: 791, column: 38, scope: !1017, inlinedAt: !1048)
!1100 = !DILocation(line: 791, column: 46, scope: !1017, inlinedAt: !1048)
!1101 = !DILocation(line: 791, column: 27, scope: !1017, inlinedAt: !1048)
!1102 = !DILocation(line: 790, column: 3, scope: !1066, inlinedAt: !1048)
!1103 = distinct !{!1103, !1064, !1104, !271}
!1104 = !DILocation(line: 791, column: 54, scope: !1017, inlinedAt: !1048)
!1105 = !DILocation(line: 793, column: 35, scope: !1072, inlinedAt: !1048)
!1106 = !DILocation(line: 793, column: 8, scope: !1072, inlinedAt: !1048)
!1107 = !DILocation(line: 793, column: 6, scope: !1017, inlinedAt: !1048)
!1108 = !DILocation(line: 1167, column: 18, scope: !345)
!1109 = !DILocation(line: 1169, column: 22, scope: !345)
!1110 = !DILocation(line: 1171, column: 45, scope: !345)
!1111 = !DILocation(line: 1171, column: 51, scope: !345)
!1112 = !DILocation(line: 1171, column: 35, scope: !345)
!1113 = !DILocation(line: 1171, column: 33, scope: !345)
!1114 = !DILocation(line: 1173, column: 24, scope: !345)
!1115 = !DILocation(line: 1174, column: 29, scope: !345)
!1116 = !DILocation(line: 1174, column: 50, scope: !345)
!1117 = !DILocation(line: 1177, column: 25, scope: !345)
!1118 = !DILocation(line: 1178, column: 14, scope: !345)
!1119 = !DILocation(line: 1179, column: 14, scope: !345)
!1120 = !DILocation(line: 1182, column: 21, scope: !345)
!1121 = !DILocation(line: 0, scope: !740, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 1183, column: 15, scope: !345)
!1123 = !DILocation(line: 571, column: 13, scope: !758, inlinedAt: !1122)
!1124 = !DILocation(line: 571, column: 3, scope: !759, inlinedAt: !1122)
!1125 = !DILocation(line: 572, column: 20, scope: !757, inlinedAt: !1122)
!1126 = !DILocation(line: 0, scope: !757, inlinedAt: !1122)
!1127 = !DILocation(line: 573, column: 17, scope: !757, inlinedAt: !1122)
!1128 = !DILocation(line: 574, column: 25, scope: !757, inlinedAt: !1122)
!1129 = !DILocation(line: 575, column: 22, scope: !757, inlinedAt: !1122)
!1130 = !DILocation(line: 575, column: 33, scope: !757, inlinedAt: !1122)
!1131 = !DILocation(line: 576, column: 15, scope: !757, inlinedAt: !1122)
!1132 = !DILocation(line: 576, column: 24, scope: !757, inlinedAt: !1122)
!1133 = !DILocation(line: 571, column: 22, scope: !758, inlinedAt: !1122)
!1134 = distinct !{!1134, !1124, !1135, !271}
!1135 = !DILocation(line: 579, column: 3, scope: !759, inlinedAt: !1122)
!1136 = !DILocation(line: 1188, column: 29, scope: !345)
!1137 = !DILocation(line: 1188, column: 41, scope: !345)
!1138 = !DILocation(line: 1188, column: 57, scope: !345)
!1139 = !DILocation(line: 1188, column: 73, scope: !345)
!1140 = !DILocation(line: 1188, column: 19, scope: !345)
!1141 = !DILocation(line: 1190, column: 13, scope: !345)
!1142 = !DILocation(line: 1191, column: 18, scope: !345)
!1143 = !DILocation(line: 1191, column: 30, scope: !345)
!1144 = !DILocation(line: 1191, column: 49, scope: !345)
!1145 = !DILocation(line: 1191, column: 47, scope: !345)
!1146 = !DILocation(line: 1191, column: 8, scope: !345)
!1147 = !DILocation(line: 1191, column: 13, scope: !345)
!1148 = !DILocation(line: 1193, column: 13, scope: !345)
!1149 = !DILocation(line: 1194, column: 49, scope: !345)
!1150 = !DILocation(line: 1194, column: 47, scope: !345)
!1151 = !DILocation(line: 1194, column: 9, scope: !345)
!1152 = !DILocation(line: 1194, column: 13, scope: !345)
!1153 = !DILocation(line: 1196, column: 13, scope: !345)
!1154 = !DILocation(line: 1197, column: 49, scope: !345)
!1155 = !DILocation(line: 1197, column: 47, scope: !345)
!1156 = !DILocation(line: 1197, column: 8, scope: !345)
!1157 = !DILocation(line: 1197, column: 13, scope: !345)
!1158 = !DILocation(line: 1199, column: 13, scope: !345)
!1159 = !DILocation(line: 1200, column: 49, scope: !345)
!1160 = !DILocation(line: 1200, column: 47, scope: !345)
!1161 = !DILocation(line: 1200, column: 9, scope: !345)
!1162 = !DILocation(line: 1200, column: 13, scope: !345)
!1163 = !DILocation(line: 1202, column: 12, scope: !345)
!1164 = !DILocation(line: 1203, column: 12, scope: !345)
!1165 = !DILocation(line: 1205, column: 12, scope: !345)
!1166 = !DILocation(line: 0, scope: !297)
!1167 = !DILocation(line: 1207, column: 1, scope: !277)
!1168 = distinct !DISubprogram(name: "coulomb_FG0_series", scope: !2, file: !2, line: 368, type: !571, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1197, !1198, !1199, !1202, !1203, !1204}
!1170 = !DILocalVariable(name: "eta", arg: 1, scope: !1168, file: !2, line: 368, type: !280)
!1171 = !DILocalVariable(name: "x", arg: 2, scope: !1168, file: !2, line: 368, type: !280)
!1172 = !DILocalVariable(name: "F", arg: 3, scope: !1168, file: !2, line: 369, type: !79)
!1173 = !DILocalVariable(name: "G", arg: 4, scope: !1168, file: !2, line: 369, type: !79)
!1174 = !DILocalVariable(name: "max_iter", scope: !1168, file: !2, line: 371, type: !281)
!1175 = !DILocalVariable(name: "x2", scope: !1168, file: !2, line: 372, type: !280)
!1176 = !DILocalVariable(name: "tex", scope: !1168, file: !2, line: 373, type: !280)
!1177 = !DILocalVariable(name: "C0", scope: !1168, file: !2, line: 374, type: !80)
!1178 = !DILocalVariable(name: "stat_CL", scope: !1168, file: !2, line: 375, type: !28)
!1179 = !DILocalVariable(name: "r1pie", scope: !1168, file: !2, line: 376, type: !80)
!1180 = !DILocalVariable(name: "psi_stat", scope: !1168, file: !2, line: 377, type: !28)
!1181 = !DILocalVariable(name: "u_mm2", scope: !1168, file: !2, line: 378, type: !78)
!1182 = !DILocalVariable(name: "u_mm1", scope: !1168, file: !2, line: 379, type: !78)
!1183 = !DILocalVariable(name: "u_m", scope: !1168, file: !2, line: 380, type: !78)
!1184 = !DILocalVariable(name: "v_mm2", scope: !1168, file: !2, line: 381, type: !78)
!1185 = !DILocalVariable(name: "v_mm1", scope: !1168, file: !2, line: 382, type: !78)
!1186 = !DILocalVariable(name: "v_m", scope: !1168, file: !2, line: 383, type: !78)
!1187 = !DILocalVariable(name: "u_sum", scope: !1168, file: !2, line: 384, type: !78)
!1188 = !DILocalVariable(name: "v_sum", scope: !1168, file: !2, line: 385, type: !78)
!1189 = !DILocalVariable(name: "u_abs_del_prev", scope: !1168, file: !2, line: 386, type: !78)
!1190 = !DILocalVariable(name: "v_abs_del_prev", scope: !1168, file: !2, line: 387, type: !78)
!1191 = !DILocalVariable(name: "m", scope: !1168, file: !2, line: 388, type: !28)
!1192 = !DILocalVariable(name: "u_sum_err", scope: !1168, file: !2, line: 389, type: !78)
!1193 = !DILocalVariable(name: "v_sum_err", scope: !1168, file: !2, line: 390, type: !78)
!1194 = !DILocalVariable(name: "ln2x", scope: !1168, file: !2, line: 391, type: !78)
!1195 = !DILocalVariable(name: "abs_du", scope: !1196, file: !2, line: 394, type: !78)
!1196 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 393, column: 23)
!1197 = !DILocalVariable(name: "abs_dv", scope: !1196, file: !2, line: 395, type: !78)
!1198 = !DILocalVariable(name: "m_mm1", scope: !1196, file: !2, line: 396, type: !78)
!1199 = !DILocalVariable(name: "max_abs_du", scope: !1200, file: !2, line: 412, type: !78)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 405, column: 16)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 405, column: 8)
!1202 = !DILocalVariable(name: "max_abs_dv", scope: !1200, file: !2, line: 413, type: !78)
!1203 = !DILocalVariable(name: "abs_u", scope: !1200, file: !2, line: 414, type: !78)
!1204 = !DILocalVariable(name: "abs_v", scope: !1200, file: !2, line: 415, type: !78)
!1205 = distinct !DIAssignID()
!1206 = !DILocation(line: 0, scope: !1168)
!1207 = distinct !DIAssignID()
!1208 = !DILocation(line: 372, column: 23, scope: !1168)
!1209 = !DILocation(line: 373, column: 25, scope: !1168)
!1210 = !DILocation(line: 373, column: 29, scope: !1168)
!1211 = !DILocation(line: 374, column: 3, scope: !1168)
!1212 = !DILocation(line: 375, column: 17, scope: !1168)
!1213 = !DILocation(line: 376, column: 3, scope: !1168)
!1214 = !DILocation(line: 377, column: 18, scope: !1168)
!1215 = !DILocation(line: 382, column: 45, scope: !1168)
!1216 = !DILocation(line: 382, column: 21, scope: !1168)
!1217 = !DILocation(line: 385, column: 24, scope: !1168)
!1218 = !DILocation(line: 386, column: 27, scope: !1168)
!1219 = !DILocation(line: 387, column: 27, scope: !1168)
!1220 = !DILocation(line: 389, column: 44, scope: !1168)
!1221 = !DILocation(line: 390, column: 44, scope: !1168)
!1222 = !DILocation(line: 391, column: 24, scope: !1168)
!1223 = !DILocation(line: 393, column: 3, scope: !1168)
!1224 = !DILocation(line: 396, column: 20, scope: !1196)
!1225 = !DILocation(line: 396, column: 21, scope: !1196)
!1226 = !DILocation(line: 0, scope: !1196)
!1227 = !DILocation(line: 397, column: 15, scope: !1196)
!1228 = !DILocation(line: 397, column: 26, scope: !1196)
!1229 = !DILocation(line: 397, column: 33, scope: !1196)
!1230 = !DILocation(line: 398, column: 15, scope: !1196)
!1231 = !DILocation(line: 398, column: 26, scope: !1196)
!1232 = !DILocation(line: 398, column: 45, scope: !1196)
!1233 = !DILocation(line: 398, column: 47, scope: !1196)
!1234 = !DILocation(line: 398, column: 43, scope: !1196)
!1235 = !DILocation(line: 398, column: 42, scope: !1196)
!1236 = !DILocation(line: 398, column: 50, scope: !1196)
!1237 = !DILocation(line: 398, column: 55, scope: !1196)
!1238 = !DILocation(line: 400, column: 11, scope: !1196)
!1239 = !DILocation(line: 401, column: 14, scope: !1196)
!1240 = !DILocation(line: 402, column: 14, scope: !1196)
!1241 = !DILocation(line: 403, column: 40, scope: !1196)
!1242 = !DILocation(line: 404, column: 40, scope: !1196)
!1243 = !DILocation(line: 405, column: 10, scope: !1201)
!1244 = !DILocation(line: 405, column: 8, scope: !1196)
!1245 = !DILocation(line: 412, column: 27, scope: !1200)
!1246 = !DILocation(line: 0, scope: !1200)
!1247 = !DILocation(line: 414, column: 22, scope: !1200)
!1248 = !DILocation(line: 416, column: 23, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 416, column: 13)
!1250 = !DILocation(line: 416, column: 45, scope: !1249)
!1251 = !DILocation(line: 417, column: 10, scope: !1249)
!1252 = !DILocation(line: 415, column: 22, scope: !1200)
!1253 = !DILocation(line: 413, column: 27, scope: !1200)
!1254 = !DILocation(line: 417, column: 23, scope: !1249)
!1255 = !DILocation(line: 417, column: 45, scope: !1249)
!1256 = !DILocation(line: 416, column: 13, scope: !1200)
!1257 = !DILocation(line: 426, column: 6, scope: !1196)
!1258 = !DILocation(line: 393, column: 11, scope: !1168)
!1259 = !DILocation(line: 430, column: 22, scope: !1168)
!1260 = !DILocation(line: 435, column: 14, scope: !1168)
!1261 = !DILocation(line: 439, column: 8, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 439, column: 6)
!1263 = !DILocation(line: 429, column: 16, scope: !1168)
!1264 = !DILocation(line: 429, column: 20, scope: !1168)
!1265 = !DILocation(line: 429, column: 11, scope: !1168)
!1266 = !DILocation(line: 430, column: 16, scope: !1168)
!1267 = !DILocation(line: 430, column: 20, scope: !1168)
!1268 = !DILocation(line: 430, column: 6, scope: !1168)
!1269 = !DILocation(line: 431, column: 13, scope: !1168)
!1270 = !DILocation(line: 431, column: 26, scope: !1168)
!1271 = !DILocation(line: 432, column: 37, scope: !1168)
!1272 = !DILocation(line: 432, column: 35, scope: !1168)
!1273 = !DILocation(line: 432, column: 10, scope: !1168)
!1274 = !DILocation(line: 434, column: 29, scope: !1168)
!1275 = !DILocation(line: 434, column: 36, scope: !1168)
!1276 = !DILocation(line: 434, column: 44, scope: !1168)
!1277 = !DILocation(line: 434, column: 11, scope: !1168)
!1278 = !DILocation(line: 435, column: 28, scope: !1168)
!1279 = !DILocation(line: 435, column: 56, scope: !1168)
!1280 = !DILocation(line: 435, column: 84, scope: !1168)
!1281 = !DILocation(line: 435, column: 73, scope: !1168)
!1282 = !DILocation(line: 435, column: 71, scope: !1168)
!1283 = !DILocation(line: 435, column: 6, scope: !1168)
!1284 = !DILocation(line: 436, column: 38, scope: !1168)
!1285 = !DILocation(line: 436, column: 48, scope: !1168)
!1286 = !DILocation(line: 436, column: 26, scope: !1168)
!1287 = !DILocation(line: 436, column: 56, scope: !1168)
!1288 = !DILocation(line: 437, column: 37, scope: !1168)
!1289 = !DILocation(line: 437, column: 35, scope: !1168)
!1290 = !DILocation(line: 437, column: 10, scope: !1168)
!1291 = !DILocation(line: 439, column: 6, scope: !1168)
!1292 = !DILocation(line: 440, column: 5, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1262, file: !2, line: 440, column: 5)
!1294 = !DILocation(line: 442, column: 12, scope: !1262)
!1295 = !DILocation(line: 442, column: 5, scope: !1262)
!1296 = !DILocation(line: 0, scope: !1262)
!1297 = !DILocation(line: 443, column: 1, scope: !1168)
!1298 = distinct !DISubprogram(name: "coulomb_FG_series", scope: !2, file: !2, line: 277, type: !1299, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!28, !280, !280, !280, !79, !79}
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1332, !1333, !1336, !1337, !1338}
!1302 = !DILocalVariable(name: "lam", arg: 1, scope: !1298, file: !2, line: 277, type: !280)
!1303 = !DILocalVariable(name: "eta", arg: 2, scope: !1298, file: !2, line: 277, type: !280)
!1304 = !DILocalVariable(name: "x", arg: 3, scope: !1298, file: !2, line: 277, type: !280)
!1305 = !DILocalVariable(name: "F", arg: 4, scope: !1298, file: !2, line: 278, type: !79)
!1306 = !DILocalVariable(name: "G", arg: 5, scope: !1298, file: !2, line: 278, type: !79)
!1307 = !DILocalVariable(name: "max_iter", scope: !1298, file: !2, line: 280, type: !281)
!1308 = !DILocalVariable(name: "ClamA", scope: !1298, file: !2, line: 281, type: !80)
!1309 = !DILocalVariable(name: "ClamB", scope: !1298, file: !2, line: 282, type: !80)
!1310 = !DILocalVariable(name: "stat_A", scope: !1298, file: !2, line: 283, type: !28)
!1311 = !DILocalVariable(name: "stat_B", scope: !1298, file: !2, line: 284, type: !28)
!1312 = !DILocalVariable(name: "tlp1", scope: !1298, file: !2, line: 285, type: !280)
!1313 = !DILocalVariable(name: "pow_x", scope: !1298, file: !2, line: 286, type: !280)
!1314 = !DILocalVariable(name: "cos_phi_lam", scope: !1298, file: !2, line: 287, type: !78)
!1315 = !DILocalVariable(name: "sin_phi_lam", scope: !1298, file: !2, line: 288, type: !78)
!1316 = !DILocalVariable(name: "uA_mm2", scope: !1298, file: !2, line: 290, type: !78)
!1317 = !DILocalVariable(name: "uA_mm1", scope: !1298, file: !2, line: 291, type: !78)
!1318 = !DILocalVariable(name: "uA_m", scope: !1298, file: !2, line: 292, type: !78)
!1319 = !DILocalVariable(name: "uB_mm2", scope: !1298, file: !2, line: 293, type: !78)
!1320 = !DILocalVariable(name: "uB_mm1", scope: !1298, file: !2, line: 294, type: !78)
!1321 = !DILocalVariable(name: "uB_m", scope: !1298, file: !2, line: 295, type: !78)
!1322 = !DILocalVariable(name: "A_sum", scope: !1298, file: !2, line: 296, type: !78)
!1323 = !DILocalVariable(name: "B_sum", scope: !1298, file: !2, line: 297, type: !78)
!1324 = !DILocalVariable(name: "A_abs_del_prev", scope: !1298, file: !2, line: 298, type: !78)
!1325 = !DILocalVariable(name: "B_abs_del_prev", scope: !1298, file: !2, line: 299, type: !78)
!1326 = !DILocalVariable(name: "FA", scope: !1298, file: !2, line: 300, type: !80)
!1327 = !DILocalVariable(name: "FB", scope: !1298, file: !2, line: 300, type: !80)
!1328 = !DILocalVariable(name: "m", scope: !1298, file: !2, line: 301, type: !28)
!1329 = !DILocalVariable(name: "stat_conn", scope: !1298, file: !2, line: 303, type: !28)
!1330 = !DILocalVariable(name: "abs_dA", scope: !1331, file: !2, line: 312, type: !78)
!1331 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 311, column: 23)
!1332 = !DILocalVariable(name: "abs_dB", scope: !1331, file: !2, line: 313, type: !78)
!1333 = !DILocalVariable(name: "max_abs_dA", scope: !1334, file: !2, line: 327, type: !78)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !2, line: 320, column: 16)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 320, column: 8)
!1336 = !DILocalVariable(name: "max_abs_dB", scope: !1334, file: !2, line: 328, type: !78)
!1337 = !DILocalVariable(name: "abs_A", scope: !1334, file: !2, line: 329, type: !78)
!1338 = !DILocalVariable(name: "abs_B", scope: !1334, file: !2, line: 330, type: !78)
!1339 = distinct !DIAssignID()
!1340 = !DILocation(line: 0, scope: !1298)
!1341 = distinct !DIAssignID()
!1342 = !DILocation(line: 281, column: 3, scope: !1298)
!1343 = !DILocation(line: 282, column: 3, scope: !1298)
!1344 = !DILocation(line: 283, column: 16, scope: !1298)
!1345 = !DILocation(line: 284, column: 16, scope: !1298)
!1346 = !DILocation(line: 285, column: 26, scope: !1298)
!1347 = !DILocation(line: 286, column: 24, scope: !1298)
!1348 = !DILocation(line: 291, column: 20, scope: !1298)
!1349 = !DILocation(line: 291, column: 24, scope: !1298)
!1350 = !DILocation(line: 294, column: 19, scope: !1298)
!1351 = !DILocation(line: 294, column: 21, scope: !1298)
!1352 = !DILocation(line: 294, column: 25, scope: !1298)
!1353 = !DILocation(line: 297, column: 25, scope: !1298)
!1354 = !DILocation(line: 298, column: 27, scope: !1298)
!1355 = !DILocation(line: 299, column: 27, scope: !1298)
!1356 = !DILocalVariable(name: "lam", arg: 1, scope: !1357, file: !2, line: 236, type: !280)
!1357 = distinct !DISubprogram(name: "coulomb_connection", scope: !2, file: !2, line: 236, type: !1358, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!28, !280, !280, !202, !202}
!1360 = !{!1356, !1361, !1362, !1363, !1364, !1368, !1369, !1370, !1372}
!1361 = !DILocalVariable(name: "eta", arg: 2, scope: !1357, file: !2, line: 236, type: !280)
!1362 = !DILocalVariable(name: "cos_phi", arg: 3, scope: !1357, file: !2, line: 237, type: !202)
!1363 = !DILocalVariable(name: "sin_phi", arg: 4, scope: !1357, file: !2, line: 237, type: !202)
!1364 = !DILocalVariable(name: "eps", scope: !1365, file: !2, line: 245, type: !280)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 244, column: 50)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 244, column: 11)
!1367 = distinct !DILexicalBlock(scope: !1357, file: !2, line: 239, column: 6)
!1368 = !DILocalVariable(name: "tpl", scope: !1365, file: !2, line: 246, type: !280)
!1369 = !DILocalVariable(name: "dth", scope: !1365, file: !2, line: 247, type: !280)
!1370 = !DILocalVariable(name: "X", scope: !1371, file: !2, line: 253, type: !78)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !2, line: 252, column: 8)
!1372 = !DILocalVariable(name: "phi", scope: !1371, file: !2, line: 254, type: !78)
!1373 = !DILocation(line: 0, scope: !1357, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 303, column: 19, scope: !1298)
!1375 = !DILocation(line: 239, column: 10, scope: !1367, inlinedAt: !1374)
!1376 = !DILocation(line: 239, column: 6, scope: !1357, inlinedAt: !1374)
!1377 = !DILocation(line: 244, column: 15, scope: !1366, inlinedAt: !1374)
!1378 = !DILocation(line: 244, column: 11, scope: !1367, inlinedAt: !1374)
!1379 = !DILocation(line: 245, column: 43, scope: !1365, inlinedAt: !1374)
!1380 = !DILocation(line: 245, column: 30, scope: !1365, inlinedAt: !1374)
!1381 = !DILocation(line: 245, column: 28, scope: !1365, inlinedAt: !1374)
!1382 = !DILocation(line: 0, scope: !1365, inlinedAt: !1374)
!1383 = !DILocation(line: 246, column: 33, scope: !1365, inlinedAt: !1374)
!1384 = !DILocation(line: 247, column: 28, scope: !1365, inlinedAt: !1374)
!1385 = !DILocation(line: 247, column: 40, scope: !1365, inlinedAt: !1374)
!1386 = !DILocation(line: 247, column: 34, scope: !1365, inlinedAt: !1374)
!1387 = !DILocation(line: 248, column: 27, scope: !1365, inlinedAt: !1374)
!1388 = !DILocation(line: 248, column: 32, scope: !1365, inlinedAt: !1374)
!1389 = !DILocation(line: 249, column: 16, scope: !1365, inlinedAt: !1374)
!1390 = !DILocation(line: 253, column: 28, scope: !1371, inlinedAt: !1374)
!1391 = !DILocation(line: 253, column: 18, scope: !1371, inlinedAt: !1374)
!1392 = !DILocation(line: 253, column: 46, scope: !1371, inlinedAt: !1374)
!1393 = !DILocation(line: 253, column: 35, scope: !1371, inlinedAt: !1374)
!1394 = !DILocation(line: 0, scope: !1371, inlinedAt: !1374)
!1395 = !DILocation(line: 254, column: 19, scope: !1371, inlinedAt: !1374)
!1396 = !DILocation(line: 254, column: 18, scope: !1371, inlinedAt: !1374)
!1397 = !DILocation(line: 254, column: 41, scope: !1371, inlinedAt: !1374)
!1398 = !DILocation(line: 255, column: 16, scope: !1371, inlinedAt: !1374)
!1399 = !DILocation(line: 256, column: 16, scope: !1371, inlinedAt: !1374)
!1400 = !DILocation(line: 0, scope: !1367, inlinedAt: !1374)
!1401 = !DILocation(line: 311, column: 3, scope: !1298)
!1402 = !DILocation(line: 242, column: 5, scope: !1403, inlinedAt: !1374)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !2, line: 242, column: 5)
!1404 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 239, column: 43)
!1405 = !DILocation(line: 307, column: 12, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !2, line: 305, column: 33)
!1407 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 305, column: 6)
!1408 = !DILocation(line: 308, column: 5, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 308, column: 5)
!1410 = !DILocation(line: 308, column: 5, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1409, file: !2, line: 308, column: 5)
!1412 = !DILocation(line: 314, column: 22, scope: !1331)
!1413 = !DILocation(line: 314, column: 33, scope: !1331)
!1414 = !DILocation(line: 314, column: 13, scope: !1331)
!1415 = !DILocation(line: 314, column: 43, scope: !1331)
!1416 = !DILocation(line: 314, column: 44, scope: !1331)
!1417 = !DILocation(line: 314, column: 41, scope: !1331)
!1418 = !DILocation(line: 315, column: 22, scope: !1331)
!1419 = !DILocation(line: 315, column: 33, scope: !1331)
!1420 = !DILocation(line: 315, column: 13, scope: !1331)
!1421 = !DILocation(line: 315, column: 44, scope: !1331)
!1422 = !DILocation(line: 315, column: 41, scope: !1331)
!1423 = !DILocation(line: 317, column: 11, scope: !1331)
!1424 = !DILocation(line: 318, column: 14, scope: !1331)
!1425 = !DILocation(line: 0, scope: !1331)
!1426 = !DILocation(line: 319, column: 14, scope: !1331)
!1427 = !DILocation(line: 320, column: 10, scope: !1335)
!1428 = !DILocation(line: 320, column: 8, scope: !1331)
!1429 = !DILocation(line: 327, column: 27, scope: !1334)
!1430 = !DILocation(line: 0, scope: !1334)
!1431 = !DILocation(line: 329, column: 22, scope: !1334)
!1432 = !DILocation(line: 331, column: 23, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 331, column: 13)
!1434 = !DILocation(line: 331, column: 45, scope: !1433)
!1435 = !DILocation(line: 332, column: 10, scope: !1433)
!1436 = !DILocation(line: 330, column: 22, scope: !1334)
!1437 = !DILocation(line: 328, column: 27, scope: !1334)
!1438 = !DILocation(line: 332, column: 23, scope: !1433)
!1439 = !DILocation(line: 332, column: 45, scope: !1433)
!1440 = !DILocation(line: 331, column: 13, scope: !1334)
!1441 = !DILocation(line: 341, column: 6, scope: !1331)
!1442 = !DILocation(line: 311, column: 11, scope: !1298)
!1443 = !DILocation(line: 345, column: 12, scope: !1298)
!1444 = !DILocation(line: 347, column: 12, scope: !1298)
!1445 = !DILocation(line: 355, column: 8, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 355, column: 6)
!1447 = !DILocation(line: 344, column: 26, scope: !1298)
!1448 = !DILocation(line: 344, column: 18, scope: !1298)
!1449 = !DILocation(line: 344, column: 30, scope: !1298)
!1450 = !DILocation(line: 344, column: 38, scope: !1298)
!1451 = !DILocation(line: 345, column: 32, scope: !1298)
!1452 = !DILocation(line: 345, column: 24, scope: !1298)
!1453 = !DILocation(line: 345, column: 36, scope: !1298)
!1454 = !DILocation(line: 345, column: 44, scope: !1298)
!1455 = !DILocation(line: 345, column: 70, scope: !1298)
!1456 = !DILocation(line: 345, column: 69, scope: !1298)
!1457 = !DILocation(line: 346, column: 26, scope: !1298)
!1458 = !DILocation(line: 346, column: 18, scope: !1298)
!1459 = !DILocation(line: 346, column: 30, scope: !1298)
!1460 = !DILocation(line: 347, column: 32, scope: !1298)
!1461 = !DILocation(line: 347, column: 24, scope: !1298)
!1462 = !DILocation(line: 347, column: 36, scope: !1298)
!1463 = !DILocation(line: 347, column: 66, scope: !1298)
!1464 = !DILocation(line: 347, column: 65, scope: !1298)
!1465 = !DILocation(line: 349, column: 10, scope: !1298)
!1466 = !DILocation(line: 350, column: 6, scope: !1298)
!1467 = !DILocation(line: 350, column: 10, scope: !1298)
!1468 = !DILocation(line: 352, column: 20, scope: !1298)
!1469 = !DILocation(line: 352, column: 43, scope: !1298)
!1470 = !DILocation(line: 352, column: 10, scope: !1298)
!1471 = !DILocation(line: 353, column: 22, scope: !1298)
!1472 = !DILocation(line: 353, column: 20, scope: !1298)
!1473 = !DILocation(line: 353, column: 50, scope: !1298)
!1474 = !DILocation(line: 353, column: 49, scope: !1298)
!1475 = !DILocation(line: 353, column: 6, scope: !1298)
!1476 = !DILocation(line: 353, column: 10, scope: !1298)
!1477 = !DILocation(line: 355, column: 6, scope: !1298)
!1478 = !DILocation(line: 356, column: 5, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 356, column: 5)
!1480 = !DILocation(line: 358, column: 12, scope: !1446)
!1481 = !DILocation(line: 358, column: 5, scope: !1446)
!1482 = !DILocation(line: 359, column: 1, scope: !1298)
!1483 = distinct !DISubprogram(name: "coulomb_jwkb", scope: !2, file: !2, line: 822, type: !1484, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!28, !280, !280, !280, !79, !79, !202}
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1487 = !DILocalVariable(name: "lam", arg: 1, scope: !1483, file: !2, line: 822, type: !280)
!1488 = !DILocalVariable(name: "eta", arg: 2, scope: !1483, file: !2, line: 822, type: !280)
!1489 = !DILocalVariable(name: "x", arg: 3, scope: !1483, file: !2, line: 822, type: !280)
!1490 = !DILocalVariable(name: "fjwkb", arg: 4, scope: !1483, file: !2, line: 823, type: !79)
!1491 = !DILocalVariable(name: "gjwkb", arg: 5, scope: !1483, file: !2, line: 823, type: !79)
!1492 = !DILocalVariable(name: "exponent", arg: 6, scope: !1483, file: !2, line: 824, type: !202)
!1493 = !DILocalVariable(name: "llp1", scope: !1483, file: !2, line: 826, type: !280)
!1494 = !DILocalVariable(name: "llp1_eff", scope: !1483, file: !2, line: 827, type: !280)
!1495 = !DILocalVariable(name: "rho_ghalf", scope: !1483, file: !2, line: 828, type: !280)
!1496 = !DILocalVariable(name: "sinh_arg", scope: !1483, file: !2, line: 829, type: !280)
!1497 = !DILocalVariable(name: "sinh_inv", scope: !1483, file: !2, line: 830, type: !280)
!1498 = !DILocalVariable(name: "phi", scope: !1483, file: !2, line: 832, type: !280)
!1499 = !DILocalVariable(name: "zeta_half", scope: !1483, file: !2, line: 834, type: !280)
!1500 = !DILocalVariable(name: "prefactor", scope: !1483, file: !2, line: 835, type: !280)
!1501 = !DILocalVariable(name: "F", scope: !1483, file: !2, line: 837, type: !78)
!1502 = !DILocalVariable(name: "G", scope: !1483, file: !2, line: 838, type: !78)
!1503 = !DILocalVariable(name: "F_exp", scope: !1483, file: !2, line: 839, type: !78)
!1504 = !DILocalVariable(name: "G_exp", scope: !1483, file: !2, line: 840, type: !78)
!1505 = !DILocalVariable(name: "airy_scale_exp", scope: !1483, file: !2, line: 842, type: !280)
!1506 = !DILocalVariable(name: "ai", scope: !1483, file: !2, line: 843, type: !80)
!1507 = !DILocalVariable(name: "bi", scope: !1483, file: !2, line: 844, type: !80)
!1508 = distinct !DIAssignID()
!1509 = !DILocation(line: 0, scope: !1483)
!1510 = distinct !DIAssignID()
!1511 = !DILocation(line: 826, column: 31, scope: !1483)
!1512 = !DILocation(line: 827, column: 28, scope: !1483)
!1513 = !DILocation(line: 828, column: 39, scope: !1483)
!1514 = !DILocation(line: 828, column: 34, scope: !1483)
!1515 = !DILocation(line: 828, column: 28, scope: !1483)
!1516 = !DILocation(line: 829, column: 46, scope: !1483)
!1517 = !DILocation(line: 829, column: 41, scope: !1483)
!1518 = !DILocation(line: 829, column: 28, scope: !1483)
!1519 = !DILocation(line: 829, column: 62, scope: !1483)
!1520 = !DILocation(line: 829, column: 74, scope: !1483)
!1521 = !DILocation(line: 830, column: 43, scope: !1483)
!1522 = !DILocation(line: 830, column: 28, scope: !1483)
!1523 = !DILocation(line: 832, column: 43, scope: !1483)
!1524 = !DILocation(line: 832, column: 42, scope: !1483)
!1525 = !DILocation(line: 832, column: 68, scope: !1483)
!1526 = !DILocation(line: 832, column: 83, scope: !1483)
!1527 = !DILocation(line: 832, column: 22, scope: !1483)
!1528 = !DILocation(line: 834, column: 35, scope: !1483)
!1529 = !DILocation(line: 834, column: 39, scope: !1483)
!1530 = !DILocation(line: 834, column: 28, scope: !1483)
!1531 = !DILocation(line: 835, column: 37, scope: !1483)
!1532 = !DILocation(line: 835, column: 41, scope: !1483)
!1533 = !DILocation(line: 835, column: 49, scope: !1483)
!1534 = !DILocation(line: 835, column: 43, scope: !1483)
!1535 = !DILocation(line: 835, column: 28, scope: !1483)
!1536 = !DILocation(line: 837, column: 24, scope: !1483)
!1537 = !DILocation(line: 837, column: 29, scope: !1483)
!1538 = !DILocation(line: 843, column: 3, scope: !1483)
!1539 = !DILocation(line: 844, column: 3, scope: !1483)
!1540 = !DILocation(line: 845, column: 36, scope: !1483)
!1541 = !DILocation(line: 845, column: 3, scope: !1483)
!1542 = !DILocation(line: 846, column: 3, scope: !1483)
!1543 = !DILocation(line: 847, column: 11, scope: !1483)
!1544 = !DILocation(line: 847, column: 5, scope: !1483)
!1545 = !DILocation(line: 848, column: 11, scope: !1483)
!1546 = !DILocation(line: 848, column: 5, scope: !1483)
!1547 = !DILocation(line: 850, column: 11, scope: !1483)
!1548 = !DILocation(line: 852, column: 12, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 852, column: 6)
!1550 = !DILocation(line: 852, column: 6, scope: !1483)
!1551 = !DILocation(line: 853, column: 16, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 852, column: 32)
!1553 = !DILocation(line: 854, column: 16, scope: !1552)
!1554 = !DILocation(line: 855, column: 27, scope: !1552)
!1555 = !DILocation(line: 855, column: 25, scope: !1552)
!1556 = !DILocation(line: 855, column: 12, scope: !1552)
!1557 = !DILocation(line: 855, column: 16, scope: !1552)
!1558 = !DILocation(line: 856, column: 27, scope: !1552)
!1559 = !DILocation(line: 856, column: 25, scope: !1552)
!1560 = !DILocation(line: 856, column: 12, scope: !1552)
!1561 = !DILocation(line: 856, column: 16, scope: !1552)
!1562 = !DILocation(line: 857, column: 15, scope: !1552)
!1563 = !DILocation(line: 858, column: 5, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1552, file: !2, line: 858, column: 5)
!1565 = !DILocation(line: 861, column: 18, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 860, column: 8)
!1567 = !DILocation(line: 861, column: 16, scope: !1566)
!1568 = !DILocation(line: 862, column: 18, scope: !1566)
!1569 = !DILocation(line: 862, column: 16, scope: !1566)
!1570 = !DILocation(line: 863, column: 39, scope: !1566)
!1571 = !DILocation(line: 863, column: 27, scope: !1566)
!1572 = !DILocation(line: 863, column: 25, scope: !1566)
!1573 = !DILocation(line: 863, column: 12, scope: !1566)
!1574 = !DILocation(line: 863, column: 16, scope: !1566)
!1575 = !DILocation(line: 864, column: 27, scope: !1566)
!1576 = !DILocation(line: 864, column: 25, scope: !1566)
!1577 = !DILocation(line: 864, column: 12, scope: !1566)
!1578 = !DILocation(line: 864, column: 16, scope: !1566)
!1579 = !DILocation(line: 865, column: 15, scope: !1566)
!1580 = !DILocation(line: 866, column: 5, scope: !1566)
!1581 = !DILocation(line: 0, scope: !1549)
!1582 = !DILocation(line: 868, column: 1, scope: !1483)
!1583 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_F_array", scope: !2, file: !2, line: 1211, type: !1584, scopeLine: 1215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1586)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!28, !78, !28, !78, !78, !202, !202}
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1592, !1593, !1596, !1599, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1616, !1617, !1618}
!1587 = !DILocalVariable(name: "lam_min", arg: 1, scope: !1583, file: !2, line: 1211, type: !78)
!1588 = !DILocalVariable(name: "kmax", arg: 2, scope: !1583, file: !2, line: 1211, type: !28)
!1589 = !DILocalVariable(name: "eta", arg: 3, scope: !1583, file: !2, line: 1212, type: !78)
!1590 = !DILocalVariable(name: "x", arg: 4, scope: !1583, file: !2, line: 1212, type: !78)
!1591 = !DILocalVariable(name: "fc_array", arg: 5, scope: !1583, file: !2, line: 1213, type: !202)
!1592 = !DILocalVariable(name: "F_exp", arg: 6, scope: !1583, file: !2, line: 1214, type: !202)
!1593 = !DILocalVariable(name: "k", scope: !1594, file: !2, line: 1217, type: !28)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 1216, column: 16)
!1595 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 1216, column: 6)
!1596 = !DILocalVariable(name: "f_0", scope: !1597, file: !2, line: 1223, type: !80)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 1222, column: 23)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 1222, column: 8)
!1599 = !DILocalVariable(name: "x_inv", scope: !1600, file: !2, line: 1230, type: !280)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !2, line: 1229, column: 8)
!1601 = !DILocalVariable(name: "lam_max", scope: !1600, file: !2, line: 1231, type: !280)
!1602 = !DILocalVariable(name: "F", scope: !1600, file: !2, line: 1232, type: !80)
!1603 = !DILocalVariable(name: "Fp", scope: !1600, file: !2, line: 1232, type: !80)
!1604 = !DILocalVariable(name: "G", scope: !1600, file: !2, line: 1233, type: !80)
!1605 = !DILocalVariable(name: "Gp", scope: !1600, file: !2, line: 1233, type: !80)
!1606 = !DILocalVariable(name: "G_exp", scope: !1600, file: !2, line: 1234, type: !78)
!1607 = !DILocalVariable(name: "stat_FG", scope: !1600, file: !2, line: 1236, type: !28)
!1608 = !DILocalVariable(name: "fcl", scope: !1600, file: !2, line: 1239, type: !78)
!1609 = !DILocalVariable(name: "fpl", scope: !1600, file: !2, line: 1240, type: !78)
!1610 = !DILocalVariable(name: "lam", scope: !1600, file: !2, line: 1241, type: !78)
!1611 = !DILocalVariable(name: "k", scope: !1600, file: !2, line: 1242, type: !28)
!1612 = !DILocalVariable(name: "el", scope: !1613, file: !2, line: 1247, type: !78)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !2, line: 1246, column: 30)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 1246, column: 5)
!1615 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 1246, column: 5)
!1616 = !DILocalVariable(name: "rl", scope: !1613, file: !2, line: 1248, type: !78)
!1617 = !DILocalVariable(name: "sl", scope: !1613, file: !2, line: 1249, type: !78)
!1618 = !DILocalVariable(name: "fc_lm1", scope: !1613, file: !2, line: 1250, type: !78)
!1619 = distinct !DIAssignID()
!1620 = !DILocation(line: 0, scope: !1597)
!1621 = distinct !DIAssignID()
!1622 = !DILocation(line: 0, scope: !1600)
!1623 = distinct !DIAssignID()
!1624 = distinct !DIAssignID()
!1625 = distinct !DIAssignID()
!1626 = distinct !DIAssignID()
!1627 = !DILocation(line: 0, scope: !1583)
!1628 = !DILocation(line: 1216, column: 8, scope: !1595)
!1629 = !DILocation(line: 1216, column: 6, scope: !1583)
!1630 = !DILocation(line: 1218, column: 12, scope: !1594)
!1631 = !DILocation(line: 0, scope: !1594)
!1632 = !DILocation(line: 1219, column: 15, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !2, line: 1219, column: 5)
!1634 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 1219, column: 5)
!1635 = !DILocation(line: 1219, column: 5, scope: !1634)
!1636 = !DILocation(line: 1220, column: 19, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 1219, column: 28)
!1638 = !DILocation(line: 1222, column: 16, scope: !1598)
!1639 = !DILocation(line: 1222, column: 8, scope: !1594)
!1640 = !DILocation(line: 1223, column: 7, scope: !1597)
!1641 = !DILocation(line: 1224, column: 7, scope: !1597)
!1642 = !DILocation(line: 1225, column: 25, scope: !1597)
!1643 = !DILocation(line: 1225, column: 19, scope: !1597)
!1644 = !DILocation(line: 1226, column: 5, scope: !1598)
!1645 = !DILocation(line: 1226, column: 5, scope: !1597)
!1646 = !DILocation(line: 1230, column: 29, scope: !1600)
!1647 = !DILocation(line: 1231, column: 38, scope: !1600)
!1648 = !DILocation(line: 1232, column: 5, scope: !1600)
!1649 = !DILocation(line: 1233, column: 5, scope: !1600)
!1650 = !DILocation(line: 1234, column: 5, scope: !1600)
!1651 = !DILocation(line: 1236, column: 19, scope: !1600)
!1652 = !DILocation(line: 1239, column: 21, scope: !1600)
!1653 = !DILocation(line: 1240, column: 21, scope: !1600)
!1654 = !DILocation(line: 1244, column: 5, scope: !1600)
!1655 = !DILocation(line: 1244, column: 20, scope: !1600)
!1656 = !DILocation(line: 1246, column: 20, scope: !1614)
!1657 = !DILocation(line: 1246, column: 5, scope: !1615)
!1658 = !DILocation(line: 1246, scope: !1615)
!1659 = !DILocation(line: 1247, column: 22, scope: !1613)
!1660 = !DILocation(line: 0, scope: !1613)
!1661 = !DILocation(line: 1248, column: 19, scope: !1613)
!1662 = !DILocation(line: 1249, column: 28, scope: !1613)
!1663 = !DILocation(line: 1250, column: 27, scope: !1613)
!1664 = !DILocation(line: 1250, column: 37, scope: !1613)
!1665 = !DILocation(line: 1251, column: 7, scope: !1613)
!1666 = !DILocation(line: 1251, column: 21, scope: !1613)
!1667 = !DILocation(line: 1252, column: 30, scope: !1613)
!1668 = !DILocation(line: 1252, column: 39, scope: !1613)
!1669 = !DILocation(line: 1254, column: 11, scope: !1613)
!1670 = distinct !{!1670, !1657, !1671, !271}
!1671 = !DILocation(line: 1255, column: 5, scope: !1615)
!1672 = !DILocation(line: 1258, column: 3, scope: !1595)
!1673 = !DILocation(line: 0, scope: !1595)
!1674 = !DILocation(line: 1259, column: 1, scope: !1583)
!1675 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_FG_array", scope: !2, file: !2, line: 1263, type: !1676, scopeLine: 1267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!28, !78, !28, !78, !78, !202, !202, !202, !202}
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1704, !1705, !1706, !1707, !1711, !1712, !1713}
!1679 = !DILocalVariable(name: "lam_min", arg: 1, scope: !1675, file: !2, line: 1263, type: !78)
!1680 = !DILocalVariable(name: "kmax", arg: 2, scope: !1675, file: !2, line: 1263, type: !28)
!1681 = !DILocalVariable(name: "eta", arg: 3, scope: !1675, file: !2, line: 1264, type: !78)
!1682 = !DILocalVariable(name: "x", arg: 4, scope: !1675, file: !2, line: 1264, type: !78)
!1683 = !DILocalVariable(name: "fc_array", arg: 5, scope: !1675, file: !2, line: 1265, type: !202)
!1684 = !DILocalVariable(name: "gc_array", arg: 6, scope: !1675, file: !2, line: 1265, type: !202)
!1685 = !DILocalVariable(name: "F_exp", arg: 7, scope: !1675, file: !2, line: 1266, type: !202)
!1686 = !DILocalVariable(name: "G_exp", arg: 8, scope: !1675, file: !2, line: 1266, type: !202)
!1687 = !DILocalVariable(name: "x_inv", scope: !1675, file: !2, line: 1268, type: !280)
!1688 = !DILocalVariable(name: "lam_max", scope: !1675, file: !2, line: 1269, type: !280)
!1689 = !DILocalVariable(name: "F", scope: !1675, file: !2, line: 1270, type: !80)
!1690 = !DILocalVariable(name: "Fp", scope: !1675, file: !2, line: 1270, type: !80)
!1691 = !DILocalVariable(name: "G", scope: !1675, file: !2, line: 1271, type: !80)
!1692 = !DILocalVariable(name: "Gp", scope: !1675, file: !2, line: 1271, type: !80)
!1693 = !DILocalVariable(name: "stat_FG", scope: !1675, file: !2, line: 1273, type: !28)
!1694 = !DILocalVariable(name: "fcl", scope: !1675, file: !2, line: 1276, type: !78)
!1695 = !DILocalVariable(name: "fpl", scope: !1675, file: !2, line: 1277, type: !78)
!1696 = !DILocalVariable(name: "lam", scope: !1675, file: !2, line: 1278, type: !78)
!1697 = !DILocalVariable(name: "k", scope: !1675, file: !2, line: 1279, type: !28)
!1698 = !DILocalVariable(name: "gcl", scope: !1675, file: !2, line: 1281, type: !78)
!1699 = !DILocalVariable(name: "gpl", scope: !1675, file: !2, line: 1281, type: !78)
!1700 = !DILocalVariable(name: "el", scope: !1701, file: !2, line: 1286, type: !78)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !2, line: 1285, column: 28)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !2, line: 1285, column: 3)
!1703 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 1285, column: 3)
!1704 = !DILocalVariable(name: "rl", scope: !1701, file: !2, line: 1287, type: !78)
!1705 = !DILocalVariable(name: "sl", scope: !1701, file: !2, line: 1288, type: !78)
!1706 = !DILocalVariable(name: "fc_lm1", scope: !1701, file: !2, line: 1289, type: !78)
!1707 = !DILocalVariable(name: "el", scope: !1708, file: !2, line: 1304, type: !78)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 1303, column: 26)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 1303, column: 3)
!1710 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 1303, column: 3)
!1711 = !DILocalVariable(name: "rl", scope: !1708, file: !2, line: 1305, type: !78)
!1712 = !DILocalVariable(name: "sl", scope: !1708, file: !2, line: 1306, type: !78)
!1713 = !DILocalVariable(name: "gcl1", scope: !1708, file: !2, line: 1307, type: !78)
!1714 = distinct !DIAssignID()
!1715 = !DILocation(line: 0, scope: !1675)
!1716 = distinct !DIAssignID()
!1717 = distinct !DIAssignID()
!1718 = distinct !DIAssignID()
!1719 = !DILocation(line: 1268, column: 27, scope: !1675)
!1720 = !DILocation(line: 1269, column: 36, scope: !1675)
!1721 = !DILocation(line: 1270, column: 3, scope: !1675)
!1722 = !DILocation(line: 1271, column: 3, scope: !1675)
!1723 = !DILocation(line: 1273, column: 17, scope: !1675)
!1724 = !DILocation(line: 1276, column: 19, scope: !1675)
!1725 = !DILocation(line: 1277, column: 19, scope: !1675)
!1726 = !DILocation(line: 1283, column: 3, scope: !1675)
!1727 = !DILocation(line: 1283, column: 18, scope: !1675)
!1728 = !DILocation(line: 1285, column: 18, scope: !1702)
!1729 = !DILocation(line: 1285, column: 3, scope: !1703)
!1730 = !DILocation(line: 1297, column: 11, scope: !1675)
!1731 = !DILocation(line: 1301, column: 15, scope: !1675)
!1732 = !DILocation(line: 1303, column: 3, scope: !1710)
!1733 = !DILocation(line: 1285, scope: !1703)
!1734 = !DILocation(line: 1286, column: 20, scope: !1701)
!1735 = !DILocation(line: 0, scope: !1701)
!1736 = !DILocation(line: 1287, column: 17, scope: !1701)
!1737 = !DILocation(line: 1288, column: 26, scope: !1701)
!1738 = !DILocation(line: 1290, column: 18, scope: !1701)
!1739 = !DILocation(line: 1290, column: 28, scope: !1701)
!1740 = !DILocation(line: 1291, column: 5, scope: !1701)
!1741 = !DILocation(line: 1291, column: 17, scope: !1701)
!1742 = !DILocation(line: 1292, column: 26, scope: !1701)
!1743 = !DILocation(line: 1292, column: 35, scope: !1701)
!1744 = !DILocation(line: 1294, column: 9, scope: !1701)
!1745 = distinct !{!1745, !1729, !1746, !271}
!1746 = !DILocation(line: 1295, column: 3, scope: !1703)
!1747 = !DILocation(line: 1298, column: 12, scope: !1675)
!1748 = !DILocation(line: 1303, column: 13, scope: !1709)
!1749 = !DILocation(line: 1304, column: 20, scope: !1708)
!1750 = !DILocation(line: 0, scope: !1708)
!1751 = !DILocation(line: 1305, column: 17, scope: !1708)
!1752 = !DILocation(line: 1306, column: 25, scope: !1708)
!1753 = !DILocation(line: 1307, column: 22, scope: !1708)
!1754 = !DILocation(line: 1307, column: 33, scope: !1708)
!1755 = !DILocation(line: 1308, column: 5, scope: !1708)
!1756 = !DILocation(line: 1308, column: 17, scope: !1708)
!1757 = !DILocation(line: 1309, column: 21, scope: !1708)
!1758 = !DILocation(line: 1309, column: 30, scope: !1708)
!1759 = !DILocation(line: 1303, column: 22, scope: !1709)
!1760 = distinct !{!1760, !1732, !1761, !271}
!1761 = !DILocation(line: 1312, column: 3, scope: !1710)
!1762 = !DILocation(line: 1315, column: 1, scope: !1675)
!1763 = !DILocation(line: 1314, column: 3, scope: !1675)
!1764 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_FGp_array", scope: !2, file: !2, line: 1319, type: !1765, scopeLine: 1325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1767)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!28, !78, !28, !78, !78, !202, !202, !202, !202, !202, !202}
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1795, !1796, !1797, !1798, !1802, !1803, !1804}
!1768 = !DILocalVariable(name: "lam_min", arg: 1, scope: !1764, file: !2, line: 1319, type: !78)
!1769 = !DILocalVariable(name: "kmax", arg: 2, scope: !1764, file: !2, line: 1319, type: !28)
!1770 = !DILocalVariable(name: "eta", arg: 3, scope: !1764, file: !2, line: 1320, type: !78)
!1771 = !DILocalVariable(name: "x", arg: 4, scope: !1764, file: !2, line: 1320, type: !78)
!1772 = !DILocalVariable(name: "fc_array", arg: 5, scope: !1764, file: !2, line: 1321, type: !202)
!1773 = !DILocalVariable(name: "fcp_array", arg: 6, scope: !1764, file: !2, line: 1321, type: !202)
!1774 = !DILocalVariable(name: "gc_array", arg: 7, scope: !1764, file: !2, line: 1322, type: !202)
!1775 = !DILocalVariable(name: "gcp_array", arg: 8, scope: !1764, file: !2, line: 1322, type: !202)
!1776 = !DILocalVariable(name: "F_exp", arg: 9, scope: !1764, file: !2, line: 1323, type: !202)
!1777 = !DILocalVariable(name: "G_exp", arg: 10, scope: !1764, file: !2, line: 1323, type: !202)
!1778 = !DILocalVariable(name: "x_inv", scope: !1764, file: !2, line: 1326, type: !280)
!1779 = !DILocalVariable(name: "lam_max", scope: !1764, file: !2, line: 1327, type: !280)
!1780 = !DILocalVariable(name: "F", scope: !1764, file: !2, line: 1328, type: !80)
!1781 = !DILocalVariable(name: "Fp", scope: !1764, file: !2, line: 1328, type: !80)
!1782 = !DILocalVariable(name: "G", scope: !1764, file: !2, line: 1329, type: !80)
!1783 = !DILocalVariable(name: "Gp", scope: !1764, file: !2, line: 1329, type: !80)
!1784 = !DILocalVariable(name: "stat_FG", scope: !1764, file: !2, line: 1331, type: !28)
!1785 = !DILocalVariable(name: "fcl", scope: !1764, file: !2, line: 1334, type: !78)
!1786 = !DILocalVariable(name: "fpl", scope: !1764, file: !2, line: 1335, type: !78)
!1787 = !DILocalVariable(name: "lam", scope: !1764, file: !2, line: 1336, type: !78)
!1788 = !DILocalVariable(name: "k", scope: !1764, file: !2, line: 1337, type: !28)
!1789 = !DILocalVariable(name: "gcl", scope: !1764, file: !2, line: 1339, type: !78)
!1790 = !DILocalVariable(name: "gpl", scope: !1764, file: !2, line: 1339, type: !78)
!1791 = !DILocalVariable(name: "el", scope: !1792, file: !2, line: 1345, type: !78)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !2, line: 1344, column: 28)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !2, line: 1344, column: 3)
!1794 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 1344, column: 3)
!1795 = !DILocalVariable(name: "rl", scope: !1792, file: !2, line: 1346, type: !78)
!1796 = !DILocalVariable(name: "sl", scope: !1792, file: !2, line: 1347, type: !78)
!1797 = !DILocalVariable(name: "fc_lm1", scope: !1792, file: !2, line: 1348, type: !78)
!1798 = !DILocalVariable(name: "el", scope: !1799, file: !2, line: 1365, type: !78)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !2, line: 1364, column: 26)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 1364, column: 3)
!1801 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 1364, column: 3)
!1802 = !DILocalVariable(name: "rl", scope: !1799, file: !2, line: 1366, type: !78)
!1803 = !DILocalVariable(name: "sl", scope: !1799, file: !2, line: 1367, type: !78)
!1804 = !DILocalVariable(name: "gcl1", scope: !1799, file: !2, line: 1368, type: !78)
!1805 = distinct !DIAssignID()
!1806 = !DILocation(line: 0, scope: !1764)
!1807 = distinct !DIAssignID()
!1808 = distinct !DIAssignID()
!1809 = distinct !DIAssignID()
!1810 = !DILocation(line: 1326, column: 27, scope: !1764)
!1811 = !DILocation(line: 1327, column: 36, scope: !1764)
!1812 = !DILocation(line: 1328, column: 3, scope: !1764)
!1813 = !DILocation(line: 1329, column: 3, scope: !1764)
!1814 = !DILocation(line: 1331, column: 17, scope: !1764)
!1815 = !DILocation(line: 1334, column: 19, scope: !1764)
!1816 = !DILocation(line: 1335, column: 19, scope: !1764)
!1817 = !DILocation(line: 1341, column: 3, scope: !1764)
!1818 = !DILocation(line: 1341, column: 19, scope: !1764)
!1819 = !DILocation(line: 1342, column: 3, scope: !1764)
!1820 = !DILocation(line: 1342, column: 19, scope: !1764)
!1821 = !DILocation(line: 1344, column: 18, scope: !1793)
!1822 = !DILocation(line: 1344, column: 3, scope: !1794)
!1823 = !DILocation(line: 1357, column: 11, scope: !1764)
!1824 = !DILocation(line: 1358, column: 12, scope: !1764)
!1825 = !DILocation(line: 1361, column: 16, scope: !1764)
!1826 = !DILocation(line: 1362, column: 16, scope: !1764)
!1827 = !DILocation(line: 1364, column: 3, scope: !1801)
!1828 = !DILocation(line: 1344, scope: !1794)
!1829 = !DILocation(line: 1345, column: 20, scope: !1792)
!1830 = !DILocation(line: 0, scope: !1792)
!1831 = !DILocation(line: 1346, column: 17, scope: !1792)
!1832 = !DILocation(line: 1347, column: 26, scope: !1792)
!1833 = !DILocation(line: 1349, column: 18, scope: !1792)
!1834 = !DILocation(line: 1349, column: 28, scope: !1792)
!1835 = !DILocation(line: 1350, column: 5, scope: !1792)
!1836 = !DILocation(line: 1350, column: 18, scope: !1792)
!1837 = !DILocation(line: 1351, column: 26, scope: !1792)
!1838 = !DILocation(line: 1351, column: 35, scope: !1792)
!1839 = !DILocation(line: 1352, column: 5, scope: !1792)
!1840 = !DILocation(line: 1352, column: 18, scope: !1792)
!1841 = distinct !{!1841, !1822, !1842, !271}
!1842 = !DILocation(line: 1355, column: 3, scope: !1794)
!1843 = !DILocation(line: 1364, column: 13, scope: !1800)
!1844 = !DILocation(line: 1365, column: 20, scope: !1799)
!1845 = !DILocation(line: 0, scope: !1799)
!1846 = !DILocation(line: 1366, column: 17, scope: !1799)
!1847 = !DILocation(line: 1367, column: 25, scope: !1799)
!1848 = !DILocation(line: 1368, column: 22, scope: !1799)
!1849 = !DILocation(line: 1368, column: 33, scope: !1799)
!1850 = !DILocation(line: 1369, column: 5, scope: !1799)
!1851 = !DILocation(line: 1369, column: 18, scope: !1799)
!1852 = !DILocation(line: 1370, column: 22, scope: !1799)
!1853 = !DILocation(line: 1370, column: 31, scope: !1799)
!1854 = !DILocation(line: 1371, column: 5, scope: !1799)
!1855 = !DILocation(line: 1371, column: 18, scope: !1799)
!1856 = !DILocation(line: 1364, column: 22, scope: !1800)
!1857 = distinct !{!1857, !1827, !1858, !271}
!1858 = !DILocation(line: 1374, column: 3, scope: !1801)
!1859 = !DILocation(line: 1377, column: 1, scope: !1764)
!1860 = !DILocation(line: 1376, column: 3, scope: !1764)
!1861 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_sphF_array", scope: !2, file: !2, line: 1381, type: !1584, scopeLine: 1385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1862)
!1862 = !{!1863, !1864, !1865, !1866, !1867, !1868, !1869, !1873, !1875}
!1863 = !DILocalVariable(name: "lam_min", arg: 1, scope: !1861, file: !2, line: 1381, type: !78)
!1864 = !DILocalVariable(name: "kmax", arg: 2, scope: !1861, file: !2, line: 1381, type: !28)
!1865 = !DILocalVariable(name: "eta", arg: 3, scope: !1861, file: !2, line: 1382, type: !78)
!1866 = !DILocalVariable(name: "x", arg: 4, scope: !1861, file: !2, line: 1382, type: !78)
!1867 = !DILocalVariable(name: "fc_array", arg: 5, scope: !1861, file: !2, line: 1383, type: !202)
!1868 = !DILocalVariable(name: "F_exp", arg: 6, scope: !1861, file: !2, line: 1384, type: !202)
!1869 = !DILocalVariable(name: "k", scope: !1870, file: !2, line: 1390, type: !28)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 1389, column: 33)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !2, line: 1389, column: 11)
!1872 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 1386, column: 6)
!1873 = !DILocalVariable(name: "k", scope: !1874, file: !2, line: 1404, type: !28)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 1403, column: 8)
!1875 = !DILocalVariable(name: "stat_F", scope: !1874, file: !2, line: 1405, type: !28)
!1876 = distinct !DIAssignID()
!1877 = !DILocation(line: 0, scope: !1861)
!1878 = !DILocation(line: 1386, column: 8, scope: !1872)
!1879 = !DILocation(line: 1386, column: 14, scope: !1872)
!1880 = !DILocation(line: 1387, column: 5, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !2, line: 1387, column: 5)
!1882 = distinct !DILexicalBlock(scope: !1872, file: !2, line: 1386, column: 33)
!1883 = !DILocation(line: 1389, column: 13, scope: !1871)
!1884 = !DILocation(line: 1389, column: 11, scope: !1872)
!1885 = !DILocation(line: 0, scope: !1870)
!1886 = !DILocation(line: 1391, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !2, line: 1391, column: 5)
!1888 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 1391, column: 5)
!1889 = !DILocation(line: 1391, column: 5, scope: !1888)
!1890 = !DILocation(line: 1392, column: 19, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 1391, column: 28)
!1892 = !DILocation(line: 1394, column: 16, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 1394, column: 8)
!1894 = !DILocation(line: 1394, column: 8, scope: !1870)
!1895 = !DILocation(line: 0, scope: !111, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 1395, column: 26, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1893, file: !2, line: 1394, column: 24)
!1898 = !DILocation(line: 0, scope: !114, inlinedAt: !1896)
!1899 = !DILocation(line: 52, column: 29, scope: !114, inlinedAt: !1896)
!1900 = !DILocation(line: 54, column: 6, scope: !113, inlinedAt: !1896)
!1901 = !DILocation(line: 54, column: 16, scope: !113, inlinedAt: !1896)
!1902 = !DILocation(line: 54, column: 6, scope: !114, inlinedAt: !1896)
!1903 = !DILocation(line: 57, column: 20, scope: !112, inlinedAt: !1896)
!1904 = !DILocation(line: 57, column: 11, scope: !113, inlinedAt: !1896)
!1905 = !DILocation(line: 61, column: 5, scope: !111, inlinedAt: !1896)
!1906 = !DILocation(line: 62, column: 5, scope: !111, inlinedAt: !1896)
!1907 = !DILocation(line: 63, column: 27, scope: !111, inlinedAt: !1896)
!1908 = !DILocation(line: 63, column: 20, scope: !111, inlinedAt: !1896)
!1909 = !DILocation(line: 64, column: 3, scope: !112, inlinedAt: !1896)
!1910 = !DILocation(line: 0, scope: !113, inlinedAt: !1896)
!1911 = !DILocation(line: 1395, column: 21, scope: !1897)
!1912 = !DILocation(line: 1395, column: 19, scope: !1897)
!1913 = !DILocation(line: 1396, column: 5, scope: !1897)
!1914 = !DILocation(line: 1397, column: 12, scope: !1870)
!1915 = !DILocation(line: 1398, column: 10, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 1398, column: 8)
!1917 = !DILocation(line: 1398, column: 8, scope: !1870)
!1918 = !DILocation(line: 1401, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !2, line: 1401, column: 7)
!1920 = !DILocation(line: 1405, column: 18, scope: !1874)
!1921 = !DILocation(line: 0, scope: !1874)
!1922 = !DILocation(line: 1410, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 1410, column: 5)
!1924 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 1410, column: 5)
!1925 = !DILocation(line: 1410, column: 5, scope: !1924)
!1926 = !DILocation(line: 1411, column: 21, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !2, line: 1410, column: 28)
!1928 = !DILocation(line: 1411, column: 33, scope: !1927)
!1929 = !DILocation(line: 1411, column: 19, scope: !1927)
!1930 = !DILocation(line: 1410, column: 24, scope: !1923)
!1931 = distinct !{!1931, !1925, !1932, !271}
!1932 = !DILocation(line: 1412, column: 5, scope: !1924)
!1933 = distinct !{!1933, !1934}
!1934 = !{!"llvm.loop.unroll.disable"}
!1935 = !DILocation(line: 0, scope: !1872)
!1936 = !DILocation(line: 1415, column: 1, scope: !1861)
!1937 = !DISubprogram(name: "gsl_sf_expm1_e", scope: !1938, file: !1938, line: 75, type: !1939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1938 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!28, !280, !79}
!1941 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !1942, file: !1942, line: 47, type: !1943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1942 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!28, !78, !79}
!1945 = !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !1942, file: !1942, line: 103, type: !1946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!28, !78, !78, !79, !79}
!1948 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !1938, file: !1938, line: 110, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!28, !280, !280, !79}
!1951 = !DISubprogram(name: "gsl_sf_psi_1piy_e", scope: !1952, file: !1952, line: 68, type: !1939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1952 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!1953 = !DISubprogram(name: "log", scope: !153, file: !153, line: 104, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1954 = !DISubprogram(name: "pow", scope: !153, file: !153, line: 140, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1955 = !DISubprogram(name: "exp", scope: !153, file: !153, line: 95, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1956 = !DISubprogram(name: "tan", scope: !153, file: !153, line: 66, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1957 = !DISubprogram(name: "tanh", scope: !153, file: !153, line: 75, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1958 = !DISubprogram(name: "atan", scope: !153, file: !153, line: 57, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1959 = !DISubprogram(name: "cos", scope: !153, file: !153, line: 62, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1960 = !DISubprogram(name: "sin", scope: !153, file: !153, line: 64, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1961 = !DISubprogram(name: "atan2", scope: !153, file: !153, line: 59, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1962 = !DISubprogram(name: "gsl_sf_airy_Ai_scaled_e", scope: !1963, file: !1963, line: 63, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1963 = !DIFile(filename: "../gsl/gsl_sf_airy.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0902d390a487a55f5b5ea11d3d660eab")
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!28, !280, !1966, !79}
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !1967, line: 50, baseType: !1968)
!1967 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!1968 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!1969 = !DISubprogram(name: "gsl_sf_airy_Bi_scaled_e", scope: !1963, file: !1963, line: 73, type: !1964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
