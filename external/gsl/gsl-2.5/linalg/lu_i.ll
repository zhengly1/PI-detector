; ModuleID = 'lu.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 64, i32 noundef 20) #7, !dbg !201
  br label %89, !dbg !201

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !204, !tbaa !205
  %11 = icmp eq i64 %10, %4, !dbg !207
  br i1 %11, label %13, label %12, !dbg !208

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef 19) #7, !dbg !209
  br label %89, !dbg !209

13:                                               ; preds = %9
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !159, metadata !DIExpression()), !dbg !212
  store i32 1, ptr %2, align 4, !dbg !213, !tbaa !214
  tail call void @gsl_permutation_init(ptr noundef nonnull %1) #7, !dbg !215
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !212
  %14 = add i64 %4, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()), !dbg !212
  %15 = icmp eq i64 %14, 0, !dbg !216
  br i1 %15, label %89, label %16, !dbg !217

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %17, align 8, !dbg !218, !tbaa !229
  %20 = load i64, ptr %18, align 8, !dbg !230, !tbaa !231
  br label %21, !dbg !217

21:                                               ; preds = %85, %16
  %22 = phi i64 [ %20, %16 ], [ %87, %85 ]
  %23 = phi ptr [ %19, %16 ], [ %86, %85 ]
  %24 = phi i64 [ 0, %16 ], [ %26, %85 ]
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
  br i1 %28, label %29, label %85, !dbg !238

29:                                               ; preds = %21
  %30 = getelementptr double, ptr %23, i64 %25, !dbg !239
  %31 = getelementptr double, ptr %30, i64 %24, !dbg !239
  %32 = load double, ptr %31, align 8, !dbg !239, !tbaa !240
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !242
  tail call void @llvm.dbg.value(metadata double %33, metadata !171, metadata !DIExpression()), !dbg !234
  br label %34, !dbg !238

34:                                               ; preds = %34, %29
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
  %50 = tail call i32 @gsl_matrix_swap_rows(ptr noundef nonnull %0, i64 noundef %24, i64 noundef %44) #7, !dbg !259
  %51 = tail call i32 @gsl_permutation_swap(ptr noundef nonnull %1, i64 noundef %24, i64 noundef %44) #7, !dbg !261
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
  br i1 %65, label %66, label %85, !dbg !273

66:                                               ; preds = %82, %57
  %67 = phi i64 [ %83, %82 ], [ %26, %57 ]
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

73:                                               ; preds = %73, %66
  %74 = phi i64 [ %26, %66 ], [ %80, %73 ]
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
  %handler_result = call double @fSubHandlerDouble(double %76, double %79), !dbg !301
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !280, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !286, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !287, metadata !DIExpression()), !dbg !303
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !288, metadata !DIExpression()), !dbg !303
  store double %handler_result, ptr %75, align 8, !dbg !301, !tbaa !240
  %80 = add nuw i64 %74, 1, !dbg !304
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !166, metadata !DIExpression()), !dbg !212
  %81 = icmp ult i64 %80, %4, !dbg !305
  br i1 %81, label %73, label %82, !dbg !292, !llvm.loop !306

82:                                               ; preds = %73
  %83 = add nuw i64 %67, 1, !dbg !308
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !164, metadata !DIExpression()), !dbg !212
  %84 = icmp ult i64 %83, %4, !dbg !309
  br i1 %84, label %66, label %85, !dbg !310, !llvm.loop !311

85:                                               ; preds = %82, %57, %21
  %86 = phi ptr [ %60, %57 ], [ %23, %21 ], [ %60, %82 ]
  %87 = phi i64 [ %59, %57 ], [ %22, %21 ], [ %59, %82 ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !165, metadata !DIExpression()), !dbg !212
  %88 = icmp eq i64 %26, %14, !dbg !216
  br i1 %88, label %89, label %21, !dbg !217, !llvm.loop !313

89:                                               ; preds = %85, %13, %12, %8
  %90 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 0, %13 ], [ 0, %85 ], !dbg !315
  ret i32 %90, !dbg !316
}

declare !dbg !317 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !322 void @gsl_permutation_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !325 i32 @gsl_matrix_swap_rows(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !328 i32 @gsl_permutation_swap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LU_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !331 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !349, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !350, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !351, metadata !DIExpression()), !dbg !360
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !352, metadata !DIExpression()), !dbg !360
  %5 = load i64, ptr %0, align 8, !dbg !361, !tbaa !190
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !362
  %7 = load i64, ptr %6, align 8, !dbg !362, !tbaa !198
  %8 = icmp eq i64 %5, %7, !dbg !363
  br i1 %8, label %10, label %9, !dbg !364

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 131, i32 noundef 20) #7, !dbg !365
  br label %43, !dbg !365

10:                                               ; preds = %4
  %11 = load i64, ptr %1, align 8, !dbg !368, !tbaa !205
  %12 = icmp eq i64 %5, %11, !dbg !369
  br i1 %12, label %14, label %13, !dbg !370

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 135, i32 noundef 19) #7, !dbg !371
  br label %43, !dbg !371

14:                                               ; preds = %10
  %15 = load i64, ptr %2, align 8, !dbg !374, !tbaa !375
  %16 = icmp eq i64 %5, %15, !dbg !377
  br i1 %16, label %18, label %17, !dbg !378

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 139, i32 noundef 19) #7, !dbg !379
  br label %43, !dbg !379

18:                                               ; preds = %14
  %19 = load i64, ptr %3, align 8, !dbg !382, !tbaa !375
  %20 = icmp eq i64 %5, %19, !dbg !383
  br i1 %20, label %22, label %21, !dbg !384

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 143, i32 noundef 19) #7, !dbg !385
  br label %43, !dbg !385

22:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !388, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !394, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !399
  %23 = icmp eq i64 %5, 0, !dbg !401
  br i1 %23, label %40, label %24, !dbg !402

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3, !dbg !403
  %26 = load ptr, ptr %25, align 8, !tbaa !229
  %27 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !231
  br label %32, !dbg !402

29:                                               ; preds = %32
  %30 = add nuw i64 %33, 1, !dbg !405
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !393, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !393, metadata !DIExpression()), !dbg !399
  %31 = icmp eq i64 %30, %5, !dbg !401
  br i1 %31, label %40, label %32, !dbg !402, !llvm.loop !406

32:                                               ; preds = %29, %24
  %33 = phi i64 [ 0, %24 ], [ %30, %29 ]
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !393, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !226, metadata !DIExpression()), !dbg !408
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !227, metadata !DIExpression()), !dbg !408
  %34 = mul i64 %33, %28, !dbg !409
  %35 = getelementptr double, ptr %26, i64 %34, !dbg !410
  %36 = getelementptr double, ptr %35, i64 %33, !dbg !410
  %37 = load double, ptr %36, align 8, !dbg !410, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %37, metadata !395, metadata !DIExpression()), !dbg !411
  %38 = fcmp une double %37, 0.000000e+00, !dbg !412
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !393, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !399
  br i1 %38, label %29, label %39

39:                                               ; preds = %32
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 1) #7, !dbg !414
  br label %43, !dbg !414

40:                                               ; preds = %29, %22
  %41 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2) #7, !dbg !417
  %42 = tail call i32 @gsl_linalg_LU_svx(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3), !dbg !418, !range !419
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !353, metadata !DIExpression()), !dbg !420
  br label %43

43:                                               ; preds = %40, %39, %21, %17, %13, %9
  %44 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 19, %21 ], [ 1, %39 ], [ %42, %40 ], !dbg !421
  ret i32 %44, !dbg !422
}

