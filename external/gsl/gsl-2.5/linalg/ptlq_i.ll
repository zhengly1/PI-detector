; ModuleID = 'ptlq.ll'
source_filename = "ptlq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct.gsl_permutation_struct = type { i64, ptr }

@.str = private unnamed_addr constant [29 x i8] c"size of tau must be MIN(M,N)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"ptlq.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [27 x i8] c"permutation size must be N\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [20 x i8] c"norm size must be N\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [16 x i8] c"q must be M x M\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [16 x i8] c"r must be N x M\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [25 x i8] c"QR matrix must be square\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [40 x i8] c"matrix size must match permutation size\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [30 x i8] c"matrix size must match b size\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [37 x i8] c"matrix size must match solution size\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [25 x i8] c"LQ matrix must be square\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [30 x i8] c"matrix size must match x size\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [35 x i8] c"permutation size must match x size\00", align 1, !dbg !53

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_decomp(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !123 {
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !228
  call void @llvm.dbg.assign(metadata i1 undef, metadata !182, metadata !DIExpression(), metadata !228, metadata ptr %6, metadata !DIExpression()), !dbg !229
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !230
  call void @llvm.dbg.assign(metadata i1 undef, metadata !202, metadata !DIExpression(), metadata !230, metadata ptr %7, metadata !DIExpression()), !dbg !231
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !232
  call void @llvm.dbg.assign(metadata i1 undef, metadata !204, metadata !DIExpression(), metadata !232, metadata ptr %8, metadata !DIExpression()), !dbg !231
  %9 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !233
  call void @llvm.dbg.assign(metadata i1 undef, metadata !206, metadata !DIExpression(), metadata !233, metadata ptr %9, metadata !DIExpression()), !dbg !234
  %10 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !224, metadata !DIExpression(), metadata !235, metadata ptr %10, metadata !DIExpression()), !dbg !236
  %11 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !237
  call void @llvm.dbg.assign(metadata i1 undef, metadata !227, metadata !DIExpression(), metadata !237, metadata ptr %11, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !169, metadata !DIExpression()), !dbg !238
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !170, metadata !DIExpression()), !dbg !238
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !171, metadata !DIExpression()), !dbg !238
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !172, metadata !DIExpression()), !dbg !238
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !173, metadata !DIExpression()), !dbg !238
  %12 = load i64, ptr %0, align 8, !dbg !239, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !174, metadata !DIExpression()), !dbg !238
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !247
  %14 = load i64, ptr %13, align 8, !dbg !247, !tbaa !248
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !176, metadata !DIExpression()), !dbg !238
  %15 = load i64, ptr %1, align 8, !dbg !249, !tbaa !250
  %16 = tail call i64 @llvm.umin.i64(i64 %14, i64 %12), !dbg !252
  %17 = icmp eq i64 %15, %16, !dbg !253
  br i1 %17, label %19, label %18, !dbg !254

18:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 82, i32 noundef 19) #6, !dbg !255
  br label %139, !dbg !255

19:                                               ; preds = %5
  %20 = load i64, ptr %2, align 8, !dbg !258, !tbaa !259
  %21 = icmp eq i64 %20, %12, !dbg !261
  br i1 %21, label %23, label %22, !dbg !262

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 86, i32 noundef 19) #6, !dbg !263
  br label %139, !dbg !263

23:                                               ; preds = %19
  %24 = load i64, ptr %4, align 8, !dbg !266, !tbaa !250
  %25 = icmp eq i64 %24, %12, !dbg !267
  br i1 %25, label %27, label %26, !dbg !268

26:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 90, i32 noundef 19) #6, !dbg !269
  br label %139, !dbg !269

27:                                               ; preds = %23
  store i32 1, ptr %3, align 4, !dbg !272, !tbaa !273
  tail call void @gsl_permutation_init(ptr noundef nonnull %2) #6, !dbg !274
  tail call void @llvm.dbg.value(metadata i64 0, metadata !177, metadata !DIExpression()), !dbg !275
  %28 = icmp eq i64 %12, 0, !dbg !276
  br i1 %28, label %32, label %29, !dbg !277

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %31 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  br label %41, !dbg !277

32:                                               ; preds = %41, %27
  tail call void @llvm.dbg.value(metadata i64 0, metadata !177, metadata !DIExpression()), !dbg !275
  %33 = icmp eq i64 %15, 0, !dbg !278
  br i1 %33, label %139, label %34, !dbg !279

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %37 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %38 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %39 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %50, !dbg !279

41:                                               ; preds = %41, %29
  %42 = phi i64 [ 0, %29 ], [ %48, %41 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !177, metadata !DIExpression()), !dbg !275
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !280
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %42) #6, !dbg !281
  %43 = call double @gsl_blas_dnrm2(ptr noundef nonnull %6) #6, !dbg !282
  tail call void @llvm.dbg.value(metadata double %43, metadata !191, metadata !DIExpression()), !dbg !229
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !288, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double %43, metadata !289, metadata !DIExpression()), !dbg !290
  %44 = load ptr, ptr %30, align 8, !dbg !292, !tbaa !293
  %45 = load i64, ptr %31, align 8, !dbg !294, !tbaa !295
  %46 = mul i64 %45, %42, !dbg !296
  %47 = getelementptr inbounds double, ptr %44, i64 %46, !dbg !297
  store double %43, ptr %47, align 8, !dbg !298, !tbaa !299
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !301
  %48 = add nuw i64 %42, 1, !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !177, metadata !DIExpression()), !dbg !275
  %49 = icmp eq i64 %48, %12, !dbg !276
  br i1 %49, label %32, label %41, !dbg !277, !llvm.loop !303

50:                                               ; preds = %137, %34
  %51 = phi i64 [ 0, %34 ], [ %54, %137 ]
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !177, metadata !DIExpression()), !dbg !275
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !314
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !313, metadata !DIExpression()), !dbg !314
  %52 = load ptr, ptr %35, align 8, !dbg !316, !tbaa !293
  %53 = load i64, ptr %36, align 8, !dbg !317, !tbaa !295
  tail call void @llvm.dbg.value(metadata double poison, metadata !192, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !197, metadata !DIExpression()), !dbg !318
  %54 = add nuw i64 %51, 1, !dbg !319
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !196, metadata !DIExpression()), !dbg !318
  %55 = icmp ult i64 %54, %12, !dbg !320
  br i1 %55, label %56, label %80, !dbg !321

56:                                               ; preds = %50
  %57 = mul i64 %53, %51, !dbg !322
  %58 = getelementptr inbounds double, ptr %52, i64 %57, !dbg !323
  %59 = load double, ptr %58, align 8, !dbg !323, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %59, metadata !192, metadata !DIExpression()), !dbg !318
  br label %60, !dbg !321

60:                                               ; preds = %60, %56
  %61 = phi double [ %69, %60 ], [ %59, %56 ]
  %62 = phi i64 [ %68, %60 ], [ %51, %56 ]
  %63 = phi i64 [ %70, %60 ], [ %54, %56 ]
  tail call void @llvm.dbg.value(metadata double %61, metadata !192, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !197, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !196, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !324
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !313, metadata !DIExpression()), !dbg !324
  %64 = mul i64 %63, %53, !dbg !326
  %65 = getelementptr inbounds double, ptr %52, i64 %64, !dbg !327
  %66 = load double, ptr %65, align 8, !dbg !327, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %66, metadata !198, metadata !DIExpression()), !dbg !328
  %67 = fcmp ogt double %66, %61, !dbg !329
  %68 = select i1 %67, i64 %63, i64 %62, !dbg !331
  %69 = select i1 %67, double %66, double %61, !dbg !331
  tail call void @llvm.dbg.value(metadata double %69, metadata !192, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !197, metadata !DIExpression()), !dbg !318
  %70 = add nuw i64 %63, 1, !dbg !332
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !196, metadata !DIExpression()), !dbg !318
  %71 = icmp ult i64 %70, %12, !dbg !320
  br i1 %71, label %60, label %72, !dbg !321, !llvm.loop !333

72:                                               ; preds = %60
  %73 = icmp eq i64 %68, %51, !dbg !335
  br i1 %73, label %80, label %74, !dbg !337

74:                                               ; preds = %72
  %75 = call i32 @gsl_matrix_swap_rows(ptr noundef nonnull %0, i64 noundef %51, i64 noundef %68) #6, !dbg !338
  %76 = call i32 @gsl_permutation_swap(ptr noundef nonnull %2, i64 noundef %51, i64 noundef %68) #6, !dbg !340
  %77 = call i32 @gsl_vector_swap_elements(ptr noundef nonnull %4, i64 noundef %51, i64 noundef %68) #6, !dbg !341
  %78 = load i32, ptr %3, align 4, !dbg !342, !tbaa !273
  %79 = sub nsw i32 0, %78, !dbg !343
  store i32 %79, ptr %3, align 4, !dbg !344, !tbaa !273
  br label %80, !dbg !345

80:                                               ; preds = %74, %72, %50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6, !dbg !346
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %51) #6, !dbg !347
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #6, !dbg !348
  %81 = sub i64 %14, %51, !dbg !349
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %7, i64 noundef %51, i64 noundef %81) #6, !dbg !350
  %82 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %8) #6, !dbg !351
  tail call void @llvm.dbg.value(metadata double %82, metadata !205, metadata !DIExpression()), !dbg !231
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !283, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !288, metadata !DIExpression()), !dbg !352
  tail call void @llvm.dbg.value(metadata double %82, metadata !289, metadata !DIExpression()), !dbg !352
  %83 = load ptr, ptr %37, align 8, !dbg !354, !tbaa !293
  %84 = load i64, ptr %38, align 8, !dbg !355, !tbaa !295
  %85 = mul i64 %84, %51, !dbg !356
  %86 = getelementptr inbounds double, ptr %83, i64 %85, !dbg !357
  store double %82, ptr %86, align 8, !dbg !358, !tbaa !299
  br i1 %55, label %88, label %87, !dbg !359

87:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #6, !dbg !360
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !360
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !196, metadata !DIExpression()), !dbg !318
  br label %137, !dbg !361

88:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #6, !dbg !362
  %89 = sub i64 %12, %54, !dbg !363
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef %54, i64 noundef %51, i64 noundef %89, i64 noundef %81) #6, !dbg !364
  %90 = call i32 @gsl_linalg_householder_mh(double noundef %82, ptr noundef nonnull %8, ptr noundef nonnull %9) #6, !dbg !365
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #6, !dbg !366
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #6, !dbg !360
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !360
  %91 = icmp ult i64 %54, %14, !dbg !367
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !196, metadata !DIExpression()), !dbg !318
  %92 = and i1 %91, %55, !dbg !361
  br i1 %92, label %93, label %137, !dbg !361

93:                                               ; preds = %88
  %94 = sub i64 %14, %54
  %95 = load ptr, ptr %35, align 8, !dbg !368, !tbaa !293
  %96 = load i64, ptr %36, align 8, !dbg !370, !tbaa !295
  br label %97, !dbg !371

97:                                               ; preds = %132, %93
  %98 = phi i64 [ %96, %93 ], [ %133, %132 ], !dbg !370
  %99 = phi ptr [ %95, %93 ], [ %134, %132 ], !dbg !368
  %100 = phi i64 [ %54, %93 ], [ %135, %132 ]
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !196, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !372
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !313, metadata !DIExpression()), !dbg !372
  %101 = mul i64 %98, %100, !dbg !373
  %102 = getelementptr inbounds double, ptr %99, i64 %101, !dbg !374
  %103 = load double, ptr %102, align 8, !dbg !374, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %103, metadata !214, metadata !DIExpression()), !dbg !375
  %104 = fcmp ogt double %103, 0.000000e+00, !dbg !376
  br i1 %104, label %105, label %132, !dbg !377

105:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !220, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !388
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !386, metadata !DIExpression()), !dbg !388
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !387, metadata !DIExpression()), !dbg !388
  %106 = load ptr, ptr %39, align 8, !dbg !390, !tbaa !391
  %107 = load i64, ptr %40, align 8, !dbg !392, !tbaa !393
  %108 = mul i64 %107, %100, !dbg !394
  %109 = getelementptr double, ptr %106, i64 %108, !dbg !395
  %110 = getelementptr double, ptr %109, i64 %51, !dbg !395
  %111 = load double, ptr %110, align 8, !dbg !395, !tbaa !299
  %112 = fdiv double %111, %103, !dbg !396
  tail call void @llvm.dbg.value(metadata double %112, metadata !223, metadata !DIExpression()), !dbg !378
  %113 = call double @llvm.fabs.f64(double %112), !dbg !397
  %114 = fcmp ult double %113, 1.000000e+00, !dbg !399
  br i1 %114, label %115, label %119, !dbg !400

115:                                              ; preds = %105
  %116 = fmul double %112, %112, !dbg !401
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %116), !dbg !402
  %117 = call double @sqrt(double noundef %handler_result) #6, !dbg !402
  %118 = fmul double %103, %117, !dbg !403
  tail call void @llvm.dbg.value(metadata double %118, metadata !220, metadata !DIExpression()), !dbg !378
  br label %119

119:                                              ; preds = %115, %105
  %120 = phi double [ %118, %115 ], [ 0.000000e+00, %105 ], !dbg !404
  tail call void @llvm.dbg.value(metadata double %120, metadata !220, metadata !DIExpression()), !dbg !378
  %121 = fdiv double %120, %103, !dbg !405
  %122 = call double @llvm.fabs.f64(double %121), !dbg !406
  %123 = fcmp olt double %122, 0x3E71E3779B97F4A8, !dbg !407
  br i1 %123, label %124, label %126, !dbg !408

124:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #6, !dbg !409
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %0, i64 noundef %100) #6, !dbg !410
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #6, !dbg !411
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %11, ptr noundef nonnull %10, i64 noundef %54, i64 noundef %94) #6, !dbg !412
  %125 = call double @gsl_blas_dnrm2(ptr noundef nonnull %11) #6, !dbg !413
  tail call void @llvm.dbg.value(metadata double %125, metadata !220, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #6, !dbg !414
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #6, !dbg !414
  br label %126, !dbg !415

126:                                              ; preds = %124, %119
  %127 = phi double [ %125, %124 ], [ %120, %119 ], !dbg !378
  tail call void @llvm.dbg.value(metadata double %127, metadata !220, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !288, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata double %127, metadata !289, metadata !DIExpression()), !dbg !416
  %128 = load ptr, ptr %35, align 8, !dbg !418, !tbaa !293
  %129 = load i64, ptr %36, align 8, !dbg !419, !tbaa !295
  %130 = mul i64 %129, %100, !dbg !420
  %131 = getelementptr inbounds double, ptr %128, i64 %130, !dbg !421
  store double %127, ptr %131, align 8, !dbg !422, !tbaa !299
  br label %132, !dbg !423

132:                                              ; preds = %126, %97
  %133 = phi i64 [ %129, %126 ], [ %98, %97 ]
  %134 = phi ptr [ %128, %126 ], [ %99, %97 ]
  %135 = add nuw i64 %100, 1, !dbg !424
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !196, metadata !DIExpression()), !dbg !318
  %136 = icmp ult i64 %135, %12, !dbg !425
  br i1 %136, label %97, label %137, !dbg !371, !llvm.loop !426

137:                                              ; preds = %132, %88, %87
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !177, metadata !DIExpression()), !dbg !275
  %138 = icmp eq i64 %54, %15, !dbg !278
  br i1 %138, label %139, label %50, !dbg !279, !llvm.loop !428

139:                                              ; preds = %137, %32, %26, %22, %18
  %140 = phi i32 [ 19, %18 ], [ 19, %22 ], [ 19, %26 ], [ 0, %32 ], [ 0, %137 ], !dbg !430
  ret i32 %140, !dbg !431
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !432 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !437 void @gsl_permutation_init(ptr noundef) local_unnamed_addr #2

declare !dbg !440 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !443 double @gsl_blas_dnrm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !447 i32 @gsl_matrix_swap_rows(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !450 i32 @gsl_permutation_swap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !453 i32 @gsl_vector_swap_elements(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !456 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !459 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !463 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !466 i32 @gsl_linalg_householder_mh(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !469 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_decomp2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr noundef %6) local_unnamed_addr #0 !dbg !473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !477, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !478, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !479, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !480, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !481, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !482, metadata !DIExpression()), !dbg !486
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !483, metadata !DIExpression()), !dbg !486
  %8 = load i64, ptr %0, align 8, !dbg !487, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !484, metadata !DIExpression()), !dbg !486
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !488
  %10 = load i64, ptr %9, align 8, !dbg !488, !tbaa !248
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !485, metadata !DIExpression()), !dbg !486
  %11 = load i64, ptr %1, align 8, !dbg !489, !tbaa !240
  %12 = icmp eq i64 %11, %10, !dbg !491
  br i1 %12, label %13, label %17, !dbg !492

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !493
  %15 = load i64, ptr %14, align 8, !dbg !493, !tbaa !248
  %16 = icmp eq i64 %15, %10, !dbg !494
  br i1 %16, label %18, label %17, !dbg !495

