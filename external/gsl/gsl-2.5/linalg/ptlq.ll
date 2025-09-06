; ModuleID = 'ptlq.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 82, i32 noundef 19) #7, !dbg !255
  br label %140, !dbg !255

19:                                               ; preds = %5
  %20 = load i64, ptr %2, align 8, !dbg !258, !tbaa !259
  %21 = icmp eq i64 %20, %12, !dbg !261
  br i1 %21, label %23, label %22, !dbg !262

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 86, i32 noundef 19) #7, !dbg !263
  br label %140, !dbg !263

23:                                               ; preds = %19
  %24 = load i64, ptr %4, align 8, !dbg !266, !tbaa !250
  %25 = icmp eq i64 %24, %12, !dbg !267
  br i1 %25, label %27, label %26, !dbg !268

26:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 90, i32 noundef 19) #7, !dbg !269
  br label %140, !dbg !269

27:                                               ; preds = %23
  store i32 1, ptr %3, align 4, !dbg !272, !tbaa !273
  tail call void @gsl_permutation_init(ptr noundef nonnull %2) #7, !dbg !274
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
  br i1 %33, label %140, label %34, !dbg !279

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %37 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %38 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %39 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %50, !dbg !279

41:                                               ; preds = %29, %41
  %42 = phi i64 [ 0, %29 ], [ %48, %41 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !177, metadata !DIExpression()), !dbg !275
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7, !dbg !280
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %42) #7, !dbg !281
  %43 = call double @gsl_blas_dnrm2(ptr noundef nonnull %6) #7, !dbg !282
  tail call void @llvm.dbg.value(metadata double %43, metadata !191, metadata !DIExpression()), !dbg !229
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !288, metadata !DIExpression()), !dbg !290
  tail call void @llvm.dbg.value(metadata double %43, metadata !289, metadata !DIExpression()), !dbg !290
  %44 = load ptr, ptr %30, align 8, !dbg !292, !tbaa !293
  %45 = load i64, ptr %31, align 8, !dbg !294, !tbaa !295
  %46 = mul i64 %45, %42, !dbg !296
  %47 = getelementptr inbounds double, ptr %44, i64 %46, !dbg !297
  store double %43, ptr %47, align 8, !dbg !298, !tbaa !299
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7, !dbg !301
  %48 = add nuw i64 %42, 1, !dbg !302
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !177, metadata !DIExpression()), !dbg !275
  %49 = icmp eq i64 %48, %12, !dbg !276
  br i1 %49, label %32, label %41, !dbg !277, !llvm.loop !303

50:                                               ; preds = %34, %138
  %51 = phi i64 [ 0, %34 ], [ %54, %138 ]
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

60:                                               ; preds = %56, %60
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
  %75 = call i32 @gsl_matrix_swap_rows(ptr noundef nonnull %0, i64 noundef %51, i64 noundef %68) #7, !dbg !338
  %76 = call i32 @gsl_permutation_swap(ptr noundef nonnull %2, i64 noundef %51, i64 noundef %68) #7, !dbg !340
  %77 = call i32 @gsl_vector_swap_elements(ptr noundef nonnull %4, i64 noundef %51, i64 noundef %68) #7, !dbg !341
  %78 = load i32, ptr %3, align 4, !dbg !342, !tbaa !273
  %79 = sub nsw i32 0, %78, !dbg !343
  store i32 %79, ptr %3, align 4, !dbg !344, !tbaa !273
  br label %80, !dbg !345

80:                                               ; preds = %50, %74, %72
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #7, !dbg !346
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %51) #7, !dbg !347
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #7, !dbg !348
  %81 = sub i64 %14, %51, !dbg !349
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %7, i64 noundef %51, i64 noundef %81) #7, !dbg !350
  %82 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %8) #7, !dbg !351
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
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #7, !dbg !360
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7, !dbg !360
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !196, metadata !DIExpression()), !dbg !318
  br label %138, !dbg !361

88:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #7, !dbg !362
  %89 = sub i64 %12, %54, !dbg !363
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef %54, i64 noundef %51, i64 noundef %89, i64 noundef %81) #7, !dbg !364
  %90 = call i32 @gsl_linalg_householder_mh(double noundef %82, ptr noundef nonnull %8, ptr noundef nonnull %9) #7, !dbg !365
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #7, !dbg !366
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #7, !dbg !360
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7, !dbg !360
  %91 = icmp ult i64 %54, %14, !dbg !367
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !196, metadata !DIExpression()), !dbg !318
  %92 = and i1 %91, %55, !dbg !361
  br i1 %92, label %93, label %138, !dbg !361

93:                                               ; preds = %88
  %94 = sub i64 %14, %54
  %95 = load ptr, ptr %35, align 8, !dbg !368, !tbaa !293
  %96 = load i64, ptr %36, align 8, !dbg !370, !tbaa !295
  br label %97, !dbg !371

97:                                               ; preds = %93, %133
  %98 = phi i64 [ %96, %93 ], [ %134, %133 ], !dbg !370
  %99 = phi ptr [ %95, %93 ], [ %135, %133 ], !dbg !368
  %100 = phi i64 [ %54, %93 ], [ %136, %133 ]
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !196, metadata !DIExpression()), !dbg !318
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !372
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !313, metadata !DIExpression()), !dbg !372
  %101 = mul i64 %98, %100, !dbg !373
  %102 = getelementptr inbounds double, ptr %99, i64 %101, !dbg !374
  %103 = load double, ptr %102, align 8, !dbg !374, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %103, metadata !214, metadata !DIExpression()), !dbg !375
  %104 = fcmp ogt double %103, 0.000000e+00, !dbg !376
  br i1 %104, label %105, label %133, !dbg !377

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
  br i1 %114, label %115, label %120, !dbg !400

115:                                              ; preds = %105
  %116 = fmul double %112, %112, !dbg !401
  %117 = fsub double 1.000000e+00, %116, !dbg !402
  %118 = call double @sqrt(double noundef %117) #7, !dbg !403
  %119 = fmul double %103, %118, !dbg !404
  tail call void @llvm.dbg.value(metadata double %119, metadata !220, metadata !DIExpression()), !dbg !378
  br label %120

120:                                              ; preds = %105, %115
  %121 = phi double [ %119, %115 ], [ 0.000000e+00, %105 ], !dbg !405
  tail call void @llvm.dbg.value(metadata double %121, metadata !220, metadata !DIExpression()), !dbg !378
  %122 = fdiv double %121, %103, !dbg !406
  %123 = call double @llvm.fabs.f64(double %122), !dbg !407
  %124 = fcmp olt double %123, 0x3E71E3779B97F4A8, !dbg !408
  br i1 %124, label %125, label %127, !dbg !409

125:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #7, !dbg !410
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %0, i64 noundef %100) #7, !dbg !411
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #7, !dbg !412
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %11, ptr noundef nonnull %10, i64 noundef %54, i64 noundef %94) #7, !dbg !413
  %126 = call double @gsl_blas_dnrm2(ptr noundef nonnull %11) #7, !dbg !414
  tail call void @llvm.dbg.value(metadata double %126, metadata !220, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #7, !dbg !415
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #7, !dbg !415
  br label %127, !dbg !416

127:                                              ; preds = %125, %120
  %128 = phi double [ %126, %125 ], [ %121, %120 ], !dbg !378
  tail call void @llvm.dbg.value(metadata double %128, metadata !220, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !288, metadata !DIExpression()), !dbg !417
  tail call void @llvm.dbg.value(metadata double %128, metadata !289, metadata !DIExpression()), !dbg !417
  %129 = load ptr, ptr %35, align 8, !dbg !419, !tbaa !293
  %130 = load i64, ptr %36, align 8, !dbg !420, !tbaa !295
  %131 = mul i64 %130, %100, !dbg !421
  %132 = getelementptr inbounds double, ptr %129, i64 %131, !dbg !422
  store double %128, ptr %132, align 8, !dbg !423, !tbaa !299
  br label %133, !dbg !424

133:                                              ; preds = %127, %97
  %134 = phi i64 [ %130, %127 ], [ %98, %97 ]
  %135 = phi ptr [ %129, %127 ], [ %99, %97 ]
  %136 = add nuw i64 %100, 1, !dbg !425
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !196, metadata !DIExpression()), !dbg !318
  %137 = icmp ult i64 %136, %12, !dbg !426
  br i1 %137, label %97, label %138, !dbg !371, !llvm.loop !427

138:                                              ; preds = %133, %87, %88
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !177, metadata !DIExpression()), !dbg !275
  %139 = icmp eq i64 %54, %15, !dbg !278
  br i1 %139, label %140, label %50, !dbg !279, !llvm.loop !429

140:                                              ; preds = %138, %32, %26, %22, %18
  %141 = phi i32 [ 19, %18 ], [ 19, %22 ], [ 19, %26 ], [ 0, %32 ], [ 0, %138 ], !dbg !431
  ret i32 %141, !dbg !432
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !433 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !438 void @gsl_permutation_init(ptr noundef) local_unnamed_addr #2

declare !dbg !441 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !444 double @gsl_blas_dnrm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !448 i32 @gsl_matrix_swap_rows(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !451 i32 @gsl_permutation_swap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !454 i32 @gsl_vector_swap_elements(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !457 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !460 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !464 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !467 i32 @gsl_linalg_householder_mh(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !470 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_decomp2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr noundef %6) local_unnamed_addr #0 !dbg !474 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !478, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !479, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !480, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !481, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !482, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !483, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !484, metadata !DIExpression()), !dbg !487
  %8 = load i64, ptr %0, align 8, !dbg !488, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !485, metadata !DIExpression()), !dbg !487
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !489
  %10 = load i64, ptr %9, align 8, !dbg !489, !tbaa !248
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !486, metadata !DIExpression()), !dbg !487
  %11 = load i64, ptr %1, align 8, !dbg !490, !tbaa !240
  %12 = icmp eq i64 %11, %10, !dbg !492
  br i1 %12, label %13, label %17, !dbg !493

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !494
  %15 = load i64, ptr %14, align 8, !dbg !494, !tbaa !248
  %16 = icmp eq i64 %15, %10, !dbg !495
  br i1 %16, label %18, label %17, !dbg !496

17:                                               ; preds = %7, %13
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 204, i32 noundef 19) #7, !dbg !497
  br label %43, !dbg !497

18:                                               ; preds = %13
  %19 = load i64, ptr %2, align 8, !dbg !500, !tbaa !240
  %20 = icmp eq i64 %19, %8, !dbg !502
  br i1 %20, label %21, label %25, !dbg !503

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !504
  %23 = load i64, ptr %22, align 8, !dbg !504, !tbaa !248
  %24 = icmp eq i64 %23, %10, !dbg !505
  br i1 %24, label %26, label %25, !dbg !506

25:                                               ; preds = %18, %21
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 208, i32 noundef 19) #7, !dbg !507
  br label %43, !dbg !507

26:                                               ; preds = %21
  %27 = load i64, ptr %3, align 8, !dbg !510, !tbaa !250
  %28 = tail call i64 @llvm.umin.i64(i64 %10, i64 %8), !dbg !512
  %29 = icmp eq i64 %27, %28, !dbg !513
  br i1 %29, label %31, label %30, !dbg !514

30:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 212, i32 noundef 19) #7, !dbg !515
  br label %43, !dbg !515

31:                                               ; preds = %26
  %32 = load i64, ptr %4, align 8, !dbg !518, !tbaa !259
  %33 = icmp eq i64 %32, %8, !dbg !520
  br i1 %33, label %35, label %34, !dbg !521

34:                                               ; preds = %31
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 216, i32 noundef 19) #7, !dbg !522
  br label %43, !dbg !522

35:                                               ; preds = %31
  %36 = load i64, ptr %6, align 8, !dbg !525, !tbaa !250
  %37 = icmp eq i64 %36, %8, !dbg !527
  br i1 %37, label %39, label %38, !dbg !528

38:                                               ; preds = %35
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 220, i32 noundef 19) #7, !dbg !529
  br label %43, !dbg !529

39:                                               ; preds = %35
  %40 = tail call i32 @gsl_matrix_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %0) #7, !dbg !532
  %41 = tail call i32 @gsl_linalg_PTLQ_decomp(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6), !dbg !533, !range !534
  %42 = tail call i32 @gsl_linalg_LQ_unpack(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #7, !dbg !535
  br label %43, !dbg !536

43:                                               ; preds = %39, %38, %34, %30, %25, %17
  %44 = phi i32 [ 19, %17 ], [ 19, %25 ], [ 19, %30 ], [ 19, %34 ], [ 19, %38 ], [ 0, %39 ], !dbg !487
  ret i32 %44, !dbg !537
}

declare !dbg !538 i32 @gsl_matrix_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !541 i32 @gsl_linalg_LQ_unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_solve_T(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !544 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !550, metadata !DIExpression()), !dbg !555
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !551, metadata !DIExpression()), !dbg !555
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !552, metadata !DIExpression()), !dbg !555
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !553, metadata !DIExpression()), !dbg !555
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !554, metadata !DIExpression()), !dbg !555
  %6 = load i64, ptr %0, align 8, !dbg !556, !tbaa !240
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !558
  %8 = load i64, ptr %7, align 8, !dbg !558, !tbaa !248
  %9 = icmp eq i64 %6, %8, !dbg !559
  br i1 %9, label %11, label %10, !dbg !560

10:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 252, i32 noundef 20) #7, !dbg !561
  br label %26, !dbg !561

11:                                               ; preds = %5
  %12 = load i64, ptr %2, align 8, !dbg !564, !tbaa !259
  %13 = icmp eq i64 %6, %12, !dbg !566
  br i1 %13, label %15, label %14, !dbg !567

14:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 256, i32 noundef 19) #7, !dbg !568
  br label %26, !dbg !568