declare !dbg !423 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LU_svx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !426 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !430, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !431, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !432, metadata !DIExpression()), !dbg !433
  %4 = load i64, ptr %0, align 8, !dbg !434, !tbaa !190
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !436
  %6 = load i64, ptr %5, align 8, !dbg !436, !tbaa !198
  %7 = icmp eq i64 %4, %6, !dbg !437
  br i1 %7, label %9, label %8, !dbg !438

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 20) #7, !dbg !439
  br label %39, !dbg !439

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !442, !tbaa !205
  %11 = icmp eq i64 %4, %10, !dbg !444
  br i1 %11, label %13, label %12, !dbg !445

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 19) #7, !dbg !446
  br label %39, !dbg !446

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !449, !tbaa !375
  %15 = icmp eq i64 %4, %14, !dbg !451
  br i1 %15, label %17, label %16, !dbg !452

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 179, i32 noundef 19) #7, !dbg !453
  br label %39, !dbg !453

17:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !388, metadata !DIExpression()), !dbg !456
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !394, metadata !DIExpression()), !dbg !456
  tail call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !456
  tail call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !456
  %18 = icmp eq i64 %4, 0, !dbg !459
  br i1 %18, label %35, label %19, !dbg !460

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3, !dbg !461
  %21 = load ptr, ptr %20, align 8, !tbaa !229
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !231
  br label %27, !dbg !460

24:                                               ; preds = %27
  %25 = add nuw i64 %28, 1, !dbg !463
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !393, metadata !DIExpression()), !dbg !456
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !393, metadata !DIExpression()), !dbg !456
  %26 = icmp eq i64 %25, %4, !dbg !459
  br i1 %26, label %35, label %27, !dbg !460, !llvm.loop !464

27:                                               ; preds = %24, %19
  %28 = phi i64 [ 0, %19 ], [ %25, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !393, metadata !DIExpression()), !dbg !456
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !226, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !227, metadata !DIExpression()), !dbg !466
  %29 = mul i64 %28, %23, !dbg !467
  %30 = getelementptr double, ptr %21, i64 %29, !dbg !468
  %31 = getelementptr double, ptr %30, i64 %28, !dbg !468
  %32 = load double, ptr %31, align 8, !dbg !468, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %32, metadata !395, metadata !DIExpression()), !dbg !469
  %33 = fcmp une double %32, 0.000000e+00, !dbg !470
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !393, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !456
  br i1 %33, label %24, label %34

34:                                               ; preds = %27
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef 1) #7, !dbg !471
  br label %39, !dbg !471

35:                                               ; preds = %24, %17
  %36 = tail call i32 @gsl_permute_vector(ptr noundef nonnull %1, ptr noundef nonnull %2) #7, !dbg !474
  %37 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 111, i32 noundef 132, ptr noundef nonnull %0, ptr noundef nonnull %2) #7, !dbg !476
  %38 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #7, !dbg !477
  br label %39, !dbg !478

39:                                               ; preds = %35, %34, %16, %12, %8
  %40 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 1, %34 ], [ 0, %35 ], !dbg !479
  ret i32 %40, !dbg !480
}

declare !dbg !481 i32 @gsl_permute_vector(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !485 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LU_refine(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !dbg !493 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !497, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !498, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !499, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !500, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !501, metadata !DIExpression()), !dbg !512
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !502, metadata !DIExpression()), !dbg !512
  %7 = load i64, ptr %0, align 8, !dbg !513, !tbaa !190
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !515
  %9 = load i64, ptr %8, align 8, !dbg !515, !tbaa !198
  %10 = icmp eq i64 %7, %9, !dbg !516
  br i1 %10, label %12, label %11, !dbg !517

11:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef 20) #7, !dbg !518
  br label %60, !dbg !518

12:                                               ; preds = %6
  %13 = load i64, ptr %1, align 8, !dbg !521, !tbaa !190
  %14 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !522
  %15 = load i64, ptr %14, align 8, !dbg !522, !tbaa !198
  %16 = icmp eq i64 %13, %15, !dbg !523
  br i1 %16, label %18, label %17, !dbg !524

17:                                               ; preds = %12
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 20) #7, !dbg !525
  br label %60, !dbg !525

18:                                               ; preds = %12
  %19 = icmp eq i64 %7, %13, !dbg !528
  br i1 %19, label %21, label %20, !dbg !529

20:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 217, i32 noundef 20) #7, !dbg !530
  br label %60, !dbg !530

21:                                               ; preds = %18
  %22 = load i64, ptr %2, align 8, !dbg !533, !tbaa !205
  %23 = icmp eq i64 %7, %22, !dbg !534
  br i1 %23, label %25, label %24, !dbg !535

24:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 221, i32 noundef 19) #7, !dbg !536
  br label %60, !dbg !536

25:                                               ; preds = %21
  %26 = load i64, ptr %3, align 8, !dbg !539, !tbaa !375
  %27 = icmp eq i64 %7, %26, !dbg !540
  br i1 %27, label %29, label %28, !dbg !541

28:                                               ; preds = %25
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 225, i32 noundef 19) #7, !dbg !542
  br label %60, !dbg !542

29:                                               ; preds = %25
  %30 = load i64, ptr %4, align 8, !dbg !545, !tbaa !375
  %31 = icmp eq i64 %7, %30, !dbg !546
  br i1 %31, label %33, label %32, !dbg !547

32:                                               ; preds = %29
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 229, i32 noundef 19) #7, !dbg !548
  br label %60, !dbg !548

33:                                               ; preds = %29
  %34 = load i64, ptr %5, align 8, !dbg !551, !tbaa !375
  %35 = icmp eq i64 %7, %34, !dbg !552
  br i1 %35, label %37, label %36, !dbg !553

36:                                               ; preds = %33
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 233, i32 noundef 19) #7, !dbg !554
  br label %60, !dbg !554

37:                                               ; preds = %33
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !388, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !394, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !557
  %38 = icmp eq i64 %7, 0, !dbg !559
  br i1 %38, label %55, label %39, !dbg !560

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3, !dbg !561
  %41 = load ptr, ptr %40, align 8, !tbaa !229
  %42 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !231
  br label %47, !dbg !560

44:                                               ; preds = %47
  %45 = add nuw i64 %48, 1, !dbg !563
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !393, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !393, metadata !DIExpression()), !dbg !557
  %46 = icmp eq i64 %45, %7, !dbg !559
  br i1 %46, label %55, label %47, !dbg !560, !llvm.loop !564

47:                                               ; preds = %44, %39
  %48 = phi i64 [ 0, %39 ], [ %45, %44 ]
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !393, metadata !DIExpression()), !dbg !557
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !225, metadata !DIExpression()), !dbg !566
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !226, metadata !DIExpression()), !dbg !566
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !227, metadata !DIExpression()), !dbg !566
  %49 = mul i64 %48, %43, !dbg !567
  %50 = getelementptr double, ptr %41, i64 %49, !dbg !568
  %51 = getelementptr double, ptr %50, i64 %48, !dbg !568
  %52 = load double, ptr %51, align 8, !dbg !568, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %52, metadata !395, metadata !DIExpression()), !dbg !569
  %53 = fcmp une double %52, 0.000000e+00, !dbg !570
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !393, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !557
  br i1 %53, label %44, label %54

54:                                               ; preds = %47
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 237, i32 noundef 1) #7, !dbg !571
  br label %60, !dbg !571