17:                                               ; preds = %13, %7
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 204, i32 noundef 19) #6, !dbg !496
  br label %43, !dbg !496

18:                                               ; preds = %13
  %19 = load i64, ptr %2, align 8, !dbg !499, !tbaa !240
  %20 = icmp eq i64 %19, %8, !dbg !501
  br i1 %20, label %21, label %25, !dbg !502

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !503
  %23 = load i64, ptr %22, align 8, !dbg !503, !tbaa !248
  %24 = icmp eq i64 %23, %10, !dbg !504
  br i1 %24, label %26, label %25, !dbg !505

25:                                               ; preds = %21, %18
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 208, i32 noundef 19) #6, !dbg !506
  br label %43, !dbg !506

26:                                               ; preds = %21
  %27 = load i64, ptr %3, align 8, !dbg !509, !tbaa !250
  %28 = tail call i64 @llvm.umin.i64(i64 %10, i64 %8), !dbg !511
  %29 = icmp eq i64 %27, %28, !dbg !512
  br i1 %29, label %31, label %30, !dbg !513

30:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 212, i32 noundef 19) #6, !dbg !514
  br label %43, !dbg !514

31:                                               ; preds = %26
  %32 = load i64, ptr %4, align 8, !dbg !517, !tbaa !259
  %33 = icmp eq i64 %32, %8, !dbg !519
  br i1 %33, label %35, label %34, !dbg !520

34:                                               ; preds = %31
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 216, i32 noundef 19) #6, !dbg !521
  br label %43, !dbg !521

35:                                               ; preds = %31
  %36 = load i64, ptr %6, align 8, !dbg !524, !tbaa !250
  %37 = icmp eq i64 %36, %8, !dbg !526
  br i1 %37, label %39, label %38, !dbg !527

38:                                               ; preds = %35
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 220, i32 noundef 19) #6, !dbg !528
  br label %43, !dbg !528

39:                                               ; preds = %35
  %40 = tail call i32 @gsl_matrix_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %0) #6, !dbg !531
  %41 = tail call i32 @gsl_linalg_PTLQ_decomp(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6), !dbg !532, !range !533
  %42 = tail call i32 @gsl_linalg_LQ_unpack(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #6, !dbg !534
  br label %43, !dbg !535

43:                                               ; preds = %39, %38, %34, %30, %25, %17
  %44 = phi i32 [ 19, %17 ], [ 19, %25 ], [ 19, %30 ], [ 19, %34 ], [ 19, %38 ], [ 0, %39 ], !dbg !486
  ret i32 %44, !dbg !536
}

declare !dbg !537 i32 @gsl_matrix_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !540 i32 @gsl_linalg_LQ_unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_solve_T(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !543 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !549, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !550, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !551, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !552, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !553, metadata !DIExpression()), !dbg !554
  %6 = load i64, ptr %0, align 8, !dbg !555, !tbaa !240
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !557
  %8 = load i64, ptr %7, align 8, !dbg !557, !tbaa !248
  %9 = icmp eq i64 %6, %8, !dbg !558
  br i1 %9, label %11, label %10, !dbg !559

10:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 252, i32 noundef 20) #6, !dbg !560
  br label %26, !dbg !560

11:                                               ; preds = %5
  %12 = load i64, ptr %2, align 8, !dbg !563, !tbaa !259
  %13 = icmp eq i64 %6, %12, !dbg !565
  br i1 %13, label %15, label %14, !dbg !566

14:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 256, i32 noundef 19) #6, !dbg !567
  br label %26, !dbg !567

15:                                               ; preds = %11
  %16 = load i64, ptr %3, align 8, !dbg !570, !tbaa !250
  %17 = icmp eq i64 %6, %16, !dbg !572
  br i1 %17, label %19, label %18, !dbg !573

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 260, i32 noundef 19) #6, !dbg !574
  br label %26, !dbg !574

19:                                               ; preds = %15
  %20 = load i64, ptr %4, align 8, !dbg !577, !tbaa !250
  %21 = icmp eq i64 %6, %20, !dbg !579
  br i1 %21, label %23, label %22, !dbg !580

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 264, i32 noundef 19) #6, !dbg !581
  br label %26, !dbg !581

23:                                               ; preds = %19
  %24 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %3) #6, !dbg !584
  %25 = tail call i32 @gsl_linalg_PTLQ_svx_T(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4), !dbg !586, !range !587
  br label %26, !dbg !588

26:                                               ; preds = %23, %22, %18, %14, %10
  %27 = phi i32 [ 20, %10 ], [ 19, %14 ], [ 19, %18 ], [ 19, %22 ], [ 0, %23 ], !dbg !589
  ret i32 %27, !dbg !590
}

declare !dbg !591 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_svx_T(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !594 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !598, metadata !DIExpression()), !dbg !602
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !599, metadata !DIExpression()), !dbg !602
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !600, metadata !DIExpression()), !dbg !602
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !601, metadata !DIExpression()), !dbg !602
  %5 = load i64, ptr %0, align 8, !dbg !603, !tbaa !240
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !605
  %7 = load i64, ptr %6, align 8, !dbg !605, !tbaa !248
  %8 = icmp eq i64 %5, %7, !dbg !606
  br i1 %8, label %10, label %9, !dbg !607

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef 20) #6, !dbg !608
  br label %22, !dbg !608

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !611, !tbaa !259
  %12 = icmp eq i64 %5, %11, !dbg !613
  br i1 %12, label %14, label %13, !dbg !614

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 288, i32 noundef 19) #6, !dbg !615
  br label %22, !dbg !615

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !618, !tbaa !250
  %16 = icmp eq i64 %5, %15, !dbg !620
  br i1 %16, label %18, label %17, !dbg !621

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 292, i32 noundef 19) #6, !dbg !622
  br label %22, !dbg !622

18:                                               ; preds = %14
  %19 = tail call i32 @gsl_linalg_LQ_vecQT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #6, !dbg !625
  %20 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #6, !dbg !627
  %21 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %2, ptr noundef nonnull %3) #6, !dbg !628
  br label %22, !dbg !629

22:                                               ; preds = %18, %17, %13, %9
  %23 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 0, %18 ], !dbg !630
  ret i32 %23, !dbg !631
}

declare !dbg !632 i32 @gsl_linalg_LQ_vecQT(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !635 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !642 i32 @gsl_permute_vector_inverse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_LQsolve_T(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !646 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !650, metadata !DIExpression()), !dbg !655
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !651, metadata !DIExpression()), !dbg !655
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !652, metadata !DIExpression()), !dbg !655
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !653, metadata !DIExpression()), !dbg !655
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !654, metadata !DIExpression()), !dbg !655
  %6 = load i64, ptr %0, align 8, !dbg !656, !tbaa !240
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !658
  %8 = load i64, ptr %7, align 8, !dbg !658, !tbaa !248
  %9 = icmp eq i64 %6, %8, !dbg !659
  br i1 %9, label %10, label %27, !dbg !660

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8, !dbg !661, !tbaa !240
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !662
  %13 = load i64, ptr %12, align 8, !dbg !662, !tbaa !248
  %14 = icmp eq i64 %11, %13, !dbg !663
  br i1 %14, label %15, label %27, !dbg !664

15:                                               ; preds = %10
  %16 = load i64, ptr %2, align 8, !dbg !665, !tbaa !259
  %17 = icmp eq i64 %6, %16, !dbg !667
  %18 = icmp eq i64 %6, %11
  %19 = and i1 %18, %17, !dbg !668
  br i1 %19, label %20, label %27, !dbg !668

20:                                               ; preds = %15
  %21 = load i64, ptr %3, align 8, !dbg !669, !tbaa !250
  %22 = icmp eq i64 %6, %21, !dbg !670
  br i1 %22, label %23, label %27, !dbg !671

23:                                               ; preds = %20
  %24 = tail call i32 @gsl_blas_dgemv(i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %3, double noundef 0.000000e+00, ptr noundef %4) #6, !dbg !672
  %25 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %1, ptr noundef %4) #6, !dbg !674
  %26 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %2, ptr noundef %4) #6, !dbg !675
  br label %27, !dbg !676

27:                                               ; preds = %23, %20, %15, %10, %5
  %28 = phi i32 [ 0, %23 ], [ 20, %10 ], [ 20, %5 ], [ 19, %20 ], [ 19, %15 ], !dbg !677
  ret i32 %28, !dbg !678
}

declare !dbg !679 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_Lsolve_T(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !682 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !686, metadata !DIExpression()), !dbg !690
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !687, metadata !DIExpression()), !dbg !690
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !688, metadata !DIExpression()), !dbg !690
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !689, metadata !DIExpression()), !dbg !690
  %5 = load i64, ptr %0, align 8, !dbg !691, !tbaa !240
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !693
  %7 = load i64, ptr %6, align 8, !dbg !693, !tbaa !248
  %8 = icmp eq i64 %5, %7, !dbg !694
  br i1 %8, label %10, label %9, !dbg !695

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 352, i32 noundef 20) #6, !dbg !696
  br label %26, !dbg !696

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !699, !tbaa !250
  %12 = icmp eq i64 %5, %11, !dbg !701
  br i1 %12, label %14, label %13, !dbg !702

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 356, i32 noundef 19) #6, !dbg !703
  br label %26, !dbg !703

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !706, !tbaa !250
  %16 = icmp eq i64 %5, %15, !dbg !708
  br i1 %16, label %18, label %17, !dbg !709

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 360, i32 noundef 19) #6, !dbg !710
  br label %26, !dbg !710

18:                                               ; preds = %14
  %19 = load i64, ptr %1, align 8, !dbg !713, !tbaa !259
  %20 = icmp eq i64 %19, %5, !dbg !715
  br i1 %20, label %22, label %21, !dbg !716

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 364, i32 noundef 19) #6, !dbg !717
  br label %26, !dbg !717

22:                                               ; preds = %18
  %23 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2) #6, !dbg !720
  %24 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #6, !dbg !722
  %25 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %3) #6, !dbg !723
  br label %26, !dbg !724

26:                                               ; preds = %22, %21, %17, %13, %9
  %27 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 19, %21 ], [ 0, %22 ], !dbg !725
  ret i32 %27, !dbg !726
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_Lsvx_T(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !727 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !731, metadata !DIExpression()), !dbg !734
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !732, metadata !DIExpression()), !dbg !734
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !733, metadata !DIExpression()), !dbg !734
  %4 = load i64, ptr %0, align 8, !dbg !735, !tbaa !240
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !737
  %6 = load i64, ptr %5, align 8, !dbg !737, !tbaa !248
  %7 = icmp eq i64 %4, %6, !dbg !738
  br i1 %7, label %9, label %8, !dbg !739

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 390, i32 noundef 20) #6, !dbg !740
  br label %20, !dbg !740

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8, !dbg !743, !tbaa !250
  %11 = icmp eq i64 %4, %10, !dbg !745
  br i1 %11, label %13, label %12, !dbg !746

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 394, i32 noundef 19) #6, !dbg !747
  br label %20, !dbg !747

13:                                               ; preds = %9
  %14 = load i64, ptr %1, align 8, !dbg !750, !tbaa !259
  %15 = icmp eq i64 %14, %4, !dbg !752
  br i1 %15, label %17, label %16, !dbg !753

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 398, i32 noundef 19) #6, !dbg !754
  br label %20, !dbg !754

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #6, !dbg !757
  %19 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %2) #6, !dbg !759
  br label %20, !dbg !760

20:                                               ; preds = %17, %16, %12, %8
  %21 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 0, %17 ], !dbg !761
  ret i32 %21, !dbg !762
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 !dbg !763 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !767, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !768, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !769, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !770, metadata !DIExpression()), !dbg !800
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !771, metadata !DIExpression()), !dbg !800
  %6 = load i64, ptr %0, align 8, !dbg !801, !tbaa !240
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !802
  %8 = load i64, ptr %7, align 8, !dbg !802, !tbaa !248
  %9 = icmp eq i64 %6, %8, !dbg !803
  br i1 %9, label %10, label %297, !dbg !804

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8, !dbg !805, !tbaa !240
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !806
  %13 = load i64, ptr %12, align 8, !dbg !806, !tbaa !248
  %14 = icmp eq i64 %11, %13, !dbg !807
  br i1 %14, label %15, label %297, !dbg !808

15:                                               ; preds = %10
  %16 = icmp eq i64 %11, %6, !dbg !809
  br i1 %16, label %17, label %297, !dbg !810

17:                                               ; preds = %15
  %18 = load i64, ptr %3, align 8, !dbg !811, !tbaa !250
  %19 = icmp eq i64 %18, %6, !dbg !812
  br i1 %19, label %20, label %297, !dbg !813

20:                                               ; preds = %17
  %21 = load i64, ptr %4, align 8, !dbg !814, !tbaa !250
  %22 = icmp eq i64 %21, %6, !dbg !815
  br i1 %22, label %23, label %297, !dbg !816

23:                                               ; preds = %20
  %24 = add i64 %6, -1, !dbg !817
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !776, metadata !DIExpression()), !dbg !818
  %25 = icmp eq i64 %24, 0, !dbg !819
  %26 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !293
  br i1 %25, label %140, label %28, !dbg !820

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !295
  %31 = icmp eq i64 %6, 0
  %32 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %33 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %35 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %36 = and i64 %6, 1
  %37 = and i64 %6, -2
  %38 = icmp eq i64 %36, 0
  br label %39, !dbg !820

39:                                               ; preds = %135, %28
  %40 = phi i64 [ %24, %28 ], [ %136, %135 ]
  %41 = phi i64 [ %6, %28 ], [ %40, %135 ]
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !821
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !313, metadata !DIExpression()), !dbg !821
  %42 = mul i64 %30, %40, !dbg !823
  %43 = getelementptr inbounds double, ptr %27, i64 %42, !dbg !824
  %44 = load double, ptr %43, align 8, !dbg !824, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %44, metadata !785, metadata !DIExpression()), !dbg !825
  %45 = add i64 %41, -2, !dbg !826
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !313, metadata !DIExpression()), !dbg !827
  %46 = mul i64 %30, %45, !dbg !829
  %47 = getelementptr inbounds double, ptr %27, i64 %46, !dbg !830
  %48 = load double, ptr %47, align 8, !dbg !830, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %48, metadata !786, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata double %48, metadata !831, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %44, metadata !837, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata ptr undef, metadata !838, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata ptr undef, metadata !839, metadata !DIExpression()), !dbg !848
  %49 = fcmp oeq double %44, 0.000000e+00, !dbg !850
  br i1 %49, label %68, label %50, !dbg !851

50:                                               ; preds = %39
  %51 = tail call double @llvm.fabs.f64(double %44), !dbg !852
  %52 = tail call double @llvm.fabs.f64(double %48), !dbg !853
  %53 = fcmp ogt double %51, %52, !dbg !854
  br i1 %53, label %54, label %61, !dbg !855

54:                                               ; preds = %50
  %55 = fneg double %48, !dbg !856
  %56 = fdiv double %55, %44, !dbg !857
  call void @llvm.dbg.value(metadata double %56, metadata !840, metadata !DIExpression()), !dbg !858
  %57 = fmul double %56, %56, !dbg !859
  %handler_result = call double @fAddHandlerDouble(double %57, double 1.000000e+00), !dbg !860
  %58 = tail call double @llvm.sqrt.f64(double %handler_result), !dbg !860
  %59 = fdiv double 1.000000e+00, %58, !dbg !861
  call void @llvm.dbg.value(metadata double %59, metadata !844, metadata !DIExpression()), !dbg !858
  tail call void @llvm.dbg.value(metadata double %59, metadata !784, metadata !DIExpression()), !dbg !825
  %60 = fmul double %56, %59, !dbg !862
  tail call void @llvm.dbg.value(metadata double %60, metadata !780, metadata !DIExpression()), !dbg !825
  br label %68, !dbg !863

61:                                               ; preds = %50
  %62 = fneg double %44, !dbg !864
  %63 = fdiv double %62, %48, !dbg !865
  call void @llvm.dbg.value(metadata double %63, metadata !845, metadata !DIExpression()), !dbg !866
  %64 = fmul double %63, %63, !dbg !867
  %handler_result1 = call double @fAddHandlerDouble(double %64, double 1.000000e+00), !dbg !868
  %65 = tail call double @llvm.sqrt.f64(double %handler_result1), !dbg !868
  %66 = fdiv double 1.000000e+00, %65, !dbg !869
  call void @llvm.dbg.value(metadata double %66, metadata !847, metadata !DIExpression()), !dbg !866
  tail call void @llvm.dbg.value(metadata double %66, metadata !780, metadata !DIExpression()), !dbg !825
  %67 = fmul double %63, %66, !dbg !870
  tail call void @llvm.dbg.value(metadata double %67, metadata !784, metadata !DIExpression()), !dbg !825
  br label %68