15:                                               ; preds = %11
  %16 = load i64, ptr %3, align 8, !dbg !571, !tbaa !250
  %17 = icmp eq i64 %6, %16, !dbg !573
  br i1 %17, label %19, label %18, !dbg !574

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 260, i32 noundef 19) #7, !dbg !575
  br label %26, !dbg !575

19:                                               ; preds = %15
  %20 = load i64, ptr %4, align 8, !dbg !578, !tbaa !250
  %21 = icmp eq i64 %6, %20, !dbg !580
  br i1 %21, label %23, label %22, !dbg !581

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 264, i32 noundef 19) #7, !dbg !582
  br label %26, !dbg !582

23:                                               ; preds = %19
  %24 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %3) #7, !dbg !585
  %25 = tail call i32 @gsl_linalg_PTLQ_svx_T(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4), !dbg !587, !range !588
  br label %26, !dbg !589

26:                                               ; preds = %10, %14, %18, %22, %23
  %27 = phi i32 [ 20, %10 ], [ 19, %14 ], [ 19, %18 ], [ 19, %22 ], [ 0, %23 ], !dbg !590
  ret i32 %27, !dbg !591
}

declare !dbg !592 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_svx_T(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !595 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !599, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !600, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !601, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !602, metadata !DIExpression()), !dbg !603
  %5 = load i64, ptr %0, align 8, !dbg !604, !tbaa !240
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !606
  %7 = load i64, ptr %6, align 8, !dbg !606, !tbaa !248
  %8 = icmp eq i64 %5, %7, !dbg !607
  br i1 %8, label %10, label %9, !dbg !608

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef 20) #7, !dbg !609
  br label %22, !dbg !609

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !612, !tbaa !259
  %12 = icmp eq i64 %5, %11, !dbg !614
  br i1 %12, label %14, label %13, !dbg !615

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 288, i32 noundef 19) #7, !dbg !616
  br label %22, !dbg !616

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !619, !tbaa !250
  %16 = icmp eq i64 %5, %15, !dbg !621
  br i1 %16, label %18, label %17, !dbg !622

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 292, i32 noundef 19) #7, !dbg !623
  br label %22, !dbg !623

18:                                               ; preds = %14
  %19 = tail call i32 @gsl_linalg_LQ_vecQT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #7, !dbg !626
  %20 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #7, !dbg !628
  %21 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %2, ptr noundef nonnull %3) #7, !dbg !629
  br label %22, !dbg !630

22:                                               ; preds = %9, %13, %17, %18
  %23 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 0, %18 ], !dbg !631
  ret i32 %23, !dbg !632
}

declare !dbg !633 i32 @gsl_linalg_LQ_vecQT(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !636 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !643 i32 @gsl_permute_vector_inverse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_LQsolve_T(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !647 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !651, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !652, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !653, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !654, metadata !DIExpression()), !dbg !656
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !655, metadata !DIExpression()), !dbg !656
  %6 = load i64, ptr %0, align 8, !dbg !657, !tbaa !240
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !659
  %8 = load i64, ptr %7, align 8, !dbg !659, !tbaa !248
  %9 = icmp eq i64 %6, %8, !dbg !660
  br i1 %9, label %10, label %27, !dbg !661

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8, !dbg !662, !tbaa !240
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !663
  %13 = load i64, ptr %12, align 8, !dbg !663, !tbaa !248
  %14 = icmp eq i64 %11, %13, !dbg !664
  br i1 %14, label %15, label %27, !dbg !665

15:                                               ; preds = %10
  %16 = load i64, ptr %2, align 8, !dbg !666, !tbaa !259
  %17 = icmp eq i64 %6, %16, !dbg !668
  %18 = icmp eq i64 %6, %11
  %19 = and i1 %18, %17, !dbg !669
  br i1 %19, label %20, label %27, !dbg !669

20:                                               ; preds = %15
  %21 = load i64, ptr %3, align 8, !dbg !670, !tbaa !250
  %22 = icmp eq i64 %6, %21, !dbg !671
  br i1 %22, label %23, label %27, !dbg !672

23:                                               ; preds = %20
  %24 = tail call i32 @gsl_blas_dgemv(i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %3, double noundef 0.000000e+00, ptr noundef %4) #7, !dbg !673
  %25 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %1, ptr noundef %4) #7, !dbg !675
  %26 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %2, ptr noundef %4) #7, !dbg !676
  br label %27, !dbg !677

27:                                               ; preds = %15, %20, %5, %10, %23
  %28 = phi i32 [ 0, %23 ], [ 20, %10 ], [ 20, %5 ], [ 19, %20 ], [ 19, %15 ], !dbg !678
  ret i32 %28, !dbg !679
}

declare !dbg !680 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_Lsolve_T(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !683 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !687, metadata !DIExpression()), !dbg !691
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !688, metadata !DIExpression()), !dbg !691
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !689, metadata !DIExpression()), !dbg !691
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !690, metadata !DIExpression()), !dbg !691
  %5 = load i64, ptr %0, align 8, !dbg !692, !tbaa !240
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !694
  %7 = load i64, ptr %6, align 8, !dbg !694, !tbaa !248
  %8 = icmp eq i64 %5, %7, !dbg !695
  br i1 %8, label %10, label %9, !dbg !696

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 352, i32 noundef 20) #7, !dbg !697
  br label %26, !dbg !697

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !700, !tbaa !250
  %12 = icmp eq i64 %5, %11, !dbg !702
  br i1 %12, label %14, label %13, !dbg !703

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 356, i32 noundef 19) #7, !dbg !704
  br label %26, !dbg !704

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !707, !tbaa !250
  %16 = icmp eq i64 %5, %15, !dbg !709
  br i1 %16, label %18, label %17, !dbg !710

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 360, i32 noundef 19) #7, !dbg !711
  br label %26, !dbg !711

18:                                               ; preds = %14
  %19 = load i64, ptr %1, align 8, !dbg !714, !tbaa !259
  %20 = icmp eq i64 %19, %5, !dbg !716
  br i1 %20, label %22, label %21, !dbg !717

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 364, i32 noundef 19) #7, !dbg !718
  br label %26, !dbg !718

22:                                               ; preds = %18
  %23 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2) #7, !dbg !721
  %24 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #7, !dbg !723
  %25 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %3) #7, !dbg !724
  br label %26, !dbg !725

26:                                               ; preds = %9, %13, %17, %21, %22
  %27 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 19, %21 ], [ 0, %22 ], !dbg !726
  ret i32 %27, !dbg !727
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_Lsvx_T(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !728 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !732, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !733, metadata !DIExpression()), !dbg !735
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !734, metadata !DIExpression()), !dbg !735
  %4 = load i64, ptr %0, align 8, !dbg !736, !tbaa !240
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !738
  %6 = load i64, ptr %5, align 8, !dbg !738, !tbaa !248
  %7 = icmp eq i64 %4, %6, !dbg !739
  br i1 %7, label %9, label %8, !dbg !740

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 390, i32 noundef 20) #7, !dbg !741
  br label %20, !dbg !741

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8, !dbg !744, !tbaa !250
  %11 = icmp eq i64 %4, %10, !dbg !746
  br i1 %11, label %13, label %12, !dbg !747

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 394, i32 noundef 19) #7, !dbg !748
  br label %20, !dbg !748

13:                                               ; preds = %9
  %14 = load i64, ptr %1, align 8, !dbg !751, !tbaa !259
  %15 = icmp eq i64 %14, %4, !dbg !753
  br i1 %15, label %17, label %16, !dbg !754

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 398, i32 noundef 19) #7, !dbg !755
  br label %20, !dbg !755

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #7, !dbg !758
  %19 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %2) #7, !dbg !760
  br label %20, !dbg !761

20:                                               ; preds = %8, %12, %16, %17
  %21 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 0, %17 ], !dbg !762
  ret i32 %21, !dbg !763
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gsl_linalg_PTLQ_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #5 !dbg !764 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !768, metadata !DIExpression()), !dbg !801
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !769, metadata !DIExpression()), !dbg !801
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !770, metadata !DIExpression()), !dbg !801
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !771, metadata !DIExpression()), !dbg !801
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !772, metadata !DIExpression()), !dbg !801
  %6 = load i64, ptr %0, align 8, !dbg !802, !tbaa !240
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !803
  %8 = load i64, ptr %7, align 8, !dbg !803, !tbaa !248
  %9 = icmp eq i64 %6, %8, !dbg !804
  br i1 %9, label %10, label %322, !dbg !805

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8, !dbg !806, !tbaa !240
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !807
  %13 = load i64, ptr %12, align 8, !dbg !807, !tbaa !248
  %14 = icmp eq i64 %11, %13, !dbg !808
  br i1 %14, label %15, label %322, !dbg !809

15:                                               ; preds = %10
  %16 = icmp eq i64 %11, %6, !dbg !810
  br i1 %16, label %17, label %322, !dbg !811

17:                                               ; preds = %15
  %18 = load i64, ptr %3, align 8, !dbg !812, !tbaa !250
  %19 = icmp eq i64 %18, %6, !dbg !813
  br i1 %19, label %20, label %322, !dbg !814

20:                                               ; preds = %17
  %21 = load i64, ptr %4, align 8, !dbg !815, !tbaa !250
  %22 = icmp eq i64 %21, %6, !dbg !816
  br i1 %22, label %23, label %322, !dbg !817

23:                                               ; preds = %20
  %24 = add i64 %6, -1, !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !777, metadata !DIExpression()), !dbg !819
  %25 = icmp eq i64 %24, 0, !dbg !820
  %26 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !293
  br i1 %25, label %152, label %28, !dbg !821

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
  br label %39, !dbg !821

39:                                               ; preds = %28, %147
  %40 = phi i64 [ %24, %28 ], [ %148, %147 ]
  %41 = phi i64 [ %6, %28 ], [ %40, %147 ]
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !313, metadata !DIExpression()), !dbg !822
  %42 = mul i64 %30, %40, !dbg !824
  %43 = getelementptr inbounds double, ptr %27, i64 %42, !dbg !825
  %44 = load double, ptr %43, align 8, !dbg !825, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %44, metadata !786, metadata !DIExpression()), !dbg !826
  %45 = add i64 %41, -2, !dbg !827
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !828
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !313, metadata !DIExpression()), !dbg !828
  %46 = mul i64 %30, %45, !dbg !830
  %47 = getelementptr inbounds double, ptr %27, i64 %46, !dbg !831
  %48 = load double, ptr %47, align 8, !dbg !831, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %48, metadata !787, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata double %48, metadata !832, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata double %44, metadata !838, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr undef, metadata !839, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata ptr undef, metadata !840, metadata !DIExpression()), !dbg !849
  %49 = fcmp oeq double %44, 0.000000e+00, !dbg !851
  br i1 %49, label %70, label %50, !dbg !852

50:                                               ; preds = %39
  %51 = tail call double @llvm.fabs.f64(double %44), !dbg !853
  %52 = tail call double @llvm.fabs.f64(double %48), !dbg !854
  %53 = fcmp ogt double %51, %52, !dbg !855
  br i1 %53, label %54, label %62, !dbg !856

54:                                               ; preds = %50
  %55 = fneg double %48, !dbg !857
  %56 = fdiv double %55, %44, !dbg !858
  call void @llvm.dbg.value(metadata double %56, metadata !841, metadata !DIExpression()), !dbg !859
  %57 = fmul double %56, %56, !dbg !860
  %58 = fadd double %57, 1.000000e+00, !dbg !861
  %59 = tail call double @llvm.sqrt.f64(double %58), !dbg !862
  %60 = fdiv double 1.000000e+00, %59, !dbg !863
  call void @llvm.dbg.value(metadata double %60, metadata !845, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata double %60, metadata !785, metadata !DIExpression()), !dbg !826
  %61 = fmul double %56, %60, !dbg !864
  tail call void @llvm.dbg.value(metadata double %61, metadata !781, metadata !DIExpression()), !dbg !826
  br label %70, !dbg !865

62:                                               ; preds = %50
  %63 = fneg double %44, !dbg !866
  %64 = fdiv double %63, %48, !dbg !867
  call void @llvm.dbg.value(metadata double %64, metadata !846, metadata !DIExpression()), !dbg !868
  %65 = fmul double %64, %64, !dbg !869
  %66 = fadd double %65, 1.000000e+00, !dbg !870
  %67 = tail call double @llvm.sqrt.f64(double %66), !dbg !871
  %68 = fdiv double 1.000000e+00, %67, !dbg !872
  call void @llvm.dbg.value(metadata double %68, metadata !848, metadata !DIExpression()), !dbg !868
  tail call void @llvm.dbg.value(metadata double %68, metadata !781, metadata !DIExpression()), !dbg !826
  %69 = fmul double %64, %68, !dbg !873
  tail call void @llvm.dbg.value(metadata double %69, metadata !785, metadata !DIExpression()), !dbg !826
  br label %70

