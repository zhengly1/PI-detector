; ModuleID = 'lu.c'
source_filename = "lu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [40 x i8] c"LU decomposition requires square matrix\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"lu.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [42 x i8] c"permutation length must match matrix size\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [25 x i8] c"LU matrix must be square\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [30 x i8] c"matrix size must match b size\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [37 x i8] c"matrix size must match solution size\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [19 x i8] c"matrix is singular\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [41 x i8] c"matrix size must match solution/rhs size\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"matrix a must be square\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [37 x i8] c"LU matrix must be decomposition of a\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [38 x i8] c"matrix size must match workspace size\00", align 1, !dbg !49

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LU_decomp(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !dbg !121 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !156, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !157, metadata !DIExpression()), !dbg !188
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !158, metadata !DIExpression()), !dbg !188
  %4 = load i64, ptr %0, align 8, !dbg !189, !tbaa !190
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !197
  %6 = load i64, ptr %5, align 8, !dbg !197, !tbaa !198
  %7 = icmp eq i64 %4, %6, !dbg !199
  br i1 %7, label %9, label %8, !dbg !200

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef 20) #8, !dbg !201
  br label %90, !dbg !201

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !204, !tbaa !205
  %11 = icmp eq i64 %10, %4, !dbg !207
  br i1 %11, label %13, label %12, !dbg !208

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef 19) #8, !dbg !209
  br label %90, !dbg !209

13:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !159, metadata !DIExpression()), !dbg !212
  store i32 1, ptr %2, align 4, !dbg !213, !tbaa !214
  tail call void @gsl_permutation_init(ptr noundef nonnull %1) #8, !dbg !215
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !212
  %14 = add i64 %4, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !212
  %15 = icmp eq i64 %14, 0, !dbg !216
  br i1 %15, label %90, label %16, !dbg !217

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %17, align 8, !dbg !218, !tbaa !229
  %20 = load i64, ptr %18, align 8, !dbg !230, !tbaa !231
  br label %21, !dbg !217

21:                                               ; preds = %16, %86
  %22 = phi i64 [ %20, %16 ], [ %88, %86 ]
  %23 = phi ptr [ %19, %16 ], [ %87, %86 ]
  %24 = phi i64 [ 0, %16 ], [ %26, %86 ]
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !165, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !226, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !227, metadata !DIExpression()), !dbg !232
  %25 = mul i64 %22, %24, !dbg !233
  tail call void @llvm.dbg.value(metadata double poison, metadata !171, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !172, metadata !DIExpression()), !dbg !234
  %26 = add nuw i64 %24, 1, !dbg !235
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !164, metadata !DIExpression()), !dbg !212
  %27 = getelementptr double, ptr %23, i64 %24, !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !164, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !172, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double poison, metadata !171, metadata !DIExpression()), !dbg !234
  %28 = icmp ult i64 %26, %4, !dbg !237
  br i1 %28, label %29, label %86, !dbg !238

29:                                               ; preds = %21
  %30 = getelementptr double, ptr %23, i64 %25, !dbg !239
  %31 = getelementptr double, ptr %30, i64 %24, !dbg !239
  %32 = load double, ptr %31, align 8, !dbg !239, !tbaa !240
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !242
  tail call void @llvm.dbg.value(metadata double %33, metadata !171, metadata !DIExpression()), !dbg !234
  br label %34, !dbg !238

34:                                               ; preds = %29, %34
  %35 = phi i64 [ %45, %34 ], [ %26, %29 ]
  %36 = phi i64 [ %44, %34 ], [ %24, %29 ]
  %37 = phi double [ %43, %34 ], [ %33, %29 ]
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !164, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !172, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %37, metadata !171, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !243
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !226, metadata !DIExpression()), !dbg !243
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !227, metadata !DIExpression()), !dbg !243
  %38 = mul i64 %35, %22, !dbg !245
  %39 = getelementptr double, ptr %27, i64 %38, !dbg !246
  %40 = load double, ptr %39, align 8, !dbg !246, !tbaa !240
  %41 = tail call double @llvm.fabs.f64(double %40), !dbg !247
  tail call void @llvm.dbg.value(metadata double %41, metadata !173, metadata !DIExpression()), !dbg !248
  %42 = fcmp ogt double %41, %37, !dbg !249
  %43 = select i1 %42, double %41, double %37, !dbg !251
  %44 = select i1 %42, i64 %35, i64 %36, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !172, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata double %43, metadata !171, metadata !DIExpression()), !dbg !234
  %45 = add nuw i64 %35, 1, !dbg !252
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !164, metadata !DIExpression()), !dbg !212
  %46 = icmp ult i64 %45, %4, !dbg !237
  br i1 %46, label %34, label %47, !dbg !238, !llvm.loop !253

47:                                               ; preds = %34
  %48 = icmp eq i64 %44, %24, !dbg !256
  br i1 %48, label %57, label %49, !dbg !258

49:                                               ; preds = %47
  %50 = tail call i32 @gsl_matrix_swap_rows(ptr noundef nonnull %0, i64 noundef %24, i64 noundef %44) #8, !dbg !259
  %51 = tail call i32 @gsl_permutation_swap(ptr noundef nonnull %1, i64 noundef %24, i64 noundef %44) #8, !dbg !261
  %52 = load i32, ptr %2, align 4, !dbg !262, !tbaa !214
  %53 = sub nsw i32 0, %52, !dbg !263
  store i32 %53, ptr %2, align 4, !dbg !264, !tbaa !214
  %54 = load ptr, ptr %17, align 8, !dbg !265, !tbaa !229
  %55 = load i64, ptr %18, align 8, !dbg !267, !tbaa !231
  %56 = mul i64 %55, %24, !dbg !268
  br label %57, !dbg !269

57:                                               ; preds = %49, %47
  %58 = phi i64 [ %56, %49 ], [ %25, %47 ], !dbg !268
  %59 = phi i64 [ %55, %49 ], [ %22, %47 ], !dbg !267
  %60 = phi ptr [ %54, %49 ], [ %23, %47 ], !dbg !265
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !270
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !226, metadata !DIExpression()), !dbg !270
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !227, metadata !DIExpression()), !dbg !270
  %61 = getelementptr double, ptr %60, i64 %58, !dbg !271
  %62 = getelementptr double, ptr %61, i64 %24, !dbg !271
  %63 = load double, ptr %62, align 8, !dbg !271, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %63, metadata !167, metadata !DIExpression()), !dbg !234
  %64 = fcmp une double %63, 0.000000e+00, !dbg !272
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !164, metadata !DIExpression()), !dbg !212
  %65 = and i1 %64, %28, !dbg !273
  br i1 %65, label %66, label %86, !dbg !273

66:                                               ; preds = %57, %83
  %67 = phi i64 [ %84, %83 ], [ %26, %57 ]
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !164, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !226, metadata !DIExpression()), !dbg !274
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !227, metadata !DIExpression()), !dbg !274
  %68 = mul i64 %67, %59, !dbg !276
  %69 = getelementptr double, ptr %60, i64 %68, !dbg !277
  %70 = getelementptr double, ptr %69, i64 %24, !dbg !277
  %71 = load double, ptr %70, align 8, !dbg !277, !tbaa !240
  %72 = fdiv double %71, %63, !dbg !278
  tail call void @llvm.dbg.value(metadata double %72, metadata !177, metadata !DIExpression()), !dbg !279
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !280, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !286, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !287, metadata !DIExpression()), !dbg !289
  tail call void @llvm.dbg.value(metadata double %72, metadata !288, metadata !DIExpression()), !dbg !289
  store double %72, ptr %70, align 8, !dbg !291, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !166, metadata !DIExpression()), !dbg !212
  br label %73, !dbg !292

73:                                               ; preds = %66, %73
  %74 = phi i64 [ %26, %66 ], [ %81, %73 ]
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !166, metadata !DIExpression()), !dbg !212
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !293
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !226, metadata !DIExpression()), !dbg !293
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !227, metadata !DIExpression()), !dbg !293
  %75 = getelementptr double, ptr %69, i64 %74, !dbg !295
  %76 = load double, ptr %75, align 8, !dbg !295, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %76, metadata !183, metadata !DIExpression()), !dbg !296
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !226, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !227, metadata !DIExpression()), !dbg !297
  %77 = getelementptr double, ptr %61, i64 %74, !dbg !299
  %78 = load double, ptr %77, align 8, !dbg !299, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %78, metadata !187, metadata !DIExpression()), !dbg !296
  %79 = fmul double %72, %78, !dbg !300
  %80 = fsub double %76, %79, !dbg !301
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !280, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !286, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !287, metadata !DIExpression()), !dbg !302
  tail call void @llvm.dbg.value(metadata double %80, metadata !288, metadata !DIExpression()), !dbg !302
  store double %80, ptr %75, align 8, !dbg !304, !tbaa !240
  %81 = add nuw i64 %74, 1, !dbg !305
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !166, metadata !DIExpression()), !dbg !212
  %82 = icmp ult i64 %81, %4, !dbg !306
  br i1 %82, label %73, label %83, !dbg !292, !llvm.loop !307

83:                                               ; preds = %73
  %84 = add nuw i64 %67, 1, !dbg !309
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !164, metadata !DIExpression()), !dbg !212
  %85 = icmp ult i64 %84, %4, !dbg !310
  br i1 %85, label %66, label %86, !dbg !311, !llvm.loop !312

86:                                               ; preds = %83, %21, %57
  %87 = phi ptr [ %60, %57 ], [ %23, %21 ], [ %60, %83 ]
  %88 = phi i64 [ %59, %57 ], [ %22, %21 ], [ %59, %83 ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !165, metadata !DIExpression()), !dbg !212
  %89 = icmp eq i64 %26, %14, !dbg !216
  br i1 %89, label %90, label %21, !dbg !217, !llvm.loop !314