55:                                               ; preds = %44, %37
  %56 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %5, ptr noundef nonnull %3) #7, !dbg !574
  %57 = tail call i32 @gsl_blas_dgemv(i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %4, double noundef -1.000000e+00, ptr noundef nonnull %5) #7, !dbg !575
  %58 = tail call i32 @gsl_linalg_LU_svx(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %5), !dbg !576, !range !419
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !503, metadata !DIExpression()), !dbg !577
  %59 = tail call i32 @gsl_blas_daxpy(double noundef -1.000000e+00, ptr noundef nonnull %5, ptr noundef nonnull %4) #7, !dbg !578
  br label %60

60:                                               ; preds = %55, %54, %36, %32, %28, %24, %20, %17, %11
  %61 = phi i32 [ 20, %11 ], [ 20, %17 ], [ 20, %20 ], [ 19, %24 ], [ 19, %28 ], [ 19, %32 ], [ 19, %36 ], [ 1, %54 ], [ %58, %55 ], !dbg !512
  ret i32 %61, !dbg !579
}

declare !dbg !580 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !583 i32 @gsl_blas_daxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_LU_invert(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !586 {
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !606
  call void @llvm.dbg.assign(metadata i1 undef, metadata !596, metadata !DIExpression(), metadata !606, metadata ptr %4, metadata !DIExpression()), !dbg !607
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !590, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !591, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !592, metadata !DIExpression()), !dbg !608
  %5 = load i64, ptr %0, align 8, !dbg !609, !tbaa !190
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !594, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 0, metadata !595, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !388, metadata !DIExpression()), !dbg !610
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !394, metadata !DIExpression()), !dbg !610
  tail call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !610
  tail call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !610
  %6 = icmp eq i64 %5, 0, !dbg !613
  br i1 %6, label %7, label %8, !dbg !614

7:                                                ; preds = %3
  tail call void @gsl_matrix_set_identity(ptr noundef %2) #7, !dbg !615
  tail call void @llvm.dbg.value(metadata i64 0, metadata !593, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 0, metadata !595, metadata !DIExpression()), !dbg !608
  br label %33, !dbg !616

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3, !dbg !617
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !231
  br label %16, !dbg !614

13:                                               ; preds = %16
  %14 = add nuw i64 %17, 1, !dbg !619
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !393, metadata !DIExpression()), !dbg !610
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !393, metadata !DIExpression()), !dbg !610
  %15 = icmp eq i64 %14, %5, !dbg !613
  br i1 %15, label %24, label %16, !dbg !614, !llvm.loop !620

16:                                               ; preds = %13, %8
  %17 = phi i64 [ 0, %8 ], [ %14, %13 ]
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !393, metadata !DIExpression()), !dbg !610
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !226, metadata !DIExpression()), !dbg !622
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !227, metadata !DIExpression()), !dbg !622
  %18 = mul i64 %17, %12, !dbg !623
  %19 = getelementptr double, ptr %10, i64 %18, !dbg !624
  %20 = getelementptr double, ptr %19, i64 %17, !dbg !624
  %21 = load double, ptr %20, align 8, !dbg !624, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %21, metadata !395, metadata !DIExpression()), !dbg !625
  %22 = fcmp une double %21, 0.000000e+00, !dbg !626
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !393, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !610
  br i1 %22, label %13, label %23

23:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 266, i32 noundef 1) #7, !dbg !627
  br label %33, !dbg !627

24:                                               ; preds = %13
  tail call void @gsl_matrix_set_identity(ptr noundef %2) #7, !dbg !615
  tail call void @llvm.dbg.value(metadata i64 0, metadata !593, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 0, metadata !595, metadata !DIExpression()), !dbg !608
  br label %25, !dbg !616

25:                                               ; preds = %25, %24
  %26 = phi i32 [ %30, %25 ], [ 0, %24 ]
  %27 = phi i64 [ %31, %25 ], [ 0, %24 ]
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !595, metadata !DIExpression()), !dbg !608
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !593, metadata !DIExpression()), !dbg !608
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7, !dbg !630
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef %2, i64 noundef %27) #7, !dbg !631
  %28 = call i32 @gsl_linalg_LU_svx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4), !dbg !632, !range !419
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !605, metadata !DIExpression()), !dbg !607
  %29 = icmp eq i32 %28, 0, !dbg !633
  %30 = select i1 %29, i32 %26, i32 %28, !dbg !635
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !595, metadata !DIExpression()), !dbg !608
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7, !dbg !636
  %31 = add nuw i64 %27, 1, !dbg !637
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !593, metadata !DIExpression()), !dbg !608
  %32 = icmp eq i64 %31, %5, !dbg !638
  br i1 %32, label %33, label %25, !dbg !616, !llvm.loop !639

33:                                               ; preds = %25, %23, %7
  %34 = phi i32 [ 1, %23 ], [ 0, %7 ], [ %30, %25 ], !dbg !608
  ret i32 %34, !dbg !641
}

declare !dbg !642 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #1

declare !dbg !645 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local double @gsl_linalg_LU_det(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !dbg !648 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !652, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !653, metadata !DIExpression()), !dbg !657
  %3 = load i64, ptr %0, align 8, !dbg !658, !tbaa !190
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !655, metadata !DIExpression()), !dbg !657
  %4 = sitofp i32 %1 to double, !dbg !659
  tail call void @llvm.dbg.value(metadata double %4, metadata !656, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata i64 0, metadata !654, metadata !DIExpression()), !dbg !657
  %5 = icmp eq i64 %3, 0, !dbg !660
  br i1 %5, label %62, label %6, !dbg !663

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !231
  %11 = and i64 %3, 3, !dbg !663
  %12 = icmp ult i64 %3, 4, !dbg !663
  br i1 %12, label %45, label %13, !dbg !663

13:                                               ; preds = %6
  %14 = and i64 %3, -4, !dbg !663
  br label %15, !dbg !663

15:                                               ; preds = %15, %13
  %16 = phi double [ %4, %13 ], [ %41, %15 ]
  %17 = phi i64 [ 0, %13 ], [ %42, %15 ]
  %18 = phi i64 [ 0, %13 ], [ %43, %15 ]
  tail call void @llvm.dbg.value(metadata double %16, metadata !656, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !654, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !226, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !227, metadata !DIExpression()), !dbg !664
  %19 = mul i64 %10, %17, !dbg !667
  %20 = getelementptr double, ptr %8, i64 %19, !dbg !668
  %21 = getelementptr double, ptr %20, i64 %17, !dbg !668
  %22 = load double, ptr %21, align 8, !dbg !668, !tbaa !240
  %23 = fmul double %16, %22, !dbg !669
  tail call void @llvm.dbg.value(metadata double %23, metadata !656, metadata !DIExpression()), !dbg !657
  %24 = or disjoint i64 %17, 1, !dbg !670
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !654, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata double %23, metadata !656, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !654, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !226, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !227, metadata !DIExpression()), !dbg !664
  %25 = mul i64 %10, %24, !dbg !667
  %26 = getelementptr double, ptr %8, i64 %25, !dbg !668
  %27 = getelementptr double, ptr %26, i64 %24, !dbg !668
  %28 = load double, ptr %27, align 8, !dbg !668, !tbaa !240
  %29 = fmul double %23, %28, !dbg !669
  tail call void @llvm.dbg.value(metadata double %29, metadata !656, metadata !DIExpression()), !dbg !657
  %30 = or disjoint i64 %17, 2, !dbg !670
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !654, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata double %29, metadata !656, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !654, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !226, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !227, metadata !DIExpression()), !dbg !664
  %31 = mul i64 %10, %30, !dbg !667
  %32 = getelementptr double, ptr %8, i64 %31, !dbg !668
  %33 = getelementptr double, ptr %32, i64 %30, !dbg !668
  %34 = load double, ptr %33, align 8, !dbg !668, !tbaa !240
  %35 = fmul double %29, %34, !dbg !669
  tail call void @llvm.dbg.value(metadata double %35, metadata !656, metadata !DIExpression()), !dbg !657
  %36 = or disjoint i64 %17, 3, !dbg !670
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !654, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata double %35, metadata !656, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !654, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !227, metadata !DIExpression()), !dbg !664
  %37 = mul i64 %10, %36, !dbg !667
  %38 = getelementptr double, ptr %8, i64 %37, !dbg !668
  %39 = getelementptr double, ptr %38, i64 %36, !dbg !668
  %40 = load double, ptr %39, align 8, !dbg !668, !tbaa !240
  %41 = fmul double %35, %40, !dbg !669
  tail call void @llvm.dbg.value(metadata double %41, metadata !656, metadata !DIExpression()), !dbg !657
  %42 = add nuw i64 %17, 4, !dbg !670
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !654, metadata !DIExpression()), !dbg !657
  %43 = add i64 %18, 4, !dbg !663
  %44 = icmp eq i64 %43, %14, !dbg !663
  br i1 %44, label %45, label %15, !dbg !663, !llvm.loop !671

