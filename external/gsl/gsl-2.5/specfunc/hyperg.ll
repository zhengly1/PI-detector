; ModuleID = 'hyperg.c'
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

5:                                                ; preds = %4, %46
  %6 = phi double [ 1.000000e+00, %4 ], [ %42, %46 ]
  %7 = phi double [ %0, %4 ], [ %52, %46 ]
  %8 = phi double [ 0.000000e+00, %4 ], [ %51, %46 ]
  %9 = phi double [ 1.000000e+00, %4 ], [ %41, %46 ]
  %10 = phi double [ 1.000000e+00, %4 ], [ %49, %46 ]
  %11 = phi double [ 1.000000e+00, %4 ], [ %40, %46 ]
  %12 = phi double [ 1.000000e+00, %4 ], [ %54, %46 ]
  %13 = phi double [ %1, %4 ], [ %53, %46 ]
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 55, i32 noundef 1) #6, !dbg !116
  br label %63, !dbg !116

17:                                               ; preds = %5
  %18 = fcmp oeq double %7, 0.000000e+00, !dbg !118
  br i1 %18, label %19, label %24, !dbg !120

19:                                               ; preds = %17
  store double %9, ptr %3, align 8, !dbg !121, !tbaa !110
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !123
  %21 = fmul double %12, 0x3CC0000000000000, !dbg !124
  %22 = fmul double %21, %6, !dbg !125
  %23 = fadd double %8, %22, !dbg !126
  store double %23, ptr %20, align 8, !dbg !126, !tbaa !115
  br label %63, !dbg !127

24:                                               ; preds = %17
  %25 = fcmp ogt double %12, 1.000000e+04, !dbg !128
  br i1 %25, label %26, label %28, !dbg !130

26:                                               ; preds = %24
  store double %9, ptr %3, align 8, !dbg !131, !tbaa !110
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !133
  store double %8, ptr %27, align 8, !dbg !134, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef 5) #6, !dbg !135
  br label %63, !dbg !135

28:                                               ; preds = %24
  %29 = fmul double %13, %12, !dbg !137
  %30 = fdiv double %7, %29, !dbg !138
  %31 = fmul double %30, %2, !dbg !139
  tail call void @llvm.dbg.value(metadata double %31, metadata !99, metadata !DIExpression()), !dbg !140
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !141
  tail call void @llvm.dbg.value(metadata double %32, metadata !101, metadata !DIExpression()), !dbg !140
  %33 = fcmp ogt double %32, 1.000000e+00, !dbg !142
  %34 = fdiv double 0x7FEFFFFFFFFFFFFF, %32
  %35 = fcmp ogt double %10, %34
  %36 = select i1 %33, i1 %35, i1 false, !dbg !144
  br i1 %36, label %37, label %39, !dbg !144

37:                                               ; preds = %28
  store double %9, ptr %3, align 8, !dbg !145, !tbaa !110
  %38 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !147
  store double %6, ptr %38, align 8, !dbg !148, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 76, i32 noundef 16) #6, !dbg !149
  br label %63, !dbg !149

39:                                               ; preds = %28
  %40 = fmul double %11, %31, !dbg !151
  tail call void @llvm.dbg.value(metadata double %40, metadata !94, metadata !DIExpression()), !dbg !102
  %41 = fadd double %9, %40, !dbg !152
  tail call void @llvm.dbg.value(metadata double %41, metadata !97, metadata !DIExpression()), !dbg !102
  %42 = tail call double @llvm.fabs.f64(double %41), !dbg !153
  %43 = fcmp ogt double %42, 0x7EE4F8B588E368F0, !dbg !155
  br i1 %43, label %44, label %46, !dbg !156

44:                                               ; preds = %39
  store double %41, ptr %3, align 8, !dbg !157, !tbaa !110
  %45 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !159
  store double %42, ptr %45, align 8, !dbg !160, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 16) #6, !dbg !161
  br label %63, !dbg !161

46:                                               ; preds = %39
  %47 = tail call double @llvm.fabs.f64(double %40), !dbg !163
  tail call void @llvm.dbg.value(metadata double %47, metadata !95, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %47, metadata !164, metadata !DIExpression()), !dbg !171
  tail call void @llvm.dbg.value(metadata double %10, metadata !170, metadata !DIExpression()), !dbg !171
  %48 = fcmp ogt double %47, %10, !dbg !173
  %49 = select i1 %48, double %47, double %10, !dbg !173
  tail call void @llvm.dbg.value(metadata double %49, metadata !96, metadata !DIExpression()), !dbg !102
  %50 = fmul double %47, 0x3CC0000000000000, !dbg !174
  %51 = fadd double %8, %50, !dbg !175
  tail call void @llvm.dbg.value(metadata double %51, metadata !98, metadata !DIExpression()), !dbg !102
  %52 = fadd double %7, 1.000000e+00, !dbg !176
  tail call void @llvm.dbg.value(metadata double %52, metadata !91, metadata !DIExpression()), !dbg !102
  %53 = fadd double %13, 1.000000e+00, !dbg !177
  tail call void @llvm.dbg.value(metadata double %53, metadata !92, metadata !DIExpression()), !dbg !102
  %54 = fadd double %12, 1.000000e+00, !dbg !178
  tail call void @llvm.dbg.value(metadata double %41, metadata !97, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %40, metadata !94, metadata !DIExpression()), !dbg !102
  tail call void @llvm.dbg.value(metadata double %54, metadata !93, metadata !DIExpression()), !dbg !102
  %55 = fdiv double %47, %42, !dbg !179
  %56 = fcmp ogt double %55, 0x3C90000000000000, !dbg !180
  br i1 %56, label %5, label %57, !dbg !103, !llvm.loop !181

57:                                               ; preds = %46
  store double %41, ptr %3, align 8, !dbg !184, !tbaa !110
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !185
  %59 = fadd double %47, %51, !dbg !186
  %60 = fmul double %54, 0x3CC0000000000000, !dbg !187
  %61 = fmul double %60, %42, !dbg !188
  %62 = fadd double %59, %61, !dbg !189
  store double %62, ptr %58, align 8, !dbg !189, !tbaa !115
  br label %63, !dbg !190

63:                                               ; preds = %44, %37, %26, %19, %15, %57
  %64 = phi i32 [ 0, %57 ], [ 16, %44 ], [ 16, %37 ], [ 5, %26 ], [ 0, %19 ], [ 1, %15 ], !dbg !102
  ret i32 %64, !dbg !191
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

declare !dbg !192 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hyperg_1F1_large_b_e(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !dbg !197 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !199, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %1, metadata !200, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata double %2, metadata !201, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !202, metadata !DIExpression()), !dbg !214
  %5 = fdiv double %2, %1, !dbg !215
  %6 = tail call double @llvm.fabs.f64(double %5), !dbg !216
  %7 = fcmp olt double %6, 1.000000e+00, !dbg !217
  br i1 %7, label %8, label %46, !dbg !218

8:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double %5, metadata !203, metadata !DIExpression()), !dbg !219
  %9 = fsub double 1.000000e+00, %5, !dbg !220
  %10 = fdiv double 1.000000e+00, %9, !dbg !221
  tail call void @llvm.dbg.value(metadata double %10, metadata !206, metadata !DIExpression()), !dbg !219
  %11 = tail call double @pow(double noundef %10, double noundef %0) #6, !dbg !222
  tail call void @llvm.dbg.value(metadata double %11, metadata !207, metadata !DIExpression()), !dbg !219
  %12 = fmul double %5, %10, !dbg !223
  tail call void @llvm.dbg.value(metadata double %12, metadata !208, metadata !DIExpression()), !dbg !219
  %13 = fmul double %12, %12, !dbg !224
  tail call void @llvm.dbg.value(metadata double %13, metadata !209, metadata !DIExpression()), !dbg !219
  %14 = fadd double %0, 1.000000e+00, !dbg !225
  %15 = fmul double %14, %0, !dbg !226
  %16 = fmul double %1, 2.000000e+00, !dbg !227
  %17 = fdiv double %15, %16, !dbg !228
  %18 = fmul double %17, %13, !dbg !229
  tail call void @llvm.dbg.value(metadata double %18, metadata !210, metadata !DIExpression()), !dbg !219
  %19 = fmul double %1, 2.400000e+01, !dbg !230
  %20 = fmul double %19, %1, !dbg !231
  %21 = fdiv double %15, %20, !dbg !232
  %22 = fmul double %21, %13, !dbg !233
  tail call void @llvm.dbg.value(metadata double %22, metadata !211, metadata !DIExpression()), !dbg !219
  %23 = fadd double %0, 2.000000e+00, !dbg !234
  %24 = fmul double %23, 1.600000e+01, !dbg !235
  %25 = fmul double %24, %12, !dbg !236
  %26 = fadd double %25, 1.200000e+01, !dbg !237
  %27 = fmul double %23, 3.000000e+00, !dbg !238
  %28 = fadd double %0, 3.000000e+00, !dbg !239
  %29 = fmul double %28, %27, !dbg !240
  %30 = fmul double %29, %13, !dbg !241
  %31 = fadd double %26, %30, !dbg !242
  tail call void @llvm.dbg.value(metadata double %31, metadata !212, metadata !DIExpression()), !dbg !219
  %32 = fmul double %22, %31, !dbg !243
  tail call void @llvm.dbg.value(metadata double %32, metadata !213, metadata !DIExpression()), !dbg !219
  %33 = fsub double 1.000000e+00, %18, !dbg !244
  %34 = fadd double %33, %32, !dbg !245
  %35 = fmul double %34, %11, !dbg !246
  store double %35, ptr %3, align 8, !dbg !247, !tbaa !110
  %36 = fmul double %11, 0x3CB0000000000000, !dbg !248
  %37 = tail call double @llvm.fabs.f64(double %18), !dbg !249
  %38 = fadd double %37, 1.000000e+00, !dbg !250
  %39 = tail call double @llvm.fabs.f64(double %32), !dbg !251
  %40 = fadd double %38, %39, !dbg !252
  %41 = fmul double %40, %36, !dbg !253
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !254
  %43 = tail call double @llvm.fabs.f64(double %35), !dbg !255
  %44 = fmul double %43, 0x3CC0000000000000, !dbg !256
  %45 = fadd double %41, %44, !dbg !257
  store double %45, ptr %42, align 8, !dbg !257, !tbaa !115
  br label %48

46:                                               ; preds = %4
  store double 0x7FF8000000000000, ptr %3, align 8, !dbg !258, !tbaa !110
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !258
  store double 0x7FF8000000000000, ptr %47, align 8, !dbg !258, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #6, !dbg !261
  br label %48, !dbg !261

48:                                               ; preds = %8, %46
  %49 = phi i32 [ 0, %8 ], [ 1, %46 ], !dbg !263
  ret i32 %49, !dbg !264
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !265 double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_hyperg_U_large_b_e(double noundef %0, double noundef %1, double noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !267 {
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !325
  call void @llvm.dbg.assign(metadata i1 undef, metadata !287, metadata !DIExpression(), metadata !325, metadata ptr %6, metadata !DIExpression()), !dbg !326
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !327
  call void @llvm.dbg.assign(metadata i1 undef, metadata !288, metadata !DIExpression(), metadata !327, metadata ptr %7, metadata !DIExpression()), !dbg !326
  %8 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !328
  call void @llvm.dbg.assign(metadata i1 undef, metadata !289, metadata !DIExpression(), metadata !328, metadata ptr %8, metadata !DIExpression()), !dbg !329
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !330
  call void @llvm.dbg.assign(metadata i1 undef, metadata !291, metadata !DIExpression(), metadata !330, metadata ptr %9, metadata !DIExpression()), !dbg !329
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !331
  call void @llvm.dbg.assign(metadata i1 undef, metadata !292, metadata !DIExpression(), metadata !331, metadata ptr %10, metadata !DIExpression()), !dbg !332
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !333
  call void @llvm.dbg.assign(metadata i1 undef, metadata !298, metadata !DIExpression(), metadata !333, metadata ptr %11, metadata !DIExpression()), !dbg !334
  %12 = alloca double, align 8, !DIAssignID !335
  call void @llvm.dbg.assign(metadata i1 undef, metadata !299, metadata !DIExpression(), metadata !335, metadata ptr %12, metadata !DIExpression()), !dbg !334
  %13 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !336
  call void @llvm.dbg.assign(metadata i1 undef, metadata !300, metadata !DIExpression(), metadata !336, metadata ptr %13, metadata !DIExpression()), !dbg !334
  %14 = alloca double, align 8, !DIAssignID !337
  call void @llvm.dbg.assign(metadata i1 undef, metadata !301, metadata !DIExpression(), metadata !337, metadata ptr %14, metadata !DIExpression()), !dbg !334
  %15 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !338
  call void @llvm.dbg.assign(metadata i1 undef, metadata !302, metadata !DIExpression(), metadata !338, metadata ptr %15, metadata !DIExpression()), !dbg !334
  %16 = alloca double, align 8, !DIAssignID !339
  call void @llvm.dbg.assign(metadata i1 undef, metadata !303, metadata !DIExpression(), metadata !339, metadata ptr %16, metadata !DIExpression()), !dbg !334
  %17 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !304, metadata !DIExpression(), metadata !340, metadata ptr %17, metadata !DIExpression()), !dbg !334
  %18 = alloca double, align 8, !DIAssignID !341
  call void @llvm.dbg.assign(metadata i1 undef, metadata !305, metadata !DIExpression(), metadata !341, metadata ptr %18, metadata !DIExpression()), !dbg !334
  tail call void @llvm.dbg.value(metadata double %0, metadata !272, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata double %1, metadata !273, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata double %2, metadata !274, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !275, metadata !DIExpression()), !dbg !342
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !276, metadata !DIExpression()), !dbg !342
  %19 = tail call double @llvm.floor.f64(double %1), !dbg !343
  tail call void @llvm.dbg.value(metadata double %19, metadata !277, metadata !DIExpression()), !dbg !342
  %20 = fsub double %1, %19, !dbg !344
  tail call void @llvm.dbg.value(metadata double %20, metadata !278, metadata !DIExpression()), !dbg !342
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !345
  %22 = fcmp olt double %21, 0x3E50000000000000, !dbg !346
  br i1 %22, label %23, label %173, !dbg !347