70:                                               ; preds = %39, %54, %62
  %71 = phi double [ %61, %54 ], [ %68, %62 ], [ 1.000000e+00, %39 ], !dbg !874
  %72 = phi double [ %60, %54 ], [ %69, %62 ], [ 0.000000e+00, %39 ], !dbg !874
  tail call void @llvm.dbg.value(metadata double %72, metadata !785, metadata !DIExpression()), !dbg !826
  tail call void @llvm.dbg.value(metadata double %71, metadata !781, metadata !DIExpression()), !dbg !826
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !875, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !880, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !881, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata double %71, metadata !882, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata double %72, metadata !883, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !313, metadata !DIExpression()), !dbg !888
  tail call void @llvm.dbg.value(metadata double %48, metadata !884, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !890
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !313, metadata !DIExpression()), !dbg !890
  tail call void @llvm.dbg.value(metadata double %44, metadata !885, metadata !DIExpression()), !dbg !886
  %73 = fmul double %48, %71, !dbg !892
  %74 = fmul double %44, %72, !dbg !893
  %75 = fsub double %73, %74, !dbg !894
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !288, metadata !DIExpression()), !dbg !895
  tail call void @llvm.dbg.value(metadata double %75, metadata !289, metadata !DIExpression()), !dbg !895
  store double %75, ptr %47, align 8, !dbg !897, !tbaa !299
  %76 = fmul double %48, %72, !dbg !898
  %77 = fmul double %44, %71, !dbg !899
  %78 = fadd double %77, %76, !dbg !900
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !283, metadata !DIExpression()), !dbg !901
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !288, metadata !DIExpression()), !dbg !901
  tail call void @llvm.dbg.value(metadata double %78, metadata !289, metadata !DIExpression()), !dbg !901
  store double %78, ptr %43, align 8, !dbg !903, !tbaa !299
  call void @llvm.dbg.value(metadata i64 %8, metadata !904, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 %6, metadata !910, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %0, metadata !911, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %1, metadata !912, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 %45, metadata !913, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 %40, metadata !914, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata double %71, metadata !915, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata double %72, metadata !916, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()), !dbg !928
  br i1 %31, label %125, label %79, !dbg !930

79:                                               ; preds = %70
  %80 = load ptr, ptr %32, align 8, !tbaa !391
  %81 = load i64, ptr %33, align 8, !tbaa !393
  %82 = mul i64 %81, %45
  %83 = getelementptr double, ptr %80, i64 %82
  %84 = mul i64 %81, %40
  %85 = getelementptr double, ptr %80, i64 %84
  br label %86, !dbg !930

86:                                               ; preds = %86, %79
  %87 = phi i64 [ 0, %79 ], [ %110, %86 ]
  %88 = phi i64 [ 0, %79 ], [ %111, %86 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !917, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i64 %45, metadata !386, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i64 %87, metadata !387, metadata !DIExpression()), !dbg !931
  %89 = getelementptr double, ptr %83, i64 %87, !dbg !933
  %90 = load double, ptr %89, align 8, !dbg !933, !tbaa !299
  call void @llvm.dbg.value(metadata double %90, metadata !918, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64 %40, metadata !386, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64 %87, metadata !387, metadata !DIExpression()), !dbg !935
  %91 = getelementptr double, ptr %85, i64 %87, !dbg !937
  %92 = load double, ptr %91, align 8, !dbg !937, !tbaa !299
  call void @llvm.dbg.value(metadata double %92, metadata !922, metadata !DIExpression()), !dbg !934
  %93 = fmul double %71, %90, !dbg !938
  %94 = fmul double %72, %92, !dbg !939
  %95 = fsub double %93, %94, !dbg !940
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %45, metadata !946, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %87, metadata !947, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %95, metadata !948, metadata !DIExpression()), !dbg !949
  store double %95, ptr %89, align 8, !dbg !951, !tbaa !299
  %96 = fmul double %72, %90, !dbg !952
  %97 = fmul double %71, %92, !dbg !953
  %98 = fadd double %96, %97, !dbg !954
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %40, metadata !946, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %87, metadata !947, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %98, metadata !948, metadata !DIExpression()), !dbg !955
  store double %98, ptr %91, align 8, !dbg !957, !tbaa !299
  %99 = or disjoint i64 %87, 1, !dbg !958
  call void @llvm.dbg.value(metadata i64 %99, metadata !917, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i64 %99, metadata !917, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i64 %45, metadata !386, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i64 %99, metadata !387, metadata !DIExpression()), !dbg !931
  %100 = getelementptr double, ptr %83, i64 %99, !dbg !933
  %101 = load double, ptr %100, align 8, !dbg !933, !tbaa !299
  call void @llvm.dbg.value(metadata double %101, metadata !918, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64 %40, metadata !386, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64 %99, metadata !387, metadata !DIExpression()), !dbg !935
  %102 = getelementptr double, ptr %85, i64 %99, !dbg !937
  %103 = load double, ptr %102, align 8, !dbg !937, !tbaa !299
  call void @llvm.dbg.value(metadata double %103, metadata !922, metadata !DIExpression()), !dbg !934
  %104 = fmul double %71, %101, !dbg !938
  %105 = fmul double %72, %103, !dbg !939
  %106 = fsub double %104, %105, !dbg !940
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %45, metadata !946, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %99, metadata !947, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %106, metadata !948, metadata !DIExpression()), !dbg !949
  store double %106, ptr %100, align 8, !dbg !951, !tbaa !299
  %107 = fmul double %72, %101, !dbg !952
  %108 = fmul double %71, %103, !dbg !953
  %109 = fadd double %107, %108, !dbg !954
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %40, metadata !946, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %99, metadata !947, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %109, metadata !948, metadata !DIExpression()), !dbg !955
  store double %109, ptr %102, align 8, !dbg !957, !tbaa !299
  %110 = add nuw i64 %87, 2, !dbg !958
  call void @llvm.dbg.value(metadata i64 %110, metadata !917, metadata !DIExpression()), !dbg !928
  %111 = add i64 %88, 2, !dbg !930
  %112 = icmp eq i64 %111, %37, !dbg !930
  br i1 %112, label %113, label %86, !dbg !930, !llvm.loop !959

113:                                              ; preds = %86
  br i1 %38, label %125, label %114, !dbg !930

114:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i64 %110, metadata !917, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i64 %45, metadata !386, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i64 %110, metadata !387, metadata !DIExpression()), !dbg !931
  %115 = getelementptr double, ptr %83, i64 %110, !dbg !933
  %116 = load double, ptr %115, align 8, !dbg !933, !tbaa !299
  call void @llvm.dbg.value(metadata double %116, metadata !918, metadata !DIExpression()), !dbg !934
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64 %40, metadata !386, metadata !DIExpression()), !dbg !935
  call void @llvm.dbg.value(metadata i64 %110, metadata !387, metadata !DIExpression()), !dbg !935
  %117 = getelementptr double, ptr %85, i64 %110, !dbg !937
  %118 = load double, ptr %117, align 8, !dbg !937, !tbaa !299
  call void @llvm.dbg.value(metadata double %118, metadata !922, metadata !DIExpression()), !dbg !934
  %119 = fmul double %71, %116, !dbg !938
  %120 = fmul double %72, %118, !dbg !939
  %121 = fsub double %119, %120, !dbg !940
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %45, metadata !946, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata i64 %110, metadata !947, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata double %121, metadata !948, metadata !DIExpression()), !dbg !949
  store double %121, ptr %115, align 8, !dbg !951, !tbaa !299
  %122 = fmul double %72, %116, !dbg !952
  %123 = fmul double %71, %118, !dbg !953
  %124 = fadd double %122, %123, !dbg !954
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %40, metadata !946, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata i64 %110, metadata !947, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.value(metadata double %124, metadata !948, metadata !DIExpression()), !dbg !955
  store double %124, ptr %117, align 8, !dbg !957, !tbaa !299
  call void @llvm.dbg.value(metadata i64 %110, metadata !917, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !928
  br label %125, !dbg !961

125:                                              ; preds = %114, %113, %70
  %126 = tail call i64 @llvm.umin.i64(i64 %45, i64 %40), !dbg !961
  call void @llvm.dbg.value(metadata i64 %126, metadata !917, metadata !DIExpression()), !dbg !928
  %127 = icmp ult i64 %126, %6, !dbg !962
  br i1 %127, label %128, label %147, !dbg !963

128:                                              ; preds = %125
  %129 = load ptr, ptr %34, align 8, !tbaa !391
  %130 = load i64, ptr %35, align 8, !tbaa !393
  br label %131, !dbg !963

131:                                              ; preds = %131, %128
  %132 = phi i64 [ %126, %128 ], [ %145, %131 ]
  call void @llvm.dbg.value(metadata i64 %132, metadata !917, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %132, metadata !386, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %45, metadata !387, metadata !DIExpression()), !dbg !964
  %133 = mul i64 %132, %130, !dbg !966
  %134 = getelementptr double, ptr %129, i64 %133, !dbg !967
  %135 = getelementptr double, ptr %134, i64 %45, !dbg !967
  %136 = load double, ptr %135, align 8, !dbg !967, !tbaa !299
  call void @llvm.dbg.value(metadata double %136, metadata !923, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %132, metadata !386, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %40, metadata !387, metadata !DIExpression()), !dbg !969
  %137 = getelementptr double, ptr %134, i64 %40, !dbg !971
  %138 = load double, ptr %137, align 8, !dbg !971, !tbaa !299
  call void @llvm.dbg.value(metadata double %138, metadata !927, metadata !DIExpression()), !dbg !968
  %139 = fmul double %71, %136, !dbg !972
  %140 = fmul double %72, %138, !dbg !973
  %141 = fsub double %139, %140, !dbg !974
  call void @llvm.dbg.value(metadata ptr %1, metadata !941, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %132, metadata !946, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata i64 %45, metadata !947, metadata !DIExpression()), !dbg !975
  call void @llvm.dbg.value(metadata double %141, metadata !948, metadata !DIExpression()), !dbg !975
  store double %141, ptr %135, align 8, !dbg !977, !tbaa !299
  %142 = fmul double %72, %136, !dbg !978
  %143 = fmul double %71, %138, !dbg !979
  %144 = fadd double %142, %143, !dbg !980
  call void @llvm.dbg.value(metadata ptr %1, metadata !941, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %132, metadata !946, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata i64 %40, metadata !947, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata double %144, metadata !948, metadata !DIExpression()), !dbg !981
  store double %144, ptr %137, align 8, !dbg !983, !tbaa !299
  %145 = add nuw i64 %132, 1, !dbg !984
  call void @llvm.dbg.value(metadata i64 %145, metadata !917, metadata !DIExpression()), !dbg !928
  %146 = icmp eq i64 %145, %6, !dbg !962
  br i1 %146, label %147, label %131, !dbg !963, !llvm.loop !985

147:                                              ; preds = %131, %125
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !777, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !819
  %148 = add i64 %40, -1, !dbg !818
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !777, metadata !DIExpression()), !dbg !819
  %149 = icmp eq i64 %148, 0, !dbg !820
  br i1 %149, label %150, label %39, !dbg !821, !llvm.loop !987

150:                                              ; preds = %147
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !989
  tail call void @llvm.dbg.value(metadata double poison, metadata !780, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata i64 0, metadata !773, metadata !DIExpression()), !dbg !819
  %151 = icmp eq i64 %6, 0, !dbg !991
  br i1 %151, label %322, label %152, !dbg !992

152:                                              ; preds = %23, %150
  %153 = load double, ptr %27, align 8, !dbg !993, !tbaa !299
  %154 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !391
  %156 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !393
  %158 = getelementptr inbounds %struct.gsl_permutation_struct, ptr %2, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !994
  %160 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !293
  %162 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %163 = load i64, ptr %162, align 8, !tbaa !295
  %164 = and i64 %6, 1, !dbg !992
  %165 = icmp eq i64 %24, 0, !dbg !992
  br i1 %165, label %168, label %166, !dbg !992

166:                                              ; preds = %152
  %167 = and i64 %6, -2, !dbg !992
  br label %197, !dbg !992

168:                                              ; preds = %197, %152
  %169 = phi i64 [ 0, %152 ], [ %221, %197 ]
  %170 = icmp eq i64 %164, 0, !dbg !992
  br i1 %170, label %182, label %171, !dbg !992

171:                                              ; preds = %168
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !773, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !386, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !995
  %172 = mul i64 %157, %169, !dbg !997
  %173 = getelementptr double, ptr %155, i64 %172, !dbg !998
  %174 = load double, ptr %173, align 8, !dbg !998, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %174, metadata !788, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1000, metadata !DIExpression()), !dbg !1006
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !1005, metadata !DIExpression()), !dbg !1006
  %175 = getelementptr inbounds i64, ptr %159, i64 %169, !dbg !1008
  %176 = load i64, ptr %175, align 8, !dbg !1008, !tbaa !1009
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !792, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1010
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !313, metadata !DIExpression()), !dbg !1010
  %177 = mul i64 %163, %176, !dbg !1012
  %178 = getelementptr inbounds double, ptr %161, i64 %177, !dbg !1013
  %179 = load double, ptr %178, align 8, !dbg !1013, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %179, metadata !793, metadata !DIExpression()), !dbg !999
  %180 = fmul double %153, %179, !dbg !1014
  %181 = fadd double %174, %180, !dbg !1015
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !941, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !946, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata double %181, metadata !948, metadata !DIExpression()), !dbg !1016
  store double %181, ptr %173, align 8, !dbg !1018, !tbaa !299
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !773, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !819
  br label %182, !dbg !1019

182:                                              ; preds = %168, %171
  tail call void @llvm.dbg.value(metadata i64 1, metadata !777, metadata !DIExpression()), !dbg !819
  %183 = icmp ugt i64 %6, 1, !dbg !1019
  br i1 %183, label %184, label %322, !dbg !1020

184:                                              ; preds = %182
  %185 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !391
  %187 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %188 = load i64, ptr %187, align 8, !tbaa !393
  %189 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !391
  %191 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %192 = load i64, ptr %191, align 8, !tbaa !393
  %193 = and i64 %6, 1
  %194 = icmp eq i64 %24, 0
  %195 = and i64 %6, -2
  %196 = icmp eq i64 %193, 0
  br label %224, !dbg !1020