45:                                               ; preds = %15, %6
  %46 = phi double [ undef, %6 ], [ %41, %15 ]
  %47 = phi double [ %4, %6 ], [ %41, %15 ]
  %48 = phi i64 [ 0, %6 ], [ %42, %15 ]
  %49 = icmp eq i64 %11, 0, !dbg !663
  br i1 %49, label %62, label %50, !dbg !663

50:                                               ; preds = %50, %45
  %51 = phi double [ %58, %50 ], [ %47, %45 ]
  %52 = phi i64 [ %59, %50 ], [ %48, %45 ]
  %53 = phi i64 [ %60, %50 ], [ 0, %45 ]
  tail call void @llvm.dbg.value(metadata double %51, metadata !656, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !654, metadata !DIExpression()), !dbg !657
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !226, metadata !DIExpression()), !dbg !664
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !227, metadata !DIExpression()), !dbg !664
  %54 = mul i64 %10, %52, !dbg !667
  %55 = getelementptr double, ptr %8, i64 %54, !dbg !668
  %56 = getelementptr double, ptr %55, i64 %52, !dbg !668
  %57 = load double, ptr %56, align 8, !dbg !668, !tbaa !240
  %58 = fmul double %51, %57, !dbg !669
  tail call void @llvm.dbg.value(metadata double %58, metadata !656, metadata !DIExpression()), !dbg !657
  %59 = add nuw i64 %52, 1, !dbg !670
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !654, metadata !DIExpression()), !dbg !657
  %60 = add i64 %53, 1, !dbg !663
  %61 = icmp eq i64 %60, %11, !dbg !663
  br i1 %61, label %62, label %50, !dbg !663, !llvm.loop !673

62:                                               ; preds = %50, %45, %2
  %63 = phi double [ %4, %2 ], [ %46, %45 ], [ %58, %50 ], !dbg !657
  ret double %63, !dbg !675
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local double @gsl_linalg_LU_lndet(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !dbg !676 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !680, metadata !DIExpression()), !dbg !684
  %2 = load i64, ptr %0, align 8, !dbg !685, !tbaa !190
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !682, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !683, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata i64 0, metadata !681, metadata !DIExpression()), !dbg !684
  %3 = icmp eq i64 %2, 0, !dbg !686
  br i1 %3, label %19, label %4, !dbg !689

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %7, !dbg !689

7:                                                ; preds = %7, %4
  %8 = phi double [ 0.000000e+00, %4 ], [ %handler_result, %7 ]
  %9 = phi i64 [ 0, %4 ], [ %17, %7 ]
  tail call void @llvm.dbg.value(metadata double %8, metadata !683, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !681, metadata !DIExpression()), !dbg !684
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !690
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !226, metadata !DIExpression()), !dbg !690
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !227, metadata !DIExpression()), !dbg !690
  %10 = load ptr, ptr %5, align 8, !dbg !693, !tbaa !229
  %11 = load i64, ptr %6, align 8, !dbg !694, !tbaa !231
  %12 = mul i64 %11, %9, !dbg !695
  %13 = getelementptr double, ptr %10, i64 %12, !dbg !696
  %14 = getelementptr double, ptr %13, i64 %9, !dbg !696
  %15 = load double, ptr %14, align 8, !dbg !696, !tbaa !240
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !697
  %handler_result1 = call double @callHandler(i32 12, double %16, double %16), !dbg !698
  %handler_result = call double @fAddHandlerDouble(double %8, double %handler_result1), !dbg !698
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !683, metadata !DIExpression()), !dbg !684
  %17 = add nuw i64 %9, 1, !dbg !698
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !681, metadata !DIExpression()), !dbg !684
  %18 = icmp eq i64 %17, %2, !dbg !686
  br i1 %18, label %19, label %7, !dbg !689, !llvm.loop !699

19:                                               ; preds = %7, %1
  %20 = phi double [ 0.000000e+00, %1 ], [ %handler_result, %7 ], !dbg !684
  ret double %20, !dbg !701
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !702 double @log(double noundef) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gsl_linalg_LU_sgndet(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 !dbg !706 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !710, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !711, metadata !DIExpression()), !dbg !719
  %3 = load i64, ptr %0, align 8, !dbg !720, !tbaa !190
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !713, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !714, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 0, metadata !712, metadata !DIExpression()), !dbg !719
  %4 = icmp eq i64 %3, 0, !dbg !721
  br i1 %4, label %26, label %5, !dbg !722

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !231
  br label %10, !dbg !722

10:                                               ; preds = %22, %5
  %11 = phi i64 [ 0, %5 ], [ %24, %22 ]
  %12 = phi i32 [ %1, %5 ], [ %23, %22 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !712, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !714, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !225, metadata !DIExpression()), !dbg !723
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !226, metadata !DIExpression()), !dbg !723
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !227, metadata !DIExpression()), !dbg !723
  %13 = mul i64 %9, %11, !dbg !725
  %14 = getelementptr double, ptr %7, i64 %13, !dbg !726
  %15 = getelementptr double, ptr %14, i64 %11, !dbg !726
  %16 = load double, ptr %15, align 8, !dbg !726, !tbaa !240
  tail call void @llvm.dbg.value(metadata double %16, metadata !715, metadata !DIExpression()), !dbg !727
  %17 = fcmp olt double %16, 0.000000e+00, !dbg !728
  br i1 %17, label %18, label %20, !dbg !730

18:                                               ; preds = %10
  %19 = sub nsw i32 0, %12, !dbg !731
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !714, metadata !DIExpression()), !dbg !719
  br label %22, !dbg !733

20:                                               ; preds = %10
  %21 = fcmp oeq double %16, 0.000000e+00, !dbg !734
  br i1 %21, label %26, label %22, !dbg !736

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %12, %20 ]
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !714, metadata !DIExpression()), !dbg !719
  %24 = add nuw i64 %11, 1, !dbg !737
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !712, metadata !DIExpression()), !dbg !719
  %25 = icmp eq i64 %24, %3, !dbg !721
  br i1 %25, label %26, label %10, !dbg !722, !llvm.loop !738