68:                                               ; preds = %61, %54, %39
  %69 = phi double [ %60, %54 ], [ %66, %61 ], [ 1.000000e+00, %39 ], !dbg !871
  %70 = phi double [ %59, %54 ], [ %67, %61 ], [ 0.000000e+00, %39 ], !dbg !871
  tail call void @llvm.dbg.value(metadata double %70, metadata !784, metadata !DIExpression()), !dbg !825
  tail call void @llvm.dbg.value(metadata double %69, metadata !780, metadata !DIExpression()), !dbg !825
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !872, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !877, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !878, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata double %69, metadata !879, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata double %70, metadata !880, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !885
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !313, metadata !DIExpression()), !dbg !885
  tail call void @llvm.dbg.value(metadata double %48, metadata !881, metadata !DIExpression()), !dbg !883
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !887
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !313, metadata !DIExpression()), !dbg !887
  tail call void @llvm.dbg.value(metadata double %44, metadata !882, metadata !DIExpression()), !dbg !883
  %71 = fmul double %48, %69, !dbg !889
  %72 = fmul double %44, %70, !dbg !890
  %handler_result2 = call double @fSubHandlerDouble(double %71, double %72), !dbg !891
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !893
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !288, metadata !DIExpression()), !dbg !893
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !289, metadata !DIExpression()), !dbg !893
  store double %handler_result2, ptr %47, align 8, !dbg !891, !tbaa !299
  %73 = fmul double %48, %70, !dbg !894
  %74 = fmul double %44, %69, !dbg !895
  %handler_result3 = call double @fAddHandlerDouble(double %74, double %73), !dbg !896
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !288, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !289, metadata !DIExpression()), !dbg !898
  store double %handler_result3, ptr %43, align 8, !dbg !896, !tbaa !299
  call void @llvm.dbg.value(metadata i64 %8, metadata !899, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 %6, metadata !905, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %0, metadata !906, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %1, metadata !907, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 %45, metadata !908, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 %40, metadata !909, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata double %69, metadata !910, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata double %70, metadata !911, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 0, metadata !912, metadata !DIExpression()), !dbg !923
  br i1 %31, label %115, label %75, !dbg !925

75:                                               ; preds = %68
  %76 = load ptr, ptr %32, align 8, !tbaa !391
  %77 = load i64, ptr %33, align 8, !tbaa !393
  %78 = mul i64 %77, %45
  %79 = getelementptr double, ptr %76, i64 %78
  %80 = mul i64 %77, %40
  %81 = getelementptr double, ptr %76, i64 %80
  br label %82, !dbg !925

82:                                               ; preds = %82, %75
  %83 = phi i64 [ 0, %75 ], [ %102, %82 ]
  %84 = phi i64 [ 0, %75 ], [ %103, %82 ]
  call void @llvm.dbg.value(metadata i64 %83, metadata !912, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %45, metadata !386, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %83, metadata !387, metadata !DIExpression()), !dbg !926
  %85 = getelementptr double, ptr %79, i64 %83, !dbg !928
  %86 = load double, ptr %85, align 8, !dbg !928, !tbaa !299
  call void @llvm.dbg.value(metadata double %86, metadata !913, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i64 %40, metadata !386, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i64 %83, metadata !387, metadata !DIExpression()), !dbg !930
  %87 = getelementptr double, ptr %81, i64 %83, !dbg !932
  %88 = load double, ptr %87, align 8, !dbg !932, !tbaa !299
  call void @llvm.dbg.value(metadata double %88, metadata !917, metadata !DIExpression()), !dbg !929
  %89 = fmul double %69, %86, !dbg !933
  %90 = fmul double %70, %88, !dbg !934
  %handler_result4 = call double @fSubHandlerDouble(double %89, double %90), !dbg !935
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %45, metadata !941, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %83, metadata !942, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !943, metadata !DIExpression()), !dbg !945
  store double %handler_result4, ptr %85, align 8, !dbg !935, !tbaa !299
  %91 = fmul double %70, %86, !dbg !946
  %92 = fmul double %69, %88, !dbg !947
  %handler_result5 = call double @fAddHandlerDouble(double %91, double %92), !dbg !948
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i64 %40, metadata !941, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i64 %83, metadata !942, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !943, metadata !DIExpression()), !dbg !950
  store double %handler_result5, ptr %87, align 8, !dbg !948, !tbaa !299
  %93 = or disjoint i64 %83, 1, !dbg !951
  call void @llvm.dbg.value(metadata i64 %93, metadata !912, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i64 %93, metadata !912, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %45, metadata !386, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %93, metadata !387, metadata !DIExpression()), !dbg !926
  %94 = getelementptr double, ptr %79, i64 %93, !dbg !928
  %95 = load double, ptr %94, align 8, !dbg !928, !tbaa !299
  call void @llvm.dbg.value(metadata double %95, metadata !913, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i64 %40, metadata !386, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i64 %93, metadata !387, metadata !DIExpression()), !dbg !930
  %96 = getelementptr double, ptr %81, i64 %93, !dbg !932
  %97 = load double, ptr %96, align 8, !dbg !932, !tbaa !299
  call void @llvm.dbg.value(metadata double %97, metadata !917, metadata !DIExpression()), !dbg !929
  %98 = fmul double %69, %95, !dbg !933
  %99 = fmul double %70, %97, !dbg !934
  %handler_result6 = call double @fSubHandlerDouble(double %98, double %99), !dbg !935
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %45, metadata !941, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %93, metadata !942, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !943, metadata !DIExpression()), !dbg !945
  store double %handler_result6, ptr %94, align 8, !dbg !935, !tbaa !299
  %100 = fmul double %70, %95, !dbg !946
  %101 = fmul double %69, %97, !dbg !947
  %handler_result7 = call double @fAddHandlerDouble(double %100, double %101), !dbg !948
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i64 %40, metadata !941, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i64 %93, metadata !942, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !943, metadata !DIExpression()), !dbg !950
  store double %handler_result7, ptr %96, align 8, !dbg !948, !tbaa !299
  %102 = add nuw i64 %83, 2, !dbg !951
  call void @llvm.dbg.value(metadata i64 %102, metadata !912, metadata !DIExpression()), !dbg !923
  %103 = add i64 %84, 2, !dbg !925
  %104 = icmp eq i64 %103, %37, !dbg !925
  br i1 %104, label %105, label %82, !dbg !925, !llvm.loop !952

105:                                              ; preds = %82
  br i1 %38, label %115, label %106, !dbg !925

106:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 %102, metadata !912, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %45, metadata !386, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata i64 %102, metadata !387, metadata !DIExpression()), !dbg !926
  %107 = getelementptr double, ptr %79, i64 %102, !dbg !928
  %108 = load double, ptr %107, align 8, !dbg !928, !tbaa !299
  call void @llvm.dbg.value(metadata double %108, metadata !913, metadata !DIExpression()), !dbg !929
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i64 %40, metadata !386, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i64 %102, metadata !387, metadata !DIExpression()), !dbg !930
  %109 = getelementptr double, ptr %81, i64 %102, !dbg !932
  %110 = load double, ptr %109, align 8, !dbg !932, !tbaa !299
  call void @llvm.dbg.value(metadata double %110, metadata !917, metadata !DIExpression()), !dbg !929
  %111 = fmul double %69, %108, !dbg !933
  %112 = fmul double %70, %110, !dbg !934
  %handler_result8 = call double @fSubHandlerDouble(double %111, double %112), !dbg !935
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %45, metadata !941, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i64 %102, metadata !942, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !943, metadata !DIExpression()), !dbg !945
  store double %handler_result8, ptr %107, align 8, !dbg !935, !tbaa !299
  %113 = fmul double %70, %108, !dbg !946
  %114 = fmul double %69, %110, !dbg !947
  %handler_result9 = call double @fAddHandlerDouble(double %113, double %114), !dbg !948
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i64 %40, metadata !941, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata i64 %102, metadata !942, metadata !DIExpression()), !dbg !950
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !943, metadata !DIExpression()), !dbg !950
  store double %handler_result9, ptr %109, align 8, !dbg !948, !tbaa !299
  call void @llvm.dbg.value(metadata i64 %102, metadata !912, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !923
  br label %115, !dbg !954

115:                                              ; preds = %106, %105, %68
  %116 = tail call i64 @llvm.umin.i64(i64 %45, i64 %40), !dbg !954
  call void @llvm.dbg.value(metadata i64 %116, metadata !912, metadata !DIExpression()), !dbg !923
  %117 = icmp ult i64 %116, %6, !dbg !955
  br i1 %117, label %118, label %135, !dbg !956

118:                                              ; preds = %115
  %119 = load ptr, ptr %34, align 8, !tbaa !391
  %120 = load i64, ptr %35, align 8, !tbaa !393
  br label %121, !dbg !956

121:                                              ; preds = %121, %118
  %122 = phi i64 [ %116, %118 ], [ %133, %121 ]
  call void @llvm.dbg.value(metadata i64 %122, metadata !912, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 %122, metadata !386, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 %45, metadata !387, metadata !DIExpression()), !dbg !957
  %123 = mul i64 %122, %120, !dbg !959
  %124 = getelementptr double, ptr %119, i64 %123, !dbg !960
  %125 = getelementptr double, ptr %124, i64 %45, !dbg !960
  %126 = load double, ptr %125, align 8, !dbg !960, !tbaa !299
  call void @llvm.dbg.value(metadata double %126, metadata !918, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 %122, metadata !386, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i64 %40, metadata !387, metadata !DIExpression()), !dbg !962
  %127 = getelementptr double, ptr %124, i64 %40, !dbg !964
  %128 = load double, ptr %127, align 8, !dbg !964, !tbaa !299
  call void @llvm.dbg.value(metadata double %128, metadata !922, metadata !DIExpression()), !dbg !961
  %129 = fmul double %69, %126, !dbg !965
  %130 = fmul double %70, %128, !dbg !966
  %handler_result10 = call double @fSubHandlerDouble(double %129, double %130), !dbg !967
  call void @llvm.dbg.value(metadata ptr %1, metadata !940, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %122, metadata !941, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %45, metadata !942, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !943, metadata !DIExpression()), !dbg !969
  store double %handler_result10, ptr %125, align 8, !dbg !967, !tbaa !299
  %131 = fmul double %70, %126, !dbg !970
  %132 = fmul double %69, %128, !dbg !971
  %handler_result11 = call double @fAddHandlerDouble(double %131, double %132), !dbg !972
  call void @llvm.dbg.value(metadata ptr %1, metadata !940, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i64 %122, metadata !941, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i64 %40, metadata !942, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !943, metadata !DIExpression()), !dbg !974
  store double %handler_result11, ptr %127, align 8, !dbg !972, !tbaa !299
  %133 = add nuw i64 %122, 1, !dbg !975
  call void @llvm.dbg.value(metadata i64 %133, metadata !912, metadata !DIExpression()), !dbg !923
  %134 = icmp eq i64 %133, %6, !dbg !955
  br i1 %134, label %135, label %121, !dbg !956, !llvm.loop !976

135:                                              ; preds = %121, %115
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !776, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !818
  %136 = add i64 %40, -1, !dbg !817
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !776, metadata !DIExpression()), !dbg !818
  %137 = icmp eq i64 %136, 0, !dbg !819
  br i1 %137, label %138, label %39, !dbg !820, !llvm.loop !978

138:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !980
  tail call void @llvm.dbg.value(metadata double poison, metadata !779, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata i64 0, metadata !772, metadata !DIExpression()), !dbg !818
  %139 = icmp eq i64 %6, 0, !dbg !982
  br i1 %139, label %297, label %140, !dbg !983

140:                                              ; preds = %138, %23
  %141 = load double, ptr %27, align 8, !dbg !984, !tbaa !299
  %142 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !391
  %144 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %145 = load i64, ptr %144, align 8, !tbaa !393
  %146 = getelementptr inbounds %struct.gsl_permutation_struct, ptr %2, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !985
  %148 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !293
  %150 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !295
  %152 = and i64 %6, 1, !dbg !983
  %153 = icmp eq i64 %24, 0, !dbg !983
  br i1 %153, label %156, label %154, !dbg !983

154:                                              ; preds = %140
  %155 = and i64 %6, -2, !dbg !983
  br label %184, !dbg !983

156:                                              ; preds = %184, %140
  %157 = phi i64 [ 0, %140 ], [ %206, %184 ]
  %158 = icmp eq i64 %152, 0, !dbg !983
  br i1 %158, label %169, label %159, !dbg !983

159:                                              ; preds = %156
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !772, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !386, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !986
  %160 = mul i64 %145, %157, !dbg !988
  %161 = getelementptr double, ptr %143, i64 %160, !dbg !989
  %162 = load double, ptr %161, align 8, !dbg !989, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %162, metadata !787, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !991, metadata !DIExpression()), !dbg !997
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !996, metadata !DIExpression()), !dbg !997
  %163 = getelementptr inbounds i64, ptr %147, i64 %157, !dbg !999
  %164 = load i64, ptr %163, align 8, !dbg !999, !tbaa !1000
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !791, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !313, metadata !DIExpression()), !dbg !1001
  %165 = mul i64 %151, %164, !dbg !1003
  %166 = getelementptr inbounds double, ptr %149, i64 %165, !dbg !1004
  %167 = load double, ptr %166, align 8, !dbg !1004, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %167, metadata !792, metadata !DIExpression()), !dbg !990
  %168 = fmul double %141, %167, !dbg !1005
  %handler_result12 = call double @fAddHandlerDouble(double %162, double %168), !dbg !1006
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !940, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !941, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata i64 0, metadata !942, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !943, metadata !DIExpression()), !dbg !1008
  store double %handler_result12, ptr %161, align 8, !dbg !1006, !tbaa !299
  tail call void @llvm.dbg.value(metadata i64 %157, metadata !772, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !818
  br label %169, !dbg !1009

169:                                              ; preds = %159, %156
  tail call void @llvm.dbg.value(metadata i64 1, metadata !776, metadata !DIExpression()), !dbg !818
  %170 = icmp ugt i64 %6, 1, !dbg !1009
  br i1 %170, label %171, label %297, !dbg !1010

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !391
  %174 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !393
  %176 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !391
  %178 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !393
  %180 = and i64 %6, 1
  %181 = icmp eq i64 %24, 0
  %182 = and i64 %6, -2
  %183 = icmp eq i64 %180, 0
  br label %209, !dbg !1010

184:                                              ; preds = %184, %154
  %185 = phi i64 [ 0, %154 ], [ %206, %184 ]
  %186 = phi i64 [ 0, %154 ], [ %207, %184 ]
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !772, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !386, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !986
  %187 = mul i64 %145, %185, !dbg !988
  %188 = getelementptr double, ptr %143, i64 %187, !dbg !989
  %189 = load double, ptr %188, align 8, !dbg !989, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %189, metadata !787, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !991, metadata !DIExpression()), !dbg !997
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !996, metadata !DIExpression()), !dbg !997
  %190 = getelementptr inbounds i64, ptr %147, i64 %185, !dbg !999
  %191 = load i64, ptr %190, align 8, !dbg !999, !tbaa !1000
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !791, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata i64 %191, metadata !313, metadata !DIExpression()), !dbg !1001
  %192 = mul i64 %151, %191, !dbg !1003
  %193 = getelementptr inbounds double, ptr %149, i64 %192, !dbg !1004
  %194 = load double, ptr %193, align 8, !dbg !1004, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %194, metadata !792, metadata !DIExpression()), !dbg !990
  %195 = fmul double %141, %194, !dbg !1005
  %handler_result13 = call double @fAddHandlerDouble(double %189, double %195), !dbg !1006
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !940, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata i64 %185, metadata !941, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata i64 0, metadata !942, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !943, metadata !DIExpression()), !dbg !1008
  store double %handler_result13, ptr %188, align 8, !dbg !1006, !tbaa !299
  %196 = or disjoint i64 %185, 1, !dbg !1011
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !772, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !772, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !386, metadata !DIExpression()), !dbg !986
  tail call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !986
  %197 = mul i64 %145, %196, !dbg !988
  %198 = getelementptr double, ptr %143, i64 %197, !dbg !989
  %199 = load double, ptr %198, align 8, !dbg !989, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %199, metadata !787, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !991, metadata !DIExpression()), !dbg !997
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !996, metadata !DIExpression()), !dbg !997
  %200 = getelementptr inbounds i64, ptr %147, i64 %196, !dbg !999
  %201 = load i64, ptr %200, align 8, !dbg !999, !tbaa !1000
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !791, metadata !DIExpression()), !dbg !990
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1001
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !313, metadata !DIExpression()), !dbg !1001
  %202 = mul i64 %151, %201, !dbg !1003
  %203 = getelementptr inbounds double, ptr %149, i64 %202, !dbg !1004
  %204 = load double, ptr %203, align 8, !dbg !1004, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %204, metadata !792, metadata !DIExpression()), !dbg !990
  %205 = fmul double %141, %204, !dbg !1005
  %handler_result14 = call double @fAddHandlerDouble(double %199, double %205), !dbg !1006
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !940, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !941, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata i64 0, metadata !942, metadata !DIExpression()), !dbg !1008
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !943, metadata !DIExpression()), !dbg !1008
  store double %handler_result14, ptr %198, align 8, !dbg !1006, !tbaa !299
  %206 = add nuw i64 %185, 2, !dbg !1011
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !772, metadata !DIExpression()), !dbg !818
  %207 = add i64 %186, 2, !dbg !983
  %208 = icmp eq i64 %207, %155, !dbg !983
  br i1 %208, label %156, label %184, !dbg !983, !llvm.loop !1012