197:                                              ; preds = %197, %166
  %198 = phi i64 [ 0, %166 ], [ %221, %197 ]
  %199 = phi i64 [ 0, %166 ], [ %222, %197 ]
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !773, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !386, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !995
  %200 = mul i64 %157, %198, !dbg !997
  %201 = getelementptr double, ptr %155, i64 %200, !dbg !998
  %202 = load double, ptr %201, align 8, !dbg !998, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %202, metadata !788, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1000, metadata !DIExpression()), !dbg !1006
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !1005, metadata !DIExpression()), !dbg !1006
  %203 = getelementptr inbounds i64, ptr %159, i64 %198, !dbg !1008
  %204 = load i64, ptr %203, align 8, !dbg !1008, !tbaa !1009
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !792, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1010
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !313, metadata !DIExpression()), !dbg !1010
  %205 = mul i64 %163, %204, !dbg !1012
  %206 = getelementptr inbounds double, ptr %161, i64 %205, !dbg !1013
  %207 = load double, ptr %206, align 8, !dbg !1013, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %207, metadata !793, metadata !DIExpression()), !dbg !999
  %208 = fmul double %153, %207, !dbg !1014
  %209 = fadd double %202, %208, !dbg !1015
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !941, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !946, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata double %209, metadata !948, metadata !DIExpression()), !dbg !1016
  store double %209, ptr %201, align 8, !dbg !1018, !tbaa !299
  %210 = or disjoint i64 %198, 1, !dbg !1021
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !773, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !773, metadata !DIExpression()), !dbg !819
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !386, metadata !DIExpression()), !dbg !995
  tail call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !995
  %211 = mul i64 %157, %210, !dbg !997
  %212 = getelementptr double, ptr %155, i64 %211, !dbg !998
  %213 = load double, ptr %212, align 8, !dbg !998, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %213, metadata !788, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1000, metadata !DIExpression()), !dbg !1006
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !1005, metadata !DIExpression()), !dbg !1006
  %214 = getelementptr inbounds i64, ptr %159, i64 %210, !dbg !1008
  %215 = load i64, ptr %214, align 8, !dbg !1008, !tbaa !1009
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !792, metadata !DIExpression()), !dbg !999
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1010
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !313, metadata !DIExpression()), !dbg !1010
  %216 = mul i64 %163, %215, !dbg !1012
  %217 = getelementptr inbounds double, ptr %161, i64 %216, !dbg !1013
  %218 = load double, ptr %217, align 8, !dbg !1013, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %218, metadata !793, metadata !DIExpression()), !dbg !999
  %219 = fmul double %153, %218, !dbg !1014
  %220 = fadd double %213, %219, !dbg !1015
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !941, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata i64 %210, metadata !946, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata i64 0, metadata !947, metadata !DIExpression()), !dbg !1016
  tail call void @llvm.dbg.value(metadata double %220, metadata !948, metadata !DIExpression()), !dbg !1016
  store double %220, ptr %212, align 8, !dbg !1018, !tbaa !299
  %221 = add nuw i64 %198, 2, !dbg !1021
  tail call void @llvm.dbg.value(metadata i64 %221, metadata !773, metadata !DIExpression()), !dbg !819
  %222 = add i64 %199, 2, !dbg !992
  %223 = icmp eq i64 %222, %167, !dbg !992
  br i1 %223, label %168, label %197, !dbg !992, !llvm.loop !1022

224:                                              ; preds = %184, %319
  %225 = phi i64 [ 1, %184 ], [ %320, %319 ]
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !777, metadata !DIExpression()), !dbg !819
  %226 = add i64 %225, -1, !dbg !1024
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !386, metadata !DIExpression()), !dbg !1025
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !387, metadata !DIExpression()), !dbg !1025
  %227 = mul i64 %188, %226, !dbg !1027
  %228 = getelementptr double, ptr %186, i64 %227, !dbg !1028
  %229 = getelementptr double, ptr %228, i64 %226, !dbg !1028
  %230 = load double, ptr %229, align 8, !dbg !1028, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %230, metadata !799, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !1030
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !386, metadata !DIExpression()), !dbg !1030
  tail call void @llvm.dbg.value(metadata i64 %225, metadata !387, metadata !DIExpression()), !dbg !1030
  %231 = getelementptr double, ptr %228, i64 %225, !dbg !1032
  %232 = load double, ptr %231, align 8, !dbg !1032, !tbaa !299
  tail call void @llvm.dbg.value(metadata double %232, metadata !800, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata double %230, metadata !832, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata double %232, metadata !838, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr undef, metadata !839, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.value(metadata ptr undef, metadata !840, metadata !DIExpression()), !dbg !1033
  %233 = fcmp oeq double %232, 0.000000e+00, !dbg !1035
  br i1 %233, label %254, label %234, !dbg !1036

234:                                              ; preds = %224
  %235 = tail call double @llvm.fabs.f64(double %232), !dbg !1037
  %236 = tail call double @llvm.fabs.f64(double %230), !dbg !1038
  %237 = fcmp ogt double %235, %236, !dbg !1039
  br i1 %237, label %238, label %246, !dbg !1040

238:                                              ; preds = %234
  %239 = fneg double %230, !dbg !1041
  %240 = fdiv double %239, %232, !dbg !1042
  call void @llvm.dbg.value(metadata double %240, metadata !841, metadata !DIExpression()), !dbg !1043
  %241 = fmul double %240, %240, !dbg !1044
  %242 = fadd double %241, 1.000000e+00, !dbg !1045
  %243 = tail call double @llvm.sqrt.f64(double %242), !dbg !1046
  %244 = fdiv double 1.000000e+00, %243, !dbg !1047
  call void @llvm.dbg.value(metadata double %244, metadata !845, metadata !DIExpression()), !dbg !1043
  tail call void @llvm.dbg.value(metadata double %244, metadata !798, metadata !DIExpression()), !dbg !1029
  %245 = fmul double %240, %244, !dbg !1048
  tail call void @llvm.dbg.value(metadata double %245, metadata !794, metadata !DIExpression()), !dbg !1029
  br label %254, !dbg !1049

246:                                              ; preds = %234
  %247 = fneg double %232, !dbg !1050
  %248 = fdiv double %247, %230, !dbg !1051
  call void @llvm.dbg.value(metadata double %248, metadata !846, metadata !DIExpression()), !dbg !1052
  %249 = fmul double %248, %248, !dbg !1053
  %250 = fadd double %249, 1.000000e+00, !dbg !1054
  %251 = tail call double @llvm.sqrt.f64(double %250), !dbg !1055
  %252 = fdiv double 1.000000e+00, %251, !dbg !1056
  call void @llvm.dbg.value(metadata double %252, metadata !848, metadata !DIExpression()), !dbg !1052
  tail call void @llvm.dbg.value(metadata double %252, metadata !794, metadata !DIExpression()), !dbg !1029
  %253 = fmul double %248, %252, !dbg !1057
  tail call void @llvm.dbg.value(metadata double %253, metadata !798, metadata !DIExpression()), !dbg !1029
  br label %254

254:                                              ; preds = %224, %238, %246
  %255 = phi double [ %245, %238 ], [ %252, %246 ], [ 1.000000e+00, %224 ], !dbg !1058
  %256 = phi double [ %244, %238 ], [ %253, %246 ], [ 0.000000e+00, %224 ], !dbg !1058
  tail call void @llvm.dbg.value(metadata double %256, metadata !798, metadata !DIExpression()), !dbg !1029
  tail call void @llvm.dbg.value(metadata double %255, metadata !794, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %8, metadata !904, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %6, metadata !910, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %0, metadata !911, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %1, metadata !912, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %226, metadata !913, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %225, metadata !914, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata double %255, metadata !915, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata double %256, metadata !916, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()), !dbg !1059
  %257 = mul i64 %192, %226
  %258 = getelementptr double, ptr %190, i64 %257
  %259 = mul i64 %192, %225
  %260 = getelementptr double, ptr %190, i64 %259
  br i1 %194, label %288, label %261, !dbg !1061

261:                                              ; preds = %254, %261
  %262 = phi i64 [ %285, %261 ], [ 0, %254 ]
  %263 = phi i64 [ %286, %261 ], [ 0, %254 ]
  call void @llvm.dbg.value(metadata i64 %262, metadata !917, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %226, metadata !386, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %262, metadata !387, metadata !DIExpression()), !dbg !1062
  %264 = getelementptr double, ptr %258, i64 %262, !dbg !1064
  %265 = load double, ptr %264, align 8, !dbg !1064, !tbaa !299
  call void @llvm.dbg.value(metadata double %265, metadata !918, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %225, metadata !386, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %262, metadata !387, metadata !DIExpression()), !dbg !1066
  %266 = getelementptr double, ptr %260, i64 %262, !dbg !1068
  %267 = load double, ptr %266, align 8, !dbg !1068, !tbaa !299
  call void @llvm.dbg.value(metadata double %267, metadata !922, metadata !DIExpression()), !dbg !1065
  %268 = fmul double %255, %265, !dbg !1069
  %269 = fmul double %256, %267, !dbg !1070
  %270 = fsub double %268, %269, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %226, metadata !946, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %262, metadata !947, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata double %270, metadata !948, metadata !DIExpression()), !dbg !1072
  store double %270, ptr %264, align 8, !dbg !1074, !tbaa !299
  %271 = fmul double %256, %265, !dbg !1075
  %272 = fmul double %255, %267, !dbg !1076
  %273 = fadd double %271, %272, !dbg !1077
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %225, metadata !946, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %262, metadata !947, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata double %273, metadata !948, metadata !DIExpression()), !dbg !1078
  store double %273, ptr %266, align 8, !dbg !1080, !tbaa !299
  %274 = or disjoint i64 %262, 1, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %274, metadata !917, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %274, metadata !917, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %226, metadata !386, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %274, metadata !387, metadata !DIExpression()), !dbg !1062
  %275 = getelementptr double, ptr %258, i64 %274, !dbg !1064
  %276 = load double, ptr %275, align 8, !dbg !1064, !tbaa !299
  call void @llvm.dbg.value(metadata double %276, metadata !918, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %225, metadata !386, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %274, metadata !387, metadata !DIExpression()), !dbg !1066
  %277 = getelementptr double, ptr %260, i64 %274, !dbg !1068
  %278 = load double, ptr %277, align 8, !dbg !1068, !tbaa !299
  call void @llvm.dbg.value(metadata double %278, metadata !922, metadata !DIExpression()), !dbg !1065
  %279 = fmul double %255, %276, !dbg !1069
  %280 = fmul double %256, %278, !dbg !1070
  %281 = fsub double %279, %280, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %226, metadata !946, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %274, metadata !947, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata double %281, metadata !948, metadata !DIExpression()), !dbg !1072
  store double %281, ptr %275, align 8, !dbg !1074, !tbaa !299
  %282 = fmul double %256, %276, !dbg !1075
  %283 = fmul double %255, %278, !dbg !1076
  %284 = fadd double %282, %283, !dbg !1077
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %225, metadata !946, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %274, metadata !947, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata double %284, metadata !948, metadata !DIExpression()), !dbg !1078
  store double %284, ptr %277, align 8, !dbg !1080, !tbaa !299
  %285 = add nuw i64 %262, 2, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %285, metadata !917, metadata !DIExpression()), !dbg !1059
  %286 = add nuw i64 %263, 2, !dbg !1061
  %287 = icmp eq i64 %286, %195, !dbg !1061
  br i1 %287, label %288, label %261, !dbg !1061, !llvm.loop !1082

288:                                              ; preds = %261, %254
  %289 = phi i64 [ 0, %254 ], [ %285, %261 ]
  br i1 %196, label %301, label %290, !dbg !1061

290:                                              ; preds = %288
  call void @llvm.dbg.value(metadata i64 %289, metadata !917, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %226, metadata !386, metadata !DIExpression()), !dbg !1062
  call void @llvm.dbg.value(metadata i64 %289, metadata !387, metadata !DIExpression()), !dbg !1062
  %291 = getelementptr double, ptr %258, i64 %289, !dbg !1064
  %292 = load double, ptr %291, align 8, !dbg !1064, !tbaa !299
  call void @llvm.dbg.value(metadata double %292, metadata !918, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr %0, metadata !379, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %225, metadata !386, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %289, metadata !387, metadata !DIExpression()), !dbg !1066
  %293 = getelementptr double, ptr %260, i64 %289, !dbg !1068
  %294 = load double, ptr %293, align 8, !dbg !1068, !tbaa !299
  call void @llvm.dbg.value(metadata double %294, metadata !922, metadata !DIExpression()), !dbg !1065
  %295 = fmul double %255, %292, !dbg !1069
  %296 = fmul double %256, %294, !dbg !1070
  %297 = fsub double %295, %296, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %226, metadata !946, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata i64 %289, metadata !947, metadata !DIExpression()), !dbg !1072
  call void @llvm.dbg.value(metadata double %297, metadata !948, metadata !DIExpression()), !dbg !1072
  store double %297, ptr %291, align 8, !dbg !1074, !tbaa !299
  %298 = fmul double %256, %292, !dbg !1075
  %299 = fmul double %255, %294, !dbg !1076
  %300 = fadd double %298, %299, !dbg !1077
  call void @llvm.dbg.value(metadata ptr %0, metadata !941, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %225, metadata !946, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata i64 %289, metadata !947, metadata !DIExpression()), !dbg !1078
  call void @llvm.dbg.value(metadata double %300, metadata !948, metadata !DIExpression()), !dbg !1078
  store double %300, ptr %293, align 8, !dbg !1080, !tbaa !299
  call void @llvm.dbg.value(metadata i64 %289, metadata !917, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1059
  br label %301, !dbg !1084

301:                                              ; preds = %288, %290
  %302 = tail call i64 @llvm.umin.i64(i64 %226, i64 %225), !dbg !1084
  call void @llvm.dbg.value(metadata i64 %302, metadata !917, metadata !DIExpression()), !dbg !1059
  br label %303, !dbg !1085

303:                                              ; preds = %301, %303
  %304 = phi i64 [ %317, %303 ], [ %302, %301 ]
  call void @llvm.dbg.value(metadata i64 %304, metadata !917, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %304, metadata !386, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %226, metadata !387, metadata !DIExpression()), !dbg !1086
  %305 = mul i64 %304, %188, !dbg !1088
  %306 = getelementptr double, ptr %186, i64 %305, !dbg !1089
  %307 = getelementptr double, ptr %306, i64 %226, !dbg !1089
  %308 = load double, ptr %307, align 8, !dbg !1089, !tbaa !299
  call void @llvm.dbg.value(metadata double %308, metadata !923, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata ptr %1, metadata !379, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %304, metadata !386, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %225, metadata !387, metadata !DIExpression()), !dbg !1091
  %309 = getelementptr double, ptr %306, i64 %225, !dbg !1093
  %310 = load double, ptr %309, align 8, !dbg !1093, !tbaa !299
  call void @llvm.dbg.value(metadata double %310, metadata !927, metadata !DIExpression()), !dbg !1090
  %311 = fmul double %255, %308, !dbg !1094
  %312 = fmul double %256, %310, !dbg !1095
  %313 = fsub double %311, %312, !dbg !1096
  call void @llvm.dbg.value(metadata ptr %1, metadata !941, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %304, metadata !946, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %226, metadata !947, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata double %313, metadata !948, metadata !DIExpression()), !dbg !1097
  store double %313, ptr %307, align 8, !dbg !1099, !tbaa !299
  %314 = fmul double %256, %308, !dbg !1100
  %315 = fmul double %255, %310, !dbg !1101
  %316 = fadd double %314, %315, !dbg !1102
  call void @llvm.dbg.value(metadata ptr %1, metadata !941, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %304, metadata !946, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %225, metadata !947, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata double %316, metadata !948, metadata !DIExpression()), !dbg !1103
  store double %316, ptr %309, align 8, !dbg !1105, !tbaa !299
  %317 = add nuw i64 %304, 1, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %317, metadata !917, metadata !DIExpression()), !dbg !1059
  %318 = icmp eq i64 %317, %6, !dbg !1107
  br i1 %318, label %319, label %303, !dbg !1085, !llvm.loop !1108