90:                                               ; preds = %86, %13, %8, %12
  %91 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 0, %13 ], [ 0, %86 ], !dbg !316
  ret i32 %91, !dbg !317
}

declare !dbg !318 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !323 void @gsl_permutation_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !326 i32 @gsl_matrix_swap_rows(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !329 i32 @gsl_permutation_swap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LU_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !332 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !350, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !351, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !352, metadata !DIExpression()), !dbg !361
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !353, metadata !DIExpression()), !dbg !361
  %5 = load i64, ptr %0, align 8, !dbg !362, !tbaa !190
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !363
  %7 = load i64, ptr %6, align 8, !dbg !363, !tbaa !198
  %8 = icmp eq i64 %5, %7, !dbg !364
  br i1 %8, label %10, label %9, !dbg !365

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 131, i32 noundef 20) #8, !dbg !366
  br label %43, !dbg !366

10:                                               ; preds = %4
  %11 = load i64, ptr %1, align 8, !dbg !369, !tbaa !205
  %12 = icmp eq i64 %5, %11, !dbg !370
  br i1 %12, label %14, label %13, !dbg !371

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 135, i32 noundef 19) #8, !dbg !372
  br label %43, !dbg !372

14:                                               ; preds = %10
  %15 = load i64, ptr %2, align 8, !dbg !375, !tbaa !376
  %16 = icmp eq i64 %5, %15, !dbg !378
  br i1 %16, label %18, label %17, !dbg !379

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 139, i32 noundef 19) #8, !dbg !380
  br label %43, !dbg !380

18:                                               ; preds = %14
  %19 = load i64, ptr %3, align 8, !dbg !383, !tbaa !376
  %20 = icmp eq i64 %5, %19, !dbg !384
  br i1 %20, label %22, label %21, !dbg !385

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 143, i32 noundef 19) #8, !dbg !386
  br label %43, !dbg !386

22:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !389, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !395, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !400
  %23 = icmp eq i64 %5, 0, !dbg !402
  br i1 %23, label %40, label %24, !dbg !403

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3, !dbg !404
  %26 = load ptr, ptr %25, align 8, !tbaa !229
  %27 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !231
  br label %32, !dbg !403

29:                                               ; preds = %32
  %30 = add nuw i64 %33, 1, !dbg !406
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !394, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !394, metadata !DIExpression()), !dbg !400
  %31 = icmp eq i64 %30, %5, !dbg !402
  br i1 %31, label %40, label %32, !dbg !403, !llvm.loop !407

32:                                               ; preds = %29, %24
  %33 = phi i64 [ 0, %24 ], [ %30, %29 ]
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !394, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !409
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !226, metadata !DIExpression()), !dbg !409
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !227, metadata !DIExpression()), !dbg !409
  %34 = mul i64 %33, %28, !dbg !410
  %35 = getelementptr double, ptr %26, i64 %34, !dbg !411
  %36 = getelementptr double, ptr %35, i64 %33, !dbg !411
  %37 = load double, ptr %36, align 8, !dbg !411, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %37, metadata !396, metadata !DIExpression()), !dbg !412
  %38 = fcmp une double %37, 0.000000e+00, !dbg !413
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !394, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !400
  br i1 %38, label %29, label %39

39:                                               ; preds = %32
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 1) #8, !dbg !415
  br label %43, !dbg !415

40:                                               ; preds = %29, %22
  %41 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2) #8, !dbg !418
  %42 = tail call i32 @gsl_linalg_LU_svx(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3), !dbg !419, !range !420
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !354, metadata !DIExpression()), !dbg !421
  br label %43

43:                                               ; preds = %9, %13, %17, %21, %39, %40
  %44 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 19, %21 ], [ 1, %39 ], [ %42, %40 ], !dbg !422
  ret i32 %44, !dbg !423
}

declare !dbg !424 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LU_svx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !427 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !431, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !432, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !434
  %4 = load i64, ptr %0, align 8, !dbg !435, !tbaa !190
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !437
  %6 = load i64, ptr %5, align 8, !dbg !437, !tbaa !198
  %7 = icmp eq i64 %4, %6, !dbg !438
  br i1 %7, label %9, label %8, !dbg !439

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 20) #8, !dbg !440
  br label %39, !dbg !440

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !443, !tbaa !205
  %11 = icmp eq i64 %4, %10, !dbg !445
  br i1 %11, label %13, label %12, !dbg !446

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 19) #8, !dbg !447
  br label %39, !dbg !447

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !450, !tbaa !376
  %15 = icmp eq i64 %4, %14, !dbg !452
  br i1 %15, label %17, label %16, !dbg !453

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 19) #8, !dbg !454
  br label %39, !dbg !454

17:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !389, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !395, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !457
  %18 = icmp eq i64 %4, 0, !dbg !460
  br i1 %18, label %35, label %19, !dbg !461

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3, !dbg !462
  %21 = load ptr, ptr %20, align 8, !tbaa !229
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !231
  br label %27, !dbg !461

24:                                               ; preds = %27
  %25 = add nuw i64 %28, 1, !dbg !464
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !394, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !394, metadata !DIExpression()), !dbg !457
  %26 = icmp eq i64 %25, %4, !dbg !460
  br i1 %26, label %35, label %27, !dbg !461, !llvm.loop !465

27:                                               ; preds = %24, %19
  %28 = phi i64 [ 0, %19 ], [ %25, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !394, metadata !DIExpression()), !dbg !457
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !226, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !467
  %29 = mul i64 %28, %23, !dbg !468
  %30 = getelementptr double, ptr %21, i64 %29, !dbg !469
  %31 = getelementptr double, ptr %30, i64 %28, !dbg !469
  %32 = load double, ptr %31, align 8, !dbg !469, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %32, metadata !396, metadata !DIExpression()), !dbg !470
  %33 = fcmp une double %32, 0.000000e+00, !dbg !471
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !394, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !457
  br i1 %33, label %24, label %34

34:                                               ; preds = %27
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef 1) #8, !dbg !472
  br label %39, !dbg !472

35:                                               ; preds = %24, %17
  %36 = tail call i32 @gsl_permute_vector(ptr noundef nonnull %1, ptr noundef nonnull %2) #8, !dbg !475
  %37 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 111, i32 noundef 132, ptr noundef nonnull %0, ptr noundef nonnull %2) #8, !dbg !477
  %38 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #8, !dbg !478
  br label %39, !dbg !479

39:                                               ; preds = %8, %12, %16, %34, %35
  %40 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 1, %34 ], [ 0, %35 ], !dbg !480
  ret i32 %40, !dbg !481
}

declare !dbg !482 i32 @gsl_permute_vector(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !486 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LU_refine(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !dbg !494 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !498, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !499, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !500, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !501, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !502, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !503, metadata !DIExpression()), !dbg !513
  %7 = load i64, ptr %0, align 8, !dbg !514, !tbaa !190
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !516
  %9 = load i64, ptr %8, align 8, !dbg !516, !tbaa !198
  %10 = icmp eq i64 %7, %9, !dbg !517
  br i1 %10, label %12, label %11, !dbg !518

11:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef 20) #8, !dbg !519
  br label %60, !dbg !519

12:                                               ; preds = %6
  %13 = load i64, ptr %1, align 8, !dbg !522, !tbaa !190
  %14 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !523
  %15 = load i64, ptr %14, align 8, !dbg !523, !tbaa !198
  %16 = icmp eq i64 %13, %15, !dbg !524
  br i1 %16, label %18, label %17, !dbg !525

17:                                               ; preds = %12
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 20) #8, !dbg !526
  br label %60, !dbg !526

18:                                               ; preds = %12
  %19 = icmp eq i64 %7, %13, !dbg !529
  br i1 %19, label %21, label %20, !dbg !530

20:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 217, i32 noundef 20) #8, !dbg !531
  br label %60, !dbg !531

21:                                               ; preds = %18
  %22 = load i64, ptr %2, align 8, !dbg !534, !tbaa !205
  %23 = icmp eq i64 %7, %22, !dbg !535
  br i1 %23, label %25, label %24, !dbg !536

24:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 221, i32 noundef 19) #8, !dbg !537
  br label %60, !dbg !537

25:                                               ; preds = %21
  %26 = load i64, ptr %3, align 8, !dbg !540, !tbaa !376
  %27 = icmp eq i64 %7, %26, !dbg !541
  br i1 %27, label %29, label %28, !dbg !542

28:                                               ; preds = %25
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 225, i32 noundef 19) #8, !dbg !543
  br label %60, !dbg !543

29:                                               ; preds = %25
  %30 = load i64, ptr %4, align 8, !dbg !546, !tbaa !376
  %31 = icmp eq i64 %7, %30, !dbg !547
  br i1 %31, label %33, label %32, !dbg !548

32:                                               ; preds = %29
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 19) #8, !dbg !549
  br label %60, !dbg !549

33:                                               ; preds = %29
  %34 = load i64, ptr %5, align 8, !dbg !552, !tbaa !376
  %35 = icmp eq i64 %7, %34, !dbg !553
  br i1 %35, label %37, label %36, !dbg !554

36:                                               ; preds = %33
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 233, i32 noundef 19) #8, !dbg !555
  br label %60, !dbg !555

37:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !389, metadata !DIExpression()), !dbg !558
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !395, metadata !DIExpression()), !dbg !558
  tail call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !558
  tail call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !558
  %38 = icmp eq i64 %7, 0, !dbg !560
  br i1 %38, label %55, label %39, !dbg !561

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3, !dbg !562
  %41 = load ptr, ptr %40, align 8, !tbaa !229
  %42 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !231
  br label %47, !dbg !561