23:                                               ; preds = %5
  %24 = fcmp ogt double %1, 1.000000e+00, !dbg !348
  br i1 %24, label %25, label %94, !dbg !349

25:                                               ; preds = %23
  %26 = fsub double 1.000000e+00, %1, !dbg !350
  %27 = tail call double @log(double noundef %2) #6, !dbg !351
  %28 = fmul double %26, %27, !dbg !352
  tail call void @llvm.dbg.value(metadata double %28, metadata !284, metadata !DIExpression()), !dbg !326
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !353
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !354
  %29 = fadd double %1, -1.000000e+00, !dbg !355
  %30 = call i32 @gsl_sf_lngamma_e(double noundef %29, ptr noundef nonnull %6) #6, !dbg !356
  %31 = call i32 @gsl_sf_lngamma_e(double noundef %0, ptr noundef nonnull %7) #6, !dbg !357
  %32 = fadd double %28, %2, !dbg !358
  %33 = load double, ptr %6, align 8, !dbg !359, !tbaa !110
  %34 = fadd double %32, %33, !dbg !360
  %35 = load double, ptr %7, align 8, !dbg !361, !tbaa !110
  %36 = fsub double %34, %35, !dbg !362
  tail call void @llvm.dbg.value(metadata double %36, metadata !279, metadata !DIExpression()), !dbg !363
  %37 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !364
  %38 = load double, ptr %37, align 8, !dbg !364, !tbaa !115
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !365
  %40 = load double, ptr %39, align 8, !dbg !365, !tbaa !115
  %41 = fadd double %38, %40, !dbg !366
  %42 = call double @llvm.fabs.f64(double %2), !dbg !367
  %43 = call double @llvm.fabs.f64(double %28), !dbg !368
  %44 = fadd double %42, %43, !dbg !369
  %45 = fmul double %44, 0x3CB0000000000000, !dbg !370
  %46 = fadd double %45, %41, !dbg !371
  tail call void @llvm.dbg.value(metadata double %46, metadata !282, metadata !DIExpression()), !dbg !363
  %47 = fsub double 2.000000e+00, %1, !dbg !372
  %48 = fneg double %2, !dbg !373
  call void @llvm.dbg.value(metadata double poison, metadata !199, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double %47, metadata !200, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double %48, metadata !201, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata ptr undef, metadata !202, metadata !DIExpression()), !dbg !374
  %49 = fdiv double %48, %47, !dbg !376
  %50 = call double @llvm.fabs.f64(double %49), !dbg !377
  %51 = fcmp olt double %50, 1.000000e+00, !dbg !378
  br i1 %51, label %52, label %90, !dbg !379