26:                                               ; preds = %22, %20, %2
  %27 = phi i32 [ %1, %2 ], [ 0, %20 ], [ %23, %22 ], !dbg !719
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !714, metadata !DIExpression()), !dbg !719
  ret i32 %27, !dbg !740
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!301 = !DILocation(line: 305, column: 27, scope: !281, inlinedAt: !302)
!302 = distinct !DILocation(line: 116, column: 23, scope: !184)
!303 = !DILocation(line: 0, scope: !281, inlinedAt: !302)
!304 = !DILocation(line: 112, column: 43, scope: !185)
!305 = !DILocation(line: 112, column: 37, scope: !185)
!306 = distinct !{!306, !292, !307, !255}
!307 = !DILocation(line: 117, column: 21, scope: !186)
!308 = !DILocation(line: 107, column: 39, scope: !179)
!309 = !DILocation(line: 107, column: 33, scope: !179)
!310 = !DILocation(line: 107, column: 15, scope: !180)
!311 = distinct !{!311, !310, !312, !255}
!312 = !DILocation(line: 118, column: 17, scope: !180)
!313 = distinct !{!313, !217, !314, !255}
!314 = !DILocation(line: 120, column: 9, scope: !170)
!315 = !DILocation(line: 0, scope: !162)
!316 = !DILocation(line: 124, column: 1, scope: !121)
!317 = !DISubprogram(name: "gsl_error", scope: !57, file: !57, line: 77, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320, !320, !58, !58}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!322 = !DISubprogram(name: "gsl_permutation_init", scope: !148, file: !148, line: 51, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !146}
!325 = !DISubprogram(name: "gsl_matrix_swap_rows", scope: !126, file: !126, line: 221, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!326 = !DISubroutineType(types: !327)
!327 = !{!58, !124, !163, !163}
!328 = !DISubprogram(name: "gsl_permutation_swap", scope: !148, file: !148, line: 63, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubroutineType(types: !330)
!330 = !{!58, !146, !163, !163}
!331 = distinct !DISubprogram(name: "gsl_linalg_LU_solve", scope: !2, file: !2, line: 127, type: !332, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !348)
!332 = !DISubroutineType(types: !333)
!333 = !{!58, !222, !334, !336, !347}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !339, line: 50, baseType: !340)
!339 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 42, size: 320, elements: !341)
!341 = !{!342, !343, !344, !345, !346}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !339, line: 44, baseType: !130, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !340, file: !339, line: 45, baseType: !130, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !340, file: !339, line: 46, baseType: !136, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !340, file: !339, line: 47, baseType: !138, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !340, file: !339, line: 48, baseType: !58, size: 32, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!348 = !{!349, !350, !351, !352, !353}
!349 = !DILocalVariable(name: "LU", arg: 1, scope: !331, file: !2, line: 127, type: !222)
!350 = !DILocalVariable(name: "p", arg: 2, scope: !331, file: !2, line: 127, type: !334)
!351 = !DILocalVariable(name: "b", arg: 3, scope: !331, file: !2, line: 127, type: !336)
!352 = !DILocalVariable(name: "x", arg: 4, scope: !331, file: !2, line: 127, type: !347)
!353 = !DILocalVariable(name: "status", scope: !354, file: !2, line: 151, type: !58)
!354 = distinct !DILexicalBlock(scope: !355, file: !2, line: 150, column: 5)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 145, column: 12)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 141, column: 12)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 137, column: 12)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 133, column: 12)
!359 = distinct !DILexicalBlock(scope: !331, file: !2, line: 129, column: 7)
!360 = !DILocation(line: 0, scope: !331)
!361 = !DILocation(line: 129, column: 11, scope: !359)
!362 = !DILocation(line: 129, column: 24, scope: !359)
!363 = !DILocation(line: 129, column: 17, scope: !359)
!364 = !DILocation(line: 129, column: 7, scope: !331)
!365 = !DILocation(line: 131, column: 7, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 131, column: 7)
!367 = distinct !DILexicalBlock(scope: !359, file: !2, line: 130, column: 5)
!368 = !DILocation(line: 133, column: 28, scope: !358)
!369 = !DILocation(line: 133, column: 22, scope: !358)
!370 = !DILocation(line: 133, column: 12, scope: !359)
!371 = !DILocation(line: 135, column: 7, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 135, column: 7)
!373 = distinct !DILexicalBlock(scope: !358, file: !2, line: 134, column: 5)
!374 = !DILocation(line: 137, column: 28, scope: !357)
!375 = !{!376, !192, i64 0}
!376 = !{!"", !192, i64 0, !192, i64 8, !195, i64 16, !195, i64 24, !196, i64 32}
!377 = !DILocation(line: 137, column: 22, scope: !357)
!378 = !DILocation(line: 137, column: 12, scope: !358)
!379 = !DILocation(line: 139, column: 7, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 139, column: 7)
!381 = distinct !DILexicalBlock(scope: !357, file: !2, line: 138, column: 5)
!382 = !DILocation(line: 141, column: 28, scope: !356)
!383 = !DILocation(line: 141, column: 22, scope: !356)
!384 = !DILocation(line: 141, column: 12, scope: !357)
!385 = !DILocation(line: 143, column: 7, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !2, line: 143, column: 7)
!387 = distinct !DILexicalBlock(scope: !356, file: !2, line: 142, column: 5)
!388 = !DILocalVariable(name: "LU", arg: 1, scope: !389, file: !2, line: 340, type: !222)
!389 = distinct !DISubprogram(name: "singular", scope: !2, file: !2, line: 340, type: !390, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!58, !222}
!392 = !{!388, !393, !394, !395}
!393 = !DILocalVariable(name: "i", scope: !389, file: !2, line: 342, type: !130)
!394 = !DILocalVariable(name: "n", scope: !389, file: !2, line: 342, type: !130)
!395 = !DILocalVariable(name: "u", scope: !396, file: !2, line: 346, type: !111)
!396 = distinct !DILexicalBlock(scope: !397, file: !2, line: 345, column: 5)
!397 = distinct !DILexicalBlock(scope: !398, file: !2, line: 344, column: 3)
!398 = distinct !DILexicalBlock(scope: !389, file: !2, line: 344, column: 3)
!399 = !DILocation(line: 0, scope: !389, inlinedAt: !400)
!400 = distinct !DILocation(line: 145, column: 12, scope: !355)
!401 = !DILocation(line: 344, column: 17, scope: !397, inlinedAt: !400)
!402 = !DILocation(line: 344, column: 3, scope: !398, inlinedAt: !400)
!403 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !404)
!404 = distinct !DILocation(line: 346, column: 18, scope: !396, inlinedAt: !400)
!405 = !DILocation(line: 344, column: 23, scope: !397, inlinedAt: !400)
!406 = distinct !{!406, !402, !407, !255}
!407 = !DILocation(line: 348, column: 5, scope: !398, inlinedAt: !400)
!408 = !DILocation(line: 0, scope: !219, inlinedAt: !404)
!409 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !404)
!410 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !404)
!411 = !DILocation(line: 0, scope: !396, inlinedAt: !400)
!412 = !DILocation(line: 347, column: 13, scope: !413, inlinedAt: !400)
!413 = distinct !DILexicalBlock(scope: !396, file: !2, line: 347, column: 11)
!414 = !DILocation(line: 147, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 147, column: 7)
!416 = distinct !DILexicalBlock(scope: !355, file: !2, line: 146, column: 5)
!417 = !DILocation(line: 155, column: 7, scope: !354)
!418 = !DILocation(line: 159, column: 16, scope: !354)
!419 = !{i32 0, i32 21}
!420 = !DILocation(line: 0, scope: !354)
!421 = !DILocation(line: 0, scope: !359)
!422 = !DILocation(line: 163, column: 1, scope: !331)
!423 = !DISubprogram(name: "gsl_vector_memcpy", scope: !339, file: !339, line: 136, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DISubroutineType(types: !425)
!425 = !{!58, !347, !336}
!426 = distinct !DISubprogram(name: "gsl_linalg_LU_svx", scope: !2, file: !2, line: 167, type: !427, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{!58, !222, !334, !347}
!429 = !{!430, !431, !432}
!430 = !DILocalVariable(name: "LU", arg: 1, scope: !426, file: !2, line: 167, type: !222)
!431 = !DILocalVariable(name: "p", arg: 2, scope: !426, file: !2, line: 167, type: !334)
!432 = !DILocalVariable(name: "x", arg: 3, scope: !426, file: !2, line: 167, type: !347)
!433 = !DILocation(line: 0, scope: !426)
!434 = !DILocation(line: 169, column: 11, scope: !435)
!435 = distinct !DILexicalBlock(scope: !426, file: !2, line: 169, column: 7)
!436 = !DILocation(line: 169, column: 24, scope: !435)
!437 = !DILocation(line: 169, column: 17, scope: !435)
!438 = !DILocation(line: 169, column: 7, scope: !426)
!439 = !DILocation(line: 171, column: 7, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !2, line: 171, column: 7)
!441 = distinct !DILexicalBlock(scope: !435, file: !2, line: 170, column: 5)
!442 = !DILocation(line: 173, column: 28, scope: !443)
!443 = distinct !DILexicalBlock(scope: !435, file: !2, line: 173, column: 12)
!444 = !DILocation(line: 173, column: 22, scope: !443)
!445 = !DILocation(line: 173, column: 12, scope: !435)
!446 = !DILocation(line: 175, column: 7, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !2, line: 175, column: 7)
!448 = distinct !DILexicalBlock(scope: !443, file: !2, line: 174, column: 5)
!449 = !DILocation(line: 177, column: 28, scope: !450)
!450 = distinct !DILexicalBlock(scope: !443, file: !2, line: 177, column: 12)
!451 = !DILocation(line: 177, column: 22, scope: !450)
!452 = !DILocation(line: 177, column: 12, scope: !443)
!453 = !DILocation(line: 179, column: 7, scope: !454)
!454 = distinct !DILexicalBlock(scope: !455, file: !2, line: 179, column: 7)
!455 = distinct !DILexicalBlock(scope: !450, file: !2, line: 178, column: 5)
!456 = !DILocation(line: 0, scope: !389, inlinedAt: !457)
!457 = distinct !DILocation(line: 181, column: 12, scope: !458)
!458 = distinct !DILexicalBlock(scope: !450, file: !2, line: 181, column: 12)
!459 = !DILocation(line: 344, column: 17, scope: !397, inlinedAt: !457)
!460 = !DILocation(line: 344, column: 3, scope: !398, inlinedAt: !457)
!461 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !462)
!462 = distinct !DILocation(line: 346, column: 18, scope: !396, inlinedAt: !457)
!463 = !DILocation(line: 344, column: 23, scope: !397, inlinedAt: !457)
!464 = distinct !{!464, !460, !465, !255}
!465 = !DILocation(line: 348, column: 5, scope: !398, inlinedAt: !457)
!466 = !DILocation(line: 0, scope: !219, inlinedAt: !462)
!467 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !462)
!468 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !462)
!469 = !DILocation(line: 0, scope: !396, inlinedAt: !457)
!470 = !DILocation(line: 347, column: 13, scope: !413, inlinedAt: !457)
!471 = !DILocation(line: 183, column: 7, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 183, column: 7)
!473 = distinct !DILexicalBlock(scope: !458, file: !2, line: 182, column: 5)
!474 = !DILocation(line: 189, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !458, file: !2, line: 186, column: 5)
!476 = !DILocation(line: 193, column: 7, scope: !475)
!477 = !DILocation(line: 197, column: 7, scope: !475)
!478 = !DILocation(line: 199, column: 7, scope: !475)
!479 = !DILocation(line: 0, scope: !435)
!480 = !DILocation(line: 201, column: 1, scope: !426)
!481 = !DISubprogram(name: "gsl_permute_vector", scope: !482, file: !482, line: 40, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DIFile(filename: "../gsl/gsl_permute_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "05dfc9fcd9b4e47246745becff796730")
!483 = !DISubroutineType(types: !484)
!484 = !{!58, !334, !347}
!485 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !486, file: !486, line: 217, type: !487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!487 = !DISubroutineType(types: !488)
!488 = !{!58, !489, !491, !492, !222, !347}
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !490, line: 45, baseType: !95)
!490 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !490, line: 44, baseType: !101)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !490, line: 46, baseType: !106)
!493 = distinct !DISubprogram(name: "gsl_linalg_LU_refine", scope: !2, file: !2, line: 205, type: !494, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!58, !222, !222, !334, !336, !347, !347}
!496 = !{!497, !498, !499, !500, !501, !502, !503}
!497 = !DILocalVariable(name: "A", arg: 1, scope: !493, file: !2, line: 205, type: !222)
!498 = !DILocalVariable(name: "LU", arg: 2, scope: !493, file: !2, line: 205, type: !222)
!499 = !DILocalVariable(name: "p", arg: 3, scope: !493, file: !2, line: 205, type: !334)
!500 = !DILocalVariable(name: "b", arg: 4, scope: !493, file: !2, line: 205, type: !336)
!501 = !DILocalVariable(name: "x", arg: 5, scope: !493, file: !2, line: 205, type: !347)
!502 = !DILocalVariable(name: "work", arg: 6, scope: !493, file: !2, line: 205, type: !347)
!503 = !DILocalVariable(name: "status", scope: !504, file: !2, line: 241, type: !58)
!504 = distinct !DILexicalBlock(scope: !505, file: !2, line: 240, column: 5)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 235, column: 12)
!506 = distinct !DILexicalBlock(scope: !507, file: !2, line: 231, column: 12)
!507 = distinct !DILexicalBlock(scope: !508, file: !2, line: 227, column: 12)
!508 = distinct !DILexicalBlock(scope: !509, file: !2, line: 223, column: 12)
!509 = distinct !DILexicalBlock(scope: !510, file: !2, line: 219, column: 12)
!510 = distinct !DILexicalBlock(scope: !511, file: !2, line: 215, column: 12)
!511 = distinct !DILexicalBlock(scope: !493, file: !2, line: 211, column: 7)
!512 = !DILocation(line: 0, scope: !493)
!513 = !DILocation(line: 207, column: 10, scope: !514)
!514 = distinct !DILexicalBlock(scope: !493, file: !2, line: 207, column: 7)
!515 = !DILocation(line: 207, column: 22, scope: !514)
!516 = !DILocation(line: 207, column: 16, scope: !514)
!517 = !DILocation(line: 207, column: 7, scope: !493)
!518 = !DILocation(line: 209, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 209, column: 7)
!520 = distinct !DILexicalBlock(scope: !514, file: !2, line: 208, column: 5)
!521 = !DILocation(line: 211, column: 11, scope: !511)
!522 = !DILocation(line: 211, column: 24, scope: !511)
!523 = !DILocation(line: 211, column: 17, scope: !511)
!524 = !DILocation(line: 211, column: 7, scope: !493)
!525 = !DILocation(line: 213, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !2, line: 213, column: 7)
!527 = distinct !DILexicalBlock(scope: !511, file: !2, line: 212, column: 5)
!528 = !DILocation(line: 215, column: 21, scope: !510)
!529 = !DILocation(line: 215, column: 12, scope: !511)
!530 = !DILocation(line: 217, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !2, line: 217, column: 7)
!532 = distinct !DILexicalBlock(scope: !510, file: !2, line: 216, column: 5)
!533 = !DILocation(line: 219, column: 28, scope: !509)
!534 = !DILocation(line: 219, column: 22, scope: !509)
!535 = !DILocation(line: 219, column: 12, scope: !510)
!536 = !DILocation(line: 221, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 221, column: 7)
!538 = distinct !DILexicalBlock(scope: !509, file: !2, line: 220, column: 5)
!539 = !DILocation(line: 223, column: 28, scope: !508)
!540 = !DILocation(line: 223, column: 22, scope: !508)
!541 = !DILocation(line: 223, column: 12, scope: !509)
!542 = !DILocation(line: 225, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !2, line: 225, column: 7)
!544 = distinct !DILexicalBlock(scope: !508, file: !2, line: 224, column: 5)
!545 = !DILocation(line: 227, column: 28, scope: !507)
!546 = !DILocation(line: 227, column: 22, scope: !507)
!547 = !DILocation(line: 227, column: 12, scope: !508)
!548 = !DILocation(line: 229, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !2, line: 229, column: 7)
!550 = distinct !DILexicalBlock(scope: !507, file: !2, line: 228, column: 5)
!551 = !DILocation(line: 231, column: 31, scope: !506)
!552 = !DILocation(line: 231, column: 22, scope: !506)
!553 = !DILocation(line: 231, column: 12, scope: !507)
!554 = !DILocation(line: 233, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !2, line: 233, column: 7)
!556 = distinct !DILexicalBlock(scope: !506, file: !2, line: 232, column: 5)
!557 = !DILocation(line: 0, scope: !389, inlinedAt: !558)
!558 = distinct !DILocation(line: 235, column: 12, scope: !505)
!559 = !DILocation(line: 344, column: 17, scope: !397, inlinedAt: !558)
!560 = !DILocation(line: 344, column: 3, scope: !398, inlinedAt: !558)
!561 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !562)
!562 = distinct !DILocation(line: 346, column: 18, scope: !396, inlinedAt: !558)
!563 = !DILocation(line: 344, column: 23, scope: !397, inlinedAt: !558)
!564 = distinct !{!564, !560, !565, !255}
!565 = !DILocation(line: 348, column: 5, scope: !398, inlinedAt: !558)
!566 = !DILocation(line: 0, scope: !219, inlinedAt: !562)
!567 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !562)
!568 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !562)
!569 = !DILocation(line: 0, scope: !396, inlinedAt: !558)
!570 = !DILocation(line: 347, column: 13, scope: !413, inlinedAt: !558)
!571 = !DILocation(line: 237, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 237, column: 7)
!573 = distinct !DILexicalBlock(scope: !505, file: !2, line: 236, column: 5)
!574 = !DILocation(line: 245, column: 7, scope: !504)
!575 = !DILocation(line: 246, column: 7, scope: !504)
!576 = !DILocation(line: 250, column: 16, scope: !504)
!577 = !DILocation(line: 0, scope: !504)
!578 = !DILocation(line: 251, column: 7, scope: !504)
!579 = !DILocation(line: 255, column: 1, scope: !493)
!580 = !DISubprogram(name: "gsl_blas_dgemv", scope: !486, file: !486, line: 205, type: !581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!581 = !DISubroutineType(types: !582)
!582 = !{!58, !491, !111, !222, !336, !111, !347}
!583 = !DISubprogram(name: "gsl_blas_daxpy", scope: !486, file: !486, line: 121, type: !584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!584 = !DISubroutineType(types: !585)
!585 = !{!58, !111, !336, !347}
!586 = distinct !DISubprogram(name: "gsl_linalg_LU_invert", scope: !2, file: !2, line: 258, type: !587, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !589)
!587 = !DISubroutineType(types: !588)
!588 = !{!58, !222, !334, !124}
!589 = !{!590, !591, !592, !593, !594, !595, !596, !605}
!590 = !DILocalVariable(name: "LU", arg: 1, scope: !586, file: !2, line: 258, type: !222)
!591 = !DILocalVariable(name: "p", arg: 2, scope: !586, file: !2, line: 258, type: !334)
!592 = !DILocalVariable(name: "inverse", arg: 3, scope: !586, file: !2, line: 258, type: !124)
!593 = !DILocalVariable(name: "i", scope: !586, file: !2, line: 260, type: !130)
!594 = !DILocalVariable(name: "n", scope: !586, file: !2, line: 260, type: !130)
!595 = !DILocalVariable(name: "status", scope: !586, file: !2, line: 262, type: !58)
!596 = !DILocalVariable(name: "c", scope: !597, file: !2, line: 273, type: !600)
!597 = distinct !DILexicalBlock(scope: !598, file: !2, line: 272, column: 5)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 271, column: 3)
!599 = distinct !DILexicalBlock(scope: !586, file: !2, line: 271, column: 3)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !339, line: 57, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !339, line: 55, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 52, size: 320, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !602, file: !339, line: 54, baseType: !338, size: 320)
!605 = !DILocalVariable(name: "status_i", scope: !597, file: !2, line: 274, type: !58)
!606 = distinct !DIAssignID()
!607 = !DILocation(line: 0, scope: !597)
!608 = !DILocation(line: 0, scope: !586)
!609 = !DILocation(line: 260, column: 21, scope: !586)
!610 = !DILocation(line: 0, scope: !389, inlinedAt: !611)
!611 = distinct !DILocation(line: 264, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !586, file: !2, line: 264, column: 7)
!613 = !DILocation(line: 344, column: 17, scope: !397, inlinedAt: !611)
!614 = !DILocation(line: 344, column: 3, scope: !398, inlinedAt: !611)
!615 = !DILocation(line: 269, column: 3, scope: !586)
!616 = !DILocation(line: 271, column: 3, scope: !599)
!617 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !618)
!618 = distinct !DILocation(line: 346, column: 18, scope: !396, inlinedAt: !611)
!619 = !DILocation(line: 344, column: 23, scope: !397, inlinedAt: !611)
!620 = distinct !{!620, !614, !621, !255}
!621 = !DILocation(line: 348, column: 5, scope: !398, inlinedAt: !611)
!622 = !DILocation(line: 0, scope: !219, inlinedAt: !618)
!623 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !618)
!624 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !618)
!625 = !DILocation(line: 0, scope: !396, inlinedAt: !611)
!626 = !DILocation(line: 347, column: 13, scope: !413, inlinedAt: !611)
!627 = !DILocation(line: 266, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !2, line: 266, column: 7)
!629 = distinct !DILexicalBlock(scope: !612, file: !2, line: 265, column: 5)
!630 = !DILocation(line: 273, column: 7, scope: !597)
!631 = !DILocation(line: 273, column: 27, scope: !597)
!632 = !DILocation(line: 274, column: 22, scope: !597)
!633 = !DILocation(line: 276, column: 11, scope: !634)
!634 = distinct !DILexicalBlock(scope: !597, file: !2, line: 276, column: 11)
!635 = !DILocation(line: 276, column: 11, scope: !597)
!636 = !DILocation(line: 278, column: 5, scope: !598)
!637 = !DILocation(line: 271, column: 23, scope: !598)
!638 = !DILocation(line: 271, column: 17, scope: !598)
!639 = distinct !{!639, !616, !640, !255}
!640 = !DILocation(line: 278, column: 5, scope: !599)
!641 = !DILocation(line: 281, column: 1, scope: !586)
!642 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !126, file: !126, line: 209, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !124}
!645 = !DISubprogram(name: "gsl_matrix_column", scope: !126, file: !126, line: 109, type: !646, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!646 = !DISubroutineType(types: !647)
!647 = !{!601, !124, !163}
!648 = distinct !DISubprogram(name: "gsl_linalg_LU_det", scope: !2, file: !2, line: 284, type: !649, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{!111, !124, !58}
!651 = !{!652, !653, !654, !655, !656}
!652 = !DILocalVariable(name: "LU", arg: 1, scope: !648, file: !2, line: 284, type: !124)
!653 = !DILocalVariable(name: "signum", arg: 2, scope: !648, file: !2, line: 284, type: !58)
!654 = !DILocalVariable(name: "i", scope: !648, file: !2, line: 286, type: !130)
!655 = !DILocalVariable(name: "n", scope: !648, file: !2, line: 286, type: !130)
!656 = !DILocalVariable(name: "det", scope: !648, file: !2, line: 288, type: !111)
!657 = !DILocation(line: 0, scope: !648)
!658 = !DILocation(line: 286, column: 21, scope: !648)
!659 = !DILocation(line: 288, column: 16, scope: !648)
!660 = !DILocation(line: 290, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !2, line: 290, column: 3)
!662 = distinct !DILexicalBlock(scope: !648, file: !2, line: 290, column: 3)
!663 = !DILocation(line: 290, column: 3, scope: !662)
!664 = !DILocation(line: 0, scope: !219, inlinedAt: !665)
!665 = distinct !DILocation(line: 292, column: 14, scope: !666)
!666 = distinct !DILexicalBlock(scope: !661, file: !2, line: 291, column: 5)
!667 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !665)
!668 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !665)
!669 = !DILocation(line: 292, column: 11, scope: !666)
!670 = !DILocation(line: 290, column: 23, scope: !661)
!671 = distinct !{!671, !663, !672, !255}
!672 = !DILocation(line: 293, column: 5, scope: !662)
!673 = distinct !{!673, !674}
!674 = !{!"llvm.loop.unroll.disable"}
!675 = !DILocation(line: 295, column: 3, scope: !648)
!676 = distinct !DISubprogram(name: "gsl_linalg_LU_lndet", scope: !2, file: !2, line: 300, type: !677, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !679)
!677 = !DISubroutineType(types: !678)
!678 = !{!111, !124}
!679 = !{!680, !681, !682, !683}
!680 = !DILocalVariable(name: "LU", arg: 1, scope: !676, file: !2, line: 300, type: !124)
!681 = !DILocalVariable(name: "i", scope: !676, file: !2, line: 302, type: !130)
!682 = !DILocalVariable(name: "n", scope: !676, file: !2, line: 302, type: !130)
!683 = !DILocalVariable(name: "lndet", scope: !676, file: !2, line: 304, type: !111)
!684 = !DILocation(line: 0, scope: !676)
!685 = !DILocation(line: 302, column: 21, scope: !676)
!686 = !DILocation(line: 306, column: 17, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !2, line: 306, column: 3)
!688 = distinct !DILexicalBlock(scope: !676, file: !2, line: 306, column: 3)
!689 = !DILocation(line: 306, column: 3, scope: !688)
!690 = !DILocation(line: 0, scope: !219, inlinedAt: !691)
!691 = distinct !DILocation(line: 308, column: 27, scope: !692)
!692 = distinct !DILexicalBlock(scope: !687, file: !2, line: 307, column: 5)
!693 = !DILocation(line: 285, column: 13, scope: !219, inlinedAt: !691)
!694 = !DILocation(line: 285, column: 25, scope: !219, inlinedAt: !691)
!695 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !691)
!696 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !691)
!697 = !DILocation(line: 308, column: 21, scope: !692)
!698 = !DILocation(line: 306, column: 23, scope: !687)
!699 = distinct !{!699, !689, !700, !255}
!700 = !DILocation(line: 309, column: 5, scope: !688)
!701 = !DILocation(line: 311, column: 3, scope: !676)
!702 = !DISubprogram(name: "log", scope: !703, file: !703, line: 104, type: !704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!703 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!704 = !DISubroutineType(types: !705)
!705 = !{!111, !111}
!706 = distinct !DISubprogram(name: "gsl_linalg_LU_sgndet", scope: !2, file: !2, line: 315, type: !707, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{!58, !124, !58}
!709 = !{!710, !711, !712, !713, !714, !715}
!710 = !DILocalVariable(name: "LU", arg: 1, scope: !706, file: !2, line: 315, type: !124)
!711 = !DILocalVariable(name: "signum", arg: 2, scope: !706, file: !2, line: 315, type: !58)
!712 = !DILocalVariable(name: "i", scope: !706, file: !2, line: 317, type: !130)
!713 = !DILocalVariable(name: "n", scope: !706, file: !2, line: 317, type: !130)
!714 = !DILocalVariable(name: "s", scope: !706, file: !2, line: 319, type: !58)
!715 = !DILocalVariable(name: "u", scope: !716, file: !2, line: 323, type: !111)
!716 = distinct !DILexicalBlock(scope: !717, file: !2, line: 322, column: 5)
!717 = distinct !DILexicalBlock(scope: !718, file: !2, line: 321, column: 3)
!718 = distinct !DILexicalBlock(scope: !706, file: !2, line: 321, column: 3)
!719 = !DILocation(line: 0, scope: !706)
!720 = !DILocation(line: 317, column: 21, scope: !706)
!721 = !DILocation(line: 321, column: 17, scope: !717)
!722 = !DILocation(line: 321, column: 3, scope: !718)
!723 = !DILocation(line: 0, scope: !219, inlinedAt: !724)
!724 = distinct !DILocation(line: 323, column: 18, scope: !716)
!725 = !DILocation(line: 285, column: 20, scope: !219, inlinedAt: !724)
!726 = !DILocation(line: 285, column: 10, scope: !219, inlinedAt: !724)
!727 = !DILocation(line: 0, scope: !716)
!728 = !DILocation(line: 325, column: 13, scope: !729)
!729 = distinct !DILexicalBlock(scope: !716, file: !2, line: 325, column: 11)
!730 = !DILocation(line: 325, column: 11, scope: !716)
!731 = !DILocation(line: 327, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !729, file: !2, line: 326, column: 9)
!733 = !DILocation(line: 328, column: 9, scope: !732)
!734 = !DILocation(line: 329, column: 18, scope: !735)
!735 = distinct !DILexicalBlock(scope: !729, file: !2, line: 329, column: 16)
!736 = !DILocation(line: 329, column: 16, scope: !729)
!737 = !DILocation(line: 321, column: 23, scope: !717)
!738 = distinct !{!738, !722, !739, !255}
!739 = !DILocation(line: 334, column: 5, scope: !718)
!740 = !DILocation(line: 336, column: 3, scope: !706)