44:                                               ; preds = %47
  %45 = add nuw i64 %48, 1, !dbg !564
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !394, metadata !DIExpression()), !dbg !558
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !394, metadata !DIExpression()), !dbg !558
  %46 = icmp eq i64 %45, %7, !dbg !560
  br i1 %46, label %55, label %47, !dbg !561, !llvm.loop !565

47:                                               ; preds = %44, %39
  %48 = phi i64 [ 0, %39 ], [ %45, %44 ]
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !394, metadata !DIExpression()), !dbg !558
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !225, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !226, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !227, metadata !DIExpression()), !dbg !567
  %49 = mul i64 %48, %43, !dbg !568
  %50 = getelementptr double, ptr %41, i64 %49, !dbg !569
  %51 = getelementptr double, ptr %50, i64 %48, !dbg !569
  %52 = load double, ptr %51, align 8, !dbg !569, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %52, metadata !396, metadata !DIExpression()), !dbg !570
  %53 = fcmp une double %52, 0.000000e+00, !dbg !571
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !394, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !558
  br i1 %53, label %44, label %54

54:                                               ; preds = %47
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 237, i32 noundef 1) #8, !dbg !572
  br label %60, !dbg !572

55:                                               ; preds = %44, %37
  %56 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %5, ptr noundef nonnull %3) #8, !dbg !575
  %57 = tail call i32 @gsl_blas_dgemv(i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %4, double noundef -1.000000e+00, ptr noundef nonnull %5) #8, !dbg !576
  %58 = tail call i32 @gsl_linalg_LU_svx(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %5), !dbg !577, !range !420
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !504, metadata !DIExpression()), !dbg !578
  %59 = tail call i32 @gsl_blas_daxpy(double noundef -1.000000e+00, ptr noundef nonnull %5, ptr noundef nonnull %4) #8, !dbg !579
  br label %60

60:                                               ; preds = %11, %17, %20, %24, %28, %32, %36, %54, %55
  %61 = phi i32 [ 20, %11 ], [ 20, %17 ], [ 20, %20 ], [ 19, %24 ], [ 19, %28 ], [ 19, %32 ], [ 19, %36 ], [ 1, %54 ], [ %58, %55 ], !dbg !513
  ret i32 %61, !dbg !580
}

declare !dbg !581 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !584 i32 @gsl_blas_daxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_LU_invert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !587 {
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !607
  call void @llvm.dbg.assign(metadata i1 undef, metadata !597, metadata !DIExpression(), metadata !607, metadata ptr %4, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !591, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !592, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !593, metadata !DIExpression()), !dbg !609
  %5 = load i64, ptr %0, align 8, !dbg !610, !tbaa !190
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !595, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata i32 0, metadata !596, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !389, metadata !DIExpression()), !dbg !611
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !395, metadata !DIExpression()), !dbg !611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !611
  tail call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !611
  %6 = icmp eq i64 %5, 0, !dbg !614
  br i1 %6, label %7, label %8, !dbg !615

7:                                                ; preds = %3
  tail call void @gsl_matrix_set_identity(ptr noundef %2) #8, !dbg !616
  tail call void @llvm.dbg.value(metadata i64 0, metadata !594, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata i32 0, metadata !596, metadata !DIExpression()), !dbg !609
  br label %33, !dbg !617

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3, !dbg !618
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !231
  br label %16, !dbg !615

13:                                               ; preds = %16
  %14 = add nuw i64 %17, 1, !dbg !620
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !394, metadata !DIExpression()), !dbg !611
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !394, metadata !DIExpression()), !dbg !611
  %15 = icmp eq i64 %14, %5, !dbg !614
  br i1 %15, label %24, label %16, !dbg !615, !llvm.loop !621

16:                                               ; preds = %13, %8
  %17 = phi i64 [ 0, %8 ], [ %14, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !394, metadata !DIExpression()), !dbg !611
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !623
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !226, metadata !DIExpression()), !dbg !623
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !227, metadata !DIExpression()), !dbg !623
  %18 = mul i64 %17, %12, !dbg !624
  %19 = getelementptr double, ptr %10, i64 %18, !dbg !625
  %20 = getelementptr double, ptr %19, i64 %17, !dbg !625
  %21 = load double, ptr %20, align 8, !dbg !625, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %21, metadata !396, metadata !DIExpression()), !dbg !626
  %22 = fcmp une double %21, 0.000000e+00, !dbg !627
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !394, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !611
  br i1 %22, label %13, label %23

23:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 266, i32 noundef 1) #8, !dbg !628
  br label %33, !dbg !628

24:                                               ; preds = %13
  tail call void @gsl_matrix_set_identity(ptr noundef %2) #8, !dbg !616
  tail call void @llvm.dbg.value(metadata i64 0, metadata !594, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata i32 0, metadata !596, metadata !DIExpression()), !dbg !609
  br label %25, !dbg !617

25:                                               ; preds = %24, %25
  %26 = phi i32 [ %30, %25 ], [ 0, %24 ]
  %27 = phi i64 [ %31, %25 ], [ 0, %24 ]
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !596, metadata !DIExpression()), !dbg !609
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !594, metadata !DIExpression()), !dbg !609
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #8, !dbg !631
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef %2, i64 noundef %27) #8, !dbg !632
  %28 = call i32 @gsl_linalg_LU_svx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4), !dbg !633, !range !420
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !606, metadata !DIExpression()), !dbg !608
  %29 = icmp eq i32 %28, 0, !dbg !634
  %30 = select i1 %29, i32 %26, i32 %28, !dbg !636
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !596, metadata !DIExpression()), !dbg !609
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #8, !dbg !637
  %31 = add nuw i64 %27, 1, !dbg !638
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !594, metadata !DIExpression()), !dbg !609
  %32 = icmp eq i64 %31, %5, !dbg !639
  br i1 %32, label %33, label %25, !dbg !617, !llvm.loop !640

33:                                               ; preds = %25, %7, %23
  %34 = phi i32 [ 1, %23 ], [ 0, %7 ], [ %30, %25 ], !dbg !609
  ret i32 %34, !dbg !642
}

declare !dbg !643 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #1

declare !dbg !646 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local double @gsl_linalg_LU_det(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !dbg !649 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !653, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !654, metadata !DIExpression()), !dbg !658
  %3 = load i64, ptr %0, align 8, !dbg !659, !tbaa !190
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !656, metadata !DIExpression()), !dbg !658
  %4 = sitofp i32 %1 to double, !dbg !660
  tail call void @llvm.dbg.value(metadata double %4, metadata !657, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata i64 0, metadata !655, metadata !DIExpression()), !dbg !658
  %5 = icmp eq i64 %3, 0, !dbg !661
  br i1 %5, label %62, label %6, !dbg !664

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !231
  %11 = and i64 %3, 3, !dbg !664
  %12 = icmp ult i64 %3, 4, !dbg !664
  br i1 %12, label %45, label %13, !dbg !664

13:                                               ; preds = %6
  %14 = and i64 %3, -4, !dbg !664
  br label %15, !dbg !664

15:                                               ; preds = %15, %13
  %16 = phi double [ %4, %13 ], [ %41, %15 ]
  %17 = phi i64 [ 0, %13 ], [ %42, %15 ]
  %18 = phi i64 [ 0, %13 ], [ %43, %15 ]
  tail call void @llvm.dbg.value(metadata double %16, metadata !657, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !655, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !226, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !227, metadata !DIExpression()), !dbg !665
  %19 = mul i64 %10, %17, !dbg !668
  %20 = getelementptr double, ptr %8, i64 %19, !dbg !669
  %21 = getelementptr double, ptr %20, i64 %17, !dbg !669
  %22 = load double, ptr %21, align 8, !dbg !669, !tbaa !240
  %23 = fmul double %16, %22, !dbg !670
  tail call void @llvm.dbg.value(metadata double %23, metadata !657, metadata !DIExpression()), !dbg !658
  %24 = or disjoint i64 %17, 1, !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !655, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata double %23, metadata !657, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !655, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !226, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !227, metadata !DIExpression()), !dbg !665
  %25 = mul i64 %10, %24, !dbg !668
  %26 = getelementptr double, ptr %8, i64 %25, !dbg !669
  %27 = getelementptr double, ptr %26, i64 %24, !dbg !669
  %28 = load double, ptr %27, align 8, !dbg !669, !tbaa !240
  %29 = fmul double %23, %28, !dbg !670
  tail call void @llvm.dbg.value(metadata double %29, metadata !657, metadata !DIExpression()), !dbg !658
  %30 = or disjoint i64 %17, 2, !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !655, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata double %29, metadata !657, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !655, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !226, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !227, metadata !DIExpression()), !dbg !665
  %31 = mul i64 %10, %30, !dbg !668
  %32 = getelementptr double, ptr %8, i64 %31, !dbg !669
  %33 = getelementptr double, ptr %32, i64 %30, !dbg !669
  %34 = load double, ptr %33, align 8, !dbg !669, !tbaa !240
  %35 = fmul double %29, %34, !dbg !670
  tail call void @llvm.dbg.value(metadata double %35, metadata !657, metadata !DIExpression()), !dbg !658
  %36 = or disjoint i64 %17, 3, !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !655, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata double %35, metadata !657, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !655, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !227, metadata !DIExpression()), !dbg !665
  %37 = mul i64 %10, %36, !dbg !668
  %38 = getelementptr double, ptr %8, i64 %37, !dbg !669
  %39 = getelementptr double, ptr %38, i64 %36, !dbg !669
  %40 = load double, ptr %39, align 8, !dbg !669, !tbaa !240
  %41 = fmul double %35, %40, !dbg !670
  tail call void @llvm.dbg.value(metadata double %41, metadata !657, metadata !DIExpression()), !dbg !658
  %42 = add nuw i64 %17, 4, !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !655, metadata !DIExpression()), !dbg !658
  %43 = add i64 %18, 4, !dbg !664
  %44 = icmp eq i64 %43, %14, !dbg !664
  br i1 %44, label %45, label %15, !dbg !664, !llvm.loop !672