319:                                              ; preds = %303
  %320 = add nuw i64 %225, 1, !dbg !1110
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !777, metadata !DIExpression()), !dbg !819
  %321 = icmp eq i64 %320, %6, !dbg !1019
  br i1 %321, label %322, label %224, !dbg !1020, !llvm.loop !1111

322:                                              ; preds = %319, %150, %182, %15, %17, %20, %5, %10
  %323 = phi i32 [ 20, %10 ], [ 20, %5 ], [ 19, %20 ], [ 19, %17 ], [ 19, %15 ], [ 0, %182 ], [ 0, %150 ], [ 0, %319 ], !dbg !1113
  ret i32 %323, !dbg !1114
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!402 = !DILocation(line: 173, column: 41, scope: !398)
!403 = !DILocation(line: 173, column: 33, scope: !398)
!404 = !DILocation(line: 173, column: 31, scope: !398)
!405 = !DILocation(line: 0, scope: !398)
!406 = !DILocation(line: 177, column: 35, scope: !226)
!407 = !DILocation(line: 177, column: 27, scope: !226)
!408 = !DILocation(line: 177, column: 40, scope: !226)
!409 = !DILocation(line: 177, column: 27, scope: !221)
!410 = !DILocation(line: 179, column: 27, scope: !225)
!411 = !DILocation(line: 179, column: 52, scope: !225)
!412 = !DILocation(line: 180, column: 27, scope: !225)
!413 = !DILocation(line: 181, column: 29, scope: !225)
!414 = !DILocation(line: 183, column: 31, scope: !225)
!415 = !DILocation(line: 184, column: 25, scope: !226)
!416 = !DILocation(line: 184, column: 25, scope: !225)
!417 = !DILocation(line: 0, scope: !284, inlinedAt: !418)
!418 = distinct !DILocation(line: 186, column: 23, scope: !221)
!419 = !DILocation(line: 196, column: 6, scope: !284, inlinedAt: !418)
!420 = !DILocation(line: 196, column: 18, scope: !284, inlinedAt: !418)
!421 = !DILocation(line: 196, column: 13, scope: !284, inlinedAt: !418)
!422 = !DILocation(line: 196, column: 3, scope: !284, inlinedAt: !418)
!423 = !DILocation(line: 196, column: 26, scope: !284, inlinedAt: !418)
!424 = !DILocation(line: 187, column: 21, scope: !221)
!425 = !DILocation(line: 161, column: 39, scope: !216)
!426 = !DILocation(line: 161, column: 33, scope: !216)
!427 = distinct !{!427, !371, !428, !305}
!428 = !DILocation(line: 188, column: 17, scope: !217)
!429 = distinct !{!429, !279, !430, !305}
!430 = !DILocation(line: 190, column: 9, scope: !195)
!431 = !DILocation(line: 0, scope: !181)
!432 = !DILocation(line: 194, column: 1, scope: !123)
!433 = !DISubprogram(name: "gsl_error", scope: !61, file: !61, line: 77, type: !434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436, !436, !62, !62}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!438 = !DISubprogram(name: "gsl_permutation_init", scope: !161, file: !161, line: 51, type: !439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !159}
!441 = !DISubprogram(name: "gsl_matrix_row", scope: !128, file: !128, line: 106, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = !DISubroutineType(types: !443)
!443 = !{!187, !126, !175}
!444 = !DISubprogram(name: "gsl_blas_dnrm2", scope: !445, file: !445, line: 91, type: !446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!446 = !DISubroutineType(types: !447)
!447 = !{!139, !310}
!448 = !DISubprogram(name: "gsl_matrix_swap_rows", scope: !128, file: !128, line: 221, type: !449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!449 = !DISubroutineType(types: !450)
!450 = !{!62, !126, !175, !175}
!451 = !DISubprogram(name: "gsl_permutation_swap", scope: !161, file: !161, line: 63, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubroutineType(types: !453)
!453 = !{!62, !159, !175, !175}
!454 = !DISubprogram(name: "gsl_vector_swap_elements", scope: !151, file: !151, line: 141, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{!62, !149, !175, !175}
!457 = !DISubprogram(name: "gsl_vector_subvector", scope: !151, file: !151, line: 103, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!458 = !DISubroutineType(types: !459)
!459 = !{!187, !149, !132, !132}
!460 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !461, file: !461, line: 94, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!462 = !DISubroutineType(types: !463)
!463 = !{!139, !149}
!464 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !128, file: !128, line: 101, type: !465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DISubroutineType(types: !466)
!466 = !{!210, !126, !175, !175, !175, !175}
!467 = !DISubprogram(name: "gsl_linalg_householder_mh", scope: !461, file: !461, line: 101, type: !468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!468 = !DISubroutineType(types: !469)
!469 = !{!62, !139, !310, !126}
!470 = !DISubprogram(name: "sqrt", scope: !471, file: !471, line: 143, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!471 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!472 = !DISubroutineType(types: !473)
!473 = !{!139, !139}
!474 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_decomp2", scope: !2, file: !2, line: 197, type: !475, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{!62, !383, !126, !126, !149, !159, !167, !149}
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486}
!478 = !DILocalVariable(name: "A", arg: 1, scope: !474, file: !2, line: 197, type: !383)
!479 = !DILocalVariable(name: "q", arg: 2, scope: !474, file: !2, line: 197, type: !126)
!480 = !DILocalVariable(name: "r", arg: 3, scope: !474, file: !2, line: 197, type: !126)
!481 = !DILocalVariable(name: "tau", arg: 4, scope: !474, file: !2, line: 197, type: !149)
!482 = !DILocalVariable(name: "p", arg: 5, scope: !474, file: !2, line: 197, type: !159)
!483 = !DILocalVariable(name: "signum", arg: 6, scope: !474, file: !2, line: 197, type: !167)
!484 = !DILocalVariable(name: "norm", arg: 7, scope: !474, file: !2, line: 197, type: !149)
!485 = !DILocalVariable(name: "N", scope: !474, file: !2, line: 199, type: !175)
!486 = !DILocalVariable(name: "M", scope: !474, file: !2, line: 200, type: !175)
!487 = !DILocation(line: 0, scope: !474)
!488 = !DILocation(line: 199, column: 23, scope: !474)
!489 = !DILocation(line: 200, column: 23, scope: !474)
!490 = !DILocation(line: 202, column: 10, scope: !491)
!491 = distinct !DILexicalBlock(scope: !474, file: !2, line: 202, column: 7)
!492 = !DILocation(line: 202, column: 16, scope: !491)
!493 = !DILocation(line: 202, column: 21, scope: !491)
!494 = !DILocation(line: 202, column: 27, scope: !491)
!495 = !DILocation(line: 202, column: 33, scope: !491)
!496 = !DILocation(line: 202, column: 7, scope: !474)
!497 = !DILocation(line: 204, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 204, column: 7)
!499 = distinct !DILexicalBlock(scope: !491, file: !2, line: 203, column: 5)
!500 = !DILocation(line: 206, column: 15, scope: !501)
!501 = distinct !DILexicalBlock(scope: !491, file: !2, line: 206, column: 12)
!502 = !DILocation(line: 206, column: 21, scope: !501)
!503 = !DILocation(line: 206, column: 26, scope: !501)
!504 = !DILocation(line: 206, column: 32, scope: !501)
!505 = !DILocation(line: 206, column: 38, scope: !501)
!506 = !DILocation(line: 206, column: 12, scope: !491)
!507 = !DILocation(line: 208, column: 7, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !2, line: 208, column: 7)
!509 = distinct !DILexicalBlock(scope: !501, file: !2, line: 207, column: 5)
!510 = !DILocation(line: 210, column: 17, scope: !511)
!511 = distinct !DILexicalBlock(scope: !501, file: !2, line: 210, column: 12)
!512 = !DILocation(line: 210, column: 25, scope: !511)
!513 = !DILocation(line: 210, column: 22, scope: !511)
!514 = !DILocation(line: 210, column: 12, scope: !501)
!515 = !DILocation(line: 212, column: 7, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !2, line: 212, column: 7)
!517 = distinct !DILexicalBlock(scope: !511, file: !2, line: 211, column: 5)
!518 = !DILocation(line: 214, column: 15, scope: !519)
!519 = distinct !DILexicalBlock(scope: !511, file: !2, line: 214, column: 12)
!520 = !DILocation(line: 214, column: 20, scope: !519)
!521 = !DILocation(line: 214, column: 12, scope: !511)
!522 = !DILocation(line: 216, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !2, line: 216, column: 7)
!524 = distinct !DILexicalBlock(scope: !519, file: !2, line: 215, column: 5)
!525 = !DILocation(line: 218, column: 18, scope: !526)
!526 = distinct !DILexicalBlock(scope: !519, file: !2, line: 218, column: 12)
!527 = !DILocation(line: 218, column: 23, scope: !526)
!528 = !DILocation(line: 218, column: 12, scope: !519)
!529 = !DILocation(line: 220, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 220, column: 7)
!531 = distinct !DILexicalBlock(scope: !526, file: !2, line: 219, column: 5)
!532 = !DILocation(line: 223, column: 3, scope: !474)
!533 = !DILocation(line: 225, column: 3, scope: !474)
!534 = !{i32 0, i32 20}
!535 = !DILocation(line: 229, column: 3, scope: !474)
!536 = !DILocation(line: 231, column: 3, scope: !474)
!537 = !DILocation(line: 232, column: 1, scope: !474)
!538 = !DISubprogram(name: "gsl_matrix_memcpy", scope: !128, file: !128, line: 217, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DISubroutineType(types: !540)
!540 = !{!62, !126, !383}
!541 = !DISubprogram(name: "gsl_linalg_LQ_unpack", scope: !461, file: !461, line: 421, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!542 = !DISubroutineType(types: !543)
!543 = !{!62, !383, !310, !126, !126}
!544 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_solve_T", scope: !2, file: !2, line: 244, type: !545, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !549)
!545 = !DISubroutineType(types: !546)
!546 = !{!62, !383, !310, !547, !310, !149}
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!549 = !{!550, !551, !552, !553, !554}
!550 = !DILocalVariable(name: "QR", arg: 1, scope: !544, file: !2, line: 244, type: !383)
!551 = !DILocalVariable(name: "tau", arg: 2, scope: !544, file: !2, line: 245, type: !310)
!552 = !DILocalVariable(name: "p", arg: 3, scope: !544, file: !2, line: 246, type: !547)
!553 = !DILocalVariable(name: "b", arg: 4, scope: !544, file: !2, line: 247, type: !310)
!554 = !DILocalVariable(name: "x", arg: 5, scope: !544, file: !2, line: 248, type: !149)
!555 = !DILocation(line: 0, scope: !544)
!556 = !DILocation(line: 250, column: 11, scope: !557)
!557 = distinct !DILexicalBlock(scope: !544, file: !2, line: 250, column: 7)
!558 = !DILocation(line: 250, column: 24, scope: !557)
!559 = !DILocation(line: 250, column: 17, scope: !557)
!560 = !DILocation(line: 250, column: 7, scope: !544)
!561 = !DILocation(line: 252, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !2, line: 252, column: 7)
!563 = distinct !DILexicalBlock(scope: !557, file: !2, line: 251, column: 5)
!564 = !DILocation(line: 254, column: 28, scope: !565)
!565 = distinct !DILexicalBlock(scope: !557, file: !2, line: 254, column: 12)
!566 = !DILocation(line: 254, column: 22, scope: !565)
!567 = !DILocation(line: 254, column: 12, scope: !557)
!568 = !DILocation(line: 256, column: 7, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !2, line: 256, column: 7)
!570 = distinct !DILexicalBlock(scope: !565, file: !2, line: 255, column: 5)
!571 = !DILocation(line: 258, column: 28, scope: !572)
!572 = distinct !DILexicalBlock(scope: !565, file: !2, line: 258, column: 12)
!573 = !DILocation(line: 258, column: 22, scope: !572)
!574 = !DILocation(line: 258, column: 12, scope: !565)
!575 = !DILocation(line: 260, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 260, column: 7)
!577 = distinct !DILexicalBlock(scope: !572, file: !2, line: 259, column: 5)
!578 = !DILocation(line: 262, column: 28, scope: !579)
!579 = distinct !DILexicalBlock(scope: !572, file: !2, line: 262, column: 12)
!580 = !DILocation(line: 262, column: 22, scope: !579)
!581 = !DILocation(line: 262, column: 12, scope: !572)
!582 = !DILocation(line: 264, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 264, column: 7)
!584 = distinct !DILexicalBlock(scope: !579, file: !2, line: 263, column: 5)
!585 = !DILocation(line: 268, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !579, file: !2, line: 267, column: 5)
!587 = !DILocation(line: 270, column: 7, scope: !586)
!588 = !{i32 0, i32 21}
!589 = !DILocation(line: 272, column: 7, scope: !586)
!590 = !DILocation(line: 0, scope: !557)
!591 = !DILocation(line: 274, column: 1, scope: !544)
!592 = !DISubprogram(name: "gsl_vector_memcpy", scope: !151, file: !151, line: 136, type: !593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DISubroutineType(types: !594)
!594 = !{!62, !149, !310}
!595 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_svx_T", scope: !2, file: !2, line: 277, type: !596, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!62, !383, !310, !547, !149}
!598 = !{!599, !600, !601, !602}
!599 = !DILocalVariable(name: "LQ", arg: 1, scope: !595, file: !2, line: 277, type: !383)
!600 = !DILocalVariable(name: "tau", arg: 2, scope: !595, file: !2, line: 278, type: !310)
!601 = !DILocalVariable(name: "p", arg: 3, scope: !595, file: !2, line: 279, type: !547)
!602 = !DILocalVariable(name: "x", arg: 4, scope: !595, file: !2, line: 280, type: !149)
!603 = !DILocation(line: 0, scope: !595)
!604 = !DILocation(line: 282, column: 11, scope: !605)
!605 = distinct !DILexicalBlock(scope: !595, file: !2, line: 282, column: 7)
!606 = !DILocation(line: 282, column: 24, scope: !605)
!607 = !DILocation(line: 282, column: 17, scope: !605)
!608 = !DILocation(line: 282, column: 7, scope: !595)
!609 = !DILocation(line: 284, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !2, line: 284, column: 7)
!611 = distinct !DILexicalBlock(scope: !605, file: !2, line: 283, column: 5)
!612 = !DILocation(line: 286, column: 28, scope: !613)
!613 = distinct !DILexicalBlock(scope: !605, file: !2, line: 286, column: 12)
!614 = !DILocation(line: 286, column: 22, scope: !613)
!615 = !DILocation(line: 286, column: 12, scope: !605)
!616 = !DILocation(line: 288, column: 7, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !2, line: 288, column: 7)
!618 = distinct !DILexicalBlock(scope: !613, file: !2, line: 287, column: 5)
!619 = !DILocation(line: 290, column: 28, scope: !620)
!620 = distinct !DILexicalBlock(scope: !613, file: !2, line: 290, column: 12)
!621 = !DILocation(line: 290, column: 22, scope: !620)
!622 = !DILocation(line: 290, column: 12, scope: !613)
!623 = !DILocation(line: 292, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !2, line: 292, column: 7)
!625 = distinct !DILexicalBlock(scope: !620, file: !2, line: 291, column: 5)
!626 = !DILocation(line: 298, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !620, file: !2, line: 295, column: 5)
!628 = !DILocation(line: 302, column: 7, scope: !627)
!629 = !DILocation(line: 304, column: 7, scope: !627)
!630 = !DILocation(line: 306, column: 7, scope: !627)
!631 = !DILocation(line: 0, scope: !605)
!632 = !DILocation(line: 308, column: 1, scope: !595)
!633 = !DISubprogram(name: "gsl_linalg_LQ_vecQT", scope: !461, file: !461, line: 418, type: !634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!634 = !DISubroutineType(types: !635)
!635 = !{!62, !383, !310, !149}
!636 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !445, file: !445, line: 217, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!637 = !DISubroutineType(types: !638)
!638 = !{!62, !639, !641, !642, !383, !149}
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !640, line: 45, baseType: !99)
!640 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !640, line: 44, baseType: !105)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !640, line: 46, baseType: !110)
!643 = !DISubprogram(name: "gsl_permute_vector_inverse", scope: !644, file: !644, line: 41, type: !645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!644 = !DIFile(filename: "../gsl/gsl_permute_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "05dfc9fcd9b4e47246745becff796730")
!645 = !DISubroutineType(types: !646)
!646 = !{!62, !547, !149}
!647 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_LQsolve_T", scope: !2, file: !2, line: 312, type: !648, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!62, !383, !383, !547, !310, !149}
!650 = !{!651, !652, !653, !654, !655}
!651 = !DILocalVariable(name: "Q", arg: 1, scope: !647, file: !2, line: 312, type: !383)
!652 = !DILocalVariable(name: "L", arg: 2, scope: !647, file: !2, line: 312, type: !383)
!653 = !DILocalVariable(name: "p", arg: 3, scope: !647, file: !2, line: 313, type: !547)
!654 = !DILocalVariable(name: "b", arg: 4, scope: !647, file: !2, line: 314, type: !310)
!655 = !DILocalVariable(name: "x", arg: 5, scope: !647, file: !2, line: 315, type: !149)
!656 = !DILocation(line: 0, scope: !647)
!657 = !DILocation(line: 317, column: 10, scope: !658)
!658 = distinct !DILexicalBlock(scope: !647, file: !2, line: 317, column: 7)
!659 = !DILocation(line: 317, column: 22, scope: !658)
!660 = !DILocation(line: 317, column: 16, scope: !658)
!661 = !DILocation(line: 317, column: 28, scope: !658)
!662 = !DILocation(line: 317, column: 34, scope: !658)
!663 = !DILocation(line: 317, column: 46, scope: !658)
!664 = !DILocation(line: 317, column: 40, scope: !658)
!665 = !DILocation(line: 317, column: 7, scope: !647)
!666 = !DILocation(line: 321, column: 27, scope: !667)
!667 = distinct !DILexicalBlock(scope: !658, file: !2, line: 321, column: 12)
!668 = !DILocation(line: 321, column: 21, scope: !667)
!669 = !DILocation(line: 321, column: 32, scope: !667)
!670 = !DILocation(line: 322, column: 30, scope: !667)
!671 = !DILocation(line: 322, column: 24, scope: !667)
!672 = !DILocation(line: 321, column: 12, scope: !658)
!673 = !DILocation(line: 330, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !667, file: !2, line: 327, column: 5)
!675 = !DILocation(line: 334, column: 7, scope: !674)
!676 = !DILocation(line: 338, column: 7, scope: !674)
!677 = !DILocation(line: 340, column: 7, scope: !674)
!678 = !DILocation(line: 0, scope: !658)
!679 = !DILocation(line: 342, column: 1, scope: !647)
!680 = !DISubprogram(name: "gsl_blas_dgemv", scope: !445, file: !445, line: 205, type: !681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!681 = !DISubroutineType(types: !682)
!682 = !{!62, !641, !139, !383, !310, !139, !149}
!683 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_Lsolve_T", scope: !2, file: !2, line: 345, type: !684, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!62, !383, !547, !310, !149}
!686 = !{!687, !688, !689, !690}
!687 = !DILocalVariable(name: "LQ", arg: 1, scope: !683, file: !2, line: 345, type: !383)
!688 = !DILocalVariable(name: "p", arg: 2, scope: !683, file: !2, line: 346, type: !547)
!689 = !DILocalVariable(name: "b", arg: 3, scope: !683, file: !2, line: 347, type: !310)
!690 = !DILocalVariable(name: "x", arg: 4, scope: !683, file: !2, line: 348, type: !149)
!691 = !DILocation(line: 0, scope: !683)
!692 = !DILocation(line: 350, column: 11, scope: !693)
!693 = distinct !DILexicalBlock(scope: !683, file: !2, line: 350, column: 7)
!694 = !DILocation(line: 350, column: 24, scope: !693)
!695 = !DILocation(line: 350, column: 17, scope: !693)
!696 = !DILocation(line: 350, column: 7, scope: !683)
!697 = !DILocation(line: 352, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !2, line: 352, column: 7)
!699 = distinct !DILexicalBlock(scope: !693, file: !2, line: 351, column: 5)
!700 = !DILocation(line: 354, column: 28, scope: !701)
!701 = distinct !DILexicalBlock(scope: !693, file: !2, line: 354, column: 12)
!702 = !DILocation(line: 354, column: 22, scope: !701)
!703 = !DILocation(line: 354, column: 12, scope: !693)
!704 = !DILocation(line: 356, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !2, line: 356, column: 7)
!706 = distinct !DILexicalBlock(scope: !701, file: !2, line: 355, column: 5)
!707 = !DILocation(line: 358, column: 28, scope: !708)
!708 = distinct !DILexicalBlock(scope: !701, file: !2, line: 358, column: 12)
!709 = !DILocation(line: 358, column: 22, scope: !708)
!710 = !DILocation(line: 358, column: 12, scope: !701)
!711 = !DILocation(line: 360, column: 7, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !2, line: 360, column: 7)
!713 = distinct !DILexicalBlock(scope: !708, file: !2, line: 359, column: 5)
!714 = !DILocation(line: 362, column: 15, scope: !715)
!715 = distinct !DILexicalBlock(scope: !708, file: !2, line: 362, column: 12)
!716 = !DILocation(line: 362, column: 20, scope: !715)
!717 = !DILocation(line: 362, column: 12, scope: !708)
!718 = !DILocation(line: 364, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !2, line: 364, column: 7)
!720 = distinct !DILexicalBlock(scope: !715, file: !2, line: 363, column: 5)
!721 = !DILocation(line: 370, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !715, file: !2, line: 367, column: 5)
!723 = !DILocation(line: 374, column: 7, scope: !722)
!724 = !DILocation(line: 376, column: 7, scope: !722)
!725 = !DILocation(line: 378, column: 7, scope: !722)
!726 = !DILocation(line: 0, scope: !693)
!727 = !DILocation(line: 380, column: 1, scope: !683)
!728 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_Lsvx_T", scope: !2, file: !2, line: 384, type: !729, scopeLine: 387, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{!62, !383, !547, !149}
!731 = !{!732, !733, !734}
!732 = !DILocalVariable(name: "LQ", arg: 1, scope: !728, file: !2, line: 384, type: !383)
!733 = !DILocalVariable(name: "p", arg: 2, scope: !728, file: !2, line: 385, type: !547)
!734 = !DILocalVariable(name: "x", arg: 3, scope: !728, file: !2, line: 386, type: !149)
!735 = !DILocation(line: 0, scope: !728)
!736 = !DILocation(line: 388, column: 11, scope: !737)
!737 = distinct !DILexicalBlock(scope: !728, file: !2, line: 388, column: 7)
!738 = !DILocation(line: 388, column: 24, scope: !737)
!739 = !DILocation(line: 388, column: 17, scope: !737)
!740 = !DILocation(line: 388, column: 7, scope: !728)
!741 = !DILocation(line: 390, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !2, line: 390, column: 7)
!743 = distinct !DILexicalBlock(scope: !737, file: !2, line: 389, column: 5)
!744 = !DILocation(line: 392, column: 28, scope: !745)
!745 = distinct !DILexicalBlock(scope: !737, file: !2, line: 392, column: 12)
!746 = !DILocation(line: 392, column: 22, scope: !745)
!747 = !DILocation(line: 392, column: 12, scope: !737)
!748 = !DILocation(line: 394, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !2, line: 394, column: 7)
!750 = distinct !DILexicalBlock(scope: !745, file: !2, line: 393, column: 5)
!751 = !DILocation(line: 396, column: 15, scope: !752)
!752 = distinct !DILexicalBlock(scope: !745, file: !2, line: 396, column: 12)
!753 = !DILocation(line: 396, column: 20, scope: !752)
!754 = !DILocation(line: 396, column: 12, scope: !745)
!755 = !DILocation(line: 398, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !2, line: 398, column: 7)
!757 = distinct !DILexicalBlock(scope: !752, file: !2, line: 397, column: 5)
!758 = !DILocation(line: 404, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !752, file: !2, line: 401, column: 5)
!760 = !DILocation(line: 406, column: 7, scope: !759)
!761 = !DILocation(line: 408, column: 7, scope: !759)
!762 = !DILocation(line: 0, scope: !737)
!763 = !DILocation(line: 410, column: 1, scope: !728)
!764 = distinct !DISubprogram(name: "gsl_linalg_PTLQ_update", scope: !2, file: !2, line: 428, type: !765, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{!62, !126, !126, !547, !310, !149}
!767 = !{!768, !769, !770, !771, !772, !773, !777, !778, !779, !780, !781, !785, !786, !787, !788, !792, !793, !794, !798, !799, !800}
!768 = !DILocalVariable(name: "Q", arg: 1, scope: !764, file: !2, line: 428, type: !126)
!769 = !DILocalVariable(name: "L", arg: 2, scope: !764, file: !2, line: 428, type: !126)
!770 = !DILocalVariable(name: "p", arg: 3, scope: !764, file: !2, line: 429, type: !547)
!771 = !DILocalVariable(name: "v", arg: 4, scope: !764, file: !2, line: 430, type: !310)
!772 = !DILocalVariable(name: "w", arg: 5, scope: !764, file: !2, line: 430, type: !149)
!773 = !DILocalVariable(name: "j", scope: !774, file: !2, line: 442, type: !132)
!774 = distinct !DILexicalBlock(scope: !775, file: !2, line: 441, column: 5)
!775 = distinct !DILexicalBlock(scope: !776, file: !2, line: 436, column: 12)
!776 = distinct !DILexicalBlock(scope: !764, file: !2, line: 432, column: 7)
!777 = !DILocalVariable(name: "k", scope: !774, file: !2, line: 442, type: !132)
!778 = !DILocalVariable(name: "N", scope: !774, file: !2, line: 443, type: !175)
!779 = !DILocalVariable(name: "M", scope: !774, file: !2, line: 444, type: !175)
!780 = !DILocalVariable(name: "w0", scope: !774, file: !2, line: 445, type: !139)
!781 = !DILocalVariable(name: "c", scope: !782, file: !2, line: 456, type: !139)
!782 = distinct !DILexicalBlock(scope: !783, file: !2, line: 455, column: 9)
!783 = distinct !DILexicalBlock(scope: !784, file: !2, line: 454, column: 7)
!784 = distinct !DILexicalBlock(scope: !774, file: !2, line: 454, column: 7)
!785 = !DILocalVariable(name: "s", scope: !782, file: !2, line: 456, type: !139)
!786 = !DILocalVariable(name: "wk", scope: !782, file: !2, line: 457, type: !139)
!787 = !DILocalVariable(name: "wkm1", scope: !782, file: !2, line: 458, type: !139)
!788 = !DILocalVariable(name: "lj0", scope: !789, file: !2, line: 471, type: !139)
!789 = distinct !DILexicalBlock(scope: !790, file: !2, line: 470, column: 9)
!790 = distinct !DILexicalBlock(scope: !791, file: !2, line: 469, column: 7)
!791 = distinct !DILexicalBlock(scope: !774, file: !2, line: 469, column: 7)
!792 = !DILocalVariable(name: "p_j", scope: !789, file: !2, line: 472, type: !132)
!793 = !DILocalVariable(name: "vj", scope: !789, file: !2, line: 473, type: !139)
!794 = !DILocalVariable(name: "c", scope: !795, file: !2, line: 482, type: !139)
!795 = distinct !DILexicalBlock(scope: !796, file: !2, line: 481, column: 9)
!796 = distinct !DILexicalBlock(scope: !797, file: !2, line: 480, column: 7)
!797 = distinct !DILexicalBlock(scope: !774, file: !2, line: 480, column: 7)
!798 = !DILocalVariable(name: "s", scope: !795, file: !2, line: 482, type: !139)
!799 = !DILocalVariable(name: "diag", scope: !795, file: !2, line: 483, type: !139)
!800 = !DILocalVariable(name: "offdiag", scope: !795, file: !2, line: 484, type: !139)
!801 = !DILocation(line: 0, scope: !764)
!802 = !DILocation(line: 432, column: 10, scope: !776)
!803 = !DILocation(line: 432, column: 22, scope: !776)
!804 = !DILocation(line: 432, column: 16, scope: !776)
!805 = !DILocation(line: 432, column: 28, scope: !776)
!806 = !DILocation(line: 432, column: 34, scope: !776)
!807 = !DILocation(line: 432, column: 46, scope: !776)
!808 = !DILocation(line: 432, column: 40, scope: !776)
!809 = !DILocation(line: 432, column: 7, scope: !764)
!810 = !DILocation(line: 436, column: 21, scope: !775)
!811 = !DILocation(line: 436, column: 33, scope: !775)
!812 = !DILocation(line: 436, column: 39, scope: !775)
!813 = !DILocation(line: 436, column: 44, scope: !775)
!814 = !DILocation(line: 436, column: 56, scope: !775)
!815 = !DILocation(line: 436, column: 62, scope: !775)
!816 = !DILocation(line: 436, column: 67, scope: !775)
!817 = !DILocation(line: 436, column: 12, scope: !776)
!818 = !DILocation(line: 454, scope: !784)
!819 = !DILocation(line: 0, scope: !774)
!820 = !DILocation(line: 454, column: 25, scope: !783)
!821 = !DILocation(line: 454, column: 7, scope: !784)
!822 = !DILocation(line: 0, scope: !307, inlinedAt: !823)
!823 = distinct !DILocation(line: 457, column: 23, scope: !782)
!824 = !DILocation(line: 183, column: 20, scope: !307, inlinedAt: !823)
!825 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !823)
!826 = !DILocation(line: 0, scope: !782)
!827 = !DILocation(line: 458, column: 46, scope: !782)
!828 = !DILocation(line: 0, scope: !307, inlinedAt: !829)
!829 = distinct !DILocation(line: 458, column: 25, scope: !782)
!830 = !DILocation(line: 183, column: 20, scope: !307, inlinedAt: !829)
!831 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !829)
!832 = !DILocalVariable(name: "a", arg: 1, scope: !833, file: !461, line: 740, type: !836)
!833 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !461, file: !461, line: 740, type: !834, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !837)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !836, !836, !138, !138}
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!837 = !{!832, !838, !839, !840, !841, !845, !846, !848}
!838 = !DILocalVariable(name: "b", arg: 2, scope: !833, file: !461, line: 740, type: !836)
!839 = !DILocalVariable(name: "c", arg: 3, scope: !833, file: !461, line: 740, type: !138)
!840 = !DILocalVariable(name: "s", arg: 4, scope: !833, file: !461, line: 740, type: !138)
!841 = !DILocalVariable(name: "t", scope: !842, file: !461, line: 749, type: !139)
!842 = distinct !DILexicalBlock(scope: !843, file: !461, line: 748, column: 5)
!843 = distinct !DILexicalBlock(scope: !844, file: !461, line: 747, column: 12)
!844 = distinct !DILexicalBlock(scope: !833, file: !461, line: 742, column: 7)
!845 = !DILocalVariable(name: "s1", scope: !842, file: !461, line: 750, type: !139)
!846 = !DILocalVariable(name: "t", scope: !847, file: !461, line: 756, type: !139)
!847 = distinct !DILexicalBlock(scope: !843, file: !461, line: 755, column: 5)
!848 = !DILocalVariable(name: "c1", scope: !847, file: !461, line: 757, type: !139)
!849 = !DILocation(line: 0, scope: !833, inlinedAt: !850)
!850 = distinct !DILocation(line: 460, column: 11, scope: !782)
!851 = !DILocation(line: 742, column: 9, scope: !844, inlinedAt: !850)
!852 = !DILocation(line: 742, column: 7, scope: !833, inlinedAt: !850)
!853 = !DILocation(line: 747, column: 12, scope: !843, inlinedAt: !850)
!854 = !DILocation(line: 747, column: 23, scope: !843, inlinedAt: !850)
!855 = !DILocation(line: 747, column: 21, scope: !843, inlinedAt: !850)
!856 = !DILocation(line: 747, column: 12, scope: !844, inlinedAt: !850)
!857 = !DILocation(line: 749, column: 18, scope: !842, inlinedAt: !850)
!858 = !DILocation(line: 749, column: 21, scope: !842, inlinedAt: !850)
!859 = !DILocation(line: 0, scope: !842, inlinedAt: !850)
!860 = !DILocation(line: 750, column: 37, scope: !842, inlinedAt: !850)
!861 = !DILocation(line: 750, column: 33, scope: !842, inlinedAt: !850)
!862 = !DILocation(line: 750, column: 25, scope: !842, inlinedAt: !850)
!863 = !DILocation(line: 750, column: 23, scope: !842, inlinedAt: !850)
!864 = !DILocation(line: 752, column: 15, scope: !842, inlinedAt: !850)
!865 = !DILocation(line: 753, column: 5, scope: !842, inlinedAt: !850)
!866 = !DILocation(line: 756, column: 18, scope: !847, inlinedAt: !850)
!867 = !DILocation(line: 756, column: 21, scope: !847, inlinedAt: !850)
!868 = !DILocation(line: 0, scope: !847, inlinedAt: !850)
!869 = !DILocation(line: 757, column: 37, scope: !847, inlinedAt: !850)
!870 = !DILocation(line: 757, column: 33, scope: !847, inlinedAt: !850)
!871 = !DILocation(line: 757, column: 25, scope: !847, inlinedAt: !850)
!872 = !DILocation(line: 757, column: 23, scope: !847, inlinedAt: !850)
!873 = !DILocation(line: 759, column: 15, scope: !847, inlinedAt: !850)
!874 = !DILocation(line: 0, scope: !844, inlinedAt: !850)
!875 = !DILocalVariable(name: "v", arg: 1, scope: !876, file: !461, line: 765, type: !149)
!876 = distinct !DISubprogram(name: "gsl_linalg_givens_gv", scope: !461, file: !461, line: 765, type: !877, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{null, !149, !175, !175, !836, !836}
!879 = !{!875, !880, !881, !882, !883, !884, !885}
!880 = !DILocalVariable(name: "i", arg: 2, scope: !876, file: !461, line: 765, type: !175)
!881 = !DILocalVariable(name: "j", arg: 3, scope: !876, file: !461, line: 765, type: !175)
!882 = !DILocalVariable(name: "c", arg: 4, scope: !876, file: !461, line: 766, type: !836)
!883 = !DILocalVariable(name: "s", arg: 5, scope: !876, file: !461, line: 766, type: !836)
!884 = !DILocalVariable(name: "vi", scope: !876, file: !461, line: 770, type: !139)
!885 = !DILocalVariable(name: "vj", scope: !876, file: !461, line: 771, type: !139)
!886 = !DILocation(line: 0, scope: !876, inlinedAt: !887)
!887 = distinct !DILocation(line: 461, column: 11, scope: !782)
!888 = !DILocation(line: 0, scope: !307, inlinedAt: !889)
!889 = distinct !DILocation(line: 770, column: 15, scope: !876, inlinedAt: !887)
!890 = !DILocation(line: 0, scope: !307, inlinedAt: !891)
!891 = distinct !DILocation(line: 771, column: 15, scope: !876, inlinedAt: !887)
!892 = !DILocation(line: 772, column: 27, scope: !876, inlinedAt: !887)
!893 = !DILocation(line: 772, column: 36, scope: !876, inlinedAt: !887)
!894 = !DILocation(line: 772, column: 32, scope: !876, inlinedAt: !887)
!895 = !DILocation(line: 0, scope: !284, inlinedAt: !896)
!896 = distinct !DILocation(line: 772, column: 3, scope: !876, inlinedAt: !887)
!897 = !DILocation(line: 196, column: 26, scope: !284, inlinedAt: !896)
!898 = !DILocation(line: 773, column: 27, scope: !876, inlinedAt: !887)
!899 = !DILocation(line: 773, column: 36, scope: !876, inlinedAt: !887)
!900 = !DILocation(line: 773, column: 32, scope: !876, inlinedAt: !887)
!901 = !DILocation(line: 0, scope: !284, inlinedAt: !902)
!902 = distinct !DILocation(line: 773, column: 3, scope: !876, inlinedAt: !887)
!903 = !DILocation(line: 196, column: 26, scope: !284, inlinedAt: !902)
!904 = !DILocalVariable(name: "M", arg: 1, scope: !905, file: !906, line: 69, type: !132)
!905 = distinct !DISubprogram(name: "apply_givens_lq", scope: !906, file: !906, line: 69, type: !907, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !909)
!906 = !DIFile(filename: "./apply_givens.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1430c6da1968c27d96b974d1078e7cb2")
!907 = !DISubroutineType(types: !908)
!908 = !{null, !132, !132, !126, !126, !132, !132, !139, !139}
!909 = !{!904, !910, !911, !912, !913, !914, !915, !916, !917, !918, !922, !923, !927}
!910 = !DILocalVariable(name: "N", arg: 2, scope: !905, file: !906, line: 69, type: !132)
!911 = !DILocalVariable(name: "Q", arg: 3, scope: !905, file: !906, line: 69, type: !126)
!912 = !DILocalVariable(name: "L", arg: 4, scope: !905, file: !906, line: 69, type: !126)
!913 = !DILocalVariable(name: "i", arg: 5, scope: !905, file: !906, line: 70, type: !132)
!914 = !DILocalVariable(name: "j", arg: 6, scope: !905, file: !906, line: 70, type: !132)
!915 = !DILocalVariable(name: "c", arg: 7, scope: !905, file: !906, line: 70, type: !139)
!916 = !DILocalVariable(name: "s", arg: 8, scope: !905, file: !906, line: 70, type: !139)
!917 = !DILocalVariable(name: "k", scope: !905, file: !906, line: 72, type: !132)
!918 = !DILocalVariable(name: "qik", scope: !919, file: !906, line: 86, type: !139)
!919 = distinct !DILexicalBlock(scope: !920, file: !906, line: 85, column: 5)
!920 = distinct !DILexicalBlock(scope: !921, file: !906, line: 84, column: 3)
!921 = distinct !DILexicalBlock(scope: !905, file: !906, line: 84, column: 3)
!922 = !DILocalVariable(name: "qjk", scope: !919, file: !906, line: 87, type: !139)
!923 = !DILocalVariable(name: "lki", scope: !924, file: !906, line: 107, type: !139)
!924 = distinct !DILexicalBlock(scope: !925, file: !906, line: 106, column: 5)
!925 = distinct !DILexicalBlock(scope: !926, file: !906, line: 105, column: 3)
!926 = distinct !DILexicalBlock(scope: !905, file: !906, line: 105, column: 3)
!927 = !DILocalVariable(name: "lkj", scope: !924, file: !906, line: 108, type: !139)
!928 = !DILocation(line: 0, scope: !905, inlinedAt: !929)
!929 = distinct !DILocation(line: 462, column: 11, scope: !782)
!930 = !DILocation(line: 84, column: 3, scope: !921, inlinedAt: !929)
!931 = !DILocation(line: 0, scope: !380, inlinedAt: !932)
!932 = distinct !DILocation(line: 86, column: 20, scope: !919, inlinedAt: !929)
!933 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !932)
!934 = !DILocation(line: 0, scope: !919, inlinedAt: !929)
!935 = !DILocation(line: 0, scope: !380, inlinedAt: !936)
!936 = distinct !DILocation(line: 87, column: 20, scope: !919, inlinedAt: !929)
!937 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !936)
!938 = !DILocation(line: 88, column: 36, scope: !919, inlinedAt: !929)
!939 = !DILocation(line: 88, column: 46, scope: !919, inlinedAt: !929)
!940 = !DILocation(line: 88, column: 40, scope: !919, inlinedAt: !929)
!941 = !DILocalVariable(name: "m", arg: 1, scope: !942, file: !128, line: 290, type: !126)
!942 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !128, file: !128, line: 290, type: !943, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !945)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !126, !175, !175, !836}
!945 = !{!941, !946, !947, !948}
!946 = !DILocalVariable(name: "i", arg: 2, scope: !942, file: !128, line: 290, type: !175)
!947 = !DILocalVariable(name: "j", arg: 3, scope: !942, file: !128, line: 290, type: !175)
!948 = !DILocalVariable(name: "x", arg: 4, scope: !942, file: !128, line: 290, type: !836)
!949 = !DILocation(line: 0, scope: !942, inlinedAt: !950)
!950 = distinct !DILocation(line: 88, column: 7, scope: !919, inlinedAt: !929)
!951 = !DILocation(line: 305, column: 27, scope: !942, inlinedAt: !950)
!952 = !DILocation(line: 89, column: 36, scope: !919, inlinedAt: !929)
!953 = !DILocation(line: 89, column: 46, scope: !919, inlinedAt: !929)
!954 = !DILocation(line: 89, column: 40, scope: !919, inlinedAt: !929)
!955 = !DILocation(line: 0, scope: !942, inlinedAt: !956)
!956 = distinct !DILocation(line: 89, column: 7, scope: !919, inlinedAt: !929)
!957 = !DILocation(line: 305, column: 27, scope: !942, inlinedAt: !956)
!958 = !DILocation(line: 84, column: 23, scope: !920, inlinedAt: !929)
!959 = distinct !{!959, !930, !960, !305}
!960 = !DILocation(line: 90, column: 5, scope: !921, inlinedAt: !929)
!961 = !DILocation(line: 105, column: 12, scope: !926, inlinedAt: !929)
!962 = !DILocation(line: 105, column: 30, scope: !925, inlinedAt: !929)
!963 = !DILocation(line: 105, column: 3, scope: !926, inlinedAt: !929)
!964 = !DILocation(line: 0, scope: !380, inlinedAt: !965)
!965 = distinct !DILocation(line: 107, column: 20, scope: !924, inlinedAt: !929)
!966 = !DILocation(line: 285, column: 20, scope: !380, inlinedAt: !965)
!967 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !965)
!968 = !DILocation(line: 0, scope: !924, inlinedAt: !929)
!969 = !DILocation(line: 0, scope: !380, inlinedAt: !970)
!970 = distinct !DILocation(line: 108, column: 20, scope: !924, inlinedAt: !929)
!971 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !970)
!972 = !DILocation(line: 109, column: 34, scope: !924, inlinedAt: !929)
!973 = !DILocation(line: 109, column: 44, scope: !924, inlinedAt: !929)
!974 = !DILocation(line: 109, column: 40, scope: !924, inlinedAt: !929)
!975 = !DILocation(line: 0, scope: !942, inlinedAt: !976)
!976 = distinct !DILocation(line: 109, column: 7, scope: !924, inlinedAt: !929)
!977 = !DILocation(line: 305, column: 27, scope: !942, inlinedAt: !976)
!978 = !DILocation(line: 110, column: 34, scope: !924, inlinedAt: !929)
!979 = !DILocation(line: 110, column: 44, scope: !924, inlinedAt: !929)
!980 = !DILocation(line: 110, column: 40, scope: !924, inlinedAt: !929)
!981 = !DILocation(line: 0, scope: !942, inlinedAt: !982)
!982 = distinct !DILocation(line: 110, column: 7, scope: !924, inlinedAt: !929)
!983 = !DILocation(line: 305, column: 27, scope: !942, inlinedAt: !982)
!984 = !DILocation(line: 105, column: 36, scope: !925, inlinedAt: !929)
!985 = distinct !{!985, !963, !986, !305}
!986 = !DILocation(line: 111, column: 5, scope: !926, inlinedAt: !929)
!987 = distinct !{!987, !821, !988, !305}
!988 = !DILocation(line: 463, column: 9, scope: !784)
!989 = !DILocation(line: 0, scope: !307, inlinedAt: !990)
!990 = distinct !DILocation(line: 465, column: 12, scope: !774)
!991 = !DILocation(line: 469, column: 21, scope: !790)
!992 = !DILocation(line: 469, column: 7, scope: !791)
!993 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !990)
!994 = !{!260, !245, i64 8}
!995 = !DILocation(line: 0, scope: !380, inlinedAt: !996)
!996 = distinct !DILocation(line: 471, column: 24, scope: !789)
!997 = !DILocation(line: 285, column: 20, scope: !380, inlinedAt: !996)
!998 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !996)
!999 = !DILocation(line: 0, scope: !789)
!1000 = !DILocalVariable(name: "p", arg: 1, scope: !1001, file: !161, line: 85, type: !547)
!1001 = distinct !DISubprogram(name: "gsl_permutation_get", scope: !161, file: !161, line: 85, type: !1002, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !58, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!132, !547, !175}
!1004 = !{!1000, !1005}
!1005 = !DILocalVariable(name: "i", arg: 2, scope: !1001, file: !161, line: 85, type: !175)
!1006 = !DILocation(line: 0, scope: !1001, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 472, column: 24, scope: !789)
!1008 = !DILocation(line: 93, column: 10, scope: !1001, inlinedAt: !1007)
!1009 = !{!242, !242, i64 0}
!1010 = !DILocation(line: 0, scope: !307, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 473, column: 23, scope: !789)
!1012 = !DILocation(line: 183, column: 20, scope: !307, inlinedAt: !1011)
!1013 = !DILocation(line: 183, column: 10, scope: !307, inlinedAt: !1011)
!1014 = !DILocation(line: 474, column: 45, scope: !789)
!1015 = !DILocation(line: 474, column: 40, scope: !789)
!1016 = !DILocation(line: 0, scope: !942, inlinedAt: !1017)
!1017 = distinct !DILocation(line: 474, column: 11, scope: !789)
!1018 = !DILocation(line: 305, column: 27, scope: !942, inlinedAt: !1017)
!1019 = !DILocation(line: 480, column: 21, scope: !796)
!1020 = !DILocation(line: 480, column: 7, scope: !797)
!1021 = !DILocation(line: 469, column: 27, scope: !790)
!1022 = distinct !{!1022, !992, !1023, !305}
!1023 = !DILocation(line: 475, column: 9, scope: !791)
!1024 = !DILocation(line: 483, column: 46, scope: !795)
!1025 = !DILocation(line: 0, scope: !380, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 483, column: 25, scope: !795)
!1027 = !DILocation(line: 285, column: 20, scope: !380, inlinedAt: !1026)
!1028 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1026)
!1029 = !DILocation(line: 0, scope: !795)
!1030 = !DILocation(line: 0, scope: !380, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 484, column: 28, scope: !795)
!1032 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1031)
!1033 = !DILocation(line: 0, scope: !833, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 486, column: 11, scope: !795)
!1035 = !DILocation(line: 742, column: 9, scope: !844, inlinedAt: !1034)
!1036 = !DILocation(line: 742, column: 7, scope: !833, inlinedAt: !1034)
!1037 = !DILocation(line: 747, column: 12, scope: !843, inlinedAt: !1034)
!1038 = !DILocation(line: 747, column: 23, scope: !843, inlinedAt: !1034)
!1039 = !DILocation(line: 747, column: 21, scope: !843, inlinedAt: !1034)
!1040 = !DILocation(line: 747, column: 12, scope: !844, inlinedAt: !1034)
!1041 = !DILocation(line: 749, column: 18, scope: !842, inlinedAt: !1034)
!1042 = !DILocation(line: 749, column: 21, scope: !842, inlinedAt: !1034)
!1043 = !DILocation(line: 0, scope: !842, inlinedAt: !1034)
!1044 = !DILocation(line: 750, column: 37, scope: !842, inlinedAt: !1034)
!1045 = !DILocation(line: 750, column: 33, scope: !842, inlinedAt: !1034)
!1046 = !DILocation(line: 750, column: 25, scope: !842, inlinedAt: !1034)
!1047 = !DILocation(line: 750, column: 23, scope: !842, inlinedAt: !1034)
!1048 = !DILocation(line: 752, column: 15, scope: !842, inlinedAt: !1034)
!1049 = !DILocation(line: 753, column: 5, scope: !842, inlinedAt: !1034)
!1050 = !DILocation(line: 756, column: 18, scope: !847, inlinedAt: !1034)
!1051 = !DILocation(line: 756, column: 21, scope: !847, inlinedAt: !1034)
!1052 = !DILocation(line: 0, scope: !847, inlinedAt: !1034)
!1053 = !DILocation(line: 757, column: 37, scope: !847, inlinedAt: !1034)
!1054 = !DILocation(line: 757, column: 33, scope: !847, inlinedAt: !1034)
!1055 = !DILocation(line: 757, column: 25, scope: !847, inlinedAt: !1034)
!1056 = !DILocation(line: 757, column: 23, scope: !847, inlinedAt: !1034)
!1057 = !DILocation(line: 759, column: 15, scope: !847, inlinedAt: !1034)
!1058 = !DILocation(line: 0, scope: !844, inlinedAt: !1034)
!1059 = !DILocation(line: 0, scope: !905, inlinedAt: !1060)
!1060 = distinct !DILocation(line: 487, column: 11, scope: !795)
!1061 = !DILocation(line: 84, column: 3, scope: !921, inlinedAt: !1060)
!1062 = !DILocation(line: 0, scope: !380, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 86, column: 20, scope: !919, inlinedAt: !1060)
!1064 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1063)
!1065 = !DILocation(line: 0, scope: !919, inlinedAt: !1060)
!1066 = !DILocation(line: 0, scope: !380, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 87, column: 20, scope: !919, inlinedAt: !1060)
!1068 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1067)
!1069 = !DILocation(line: 88, column: 36, scope: !919, inlinedAt: !1060)
!1070 = !DILocation(line: 88, column: 46, scope: !919, inlinedAt: !1060)
!1071 = !DILocation(line: 88, column: 40, scope: !919, inlinedAt: !1060)
!1072 = !DILocation(line: 0, scope: !942, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 88, column: 7, scope: !919, inlinedAt: !1060)
!1074 = !DILocation(line: 305, column: 27, scope: !942, inlinedAt: !1073)
!1075 = !DILocation(line: 89, column: 36, scope: !919, inlinedAt: !1060)
!1076 = !DILocation(line: 89, column: 46, scope: !919, inlinedAt: !1060)
!1077 = !DILocation(line: 89, column: 40, scope: !919, inlinedAt: !1060)
!1078 = !DILocation(line: 0, scope: !942, inlinedAt: !1079)
!1079 = distinct !DILocation(line: 89, column: 7, scope: !919, inlinedAt: !1060)
!1080 = !DILocation(line: 305, column: 27, scope: !942, inlinedAt: !1079)
!1081 = !DILocation(line: 84, column: 23, scope: !920, inlinedAt: !1060)
!1082 = distinct !{!1082, !1061, !1083, !305}
!1083 = !DILocation(line: 90, column: 5, scope: !921, inlinedAt: !1060)
!1084 = !DILocation(line: 105, column: 12, scope: !926, inlinedAt: !1060)
!1085 = !DILocation(line: 105, column: 3, scope: !926, inlinedAt: !1060)
!1086 = !DILocation(line: 0, scope: !380, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 107, column: 20, scope: !924, inlinedAt: !1060)
!1088 = !DILocation(line: 285, column: 20, scope: !380, inlinedAt: !1087)
!1089 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1087)
!1090 = !DILocation(line: 0, scope: !924, inlinedAt: !1060)
!1091 = !DILocation(line: 0, scope: !380, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 108, column: 20, scope: !924, inlinedAt: !1060)
!1093 = !DILocation(line: 285, column: 10, scope: !380, inlinedAt: !1092)
!1094 = !DILocation(line: 109, column: 34, scope: !924, inlinedAt: !1060)
!1095 = !DILocation(line: 109, column: 44, scope: !924, inlinedAt: !1060)
!1096 = !DILocation(line: 109, column: 40, scope: !924, inlinedAt: !1060)
!1097 = !DILocation(line: 0, scope: !942, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 109, column: 7, scope: !924, inlinedAt: !1060)
!1099 = !DILocation(line: 305, column: 27, scope: !942, inlinedAt: !1098)
!1100 = !DILocation(line: 110, column: 34, scope: !924, inlinedAt: !1060)
!1101 = !DILocation(line: 110, column: 44, scope: !924, inlinedAt: !1060)
!1102 = !DILocation(line: 110, column: 40, scope: !924, inlinedAt: !1060)
!1103 = !DILocation(line: 0, scope: !942, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 110, column: 7, scope: !924, inlinedAt: !1060)
!1105 = !DILocation(line: 305, column: 27, scope: !942, inlinedAt: !1104)
!1106 = !DILocation(line: 105, column: 36, scope: !925, inlinedAt: !1060)
!1107 = !DILocation(line: 105, column: 30, scope: !925, inlinedAt: !1060)
!1108 = distinct !{!1108, !1085, !1109, !305}
!1109 = !DILocation(line: 111, column: 5, scope: !926, inlinedAt: !1060)
!1110 = !DILocation(line: 480, column: 27, scope: !796)
!1111 = distinct !{!1111, !1020, !1112, !305}
!1112 = !DILocation(line: 488, column: 9, scope: !797)
!1113 = !DILocation(line: 0, scope: !776)
!1114 = !DILocation(line: 492, column: 1, scope: !764)