209:                                              ; preds = %294, %171
  %210 = phi i64 [ 1, %171 ], [ %295, %294 ]
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !776, metadata !DIExpression()), !dbg !818
  %211 = add i64 %210, -1, !dbg !1014
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !1015
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !386, metadata !DIExpression()), !dbg !1015
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !387, metadata !DIExpression()), !dbg !1015
  %212 = mul i64 %175, %211, !dbg !1017
  %213 = getelementptr double, ptr %173, i64 %212, !dbg !1018
  %214 = getelementptr double, ptr %213, i64 %211, !dbg !1018
  %215 = load double, ptr %214, align 8, !dbg !1018, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %215, metadata !798, metadata !DIExpression()), !dbg !1019
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !386, metadata !DIExpression()), !dbg !1020
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !387, metadata !DIExpression()), !dbg !1020
  %216 = getelementptr double, ptr %213, i64 %210, !dbg !1022
  %217 = load double, ptr %216, align 8, !dbg !1022, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %217, metadata !799, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata double %215, metadata !831, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata double %217, metadata !837, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr undef, metadata !838, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr undef, metadata !839, metadata !DIExpression()), !dbg !1023
  %218 = fcmp oeq double %217, 0.000000e+00, !dbg !1025
  br i1 %218, label %237, label %219, !dbg !1026

219:                                              ; preds = %209
  %220 = tail call double @llvm.fabs.f64(double %217), !dbg !1027
  %221 = tail call double @llvm.fabs.f64(double %215), !dbg !1028
  %222 = fcmp ogt double %220, %221, !dbg !1029
  br i1 %222, label %223, label %230, !dbg !1030

223:                                              ; preds = %219
  %224 = fneg double %215, !dbg !1031
  %225 = fdiv double %224, %217, !dbg !1032
  call void @llvm.dbg.value(metadata double %225, metadata !840, metadata !DIExpression()), !dbg !1033
  %226 = fmul double %225, %225, !dbg !1034
  %handler_result15 = call double @fAddHandlerDouble(double %226, double 1.000000e+00), !dbg !1035
  %227 = tail call double @llvm.sqrt.f64(double %handler_result15), !dbg !1035
  %228 = fdiv double 1.000000e+00, %227, !dbg !1036
  call void @llvm.dbg.value(metadata double %228, metadata !844, metadata !DIExpression()), !dbg !1033
  tail call void @llvm.dbg.value(metadata double %228, metadata !797, metadata !DIExpression()), !dbg !1019
  %229 = fmul double %225, %228, !dbg !1037
  tail call void @llvm.dbg.value(metadata double %229, metadata !793, metadata !DIExpression()), !dbg !1019
  br label %237, !dbg !1038

230:                                              ; preds = %219
  %231 = fneg double %217, !dbg !1039
  %232 = fdiv double %231, %215, !dbg !1040
  call void @llvm.dbg.value(metadata double %232, metadata !845, metadata !DIExpression()), !dbg !1041
  %233 = fmul double %232, %232, !dbg !1042
  %handler_result16 = call double @fAddHandlerDouble(double %233, double 1.000000e+00), !dbg !1043
  %234 = tail call double @llvm.sqrt.f64(double %handler_result16), !dbg !1043
  %235 = fdiv double 1.000000e+00, %234, !dbg !1044
  call void @llvm.dbg.value(metadata double %235, metadata !847, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata double %235, metadata !793, metadata !DIExpression()), !dbg !1019
  %236 = fmul double %232, %235, !dbg !1045
  tail call void @llvm.dbg.value(metadata double %236, metadata !797, metadata !DIExpression()), !dbg !1019
  br label %237

237:                                              ; preds = %230, %223, %209
  %238 = phi double [ %229, %223 ], [ %235, %230 ], [ 1.000000e+00, %209 ], !dbg !1046
  %239 = phi double [ %228, %223 ], [ %236, %230 ], [ 0.000000e+00, %209 ], !dbg !1046
  tail call void @llvm.dbg.value(metadata double %239, metadata !797, metadata !DIExpression()), !dbg !1019
  tail call void @llvm.dbg.value(metadata double %238, metadata !793, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %8, metadata !899, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %6, metadata !905, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr %0, metadata !906, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr %1, metadata !907, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %211, metadata !908, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %210, metadata !909, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %238, metadata !910, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata double %239, metadata !911, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 0, metadata !912, metadata !DIExpression()), !dbg !1047
  %240 = mul i64 %179, %211
  %241 = getelementptr double, ptr %177, i64 %240
  %242 = mul i64 %179, %210
  %243 = getelementptr double, ptr %177, i64 %242
  br i1 %181, label %267, label %244, !dbg !1049

244:                                              ; preds = %244, %237
  %245 = phi i64 [ %264, %244 ], [ 0, %237 ]
  %246 = phi i64 [ %265, %244 ], [ 0, %237 ]
  call void @llvm.dbg.value(metadata i64 %245, metadata !912, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %211, metadata !386, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %245, metadata !387, metadata !DIExpression()), !dbg !1050
  %247 = getelementptr double, ptr %241, i64 %245, !dbg !1052
  %248 = load double, ptr %247, align 8, !dbg !1052, !tbaa !299
  call void @llvm.dbg.value(metadata double %248, metadata !913, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %210, metadata !386, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %245, metadata !387, metadata !DIExpression()), !dbg !1054
  %249 = getelementptr double, ptr %243, i64 %245, !dbg !1056
  %250 = load double, ptr %249, align 8, !dbg !1056, !tbaa !299
  call void @llvm.dbg.value(metadata double %250, metadata !917, metadata !DIExpression()), !dbg !1053
  %251 = fmul double %238, %248, !dbg !1057
  %252 = fmul double %239, %250, !dbg !1058
  %handler_result17 = call double @fSubHandlerDouble(double %251, double %252), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %211, metadata !941, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %245, metadata !942, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !943, metadata !DIExpression()), !dbg !1061
  store double %handler_result17, ptr %247, align 8, !dbg !1059, !tbaa !299
  %253 = fmul double %239, %248, !dbg !1062
  %254 = fmul double %238, %250, !dbg !1063
  %handler_result18 = call double @fAddHandlerDouble(double %253, double %254), !dbg !1064
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %210, metadata !941, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %245, metadata !942, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !943, metadata !DIExpression()), !dbg !1066
  store double %handler_result18, ptr %249, align 8, !dbg !1064, !tbaa !299
  %255 = or disjoint i64 %245, 1, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %255, metadata !912, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i64 %255, metadata !912, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %211, metadata !386, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %255, metadata !387, metadata !DIExpression()), !dbg !1050
  %256 = getelementptr double, ptr %241, i64 %255, !dbg !1052
  %257 = load double, ptr %256, align 8, !dbg !1052, !tbaa !299
  call void @llvm.dbg.value(metadata double %257, metadata !913, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %210, metadata !386, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %255, metadata !387, metadata !DIExpression()), !dbg !1054
  %258 = getelementptr double, ptr %243, i64 %255, !dbg !1056
  %259 = load double, ptr %258, align 8, !dbg !1056, !tbaa !299
  call void @llvm.dbg.value(metadata double %259, metadata !917, metadata !DIExpression()), !dbg !1053
  %260 = fmul double %238, %257, !dbg !1057
  %261 = fmul double %239, %259, !dbg !1058
  %handler_result19 = call double @fSubHandlerDouble(double %260, double %261), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %211, metadata !941, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %255, metadata !942, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !943, metadata !DIExpression()), !dbg !1061
  store double %handler_result19, ptr %256, align 8, !dbg !1059, !tbaa !299
  %262 = fmul double %239, %257, !dbg !1062
  %263 = fmul double %238, %259, !dbg !1063
  %handler_result20 = call double @fAddHandlerDouble(double %262, double %263), !dbg !1064
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %210, metadata !941, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %255, metadata !942, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !943, metadata !DIExpression()), !dbg !1066
  store double %handler_result20, ptr %258, align 8, !dbg !1064, !tbaa !299
  %264 = add nuw i64 %245, 2, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %264, metadata !912, metadata !DIExpression()), !dbg !1047
  %265 = add nuw i64 %246, 2, !dbg !1049
  %266 = icmp eq i64 %265, %182, !dbg !1049
  br i1 %266, label %267, label %244, !dbg !1049, !llvm.loop !1068

267:                                              ; preds = %244, %237
  %268 = phi i64 [ 0, %237 ], [ %264, %244 ]
  br i1 %183, label %278, label %269, !dbg !1049

269:                                              ; preds = %267
  call void @llvm.dbg.value(metadata i64 %268, metadata !912, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %211, metadata !386, metadata !DIExpression()), !dbg !1050
  call void @llvm.dbg.value(metadata i64 %268, metadata !387, metadata !DIExpression()), !dbg !1050
  %270 = getelementptr double, ptr %241, i64 %268, !dbg !1052
  %271 = load double, ptr %270, align 8, !dbg !1052, !tbaa !299
  call void @llvm.dbg.value(metadata double %271, metadata !913, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %210, metadata !386, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %268, metadata !387, metadata !DIExpression()), !dbg !1054
  %272 = getelementptr double, ptr %243, i64 %268, !dbg !1056
  %273 = load double, ptr %272, align 8, !dbg !1056, !tbaa !299
  call void @llvm.dbg.value(metadata double %273, metadata !917, metadata !DIExpression()), !dbg !1053
  %274 = fmul double %238, %271, !dbg !1057
  %275 = fmul double %239, %273, !dbg !1058
  %handler_result21 = call double @fSubHandlerDouble(double %274, double %275), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %211, metadata !941, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i64 %268, metadata !942, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !943, metadata !DIExpression()), !dbg !1061
  store double %handler_result21, ptr %270, align 8, !dbg !1059, !tbaa !299
  %276 = fmul double %239, %271, !dbg !1062
  %277 = fmul double %238, %273, !dbg !1063
  %handler_result22 = call double @fAddHandlerDouble(double %276, double %277), !dbg !1064
  call void @llvm.dbg.value(metadata ptr %0, metadata !940, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %210, metadata !941, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %268, metadata !942, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !943, metadata !DIExpression()), !dbg !1066
  store double %handler_result22, ptr %272, align 8, !dbg !1064, !tbaa !299
  call void @llvm.dbg.value(metadata i64 %268, metadata !912, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1047
  br label %278, !dbg !1070

278:                                              ; preds = %269, %267
  %279 = tail call i64 @llvm.umin.i64(i64 %211, i64 %210), !dbg !1070
  call void @llvm.dbg.value(metadata i64 %279, metadata !912, metadata !DIExpression()), !dbg !1047
  br label %280, !dbg !1071

280:                                              ; preds = %280, %278
  %281 = phi i64 [ %292, %280 ], [ %279, %278 ]
  call void @llvm.dbg.value(metadata i64 %281, metadata !912, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %281, metadata !386, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %211, metadata !387, metadata !DIExpression()), !dbg !1072
  %282 = mul i64 %281, %175, !dbg !1074
  %283 = getelementptr double, ptr %173, i64 %282, !dbg !1075
  %284 = getelementptr double, ptr %283, i64 %211, !dbg !1075
  %285 = load double, ptr %284, align 8, !dbg !1075, !tbaa !299
  call void @llvm.dbg.value(metadata double %285, metadata !918, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %281, metadata !386, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata i64 %210, metadata !387, metadata !DIExpression()), !dbg !1077
  %286 = getelementptr double, ptr %283, i64 %210, !dbg !1079
  %287 = load double, ptr %286, align 8, !dbg !1079, !tbaa !299
  call void @llvm.dbg.value(metadata double %287, metadata !922, metadata !DIExpression()), !dbg !1076
  %288 = fmul double %238, %285, !dbg !1080
  %289 = fmul double %239, %287, !dbg !1081
  %handler_result23 = call double @fSubHandlerDouble(double %288, double %289), !dbg !1082
  call void @llvm.dbg.value(metadata ptr %1, metadata !940, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %281, metadata !941, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %211, metadata !942, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !943, metadata !DIExpression()), !dbg !1084
  store double %handler_result23, ptr %284, align 8, !dbg !1082, !tbaa !299
  %290 = fmul double %239, %285, !dbg !1085
  %291 = fmul double %238, %287, !dbg !1086
  %handler_result24 = call double @fAddHandlerDouble(double %290, double %291), !dbg !1087
  call void @llvm.dbg.value(metadata ptr %1, metadata !940, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %281, metadata !941, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %210, metadata !942, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !943, metadata !DIExpression()), !dbg !1089
  store double %handler_result24, ptr %286, align 8, !dbg !1087, !tbaa !299
  %292 = add nuw i64 %281, 1, !dbg !1090
  call void @llvm.dbg.value(metadata i64 %292, metadata !912, metadata !DIExpression()), !dbg !1047
  %293 = icmp eq i64 %292, %6, !dbg !1091
  br i1 %293, label %294, label %280, !dbg !1071, !llvm.loop !1092

294:                                              ; preds = %280
  %295 = add nuw i64 %210, 1, !dbg !1094
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !776, metadata !DIExpression()), !dbg !818
  %296 = icmp eq i64 %295, %6, !dbg !1009
  br i1 %296, label %297, label %209, !dbg !1010, !llvm.loop !1095