45:                                               ; preds = %15, %6
  %46 = phi double [ undef, %6 ], [ %41, %15 ]
  %47 = phi double [ %4, %6 ], [ %41, %15 ]
  %48 = phi i64 [ 0, %6 ], [ %42, %15 ]
  %49 = icmp eq i64 %11, 0, !dbg !664
  br i1 %49, label %62, label %50, !dbg !664

50:                                               ; preds = %45, %50
  %51 = phi double [ %58, %50 ], [ %47, %45 ]
  %52 = phi i64 [ %59, %50 ], [ %48, %45 ]
  %53 = phi i64 [ %60, %50 ], [ 0, %45 ]
  tail call void @llvm.dbg.value(metadata double %51, metadata !657, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !655, metadata !DIExpression()), !dbg !658
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !226, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !227, metadata !DIExpression()), !dbg !665
  %54 = mul i64 %10, %52, !dbg !668
  %55 = getelementptr double, ptr %8, i64 %54, !dbg !669
  %56 = getelementptr double, ptr %55, i64 %52, !dbg !669
  %57 = load double, ptr %56, align 8, !dbg !669, !tbaa !240
  %58 = fmul double %51, %57, !dbg !670
  tail call void @llvm.dbg.value(metadata double %58, metadata !657, metadata !DIExpression()), !dbg !658
  %59 = add nuw i64 %52, 1, !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !655, metadata !DIExpression()), !dbg !658
  %60 = add i64 %53, 1, !dbg !664
  %61 = icmp eq i64 %60, %11, !dbg !664
  br i1 %61, label %62, label %50, !dbg !664, !llvm.loop !674

62:                                               ; preds = %45, %50, %2
  %63 = phi double [ %4, %2 ], [ %46, %45 ], [ %58, %50 ], !dbg !658
  ret double %63, !dbg !676
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_linalg_LU_lndet(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !dbg !677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !681, metadata !DIExpression()), !dbg !685
  %2 = load i64, ptr %0, align 8, !dbg !686, !tbaa !190
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !683, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !684, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata i64 0, metadata !682, metadata !DIExpression()), !dbg !685
  %3 = icmp eq i64 %2, 0, !dbg !687
  br i1 %3, label %21, label %4, !dbg !690

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %7, !dbg !690

7:                                                ; preds = %4, %7
  %8 = phi double [ 0.000000e+00, %4 ], [ %18, %7 ]
  %9 = phi i64 [ 0, %4 ], [ %19, %7 ]
  tail call void @llvm.dbg.value(metadata double %8, metadata !684, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !682, metadata !DIExpression()), !dbg !685
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !691
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !226, metadata !DIExpression()), !dbg !691
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !227, metadata !DIExpression()), !dbg !691
  %10 = load ptr, ptr %5, align 8, !dbg !694, !tbaa !229
  %11 = load i64, ptr %6, align 8, !dbg !695, !tbaa !231
  %12 = mul i64 %11, %9, !dbg !696
  %13 = getelementptr double, ptr %10, i64 %12, !dbg !697
  %14 = getelementptr double, ptr %13, i64 %9, !dbg !697
  %15 = load double, ptr %14, align 8, !dbg !697, !tbaa !240
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !698
  %17 = tail call double @log(double noundef %16) #8, !dbg !699
  %18 = fadd double %8, %17, !dbg !700
  tail call void @llvm.dbg.value(metadata double %18, metadata !684, metadata !DIExpression()), !dbg !685
  %19 = add nuw i64 %9, 1, !dbg !701
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !682, metadata !DIExpression()), !dbg !685
  %20 = icmp eq i64 %19, %2, !dbg !687
  br i1 %20, label %21, label %7, !dbg !690, !llvm.loop !702

21:                                               ; preds = %7, %1
  %22 = phi double [ 0.000000e+00, %1 ], [ %18, %7 ], !dbg !685
  ret double %22, !dbg !704
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !705 double @log(double noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gsl_linalg_LU_sgndet(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !dbg !709 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !713, metadata !DIExpression()), !dbg !722
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !714, metadata !DIExpression()), !dbg !722
  %3 = load i64, ptr %0, align 8, !dbg !723, !tbaa !190
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !716, metadata !DIExpression()), !dbg !722
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !717, metadata !DIExpression()), !dbg !722
  tail call void @llvm.dbg.value(metadata i64 0, metadata !715, metadata !DIExpression()), !dbg !722
  %4 = icmp eq i64 %3, 0, !dbg !724
  br i1 %4, label %26, label %5, !dbg !725

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !231
  br label %10, !dbg !725

10:                                               ; preds = %5, %22
  %11 = phi i64 [ 0, %5 ], [ %24, %22 ]
  %12 = phi i32 [ %1, %5 ], [ %23, %22 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !715, metadata !DIExpression()), !dbg !722
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !717, metadata !DIExpression()), !dbg !722
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !226, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !227, metadata !DIExpression()), !dbg !726
  %13 = mul i64 %9, %11, !dbg !728
  %14 = getelementptr double, ptr %7, i64 %13, !dbg !729
  %15 = getelementptr double, ptr %14, i64 %11, !dbg !729
  %16 = load double, ptr %15, align 8, !dbg !729, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %16, metadata !718, metadata !DIExpression()), !dbg !730
  %17 = fcmp olt double %16, 0.000000e+00, !dbg !731
  br i1 %17, label %18, label %20, !dbg !733

18:                                               ; preds = %10
  %19 = sub nsw i32 0, %12, !dbg !734
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !717, metadata !DIExpression()), !dbg !722
  br label %22, !dbg !736

20:                                               ; preds = %10
  %21 = fcmp oeq double %16, 0.000000e+00, !dbg !737
  br i1 %21, label %26, label %22, !dbg !739

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %12, %20 ]
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !717, metadata !DIExpression()), !dbg !722
  %24 = add nuw i64 %11, 1, !dbg !740
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !715, metadata !DIExpression()), !dbg !722
  %25 = icmp eq i64 %24, %3, !dbg !724
  br i1 %25, label %26, label %10, !dbg !725, !llvm.loop !741

