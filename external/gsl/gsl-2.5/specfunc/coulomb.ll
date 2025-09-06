; ModuleID = 'coulomb.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 1) #9, !dbg !104
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !130
  %18 = call i32 @gsl_sf_expm1_e(double noundef %12, ptr noundef nonnull %4) #9, !dbg !131
  %19 = load double, ptr %4, align 8, !dbg !132, !tbaa !98
  %20 = fdiv double %12, %19, !dbg !133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !134
  br label %21

21:                                               ; preds = %11, %15, %17
  %22 = phi double [ %20, %17 ], [ 1.000000e+00, %11 ], [ 0.000000e+00, %15 ], !dbg !135
  %23 = call double @sqrt(double noundef %22) #9, !dbg !136
  store double %23, ptr %2, align 8, !dbg !137, !tbaa !98
  %24 = fmul double %23, 0x3CC0000000000000, !dbg !138
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !139
  store double %24, ptr %25, align 8, !dbg !140, !tbaa !103
  br label %28, !dbg !141

26:                                               ; preds = %8
  %27 = tail call fastcc i32 @CLeta(double noundef %0, double noundef %1, ptr noundef %2), !dbg !142
  br label %28, !dbg !144

28:                                               ; preds = %6, %21, %26
  %29 = phi i32 [ 1, %6 ], [ 0, %21 ], [ %27, %26 ], !dbg !145
  ret i32 %29, !dbg !146
}

declare !dbg !147 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9, !dbg !172
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !173
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !161, metadata !DIExpression()), !dbg !168
  %7 = fadd double %0, 1.000000e+00, !dbg !174
  %8 = fdiv double %1, %7, !dbg !175
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !176
  %10 = fcmp olt double %9, 0x3CB0000000000000, !dbg !177
  br i1 %10, label %11, label %13, !dbg !178

11:                                               ; preds = %3
  %12 = call i32 @gsl_sf_lngamma_e(double noundef %7, ptr noundef nonnull %4) #9, !dbg !179
  br label %15, !dbg !181

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !182
  %14 = call i32 @gsl_sf_lngamma_complex_e(double noundef %7, double noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %6) #9, !dbg !183
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !184
  br label %15

15:                                               ; preds = %13, %11
  %16 = fmul double %7, 2.000000e+00, !dbg !185
  %17 = call i32 @gsl_sf_lngamma_e(double noundef %16, ptr noundef nonnull %5) #9, !dbg !186
  %18 = fmul double %0, 0x3FE62E42FEFA39EF, !dbg !187
  %19 = fmul double %1, 5.000000e-01, !dbg !188
  %20 = fmul double %19, 0x400921FB54442D18, !dbg !189
  %21 = fsub double %18, %20, !dbg !190
  %22 = load double, ptr %4, align 8, !dbg !191, !tbaa !98
  %23 = fadd double %21, %22, !dbg !192
  %24 = load double, ptr %5, align 8, !dbg !193, !tbaa !98
  %25 = fsub double %23, %24, !dbg !194
  tail call void @llvm.dbg.value(metadata double %25, metadata !162, metadata !DIExpression()), !dbg !168
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !195
  %27 = load double, ptr %26, align 8, !dbg !195, !tbaa !103
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !196
  %29 = load double, ptr %28, align 8, !dbg !196, !tbaa !103
  %30 = fadd double %27, %29, !dbg !197
  tail call void @llvm.dbg.value(metadata double %30, metadata !163, metadata !DIExpression()), !dbg !168
  %31 = call double @llvm.fabs.f64(double %18), !dbg !198
  %32 = call double @llvm.fabs.f64(double %20), !dbg !199
  %33 = fadd double %31, %32, !dbg !200
  %34 = fmul double %33, 0x3CB0000000000000, !dbg !201
  %35 = fadd double %34, %30, !dbg !202
  tail call void @llvm.dbg.value(metadata double %35, metadata !163, metadata !DIExpression()), !dbg !168
  %36 = call i32 @gsl_sf_exp_err_e(double noundef %25, double noundef %35, ptr noundef %2) #9, !dbg !203
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !204
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9, !dbg !204
  ret i32 %36, !dbg !205
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_coulomb_CL_array(double noundef %0, i32 noundef %1, double noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !dbg !206 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !221
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !222
  call void @llvm.dbg.assign(metadata i1 undef, metadata !216, metadata !DIExpression(), metadata !222, metadata ptr %6, metadata !DIExpression()), !dbg !223
  tail call void @llvm.dbg.value(metadata double %0, metadata !211, metadata !DIExpression()), !dbg !223
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !212, metadata !DIExpression()), !dbg !223
  tail call void @llvm.dbg.value(metadata double %2, metadata !213, metadata !DIExpression()), !dbg !223
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !214, metadata !DIExpression()), !dbg !223
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !224
  call void @llvm.dbg.value(metadata double %0, metadata !87, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata double %2, metadata !88, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %6, metadata !89, metadata !DIExpression()), !dbg !225
  %7 = fcmp ugt double %0, -1.000000e+00, !dbg !227
  br i1 %7, label %10, label %8, !dbg !228

8:                                                ; preds = %4
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !229, !tbaa !98, !DIAssignID !230
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !216, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !230, metadata ptr %6, metadata !DIExpression()), !dbg !223
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !229
  store double 0x7FF8000000000000, ptr %9, align 8, !dbg !229, !tbaa !103, !DIAssignID !231
  call void @llvm.dbg.assign(metadata double 0x7FF8000000000000, metadata !216, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !231, metadata ptr %9, metadata !DIExpression()), !dbg !223
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 1) #9, !dbg !232
  br label %31, !dbg !232

10:                                               ; preds = %4
  %11 = tail call double @llvm.fabs.f64(double %0), !dbg !233
  %12 = fcmp olt double %11, 0x3CB0000000000000, !dbg !234
  br i1 %12, label %13, label %28, !dbg !235

13:                                               ; preds = %10
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !221, metadata ptr %5, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata double %2, metadata !118, metadata !DIExpression()), !dbg !238
  %14 = fmul double %2, 0x401921FB54442D18, !dbg !239
  call void @llvm.dbg.value(metadata double %14, metadata !119, metadata !DIExpression()), !dbg !238
  %15 = tail call double @llvm.fabs.f64(double %2), !dbg !240
  %16 = fcmp olt double %15, 0x3CB0000000000000, !dbg !241
  br i1 %16, label %23, label %17, !dbg !242

17:                                               ; preds = %13
  %18 = fcmp ogt double %14, 0x40862E42FEFA39EF, !dbg !243
  br i1 %18, label %23, label %19, !dbg !244

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !245
  %20 = call i32 @gsl_sf_expm1_e(double noundef %14, ptr noundef nonnull %5) #9, !dbg !246
  %21 = load double, ptr %5, align 8, !dbg !247, !tbaa !98
  %22 = fdiv double %14, %21, !dbg !248
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !249
  br label %23

23:                                               ; preds = %19, %17, %13
  %24 = phi double [ %22, %19 ], [ 1.000000e+00, %13 ], [ 0.000000e+00, %17 ], !dbg !250
  %25 = call double @sqrt(double noundef %24) #9, !dbg !251
  store double %25, ptr %6, align 8, !dbg !252, !tbaa !98, !DIAssignID !253
  call void @llvm.dbg.assign(metadata double %25, metadata !216, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !253, metadata ptr %6, metadata !DIExpression()), !dbg !223
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !254
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !255
  store double %26, ptr %27, align 8, !dbg !256, !tbaa !103, !DIAssignID !257
  call void @llvm.dbg.assign(metadata double %26, metadata !216, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !257, metadata ptr %27, metadata !DIExpression()), !dbg !223
  br label %31, !dbg !258

28:                                               ; preds = %10
  %29 = call fastcc i32 @CLeta(double noundef %0, double noundef %2, ptr noundef nonnull %6), !dbg !259
  %30 = load double, ptr %6, align 8, !dbg !260, !tbaa !98
  br label %31, !dbg !261

31:                                               ; preds = %8, %23, %28
  %32 = phi double [ 0x7FF8000000000000, %8 ], [ %25, %23 ], [ %30, %28 ], !dbg !260
  store double %32, ptr %3, align 8, !dbg !262, !tbaa !263
  tail call void @llvm.dbg.value(metadata i32 1, metadata !215, metadata !DIExpression()), !dbg !223
  %33 = icmp slt i32 %1, 1, !dbg !264
  br i1 %33, label %53, label %34, !dbg !265

34:                                               ; preds = %31
  %35 = add nuw i32 %1, 1, !dbg !265
  %36 = zext i32 %35 to i64, !dbg !264
  br label %37, !dbg !265

37:                                               ; preds = %34, %37
  %38 = phi i64 [ 1, %34 ], [ %51, %37 ]
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !215, metadata !DIExpression()), !dbg !223
  %39 = trunc i64 %38 to i32, !dbg !266
  %40 = sitofp i32 %39 to double, !dbg !266
  %41 = fadd double %40, %0, !dbg !267
  tail call void @llvm.dbg.value(metadata double %41, metadata !217, metadata !DIExpression()), !dbg !268
  %42 = getelementptr double, ptr %3, i64 %38, !dbg !269
  %43 = getelementptr double, ptr %42, i64 -1, !dbg !269
  %44 = load double, ptr %43, align 8, !dbg !269, !tbaa !263
  %45 = call double @hypot(double noundef %41, double noundef %2) #9, !dbg !270
  %46 = fmul double %44, %45, !dbg !271
  %47 = fmul double %41, 2.000000e+00, !dbg !272
  %48 = fadd double %47, 1.000000e+00, !dbg !273
  %49 = fmul double %41, %48, !dbg !274
  %50 = fdiv double %46, %49, !dbg !275
  store double %50, ptr %42, align 8, !dbg !276, !tbaa !263
  %51 = add nuw nsw i64 %38, 1, !dbg !277
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !215, metadata !DIExpression()), !dbg !223
  %52 = icmp eq i64 %51, %36, !dbg !264
  br i1 %52, label %53, label %37, !dbg !265, !llvm.loop !278

53:                                               ; preds = %37, %31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !281
  ret i32 0, !dbg !282
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare !dbg !283 double @hypot(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_FG_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9) local_unnamed_addr #0 !dbg !286 {
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !387
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !388
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !389
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !390
  call void @llvm.dbg.assign(metadata i1 undef, metadata !303, metadata !DIExpression(), metadata !390, metadata ptr %14, metadata !DIExpression()), !dbg !391
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !324, metadata !DIExpression(), metadata !392, metadata ptr %15, metadata !DIExpression()), !dbg !393
  %16 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !394
  call void @llvm.dbg.assign(metadata i1 undef, metadata !325, metadata !DIExpression(), metadata !394, metadata ptr %16, metadata !DIExpression()), !dbg !393
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !336, metadata !DIExpression(), metadata !395, metadata ptr %17, metadata !DIExpression()), !dbg !396
  %18 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !397
  call void @llvm.dbg.assign(metadata i1 undef, metadata !339, metadata !DIExpression(), metadata !397, metadata ptr %18, metadata !DIExpression()), !dbg !396
  %19 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !340, metadata !DIExpression(), metadata !398, metadata ptr %19, metadata !DIExpression()), !dbg !396
  %20 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !399
  call void @llvm.dbg.assign(metadata i1 undef, metadata !341, metadata !DIExpression(), metadata !399, metadata ptr %20, metadata !DIExpression()), !dbg !396
  %21 = alloca double, align 8, !DIAssignID !400
  call void @llvm.dbg.assign(metadata i1 undef, metadata !342, metadata !DIExpression(), metadata !400, metadata ptr %21, metadata !DIExpression()), !dbg !396
  %22 = alloca double, align 8, !DIAssignID !401
  call void @llvm.dbg.assign(metadata i1 undef, metadata !343, metadata !DIExpression(), metadata !401, metadata ptr %22, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata double %0, metadata !292, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata double %1, metadata !293, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata double %2, metadata !294, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !295, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !296, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !297, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !298, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !299, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !300, metadata !DIExpression()), !dbg !402
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !301, metadata !DIExpression()), !dbg !402
  %23 = sitofp i32 %3 to double, !dbg !403
  %24 = fsub double %2, %23, !dbg !404
  tail call void @llvm.dbg.value(metadata double %24, metadata !302, metadata !DIExpression()), !dbg !402
  %25 = fcmp olt double %1, 0.000000e+00, !dbg !405
  %26 = fcmp ole double %2, -5.000000e-01
  %27 = or i1 %25, %26, !dbg !406
  %28 = fcmp ole double %24, -5.000000e-01
  %29 = or i1 %27, %28, !dbg !406
  br i1 %29, label %30, label %31, !dbg !406

30:                                               ; preds = %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !407
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !410
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !412
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !dbg !414
  store double 0.000000e+00, ptr %8, align 8, !dbg !416, !tbaa !263
  store double 0.000000e+00, ptr %9, align 8, !dbg !417, !tbaa !263
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 912, i32 noundef 1) #9, !dbg !418
  br label %713, !dbg !418

31:                                               ; preds = %10
  %32 = fcmp oeq double %1, 0.000000e+00, !dbg !420
  br i1 %32, label %33, label %53, !dbg !421

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #9, !dbg !422
  %34 = call fastcc i32 @CLeta(double noundef 0.000000e+00, double noundef %0, ptr noundef nonnull %14), !dbg !423
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false), !dbg !424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !dbg !426
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !dbg !428
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !430
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false), !dbg !430
  store double 0.000000e+00, ptr %8, align 8, !dbg !432, !tbaa !263
  store double 0.000000e+00, ptr %9, align 8, !dbg !433, !tbaa !263
  %36 = fcmp oeq double %2, 0.000000e+00, !dbg !434
  br i1 %36, label %37, label %42, !dbg !436

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !426
  %39 = load double, ptr %14, align 8, !dbg !437, !tbaa !98
  store double %39, ptr %5, align 8, !dbg !437, !tbaa !98
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !437
  %41 = load double, ptr %40, align 8, !dbg !437, !tbaa !103
  store double %41, ptr %38, align 8, !dbg !437, !tbaa !103
  br label %42, !dbg !440

42:                                               ; preds = %37, %33
  %43 = fcmp oeq double %24, 0.000000e+00, !dbg !441
  br i1 %43, label %44, label %52, !dbg !443

44:                                               ; preds = %42
  %45 = load double, ptr %14, align 8, !dbg !444, !tbaa !98
  %46 = fdiv double 1.000000e+00, %45, !dbg !444
  store double %46, ptr %7, align 8, !dbg !444, !tbaa !98
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %14, i64 0, i32 1, !dbg !444
  %48 = load double, ptr %47, align 8, !dbg !444, !tbaa !103
  %49 = fdiv double %48, %45, !dbg !444
  %50 = fdiv double %49, %45, !dbg !444
  %51 = call double @llvm.fabs.f64(double %50), !dbg !444
  store double %51, ptr %35, align 8, !dbg !444, !tbaa !103
  br label %52, !dbg !447

52:                                               ; preds = %42, %44
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 929, i32 noundef 1) #9, !dbg !448
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #9, !dbg !450
  br label %713

53:                                               ; preds = %31
  %54 = fcmp olt double %1, 1.200000e+00, !dbg !451
  %55 = fmul double %0, 0x401921FB54442D18
  %56 = fcmp olt double %55, 0x4083EC744754DD24
  %57 = and i1 %54, %56, !dbg !452
  br i1 %57, label %58, label %333, !dbg !452

58:                                               ; preds = %53
  %59 = fmul double %0, %1, !dbg !453
  %60 = tail call double @llvm.fabs.f64(double %59), !dbg !454
  %61 = fcmp olt double %60, 1.000000e+01, !dbg !455
  br i1 %61, label %62, label %333, !dbg !456

62:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !307, metadata !DIExpression()), !dbg !393
  %63 = fadd double %2, 5.000000e-01, !dbg !457
  %64 = fptosi double %63 to i32, !dbg !458
  tail call void @llvm.dbg.value(metadata i32 %64, metadata !310, metadata !DIExpression()), !dbg !393
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 %3), !dbg !459
  tail call void @llvm.dbg.value(metadata i32 %65, metadata !311, metadata !DIExpression()), !dbg !393
  %66 = sitofp i32 %64 to double, !dbg !460
  %67 = fsub double %2, %66, !dbg !461
  tail call void @llvm.dbg.value(metadata double %67, metadata !312, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #9, !dbg !462
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #9, !dbg !463
  call void @llvm.dbg.value(metadata double %2, metadata !464, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double %0, metadata !470, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double %1, metadata !471, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata ptr undef, metadata !472, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata ptr undef, metadata !473, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata ptr undef, metadata !474, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double 1.000000e-30, metadata !475, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double 1.000000e+05, metadata !476, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !477, metadata !DIExpression()), !dbg !490
  %68 = fdiv double 1.000000e+00, %1, !dbg !492
  call void @llvm.dbg.value(metadata double %68, metadata !478, metadata !DIExpression()), !dbg !490
  %69 = fadd double %2, 1.000000e+00, !dbg !493
  %70 = fadd double %69, 1.000000e+05, !dbg !494
  call void @llvm.dbg.value(metadata double %70, metadata !479, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double %69, metadata !480, metadata !DIExpression()), !dbg !490
  %71 = fdiv double %0, %69, !dbg !495
  %72 = fmul double %68, %69, !dbg !496
  %73 = fadd double %71, %72, !dbg !497
  call void @llvm.dbg.value(metadata double %73, metadata !481, metadata !DIExpression()), !dbg !490
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !320, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !331, metadata !DIExpression()), !dbg !393
  %74 = tail call double @llvm.fabs.f64(double %73), !dbg !498
  %75 = fcmp olt double %74, 1.000000e-30, !dbg !500
  %76 = select i1 %75, double 1.000000e-30, double %73, !dbg !501
  call void @llvm.dbg.value(metadata double %76, metadata !481, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !482, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double %76, metadata !483, metadata !DIExpression()), !dbg !490
  br label %77, !dbg !502

77:                                               ; preds = %106, %62
  %78 = phi i32 [ 0, %62 ], [ %107, %106 ], !dbg !490
  %79 = phi double [ %76, %62 ], [ %97, %106 ], !dbg !490
  %80 = phi double [ 0.000000e+00, %62 ], [ %101, %106 ], !dbg !490
  %81 = phi double [ %76, %62 ], [ %103, %106 ], !dbg !490
  %82 = phi double [ %69, %62 ], [ %83, %106 ], !dbg !490
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !331, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata double %82, metadata !480, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double %81, metadata !481, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double %80, metadata !482, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double %79, metadata !483, metadata !DIExpression()), !dbg !490
  %83 = fadd double %82, 1.000000e+00, !dbg !503
  call void @llvm.dbg.value(metadata double %83, metadata !485, metadata !DIExpression()), !dbg !504
  %84 = fdiv double %0, %82, !dbg !505
  call void @llvm.dbg.value(metadata double %84, metadata !487, metadata !DIExpression()), !dbg !504
  %85 = fmul double %84, %84, !dbg !506
  %86 = fadd double %85, 1.000000e+00, !dbg !507
  call void @llvm.dbg.value(metadata double %86, metadata !488, metadata !DIExpression()), !dbg !504
  %87 = fadd double %82, %83, !dbg !508
  %88 = fdiv double %84, %83, !dbg !509
  %89 = fadd double %68, %88, !dbg !510
  %90 = fmul double %87, %89, !dbg !511
  call void @llvm.dbg.value(metadata double %90, metadata !489, metadata !DIExpression()), !dbg !504
  %91 = fmul double %80, %86, !dbg !512
  %92 = fsub double %90, %91, !dbg !513
  call void @llvm.dbg.value(metadata double %92, metadata !482, metadata !DIExpression()), !dbg !490
  %93 = fdiv double %86, %79, !dbg !514
  %94 = fsub double %90, %93, !dbg !515
  call void @llvm.dbg.value(metadata double %94, metadata !483, metadata !DIExpression()), !dbg !490
  %95 = tail call double @llvm.fabs.f64(double %94), !dbg !516
  %96 = fcmp olt double %95, 1.000000e-30, !dbg !518
  %97 = select i1 %96, double 1.000000e-30, double %94, !dbg !519
  call void @llvm.dbg.value(metadata double %97, metadata !483, metadata !DIExpression()), !dbg !490
  %98 = tail call double @llvm.fabs.f64(double %92), !dbg !520
  %99 = fcmp olt double %98, 1.000000e-30, !dbg !522
  %100 = fdiv double 1.000000e+00, %92, !dbg !523
  call void @llvm.dbg.value(metadata double poison, metadata !482, metadata !DIExpression()), !dbg !490
  %101 = select i1 %99, double 0x46293E5939A08CE9, double %100, !dbg !523
  call void @llvm.dbg.value(metadata double %101, metadata !482, metadata !DIExpression()), !dbg !490
  %102 = fmul double %101, %97, !dbg !524
  call void @llvm.dbg.value(metadata double %102, metadata !484, metadata !DIExpression()), !dbg !490
  %103 = fmul double %81, %102, !dbg !525
  call void @llvm.dbg.value(metadata double %103, metadata !481, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata double %83, metadata !480, metadata !DIExpression()), !dbg !490
  %104 = fcmp ule double %83, %70, !dbg !526
  br i1 %104, label %106, label %105, !dbg !528

105:                                              ; preds = %77
  tail call void @llvm.dbg.value(metadata double %103, metadata !319, metadata !DIExpression()), !dbg !393
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 639, i32 noundef 10) #9, !dbg !529
  br label %111

106:                                              ; preds = %77
  %107 = add nuw nsw i32 %78, 1, !dbg !532
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !331, metadata !DIExpression()), !dbg !393
  %108 = fadd double %102, -1.000000e+00, !dbg !533
  %109 = tail call double @llvm.fabs.f64(double %108), !dbg !534
  %110 = fcmp ogt double %109, 0x3CC0000000000000, !dbg !535
  br i1 %110, label %77, label %111, !dbg !536, !llvm.loop !537

111:                                              ; preds = %106, %105
  %112 = phi i32 [ %78, %105 ], [ %107, %106 ], !dbg !490
  %113 = phi i32 [ 10, %105 ], [ 0, %106 ], !dbg !490
  tail call void @llvm.dbg.value(metadata double %103, metadata !319, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !331, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !332, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !313, metadata !DIExpression()), !dbg !393
  %114 = fmul double %103, 0x3E50000000000000, !dbg !539
  tail call void @llvm.dbg.value(metadata double %114, metadata !314, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata double %67, metadata !540, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 %65, metadata !545, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %0, metadata !546, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %1, metadata !547, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !548, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %114, metadata !549, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata ptr undef, metadata !550, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata ptr undef, metadata !551, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %68, metadata !552, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double poison, metadata !555, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double poison, metadata !556, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 %65, metadata !557, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !565
  call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !553, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %114, metadata !554, metadata !DIExpression()), !dbg !565
  %115 = icmp sgt i32 %65, 0
  br i1 %115, label %116, label %137, !dbg !569

116:                                              ; preds = %111
  %117 = sitofp i32 %65 to double, !dbg !570
  %118 = fadd double %67, %117, !dbg !571
  call void @llvm.dbg.value(metadata double %118, metadata !555, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %118, metadata !556, metadata !DIExpression()), !dbg !565
  br label %119, !dbg !572

119:                                              ; preds = %119, %116
  %120 = phi double [ %131, %119 ], [ 0x3E50000000000000, %116 ]
  %121 = phi double [ %134, %119 ], [ %114, %116 ]
  %122 = phi double [ %135, %119 ], [ %118, %116 ]
  %123 = phi i32 [ %124, %119 ], [ %65, %116 ]
  call void @llvm.dbg.value(metadata double %120, metadata !553, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %121, metadata !554, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %122, metadata !556, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 %123, metadata !557, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !565
  %124 = add nsw i32 %123, -1, !dbg !573
  call void @llvm.dbg.value(metadata i32 %124, metadata !557, metadata !DIExpression()), !dbg !565
  %125 = fdiv double %0, %122, !dbg !574
  call void @llvm.dbg.value(metadata double %125, metadata !558, metadata !DIExpression()), !dbg !575
  %126 = tail call double @hypot(double noundef 1.000000e+00, double noundef %125) #9, !dbg !576
  call void @llvm.dbg.value(metadata double %126, metadata !562, metadata !DIExpression()), !dbg !575
  %127 = fmul double %68, %122, !dbg !577
  %128 = fadd double %125, %127, !dbg !578
  call void @llvm.dbg.value(metadata double %128, metadata !563, metadata !DIExpression()), !dbg !575
  %129 = fmul double %120, %128, !dbg !579
  %130 = fadd double %121, %129, !dbg !580
  %131 = fdiv double %130, %126, !dbg !581
  call void @llvm.dbg.value(metadata double %131, metadata !564, metadata !DIExpression()), !dbg !575
  %132 = fmul double %128, %131, !dbg !582
  %133 = fmul double %120, %126, !dbg !583
  %134 = fsub double %132, %133, !dbg !584
  call void @llvm.dbg.value(metadata double %134, metadata !554, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata double %131, metadata !553, metadata !DIExpression()), !dbg !565
  %135 = fadd double %122, -1.000000e+00, !dbg !585
  call void @llvm.dbg.value(metadata double %135, metadata !556, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i32 %124, metadata !557, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !565
  %136 = icmp ugt i32 %123, 1, !dbg !586
  br i1 %136, label %119, label %137, !dbg !572, !llvm.loop !587

137:                                              ; preds = %119, %111
  %138 = phi double [ %114, %111 ], [ %134, %119 ], !dbg !589
  %139 = phi double [ 0x3E50000000000000, %111 ], [ %131, %119 ], !dbg !589
  tail call void @llvm.dbg.value(metadata double %139, metadata !321, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %138, metadata !322, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !393
  %140 = fcmp oeq double %67, -5.000000e-01, !dbg !590
  br i1 %140, label %141, label %232, !dbg !592

141:                                              ; preds = %137
  call void @llvm.dbg.assign(metadata i1 undef, metadata !593, metadata !DIExpression(), metadata !387, metadata ptr %11, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.assign(metadata i1 undef, metadata !616, metadata !DIExpression(), metadata !388, metadata ptr %12, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.assign(metadata i1 undef, metadata !617, metadata !DIExpression(), metadata !389, metadata ptr %13, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %0, metadata !598, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %1, metadata !599, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata ptr %15, metadata !600, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata ptr %16, metadata !601, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata i32 800, metadata !602, metadata !DIExpression()), !dbg !621
  %142 = tail call double @sqrt(double noundef %1) #9, !dbg !624
  call void @llvm.dbg.value(metadata double %142, metadata !603, metadata !DIExpression()), !dbg !621
  %143 = fmul double %1, %1, !dbg !625
  call void @llvm.dbg.value(metadata double %143, metadata !604, metadata !DIExpression()), !dbg !621
  %144 = fmul double %0, 2.000000e+00, !dbg !626
  %145 = fmul double %144, %1, !dbg !627
  call void @llvm.dbg.value(metadata double %145, metadata !605, metadata !DIExpression()), !dbg !621
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !628
  %146 = call fastcc i32 @CLeta(double noundef -5.000000e-01, double noundef %0, ptr noundef nonnull %11), !dbg !629
  call void @llvm.dbg.value(metadata i32 %146, metadata !606, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !607, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %145, metadata !608, metadata !DIExpression()), !dbg !621
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9, !dbg !630
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9, !dbg !631
  call void @llvm.dbg.value(metadata i32 2, metadata !618, metadata !DIExpression()), !dbg !621
  %147 = call i32 @gsl_sf_psi_1piy_e(double noundef %0, ptr noundef nonnull %12) #9, !dbg !632
  %148 = call i32 @gsl_sf_psi_1piy_e(double noundef %144, ptr noundef nonnull %13) #9, !dbg !633
  %149 = load double, ptr %12, align 8, !dbg !634, !tbaa !98
  %150 = fsub double 0x3FDD85ADF3CA6486, %149, !dbg !635
  %151 = load double, ptr %13, align 8, !dbg !636, !tbaa !98
  %152 = fmul double %151, 2.000000e+00, !dbg !637
  %153 = fadd double %150, %152, !dbg !638
  call void @llvm.dbg.value(metadata double %153, metadata !610, metadata !DIExpression()), !dbg !621
  %154 = fadd double %153, -2.000000e+00, !dbg !639
  %155 = fmul double %145, %154, !dbg !640
  call void @llvm.dbg.value(metadata double %155, metadata !611, metadata !DIExpression()), !dbg !621
  %156 = fadd double %145, 1.000000e+00, !dbg !641
  call void @llvm.dbg.value(metadata double %156, metadata !613, metadata !DIExpression()), !dbg !621
  %157 = fadd double %153, %155, !dbg !642
  call void @llvm.dbg.value(metadata double %157, metadata !614, metadata !DIExpression()), !dbg !621
  br label %158, !dbg !643

158:                                              ; preds = %192, %141
  %159 = phi i32 [ 2, %141 ], [ %193, %192 ]
  %160 = phi double [ 1.000000e+00, %141 ], [ %163, %192 ]
  %161 = phi double [ %157, %141 ], [ %181, %192 ]
  %162 = phi double [ %156, %141 ], [ %180, %192 ]
  %163 = phi double [ %145, %141 ], [ %171, %192 ]
  %164 = phi double [ %155, %141 ], [ %179, %192 ]
  %165 = phi double [ %153, %141 ], [ %164, %192 ]
  call void @llvm.dbg.value(metadata i32 %159, metadata !618, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %160, metadata !607, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %161, metadata !614, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %162, metadata !613, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %163, metadata !608, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %164, metadata !611, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %165, metadata !610, metadata !DIExpression()), !dbg !621
  %166 = mul nuw nsw i32 %159, %159, !dbg !644
  %167 = sitofp i32 %166 to double, !dbg !645
  call void @llvm.dbg.value(metadata double %167, metadata !619, metadata !DIExpression()), !dbg !646
  %168 = fmul double %145, %163, !dbg !647
  %169 = fmul double %143, %160, !dbg !648
  %170 = fsub double %168, %169, !dbg !649
  %171 = fdiv double %170, %167, !dbg !650
  call void @llvm.dbg.value(metadata double %171, metadata !609, metadata !DIExpression()), !dbg !621
  %172 = fmul double %145, %164, !dbg !651
  %173 = fmul double %143, %165, !dbg !652
  %174 = fsub double %172, %173, !dbg !653
  %175 = sitofp i32 %159 to double, !dbg !654
  %176 = fmul double %175, 2.000000e+00, !dbg !655
  %177 = fmul double %176, %171, !dbg !656
  %178 = fsub double %174, %177, !dbg !657
  %179 = fdiv double %178, %167, !dbg !658
  call void @llvm.dbg.value(metadata double %179, metadata !612, metadata !DIExpression()), !dbg !621
  %180 = fadd double %162, %171, !dbg !659
  call void @llvm.dbg.value(metadata double %180, metadata !613, metadata !DIExpression()), !dbg !621
  %181 = fadd double %161, %179, !dbg !660
  call void @llvm.dbg.value(metadata double %181, metadata !614, metadata !DIExpression()), !dbg !621
  %182 = fcmp une double %180, 0.000000e+00, !dbg !661
  %183 = fcmp une double %181, 0.000000e+00
  %184 = select i1 %182, i1 %183, i1 false, !dbg !663
  br i1 %184, label %185, label %192, !dbg !663

185:                                              ; preds = %158
  %186 = fdiv double %171, %180, !dbg !664
  %187 = call double @llvm.fabs.f64(double %186), !dbg !665
  %188 = fdiv double %179, %181, !dbg !666
  %189 = call double @llvm.fabs.f64(double %188), !dbg !667
  %190 = fadd double %187, %189, !dbg !668
  %191 = fcmp olt double %190, 0x3CE4000000000000, !dbg !669
  br i1 %191, label %195, label %192, !dbg !670

192:                                              ; preds = %185, %158
  call void @llvm.dbg.value(metadata double %163, metadata !607, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %171, metadata !608, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %164, metadata !610, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %179, metadata !611, metadata !DIExpression()), !dbg !621
  %193 = add nuw nsw i32 %159, 1, !dbg !671
  call void @llvm.dbg.value(metadata i32 %193, metadata !618, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %181, metadata !614, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %180, metadata !613, metadata !DIExpression()), !dbg !621
  %194 = icmp eq i32 %193, 800, !dbg !672
  br i1 %194, label %195, label %158, !dbg !643

195:                                              ; preds = %192, %185
  %196 = phi i32 [ %159, %185 ], [ 800, %192 ], !dbg !673
  call void @llvm.dbg.value(metadata i32 %196, metadata !618, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %181, metadata !614, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %180, metadata !613, metadata !DIExpression()), !dbg !621
  %197 = load double, ptr %11, align 8, !dbg !674, !tbaa !98
  %198 = fmul double %142, %197, !dbg !675
  %199 = fmul double %180, %198, !dbg !676
  store double %199, ptr %15, align 8, !dbg !677, !tbaa !98, !DIAssignID !678
  call void @llvm.dbg.assign(metadata double %199, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !678, metadata ptr %15, metadata !DIExpression()), !dbg !393
  %200 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !679
  %201 = load double, ptr %200, align 8, !dbg !679, !tbaa !103
  %202 = fmul double %142, %180, !dbg !680
  %203 = call double @llvm.fabs.f64(double %202), !dbg !681
  %204 = fmul double %203, %201, !dbg !682
  %205 = call double @llvm.fabs.f64(double %199), !dbg !683
  %206 = fmul double %205, 0x3CC0000000000000, !dbg !684
  %207 = fadd double %204, %206, !dbg !685
  %208 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !686
  store double %207, ptr %208, align 8, !dbg !687, !tbaa !103, !DIAssignID !688
  call void @llvm.dbg.assign(metadata double %207, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !688, metadata ptr %208, metadata !DIExpression()), !dbg !393
  %209 = call double @log(double noundef %1) #9, !dbg !689
  %210 = fmul double %180, %209, !dbg !690
  call void @llvm.dbg.value(metadata double %210, metadata !615, metadata !DIExpression()), !dbg !621
  %211 = fneg double %142, !dbg !691
  %212 = fadd double %181, %210, !dbg !692
  %213 = fmul double %212, %211, !dbg !693
  %214 = load double, ptr %11, align 8, !dbg !694, !tbaa !98
  %215 = fdiv double %213, %214, !dbg !695
  store double %215, ptr %16, align 8, !dbg !696, !tbaa !98, !DIAssignID !697
  call void @llvm.dbg.assign(metadata double %215, metadata !325, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !697, metadata ptr %16, metadata !DIExpression()), !dbg !393
  %216 = call double @llvm.fabs.f64(double %142), !dbg !698
  %217 = call double @llvm.fabs.f64(double %210), !dbg !699
  %218 = call double @llvm.fabs.f64(double %181), !dbg !700
  %219 = fadd double %218, %217, !dbg !701
  %220 = fmul double %216, %219, !dbg !702
  %221 = call double @llvm.fabs.f64(double %214), !dbg !703
  %222 = fdiv double %220, %221, !dbg !704
  %223 = load double, ptr %200, align 8, !dbg !705, !tbaa !103
  %224 = fdiv double %223, %214, !dbg !706
  %225 = call double @llvm.fabs.f64(double %224), !dbg !707
  %226 = fmul double %222, %225, !dbg !708
  %227 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !709
  store double %226, ptr %227, align 8, !dbg !710, !tbaa !103, !DIAssignID !711
  call void @llvm.dbg.assign(metadata double %226, metadata !325, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !711, metadata ptr %227, metadata !DIExpression()), !dbg !393
  %228 = icmp eq i32 %196, 800, !dbg !712
  br i1 %228, label %229, label %230, !dbg !714

229:                                              ; preds = %195
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 503, i32 noundef 11) #9, !dbg !715
  br label %230, !dbg !715

230:                                              ; preds = %195, %229
  %231 = phi i32 [ 11, %229 ], [ %146, %195 ], !dbg !717
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9, !dbg !718
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9, !dbg !718
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !718
  tail call void @llvm.dbg.value(metadata i32 %231, metadata !333, metadata !DIExpression()), !dbg !393
  br label %249, !dbg !719

232:                                              ; preds = %137
  %233 = fcmp oeq double %67, 0.000000e+00, !dbg !720
  br i1 %233, label %234, label %236, !dbg !722

234:                                              ; preds = %232
  %235 = call fastcc i32 @coulomb_FG0_series(double noundef %0, double noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %16), !dbg !723
  tail call void @llvm.dbg.value(metadata i32 %235, metadata !333, metadata !DIExpression()), !dbg !393
  br label %249, !dbg !725

236:                                              ; preds = %232
  %237 = fcmp oeq double %67, 5.000000e-01, !dbg !726
  br i1 %237, label %238, label %247, !dbg !728

238:                                              ; preds = %236
  store double 0x3E50000000000000, ptr %4, align 8, !dbg !729, !tbaa !98
  %239 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !731
  store double 0x3B20000000000000, ptr %239, align 8, !dbg !732, !tbaa !103
  store double %114, ptr %5, align 8, !dbg !733, !tbaa !98
  %240 = tail call double @llvm.fabs.f64(double %114), !dbg !734
  %241 = fmul double %240, 0x3CC0000000000000, !dbg !735
  %242 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !736
  store double %241, ptr %242, align 8, !dbg !737, !tbaa !103
  %243 = tail call double @llvm.fabs.f64(double undef), !dbg !738
  %244 = fmul double %243, 0x3CC0000000000000, !dbg !739
  %245 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !740
  store double %244, ptr %245, align 8, !dbg !741, !tbaa !103
  %246 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !742
  store double %244, ptr %246, align 8, !dbg !743, !tbaa !103
  store double 0.000000e+00, ptr %8, align 8, !dbg !744, !tbaa !263
  store double 0.000000e+00, ptr %9, align 8, !dbg !745, !tbaa !263
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 1000, i32 noundef 7) #9, !dbg !746
  br label %331, !dbg !746

247:                                              ; preds = %236
  %248 = call fastcc i32 @coulomb_FG_series(double noundef %67, double noundef %0, double noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %16), !dbg !748
  tail call void @llvm.dbg.value(metadata i32 %248, metadata !333, metadata !DIExpression()), !dbg !393
  br label %249

249:                                              ; preds = %234, %247, %230
  %250 = phi i32 [ %231, %230 ], [ %235, %234 ], [ %248, %247 ], !dbg !750
  tail call void @llvm.dbg.value(metadata i32 %250, metadata !333, metadata !DIExpression()), !dbg !393
  %251 = fdiv double %138, %139, !dbg !751
  tail call void @llvm.dbg.value(metadata double %251, metadata !323, metadata !DIExpression()), !dbg !393
  %252 = load double, ptr %16, align 8, !dbg !752, !tbaa !98
  %253 = fmul double %251, %252, !dbg !753
  %254 = load double, ptr %15, align 8, !dbg !754, !tbaa !98
  %255 = fdiv double 1.000000e+00, %254, !dbg !755
  %256 = fsub double %253, %255, !dbg !756
  tail call void @llvm.dbg.value(metadata double %256, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !393
  %257 = call double @llvm.fabs.f64(double %251), !dbg !757
  %258 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %16, i64 0, i32 1, !dbg !758
  %259 = load double, ptr %258, align 8, !dbg !758, !tbaa !103
  %260 = fmul double %257, %259, !dbg !759
  tail call void @llvm.dbg.value(metadata double %260, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !393
  %261 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !760
  %262 = load double, ptr %261, align 8, !dbg !760, !tbaa !103
  %263 = fdiv double %262, %254, !dbg !761
  %264 = call double @llvm.fabs.f64(double %263), !dbg !762
  %265 = fmul double %255, %263, !dbg !763
  %266 = call double @llvm.fabs.f64(double %265), !dbg !763
  %267 = fadd double %260, %266, !dbg !764
  tail call void @llvm.dbg.value(metadata double %267, metadata !326, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !393
  %268 = fdiv double %254, %139, !dbg !765
  tail call void @llvm.dbg.value(metadata double %268, metadata !327, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %264, metadata !329, metadata !DIExpression()), !dbg !393
  %269 = add i32 %65, 1, !dbg !766
  %270 = add i32 %269, %112, !dbg !767
  %271 = sitofp i32 %270 to double, !dbg !768
  %272 = fmul double %271, 0x3CC0000000000000, !dbg !769
  tail call void @llvm.dbg.value(metadata double %272, metadata !330, metadata !DIExpression()), !dbg !393
  %273 = fmul double %268, 0x3E50000000000000, !dbg !770
  tail call void @llvm.dbg.value(metadata double %273, metadata !313, metadata !DIExpression()), !dbg !393
  %274 = call double @llvm.fabs.f64(double %273), !dbg !771
  %275 = fadd double %272, %264, !dbg !772
  %276 = fmul double %274, %275, !dbg !773
  tail call void @llvm.dbg.value(metadata double %276, metadata !317, metadata !DIExpression()), !dbg !393
  %277 = fmul double %114, %268, !dbg !774
  tail call void @llvm.dbg.value(metadata double %277, metadata !314, metadata !DIExpression()), !dbg !393
  %278 = call double @llvm.fabs.f64(double %277), !dbg !775
  %279 = fmul double %278, %275, !dbg !776
  tail call void @llvm.dbg.value(metadata double %279, metadata !318, metadata !DIExpression()), !dbg !393
  %280 = sub nsw i32 %64, %3, !dbg !777
  %281 = call i32 @llvm.smax.i32(i32 %280, i32 0), !dbg !777
  call void @llvm.dbg.value(metadata double %67, metadata !778, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 %281, metadata !783, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double %0, metadata !784, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double %1, metadata !785, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double %252, metadata !786, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double %256, metadata !787, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr undef, metadata !788, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr undef, metadata !789, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double %68, metadata !790, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double %252, metadata !791, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double %256, metadata !792, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double poison, metadata !793, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 1, metadata !794, metadata !DIExpression()), !dbg !802
  %282 = icmp slt i32 %280, 1, !dbg !804
  br i1 %282, label %301, label %283, !dbg !805

283:                                              ; preds = %249, %283
  %284 = phi double [ %295, %283 ], [ %252, %249 ]
  %285 = phi double [ %298, %283 ], [ %256, %249 ]
  %286 = phi double [ %288, %283 ], [ %67, %249 ]
  %287 = phi i32 [ %299, %283 ], [ 1, %249 ]
  call void @llvm.dbg.value(metadata double %284, metadata !791, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double %285, metadata !792, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i32 %287, metadata !794, metadata !DIExpression()), !dbg !802
  %288 = fadd double %286, 1.000000e+00, !dbg !802
  call void @llvm.dbg.value(metadata double %288, metadata !793, metadata !DIExpression()), !dbg !802
  %289 = fdiv double %0, %288, !dbg !806
  call void @llvm.dbg.value(metadata double %289, metadata !795, metadata !DIExpression()), !dbg !807
  %290 = call double @hypot(double noundef 1.000000e+00, double noundef %289) #9, !dbg !808
  call void @llvm.dbg.value(metadata double %290, metadata !799, metadata !DIExpression()), !dbg !807
  %291 = fmul double %68, %288, !dbg !809
  %292 = fadd double %289, %291, !dbg !810
  call void @llvm.dbg.value(metadata double %292, metadata !800, metadata !DIExpression()), !dbg !807
  %293 = fmul double %284, %292, !dbg !811
  %294 = fsub double %293, %285, !dbg !812
  %295 = fdiv double %294, %290, !dbg !813
  call void @llvm.dbg.value(metadata double %295, metadata !801, metadata !DIExpression()), !dbg !807
  %296 = fmul double %284, %290, !dbg !814
  %297 = fmul double %292, %295, !dbg !815
  %298 = fsub double %296, %297, !dbg !816
  call void @llvm.dbg.value(metadata double %298, metadata !792, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double %295, metadata !791, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata double poison, metadata !793, metadata !DIExpression()), !dbg !802
  %299 = add nuw i32 %287, 1, !dbg !817
  call void @llvm.dbg.value(metadata i32 %299, metadata !794, metadata !DIExpression()), !dbg !802
  %300 = icmp eq i32 %287, %281, !dbg !804
  br i1 %300, label %301, label %283, !dbg !805, !llvm.loop !818

301:                                              ; preds = %283, %249
  %302 = phi double [ %256, %249 ], [ %298, %283 ], !dbg !802
  %303 = phi double [ %252, %249 ], [ %295, %283 ], !dbg !802
  tail call void @llvm.dbg.value(metadata double %303, metadata !315, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata double %302, metadata !316, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 0, metadata !335, metadata !DIExpression()), !dbg !393
  store double %273, ptr %4, align 8, !dbg !820, !tbaa !98
  %304 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !821
  %305 = fmul double %274, 0x3CC0000000000000, !dbg !822
  %306 = fadd double %305, %276, !dbg !823
  store double %306, ptr %304, align 8, !dbg !823, !tbaa !103
  store double %277, ptr %5, align 8, !dbg !824, !tbaa !98
  %307 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !825
  %308 = fmul double %278, 0x3CC0000000000000, !dbg !826
  %309 = fadd double %308, %279, !dbg !827
  store double %309, ptr %307, align 8, !dbg !827, !tbaa !103
  %310 = fdiv double %259, %252, !dbg !828
  %311 = call double @llvm.fabs.f64(double %310), !dbg !829
  %312 = fdiv double %267, %256, !dbg !830
  %313 = call double @llvm.fabs.f64(double %312), !dbg !831
  %314 = fadd double %311, %313, !dbg !832
  tail call void @llvm.dbg.value(metadata double %314, metadata !328, metadata !DIExpression()), !dbg !393
  store double %303, ptr %6, align 8, !dbg !833, !tbaa !98
  %315 = call double @llvm.fabs.f64(double %303), !dbg !834
  %316 = fmul double %314, %315, !dbg !835
  %317 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !836
  %318 = add nsw i32 %112, 1, !dbg !837
  %319 = sitofp i32 %318 to double, !dbg !838
  %320 = fmul double %319, 2.000000e+00, !dbg !839
  %321 = fmul double %320, 0x3CB0000000000000, !dbg !840
  %322 = fmul double %321, %315, !dbg !841
  %323 = fadd double %316, %322, !dbg !842
  store double %323, ptr %317, align 8, !dbg !842, !tbaa !103
  store double %302, ptr %7, align 8, !dbg !843, !tbaa !98
  %324 = call double @llvm.fabs.f64(double %302), !dbg !844
  %325 = fmul double %314, %324, !dbg !845
  %326 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !846
  %327 = fmul double %321, %324, !dbg !847
  %328 = fadd double %325, %327, !dbg !848
  store double %328, ptr %326, align 8, !dbg !848, !tbaa !103
  store double 0.000000e+00, ptr %8, align 8, !dbg !849, !tbaa !263
  store double 0.000000e+00, ptr %9, align 8, !dbg !850, !tbaa !263
  %329 = icmp eq i32 %250, 0, !dbg !851
  %330 = select i1 %329, i32 %113, i32 %250, !dbg !851
  br label %331, !dbg !851

331:                                              ; preds = %301, %238
  %332 = phi i32 [ 7, %238 ], [ %330, %301 ], !dbg !393
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #9, !dbg !852
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #9, !dbg !852
  br label %713

333:                                              ; preds = %58, %53
  %334 = fmul double %0, 2.000000e+00, !dbg !853
  %335 = fcmp ogt double %334, %1, !dbg !854
  br i1 %335, label %336, label %469, !dbg !855

336:                                              ; preds = %333
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #9, !dbg !856
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #9, !dbg !856
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #9, !dbg !857
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #9, !dbg !857
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #9, !dbg !858
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #9, !dbg !858
  %337 = call fastcc i32 @coulomb_jwkb(double noundef %2, double noundef %0, double noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %21), !dbg !859, !range !860
  tail call void @llvm.dbg.value(metadata i32 %337, metadata !344, metadata !DIExpression()), !dbg !396
  %338 = icmp eq i32 %3, 0, !dbg !861
  br i1 %338, label %339, label %341, !dbg !863

339:                                              ; preds = %336
  tail call void @llvm.dbg.value(metadata i32 %337, metadata !345, metadata !DIExpression()), !dbg !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !dbg !864, !tbaa.struct !866, !DIAssignID !867
  call void @llvm.dbg.assign(metadata i1 undef, metadata !340, metadata !DIExpression(), metadata !867, metadata ptr %19, metadata !DIExpression()), !dbg !396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !dbg !868, !tbaa.struct !866, !DIAssignID !869
  call void @llvm.dbg.assign(metadata i1 undef, metadata !341, metadata !DIExpression(), metadata !869, metadata ptr %20, metadata !DIExpression()), !dbg !396
  %340 = load double, ptr %21, align 8, !dbg !870, !tbaa !263
  store double %340, ptr %22, align 8, !dbg !871, !tbaa !263, !DIAssignID !872
  call void @llvm.dbg.assign(metadata double %340, metadata !343, metadata !DIExpression(), metadata !872, metadata ptr %22, metadata !DIExpression()), !dbg !396
  br label %343, !dbg !873

341:                                              ; preds = %336
  %342 = call fastcc i32 @coulomb_jwkb(double noundef %24, double noundef %0, double noundef %1, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %22), !dbg !874, !range !860
  tail call void @llvm.dbg.value(metadata i32 %342, metadata !345, metadata !DIExpression()), !dbg !396
  br label %343

343:                                              ; preds = %341, %339
  %344 = phi i32 [ %337, %339 ], [ %342, %341 ], !dbg !876
  tail call void @llvm.dbg.value(metadata i32 %344, metadata !345, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %2, metadata !464, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %0, metadata !470, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %1, metadata !471, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr undef, metadata !472, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr undef, metadata !473, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr undef, metadata !474, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double 1.000000e-30, metadata !475, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double 1.000000e+05, metadata !476, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !477, metadata !DIExpression()), !dbg !877
  %345 = fdiv double 1.000000e+00, %1, !dbg !879
  call void @llvm.dbg.value(metadata double %345, metadata !478, metadata !DIExpression()), !dbg !877
  %346 = fadd double %2, 1.000000e+00, !dbg !880
  %347 = fadd double %346, 1.000000e+05, !dbg !881
  call void @llvm.dbg.value(metadata double %347, metadata !479, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %346, metadata !480, metadata !DIExpression()), !dbg !877
  %348 = fdiv double %0, %346, !dbg !882
  %349 = fmul double %345, %346, !dbg !883
  %350 = fadd double %348, %349, !dbg !884
  call void @llvm.dbg.value(metadata double %350, metadata !481, metadata !DIExpression()), !dbg !877
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !351, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 0, metadata !348, metadata !DIExpression()), !dbg !396
  %351 = tail call double @llvm.fabs.f64(double %350), !dbg !885
  %352 = fcmp olt double %351, 1.000000e-30, !dbg !886
  %353 = select i1 %352, double 1.000000e-30, double %350, !dbg !887
  call void @llvm.dbg.value(metadata double %353, metadata !481, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !482, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %353, metadata !483, metadata !DIExpression()), !dbg !877
  br label %354, !dbg !888

354:                                              ; preds = %382, %343
  %355 = phi double [ %353, %343 ], [ %373, %382 ], !dbg !877
  %356 = phi double [ 0.000000e+00, %343 ], [ %377, %382 ], !dbg !877
  %357 = phi double [ %353, %343 ], [ %379, %382 ], !dbg !877
  %358 = phi double [ %346, %343 ], [ %359, %382 ], !dbg !877
  tail call void @llvm.dbg.value(metadata double poison, metadata !351, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %358, metadata !480, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %357, metadata !481, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %356, metadata !482, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %355, metadata !483, metadata !DIExpression()), !dbg !877
  %359 = fadd double %358, 1.000000e+00, !dbg !889
  call void @llvm.dbg.value(metadata double %359, metadata !485, metadata !DIExpression()), !dbg !890
  %360 = fdiv double %0, %358, !dbg !891
  call void @llvm.dbg.value(metadata double %360, metadata !487, metadata !DIExpression()), !dbg !890
  %361 = fmul double %360, %360, !dbg !892
  %362 = fadd double %361, 1.000000e+00, !dbg !893
  call void @llvm.dbg.value(metadata double %362, metadata !488, metadata !DIExpression()), !dbg !890
  %363 = fadd double %358, %359, !dbg !894
  %364 = fdiv double %360, %359, !dbg !895
  %365 = fadd double %345, %364, !dbg !896
  %366 = fmul double %363, %365, !dbg !897
  call void @llvm.dbg.value(metadata double %366, metadata !489, metadata !DIExpression()), !dbg !890
  %367 = fmul double %356, %362, !dbg !898
  %368 = fsub double %366, %367, !dbg !899
  call void @llvm.dbg.value(metadata double %368, metadata !482, metadata !DIExpression()), !dbg !877
  %369 = fdiv double %362, %355, !dbg !900
  %370 = fsub double %366, %369, !dbg !901
  call void @llvm.dbg.value(metadata double %370, metadata !483, metadata !DIExpression()), !dbg !877
  %371 = tail call double @llvm.fabs.f64(double %370), !dbg !902
  %372 = fcmp olt double %371, 1.000000e-30, !dbg !903
  %373 = select i1 %372, double 1.000000e-30, double %370, !dbg !904
  call void @llvm.dbg.value(metadata double %373, metadata !483, metadata !DIExpression()), !dbg !877
  %374 = tail call double @llvm.fabs.f64(double %368), !dbg !905
  %375 = fcmp olt double %374, 1.000000e-30, !dbg !906
  %376 = fdiv double 1.000000e+00, %368, !dbg !907
  call void @llvm.dbg.value(metadata double poison, metadata !482, metadata !DIExpression()), !dbg !877
  %377 = select i1 %375, double 0x46293E5939A08CE9, double %376, !dbg !907
  call void @llvm.dbg.value(metadata double %377, metadata !482, metadata !DIExpression()), !dbg !877
  %378 = fmul double %377, %373, !dbg !908
  call void @llvm.dbg.value(metadata double %378, metadata !484, metadata !DIExpression()), !dbg !877
  %379 = fmul double %357, %378, !dbg !909
  call void @llvm.dbg.value(metadata double %379, metadata !481, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %359, metadata !480, metadata !DIExpression()), !dbg !877
  %380 = fcmp ule double %359, %347, !dbg !910
  br i1 %380, label %382, label %381, !dbg !911

381:                                              ; preds = %354
  tail call void @llvm.dbg.value(metadata double %379, metadata !349, metadata !DIExpression()), !dbg !396
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 639, i32 noundef 10) #9, !dbg !912
  br label %386

382:                                              ; preds = %354
  tail call void @llvm.dbg.value(metadata double poison, metadata !351, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !348, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !396
  %383 = fadd double %378, -1.000000e+00, !dbg !913
  %384 = tail call double @llvm.fabs.f64(double %383), !dbg !914
  %385 = fcmp ogt double %384, 0x3CC0000000000000, !dbg !915
  br i1 %385, label %354, label %386, !dbg !916, !llvm.loop !917

386:                                              ; preds = %382, %381
  tail call void @llvm.dbg.value(metadata double %379, metadata !349, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !346, metadata !DIExpression()), !dbg !396
  br i1 %338, label %428, label %387, !dbg !919

387:                                              ; preds = %386
  call void @llvm.dbg.value(metadata double %24, metadata !464, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double %0, metadata !470, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double %1, metadata !471, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr undef, metadata !472, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr undef, metadata !473, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata ptr undef, metadata !474, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double 1.000000e-30, metadata !475, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double 1.000000e+05, metadata !476, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !477, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double %345, metadata !478, metadata !DIExpression()), !dbg !920
  %388 = fadd double %24, 1.000000e+00, !dbg !924
  %389 = fadd double %388, 1.000000e+05, !dbg !925
  call void @llvm.dbg.value(metadata double %389, metadata !479, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double %388, metadata !480, metadata !DIExpression()), !dbg !920
  %390 = fdiv double %0, %388, !dbg !926
  %391 = fmul double %345, %388, !dbg !927
  %392 = fadd double %390, %391, !dbg !928
  call void @llvm.dbg.value(metadata double %392, metadata !481, metadata !DIExpression()), !dbg !920
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !352, metadata !DIExpression()), !dbg !396
  tail call void @llvm.dbg.value(metadata i32 0, metadata !348, metadata !DIExpression()), !dbg !396
  %393 = tail call double @llvm.fabs.f64(double %392), !dbg !929
  %394 = fcmp olt double %393, 1.000000e-30, !dbg !930
  %395 = select i1 %394, double 1.000000e-30, double %392, !dbg !931
  call void @llvm.dbg.value(metadata double %395, metadata !481, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !482, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double %395, metadata !483, metadata !DIExpression()), !dbg !920
  br label %396, !dbg !932

396:                                              ; preds = %424, %387
  %397 = phi double [ %395, %387 ], [ %415, %424 ], !dbg !920
  %398 = phi double [ 0.000000e+00, %387 ], [ %419, %424 ], !dbg !920
  %399 = phi double [ %395, %387 ], [ %421, %424 ], !dbg !920
  %400 = phi double [ %388, %387 ], [ %401, %424 ], !dbg !920
  call void @llvm.dbg.value(metadata double %400, metadata !480, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double %399, metadata !481, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double %398, metadata !482, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double %397, metadata !483, metadata !DIExpression()), !dbg !920
  %401 = fadd double %400, 1.000000e+00, !dbg !933
  call void @llvm.dbg.value(metadata double %401, metadata !485, metadata !DIExpression()), !dbg !934
  %402 = fdiv double %0, %400, !dbg !935
  call void @llvm.dbg.value(metadata double %402, metadata !487, metadata !DIExpression()), !dbg !934
  %403 = fmul double %402, %402, !dbg !936
  %404 = fadd double %403, 1.000000e+00, !dbg !937
  call void @llvm.dbg.value(metadata double %404, metadata !488, metadata !DIExpression()), !dbg !934
  %405 = fadd double %400, %401, !dbg !938
  %406 = fdiv double %402, %401, !dbg !939
  %407 = fadd double %345, %406, !dbg !940
  %408 = fmul double %405, %407, !dbg !941
  call void @llvm.dbg.value(metadata double %408, metadata !489, metadata !DIExpression()), !dbg !934
  %409 = fmul double %398, %404, !dbg !942
  %410 = fsub double %408, %409, !dbg !943
  call void @llvm.dbg.value(metadata double %410, metadata !482, metadata !DIExpression()), !dbg !920
  %411 = fdiv double %404, %397, !dbg !944
  %412 = fsub double %408, %411, !dbg !945
  call void @llvm.dbg.value(metadata double %412, metadata !483, metadata !DIExpression()), !dbg !920
  %413 = tail call double @llvm.fabs.f64(double %412), !dbg !946
  %414 = fcmp olt double %413, 1.000000e-30, !dbg !947
  %415 = select i1 %414, double 1.000000e-30, double %412, !dbg !948
  call void @llvm.dbg.value(metadata double %415, metadata !483, metadata !DIExpression()), !dbg !920
  %416 = tail call double @llvm.fabs.f64(double %410), !dbg !949
  %417 = fcmp olt double %416, 1.000000e-30, !dbg !950
  %418 = fdiv double 1.000000e+00, %410, !dbg !951
  call void @llvm.dbg.value(metadata double poison, metadata !482, metadata !DIExpression()), !dbg !920
  %419 = select i1 %417, double 0x46293E5939A08CE9, double %418, !dbg !951
  call void @llvm.dbg.value(metadata double %419, metadata !482, metadata !DIExpression()), !dbg !920
  %420 = fmul double %419, %415, !dbg !952
  call void @llvm.dbg.value(metadata double %420, metadata !484, metadata !DIExpression()), !dbg !920
  %421 = fmul double %399, %420, !dbg !953
  call void @llvm.dbg.value(metadata double %421, metadata !481, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.value(metadata double %401, metadata !480, metadata !DIExpression()), !dbg !920
  %422 = fcmp ule double %401, %389, !dbg !954
  br i1 %422, label %424, label %423, !dbg !955

423:                                              ; preds = %396
  tail call void @llvm.dbg.value(metadata double %421, metadata !350, metadata !DIExpression()), !dbg !396
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 639, i32 noundef 10) #9, !dbg !956
  br label %428

424:                                              ; preds = %396
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !348, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !396
  %425 = fadd double %420, -1.000000e+00, !dbg !957
  %426 = tail call double @llvm.fabs.f64(double %425), !dbg !958
  %427 = fcmp ogt double %426, 0x3CC0000000000000, !dbg !959
  br i1 %427, label %396, label %428, !dbg !960, !llvm.loop !961

428:                                              ; preds = %424, %423, %386
  %429 = phi double [ %379, %386 ], [ %421, %423 ], [ %421, %424 ], !dbg !963
  tail call void @llvm.dbg.value(metadata double %429, metadata !350, metadata !DIExpression()), !dbg !396
  %430 = load double, ptr %17, align 8, !dbg !964, !tbaa !98
  store double %430, ptr %4, align 8, !dbg !965, !tbaa !98
  %431 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !966
  %432 = load double, ptr %431, align 8, !dbg !966, !tbaa !103
  %433 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !967
  store double %432, ptr %433, align 8, !dbg !968, !tbaa !103
  %434 = load double, ptr %20, align 8, !dbg !969, !tbaa !98
  store double %434, ptr %6, align 8, !dbg !970, !tbaa !98
  %435 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %20, i64 0, i32 1, !dbg !971
  %436 = load double, ptr %435, align 8, !dbg !971, !tbaa !103
  %437 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !972
  store double %436, ptr %437, align 8, !dbg !973, !tbaa !103
  %438 = fmul double %379, %430, !dbg !974
  store double %438, ptr %5, align 8, !dbg !975, !tbaa !98
  %439 = tail call double @llvm.fabs.f64(double %379), !dbg !976
  %440 = fmul double %439, %432, !dbg !977
  %441 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !978
  %442 = tail call double @llvm.fabs.f64(double %438), !dbg !979
  %443 = fmul double %442, 0x3CC0000000000000, !dbg !980
  %444 = fadd double %440, %443, !dbg !981
  store double %444, ptr %441, align 8, !dbg !981, !tbaa !103
  %445 = fmul double %429, %434, !dbg !982
  %446 = load double, ptr %19, align 8, !dbg !983, !tbaa !98
  %447 = fdiv double 1.000000e+00, %446, !dbg !984
  %448 = fsub double %445, %447, !dbg !985
  store double %448, ptr %7, align 8, !dbg !986, !tbaa !98
  %449 = tail call double @llvm.fabs.f64(double %429), !dbg !987
  %450 = fmul double %449, %436, !dbg !988
  %451 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !989
  %452 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %19, i64 0, i32 1, !dbg !990
  %453 = load double, ptr %452, align 8, !dbg !990, !tbaa !103
  %454 = fdiv double %453, %446, !dbg !991
  %455 = fmul double %447, %454, !dbg !992
  %456 = tail call double @llvm.fabs.f64(double %455), !dbg !992
  %457 = fadd double %450, %456, !dbg !993
  store double %457, ptr %451, align 8, !dbg !993, !tbaa !103
  %458 = load double, ptr %21, align 8, !dbg !994, !tbaa !263
  store double %458, ptr %8, align 8, !dbg !995, !tbaa !263
  %459 = load double, ptr %22, align 8, !dbg !996, !tbaa !263
  store double %459, ptr %9, align 8, !dbg !997, !tbaa !263
  %460 = icmp eq i32 %337, 16, !dbg !998
  %461 = icmp eq i32 %344, 16
  %462 = or i1 %460, %461, !dbg !1000
  br i1 %462, label %463, label %464, !dbg !1000

463:                                              ; preds = %428
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 1107, i32 noundef 16) #9, !dbg !1001
  br label %467, !dbg !1001

464:                                              ; preds = %428
  %465 = icmp eq i32 %337, 0, !dbg !1004
  %466 = select i1 %465, i32 %344, i32 %337, !dbg !1004
  br label %467, !dbg !1006

467:                                              ; preds = %464, %463
  %468 = phi i32 [ 16, %463 ], [ %466, %464 ], !dbg !1007
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #9, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #9, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #9, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #9, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #9, !dbg !1008
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #9, !dbg !1008
  br label %713

469:                                              ; preds = %333
  tail call void @llvm.dbg.value(metadata double 0x3E50000000000000, metadata !353, metadata !DIExpression()), !dbg !1009
  %470 = fmul double %1, 4.000000e+00, !dbg !1010
  %471 = fsub double %1, %334, !dbg !1011
  %472 = fmul double %470, %471, !dbg !1012
  %473 = fadd double %472, 1.000000e+00, !dbg !1013
  %474 = tail call double @sqrt(double noundef %473) #9, !dbg !1014
  tail call void @llvm.dbg.value(metadata double %474, metadata !355, metadata !DIExpression()), !dbg !1009
  %475 = fsub double %2, %474, !dbg !1015
  %476 = fadd double %475, 5.000000e-01, !dbg !1016
  %477 = tail call double @llvm.ceil.f64(double %476), !dbg !1017
  %478 = fptosi double %477 to i32, !dbg !1017
  tail call void @llvm.dbg.value(metadata i32 %478, metadata !356, metadata !DIExpression()), !dbg !1009
  %479 = tail call i32 @llvm.smax.i32(i32 %478, i32 0), !dbg !1018
  %480 = sitofp i32 %479 to double, !dbg !1018
  %481 = fsub double %2, %480, !dbg !1019
  tail call void @llvm.dbg.value(metadata double %481, metadata !357, metadata !DIExpression()), !dbg !1009
  %482 = fcmp olt double %481, %24, !dbg !1020
  %483 = select i1 %482, double %481, double %24, !dbg !1020
  tail call void @llvm.dbg.value(metadata double %483, metadata !358, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double %2, metadata !464, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double %0, metadata !470, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double %1, metadata !471, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr undef, metadata !472, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr undef, metadata !473, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata ptr undef, metadata !474, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double 1.000000e-30, metadata !475, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double 1.000000e+05, metadata !476, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double 0x3CC0000000000000, metadata !477, metadata !DIExpression()), !dbg !1021
  %484 = fdiv double 1.000000e+00, %1, !dbg !1023
  call void @llvm.dbg.value(metadata double %484, metadata !478, metadata !DIExpression()), !dbg !1021
  %485 = fadd double %2, 1.000000e+00, !dbg !1024
  %486 = fadd double %485, 1.000000e+05, !dbg !1025
  call void @llvm.dbg.value(metadata double %486, metadata !479, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double %485, metadata !480, metadata !DIExpression()), !dbg !1021
  %487 = fdiv double %0, %485, !dbg !1026
  %488 = fmul double %484, %485, !dbg !1027
  %489 = fadd double %487, %488, !dbg !1028
  call void @llvm.dbg.value(metadata double %489, metadata !481, metadata !DIExpression()), !dbg !1021
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !371, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 0, metadata !378, metadata !DIExpression()), !dbg !1009
  %490 = tail call double @llvm.fabs.f64(double %489), !dbg !1029
  %491 = fcmp olt double %490, 1.000000e-30, !dbg !1030
  %492 = select i1 %491, double 1.000000e-30, double %489, !dbg !1031
  call void @llvm.dbg.value(metadata double %492, metadata !481, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !482, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double %492, metadata !483, metadata !DIExpression()), !dbg !1021
  br label %493, !dbg !1032

493:                                              ; preds = %527, %469
  %494 = phi double [ 1.000000e+00, %469 ], [ %524, %527 ], !dbg !1021
  %495 = phi i32 [ 0, %469 ], [ %529, %527 ], !dbg !1021
  %496 = phi double [ 1.000000e+00, %469 ], [ %528, %527 ]
  %497 = phi double [ %492, %469 ], [ %515, %527 ], !dbg !1021
  %498 = phi double [ 0.000000e+00, %469 ], [ %519, %527 ], !dbg !1021
  %499 = phi double [ %492, %469 ], [ %521, %527 ], !dbg !1021
  %500 = phi double [ %485, %469 ], [ %501, %527 ], !dbg !1021
  tail call void @llvm.dbg.value(metadata i32 %495, metadata !378, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata double %494, metadata !371, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double %500, metadata !480, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double %499, metadata !481, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double %498, metadata !482, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double %497, metadata !483, metadata !DIExpression()), !dbg !1021
  %501 = fadd double %500, 1.000000e+00, !dbg !1033
  call void @llvm.dbg.value(metadata double %501, metadata !485, metadata !DIExpression()), !dbg !1034
  %502 = fdiv double %0, %500, !dbg !1035
  call void @llvm.dbg.value(metadata double %502, metadata !487, metadata !DIExpression()), !dbg !1034
  %503 = fmul double %502, %502, !dbg !1036
  %504 = fadd double %503, 1.000000e+00, !dbg !1037
  call void @llvm.dbg.value(metadata double %504, metadata !488, metadata !DIExpression()), !dbg !1034
  %505 = fadd double %500, %501, !dbg !1038
  %506 = fdiv double %502, %501, !dbg !1039
  %507 = fadd double %484, %506, !dbg !1040
  %508 = fmul double %505, %507, !dbg !1041
  call void @llvm.dbg.value(metadata double %508, metadata !489, metadata !DIExpression()), !dbg !1034
  %509 = fmul double %498, %504, !dbg !1042
  %510 = fsub double %508, %509, !dbg !1043
  call void @llvm.dbg.value(metadata double %510, metadata !482, metadata !DIExpression()), !dbg !1021
  %511 = fdiv double %504, %497, !dbg !1044
  %512 = fsub double %508, %511, !dbg !1045
  call void @llvm.dbg.value(metadata double %512, metadata !483, metadata !DIExpression()), !dbg !1021
  %513 = tail call double @llvm.fabs.f64(double %512), !dbg !1046
  %514 = fcmp olt double %513, 1.000000e-30, !dbg !1047
  %515 = select i1 %514, double 1.000000e-30, double %512, !dbg !1048
  call void @llvm.dbg.value(metadata double %515, metadata !483, metadata !DIExpression()), !dbg !1021
  %516 = tail call double @llvm.fabs.f64(double %510), !dbg !1049
  %517 = fcmp olt double %516, 1.000000e-30, !dbg !1050
  %518 = fdiv double 1.000000e+00, %510, !dbg !1051
  call void @llvm.dbg.value(metadata double poison, metadata !482, metadata !DIExpression()), !dbg !1021
  %519 = select i1 %517, double 0x46293E5939A08CE9, double %518, !dbg !1051
  call void @llvm.dbg.value(metadata double %519, metadata !482, metadata !DIExpression()), !dbg !1021
  %520 = fmul double %519, %515, !dbg !1052
  call void @llvm.dbg.value(metadata double %520, metadata !484, metadata !DIExpression()), !dbg !1021
  %521 = fmul double %499, %520, !dbg !1053
  call void @llvm.dbg.value(metadata double %521, metadata !481, metadata !DIExpression()), !dbg !1021
  %522 = fcmp olt double %519, 0.000000e+00, !dbg !1054
  %523 = fneg double %496, !dbg !1056
  %524 = select i1 %522, double %523, double %494, !dbg !1056
  tail call void @llvm.dbg.value(metadata double %524, metadata !371, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double %501, metadata !480, metadata !DIExpression()), !dbg !1021
  %525 = fcmp ule double %501, %486, !dbg !1057
  br i1 %525, label %527, label %526, !dbg !1058

526:                                              ; preds = %493
  tail call void @llvm.dbg.value(metadata double %521, metadata !369, metadata !DIExpression()), !dbg !1009
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 639, i32 noundef 10) #9, !dbg !1059
  br label %533

527:                                              ; preds = %493
  %528 = select i1 %522, double %523, double %496, !dbg !1056
  %529 = add nuw nsw i32 %495, 1, !dbg !1060
  tail call void @llvm.dbg.value(metadata i32 %529, metadata !378, metadata !DIExpression()), !dbg !1009
  %530 = fadd double %520, -1.000000e+00, !dbg !1061
  %531 = tail call double @llvm.fabs.f64(double %530), !dbg !1062
  %532 = fcmp ogt double %531, 0x3CC0000000000000, !dbg !1063
  br i1 %532, label %493, label %533, !dbg !1064, !llvm.loop !1065

533:                                              ; preds = %527, %526
  %534 = phi i32 [ %495, %526 ], [ %529, %527 ], !dbg !1021
  %535 = phi i32 [ 10, %526 ], [ 0, %527 ], !dbg !1021
  tail call void @llvm.dbg.value(metadata i32 %534, metadata !378, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata double %521, metadata !369, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 %535, metadata !380, metadata !DIExpression()), !dbg !1009
  %536 = fmul double %524, 0x3E50000000000000, !dbg !1067
  tail call void @llvm.dbg.value(metadata double %536, metadata !359, metadata !DIExpression()), !dbg !1009
  %537 = fmul double %521, %536, !dbg !1068
  tail call void @llvm.dbg.value(metadata double %537, metadata !360, metadata !DIExpression()), !dbg !1009
  %538 = tail call i32 @llvm.smax.i32(i32 %478, i32 %3), !dbg !1069
  tail call void @llvm.dbg.value(metadata i32 %538, metadata !384, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double %483, metadata !540, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i32 %538, metadata !545, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %0, metadata !546, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %1, metadata !547, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %536, metadata !548, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %537, metadata !549, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr undef, metadata !550, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr undef, metadata !551, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %484, metadata !552, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double poison, metadata !555, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double poison, metadata !556, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i32 %538, metadata !557, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1070
  call void @llvm.dbg.value(metadata double %536, metadata !553, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %537, metadata !554, metadata !DIExpression()), !dbg !1070
  %539 = icmp sgt i32 %538, 0, !dbg !1072
  br i1 %539, label %540, label %561, !dbg !1073

540:                                              ; preds = %533
  %541 = sitofp i32 %538 to double, !dbg !1074
  %542 = fadd double %483, %541, !dbg !1075
  call void @llvm.dbg.value(metadata double %542, metadata !555, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %542, metadata !556, metadata !DIExpression()), !dbg !1070
  br label %543, !dbg !1073

543:                                              ; preds = %543, %540
  %544 = phi double [ %555, %543 ], [ %536, %540 ]
  %545 = phi double [ %558, %543 ], [ %537, %540 ]
  %546 = phi double [ %559, %543 ], [ %542, %540 ]
  %547 = phi i32 [ %548, %543 ], [ %538, %540 ]
  call void @llvm.dbg.value(metadata double %544, metadata !553, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %545, metadata !554, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %546, metadata !556, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i32 %547, metadata !557, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1070
  %548 = add nsw i32 %547, -1, !dbg !1076
  call void @llvm.dbg.value(metadata i32 %548, metadata !557, metadata !DIExpression()), !dbg !1070
  %549 = fdiv double %0, %546, !dbg !1077
  call void @llvm.dbg.value(metadata double %549, metadata !558, metadata !DIExpression()), !dbg !1078
  %550 = tail call double @hypot(double noundef 1.000000e+00, double noundef %549) #9, !dbg !1079
  call void @llvm.dbg.value(metadata double %550, metadata !562, metadata !DIExpression()), !dbg !1078
  %551 = fmul double %484, %546, !dbg !1080
  %552 = fadd double %549, %551, !dbg !1081
  call void @llvm.dbg.value(metadata double %552, metadata !563, metadata !DIExpression()), !dbg !1078
  %553 = fmul double %544, %552, !dbg !1082
  %554 = fadd double %545, %553, !dbg !1083
  %555 = fdiv double %554, %550, !dbg !1084
  call void @llvm.dbg.value(metadata double %555, metadata !564, metadata !DIExpression()), !dbg !1078
  %556 = fmul double %552, %555, !dbg !1085
  %557 = fmul double %544, %550, !dbg !1086
  %558 = fsub double %556, %557, !dbg !1087
  call void @llvm.dbg.value(metadata double %558, metadata !554, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata double %555, metadata !553, metadata !DIExpression()), !dbg !1070
  %559 = fadd double %546, -1.000000e+00, !dbg !1088
  call void @llvm.dbg.value(metadata double %559, metadata !556, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata i32 %548, metadata !557, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1070
  %560 = icmp ugt i32 %547, 1, !dbg !1072
  br i1 %560, label %543, label %561, !dbg !1073, !llvm.loop !1089

561:                                              ; preds = %543, %533
  %562 = phi double [ %537, %533 ], [ %558, %543 ], !dbg !1070
  %563 = phi double [ %536, %533 ], [ %555, %543 ], !dbg !1070
  tail call void @llvm.dbg.value(metadata double %563, metadata !363, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata double %562, metadata !364, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 0, metadata !382, metadata !DIExpression()), !dbg !1009
  %564 = fdiv double %562, %563, !dbg !1091
  tail call void @llvm.dbg.value(metadata double %564, metadata !370, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double %483, metadata !1092, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %0, metadata !1097, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %1, metadata !1098, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr undef, metadata !1099, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr undef, metadata !1100, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr undef, metadata !1101, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i32 0, metadata !1102, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double 0x3CD0000000000000, metadata !1103, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double 2.000000e+05, metadata !1104, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %334, metadata !1105, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %484, metadata !1106, metadata !DIExpression()), !dbg !1123
  %565 = fmul double %0, %0, !dbg !1125
  %566 = fadd double %483, 1.000000e+00, !dbg !1126
  %567 = fmul double %483, %566, !dbg !1127
  %568 = fadd double %565, %567, !dbg !1128
  call void @llvm.dbg.value(metadata double %568, metadata !1107, metadata !DIExpression()), !dbg !1123
  %569 = fneg double %568, !dbg !1129
  call void @llvm.dbg.value(metadata double %569, metadata !1108, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %0, metadata !1109, metadata !DIExpression()), !dbg !1123
  %570 = fsub double %1, %0, !dbg !1130
  %571 = fmul double %570, 2.000000e+00, !dbg !1131
  call void @llvm.dbg.value(metadata double %571, metadata !1110, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double 2.000000e+00, metadata !1111, metadata !DIExpression()), !dbg !1123
  %572 = fmul double %571, %571, !dbg !1132
  %573 = fadd double %572, 4.000000e+00, !dbg !1133
  %574 = fdiv double %571, %573, !dbg !1134
  call void @llvm.dbg.value(metadata double %574, metadata !1112, metadata !DIExpression()), !dbg !1123
  %575 = fdiv double -2.000000e+00, %573, !dbg !1135
  call void @llvm.dbg.value(metadata double %575, metadata !1113, metadata !DIExpression()), !dbg !1123
  %576 = fneg double %484, !dbg !1136
  %577 = fmul double %574, %0, !dbg !1137
  %578 = fmul double %575, %568, !dbg !1138
  %579 = fsub double %577, %578, !dbg !1138
  %580 = fmul double %579, %576, !dbg !1139
  call void @llvm.dbg.value(metadata double %580, metadata !1114, metadata !DIExpression()), !dbg !1123
  %581 = fmul double %574, %569, !dbg !1140
  %582 = fmul double %575, %0, !dbg !1141
  %583 = fsub double %581, %582, !dbg !1142
  %584 = fmul double %484, %583, !dbg !1143
  call void @llvm.dbg.value(metadata double %584, metadata !1115, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1120, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1121, metadata !DIExpression()), !dbg !1123
  %585 = fmul double %484, %0, !dbg !1144
  %586 = fsub double 1.000000e+00, %585, !dbg !1145
  call void @llvm.dbg.value(metadata double %586, metadata !1122, metadata !DIExpression()), !dbg !1123
  tail call void @llvm.dbg.value(metadata i32 0, metadata !379, metadata !DIExpression()), !dbg !1009
  br label %587, !dbg !1146

587:                                              ; preds = %605, %561
  %588 = phi i32 [ 0, %561 ], [ %637, %605 ], !dbg !1123
  %589 = phi double [ %574, %561 ], [ %621, %605 ], !dbg !1123
  %590 = phi double [ %575, %561 ], [ %624, %605 ], !dbg !1123
  %591 = phi double [ %580, %561 ], [ %636, %605 ], !dbg !1123
  %592 = phi double [ %584, %561 ], [ %633, %605 ], !dbg !1123
  %593 = phi double [ 2.000000e+00, %561 ], [ %606, %605 ], !dbg !1123
  %594 = phi double [ %0, %561 ], [ %609, %605 ], !dbg !1123
  %595 = phi double [ %569, %561 ], [ %607, %605 ], !dbg !1123
  %596 = phi double [ 0.000000e+00, %561 ], [ %601, %605 ], !dbg !1123
  %597 = phi double [ 0.000000e+00, %561 ], [ %599, %605 ], !dbg !1123
  %598 = phi double [ %586, %561 ], [ %600, %605 ], !dbg !1123
  tail call void @llvm.dbg.value(metadata i32 %588, metadata !379, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double %598, metadata !1122, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %597, metadata !1121, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %596, metadata !1120, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %595, metadata !1108, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %594, metadata !1109, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %593, metadata !1111, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %592, metadata !1115, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %591, metadata !1114, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %590, metadata !1113, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %589, metadata !1112, metadata !DIExpression()), !dbg !1123
  %599 = fadd double %591, %597, !dbg !1147
  call void @llvm.dbg.value(metadata double %599, metadata !1121, metadata !DIExpression()), !dbg !1123
  %600 = fadd double %592, %598, !dbg !1149
  call void @llvm.dbg.value(metadata double %600, metadata !1122, metadata !DIExpression()), !dbg !1123
  %601 = fadd double %596, 2.000000e+00, !dbg !1150
  call void @llvm.dbg.value(metadata double %601, metadata !1120, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1108, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1109, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1111, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1119, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1112, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1113, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1116, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1117, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1118, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1115, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !1114, metadata !DIExpression()), !dbg !1123
  %602 = fcmp ogt double %601, 2.000000e+05, !dbg !1151
  br i1 %602, label %603, label %605, !dbg !1153

603:                                              ; preds = %587
  %604 = tail call double @llvm.fabs.f64(double %599), !dbg !1154
  br label %646, !dbg !1153

605:                                              ; preds = %587
  %606 = fadd double %593, 2.000000e+00, !dbg !1156
  call void @llvm.dbg.value(metadata double %606, metadata !1111, metadata !DIExpression()), !dbg !1123
  %607 = fadd double %595, %601, !dbg !1157
  call void @llvm.dbg.value(metadata double %607, metadata !1108, metadata !DIExpression()), !dbg !1123
  %608 = fmul double %589, %607, !dbg !1158
  %609 = fadd double %334, %594, !dbg !1159
  call void @llvm.dbg.value(metadata double %609, metadata !1109, metadata !DIExpression()), !dbg !1123
  %610 = fmul double %590, %609, !dbg !1160
  %611 = fsub double %608, %610, !dbg !1161
  %612 = fadd double %571, %611, !dbg !1162
  call void @llvm.dbg.value(metadata double %612, metadata !1119, metadata !DIExpression()), !dbg !1123
  %613 = fmul double %612, %612, !dbg !1163
  %614 = fmul double %589, %609, !dbg !1164
  %615 = fmul double %590, %607, !dbg !1165
  %616 = fadd double %614, %615, !dbg !1166
  %617 = fadd double %606, %616, !dbg !1167
  call void @llvm.dbg.value(metadata double %617, metadata !1113, metadata !DIExpression()), !dbg !1123
  %618 = fmul double %617, %617, !dbg !1168
  %619 = fadd double %613, %618, !dbg !1169
  %620 = fdiv double 1.000000e+00, %619, !dbg !1170
  call void @llvm.dbg.value(metadata double %620, metadata !1118, metadata !DIExpression()), !dbg !1123
  %621 = fmul double %612, %620, !dbg !1171
  call void @llvm.dbg.value(metadata double %621, metadata !1112, metadata !DIExpression()), !dbg !1123
  %622 = fmul double %606, %621, !dbg !1172
  %623 = fneg double %620, !dbg !1173
  %624 = fmul double %617, %623, !dbg !1174
  call void @llvm.dbg.value(metadata double %624, metadata !1113, metadata !DIExpression()), !dbg !1123
  %625 = fmul double %571, %624, !dbg !1175
  %626 = fadd double %622, %625, !dbg !1176
  call void @llvm.dbg.value(metadata double %626, metadata !1117, metadata !DIExpression()), !dbg !1123
  %627 = fmul double %591, %626, !dbg !1177
  %628 = fmul double %571, %621, !dbg !1178
  %629 = fmul double %606, %624, !dbg !1179
  %630 = fsub double %628, %629, !dbg !1180
  %631 = fadd double %630, -1.000000e+00, !dbg !1181
  call void @llvm.dbg.value(metadata double %631, metadata !1116, metadata !DIExpression()), !dbg !1123
  %632 = fmul double %592, %631, !dbg !1182
  %633 = fadd double %627, %632, !dbg !1183
  call void @llvm.dbg.value(metadata double %633, metadata !1115, metadata !DIExpression()), !dbg !1123
  %634 = fmul double %591, %631, !dbg !1184
  %635 = fmul double %592, %626, !dbg !1185
  %636 = fsub double %634, %635, !dbg !1186
  call void @llvm.dbg.value(metadata double %636, metadata !1118, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double %636, metadata !1114, metadata !DIExpression()), !dbg !1123
  %637 = add nuw nsw i32 %588, 1, !dbg !1187
  tail call void @llvm.dbg.value(metadata i32 %637, metadata !379, metadata !DIExpression()), !dbg !1009
  %638 = tail call double @llvm.fabs.f64(double %636), !dbg !1188
  %639 = tail call double @llvm.fabs.f64(double %633), !dbg !1189
  %640 = fadd double %638, %639, !dbg !1190
  %641 = tail call double @llvm.fabs.f64(double %599), !dbg !1191
  %642 = tail call double @llvm.fabs.f64(double %600), !dbg !1192
  %643 = fadd double %641, %642, !dbg !1193
  %644 = fmul double %643, 0x3CD0000000000000, !dbg !1194
  %645 = fcmp ogt double %640, %644, !dbg !1195
  br i1 %645, label %587, label %646, !dbg !1196, !llvm.loop !1197

646:                                              ; preds = %605, %603
  %647 = phi i32 [ %588, %603 ], [ %637, %605 ], !dbg !1123
  %648 = phi double [ %604, %603 ], [ %641, %605 ], !dbg !1154
  %649 = phi i32 [ 10, %603 ], [ 0, %605 ], !dbg !1123
  tail call void @llvm.dbg.value(metadata i32 %647, metadata !379, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i32 %649, metadata !1102, metadata !DIExpression()), !dbg !1123
  %650 = fmul double %648, 0x3DC86A0000000000, !dbg !1199
  %651 = fcmp olt double %600, %650, !dbg !1200
  %652 = select i1 %651, i32 17, i32 %649, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %652, metadata !1102, metadata !DIExpression()), !dbg !1123
  tail call void @llvm.dbg.value(metadata double %599, metadata !373, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata double %600, metadata !374, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 %652, metadata !381, metadata !DIExpression()), !dbg !1009
  %653 = fsub double %564, %599, !dbg !1202
  tail call void @llvm.dbg.value(metadata double %653, metadata !375, metadata !DIExpression()), !dbg !1009
  %654 = fdiv double %653, %600, !dbg !1203
  tail call void @llvm.dbg.value(metadata double %654, metadata !376, metadata !DIExpression()), !dbg !1009
  %655 = fcmp oge double %563, 0.000000e+00, !dbg !1204
  %656 = select i1 %655, double 1.000000e+00, double -1.000000e+00, !dbg !1204
  tail call void @llvm.dbg.value(metadata double %656, metadata !372, metadata !DIExpression()), !dbg !1009
  %657 = fmul double %653, %653, !dbg !1205
  %658 = fdiv double %657, %600, !dbg !1206
  %659 = fadd double %600, %658, !dbg !1207
  %660 = tail call double @sqrt(double noundef %659) #9, !dbg !1208
  %661 = fdiv double %656, %660, !dbg !1209
  tail call void @llvm.dbg.value(metadata double %661, metadata !365, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata double poison, metadata !366, metadata !DIExpression()), !dbg !1009
  %662 = fmul double %654, %661, !dbg !1210
  tail call void @llvm.dbg.value(metadata double %662, metadata !367, metadata !DIExpression()), !dbg !1009
  %663 = fmul double %599, %654, !dbg !1211
  %664 = fsub double %663, %600, !dbg !1212
  %665 = fmul double %664, %661, !dbg !1213
  tail call void @llvm.dbg.value(metadata double %665, metadata !368, metadata !DIExpression()), !dbg !1009
  %666 = fdiv double %661, %563, !dbg !1214
  tail call void @llvm.dbg.value(metadata double %666, metadata !377, metadata !DIExpression()), !dbg !1009
  %667 = fmul double %536, %666, !dbg !1215
  tail call void @llvm.dbg.value(metadata double %667, metadata !359, metadata !DIExpression()), !dbg !1009
  %668 = fmul double %537, %666, !dbg !1216
  tail call void @llvm.dbg.value(metadata double %668, metadata !360, metadata !DIExpression()), !dbg !1009
  %669 = sub nsw i32 %478, %3, !dbg !1217
  %670 = tail call i32 @llvm.smax.i32(i32 %669, i32 0), !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 %670, metadata !385, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double %483, metadata !778, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %670, metadata !783, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double %0, metadata !784, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double %1, metadata !785, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double %662, metadata !786, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double %665, metadata !787, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata ptr undef, metadata !788, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata ptr undef, metadata !789, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double %484, metadata !790, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double %662, metadata !791, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double %665, metadata !792, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double poison, metadata !793, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 1, metadata !794, metadata !DIExpression()), !dbg !1218
  %671 = icmp slt i32 %669, 1, !dbg !1220
  br i1 %671, label %690, label %672, !dbg !1221

672:                                              ; preds = %646, %672
  %673 = phi double [ %684, %672 ], [ %662, %646 ]
  %674 = phi double [ %687, %672 ], [ %665, %646 ]
  %675 = phi double [ %677, %672 ], [ %483, %646 ]
  %676 = phi i32 [ %688, %672 ], [ 1, %646 ]
  call void @llvm.dbg.value(metadata double %673, metadata !791, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double %674, metadata !792, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i32 %676, metadata !794, metadata !DIExpression()), !dbg !1218
  %677 = fadd double %675, 1.000000e+00, !dbg !1218
  call void @llvm.dbg.value(metadata double %677, metadata !793, metadata !DIExpression()), !dbg !1218
  %678 = fdiv double %0, %677, !dbg !1222
  call void @llvm.dbg.value(metadata double %678, metadata !795, metadata !DIExpression()), !dbg !1223
  %679 = tail call double @hypot(double noundef 1.000000e+00, double noundef %678) #9, !dbg !1224
  call void @llvm.dbg.value(metadata double %679, metadata !799, metadata !DIExpression()), !dbg !1223
  %680 = fmul double %484, %677, !dbg !1225
  %681 = fadd double %678, %680, !dbg !1226
  call void @llvm.dbg.value(metadata double %681, metadata !800, metadata !DIExpression()), !dbg !1223
  %682 = fmul double %673, %681, !dbg !1227
  %683 = fsub double %682, %674, !dbg !1228
  %684 = fdiv double %683, %679, !dbg !1229
  call void @llvm.dbg.value(metadata double %684, metadata !801, metadata !DIExpression()), !dbg !1223
  %685 = fmul double %673, %679, !dbg !1230
  %686 = fmul double %681, %684, !dbg !1231
  %687 = fsub double %685, %686, !dbg !1232
  call void @llvm.dbg.value(metadata double %687, metadata !792, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double %684, metadata !791, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata double poison, metadata !793, metadata !DIExpression()), !dbg !1218
  %688 = add nuw i32 %676, 1, !dbg !1233
  call void @llvm.dbg.value(metadata i32 %688, metadata !794, metadata !DIExpression()), !dbg !1218
  %689 = icmp eq i32 %676, %670, !dbg !1220
  br i1 %689, label %690, label %672, !dbg !1221, !llvm.loop !1234

690:                                              ; preds = %672, %646
  %691 = phi double [ %665, %646 ], [ %687, %672 ], !dbg !1218
  %692 = phi double [ %662, %646 ], [ %684, %672 ], !dbg !1218
  tail call void @llvm.dbg.value(metadata double %692, metadata !361, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata double %691, metadata !362, metadata !DIExpression()), !dbg !1009
  tail call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !1009
  %693 = add i32 %538, 1, !dbg !1236
  %694 = add i32 %693, %670, !dbg !1237
  %695 = add i32 %694, %534, !dbg !1238
  %696 = add i32 %695, %647, !dbg !1239
  %697 = sitofp i32 %696 to double, !dbg !1240
  tail call void @llvm.dbg.value(metadata double %697, metadata !386, metadata !DIExpression()), !dbg !1009
  store double %667, ptr %4, align 8, !dbg !1241, !tbaa !98
  %698 = fmul double %697, 8.000000e+00, !dbg !1242
  %699 = fmul double %698, 0x3CB0000000000000, !dbg !1243
  %700 = tail call double @llvm.fabs.f64(double %667), !dbg !1244
  %701 = fmul double %699, %700, !dbg !1245
  %702 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1246
  store double %701, ptr %702, align 8, !dbg !1247, !tbaa !103
  store double %668, ptr %5, align 8, !dbg !1248, !tbaa !98
  %703 = tail call double @llvm.fabs.f64(double %668), !dbg !1249
  %704 = fmul double %699, %703, !dbg !1250
  %705 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1251
  store double %704, ptr %705, align 8, !dbg !1252, !tbaa !103
  store double %692, ptr %6, align 8, !dbg !1253, !tbaa !98
  %706 = tail call double @llvm.fabs.f64(double %692), !dbg !1254
  %707 = fmul double %699, %706, !dbg !1255
  %708 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1256
  store double %707, ptr %708, align 8, !dbg !1257, !tbaa !103
  store double %691, ptr %7, align 8, !dbg !1258, !tbaa !98
  %709 = tail call double @llvm.fabs.f64(double %691), !dbg !1259
  %710 = fmul double %699, %709, !dbg !1260
  %711 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1261
  store double %710, ptr %711, align 8, !dbg !1262, !tbaa !103
  store double 0.000000e+00, ptr %8, align 8, !dbg !1263, !tbaa !263
  store double 0.000000e+00, ptr %9, align 8, !dbg !1264, !tbaa !263
  %712 = select i1 %525, i32 %652, i32 %535, !dbg !1265
  br label %713

713:                                              ; preds = %467, %52, %690, %331, %30
  %714 = phi i32 [ 1, %30 ], [ 1, %52 ], [ %332, %331 ], [ %468, %467 ], [ %712, %690 ], !dbg !1266
  ret i32 %714, !dbg !1267
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @coulomb_FG0_series(double noundef %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !dbg !1268 {
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1305
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1277, metadata !DIExpression(), metadata !1305, metadata ptr %5, metadata !DIExpression()), !dbg !1306
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1307
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1279, metadata !DIExpression(), metadata !1307, metadata ptr %6, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %0, metadata !1270, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %1, metadata !1271, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1272, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1273, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 800, metadata !1274, metadata !DIExpression()), !dbg !1306
  %7 = fmul double %1, %1, !dbg !1308
  tail call void @llvm.dbg.value(metadata double %7, metadata !1275, metadata !DIExpression()), !dbg !1306
  %8 = fmul double %0, 2.000000e+00, !dbg !1309
  %9 = fmul double %8, %1, !dbg !1310
  tail call void @llvm.dbg.value(metadata double %9, metadata !1276, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9, !dbg !1311
  %10 = call fastcc i32 @CLeta(double noundef 0.000000e+00, double noundef %0, ptr noundef nonnull %5), !dbg !1312
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1278, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !1313
  %11 = call i32 @gsl_sf_psi_1piy_e(double noundef %0, ptr noundef nonnull %6) #9, !dbg !1314
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1280, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1281, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %1, metadata !1282, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1284, metadata !DIExpression()), !dbg !1306
  %12 = load double, ptr %6, align 8, !dbg !1315, !tbaa !98
  %13 = fadd double %12, 0x3FC3C467E37DB0C8, !dbg !1316
  %14 = fmul double %9, %13, !dbg !1317
  tail call void @llvm.dbg.value(metadata double %14, metadata !1285, metadata !DIExpression()), !dbg !1306
  %15 = fadd double %1, 0.000000e+00, !dbg !1318
  tail call void @llvm.dbg.value(metadata double %15, metadata !1287, metadata !DIExpression()), !dbg !1306
  %16 = fadd double %14, 1.000000e+00, !dbg !1319
  tail call void @llvm.dbg.value(metadata double %16, metadata !1288, metadata !DIExpression()), !dbg !1306
  %17 = call double @llvm.fabs.f64(double %15), !dbg !1320
  tail call void @llvm.dbg.value(metadata double %17, metadata !1289, metadata !DIExpression()), !dbg !1306
  %18 = call double @llvm.fabs.f64(double %16), !dbg !1321
  tail call void @llvm.dbg.value(metadata double %18, metadata !1290, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1291, metadata !DIExpression()), !dbg !1306
  %19 = fmul double %17, 0x3CC0000000000000, !dbg !1322
  tail call void @llvm.dbg.value(metadata double %19, metadata !1292, metadata !DIExpression()), !dbg !1306
  %20 = fmul double %18, 0x3CC0000000000000, !dbg !1323
  tail call void @llvm.dbg.value(metadata double %20, metadata !1293, metadata !DIExpression()), !dbg !1306
  %21 = fmul double %1, 2.000000e+00, !dbg !1324
  %22 = call double @log(double noundef %21) #9, !dbg !1325
  tail call void @llvm.dbg.value(metadata double %22, metadata !1294, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1281, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %1, metadata !1282, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1284, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %14, metadata !1285, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %15, metadata !1287, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %16, metadata !1288, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %17, metadata !1289, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %20, metadata !1293, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %19, metadata !1292, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1291, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %18, metadata !1290, metadata !DIExpression()), !dbg !1306
  br label %23, !dbg !1326

23:                                               ; preds = %4, %75
  %24 = phi double [ 0.000000e+00, %4 ], [ %25, %75 ]
  %25 = phi double [ %1, %4 ], [ %41, %75 ]
  %26 = phi double [ 1.000000e+00, %4 ], [ %27, %75 ]
  %27 = phi double [ %14, %4 ], [ %51, %75 ]
  %28 = phi double [ %15, %4 ], [ %52, %75 ]
  %29 = phi double [ %16, %4 ], [ %53, %75 ]
  %30 = phi double [ %17, %4 ], [ %54, %75 ]
  %31 = phi double [ %20, %4 ], [ %59, %75 ]
  %32 = phi double [ %19, %4 ], [ %57, %75 ]
  %33 = phi i32 [ 2, %4 ], [ %76, %75 ]
  %34 = phi double [ %18, %4 ], [ %55, %75 ]
  tail call void @llvm.dbg.value(metadata double %24, metadata !1281, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %25, metadata !1282, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %26, metadata !1284, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %27, metadata !1285, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %28, metadata !1287, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %29, metadata !1288, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %30, metadata !1289, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %31, metadata !1293, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %32, metadata !1292, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !1291, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %34, metadata !1290, metadata !DIExpression()), !dbg !1306
  %35 = sitofp i32 %33 to double, !dbg !1327
  %36 = fadd double %35, -1.000000e+00, !dbg !1328
  %37 = fmul double %36, %35, !dbg !1329
  tail call void @llvm.dbg.value(metadata double %37, metadata !1298, metadata !DIExpression()), !dbg !1330
  %38 = fmul double %9, %25, !dbg !1331
  %39 = fmul double %7, %24, !dbg !1332
  %40 = fsub double %38, %39, !dbg !1333
  %41 = fdiv double %40, %37, !dbg !1334
  tail call void @llvm.dbg.value(metadata double %41, metadata !1283, metadata !DIExpression()), !dbg !1306
  %42 = fmul double %9, %27, !dbg !1335
  %43 = fmul double %7, %26, !dbg !1336
  %44 = fsub double %42, %43, !dbg !1337
  %45 = shl nuw nsw i32 %33, 1, !dbg !1338
  %46 = add nsw i32 %45, -1, !dbg !1339
  %47 = sitofp i32 %46 to double, !dbg !1340
  %48 = fmul double %8, %47, !dbg !1341
  %49 = fmul double %48, %41, !dbg !1342
  %50 = fsub double %44, %49, !dbg !1343
  %51 = fdiv double %50, %37, !dbg !1344
  tail call void @llvm.dbg.value(metadata double %51, metadata !1286, metadata !DIExpression()), !dbg !1306
  %52 = fadd double %28, %41, !dbg !1345
  tail call void @llvm.dbg.value(metadata double %52, metadata !1287, metadata !DIExpression()), !dbg !1306
  %53 = fadd double %29, %51, !dbg !1346
  tail call void @llvm.dbg.value(metadata double %53, metadata !1288, metadata !DIExpression()), !dbg !1306
  %54 = call double @llvm.fabs.f64(double %41), !dbg !1347
  tail call void @llvm.dbg.value(metadata double %54, metadata !1295, metadata !DIExpression()), !dbg !1330
  %55 = call double @llvm.fabs.f64(double %51), !dbg !1348
  tail call void @llvm.dbg.value(metadata double %55, metadata !1297, metadata !DIExpression()), !dbg !1330
  %56 = fmul double %54, 0x3CC0000000000000, !dbg !1349
  %57 = fadd double %32, %56, !dbg !1350
  tail call void @llvm.dbg.value(metadata double %57, metadata !1292, metadata !DIExpression()), !dbg !1306
  %58 = fmul double %55, 0x3CC0000000000000, !dbg !1351
  %59 = fadd double %31, %58, !dbg !1352
  tail call void @llvm.dbg.value(metadata double %59, metadata !1293, metadata !DIExpression()), !dbg !1306
  %60 = icmp ugt i32 %33, 15, !dbg !1353
  br i1 %60, label %61, label %75, !dbg !1354

61:                                               ; preds = %23
  %62 = fcmp ogt double %54, %30, !dbg !1355
  %63 = select i1 %62, double %54, double %30, !dbg !1355
  tail call void @llvm.dbg.value(metadata double %63, metadata !1299, metadata !DIExpression()), !dbg !1356
  tail call void @llvm.dbg.value(metadata double poison, metadata !1302, metadata !DIExpression()), !dbg !1356
  %64 = call double @llvm.fabs.f64(double %52), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %64, metadata !1303, metadata !DIExpression()), !dbg !1356
  tail call void @llvm.dbg.value(metadata double poison, metadata !1304, metadata !DIExpression()), !dbg !1356
  %65 = fadd double %64, %63, !dbg !1358
  %66 = fdiv double %63, %65, !dbg !1360
  %67 = fcmp olt double %66, 0x3D04000000000000, !dbg !1361
  br i1 %67, label %68, label %75, !dbg !1362

68:                                               ; preds = %61
  %69 = call double @llvm.fabs.f64(double %53), !dbg !1363
  tail call void @llvm.dbg.value(metadata double %69, metadata !1304, metadata !DIExpression()), !dbg !1356
  %70 = fcmp ogt double %55, %34, !dbg !1364
  %71 = select i1 %70, double %55, double %34, !dbg !1364
  tail call void @llvm.dbg.value(metadata double %71, metadata !1302, metadata !DIExpression()), !dbg !1356
  %72 = fadd double %69, %71, !dbg !1365
  %73 = fdiv double %71, %72, !dbg !1366
  %74 = fcmp olt double %73, 0x3D04000000000000, !dbg !1367
  br i1 %74, label %81, label %75, !dbg !1368

75:                                               ; preds = %68, %61, %23
  tail call void @llvm.dbg.value(metadata double %54, metadata !1289, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %55, metadata !1290, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %25, metadata !1281, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %41, metadata !1282, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %27, metadata !1284, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %51, metadata !1285, metadata !DIExpression()), !dbg !1306
  %76 = add nuw nsw i32 %33, 1, !dbg !1369
  tail call void @llvm.dbg.value(metadata double %52, metadata !1287, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %53, metadata !1288, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %59, metadata !1293, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %57, metadata !1292, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1291, metadata !DIExpression()), !dbg !1306
  %77 = icmp eq i32 %76, 800, !dbg !1370
  br i1 %77, label %78, label %23, !dbg !1326

78:                                               ; preds = %75
  %79 = call double @llvm.fabs.f64(double %52), !dbg !1371
  %80 = call double @llvm.fabs.f64(double %53), !dbg !1372
  br label %83, !dbg !1326

81:                                               ; preds = %68
  %82 = icmp eq i32 %33, 800, !dbg !1373
  br label %83, !dbg !1375

83:                                               ; preds = %81, %78
  %84 = phi double [ %69, %81 ], [ %80, %78 ], !dbg !1372
  %85 = phi double [ %64, %81 ], [ %79, %78 ], !dbg !1371
  %86 = phi i1 [ %82, %81 ], [ true, %78 ], !dbg !1306
  tail call void @llvm.dbg.value(metadata double %52, metadata !1287, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %53, metadata !1288, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %59, metadata !1293, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata double %57, metadata !1292, metadata !DIExpression()), !dbg !1306
  tail call void @llvm.dbg.value(metadata i1 %86, metadata !1291, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1306
  %87 = load double, ptr %5, align 8, !dbg !1375, !tbaa !98
  %88 = fmul double %52, %87, !dbg !1376
  store double %88, ptr %2, align 8, !dbg !1377, !tbaa !98
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !1378
  %90 = load double, ptr %89, align 8, !dbg !1378, !tbaa !103
  %91 = fmul double %85, %90, !dbg !1379
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !1380
  %93 = call double @llvm.fabs.f64(double %87), !dbg !1381
  %94 = fmul double %57, %93, !dbg !1382
  %95 = fadd double %94, %91, !dbg !1383
  %96 = call double @llvm.fabs.f64(double %88), !dbg !1384
  %97 = fmul double %96, 0x3CC0000000000000, !dbg !1385
  %98 = fadd double %97, %95, !dbg !1386
  store double %98, ptr %92, align 8, !dbg !1386, !tbaa !103
  %99 = fmul double %8, %52, !dbg !1387
  %100 = fmul double %22, %99, !dbg !1388
  %101 = fadd double %53, %100, !dbg !1389
  %102 = fdiv double %101, %87, !dbg !1390
  store double %102, ptr %3, align 8, !dbg !1391, !tbaa !98
  %103 = call double @llvm.fabs.f64(double %100), !dbg !1392
  %104 = fadd double %84, %103, !dbg !1393
  %105 = fdiv double %104, %93, !dbg !1394
  %106 = fdiv double %90, %87, !dbg !1395
  %107 = call double @llvm.fabs.f64(double %106), !dbg !1396
  %108 = fmul double %105, %107, !dbg !1397
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1398
  %110 = fmul double %8, %57, !dbg !1399
  %111 = fmul double %22, %110, !dbg !1400
  %112 = call double @llvm.fabs.f64(double %111), !dbg !1401
  %113 = fadd double %59, %112, !dbg !1402
  %114 = fdiv double %113, %93, !dbg !1403
  %115 = fadd double %114, %108, !dbg !1404
  %116 = call double @llvm.fabs.f64(double %102), !dbg !1405
  %117 = fmul double %116, 0x3CC0000000000000, !dbg !1406
  %118 = fadd double %117, %115, !dbg !1407
  store double %118, ptr %109, align 8, !dbg !1407, !tbaa !103
  br i1 %86, label %119, label %120, !dbg !1408

119:                                              ; preds = %83
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 11) #9, !dbg !1409
  br label %123, !dbg !1409

120:                                              ; preds = %83
  %121 = icmp eq i32 %11, 0, !dbg !1411
  %122 = select i1 %121, i32 %10, i32 %11, !dbg !1411
  br label %123, !dbg !1412

123:                                              ; preds = %120, %119
  %124 = phi i32 [ 11, %119 ], [ %122, %120 ], !dbg !1413
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !1414
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9, !dbg !1414
  ret i32 %124, !dbg !1414
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @coulomb_FG_series(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !dbg !1415 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1456
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1425, metadata !DIExpression(), metadata !1456, metadata ptr %6, metadata !DIExpression()), !dbg !1457
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1458
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1426, metadata !DIExpression(), metadata !1458, metadata ptr %7, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %0, metadata !1419, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %1, metadata !1420, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %2, metadata !1421, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1422, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1423, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 800, metadata !1424, metadata !DIExpression()), !dbg !1457
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9, !dbg !1459
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !1460
  %8 = call fastcc i32 @CLeta(double noundef %0, double noundef %1, ptr noundef nonnull %6), !dbg !1461
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1427, metadata !DIExpression()), !dbg !1457
  %9 = fsub double -1.000000e+00, %0, !dbg !1462
  %10 = call fastcc i32 @CLeta(double noundef %9, double noundef %1, ptr noundef nonnull %7), !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1428, metadata !DIExpression()), !dbg !1457
  %11 = fmul double %0, 2.000000e+00, !dbg !1464
  %12 = fadd double %11, 1.000000e+00, !dbg !1465
  tail call void @llvm.dbg.value(metadata double %12, metadata !1429, metadata !DIExpression()), !dbg !1457
  %13 = call double @pow(double noundef %2, double noundef %0) #9, !dbg !1466
  tail call void @llvm.dbg.value(metadata double %13, metadata !1430, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1433, metadata !DIExpression()), !dbg !1457
  %14 = fmul double %1, %2, !dbg !1467
  %15 = fadd double %0, 1.000000e+00, !dbg !1468
  %16 = fdiv double %14, %15, !dbg !1469
  tail call void @llvm.dbg.value(metadata double %16, metadata !1434, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1436, metadata !DIExpression()), !dbg !1457
  %17 = fneg double %2, !dbg !1470
  %18 = fmul double %17, %1, !dbg !1471
  %19 = fdiv double %18, %0, !dbg !1472
  tail call void @llvm.dbg.value(metadata double %19, metadata !1437, metadata !DIExpression()), !dbg !1457
  %20 = fadd double %16, 1.000000e+00, !dbg !1473
  tail call void @llvm.dbg.value(metadata double %20, metadata !1439, metadata !DIExpression()), !dbg !1457
  %21 = fadd double %19, 1.000000e+00, !dbg !1474
  tail call void @llvm.dbg.value(metadata double %21, metadata !1440, metadata !DIExpression()), !dbg !1457
  %22 = call double @llvm.fabs.f64(double %20), !dbg !1475
  tail call void @llvm.dbg.value(metadata double %22, metadata !1441, metadata !DIExpression()), !dbg !1457
  %23 = call double @llvm.fabs.f64(double %21), !dbg !1476
  tail call void @llvm.dbg.value(metadata double %23, metadata !1442, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1445, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata double %0, metadata !1477, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata double %1, metadata !1482, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata ptr undef, metadata !1483, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata ptr undef, metadata !1484, metadata !DIExpression()), !dbg !1494
  %24 = fcmp ogt double %1, 0x40915EFC686FD866, !dbg !1496
  br i1 %24, label %58, label %25, !dbg !1497

25:                                               ; preds = %5
  %26 = fcmp ogt double %1, 0x4006F233C496DA5E, !dbg !1498
  br i1 %26, label %27, label %41, !dbg !1499

27:                                               ; preds = %25
  %28 = fmul double %1, 0xC01921FB54442D18, !dbg !1500
  %29 = call double @exp(double noundef %28) #9, !dbg !1501
  %30 = fmul double %29, 2.000000e+00, !dbg !1502
  call void @llvm.dbg.value(metadata double %30, metadata !1485, metadata !DIExpression()), !dbg !1503
  %31 = fmul double %0, 0x400921FB54442D18, !dbg !1504
  %32 = call double @tan(double noundef %31) #9, !dbg !1505
  call void @llvm.dbg.value(metadata double %32, metadata !1489, metadata !DIExpression()), !dbg !1503
  %33 = fmul double %30, %32, !dbg !1506
  %34 = fmul double %32, %32, !dbg !1507
  %35 = fadd double %34, 1.000000e+00, !dbg !1508
  %36 = fdiv double %33, %35, !dbg !1509
  call void @llvm.dbg.value(metadata double %36, metadata !1490, metadata !DIExpression()), !dbg !1503
  %37 = fmul double %36, 5.000000e-01, !dbg !1510
  %38 = fmul double %36, %37, !dbg !1511
  %39 = fadd double %38, -1.000000e+00, !dbg !1512
  tail call void @llvm.dbg.value(metadata double %39, metadata !1431, metadata !DIExpression()), !dbg !1457
  %40 = fneg double %36, !dbg !1513
  tail call void @llvm.dbg.value(metadata double %40, metadata !1432, metadata !DIExpression()), !dbg !1457
  br label %54

41:                                               ; preds = %25
  %42 = fmul double %1, 0x400921FB54442D18, !dbg !1514
  %43 = call double @tanh(double noundef %42) #9, !dbg !1515
  %44 = fmul double %0, 0x400921FB54442D18, !dbg !1516
  %45 = call double @tan(double noundef %44) #9, !dbg !1517
  %46 = fdiv double %43, %45, !dbg !1518
  call void @llvm.dbg.value(metadata double %46, metadata !1491, metadata !DIExpression()), !dbg !1519
  %47 = call double @atan(double noundef %46) #9, !dbg !1520
  %48 = fneg double %47, !dbg !1521
  %49 = fadd double %0, 5.000000e-01, !dbg !1522
  %50 = fmul double %49, 0x400921FB54442D18, !dbg !1523
  %51 = fsub double %48, %50, !dbg !1524
  call void @llvm.dbg.value(metadata double %51, metadata !1493, metadata !DIExpression()), !dbg !1519
  %52 = call double @cos(double noundef %51) #9, !dbg !1525
  tail call void @llvm.dbg.value(metadata double %52, metadata !1431, metadata !DIExpression()), !dbg !1457
  %53 = call double @sin(double noundef %51) #9, !dbg !1526
  tail call void @llvm.dbg.value(metadata double %53, metadata !1432, metadata !DIExpression()), !dbg !1457
  br label %54

54:                                               ; preds = %27, %41
  %55 = phi double [ %39, %27 ], [ %52, %41 ], !dbg !1527
  %56 = phi double [ %40, %27 ], [ %53, %41 ], !dbg !1527
  tail call void @llvm.dbg.value(metadata double %56, metadata !1432, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %55, metadata !1431, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1446, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1433, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %16, metadata !1434, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1436, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %19, metadata !1437, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %20, metadata !1439, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %21, metadata !1440, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1445, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %22, metadata !1441, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %23, metadata !1442, metadata !DIExpression()), !dbg !1457
  %57 = fmul double %1, 2.000000e+00
  br label %60, !dbg !1528

58:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1431, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1432, metadata !DIExpression()), !dbg !1457
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 242, i32 noundef 15) #9, !dbg !1529
  tail call void @llvm.dbg.value(metadata double poison, metadata !1432, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double poison, metadata !1431, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 15, metadata !1446, metadata !DIExpression()), !dbg !1457
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !dbg !1532
  store double 0x7FF0000000000000, ptr %4, align 8, !dbg !1535, !tbaa !98
  %59 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1535
  store double 0x7FF0000000000000, ptr %59, align 8, !dbg !1535, !tbaa !103
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 308, i32 noundef 16) #9, !dbg !1537
  br label %152, !dbg !1537

60:                                               ; preds = %54, %104
  %61 = phi double [ 1.000000e+00, %54 ], [ %62, %104 ]
  %62 = phi double [ %16, %54 ], [ %77, %104 ]
  %63 = phi double [ 1.000000e+00, %54 ], [ %64, %104 ]
  %64 = phi double [ %19, %54 ], [ %84, %104 ]
  %65 = phi double [ %20, %54 ], [ %85, %104 ]
  %66 = phi double [ %21, %54 ], [ %86, %104 ]
  %67 = phi i32 [ 2, %54 ], [ %105, %104 ]
  %68 = phi double [ %22, %54 ], [ %87, %104 ]
  %69 = phi double [ %23, %54 ], [ %88, %104 ]
  tail call void @llvm.dbg.value(metadata double %61, metadata !1433, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %62, metadata !1434, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %63, metadata !1436, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %64, metadata !1437, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %65, metadata !1439, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %66, metadata !1440, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !1445, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %68, metadata !1441, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %69, metadata !1442, metadata !DIExpression()), !dbg !1457
  %70 = fmul double %57, %62, !dbg !1539
  %71 = fmul double %61, %2, !dbg !1540
  %72 = fsub double %70, %71, !dbg !1541
  %73 = fmul double %72, %2, !dbg !1542
  %74 = sitofp i32 %67 to double, !dbg !1543
  %75 = fadd double %12, %74, !dbg !1544
  %76 = fmul double %75, %74, !dbg !1545
  %77 = fdiv double %73, %76, !dbg !1546
  tail call void @llvm.dbg.value(metadata double %77, metadata !1435, metadata !DIExpression()), !dbg !1457
  %78 = fmul double %57, %64, !dbg !1547
  %79 = fmul double %63, %2, !dbg !1548
  %80 = fsub double %78, %79, !dbg !1549
  %81 = fmul double %80, %2, !dbg !1550
  %82 = fsub double %74, %12, !dbg !1551
  %83 = fmul double %82, %74, !dbg !1552
  %84 = fdiv double %81, %83, !dbg !1553
  tail call void @llvm.dbg.value(metadata double %84, metadata !1438, metadata !DIExpression()), !dbg !1457
  %85 = fadd double %65, %77, !dbg !1554
  tail call void @llvm.dbg.value(metadata double %85, metadata !1439, metadata !DIExpression()), !dbg !1457
  %86 = fadd double %66, %84, !dbg !1555
  tail call void @llvm.dbg.value(metadata double %86, metadata !1440, metadata !DIExpression()), !dbg !1457
  %87 = call double @llvm.fabs.f64(double %77), !dbg !1556
  tail call void @llvm.dbg.value(metadata double %87, metadata !1447, metadata !DIExpression()), !dbg !1557
  %88 = call double @llvm.fabs.f64(double %84), !dbg !1558
  tail call void @llvm.dbg.value(metadata double %88, metadata !1449, metadata !DIExpression()), !dbg !1557
  %89 = icmp ugt i32 %67, 15, !dbg !1559
  br i1 %89, label %90, label %104, !dbg !1560

90:                                               ; preds = %60
  %91 = fcmp ogt double %87, %68, !dbg !1561
  %92 = select i1 %91, double %87, double %68, !dbg !1561
  tail call void @llvm.dbg.value(metadata double %92, metadata !1450, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata double poison, metadata !1453, metadata !DIExpression()), !dbg !1562
  %93 = call double @llvm.fabs.f64(double %85), !dbg !1563
  tail call void @llvm.dbg.value(metadata double %93, metadata !1454, metadata !DIExpression()), !dbg !1562
  tail call void @llvm.dbg.value(metadata double poison, metadata !1455, metadata !DIExpression()), !dbg !1562
  %94 = fadd double %93, %92, !dbg !1564
  %95 = fdiv double %92, %94, !dbg !1566
  %96 = fcmp olt double %95, 0x3CD0000000000000, !dbg !1567
  br i1 %96, label %97, label %104, !dbg !1568

97:                                               ; preds = %90
  %98 = call double @llvm.fabs.f64(double %86), !dbg !1569
  tail call void @llvm.dbg.value(metadata double %98, metadata !1455, metadata !DIExpression()), !dbg !1562
  %99 = fcmp ogt double %88, %69, !dbg !1570
  %100 = select i1 %99, double %88, double %69, !dbg !1570
  tail call void @llvm.dbg.value(metadata double %100, metadata !1453, metadata !DIExpression()), !dbg !1562
  %101 = fadd double %98, %100, !dbg !1571
  %102 = fdiv double %100, %101, !dbg !1572
  %103 = fcmp olt double %102, 0x3CD0000000000000, !dbg !1573
  br i1 %103, label %110, label %104, !dbg !1574

104:                                              ; preds = %97, %90, %60
  tail call void @llvm.dbg.value(metadata double %87, metadata !1441, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %88, metadata !1442, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %62, metadata !1433, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %77, metadata !1434, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %64, metadata !1436, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %84, metadata !1437, metadata !DIExpression()), !dbg !1457
  %105 = add nuw nsw i32 %67, 1, !dbg !1575
  tail call void @llvm.dbg.value(metadata double %85, metadata !1439, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %86, metadata !1440, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !1445, metadata !DIExpression()), !dbg !1457
  %106 = icmp eq i32 %105, 800, !dbg !1576
  br i1 %106, label %107, label %60, !dbg !1528

107:                                              ; preds = %104
  %108 = call double @llvm.fabs.f64(double %85), !dbg !1577
  %109 = call double @llvm.fabs.f64(double %86), !dbg !1578
  br label %112, !dbg !1528

110:                                              ; preds = %97
  %111 = icmp ugt i32 %67, 799, !dbg !1579
  br label %112, !dbg !1581

112:                                              ; preds = %110, %107
  %113 = phi double [ %98, %110 ], [ %109, %107 ], !dbg !1578
  %114 = phi double [ %93, %110 ], [ %108, %107 ], !dbg !1577
  %115 = phi i1 [ %111, %110 ], [ true, %107 ], !dbg !1457
  tail call void @llvm.dbg.value(metadata double %85, metadata !1439, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata double %86, metadata !1440, metadata !DIExpression()), !dbg !1457
  tail call void @llvm.dbg.value(metadata i1 %115, metadata !1445, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !1457
  %116 = load double, ptr %6, align 8, !dbg !1581, !tbaa !98
  %117 = fmul double %85, %116, !dbg !1582
  %118 = fmul double %13, %117, !dbg !1583
  %119 = fmul double %118, %2, !dbg !1584
  tail call void @llvm.dbg.value(metadata double %119, metadata !1443, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1457
  %120 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !1585
  %121 = load double, ptr %120, align 8, !dbg !1585, !tbaa !103
  %122 = fmul double %114, %121, !dbg !1586
  %123 = fmul double %13, %122, !dbg !1587
  %124 = fmul double %123, %2, !dbg !1588
  %125 = call double @llvm.fabs.f64(double %119), !dbg !1589
  %126 = fmul double %125, 0x3CC0000000000000, !dbg !1590
  %127 = fadd double %124, %126, !dbg !1591
  tail call void @llvm.dbg.value(metadata double %127, metadata !1443, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1457
  %128 = load double, ptr %7, align 8, !dbg !1592, !tbaa !98
  %129 = fmul double %86, %128, !dbg !1593
  %130 = fdiv double %129, %13, !dbg !1594
  tail call void @llvm.dbg.value(metadata double %130, metadata !1444, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1457
  %131 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !1595
  %132 = load double, ptr %131, align 8, !dbg !1595, !tbaa !103
  %133 = fmul double %113, %132, !dbg !1596
  %134 = fdiv double %133, %13, !dbg !1597
  %135 = call double @llvm.fabs.f64(double %130), !dbg !1598
  %136 = fmul double %135, 0x3CC0000000000000, !dbg !1599
  %137 = fadd double %134, %136, !dbg !1600
  tail call void @llvm.dbg.value(metadata double %137, metadata !1444, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1457
  store double %119, ptr %3, align 8, !dbg !1601, !tbaa !98
  %138 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1602
  store double %127, ptr %138, align 8, !dbg !1603, !tbaa !103
  %139 = fmul double %55, %119, !dbg !1604
  %140 = fsub double %139, %130, !dbg !1605
  %141 = fdiv double %140, %56, !dbg !1606
  store double %141, ptr %4, align 8, !dbg !1607, !tbaa !98
  %142 = call double @llvm.fabs.f64(double %55), !dbg !1608
  %143 = fmul double %142, %127, !dbg !1609
  %144 = fadd double %143, %137, !dbg !1610
  %145 = call double @llvm.fabs.f64(double %56), !dbg !1611
  %146 = fdiv double %144, %145, !dbg !1612
  %147 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1613
  store double %146, ptr %147, align 8, !dbg !1614, !tbaa !103
  br i1 %115, label %148, label %149, !dbg !1615

148:                                              ; preds = %112
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 356, i32 noundef 11) #9, !dbg !1616
  br label %152, !dbg !1616

149:                                              ; preds = %112
  %150 = icmp eq i32 %8, 0, !dbg !1618
  %151 = select i1 %150, i32 %10, i32 %8, !dbg !1618
  br label %152, !dbg !1619

152:                                              ; preds = %149, %148, %58
  %153 = phi i32 [ 16, %58 ], [ 11, %148 ], [ %151, %149 ], !dbg !1457
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !1620
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9, !dbg !1620
  ret i32 %153, !dbg !1620
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @coulomb_jwkb(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !dbg !1621 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1644, metadata !DIExpression(), metadata !1646, metadata ptr %7, metadata !DIExpression()), !dbg !1647
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1648
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1645, metadata !DIExpression(), metadata !1648, metadata ptr %8, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata double %0, metadata !1625, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata double %1, metadata !1626, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata double %2, metadata !1627, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1628, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1629, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1630, metadata !DIExpression()), !dbg !1647
  %9 = fadd double %0, 1.000000e+00, !dbg !1649
  %10 = fmul double %9, %0, !dbg !1650
  %11 = fadd double %10, 0x3FC5F15F15F15F16, !dbg !1651
  tail call void @llvm.dbg.value(metadata double %11, metadata !1631, metadata !DIExpression()), !dbg !1647
  %12 = fcmp ogt double %11, 0.000000e+00, !dbg !1652
  %13 = select i1 %12, double %11, double 0.000000e+00, !dbg !1652
  tail call void @llvm.dbg.value(metadata double %13, metadata !1632, metadata !DIExpression()), !dbg !1647
  %14 = fmul double %1, 2.000000e+00, !dbg !1653
  %15 = fsub double %14, %2, !dbg !1654
  %16 = fmul double %15, %2, !dbg !1655
  %17 = fadd double %16, %13, !dbg !1656
  %18 = tail call double @sqrt(double noundef %17) #9, !dbg !1657
  tail call void @llvm.dbg.value(metadata double %18, metadata !1633, metadata !DIExpression()), !dbg !1647
  %19 = fmul double %1, %1, !dbg !1658
  %20 = fadd double %19, %13, !dbg !1659
  %21 = fdiv double %13, %20, !dbg !1660
  %22 = tail call double @llvm.sqrt.f64(double %21), !dbg !1661
  %23 = fmul double %22, %18, !dbg !1662
  %24 = fdiv double %23, %2, !dbg !1663
  tail call void @llvm.dbg.value(metadata double %24, metadata !1634, metadata !DIExpression()), !dbg !1647
  %25 = tail call double @hypot(double noundef 1.000000e+00, double noundef %24) #9, !dbg !1664
  %26 = fadd double %25, %24, !dbg !1665
  %27 = tail call double @log(double noundef %26) #9, !dbg !1666
  tail call void @llvm.dbg.value(metadata double %27, metadata !1635, metadata !DIExpression()), !dbg !1647
  %28 = fsub double %2, %1, !dbg !1667
  %29 = tail call double @atan2(double noundef %18, double noundef %28) #9, !dbg !1668
  %30 = fmul double %29, %1, !dbg !1669
  %31 = fsub double %18, %30, !dbg !1670
  %32 = tail call double @llvm.sqrt.f64(double %13), !dbg !1671
  %33 = fmul double %32, %27, !dbg !1672
  %34 = fsub double %31, %33, !dbg !1673
  %35 = tail call double @llvm.fabs.f64(double %34), !dbg !1674
  tail call void @llvm.dbg.value(metadata double %35, metadata !1636, metadata !DIExpression()), !dbg !1647
  %36 = fmul double %35, 3.000000e+00, !dbg !1675
  %37 = fmul double %36, 5.000000e-01, !dbg !1676
  %38 = tail call double @pow(double noundef %37, double noundef 0x3FD5555555555555) #9, !dbg !1677
  tail call void @llvm.dbg.value(metadata double %38, metadata !1637, metadata !DIExpression()), !dbg !1647
  %39 = fmul double %35, 0x400921FB54442D18, !dbg !1678
  %40 = fmul double %39, %2, !dbg !1679
  %41 = fmul double %18, 6.000000e+00, !dbg !1680
  %42 = fdiv double %40, %41, !dbg !1681
  %43 = tail call double @sqrt(double noundef %42) #9, !dbg !1682
  tail call void @llvm.dbg.value(metadata double %43, metadata !1638, metadata !DIExpression()), !dbg !1647
  %44 = fmul double %43, 3.000000e+00, !dbg !1683
  %45 = fdiv double %44, %38, !dbg !1684
  tail call void @llvm.dbg.value(metadata double %45, metadata !1639, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata double %45, metadata !1640, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata double %35, metadata !1643, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !1685
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !1686
  %46 = fmul double %38, %38, !dbg !1687
  %47 = call i32 @gsl_sf_airy_Ai_scaled_e(double noundef %46, i32 noundef 0, ptr noundef nonnull %7) #9, !dbg !1688
  %48 = call i32 @gsl_sf_airy_Bi_scaled_e(double noundef %46, i32 noundef 0, ptr noundef nonnull %8) #9, !dbg !1689
  %49 = load double, ptr %7, align 8, !dbg !1690, !tbaa !98
  %50 = fmul double %45, %49, !dbg !1691
  tail call void @llvm.dbg.value(metadata double %50, metadata !1639, metadata !DIExpression()), !dbg !1647
  %51 = load double, ptr %8, align 8, !dbg !1692, !tbaa !98
  %52 = fmul double %45, %51, !dbg !1693
  tail call void @llvm.dbg.value(metadata double %52, metadata !1640, metadata !DIExpression()), !dbg !1647
  %53 = call double @log(double noundef %50) #9, !dbg !1694
  tail call void @llvm.dbg.value(metadata double poison, metadata !1641, metadata !DIExpression()), !dbg !1647
  %54 = call double @log(double noundef %52) #9, !dbg !1695
  %55 = fadd double %35, %54, !dbg !1696
  tail call void @llvm.dbg.value(metadata double %55, metadata !1642, metadata !DIExpression()), !dbg !1647
  %56 = fcmp ult double %55, 0x40862E42FEFA39EF, !dbg !1697
  br i1 %56, label %64, label %57, !dbg !1699

57:                                               ; preds = %6
  store double %50, ptr %3, align 8, !dbg !1700, !tbaa !98
  store double %52, ptr %4, align 8, !dbg !1702, !tbaa !98
  %58 = call double @llvm.fabs.f64(double %50), !dbg !1703
  %59 = fmul double %58, 1.000000e-03, !dbg !1704
  %60 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1705
  store double %59, ptr %60, align 8, !dbg !1706, !tbaa !103
  %61 = call double @llvm.fabs.f64(double %52), !dbg !1707
  %62 = fmul double %61, 1.000000e-03, !dbg !1708
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1709
  store double %62, ptr %63, align 8, !dbg !1710, !tbaa !103
  store double %35, ptr %5, align 8, !dbg !1711, !tbaa !263
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 858, i32 noundef 16) #9, !dbg !1712
  br label %75, !dbg !1712

64:                                               ; preds = %6
  %65 = fsub double %53, %35, !dbg !1714
  tail call void @llvm.dbg.value(metadata double %65, metadata !1641, metadata !DIExpression()), !dbg !1647
  %66 = call double @exp(double noundef %65) #9, !dbg !1715
  store double %66, ptr %3, align 8, !dbg !1717, !tbaa !98
  %67 = call double @exp(double noundef %55) #9, !dbg !1718
  store double %67, ptr %4, align 8, !dbg !1719, !tbaa !98
  %68 = load double, ptr %3, align 8, !dbg !1720, !tbaa !98
  %69 = call double @llvm.fabs.f64(double %68), !dbg !1721
  %70 = fmul double %69, 1.000000e-03, !dbg !1722
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !1723
  store double %70, ptr %71, align 8, !dbg !1724, !tbaa !103
  %72 = call double @llvm.fabs.f64(double %67), !dbg !1725
  %73 = fmul double %72, 1.000000e-03, !dbg !1726
  %74 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !1727
  store double %73, ptr %74, align 8, !dbg !1728, !tbaa !103
  store double 0.000000e+00, ptr %5, align 8, !dbg !1729, !tbaa !263
  br label %75, !dbg !1730

75:                                               ; preds = %64, %57
  %76 = phi i32 [ 16, %57 ], [ 0, %64 ], !dbg !1731
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !1732
  ret i32 %76, !dbg !1732
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_F_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !1733 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1769
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1746, metadata !DIExpression(), metadata !1769, metadata ptr %7, metadata !DIExpression()), !dbg !1770
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1771
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1752, metadata !DIExpression(), metadata !1771, metadata ptr %8, metadata !DIExpression()), !dbg !1772
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1773
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1753, metadata !DIExpression(), metadata !1773, metadata ptr %9, metadata !DIExpression()), !dbg !1772
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1774
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1754, metadata !DIExpression(), metadata !1774, metadata ptr %10, metadata !DIExpression()), !dbg !1772
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1775
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1755, metadata !DIExpression(), metadata !1775, metadata ptr %11, metadata !DIExpression()), !dbg !1772
  %12 = alloca double, align 8, !DIAssignID !1776
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1756, metadata !DIExpression(), metadata !1776, metadata ptr %12, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata double %0, metadata !1737, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1738, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata double %2, metadata !1739, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata double %3, metadata !1740, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1741, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1742, metadata !DIExpression()), !dbg !1777
  %13 = fcmp oeq double %3, 0.000000e+00, !dbg !1778
  br i1 %13, label %14, label %25, !dbg !1779

14:                                               ; preds = %6
  store double 0.000000e+00, ptr %5, align 8, !dbg !1780, !tbaa !263
  tail call void @llvm.dbg.value(metadata i32 0, metadata !1743, metadata !DIExpression()), !dbg !1781
  %15 = icmp slt i32 %1, 0, !dbg !1782
  br i1 %15, label %20, label %16, !dbg !1785

16:                                               ; preds = %14
  %17 = add nuw i32 %1, 1, !dbg !1785
  %18 = zext i32 %17 to i64, !dbg !1785
  %19 = shl nuw nsw i64 %18, 3, !dbg !1785
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %19, i1 false), !dbg !1786, !tbaa !263
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1743, metadata !DIExpression()), !dbg !1781
  br label %20, !dbg !1788

20:                                               ; preds = %16, %14
  %21 = fcmp oeq double %0, 0.000000e+00, !dbg !1788
  br i1 %21, label %22, label %57, !dbg !1789

22:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !1790
  %23 = call fastcc i32 @CLeta(double noundef 0.000000e+00, double noundef %2, ptr noundef nonnull %7), !dbg !1791
  %24 = load double, ptr %7, align 8, !dbg !1792, !tbaa !98
  store double %24, ptr %4, align 8, !dbg !1793, !tbaa !263
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !1794
  br label %57, !dbg !1795

25:                                               ; preds = %6
  %26 = fdiv double 1.000000e+00, %3, !dbg !1796
  tail call void @llvm.dbg.value(metadata double %26, metadata !1749, metadata !DIExpression()), !dbg !1772
  %27 = sitofp i32 %1 to double, !dbg !1797
  %28 = fadd double %27, %0, !dbg !1798
  tail call void @llvm.dbg.value(metadata double %28, metadata !1751, metadata !DIExpression()), !dbg !1772
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #9, !dbg !1799
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9, !dbg !1799
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9, !dbg !1800
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !1800
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #9, !dbg !1801
  %29 = call i32 @gsl_sf_coulomb_wave_FG_e(double noundef %2, double noundef %3, double noundef %28, i32 noundef 0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %5, ptr noundef nonnull %12), !dbg !1802
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1757, metadata !DIExpression()), !dbg !1772
  %30 = load double, ptr %8, align 8, !dbg !1803, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %30, metadata !1758, metadata !DIExpression()), !dbg !1772
  %31 = load double, ptr %9, align 8, !dbg !1804, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %31, metadata !1759, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata double %28, metadata !1760, metadata !DIExpression()), !dbg !1772
  %32 = sext i32 %1 to i64, !dbg !1805
  %33 = getelementptr inbounds double, ptr %4, i64 %32, !dbg !1805
  store double %30, ptr %33, align 8, !dbg !1806, !tbaa !263
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1761, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1772
  tail call void @llvm.dbg.value(metadata double %30, metadata !1758, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata double %31, metadata !1759, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata double %28, metadata !1760, metadata !DIExpression()), !dbg !1772
  %34 = icmp sgt i32 %1, 0, !dbg !1807
  br i1 %34, label %35, label %56, !dbg !1808

35:                                               ; preds = %25
  %36 = zext nneg i32 %1 to i64, !dbg !1808
  br label %37, !dbg !1808

37:                                               ; preds = %35, %37
  %38 = phi i64 [ %36, %35 ], [ %42, %37 ]
  %39 = phi double [ %30, %35 ], [ %49, %37 ]
  %40 = phi double [ %31, %35 ], [ %53, %37 ]
  %41 = phi double [ %28, %35 ], [ %54, %37 ]
  tail call void @llvm.dbg.value(metadata double %39, metadata !1758, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata double %40, metadata !1759, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !1761, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1772
  tail call void @llvm.dbg.value(metadata double %41, metadata !1760, metadata !DIExpression()), !dbg !1772
  %42 = add nsw i64 %38, -1, !dbg !1809
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !1761, metadata !DIExpression()), !dbg !1772
  %43 = fdiv double %2, %41, !dbg !1810
  tail call void @llvm.dbg.value(metadata double %43, metadata !1762, metadata !DIExpression()), !dbg !1811
  %44 = tail call double @hypot(double noundef 1.000000e+00, double noundef %43) #9, !dbg !1812
  tail call void @llvm.dbg.value(metadata double %44, metadata !1766, metadata !DIExpression()), !dbg !1811
  %45 = fmul double %26, %41, !dbg !1813
  %46 = fadd double %43, %45, !dbg !1814
  tail call void @llvm.dbg.value(metadata double %46, metadata !1767, metadata !DIExpression()), !dbg !1811
  %47 = fmul double %46, %39, !dbg !1815
  %48 = fadd double %40, %47, !dbg !1816
  %49 = fdiv double %48, %44, !dbg !1817
  tail call void @llvm.dbg.value(metadata double %49, metadata !1768, metadata !DIExpression()), !dbg !1811
  %50 = getelementptr inbounds double, ptr %4, i64 %42, !dbg !1818
  store double %49, ptr %50, align 8, !dbg !1819, !tbaa !263
  %51 = fmul double %46, %49, !dbg !1820
  %52 = fmul double %39, %44, !dbg !1821
  %53 = fsub double %51, %52, !dbg !1822
  tail call void @llvm.dbg.value(metadata double %53, metadata !1759, metadata !DIExpression()), !dbg !1772
  tail call void @llvm.dbg.value(metadata double %49, metadata !1758, metadata !DIExpression()), !dbg !1772
  %54 = fadd double %41, -1.000000e+00, !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !1761, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1772
  tail call void @llvm.dbg.value(metadata double %54, metadata !1760, metadata !DIExpression()), !dbg !1772
  %55 = icmp ugt i64 %38, 1, !dbg !1807
  br i1 %55, label %37, label %56, !dbg !1808, !llvm.loop !1824

56:                                               ; preds = %37, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #9, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9, !dbg !1826
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #9, !dbg !1826
  br label %57

57:                                               ; preds = %20, %22, %56
  %58 = phi i32 [ %29, %56 ], [ 0, %22 ], [ 0, %20 ], !dbg !1827
  ret i32 %58, !dbg !1828
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_FG_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 !dbg !1829 {
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1868
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1843, metadata !DIExpression(), metadata !1868, metadata ptr %9, metadata !DIExpression()), !dbg !1869
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1870
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1844, metadata !DIExpression(), metadata !1870, metadata ptr %10, metadata !DIExpression()), !dbg !1869
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1871
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1845, metadata !DIExpression(), metadata !1871, metadata ptr %11, metadata !DIExpression()), !dbg !1869
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1872
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1846, metadata !DIExpression(), metadata !1872, metadata ptr %12, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %0, metadata !1833, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1834, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %2, metadata !1835, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %3, metadata !1836, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1837, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1838, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1839, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1840, metadata !DIExpression()), !dbg !1869
  %13 = fdiv double 1.000000e+00, %3, !dbg !1873
  tail call void @llvm.dbg.value(metadata double %13, metadata !1841, metadata !DIExpression()), !dbg !1869
  %14 = sitofp i32 %1 to double, !dbg !1874
  %15 = fadd double %14, %0, !dbg !1875
  tail call void @llvm.dbg.value(metadata double %15, metadata !1842, metadata !DIExpression()), !dbg !1869
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9, !dbg !1876
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9, !dbg !1876
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !1877
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9, !dbg !1877
  %16 = call i32 @gsl_sf_coulomb_wave_FG_e(double noundef %2, double noundef %3, double noundef %15, i32 noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef %6, ptr noundef %7), !dbg !1878
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1847, metadata !DIExpression()), !dbg !1869
  %17 = load double, ptr %9, align 8, !dbg !1879, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %17, metadata !1848, metadata !DIExpression()), !dbg !1869
  %18 = load double, ptr %10, align 8, !dbg !1880, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %18, metadata !1849, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %15, metadata !1850, metadata !DIExpression()), !dbg !1869
  %19 = sext i32 %1 to i64, !dbg !1881
  %20 = getelementptr inbounds double, ptr %4, i64 %19, !dbg !1881
  store double %17, ptr %20, align 8, !dbg !1882, !tbaa !263
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1851, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %17, metadata !1848, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %18, metadata !1849, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %15, metadata !1850, metadata !DIExpression()), !dbg !1869
  %21 = icmp sgt i32 %1, 0, !dbg !1883
  br i1 %21, label %24, label %22, !dbg !1884

22:                                               ; preds = %8
  %23 = load double, ptr %11, align 8, !dbg !1885, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %23, metadata !1852, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double poison, metadata !1853, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double poison, metadata !1850, metadata !DIExpression()), !dbg !1869
  store double %23, ptr %5, align 8, !dbg !1886, !tbaa !263
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1851, metadata !DIExpression()), !dbg !1869
  br label %69, !dbg !1887

24:                                               ; preds = %8
  %25 = zext nneg i32 %1 to i64, !dbg !1884
  br label %26, !dbg !1884

26:                                               ; preds = %24, %26
  %27 = phi i64 [ %25, %24 ], [ %31, %26 ]
  %28 = phi double [ %17, %24 ], [ %38, %26 ]
  %29 = phi double [ %18, %24 ], [ %42, %26 ]
  %30 = phi double [ %15, %24 ], [ %43, %26 ]
  tail call void @llvm.dbg.value(metadata double %28, metadata !1848, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %29, metadata !1849, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %30, metadata !1850, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1851, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1869
  %31 = add nsw i64 %27, -1, !dbg !1888
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1851, metadata !DIExpression()), !dbg !1869
  %32 = fdiv double %2, %30, !dbg !1889
  tail call void @llvm.dbg.value(metadata double %32, metadata !1854, metadata !DIExpression()), !dbg !1890
  %33 = tail call double @hypot(double noundef 1.000000e+00, double noundef %32) #9, !dbg !1891
  tail call void @llvm.dbg.value(metadata double %33, metadata !1858, metadata !DIExpression()), !dbg !1890
  %34 = fmul double %13, %30, !dbg !1892
  %35 = fadd double %32, %34, !dbg !1893
  tail call void @llvm.dbg.value(metadata double %35, metadata !1859, metadata !DIExpression()), !dbg !1890
  %36 = fmul double %28, %35, !dbg !1894
  %37 = fadd double %29, %36, !dbg !1895
  %38 = fdiv double %37, %33, !dbg !1896
  tail call void @llvm.dbg.value(metadata double %38, metadata !1860, metadata !DIExpression()), !dbg !1890
  %39 = getelementptr inbounds double, ptr %4, i64 %31, !dbg !1897
  store double %38, ptr %39, align 8, !dbg !1898, !tbaa !263
  %40 = fmul double %35, %38, !dbg !1899
  %41 = fmul double %28, %33, !dbg !1900
  %42 = fsub double %40, %41, !dbg !1901
  tail call void @llvm.dbg.value(metadata double %42, metadata !1849, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %38, metadata !1848, metadata !DIExpression()), !dbg !1869
  %43 = fadd double %30, -1.000000e+00, !dbg !1902
  tail call void @llvm.dbg.value(metadata double %43, metadata !1850, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1851, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1869
  %44 = icmp ugt i64 %27, 1, !dbg !1883
  br i1 %44, label %26, label %45, !dbg !1884, !llvm.loop !1903

45:                                               ; preds = %26
  %46 = load double, ptr %11, align 8, !dbg !1885, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %46, metadata !1852, metadata !DIExpression()), !dbg !1869
  %47 = load double, ptr %12, align 8, !dbg !1905, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %47, metadata !1853, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double poison, metadata !1850, metadata !DIExpression()), !dbg !1869
  store double %46, ptr %5, align 8, !dbg !1886, !tbaa !263
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1851, metadata !DIExpression()), !dbg !1869
  %48 = add nuw i32 %1, 1, !dbg !1887
  %49 = zext i32 %48 to i64, !dbg !1906
  br label %50, !dbg !1887

50:                                               ; preds = %45, %50
  %51 = phi i64 [ 1, %45 ], [ %67, %50 ]
  %52 = phi double [ %0, %45 ], [ %55, %50 ]
  %53 = phi double [ %46, %45 ], [ %62, %50 ]
  %54 = phi double [ %47, %45 ], [ %66, %50 ]
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1851, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %53, metadata !1852, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %54, metadata !1853, metadata !DIExpression()), !dbg !1869
  %55 = fadd double %52, 1.000000e+00, !dbg !1869
  tail call void @llvm.dbg.value(metadata double %55, metadata !1850, metadata !DIExpression()), !dbg !1869
  %56 = fdiv double %2, %55, !dbg !1907
  tail call void @llvm.dbg.value(metadata double %56, metadata !1861, metadata !DIExpression()), !dbg !1908
  %57 = tail call double @hypot(double noundef 1.000000e+00, double noundef %56) #9, !dbg !1909
  tail call void @llvm.dbg.value(metadata double %57, metadata !1865, metadata !DIExpression()), !dbg !1908
  %58 = fmul double %13, %55, !dbg !1910
  %59 = fadd double %56, %58, !dbg !1911
  tail call void @llvm.dbg.value(metadata double %59, metadata !1866, metadata !DIExpression()), !dbg !1908
  %60 = fmul double %53, %59, !dbg !1912
  %61 = fsub double %60, %54, !dbg !1913
  %62 = fdiv double %61, %57, !dbg !1914
  tail call void @llvm.dbg.value(metadata double %62, metadata !1867, metadata !DIExpression()), !dbg !1908
  %63 = getelementptr inbounds double, ptr %5, i64 %51, !dbg !1915
  store double %62, ptr %63, align 8, !dbg !1916, !tbaa !263
  %64 = fmul double %53, %57, !dbg !1917
  %65 = fmul double %59, %62, !dbg !1918
  %66 = fsub double %64, %65, !dbg !1919
  tail call void @llvm.dbg.value(metadata double %66, metadata !1853, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double %62, metadata !1852, metadata !DIExpression()), !dbg !1869
  tail call void @llvm.dbg.value(metadata double poison, metadata !1850, metadata !DIExpression()), !dbg !1869
  %67 = add nuw nsw i64 %51, 1, !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !1851, metadata !DIExpression()), !dbg !1869
  %68 = icmp eq i64 %67, %49, !dbg !1906
  br i1 %68, label %69, label %50, !dbg !1887, !llvm.loop !1921

69:                                               ; preds = %50, %22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9, !dbg !1923
  ret i32 %16, !dbg !1924
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_FGp_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9) local_unnamed_addr #0 !dbg !1925 {
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1966
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1941, metadata !DIExpression(), metadata !1966, metadata ptr %11, metadata !DIExpression()), !dbg !1967
  %12 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1942, metadata !DIExpression(), metadata !1968, metadata ptr %12, metadata !DIExpression()), !dbg !1967
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1969
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1943, metadata !DIExpression(), metadata !1969, metadata ptr %13, metadata !DIExpression()), !dbg !1967
  %14 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !1970
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1944, metadata !DIExpression(), metadata !1970, metadata ptr %14, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %0, metadata !1929, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1930, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %2, metadata !1931, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %3, metadata !1932, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1933, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1934, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1935, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1936, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1937, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1938, metadata !DIExpression()), !dbg !1967
  %15 = fdiv double 1.000000e+00, %3, !dbg !1971
  tail call void @llvm.dbg.value(metadata double %15, metadata !1939, metadata !DIExpression()), !dbg !1967
  %16 = sitofp i32 %1 to double, !dbg !1972
  %17 = fadd double %16, %0, !dbg !1973
  tail call void @llvm.dbg.value(metadata double %17, metadata !1940, metadata !DIExpression()), !dbg !1967
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #9, !dbg !1974
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #9, !dbg !1974
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #9, !dbg !1975
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #9, !dbg !1975
  %18 = call i32 @gsl_sf_coulomb_wave_FG_e(double noundef %2, double noundef %3, double noundef %17, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef %8, ptr noundef %9), !dbg !1976
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1945, metadata !DIExpression()), !dbg !1967
  %19 = load double, ptr %11, align 8, !dbg !1977, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %19, metadata !1946, metadata !DIExpression()), !dbg !1967
  %20 = load double, ptr %12, align 8, !dbg !1978, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %20, metadata !1947, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %17, metadata !1948, metadata !DIExpression()), !dbg !1967
  %21 = sext i32 %1 to i64, !dbg !1979
  %22 = getelementptr inbounds double, ptr %4, i64 %21, !dbg !1979
  store double %19, ptr %22, align 8, !dbg !1980, !tbaa !263
  %23 = getelementptr inbounds double, ptr %5, i64 %21, !dbg !1981
  store double %20, ptr %23, align 8, !dbg !1982, !tbaa !263
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1949, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %19, metadata !1946, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %20, metadata !1947, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %17, metadata !1948, metadata !DIExpression()), !dbg !1967
  %24 = icmp sgt i32 %1, 0, !dbg !1983
  br i1 %24, label %28, label %25, !dbg !1984

25:                                               ; preds = %10
  %26 = load double, ptr %13, align 8, !dbg !1985, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %26, metadata !1950, metadata !DIExpression()), !dbg !1967
  %27 = load double, ptr %14, align 8, !dbg !1986, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %27, metadata !1951, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double poison, metadata !1948, metadata !DIExpression()), !dbg !1967
  store double %26, ptr %6, align 8, !dbg !1987, !tbaa !263
  store double %27, ptr %7, align 8, !dbg !1988, !tbaa !263
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1949, metadata !DIExpression()), !dbg !1967
  br label %75, !dbg !1989

28:                                               ; preds = %10
  %29 = zext nneg i32 %1 to i64, !dbg !1984
  br label %30, !dbg !1984

30:                                               ; preds = %28, %30
  %31 = phi i64 [ %29, %28 ], [ %35, %30 ]
  %32 = phi double [ %19, %28 ], [ %42, %30 ]
  %33 = phi double [ %20, %28 ], [ %46, %30 ]
  %34 = phi double [ %17, %28 ], [ %48, %30 ]
  tail call void @llvm.dbg.value(metadata double %32, metadata !1946, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %33, metadata !1947, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %34, metadata !1948, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1949, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1967
  %35 = add nsw i64 %31, -1, !dbg !1990
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1949, metadata !DIExpression()), !dbg !1967
  %36 = fdiv double %2, %34, !dbg !1991
  tail call void @llvm.dbg.value(metadata double %36, metadata !1952, metadata !DIExpression()), !dbg !1992
  %37 = tail call double @hypot(double noundef 1.000000e+00, double noundef %36) #9, !dbg !1993
  tail call void @llvm.dbg.value(metadata double %37, metadata !1956, metadata !DIExpression()), !dbg !1992
  %38 = fmul double %15, %34, !dbg !1994
  %39 = fadd double %36, %38, !dbg !1995
  tail call void @llvm.dbg.value(metadata double %39, metadata !1957, metadata !DIExpression()), !dbg !1992
  %40 = fmul double %32, %39, !dbg !1996
  %41 = fadd double %33, %40, !dbg !1997
  %42 = fdiv double %41, %37, !dbg !1998
  tail call void @llvm.dbg.value(metadata double %42, metadata !1958, metadata !DIExpression()), !dbg !1992
  %43 = getelementptr inbounds double, ptr %4, i64 %35, !dbg !1999
  store double %42, ptr %43, align 8, !dbg !2000, !tbaa !263
  %44 = fmul double %39, %42, !dbg !2001
  %45 = fmul double %32, %37, !dbg !2002
  %46 = fsub double %44, %45, !dbg !2003
  tail call void @llvm.dbg.value(metadata double %46, metadata !1947, metadata !DIExpression()), !dbg !1967
  %47 = getelementptr inbounds double, ptr %5, i64 %35, !dbg !2004
  store double %46, ptr %47, align 8, !dbg !2005, !tbaa !263
  tail call void @llvm.dbg.value(metadata double %42, metadata !1946, metadata !DIExpression()), !dbg !1967
  %48 = fadd double %34, -1.000000e+00, !dbg !2006
  tail call void @llvm.dbg.value(metadata double %48, metadata !1948, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1949, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1967
  %49 = icmp ugt i64 %31, 1, !dbg !1983
  br i1 %49, label %30, label %50, !dbg !1984, !llvm.loop !2007

50:                                               ; preds = %30
  %51 = load double, ptr %13, align 8, !dbg !1985, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %51, metadata !1950, metadata !DIExpression()), !dbg !1967
  %52 = load double, ptr %14, align 8, !dbg !1986, !tbaa !98
  tail call void @llvm.dbg.value(metadata double %52, metadata !1951, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double poison, metadata !1948, metadata !DIExpression()), !dbg !1967
  store double %51, ptr %6, align 8, !dbg !1987, !tbaa !263
  store double %52, ptr %7, align 8, !dbg !1988, !tbaa !263
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1949, metadata !DIExpression()), !dbg !1967
  %53 = add nuw i32 %1, 1, !dbg !1989
  %54 = zext i32 %53 to i64, !dbg !2009
  br label %55, !dbg !1989

55:                                               ; preds = %50, %55
  %56 = phi i64 [ 1, %50 ], [ %73, %55 ]
  %57 = phi double [ %0, %50 ], [ %60, %55 ]
  %58 = phi double [ %51, %50 ], [ %67, %55 ]
  %59 = phi double [ %52, %50 ], [ %71, %55 ]
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !1949, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %58, metadata !1950, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double %59, metadata !1951, metadata !DIExpression()), !dbg !1967
  %60 = fadd double %57, 1.000000e+00, !dbg !1967
  tail call void @llvm.dbg.value(metadata double %60, metadata !1948, metadata !DIExpression()), !dbg !1967
  %61 = fdiv double %2, %60, !dbg !2010
  tail call void @llvm.dbg.value(metadata double %61, metadata !1959, metadata !DIExpression()), !dbg !2011
  %62 = tail call double @hypot(double noundef 1.000000e+00, double noundef %61) #9, !dbg !2012
  tail call void @llvm.dbg.value(metadata double %62, metadata !1963, metadata !DIExpression()), !dbg !2011
  %63 = fmul double %15, %60, !dbg !2013
  %64 = fadd double %61, %63, !dbg !2014
  tail call void @llvm.dbg.value(metadata double %64, metadata !1964, metadata !DIExpression()), !dbg !2011
  %65 = fmul double %58, %64, !dbg !2015
  %66 = fsub double %65, %59, !dbg !2016
  %67 = fdiv double %66, %62, !dbg !2017
  tail call void @llvm.dbg.value(metadata double %67, metadata !1965, metadata !DIExpression()), !dbg !2011
  %68 = getelementptr inbounds double, ptr %6, i64 %56, !dbg !2018
  store double %67, ptr %68, align 8, !dbg !2019, !tbaa !263
  %69 = fmul double %58, %62, !dbg !2020
  %70 = fmul double %64, %67, !dbg !2021
  %71 = fsub double %69, %70, !dbg !2022
  tail call void @llvm.dbg.value(metadata double %71, metadata !1951, metadata !DIExpression()), !dbg !1967
  %72 = getelementptr inbounds double, ptr %7, i64 %56, !dbg !2023
  store double %71, ptr %72, align 8, !dbg !2024, !tbaa !263
  tail call void @llvm.dbg.value(metadata double %67, metadata !1950, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata double poison, metadata !1948, metadata !DIExpression()), !dbg !1967
  %73 = add nuw nsw i64 %56, 1, !dbg !2025
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !1949, metadata !DIExpression()), !dbg !1967
  %74 = icmp eq i64 %73, %54, !dbg !2009
  br i1 %74, label %75, label %55, !dbg !1989, !llvm.loop !2026

75:                                               ; preds = %55, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #9, !dbg !2028
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #9, !dbg !2028
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #9, !dbg !2028
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #9, !dbg !2028
  ret i32 %18, !dbg !2029
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_coulomb_wave_sphF_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 !dbg !2030 {
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !2045
  tail call void @llvm.dbg.value(metadata double %0, metadata !2032, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2033, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata double %2, metadata !2034, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata double %3, metadata !2035, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2036, metadata !DIExpression()), !dbg !2046
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2037, metadata !DIExpression()), !dbg !2046
  %8 = fcmp olt double %3, 0.000000e+00, !dbg !2047
  %9 = fcmp olt double %0, -5.000000e-01
  %10 = or i1 %9, %8, !dbg !2048
  br i1 %10, label %11, label %12, !dbg !2048

11:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1387, i32 noundef 1) #9, !dbg !2049
  br label %81, !dbg !2049

12:                                               ; preds = %6
  %13 = fcmp olt double %3, 0x24000000000001, !dbg !2052
  br i1 %13, label %14, label %38, !dbg !2053

14:                                               ; preds = %12
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2038, metadata !DIExpression()), !dbg !2054
  %15 = icmp slt i32 %1, 0, !dbg !2055
  br i1 %15, label %20, label %16, !dbg !2058

16:                                               ; preds = %14
  %17 = add nuw i32 %1, 1, !dbg !2058
  %18 = zext i32 %17 to i64, !dbg !2058
  %19 = shl nuw nsw i64 %18, 3, !dbg !2058
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, i8 0, i64 %19, i1 false), !dbg !2059, !tbaa !263
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2038, metadata !DIExpression()), !dbg !2054
  br label %20, !dbg !2061

20:                                               ; preds = %16, %14
  %21 = fcmp oeq double %0, 0.000000e+00, !dbg !2061
  br i1 %21, label %22, label %35, !dbg !2063

22:                                               ; preds = %20
  call void @llvm.dbg.assign(metadata i1 undef, metadata !110, metadata !DIExpression(), metadata !2045, metadata ptr %7, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata double %2, metadata !118, metadata !DIExpression()), !dbg !2067
  %23 = fmul double %2, 0x401921FB54442D18, !dbg !2068
  call void @llvm.dbg.value(metadata double %23, metadata !119, metadata !DIExpression()), !dbg !2067
  %24 = tail call double @llvm.fabs.f64(double %2), !dbg !2069
  %25 = fcmp olt double %24, 0x3CB0000000000000, !dbg !2070
  br i1 %25, label %32, label %26, !dbg !2071

26:                                               ; preds = %22
  %27 = fcmp ogt double %23, 0x40862E42FEFA39EF, !dbg !2072
  br i1 %27, label %32, label %28, !dbg !2073

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9, !dbg !2074
  %29 = call i32 @gsl_sf_expm1_e(double noundef %23, ptr noundef nonnull %7) #9, !dbg !2075
  %30 = load double, ptr %7, align 8, !dbg !2076, !tbaa !98
  %31 = fdiv double %23, %30, !dbg !2077
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9, !dbg !2078
  br label %32

32:                                               ; preds = %22, %26, %28
  %33 = phi double [ %31, %28 ], [ 1.000000e+00, %22 ], [ 0.000000e+00, %26 ], !dbg !2079
  %34 = call double @sqrt(double noundef %33) #9, !dbg !2080
  store double %34, ptr %4, align 8, !dbg !2081, !tbaa !263
  br label %35, !dbg !2082

35:                                               ; preds = %32, %20
  store double 0.000000e+00, ptr %5, align 8, !dbg !2083, !tbaa !263
  %36 = fcmp oeq double %3, 0.000000e+00, !dbg !2084
  br i1 %36, label %81, label %37, !dbg !2086

37:                                               ; preds = %35
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 1401, i32 noundef 15) #9, !dbg !2087
  br label %81, !dbg !2087

38:                                               ; preds = %12
  %39 = tail call i32 @gsl_sf_coulomb_wave_F_array(double noundef %0, i32 noundef %1, double noundef %2, double noundef %3, ptr noundef %4, ptr noundef %5), !dbg !2089
  tail call void @llvm.dbg.value(metadata i32 %39, metadata !2044, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2042, metadata !DIExpression()), !dbg !2090
  %40 = icmp slt i32 %1, 0, !dbg !2091
  br i1 %40, label %81, label %41, !dbg !2094

41:                                               ; preds = %38
  %42 = add nuw i32 %1, 1, !dbg !2094
  %43 = zext i32 %42 to i64, !dbg !2091
  %44 = and i64 %43, 3, !dbg !2094
  %45 = icmp ult i32 %1, 3, !dbg !2094
  br i1 %45, label %69, label %46, !dbg !2094

46:                                               ; preds = %41
  %47 = and i64 %43, 4294967292, !dbg !2094
  br label %48, !dbg !2094

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 0, %46 ], [ %66, %48 ]
  %50 = phi i64 [ 0, %46 ], [ %67, %48 ]
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !2042, metadata !DIExpression()), !dbg !2090
  %51 = getelementptr inbounds double, ptr %4, i64 %49, !dbg !2095
  %52 = load double, ptr %51, align 8, !dbg !2095, !tbaa !263
  %53 = fdiv double %52, %3, !dbg !2097
  store double %53, ptr %51, align 8, !dbg !2098, !tbaa !263
  %54 = or disjoint i64 %49, 1, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !2042, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !2042, metadata !DIExpression()), !dbg !2090
  %55 = getelementptr inbounds double, ptr %4, i64 %54, !dbg !2095
  %56 = load double, ptr %55, align 8, !dbg !2095, !tbaa !263
  %57 = fdiv double %56, %3, !dbg !2097
  store double %57, ptr %55, align 8, !dbg !2098, !tbaa !263
  %58 = or disjoint i64 %49, 2, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !2042, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !2042, metadata !DIExpression()), !dbg !2090
  %59 = getelementptr inbounds double, ptr %4, i64 %58, !dbg !2095
  %60 = load double, ptr %59, align 8, !dbg !2095, !tbaa !263
  %61 = fdiv double %60, %3, !dbg !2097
  store double %61, ptr %59, align 8, !dbg !2098, !tbaa !263
  %62 = or disjoint i64 %49, 3, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !2042, metadata !DIExpression()), !dbg !2090
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !2042, metadata !DIExpression()), !dbg !2090
  %63 = getelementptr inbounds double, ptr %4, i64 %62, !dbg !2095
  %64 = load double, ptr %63, align 8, !dbg !2095, !tbaa !263
  %65 = fdiv double %64, %3, !dbg !2097
  store double %65, ptr %63, align 8, !dbg !2098, !tbaa !263
  %66 = add nuw nsw i64 %49, 4, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !2042, metadata !DIExpression()), !dbg !2090
  %67 = add i64 %50, 4, !dbg !2094
  %68 = icmp eq i64 %67, %47, !dbg !2094
  br i1 %68, label %69, label %48, !dbg !2094, !llvm.loop !2100

69:                                               ; preds = %48, %41
  %70 = phi i64 [ 0, %41 ], [ %66, %48 ]
  %71 = icmp eq i64 %44, 0, !dbg !2094
  br i1 %71, label %81, label %72, !dbg !2094

72:                                               ; preds = %69, %72
  %73 = phi i64 [ %78, %72 ], [ %70, %69 ]
  %74 = phi i64 [ %79, %72 ], [ 0, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !2042, metadata !DIExpression()), !dbg !2090
  %75 = getelementptr inbounds double, ptr %4, i64 %73, !dbg !2095
  %76 = load double, ptr %75, align 8, !dbg !2095, !tbaa !263
  %77 = fdiv double %76, %3, !dbg !2097
  store double %77, ptr %75, align 8, !dbg !2098, !tbaa !263
  %78 = add nuw nsw i64 %73, 1, !dbg !2099
  tail call void @llvm.dbg.value(metadata i64 %78, metadata !2042, metadata !DIExpression()), !dbg !2090
  %79 = add i64 %74, 1, !dbg !2094
  %80 = icmp eq i64 %79, %44, !dbg !2094
  br i1 %80, label %81, label %72, !dbg !2094, !llvm.loop !2102

81:                                               ; preds = %69, %72, %38, %37, %35, %11
  %82 = phi i32 [ 1, %11 ], [ 15, %37 ], [ 0, %35 ], [ %39, %38 ], [ %39, %72 ], [ %39, %69 ], !dbg !2104
  ret i32 %82, !dbg !2105
}

declare !dbg !2106 i32 @gsl_sf_expm1_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2110 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2114 i32 @gsl_sf_lngamma_complex_e(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2117 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2120 i32 @gsl_sf_psi_1piy_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2122 double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2123 double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2124 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2125 double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2126 double @tanh(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2127 double @atan(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2128 double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2129 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2130 double @atan2(double noundef, double noundef) local_unnamed_addr #3

declare !dbg !2131 i32 @gsl_sf_airy_Ai_scaled_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !2138 i32 @gsl_sf_airy_Bi_scaled_e(double noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

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
!174 = !DILocation(line: 86, column: 17, scope: !166)
!175 = !DILocation(line: 86, column: 14, scope: !166)
!176 = !DILocation(line: 86, column: 6, scope: !166)
!177 = !DILocation(line: 86, column: 24, scope: !166)
!178 = !DILocation(line: 86, column: 6, scope: !154)
!179 = !DILocation(line: 87, column: 5, scope: !180)
!180 = distinct !DILexicalBlock(scope: !166, file: !2, line: 86, column: 43)
!181 = !DILocation(line: 88, column: 3, scope: !180)
!182 = !DILocation(line: 90, column: 5, scope: !165)
!183 = !DILocation(line: 91, column: 5, scope: !165)
!184 = !DILocation(line: 92, column: 3, scope: !166)
!185 = !DILocation(line: 94, column: 23, scope: !154)
!186 = !DILocation(line: 94, column: 3, scope: !154)
!187 = !DILocation(line: 97, column: 15, scope: !154)
!188 = !DILocation(line: 97, column: 27, scope: !154)
!189 = !DILocation(line: 97, column: 31, scope: !154)
!190 = !DILocation(line: 97, column: 22, scope: !154)
!191 = !DILocation(line: 97, column: 43, scope: !154)
!192 = !DILocation(line: 97, column: 37, scope: !154)
!193 = !DILocation(line: 97, column: 53, scope: !154)
!194 = !DILocation(line: 97, column: 47, scope: !154)
!195 = !DILocation(line: 98, column: 18, scope: !154)
!196 = !DILocation(line: 98, column: 28, scope: !154)
!197 = !DILocation(line: 98, column: 22, scope: !154)
!198 = !DILocation(line: 99, column: 33, scope: !154)
!199 = !DILocation(line: 99, column: 49, scope: !154)
!200 = !DILocation(line: 99, column: 47, scope: !154)
!201 = !DILocation(line: 99, column: 30, scope: !154)
!202 = !DILocation(line: 99, column: 11, scope: !154)
!203 = !DILocation(line: 100, column: 10, scope: !154)
!204 = !DILocation(line: 101, column: 1, scope: !154)
!205 = !DILocation(line: 100, column: 3, scope: !154)
!206 = distinct !DISubprogram(name: "gsl_sf_coulomb_CL_array", scope: !2, file: !2, line: 127, type: !207, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !210)
!207 = !DISubroutineType(types: !208)
!208 = !{!28, !78, !28, !78, !209}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!210 = !{!211, !212, !213, !214, !215, !216, !217}
!211 = !DILocalVariable(name: "lam_min", arg: 1, scope: !206, file: !2, line: 127, type: !78)
!212 = !DILocalVariable(name: "kmax", arg: 2, scope: !206, file: !2, line: 127, type: !28)
!213 = !DILocalVariable(name: "eta", arg: 3, scope: !206, file: !2, line: 127, type: !78)
!214 = !DILocalVariable(name: "cl", arg: 4, scope: !206, file: !2, line: 127, type: !209)
!215 = !DILocalVariable(name: "k", scope: !206, file: !2, line: 129, type: !28)
!216 = !DILocalVariable(name: "cl_0", scope: !206, file: !2, line: 130, type: !80)
!217 = !DILocalVariable(name: "L", scope: !218, file: !2, line: 135, type: !78)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 134, column: 26)
!219 = distinct !DILexicalBlock(scope: !220, file: !2, line: 134, column: 3)
!220 = distinct !DILexicalBlock(scope: !206, file: !2, line: 134, column: 3)
!221 = distinct !DIAssignID()
!222 = distinct !DIAssignID()
!223 = !DILocation(line: 0, scope: !206)
!224 = !DILocation(line: 130, column: 3, scope: !206)
!225 = !DILocation(line: 0, scope: !75, inlinedAt: !226)
!226 = distinct !DILocation(line: 131, column: 3, scope: !206)
!227 = !DILocation(line: 109, column: 10, scope: !93, inlinedAt: !226)
!228 = !DILocation(line: 109, column: 6, scope: !75, inlinedAt: !226)
!229 = !DILocation(line: 110, column: 5, scope: !96, inlinedAt: !226)
!230 = distinct !DIAssignID()
!231 = distinct !DIAssignID()
!232 = !DILocation(line: 110, column: 5, scope: !105, inlinedAt: !226)
!233 = !DILocation(line: 112, column: 11, scope: !107, inlinedAt: !226)
!234 = !DILocation(line: 112, column: 21, scope: !107, inlinedAt: !226)
!235 = !DILocation(line: 112, column: 11, scope: !93, inlinedAt: !226)
!236 = !DILocation(line: 0, scope: !111, inlinedAt: !237)
!237 = distinct !DILocation(line: 114, column: 24, scope: !122, inlinedAt: !226)
!238 = !DILocation(line: 0, scope: !114, inlinedAt: !237)
!239 = !DILocation(line: 52, column: 29, scope: !114, inlinedAt: !237)
!240 = !DILocation(line: 54, column: 6, scope: !113, inlinedAt: !237)
!241 = !DILocation(line: 54, column: 16, scope: !113, inlinedAt: !237)
!242 = !DILocation(line: 54, column: 6, scope: !114, inlinedAt: !237)
!243 = !DILocation(line: 57, column: 20, scope: !112, inlinedAt: !237)
!244 = !DILocation(line: 57, column: 11, scope: !113, inlinedAt: !237)
!245 = !DILocation(line: 61, column: 5, scope: !111, inlinedAt: !237)
!246 = !DILocation(line: 62, column: 5, scope: !111, inlinedAt: !237)
!247 = !DILocation(line: 63, column: 27, scope: !111, inlinedAt: !237)
!248 = !DILocation(line: 63, column: 20, scope: !111, inlinedAt: !237)
!249 = !DILocation(line: 64, column: 3, scope: !112, inlinedAt: !237)
!250 = !DILocation(line: 0, scope: !113, inlinedAt: !237)
!251 = !DILocation(line: 114, column: 19, scope: !122, inlinedAt: !226)
!252 = !DILocation(line: 114, column: 17, scope: !122, inlinedAt: !226)
!253 = distinct !DIAssignID()
!254 = !DILocation(line: 115, column: 41, scope: !122, inlinedAt: !226)
!255 = !DILocation(line: 115, column: 13, scope: !122, inlinedAt: !226)
!256 = !DILocation(line: 115, column: 17, scope: !122, inlinedAt: !226)
!257 = distinct !DIAssignID()
!258 = !DILocation(line: 116, column: 5, scope: !122, inlinedAt: !226)
!259 = !DILocation(line: 119, column: 12, scope: !143, inlinedAt: !226)
!260 = !DILocation(line: 132, column: 16, scope: !206)
!261 = !DILocation(line: 119, column: 5, scope: !143, inlinedAt: !226)
!262 = !DILocation(line: 132, column: 9, scope: !206)
!263 = !{!100, !100, i64 0}
!264 = !DILocation(line: 134, column: 13, scope: !219)
!265 = !DILocation(line: 134, column: 3, scope: !220)
!266 = !DILocation(line: 135, column: 26, scope: !218)
!267 = !DILocation(line: 135, column: 24, scope: !218)
!268 = !DILocation(line: 0, scope: !218)
!269 = !DILocation(line: 136, column: 13, scope: !218)
!270 = !DILocation(line: 136, column: 23, scope: !218)
!271 = !DILocation(line: 136, column: 21, scope: !218)
!272 = !DILocation(line: 136, column: 44, scope: !218)
!273 = !DILocation(line: 136, column: 46, scope: !218)
!274 = !DILocation(line: 136, column: 39, scope: !218)
!275 = !DILocation(line: 136, column: 36, scope: !218)
!276 = !DILocation(line: 136, column: 11, scope: !218)
!277 = !DILocation(line: 134, column: 22, scope: !219)
!278 = distinct !{!278, !265, !279, !280}
!279 = !DILocation(line: 137, column: 3, scope: !220)
!280 = !{!"llvm.loop.mustprogress"}
!281 = !DILocation(line: 140, column: 1, scope: !206)
!282 = !DILocation(line: 139, column: 3, scope: !206)
!283 = !DISubprogram(name: "hypot", scope: !153, file: !153, line: 147, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{!78, !78, !78}
!286 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_FG_e", scope: !2, file: !2, line: 896, type: !287, scopeLine: 902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !291)
!287 = !DISubroutineType(types: !288)
!288 = !{!28, !289, !289, !289, !290, !79, !79, !79, !79, !209, !209}
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !307, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386}
!292 = !DILocalVariable(name: "eta", arg: 1, scope: !286, file: !2, line: 896, type: !289)
!293 = !DILocalVariable(name: "x", arg: 2, scope: !286, file: !2, line: 896, type: !289)
!294 = !DILocalVariable(name: "lam_F", arg: 3, scope: !286, file: !2, line: 897, type: !289)
!295 = !DILocalVariable(name: "k_lam_G", arg: 4, scope: !286, file: !2, line: 898, type: !290)
!296 = !DILocalVariable(name: "F", arg: 5, scope: !286, file: !2, line: 899, type: !79)
!297 = !DILocalVariable(name: "Fp", arg: 6, scope: !286, file: !2, line: 899, type: !79)
!298 = !DILocalVariable(name: "G", arg: 7, scope: !286, file: !2, line: 900, type: !79)
!299 = !DILocalVariable(name: "Gp", arg: 8, scope: !286, file: !2, line: 900, type: !79)
!300 = !DILocalVariable(name: "exp_F", arg: 9, scope: !286, file: !2, line: 901, type: !209)
!301 = !DILocalVariable(name: "exp_G", arg: 10, scope: !286, file: !2, line: 901, type: !209)
!302 = !DILocalVariable(name: "lam_G", scope: !286, file: !2, line: 903, type: !289)
!303 = !DILocalVariable(name: "C0", scope: !304, file: !2, line: 915, type: !80)
!304 = distinct !DILexicalBlock(scope: !305, file: !2, line: 914, column: 21)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 914, column: 11)
!306 = distinct !DILexicalBlock(scope: !286, file: !2, line: 905, column: 6)
!307 = !DILocalVariable(name: "SMALL", scope: !308, file: !2, line: 940, type: !289)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 932, column: 83)
!309 = distinct !DILexicalBlock(scope: !305, file: !2, line: 932, column: 11)
!310 = !DILocalVariable(name: "N", scope: !308, file: !2, line: 941, type: !290)
!311 = !DILocalVariable(name: "span", scope: !308, file: !2, line: 942, type: !290)
!312 = !DILocalVariable(name: "lam_min", scope: !308, file: !2, line: 943, type: !289)
!313 = !DILocalVariable(name: "F_lam_F", scope: !308, file: !2, line: 944, type: !78)
!314 = !DILocalVariable(name: "Fp_lam_F", scope: !308, file: !2, line: 944, type: !78)
!315 = !DILocalVariable(name: "G_lam_G", scope: !308, file: !2, line: 945, type: !78)
!316 = !DILocalVariable(name: "Gp_lam_G", scope: !308, file: !2, line: 945, type: !78)
!317 = !DILocalVariable(name: "F_lam_F_err", scope: !308, file: !2, line: 946, type: !78)
!318 = !DILocalVariable(name: "Fp_lam_F_err", scope: !308, file: !2, line: 946, type: !78)
!319 = !DILocalVariable(name: "Fp_over_F_lam_F", scope: !308, file: !2, line: 947, type: !78)
!320 = !DILocalVariable(name: "F_sign_lam_F", scope: !308, file: !2, line: 948, type: !78)
!321 = !DILocalVariable(name: "F_lam_min_unnorm", scope: !308, file: !2, line: 949, type: !78)
!322 = !DILocalVariable(name: "Fp_lam_min_unnorm", scope: !308, file: !2, line: 949, type: !78)
!323 = !DILocalVariable(name: "Fp_over_F_lam_min", scope: !308, file: !2, line: 950, type: !78)
!324 = !DILocalVariable(name: "F_lam_min", scope: !308, file: !2, line: 951, type: !80)
!325 = !DILocalVariable(name: "G_lam_min", scope: !308, file: !2, line: 952, type: !80)
!326 = !DILocalVariable(name: "Gp_lam_min", scope: !308, file: !2, line: 952, type: !80)
!327 = !DILocalVariable(name: "F_scale", scope: !308, file: !2, line: 953, type: !78)
!328 = !DILocalVariable(name: "Gerr_frac", scope: !308, file: !2, line: 954, type: !78)
!329 = !DILocalVariable(name: "F_scale_frac_err", scope: !308, file: !2, line: 955, type: !78)
!330 = !DILocalVariable(name: "F_unnorm_frac_err", scope: !308, file: !2, line: 956, type: !78)
!331 = !DILocalVariable(name: "CF1_count", scope: !308, file: !2, line: 959, type: !28)
!332 = !DILocalVariable(name: "stat_CF1", scope: !308, file: !2, line: 960, type: !28)
!333 = !DILocalVariable(name: "stat_ser", scope: !308, file: !2, line: 962, type: !28)
!334 = !DILocalVariable(name: "stat_Fr", scope: !308, file: !2, line: 963, type: !28)
!335 = !DILocalVariable(name: "stat_Gr", scope: !308, file: !2, line: 964, type: !28)
!336 = !DILocalVariable(name: "F_lam_F", scope: !337, file: !2, line: 1055, type: !80)
!337 = distinct !DILexicalBlock(scope: !338, file: !2, line: 1050, column: 24)
!338 = distinct !DILexicalBlock(scope: !309, file: !2, line: 1050, column: 11)
!339 = !DILocalVariable(name: "G_lam_F", scope: !337, file: !2, line: 1055, type: !80)
!340 = !DILocalVariable(name: "F_lam_G", scope: !337, file: !2, line: 1056, type: !80)
!341 = !DILocalVariable(name: "G_lam_G", scope: !337, file: !2, line: 1056, type: !80)
!342 = !DILocalVariable(name: "exp_lam_F", scope: !337, file: !2, line: 1057, type: !78)
!343 = !DILocalVariable(name: "exp_lam_G", scope: !337, file: !2, line: 1057, type: !78)
!344 = !DILocalVariable(name: "stat_lam_F", scope: !337, file: !2, line: 1058, type: !28)
!345 = !DILocalVariable(name: "stat_lam_G", scope: !337, file: !2, line: 1059, type: !28)
!346 = !DILocalVariable(name: "stat_CF1_lam_F", scope: !337, file: !2, line: 1060, type: !28)
!347 = !DILocalVariable(name: "stat_CF1_lam_G", scope: !337, file: !2, line: 1061, type: !28)
!348 = !DILocalVariable(name: "CF1_count", scope: !337, file: !2, line: 1062, type: !28)
!349 = !DILocalVariable(name: "Fp_over_F_lam_F", scope: !337, file: !2, line: 1063, type: !78)
!350 = !DILocalVariable(name: "Fp_over_F_lam_G", scope: !337, file: !2, line: 1064, type: !78)
!351 = !DILocalVariable(name: "F_sign_lam_F", scope: !337, file: !2, line: 1065, type: !78)
!352 = !DILocalVariable(name: "F_sign_lam_G", scope: !337, file: !2, line: 1066, type: !78)
!353 = !DILocalVariable(name: "SMALL", scope: !354, file: !2, line: 1123, type: !289)
!354 = distinct !DILexicalBlock(scope: !338, file: !2, line: 1113, column: 8)
!355 = !DILocalVariable(name: "C", scope: !354, file: !2, line: 1124, type: !289)
!356 = !DILocalVariable(name: "N", scope: !354, file: !2, line: 1125, type: !290)
!357 = !DILocalVariable(name: "lam_0", scope: !354, file: !2, line: 1126, type: !289)
!358 = !DILocalVariable(name: "lam_min", scope: !354, file: !2, line: 1127, type: !289)
!359 = !DILocalVariable(name: "F_lam_F", scope: !354, file: !2, line: 1128, type: !78)
!360 = !DILocalVariable(name: "Fp_lam_F", scope: !354, file: !2, line: 1128, type: !78)
!361 = !DILocalVariable(name: "G_lam_G", scope: !354, file: !2, line: 1129, type: !78)
!362 = !DILocalVariable(name: "Gp_lam_G", scope: !354, file: !2, line: 1129, type: !78)
!363 = !DILocalVariable(name: "F_lam_min_unnorm", scope: !354, file: !2, line: 1130, type: !78)
!364 = !DILocalVariable(name: "Fp_lam_min_unnorm", scope: !354, file: !2, line: 1130, type: !78)
!365 = !DILocalVariable(name: "F_lam_min", scope: !354, file: !2, line: 1131, type: !78)
!366 = !DILocalVariable(name: "Fp_lam_min", scope: !354, file: !2, line: 1131, type: !78)
!367 = !DILocalVariable(name: "G_lam_min", scope: !354, file: !2, line: 1132, type: !78)
!368 = !DILocalVariable(name: "Gp_lam_min", scope: !354, file: !2, line: 1132, type: !78)
!369 = !DILocalVariable(name: "Fp_over_F_lam_F", scope: !354, file: !2, line: 1133, type: !78)
!370 = !DILocalVariable(name: "Fp_over_F_lam_min", scope: !354, file: !2, line: 1134, type: !78)
!371 = !DILocalVariable(name: "F_sign_lam_F", scope: !354, file: !2, line: 1135, type: !78)
!372 = !DILocalVariable(name: "F_sign_lam_min", scope: !354, file: !2, line: 1135, type: !78)
!373 = !DILocalVariable(name: "P_lam_min", scope: !354, file: !2, line: 1136, type: !78)
!374 = !DILocalVariable(name: "Q_lam_min", scope: !354, file: !2, line: 1136, type: !78)
!375 = !DILocalVariable(name: "alpha", scope: !354, file: !2, line: 1137, type: !78)
!376 = !DILocalVariable(name: "gamma", scope: !354, file: !2, line: 1138, type: !78)
!377 = !DILocalVariable(name: "F_scale", scope: !354, file: !2, line: 1139, type: !78)
!378 = !DILocalVariable(name: "CF1_count", scope: !354, file: !2, line: 1141, type: !28)
!379 = !DILocalVariable(name: "CF2_count", scope: !354, file: !2, line: 1142, type: !28)
!380 = !DILocalVariable(name: "stat_CF1", scope: !354, file: !2, line: 1143, type: !28)
!381 = !DILocalVariable(name: "stat_CF2", scope: !354, file: !2, line: 1144, type: !28)
!382 = !DILocalVariable(name: "stat_Fr", scope: !354, file: !2, line: 1145, type: !28)
!383 = !DILocalVariable(name: "stat_Gr", scope: !354, file: !2, line: 1146, type: !28)
!384 = !DILocalVariable(name: "F_recur_count", scope: !354, file: !2, line: 1148, type: !28)
!385 = !DILocalVariable(name: "G_recur_count", scope: !354, file: !2, line: 1149, type: !28)
!386 = !DILocalVariable(name: "err_amplify", scope: !354, file: !2, line: 1151, type: !78)
!387 = distinct !DIAssignID()
!388 = distinct !DIAssignID()
!389 = distinct !DIAssignID()
!390 = distinct !DIAssignID()
!391 = !DILocation(line: 0, scope: !304)
!392 = distinct !DIAssignID()
!393 = !DILocation(line: 0, scope: !308)
!394 = distinct !DIAssignID()
!395 = distinct !DIAssignID()
!396 = !DILocation(line: 0, scope: !337)
!397 = distinct !DIAssignID()
!398 = distinct !DIAssignID()
!399 = distinct !DIAssignID()
!400 = distinct !DIAssignID()
!401 = distinct !DIAssignID()
!402 = !DILocation(line: 0, scope: !286)
!403 = !DILocation(line: 903, column: 32, scope: !286)
!404 = !DILocation(line: 903, column: 30, scope: !286)
!405 = !DILocation(line: 905, column: 8, scope: !306)
!406 = !DILocation(line: 905, column: 14, scope: !306)
!407 = !DILocation(line: 906, column: 5, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 906, column: 5)
!409 = distinct !DILexicalBlock(scope: !306, file: !2, line: 905, column: 49)
!410 = !DILocation(line: 907, column: 5, scope: !411)
!411 = distinct !DILexicalBlock(scope: !409, file: !2, line: 907, column: 5)
!412 = !DILocation(line: 908, column: 5, scope: !413)
!413 = distinct !DILexicalBlock(scope: !409, file: !2, line: 908, column: 5)
!414 = !DILocation(line: 909, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !2, line: 909, column: 5)
!416 = !DILocation(line: 910, column: 12, scope: !409)
!417 = !DILocation(line: 911, column: 12, scope: !409)
!418 = !DILocation(line: 912, column: 5, scope: !419)
!419 = distinct !DILexicalBlock(scope: !409, file: !2, line: 912, column: 5)
!420 = !DILocation(line: 914, column: 13, scope: !305)
!421 = !DILocation(line: 914, column: 11, scope: !306)
!422 = !DILocation(line: 915, column: 5, scope: !304)
!423 = !DILocation(line: 916, column: 5, scope: !304)
!424 = !DILocation(line: 917, column: 5, scope: !425)
!425 = distinct !DILexicalBlock(scope: !304, file: !2, line: 917, column: 5)
!426 = !DILocation(line: 918, column: 5, scope: !427)
!427 = distinct !DILexicalBlock(scope: !304, file: !2, line: 918, column: 5)
!428 = !DILocation(line: 919, column: 5, scope: !429)
!429 = distinct !DILexicalBlock(scope: !304, file: !2, line: 919, column: 5)
!430 = !DILocation(line: 920, column: 5, scope: !431)
!431 = distinct !DILexicalBlock(scope: !304, file: !2, line: 920, column: 5)
!432 = !DILocation(line: 921, column: 12, scope: !304)
!433 = !DILocation(line: 922, column: 12, scope: !304)
!434 = !DILocation(line: 923, column: 14, scope: !435)
!435 = distinct !DILexicalBlock(scope: !304, file: !2, line: 923, column: 8)
!436 = !DILocation(line: 923, column: 8, scope: !304)
!437 = !DILocation(line: 924, column: 7, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 924, column: 7)
!439 = distinct !DILexicalBlock(scope: !435, file: !2, line: 923, column: 21)
!440 = !DILocation(line: 925, column: 5, scope: !439)
!441 = !DILocation(line: 926, column: 14, scope: !442)
!442 = distinct !DILexicalBlock(scope: !304, file: !2, line: 926, column: 8)
!443 = !DILocation(line: 926, column: 8, scope: !304)
!444 = !DILocation(line: 927, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !2, line: 927, column: 7)
!446 = distinct !DILexicalBlock(scope: !442, file: !2, line: 926, column: 22)
!447 = !DILocation(line: 928, column: 5, scope: !446)
!448 = !DILocation(line: 929, column: 5, scope: !449)
!449 = distinct !DILexicalBlock(scope: !304, file: !2, line: 929, column: 5)
!450 = !DILocation(line: 931, column: 3, scope: !305)
!451 = !DILocation(line: 932, column: 13, scope: !309)
!452 = !DILocation(line: 932, column: 19, scope: !309)
!453 = !DILocation(line: 932, column: 71, scope: !309)
!454 = !DILocation(line: 932, column: 63, scope: !309)
!455 = !DILocation(line: 932, column: 75, scope: !309)
!456 = !DILocation(line: 932, column: 11, scope: !305)
!457 = !DILocation(line: 941, column: 34, scope: !308)
!458 = !DILocation(line: 941, column: 22, scope: !308)
!459 = !DILocation(line: 942, column: 22, scope: !308)
!460 = !DILocation(line: 943, column: 36, scope: !308)
!461 = !DILocation(line: 943, column: 34, scope: !308)
!462 = !DILocation(line: 951, column: 5, scope: !308)
!463 = !DILocation(line: 952, column: 5, scope: !308)
!464 = !DILocalVariable(name: "lambda", arg: 1, scope: !465, file: !2, line: 595, type: !78)
!465 = distinct !DISubprogram(name: "coulomb_CF1", scope: !2, file: !2, line: 595, type: !466, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !469)
!466 = !DISubroutineType(types: !467)
!467 = !{!28, !78, !78, !78, !209, !209, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!469 = !{!464, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !487, !488, !489}
!470 = !DILocalVariable(name: "eta", arg: 2, scope: !465, file: !2, line: 596, type: !78)
!471 = !DILocalVariable(name: "x", arg: 3, scope: !465, file: !2, line: 596, type: !78)
!472 = !DILocalVariable(name: "fcl_sign", arg: 4, scope: !465, file: !2, line: 597, type: !209)
!473 = !DILocalVariable(name: "result", arg: 5, scope: !465, file: !2, line: 598, type: !209)
!474 = !DILocalVariable(name: "count", arg: 6, scope: !465, file: !2, line: 599, type: !468)
!475 = !DILocalVariable(name: "CF1_small", scope: !465, file: !2, line: 602, type: !289)
!476 = !DILocalVariable(name: "CF1_abort", scope: !465, file: !2, line: 603, type: !289)
!477 = !DILocalVariable(name: "CF1_acc", scope: !465, file: !2, line: 604, type: !289)
!478 = !DILocalVariable(name: "x_inv", scope: !465, file: !2, line: 605, type: !289)
!479 = !DILocalVariable(name: "px", scope: !465, file: !2, line: 606, type: !289)
!480 = !DILocalVariable(name: "pk", scope: !465, file: !2, line: 608, type: !78)
!481 = !DILocalVariable(name: "F", scope: !465, file: !2, line: 609, type: !78)
!482 = !DILocalVariable(name: "D", scope: !465, file: !2, line: 610, type: !78)
!483 = !DILocalVariable(name: "C", scope: !465, file: !2, line: 610, type: !78)
!484 = !DILocalVariable(name: "df", scope: !465, file: !2, line: 611, type: !78)
!485 = !DILocalVariable(name: "pk1", scope: !486, file: !2, line: 621, type: !78)
!486 = distinct !DILexicalBlock(scope: !465, file: !2, line: 620, column: 6)
!487 = !DILocalVariable(name: "ek", scope: !486, file: !2, line: 622, type: !78)
!488 = !DILocalVariable(name: "rk2", scope: !486, file: !2, line: 623, type: !78)
!489 = !DILocalVariable(name: "tk", scope: !486, file: !2, line: 624, type: !78)
!490 = !DILocation(line: 0, scope: !465, inlinedAt: !491)
!491 = distinct !DILocation(line: 960, column: 20, scope: !308)
!492 = !DILocation(line: 605, column: 31, scope: !465, inlinedAt: !491)
!493 = !DILocation(line: 606, column: 35, scope: !465, inlinedAt: !491)
!494 = !DILocation(line: 606, column: 41, scope: !465, inlinedAt: !491)
!495 = !DILocation(line: 609, column: 18, scope: !465, inlinedAt: !491)
!496 = !DILocation(line: 609, column: 26, scope: !465, inlinedAt: !491)
!497 = !DILocation(line: 609, column: 22, scope: !465, inlinedAt: !491)
!498 = !DILocation(line: 616, column: 6, scope: !499, inlinedAt: !491)
!499 = distinct !DILexicalBlock(scope: !465, file: !2, line: 616, column: 6)
!500 = !DILocation(line: 616, column: 14, scope: !499, inlinedAt: !491)
!501 = !DILocation(line: 616, column: 6, scope: !465, inlinedAt: !491)
!502 = !DILocation(line: 620, column: 3, scope: !465, inlinedAt: !491)
!503 = !DILocation(line: 621, column: 21, scope: !486, inlinedAt: !491)
!504 = !DILocation(line: 0, scope: !486, inlinedAt: !491)
!505 = !DILocation(line: 622, column: 22, scope: !486, inlinedAt: !491)
!506 = !DILocation(line: 623, column: 26, scope: !486, inlinedAt: !491)
!507 = !DILocation(line: 623, column: 22, scope: !486, inlinedAt: !491)
!508 = !DILocation(line: 624, column: 22, scope: !486, inlinedAt: !491)
!509 = !DILocation(line: 624, column: 40, scope: !486, inlinedAt: !491)
!510 = !DILocation(line: 624, column: 36, scope: !486, inlinedAt: !491)
!511 = !DILocation(line: 624, column: 28, scope: !486, inlinedAt: !491)
!512 = !DILocation(line: 625, column: 21, scope: !486, inlinedAt: !491)
!513 = !DILocation(line: 625, column: 15, scope: !486, inlinedAt: !491)
!514 = !DILocation(line: 626, column: 21, scope: !486, inlinedAt: !491)
!515 = !DILocation(line: 626, column: 15, scope: !486, inlinedAt: !491)
!516 = !DILocation(line: 627, column: 8, scope: !517, inlinedAt: !491)
!517 = distinct !DILexicalBlock(scope: !486, file: !2, line: 627, column: 8)
!518 = !DILocation(line: 627, column: 16, scope: !517, inlinedAt: !491)
!519 = !DILocation(line: 627, column: 8, scope: !486, inlinedAt: !491)
!520 = !DILocation(line: 628, column: 8, scope: !521, inlinedAt: !491)
!521 = distinct !DILexicalBlock(scope: !486, file: !2, line: 628, column: 8)
!522 = !DILocation(line: 628, column: 16, scope: !521, inlinedAt: !491)
!523 = !DILocation(line: 629, column: 12, scope: !486, inlinedAt: !491)
!524 = !DILocation(line: 630, column: 12, scope: !486, inlinedAt: !491)
!525 = !DILocation(line: 631, column: 12, scope: !486, inlinedAt: !491)
!526 = !DILocation(line: 637, column: 12, scope: !527, inlinedAt: !491)
!527 = distinct !DILexicalBlock(scope: !486, file: !2, line: 637, column: 9)
!528 = !DILocation(line: 637, column: 9, scope: !486, inlinedAt: !491)
!529 = !DILocation(line: 639, column: 7, scope: !530, inlinedAt: !491)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 639, column: 7)
!531 = distinct !DILexicalBlock(scope: !527, file: !2, line: 637, column: 19)
!532 = !DILocation(line: 641, column: 5, scope: !486, inlinedAt: !491)
!533 = !DILocation(line: 643, column: 16, scope: !465, inlinedAt: !491)
!534 = !DILocation(line: 643, column: 9, scope: !465, inlinedAt: !491)
!535 = !DILocation(line: 643, column: 22, scope: !465, inlinedAt: !491)
!536 = !DILocation(line: 642, column: 3, scope: !486, inlinedAt: !491)
!537 = distinct !{!537, !502, !538, !280}
!538 = !DILocation(line: 643, column: 31, scope: !465, inlinedAt: !491)
!539 = !DILocation(line: 968, column: 32, scope: !308)
!540 = !DILocalVariable(name: "lam_min", arg: 1, scope: !541, file: !2, line: 520, type: !78)
!541 = distinct !DISubprogram(name: "coulomb_F_recur", scope: !2, file: !2, line: 520, type: !542, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !544)
!542 = !DISubroutineType(types: !543)
!543 = !{!28, !78, !28, !78, !78, !78, !78, !209, !209}
!544 = !{!540, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !562, !563, !564}
!545 = !DILocalVariable(name: "kmax", arg: 2, scope: !541, file: !2, line: 520, type: !28)
!546 = !DILocalVariable(name: "eta", arg: 3, scope: !541, file: !2, line: 521, type: !78)
!547 = !DILocalVariable(name: "x", arg: 4, scope: !541, file: !2, line: 521, type: !78)
!548 = !DILocalVariable(name: "F_lam_max", arg: 5, scope: !541, file: !2, line: 522, type: !78)
!549 = !DILocalVariable(name: "Fp_lam_max", arg: 6, scope: !541, file: !2, line: 522, type: !78)
!550 = !DILocalVariable(name: "F_lam_min", arg: 7, scope: !541, file: !2, line: 523, type: !209)
!551 = !DILocalVariable(name: "Fp_lam_min", arg: 8, scope: !541, file: !2, line: 523, type: !209)
!552 = !DILocalVariable(name: "x_inv", scope: !541, file: !2, line: 526, type: !78)
!553 = !DILocalVariable(name: "fcl", scope: !541, file: !2, line: 527, type: !78)
!554 = !DILocalVariable(name: "fpl", scope: !541, file: !2, line: 528, type: !78)
!555 = !DILocalVariable(name: "lam_max", scope: !541, file: !2, line: 529, type: !78)
!556 = !DILocalVariable(name: "lam", scope: !541, file: !2, line: 530, type: !78)
!557 = !DILocalVariable(name: "k", scope: !541, file: !2, line: 531, type: !28)
!558 = !DILocalVariable(name: "el", scope: !559, file: !2, line: 534, type: !78)
!559 = distinct !DILexicalBlock(scope: !560, file: !2, line: 533, column: 28)
!560 = distinct !DILexicalBlock(scope: !561, file: !2, line: 533, column: 3)
!561 = distinct !DILexicalBlock(scope: !541, file: !2, line: 533, column: 3)
!562 = !DILocalVariable(name: "rl", scope: !559, file: !2, line: 535, type: !78)
!563 = !DILocalVariable(name: "sl", scope: !559, file: !2, line: 536, type: !78)
!564 = !DILocalVariable(name: "fc_lm1", scope: !559, file: !2, line: 537, type: !78)
!565 = !DILocation(line: 0, scope: !541, inlinedAt: !566)
!566 = distinct !DILocation(line: 970, column: 17, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !2, line: 969, column: 19)
!568 = distinct !DILexicalBlock(scope: !308, file: !2, line: 969, column: 8)
!569 = !DILocation(line: 969, column: 8, scope: !308)
!570 = !DILocation(line: 529, column: 30, scope: !541, inlinedAt: !566)
!571 = !DILocation(line: 529, column: 28, scope: !541, inlinedAt: !566)
!572 = !DILocation(line: 533, column: 3, scope: !561, inlinedAt: !566)
!573 = !DILocation(line: 533, scope: !561, inlinedAt: !566)
!574 = !DILocation(line: 534, column: 20, scope: !559, inlinedAt: !566)
!575 = !DILocation(line: 0, scope: !559, inlinedAt: !566)
!576 = !DILocation(line: 535, column: 17, scope: !559, inlinedAt: !566)
!577 = !DILocation(line: 536, column: 26, scope: !559, inlinedAt: !566)
!578 = !DILocation(line: 536, column: 21, scope: !559, inlinedAt: !566)
!579 = !DILocation(line: 538, column: 18, scope: !559, inlinedAt: !566)
!580 = !DILocation(line: 538, column: 22, scope: !559, inlinedAt: !566)
!581 = !DILocation(line: 538, column: 28, scope: !559, inlinedAt: !566)
!582 = !DILocation(line: 539, column: 21, scope: !559, inlinedAt: !566)
!583 = !DILocation(line: 539, column: 30, scope: !559, inlinedAt: !566)
!584 = !DILocation(line: 539, column: 25, scope: !559, inlinedAt: !566)
!585 = !DILocation(line: 541, column: 9, scope: !559, inlinedAt: !566)
!586 = !DILocation(line: 533, column: 18, scope: !560, inlinedAt: !566)
!587 = distinct !{!587, !572, !588, !280}
!588 = !DILocation(line: 542, column: 3, scope: !561, inlinedAt: !566)
!589 = !DILocation(line: 0, scope: !568)
!590 = !DILocation(line: 982, column: 16, scope: !591)
!591 = distinct !DILexicalBlock(scope: !308, file: !2, line: 982, column: 8)
!592 = !DILocation(line: 982, column: 8, scope: !308)
!593 = !DILocalVariable(name: "Cmhalf", scope: !594, file: !2, line: 458, type: !80)
!594 = distinct !DISubprogram(name: "coulomb_FGmhalf_series", scope: !2, file: !2, line: 451, type: !595, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!28, !289, !289, !79, !79}
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !593, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619}
!598 = !DILocalVariable(name: "eta", arg: 1, scope: !594, file: !2, line: 451, type: !289)
!599 = !DILocalVariable(name: "x", arg: 2, scope: !594, file: !2, line: 451, type: !289)
!600 = !DILocalVariable(name: "F", arg: 3, scope: !594, file: !2, line: 452, type: !79)
!601 = !DILocalVariable(name: "G", arg: 4, scope: !594, file: !2, line: 452, type: !79)
!602 = !DILocalVariable(name: "max_iter", scope: !594, file: !2, line: 454, type: !290)
!603 = !DILocalVariable(name: "rx", scope: !594, file: !2, line: 455, type: !289)
!604 = !DILocalVariable(name: "x2", scope: !594, file: !2, line: 456, type: !289)
!605 = !DILocalVariable(name: "tex", scope: !594, file: !2, line: 457, type: !289)
!606 = !DILocalVariable(name: "stat_CL", scope: !594, file: !2, line: 459, type: !28)
!607 = !DILocalVariable(name: "u_mm2", scope: !594, file: !2, line: 460, type: !78)
!608 = !DILocalVariable(name: "u_mm1", scope: !594, file: !2, line: 461, type: !78)
!609 = !DILocalVariable(name: "u_m", scope: !594, file: !2, line: 462, type: !78)
!610 = !DILocalVariable(name: "v_mm2", scope: !594, file: !2, line: 463, type: !78)
!611 = !DILocalVariable(name: "v_mm1", scope: !594, file: !2, line: 463, type: !78)
!612 = !DILocalVariable(name: "v_m", scope: !594, file: !2, line: 463, type: !78)
!613 = !DILocalVariable(name: "f_sum", scope: !594, file: !2, line: 464, type: !78)
!614 = !DILocalVariable(name: "g_sum", scope: !594, file: !2, line: 464, type: !78)
!615 = !DILocalVariable(name: "tmp1", scope: !594, file: !2, line: 465, type: !78)
!616 = !DILocalVariable(name: "rpsi_1pe", scope: !594, file: !2, line: 466, type: !80)
!617 = !DILocalVariable(name: "rpsi_1p2e", scope: !594, file: !2, line: 467, type: !80)
!618 = !DILocalVariable(name: "m", scope: !594, file: !2, line: 468, type: !28)
!619 = !DILocalVariable(name: "m2", scope: !620, file: !2, line: 480, type: !78)
!620 = distinct !DILexicalBlock(scope: !594, file: !2, line: 479, column: 23)
!621 = !DILocation(line: 0, scope: !594, inlinedAt: !622)
!622 = distinct !DILocation(line: 983, column: 18, scope: !623)
!623 = distinct !DILexicalBlock(scope: !591, file: !2, line: 982, column: 25)
!624 = !DILocation(line: 455, column: 22, scope: !594, inlinedAt: !622)
!625 = !DILocation(line: 456, column: 23, scope: !594, inlinedAt: !622)
!626 = !DILocation(line: 457, column: 25, scope: !594, inlinedAt: !622)
!627 = !DILocation(line: 457, column: 29, scope: !594, inlinedAt: !622)
!628 = !DILocation(line: 458, column: 3, scope: !594, inlinedAt: !622)
!629 = !DILocation(line: 459, column: 17, scope: !594, inlinedAt: !622)
!630 = !DILocation(line: 466, column: 3, scope: !594, inlinedAt: !622)
!631 = !DILocation(line: 467, column: 3, scope: !594, inlinedAt: !622)
!632 = !DILocation(line: 470, column: 3, scope: !594, inlinedAt: !622)
!633 = !DILocation(line: 471, column: 3, scope: !594, inlinedAt: !622)
!634 = !DILocation(line: 473, column: 42, scope: !594, inlinedAt: !622)
!635 = !DILocation(line: 473, column: 31, scope: !594, inlinedAt: !622)
!636 = !DILocation(line: 473, column: 62, scope: !594, inlinedAt: !622)
!637 = !DILocation(line: 473, column: 51, scope: !594, inlinedAt: !622)
!638 = !DILocation(line: 473, column: 46, scope: !594, inlinedAt: !622)
!639 = !DILocation(line: 474, column: 22, scope: !594, inlinedAt: !622)
!640 = !DILocation(line: 474, column: 14, scope: !594, inlinedAt: !622)
!641 = !DILocation(line: 476, column: 17, scope: !594, inlinedAt: !622)
!642 = !DILocation(line: 477, column: 17, scope: !594, inlinedAt: !622)
!643 = !DILocation(line: 479, column: 3, scope: !594, inlinedAt: !622)
!644 = !DILocation(line: 480, column: 18, scope: !620, inlinedAt: !622)
!645 = !DILocation(line: 480, column: 17, scope: !620, inlinedAt: !622)
!646 = !DILocation(line: 0, scope: !620, inlinedAt: !622)
!647 = !DILocation(line: 481, column: 15, scope: !620, inlinedAt: !622)
!648 = !DILocation(line: 481, column: 26, scope: !620, inlinedAt: !622)
!649 = !DILocation(line: 481, column: 22, scope: !620, inlinedAt: !622)
!650 = !DILocation(line: 481, column: 33, scope: !620, inlinedAt: !622)
!651 = !DILocation(line: 482, column: 15, scope: !620, inlinedAt: !622)
!652 = !DILocation(line: 482, column: 26, scope: !620, inlinedAt: !622)
!653 = !DILocation(line: 482, column: 22, scope: !620, inlinedAt: !622)
!654 = !DILocation(line: 482, column: 39, scope: !620, inlinedAt: !622)
!655 = !DILocation(line: 482, column: 38, scope: !620, inlinedAt: !622)
!656 = !DILocation(line: 482, column: 40, scope: !620, inlinedAt: !622)
!657 = !DILocation(line: 482, column: 33, scope: !620, inlinedAt: !622)
!658 = !DILocation(line: 482, column: 45, scope: !620, inlinedAt: !622)
!659 = !DILocation(line: 483, column: 11, scope: !620, inlinedAt: !622)
!660 = !DILocation(line: 484, column: 11, scope: !620, inlinedAt: !622)
!661 = !DILocation(line: 485, column: 17, scope: !662, inlinedAt: !622)
!662 = distinct !DILexicalBlock(scope: !620, file: !2, line: 485, column: 11)
!663 = !DILocation(line: 486, column: 8, scope: !662, inlinedAt: !622)
!664 = !DILocation(line: 487, column: 20, scope: !662, inlinedAt: !622)
!665 = !DILocation(line: 487, column: 12, scope: !662, inlinedAt: !622)
!666 = !DILocation(line: 487, column: 38, scope: !662, inlinedAt: !622)
!667 = !DILocation(line: 487, column: 30, scope: !662, inlinedAt: !622)
!668 = !DILocation(line: 487, column: 28, scope: !662, inlinedAt: !622)
!669 = !DILocation(line: 487, column: 46, scope: !662, inlinedAt: !622)
!670 = !DILocation(line: 485, column: 11, scope: !620, inlinedAt: !622)
!671 = !DILocation(line: 492, column: 6, scope: !620, inlinedAt: !622)
!672 = !DILocation(line: 479, column: 11, scope: !594, inlinedAt: !622)
!673 = !DILocation(line: 468, column: 7, scope: !594, inlinedAt: !622)
!674 = !DILocation(line: 495, column: 19, scope: !594, inlinedAt: !622)
!675 = !DILocation(line: 495, column: 23, scope: !594, inlinedAt: !622)
!676 = !DILocation(line: 495, column: 28, scope: !594, inlinedAt: !622)
!677 = !DILocation(line: 495, column: 10, scope: !594, inlinedAt: !622)
!678 = distinct !DIAssignID()
!679 = !DILocation(line: 496, column: 19, scope: !594, inlinedAt: !622)
!680 = !DILocation(line: 496, column: 33, scope: !594, inlinedAt: !622)
!681 = !DILocation(line: 496, column: 25, scope: !594, inlinedAt: !622)
!682 = !DILocation(line: 496, column: 23, scope: !594, inlinedAt: !622)
!683 = !DILocation(line: 496, column: 64, scope: !594, inlinedAt: !622)
!684 = !DILocation(line: 496, column: 63, scope: !594, inlinedAt: !622)
!685 = !DILocation(line: 496, column: 42, scope: !594, inlinedAt: !622)
!686 = !DILocation(line: 496, column: 6, scope: !594, inlinedAt: !622)
!687 = !DILocation(line: 496, column: 10, scope: !594, inlinedAt: !622)
!688 = distinct !DIAssignID()
!689 = !DILocation(line: 498, column: 16, scope: !594, inlinedAt: !622)
!690 = !DILocation(line: 498, column: 15, scope: !594, inlinedAt: !622)
!691 = !DILocation(line: 499, column: 12, scope: !594, inlinedAt: !622)
!692 = !DILocation(line: 499, column: 22, scope: !594, inlinedAt: !622)
!693 = !DILocation(line: 499, column: 15, scope: !594, inlinedAt: !622)
!694 = !DILocation(line: 499, column: 38, scope: !594, inlinedAt: !622)
!695 = !DILocation(line: 499, column: 30, scope: !594, inlinedAt: !622)
!696 = !DILocation(line: 499, column: 10, scope: !594, inlinedAt: !622)
!697 = distinct !DIAssignID()
!698 = !DILocation(line: 500, column: 12, scope: !594, inlinedAt: !622)
!699 = !DILocation(line: 500, column: 22, scope: !594, inlinedAt: !622)
!700 = !DILocation(line: 500, column: 35, scope: !594, inlinedAt: !622)
!701 = !DILocation(line: 500, column: 33, scope: !594, inlinedAt: !622)
!702 = !DILocation(line: 500, column: 20, scope: !594, inlinedAt: !622)
!703 = !DILocation(line: 500, column: 48, scope: !594, inlinedAt: !622)
!704 = !DILocation(line: 500, column: 47, scope: !594, inlinedAt: !622)
!705 = !DILocation(line: 500, column: 79, scope: !594, inlinedAt: !622)
!706 = !DILocation(line: 500, column: 82, scope: !594, inlinedAt: !622)
!707 = !DILocation(line: 500, column: 67, scope: !594, inlinedAt: !622)
!708 = !DILocation(line: 500, column: 65, scope: !594, inlinedAt: !622)
!709 = !DILocation(line: 500, column: 6, scope: !594, inlinedAt: !622)
!710 = !DILocation(line: 500, column: 10, scope: !594, inlinedAt: !622)
!711 = distinct !DIAssignID()
!712 = !DILocation(line: 502, column: 8, scope: !713, inlinedAt: !622)
!713 = distinct !DILexicalBlock(scope: !594, file: !2, line: 502, column: 6)
!714 = !DILocation(line: 502, column: 6, scope: !594, inlinedAt: !622)
!715 = !DILocation(line: 503, column: 5, scope: !716, inlinedAt: !622)
!716 = distinct !DILexicalBlock(scope: !713, file: !2, line: 503, column: 5)
!717 = !DILocation(line: 0, scope: !713, inlinedAt: !622)
!718 = !DILocation(line: 506, column: 1, scope: !594, inlinedAt: !622)
!719 = !DILocation(line: 984, column: 5, scope: !623)
!720 = !DILocation(line: 985, column: 21, scope: !721)
!721 = distinct !DILexicalBlock(scope: !591, file: !2, line: 985, column: 13)
!722 = !DILocation(line: 985, column: 13, scope: !591)
!723 = !DILocation(line: 986, column: 18, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !2, line: 985, column: 29)
!725 = !DILocation(line: 987, column: 5, scope: !724)
!726 = !DILocation(line: 988, column: 21, scope: !727)
!727 = distinct !DILexicalBlock(scope: !721, file: !2, line: 988, column: 13)
!728 = !DILocation(line: 988, column: 13, scope: !721)
!729 = !DILocation(line: 990, column: 15, scope: !730)
!730 = distinct !DILexicalBlock(scope: !727, file: !2, line: 988, column: 29)
!731 = !DILocation(line: 991, column: 10, scope: !730)
!732 = !DILocation(line: 991, column: 15, scope: !730)
!733 = !DILocation(line: 992, column: 15, scope: !730)
!734 = !DILocation(line: 993, column: 41, scope: !730)
!735 = !DILocation(line: 993, column: 39, scope: !730)
!736 = !DILocation(line: 993, column: 11, scope: !730)
!737 = !DILocation(line: 993, column: 15, scope: !730)
!738 = !DILocation(line: 995, column: 41, scope: !730)
!739 = !DILocation(line: 995, column: 39, scope: !730)
!740 = !DILocation(line: 995, column: 10, scope: !730)
!741 = !DILocation(line: 995, column: 15, scope: !730)
!742 = !DILocation(line: 997, column: 11, scope: !730)
!743 = !DILocation(line: 997, column: 15, scope: !730)
!744 = !DILocation(line: 998, column: 14, scope: !730)
!745 = !DILocation(line: 999, column: 14, scope: !730)
!746 = !DILocation(line: 1000, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !730, file: !2, line: 1000, column: 7)
!748 = !DILocation(line: 1003, column: 18, scope: !749)
!749 = distinct !DILexicalBlock(scope: !727, file: !2, line: 1002, column: 10)
!750 = !DILocation(line: 0, scope: !591)
!751 = !DILocation(line: 1007, column: 43, scope: !308)
!752 = !DILocation(line: 1008, column: 51, scope: !308)
!753 = !DILocation(line: 1008, column: 40, scope: !308)
!754 = !DILocation(line: 1008, column: 71, scope: !308)
!755 = !DILocation(line: 1008, column: 60, scope: !308)
!756 = !DILocation(line: 1008, column: 55, scope: !308)
!757 = !DILocation(line: 1009, column: 23, scope: !308)
!758 = !DILocation(line: 1009, column: 57, scope: !308)
!759 = !DILocation(line: 1009, column: 46, scope: !308)
!760 = !DILocation(line: 1010, column: 64, scope: !308)
!761 = !DILocation(line: 1010, column: 67, scope: !308)
!762 = !DILocation(line: 1010, column: 49, scope: !308)
!763 = !DILocation(line: 1010, column: 47, scope: !308)
!764 = !DILocation(line: 1010, column: 20, scope: !308)
!765 = !DILocation(line: 1011, column: 33, scope: !308)
!766 = !DILocation(line: 1015, column: 55, scope: !308)
!767 = !DILocation(line: 1015, column: 60, scope: !308)
!768 = !DILocation(line: 1015, column: 45, scope: !308)
!769 = !DILocation(line: 1015, column: 44, scope: !308)
!770 = !DILocation(line: 1016, column: 17, scope: !308)
!771 = !DILocation(line: 1017, column: 20, scope: !308)
!772 = !DILocation(line: 1017, column: 55, scope: !308)
!773 = !DILocation(line: 1017, column: 34, scope: !308)
!774 = !DILocation(line: 1018, column: 17, scope: !308)
!775 = !DILocation(line: 1019, column: 20, scope: !308)
!776 = !DILocation(line: 1019, column: 35, scope: !308)
!777 = !DILocation(line: 1022, column: 40, scope: !308)
!778 = !DILocalVariable(name: "lam_min", arg: 1, scope: !779, file: !2, line: 559, type: !289)
!779 = distinct !DISubprogram(name: "coulomb_G_recur", scope: !2, file: !2, line: 559, type: !780, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!28, !289, !290, !289, !289, !289, !289, !209, !209}
!782 = !{!778, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !799, !800, !801}
!783 = !DILocalVariable(name: "kmax", arg: 2, scope: !779, file: !2, line: 559, type: !290)
!784 = !DILocalVariable(name: "eta", arg: 3, scope: !779, file: !2, line: 560, type: !289)
!785 = !DILocalVariable(name: "x", arg: 4, scope: !779, file: !2, line: 560, type: !289)
!786 = !DILocalVariable(name: "G_lam_min", arg: 5, scope: !779, file: !2, line: 561, type: !289)
!787 = !DILocalVariable(name: "Gp_lam_min", arg: 6, scope: !779, file: !2, line: 561, type: !289)
!788 = !DILocalVariable(name: "G_lam_max", arg: 7, scope: !779, file: !2, line: 562, type: !209)
!789 = !DILocalVariable(name: "Gp_lam_max", arg: 8, scope: !779, file: !2, line: 562, type: !209)
!790 = !DILocalVariable(name: "x_inv", scope: !779, file: !2, line: 565, type: !78)
!791 = !DILocalVariable(name: "gcl", scope: !779, file: !2, line: 566, type: !78)
!792 = !DILocalVariable(name: "gpl", scope: !779, file: !2, line: 567, type: !78)
!793 = !DILocalVariable(name: "lam", scope: !779, file: !2, line: 568, type: !78)
!794 = !DILocalVariable(name: "k", scope: !779, file: !2, line: 569, type: !28)
!795 = !DILocalVariable(name: "el", scope: !796, file: !2, line: 572, type: !78)
!796 = distinct !DILexicalBlock(scope: !797, file: !2, line: 571, column: 26)
!797 = distinct !DILexicalBlock(scope: !798, file: !2, line: 571, column: 3)
!798 = distinct !DILexicalBlock(scope: !779, file: !2, line: 571, column: 3)
!799 = !DILocalVariable(name: "rl", scope: !796, file: !2, line: 573, type: !78)
!800 = !DILocalVariable(name: "sl", scope: !796, file: !2, line: 574, type: !78)
!801 = !DILocalVariable(name: "gcl1", scope: !796, file: !2, line: 575, type: !78)
!802 = !DILocation(line: 0, scope: !779, inlinedAt: !803)
!803 = distinct !DILocation(line: 1022, column: 15, scope: !308)
!804 = !DILocation(line: 571, column: 13, scope: !797, inlinedAt: !803)
!805 = !DILocation(line: 571, column: 3, scope: !798, inlinedAt: !803)
!806 = !DILocation(line: 572, column: 20, scope: !796, inlinedAt: !803)
!807 = !DILocation(line: 0, scope: !796, inlinedAt: !803)
!808 = !DILocation(line: 573, column: 17, scope: !796, inlinedAt: !803)
!809 = !DILocation(line: 574, column: 25, scope: !796, inlinedAt: !803)
!810 = !DILocation(line: 574, column: 20, scope: !796, inlinedAt: !803)
!811 = !DILocation(line: 575, column: 22, scope: !796, inlinedAt: !803)
!812 = !DILocation(line: 575, column: 27, scope: !796, inlinedAt: !803)
!813 = !DILocation(line: 575, column: 33, scope: !796, inlinedAt: !803)
!814 = !DILocation(line: 576, column: 15, scope: !796, inlinedAt: !803)
!815 = !DILocation(line: 576, column: 24, scope: !796, inlinedAt: !803)
!816 = !DILocation(line: 576, column: 20, scope: !796, inlinedAt: !803)
!817 = !DILocation(line: 571, column: 22, scope: !797, inlinedAt: !803)
!818 = distinct !{!818, !805, !819, !280}
!819 = !DILocation(line: 579, column: 3, scope: !798, inlinedAt: !803)
!820 = !DILocation(line: 1027, column: 13, scope: !308)
!821 = !DILocation(line: 1028, column: 8, scope: !308)
!822 = !DILocation(line: 1029, column: 37, scope: !308)
!823 = !DILocation(line: 1029, column: 12, scope: !308)
!824 = !DILocation(line: 1031, column: 14, scope: !308)
!825 = !DILocation(line: 1032, column: 9, scope: !308)
!826 = !DILocation(line: 1033, column: 38, scope: !308)
!827 = !DILocation(line: 1033, column: 13, scope: !308)
!828 = !DILocation(line: 1035, column: 35, scope: !308)
!829 = !DILocation(line: 1035, column: 17, scope: !308)
!830 = !DILocation(line: 1035, column: 72, scope: !308)
!831 = !DILocation(line: 1035, column: 53, scope: !308)
!832 = !DILocation(line: 1035, column: 51, scope: !308)
!833 = !DILocation(line: 1037, column: 13, scope: !308)
!834 = !DILocation(line: 1038, column: 27, scope: !308)
!835 = !DILocation(line: 1038, column: 25, scope: !308)
!836 = !DILocation(line: 1038, column: 8, scope: !308)
!837 = !DILocation(line: 1039, column: 31, scope: !308)
!838 = !DILocation(line: 1039, column: 21, scope: !308)
!839 = !DILocation(line: 1039, column: 19, scope: !308)
!840 = !DILocation(line: 1039, column: 35, scope: !308)
!841 = !DILocation(line: 1039, column: 53, scope: !308)
!842 = !DILocation(line: 1039, column: 12, scope: !308)
!843 = !DILocation(line: 1041, column: 14, scope: !308)
!844 = !DILocation(line: 1042, column: 28, scope: !308)
!845 = !DILocation(line: 1042, column: 26, scope: !308)
!846 = !DILocation(line: 1042, column: 9, scope: !308)
!847 = !DILocation(line: 1043, column: 54, scope: !308)
!848 = !DILocation(line: 1043, column: 13, scope: !308)
!849 = !DILocation(line: 1045, column: 12, scope: !308)
!850 = !DILocation(line: 1046, column: 12, scope: !308)
!851 = !DILocation(line: 1048, column: 12, scope: !308)
!852 = !DILocation(line: 1049, column: 3, scope: !309)
!853 = !DILocation(line: 1050, column: 18, scope: !338)
!854 = !DILocation(line: 1050, column: 13, scope: !338)
!855 = !DILocation(line: 1050, column: 11, scope: !309)
!856 = !DILocation(line: 1055, column: 5, scope: !337)
!857 = !DILocation(line: 1056, column: 5, scope: !337)
!858 = !DILocation(line: 1057, column: 5, scope: !337)
!859 = !DILocation(line: 1068, column: 18, scope: !337)
!860 = !{i32 0, i32 17}
!861 = !DILocation(line: 1069, column: 16, scope: !862)
!862 = distinct !DILexicalBlock(scope: !337, file: !2, line: 1069, column: 8)
!863 = !DILocation(line: 1069, column: 8, scope: !337)
!864 = !DILocation(line: 1071, column: 17, scope: !865)
!865 = distinct !DILexicalBlock(scope: !862, file: !2, line: 1069, column: 22)
!866 = !{i64 0, i64 8, !263, i64 8, i64 8, !263}
!867 = distinct !DIAssignID()
!868 = !DILocation(line: 1072, column: 17, scope: !865)
!869 = distinct !DIAssignID()
!870 = !DILocation(line: 1073, column: 19, scope: !865)
!871 = !DILocation(line: 1073, column: 17, scope: !865)
!872 = distinct !DIAssignID()
!873 = !DILocation(line: 1074, column: 5, scope: !865)
!874 = !DILocation(line: 1076, column: 20, scope: !875)
!875 = distinct !DILexicalBlock(scope: !862, file: !2, line: 1075, column: 10)
!876 = !DILocation(line: 0, scope: !862)
!877 = !DILocation(line: 0, scope: !465, inlinedAt: !878)
!878 = distinct !DILocation(line: 1079, column: 22, scope: !337)
!879 = !DILocation(line: 605, column: 31, scope: !465, inlinedAt: !878)
!880 = !DILocation(line: 606, column: 35, scope: !465, inlinedAt: !878)
!881 = !DILocation(line: 606, column: 41, scope: !465, inlinedAt: !878)
!882 = !DILocation(line: 609, column: 18, scope: !465, inlinedAt: !878)
!883 = !DILocation(line: 609, column: 26, scope: !465, inlinedAt: !878)
!884 = !DILocation(line: 609, column: 22, scope: !465, inlinedAt: !878)
!885 = !DILocation(line: 616, column: 6, scope: !499, inlinedAt: !878)
!886 = !DILocation(line: 616, column: 14, scope: !499, inlinedAt: !878)
!887 = !DILocation(line: 616, column: 6, scope: !465, inlinedAt: !878)
!888 = !DILocation(line: 620, column: 3, scope: !465, inlinedAt: !878)
!889 = !DILocation(line: 621, column: 21, scope: !486, inlinedAt: !878)
!890 = !DILocation(line: 0, scope: !486, inlinedAt: !878)
!891 = !DILocation(line: 622, column: 22, scope: !486, inlinedAt: !878)
!892 = !DILocation(line: 623, column: 26, scope: !486, inlinedAt: !878)
!893 = !DILocation(line: 623, column: 22, scope: !486, inlinedAt: !878)
!894 = !DILocation(line: 624, column: 22, scope: !486, inlinedAt: !878)
!895 = !DILocation(line: 624, column: 40, scope: !486, inlinedAt: !878)
!896 = !DILocation(line: 624, column: 36, scope: !486, inlinedAt: !878)
!897 = !DILocation(line: 624, column: 28, scope: !486, inlinedAt: !878)
!898 = !DILocation(line: 625, column: 21, scope: !486, inlinedAt: !878)
!899 = !DILocation(line: 625, column: 15, scope: !486, inlinedAt: !878)
!900 = !DILocation(line: 626, column: 21, scope: !486, inlinedAt: !878)
!901 = !DILocation(line: 626, column: 15, scope: !486, inlinedAt: !878)
!902 = !DILocation(line: 627, column: 8, scope: !517, inlinedAt: !878)
!903 = !DILocation(line: 627, column: 16, scope: !517, inlinedAt: !878)
!904 = !DILocation(line: 627, column: 8, scope: !486, inlinedAt: !878)
!905 = !DILocation(line: 628, column: 8, scope: !521, inlinedAt: !878)
!906 = !DILocation(line: 628, column: 16, scope: !521, inlinedAt: !878)
!907 = !DILocation(line: 629, column: 12, scope: !486, inlinedAt: !878)
!908 = !DILocation(line: 630, column: 12, scope: !486, inlinedAt: !878)
!909 = !DILocation(line: 631, column: 12, scope: !486, inlinedAt: !878)
!910 = !DILocation(line: 637, column: 12, scope: !527, inlinedAt: !878)
!911 = !DILocation(line: 637, column: 9, scope: !486, inlinedAt: !878)
!912 = !DILocation(line: 639, column: 7, scope: !530, inlinedAt: !878)
!913 = !DILocation(line: 643, column: 16, scope: !465, inlinedAt: !878)
!914 = !DILocation(line: 643, column: 9, scope: !465, inlinedAt: !878)
!915 = !DILocation(line: 643, column: 22, scope: !465, inlinedAt: !878)
!916 = !DILocation(line: 642, column: 3, scope: !486, inlinedAt: !878)
!917 = distinct !{!917, !888, !918, !280}
!918 = !DILocation(line: 643, column: 31, scope: !465, inlinedAt: !878)
!919 = !DILocation(line: 1080, column: 8, scope: !337)
!920 = !DILocation(line: 0, scope: !465, inlinedAt: !921)
!921 = distinct !DILocation(line: 1086, column: 24, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !2, line: 1085, column: 10)
!923 = distinct !DILexicalBlock(scope: !337, file: !2, line: 1080, column: 8)
!924 = !DILocation(line: 606, column: 35, scope: !465, inlinedAt: !921)
!925 = !DILocation(line: 606, column: 41, scope: !465, inlinedAt: !921)
!926 = !DILocation(line: 609, column: 18, scope: !465, inlinedAt: !921)
!927 = !DILocation(line: 609, column: 26, scope: !465, inlinedAt: !921)
!928 = !DILocation(line: 609, column: 22, scope: !465, inlinedAt: !921)
!929 = !DILocation(line: 616, column: 6, scope: !499, inlinedAt: !921)
!930 = !DILocation(line: 616, column: 14, scope: !499, inlinedAt: !921)
!931 = !DILocation(line: 616, column: 6, scope: !465, inlinedAt: !921)
!932 = !DILocation(line: 620, column: 3, scope: !465, inlinedAt: !921)
!933 = !DILocation(line: 621, column: 21, scope: !486, inlinedAt: !921)
!934 = !DILocation(line: 0, scope: !486, inlinedAt: !921)
!935 = !DILocation(line: 622, column: 22, scope: !486, inlinedAt: !921)
!936 = !DILocation(line: 623, column: 26, scope: !486, inlinedAt: !921)
!937 = !DILocation(line: 623, column: 22, scope: !486, inlinedAt: !921)
!938 = !DILocation(line: 624, column: 22, scope: !486, inlinedAt: !921)
!939 = !DILocation(line: 624, column: 40, scope: !486, inlinedAt: !921)
!940 = !DILocation(line: 624, column: 36, scope: !486, inlinedAt: !921)
!941 = !DILocation(line: 624, column: 28, scope: !486, inlinedAt: !921)
!942 = !DILocation(line: 625, column: 21, scope: !486, inlinedAt: !921)
!943 = !DILocation(line: 625, column: 15, scope: !486, inlinedAt: !921)
!944 = !DILocation(line: 626, column: 21, scope: !486, inlinedAt: !921)
!945 = !DILocation(line: 626, column: 15, scope: !486, inlinedAt: !921)
!946 = !DILocation(line: 627, column: 8, scope: !517, inlinedAt: !921)
!947 = !DILocation(line: 627, column: 16, scope: !517, inlinedAt: !921)
!948 = !DILocation(line: 627, column: 8, scope: !486, inlinedAt: !921)
!949 = !DILocation(line: 628, column: 8, scope: !521, inlinedAt: !921)
!950 = !DILocation(line: 628, column: 16, scope: !521, inlinedAt: !921)
!951 = !DILocation(line: 629, column: 12, scope: !486, inlinedAt: !921)
!952 = !DILocation(line: 630, column: 12, scope: !486, inlinedAt: !921)
!953 = !DILocation(line: 631, column: 12, scope: !486, inlinedAt: !921)
!954 = !DILocation(line: 637, column: 12, scope: !527, inlinedAt: !921)
!955 = !DILocation(line: 637, column: 9, scope: !486, inlinedAt: !921)
!956 = !DILocation(line: 639, column: 7, scope: !530, inlinedAt: !921)
!957 = !DILocation(line: 643, column: 16, scope: !465, inlinedAt: !921)
!958 = !DILocation(line: 643, column: 9, scope: !465, inlinedAt: !921)
!959 = !DILocation(line: 643, column: 22, scope: !465, inlinedAt: !921)
!960 = !DILocation(line: 642, column: 3, scope: !486, inlinedAt: !921)
!961 = distinct !{!961, !932, !962, !280}
!962 = !DILocation(line: 643, column: 31, scope: !465, inlinedAt: !921)
!963 = !DILocation(line: 0, scope: !923)
!964 = !DILocation(line: 1089, column: 22, scope: !337)
!965 = !DILocation(line: 1089, column: 12, scope: !337)
!966 = !DILocation(line: 1090, column: 22, scope: !337)
!967 = !DILocation(line: 1090, column: 8, scope: !337)
!968 = !DILocation(line: 1090, column: 12, scope: !337)
!969 = !DILocation(line: 1092, column: 22, scope: !337)
!970 = !DILocation(line: 1092, column: 12, scope: !337)
!971 = !DILocation(line: 1093, column: 22, scope: !337)
!972 = !DILocation(line: 1093, column: 8, scope: !337)
!973 = !DILocation(line: 1093, column: 12, scope: !337)
!974 = !DILocation(line: 1095, column: 32, scope: !337)
!975 = !DILocation(line: 1095, column: 14, scope: !337)
!976 = !DILocation(line: 1096, column: 16, scope: !337)
!977 = !DILocation(line: 1096, column: 38, scope: !337)
!978 = !DILocation(line: 1096, column: 9, scope: !337)
!979 = !DILocation(line: 1097, column: 36, scope: !337)
!980 = !DILocation(line: 1097, column: 35, scope: !337)
!981 = !DILocation(line: 1097, column: 13, scope: !337)
!982 = !DILocation(line: 1099, column: 32, scope: !337)
!983 = !DILocation(line: 1099, column: 60, scope: !337)
!984 = !DILocation(line: 1099, column: 51, scope: !337)
!985 = !DILocation(line: 1099, column: 46, scope: !337)
!986 = !DILocation(line: 1099, column: 14, scope: !337)
!987 = !DILocation(line: 1100, column: 16, scope: !337)
!988 = !DILocation(line: 1100, column: 38, scope: !337)
!989 = !DILocation(line: 1100, column: 9, scope: !337)
!990 = !DILocation(line: 1101, column: 53, scope: !337)
!991 = !DILocation(line: 1101, column: 56, scope: !337)
!992 = !DILocation(line: 1101, column: 38, scope: !337)
!993 = !DILocation(line: 1101, column: 13, scope: !337)
!994 = !DILocation(line: 1103, column: 14, scope: !337)
!995 = !DILocation(line: 1103, column: 12, scope: !337)
!996 = !DILocation(line: 1104, column: 14, scope: !337)
!997 = !DILocation(line: 1104, column: 12, scope: !337)
!998 = !DILocation(line: 1106, column: 19, scope: !999)
!999 = distinct !DILexicalBlock(scope: !337, file: !2, line: 1106, column: 8)
!1000 = !DILocation(line: 1106, column: 34, scope: !999)
!1001 = !DILocation(line: 1107, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 1107, column: 7)
!1003 = distinct !DILexicalBlock(scope: !999, file: !2, line: 1106, column: 64)
!1004 = !DILocation(line: 1110, column: 14, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !999, file: !2, line: 1109, column: 10)
!1006 = !DILocation(line: 1110, column: 7, scope: !1005)
!1007 = !DILocation(line: 0, scope: !999)
!1008 = !DILocation(line: 1112, column: 3, scope: !338)
!1009 = !DILocation(line: 0, scope: !354)
!1010 = !DILocation(line: 1124, column: 36, scope: !354)
!1011 = !DILocation(line: 1124, column: 41, scope: !354)
!1012 = !DILocation(line: 1124, column: 38, scope: !354)
!1013 = !DILocation(line: 1124, column: 31, scope: !354)
!1014 = !DILocation(line: 1124, column: 22, scope: !354)
!1015 = !DILocation(line: 1125, column: 30, scope: !354)
!1016 = !DILocation(line: 1125, column: 34, scope: !354)
!1017 = !DILocation(line: 1125, column: 19, scope: !354)
!1018 = !DILocation(line: 1126, column: 36, scope: !354)
!1019 = !DILocation(line: 1126, column: 34, scope: !354)
!1020 = !DILocation(line: 1127, column: 28, scope: !354)
!1021 = !DILocation(line: 0, scope: !465, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 1143, column: 20, scope: !354)
!1023 = !DILocation(line: 605, column: 31, scope: !465, inlinedAt: !1022)
!1024 = !DILocation(line: 606, column: 35, scope: !465, inlinedAt: !1022)
!1025 = !DILocation(line: 606, column: 41, scope: !465, inlinedAt: !1022)
!1026 = !DILocation(line: 609, column: 18, scope: !465, inlinedAt: !1022)
!1027 = !DILocation(line: 609, column: 26, scope: !465, inlinedAt: !1022)
!1028 = !DILocation(line: 609, column: 22, scope: !465, inlinedAt: !1022)
!1029 = !DILocation(line: 616, column: 6, scope: !499, inlinedAt: !1022)
!1030 = !DILocation(line: 616, column: 14, scope: !499, inlinedAt: !1022)
!1031 = !DILocation(line: 616, column: 6, scope: !465, inlinedAt: !1022)
!1032 = !DILocation(line: 620, column: 3, scope: !465, inlinedAt: !1022)
!1033 = !DILocation(line: 621, column: 21, scope: !486, inlinedAt: !1022)
!1034 = !DILocation(line: 0, scope: !486, inlinedAt: !1022)
!1035 = !DILocation(line: 622, column: 22, scope: !486, inlinedAt: !1022)
!1036 = !DILocation(line: 623, column: 26, scope: !486, inlinedAt: !1022)
!1037 = !DILocation(line: 623, column: 22, scope: !486, inlinedAt: !1022)
!1038 = !DILocation(line: 624, column: 22, scope: !486, inlinedAt: !1022)
!1039 = !DILocation(line: 624, column: 40, scope: !486, inlinedAt: !1022)
!1040 = !DILocation(line: 624, column: 36, scope: !486, inlinedAt: !1022)
!1041 = !DILocation(line: 624, column: 28, scope: !486, inlinedAt: !1022)
!1042 = !DILocation(line: 625, column: 21, scope: !486, inlinedAt: !1022)
!1043 = !DILocation(line: 625, column: 15, scope: !486, inlinedAt: !1022)
!1044 = !DILocation(line: 626, column: 21, scope: !486, inlinedAt: !1022)
!1045 = !DILocation(line: 626, column: 15, scope: !486, inlinedAt: !1022)
!1046 = !DILocation(line: 627, column: 8, scope: !517, inlinedAt: !1022)
!1047 = !DILocation(line: 627, column: 16, scope: !517, inlinedAt: !1022)
!1048 = !DILocation(line: 627, column: 8, scope: !486, inlinedAt: !1022)
!1049 = !DILocation(line: 628, column: 8, scope: !521, inlinedAt: !1022)
!1050 = !DILocation(line: 628, column: 16, scope: !521, inlinedAt: !1022)
!1051 = !DILocation(line: 629, column: 12, scope: !486, inlinedAt: !1022)
!1052 = !DILocation(line: 630, column: 12, scope: !486, inlinedAt: !1022)
!1053 = !DILocation(line: 631, column: 12, scope: !486, inlinedAt: !1022)
!1054 = !DILocation(line: 632, column: 10, scope: !1055, inlinedAt: !1022)
!1055 = distinct !DILexicalBlock(scope: !486, file: !2, line: 632, column: 8)
!1056 = !DILocation(line: 632, column: 8, scope: !486, inlinedAt: !1022)
!1057 = !DILocation(line: 637, column: 12, scope: !527, inlinedAt: !1022)
!1058 = !DILocation(line: 637, column: 9, scope: !486, inlinedAt: !1022)
!1059 = !DILocation(line: 639, column: 7, scope: !530, inlinedAt: !1022)
!1060 = !DILocation(line: 641, column: 5, scope: !486, inlinedAt: !1022)
!1061 = !DILocation(line: 643, column: 16, scope: !465, inlinedAt: !1022)
!1062 = !DILocation(line: 643, column: 9, scope: !465, inlinedAt: !1022)
!1063 = !DILocation(line: 643, column: 22, scope: !465, inlinedAt: !1022)
!1064 = !DILocation(line: 642, column: 3, scope: !486, inlinedAt: !1022)
!1065 = distinct !{!1065, !1032, !1066, !280}
!1066 = !DILocation(line: 643, column: 31, scope: !465, inlinedAt: !1022)
!1067 = !DILocation(line: 1153, column: 29, scope: !354)
!1068 = !DILocation(line: 1154, column: 32, scope: !354)
!1069 = !DILocation(line: 1157, column: 21, scope: !354)
!1070 = !DILocation(line: 0, scope: !541, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 1158, column: 15, scope: !354)
!1072 = !DILocation(line: 533, column: 18, scope: !560, inlinedAt: !1071)
!1073 = !DILocation(line: 533, column: 3, scope: !561, inlinedAt: !1071)
!1074 = !DILocation(line: 529, column: 30, scope: !541, inlinedAt: !1071)
!1075 = !DILocation(line: 529, column: 28, scope: !541, inlinedAt: !1071)
!1076 = !DILocation(line: 533, scope: !561, inlinedAt: !1071)
!1077 = !DILocation(line: 534, column: 20, scope: !559, inlinedAt: !1071)
!1078 = !DILocation(line: 0, scope: !559, inlinedAt: !1071)
!1079 = !DILocation(line: 535, column: 17, scope: !559, inlinedAt: !1071)
!1080 = !DILocation(line: 536, column: 26, scope: !559, inlinedAt: !1071)
!1081 = !DILocation(line: 536, column: 21, scope: !559, inlinedAt: !1071)
!1082 = !DILocation(line: 538, column: 18, scope: !559, inlinedAt: !1071)
!1083 = !DILocation(line: 538, column: 22, scope: !559, inlinedAt: !1071)
!1084 = !DILocation(line: 538, column: 28, scope: !559, inlinedAt: !1071)
!1085 = !DILocation(line: 539, column: 21, scope: !559, inlinedAt: !1071)
!1086 = !DILocation(line: 539, column: 30, scope: !559, inlinedAt: !1071)
!1087 = !DILocation(line: 539, column: 25, scope: !559, inlinedAt: !1071)
!1088 = !DILocation(line: 541, column: 9, scope: !559, inlinedAt: !1071)
!1089 = distinct !{!1089, !1073, !1090, !280}
!1090 = !DILocation(line: 542, column: 3, scope: !561, inlinedAt: !1071)
!1091 = !DILocation(line: 1162, column: 43, scope: !354)
!1092 = !DILocalVariable(name: "lambda", arg: 1, scope: !1093, file: !2, line: 735, type: !289)
!1093 = distinct !DISubprogram(name: "coulomb_CF2", scope: !2, file: !2, line: 735, type: !1094, scopeLine: 738, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!28, !289, !289, !289, !209, !209, !468}
!1096 = !{!1092, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122}
!1097 = !DILocalVariable(name: "eta", arg: 2, scope: !1093, file: !2, line: 735, type: !289)
!1098 = !DILocalVariable(name: "x", arg: 3, scope: !1093, file: !2, line: 735, type: !289)
!1099 = !DILocalVariable(name: "result_P", arg: 4, scope: !1093, file: !2, line: 736, type: !209)
!1100 = !DILocalVariable(name: "result_Q", arg: 5, scope: !1093, file: !2, line: 736, type: !209)
!1101 = !DILocalVariable(name: "count", arg: 6, scope: !1093, file: !2, line: 736, type: !468)
!1102 = !DILocalVariable(name: "status", scope: !1093, file: !2, line: 739, type: !28)
!1103 = !DILocalVariable(name: "CF2_acc", scope: !1093, file: !2, line: 741, type: !289)
!1104 = !DILocalVariable(name: "CF2_abort", scope: !1093, file: !2, line: 742, type: !289)
!1105 = !DILocalVariable(name: "wi", scope: !1093, file: !2, line: 744, type: !289)
!1106 = !DILocalVariable(name: "x_inv", scope: !1093, file: !2, line: 745, type: !289)
!1107 = !DILocalVariable(name: "e2mm1", scope: !1093, file: !2, line: 746, type: !289)
!1108 = !DILocalVariable(name: "ar", scope: !1093, file: !2, line: 748, type: !78)
!1109 = !DILocalVariable(name: "ai", scope: !1093, file: !2, line: 749, type: !78)
!1110 = !DILocalVariable(name: "br", scope: !1093, file: !2, line: 751, type: !78)
!1111 = !DILocalVariable(name: "bi", scope: !1093, file: !2, line: 752, type: !78)
!1112 = !DILocalVariable(name: "dr", scope: !1093, file: !2, line: 754, type: !78)
!1113 = !DILocalVariable(name: "di", scope: !1093, file: !2, line: 755, type: !78)
!1114 = !DILocalVariable(name: "dp", scope: !1093, file: !2, line: 757, type: !78)
!1115 = !DILocalVariable(name: "dq", scope: !1093, file: !2, line: 758, type: !78)
!1116 = !DILocalVariable(name: "A", scope: !1093, file: !2, line: 760, type: !78)
!1117 = !DILocalVariable(name: "B", scope: !1093, file: !2, line: 760, type: !78)
!1118 = !DILocalVariable(name: "C", scope: !1093, file: !2, line: 760, type: !78)
!1119 = !DILocalVariable(name: "D", scope: !1093, file: !2, line: 760, type: !78)
!1120 = !DILocalVariable(name: "pk", scope: !1093, file: !2, line: 762, type: !78)
!1121 = !DILocalVariable(name: "P", scope: !1093, file: !2, line: 763, type: !78)
!1122 = !DILocalVariable(name: "Q", scope: !1093, file: !2, line: 764, type: !78)
!1123 = !DILocation(line: 0, scope: !1093, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 1165, column: 16, scope: !354)
!1125 = !DILocation(line: 746, column: 27, scope: !1093, inlinedAt: !1124)
!1126 = !DILocation(line: 746, column: 49, scope: !1093, inlinedAt: !1124)
!1127 = !DILocation(line: 746, column: 40, scope: !1093, inlinedAt: !1124)
!1128 = !DILocation(line: 746, column: 32, scope: !1093, inlinedAt: !1124)
!1129 = !DILocation(line: 748, column: 15, scope: !1093, inlinedAt: !1124)
!1130 = !DILocation(line: 751, column: 23, scope: !1093, inlinedAt: !1124)
!1131 = !DILocation(line: 751, column: 19, scope: !1093, inlinedAt: !1124)
!1132 = !DILocation(line: 754, column: 22, scope: !1093, inlinedAt: !1124)
!1133 = !DILocation(line: 754, column: 26, scope: !1093, inlinedAt: !1124)
!1134 = !DILocation(line: 754, column: 18, scope: !1093, inlinedAt: !1124)
!1135 = !DILocation(line: 755, column: 18, scope: !1093, inlinedAt: !1124)
!1136 = !DILocation(line: 757, column: 15, scope: !1093, inlinedAt: !1124)
!1137 = !DILocation(line: 757, column: 33, scope: !1093, inlinedAt: !1124)
!1138 = !DILocation(line: 757, column: 29, scope: !1093, inlinedAt: !1124)
!1139 = !DILocation(line: 757, column: 21, scope: !1093, inlinedAt: !1124)
!1140 = !DILocation(line: 758, column: 25, scope: !1093, inlinedAt: !1124)
!1141 = !DILocation(line: 758, column: 33, scope: !1093, inlinedAt: !1124)
!1142 = !DILocation(line: 758, column: 29, scope: !1093, inlinedAt: !1124)
!1143 = !DILocation(line: 758, column: 21, scope: !1093, inlinedAt: !1124)
!1144 = !DILocation(line: 764, column: 25, scope: !1093, inlinedAt: !1124)
!1145 = !DILocation(line: 764, column: 20, scope: !1093, inlinedAt: !1124)
!1146 = !DILocation(line: 768, column: 3, scope: !1093, inlinedAt: !1124)
!1147 = !DILocation(line: 769, column: 7, scope: !1148, inlinedAt: !1124)
!1148 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 768, column: 6)
!1149 = !DILocation(line: 770, column: 7, scope: !1148, inlinedAt: !1124)
!1150 = !DILocation(line: 771, column: 8, scope: !1148, inlinedAt: !1124)
!1151 = !DILocation(line: 785, column: 11, scope: !1152, inlinedAt: !1124)
!1152 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 785, column: 8)
!1153 = !DILocation(line: 785, column: 8, scope: !1148, inlinedAt: !1124)
!1154 = !DILocation(line: 793, column: 36, scope: !1155, inlinedAt: !1124)
!1155 = distinct !DILexicalBlock(scope: !1093, file: !2, line: 793, column: 6)
!1156 = !DILocation(line: 774, column: 8, scope: !1148, inlinedAt: !1124)
!1157 = !DILocation(line: 772, column: 8, scope: !1148, inlinedAt: !1124)
!1158 = !DILocation(line: 775, column: 12, scope: !1148, inlinedAt: !1124)
!1159 = !DILocation(line: 773, column: 8, scope: !1148, inlinedAt: !1124)
!1160 = !DILocation(line: 775, column: 20, scope: !1148, inlinedAt: !1124)
!1161 = !DILocation(line: 775, column: 16, scope: !1148, inlinedAt: !1124)
!1162 = !DILocation(line: 775, column: 24, scope: !1148, inlinedAt: !1124)
!1163 = !DILocation(line: 777, column: 16, scope: !1148, inlinedAt: !1124)
!1164 = !DILocation(line: 776, column: 12, scope: !1148, inlinedAt: !1124)
!1165 = !DILocation(line: 776, column: 20, scope: !1148, inlinedAt: !1124)
!1166 = !DILocation(line: 776, column: 16, scope: !1148, inlinedAt: !1124)
!1167 = !DILocation(line: 776, column: 24, scope: !1148, inlinedAt: !1124)
!1168 = !DILocation(line: 777, column: 23, scope: !1148, inlinedAt: !1124)
!1169 = !DILocation(line: 777, column: 19, scope: !1148, inlinedAt: !1124)
!1170 = !DILocation(line: 777, column: 13, scope: !1148, inlinedAt: !1124)
!1171 = !DILocation(line: 778, column: 12, scope: !1148, inlinedAt: !1124)
!1172 = !DILocation(line: 781, column: 12, scope: !1148, inlinedAt: !1124)
!1173 = !DILocation(line: 779, column: 10, scope: !1148, inlinedAt: !1124)
!1174 = !DILocation(line: 779, column: 12, scope: !1148, inlinedAt: !1124)
!1175 = !DILocation(line: 781, column: 20, scope: !1148, inlinedAt: !1124)
!1176 = !DILocation(line: 781, column: 16, scope: !1148, inlinedAt: !1124)
!1177 = !DILocation(line: 783, column: 12, scope: !1148, inlinedAt: !1124)
!1178 = !DILocation(line: 780, column: 12, scope: !1148, inlinedAt: !1124)
!1179 = !DILocation(line: 780, column: 20, scope: !1148, inlinedAt: !1124)
!1180 = !DILocation(line: 780, column: 16, scope: !1148, inlinedAt: !1124)
!1181 = !DILocation(line: 780, column: 24, scope: !1148, inlinedAt: !1124)
!1182 = !DILocation(line: 783, column: 20, scope: !1148, inlinedAt: !1124)
!1183 = !DILocation(line: 783, column: 16, scope: !1148, inlinedAt: !1124)
!1184 = !DILocation(line: 782, column: 12, scope: !1148, inlinedAt: !1124)
!1185 = !DILocation(line: 782, column: 20, scope: !1148, inlinedAt: !1124)
!1186 = !DILocation(line: 782, column: 16, scope: !1148, inlinedAt: !1124)
!1187 = !DILocation(line: 789, column: 5, scope: !1148, inlinedAt: !1124)
!1188 = !DILocation(line: 791, column: 9, scope: !1093, inlinedAt: !1124)
!1189 = !DILocation(line: 791, column: 18, scope: !1093, inlinedAt: !1124)
!1190 = !DILocation(line: 791, column: 17, scope: !1093, inlinedAt: !1124)
!1191 = !DILocation(line: 791, column: 30, scope: !1093, inlinedAt: !1124)
!1192 = !DILocation(line: 791, column: 38, scope: !1093, inlinedAt: !1124)
!1193 = !DILocation(line: 791, column: 37, scope: !1093, inlinedAt: !1124)
!1194 = !DILocation(line: 791, column: 46, scope: !1093, inlinedAt: !1124)
!1195 = !DILocation(line: 791, column: 27, scope: !1093, inlinedAt: !1124)
!1196 = !DILocation(line: 790, column: 3, scope: !1148, inlinedAt: !1124)
!1197 = distinct !{!1197, !1146, !1198, !280}
!1198 = !DILocation(line: 791, column: 54, scope: !1093, inlinedAt: !1124)
!1199 = !DILocation(line: 793, column: 35, scope: !1155, inlinedAt: !1124)
!1200 = !DILocation(line: 793, column: 8, scope: !1155, inlinedAt: !1124)
!1201 = !DILocation(line: 793, column: 6, scope: !1093, inlinedAt: !1124)
!1202 = !DILocation(line: 1166, column: 31, scope: !354)
!1203 = !DILocation(line: 1167, column: 18, scope: !354)
!1204 = !DILocation(line: 1169, column: 22, scope: !354)
!1205 = !DILocation(line: 1171, column: 45, scope: !354)
!1206 = !DILocation(line: 1171, column: 51, scope: !354)
!1207 = !DILocation(line: 1171, column: 62, scope: !354)
!1208 = !DILocation(line: 1171, column: 35, scope: !354)
!1209 = !DILocation(line: 1171, column: 33, scope: !354)
!1210 = !DILocation(line: 1173, column: 24, scope: !354)
!1211 = !DILocation(line: 1174, column: 29, scope: !354)
!1212 = !DILocation(line: 1174, column: 37, scope: !354)
!1213 = !DILocation(line: 1174, column: 50, scope: !354)
!1214 = !DILocation(line: 1177, column: 25, scope: !354)
!1215 = !DILocation(line: 1178, column: 14, scope: !354)
!1216 = !DILocation(line: 1179, column: 14, scope: !354)
!1217 = !DILocation(line: 1182, column: 21, scope: !354)
!1218 = !DILocation(line: 0, scope: !779, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 1183, column: 15, scope: !354)
!1220 = !DILocation(line: 571, column: 13, scope: !797, inlinedAt: !1219)
!1221 = !DILocation(line: 571, column: 3, scope: !798, inlinedAt: !1219)
!1222 = !DILocation(line: 572, column: 20, scope: !796, inlinedAt: !1219)
!1223 = !DILocation(line: 0, scope: !796, inlinedAt: !1219)
!1224 = !DILocation(line: 573, column: 17, scope: !796, inlinedAt: !1219)
!1225 = !DILocation(line: 574, column: 25, scope: !796, inlinedAt: !1219)
!1226 = !DILocation(line: 574, column: 20, scope: !796, inlinedAt: !1219)
!1227 = !DILocation(line: 575, column: 22, scope: !796, inlinedAt: !1219)
!1228 = !DILocation(line: 575, column: 27, scope: !796, inlinedAt: !1219)
!1229 = !DILocation(line: 575, column: 33, scope: !796, inlinedAt: !1219)
!1230 = !DILocation(line: 576, column: 15, scope: !796, inlinedAt: !1219)
!1231 = !DILocation(line: 576, column: 24, scope: !796, inlinedAt: !1219)
!1232 = !DILocation(line: 576, column: 20, scope: !796, inlinedAt: !1219)
!1233 = !DILocation(line: 571, column: 22, scope: !797, inlinedAt: !1219)
!1234 = distinct !{!1234, !1221, !1235, !280}
!1235 = !DILocation(line: 579, column: 3, scope: !798, inlinedAt: !1219)
!1236 = !DILocation(line: 1188, column: 29, scope: !354)
!1237 = !DILocation(line: 1188, column: 41, scope: !354)
!1238 = !DILocation(line: 1188, column: 57, scope: !354)
!1239 = !DILocation(line: 1188, column: 73, scope: !354)
!1240 = !DILocation(line: 1188, column: 19, scope: !354)
!1241 = !DILocation(line: 1190, column: 13, scope: !354)
!1242 = !DILocation(line: 1191, column: 18, scope: !354)
!1243 = !DILocation(line: 1191, column: 30, scope: !354)
!1244 = !DILocation(line: 1191, column: 49, scope: !354)
!1245 = !DILocation(line: 1191, column: 47, scope: !354)
!1246 = !DILocation(line: 1191, column: 8, scope: !354)
!1247 = !DILocation(line: 1191, column: 13, scope: !354)
!1248 = !DILocation(line: 1193, column: 13, scope: !354)
!1249 = !DILocation(line: 1194, column: 49, scope: !354)
!1250 = !DILocation(line: 1194, column: 47, scope: !354)
!1251 = !DILocation(line: 1194, column: 9, scope: !354)
!1252 = !DILocation(line: 1194, column: 13, scope: !354)
!1253 = !DILocation(line: 1196, column: 13, scope: !354)
!1254 = !DILocation(line: 1197, column: 49, scope: !354)
!1255 = !DILocation(line: 1197, column: 47, scope: !354)
!1256 = !DILocation(line: 1197, column: 8, scope: !354)
!1257 = !DILocation(line: 1197, column: 13, scope: !354)
!1258 = !DILocation(line: 1199, column: 13, scope: !354)
!1259 = !DILocation(line: 1200, column: 49, scope: !354)
!1260 = !DILocation(line: 1200, column: 47, scope: !354)
!1261 = !DILocation(line: 1200, column: 9, scope: !354)
!1262 = !DILocation(line: 1200, column: 13, scope: !354)
!1263 = !DILocation(line: 1202, column: 12, scope: !354)
!1264 = !DILocation(line: 1203, column: 12, scope: !354)
!1265 = !DILocation(line: 1205, column: 12, scope: !354)
!1266 = !DILocation(line: 0, scope: !306)
!1267 = !DILocation(line: 1207, column: 1, scope: !286)
!1268 = distinct !DISubprogram(name: "coulomb_FG0_series", scope: !2, file: !2, line: 368, type: !595, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1297, !1298, !1299, !1302, !1303, !1304}
!1270 = !DILocalVariable(name: "eta", arg: 1, scope: !1268, file: !2, line: 368, type: !289)
!1271 = !DILocalVariable(name: "x", arg: 2, scope: !1268, file: !2, line: 368, type: !289)
!1272 = !DILocalVariable(name: "F", arg: 3, scope: !1268, file: !2, line: 369, type: !79)
!1273 = !DILocalVariable(name: "G", arg: 4, scope: !1268, file: !2, line: 369, type: !79)
!1274 = !DILocalVariable(name: "max_iter", scope: !1268, file: !2, line: 371, type: !290)
!1275 = !DILocalVariable(name: "x2", scope: !1268, file: !2, line: 372, type: !289)
!1276 = !DILocalVariable(name: "tex", scope: !1268, file: !2, line: 373, type: !289)
!1277 = !DILocalVariable(name: "C0", scope: !1268, file: !2, line: 374, type: !80)
!1278 = !DILocalVariable(name: "stat_CL", scope: !1268, file: !2, line: 375, type: !28)
!1279 = !DILocalVariable(name: "r1pie", scope: !1268, file: !2, line: 376, type: !80)
!1280 = !DILocalVariable(name: "psi_stat", scope: !1268, file: !2, line: 377, type: !28)
!1281 = !DILocalVariable(name: "u_mm2", scope: !1268, file: !2, line: 378, type: !78)
!1282 = !DILocalVariable(name: "u_mm1", scope: !1268, file: !2, line: 379, type: !78)
!1283 = !DILocalVariable(name: "u_m", scope: !1268, file: !2, line: 380, type: !78)
!1284 = !DILocalVariable(name: "v_mm2", scope: !1268, file: !2, line: 381, type: !78)
!1285 = !DILocalVariable(name: "v_mm1", scope: !1268, file: !2, line: 382, type: !78)
!1286 = !DILocalVariable(name: "v_m", scope: !1268, file: !2, line: 383, type: !78)
!1287 = !DILocalVariable(name: "u_sum", scope: !1268, file: !2, line: 384, type: !78)
!1288 = !DILocalVariable(name: "v_sum", scope: !1268, file: !2, line: 385, type: !78)
!1289 = !DILocalVariable(name: "u_abs_del_prev", scope: !1268, file: !2, line: 386, type: !78)
!1290 = !DILocalVariable(name: "v_abs_del_prev", scope: !1268, file: !2, line: 387, type: !78)
!1291 = !DILocalVariable(name: "m", scope: !1268, file: !2, line: 388, type: !28)
!1292 = !DILocalVariable(name: "u_sum_err", scope: !1268, file: !2, line: 389, type: !78)
!1293 = !DILocalVariable(name: "v_sum_err", scope: !1268, file: !2, line: 390, type: !78)
!1294 = !DILocalVariable(name: "ln2x", scope: !1268, file: !2, line: 391, type: !78)
!1295 = !DILocalVariable(name: "abs_du", scope: !1296, file: !2, line: 394, type: !78)
!1296 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 393, column: 23)
!1297 = !DILocalVariable(name: "abs_dv", scope: !1296, file: !2, line: 395, type: !78)
!1298 = !DILocalVariable(name: "m_mm1", scope: !1296, file: !2, line: 396, type: !78)
!1299 = !DILocalVariable(name: "max_abs_du", scope: !1300, file: !2, line: 412, type: !78)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !2, line: 405, column: 16)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 405, column: 8)
!1302 = !DILocalVariable(name: "max_abs_dv", scope: !1300, file: !2, line: 413, type: !78)
!1303 = !DILocalVariable(name: "abs_u", scope: !1300, file: !2, line: 414, type: !78)
!1304 = !DILocalVariable(name: "abs_v", scope: !1300, file: !2, line: 415, type: !78)
!1305 = distinct !DIAssignID()
!1306 = !DILocation(line: 0, scope: !1268)
!1307 = distinct !DIAssignID()
!1308 = !DILocation(line: 372, column: 23, scope: !1268)
!1309 = !DILocation(line: 373, column: 25, scope: !1268)
!1310 = !DILocation(line: 373, column: 29, scope: !1268)
!1311 = !DILocation(line: 374, column: 3, scope: !1268)
!1312 = !DILocation(line: 375, column: 17, scope: !1268)
!1313 = !DILocation(line: 376, column: 3, scope: !1268)
!1314 = !DILocation(line: 377, column: 18, scope: !1268)
!1315 = !DILocation(line: 382, column: 45, scope: !1268)
!1316 = !DILocation(line: 382, column: 38, scope: !1268)
!1317 = !DILocation(line: 382, column: 21, scope: !1268)
!1318 = !DILocation(line: 384, column: 24, scope: !1268)
!1319 = !DILocation(line: 385, column: 24, scope: !1268)
!1320 = !DILocation(line: 386, column: 27, scope: !1268)
!1321 = !DILocation(line: 387, column: 27, scope: !1268)
!1322 = !DILocation(line: 389, column: 44, scope: !1268)
!1323 = !DILocation(line: 390, column: 44, scope: !1268)
!1324 = !DILocation(line: 391, column: 24, scope: !1268)
!1325 = !DILocation(line: 391, column: 17, scope: !1268)
!1326 = !DILocation(line: 393, column: 3, scope: !1268)
!1327 = !DILocation(line: 396, column: 20, scope: !1296)
!1328 = !DILocation(line: 396, column: 24, scope: !1296)
!1329 = !DILocation(line: 396, column: 21, scope: !1296)
!1330 = !DILocation(line: 0, scope: !1296)
!1331 = !DILocation(line: 397, column: 15, scope: !1296)
!1332 = !DILocation(line: 397, column: 26, scope: !1296)
!1333 = !DILocation(line: 397, column: 22, scope: !1296)
!1334 = !DILocation(line: 397, column: 33, scope: !1296)
!1335 = !DILocation(line: 398, column: 15, scope: !1296)
!1336 = !DILocation(line: 398, column: 26, scope: !1296)
!1337 = !DILocation(line: 398, column: 22, scope: !1296)
!1338 = !DILocation(line: 398, column: 45, scope: !1296)
!1339 = !DILocation(line: 398, column: 47, scope: !1296)
!1340 = !DILocation(line: 398, column: 43, scope: !1296)
!1341 = !DILocation(line: 398, column: 42, scope: !1296)
!1342 = !DILocation(line: 398, column: 50, scope: !1296)
!1343 = !DILocation(line: 398, column: 33, scope: !1296)
!1344 = !DILocation(line: 398, column: 55, scope: !1296)
!1345 = !DILocation(line: 399, column: 11, scope: !1296)
!1346 = !DILocation(line: 400, column: 11, scope: !1296)
!1347 = !DILocation(line: 401, column: 14, scope: !1296)
!1348 = !DILocation(line: 402, column: 14, scope: !1296)
!1349 = !DILocation(line: 403, column: 40, scope: !1296)
!1350 = !DILocation(line: 403, column: 15, scope: !1296)
!1351 = !DILocation(line: 404, column: 40, scope: !1296)
!1352 = !DILocation(line: 404, column: 15, scope: !1296)
!1353 = !DILocation(line: 405, column: 10, scope: !1301)
!1354 = !DILocation(line: 405, column: 8, scope: !1296)
!1355 = !DILocation(line: 412, column: 27, scope: !1300)
!1356 = !DILocation(line: 0, scope: !1300)
!1357 = !DILocation(line: 414, column: 22, scope: !1300)
!1358 = !DILocation(line: 416, column: 36, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 416, column: 13)
!1360 = !DILocation(line: 416, column: 23, scope: !1359)
!1361 = !DILocation(line: 416, column: 45, scope: !1359)
!1362 = !DILocation(line: 417, column: 10, scope: !1359)
!1363 = !DILocation(line: 415, column: 22, scope: !1300)
!1364 = !DILocation(line: 413, column: 27, scope: !1300)
!1365 = !DILocation(line: 417, column: 36, scope: !1359)
!1366 = !DILocation(line: 417, column: 23, scope: !1359)
!1367 = !DILocation(line: 417, column: 45, scope: !1359)
!1368 = !DILocation(line: 416, column: 13, scope: !1300)
!1369 = !DILocation(line: 426, column: 6, scope: !1296)
!1370 = !DILocation(line: 393, column: 11, scope: !1268)
!1371 = !DILocation(line: 430, column: 22, scope: !1268)
!1372 = !DILocation(line: 435, column: 14, scope: !1268)
!1373 = !DILocation(line: 439, column: 8, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 439, column: 6)
!1375 = !DILocation(line: 429, column: 16, scope: !1268)
!1376 = !DILocation(line: 429, column: 20, scope: !1268)
!1377 = !DILocation(line: 429, column: 11, scope: !1268)
!1378 = !DILocation(line: 430, column: 16, scope: !1268)
!1379 = !DILocation(line: 430, column: 20, scope: !1268)
!1380 = !DILocation(line: 430, column: 6, scope: !1268)
!1381 = !DILocation(line: 431, column: 13, scope: !1268)
!1382 = !DILocation(line: 431, column: 26, scope: !1268)
!1383 = !DILocation(line: 431, column: 10, scope: !1268)
!1384 = !DILocation(line: 432, column: 37, scope: !1268)
!1385 = !DILocation(line: 432, column: 35, scope: !1268)
!1386 = !DILocation(line: 432, column: 10, scope: !1268)
!1387 = !DILocation(line: 434, column: 29, scope: !1268)
!1388 = !DILocation(line: 434, column: 36, scope: !1268)
!1389 = !DILocation(line: 434, column: 20, scope: !1268)
!1390 = !DILocation(line: 434, column: 44, scope: !1268)
!1391 = !DILocation(line: 434, column: 11, scope: !1268)
!1392 = !DILocation(line: 435, column: 28, scope: !1268)
!1393 = !DILocation(line: 435, column: 26, scope: !1268)
!1394 = !DILocation(line: 435, column: 56, scope: !1268)
!1395 = !DILocation(line: 435, column: 84, scope: !1268)
!1396 = !DILocation(line: 435, column: 73, scope: !1268)
!1397 = !DILocation(line: 435, column: 71, scope: !1268)
!1398 = !DILocation(line: 435, column: 6, scope: !1268)
!1399 = !DILocation(line: 436, column: 38, scope: !1268)
!1400 = !DILocation(line: 436, column: 48, scope: !1268)
!1401 = !DILocation(line: 436, column: 26, scope: !1268)
!1402 = !DILocation(line: 436, column: 24, scope: !1268)
!1403 = !DILocation(line: 436, column: 56, scope: !1268)
!1404 = !DILocation(line: 436, column: 10, scope: !1268)
!1405 = !DILocation(line: 437, column: 37, scope: !1268)
!1406 = !DILocation(line: 437, column: 35, scope: !1268)
!1407 = !DILocation(line: 437, column: 10, scope: !1268)
!1408 = !DILocation(line: 439, column: 6, scope: !1268)
!1409 = !DILocation(line: 440, column: 5, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1374, file: !2, line: 440, column: 5)
!1411 = !DILocation(line: 442, column: 12, scope: !1374)
!1412 = !DILocation(line: 442, column: 5, scope: !1374)
!1413 = !DILocation(line: 0, scope: !1374)
!1414 = !DILocation(line: 443, column: 1, scope: !1268)
!1415 = distinct !DISubprogram(name: "coulomb_FG_series", scope: !2, file: !2, line: 277, type: !1416, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1418)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!28, !289, !289, !289, !79, !79}
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1449, !1450, !1453, !1454, !1455}
!1419 = !DILocalVariable(name: "lam", arg: 1, scope: !1415, file: !2, line: 277, type: !289)
!1420 = !DILocalVariable(name: "eta", arg: 2, scope: !1415, file: !2, line: 277, type: !289)
!1421 = !DILocalVariable(name: "x", arg: 3, scope: !1415, file: !2, line: 277, type: !289)
!1422 = !DILocalVariable(name: "F", arg: 4, scope: !1415, file: !2, line: 278, type: !79)
!1423 = !DILocalVariable(name: "G", arg: 5, scope: !1415, file: !2, line: 278, type: !79)
!1424 = !DILocalVariable(name: "max_iter", scope: !1415, file: !2, line: 280, type: !290)
!1425 = !DILocalVariable(name: "ClamA", scope: !1415, file: !2, line: 281, type: !80)
!1426 = !DILocalVariable(name: "ClamB", scope: !1415, file: !2, line: 282, type: !80)
!1427 = !DILocalVariable(name: "stat_A", scope: !1415, file: !2, line: 283, type: !28)
!1428 = !DILocalVariable(name: "stat_B", scope: !1415, file: !2, line: 284, type: !28)
!1429 = !DILocalVariable(name: "tlp1", scope: !1415, file: !2, line: 285, type: !289)
!1430 = !DILocalVariable(name: "pow_x", scope: !1415, file: !2, line: 286, type: !289)
!1431 = !DILocalVariable(name: "cos_phi_lam", scope: !1415, file: !2, line: 287, type: !78)
!1432 = !DILocalVariable(name: "sin_phi_lam", scope: !1415, file: !2, line: 288, type: !78)
!1433 = !DILocalVariable(name: "uA_mm2", scope: !1415, file: !2, line: 290, type: !78)
!1434 = !DILocalVariable(name: "uA_mm1", scope: !1415, file: !2, line: 291, type: !78)
!1435 = !DILocalVariable(name: "uA_m", scope: !1415, file: !2, line: 292, type: !78)
!1436 = !DILocalVariable(name: "uB_mm2", scope: !1415, file: !2, line: 293, type: !78)
!1437 = !DILocalVariable(name: "uB_mm1", scope: !1415, file: !2, line: 294, type: !78)
!1438 = !DILocalVariable(name: "uB_m", scope: !1415, file: !2, line: 295, type: !78)
!1439 = !DILocalVariable(name: "A_sum", scope: !1415, file: !2, line: 296, type: !78)
!1440 = !DILocalVariable(name: "B_sum", scope: !1415, file: !2, line: 297, type: !78)
!1441 = !DILocalVariable(name: "A_abs_del_prev", scope: !1415, file: !2, line: 298, type: !78)
!1442 = !DILocalVariable(name: "B_abs_del_prev", scope: !1415, file: !2, line: 299, type: !78)
!1443 = !DILocalVariable(name: "FA", scope: !1415, file: !2, line: 300, type: !80)
!1444 = !DILocalVariable(name: "FB", scope: !1415, file: !2, line: 300, type: !80)
!1445 = !DILocalVariable(name: "m", scope: !1415, file: !2, line: 301, type: !28)
!1446 = !DILocalVariable(name: "stat_conn", scope: !1415, file: !2, line: 303, type: !28)
!1447 = !DILocalVariable(name: "abs_dA", scope: !1448, file: !2, line: 312, type: !78)
!1448 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 311, column: 23)
!1449 = !DILocalVariable(name: "abs_dB", scope: !1448, file: !2, line: 313, type: !78)
!1450 = !DILocalVariable(name: "max_abs_dA", scope: !1451, file: !2, line: 327, type: !78)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 320, column: 16)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !2, line: 320, column: 8)
!1453 = !DILocalVariable(name: "max_abs_dB", scope: !1451, file: !2, line: 328, type: !78)
!1454 = !DILocalVariable(name: "abs_A", scope: !1451, file: !2, line: 329, type: !78)
!1455 = !DILocalVariable(name: "abs_B", scope: !1451, file: !2, line: 330, type: !78)
!1456 = distinct !DIAssignID()
!1457 = !DILocation(line: 0, scope: !1415)
!1458 = distinct !DIAssignID()
!1459 = !DILocation(line: 281, column: 3, scope: !1415)
!1460 = !DILocation(line: 282, column: 3, scope: !1415)
!1461 = !DILocation(line: 283, column: 16, scope: !1415)
!1462 = !DILocation(line: 284, column: 26, scope: !1415)
!1463 = !DILocation(line: 284, column: 16, scope: !1415)
!1464 = !DILocation(line: 285, column: 26, scope: !1415)
!1465 = !DILocation(line: 285, column: 31, scope: !1415)
!1466 = !DILocation(line: 286, column: 24, scope: !1415)
!1467 = !DILocation(line: 291, column: 20, scope: !1415)
!1468 = !DILocation(line: 291, column: 29, scope: !1415)
!1469 = !DILocation(line: 291, column: 24, scope: !1415)
!1470 = !DILocation(line: 294, column: 19, scope: !1415)
!1471 = !DILocation(line: 294, column: 21, scope: !1415)
!1472 = !DILocation(line: 294, column: 25, scope: !1415)
!1473 = !DILocation(line: 296, column: 25, scope: !1415)
!1474 = !DILocation(line: 297, column: 25, scope: !1415)
!1475 = !DILocation(line: 298, column: 27, scope: !1415)
!1476 = !DILocation(line: 299, column: 27, scope: !1415)
!1477 = !DILocalVariable(name: "lam", arg: 1, scope: !1478, file: !2, line: 236, type: !289)
!1478 = distinct !DISubprogram(name: "coulomb_connection", scope: !2, file: !2, line: 236, type: !1479, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!28, !289, !289, !209, !209}
!1481 = !{!1477, !1482, !1483, !1484, !1485, !1489, !1490, !1491, !1493}
!1482 = !DILocalVariable(name: "eta", arg: 2, scope: !1478, file: !2, line: 236, type: !289)
!1483 = !DILocalVariable(name: "cos_phi", arg: 3, scope: !1478, file: !2, line: 237, type: !209)
!1484 = !DILocalVariable(name: "sin_phi", arg: 4, scope: !1478, file: !2, line: 237, type: !209)
!1485 = !DILocalVariable(name: "eps", scope: !1486, file: !2, line: 245, type: !289)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 244, column: 50)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 244, column: 11)
!1488 = distinct !DILexicalBlock(scope: !1478, file: !2, line: 239, column: 6)
!1489 = !DILocalVariable(name: "tpl", scope: !1486, file: !2, line: 246, type: !289)
!1490 = !DILocalVariable(name: "dth", scope: !1486, file: !2, line: 247, type: !289)
!1491 = !DILocalVariable(name: "X", scope: !1492, file: !2, line: 253, type: !78)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !2, line: 252, column: 8)
!1493 = !DILocalVariable(name: "phi", scope: !1492, file: !2, line: 254, type: !78)
!1494 = !DILocation(line: 0, scope: !1478, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 303, column: 19, scope: !1415)
!1496 = !DILocation(line: 239, column: 10, scope: !1488, inlinedAt: !1495)
!1497 = !DILocation(line: 239, column: 6, scope: !1478, inlinedAt: !1495)
!1498 = !DILocation(line: 244, column: 15, scope: !1487, inlinedAt: !1495)
!1499 = !DILocation(line: 244, column: 11, scope: !1488, inlinedAt: !1495)
!1500 = !DILocation(line: 245, column: 43, scope: !1486, inlinedAt: !1495)
!1501 = !DILocation(line: 245, column: 30, scope: !1486, inlinedAt: !1495)
!1502 = !DILocation(line: 245, column: 28, scope: !1486, inlinedAt: !1495)
!1503 = !DILocation(line: 0, scope: !1486, inlinedAt: !1495)
!1504 = !DILocation(line: 246, column: 33, scope: !1486, inlinedAt: !1495)
!1505 = !DILocation(line: 246, column: 24, scope: !1486, inlinedAt: !1495)
!1506 = !DILocation(line: 247, column: 28, scope: !1486, inlinedAt: !1495)
!1507 = !DILocation(line: 247, column: 40, scope: !1486, inlinedAt: !1495)
!1508 = !DILocation(line: 247, column: 45, scope: !1486, inlinedAt: !1495)
!1509 = !DILocation(line: 247, column: 34, scope: !1486, inlinedAt: !1495)
!1510 = !DILocation(line: 248, column: 27, scope: !1486, inlinedAt: !1495)
!1511 = !DILocation(line: 248, column: 32, scope: !1486, inlinedAt: !1495)
!1512 = !DILocation(line: 248, column: 21, scope: !1486, inlinedAt: !1495)
!1513 = !DILocation(line: 249, column: 16, scope: !1486, inlinedAt: !1495)
!1514 = !DILocation(line: 253, column: 28, scope: !1492, inlinedAt: !1495)
!1515 = !DILocation(line: 253, column: 18, scope: !1492, inlinedAt: !1495)
!1516 = !DILocation(line: 253, column: 46, scope: !1492, inlinedAt: !1495)
!1517 = !DILocation(line: 253, column: 37, scope: !1492, inlinedAt: !1495)
!1518 = !DILocation(line: 253, column: 35, scope: !1492, inlinedAt: !1495)
!1519 = !DILocation(line: 0, scope: !1492, inlinedAt: !1495)
!1520 = !DILocation(line: 254, column: 19, scope: !1492, inlinedAt: !1495)
!1521 = !DILocation(line: 254, column: 18, scope: !1492, inlinedAt: !1495)
!1522 = !DILocation(line: 254, column: 34, scope: !1492, inlinedAt: !1495)
!1523 = !DILocation(line: 254, column: 41, scope: !1492, inlinedAt: !1495)
!1524 = !DILocation(line: 254, column: 27, scope: !1492, inlinedAt: !1495)
!1525 = !DILocation(line: 255, column: 16, scope: !1492, inlinedAt: !1495)
!1526 = !DILocation(line: 256, column: 16, scope: !1492, inlinedAt: !1495)
!1527 = !DILocation(line: 0, scope: !1488, inlinedAt: !1495)
!1528 = !DILocation(line: 311, column: 3, scope: !1415)
!1529 = !DILocation(line: 242, column: 5, scope: !1530, inlinedAt: !1495)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 242, column: 5)
!1531 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 239, column: 43)
!1532 = !DILocation(line: 307, column: 12, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 305, column: 33)
!1534 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 305, column: 6)
!1535 = !DILocation(line: 308, column: 5, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1533, file: !2, line: 308, column: 5)
!1537 = !DILocation(line: 308, column: 5, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1536, file: !2, line: 308, column: 5)
!1539 = !DILocation(line: 314, column: 22, scope: !1448)
!1540 = !DILocation(line: 314, column: 33, scope: !1448)
!1541 = !DILocation(line: 314, column: 30, scope: !1448)
!1542 = !DILocation(line: 314, column: 13, scope: !1448)
!1543 = !DILocation(line: 314, column: 43, scope: !1448)
!1544 = !DILocation(line: 314, column: 47, scope: !1448)
!1545 = !DILocation(line: 314, column: 44, scope: !1448)
!1546 = !DILocation(line: 314, column: 41, scope: !1448)
!1547 = !DILocation(line: 315, column: 22, scope: !1448)
!1548 = !DILocation(line: 315, column: 33, scope: !1448)
!1549 = !DILocation(line: 315, column: 30, scope: !1448)
!1550 = !DILocation(line: 315, column: 13, scope: !1448)
!1551 = !DILocation(line: 315, column: 47, scope: !1448)
!1552 = !DILocation(line: 315, column: 44, scope: !1448)
!1553 = !DILocation(line: 315, column: 41, scope: !1448)
!1554 = !DILocation(line: 316, column: 11, scope: !1448)
!1555 = !DILocation(line: 317, column: 11, scope: !1448)
!1556 = !DILocation(line: 318, column: 14, scope: !1448)
!1557 = !DILocation(line: 0, scope: !1448)
!1558 = !DILocation(line: 319, column: 14, scope: !1448)
!1559 = !DILocation(line: 320, column: 10, scope: !1452)
!1560 = !DILocation(line: 320, column: 8, scope: !1448)
!1561 = !DILocation(line: 327, column: 27, scope: !1451)
!1562 = !DILocation(line: 0, scope: !1451)
!1563 = !DILocation(line: 329, column: 22, scope: !1451)
!1564 = !DILocation(line: 331, column: 36, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1451, file: !2, line: 331, column: 13)
!1566 = !DILocation(line: 331, column: 23, scope: !1565)
!1567 = !DILocation(line: 331, column: 45, scope: !1565)
!1568 = !DILocation(line: 332, column: 10, scope: !1565)
!1569 = !DILocation(line: 330, column: 22, scope: !1451)
!1570 = !DILocation(line: 328, column: 27, scope: !1451)
!1571 = !DILocation(line: 332, column: 36, scope: !1565)
!1572 = !DILocation(line: 332, column: 23, scope: !1565)
!1573 = !DILocation(line: 332, column: 45, scope: !1565)
!1574 = !DILocation(line: 331, column: 13, scope: !1451)
!1575 = !DILocation(line: 341, column: 6, scope: !1448)
!1576 = !DILocation(line: 311, column: 11, scope: !1415)
!1577 = !DILocation(line: 345, column: 12, scope: !1415)
!1578 = !DILocation(line: 347, column: 12, scope: !1415)
!1579 = !DILocation(line: 355, column: 8, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1415, file: !2, line: 355, column: 6)
!1581 = !DILocation(line: 344, column: 26, scope: !1415)
!1582 = !DILocation(line: 344, column: 18, scope: !1415)
!1583 = !DILocation(line: 344, column: 30, scope: !1415)
!1584 = !DILocation(line: 344, column: 38, scope: !1415)
!1585 = !DILocation(line: 345, column: 32, scope: !1415)
!1586 = !DILocation(line: 345, column: 24, scope: !1415)
!1587 = !DILocation(line: 345, column: 36, scope: !1415)
!1588 = !DILocation(line: 345, column: 44, scope: !1415)
!1589 = !DILocation(line: 345, column: 70, scope: !1415)
!1590 = !DILocation(line: 345, column: 69, scope: !1415)
!1591 = !DILocation(line: 345, column: 48, scope: !1415)
!1592 = !DILocation(line: 346, column: 26, scope: !1415)
!1593 = !DILocation(line: 346, column: 18, scope: !1415)
!1594 = !DILocation(line: 346, column: 30, scope: !1415)
!1595 = !DILocation(line: 347, column: 32, scope: !1415)
!1596 = !DILocation(line: 347, column: 24, scope: !1415)
!1597 = !DILocation(line: 347, column: 36, scope: !1415)
!1598 = !DILocation(line: 347, column: 66, scope: !1415)
!1599 = !DILocation(line: 347, column: 65, scope: !1415)
!1600 = !DILocation(line: 347, column: 44, scope: !1415)
!1601 = !DILocation(line: 349, column: 10, scope: !1415)
!1602 = !DILocation(line: 350, column: 6, scope: !1415)
!1603 = !DILocation(line: 350, column: 10, scope: !1415)
!1604 = !DILocation(line: 352, column: 20, scope: !1415)
!1605 = !DILocation(line: 352, column: 34, scope: !1415)
!1606 = !DILocation(line: 352, column: 43, scope: !1415)
!1607 = !DILocation(line: 352, column: 10, scope: !1415)
!1608 = !DILocation(line: 353, column: 22, scope: !1415)
!1609 = !DILocation(line: 353, column: 20, scope: !1415)
!1610 = !DILocation(line: 353, column: 40, scope: !1415)
!1611 = !DILocation(line: 353, column: 50, scope: !1415)
!1612 = !DILocation(line: 353, column: 49, scope: !1415)
!1613 = !DILocation(line: 353, column: 6, scope: !1415)
!1614 = !DILocation(line: 353, column: 10, scope: !1415)
!1615 = !DILocation(line: 355, column: 6, scope: !1415)
!1616 = !DILocation(line: 356, column: 5, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 356, column: 5)
!1618 = !DILocation(line: 358, column: 12, scope: !1580)
!1619 = !DILocation(line: 358, column: 5, scope: !1580)
!1620 = !DILocation(line: 359, column: 1, scope: !1415)
!1621 = distinct !DISubprogram(name: "coulomb_jwkb", scope: !2, file: !2, line: 822, type: !1622, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1624)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!28, !289, !289, !289, !79, !79, !209}
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1625 = !DILocalVariable(name: "lam", arg: 1, scope: !1621, file: !2, line: 822, type: !289)
!1626 = !DILocalVariable(name: "eta", arg: 2, scope: !1621, file: !2, line: 822, type: !289)
!1627 = !DILocalVariable(name: "x", arg: 3, scope: !1621, file: !2, line: 822, type: !289)
!1628 = !DILocalVariable(name: "fjwkb", arg: 4, scope: !1621, file: !2, line: 823, type: !79)
!1629 = !DILocalVariable(name: "gjwkb", arg: 5, scope: !1621, file: !2, line: 823, type: !79)
!1630 = !DILocalVariable(name: "exponent", arg: 6, scope: !1621, file: !2, line: 824, type: !209)
!1631 = !DILocalVariable(name: "llp1", scope: !1621, file: !2, line: 826, type: !289)
!1632 = !DILocalVariable(name: "llp1_eff", scope: !1621, file: !2, line: 827, type: !289)
!1633 = !DILocalVariable(name: "rho_ghalf", scope: !1621, file: !2, line: 828, type: !289)
!1634 = !DILocalVariable(name: "sinh_arg", scope: !1621, file: !2, line: 829, type: !289)
!1635 = !DILocalVariable(name: "sinh_inv", scope: !1621, file: !2, line: 830, type: !289)
!1636 = !DILocalVariable(name: "phi", scope: !1621, file: !2, line: 832, type: !289)
!1637 = !DILocalVariable(name: "zeta_half", scope: !1621, file: !2, line: 834, type: !289)
!1638 = !DILocalVariable(name: "prefactor", scope: !1621, file: !2, line: 835, type: !289)
!1639 = !DILocalVariable(name: "F", scope: !1621, file: !2, line: 837, type: !78)
!1640 = !DILocalVariable(name: "G", scope: !1621, file: !2, line: 838, type: !78)
!1641 = !DILocalVariable(name: "F_exp", scope: !1621, file: !2, line: 839, type: !78)
!1642 = !DILocalVariable(name: "G_exp", scope: !1621, file: !2, line: 840, type: !78)
!1643 = !DILocalVariable(name: "airy_scale_exp", scope: !1621, file: !2, line: 842, type: !289)
!1644 = !DILocalVariable(name: "ai", scope: !1621, file: !2, line: 843, type: !80)
!1645 = !DILocalVariable(name: "bi", scope: !1621, file: !2, line: 844, type: !80)
!1646 = distinct !DIAssignID()
!1647 = !DILocation(line: 0, scope: !1621)
!1648 = distinct !DIAssignID()
!1649 = !DILocation(line: 826, column: 36, scope: !1621)
!1650 = !DILocation(line: 826, column: 31, scope: !1621)
!1651 = !DILocation(line: 826, column: 42, scope: !1621)
!1652 = !DILocation(line: 827, column: 28, scope: !1621)
!1653 = !DILocation(line: 828, column: 39, scope: !1621)
!1654 = !DILocation(line: 828, column: 44, scope: !1621)
!1655 = !DILocation(line: 828, column: 34, scope: !1621)
!1656 = !DILocation(line: 828, column: 49, scope: !1621)
!1657 = !DILocation(line: 828, column: 28, scope: !1621)
!1658 = !DILocation(line: 829, column: 46, scope: !1621)
!1659 = !DILocation(line: 829, column: 50, scope: !1621)
!1660 = !DILocation(line: 829, column: 41, scope: !1621)
!1661 = !DILocation(line: 829, column: 28, scope: !1621)
!1662 = !DILocation(line: 829, column: 62, scope: !1621)
!1663 = !DILocation(line: 829, column: 74, scope: !1621)
!1664 = !DILocation(line: 830, column: 43, scope: !1621)
!1665 = !DILocation(line: 830, column: 41, scope: !1621)
!1666 = !DILocation(line: 830, column: 28, scope: !1621)
!1667 = !DILocation(line: 832, column: 60, scope: !1621)
!1668 = !DILocation(line: 832, column: 43, scope: !1621)
!1669 = !DILocation(line: 832, column: 42, scope: !1621)
!1670 = !DILocation(line: 832, column: 37, scope: !1621)
!1671 = !DILocation(line: 832, column: 68, scope: !1621)
!1672 = !DILocation(line: 832, column: 83, scope: !1621)
!1673 = !DILocation(line: 832, column: 66, scope: !1621)
!1674 = !DILocation(line: 832, column: 22, scope: !1621)
!1675 = !DILocation(line: 834, column: 35, scope: !1621)
!1676 = !DILocation(line: 834, column: 39, scope: !1621)
!1677 = !DILocation(line: 834, column: 28, scope: !1621)
!1678 = !DILocation(line: 835, column: 37, scope: !1621)
!1679 = !DILocation(line: 835, column: 41, scope: !1621)
!1680 = !DILocation(line: 835, column: 49, scope: !1621)
!1681 = !DILocation(line: 835, column: 43, scope: !1621)
!1682 = !DILocation(line: 835, column: 28, scope: !1621)
!1683 = !DILocation(line: 837, column: 24, scope: !1621)
!1684 = !DILocation(line: 837, column: 29, scope: !1621)
!1685 = !DILocation(line: 843, column: 3, scope: !1621)
!1686 = !DILocation(line: 844, column: 3, scope: !1621)
!1687 = !DILocation(line: 845, column: 36, scope: !1621)
!1688 = !DILocation(line: 845, column: 3, scope: !1621)
!1689 = !DILocation(line: 846, column: 3, scope: !1621)
!1690 = !DILocation(line: 847, column: 11, scope: !1621)
!1691 = !DILocation(line: 847, column: 5, scope: !1621)
!1692 = !DILocation(line: 848, column: 11, scope: !1621)
!1693 = !DILocation(line: 848, column: 5, scope: !1621)
!1694 = !DILocation(line: 849, column: 11, scope: !1621)
!1695 = !DILocation(line: 850, column: 11, scope: !1621)
!1696 = !DILocation(line: 850, column: 18, scope: !1621)
!1697 = !DILocation(line: 852, column: 12, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1621, file: !2, line: 852, column: 6)
!1699 = !DILocation(line: 852, column: 6, scope: !1621)
!1700 = !DILocation(line: 853, column: 16, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 852, column: 32)
!1702 = !DILocation(line: 854, column: 16, scope: !1701)
!1703 = !DILocation(line: 855, column: 27, scope: !1701)
!1704 = !DILocation(line: 855, column: 25, scope: !1701)
!1705 = !DILocation(line: 855, column: 12, scope: !1701)
!1706 = !DILocation(line: 855, column: 16, scope: !1701)
!1707 = !DILocation(line: 856, column: 27, scope: !1701)
!1708 = !DILocation(line: 856, column: 25, scope: !1701)
!1709 = !DILocation(line: 856, column: 12, scope: !1701)
!1710 = !DILocation(line: 856, column: 16, scope: !1701)
!1711 = !DILocation(line: 857, column: 15, scope: !1701)
!1712 = !DILocation(line: 858, column: 5, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1701, file: !2, line: 858, column: 5)
!1714 = !DILocation(line: 849, column: 18, scope: !1621)
!1715 = !DILocation(line: 861, column: 18, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 860, column: 8)
!1717 = !DILocation(line: 861, column: 16, scope: !1716)
!1718 = !DILocation(line: 862, column: 18, scope: !1716)
!1719 = !DILocation(line: 862, column: 16, scope: !1716)
!1720 = !DILocation(line: 863, column: 39, scope: !1716)
!1721 = !DILocation(line: 863, column: 27, scope: !1716)
!1722 = !DILocation(line: 863, column: 25, scope: !1716)
!1723 = !DILocation(line: 863, column: 12, scope: !1716)
!1724 = !DILocation(line: 863, column: 16, scope: !1716)
!1725 = !DILocation(line: 864, column: 27, scope: !1716)
!1726 = !DILocation(line: 864, column: 25, scope: !1716)
!1727 = !DILocation(line: 864, column: 12, scope: !1716)
!1728 = !DILocation(line: 864, column: 16, scope: !1716)
!1729 = !DILocation(line: 865, column: 15, scope: !1716)
!1730 = !DILocation(line: 866, column: 5, scope: !1716)
!1731 = !DILocation(line: 0, scope: !1698)
!1732 = !DILocation(line: 868, column: 1, scope: !1621)
!1733 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_F_array", scope: !2, file: !2, line: 1211, type: !1734, scopeLine: 1215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!28, !78, !28, !78, !78, !209, !209}
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743, !1746, !1749, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1766, !1767, !1768}
!1737 = !DILocalVariable(name: "lam_min", arg: 1, scope: !1733, file: !2, line: 1211, type: !78)
!1738 = !DILocalVariable(name: "kmax", arg: 2, scope: !1733, file: !2, line: 1211, type: !28)
!1739 = !DILocalVariable(name: "eta", arg: 3, scope: !1733, file: !2, line: 1212, type: !78)
!1740 = !DILocalVariable(name: "x", arg: 4, scope: !1733, file: !2, line: 1212, type: !78)
!1741 = !DILocalVariable(name: "fc_array", arg: 5, scope: !1733, file: !2, line: 1213, type: !209)
!1742 = !DILocalVariable(name: "F_exp", arg: 6, scope: !1733, file: !2, line: 1214, type: !209)
!1743 = !DILocalVariable(name: "k", scope: !1744, file: !2, line: 1217, type: !28)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 1216, column: 16)
!1745 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 1216, column: 6)
!1746 = !DILocalVariable(name: "f_0", scope: !1747, file: !2, line: 1223, type: !80)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 1222, column: 23)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 1222, column: 8)
!1749 = !DILocalVariable(name: "x_inv", scope: !1750, file: !2, line: 1230, type: !289)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 1229, column: 8)
!1751 = !DILocalVariable(name: "lam_max", scope: !1750, file: !2, line: 1231, type: !289)
!1752 = !DILocalVariable(name: "F", scope: !1750, file: !2, line: 1232, type: !80)
!1753 = !DILocalVariable(name: "Fp", scope: !1750, file: !2, line: 1232, type: !80)
!1754 = !DILocalVariable(name: "G", scope: !1750, file: !2, line: 1233, type: !80)
!1755 = !DILocalVariable(name: "Gp", scope: !1750, file: !2, line: 1233, type: !80)
!1756 = !DILocalVariable(name: "G_exp", scope: !1750, file: !2, line: 1234, type: !78)
!1757 = !DILocalVariable(name: "stat_FG", scope: !1750, file: !2, line: 1236, type: !28)
!1758 = !DILocalVariable(name: "fcl", scope: !1750, file: !2, line: 1239, type: !78)
!1759 = !DILocalVariable(name: "fpl", scope: !1750, file: !2, line: 1240, type: !78)
!1760 = !DILocalVariable(name: "lam", scope: !1750, file: !2, line: 1241, type: !78)
!1761 = !DILocalVariable(name: "k", scope: !1750, file: !2, line: 1242, type: !28)
!1762 = !DILocalVariable(name: "el", scope: !1763, file: !2, line: 1247, type: !78)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 1246, column: 30)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !2, line: 1246, column: 5)
!1765 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 1246, column: 5)
!1766 = !DILocalVariable(name: "rl", scope: !1763, file: !2, line: 1248, type: !78)
!1767 = !DILocalVariable(name: "sl", scope: !1763, file: !2, line: 1249, type: !78)
!1768 = !DILocalVariable(name: "fc_lm1", scope: !1763, file: !2, line: 1250, type: !78)
!1769 = distinct !DIAssignID()
!1770 = !DILocation(line: 0, scope: !1747)
!1771 = distinct !DIAssignID()
!1772 = !DILocation(line: 0, scope: !1750)
!1773 = distinct !DIAssignID()
!1774 = distinct !DIAssignID()
!1775 = distinct !DIAssignID()
!1776 = distinct !DIAssignID()
!1777 = !DILocation(line: 0, scope: !1733)
!1778 = !DILocation(line: 1216, column: 8, scope: !1745)
!1779 = !DILocation(line: 1216, column: 6, scope: !1733)
!1780 = !DILocation(line: 1218, column: 12, scope: !1744)
!1781 = !DILocation(line: 0, scope: !1744)
!1782 = !DILocation(line: 1219, column: 15, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !2, line: 1219, column: 5)
!1784 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 1219, column: 5)
!1785 = !DILocation(line: 1219, column: 5, scope: !1784)
!1786 = !DILocation(line: 1220, column: 19, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1783, file: !2, line: 1219, column: 28)
!1788 = !DILocation(line: 1222, column: 16, scope: !1748)
!1789 = !DILocation(line: 1222, column: 8, scope: !1744)
!1790 = !DILocation(line: 1223, column: 7, scope: !1747)
!1791 = !DILocation(line: 1224, column: 7, scope: !1747)
!1792 = !DILocation(line: 1225, column: 25, scope: !1747)
!1793 = !DILocation(line: 1225, column: 19, scope: !1747)
!1794 = !DILocation(line: 1226, column: 5, scope: !1748)
!1795 = !DILocation(line: 1226, column: 5, scope: !1747)
!1796 = !DILocation(line: 1230, column: 29, scope: !1750)
!1797 = !DILocation(line: 1231, column: 38, scope: !1750)
!1798 = !DILocation(line: 1231, column: 36, scope: !1750)
!1799 = !DILocation(line: 1232, column: 5, scope: !1750)
!1800 = !DILocation(line: 1233, column: 5, scope: !1750)
!1801 = !DILocation(line: 1234, column: 5, scope: !1750)
!1802 = !DILocation(line: 1236, column: 19, scope: !1750)
!1803 = !DILocation(line: 1239, column: 21, scope: !1750)
!1804 = !DILocation(line: 1240, column: 21, scope: !1750)
!1805 = !DILocation(line: 1244, column: 5, scope: !1750)
!1806 = !DILocation(line: 1244, column: 20, scope: !1750)
!1807 = !DILocation(line: 1246, column: 20, scope: !1764)
!1808 = !DILocation(line: 1246, column: 5, scope: !1765)
!1809 = !DILocation(line: 1246, scope: !1765)
!1810 = !DILocation(line: 1247, column: 22, scope: !1763)
!1811 = !DILocation(line: 0, scope: !1763)
!1812 = !DILocation(line: 1248, column: 19, scope: !1763)
!1813 = !DILocation(line: 1249, column: 28, scope: !1763)
!1814 = !DILocation(line: 1249, column: 23, scope: !1763)
!1815 = !DILocation(line: 1250, column: 27, scope: !1763)
!1816 = !DILocation(line: 1250, column: 31, scope: !1763)
!1817 = !DILocation(line: 1250, column: 37, scope: !1763)
!1818 = !DILocation(line: 1251, column: 7, scope: !1763)
!1819 = !DILocation(line: 1251, column: 21, scope: !1763)
!1820 = !DILocation(line: 1252, column: 30, scope: !1763)
!1821 = !DILocation(line: 1252, column: 39, scope: !1763)
!1822 = !DILocation(line: 1252, column: 34, scope: !1763)
!1823 = !DILocation(line: 1254, column: 11, scope: !1763)
!1824 = distinct !{!1824, !1808, !1825, !280}
!1825 = !DILocation(line: 1255, column: 5, scope: !1765)
!1826 = !DILocation(line: 1258, column: 3, scope: !1745)
!1827 = !DILocation(line: 0, scope: !1745)
!1828 = !DILocation(line: 1259, column: 1, scope: !1733)
!1829 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_FG_array", scope: !2, file: !2, line: 1263, type: !1830, scopeLine: 1267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!28, !78, !28, !78, !78, !209, !209, !209, !209}
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1858, !1859, !1860, !1861, !1865, !1866, !1867}
!1833 = !DILocalVariable(name: "lam_min", arg: 1, scope: !1829, file: !2, line: 1263, type: !78)
!1834 = !DILocalVariable(name: "kmax", arg: 2, scope: !1829, file: !2, line: 1263, type: !28)
!1835 = !DILocalVariable(name: "eta", arg: 3, scope: !1829, file: !2, line: 1264, type: !78)
!1836 = !DILocalVariable(name: "x", arg: 4, scope: !1829, file: !2, line: 1264, type: !78)
!1837 = !DILocalVariable(name: "fc_array", arg: 5, scope: !1829, file: !2, line: 1265, type: !209)
!1838 = !DILocalVariable(name: "gc_array", arg: 6, scope: !1829, file: !2, line: 1265, type: !209)
!1839 = !DILocalVariable(name: "F_exp", arg: 7, scope: !1829, file: !2, line: 1266, type: !209)
!1840 = !DILocalVariable(name: "G_exp", arg: 8, scope: !1829, file: !2, line: 1266, type: !209)
!1841 = !DILocalVariable(name: "x_inv", scope: !1829, file: !2, line: 1268, type: !289)
!1842 = !DILocalVariable(name: "lam_max", scope: !1829, file: !2, line: 1269, type: !289)
!1843 = !DILocalVariable(name: "F", scope: !1829, file: !2, line: 1270, type: !80)
!1844 = !DILocalVariable(name: "Fp", scope: !1829, file: !2, line: 1270, type: !80)
!1845 = !DILocalVariable(name: "G", scope: !1829, file: !2, line: 1271, type: !80)
!1846 = !DILocalVariable(name: "Gp", scope: !1829, file: !2, line: 1271, type: !80)
!1847 = !DILocalVariable(name: "stat_FG", scope: !1829, file: !2, line: 1273, type: !28)
!1848 = !DILocalVariable(name: "fcl", scope: !1829, file: !2, line: 1276, type: !78)
!1849 = !DILocalVariable(name: "fpl", scope: !1829, file: !2, line: 1277, type: !78)
!1850 = !DILocalVariable(name: "lam", scope: !1829, file: !2, line: 1278, type: !78)
!1851 = !DILocalVariable(name: "k", scope: !1829, file: !2, line: 1279, type: !28)
!1852 = !DILocalVariable(name: "gcl", scope: !1829, file: !2, line: 1281, type: !78)
!1853 = !DILocalVariable(name: "gpl", scope: !1829, file: !2, line: 1281, type: !78)
!1854 = !DILocalVariable(name: "el", scope: !1855, file: !2, line: 1286, type: !78)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !2, line: 1285, column: 28)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 1285, column: 3)
!1857 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 1285, column: 3)
!1858 = !DILocalVariable(name: "rl", scope: !1855, file: !2, line: 1287, type: !78)
!1859 = !DILocalVariable(name: "sl", scope: !1855, file: !2, line: 1288, type: !78)
!1860 = !DILocalVariable(name: "fc_lm1", scope: !1855, file: !2, line: 1289, type: !78)
!1861 = !DILocalVariable(name: "el", scope: !1862, file: !2, line: 1304, type: !78)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 1303, column: 26)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 1303, column: 3)
!1864 = distinct !DILexicalBlock(scope: !1829, file: !2, line: 1303, column: 3)
!1865 = !DILocalVariable(name: "rl", scope: !1862, file: !2, line: 1305, type: !78)
!1866 = !DILocalVariable(name: "sl", scope: !1862, file: !2, line: 1306, type: !78)
!1867 = !DILocalVariable(name: "gcl1", scope: !1862, file: !2, line: 1307, type: !78)
!1868 = distinct !DIAssignID()
!1869 = !DILocation(line: 0, scope: !1829)
!1870 = distinct !DIAssignID()
!1871 = distinct !DIAssignID()
!1872 = distinct !DIAssignID()
!1873 = !DILocation(line: 1268, column: 27, scope: !1829)
!1874 = !DILocation(line: 1269, column: 36, scope: !1829)
!1875 = !DILocation(line: 1269, column: 34, scope: !1829)
!1876 = !DILocation(line: 1270, column: 3, scope: !1829)
!1877 = !DILocation(line: 1271, column: 3, scope: !1829)
!1878 = !DILocation(line: 1273, column: 17, scope: !1829)
!1879 = !DILocation(line: 1276, column: 19, scope: !1829)
!1880 = !DILocation(line: 1277, column: 19, scope: !1829)
!1881 = !DILocation(line: 1283, column: 3, scope: !1829)
!1882 = !DILocation(line: 1283, column: 18, scope: !1829)
!1883 = !DILocation(line: 1285, column: 18, scope: !1856)
!1884 = !DILocation(line: 1285, column: 3, scope: !1857)
!1885 = !DILocation(line: 1297, column: 11, scope: !1829)
!1886 = !DILocation(line: 1301, column: 15, scope: !1829)
!1887 = !DILocation(line: 1303, column: 3, scope: !1864)
!1888 = !DILocation(line: 1285, scope: !1857)
!1889 = !DILocation(line: 1286, column: 20, scope: !1855)
!1890 = !DILocation(line: 0, scope: !1855)
!1891 = !DILocation(line: 1287, column: 17, scope: !1855)
!1892 = !DILocation(line: 1288, column: 26, scope: !1855)
!1893 = !DILocation(line: 1288, column: 21, scope: !1855)
!1894 = !DILocation(line: 1290, column: 18, scope: !1855)
!1895 = !DILocation(line: 1290, column: 22, scope: !1855)
!1896 = !DILocation(line: 1290, column: 28, scope: !1855)
!1897 = !DILocation(line: 1291, column: 5, scope: !1855)
!1898 = !DILocation(line: 1291, column: 17, scope: !1855)
!1899 = !DILocation(line: 1292, column: 26, scope: !1855)
!1900 = !DILocation(line: 1292, column: 35, scope: !1855)
!1901 = !DILocation(line: 1292, column: 30, scope: !1855)
!1902 = !DILocation(line: 1294, column: 9, scope: !1855)
!1903 = distinct !{!1903, !1884, !1904, !280}
!1904 = !DILocation(line: 1295, column: 3, scope: !1857)
!1905 = !DILocation(line: 1298, column: 12, scope: !1829)
!1906 = !DILocation(line: 1303, column: 13, scope: !1863)
!1907 = !DILocation(line: 1304, column: 20, scope: !1862)
!1908 = !DILocation(line: 0, scope: !1862)
!1909 = !DILocation(line: 1305, column: 17, scope: !1862)
!1910 = !DILocation(line: 1306, column: 25, scope: !1862)
!1911 = !DILocation(line: 1306, column: 20, scope: !1862)
!1912 = !DILocation(line: 1307, column: 22, scope: !1862)
!1913 = !DILocation(line: 1307, column: 27, scope: !1862)
!1914 = !DILocation(line: 1307, column: 33, scope: !1862)
!1915 = !DILocation(line: 1308, column: 5, scope: !1862)
!1916 = !DILocation(line: 1308, column: 17, scope: !1862)
!1917 = !DILocation(line: 1309, column: 21, scope: !1862)
!1918 = !DILocation(line: 1309, column: 30, scope: !1862)
!1919 = !DILocation(line: 1309, column: 26, scope: !1862)
!1920 = !DILocation(line: 1303, column: 22, scope: !1863)
!1921 = distinct !{!1921, !1887, !1922, !280}
!1922 = !DILocation(line: 1312, column: 3, scope: !1864)
!1923 = !DILocation(line: 1315, column: 1, scope: !1829)
!1924 = !DILocation(line: 1314, column: 3, scope: !1829)
!1925 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_FGp_array", scope: !2, file: !2, line: 1319, type: !1926, scopeLine: 1325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!28, !78, !28, !78, !78, !209, !209, !209, !209, !209, !209}
!1928 = !{!1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1956, !1957, !1958, !1959, !1963, !1964, !1965}
!1929 = !DILocalVariable(name: "lam_min", arg: 1, scope: !1925, file: !2, line: 1319, type: !78)
!1930 = !DILocalVariable(name: "kmax", arg: 2, scope: !1925, file: !2, line: 1319, type: !28)
!1931 = !DILocalVariable(name: "eta", arg: 3, scope: !1925, file: !2, line: 1320, type: !78)
!1932 = !DILocalVariable(name: "x", arg: 4, scope: !1925, file: !2, line: 1320, type: !78)
!1933 = !DILocalVariable(name: "fc_array", arg: 5, scope: !1925, file: !2, line: 1321, type: !209)
!1934 = !DILocalVariable(name: "fcp_array", arg: 6, scope: !1925, file: !2, line: 1321, type: !209)
!1935 = !DILocalVariable(name: "gc_array", arg: 7, scope: !1925, file: !2, line: 1322, type: !209)
!1936 = !DILocalVariable(name: "gcp_array", arg: 8, scope: !1925, file: !2, line: 1322, type: !209)
!1937 = !DILocalVariable(name: "F_exp", arg: 9, scope: !1925, file: !2, line: 1323, type: !209)
!1938 = !DILocalVariable(name: "G_exp", arg: 10, scope: !1925, file: !2, line: 1323, type: !209)
!1939 = !DILocalVariable(name: "x_inv", scope: !1925, file: !2, line: 1326, type: !289)
!1940 = !DILocalVariable(name: "lam_max", scope: !1925, file: !2, line: 1327, type: !289)
!1941 = !DILocalVariable(name: "F", scope: !1925, file: !2, line: 1328, type: !80)
!1942 = !DILocalVariable(name: "Fp", scope: !1925, file: !2, line: 1328, type: !80)
!1943 = !DILocalVariable(name: "G", scope: !1925, file: !2, line: 1329, type: !80)
!1944 = !DILocalVariable(name: "Gp", scope: !1925, file: !2, line: 1329, type: !80)
!1945 = !DILocalVariable(name: "stat_FG", scope: !1925, file: !2, line: 1331, type: !28)
!1946 = !DILocalVariable(name: "fcl", scope: !1925, file: !2, line: 1334, type: !78)
!1947 = !DILocalVariable(name: "fpl", scope: !1925, file: !2, line: 1335, type: !78)
!1948 = !DILocalVariable(name: "lam", scope: !1925, file: !2, line: 1336, type: !78)
!1949 = !DILocalVariable(name: "k", scope: !1925, file: !2, line: 1337, type: !28)
!1950 = !DILocalVariable(name: "gcl", scope: !1925, file: !2, line: 1339, type: !78)
!1951 = !DILocalVariable(name: "gpl", scope: !1925, file: !2, line: 1339, type: !78)
!1952 = !DILocalVariable(name: "el", scope: !1953, file: !2, line: 1345, type: !78)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !2, line: 1344, column: 28)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 1344, column: 3)
!1955 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 1344, column: 3)
!1956 = !DILocalVariable(name: "rl", scope: !1953, file: !2, line: 1346, type: !78)
!1957 = !DILocalVariable(name: "sl", scope: !1953, file: !2, line: 1347, type: !78)
!1958 = !DILocalVariable(name: "fc_lm1", scope: !1953, file: !2, line: 1348, type: !78)
!1959 = !DILocalVariable(name: "el", scope: !1960, file: !2, line: 1365, type: !78)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !2, line: 1364, column: 26)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 1364, column: 3)
!1962 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 1364, column: 3)
!1963 = !DILocalVariable(name: "rl", scope: !1960, file: !2, line: 1366, type: !78)
!1964 = !DILocalVariable(name: "sl", scope: !1960, file: !2, line: 1367, type: !78)
!1965 = !DILocalVariable(name: "gcl1", scope: !1960, file: !2, line: 1368, type: !78)
!1966 = distinct !DIAssignID()
!1967 = !DILocation(line: 0, scope: !1925)
!1968 = distinct !DIAssignID()
!1969 = distinct !DIAssignID()
!1970 = distinct !DIAssignID()
!1971 = !DILocation(line: 1326, column: 27, scope: !1925)
!1972 = !DILocation(line: 1327, column: 36, scope: !1925)
!1973 = !DILocation(line: 1327, column: 34, scope: !1925)
!1974 = !DILocation(line: 1328, column: 3, scope: !1925)
!1975 = !DILocation(line: 1329, column: 3, scope: !1925)
!1976 = !DILocation(line: 1331, column: 17, scope: !1925)
!1977 = !DILocation(line: 1334, column: 19, scope: !1925)
!1978 = !DILocation(line: 1335, column: 19, scope: !1925)
!1979 = !DILocation(line: 1341, column: 3, scope: !1925)
!1980 = !DILocation(line: 1341, column: 19, scope: !1925)
!1981 = !DILocation(line: 1342, column: 3, scope: !1925)
!1982 = !DILocation(line: 1342, column: 19, scope: !1925)
!1983 = !DILocation(line: 1344, column: 18, scope: !1954)
!1984 = !DILocation(line: 1344, column: 3, scope: !1955)
!1985 = !DILocation(line: 1357, column: 11, scope: !1925)
!1986 = !DILocation(line: 1358, column: 12, scope: !1925)
!1987 = !DILocation(line: 1361, column: 16, scope: !1925)
!1988 = !DILocation(line: 1362, column: 16, scope: !1925)
!1989 = !DILocation(line: 1364, column: 3, scope: !1962)
!1990 = !DILocation(line: 1344, scope: !1955)
!1991 = !DILocation(line: 1345, column: 20, scope: !1953)
!1992 = !DILocation(line: 0, scope: !1953)
!1993 = !DILocation(line: 1346, column: 17, scope: !1953)
!1994 = !DILocation(line: 1347, column: 26, scope: !1953)
!1995 = !DILocation(line: 1347, column: 21, scope: !1953)
!1996 = !DILocation(line: 1349, column: 18, scope: !1953)
!1997 = !DILocation(line: 1349, column: 22, scope: !1953)
!1998 = !DILocation(line: 1349, column: 28, scope: !1953)
!1999 = !DILocation(line: 1350, column: 5, scope: !1953)
!2000 = !DILocation(line: 1350, column: 18, scope: !1953)
!2001 = !DILocation(line: 1351, column: 26, scope: !1953)
!2002 = !DILocation(line: 1351, column: 35, scope: !1953)
!2003 = !DILocation(line: 1351, column: 30, scope: !1953)
!2004 = !DILocation(line: 1352, column: 5, scope: !1953)
!2005 = !DILocation(line: 1352, column: 18, scope: !1953)
!2006 = !DILocation(line: 1354, column: 9, scope: !1953)
!2007 = distinct !{!2007, !1984, !2008, !280}
!2008 = !DILocation(line: 1355, column: 3, scope: !1955)
!2009 = !DILocation(line: 1364, column: 13, scope: !1961)
!2010 = !DILocation(line: 1365, column: 20, scope: !1960)
!2011 = !DILocation(line: 0, scope: !1960)
!2012 = !DILocation(line: 1366, column: 17, scope: !1960)
!2013 = !DILocation(line: 1367, column: 25, scope: !1960)
!2014 = !DILocation(line: 1367, column: 20, scope: !1960)
!2015 = !DILocation(line: 1368, column: 22, scope: !1960)
!2016 = !DILocation(line: 1368, column: 27, scope: !1960)
!2017 = !DILocation(line: 1368, column: 33, scope: !1960)
!2018 = !DILocation(line: 1369, column: 5, scope: !1960)
!2019 = !DILocation(line: 1369, column: 18, scope: !1960)
!2020 = !DILocation(line: 1370, column: 22, scope: !1960)
!2021 = !DILocation(line: 1370, column: 31, scope: !1960)
!2022 = !DILocation(line: 1370, column: 27, scope: !1960)
!2023 = !DILocation(line: 1371, column: 5, scope: !1960)
!2024 = !DILocation(line: 1371, column: 18, scope: !1960)
!2025 = !DILocation(line: 1364, column: 22, scope: !1961)
!2026 = distinct !{!2026, !1989, !2027, !280}
!2027 = !DILocation(line: 1374, column: 3, scope: !1962)
!2028 = !DILocation(line: 1377, column: 1, scope: !1925)
!2029 = !DILocation(line: 1376, column: 3, scope: !1925)
!2030 = distinct !DISubprogram(name: "gsl_sf_coulomb_wave_sphF_array", scope: !2, file: !2, line: 1381, type: !1734, scopeLine: 1385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !2031)
!2031 = !{!2032, !2033, !2034, !2035, !2036, !2037, !2038, !2042, !2044}
!2032 = !DILocalVariable(name: "lam_min", arg: 1, scope: !2030, file: !2, line: 1381, type: !78)
!2033 = !DILocalVariable(name: "kmax", arg: 2, scope: !2030, file: !2, line: 1381, type: !28)
!2034 = !DILocalVariable(name: "eta", arg: 3, scope: !2030, file: !2, line: 1382, type: !78)
!2035 = !DILocalVariable(name: "x", arg: 4, scope: !2030, file: !2, line: 1382, type: !78)
!2036 = !DILocalVariable(name: "fc_array", arg: 5, scope: !2030, file: !2, line: 1383, type: !209)
!2037 = !DILocalVariable(name: "F_exp", arg: 6, scope: !2030, file: !2, line: 1384, type: !209)
!2038 = !DILocalVariable(name: "k", scope: !2039, file: !2, line: 1390, type: !28)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !2, line: 1389, column: 33)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 1389, column: 11)
!2041 = distinct !DILexicalBlock(scope: !2030, file: !2, line: 1386, column: 6)
!2042 = !DILocalVariable(name: "k", scope: !2043, file: !2, line: 1404, type: !28)
!2043 = distinct !DILexicalBlock(scope: !2040, file: !2, line: 1403, column: 8)
!2044 = !DILocalVariable(name: "stat_F", scope: !2043, file: !2, line: 1405, type: !28)
!2045 = distinct !DIAssignID()
!2046 = !DILocation(line: 0, scope: !2030)
!2047 = !DILocation(line: 1386, column: 8, scope: !2041)
!2048 = !DILocation(line: 1386, column: 14, scope: !2041)
!2049 = !DILocation(line: 1387, column: 5, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !2, line: 1387, column: 5)
!2051 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 1386, column: 33)
!2052 = !DILocation(line: 1389, column: 13, scope: !2040)
!2053 = !DILocation(line: 1389, column: 11, scope: !2041)
!2054 = !DILocation(line: 0, scope: !2039)
!2055 = !DILocation(line: 1391, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 1391, column: 5)
!2057 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 1391, column: 5)
!2058 = !DILocation(line: 1391, column: 5, scope: !2057)
!2059 = !DILocation(line: 1392, column: 19, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2056, file: !2, line: 1391, column: 28)
!2061 = !DILocation(line: 1394, column: 16, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 1394, column: 8)
!2063 = !DILocation(line: 1394, column: 8, scope: !2039)
!2064 = !DILocation(line: 0, scope: !111, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 1395, column: 26, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2062, file: !2, line: 1394, column: 24)
!2067 = !DILocation(line: 0, scope: !114, inlinedAt: !2065)
!2068 = !DILocation(line: 52, column: 29, scope: !114, inlinedAt: !2065)
!2069 = !DILocation(line: 54, column: 6, scope: !113, inlinedAt: !2065)
!2070 = !DILocation(line: 54, column: 16, scope: !113, inlinedAt: !2065)
!2071 = !DILocation(line: 54, column: 6, scope: !114, inlinedAt: !2065)
!2072 = !DILocation(line: 57, column: 20, scope: !112, inlinedAt: !2065)
!2073 = !DILocation(line: 57, column: 11, scope: !113, inlinedAt: !2065)
!2074 = !DILocation(line: 61, column: 5, scope: !111, inlinedAt: !2065)
!2075 = !DILocation(line: 62, column: 5, scope: !111, inlinedAt: !2065)
!2076 = !DILocation(line: 63, column: 27, scope: !111, inlinedAt: !2065)
!2077 = !DILocation(line: 63, column: 20, scope: !111, inlinedAt: !2065)
!2078 = !DILocation(line: 64, column: 3, scope: !112, inlinedAt: !2065)
!2079 = !DILocation(line: 0, scope: !113, inlinedAt: !2065)
!2080 = !DILocation(line: 1395, column: 21, scope: !2066)
!2081 = !DILocation(line: 1395, column: 19, scope: !2066)
!2082 = !DILocation(line: 1396, column: 5, scope: !2066)
!2083 = !DILocation(line: 1397, column: 12, scope: !2039)
!2084 = !DILocation(line: 1398, column: 10, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 1398, column: 8)
!2086 = !DILocation(line: 1398, column: 8, scope: !2039)
!2087 = !DILocation(line: 1401, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 1401, column: 7)
!2089 = !DILocation(line: 1405, column: 18, scope: !2043)
!2090 = !DILocation(line: 0, scope: !2043)
!2091 = !DILocation(line: 1410, column: 15, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 1410, column: 5)
!2093 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 1410, column: 5)
!2094 = !DILocation(line: 1410, column: 5, scope: !2093)
!2095 = !DILocation(line: 1411, column: 21, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 1410, column: 28)
!2097 = !DILocation(line: 1411, column: 33, scope: !2096)
!2098 = !DILocation(line: 1411, column: 19, scope: !2096)
!2099 = !DILocation(line: 1410, column: 24, scope: !2092)
!2100 = distinct !{!2100, !2094, !2101, !280}
!2101 = !DILocation(line: 1412, column: 5, scope: !2093)
!2102 = distinct !{!2102, !2103}
!2103 = !{!"llvm.loop.unroll.disable"}
!2104 = !DILocation(line: 0, scope: !2041)
!2105 = !DILocation(line: 1415, column: 1, scope: !2030)
!2106 = !DISubprogram(name: "gsl_sf_expm1_e", scope: !2107, file: !2107, line: 75, type: !2108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2107 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!28, !289, !79}
!2110 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !2111, file: !2111, line: 47, type: !2112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2111 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!28, !78, !79}
!2114 = !DISubprogram(name: "gsl_sf_lngamma_complex_e", scope: !2111, file: !2111, line: 103, type: !2115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!28, !78, !78, !79, !79}
!2117 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !2107, file: !2107, line: 110, type: !2118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!28, !289, !289, !79}
!2120 = !DISubprogram(name: "gsl_sf_psi_1piy_e", scope: !2121, file: !2121, line: 68, type: !2108, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2121 = !DIFile(filename: "../gsl/gsl_sf_psi.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "991a41b1033bad74a63fe4c86bbfa6a4")
!2122 = !DISubprogram(name: "log", scope: !153, file: !153, line: 104, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2123 = !DISubprogram(name: "pow", scope: !153, file: !153, line: 140, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2124 = !DISubprogram(name: "exp", scope: !153, file: !153, line: 95, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2125 = !DISubprogram(name: "tan", scope: !153, file: !153, line: 66, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2126 = !DISubprogram(name: "tanh", scope: !153, file: !153, line: 75, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2127 = !DISubprogram(name: "atan", scope: !153, file: !153, line: 57, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2128 = !DISubprogram(name: "cos", scope: !153, file: !153, line: 62, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2129 = !DISubprogram(name: "sin", scope: !153, file: !153, line: 64, type: !115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2130 = !DISubprogram(name: "atan2", scope: !153, file: !153, line: 59, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2131 = !DISubprogram(name: "gsl_sf_airy_Ai_scaled_e", scope: !2132, file: !2132, line: 63, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2132 = !DIFile(filename: "../gsl/gsl_sf_airy.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0902d390a487a55f5b5ea11d3d660eab")
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!28, !289, !2135, !79}
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_mode_t", file: !2136, line: 50, baseType: !2137)
!2136 = !DIFile(filename: "../gsl/gsl_mode.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "229b7551f050f2f3f0376809c7c6b966")
!2137 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!2138 = !DISubprogram(name: "gsl_sf_airy_Bi_scaled_e", scope: !2132, file: !2132, line: 73, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