297:                                              ; preds = %294, %169, %138, %20, %17, %15, %10, %5
  %298 = phi i32 [ 20, %10 ], [ 20, %5 ], [ 19, %20 ], [ 19, %17 ], [ 19, %15 ], [ 0, %169 ], [ 0, %138 ], [ 0, %294 ], !dbg !1097
  ret i32 %298, !dbg !1098
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!58}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "ptlq.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "b2661b198a661794a28805314087a4b9")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 27)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 20)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 16)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 252, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 25)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 256, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 40)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 30)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 37)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !31, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 360, type: !41, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 35)
!58 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !59, globals: !114, splitDebugInlining: false, nameTableKind: None)
!59 = !{!60, !99, !105, !110}
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 39, baseType: !62, size: 32, elements: !63)
!61 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!64 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!65 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!66 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!67 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!68 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!69 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!70 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!71 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!72 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!73 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!74 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!75 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!76 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!77 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!78 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!79 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!80 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!81 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!82 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!83 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!84 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!85 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!86 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!87 = !DIEnumerator(name: "GSL_ESING", value: 21)
!88 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!89 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!90 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!91 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!92 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!93 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!94 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!95 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!96 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!97 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!98 = !DIEnumerator(name: "GSL_EOF", value: 32)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !100, line: 48, baseType: !101, size: 32, elements: !102)
!100 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!101 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "CblasUpper", value: 121)
!104 = !DIEnumerator(name: "CblasLower", value: 122)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !100, line: 47, baseType: !101, size: 32, elements: !106)
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!108 = !DIEnumerator(name: "CblasTrans", value: 112)
!109 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !100, line: 49, baseType: !101, size: 32, elements: !111)
!111 = !{!112, !113}
!112 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!113 = !DIEnumerator(name: "CblasUnit", value: 132)
!114 = !{!0, !7, !12, !17, !22, !27, !29, !34, !39, !44, !49, !51, !53}
!115 = !{i32 7, !"Dwarf Version", i32 5}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 4}
!118 = !{i32 8, !"PIC Level", i32 2}
!119 = !{i32 7, !"PIE Level", i32 2}
!120 = !{i32 7, !"uwtable", i32 2}
!121 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!122 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!123 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_decomp", scope: !2, file: !2, line: 75, type: !124, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !168)
!124 = !DISubroutineType(types: !125)
!125 = !{!62, !126, !149, !159, !167, !149}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !128, line: 50, baseType: !129)
!128 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 42, size: 384, elements: !130)
!130 = !{!131, !135, !136, !137, !140, !148}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !129, file: !128, line: 44, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !133, line: 18, baseType: !134)
!133 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!134 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !129, file: !128, line: 45, baseType: !132, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !129, file: !128, line: 46, baseType: !132, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !129, file: !128, line: 47, baseType: !138, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !129, file: !128, line: 48, baseType: !141, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !143, line: 44, baseType: !144)
!143 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !143, line: 38, size: 128, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !144, file: !143, line: 40, baseType: !132, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !144, file: !143, line: 41, baseType: !138, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !129, file: !128, line: 49, baseType: !62, size: 32, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !151, line: 50, baseType: !152)
!151 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 42, size: 320, elements: !153)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !152, file: !151, line: 44, baseType: !132, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !152, file: !151, line: 45, baseType: !132, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !152, file: !151, line: 46, baseType: !138, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !152, file: !151, line: 47, baseType: !141, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !152, file: !151, line: 48, baseType: !62, size: 32, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_permutation", file: !161, line: 47, baseType: !162)
!161 = !DIFile(filename: "../gsl/gsl_permutation.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3f1dc4966e787f4bad2ce907e35d62b3")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_permutation_struct", file: !161, line: 41, size: 128, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !162, file: !161, line: 43, baseType: !132, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !162, file: !161, line: 44, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!168 = !{!169, !170, !171, !172, !173, !174, !176, !177, !182, !191, !192, !196, !197, !198, !202, !204, !205, !206, !214, !220, !223, !224, !227}
!169 = !DILocalVariable(name: "A", arg: 1, scope: !123, file: !2, line: 75, type: !126)
!170 = !DILocalVariable(name: "tau", arg: 2, scope: !123, file: !2, line: 75, type: !149)
!171 = !DILocalVariable(name: "p", arg: 3, scope: !123, file: !2, line: 75, type: !159)
!172 = !DILocalVariable(name: "signum", arg: 4, scope: !123, file: !2, line: 75, type: !167)
!173 = !DILocalVariable(name: "norm", arg: 5, scope: !123, file: !2, line: 75, type: !149)
!174 = !DILocalVariable(name: "N", scope: !123, file: !2, line: 77, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!176 = !DILocalVariable(name: "M", scope: !123, file: !2, line: 78, type: !175)
!177 = !DILocalVariable(name: "i", scope: !178, file: !2, line: 94, type: !132)
!178 = distinct !DILexicalBlock(scope: !179, file: !2, line: 93, column: 5)
!179 = distinct !DILexicalBlock(scope: !180, file: !2, line: 88, column: 12)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 84, column: 12)
!181 = distinct !DILexicalBlock(scope: !123, file: !2, line: 80, column: 7)
!182 = !DILocalVariable(name: "c", scope: !183, file: !2, line: 104, type: !186)
!183 = distinct !DILexicalBlock(scope: !184, file: !2, line: 103, column: 9)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 102, column: 7)
!185 = distinct !DILexicalBlock(scope: !178, file: !2, line: 102, column: 7)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !151, line: 57, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !151, line: 55, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 52, size: 320, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !188, file: !151, line: 54, baseType: !150, size: 320)
!191 = !DILocalVariable(name: "x", scope: !183, file: !2, line: 105, type: !139)
!192 = !DILocalVariable(name: "max_norm", scope: !193, file: !2, line: 113, type: !139)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 110, column: 9)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 109, column: 7)
!195 = distinct !DILexicalBlock(scope: !178, file: !2, line: 109, column: 7)
!196 = !DILocalVariable(name: "j", scope: !193, file: !2, line: 114, type: !132)
!197 = !DILocalVariable(name: "kmax", scope: !193, file: !2, line: 114, type: !132)
!198 = !DILocalVariable(name: "x", scope: !199, file: !2, line: 118, type: !139)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 117, column: 13)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 116, column: 11)
!201 = distinct !DILexicalBlock(scope: !193, file: !2, line: 116, column: 11)
!202 = !DILocalVariable(name: "c_full", scope: !203, file: !2, line: 140, type: !186)
!203 = distinct !DILexicalBlock(scope: !193, file: !2, line: 139, column: 11)
!204 = !DILocalVariable(name: "c", scope: !203, file: !2, line: 141, type: !186)
!205 = !DILocalVariable(name: "tau_i", scope: !203, file: !2, line: 143, type: !139)
!206 = !DILocalVariable(name: "m", scope: !207, file: !2, line: 151, type: !209)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 150, column: 15)
!208 = distinct !DILexicalBlock(scope: !203, file: !2, line: 149, column: 17)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !128, line: 57, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !128, line: 55, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 52, size: 384, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !211, file: !128, line: 54, baseType: !127, size: 384)
!214 = !DILocalVariable(name: "x", scope: !215, file: !2, line: 163, type: !139)
!215 = distinct !DILexicalBlock(scope: !216, file: !2, line: 162, column: 17)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 161, column: 15)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 161, column: 15)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 160, column: 13)
!219 = distinct !DILexicalBlock(scope: !193, file: !2, line: 159, column: 15)
!220 = !DILocalVariable(name: "y", scope: !221, file: !2, line: 167, type: !139)
!221 = distinct !DILexicalBlock(scope: !222, file: !2, line: 166, column: 21)
!222 = distinct !DILexicalBlock(scope: !215, file: !2, line: 165, column: 23)
!223 = !DILocalVariable(name: "temp", scope: !221, file: !2, line: 168, type: !139)
!224 = !DILocalVariable(name: "c_full", scope: !225, file: !2, line: 179, type: !186)
!225 = distinct !DILexicalBlock(scope: !226, file: !2, line: 178, column: 25)
!226 = distinct !DILexicalBlock(scope: !221, file: !2, line: 177, column: 27)
!227 = !DILocalVariable(name: "c", scope: !225, file: !2, line: 180, type: !186)
!228 = distinct !DIAssignID()
!229 = !DILocation(line: 0, scope: !183)
!230 = distinct !DIAssignID()
!231 = !DILocation(line: 0, scope: !203)
!232 = distinct !DIAssignID()
!233 = distinct !DIAssignID()
!234 = !DILocation(line: 0, scope: !207)
!235 = distinct !DIAssignID()
!236 = !DILocation(line: 0, scope: !225)
!237 = distinct !DIAssignID()
!238 = !DILocation(line: 0, scope: !123)
!239 = !DILocation(line: 77, column: 23, scope: !123)
!240 = !{!241, !242, i64 0}
!241 = !{!"", !242, i64 0, !242, i64 8, !242, i64 16, !245, i64 24, !245, i64 32, !246, i64 40}
!242 = !{!"long", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C/C++ TBAA"}
!245 = !{!"any pointer", !243, i64 0}
!246 = !{!"int", !243, i64 0}
!247 = !DILocation(line: 78, column: 23, scope: !123)
!248 = !{!241, !242, i64 8}
!249 = !DILocation(line: 80, column: 12, scope: !181)
!250 = !{!251, !242, i64 0}
!251 = !{!"", !242, i64 0, !242, i64 8, !245, i64 16, !245, i64 24, !246, i64 32}
!252 = !DILocation(line: 80, column: 20, scope: !181)
!253 = !DILocation(line: 80, column: 17, scope: !181)
!254 = !DILocation(line: 80, column: 7, scope: !123)
!255 = !DILocation(line: 82, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !2, line: 82, column: 7)
!257 = distinct !DILexicalBlock(scope: !181, file: !2, line: 81, column: 5)
!258 = !DILocation(line: 84, column: 15, scope: !180)
!259 = !{!260, !242, i64 0}
!260 = !{!"gsl_permutation_struct", !242, i64 0, !245, i64 8}
!261 = !DILocation(line: 84, column: 20, scope: !180)
!262 = !DILocation(line: 84, column: 12, scope: !181)
!263 = !DILocation(line: 86, column: 7, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 86, column: 7)
!265 = distinct !DILexicalBlock(scope: !180, file: !2, line: 85, column: 5)
!266 = !DILocation(line: 88, column: 18, scope: !179)
!267 = !DILocation(line: 88, column: 23, scope: !179)
!268 = !DILocation(line: 88, column: 12, scope: !180)
!269 = !DILocation(line: 90, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !2, line: 90, column: 7)
!271 = distinct !DILexicalBlock(scope: !179, file: !2, line: 89, column: 5)
!272 = !DILocation(line: 96, column: 15, scope: !178)
!273 = !{!246, !246, i64 0}
!274 = !DILocation(line: 98, column: 7, scope: !178)
!275 = !DILocation(line: 0, scope: !178)
!276 = !DILocation(line: 102, column: 21, scope: !184)
!277 = !DILocation(line: 102, column: 7, scope: !185)
!278 = !DILocation(line: 109, column: 21, scope: !194)
!279 = !DILocation(line: 109, column: 7, scope: !195)
!280 = !DILocation(line: 104, column: 11, scope: !183)
!281 = !DILocation(line: 104, column: 31, scope: !183)
!282 = !DILocation(line: 105, column: 22, scope: !183)
!283 = !DILocalVariable(name: "v", arg: 1, scope: !284, file: !151, line: 188, type: !149)
!284 = distinct !DISubprogram(name: "gsl_vector_set", scope: !151, file: !151, line: 188, type: !285, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !149, !175, !139}
!287 = !{!283, !288, !289}
!288 = !DILocalVariable(name: "i", arg: 2, scope: !284, file: !151, line: 188, type: !175)
!289 = !DILocalVariable(name: "x", arg: 3, scope: !284, file: !151, line: 188, type: !139)
!290 = !DILocation(line: 0, scope: !284, inlinedAt: !291)
!291 = distinct !DILocation(line: 106, column: 11, scope: !183)
!292 = !DILocation(line: 196, column: 6, scope: !284, inlinedAt: !291)
!293 = !{!251, !245, i64 16}
!294 = !DILocation(line: 196, column: 18, scope: !284, inlinedAt: !291)
!295 = !{!251, !242, i64 8}
!296 = !DILocation(line: 196, column: 13, scope: !284, inlinedAt: !291)
!297 = !DILocation(line: 196, column: 3, scope: !284, inlinedAt: !291)
!298 = !DILocation(line: 196, column: 26, scope: !284, inlinedAt: !291)
!299 = !{!300, !300, i64 0}
!300 = !{!"double", !243, i64 0}
!301 = !DILocation(line: 107, column: 9, scope: !184)
!302 = !DILocation(line: 102, column: 27, scope: !184)
!303 = distinct !{!303, !277, !304, !305}
!304 = !DILocation(line: 107, column: 9, scope: !185)
!305 = !{!"llvm.loop.mustprogress"}
!306 = !DILocalVariable(name: "v", arg: 1, scope: !307, file: !151, line: 175, type: !310)
!307 = distinct !DISubprogram(name: "gsl_vector_get", scope: !151, file: !151, line: 175, type: !308, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !312)
!308 = !DISubroutineType(types: !309)
!309 = !{!139, !310, !175}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!312 = !{!306, !313}
!313 = !DILocalVariable(name: "i", arg: 2, scope: !307, file: !151, line: 175, type: !175)
!314 = !DILocation(line: 0, scope: !307, inlinedAt: !315)
!315 = distinct !DILocation(line: 113, column: 29, scope: !193)
!316 = !DILocation(line: 183, column: 13, scope: !307, inlinedAt: !315)
!317 = !DILocation(line: 183, column: 25, scope: !307, inlinedAt: !315)
!318 = !DILocation(line: 0, scope: !193)
!319 = !DILocation(line: 116, column: 22, scope: !201)
!320 = !DILocation(line: 116, column: 29, scope: !200)
!321 = !DILocation(line: 116, column: 11, scope: !201)
!322 = !DILocation(line: 183, column: 20, scope: !307, inlinedAt: !315)
!323 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !315)
!324 = !DILocation(line: 0, scope: !307, inlinedAt: !325)
!325 = distinct !DILocation(line: 118, column: 26, scope: !199)
!326 = !DILocation(line: 183, column: 20, scope: !307, inlinedAt: !325)
!327 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !325)
!328 = !DILocation(line: 0, scope: !199)
!329 = !DILocation(line: 120, column: 21, scope: !330)
!330 = distinct !DILexicalBlock(scope: !199, file: !2, line: 120, column: 19)
!331 = !DILocation(line: 120, column: 19, scope: !199)
!332 = !DILocation(line: 116, column: 35, scope: !200)
!333 = distinct !{!333, !321, !334, !305}
!334 = !DILocation(line: 125, column: 13, scope: !201)
!335 = !DILocation(line: 127, column: 20, scope: !336)
!336 = distinct !DILexicalBlock(scope: !193, file: !2, line: 127, column: 15)
!337 = !DILocation(line: 127, column: 15, scope: !193)
!338 = !DILocation(line: 129, column: 15, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !2, line: 128, column: 13)
!340 = !DILocation(line: 130, column: 15, scope: !339)
!341 = !DILocation(line: 131, column: 15, scope: !339)
!342 = !DILocation(line: 133, column: 29, scope: !339)
!343 = !DILocation(line: 133, column: 27, scope: !339)
!344 = !DILocation(line: 133, column: 25, scope: !339)
!345 = !DILocation(line: 134, column: 13, scope: !339)
!346 = !DILocation(line: 140, column: 13, scope: !203)
!347 = !DILocation(line: 140, column: 38, scope: !203)
!348 = !DILocation(line: 141, column: 13, scope: !203)
!349 = !DILocation(line: 142, column: 60, scope: !203)
!350 = !DILocation(line: 141, column: 33, scope: !203)
!351 = !DILocation(line: 143, column: 28, scope: !203)
!352 = !DILocation(line: 0, scope: !284, inlinedAt: !353)
!353 = distinct !DILocation(line: 145, column: 13, scope: !203)
!354 = !DILocation(line: 196, column: 6, scope: !284, inlinedAt: !353)
!355 = !DILocation(line: 196, column: 18, scope: !284, inlinedAt: !353)
!356 = !DILocation(line: 196, column: 13, scope: !284, inlinedAt: !353)
!357 = !DILocation(line: 196, column: 3, scope: !284, inlinedAt: !353)
!358 = !DILocation(line: 196, column: 26, scope: !284, inlinedAt: !353)
!359 = !DILocation(line: 149, column: 17, scope: !203)
!360 = !DILocation(line: 155, column: 11, scope: !193)
!361 = !DILocation(line: 159, column: 15, scope: !193)
!362 = !DILocation(line: 151, column: 17, scope: !207)
!363 = !DILocation(line: 151, column: 73, scope: !207)
!364 = !DILocation(line: 151, column: 37, scope: !207)
!365 = !DILocation(line: 153, column: 17, scope: !207)
!366 = !DILocation(line: 154, column: 15, scope: !208)
!367 = !DILocation(line: 159, column: 21, scope: !219)
!368 = !DILocation(line: 183, column: 13, scope: !307, inlinedAt: !369)
!369 = distinct !DILocation(line: 163, column: 30, scope: !215)
!370 = !DILocation(line: 183, column: 25, scope: !307, inlinedAt: !369)
!371 = !DILocation(line: 161, column: 15, scope: !217)
!372 = !DILocation(line: 0, scope: !307, inlinedAt: !369)
!373 = !DILocation(line: 183, column: 20, scope: !307, inlinedAt: !369)
!374 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !369)
!375 = !DILocation(line: 0, scope: !215)
!376 = !DILocation(line: 165, column: 25, scope: !222)
!377 = !DILocation(line: 165, column: 23, scope: !215)
!378 = !DILocation(line: 0, scope: !221)
!379 = !DILocalVariable(name: "m", arg: 1, scope: !380, file: !128, line: 270, type: !383)
!380 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !128, file: !128, line: 270, type: !381, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !385)
!381 = !DISubroutineType(types: !382)
!382 = !{!139, !383, !175, !175}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!385 = !{!379, !386, !387}
!386 = !DILocalVariable(name: "i", arg: 2, scope: !380, file: !128, line: 270, type: !175)
!387 = !DILocalVariable(name: "j", arg: 3, scope: !380, file: !128, line: 270, type: !175)
!388 = !DILocation(line: 0, scope: !380, inlinedAt: !389)
!389 = distinct !DILocation(line: 168, column: 36, scope: !221)
!390 = !DILocation(line: 285, column: 13, scope: !380, inlinedAt: !389)
!391 = !{!241, !245, i64 24}
!392 = !DILocation(line: 285, column: 25, scope: !380, inlinedAt: !389)
!393 = !{!241, !242, i64 16}
!394 = !DILocation(line: 285, column: 20, scope: !380, inlinedAt: !389)
!395 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !389)
!396 = !DILocation(line: 168, column: 61, scope: !221)
!397 = !DILocation(line: 170, column: 27, scope: !398)
!398 = distinct !DILexicalBlock(scope: !221, file: !2, line: 170, column: 27)
!399 = !DILocation(line: 170, column: 39, scope: !398)
!400 = !DILocation(line: 170, column: 27, scope: !221)
!401 = !DILocation(line: 173, column: 48, scope: !398)
!402 = !DILocation(line: 173, column: 33, scope: !398)
!403 = !DILocation(line: 173, column: 31, scope: !398)
!404 = !DILocation(line: 0, scope: !398)
!405 = !DILocation(line: 177, column: 35, scope: !226)
!406 = !DILocation(line: 177, column: 27, scope: !226)
!407 = !DILocation(line: 177, column: 40, scope: !226)
!408 = !DILocation(line: 177, column: 27, scope: !221)
!409 = !DILocation(line: 179, column: 27, scope: !225)
!410 = !DILocation(line: 179, column: 52, scope: !225)
!411 = !DILocation(line: 180, column: 27, scope: !225)
!412 = !DILocation(line: 181, column: 29, scope: !225)
!413 = !DILocation(line: 183, column: 31, scope: !225)
!414 = !DILocation(line: 184, column: 25, scope: !226)
!415 = !DILocation(line: 184, column: 25, scope: !225)
!416 = !DILocation(line: 0, scope: !284, inlinedAt: !417)
!417 = distinct !DILocation(line: 186, column: 23, scope: !221)
!418 = !DILocation(line: 196, column: 6, scope: !284, inlinedAt: !417)
!419 = !DILocation(line: 196, column: 18, scope: !284, inlinedAt: !417)
!420 = !DILocation(line: 196, column: 13, scope: !284, inlinedAt: !417)
!421 = !DILocation(line: 196, column: 3, scope: !284, inlinedAt: !417)
!422 = !DILocation(line: 196, column: 26, scope: !284, inlinedAt: !417)
!423 = !DILocation(line: 187, column: 21, scope: !221)
!424 = !DILocation(line: 161, column: 39, scope: !216)
!425 = !DILocation(line: 161, column: 33, scope: !216)
!426 = distinct !{!426, !371, !427, !305}
!427 = !DILocation(line: 188, column: 17, scope: !217)
!428 = distinct !{!428, !279, !429, !305}
!429 = !DILocation(line: 190, column: 9, scope: !195)
!430 = !DILocation(line: 0, scope: !181)
!431 = !DILocation(line: 194, column: 1, scope: !123)
!432 = !DISubprogram(name: "gsl_error", scope: !61, file: !61, line: 77, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !435, !435, !62, !62}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!437 = !DISubprogram(name: "gsl_permutation_init", scope: !161, file: !161, line: 51, type: !438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !159}
!440 = !DISubprogram(name: "gsl_matrix_row", scope: !128, file: !128, line: 106, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!441 = !DISubroutineType(types: !442)
!442 = !{!187, !126, !175}
!443 = !DISubprogram(name: "gsl_blas_dnrm2", scope: !444, file: !444, line: 91, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!444 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!445 = !DISubroutineType(types: !446)
!446 = !{!139, !310}
!447 = !DISubprogram(name: "gsl_matrix_swap_rows", scope: !128, file: !128, line: 221, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DISubroutineType(types: !449)
!449 = !{!62, !126, !175, !175}
!450 = !DISubprogram(name: "gsl_permutation_swap", scope: !161, file: !161, line: 63, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{!62, !159, !175, !175}
!453 = !DISubprogram(name: "gsl_vector_swap_elements", scope: !151, file: !151, line: 141, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{!62, !149, !175, !175}
!456 = !DISubprogram(name: "gsl_vector_subvector", scope: !151, file: !151, line: 103, type: !457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!457 = !DISubroutineType(types: !458)
!458 = !{!187, !149, !132, !132}
!459 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !460, file: !460, line: 94, type: !461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!461 = !DISubroutineType(types: !462)
!462 = !{!139, !149}
!463 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !128, file: !128, line: 101, type: !464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!464 = !DISubroutineType(types: !465)
!465 = !{!210, !126, !175, !175, !175, !175}
!466 = !DISubprogram(name: "gsl_linalg_householder_mh", scope: !460, file: !460, line: 101, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!467 = !DISubroutineType(types: !468)
!468 = !{!62, !139, !310, !126}
!469 = !DISubprogram(name: "sqrt", scope: !470, file: !470, line: 143, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!470 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!471 = !DISubroutineType(types: !472)
!472 = !{!139, !139}
!473 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_decomp2", scope: !2, file: !2, line: 197, type: !474, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !476)
!474 = !DISubroutineType(types: !475)
!475 = !{!62, !383, !126, !126, !149, !159, !167, !149}
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485}
!477 = !DILocalVariable(name: "A", arg: 1, scope: !473, file: !2, line: 197, type: !383)
!478 = !DILocalVariable(name: "q", arg: 2, scope: !473, file: !2, line: 197, type: !126)
!479 = !DILocalVariable(name: "r", arg: 3, scope: !473, file: !2, line: 197, type: !126)
!480 = !DILocalVariable(name: "tau", arg: 4, scope: !473, file: !2, line: 197, type: !149)
!481 = !DILocalVariable(name: "p", arg: 5, scope: !473, file: !2, line: 197, type: !159)
!482 = !DILocalVariable(name: "signum", arg: 6, scope: !473, file: !2, line: 197, type: !167)
!483 = !DILocalVariable(name: "norm", arg: 7, scope: !473, file: !2, line: 197, type: !149)
!484 = !DILocalVariable(name: "N", scope: !473, file: !2, line: 199, type: !175)
!485 = !DILocalVariable(name: "M", scope: !473, file: !2, line: 200, type: !175)
!486 = !DILocation(line: 0, scope: !473)
!487 = !DILocation(line: 199, column: 23, scope: !473)
!488 = !DILocation(line: 200, column: 23, scope: !473)
!489 = !DILocation(line: 202, column: 10, scope: !490)
!490 = distinct !DILexicalBlock(scope: !473, file: !2, line: 202, column: 7)
!491 = !DILocation(line: 202, column: 16, scope: !490)
!492 = !DILocation(line: 202, column: 21, scope: !490)
!493 = !DILocation(line: 202, column: 27, scope: !490)
!494 = !DILocation(line: 202, column: 33, scope: !490)
!495 = !DILocation(line: 202, column: 7, scope: !473)
!496 = !DILocation(line: 204, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !2, line: 204, column: 7)
!498 = distinct !DILexicalBlock(scope: !490, file: !2, line: 203, column: 5)
!499 = !DILocation(line: 206, column: 15, scope: !500)
!500 = distinct !DILexicalBlock(scope: !490, file: !2, line: 206, column: 12)
!501 = !DILocation(line: 206, column: 21, scope: !500)
!502 = !DILocation(line: 206, column: 26, scope: !500)
!503 = !DILocation(line: 206, column: 32, scope: !500)
!504 = !DILocation(line: 206, column: 38, scope: !500)
!505 = !DILocation(line: 206, column: 12, scope: !490)
!506 = !DILocation(line: 208, column: 7, scope: !507)
!507 = distinct !DILexicalBlock(scope: !508, file: !2, line: 208, column: 7)
!508 = distinct !DILexicalBlock(scope: !500, file: !2, line: 207, column: 5)
!509 = !DILocation(line: 210, column: 17, scope: !510)
!510 = distinct !DILexicalBlock(scope: !500, file: !2, line: 210, column: 12)
!511 = !DILocation(line: 210, column: 25, scope: !510)
!512 = !DILocation(line: 210, column: 22, scope: !510)
!513 = !DILocation(line: 210, column: 12, scope: !500)
!514 = !DILocation(line: 212, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !2, line: 212, column: 7)
!516 = distinct !DILexicalBlock(scope: !510, file: !2, line: 211, column: 5)
!517 = !DILocation(line: 214, column: 15, scope: !518)
!518 = distinct !DILexicalBlock(scope: !510, file: !2, line: 214, column: 12)
!519 = !DILocation(line: 214, column: 20, scope: !518)
!520 = !DILocation(line: 214, column: 12, scope: !510)
!521 = !DILocation(line: 216, column: 7, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !2, line: 216, column: 7)
!523 = distinct !DILexicalBlock(scope: !518, file: !2, line: 215, column: 5)
!524 = !DILocation(line: 218, column: 18, scope: !525)
!525 = distinct !DILexicalBlock(scope: !518, file: !2, line: 218, column: 12)
!526 = !DILocation(line: 218, column: 23, scope: !525)
!527 = !DILocation(line: 218, column: 12, scope: !518)
!528 = !DILocation(line: 220, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 220, column: 7)
!530 = distinct !DILexicalBlock(scope: !525, file: !2, line: 219, column: 5)
!531 = !DILocation(line: 223, column: 3, scope: !473)
!532 = !DILocation(line: 225, column: 3, scope: !473)
!533 = !{i32 0, i32 20}
!534 = !DILocation(line: 229, column: 3, scope: !473)
!535 = !DILocation(line: 231, column: 3, scope: !473)
!536 = !DILocation(line: 232, column: 1, scope: !473)
!537 = !DISubprogram(name: "gsl_matrix_memcpy", scope: !128, file: !128, line: 217, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!538 = !DISubroutineType(types: !539)
!539 = !{!62, !126, !383}
!540 = !DISubprogram(name: "gsl_linalg_LQ_unpack", scope: !460, file: !460, line: 421, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubroutineType(types: !542)
!542 = !{!62, !383, !310, !126, !126}
!543 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_solve_T", scope: !2, file: !2, line: 244, type: !544, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !548)
!544 = !DISubroutineType(types: !545)
!545 = !{!62, !383, !310, !546, !310, !149}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!548 = !{!549, !550, !551, !552, !553}
!549 = !DILocalVariable(name: "QR", arg: 1, scope: !543, file: !2, line: 244, type: !383)
!550 = !DILocalVariable(name: "tau", arg: 2, scope: !543, file: !2, line: 245, type: !310)
!551 = !DILocalVariable(name: "p", arg: 3, scope: !543, file: !2, line: 246, type: !546)
!552 = !DILocalVariable(name: "b", arg: 4, scope: !543, file: !2, line: 247, type: !310)
!553 = !DILocalVariable(name: "x", arg: 5, scope: !543, file: !2, line: 248, type: !149)
!554 = !DILocation(line: 0, scope: !543)
!555 = !DILocation(line: 250, column: 11, scope: !556)
!556 = distinct !DILexicalBlock(scope: !543, file: !2, line: 250, column: 7)
!557 = !DILocation(line: 250, column: 24, scope: !556)
!558 = !DILocation(line: 250, column: 17, scope: !556)
!559 = !DILocation(line: 250, column: 7, scope: !543)
!560 = !DILocation(line: 252, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 252, column: 7)
!562 = distinct !DILexicalBlock(scope: !556, file: !2, line: 251, column: 5)
!563 = !DILocation(line: 254, column: 28, scope: !564)
!564 = distinct !DILexicalBlock(scope: !556, file: !2, line: 254, column: 12)
!565 = !DILocation(line: 254, column: 22, scope: !564)
!566 = !DILocation(line: 254, column: 12, scope: !556)
!567 = !DILocation(line: 256, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !2, line: 256, column: 7)
!569 = distinct !DILexicalBlock(scope: !564, file: !2, line: 255, column: 5)
!570 = !DILocation(line: 258, column: 28, scope: !571)
!571 = distinct !DILexicalBlock(scope: !564, file: !2, line: 258, column: 12)
!572 = !DILocation(line: 258, column: 22, scope: !571)
!573 = !DILocation(line: 258, column: 12, scope: !564)
!574 = !DILocation(line: 260, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !2, line: 260, column: 7)
!576 = distinct !DILexicalBlock(scope: !571, file: !2, line: 259, column: 5)
!577 = !DILocation(line: 262, column: 28, scope: !578)
!578 = distinct !DILexicalBlock(scope: !571, file: !2, line: 262, column: 12)
!579 = !DILocation(line: 262, column: 22, scope: !578)
!580 = !DILocation(line: 262, column: 12, scope: !571)
!581 = !DILocation(line: 264, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !2, line: 264, column: 7)
!583 = distinct !DILexicalBlock(scope: !578, file: !2, line: 263, column: 5)
!584 = !DILocation(line: 268, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !578, file: !2, line: 267, column: 5)
!586 = !DILocation(line: 270, column: 7, scope: !585)
!587 = !{i32 0, i32 21}
!588 = !DILocation(line: 272, column: 7, scope: !585)
!589 = !DILocation(line: 0, scope: !556)
!590 = !DILocation(line: 274, column: 1, scope: !543)
!591 = !DISubprogram(name: "gsl_vector_memcpy", scope: !151, file: !151, line: 136, type: !592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!592 = !DISubroutineType(types: !593)
!593 = !{!62, !149, !310}
!594 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_svx_T", scope: !2, file: !2, line: 277, type: !595, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{!62, !383, !310, !546, !149}
!597 = !{!598, !599, !600, !601}
!598 = !DILocalVariable(name: "LQ", arg: 1, scope: !594, file: !2, line: 277, type: !383)
!599 = !DILocalVariable(name: "tau", arg: 2, scope: !594, file: !2, line: 278, type: !310)
!600 = !DILocalVariable(name: "p", arg: 3, scope: !594, file: !2, line: 279, type: !546)
!601 = !DILocalVariable(name: "x", arg: 4, scope: !594, file: !2, line: 280, type: !149)
!602 = !DILocation(line: 0, scope: !594)
!603 = !DILocation(line: 282, column: 11, scope: !604)
!604 = distinct !DILexicalBlock(scope: !594, file: !2, line: 282, column: 7)
!605 = !DILocation(line: 282, column: 24, scope: !604)
!606 = !DILocation(line: 282, column: 17, scope: !604)
!607 = !DILocation(line: 282, column: 7, scope: !594)
!608 = !DILocation(line: 284, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !2, line: 284, column: 7)
!610 = distinct !DILexicalBlock(scope: !604, file: !2, line: 283, column: 5)
!611 = !DILocation(line: 286, column: 28, scope: !612)
!612 = distinct !DILexicalBlock(scope: !604, file: !2, line: 286, column: 12)
!613 = !DILocation(line: 286, column: 22, scope: !612)
!614 = !DILocation(line: 286, column: 12, scope: !604)
!615 = !DILocation(line: 288, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !2, line: 288, column: 7)
!617 = distinct !DILexicalBlock(scope: !612, file: !2, line: 287, column: 5)
!618 = !DILocation(line: 290, column: 28, scope: !619)
!619 = distinct !DILexicalBlock(scope: !612, file: !2, line: 290, column: 12)
!620 = !DILocation(line: 290, column: 22, scope: !619)
!621 = !DILocation(line: 290, column: 12, scope: !612)
!622 = !DILocation(line: 292, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !2, line: 292, column: 7)
!624 = distinct !DILexicalBlock(scope: !619, file: !2, line: 291, column: 5)
!625 = !DILocation(line: 298, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !619, file: !2, line: 295, column: 5)
!627 = !DILocation(line: 302, column: 7, scope: !626)
!628 = !DILocation(line: 304, column: 7, scope: !626)
!629 = !DILocation(line: 306, column: 7, scope: !626)
!630 = !DILocation(line: 0, scope: !604)
!631 = !DILocation(line: 308, column: 1, scope: !594)
!632 = !DISubprogram(name: "gsl_linalg_LQ_vecQT", scope: !460, file: !460, line: 418, type: !633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!633 = !DISubroutineType(types: !634)
!634 = !{!62, !383, !310, !149}
!635 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !444, file: !444, line: 217, type: !636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!636 = !DISubroutineType(types: !637)
!637 = !{!62, !638, !640, !641, !383, !149}
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !639, line: 45, baseType: !99)
!639 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !639, line: 44, baseType: !105)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !639, line: 46, baseType: !110)
!642 = !DISubprogram(name: "gsl_permute_vector_inverse", scope: !643, file: !643, line: 41, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!643 = !DIFile(filename: "../gsl/gsl_permute_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "05dfc9fcd9b4e47246745becff796730")
!644 = !DISubroutineType(types: !645)
!645 = !{!62, !546, !149}
!646 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_LQsolve_T", scope: !2, file: !2, line: 312, type: !647, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{!62, !383, !383, !546, !310, !149}
!649 = !{!650, !651, !652, !653, !654}
!650 = !DILocalVariable(name: "Q", arg: 1, scope: !646, file: !2, line: 312, type: !383)
!651 = !DILocalVariable(name: "L", arg: 2, scope: !646, file: !2, line: 312, type: !383)
!652 = !DILocalVariable(name: "p", arg: 3, scope: !646, file: !2, line: 313, type: !546)
!653 = !DILocalVariable(name: "b", arg: 4, scope: !646, file: !2, line: 314, type: !310)
!654 = !DILocalVariable(name: "x", arg: 5, scope: !646, file: !2, line: 315, type: !149)
!655 = !DILocation(line: 0, scope: !646)
!656 = !DILocation(line: 317, column: 10, scope: !657)
!657 = distinct !DILexicalBlock(scope: !646, file: !2, line: 317, column: 7)
!658 = !DILocation(line: 317, column: 22, scope: !657)
!659 = !DILocation(line: 317, column: 16, scope: !657)
!660 = !DILocation(line: 317, column: 28, scope: !657)
!661 = !DILocation(line: 317, column: 34, scope: !657)
!662 = !DILocation(line: 317, column: 46, scope: !657)
!663 = !DILocation(line: 317, column: 40, scope: !657)
!664 = !DILocation(line: 317, column: 7, scope: !646)
!665 = !DILocation(line: 321, column: 27, scope: !666)
!666 = distinct !DILexicalBlock(scope: !657, file: !2, line: 321, column: 12)
!667 = !DILocation(line: 321, column: 21, scope: !666)
!668 = !DILocation(line: 321, column: 32, scope: !666)
!669 = !DILocation(line: 322, column: 30, scope: !666)
!670 = !DILocation(line: 322, column: 24, scope: !666)
!671 = !DILocation(line: 321, column: 12, scope: !657)
!672 = !DILocation(line: 330, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !666, file: !2, line: 327, column: 5)
!674 = !DILocation(line: 334, column: 7, scope: !673)
!675 = !DILocation(line: 338, column: 7, scope: !673)
!676 = !DILocation(line: 340, column: 7, scope: !673)
!677 = !DILocation(line: 0, scope: !657)
!678 = !DILocation(line: 342, column: 1, scope: !646)
!679 = !DISubprogram(name: "gsl_blas_dgemv", scope: !444, file: !444, line: 205, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!680 = !DISubroutineType(types: !681)
!681 = !{!62, !640, !139, !383, !310, !139, !149}
!682 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_Lsolve_T", scope: !2, file: !2, line: 345, type: !683, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !685)
!683 = !DISubroutineType(types: !684)
!684 = !{!62, !383, !546, !310, !149}
!685 = !{!686, !687, !688, !689}
!686 = !DILocalVariable(name: "LQ", arg: 1, scope: !682, file: !2, line: 345, type: !383)
!687 = !DILocalVariable(name: "p", arg: 2, scope: !682, file: !2, line: 346, type: !546)
!688 = !DILocalVariable(name: "b", arg: 3, scope: !682, file: !2, line: 347, type: !310)
!689 = !DILocalVariable(name: "x", arg: 4, scope: !682, file: !2, line: 348, type: !149)
!690 = !DILocation(line: 0, scope: !682)
!691 = !DILocation(line: 350, column: 11, scope: !692)
!692 = distinct !DILexicalBlock(scope: !682, file: !2, line: 350, column: 7)
!693 = !DILocation(line: 350, column: 24, scope: !692)
!694 = !DILocation(line: 350, column: 17, scope: !692)
!695 = !DILocation(line: 350, column: 7, scope: !682)
!696 = !DILocation(line: 352, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 352, column: 7)
!698 = distinct !DILexicalBlock(scope: !692, file: !2, line: 351, column: 5)
!699 = !DILocation(line: 354, column: 28, scope: !700)
!700 = distinct !DILexicalBlock(scope: !692, file: !2, line: 354, column: 12)
!701 = !DILocation(line: 354, column: 22, scope: !700)
!702 = !DILocation(line: 354, column: 12, scope: !692)
!703 = !DILocation(line: 356, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !2, line: 356, column: 7)
!705 = distinct !DILexicalBlock(scope: !700, file: !2, line: 355, column: 5)
!706 = !DILocation(line: 358, column: 28, scope: !707)
!707 = distinct !DILexicalBlock(scope: !700, file: !2, line: 358, column: 12)
!708 = !DILocation(line: 358, column: 22, scope: !707)
!709 = !DILocation(line: 358, column: 12, scope: !700)
!710 = !DILocation(line: 360, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !2, line: 360, column: 7)
!712 = distinct !DILexicalBlock(scope: !707, file: !2, line: 359, column: 5)
!713 = !DILocation(line: 362, column: 15, scope: !714)
!714 = distinct !DILexicalBlock(scope: !707, file: !2, line: 362, column: 12)
!715 = !DILocation(line: 362, column: 20, scope: !714)
!716 = !DILocation(line: 362, column: 12, scope: !707)
!717 = !DILocation(line: 364, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 364, column: 7)
!719 = distinct !DILexicalBlock(scope: !714, file: !2, line: 363, column: 5)
!720 = !DILocation(line: 370, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !714, file: !2, line: 367, column: 5)
!722 = !DILocation(line: 374, column: 7, scope: !721)
!723 = !DILocation(line: 376, column: 7, scope: !721)
!724 = !DILocation(line: 378, column: 7, scope: !721)
!725 = !DILocation(line: 0, scope: !692)
!726 = !DILocation(line: 380, column: 1, scope: !682)
!727 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_Lsvx_T", scope: !2, file: !2, line: 384, type: !728, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !730)
!728 = !DISubroutineType(types: !729)
!729 = !{!62, !383, !546, !149}
!730 = !{!731, !732, !733}
!731 = !DILocalVariable(name: "LQ", arg: 1, scope: !727, file: !2, line: 384, type: !383)
!732 = !DILocalVariable(name: "p", arg: 2, scope: !727, file: !2, line: 385, type: !546)
!733 = !DILocalVariable(name: "x", arg: 3, scope: !727, file: !2, line: 386, type: !149)
!734 = !DILocation(line: 0, scope: !727)
!735 = !DILocation(line: 388, column: 11, scope: !736)
!736 = distinct !DILexicalBlock(scope: !727, file: !2, line: 388, column: 7)
!737 = !DILocation(line: 388, column: 24, scope: !736)
!738 = !DILocation(line: 388, column: 17, scope: !736)
!739 = !DILocation(line: 388, column: 7, scope: !727)
!740 = !DILocation(line: 390, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !2, line: 390, column: 7)
!742 = distinct !DILexicalBlock(scope: !736, file: !2, line: 389, column: 5)
!743 = !DILocation(line: 392, column: 28, scope: !744)
!744 = distinct !DILexicalBlock(scope: !736, file: !2, line: 392, column: 12)
!745 = !DILocation(line: 392, column: 22, scope: !744)
!746 = !DILocation(line: 392, column: 12, scope: !736)
!747 = !DILocation(line: 394, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !2, line: 394, column: 7)
!749 = distinct !DILexicalBlock(scope: !744, file: !2, line: 393, column: 5)
!750 = !DILocation(line: 396, column: 15, scope: !751)
!751 = distinct !DILexicalBlock(scope: !744, file: !2, line: 396, column: 12)
!752 = !DILocation(line: 396, column: 20, scope: !751)
!753 = !DILocation(line: 396, column: 12, scope: !744)
!754 = !DILocation(line: 398, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !2, line: 398, column: 7)
!756 = distinct !DILexicalBlock(scope: !751, file: !2, line: 397, column: 5)
!757 = !DILocation(line: 404, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !751, file: !2, line: 401, column: 5)
!759 = !DILocation(line: 406, column: 7, scope: !758)
!760 = !DILocation(line: 408, column: 7, scope: !758)
!761 = !DILocation(line: 0, scope: !736)
!762 = !DILocation(line: 410, column: 1, scope: !727)
!763 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_update", scope: !2, file: !2, line: 428, type: !764, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!62, !126, !126, !546, !310, !149}
!766 = !{!767, !768, !769, !770, !771, !772, !776, !777, !778, !779, !780, !784, !785, !786, !787, !791, !792, !793, !797, !798, !799}
!767 = !DILocalVariable(name: "Q", arg: 1, scope: !763, file: !2, line: 428, type: !126)
!768 = !DILocalVariable(name: "L", arg: 2, scope: !763, file: !2, line: 428, type: !126)
!769 = !DILocalVariable(name: "p", arg: 3, scope: !763, file: !2, line: 429, type: !546)
!770 = !DILocalVariable(name: "v", arg: 4, scope: !763, file: !2, line: 430, type: !310)
!771 = !DILocalVariable(name: "w", arg: 5, scope: !763, file: !2, line: 430, type: !149)
!772 = !DILocalVariable(name: "j", scope: !773, file: !2, line: 442, type: !132)
!773 = distinct !DILexicalBlock(scope: !774, file: !2, line: 441, column: 5)
!774 = distinct !DILexicalBlock(scope: !775, file: !2, line: 436, column: 12)
!775 = distinct !DILexicalBlock(scope: !763, file: !2, line: 432, column: 7)
!776 = !DILocalVariable(name: "k", scope: !773, file: !2, line: 442, type: !132)
!777 = !DILocalVariable(name: "N", scope: !773, file: !2, line: 443, type: !175)
!778 = !DILocalVariable(name: "M", scope: !773, file: !2, line: 444, type: !175)
!779 = !DILocalVariable(name: "w0", scope: !773, file: !2, line: 445, type: !139)
!780 = !DILocalVariable(name: "c", scope: !781, file: !2, line: 456, type: !139)
!781 = distinct !DILexicalBlock(scope: !782, file: !2, line: 455, column: 9)
!782 = distinct !DILexicalBlock(scope: !783, file: !2, line: 454, column: 7)
!783 = distinct !DILexicalBlock(scope: !773, file: !2, line: 454, column: 7)
!784 = !DILocalVariable(name: "s", scope: !781, file: !2, line: 456, type: !139)
!785 = !DILocalVariable(name: "wk", scope: !781, file: !2, line: 457, type: !139)
!786 = !DILocalVariable(name: "wkm1", scope: !781, file: !2, line: 458, type: !139)
!787 = !DILocalVariable(name: "lj0", scope: !788, file: !2, line: 471, type: !139)
!788 = distinct !DILexicalBlock(scope: !789, file: !2, line: 470, column: 9)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 469, column: 7)
!790 = distinct !DILexicalBlock(scope: !773, file: !2, line: 469, column: 7)
!791 = !DILocalVariable(name: "p_j", scope: !788, file: !2, line: 472, type: !132)
!792 = !DILocalVariable(name: "vj", scope: !788, file: !2, line: 473, type: !139)
!793 = !DILocalVariable(name: "c", scope: !794, file: !2, line: 482, type: !139)
!794 = distinct !DILexicalBlock(scope: !795, file: !2, line: 481, column: 9)
!795 = distinct !DILexicalBlock(scope: !796, file: !2, line: 480, column: 7)
!796 = distinct !DILexicalBlock(scope: !773, file: !2, line: 480, column: 7)
!797 = !DILocalVariable(name: "s", scope: !794, file: !2, line: 482, type: !139)
!798 = !DILocalVariable(name: "diag", scope: !794, file: !2, line: 483, type: !139)
!799 = !DILocalVariable(name: "offdiag", scope: !794, file: !2, line: 484, type: !139)
!800 = !DILocation(line: 0, scope: !763)
!801 = !DILocation(line: 432, column: 10, scope: !775)
!802 = !DILocation(line: 432, column: 22, scope: !775)
!803 = !DILocation(line: 432, column: 16, scope: !775)
!804 = !DILocation(line: 432, column: 28, scope: !775)
!805 = !DILocation(line: 432, column: 34, scope: !775)
!806 = !DILocation(line: 432, column: 46, scope: !775)
!807 = !DILocation(line: 432, column: 40, scope: !775)
!808 = !DILocation(line: 432, column: 7, scope: !763)
!809 = !DILocation(line: 436, column: 21, scope: !774)
!810 = !DILocation(line: 436, column: 33, scope: !774)
!811 = !DILocation(line: 436, column: 39, scope: !774)
!812 = !DILocation(line: 436, column: 44, scope: !774)
!813 = !DILocation(line: 436, column: 56, scope: !774)
!814 = !DILocation(line: 436, column: 62, scope: !774)
!815 = !DILocation(line: 436, column: 67, scope: !774)
!816 = !DILocation(line: 436, column: 12, scope: !775)
!817 = !DILocation(line: 454, scope: !783)
!818 = !DILocation(line: 0, scope: !773)
!819 = !DILocation(line: 454, column: 25, scope: !782)
!820 = !DILocation(line: 454, column: 7, scope: !783)
!821 = !DILocation(line: 0, scope: !307, inlinedAt: !822)
!822 = distinct !DILocation(line: 457, column: 23, scope: !781)
!823 = !DILocation(line: 183, column: 20, scope: !307, inlinedAt: !822)
!824 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !822)
!825 = !DILocation(line: 0, scope: !781)
!826 = !DILocation(line: 458, column: 46, scope: !781)
!827 = !DILocation(line: 0, scope: !307, inlinedAt: !828)
!828 = distinct !DILocation(line: 458, column: 25, scope: !781)
!829 = !DILocation(line: 183, column: 20, scope: !307, inlinedAt: !828)
!830 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !828)
!831 = !DILocalVariable(name: "a", arg: 1, scope: !832, file: !460, line: 740, type: !835)
!832 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !460, file: !460, line: 740, type: !833, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !836)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !835, !835, !138, !138}
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!836 = !{!831, !837, !838, !839, !840, !844, !845, !847}
!837 = !DILocalVariable(name: "b", arg: 2, scope: !832, file: !460, line: 740, type: !835)
!838 = !DILocalVariable(name: "c", arg: 3, scope: !832, file: !460, line: 740, type: !138)
!839 = !DILocalVariable(name: "s", arg: 4, scope: !832, file: !460, line: 740, type: !138)
!840 = !DILocalVariable(name: "t", scope: !841, file: !460, line: 749, type: !139)
!841 = distinct !DILexicalBlock(scope: !842, file: !460, line: 748, column: 5)
!842 = distinct !DILexicalBlock(scope: !843, file: !460, line: 747, column: 12)
!843 = distinct !DILexicalBlock(scope: !832, file: !460, line: 742, column: 7)
!844 = !DILocalVariable(name: "s1", scope: !841, file: !460, line: 750, type: !139)
!845 = !DILocalVariable(name: "t", scope: !846, file: !460, line: 756, type: !139)
!846 = distinct !DILexicalBlock(scope: !842, file: !460, line: 755, column: 5)
!847 = !DILocalVariable(name: "c1", scope: !846, file: !460, line: 757, type: !139)
!848 = !DILocation(line: 0, scope: !832, inlinedAt: !849)
!849 = distinct !DILocation(line: 460, column: 11, scope: !781)
!850 = !DILocation(line: 742, column: 9, scope: !843, inlinedAt: !849)
!851 = !DILocation(line: 742, column: 7, scope: !832, inlinedAt: !849)
!852 = !DILocation(line: 747, column: 12, scope: !842, inlinedAt: !849)
!853 = !DILocation(line: 747, column: 23, scope: !842, inlinedAt: !849)
!854 = !DILocation(line: 747, column: 21, scope: !842, inlinedAt: !849)
!855 = !DILocation(line: 747, column: 12, scope: !843, inlinedAt: !849)
!856 = !DILocation(line: 749, column: 18, scope: !841, inlinedAt: !849)
!857 = !DILocation(line: 749, column: 21, scope: !841, inlinedAt: !849)
!858 = !DILocation(line: 0, scope: !841, inlinedAt: !849)
!859 = !DILocation(line: 750, column: 37, scope: !841, inlinedAt: !849)
!860 = !DILocation(line: 750, column: 25, scope: !841, inlinedAt: !849)
!861 = !DILocation(line: 750, column: 23, scope: !841, inlinedAt: !849)
!862 = !DILocation(line: 752, column: 15, scope: !841, inlinedAt: !849)
!863 = !DILocation(line: 753, column: 5, scope: !841, inlinedAt: !849)
!864 = !DILocation(line: 756, column: 18, scope: !846, inlinedAt: !849)
!865 = !DILocation(line: 756, column: 21, scope: !846, inlinedAt: !849)
!866 = !DILocation(line: 0, scope: !846, inlinedAt: !849)
!867 = !DILocation(line: 757, column: 37, scope: !846, inlinedAt: !849)
!868 = !DILocation(line: 757, column: 25, scope: !846, inlinedAt: !849)
!869 = !DILocation(line: 757, column: 23, scope: !846, inlinedAt: !849)
!870 = !DILocation(line: 759, column: 15, scope: !846, inlinedAt: !849)
!871 = !DILocation(line: 0, scope: !843, inlinedAt: !849)
!872 = !DILocalVariable(name: "v", arg: 1, scope: !873, file: !460, line: 765, type: !149)
!873 = distinct !DISubprogram(name: "gsl_linalg_givens_gv", scope: !460, file: !460, line: 765, type: !874, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !876)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !149, !175, !175, !835, !835}
!876 = !{!872, !877, !878, !879, !880, !881, !882}
!877 = !DILocalVariable(name: "i", arg: 2, scope: !873, file: !460, line: 765, type: !175)
!878 = !DILocalVariable(name: "j", arg: 3, scope: !873, file: !460, line: 765, type: !175)
!879 = !DILocalVariable(name: "c", arg: 4, scope: !873, file: !460, line: 766, type: !835)
!880 = !DILocalVariable(name: "s", arg: 5, scope: !873, file: !460, line: 766, type: !835)
!881 = !DILocalVariable(name: "vi", scope: !873, file: !460, line: 770, type: !139)
!882 = !DILocalVariable(name: "vj", scope: !873, file: !460, line: 771, type: !139)
!883 = !DILocation(line: 0, scope: !873, inlinedAt: !884)
!884 = distinct !DILocation(line: 461, column: 11, scope: !781)
!885 = !DILocation(line: 0, scope: !307, inlinedAt: !886)
!886 = distinct !DILocation(line: 770, column: 15, scope: !873, inlinedAt: !884)
!887 = !DILocation(line: 0, scope: !307, inlinedAt: !888)
!888 = distinct !DILocation(line: 771, column: 15, scope: !873, inlinedAt: !884)
!889 = !DILocation(line: 772, column: 27, scope: !873, inlinedAt: !884)
!890 = !DILocation(line: 772, column: 36, scope: !873, inlinedAt: !884)
!891 = !DILocation(line: 196, column: 26, scope: !284, inlinedAt: !892)
!892 = distinct !DILocation(line: 772, column: 3, scope: !873, inlinedAt: !884)
!893 = !DILocation(line: 0, scope: !284, inlinedAt: !892)
!894 = !DILocation(line: 773, column: 27, scope: !873, inlinedAt: !884)
!895 = !DILocation(line: 773, column: 36, scope: !873, inlinedAt: !884)
!896 = !DILocation(line: 196, column: 26, scope: !284, inlinedAt: !897)
!897 = distinct !DILocation(line: 773, column: 3, scope: !873, inlinedAt: !884)
!898 = !DILocation(line: 0, scope: !284, inlinedAt: !897)
!899 = !DILocalVariable(name: "M", arg: 1, scope: !900, file: !901, line: 69, type: !132)
!900 = distinct !DISubprogram(name: "apply_givens_lq", scope: !901, file: !901, line: 69, type: !902, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !904)
!901 = !DIFile(filename: "./apply_givens.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1430c6da1968c27d96b974d1078e7cb2")
!902 = !DISubroutineType(types: !903)
!903 = !{null, !132, !132, !126, !126, !132, !132, !139, !139}
!904 = !{!899, !905, !906, !907, !908, !909, !910, !911, !912, !913, !917, !918, !922}
!905 = !DILocalVariable(name: "N", arg: 2, scope: !900, file: !901, line: 69, type: !132)
!906 = !DILocalVariable(name: "Q", arg: 3, scope: !900, file: !901, line: 69, type: !126)
!907 = !DILocalVariable(name: "L", arg: 4, scope: !900, file: !901, line: 69, type: !126)
!908 = !DILocalVariable(name: "i", arg: 5, scope: !900, file: !901, line: 70, type: !132)
!909 = !DILocalVariable(name: "j", arg: 6, scope: !900, file: !901, line: 70, type: !132)
!910 = !DILocalVariable(name: "c", arg: 7, scope: !900, file: !901, line: 70, type: !139)
!911 = !DILocalVariable(name: "s", arg: 8, scope: !900, file: !901, line: 70, type: !139)
!912 = !DILocalVariable(name: "k", scope: !900, file: !901, line: 72, type: !132)
!913 = !DILocalVariable(name: "qik", scope: !914, file: !901, line: 86, type: !139)
!914 = distinct !DILexicalBlock(scope: !915, file: !901, line: 85, column: 5)
!915 = distinct !DILexicalBlock(scope: !916, file: !901, line: 84, column: 3)
!916 = distinct !DILexicalBlock(scope: !900, file: !901, line: 84, column: 3)
!917 = !DILocalVariable(name: "qjk", scope: !914, file: !901, line: 87, type: !139)
!918 = !DILocalVariable(name: "lki", scope: !919, file: !901, line: 107, type: !139)
!919 = distinct !DILexicalBlock(scope: !920, file: !901, line: 106, column: 5)
!920 = distinct !DILexicalBlock(scope: !921, file: !901, line: 105, column: 3)
!921 = distinct !DILexicalBlock(scope: !900, file: !901, line: 105, column: 3)
!922 = !DILocalVariable(name: "lkj", scope: !919, file: !901, line: 108, type: !139)
!923 = !DILocation(line: 0, scope: !900, inlinedAt: !924)
!924 = distinct !DILocation(line: 462, column: 11, scope: !781)
!925 = !DILocation(line: 84, column: 3, scope: !916, inlinedAt: !924)
!926 = !DILocation(line: 0, scope: !380, inlinedAt: !927)
!927 = distinct !DILocation(line: 86, column: 20, scope: !914, inlinedAt: !924)
!928 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !927)
!929 = !DILocation(line: 0, scope: !914, inlinedAt: !924)
!930 = !DILocation(line: 0, scope: !380, inlinedAt: !931)
!931 = distinct !DILocation(line: 87, column: 20, scope: !914, inlinedAt: !924)
!932 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !931)
!933 = !DILocation(line: 88, column: 36, scope: !914, inlinedAt: !924)
!934 = !DILocation(line: 88, column: 46, scope: !914, inlinedAt: !924)
!935 = !DILocation(line: 305, column: 27, scope: !936, inlinedAt: !944)
!936 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !128, file: !128, line: 290, type: !937, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !939)
!937 = !DISubroutineType(types: !938)
!938 = !{null, !126, !175, !175, !835}
!939 = !{!940, !941, !942, !943}
!940 = !DILocalVariable(name: "m", arg: 1, scope: !936, file: !128, line: 290, type: !126)
!941 = !DILocalVariable(name: "i", arg: 2, scope: !936, file: !128, line: 290, type: !175)
!942 = !DILocalVariable(name: "j", arg: 3, scope: !936, file: !128, line: 290, type: !175)
!943 = !DILocalVariable(name: "x", arg: 4, scope: !936, file: !128, line: 290, type: !835)
!944 = distinct !DILocation(line: 88, column: 7, scope: !914, inlinedAt: !924)
!945 = !DILocation(line: 0, scope: !936, inlinedAt: !944)
!946 = !DILocation(line: 89, column: 36, scope: !914, inlinedAt: !924)
!947 = !DILocation(line: 89, column: 46, scope: !914, inlinedAt: !924)
!948 = !DILocation(line: 305, column: 27, scope: !936, inlinedAt: !949)
!949 = distinct !DILocation(line: 89, column: 7, scope: !914, inlinedAt: !924)
!950 = !DILocation(line: 0, scope: !936, inlinedAt: !949)
!951 = !DILocation(line: 84, column: 23, scope: !915, inlinedAt: !924)
!952 = distinct !{!952, !925, !953, !305}
!953 = !DILocation(line: 90, column: 5, scope: !916, inlinedAt: !924)
!954 = !DILocation(line: 105, column: 12, scope: !921, inlinedAt: !924)
!955 = !DILocation(line: 105, column: 30, scope: !920, inlinedAt: !924)
!956 = !DILocation(line: 105, column: 3, scope: !921, inlinedAt: !924)
!957 = !DILocation(line: 0, scope: !380, inlinedAt: !958)
!958 = distinct !DILocation(line: 107, column: 20, scope: !919, inlinedAt: !924)
!959 = !DILocation(line: 285, column: 20, scope: !380, inlinedAt: !958)
!960 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !958)
!961 = !DILocation(line: 0, scope: !919, inlinedAt: !924)
!962 = !DILocation(line: 0, scope: !380, inlinedAt: !963)
!963 = distinct !DILocation(line: 108, column: 20, scope: !919, inlinedAt: !924)
!964 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !963)
!965 = !DILocation(line: 109, column: 34, scope: !919, inlinedAt: !924)
!966 = !DILocation(line: 109, column: 44, scope: !919, inlinedAt: !924)
!967 = !DILocation(line: 305, column: 27, scope: !936, inlinedAt: !968)
!968 = distinct !DILocation(line: 109, column: 7, scope: !919, inlinedAt: !924)
!969 = !DILocation(line: 0, scope: !936, inlinedAt: !968)
!970 = !DILocation(line: 110, column: 34, scope: !919, inlinedAt: !924)
!971 = !DILocation(line: 110, column: 44, scope: !919, inlinedAt: !924)
!972 = !DILocation(line: 305, column: 27, scope: !936, inlinedAt: !973)
!973 = distinct !DILocation(line: 110, column: 7, scope: !919, inlinedAt: !924)
!974 = !DILocation(line: 0, scope: !936, inlinedAt: !973)
!975 = !DILocation(line: 105, column: 36, scope: !920, inlinedAt: !924)
!976 = distinct !{!976, !956, !977, !305}
!977 = !DILocation(line: 111, column: 5, scope: !921, inlinedAt: !924)
!978 = distinct !{!978, !820, !979, !305}
!979 = !DILocation(line: 463, column: 9, scope: !783)
!980 = !DILocation(line: 0, scope: !307, inlinedAt: !981)
!981 = distinct !DILocation(line: 465, column: 12, scope: !773)
!982 = !DILocation(line: 469, column: 21, scope: !789)
!983 = !DILocation(line: 469, column: 7, scope: !790)
!984 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !981)
!985 = !{!260, !245, i64 8}
!986 = !DILocation(line: 0, scope: !380, inlinedAt: !987)
!987 = distinct !DILocation(line: 471, column: 24, scope: !788)
!988 = !DILocation(line: 285, column: 20, scope: !380, inlinedAt: !987)
!989 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !987)
!990 = !DILocation(line: 0, scope: !788)
!991 = !DILocalVariable(name: "p", arg: 1, scope: !992, file: !161, line: 85, type: !546)
!992 = distinct !DISubprogram(name: "gsl_permutation_get", scope: !161, file: !161, line: 85, type: !993, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !995)
!993 = !DISubroutineType(types: !994)
!994 = !{!132, !546, !175}
!995 = !{!991, !996}
!996 = !DILocalVariable(name: "i", arg: 2, scope: !992, file: !161, line: 85, type: !175)
!997 = !DILocation(line: 0, scope: !992, inlinedAt: !998)
!998 = distinct !DILocation(line: 472, column: 24, scope: !788)
!999 = !DILocation(line: 93, column: 10, scope: !992, inlinedAt: !998)
!1000 = !{!242, !242, i64 0}
!1001 = !DILocation(line: 0, scope: !307, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 473, column: 23, scope: !788)
!1003 = !DILocation(line: 183, column: 20, scope: !307, inlinedAt: !1002)
!1004 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !1002)
!1005 = !DILocation(line: 474, column: 45, scope: !788)
!1006 = !DILocation(line: 305, column: 27, scope: !936, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 474, column: 11, scope: !788)
!1008 = !DILocation(line: 0, scope: !936, inlinedAt: !1007)
!1009 = !DILocation(line: 480, column: 21, scope: !795)
!1010 = !DILocation(line: 480, column: 7, scope: !796)
!1011 = !DILocation(line: 469, column: 27, scope: !789)
!1012 = distinct !{!1012, !983, !1013, !305}
!1013 = !DILocation(line: 475, column: 9, scope: !790)
!1014 = !DILocation(line: 483, column: 46, scope: !794)
!1015 = !DILocation(line: 0, scope: !380, inlinedAt: !1016)
!1016 = distinct !DILocation(line: 483, column: 25, scope: !794)
!1017 = !DILocation(line: 285, column: 20, scope: !380, inlinedAt: !1016)
!1018 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1016)
!1019 = !DILocation(line: 0, scope: !794)
!1020 = !DILocation(line: 0, scope: !380, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 484, column: 28, scope: !794)
!1022 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1021)
!1023 = !DILocation(line: 0, scope: !832, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 486, column: 11, scope: !794)
!1025 = !DILocation(line: 742, column: 9, scope: !843, inlinedAt: !1024)
!1026 = !DILocation(line: 742, column: 7, scope: !832, inlinedAt: !1024)
!1027 = !DILocation(line: 747, column: 12, scope: !842, inlinedAt: !1024)
!1028 = !DILocation(line: 747, column: 23, scope: !842, inlinedAt: !1024)
!1029 = !DILocation(line: 747, column: 21, scope: !842, inlinedAt: !1024)
!1030 = !DILocation(line: 747, column: 12, scope: !843, inlinedAt: !1024)
!1031 = !DILocation(line: 749, column: 18, scope: !841, inlinedAt: !1024)
!1032 = !DILocation(line: 749, column: 21, scope: !841, inlinedAt: !1024)
!1033 = !DILocation(line: 0, scope: !841, inlinedAt: !1024)
!1034 = !DILocation(line: 750, column: 37, scope: !841, inlinedAt: !1024)
!1035 = !DILocation(line: 750, column: 25, scope: !841, inlinedAt: !1024)
!1036 = !DILocation(line: 750, column: 23, scope: !841, inlinedAt: !1024)
!1037 = !DILocation(line: 752, column: 15, scope: !841, inlinedAt: !1024)
!1038 = !DILocation(line: 753, column: 5, scope: !841, inlinedAt: !1024)
!1039 = !DILocation(line: 756, column: 18, scope: !846, inlinedAt: !1024)
!1040 = !DILocation(line: 756, column: 21, scope: !846, inlinedAt: !1024)
!1041 = !DILocation(line: 0, scope: !846, inlinedAt: !1024)
!1042 = !DILocation(line: 757, column: 37, scope: !846, inlinedAt: !1024)
!1043 = !DILocation(line: 757, column: 25, scope: !846, inlinedAt: !1024)
!1044 = !DILocation(line: 757, column: 23, scope: !846, inlinedAt: !1024)
!1045 = !DILocation(line: 759, column: 15, scope: !846, inlinedAt: !1024)
!1046 = !DILocation(line: 0, scope: !843, inlinedAt: !1024)
!1047 = !DILocation(line: 0, scope: !900, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 487, column: 11, scope: !794)
!1049 = !DILocation(line: 84, column: 3, scope: !916, inlinedAt: !1048)
!1050 = !DILocation(line: 0, scope: !380, inlinedAt: !1051)
!1051 = distinct !DILocation(line: 86, column: 20, scope: !914, inlinedAt: !1048)
!1052 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1051)
!1053 = !DILocation(line: 0, scope: !914, inlinedAt: !1048)
!1054 = !DILocation(line: 0, scope: !380, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 87, column: 20, scope: !914, inlinedAt: !1048)
!1056 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1055)
!1057 = !DILocation(line: 88, column: 36, scope: !914, inlinedAt: !1048)
!1058 = !DILocation(line: 88, column: 46, scope: !914, inlinedAt: !1048)
!1059 = !DILocation(line: 305, column: 27, scope: !936, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 88, column: 7, scope: !914, inlinedAt: !1048)
!1061 = !DILocation(line: 0, scope: !936, inlinedAt: !1060)
!1062 = !DILocation(line: 89, column: 36, scope: !914, inlinedAt: !1048)
!1063 = !DILocation(line: 89, column: 46, scope: !914, inlinedAt: !1048)
!1064 = !DILocation(line: 305, column: 27, scope: !936, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 89, column: 7, scope: !914, inlinedAt: !1048)
!1066 = !DILocation(line: 0, scope: !936, inlinedAt: !1065)
!1067 = !DILocation(line: 84, column: 23, scope: !915, inlinedAt: !1048)
!1068 = distinct !{!1068, !1049, !1069, !305}
!1069 = !DILocation(line: 90, column: 5, scope: !916, inlinedAt: !1048)
!1070 = !DILocation(line: 105, column: 12, scope: !921, inlinedAt: !1048)
!1071 = !DILocation(line: 105, column: 3, scope: !921, inlinedAt: !1048)
!1072 = !DILocation(line: 0, scope: !380, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 107, column: 20, scope: !919, inlinedAt: !1048)
!1074 = !DILocation(line: 285, column: 20, scope: !380, inlinedAt: !1073)
!1075 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1073)
!1076 = !DILocation(line: 0, scope: !919, inlinedAt: !1048)
!1077 = !DILocation(line: 0, scope: !380, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 108, column: 20, scope: !919, inlinedAt: !1048)
!1079 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1078)
!1080 = !DILocation(line: 109, column: 34, scope: !919, inlinedAt: !1048)
!1081 = !DILocation(line: 109, column: 44, scope: !919, inlinedAt: !1048)
!1082 = !DILocation(line: 305, column: 27, scope: !936, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 109, column: 7, scope: !919, inlinedAt: !1048)
!1084 = !DILocation(line: 0, scope: !936, inlinedAt: !1083)
!1085 = !DILocation(line: 110, column: 34, scope: !919, inlinedAt: !1048)
!1086 = !DILocation(line: 110, column: 44, scope: !919, inlinedAt: !1048)
!1087 = !DILocation(line: 305, column: 27, scope: !936, inlinedAt: !1088)
!1088 = distinct !DILocation(line: 110, column: 7, scope: !919, inlinedAt: !1048)
!1089 = !DILocation(line: 0, scope: !936, inlinedAt: !1088)
!1090 = !DILocation(line: 105, column: 36, scope: !920, inlinedAt: !1048)
!1091 = !DILocation(line: 105, column: 30, scope: !920, inlinedAt: !1048)
!1092 = distinct !{!1092, !1071, !1093, !305}
!1093 = !DILocation(line: 111, column: 5, scope: !921, inlinedAt: !1048)
!1094 = !DILocation(line: 480, column: 27, scope: !795)
!1095 = distinct !{!1095, !1010, !1096, !305}
!1096 = !DILocation(line: 488, column: 9, scope: !796)
!1097 = !DILocation(line: 0, scope: !775)
!1098 = !DILocation(line: 492, column: 1, scope: !763)