26:                                               ; preds = %22, %20, %2
  %27 = phi i32 [ %1, %2 ], [ 0, %20 ], [ %23, %22 ], !dbg !722
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !717, metadata !DIExpression()), !dbg !722
  ret i32 %27, !dbg !743
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!54}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lu.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "0cb54d863241e313d1e309c189086db1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 40)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 42)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 25)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 30)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 37)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 19)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 41)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 217, type: !29, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 38)
!54 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !110, globals: !112, splitDebugInlining: false, nameTableKind: None)
!55 = !{!56, !95, !101, !106}
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 39, baseType: !58, size: 32, elements: !59)
!57 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!60 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!61 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!62 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!63 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!64 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!65 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!66 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!67 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!68 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!69 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!70 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!71 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!72 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!73 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!74 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!75 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!76 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!77 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!78 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!79 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!80 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!81 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!82 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!83 = !DIEnumerator(name: "GSL_ESING", value: 21)
!84 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!85 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!86 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!87 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!88 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!89 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!90 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!91 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!92 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!93 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!94 = !DIEnumerator(name: "GSL_EOF", value: 32)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !96, line: 48, baseType: !97, size: 32, elements: !98)
!96 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !{!99, !100}
!99 = !DIEnumerator(name: "CblasUpper", value: 121)
!100 = !DIEnumerator(name: "CblasLower", value: 122)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !96, line: 47, baseType: !97, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!104 = !DIEnumerator(name: "CblasTrans", value: 112)
!105 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !96, line: 49, baseType: !97, size: 32, elements: !107)
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!109 = !DIEnumerator(name: "CblasUnit", value: 132)
!110 = !{!111}
!111 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!112 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !49}
!113 = !{i32 7, !"Dwarf Version", i32 5}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{i32 1, !"wchar_size", i32 4}
!116 = !{i32 8, !"PIC Level", i32 2}
!117 = !{i32 7, !"PIE Level", i32 2}
!118 = !{i32 7, !"uwtable", i32 2}
!119 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!120 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!121 = distinct !DISubprogram(name: "gsl_linalg_LU_decomp", scope: !2, file: !2, line: 60, type: !122, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !155)
!122 = !DISubroutineType(types: !123)
!123 = !{!58, !124, !146, !154}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !126, line: 50, baseType: !127)
!126 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 42, size: 384, elements: !128)
!128 = !{!129, !133, !134, !135, !137, !145}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !127, file: !126, line: 44, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 18, baseType: !132)
!131 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !127, file: !126, line: 45, baseType: !130, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !127, file: !126, line: 46, baseType: !130, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !127, file: !126, line: 47, baseType: !136, size: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !127, file: !126, line: 48, baseType: !138, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !140, line: 44, baseType: !141)
!140 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !140, line: 38, size: 128, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !141, file: !140, line: 40, baseType: !130, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !141, file: !140, line: 41, baseType: !136, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !127, file: !126, line: 49, baseType: !58, size: 32, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_permutation", file: !148, line: 47, baseType: !149)
!148 = !DIFile(filename: "../gsl/gsl_permutation.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3f1dc4966e787f4bad2ce907e35d62b3")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_permutation_struct", file: !148, line: 41, size: 128, elements: !150)
!150 = !{!151, !152}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !149, file: !148, line: 43, baseType: !130, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !149, file: !148, line: 44, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!155 = !{!156, !157, !158, !159, !164, !165, !166, !167, !171, !172, !173, !177, !183, !187}
!156 = !DILocalVariable(name: "A", arg: 1, scope: !121, file: !2, line: 60, type: !124)
!157 = !DILocalVariable(name: "p", arg: 2, scope: !121, file: !2, line: 60, type: !146)
!158 = !DILocalVariable(name: "signum", arg: 3, scope: !121, file: !2, line: 60, type: !154)
!159 = !DILocalVariable(name: "N", scope: !160, file: !2, line: 72, type: !163)
!160 = distinct !DILexicalBlock(scope: !161, file: !2, line: 71, column: 5)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 66, column: 12)
!162 = distinct !DILexicalBlock(scope: !121, file: !2, line: 62, column: 7)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!164 = !DILocalVariable(name: "i", scope: !160, file: !2, line: 73, type: !130)
!165 = !DILocalVariable(name: "j", scope: !160, file: !2, line: 73, type: !130)
!166 = !DILocalVariable(name: "k", scope: !160, file: !2, line: 73, type: !130)
!167 = !DILocalVariable(name: "ajj", scope: !168, file: !2, line: 82, type: !111)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 79, column: 9)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 78, column: 7)
!170 = distinct !DILexicalBlock(scope: !160, file: !2, line: 78, column: 7)
!171 = !DILocalVariable(name: "max", scope: !168, file: !2, line: 82, type: !111)
!172 = !DILocalVariable(name: "i_pivot", scope: !168, file: !2, line: 83, type: !130)
!173 = !DILocalVariable(name: "aij", scope: !174, file: !2, line: 87, type: !111)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 86, column: 13)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 85, column: 11)
!176 = distinct !DILexicalBlock(scope: !168, file: !2, line: 85, column: 11)
!177 = !DILocalVariable(name: "aij", scope: !178, file: !2, line: 109, type: !111)
!178 = distinct !DILexicalBlock(scope: !179, file: !2, line: 108, column: 17)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 107, column: 15)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 107, column: 15)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 106, column: 13)
!182 = distinct !DILexicalBlock(scope: !168, file: !2, line: 105, column: 15)
!183 = !DILocalVariable(name: "aik", scope: !184, file: !2, line: 114, type: !111)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 113, column: 21)
!185 = distinct !DILexicalBlock(scope: !186, file: !2, line: 112, column: 19)
!186 = distinct !DILexicalBlock(scope: !178, file: !2, line: 112, column: 19)
!187 = !DILocalVariable(name: "ajk", scope: !184, file: !2, line: 115, type: !111)
!188 = !DILocation(line: 0, scope: !121)
!189 = !DILocation(line: 62, column: 10, scope: !162)
!190 = !{!191, !192, i64 0}
!191 = !{!"", !192, i64 0, !192, i64 8, !192, i64 16, !195, i64 24, !195, i64 32, !196, i64 40}
!192 = !{!"long", !193, i64 0}
!193 = !{!"omnipotent char", !194, i64 0}
!194 = !{!"Simple C/C++ TBAA"}
!195 = !{!"any pointer", !193, i64 0}
!196 = !{!"int", !193, i64 0}
!197 = !DILocation(line: 62, column: 22, scope: !162)
!198 = !{!191, !192, i64 8}
!199 = !DILocation(line: 62, column: 16, scope: !162)
!200 = !DILocation(line: 62, column: 7, scope: !121)
!201 = !DILocation(line: 64, column: 7, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !2, line: 64, column: 7)
!203 = distinct !DILexicalBlock(scope: !162, file: !2, line: 63, column: 5)
!204 = !DILocation(line: 66, column: 15, scope: !161)
!205 = !{!206, !192, i64 0}
!206 = !{!"gsl_permutation_struct", !192, i64 0, !195, i64 8}
!207 = !DILocation(line: 66, column: 20, scope: !161)
!208 = !DILocation(line: 66, column: 12, scope: !162)
!209 = !DILocation(line: 68, column: 7, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !2, line: 68, column: 7)
!211 = distinct !DILexicalBlock(scope: !161, file: !2, line: 67, column: 5)
!212 = !DILocation(line: 0, scope: !160)
!213 = !DILocation(line: 75, column: 15, scope: !160)
!214 = !{!196, !196, i64 0}
!215 = !DILocation(line: 76, column: 7, scope: !160)
!216 = !DILocation(line: 78, column: 21, scope: !169)
!217 = !DILocation(line: 78, column: 7, scope: !170)
!218 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !228)
!219 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !126, file: !126, line: 270, type: !220, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !224)
!220 = !DISubroutineType(types: !221)
!221 = !{!111, !222, !163, !163}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!224 = !{!225, !226, !227}
!225 = !DILocalVariable(name: "m", arg: 1, scope: !219, file: !126, line: 270, type: !222)
!226 = !DILocalVariable(name: "i", arg: 2, scope: !219, file: !126, line: 270, type: !163)
!227 = !DILocalVariable(name: "j", arg: 3, scope: !219, file: !126, line: 270, type: !163)
!228 = distinct !DILocation(line: 82, column: 33, scope: !168)
!229 = !{!191, !195, i64 24}
!230 = !DILocation(line: 285, column: 25, scope: !219, inlinedAt: !228)
!231 = !{!191, !192, i64 16}
!232 = !DILocation(line: 0, scope: !219, inlinedAt: !228)
!233 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !228)
!234 = !DILocation(line: 0, scope: !168)
!235 = !DILocation(line: 85, column: 22, scope: !176)
!236 = !DILocation(line: 85, column: 16, scope: !176)
!237 = !DILocation(line: 85, column: 29, scope: !175)
!238 = !DILocation(line: 85, column: 11, scope: !176)
!239 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !228)
!240 = !{!241, !241, i64 0}
!241 = !{!"double", !193, i64 0}
!242 = !DILocation(line: 82, column: 27, scope: !168)
!243 = !DILocation(line: 0, scope: !219, inlinedAt: !244)
!244 = distinct !DILocation(line: 87, column: 32, scope: !174)
!245 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !244)
!246 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !244)
!247 = !DILocation(line: 87, column: 26, scope: !174)
!248 = !DILocation(line: 0, scope: !174)
!249 = !DILocation(line: 89, column: 23, scope: !250)
!250 = distinct !DILexicalBlock(scope: !174, file: !2, line: 89, column: 19)
!251 = !DILocation(line: 89, column: 19, scope: !174)
!252 = !DILocation(line: 85, column: 35, scope: !175)
!253 = distinct !{!253, !238, !254, !255}
!254 = !DILocation(line: 94, column: 13, scope: !176)
!255 = !{!"llvm.loop.mustprogress"}
!256 = !DILocation(line: 96, column: 23, scope: !257)
!257 = distinct !DILexicalBlock(scope: !168, file: !2, line: 96, column: 15)
!258 = !DILocation(line: 96, column: 15, scope: !168)
!259 = !DILocation(line: 98, column: 15, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !2, line: 97, column: 13)
!261 = !DILocation(line: 99, column: 15, scope: !260)
!262 = !DILocation(line: 100, column: 27, scope: !260)
!263 = !DILocation(line: 100, column: 25, scope: !260)
!264 = !DILocation(line: 100, column: 23, scope: !260)
!265 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !266)
!266 = distinct !DILocation(line: 103, column: 17, scope: !168)
!267 = !DILocation(line: 285, column: 25, scope: !219, inlinedAt: !266)
!268 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !266)
!269 = !DILocation(line: 101, column: 13, scope: !260)
!270 = !DILocation(line: 0, scope: !219, inlinedAt: !266)
!271 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !266)
!272 = !DILocation(line: 105, column: 19, scope: !182)
!273 = !DILocation(line: 105, column: 15, scope: !168)
!274 = !DILocation(line: 0, scope: !219, inlinedAt: !275)
!275 = distinct !DILocation(line: 109, column: 30, scope: !178)
!276 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !275)
!277 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !275)
!278 = !DILocation(line: 109, column: 55, scope: !178)
!279 = !DILocation(line: 0, scope: !178)
!280 = !DILocalVariable(name: "m", arg: 1, scope: !281, file: !126, line: 290, type: !124)
!281 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !126, file: !126, line: 290, type: !282, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !285)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !124, !163, !163, !284}
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!285 = !{!280, !286, !287, !288}
!286 = !DILocalVariable(name: "i", arg: 2, scope: !281, file: !126, line: 290, type: !163)
!287 = !DILocalVariable(name: "j", arg: 3, scope: !281, file: !126, line: 290, type: !163)
!288 = !DILocalVariable(name: "x", arg: 4, scope: !281, file: !126, line: 290, type: !284)
!289 = !DILocation(line: 0, scope: !281, inlinedAt: !290)
!290 = distinct !DILocation(line: 110, column: 19, scope: !178)
!291 = !DILocation(line: 305, column: 27, scope: !281, inlinedAt: !290)
!292 = !DILocation(line: 112, column: 19, scope: !186)
!293 = !DILocation(line: 0, scope: !219, inlinedAt: !294)
!294 = distinct !DILocation(line: 114, column: 34, scope: !184)
!295 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !294)
!296 = !DILocation(line: 0, scope: !184)
!297 = !DILocation(line: 0, scope: !219, inlinedAt: !298)
!298 = distinct !DILocation(line: 115, column: 34, scope: !184)
!299 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !298)
!300 = !DILocation(line: 116, column: 58, scope: !184)
!301 = !DILocation(line: 116, column: 52, scope: !184)
!302 = !DILocation(line: 0, scope: !281, inlinedAt: !303)
!303 = distinct !DILocation(line: 116, column: 23, scope: !184)
!304 = !DILocation(line: 305, column: 27, scope: !281, inlinedAt: !303)
!305 = !DILocation(line: 112, column: 43, scope: !185)
!306 = !DILocation(line: 112, column: 37, scope: !185)
!307 = distinct !{!307, !292, !308, !255}
!308 = !DILocation(line: 117, column: 21, scope: !186)
!309 = !DILocation(line: 107, column: 39, scope: !179)
!310 = !DILocation(line: 107, column: 33, scope: !179)
!311 = !DILocation(line: 107, column: 15, scope: !180)
!312 = distinct !{!312, !311, !313, !255}
!313 = !DILocation(line: 118, column: 17, scope: !180)
!314 = distinct !{!314, !217, !315, !255}
!315 = !DILocation(line: 120, column: 9, scope: !170)
!316 = !DILocation(line: 0, scope: !162)
!317 = !DILocation(line: 124, column: 1, scope: !121)
!318 = !DISubprogram(name: "gsl_error", scope: !57, file: !57, line: 77, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !321, !321, !58, !58}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!323 = !DISubprogram(name: "gsl_permutation_init", scope: !148, file: !148, line: 51, type: !324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !146}
!326 = !DISubprogram(name: "gsl_matrix_swap_rows", scope: !126, file: !126, line: 221, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!327 = !DISubroutineType(types: !328)
!328 = !{!58, !124, !163, !163}
!329 = !DISubprogram(name: "gsl_permutation_swap", scope: !148, file: !148, line: 63, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!330 = !DISubroutineType(types: !331)
!331 = !{!58, !146, !163, !163}
!332 = distinct !DISubprogram(name: "gsl_linalg_LU_solve", scope: !2, file: !2, line: 127, type: !333, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !349)
!333 = !DISubroutineType(types: !334)
!334 = !{!58, !222, !335, !337, !348}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !340, line: 50, baseType: !341)
!340 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 42, size: 320, elements: !342)
!342 = !{!343, !344, !345, !346, !347}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !341, file: !340, line: 44, baseType: !130, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !341, file: !340, line: 45, baseType: !130, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !341, file: !340, line: 46, baseType: !136, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !341, file: !340, line: 47, baseType: !138, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !341, file: !340, line: 48, baseType: !58, size: 32, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!349 = !{!350, !351, !352, !353, !354}
!350 = !DILocalVariable(name: "LU", arg: 1, scope: !332, file: !2, line: 127, type: !222)
!351 = !DILocalVariable(name: "p", arg: 2, scope: !332, file: !2, line: 127, type: !335)
!352 = !DILocalVariable(name: "b", arg: 3, scope: !332, file: !2, line: 127, type: !337)
!353 = !DILocalVariable(name: "x", arg: 4, scope: !332, file: !2, line: 127, type: !348)
!354 = !DILocalVariable(name: "status", scope: !355, file: !2, line: 151, type: !58)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 150, column: 5)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 145, column: 12)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 141, column: 12)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 137, column: 12)
!359 = distinct !DILexicalBlock(scope: !360, file: !2, line: 133, column: 12)
!360 = distinct !DILexicalBlock(scope: !332, file: !2, line: 129, column: 7)
!361 = !DILocation(line: 0, scope: !332)
!362 = !DILocation(line: 129, column: 11, scope: !360)
!363 = !DILocation(line: 129, column: 24, scope: !360)
!364 = !DILocation(line: 129, column: 17, scope: !360)
!365 = !DILocation(line: 129, column: 7, scope: !332)
!366 = !DILocation(line: 131, column: 7, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !2, line: 131, column: 7)
!368 = distinct !DILexicalBlock(scope: !360, file: !2, line: 130, column: 5)
!369 = !DILocation(line: 133, column: 28, scope: !359)
!370 = !DILocation(line: 133, column: 22, scope: !359)
!371 = !DILocation(line: 133, column: 12, scope: !360)
!372 = !DILocation(line: 135, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !2, line: 135, column: 7)
!374 = distinct !DILexicalBlock(scope: !359, file: !2, line: 134, column: 5)
!375 = !DILocation(line: 137, column: 28, scope: !358)
!376 = !{!377, !192, i64 0}
!377 = !{!"", !192, i64 0, !192, i64 8, !195, i64 16, !195, i64 24, !196, i64 32}
!378 = !DILocation(line: 137, column: 22, scope: !358)
!379 = !DILocation(line: 137, column: 12, scope: !359)
!380 = !DILocation(line: 139, column: 7, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 139, column: 7)
!382 = distinct !DILexicalBlock(scope: !358, file: !2, line: 138, column: 5)
!383 = !DILocation(line: 141, column: 28, scope: !357)
!384 = !DILocation(line: 141, column: 22, scope: !357)
!385 = !DILocation(line: 141, column: 12, scope: !358)
!386 = !DILocation(line: 143, column: 7, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 143, column: 7)
!388 = distinct !DILexicalBlock(scope: !357, file: !2, line: 142, column: 5)
!389 = !DILocalVariable(name: "LU", arg: 1, scope: !390, file: !2, line: 340, type: !222)
!390 = distinct !DISubprogram(name: "singular", scope: !2, file: !2, line: 340, type: !391, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !393)
!391 = !DISubroutineType(types: !392)
!392 = !{!58, !222}
!393 = !{!389, !394, !395, !396}
!394 = !DILocalVariable(name: "i", scope: !390, file: !2, line: 342, type: !130)
!395 = !DILocalVariable(name: "n", scope: !390, file: !2, line: 342, type: !130)
!396 = !DILocalVariable(name: "u", scope: !397, file: !2, line: 346, type: !111)
!397 = distinct !DILexicalBlock(scope: !398, file: !2, line: 345, column: 5)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 344, column: 3)
!399 = distinct !DILexicalBlock(scope: !390, file: !2, line: 344, column: 3)
!400 = !DILocation(line: 0, scope: !390, inlinedAt: !401)
!401 = distinct !DILocation(line: 145, column: 12, scope: !356)
!402 = !DILocation(line: 344, column: 17, scope: !398, inlinedAt: !401)
!403 = !DILocation(line: 344, column: 3, scope: !399, inlinedAt: !401)
!404 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !405)
!405 = distinct !DILocation(line: 346, column: 18, scope: !397, inlinedAt: !401)
!406 = !DILocation(line: 344, column: 23, scope: !398, inlinedAt: !401)
!407 = distinct !{!407, !403, !408, !255}
!408 = !DILocation(line: 348, column: 5, scope: !399, inlinedAt: !401)
!409 = !DILocation(line: 0, scope: !219, inlinedAt: !405)
!410 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !405)
!411 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !405)
!412 = !DILocation(line: 0, scope: !397, inlinedAt: !401)
!413 = !DILocation(line: 347, column: 13, scope: !414, inlinedAt: !401)
!414 = distinct !DILexicalBlock(scope: !397, file: !2, line: 347, column: 11)
!415 = !DILocation(line: 147, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 147, column: 7)
!417 = distinct !DILexicalBlock(scope: !356, file: !2, line: 146, column: 5)
!418 = !DILocation(line: 155, column: 7, scope: !355)
!419 = !DILocation(line: 159, column: 16, scope: !355)
!420 = !{i32 0, i32 21}
!421 = !DILocation(line: 0, scope: !355)
!422 = !DILocation(line: 0, scope: !360)
!423 = !DILocation(line: 163, column: 1, scope: !332)
!424 = !DISubprogram(name: "gsl_vector_memcpy", scope: !340, file: !340, line: 136, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!425 = !DISubroutineType(types: !426)
!426 = !{!58, !348, !337}
!427 = distinct !DISubprogram(name: "gsl_linalg_LU_svx", scope: !2, file: !2, line: 167, type: !428, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!58, !222, !335, !348}
!430 = !{!431, !432, !433}
!431 = !DILocalVariable(name: "LU", arg: 1, scope: !427, file: !2, line: 167, type: !222)
!432 = !DILocalVariable(name: "p", arg: 2, scope: !427, file: !2, line: 167, type: !335)
!433 = !DILocalVariable(name: "x", arg: 3, scope: !427, file: !2, line: 167, type: !348)
!434 = !DILocation(line: 0, scope: !427)
!435 = !DILocation(line: 169, column: 11, scope: !436)
!436 = distinct !DILexicalBlock(scope: !427, file: !2, line: 169, column: 7)
!437 = !DILocation(line: 169, column: 24, scope: !436)
!438 = !DILocation(line: 169, column: 17, scope: !436)
!439 = !DILocation(line: 169, column: 7, scope: !427)
!440 = !DILocation(line: 171, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !442, file: !2, line: 171, column: 7)
!442 = distinct !DILexicalBlock(scope: !436, file: !2, line: 170, column: 5)
!443 = !DILocation(line: 173, column: 28, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !2, line: 173, column: 12)
!445 = !DILocation(line: 173, column: 22, scope: !444)
!446 = !DILocation(line: 173, column: 12, scope: !436)
!447 = !DILocation(line: 175, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !2, line: 175, column: 7)
!449 = distinct !DILexicalBlock(scope: !444, file: !2, line: 174, column: 5)
!450 = !DILocation(line: 177, column: 28, scope: !451)
!451 = distinct !DILexicalBlock(scope: !444, file: !2, line: 177, column: 12)
!452 = !DILocation(line: 177, column: 22, scope: !451)
!453 = !DILocation(line: 177, column: 12, scope: !444)
!454 = !DILocation(line: 179, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !456, file: !2, line: 179, column: 7)
!456 = distinct !DILexicalBlock(scope: !451, file: !2, line: 178, column: 5)
!457 = !DILocation(line: 0, scope: !390, inlinedAt: !458)
!458 = distinct !DILocation(line: 181, column: 12, scope: !459)
!459 = distinct !DILexicalBlock(scope: !451, file: !2, line: 181, column: 12)
!460 = !DILocation(line: 344, column: 17, scope: !398, inlinedAt: !458)
!461 = !DILocation(line: 344, column: 3, scope: !399, inlinedAt: !458)
!462 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !463)
!463 = distinct !DILocation(line: 346, column: 18, scope: !397, inlinedAt: !458)
!464 = !DILocation(line: 344, column: 23, scope: !398, inlinedAt: !458)
!465 = distinct !{!465, !461, !466, !255}
!466 = !DILocation(line: 348, column: 5, scope: !399, inlinedAt: !458)
!467 = !DILocation(line: 0, scope: !219, inlinedAt: !463)
!468 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !463)
!469 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !463)
!470 = !DILocation(line: 0, scope: !397, inlinedAt: !458)
!471 = !DILocation(line: 347, column: 13, scope: !414, inlinedAt: !458)
!472 = !DILocation(line: 183, column: 7, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !2, line: 183, column: 7)
!474 = distinct !DILexicalBlock(scope: !459, file: !2, line: 182, column: 5)
!475 = !DILocation(line: 189, column: 7, scope: !476)
!476 = distinct !DILexicalBlock(scope: !459, file: !2, line: 186, column: 5)
!477 = !DILocation(line: 193, column: 7, scope: !476)
!478 = !DILocation(line: 197, column: 7, scope: !476)
!479 = !DILocation(line: 199, column: 7, scope: !476)
!480 = !DILocation(line: 0, scope: !436)
!481 = !DILocation(line: 201, column: 1, scope: !427)
!482 = !DISubprogram(name: "gsl_permute_vector", scope: !483, file: !483, line: 40, type: !484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!483 = !DIFile(filename: "../gsl/gsl_permute_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "05dfc9fcd9b4e47246745becff796730")
!484 = !DISubroutineType(types: !485)
!485 = !{!58, !335, !348}
!486 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !487, file: !487, line: 217, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!487 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!488 = !DISubroutineType(types: !489)
!489 = !{!58, !490, !492, !493, !222, !348}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !491, line: 45, baseType: !95)
!491 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !491, line: 44, baseType: !101)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !491, line: 46, baseType: !106)
!494 = distinct !DISubprogram(name: "gsl_linalg_LU_refine", scope: !2, file: !2, line: 205, type: !495, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!58, !222, !222, !335, !337, !348, !348}
!497 = !{!498, !499, !500, !501, !502, !503, !504}
!498 = !DILocalVariable(name: "A", arg: 1, scope: !494, file: !2, line: 205, type: !222)
!499 = !DILocalVariable(name: "LU", arg: 2, scope: !494, file: !2, line: 205, type: !222)
!500 = !DILocalVariable(name: "p", arg: 3, scope: !494, file: !2, line: 205, type: !335)
!501 = !DILocalVariable(name: "b", arg: 4, scope: !494, file: !2, line: 205, type: !337)
!502 = !DILocalVariable(name: "x", arg: 5, scope: !494, file: !2, line: 205, type: !348)
!503 = !DILocalVariable(name: "work", arg: 6, scope: !494, file: !2, line: 205, type: !348)
!504 = !DILocalVariable(name: "status", scope: !505, file: !2, line: 241, type: !58)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 240, column: 5)
!506 = distinct !DILexicalBlock(scope: !507, file: !2, line: 235, column: 12)
!507 = distinct !DILexicalBlock(scope: !508, file: !2, line: 231, column: 12)
!508 = distinct !DILexicalBlock(scope: !509, file: !2, line: 227, column: 12)
!509 = distinct !DILexicalBlock(scope: !510, file: !2, line: 223, column: 12)
!510 = distinct !DILexicalBlock(scope: !511, file: !2, line: 219, column: 12)
!511 = distinct !DILexicalBlock(scope: !512, file: !2, line: 215, column: 12)
!512 = distinct !DILexicalBlock(scope: !494, file: !2, line: 211, column: 7)
!513 = !DILocation(line: 0, scope: !494)
!514 = !DILocation(line: 207, column: 10, scope: !515)
!515 = distinct !DILexicalBlock(scope: !494, file: !2, line: 207, column: 7)
!516 = !DILocation(line: 207, column: 22, scope: !515)
!517 = !DILocation(line: 207, column: 16, scope: !515)
!518 = !DILocation(line: 207, column: 7, scope: !494)
!519 = !DILocation(line: 209, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !2, line: 209, column: 7)
!521 = distinct !DILexicalBlock(scope: !515, file: !2, line: 208, column: 5)
!522 = !DILocation(line: 211, column: 11, scope: !512)
!523 = !DILocation(line: 211, column: 24, scope: !512)
!524 = !DILocation(line: 211, column: 17, scope: !512)
!525 = !DILocation(line: 211, column: 7, scope: !494)
!526 = !DILocation(line: 213, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !2, line: 213, column: 7)
!528 = distinct !DILexicalBlock(scope: !512, file: !2, line: 212, column: 5)
!529 = !DILocation(line: 215, column: 21, scope: !511)
!530 = !DILocation(line: 215, column: 12, scope: !512)
!531 = !DILocation(line: 217, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 217, column: 7)
!533 = distinct !DILexicalBlock(scope: !511, file: !2, line: 216, column: 5)
!534 = !DILocation(line: 219, column: 28, scope: !510)
!535 = !DILocation(line: 219, column: 22, scope: !510)
!536 = !DILocation(line: 219, column: 12, scope: !511)
!537 = !DILocation(line: 221, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !2, line: 221, column: 7)
!539 = distinct !DILexicalBlock(scope: !510, file: !2, line: 220, column: 5)
!540 = !DILocation(line: 223, column: 28, scope: !509)
!541 = !DILocation(line: 223, column: 22, scope: !509)
!542 = !DILocation(line: 223, column: 12, scope: !510)
!543 = !DILocation(line: 225, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 225, column: 7)
!545 = distinct !DILexicalBlock(scope: !509, file: !2, line: 224, column: 5)
!546 = !DILocation(line: 227, column: 28, scope: !508)
!547 = !DILocation(line: 227, column: 22, scope: !508)
!548 = !DILocation(line: 227, column: 12, scope: !509)
!549 = !DILocation(line: 229, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !2, line: 229, column: 7)
!551 = distinct !DILexicalBlock(scope: !508, file: !2, line: 228, column: 5)
!552 = !DILocation(line: 231, column: 31, scope: !507)
!553 = !DILocation(line: 231, column: 22, scope: !507)
!554 = !DILocation(line: 231, column: 12, scope: !508)
!555 = !DILocation(line: 233, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !2, line: 233, column: 7)
!557 = distinct !DILexicalBlock(scope: !507, file: !2, line: 232, column: 5)
!558 = !DILocation(line: 0, scope: !390, inlinedAt: !559)
!559 = distinct !DILocation(line: 235, column: 12, scope: !506)
!560 = !DILocation(line: 344, column: 17, scope: !398, inlinedAt: !559)
!561 = !DILocation(line: 344, column: 3, scope: !399, inlinedAt: !559)
!562 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !563)
!563 = distinct !DILocation(line: 346, column: 18, scope: !397, inlinedAt: !559)
!564 = !DILocation(line: 344, column: 23, scope: !398, inlinedAt: !559)
!565 = distinct !{!565, !561, !566, !255}
!566 = !DILocation(line: 348, column: 5, scope: !399, inlinedAt: !559)
!567 = !DILocation(line: 0, scope: !219, inlinedAt: !563)
!568 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !563)
!569 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !563)
!570 = !DILocation(line: 0, scope: !397, inlinedAt: !559)
!571 = !DILocation(line: 347, column: 13, scope: !414, inlinedAt: !559)
!572 = !DILocation(line: 237, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !2, line: 237, column: 7)
!574 = distinct !DILexicalBlock(scope: !506, file: !2, line: 236, column: 5)
!575 = !DILocation(line: 245, column: 7, scope: !505)
!576 = !DILocation(line: 246, column: 7, scope: !505)
!577 = !DILocation(line: 250, column: 16, scope: !505)
!578 = !DILocation(line: 0, scope: !505)
!579 = !DILocation(line: 251, column: 7, scope: !505)
!580 = !DILocation(line: 255, column: 1, scope: !494)
!581 = !DISubprogram(name: "gsl_blas_dgemv", scope: !487, file: !487, line: 205, type: !582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!582 = !DISubroutineType(types: !583)
!583 = !{!58, !492, !111, !222, !337, !111, !348}
!584 = !DISubprogram(name: "gsl_blas_daxpy", scope: !487, file: !487, line: 121, type: !585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!585 = !DISubroutineType(types: !586)
!586 = !{!58, !111, !337, !348}
!587 = distinct !DISubprogram(name: "gsl_linalg_LU_invert", scope: !2, file: !2, line: 258, type: !588, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !590)
!588 = !DISubroutineType(types: !589)
!589 = !{!58, !222, !335, !124}
!590 = !{!591, !592, !593, !594, !595, !596, !597, !606}
!591 = !DILocalVariable(name: "LU", arg: 1, scope: !587, file: !2, line: 258, type: !222)
!592 = !DILocalVariable(name: "p", arg: 2, scope: !587, file: !2, line: 258, type: !335)
!593 = !DILocalVariable(name: "inverse", arg: 3, scope: !587, file: !2, line: 258, type: !124)
!594 = !DILocalVariable(name: "i", scope: !587, file: !2, line: 260, type: !130)
!595 = !DILocalVariable(name: "n", scope: !587, file: !2, line: 260, type: !130)
!596 = !DILocalVariable(name: "status", scope: !587, file: !2, line: 262, type: !58)
!597 = !DILocalVariable(name: "c", scope: !598, file: !2, line: 273, type: !601)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 272, column: 5)
!599 = distinct !DILexicalBlock(scope: !600, file: !2, line: 271, column: 3)
!600 = distinct !DILexicalBlock(scope: !587, file: !2, line: 271, column: 3)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !340, line: 57, baseType: !602)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !340, line: 55, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 52, size: 320, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !603, file: !340, line: 54, baseType: !339, size: 320)
!606 = !DILocalVariable(name: "status_i", scope: !598, file: !2, line: 274, type: !58)
!607 = distinct !DIAssignID()
!608 = !DILocation(line: 0, scope: !598)
!609 = !DILocation(line: 0, scope: !587)
!610 = !DILocation(line: 260, column: 21, scope: !587)
!611 = !DILocation(line: 0, scope: !390, inlinedAt: !612)
!612 = distinct !DILocation(line: 264, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !587, file: !2, line: 264, column: 7)
!614 = !DILocation(line: 344, column: 17, scope: !398, inlinedAt: !612)
!615 = !DILocation(line: 344, column: 3, scope: !399, inlinedAt: !612)
!616 = !DILocation(line: 269, column: 3, scope: !587)
!617 = !DILocation(line: 271, column: 3, scope: !600)
!618 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !619)
!619 = distinct !DILocation(line: 346, column: 18, scope: !397, inlinedAt: !612)
!620 = !DILocation(line: 344, column: 23, scope: !398, inlinedAt: !612)
!621 = distinct !{!621, !615, !622, !255}
!622 = !DILocation(line: 348, column: 5, scope: !399, inlinedAt: !612)
!623 = !DILocation(line: 0, scope: !219, inlinedAt: !619)
!624 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !619)
!625 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !619)
!626 = !DILocation(line: 0, scope: !397, inlinedAt: !612)
!627 = !DILocation(line: 347, column: 13, scope: !414, inlinedAt: !612)
!628 = !DILocation(line: 266, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !2, line: 266, column: 7)
!630 = distinct !DILexicalBlock(scope: !613, file: !2, line: 265, column: 5)
!631 = !DILocation(line: 273, column: 7, scope: !598)
!632 = !DILocation(line: 273, column: 27, scope: !598)
!633 = !DILocation(line: 274, column: 22, scope: !598)
!634 = !DILocation(line: 276, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !598, file: !2, line: 276, column: 11)
!636 = !DILocation(line: 276, column: 11, scope: !598)
!637 = !DILocation(line: 278, column: 5, scope: !599)
!638 = !DILocation(line: 271, column: 23, scope: !599)
!639 = !DILocation(line: 271, column: 17, scope: !599)
!640 = distinct !{!640, !617, !641, !255}
!641 = !DILocation(line: 278, column: 5, scope: !600)
!642 = !DILocation(line: 281, column: 1, scope: !587)
!643 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !126, file: !126, line: 209, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !124}
!646 = !DISubprogram(name: "gsl_matrix_column", scope: !126, file: !126, line: 109, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = !DISubroutineType(types: !648)
!648 = !{!602, !124, !163}
!649 = distinct !DISubprogram(name: "gsl_linalg_LU_det", scope: !2, file: !2, line: 284, type: !650, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{!111, !124, !58}
!652 = !{!653, !654, !655, !656, !657}
!653 = !DILocalVariable(name: "LU", arg: 1, scope: !649, file: !2, line: 284, type: !124)
!654 = !DILocalVariable(name: "signum", arg: 2, scope: !649, file: !2, line: 284, type: !58)
!655 = !DILocalVariable(name: "i", scope: !649, file: !2, line: 286, type: !130)
!656 = !DILocalVariable(name: "n", scope: !649, file: !2, line: 286, type: !130)
!657 = !DILocalVariable(name: "det", scope: !649, file: !2, line: 288, type: !111)
!658 = !DILocation(line: 0, scope: !649)
!659 = !DILocation(line: 286, column: 21, scope: !649)
!660 = !DILocation(line: 288, column: 16, scope: !649)
!661 = !DILocation(line: 290, column: 17, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !2, line: 290, column: 3)
!663 = distinct !DILexicalBlock(scope: !649, file: !2, line: 290, column: 3)
!664 = !DILocation(line: 290, column: 3, scope: !663)
!665 = !DILocation(line: 0, scope: !219, inlinedAt: !666)
!666 = distinct !DILocation(line: 292, column: 14, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !2, line: 291, column: 5)
!668 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !666)
!669 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !666)
!670 = !DILocation(line: 292, column: 11, scope: !667)
!671 = !DILocation(line: 290, column: 23, scope: !662)
!672 = distinct !{!672, !664, !673, !255}
!673 = !DILocation(line: 293, column: 5, scope: !663)
!674 = distinct !{!674, !675}
!675 = !{!"llvm.loop.unroll.disable"}
!676 = !DILocation(line: 295, column: 3, scope: !649)
!677 = distinct !DISubprogram(name: "gsl_linalg_LU_lndet", scope: !2, file: !2, line: 300, type: !678, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!111, !124}
!680 = !{!681, !682, !683, !684}
!681 = !DILocalVariable(name: "LU", arg: 1, scope: !677, file: !2, line: 300, type: !124)
!682 = !DILocalVariable(name: "i", scope: !677, file: !2, line: 302, type: !130)
!683 = !DILocalVariable(name: "n", scope: !677, file: !2, line: 302, type: !130)
!684 = !DILocalVariable(name: "lndet", scope: !677, file: !2, line: 304, type: !111)
!685 = !DILocation(line: 0, scope: !677)
!686 = !DILocation(line: 302, column: 21, scope: !677)
!687 = !DILocation(line: 306, column: 17, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !2, line: 306, column: 3)
!689 = distinct !DILexicalBlock(scope: !677, file: !2, line: 306, column: 3)
!690 = !DILocation(line: 306, column: 3, scope: !689)
!691 = !DILocation(line: 0, scope: !219, inlinedAt: !692)
!692 = distinct !DILocation(line: 308, column: 27, scope: !693)
!693 = distinct !DILexicalBlock(scope: !688, file: !2, line: 307, column: 5)
!694 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !692)
!695 = !DILocation(line: 285, column: 25, scope: !219, inlinedAt: !692)
!696 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !692)
!697 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !692)
!698 = !DILocation(line: 308, column: 21, scope: !693)
!699 = !DILocation(line: 308, column: 16, scope: !693)
!700 = !DILocation(line: 308, column: 13, scope: !693)
!701 = !DILocation(line: 306, column: 23, scope: !688)
!702 = distinct !{!702, !690, !703, !255}
!703 = !DILocation(line: 309, column: 5, scope: !689)
!704 = !DILocation(line: 311, column: 3, scope: !677)
!705 = !DISubprogram(name: "log", scope: !706, file: !706, line: 104, type: !707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!706 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!707 = !DISubroutineType(types: !708)
!708 = !{!111, !111}
!709 = distinct !DISubprogram(name: "gsl_linalg_LU_sgndet", scope: !2, file: !2, line: 315, type: !710, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{!58, !124, !58}
!712 = !{!713, !714, !715, !716, !717, !718}
!713 = !DILocalVariable(name: "LU", arg: 1, scope: !709, file: !2, line: 315, type: !124)
!714 = !DILocalVariable(name: "signum", arg: 2, scope: !709, file: !2, line: 315, type: !58)
!715 = !DILocalVariable(name: "i", scope: !709, file: !2, line: 317, type: !130)
!716 = !DILocalVariable(name: "n", scope: !709, file: !2, line: 317, type: !130)
!717 = !DILocalVariable(name: "s", scope: !709, file: !2, line: 319, type: !58)
!718 = !DILocalVariable(name: "u", scope: !719, file: !2, line: 323, type: !111)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 322, column: 5)
!720 = distinct !DILexicalBlock(scope: !721, file: !2, line: 321, column: 3)
!721 = distinct !DILexicalBlock(scope: !709, file: !2, line: 321, column: 3)
!722 = !DILocation(line: 0, scope: !709)
!723 = !DILocation(line: 317, column: 21, scope: !709)
!724 = !DILocation(line: 321, column: 17, scope: !720)
!725 = !DILocation(line: 321, column: 3, scope: !721)
!726 = !DILocation(line: 0, scope: !219, inlinedAt: !727)
!727 = distinct !DILocation(line: 323, column: 18, scope: !719)
!728 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !727)
!729 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !727)
!730 = !DILocation(line: 0, scope: !719)
!731 = !DILocation(line: 325, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !719, file: !2, line: 325, column: 11)
!733 = !DILocation(line: 325, column: 11, scope: !719)
!734 = !DILocation(line: 327, column: 13, scope: !735)
!735 = distinct !DILexicalBlock(scope: !732, file: !2, line: 326, column: 9)
!736 = !DILocation(line: 328, column: 9, scope: !735)
!737 = !DILocation(line: 329, column: 18, scope: !738)
!738 = distinct !DILexicalBlock(scope: !732, file: !2, line: 329, column: 16)
!739 = !DILocation(line: 329, column: 16, scope: !732)
!740 = !DILocation(line: 321, column: 23, scope: !720)
!741 = distinct !{!741, !725, !742, !255}
!742 = !DILocation(line: 334, column: 5, scope: !721)
!743 = !DILocation(line: 336, column: 3, scope: !709)