52:                                               ; preds = %25
  %53 = fsub double 1.000000e+00, %0, !dbg !380
  call void @llvm.dbg.value(metadata double %53, metadata !199, metadata !DIExpression()), !dbg !374
  call void @llvm.dbg.value(metadata double %49, metadata !203, metadata !DIExpression()), !dbg !381
  %54 = fsub double 1.000000e+00, %49, !dbg !382
  %55 = fdiv double 1.000000e+00, %54, !dbg !383
  call void @llvm.dbg.value(metadata double %55, metadata !206, metadata !DIExpression()), !dbg !381
  %56 = call double @pow(double noundef %55, double noundef %53) #6, !dbg !384
  call void @llvm.dbg.value(metadata double %56, metadata !207, metadata !DIExpression()), !dbg !381
  %57 = fmul double %49, %55, !dbg !385
  call void @llvm.dbg.value(metadata double %57, metadata !208, metadata !DIExpression()), !dbg !381
  %58 = fmul double %57, %57, !dbg !386
  call void @llvm.dbg.value(metadata double %58, metadata !209, metadata !DIExpression()), !dbg !381
  %59 = fadd double %53, 1.000000e+00, !dbg !387
  %60 = fmul double %53, %59, !dbg !388
  %61 = fmul double %47, 2.000000e+00, !dbg !389
  %62 = fdiv double %60, %61, !dbg !390
  %63 = fmul double %62, %58, !dbg !391
  call void @llvm.dbg.value(metadata double %63, metadata !210, metadata !DIExpression()), !dbg !381
  %64 = fmul double %47, 2.400000e+01, !dbg !392
  %65 = fmul double %47, %64, !dbg !393
  %66 = fdiv double %60, %65, !dbg !394
  %67 = fmul double %66, %58, !dbg !395
  call void @llvm.dbg.value(metadata double %67, metadata !211, metadata !DIExpression()), !dbg !381
  %68 = fadd double %53, 2.000000e+00, !dbg !396
  %69 = fmul double %68, 1.600000e+01, !dbg !397
  %70 = fmul double %69, %57, !dbg !398
  %71 = fadd double %70, 1.200000e+01, !dbg !399
  %72 = fmul double %68, 3.000000e+00, !dbg !400
  %73 = fadd double %53, 3.000000e+00, !dbg !401
  %74 = fmul double %73, %72, !dbg !402
  %75 = fmul double %74, %58, !dbg !403
  %76 = fadd double %71, %75, !dbg !404
  call void @llvm.dbg.value(metadata double %76, metadata !212, metadata !DIExpression()), !dbg !381
  %77 = fmul double %67, %76, !dbg !405
  call void @llvm.dbg.value(metadata double %77, metadata !213, metadata !DIExpression()), !dbg !381
  %78 = fsub double 1.000000e+00, %63, !dbg !406
  %79 = fadd double %78, %77, !dbg !407
  %80 = fmul double %79, %56, !dbg !408
  tail call void @llvm.dbg.value(metadata double %80, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !363
  %81 = fmul double %56, 0x3CB0000000000000, !dbg !409
  %82 = call double @llvm.fabs.f64(double %63), !dbg !410
  %83 = fadd double %82, 1.000000e+00, !dbg !411
  %84 = call double @llvm.fabs.f64(double %77), !dbg !412
  %85 = fadd double %83, %84, !dbg !413
  %86 = fmul double %85, %81, !dbg !414
  %87 = call double @llvm.fabs.f64(double %80), !dbg !415
  %88 = fmul double %87, 0x3CC0000000000000, !dbg !416
  %89 = fadd double %86, %88, !dbg !417
  tail call void @llvm.dbg.value(metadata double %89, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !363
  br label %91

90:                                               ; preds = %25
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !363
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !363
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #6, !dbg !418
  br label %91, !dbg !418

91:                                               ; preds = %52, %90
  %92 = phi double [ %89, %52 ], [ 0x7FF8000000000000, %90 ], !dbg !419
  %93 = phi double [ %80, %52 ], [ 0x7FF8000000000000, %90 ], !dbg !419
  tail call void @llvm.dbg.value(metadata double %93, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !363
  tail call void @llvm.dbg.value(metadata double %92, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !363
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !420
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !420
  br label %151, !dbg !421

94:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6, !dbg !422
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #6, !dbg !423
  %95 = fsub double 1.000000e+00, %1, !dbg !424
  %96 = call i32 @gsl_sf_lngamma_e(double noundef %95, ptr noundef nonnull %8) #6, !dbg !425
  %97 = fadd double %0, 1.000000e+00, !dbg !426
  %98 = fsub double %97, %1, !dbg !427
  %99 = call i32 @gsl_sf_lngamma_e(double noundef %98, ptr noundef nonnull %9) #6, !dbg !428
  %100 = load double, ptr %8, align 8, !dbg !429, !tbaa !110
  %101 = load double, ptr %9, align 8, !dbg !430, !tbaa !110
  %102 = fsub double %100, %101, !dbg !431
  tail call void @llvm.dbg.value(metadata double %102, metadata !279, metadata !DIExpression()), !dbg !363
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %8, i64 0, i32 1, !dbg !432
  %104 = load double, ptr %103, align 8, !dbg !432, !tbaa !115
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !433
  %106 = load double, ptr %105, align 8, !dbg !433, !tbaa !115
  %107 = fadd double %104, %106, !dbg !434
  tail call void @llvm.dbg.value(metadata double %107, metadata !282, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata double %0, metadata !199, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double %1, metadata !200, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata double %2, metadata !201, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.value(metadata ptr undef, metadata !202, metadata !DIExpression()), !dbg !435
  %108 = fdiv double %2, %1, !dbg !437
  %109 = call double @llvm.fabs.f64(double %108), !dbg !438
  %110 = fcmp olt double %109, 1.000000e+00, !dbg !439
  br i1 %110, label %111, label %147, !dbg !440

111:                                              ; preds = %94
  call void @llvm.dbg.value(metadata double %108, metadata !203, metadata !DIExpression()), !dbg !441
  %112 = fsub double 1.000000e+00, %108, !dbg !442
  %113 = fdiv double 1.000000e+00, %112, !dbg !443
  call void @llvm.dbg.value(metadata double %113, metadata !206, metadata !DIExpression()), !dbg !441
  %114 = call double @pow(double noundef %113, double noundef %0) #6, !dbg !444
  call void @llvm.dbg.value(metadata double %114, metadata !207, metadata !DIExpression()), !dbg !441
  %115 = fmul double %108, %113, !dbg !445
  call void @llvm.dbg.value(metadata double %115, metadata !208, metadata !DIExpression()), !dbg !441
  %116 = fmul double %115, %115, !dbg !446
  call void @llvm.dbg.value(metadata double %116, metadata !209, metadata !DIExpression()), !dbg !441
  %117 = fmul double %97, %0, !dbg !447
  %118 = fmul double %1, 2.000000e+00, !dbg !448
  %119 = fdiv double %117, %118, !dbg !449
  %120 = fmul double %119, %116, !dbg !450
  call void @llvm.dbg.value(metadata double %120, metadata !210, metadata !DIExpression()), !dbg !441
  %121 = fmul double %1, 2.400000e+01, !dbg !451
  %122 = fmul double %121, %1, !dbg !452
  %123 = fdiv double %117, %122, !dbg !453
  %124 = fmul double %123, %116, !dbg !454
  call void @llvm.dbg.value(metadata double %124, metadata !211, metadata !DIExpression()), !dbg !441
  %125 = fadd double %0, 2.000000e+00, !dbg !455
  %126 = fmul double %125, 1.600000e+01, !dbg !456
  %127 = fmul double %126, %115, !dbg !457
  %128 = fadd double %127, 1.200000e+01, !dbg !458
  %129 = fmul double %125, 3.000000e+00, !dbg !459
  %130 = fadd double %0, 3.000000e+00, !dbg !460
  %131 = fmul double %130, %129, !dbg !461
  %132 = fmul double %131, %116, !dbg !462
  %133 = fadd double %128, %132, !dbg !463
  call void @llvm.dbg.value(metadata double %133, metadata !212, metadata !DIExpression()), !dbg !441
  %134 = fmul double %124, %133, !dbg !464
  call void @llvm.dbg.value(metadata double %134, metadata !213, metadata !DIExpression()), !dbg !441
  %135 = fsub double 1.000000e+00, %120, !dbg !465
  %136 = fadd double %135, %134, !dbg !466
  %137 = fmul double %136, %114, !dbg !467
  tail call void @llvm.dbg.value(metadata double %137, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !363
  %138 = fmul double %114, 0x3CB0000000000000, !dbg !468
  %139 = call double @llvm.fabs.f64(double %120), !dbg !469
  %140 = fadd double %139, 1.000000e+00, !dbg !470
  %141 = call double @llvm.fabs.f64(double %134), !dbg !471
  %142 = fadd double %140, %141, !dbg !472
  %143 = fmul double %142, %138, !dbg !473
  %144 = call double @llvm.fabs.f64(double %137), !dbg !474
  %145 = fmul double %144, 0x3CC0000000000000, !dbg !475
  %146 = fadd double %143, %145, !dbg !476
  tail call void @llvm.dbg.value(metadata double %146, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !363
  br label %148

147:                                              ; preds = %94
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !363
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !363
  call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #6, !dbg !477
  br label %148, !dbg !477

148:                                              ; preds = %111, %147
  %149 = phi double [ %146, %111 ], [ 0x7FF8000000000000, %147 ], !dbg !478
  %150 = phi double [ %137, %111 ], [ 0x7FF8000000000000, %147 ], !dbg !478
  tail call void @llvm.dbg.value(metadata double %150, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !363
  tail call void @llvm.dbg.value(metadata double %149, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !363
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #6, !dbg !479
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6, !dbg !479
  br label %151

151:                                              ; preds = %148, %91
  %152 = phi double [ %92, %91 ], [ %149, %148 ], !dbg !480
  %153 = phi double [ %93, %91 ], [ %150, %148 ], !dbg !482
  %154 = phi double [ %46, %91 ], [ %107, %148 ], !dbg !481
  %155 = phi double [ %36, %91 ], [ %102, %148 ], !dbg !481
  tail call void @llvm.dbg.value(metadata double %153, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !363
  tail call void @llvm.dbg.value(metadata double %152, metadata !283, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !363
  tail call void @llvm.dbg.value(metadata double %155, metadata !279, metadata !DIExpression()), !dbg !363
  tail call void @llvm.dbg.value(metadata double %154, metadata !282, metadata !DIExpression()), !dbg !363
  %156 = fcmp ogt double %155, 0x4085DE42FEFA39EF, !dbg !483
  br i1 %156, label %157, label %159, !dbg !484

157:                                              ; preds = %151
  store double %153, ptr %3, align 8, !dbg !485, !tbaa !110
  %158 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !487
  store double %152, ptr %158, align 8, !dbg !488, !tbaa !115
  store double %155, ptr %4, align 8, !dbg !489, !tbaa !490
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 16) #6, !dbg !491
  br label %368, !dbg !491

159:                                              ; preds = %151
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6, !dbg !493
  %160 = call i32 @gsl_sf_exp_err_e(double noundef %155, double noundef %154, ptr noundef nonnull %10) #6, !dbg !494
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !295, metadata !DIExpression()), !dbg !332
  %161 = load double, ptr %10, align 8, !dbg !495, !tbaa !110
  %162 = fmul double %153, %161, !dbg !496
  store double %162, ptr %3, align 8, !dbg !497, !tbaa !110
  %163 = fmul double %152, %161, !dbg !498
  %164 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !499
  %165 = load double, ptr %164, align 8, !dbg !499, !tbaa !115
  %166 = call double @llvm.fabs.f64(double %153), !dbg !500
  %167 = fmul double %166, %165, !dbg !501
  %168 = fadd double %163, %167, !dbg !502
  %169 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !503
  %170 = call double @llvm.fabs.f64(double %162), !dbg !504
  %171 = fmul double %170, 0x3CC0000000000000, !dbg !505
  %172 = fadd double %171, %168, !dbg !506
  store double %172, ptr %169, align 8, !dbg !506, !tbaa !115
  store double 0.000000e+00, ptr %4, align 8, !dbg !507, !tbaa !490
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6, !dbg !508
  br label %368

173:                                              ; preds = %5
  %174 = fsub double 1.000000e+00, %1, !dbg !509
  %175 = tail call double @log(double noundef %2) #6, !dbg !510
  %176 = fmul double %174, %175, !dbg !511
  tail call void @llvm.dbg.value(metadata double %176, metadata !296, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #6, !dbg !512
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #6, !dbg !513
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #6, !dbg !514
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #6, !dbg !515
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #6, !dbg !516
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #6, !dbg !517
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #6, !dbg !518
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #6, !dbg !519
  call void @llvm.dbg.value(metadata double %0, metadata !199, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata double %1, metadata !200, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata double %2, metadata !201, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.value(metadata ptr undef, metadata !202, metadata !DIExpression()), !dbg !520
  %177 = fdiv double %2, %1, !dbg !522
  %178 = tail call double @llvm.fabs.f64(double %177), !dbg !523
  %179 = fcmp olt double %178, 1.000000e+00, !dbg !524
  br i1 %179, label %180, label %217, !dbg !525

180:                                              ; preds = %173
  call void @llvm.dbg.value(metadata double %177, metadata !203, metadata !DIExpression()), !dbg !526
  %181 = fsub double 1.000000e+00, %177, !dbg !527
  %182 = fdiv double 1.000000e+00, %181, !dbg !528
  call void @llvm.dbg.value(metadata double %182, metadata !206, metadata !DIExpression()), !dbg !526
  %183 = tail call double @pow(double noundef %182, double noundef %0) #6, !dbg !529
  call void @llvm.dbg.value(metadata double %183, metadata !207, metadata !DIExpression()), !dbg !526
  %184 = fmul double %177, %182, !dbg !530
  call void @llvm.dbg.value(metadata double %184, metadata !208, metadata !DIExpression()), !dbg !526
  %185 = fmul double %184, %184, !dbg !531
  call void @llvm.dbg.value(metadata double %185, metadata !209, metadata !DIExpression()), !dbg !526
  %186 = fadd double %0, 1.000000e+00, !dbg !532
  %187 = fmul double %186, %0, !dbg !533
  %188 = fmul double %1, 2.000000e+00, !dbg !534
  %189 = fdiv double %187, %188, !dbg !535
  %190 = fmul double %189, %185, !dbg !536
  call void @llvm.dbg.value(metadata double %190, metadata !210, metadata !DIExpression()), !dbg !526
  %191 = fmul double %1, 2.400000e+01, !dbg !537
  %192 = fmul double %191, %1, !dbg !538
  %193 = fdiv double %187, %192, !dbg !539
  %194 = fmul double %193, %185, !dbg !540
  call void @llvm.dbg.value(metadata double %194, metadata !211, metadata !DIExpression()), !dbg !526
  %195 = fadd double %0, 2.000000e+00, !dbg !541
  %196 = fmul double %195, 1.600000e+01, !dbg !542
  %197 = fmul double %196, %184, !dbg !543
  %198 = fadd double %197, 1.200000e+01, !dbg !544
  %199 = fmul double %195, 3.000000e+00, !dbg !545
  %200 = fadd double %0, 3.000000e+00, !dbg !546
  %201 = fmul double %200, %199, !dbg !547
  %202 = fmul double %201, %185, !dbg !548
  %203 = fadd double %198, %202, !dbg !549
  call void @llvm.dbg.value(metadata double %203, metadata !212, metadata !DIExpression()), !dbg !526
  %204 = fmul double %194, %203, !dbg !550
  call void @llvm.dbg.value(metadata double %204, metadata !213, metadata !DIExpression()), !dbg !526
  %205 = fsub double 1.000000e+00, %190, !dbg !551
  %206 = fadd double %205, %204, !dbg !552
  %207 = fmul double %206, %183, !dbg !553
  tail call void @llvm.dbg.value(metadata double %207, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !334
  %208 = fmul double %183, 0x3CB0000000000000, !dbg !554
  %209 = tail call double @llvm.fabs.f64(double %190), !dbg !555
  %210 = fadd double %209, 1.000000e+00, !dbg !556
  %211 = tail call double @llvm.fabs.f64(double %204), !dbg !557
  %212 = fadd double %210, %211, !dbg !558
  %213 = fmul double %212, %208, !dbg !559
  %214 = tail call double @llvm.fabs.f64(double %207), !dbg !560
  %215 = fmul double %214, 0x3CC0000000000000, !dbg !561
  %216 = fadd double %213, %215, !dbg !562
  tail call void @llvm.dbg.value(metadata double %216, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !334
  br label %218

217:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !334
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !334
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #6, !dbg !563
  br label %218, !dbg !563

218:                                              ; preds = %180, %217
  %219 = phi double [ %216, %180 ], [ 0x7FF8000000000000, %217 ], !dbg !564
  %220 = phi double [ %207, %180 ], [ 0x7FF8000000000000, %217 ], !dbg !564
  tail call void @llvm.dbg.value(metadata double %220, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !334
  tail call void @llvm.dbg.value(metadata double %219, metadata !306, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !334
  %221 = fsub double 2.000000e+00, %1, !dbg !565
  call void @llvm.dbg.value(metadata double poison, metadata !199, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata double %221, metadata !200, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata double %2, metadata !201, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata ptr undef, metadata !202, metadata !DIExpression()), !dbg !566
  %222 = fdiv double %2, %221, !dbg !568
  %223 = tail call double @llvm.fabs.f64(double %222), !dbg !569
  %224 = fcmp olt double %223, 1.000000e+00, !dbg !570
  br i1 %224, label %225, label %263, !dbg !571

225:                                              ; preds = %218
  %226 = fsub double 1.000000e+00, %0, !dbg !572
  call void @llvm.dbg.value(metadata double %226, metadata !199, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.value(metadata double %222, metadata !203, metadata !DIExpression()), !dbg !573
  %227 = fsub double 1.000000e+00, %222, !dbg !574
  %228 = fdiv double 1.000000e+00, %227, !dbg !575
  call void @llvm.dbg.value(metadata double %228, metadata !206, metadata !DIExpression()), !dbg !573
  %229 = tail call double @pow(double noundef %228, double noundef %226) #6, !dbg !576
  call void @llvm.dbg.value(metadata double %229, metadata !207, metadata !DIExpression()), !dbg !573
  %230 = fmul double %222, %228, !dbg !577
  call void @llvm.dbg.value(metadata double %230, metadata !208, metadata !DIExpression()), !dbg !573
  %231 = fmul double %230, %230, !dbg !578
  call void @llvm.dbg.value(metadata double %231, metadata !209, metadata !DIExpression()), !dbg !573
  %232 = fadd double %226, 1.000000e+00, !dbg !579
  %233 = fmul double %226, %232, !dbg !580
  %234 = fmul double %221, 2.000000e+00, !dbg !581
  %235 = fdiv double %233, %234, !dbg !582
  %236 = fmul double %235, %231, !dbg !583
  call void @llvm.dbg.value(metadata double %236, metadata !210, metadata !DIExpression()), !dbg !573
  %237 = fmul double %221, 2.400000e+01, !dbg !584
  %238 = fmul double %221, %237, !dbg !585
  %239 = fdiv double %233, %238, !dbg !586
  %240 = fmul double %239, %231, !dbg !587
  call void @llvm.dbg.value(metadata double %240, metadata !211, metadata !DIExpression()), !dbg !573
  %241 = fadd double %226, 2.000000e+00, !dbg !588
  %242 = fmul double %241, 1.600000e+01, !dbg !589
  %243 = fmul double %242, %230, !dbg !590
  %244 = fadd double %243, 1.200000e+01, !dbg !591
  %245 = fmul double %241, 3.000000e+00, !dbg !592
  %246 = fadd double %226, 3.000000e+00, !dbg !593
  %247 = fmul double %246, %245, !dbg !594
  %248 = fmul double %247, %231, !dbg !595
  %249 = fadd double %244, %248, !dbg !596
  call void @llvm.dbg.value(metadata double %249, metadata !212, metadata !DIExpression()), !dbg !573
  %250 = fmul double %240, %249, !dbg !597
  call void @llvm.dbg.value(metadata double %250, metadata !213, metadata !DIExpression()), !dbg !573
  %251 = fsub double 1.000000e+00, %236, !dbg !598
  %252 = fadd double %251, %250, !dbg !599
  %253 = fmul double %252, %229, !dbg !600
  tail call void @llvm.dbg.value(metadata double %253, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !334
  %254 = fmul double %229, 0x3CB0000000000000, !dbg !601
  %255 = tail call double @llvm.fabs.f64(double %236), !dbg !602
  %256 = fadd double %255, 1.000000e+00, !dbg !603
  %257 = tail call double @llvm.fabs.f64(double %250), !dbg !604
  %258 = fadd double %256, %257, !dbg !605
  %259 = fmul double %258, %254, !dbg !606
  %260 = tail call double @llvm.fabs.f64(double %253), !dbg !607
  %261 = fmul double %260, 0x3CC0000000000000, !dbg !608
  %262 = fadd double %259, %261, !dbg !609
  tail call void @llvm.dbg.value(metadata double %262, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !334
  br label %264

263:                                              ; preds = %218
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !334
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !334
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 123, i32 noundef 1) #6, !dbg !610
  br label %264, !dbg !610

264:                                              ; preds = %225, %263
  %265 = phi double [ %262, %225 ], [ 0x7FF8000000000000, %263 ], !dbg !611
  %266 = phi double [ %253, %225 ], [ 0x7FF8000000000000, %263 ], !dbg !611
  tail call void @llvm.dbg.value(metadata double %266, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !334
  tail call void @llvm.dbg.value(metadata double %265, metadata !307, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !334
  %267 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %174, ptr noundef nonnull %11, ptr noundef nonnull %12) #6, !dbg !612
  %268 = fadd double %0, 1.000000e+00, !dbg !613
  %269 = fsub double %268, %1, !dbg !614
  %270 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %269, ptr noundef nonnull %13, ptr noundef nonnull %14) #6, !dbg !615
  %271 = fadd double %1, -1.000000e+00, !dbg !616
  %272 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %271, ptr noundef nonnull %15, ptr noundef nonnull %16) #6, !dbg !617
  %273 = call i32 @gsl_sf_lngamma_sgn_e(double noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %18) #6, !dbg !618
  %274 = load double, ptr %11, align 8, !dbg !619, !tbaa !110
  %275 = load double, ptr %13, align 8, !dbg !620, !tbaa !110
  %276 = fsub double %274, %275, !dbg !621
  tail call void @llvm.dbg.value(metadata double %276, metadata !308, metadata !DIExpression()), !dbg !334
  %277 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !622
  %278 = load double, ptr %277, align 8, !dbg !622, !tbaa !115
  %279 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %13, i64 0, i32 1, !dbg !623
  %280 = load double, ptr %279, align 8, !dbg !623, !tbaa !115
  %281 = fadd double %278, %280, !dbg !624
  tail call void @llvm.dbg.value(metadata double %281, metadata !310, metadata !DIExpression()), !dbg !334
  %282 = load double, ptr %15, align 8, !dbg !625, !tbaa !110
  %283 = load double, ptr %17, align 8, !dbg !626, !tbaa !110
  %284 = fsub double %282, %283, !dbg !627
  %285 = fsub double %284, %176, !dbg !628
  %286 = fsub double %285, %2, !dbg !629
  tail call void @llvm.dbg.value(metadata double %286, metadata !309, metadata !DIExpression()), !dbg !334
  %287 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %15, i64 0, i32 1, !dbg !630
  %288 = load double, ptr %287, align 8, !dbg !630, !tbaa !115
  %289 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %17, i64 0, i32 1, !dbg !631
  %290 = load double, ptr %289, align 8, !dbg !631, !tbaa !115
  %291 = fadd double %288, %290, !dbg !632
  %292 = call double @llvm.fabs.f64(double %176), !dbg !633
  %293 = call double @llvm.fabs.f64(double %2), !dbg !634
  %294 = fadd double %293, %292, !dbg !635
  %295 = fmul double %294, 0x3CB0000000000000, !dbg !636
  %296 = fadd double %295, %291, !dbg !637
  tail call void @llvm.dbg.value(metadata double %296, metadata !311, metadata !DIExpression()), !dbg !334
  %297 = load double, ptr %12, align 8, !dbg !638, !tbaa !490
  %298 = load double, ptr %14, align 8, !dbg !639, !tbaa !490
  %299 = fmul double %297, %298, !dbg !640
  tail call void @llvm.dbg.value(metadata double %299, metadata !312, metadata !DIExpression()), !dbg !334
  %300 = load double, ptr %16, align 8, !dbg !641, !tbaa !490
  %301 = load double, ptr %18, align 8, !dbg !642, !tbaa !490
  %302 = fmul double %300, %301, !dbg !643
  tail call void @llvm.dbg.value(metadata double %302, metadata !313, metadata !DIExpression()), !dbg !334
  %303 = fcmp ogt double %276, 0x4085DE42FEFA39EF, !dbg !644
  %304 = fcmp ogt double %286, 0x4085DE42FEFA39EF
  %305 = select i1 %303, i1 true, i1 %304, !dbg !645
  br i1 %305, label %306, label %338, !dbg !645

306:                                              ; preds = %264
  %307 = fcmp ogt double %276, %286, !dbg !646
  %308 = select i1 %307, double %276, double %286, !dbg !646
  tail call void @llvm.dbg.value(metadata double %308, metadata !314, metadata !DIExpression()), !dbg !647
  %309 = fcmp ogt double %281, %296, !dbg !648
  %310 = select i1 %309, double %281, double %296, !dbg !648
  tail call void @llvm.dbg.value(metadata double %310, metadata !317, metadata !DIExpression()), !dbg !647
  %311 = fsub double %276, %308, !dbg !649
  tail call void @llvm.dbg.value(metadata double %311, metadata !318, metadata !DIExpression()), !dbg !647
  %312 = fsub double %286, %308, !dbg !650
  tail call void @llvm.dbg.value(metadata double %312, metadata !319, metadata !DIExpression()), !dbg !647
  %313 = call double @exp(double noundef %311) #6, !dbg !651
  %314 = fmul double %299, %313, !dbg !652
  tail call void @llvm.dbg.value(metadata double %314, metadata !320, metadata !DIExpression()), !dbg !647
  %315 = call double @exp(double noundef %312) #6, !dbg !653
  %316 = fmul double %302, %315, !dbg !654
  tail call void @llvm.dbg.value(metadata double %316, metadata !321, metadata !DIExpression()), !dbg !647
  %317 = fmul double %220, %314, !dbg !655
  %318 = fmul double %266, %316, !dbg !656
  %319 = fadd double %317, %318, !dbg !657
  store double %319, ptr %3, align 8, !dbg !658, !tbaa !110
  %320 = call double @llvm.fabs.f64(double %314), !dbg !659
  %321 = fmul double %219, %320, !dbg !660
  %322 = call double @llvm.fabs.f64(double %316), !dbg !661
  %323 = fmul double %265, %322, !dbg !662
  %324 = fadd double %321, %323, !dbg !663
  %325 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !664
  store double %324, ptr %325, align 8, !dbg !665, !tbaa !115
  %326 = call double @exp(double noundef %310) #6, !dbg !666
  %327 = fmul double %326, 0x3CB0000000000000, !dbg !667
  %328 = call double @llvm.fabs.f64(double %317), !dbg !668
  %329 = call double @llvm.fabs.f64(double %318), !dbg !669
  %330 = fadd double %328, %329, !dbg !670
  %331 = fmul double %327, %330, !dbg !671
  %332 = load double, ptr %325, align 8, !dbg !672, !tbaa !115
  %333 = fadd double %332, %331, !dbg !672
  %334 = load double, ptr %3, align 8, !dbg !673, !tbaa !110
  %335 = call double @llvm.fabs.f64(double %334), !dbg !674
  %336 = fmul double %335, 0x3CC0000000000000, !dbg !675
  %337 = fadd double %333, %336, !dbg !676
  store double %337, ptr %325, align 8, !dbg !676, !tbaa !115
  store double %308, ptr %4, align 8, !dbg !677, !tbaa !490
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 215, i32 noundef 16) #6, !dbg !678
  br label %366

338:                                              ; preds = %264
  %339 = call double @exp(double noundef %276) #6, !dbg !680
  %340 = fmul double %299, %339, !dbg !681
  tail call void @llvm.dbg.value(metadata double %340, metadata !322, metadata !DIExpression()), !dbg !682
  %341 = call double @exp(double noundef %286) #6, !dbg !683
  %342 = fmul double %302, %341, !dbg !684
  tail call void @llvm.dbg.value(metadata double %342, metadata !324, metadata !DIExpression()), !dbg !682
  %343 = fmul double %220, %340, !dbg !685
  %344 = fmul double %266, %342, !dbg !686
  %345 = fadd double %343, %344, !dbg !687
  store double %345, ptr %3, align 8, !dbg !688, !tbaa !110
  %346 = call double @llvm.fabs.f64(double %340), !dbg !689
  %347 = fmul double %219, %346, !dbg !690
  %348 = call double @llvm.fabs.f64(double %342), !dbg !691
  %349 = fmul double %265, %348, !dbg !692
  %350 = fadd double %347, %349, !dbg !693
  %351 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !694
  store double %350, ptr %351, align 8, !dbg !695, !tbaa !115
  %352 = call double @exp(double noundef %281) #6, !dbg !696
  %353 = call double @llvm.fabs.f64(double %343), !dbg !697
  %354 = fmul double %353, %352, !dbg !698
  %355 = call double @exp(double noundef %296) #6, !dbg !699
  %356 = call double @llvm.fabs.f64(double %344), !dbg !700
  %357 = fmul double %356, %355, !dbg !701
  %358 = fadd double %354, %357, !dbg !702
  %359 = fmul double %358, 0x3CB0000000000000, !dbg !703
  %360 = load double, ptr %351, align 8, !dbg !704, !tbaa !115
  %361 = fadd double %360, %359, !dbg !704
  %362 = load double, ptr %3, align 8, !dbg !705, !tbaa !110
  %363 = call double @llvm.fabs.f64(double %362), !dbg !706
  %364 = fmul double %363, 0x3CC0000000000000, !dbg !707
  %365 = fadd double %361, %364, !dbg !708
  store double %365, ptr %351, align 8, !dbg !708, !tbaa !115
  store double 0.000000e+00, ptr %4, align 8, !dbg !709, !tbaa !490
  br label %366

366:                                              ; preds = %306, %338
  %367 = phi i32 [ 16, %306 ], [ 0, %338 ], !dbg !710
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #6, !dbg !711
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #6, !dbg !711
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #6, !dbg !711
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #6, !dbg !711
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #6, !dbg !711
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #6, !dbg !711
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #6, !dbg !711
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #6, !dbg !711
  br label %368

368:                                              ; preds = %157, %159, %366
  %369 = phi i32 [ %367, %366 ], [ 16, %157 ], [ %160, %159 ], !dbg !712
  ret i32 %369, !dbg !713
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !714 double @log(double noundef) local_unnamed_addr #4

declare !dbg !717 i32 @gsl_sf_lngamma_e(double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !721 i32 @gsl_sf_exp_err_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !725 i32 @gsl_sf_lngamma_sgn_e(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !728 double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_hyperg_2F0_series_e(double noundef %0, double noundef %1, double noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !dbg !729 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !733, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %1, metadata !734, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %2, metadata !735, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !736, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !737, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata i32 2000, metadata !738, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %0, metadata !740, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %1, metadata !741, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !742, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !743, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !744, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !745, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !746, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !747, metadata !DIExpression()), !dbg !751
  %6 = icmp slt i32 %3, 0
  %7 = sitofp i32 %3 to double
  br label %8, !dbg !752

8:                                                ; preds = %44, %5
  %9 = phi double [ %1, %5 ], [ %39, %44 ], !dbg !753
  %10 = phi double [ 1.000000e+00, %5 ], [ %40, %44 ], !dbg !754
  %11 = phi double [ 1.000000e+00, %5 ], [ %34, %44 ], !dbg !755
  %12 = phi double [ 1.000000e+00, %5 ], [ %33, %44 ], !dbg !756
  %13 = phi double [ 1.000000e+00, %5 ], [ %35, %44 ], !dbg !757
  %14 = phi double [ 1.000000e+00, %5 ], [ %46, %44 ], !dbg !758
  %15 = phi double [ %0, %5 ], [ %38, %44 ], !dbg !759
  tail call void @llvm.dbg.value(metadata double %15, metadata !740, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %13, metadata !747, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %14, metadata !746, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %13, metadata !745, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %12, metadata !744, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %11, metadata !743, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %10, metadata !742, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %9, metadata !741, metadata !DIExpression()), !dbg !751
  %16 = tail call double @llvm.fabs.f64(double %11), !dbg !760
  %17 = fdiv double %13, %16, !dbg !761
  %18 = fcmp ogt double %17, 0x3CB0000000000000, !dbg !762
  %19 = fcmp olt double %10, 2.000000e+03, !dbg !763
  %20 = select i1 %18, i1 %19, i1 false, !dbg !763
  br i1 %20, label %21, label %49, !dbg !752

21:                                               ; preds = %8
  %22 = fdiv double %9, %10, !dbg !764
  %23 = fmul double %22, %2, !dbg !765
  %24 = fmul double %23, %15, !dbg !766
  tail call void @llvm.dbg.value(metadata double %24, metadata !748, metadata !DIExpression()), !dbg !767
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !768
  tail call void @llvm.dbg.value(metadata double %25, metadata !750, metadata !DIExpression()), !dbg !767
  %26 = fcmp ogt double %25, 1.000000e+00, !dbg !769
  %27 = fdiv double 0x7FEFFFFFFFFFFFFF, %25
  %28 = fcmp ogt double %14, %27
  %29 = select i1 %26, i1 %28, i1 false, !dbg !771
  br i1 %29, label %30, label %32, !dbg !771

30:                                               ; preds = %21
  store double %11, ptr %4, align 8, !dbg !772, !tbaa !110
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !774
  store double %16, ptr %31, align 8, !dbg !775, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 263, i32 noundef 16) #6, !dbg !776
  tail call void @llvm.dbg.value(metadata double poison, metadata !740, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double poison, metadata !747, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double poison, metadata !746, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double poison, metadata !745, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double poison, metadata !744, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double poison, metadata !743, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double poison, metadata !742, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double poison, metadata !741, metadata !DIExpression()), !dbg !751
  br label %58

32:                                               ; preds = %21
  %33 = fmul double %12, %24, !dbg !778
  tail call void @llvm.dbg.value(metadata double %33, metadata !744, metadata !DIExpression()), !dbg !751
  %34 = fadd double %11, %33, !dbg !779
  tail call void @llvm.dbg.value(metadata double %34, metadata !743, metadata !DIExpression()), !dbg !751
  %35 = tail call double @llvm.fabs.f64(double %33), !dbg !780
  tail call void @llvm.dbg.value(metadata double %35, metadata !745, metadata !DIExpression()), !dbg !751
  %36 = fcmp ogt double %35, %13, !dbg !781
  br i1 %36, label %49, label %37, !dbg !783

37:                                               ; preds = %32
  tail call void @llvm.dbg.value(metadata double %35, metadata !747, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double poison, metadata !746, metadata !DIExpression()), !dbg !751
  %38 = fadd double %15, 1.000000e+00, !dbg !784
  tail call void @llvm.dbg.value(metadata double %38, metadata !740, metadata !DIExpression()), !dbg !751
  %39 = fadd double %9, 1.000000e+00, !dbg !785
  tail call void @llvm.dbg.value(metadata double %39, metadata !741, metadata !DIExpression()), !dbg !751
  %40 = fadd double %10, 1.000000e+00, !dbg !786
  tail call void @llvm.dbg.value(metadata double %40, metadata !742, metadata !DIExpression()), !dbg !751
  %41 = fcmp oeq double %38, 0.000000e+00, !dbg !787
  %42 = fcmp oeq double %39, 0.000000e+00
  %43 = select i1 %41, i1 true, i1 %42, !dbg !789
  br i1 %43, label %49, label %44, !dbg !789

44:                                               ; preds = %37
  %45 = fcmp ogt double %35, %14, !dbg !790
  %46 = select i1 %45, double %35, double %14, !dbg !790
  tail call void @llvm.dbg.value(metadata double %46, metadata !746, metadata !DIExpression()), !dbg !751
  %47 = fcmp ult double %40, %7
  %48 = select i1 %6, i1 true, i1 %47, !dbg !791
  br i1 %48, label %8, label %49, !dbg !791

49:                                               ; preds = %44, %37, %32, %8
  %50 = phi double [ %10, %8 ], [ %40, %44 ], [ %40, %37 ], [ %10, %32 ], !dbg !754
  %51 = phi double [ %11, %8 ], [ %34, %44 ], [ %34, %37 ], [ %34, %32 ], !dbg !755
  %52 = phi double [ %13, %8 ], [ %35, %44 ], [ %35, %37 ], [ %35, %32 ], !dbg !757
  tail call void @llvm.dbg.value(metadata double %52, metadata !745, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %51, metadata !743, metadata !DIExpression()), !dbg !751
  tail call void @llvm.dbg.value(metadata double %50, metadata !742, metadata !DIExpression()), !dbg !751
  store double %51, ptr %4, align 8, !dbg !793, !tbaa !110
  %53 = fmul double %50, 0x3CB0000000000000, !dbg !794
  %54 = fadd double %53, %52, !dbg !795
  %55 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !796
  store double %54, ptr %55, align 8, !dbg !797, !tbaa !115
  %56 = fcmp ult double %50, 2.000000e+03, !dbg !798
  br i1 %56, label %58, label %57, !dbg !800

57:                                               ; preds = %49
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 288, i32 noundef 11) #6, !dbg !801
  br label %58, !dbg !801

58:                                               ; preds = %30, %49, %57
  %59 = phi i32 [ 11, %57 ], [ 0, %49 ], [ 16, %30 ], !dbg !751
  ret i32 %59, !dbg !803
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!152 = !DILocation(line: 79, column: 13, scope: !100)
!153 = !DILocation(line: 80, column: 8, scope: !154)
!154 = distinct !DILexicalBlock(scope: !100, file: !2, line: 80, column: 8)
!155 = !DILocation(line: 80, column: 22, scope: !154)
!156 = !DILocation(line: 80, column: 8, scope: !100)
!157 = !DILocation(line: 81, column: 19, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !2, line: 80, column: 35)
!159 = !DILocation(line: 82, column: 15, scope: !158)
!160 = !DILocation(line: 82, column: 19, scope: !158)
!161 = !DILocation(line: 83, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !2, line: 83, column: 7)
!163 = !DILocation(line: 86, column: 15, scope: !100)
!164 = !DILocalVariable(name: "a", arg: 1, scope: !165, file: !166, line: 69, type: !78)
!165 = distinct !DISubprogram(name: "GSL_MAX_DBL", scope: !166, file: !166, line: 69, type: !167, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !169)
!166 = !DIFile(filename: "../gsl/gsl_minmax.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c129f6f8aa4928366a49d418ffa3dad3")
!167 = !DISubroutineType(types: !168)
!168 = !{!78, !78, !78}
!169 = !{!164, !170}
!170 = !DILocalVariable(name: "b", arg: 2, scope: !165, file: !166, line: 69, type: !78)
!171 = !DILocation(line: 0, scope: !165, inlinedAt: !172)
!172 = distinct !DILocation(line: 87, column: 19, scope: !100)
!173 = !DILocation(line: 71, column: 10, scope: !165, inlinedAt: !172)
!174 = !DILocation(line: 88, column: 35, scope: !100)
!175 = !DILocation(line: 88, column: 13, scope: !100)
!176 = !DILocation(line: 90, column: 8, scope: !100)
!177 = !DILocation(line: 91, column: 8, scope: !100)
!178 = !DILocation(line: 92, column: 8, scope: !100)
!179 = !DILocation(line: 51, column: 16, scope: !74)
!180 = !DILocation(line: 51, column: 31, scope: !74)
!181 = distinct !{!181, !103, !182, !183}
!182 = !DILocation(line: 93, column: 3, scope: !74)
!183 = !{!"llvm.loop.mustprogress"}
!184 = !DILocation(line: 95, column: 16, scope: !74)
!185 = !DILocation(line: 96, column: 11, scope: !74)
!186 = !DILocation(line: 97, column: 15, scope: !74)
!187 = !DILocation(line: 98, column: 40, scope: !74)
!188 = !DILocation(line: 98, column: 44, scope: !74)
!189 = !DILocation(line: 98, column: 15, scope: !74)
!190 = !DILocation(line: 100, column: 3, scope: !74)
!191 = !DILocation(line: 101, column: 1, scope: !74)
!192 = !DISubprogram(name: "gsl_error", scope: !27, file: !27, line: 77, type: !193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195, !195, !28, !28}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!197 = distinct !DISubprogram(name: "gsl_sf_hyperg_1F1_large_b_e", scope: !2, file: !2, line: 105, type: !75, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !198)
!198 = !{!199, !200, !201, !202, !203, !206, !207, !208, !209, !210, !211, !212, !213}
!199 = !DILocalVariable(name: "a", arg: 1, scope: !197, file: !2, line: 105, type: !77)
!200 = !DILocalVariable(name: "b", arg: 2, scope: !197, file: !2, line: 105, type: !77)
!201 = !DILocalVariable(name: "x", arg: 3, scope: !197, file: !2, line: 105, type: !77)
!202 = !DILocalVariable(name: "result", arg: 4, scope: !197, file: !2, line: 105, type: !79)
!203 = !DILocalVariable(name: "u", scope: !204, file: !2, line: 108, type: !77)
!204 = distinct !DILexicalBlock(scope: !205, file: !2, line: 107, column: 23)
!205 = distinct !DILexicalBlock(scope: !197, file: !2, line: 107, column: 6)
!206 = !DILocalVariable(name: "v", scope: !204, file: !2, line: 109, type: !77)
!207 = !DILocalVariable(name: "pre", scope: !204, file: !2, line: 110, type: !77)
!208 = !DILocalVariable(name: "uv", scope: !204, file: !2, line: 111, type: !77)
!209 = !DILocalVariable(name: "uv2", scope: !204, file: !2, line: 112, type: !77)
!210 = !DILocalVariable(name: "t1", scope: !204, file: !2, line: 113, type: !77)
!211 = !DILocalVariable(name: "t2a", scope: !204, file: !2, line: 114, type: !77)
!212 = !DILocalVariable(name: "t2b", scope: !204, file: !2, line: 115, type: !77)
!213 = !DILocalVariable(name: "t2", scope: !204, file: !2, line: 116, type: !77)
!214 = !DILocation(line: 0, scope: !197)
!215 = !DILocation(line: 107, column: 12, scope: !205)
!216 = !DILocation(line: 107, column: 6, scope: !205)
!217 = !DILocation(line: 107, column: 16, scope: !205)
!218 = !DILocation(line: 107, column: 6, scope: !197)
!219 = !DILocation(line: 0, scope: !204)
!220 = !DILocation(line: 109, column: 30, scope: !204)
!221 = !DILocation(line: 109, column: 25, scope: !204)
!222 = !DILocation(line: 110, column: 24, scope: !204)
!223 = !DILocation(line: 111, column: 25, scope: !204)
!224 = !DILocation(line: 112, column: 26, scope: !204)
!225 = !DILocation(line: 113, column: 28, scope: !204)
!226 = !DILocation(line: 113, column: 25, scope: !204)
!227 = !DILocation(line: 113, column: 38, scope: !204)
!228 = !DILocation(line: 113, column: 33, scope: !204)
!229 = !DILocation(line: 113, column: 41, scope: !204)
!230 = !DILocation(line: 114, column: 39, scope: !204)
!231 = !DILocation(line: 114, column: 41, scope: !204)
!232 = !DILocation(line: 114, column: 33, scope: !204)
!233 = !DILocation(line: 114, column: 44, scope: !204)
!234 = !DILocation(line: 115, column: 38, scope: !204)
!235 = !DILocation(line: 115, column: 35, scope: !204)
!236 = !DILocation(line: 115, column: 43, scope: !204)
!237 = !DILocation(line: 115, column: 29, scope: !204)
!238 = !DILocation(line: 115, column: 52, scope: !204)
!239 = !DILocation(line: 115, column: 63, scope: !204)
!240 = !DILocation(line: 115, column: 60, scope: !204)
!241 = !DILocation(line: 115, column: 68, scope: !204)
!242 = !DILocation(line: 115, column: 47, scope: !204)
!243 = !DILocation(line: 116, column: 27, scope: !204)
!244 = !DILocation(line: 117, column: 31, scope: !204)
!245 = !DILocation(line: 117, column: 36, scope: !204)
!246 = !DILocation(line: 117, column: 24, scope: !204)
!247 = !DILocation(line: 117, column: 18, scope: !204)
!248 = !DILocation(line: 118, column: 24, scope: !204)
!249 = !DILocation(line: 118, column: 51, scope: !204)
!250 = !DILocation(line: 118, column: 49, scope: !204)
!251 = !DILocation(line: 118, column: 62, scope: !204)
!252 = !DILocation(line: 118, column: 60, scope: !204)
!253 = !DILocation(line: 118, column: 42, scope: !204)
!254 = !DILocation(line: 118, column: 13, scope: !204)
!255 = !DILocation(line: 119, column: 44, scope: !204)
!256 = !DILocation(line: 119, column: 42, scope: !204)
!257 = !DILocation(line: 119, column: 17, scope: !204)
!258 = !DILocation(line: 123, column: 5, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !2, line: 123, column: 5)
!260 = distinct !DILexicalBlock(scope: !205, file: !2, line: 122, column: 8)
!261 = !DILocation(line: 123, column: 5, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !2, line: 123, column: 5)
!263 = !DILocation(line: 0, scope: !205)
!264 = !DILocation(line: 125, column: 1, scope: !197)
!265 = !DISubprogram(name: "pow", scope: !266, file: !266, line: 140, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!267 = distinct !DISubprogram(name: "gsl_sf_hyperg_U_large_b_e", scope: !2, file: !2, line: 129, type: !268, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !271)
!268 = !DISubroutineType(types: !269)
!269 = !{!28, !77, !77, !77, !79, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !282, !283, !284, !287, !288, !289, !291, !292, !295, !296, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !317, !318, !319, !320, !321, !322, !324}
!272 = !DILocalVariable(name: "a", arg: 1, scope: !267, file: !2, line: 129, type: !77)
!273 = !DILocalVariable(name: "b", arg: 2, scope: !267, file: !2, line: 129, type: !77)
!274 = !DILocalVariable(name: "x", arg: 3, scope: !267, file: !2, line: 129, type: !77)
!275 = !DILocalVariable(name: "result", arg: 4, scope: !267, file: !2, line: 130, type: !79)
!276 = !DILocalVariable(name: "ln_multiplier", arg: 5, scope: !267, file: !2, line: 131, type: !270)
!277 = !DILocalVariable(name: "N", scope: !267, file: !2, line: 134, type: !78)
!278 = !DILocalVariable(name: "eps", scope: !267, file: !2, line: 135, type: !78)
!279 = !DILocalVariable(name: "lnpre_val", scope: !280, file: !2, line: 138, type: !78)
!280 = distinct !DILexicalBlock(scope: !281, file: !2, line: 137, column: 40)
!281 = distinct !DILexicalBlock(scope: !267, file: !2, line: 137, column: 6)
!282 = !DILocalVariable(name: "lnpre_err", scope: !280, file: !2, line: 139, type: !78)
!283 = !DILocalVariable(name: "M", scope: !280, file: !2, line: 140, type: !80)
!284 = !DILocalVariable(name: "tmp", scope: !285, file: !2, line: 142, type: !78)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 141, column: 17)
!286 = distinct !DILexicalBlock(scope: !280, file: !2, line: 141, column: 8)
!287 = !DILocalVariable(name: "lg_bm1", scope: !285, file: !2, line: 143, type: !80)
!288 = !DILocalVariable(name: "lg_a", scope: !285, file: !2, line: 144, type: !80)
!289 = !DILocalVariable(name: "lg_1mb", scope: !290, file: !2, line: 152, type: !80)
!290 = distinct !DILexicalBlock(scope: !286, file: !2, line: 151, column: 10)
!291 = !DILocalVariable(name: "lg_1pamb", scope: !290, file: !2, line: 153, type: !80)
!292 = !DILocalVariable(name: "epre", scope: !293, file: !2, line: 168, type: !80)
!293 = distinct !DILexicalBlock(scope: !294, file: !2, line: 167, column: 10)
!294 = distinct !DILexicalBlock(scope: !280, file: !2, line: 161, column: 8)
!295 = !DILocalVariable(name: "stat_e", scope: !293, file: !2, line: 169, type: !28)
!296 = !DILocalVariable(name: "omb_lnx", scope: !297, file: !2, line: 178, type: !78)
!297 = distinct !DILexicalBlock(scope: !281, file: !2, line: 177, column: 8)
!298 = !DILocalVariable(name: "lg_1mb", scope: !297, file: !2, line: 179, type: !80)
!299 = !DILocalVariable(name: "sgn_1mb", scope: !297, file: !2, line: 179, type: !78)
!300 = !DILocalVariable(name: "lg_1pamb", scope: !297, file: !2, line: 180, type: !80)
!301 = !DILocalVariable(name: "sgn_1pamb", scope: !297, file: !2, line: 180, type: !78)
!302 = !DILocalVariable(name: "lg_bm1", scope: !297, file: !2, line: 181, type: !80)
!303 = !DILocalVariable(name: "sgn_bm1", scope: !297, file: !2, line: 181, type: !78)
!304 = !DILocalVariable(name: "lg_a", scope: !297, file: !2, line: 182, type: !80)
!305 = !DILocalVariable(name: "sgn_a", scope: !297, file: !2, line: 182, type: !78)
!306 = !DILocalVariable(name: "M1", scope: !297, file: !2, line: 183, type: !80)
!307 = !DILocalVariable(name: "M2", scope: !297, file: !2, line: 183, type: !80)
!308 = !DILocalVariable(name: "lnpre1_val", scope: !297, file: !2, line: 184, type: !78)
!309 = !DILocalVariable(name: "lnpre2_val", scope: !297, file: !2, line: 184, type: !78)
!310 = !DILocalVariable(name: "lnpre1_err", scope: !297, file: !2, line: 185, type: !78)
!311 = !DILocalVariable(name: "lnpre2_err", scope: !297, file: !2, line: 185, type: !78)
!312 = !DILocalVariable(name: "sgpre1", scope: !297, file: !2, line: 186, type: !78)
!313 = !DILocalVariable(name: "sgpre2", scope: !297, file: !2, line: 186, type: !78)
!314 = !DILocalVariable(name: "max_lnpre_val", scope: !315, file: !2, line: 204, type: !78)
!315 = distinct !DILexicalBlock(scope: !316, file: !2, line: 203, column: 80)
!316 = distinct !DILexicalBlock(scope: !297, file: !2, line: 203, column: 8)
!317 = !DILocalVariable(name: "max_lnpre_err", scope: !315, file: !2, line: 205, type: !78)
!318 = !DILocalVariable(name: "lp1", scope: !315, file: !2, line: 206, type: !78)
!319 = !DILocalVariable(name: "lp2", scope: !315, file: !2, line: 207, type: !78)
!320 = !DILocalVariable(name: "t1", scope: !315, file: !2, line: 208, type: !78)
!321 = !DILocalVariable(name: "t2", scope: !315, file: !2, line: 209, type: !78)
!322 = !DILocalVariable(name: "t1", scope: !323, file: !2, line: 218, type: !78)
!323 = distinct !DILexicalBlock(scope: !316, file: !2, line: 217, column: 10)
!324 = !DILocalVariable(name: "t2", scope: !323, file: !2, line: 219, type: !78)
!325 = distinct !DIAssignID()
!326 = !DILocation(line: 0, scope: !285)
!327 = distinct !DIAssignID()
!328 = distinct !DIAssignID()
!329 = !DILocation(line: 0, scope: !290)
!330 = distinct !DIAssignID()
!331 = distinct !DIAssignID()
!332 = !DILocation(line: 0, scope: !293)
!333 = distinct !DIAssignID()
!334 = !DILocation(line: 0, scope: !297)
!335 = distinct !DIAssignID()
!336 = distinct !DIAssignID()
!337 = distinct !DIAssignID()
!338 = distinct !DIAssignID()
!339 = distinct !DIAssignID()
!340 = distinct !DIAssignID()
!341 = distinct !DIAssignID()
!342 = !DILocation(line: 0, scope: !267)
!343 = !DILocation(line: 134, column: 16, scope: !267)
!344 = !DILocation(line: 135, column: 18, scope: !267)
!345 = !DILocation(line: 137, column: 6, scope: !281)
!346 = !DILocation(line: 137, column: 16, scope: !281)
!347 = !DILocation(line: 137, column: 6, scope: !267)
!348 = !DILocation(line: 141, column: 10, scope: !286)
!349 = !DILocation(line: 141, column: 8, scope: !280)
!350 = !DILocation(line: 142, column: 24, scope: !285)
!351 = !DILocation(line: 142, column: 28, scope: !285)
!352 = !DILocation(line: 142, column: 27, scope: !285)
!353 = !DILocation(line: 143, column: 7, scope: !285)
!354 = !DILocation(line: 144, column: 7, scope: !285)
!355 = !DILocation(line: 145, column: 25, scope: !285)
!356 = !DILocation(line: 145, column: 7, scope: !285)
!357 = !DILocation(line: 146, column: 7, scope: !285)
!358 = !DILocation(line: 147, column: 23, scope: !285)
!359 = !DILocation(line: 147, column: 36, scope: !285)
!360 = !DILocation(line: 147, column: 27, scope: !285)
!361 = !DILocation(line: 147, column: 47, scope: !285)
!362 = !DILocation(line: 147, column: 40, scope: !285)
!363 = !DILocation(line: 0, scope: !280)
!364 = !DILocation(line: 148, column: 26, scope: !285)
!365 = !DILocation(line: 148, column: 37, scope: !285)
!366 = !DILocation(line: 148, column: 30, scope: !285)
!367 = !DILocation(line: 148, column: 62, scope: !285)
!368 = !DILocation(line: 148, column: 72, scope: !285)
!369 = !DILocation(line: 148, column: 70, scope: !285)
!370 = !DILocation(line: 148, column: 59, scope: !285)
!371 = !DILocation(line: 148, column: 41, scope: !285)
!372 = !DILocation(line: 149, column: 45, scope: !285)
!373 = !DILocation(line: 149, column: 49, scope: !285)
!374 = !DILocation(line: 0, scope: !197, inlinedAt: !375)
!375 = distinct !DILocation(line: 149, column: 7, scope: !285)
!376 = !DILocation(line: 107, column: 12, scope: !205, inlinedAt: !375)
!377 = !DILocation(line: 107, column: 6, scope: !205, inlinedAt: !375)
!378 = !DILocation(line: 107, column: 16, scope: !205, inlinedAt: !375)
!379 = !DILocation(line: 107, column: 6, scope: !197, inlinedAt: !375)
!380 = !DILocation(line: 149, column: 38, scope: !285)
!381 = !DILocation(line: 0, scope: !204, inlinedAt: !375)
!382 = !DILocation(line: 109, column: 30, scope: !204, inlinedAt: !375)
!383 = !DILocation(line: 109, column: 25, scope: !204, inlinedAt: !375)
!384 = !DILocation(line: 110, column: 24, scope: !204, inlinedAt: !375)
!385 = !DILocation(line: 111, column: 25, scope: !204, inlinedAt: !375)
!386 = !DILocation(line: 112, column: 26, scope: !204, inlinedAt: !375)
!387 = !DILocation(line: 113, column: 28, scope: !204, inlinedAt: !375)
!388 = !DILocation(line: 113, column: 25, scope: !204, inlinedAt: !375)
!389 = !DILocation(line: 113, column: 38, scope: !204, inlinedAt: !375)
!390 = !DILocation(line: 113, column: 33, scope: !204, inlinedAt: !375)
!391 = !DILocation(line: 113, column: 41, scope: !204, inlinedAt: !375)
!392 = !DILocation(line: 114, column: 39, scope: !204, inlinedAt: !375)
!393 = !DILocation(line: 114, column: 41, scope: !204, inlinedAt: !375)
!394 = !DILocation(line: 114, column: 33, scope: !204, inlinedAt: !375)
!395 = !DILocation(line: 114, column: 44, scope: !204, inlinedAt: !375)
!396 = !DILocation(line: 115, column: 38, scope: !204, inlinedAt: !375)
!397 = !DILocation(line: 115, column: 35, scope: !204, inlinedAt: !375)
!398 = !DILocation(line: 115, column: 43, scope: !204, inlinedAt: !375)
!399 = !DILocation(line: 115, column: 29, scope: !204, inlinedAt: !375)
!400 = !DILocation(line: 115, column: 52, scope: !204, inlinedAt: !375)
!401 = !DILocation(line: 115, column: 63, scope: !204, inlinedAt: !375)
!402 = !DILocation(line: 115, column: 60, scope: !204, inlinedAt: !375)
!403 = !DILocation(line: 115, column: 68, scope: !204, inlinedAt: !375)
!404 = !DILocation(line: 115, column: 47, scope: !204, inlinedAt: !375)
!405 = !DILocation(line: 116, column: 27, scope: !204, inlinedAt: !375)
!406 = !DILocation(line: 117, column: 31, scope: !204, inlinedAt: !375)
!407 = !DILocation(line: 117, column: 36, scope: !204, inlinedAt: !375)
!408 = !DILocation(line: 117, column: 24, scope: !204, inlinedAt: !375)
!409 = !DILocation(line: 118, column: 24, scope: !204, inlinedAt: !375)
!410 = !DILocation(line: 118, column: 51, scope: !204, inlinedAt: !375)
!411 = !DILocation(line: 118, column: 49, scope: !204, inlinedAt: !375)
!412 = !DILocation(line: 118, column: 62, scope: !204, inlinedAt: !375)
!413 = !DILocation(line: 118, column: 60, scope: !204, inlinedAt: !375)
!414 = !DILocation(line: 118, column: 42, scope: !204, inlinedAt: !375)
!415 = !DILocation(line: 119, column: 44, scope: !204, inlinedAt: !375)
!416 = !DILocation(line: 119, column: 42, scope: !204, inlinedAt: !375)
!417 = !DILocation(line: 119, column: 17, scope: !204, inlinedAt: !375)
!418 = !DILocation(line: 123, column: 5, scope: !262, inlinedAt: !375)
!419 = !DILocation(line: 0, scope: !205, inlinedAt: !375)
!420 = !DILocation(line: 150, column: 5, scope: !286)
!421 = !DILocation(line: 150, column: 5, scope: !285)
!422 = !DILocation(line: 152, column: 7, scope: !290)
!423 = !DILocation(line: 153, column: 7, scope: !290)
!424 = !DILocation(line: 154, column: 27, scope: !290)
!425 = !DILocation(line: 154, column: 7, scope: !290)
!426 = !DILocation(line: 155, column: 27, scope: !290)
!427 = !DILocation(line: 155, column: 29, scope: !290)
!428 = !DILocation(line: 155, column: 7, scope: !290)
!429 = !DILocation(line: 156, column: 26, scope: !290)
!430 = !DILocation(line: 156, column: 41, scope: !290)
!431 = !DILocation(line: 156, column: 30, scope: !290)
!432 = !DILocation(line: 157, column: 26, scope: !290)
!433 = !DILocation(line: 157, column: 41, scope: !290)
!434 = !DILocation(line: 157, column: 30, scope: !290)
!435 = !DILocation(line: 0, scope: !197, inlinedAt: !436)
!436 = distinct !DILocation(line: 158, column: 7, scope: !290)
!437 = !DILocation(line: 107, column: 12, scope: !205, inlinedAt: !436)
!438 = !DILocation(line: 107, column: 6, scope: !205, inlinedAt: !436)
!439 = !DILocation(line: 107, column: 16, scope: !205, inlinedAt: !436)
!440 = !DILocation(line: 107, column: 6, scope: !197, inlinedAt: !436)
!441 = !DILocation(line: 0, scope: !204, inlinedAt: !436)
!442 = !DILocation(line: 109, column: 30, scope: !204, inlinedAt: !436)
!443 = !DILocation(line: 109, column: 25, scope: !204, inlinedAt: !436)
!444 = !DILocation(line: 110, column: 24, scope: !204, inlinedAt: !436)
!445 = !DILocation(line: 111, column: 25, scope: !204, inlinedAt: !436)
!446 = !DILocation(line: 112, column: 26, scope: !204, inlinedAt: !436)
!447 = !DILocation(line: 113, column: 25, scope: !204, inlinedAt: !436)
!448 = !DILocation(line: 113, column: 38, scope: !204, inlinedAt: !436)
!449 = !DILocation(line: 113, column: 33, scope: !204, inlinedAt: !436)
!450 = !DILocation(line: 113, column: 41, scope: !204, inlinedAt: !436)
!451 = !DILocation(line: 114, column: 39, scope: !204, inlinedAt: !436)
!452 = !DILocation(line: 114, column: 41, scope: !204, inlinedAt: !436)
!453 = !DILocation(line: 114, column: 33, scope: !204, inlinedAt: !436)
!454 = !DILocation(line: 114, column: 44, scope: !204, inlinedAt: !436)
!455 = !DILocation(line: 115, column: 38, scope: !204, inlinedAt: !436)
!456 = !DILocation(line: 115, column: 35, scope: !204, inlinedAt: !436)
!457 = !DILocation(line: 115, column: 43, scope: !204, inlinedAt: !436)
!458 = !DILocation(line: 115, column: 29, scope: !204, inlinedAt: !436)
!459 = !DILocation(line: 115, column: 52, scope: !204, inlinedAt: !436)
!460 = !DILocation(line: 115, column: 63, scope: !204, inlinedAt: !436)
!461 = !DILocation(line: 115, column: 60, scope: !204, inlinedAt: !436)
!462 = !DILocation(line: 115, column: 68, scope: !204, inlinedAt: !436)
!463 = !DILocation(line: 115, column: 47, scope: !204, inlinedAt: !436)
!464 = !DILocation(line: 116, column: 27, scope: !204, inlinedAt: !436)
!465 = !DILocation(line: 117, column: 31, scope: !204, inlinedAt: !436)
!466 = !DILocation(line: 117, column: 36, scope: !204, inlinedAt: !436)
!467 = !DILocation(line: 117, column: 24, scope: !204, inlinedAt: !436)
!468 = !DILocation(line: 118, column: 24, scope: !204, inlinedAt: !436)
!469 = !DILocation(line: 118, column: 51, scope: !204, inlinedAt: !436)
!470 = !DILocation(line: 118, column: 49, scope: !204, inlinedAt: !436)
!471 = !DILocation(line: 118, column: 62, scope: !204, inlinedAt: !436)
!472 = !DILocation(line: 118, column: 60, scope: !204, inlinedAt: !436)
!473 = !DILocation(line: 118, column: 42, scope: !204, inlinedAt: !436)
!474 = !DILocation(line: 119, column: 44, scope: !204, inlinedAt: !436)
!475 = !DILocation(line: 119, column: 42, scope: !204, inlinedAt: !436)
!476 = !DILocation(line: 119, column: 17, scope: !204, inlinedAt: !436)
!477 = !DILocation(line: 123, column: 5, scope: !262, inlinedAt: !436)
!478 = !DILocation(line: 0, scope: !205, inlinedAt: !436)
!479 = !DILocation(line: 159, column: 5, scope: !286)
!480 = !DILocation(line: 119, column: 17, scope: !204, inlinedAt: !481)
!481 = !DILocation(line: 0, scope: !286)
!482 = !DILocation(line: 117, column: 18, scope: !204, inlinedAt: !481)
!483 = !DILocation(line: 161, column: 18, scope: !294)
!484 = !DILocation(line: 161, column: 8, scope: !280)
!485 = !DILocation(line: 162, column: 20, scope: !486)
!486 = distinct !DILexicalBlock(scope: !294, file: !2, line: 161, column: 42)
!487 = !DILocation(line: 163, column: 15, scope: !486)
!488 = !DILocation(line: 163, column: 20, scope: !486)
!489 = !DILocation(line: 164, column: 22, scope: !486)
!490 = !{!112, !112, i64 0}
!491 = !DILocation(line: 165, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !486, file: !2, line: 165, column: 7)
!493 = !DILocation(line: 168, column: 7, scope: !293)
!494 = !DILocation(line: 169, column: 20, scope: !293)
!495 = !DILocation(line: 170, column: 27, scope: !293)
!496 = !DILocation(line: 170, column: 31, scope: !293)
!497 = !DILocation(line: 170, column: 20, scope: !293)
!498 = !DILocation(line: 171, column: 31, scope: !293)
!499 = !DILocation(line: 171, column: 46, scope: !293)
!500 = !DILocation(line: 171, column: 52, scope: !293)
!501 = !DILocation(line: 171, column: 50, scope: !293)
!502 = !DILocation(line: 171, column: 39, scope: !293)
!503 = !DILocation(line: 171, column: 15, scope: !293)
!504 = !DILocation(line: 172, column: 46, scope: !293)
!505 = !DILocation(line: 172, column: 44, scope: !293)
!506 = !DILocation(line: 172, column: 19, scope: !293)
!507 = !DILocation(line: 173, column: 22, scope: !293)
!508 = !DILocation(line: 175, column: 5, scope: !294)
!509 = !DILocation(line: 178, column: 26, scope: !297)
!510 = !DILocation(line: 178, column: 30, scope: !297)
!511 = !DILocation(line: 178, column: 29, scope: !297)
!512 = !DILocation(line: 179, column: 5, scope: !297)
!513 = !DILocation(line: 179, column: 30, scope: !297)
!514 = !DILocation(line: 180, column: 5, scope: !297)
!515 = !DILocation(line: 180, column: 30, scope: !297)
!516 = !DILocation(line: 181, column: 5, scope: !297)
!517 = !DILocation(line: 181, column: 30, scope: !297)
!518 = !DILocation(line: 182, column: 5, scope: !297)
!519 = !DILocation(line: 182, column: 30, scope: !297)
!520 = !DILocation(line: 0, scope: !197, inlinedAt: !521)
!521 = distinct !DILocation(line: 187, column: 5, scope: !297)
!522 = !DILocation(line: 107, column: 12, scope: !205, inlinedAt: !521)
!523 = !DILocation(line: 107, column: 6, scope: !205, inlinedAt: !521)
!524 = !DILocation(line: 107, column: 16, scope: !205, inlinedAt: !521)
!525 = !DILocation(line: 107, column: 6, scope: !197, inlinedAt: !521)
!526 = !DILocation(line: 0, scope: !204, inlinedAt: !521)
!527 = !DILocation(line: 109, column: 30, scope: !204, inlinedAt: !521)
!528 = !DILocation(line: 109, column: 25, scope: !204, inlinedAt: !521)
!529 = !DILocation(line: 110, column: 24, scope: !204, inlinedAt: !521)
!530 = !DILocation(line: 111, column: 25, scope: !204, inlinedAt: !521)
!531 = !DILocation(line: 112, column: 26, scope: !204, inlinedAt: !521)
!532 = !DILocation(line: 113, column: 28, scope: !204, inlinedAt: !521)
!533 = !DILocation(line: 113, column: 25, scope: !204, inlinedAt: !521)
!534 = !DILocation(line: 113, column: 38, scope: !204, inlinedAt: !521)
!535 = !DILocation(line: 113, column: 33, scope: !204, inlinedAt: !521)
!536 = !DILocation(line: 113, column: 41, scope: !204, inlinedAt: !521)
!537 = !DILocation(line: 114, column: 39, scope: !204, inlinedAt: !521)
!538 = !DILocation(line: 114, column: 41, scope: !204, inlinedAt: !521)
!539 = !DILocation(line: 114, column: 33, scope: !204, inlinedAt: !521)
!540 = !DILocation(line: 114, column: 44, scope: !204, inlinedAt: !521)
!541 = !DILocation(line: 115, column: 38, scope: !204, inlinedAt: !521)
!542 = !DILocation(line: 115, column: 35, scope: !204, inlinedAt: !521)
!543 = !DILocation(line: 115, column: 43, scope: !204, inlinedAt: !521)
!544 = !DILocation(line: 115, column: 29, scope: !204, inlinedAt: !521)
!545 = !DILocation(line: 115, column: 52, scope: !204, inlinedAt: !521)
!546 = !DILocation(line: 115, column: 63, scope: !204, inlinedAt: !521)
!547 = !DILocation(line: 115, column: 60, scope: !204, inlinedAt: !521)
!548 = !DILocation(line: 115, column: 68, scope: !204, inlinedAt: !521)
!549 = !DILocation(line: 115, column: 47, scope: !204, inlinedAt: !521)
!550 = !DILocation(line: 116, column: 27, scope: !204, inlinedAt: !521)
!551 = !DILocation(line: 117, column: 31, scope: !204, inlinedAt: !521)
!552 = !DILocation(line: 117, column: 36, scope: !204, inlinedAt: !521)
!553 = !DILocation(line: 117, column: 24, scope: !204, inlinedAt: !521)
!554 = !DILocation(line: 118, column: 24, scope: !204, inlinedAt: !521)
!555 = !DILocation(line: 118, column: 51, scope: !204, inlinedAt: !521)
!556 = !DILocation(line: 118, column: 49, scope: !204, inlinedAt: !521)
!557 = !DILocation(line: 118, column: 62, scope: !204, inlinedAt: !521)
!558 = !DILocation(line: 118, column: 60, scope: !204, inlinedAt: !521)
!559 = !DILocation(line: 118, column: 42, scope: !204, inlinedAt: !521)
!560 = !DILocation(line: 119, column: 44, scope: !204, inlinedAt: !521)
!561 = !DILocation(line: 119, column: 42, scope: !204, inlinedAt: !521)
!562 = !DILocation(line: 119, column: 17, scope: !204, inlinedAt: !521)
!563 = !DILocation(line: 123, column: 5, scope: !262, inlinedAt: !521)
!564 = !DILocation(line: 0, scope: !205, inlinedAt: !521)
!565 = !DILocation(line: 188, column: 43, scope: !297)
!566 = !DILocation(line: 0, scope: !197, inlinedAt: !567)
!567 = distinct !DILocation(line: 188, column: 5, scope: !297)
!568 = !DILocation(line: 107, column: 12, scope: !205, inlinedAt: !567)
!569 = !DILocation(line: 107, column: 6, scope: !205, inlinedAt: !567)
!570 = !DILocation(line: 107, column: 16, scope: !205, inlinedAt: !567)
!571 = !DILocation(line: 107, column: 6, scope: !197, inlinedAt: !567)
!572 = !DILocation(line: 188, column: 36, scope: !297)
!573 = !DILocation(line: 0, scope: !204, inlinedAt: !567)
!574 = !DILocation(line: 109, column: 30, scope: !204, inlinedAt: !567)
!575 = !DILocation(line: 109, column: 25, scope: !204, inlinedAt: !567)
!576 = !DILocation(line: 110, column: 24, scope: !204, inlinedAt: !567)
!577 = !DILocation(line: 111, column: 25, scope: !204, inlinedAt: !567)
!578 = !DILocation(line: 112, column: 26, scope: !204, inlinedAt: !567)
!579 = !DILocation(line: 113, column: 28, scope: !204, inlinedAt: !567)
!580 = !DILocation(line: 113, column: 25, scope: !204, inlinedAt: !567)
!581 = !DILocation(line: 113, column: 38, scope: !204, inlinedAt: !567)
!582 = !DILocation(line: 113, column: 33, scope: !204, inlinedAt: !567)
!583 = !DILocation(line: 113, column: 41, scope: !204, inlinedAt: !567)
!584 = !DILocation(line: 114, column: 39, scope: !204, inlinedAt: !567)
!585 = !DILocation(line: 114, column: 41, scope: !204, inlinedAt: !567)
!586 = !DILocation(line: 114, column: 33, scope: !204, inlinedAt: !567)
!587 = !DILocation(line: 114, column: 44, scope: !204, inlinedAt: !567)
!588 = !DILocation(line: 115, column: 38, scope: !204, inlinedAt: !567)
!589 = !DILocation(line: 115, column: 35, scope: !204, inlinedAt: !567)
!590 = !DILocation(line: 115, column: 43, scope: !204, inlinedAt: !567)
!591 = !DILocation(line: 115, column: 29, scope: !204, inlinedAt: !567)
!592 = !DILocation(line: 115, column: 52, scope: !204, inlinedAt: !567)
!593 = !DILocation(line: 115, column: 63, scope: !204, inlinedAt: !567)
!594 = !DILocation(line: 115, column: 60, scope: !204, inlinedAt: !567)
!595 = !DILocation(line: 115, column: 68, scope: !204, inlinedAt: !567)
!596 = !DILocation(line: 115, column: 47, scope: !204, inlinedAt: !567)
!597 = !DILocation(line: 116, column: 27, scope: !204, inlinedAt: !567)
!598 = !DILocation(line: 117, column: 31, scope: !204, inlinedAt: !567)
!599 = !DILocation(line: 117, column: 36, scope: !204, inlinedAt: !567)
!600 = !DILocation(line: 117, column: 24, scope: !204, inlinedAt: !567)
!601 = !DILocation(line: 118, column: 24, scope: !204, inlinedAt: !567)
!602 = !DILocation(line: 118, column: 51, scope: !204, inlinedAt: !567)
!603 = !DILocation(line: 118, column: 49, scope: !204, inlinedAt: !567)
!604 = !DILocation(line: 118, column: 62, scope: !204, inlinedAt: !567)
!605 = !DILocation(line: 118, column: 60, scope: !204, inlinedAt: !567)
!606 = !DILocation(line: 118, column: 42, scope: !204, inlinedAt: !567)
!607 = !DILocation(line: 119, column: 44, scope: !204, inlinedAt: !567)
!608 = !DILocation(line: 119, column: 42, scope: !204, inlinedAt: !567)
!609 = !DILocation(line: 119, column: 17, scope: !204, inlinedAt: !567)
!610 = !DILocation(line: 123, column: 5, scope: !262, inlinedAt: !567)
!611 = !DILocation(line: 0, scope: !205, inlinedAt: !567)
!612 = !DILocation(line: 190, column: 5, scope: !297)
!613 = !DILocation(line: 191, column: 29, scope: !297)
!614 = !DILocation(line: 191, column: 31, scope: !297)
!615 = !DILocation(line: 191, column: 5, scope: !297)
!616 = !DILocation(line: 193, column: 27, scope: !297)
!617 = !DILocation(line: 193, column: 5, scope: !297)
!618 = !DILocation(line: 194, column: 5, scope: !297)
!619 = !DILocation(line: 196, column: 25, scope: !297)
!620 = !DILocation(line: 196, column: 40, scope: !297)
!621 = !DILocation(line: 196, column: 29, scope: !297)
!622 = !DILocation(line: 197, column: 25, scope: !297)
!623 = !DILocation(line: 197, column: 40, scope: !297)
!624 = !DILocation(line: 197, column: 29, scope: !297)
!625 = !DILocation(line: 198, column: 25, scope: !297)
!626 = !DILocation(line: 198, column: 36, scope: !297)
!627 = !DILocation(line: 198, column: 29, scope: !297)
!628 = !DILocation(line: 198, column: 40, scope: !297)
!629 = !DILocation(line: 198, column: 50, scope: !297)
!630 = !DILocation(line: 199, column: 25, scope: !297)
!631 = !DILocation(line: 199, column: 36, scope: !297)
!632 = !DILocation(line: 199, column: 29, scope: !297)
!633 = !DILocation(line: 199, column: 61, scope: !297)
!634 = !DILocation(line: 199, column: 75, scope: !297)
!635 = !DILocation(line: 199, column: 74, scope: !297)
!636 = !DILocation(line: 199, column: 58, scope: !297)
!637 = !DILocation(line: 199, column: 40, scope: !297)
!638 = !DILocation(line: 200, column: 14, scope: !297)
!639 = !DILocation(line: 200, column: 24, scope: !297)
!640 = !DILocation(line: 200, column: 22, scope: !297)
!641 = !DILocation(line: 201, column: 14, scope: !297)
!642 = !DILocation(line: 201, column: 24, scope: !297)
!643 = !DILocation(line: 201, column: 22, scope: !297)
!644 = !DILocation(line: 203, column: 19, scope: !316)
!645 = !DILocation(line: 203, column: 42, scope: !316)
!646 = !DILocation(line: 204, column: 30, scope: !315)
!647 = !DILocation(line: 0, scope: !315)
!648 = !DILocation(line: 205, column: 30, scope: !315)
!649 = !DILocation(line: 206, column: 31, scope: !315)
!650 = !DILocation(line: 207, column: 31, scope: !315)
!651 = !DILocation(line: 208, column: 27, scope: !315)
!652 = !DILocation(line: 208, column: 26, scope: !315)
!653 = !DILocation(line: 209, column: 27, scope: !315)
!654 = !DILocation(line: 209, column: 26, scope: !315)
!655 = !DILocation(line: 210, column: 24, scope: !315)
!656 = !DILocation(line: 210, column: 36, scope: !315)
!657 = !DILocation(line: 210, column: 32, scope: !315)
!658 = !DILocation(line: 210, column: 20, scope: !315)
!659 = !DILocation(line: 211, column: 22, scope: !315)
!660 = !DILocation(line: 211, column: 30, scope: !315)
!661 = !DILocation(line: 211, column: 40, scope: !315)
!662 = !DILocation(line: 211, column: 48, scope: !315)
!663 = !DILocation(line: 211, column: 38, scope: !315)
!664 = !DILocation(line: 211, column: 15, scope: !315)
!665 = !DILocation(line: 211, column: 20, scope: !315)
!666 = !DILocation(line: 212, column: 40, scope: !315)
!667 = !DILocation(line: 212, column: 38, scope: !315)
!668 = !DILocation(line: 212, column: 62, scope: !315)
!669 = !DILocation(line: 212, column: 80, scope: !315)
!670 = !DILocation(line: 212, column: 78, scope: !315)
!671 = !DILocation(line: 212, column: 59, scope: !315)
!672 = !DILocation(line: 212, column: 19, scope: !315)
!673 = !DILocation(line: 213, column: 59, scope: !315)
!674 = !DILocation(line: 213, column: 46, scope: !315)
!675 = !DILocation(line: 213, column: 44, scope: !315)
!676 = !DILocation(line: 213, column: 19, scope: !315)
!677 = !DILocation(line: 214, column: 22, scope: !315)
!678 = !DILocation(line: 215, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !315, file: !2, line: 215, column: 7)
!680 = !DILocation(line: 218, column: 26, scope: !323)
!681 = !DILocation(line: 218, column: 25, scope: !323)
!682 = !DILocation(line: 0, scope: !323)
!683 = !DILocation(line: 219, column: 26, scope: !323)
!684 = !DILocation(line: 219, column: 25, scope: !323)
!685 = !DILocation(line: 220, column: 24, scope: !323)
!686 = !DILocation(line: 220, column: 36, scope: !323)
!687 = !DILocation(line: 220, column: 32, scope: !323)
!688 = !DILocation(line: 220, column: 20, scope: !323)
!689 = !DILocation(line: 221, column: 22, scope: !323)
!690 = !DILocation(line: 221, column: 31, scope: !323)
!691 = !DILocation(line: 221, column: 42, scope: !323)
!692 = !DILocation(line: 221, column: 50, scope: !323)
!693 = !DILocation(line: 221, column: 40, scope: !323)
!694 = !DILocation(line: 221, column: 15, scope: !323)
!695 = !DILocation(line: 221, column: 20, scope: !323)
!696 = !DILocation(line: 222, column: 41, scope: !323)
!697 = !DILocation(line: 222, column: 57, scope: !323)
!698 = !DILocation(line: 222, column: 56, scope: !323)
!699 = !DILocation(line: 222, column: 75, scope: !323)
!700 = !DILocation(line: 222, column: 91, scope: !323)
!701 = !DILocation(line: 222, column: 90, scope: !323)
!702 = !DILocation(line: 222, column: 73, scope: !323)
!703 = !DILocation(line: 222, column: 38, scope: !323)
!704 = !DILocation(line: 222, column: 19, scope: !323)
!705 = !DILocation(line: 223, column: 59, scope: !323)
!706 = !DILocation(line: 223, column: 46, scope: !323)
!707 = !DILocation(line: 223, column: 44, scope: !323)
!708 = !DILocation(line: 223, column: 19, scope: !323)
!709 = !DILocation(line: 224, column: 22, scope: !323)
!710 = !DILocation(line: 0, scope: !316)
!711 = !DILocation(line: 227, column: 3, scope: !281)
!712 = !DILocation(line: 0, scope: !281)
!713 = !DILocation(line: 228, column: 1, scope: !267)
!714 = !DISubprogram(name: "log", scope: !266, file: !266, line: 104, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!715 = !DISubroutineType(types: !716)
!716 = !{!78, !78}
!717 = !DISubprogram(name: "gsl_sf_lngamma_e", scope: !718, file: !718, line: 47, type: !719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!719 = !DISubroutineType(types: !720)
!720 = !{!28, !78, !79}
!721 = !DISubprogram(name: "gsl_sf_exp_err_e", scope: !722, file: !722, line: 110, type: !723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DIFile(filename: "../gsl/gsl_sf_exp.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c512f91507e79efdd09661b0faef2cde")
!723 = !DISubroutineType(types: !724)
!724 = !{!28, !77, !77, !79}
!725 = !DISubprogram(name: "gsl_sf_lngamma_sgn_e", scope: !718, file: !718, line: 58, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!726 = !DISubroutineType(types: !727)
!727 = !{!28, !78, !79, !270}
!728 = !DISubprogram(name: "exp", scope: !266, file: !266, line: 95, type: !715, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!729 = distinct !DISubprogram(name: "gsl_sf_hyperg_2F0_series_e", scope: !2, file: !2, line: 240, type: !730, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !732)
!730 = !DISubroutineType(types: !731)
!731 = !{!28, !77, !77, !77, !28, !79}
!732 = !{!733, !734, !735, !736, !737, !738, !740, !741, !742, !743, !744, !745, !746, !747, !748, !750}
!733 = !DILocalVariable(name: "a", arg: 1, scope: !729, file: !2, line: 240, type: !77)
!734 = !DILocalVariable(name: "b", arg: 2, scope: !729, file: !2, line: 240, type: !77)
!735 = !DILocalVariable(name: "x", arg: 3, scope: !729, file: !2, line: 240, type: !77)
!736 = !DILocalVariable(name: "n_trunc", arg: 4, scope: !729, file: !2, line: 241, type: !28)
!737 = !DILocalVariable(name: "result", arg: 5, scope: !729, file: !2, line: 242, type: !79)
!738 = !DILocalVariable(name: "maxiter", scope: !729, file: !2, line: 245, type: !739)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!740 = !DILocalVariable(name: "an", scope: !729, file: !2, line: 246, type: !78)
!741 = !DILocalVariable(name: "bn", scope: !729, file: !2, line: 247, type: !78)
!742 = !DILocalVariable(name: "n", scope: !729, file: !2, line: 248, type: !78)
!743 = !DILocalVariable(name: "sum", scope: !729, file: !2, line: 249, type: !78)
!744 = !DILocalVariable(name: "del", scope: !729, file: !2, line: 250, type: !78)
!745 = !DILocalVariable(name: "abs_del", scope: !729, file: !2, line: 251, type: !78)
!746 = !DILocalVariable(name: "max_abs_del", scope: !729, file: !2, line: 252, type: !78)
!747 = !DILocalVariable(name: "last_abs_del", scope: !729, file: !2, line: 253, type: !78)
!748 = !DILocalVariable(name: "u", scope: !749, file: !2, line: 257, type: !78)
!749 = distinct !DILexicalBlock(scope: !729, file: !2, line: 255, column: 61)
!750 = !DILocalVariable(name: "abs_u", scope: !749, file: !2, line: 258, type: !78)
!751 = !DILocation(line: 0, scope: !729)
!752 = !DILocation(line: 255, column: 3, scope: !729)
!753 = !DILocation(line: 247, column: 10, scope: !729)
!754 = !DILocation(line: 248, column: 10, scope: !729)
!755 = !DILocation(line: 249, column: 10, scope: !729)
!756 = !DILocation(line: 250, column: 10, scope: !729)
!757 = !DILocation(line: 251, column: 10, scope: !729)
!758 = !DILocation(line: 252, column: 10, scope: !729)
!759 = !DILocation(line: 246, column: 10, scope: !729)
!760 = !DILocation(line: 255, column: 17, scope: !729)
!761 = !DILocation(line: 255, column: 16, scope: !729)
!762 = !DILocation(line: 255, column: 27, scope: !729)
!763 = !DILocation(line: 255, column: 45, scope: !729)
!764 = !DILocation(line: 257, column: 24, scope: !749)
!765 = !DILocation(line: 257, column: 27, scope: !749)
!766 = !DILocation(line: 257, column: 19, scope: !749)
!767 = !DILocation(line: 0, scope: !749)
!768 = !DILocation(line: 258, column: 20, scope: !749)
!769 = !DILocation(line: 260, column: 14, scope: !770)
!770 = distinct !DILexicalBlock(scope: !749, file: !2, line: 260, column: 8)
!771 = !DILocation(line: 260, column: 20, scope: !770)
!772 = !DILocation(line: 261, column: 19, scope: !773)
!773 = distinct !DILexicalBlock(scope: !770, file: !2, line: 260, column: 58)
!774 = !DILocation(line: 262, column: 15, scope: !773)
!775 = !DILocation(line: 262, column: 19, scope: !773)
!776 = !DILocation(line: 263, column: 7, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !2, line: 263, column: 7)
!778 = !DILocation(line: 266, column: 9, scope: !749)
!779 = !DILocation(line: 267, column: 9, scope: !749)
!780 = !DILocation(line: 269, column: 15, scope: !749)
!781 = !DILocation(line: 271, column: 16, scope: !782)
!782 = distinct !DILexicalBlock(scope: !749, file: !2, line: 271, column: 8)
!783 = !DILocation(line: 271, column: 8, scope: !749)
!784 = !DILocation(line: 276, column: 8, scope: !749)
!785 = !DILocation(line: 277, column: 8, scope: !749)
!786 = !DILocation(line: 278, column: 8, scope: !749)
!787 = !DILocation(line: 280, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !749, file: !2, line: 280, column: 8)
!789 = !DILocation(line: 280, column: 18, scope: !788)
!790 = !DILocation(line: 274, column: 20, scope: !749)
!791 = !DILocation(line: 282, column: 21, scope: !792)
!792 = distinct !DILexicalBlock(scope: !749, file: !2, line: 282, column: 8)
!793 = !DILocation(line: 285, column: 15, scope: !729)
!794 = !DILocation(line: 286, column: 33, scope: !729)
!795 = !DILocation(line: 286, column: 37, scope: !729)
!796 = !DILocation(line: 286, column: 11, scope: !729)
!797 = !DILocation(line: 286, column: 15, scope: !729)
!798 = !DILocation(line: 287, column: 8, scope: !799)
!799 = distinct !DILexicalBlock(scope: !729, file: !2, line: 287, column: 6)
!800 = !DILocation(line: 287, column: 6, scope: !729)
!801 = !DILocation(line: 288, column: 5, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !2, line: 288, column: 5)
!803 = !DILocation(line: 291, column: 1, scope: !729)
