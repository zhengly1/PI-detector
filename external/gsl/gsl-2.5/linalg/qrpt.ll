; ModuleID = 'qrpt.c'
source_filename = "qrpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_const_view = type { %struct.gsl_matrix }
%struct.gsl_permutation_struct = type { i64, ptr }
%struct._gsl_vector_const_view = type { %struct.gsl_vector }

@.str = private unnamed_addr constant [29 x i8] c"size of tau must be MIN(M,N)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"qrpt.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [27 x i8] c"permutation size must be N\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [20 x i8] c"norm size must be N\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [16 x i8] c"q must be M x M\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [16 x i8] c"r must be M x N\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [25 x i8] c"QR matrix must be square\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [40 x i8] c"matrix size must match permutation size\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [30 x i8] c"matrix size must match b size\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [37 x i8] c"matrix size must match solution size\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [25 x i8] c"QR matrix must have M>=N\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [29 x i8] c"rank must have 0 < rank <= N\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [37 x i8] c"matrix size must match residual size\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [30 x i8] c"matrix size must match x size\00", align 1, !dbg !55
@.str.14 = private unnamed_addr constant [35 x i8] c"permutation size must match x size\00", align 1, !dbg !57
@.str.15 = private unnamed_addr constant [37 x i8] c"Q matrix must be M x M if R is M x N\00", align 1, !dbg !62
@.str.16 = private unnamed_addr constant [33 x i8] c"w must be length M if R is M x N\00", align 1, !dbg !64
@.str.17 = private unnamed_addr constant [33 x i8] c"v must be length N if R is M x N\00", align 1, !dbg !69
@.str.18 = private unnamed_addr constant [15 x i8] c"M must be >= N\00", align 1, !dbg !71
@.str.19 = private unnamed_addr constant [33 x i8] c"work vector must have length 3*N\00", align 1, !dbg !76

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_decomp(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !145 {
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !249
  call void @llvm.dbg.assign(metadata i1 undef, metadata !203, metadata !DIExpression(), metadata !249, metadata ptr %6, metadata !DIExpression()), !dbg !250
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !251
  call void @llvm.dbg.assign(metadata i1 undef, metadata !223, metadata !DIExpression(), metadata !251, metadata ptr %7, metadata !DIExpression()), !dbg !252
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !253
  call void @llvm.dbg.assign(metadata i1 undef, metadata !225, metadata !DIExpression(), metadata !253, metadata ptr %8, metadata !DIExpression()), !dbg !252
  %9 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !254
  call void @llvm.dbg.assign(metadata i1 undef, metadata !227, metadata !DIExpression(), metadata !254, metadata ptr %9, metadata !DIExpression()), !dbg !255
  %10 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !245, metadata !DIExpression(), metadata !256, metadata ptr %10, metadata !DIExpression()), !dbg !257
  %11 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !258
  call void @llvm.dbg.assign(metadata i1 undef, metadata !248, metadata !DIExpression(), metadata !258, metadata ptr %11, metadata !DIExpression()), !dbg !257
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !190, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !191, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !192, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !193, metadata !DIExpression()), !dbg !259
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !194, metadata !DIExpression()), !dbg !259
  %12 = load i64, ptr %0, align 8, !dbg !260, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !195, metadata !DIExpression()), !dbg !259
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !268
  %14 = load i64, ptr %13, align 8, !dbg !268, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !197, metadata !DIExpression()), !dbg !259
  %15 = load i64, ptr %1, align 8, !dbg !270, !tbaa !271
  %16 = tail call i64 @llvm.umin.i64(i64 %12, i64 %14), !dbg !273
  %17 = icmp eq i64 %15, %16, !dbg !274
  br i1 %17, label %19, label %18, !dbg !275

18:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 75, i32 noundef 19) #7, !dbg !276
  br label %140, !dbg !276

19:                                               ; preds = %5
  %20 = load i64, ptr %2, align 8, !dbg !279, !tbaa !280
  %21 = icmp eq i64 %20, %14, !dbg !282
  br i1 %21, label %23, label %22, !dbg !283

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 79, i32 noundef 19) #7, !dbg !284
  br label %140, !dbg !284

23:                                               ; preds = %19
  %24 = load i64, ptr %4, align 8, !dbg !287, !tbaa !271
  %25 = icmp eq i64 %24, %14, !dbg !288
  br i1 %25, label %27, label %26, !dbg !289

26:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 19) #7, !dbg !290
  br label %140, !dbg !290

27:                                               ; preds = %23
  store i32 1, ptr %3, align 4, !dbg !293, !tbaa !294
  tail call void @gsl_permutation_init(ptr noundef nonnull %2) #7, !dbg !295
  tail call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !296
  %28 = icmp eq i64 %14, 0, !dbg !297
  br i1 %28, label %32, label %29, !dbg !298

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %31 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  br label %41, !dbg !298

32:                                               ; preds = %41, %27
  tail call void @llvm.dbg.value(metadata i64 0, metadata !198, metadata !DIExpression()), !dbg !296
  %33 = icmp eq i64 %15, 0, !dbg !299
  br i1 %33, label %140, label %34, !dbg !300

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %37 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %38 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %39 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %50, !dbg !300

41:                                               ; preds = %29, %41
  %42 = phi i64 [ 0, %29 ], [ %48, %41 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #7, !dbg !301
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %42) #7, !dbg !302
  %43 = call double @gsl_blas_dnrm2(ptr noundef nonnull %6) #7, !dbg !303
  tail call void @llvm.dbg.value(metadata double %43, metadata !212, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !304, metadata !DIExpression()), !dbg !311
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !309, metadata !DIExpression()), !dbg !311
  tail call void @llvm.dbg.value(metadata double %43, metadata !310, metadata !DIExpression()), !dbg !311
  %44 = load ptr, ptr %30, align 8, !dbg !313, !tbaa !314
  %45 = load i64, ptr %31, align 8, !dbg !315, !tbaa !316
  %46 = mul i64 %45, %42, !dbg !317
  %47 = getelementptr inbounds double, ptr %44, i64 %46, !dbg !318
  store double %43, ptr %47, align 8, !dbg !319, !tbaa !320
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #7, !dbg !322
  %48 = add nuw i64 %42, 1, !dbg !323
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !198, metadata !DIExpression()), !dbg !296
  %49 = icmp eq i64 %48, %14, !dbg !297
  br i1 %49, label %32, label %41, !dbg !298, !llvm.loop !324

50:                                               ; preds = %34, %138
  %51 = phi i64 [ 0, %34 ], [ %54, %138 ]
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !198, metadata !DIExpression()), !dbg !296
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !335
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !334, metadata !DIExpression()), !dbg !335
  %52 = load ptr, ptr %35, align 8, !dbg !337, !tbaa !314
  %53 = load i64, ptr %36, align 8, !dbg !338, !tbaa !316
  tail call void @llvm.dbg.value(metadata double poison, metadata !213, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !218, metadata !DIExpression()), !dbg !339
  %54 = add nuw i64 %51, 1, !dbg !340
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !217, metadata !DIExpression()), !dbg !339
  %55 = icmp ult i64 %54, %14, !dbg !341
  br i1 %55, label %56, label %80, !dbg !342

56:                                               ; preds = %50
  %57 = mul i64 %53, %51, !dbg !343
  %58 = getelementptr inbounds double, ptr %52, i64 %57, !dbg !344
  %59 = load double, ptr %58, align 8, !dbg !344, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %59, metadata !213, metadata !DIExpression()), !dbg !339
  br label %60, !dbg !342

60:                                               ; preds = %56, %60
  %61 = phi double [ %69, %60 ], [ %59, %56 ]
  %62 = phi i64 [ %68, %60 ], [ %51, %56 ]
  %63 = phi i64 [ %70, %60 ], [ %54, %56 ]
  tail call void @llvm.dbg.value(metadata double %61, metadata !213, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !218, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !217, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !334, metadata !DIExpression()), !dbg !345
  %64 = mul i64 %63, %53, !dbg !347
  %65 = getelementptr inbounds double, ptr %52, i64 %64, !dbg !348
  %66 = load double, ptr %65, align 8, !dbg !348, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %66, metadata !219, metadata !DIExpression()), !dbg !349
  %67 = fcmp ogt double %66, %61, !dbg !350
  %68 = select i1 %67, i64 %63, i64 %62, !dbg !352
  %69 = select i1 %67, double %66, double %61, !dbg !352
  tail call void @llvm.dbg.value(metadata double %69, metadata !213, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !218, metadata !DIExpression()), !dbg !339
  %70 = add nuw i64 %63, 1, !dbg !353
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !217, metadata !DIExpression()), !dbg !339
  %71 = icmp ult i64 %70, %14, !dbg !341
  br i1 %71, label %60, label %72, !dbg !342, !llvm.loop !354

72:                                               ; preds = %60
  %73 = icmp eq i64 %68, %51, !dbg !356
  br i1 %73, label %80, label %74, !dbg !358

74:                                               ; preds = %72
  %75 = call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %0, i64 noundef %51, i64 noundef %68) #7, !dbg !359
  %76 = call i32 @gsl_permutation_swap(ptr noundef nonnull %2, i64 noundef %51, i64 noundef %68) #7, !dbg !361
  %77 = call i32 @gsl_vector_swap_elements(ptr noundef nonnull %4, i64 noundef %51, i64 noundef %68) #7, !dbg !362
  %78 = load i32, ptr %3, align 4, !dbg !363, !tbaa !294
  %79 = sub nsw i32 0, %78, !dbg !364
  store i32 %79, ptr %3, align 4, !dbg !365, !tbaa !294
  br label %80, !dbg !366

80:                                               ; preds = %50, %74, %72
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #7, !dbg !367
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %51) #7, !dbg !368
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #7, !dbg !369
  %81 = sub i64 %12, %51, !dbg !370
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %7, i64 noundef %51, i64 noundef %81) #7, !dbg !371
  %82 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %8) #7, !dbg !372
  tail call void @llvm.dbg.value(metadata double %82, metadata !226, metadata !DIExpression()), !dbg !252
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !304, metadata !DIExpression()), !dbg !373
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !309, metadata !DIExpression()), !dbg !373
  tail call void @llvm.dbg.value(metadata double %82, metadata !310, metadata !DIExpression()), !dbg !373
  %83 = load ptr, ptr %37, align 8, !dbg !375, !tbaa !314
  %84 = load i64, ptr %38, align 8, !dbg !376, !tbaa !316
  %85 = mul i64 %84, %51, !dbg !377
  %86 = getelementptr inbounds double, ptr %83, i64 %85, !dbg !378
  store double %82, ptr %86, align 8, !dbg !379, !tbaa !320
  br i1 %55, label %88, label %87, !dbg !380

87:                                               ; preds = %80
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #7, !dbg !381
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7, !dbg !381
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !217, metadata !DIExpression()), !dbg !339
  br label %138, !dbg !382

88:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #7, !dbg !383
  %89 = sub i64 %14, %54, !dbg !384
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef %51, i64 noundef %54, i64 noundef %81, i64 noundef %89) #7, !dbg !385
  %90 = call i32 @gsl_linalg_householder_hm(double noundef %82, ptr noundef nonnull %8, ptr noundef nonnull %9) #7, !dbg !386
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #7, !dbg !387
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #7, !dbg !381
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #7, !dbg !381
  %91 = icmp ult i64 %54, %12, !dbg !388
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !217, metadata !DIExpression()), !dbg !339
  %92 = and i1 %91, %55, !dbg !382
  br i1 %92, label %93, label %138, !dbg !382

93:                                               ; preds = %88
  %94 = sub i64 %12, %54
  %95 = load ptr, ptr %35, align 8, !dbg !389, !tbaa !314
  %96 = load i64, ptr %36, align 8, !dbg !391, !tbaa !316
  br label %97, !dbg !392

97:                                               ; preds = %93, %133
  %98 = phi i64 [ %96, %93 ], [ %134, %133 ], !dbg !391
  %99 = phi ptr [ %95, %93 ], [ %135, %133 ], !dbg !389
  %100 = phi i64 [ %54, %93 ], [ %136, %133 ]
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !217, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !334, metadata !DIExpression()), !dbg !393
  %101 = mul i64 %98, %100, !dbg !394
  %102 = getelementptr inbounds double, ptr %99, i64 %101, !dbg !395
  %103 = load double, ptr %102, align 8, !dbg !395, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %103, metadata !235, metadata !DIExpression()), !dbg !396
  %104 = fcmp ogt double %103, 0.000000e+00, !dbg !397
  br i1 %104, label %105, label %133, !dbg !398

105:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !241, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !400, metadata !DIExpression()), !dbg !409
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !407, metadata !DIExpression()), !dbg !409
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !408, metadata !DIExpression()), !dbg !409
  %106 = load ptr, ptr %39, align 8, !dbg !411, !tbaa !412
  %107 = load i64, ptr %40, align 8, !dbg !413, !tbaa !414
  %108 = mul i64 %107, %51, !dbg !415
  %109 = getelementptr double, ptr %106, i64 %108, !dbg !416
  %110 = getelementptr double, ptr %109, i64 %100, !dbg !416
  %111 = load double, ptr %110, align 8, !dbg !416, !tbaa !320
  %112 = fdiv double %111, %103, !dbg !417
  tail call void @llvm.dbg.value(metadata double %112, metadata !244, metadata !DIExpression()), !dbg !399
  %113 = call double @llvm.fabs.f64(double %112), !dbg !418
  %114 = fcmp ult double %113, 1.000000e+00, !dbg !420
  br i1 %114, label %115, label %120, !dbg !421

115:                                              ; preds = %105
  %116 = fmul double %112, %112, !dbg !422
  %117 = fsub double 1.000000e+00, %116, !dbg !423
  %118 = call double @sqrt(double noundef %117) #7, !dbg !424
  %119 = fmul double %103, %118, !dbg !425
  tail call void @llvm.dbg.value(metadata double %119, metadata !241, metadata !DIExpression()), !dbg !399
  br label %120

120:                                              ; preds = %105, %115
  %121 = phi double [ %119, %115 ], [ 0.000000e+00, %105 ], !dbg !426
  tail call void @llvm.dbg.value(metadata double %121, metadata !241, metadata !DIExpression()), !dbg !399
  %122 = fdiv double %121, %103, !dbg !427
  %123 = call double @llvm.fabs.f64(double %122), !dbg !428
  %124 = fcmp olt double %123, 0x3E71E3779B97F4A8, !dbg !429
  br i1 %124, label %125, label %127, !dbg !430

125:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #7, !dbg !431
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %0, i64 noundef %100) #7, !dbg !432
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #7, !dbg !433
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %11, ptr noundef nonnull %10, i64 noundef %54, i64 noundef %94) #7, !dbg !434
  %126 = call double @gsl_blas_dnrm2(ptr noundef nonnull %11) #7, !dbg !435
  tail call void @llvm.dbg.value(metadata double %126, metadata !241, metadata !DIExpression()), !dbg !399
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #7, !dbg !436
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #7, !dbg !436
  br label %127, !dbg !437

127:                                              ; preds = %125, %120
  %128 = phi double [ %126, %125 ], [ %121, %120 ], !dbg !399
  tail call void @llvm.dbg.value(metadata double %128, metadata !241, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !304, metadata !DIExpression()), !dbg !438
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !309, metadata !DIExpression()), !dbg !438
  tail call void @llvm.dbg.value(metadata double %128, metadata !310, metadata !DIExpression()), !dbg !438
  %129 = load ptr, ptr %35, align 8, !dbg !440, !tbaa !314
  %130 = load i64, ptr %36, align 8, !dbg !441, !tbaa !316
  %131 = mul i64 %130, %100, !dbg !442
  %132 = getelementptr inbounds double, ptr %129, i64 %131, !dbg !443
  store double %128, ptr %132, align 8, !dbg !444, !tbaa !320
  br label %133, !dbg !445

133:                                              ; preds = %127, %97
  %134 = phi i64 [ %130, %127 ], [ %98, %97 ]
  %135 = phi ptr [ %129, %127 ], [ %99, %97 ]
  %136 = add nuw i64 %100, 1, !dbg !446
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !217, metadata !DIExpression()), !dbg !339
  %137 = icmp ult i64 %136, %14, !dbg !447
  br i1 %137, label %97, label %138, !dbg !392, !llvm.loop !448

138:                                              ; preds = %133, %87, %88
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !198, metadata !DIExpression()), !dbg !296
  %139 = icmp eq i64 %54, %15, !dbg !299
  br i1 %139, label %140, label %50, !dbg !300, !llvm.loop !450

140:                                              ; preds = %138, %32, %26, %22, %18
  %141 = phi i32 [ 19, %18 ], [ 19, %22 ], [ 19, %26 ], [ 0, %32 ], [ 0, %138 ], !dbg !452
  ret i32 %141, !dbg !453
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !454 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !459 void @gsl_permutation_init(ptr noundef) local_unnamed_addr #2

declare !dbg !462 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !465 double @gsl_blas_dnrm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !469 i32 @gsl_matrix_swap_columns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !472 i32 @gsl_permutation_swap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !475 i32 @gsl_vector_swap_elements(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !478 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !481 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !485 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !488 i32 @gsl_linalg_householder_hm(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !491 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_decomp2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr noundef %6) local_unnamed_addr #0 !dbg !495 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !499, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !500, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !501, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !502, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !503, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !504, metadata !DIExpression()), !dbg !508
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !505, metadata !DIExpression()), !dbg !508
  %8 = load i64, ptr %0, align 8, !dbg !509, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !506, metadata !DIExpression()), !dbg !508
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !510
  %10 = load i64, ptr %9, align 8, !dbg !510, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !507, metadata !DIExpression()), !dbg !508
  %11 = load i64, ptr %1, align 8, !dbg !511, !tbaa !261
  %12 = icmp eq i64 %11, %8, !dbg !513
  br i1 %12, label %13, label %17, !dbg !514

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !515
  %15 = load i64, ptr %14, align 8, !dbg !515, !tbaa !269
  %16 = icmp eq i64 %15, %8, !dbg !516
  br i1 %16, label %18, label %17, !dbg !517

17:                                               ; preds = %7, %13
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 197, i32 noundef 19) #7, !dbg !518
  br label %43, !dbg !518

18:                                               ; preds = %13
  %19 = load i64, ptr %2, align 8, !dbg !521, !tbaa !261
  %20 = icmp eq i64 %19, %8, !dbg !523
  br i1 %20, label %21, label %25, !dbg !524

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !525
  %23 = load i64, ptr %22, align 8, !dbg !525, !tbaa !269
  %24 = icmp eq i64 %23, %10, !dbg !526
  br i1 %24, label %26, label %25, !dbg !527

25:                                               ; preds = %18, %21
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 201, i32 noundef 19) #7, !dbg !528
  br label %43, !dbg !528

26:                                               ; preds = %21
  %27 = load i64, ptr %3, align 8, !dbg !531, !tbaa !271
  %28 = tail call i64 @llvm.umin.i64(i64 %8, i64 %10), !dbg !533
  %29 = icmp eq i64 %27, %28, !dbg !534
  br i1 %29, label %31, label %30, !dbg !535

30:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef 19) #7, !dbg !536
  br label %43, !dbg !536

31:                                               ; preds = %26
  %32 = load i64, ptr %4, align 8, !dbg !539, !tbaa !280
  %33 = icmp eq i64 %32, %10, !dbg !541
  br i1 %33, label %35, label %34, !dbg !542

34:                                               ; preds = %31
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef 19) #7, !dbg !543
  br label %43, !dbg !543

35:                                               ; preds = %31
  %36 = load i64, ptr %6, align 8, !dbg !546, !tbaa !271
  %37 = icmp eq i64 %36, %10, !dbg !548
  br i1 %37, label %39, label %38, !dbg !549

38:                                               ; preds = %35
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 19) #7, !dbg !550
  br label %43, !dbg !550

39:                                               ; preds = %35
  %40 = tail call i32 @gsl_matrix_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %0) #7, !dbg !553
  %41 = tail call i32 @gsl_linalg_QRPT_decomp(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6), !dbg !554, !range !555
  %42 = tail call i32 @gsl_linalg_QR_unpack(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #7, !dbg !556
  br label %43, !dbg !557

43:                                               ; preds = %39, %38, %34, %30, %25, %17
  %44 = phi i32 [ 19, %17 ], [ 19, %25 ], [ 19, %30 ], [ 19, %34 ], [ 19, %38 ], [ 0, %39 ], !dbg !508
  ret i32 %44, !dbg !558
}

declare !dbg !559 i32 @gsl_matrix_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !562 i32 @gsl_linalg_QR_unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !565 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !571, metadata !DIExpression()), !dbg !576
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !572, metadata !DIExpression()), !dbg !576
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !573, metadata !DIExpression()), !dbg !576
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !574, metadata !DIExpression()), !dbg !576
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !575, metadata !DIExpression()), !dbg !576
  %6 = load i64, ptr %0, align 8, !dbg !577, !tbaa !261
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !579
  %8 = load i64, ptr %7, align 8, !dbg !579, !tbaa !269
  %9 = icmp eq i64 %6, %8, !dbg !580
  br i1 %9, label %11, label %10, !dbg !581

10:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 245, i32 noundef 20) #7, !dbg !582
  br label %26, !dbg !582

11:                                               ; preds = %5
  %12 = load i64, ptr %2, align 8, !dbg !585, !tbaa !280
  %13 = icmp eq i64 %6, %12, !dbg !587
  br i1 %13, label %15, label %14, !dbg !588

14:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 19) #7, !dbg !589
  br label %26, !dbg !589

15:                                               ; preds = %11
  %16 = load i64, ptr %3, align 8, !dbg !592, !tbaa !271
  %17 = icmp eq i64 %6, %16, !dbg !594
  br i1 %17, label %19, label %18, !dbg !595

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 253, i32 noundef 19) #7, !dbg !596
  br label %26, !dbg !596

19:                                               ; preds = %15
  %20 = load i64, ptr %4, align 8, !dbg !599, !tbaa !271
  %21 = icmp eq i64 %6, %20, !dbg !601
  br i1 %21, label %23, label %22, !dbg !602

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 19) #7, !dbg !603
  br label %26, !dbg !603

23:                                               ; preds = %19
  %24 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %3) #7, !dbg !606
  %25 = tail call i32 @gsl_linalg_QRPT_svx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4), !dbg !608, !range !609
  br label %26, !dbg !610

26:                                               ; preds = %10, %14, %18, %22, %23
  %27 = phi i32 [ 20, %10 ], [ 19, %14 ], [ 19, %18 ], [ 19, %22 ], [ 0, %23 ], !dbg !611
  ret i32 %27, !dbg !612
}

declare !dbg !613 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_svx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !616 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !620, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !621, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !622, metadata !DIExpression()), !dbg !624
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !623, metadata !DIExpression()), !dbg !624
  %5 = load i64, ptr %0, align 8, !dbg !625, !tbaa !261
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !627
  %7 = load i64, ptr %6, align 8, !dbg !627, !tbaa !269
  %8 = icmp eq i64 %5, %7, !dbg !628
  br i1 %8, label %10, label %9, !dbg !629

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 277, i32 noundef 20) #7, !dbg !630
  br label %22, !dbg !630

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !633, !tbaa !280
  %12 = icmp eq i64 %5, %11, !dbg !635
  br i1 %12, label %14, label %13, !dbg !636

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 281, i32 noundef 19) #7, !dbg !637
  br label %22, !dbg !637

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !640, !tbaa !271
  %16 = icmp eq i64 %5, %15, !dbg !642
  br i1 %16, label %18, label %17, !dbg !643

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 285, i32 noundef 19) #7, !dbg !644
  br label %22, !dbg !644

18:                                               ; preds = %14
  %19 = tail call i32 @gsl_linalg_QR_QTvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #7, !dbg !647
  %20 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #7, !dbg !649
  %21 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %2, ptr noundef nonnull %3) #7, !dbg !650
  br label %22, !dbg !651

22:                                               ; preds = %9, %13, %17, %18
  %23 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 0, %18 ], !dbg !652
  ret i32 %23, !dbg !653
}

declare !dbg !654 i32 @gsl_linalg_QR_QTvec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !657 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !664 i32 @gsl_permute_vector_inverse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_lssolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !dbg !668 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !672, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !673, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !674, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !675, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !676, metadata !DIExpression()), !dbg !680
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !677, metadata !DIExpression()), !dbg !680
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !681
  %8 = load i64, ptr %7, align 8, !dbg !681, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !678, metadata !DIExpression()), !dbg !680
  %9 = tail call i32 @gsl_linalg_QRPT_lssolve2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %8, ptr noundef %4, ptr noundef %5), !dbg !682, !range !555
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !679, metadata !DIExpression()), !dbg !680
  ret i32 %9, !dbg !683
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_lssolve2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 !dbg !684 {
  %8 = alloca %struct._gsl_matrix_const_view, align 8, !DIAssignID !713
  call void @llvm.dbg.assign(metadata i1 undef, metadata !697, metadata !DIExpression(), metadata !713, metadata ptr %8, metadata !DIExpression()), !dbg !714
  %9 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !715
  call void @llvm.dbg.assign(metadata i1 undef, metadata !710, metadata !DIExpression(), metadata !715, metadata ptr %9, metadata !DIExpression()), !dbg !714
  %10 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !711, metadata !DIExpression(), metadata !716, metadata ptr %10, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !688, metadata !DIExpression()), !dbg !717
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !689, metadata !DIExpression()), !dbg !717
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !690, metadata !DIExpression()), !dbg !717
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !691, metadata !DIExpression()), !dbg !717
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !692, metadata !DIExpression()), !dbg !717
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !693, metadata !DIExpression()), !dbg !717
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !694, metadata !DIExpression()), !dbg !717
  %11 = load i64, ptr %0, align 8, !dbg !718, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !695, metadata !DIExpression()), !dbg !717
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !719
  %13 = load i64, ptr %12, align 8, !dbg !719, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !696, metadata !DIExpression()), !dbg !717
  %14 = icmp ult i64 %11, %13, !dbg !720
  br i1 %14, label %15, label %16, !dbg !721

15:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 337, i32 noundef 19) #7, !dbg !722
  br label %76, !dbg !722

16:                                               ; preds = %7
  %17 = load i64, ptr %3, align 8, !dbg !725, !tbaa !271
  %18 = icmp eq i64 %11, %17, !dbg !726
  br i1 %18, label %20, label %19, !dbg !727

19:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 341, i32 noundef 19) #7, !dbg !728
  br label %76, !dbg !728

20:                                               ; preds = %16
  %21 = add i64 %4, -1, !dbg !731
  %22 = icmp ult i64 %21, %13, !dbg !731
  br i1 %22, label %24, label %23, !dbg !731

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 345, i32 noundef 19) #7, !dbg !732
  br label %76, !dbg !732

24:                                               ; preds = %20
  %25 = load i64, ptr %5, align 8, !dbg !735, !tbaa !271
  %26 = icmp eq i64 %13, %25, !dbg !736
  br i1 %26, label %28, label %27, !dbg !737

27:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 349, i32 noundef 19) #7, !dbg !738
  br label %76, !dbg !738

28:                                               ; preds = %24
  %29 = load i64, ptr %6, align 8, !dbg !741, !tbaa !271
  %30 = icmp eq i64 %11, %29, !dbg !742
  br i1 %30, label %32, label %31, !dbg !743

31:                                               ; preds = %28
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 353, i32 noundef 19) #7, !dbg !744
  br label %76, !dbg !744

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #7, !dbg !747
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %8, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %4, i64 noundef %4) #7, !dbg !748
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #7, !dbg !749
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %9, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %4) #7, !dbg !750
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #7, !dbg !751
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %5, i64 noundef 0, i64 noundef %4) #7, !dbg !752
  %33 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %3) #7, !dbg !753
  %34 = call i32 @gsl_linalg_QR_QTvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %6) #7, !dbg !754
  %35 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %10, ptr noundef nonnull %9) #7, !dbg !755
  %36 = call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %8, ptr noundef nonnull %10) #7, !dbg !756
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !712, metadata !DIExpression()), !dbg !714
  %37 = icmp ugt i64 %13, %4, !dbg !757
  br i1 %37, label %38, label %73, !dbg !760

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.gsl_vector, ptr %5, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !314
  %41 = getelementptr inbounds %struct.gsl_vector, ptr %5, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !316
  %43 = sub i64 %13, %4, !dbg !760
  %44 = and i64 %43, 3, !dbg !760
  %45 = icmp eq i64 %44, 0, !dbg !760
  br i1 %45, label %54, label %46, !dbg !760

46:                                               ; preds = %38, %46
  %47 = phi i64 [ %51, %46 ], [ %4, %38 ]
  %48 = phi i64 [ %52, %46 ], [ 0, %38 ]
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !712, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !309, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !761
  %49 = mul i64 %42, %47, !dbg !763
  %50 = getelementptr inbounds double, ptr %40, i64 %49, !dbg !764
  store double 0.000000e+00, ptr %50, align 8, !dbg !765, !tbaa !320
  %51 = add nuw i64 %47, 1, !dbg !766
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !712, metadata !DIExpression()), !dbg !714
  %52 = add i64 %48, 1, !dbg !760
  %53 = icmp eq i64 %52, %44, !dbg !760
  br i1 %53, label %54, label %46, !dbg !760, !llvm.loop !767

54:                                               ; preds = %46, %38
  %55 = phi i64 [ %4, %38 ], [ %51, %46 ]
  %56 = sub i64 %4, %13, !dbg !760
  %57 = icmp ugt i64 %56, -4, !dbg !760
  br i1 %57, label %73, label %58, !dbg !760

58:                                               ; preds = %54, %58
  %59 = phi i64 [ %71, %58 ], [ %55, %54 ]
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !712, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !309, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !761
  %60 = mul i64 %42, %59, !dbg !763
  %61 = getelementptr inbounds double, ptr %40, i64 %60, !dbg !764
  store double 0.000000e+00, ptr %61, align 8, !dbg !765, !tbaa !320
  %62 = add nuw i64 %59, 1, !dbg !766
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !712, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !712, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !309, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !761
  %63 = mul i64 %42, %62, !dbg !763
  %64 = getelementptr inbounds double, ptr %40, i64 %63, !dbg !764
  store double 0.000000e+00, ptr %64, align 8, !dbg !765, !tbaa !320
  %65 = add nuw i64 %59, 2, !dbg !766
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !712, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !712, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !309, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !761
  %66 = mul i64 %42, %65, !dbg !763
  %67 = getelementptr inbounds double, ptr %40, i64 %66, !dbg !764
  store double 0.000000e+00, ptr %67, align 8, !dbg !765, !tbaa !320
  %68 = add nuw i64 %59, 3, !dbg !766
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !712, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !712, metadata !DIExpression()), !dbg !714
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !309, metadata !DIExpression()), !dbg !761
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !761
  %69 = mul i64 %42, %68, !dbg !763
  %70 = getelementptr inbounds double, ptr %40, i64 %69, !dbg !764
  store double 0.000000e+00, ptr %70, align 8, !dbg !765, !tbaa !320
  %71 = add nuw i64 %59, 4, !dbg !766
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !712, metadata !DIExpression()), !dbg !714
  %72 = icmp eq i64 %71, %13, !dbg !757
  br i1 %72, label %73, label %58, !dbg !760, !llvm.loop !769

73:                                               ; preds = %54, %58, %32
  %74 = call i32 @gsl_permute_vector_inverse(ptr noundef %2, ptr noundef nonnull %5) #7, !dbg !771
  call void @gsl_vector_set_zero(ptr noundef nonnull %9) #7, !dbg !772
  %75 = call i32 @gsl_linalg_QR_Qvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %6) #7, !dbg !773
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #7, !dbg !774
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #7, !dbg !774
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #7, !dbg !774
  br label %76

76:                                               ; preds = %73, %31, %27, %23, %19, %15
  %77 = phi i32 [ 19, %15 ], [ 19, %19 ], [ 19, %23 ], [ 19, %27 ], [ 19, %31 ], [ 0, %73 ], !dbg !775
  ret i32 %77, !dbg !776
}

declare !dbg !777 void @gsl_matrix_const_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_const_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !780 void @gsl_vector_set_zero(ptr noundef) local_unnamed_addr #2

declare !dbg !783 i32 @gsl_linalg_QR_Qvec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_QRsolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !784 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !788, metadata !DIExpression()), !dbg !793
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !793
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !790, metadata !DIExpression()), !dbg !793
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !791, metadata !DIExpression()), !dbg !793
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !792, metadata !DIExpression()), !dbg !793
  %6 = load i64, ptr %0, align 8, !dbg !794, !tbaa !261
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !796
  %8 = load i64, ptr %7, align 8, !dbg !796, !tbaa !269
  %9 = icmp eq i64 %6, %8, !dbg !797
  br i1 %9, label %10, label %27, !dbg !798

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8, !dbg !799, !tbaa !261
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !800
  %13 = load i64, ptr %12, align 8, !dbg !800, !tbaa !269
  %14 = icmp eq i64 %11, %13, !dbg !801
  br i1 %14, label %15, label %27, !dbg !802

15:                                               ; preds = %10
  %16 = load i64, ptr %2, align 8, !dbg !803, !tbaa !280
  %17 = icmp eq i64 %6, %16, !dbg !805
  %18 = icmp eq i64 %6, %11
  %19 = and i1 %18, %17, !dbg !806
  br i1 %19, label %20, label %27, !dbg !806

20:                                               ; preds = %15
  %21 = load i64, ptr %3, align 8, !dbg !807, !tbaa !271
  %22 = icmp eq i64 %6, %21, !dbg !808
  br i1 %22, label %23, label %27, !dbg !809

23:                                               ; preds = %20
  %24 = tail call i32 @gsl_blas_dgemv(i32 noundef 112, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %3, double noundef 0.000000e+00, ptr noundef %4) #7, !dbg !810
  %25 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %1, ptr noundef %4) #7, !dbg !812
  %26 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %2, ptr noundef %4) #7, !dbg !813
  br label %27, !dbg !814

27:                                               ; preds = %15, %20, %5, %10, %23
  %28 = phi i32 [ 0, %23 ], [ 20, %10 ], [ 20, %5 ], [ 19, %20 ], [ 19, %15 ], !dbg !815
  ret i32 %28, !dbg !816
}

declare !dbg !817 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_Rsolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !820 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !824, metadata !DIExpression()), !dbg !828
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !825, metadata !DIExpression()), !dbg !828
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !826, metadata !DIExpression()), !dbg !828
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !827, metadata !DIExpression()), !dbg !828
  %5 = load i64, ptr %0, align 8, !dbg !829, !tbaa !261
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !831
  %7 = load i64, ptr %6, align 8, !dbg !831, !tbaa !269
  %8 = icmp eq i64 %5, %7, !dbg !832
  br i1 %8, label %10, label %9, !dbg !833

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 426, i32 noundef 20) #7, !dbg !834
  br label %26, !dbg !834

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !837, !tbaa !271
  %12 = icmp eq i64 %5, %11, !dbg !839
  br i1 %12, label %14, label %13, !dbg !840

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 19) #7, !dbg !841
  br label %26, !dbg !841

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !844, !tbaa !271
  %16 = icmp eq i64 %5, %15, !dbg !846
  br i1 %16, label %18, label %17, !dbg !847

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 434, i32 noundef 19) #7, !dbg !848
  br label %26, !dbg !848

18:                                               ; preds = %14
  %19 = load i64, ptr %1, align 8, !dbg !851, !tbaa !280
  %20 = icmp eq i64 %19, %5, !dbg !853
  br i1 %20, label %22, label %21, !dbg !854

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 438, i32 noundef 19) #7, !dbg !855
  br label %26, !dbg !855

22:                                               ; preds = %18
  %23 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2) #7, !dbg !858
  %24 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #7, !dbg !860
  %25 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %3) #7, !dbg !861
  br label %26, !dbg !862

26:                                               ; preds = %9, %13, %17, %21, %22
  %27 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 19, %21 ], [ 0, %22 ], !dbg !863
  ret i32 %27, !dbg !864
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_Rsvx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !865 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !869, metadata !DIExpression()), !dbg !872
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !870, metadata !DIExpression()), !dbg !872
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !871, metadata !DIExpression()), !dbg !872
  %4 = load i64, ptr %0, align 8, !dbg !873, !tbaa !261
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !875
  %6 = load i64, ptr %5, align 8, !dbg !875, !tbaa !269
  %7 = icmp eq i64 %4, %6, !dbg !876
  br i1 %7, label %9, label %8, !dbg !877

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 464, i32 noundef 20) #7, !dbg !878
  br label %20, !dbg !878

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8, !dbg !881, !tbaa !271
  %11 = icmp eq i64 %4, %10, !dbg !883
  br i1 %11, label %13, label %12, !dbg !884

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 468, i32 noundef 19) #7, !dbg !885
  br label %20, !dbg !885

13:                                               ; preds = %9
  %14 = load i64, ptr %1, align 8, !dbg !888, !tbaa !280
  %15 = icmp eq i64 %14, %4, !dbg !890
  br i1 %15, label %17, label %16, !dbg !891

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 472, i32 noundef 19) #7, !dbg !892
  br label %20, !dbg !892

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #7, !dbg !895
  %19 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %2) #7, !dbg !897
  br label %20, !dbg !898

20:                                               ; preds = %8, %12, %16, %17
  %21 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 0, %17 ], !dbg !899
  ret i32 %21, !dbg !900
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 !dbg !901 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !905, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !906, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !907, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !908, metadata !DIExpression()), !dbg !939
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !909, metadata !DIExpression()), !dbg !939
  %6 = load i64, ptr %1, align 8, !dbg !940, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !910, metadata !DIExpression()), !dbg !939
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !941
  %8 = load i64, ptr %7, align 8, !dbg !941, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !911, metadata !DIExpression()), !dbg !939
  %9 = load i64, ptr %0, align 8, !dbg !942, !tbaa !261
  %10 = icmp eq i64 %9, %6, !dbg !943
  br i1 %10, label %11, label %15, !dbg !944

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !945
  %13 = load i64, ptr %12, align 8, !dbg !945, !tbaa !269
  %14 = icmp eq i64 %13, %6, !dbg !946
  br i1 %14, label %16, label %15, !dbg !947

15:                                               ; preds = %5, %11
  tail call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 509, i32 noundef 20) #7, !dbg !948
  br label %296, !dbg !948

16:                                               ; preds = %11
  %17 = load i64, ptr %3, align 8, !dbg !951, !tbaa !271
  %18 = icmp eq i64 %17, %6, !dbg !952
  br i1 %18, label %20, label %19, !dbg !953

19:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 513, i32 noundef 19) #7, !dbg !954
  br label %296, !dbg !954

20:                                               ; preds = %16
  %21 = load i64, ptr %4, align 8, !dbg !957, !tbaa !271
  %22 = icmp eq i64 %21, %8, !dbg !958
  br i1 %22, label %23, label %37, !dbg !959

23:                                               ; preds = %20
  %24 = add i64 %6, -1, !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !917, metadata !DIExpression()), !dbg !961
  %25 = icmp eq i64 %24, 0, !dbg !962
  %26 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !314
  br i1 %25, label %158, label %28, !dbg !963

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !316
  %31 = icmp eq i64 %6, 0
  %32 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %33 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %35 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %36 = add i64 %6, -2, !dbg !963
  br label %38, !dbg !963

37:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 517, i32 noundef 19) #7, !dbg !964
  br label %296, !dbg !964

38:                                               ; preds = %28, %154
  %39 = phi i64 [ 0, %28 ], [ %157, %154 ]
  %40 = phi i64 [ %24, %28 ], [ %155, %154 ]
  %41 = phi i64 [ %6, %28 ], [ %40, %154 ]
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !967
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !334, metadata !DIExpression()), !dbg !967
  %42 = sub i64 %36, %39, !dbg !969
  %43 = tail call i64 @llvm.umin.i64(i64 %40, i64 %42), !dbg !969
  %44 = sub i64 %8, %43, !dbg !969
  %45 = add i64 %43, 1, !dbg !969
  %46 = mul i64 %30, %40, !dbg !969
  %47 = getelementptr inbounds double, ptr %27, i64 %46, !dbg !970
  %48 = load double, ptr %47, align 8, !dbg !970, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %48, metadata !924, metadata !DIExpression()), !dbg !971
  %49 = add i64 %41, -2, !dbg !972
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !973
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !334, metadata !DIExpression()), !dbg !973
  %50 = mul i64 %30, %49, !dbg !975
  %51 = getelementptr inbounds double, ptr %27, i64 %50, !dbg !976
  %52 = load double, ptr %51, align 8, !dbg !976, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %52, metadata !925, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata double %52, metadata !977, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata double %48, metadata !983, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr undef, metadata !984, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata ptr undef, metadata !985, metadata !DIExpression()), !dbg !994
  %53 = fcmp oeq double %48, 0.000000e+00, !dbg !996
  br i1 %53, label %74, label %54, !dbg !997

54:                                               ; preds = %38
  %55 = tail call double @llvm.fabs.f64(double %48), !dbg !998
  %56 = tail call double @llvm.fabs.f64(double %52), !dbg !999
  %57 = fcmp ogt double %55, %56, !dbg !1000
  br i1 %57, label %58, label %66, !dbg !1001

58:                                               ; preds = %54
  %59 = fneg double %52, !dbg !1002
  %60 = fdiv double %59, %48, !dbg !1003
  call void @llvm.dbg.value(metadata double %60, metadata !986, metadata !DIExpression()), !dbg !1004
  %61 = fmul double %60, %60, !dbg !1005
  %62 = fadd double %61, 1.000000e+00, !dbg !1006
  %63 = tail call double @llvm.sqrt.f64(double %62), !dbg !1007
  %64 = fdiv double 1.000000e+00, %63, !dbg !1008
  call void @llvm.dbg.value(metadata double %64, metadata !990, metadata !DIExpression()), !dbg !1004
  tail call void @llvm.dbg.value(metadata double %64, metadata !923, metadata !DIExpression()), !dbg !971
  %65 = fmul double %60, %64, !dbg !1009
  tail call void @llvm.dbg.value(metadata double %65, metadata !919, metadata !DIExpression()), !dbg !971
  br label %74, !dbg !1010

66:                                               ; preds = %54
  %67 = fneg double %48, !dbg !1011
  %68 = fdiv double %67, %52, !dbg !1012
  call void @llvm.dbg.value(metadata double %68, metadata !991, metadata !DIExpression()), !dbg !1013
  %69 = fmul double %68, %68, !dbg !1014
  %70 = fadd double %69, 1.000000e+00, !dbg !1015
  %71 = tail call double @llvm.sqrt.f64(double %70), !dbg !1016
  %72 = fdiv double 1.000000e+00, %71, !dbg !1017
  call void @llvm.dbg.value(metadata double %72, metadata !993, metadata !DIExpression()), !dbg !1013
  tail call void @llvm.dbg.value(metadata double %72, metadata !919, metadata !DIExpression()), !dbg !971
  %73 = fmul double %68, %72, !dbg !1018
  tail call void @llvm.dbg.value(metadata double %73, metadata !923, metadata !DIExpression()), !dbg !971
  br label %74

74:                                               ; preds = %38, %58, %66
  %75 = phi double [ %65, %58 ], [ %72, %66 ], [ 1.000000e+00, %38 ], !dbg !1019
  %76 = phi double [ %64, %58 ], [ %73, %66 ], [ 0.000000e+00, %38 ], !dbg !1019
  tail call void @llvm.dbg.value(metadata double %76, metadata !923, metadata !DIExpression()), !dbg !971
  tail call void @llvm.dbg.value(metadata double %75, metadata !919, metadata !DIExpression()), !dbg !971
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1020, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1025, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1026, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata double %75, metadata !1027, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata double %76, metadata !1028, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1033
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !334, metadata !DIExpression()), !dbg !1033
  tail call void @llvm.dbg.value(metadata double %52, metadata !1029, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1035
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !334, metadata !DIExpression()), !dbg !1035
  tail call void @llvm.dbg.value(metadata double %48, metadata !1030, metadata !DIExpression()), !dbg !1031
  %77 = fmul double %52, %75, !dbg !1037
  %78 = fmul double %48, %76, !dbg !1038
  %79 = fsub double %77, %78, !dbg !1039
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !304, metadata !DIExpression()), !dbg !1040
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !309, metadata !DIExpression()), !dbg !1040
  tail call void @llvm.dbg.value(metadata double %79, metadata !310, metadata !DIExpression()), !dbg !1040
  store double %79, ptr %51, align 8, !dbg !1042, !tbaa !320
  %80 = fmul double %52, %76, !dbg !1043
  %81 = fmul double %48, %75, !dbg !1044
  %82 = fadd double %81, %80, !dbg !1045
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !304, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !309, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata double %82, metadata !310, metadata !DIExpression()), !dbg !1046
  store double %82, ptr %47, align 8, !dbg !1048, !tbaa !320
  call void @llvm.dbg.value(metadata i64 %6, metadata !1049, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i64 %8, metadata !1055, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr %0, metadata !1056, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr %1, metadata !1057, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i64 %49, metadata !1058, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i64 %40, metadata !1059, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata double %75, metadata !1060, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata double %76, metadata !1061, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i64 0, metadata !1062, metadata !DIExpression()), !dbg !1073
  br i1 %31, label %102, label %83, !dbg !1075

83:                                               ; preds = %74
  %84 = load ptr, ptr %32, align 8, !tbaa !412
  %85 = load i64, ptr %33, align 8, !tbaa !414
  br label %86, !dbg !1075

86:                                               ; preds = %86, %83
  %87 = phi i64 [ 0, %83 ], [ %100, %86 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !1062, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr %0, metadata !400, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %87, metadata !407, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %49, metadata !408, metadata !DIExpression()), !dbg !1076
  %88 = mul i64 %87, %85, !dbg !1078
  %89 = getelementptr double, ptr %84, i64 %88, !dbg !1079
  %90 = getelementptr double, ptr %89, i64 %49, !dbg !1079
  %91 = load double, ptr %90, align 8, !dbg !1079, !tbaa !320
  call void @llvm.dbg.value(metadata double %91, metadata !1063, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata ptr %0, metadata !400, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %87, metadata !407, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %40, metadata !408, metadata !DIExpression()), !dbg !1081
  %92 = getelementptr double, ptr %89, i64 %40, !dbg !1083
  %93 = load double, ptr %92, align 8, !dbg !1083, !tbaa !320
  call void @llvm.dbg.value(metadata double %93, metadata !1067, metadata !DIExpression()), !dbg !1080
  %94 = fmul double %75, %91, !dbg !1084
  %95 = fmul double %76, %93, !dbg !1085
  %96 = fsub double %94, %95, !dbg !1086
  call void @llvm.dbg.value(metadata ptr %0, metadata !1087, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %87, metadata !1092, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %49, metadata !1093, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata double %96, metadata !1094, metadata !DIExpression()), !dbg !1095
  store double %96, ptr %90, align 8, !dbg !1097, !tbaa !320
  %97 = fmul double %76, %91, !dbg !1098
  %98 = fmul double %75, %93, !dbg !1099
  %99 = fadd double %97, %98, !dbg !1100
  call void @llvm.dbg.value(metadata ptr %0, metadata !1087, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %87, metadata !1092, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %40, metadata !1093, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata double %99, metadata !1094, metadata !DIExpression()), !dbg !1101
  store double %99, ptr %92, align 8, !dbg !1103, !tbaa !320
  %100 = add nuw i64 %87, 1, !dbg !1104
  call void @llvm.dbg.value(metadata i64 %100, metadata !1062, metadata !DIExpression()), !dbg !1073
  %101 = icmp eq i64 %100, %6, !dbg !1105
  br i1 %101, label %102, label %86, !dbg !1075, !llvm.loop !1106

102:                                              ; preds = %86, %74
  %103 = tail call i64 @llvm.umin.i64(i64 %49, i64 %40), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %103, metadata !1062, metadata !DIExpression()), !dbg !1073
  %104 = icmp ult i64 %103, %8, !dbg !1109
  br i1 %104, label %105, label %154, !dbg !1110

105:                                              ; preds = %102
  %106 = load ptr, ptr %34, align 8, !tbaa !412
  %107 = load i64, ptr %35, align 8, !tbaa !414
  %108 = mul i64 %107, %49
  %109 = getelementptr double, ptr %106, i64 %108
  %110 = mul i64 %107, %40
  %111 = getelementptr double, ptr %106, i64 %110
  %112 = and i64 %44, 1, !dbg !1110
  %113 = icmp eq i64 %112, 0, !dbg !1110
  br i1 %113, label %126, label %114, !dbg !1110

114:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 %103, metadata !1062, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %49, metadata !407, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %103, metadata !408, metadata !DIExpression()), !dbg !1111
  %115 = getelementptr double, ptr %109, i64 %103, !dbg !1113
  %116 = load double, ptr %115, align 8, !dbg !1113, !tbaa !320
  call void @llvm.dbg.value(metadata double %116, metadata !1068, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %40, metadata !407, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %103, metadata !408, metadata !DIExpression()), !dbg !1115
  %117 = getelementptr double, ptr %111, i64 %103, !dbg !1117
  %118 = load double, ptr %117, align 8, !dbg !1117, !tbaa !320
  call void @llvm.dbg.value(metadata double %118, metadata !1072, metadata !DIExpression()), !dbg !1114
  %119 = fmul double %75, %116, !dbg !1118
  %120 = fmul double %76, %118, !dbg !1119
  %121 = fsub double %119, %120, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %49, metadata !1092, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %103, metadata !1093, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %121, metadata !1094, metadata !DIExpression()), !dbg !1121
  store double %121, ptr %115, align 8, !dbg !1123, !tbaa !320
  %122 = fmul double %76, %116, !dbg !1124
  %123 = fmul double %75, %118, !dbg !1125
  %124 = fadd double %122, %123, !dbg !1126
  call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %40, metadata !1092, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %103, metadata !1093, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %124, metadata !1094, metadata !DIExpression()), !dbg !1127
  store double %124, ptr %117, align 8, !dbg !1129, !tbaa !320
  %125 = add nuw i64 %103, 1, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %125, metadata !1062, metadata !DIExpression()), !dbg !1073
  br label %126, !dbg !1110

126:                                              ; preds = %114, %105
  %127 = phi i64 [ %103, %105 ], [ %125, %114 ]
  %128 = icmp eq i64 %8, %45, !dbg !1110
  br i1 %128, label %154, label %129, !dbg !1110

129:                                              ; preds = %126, %129
  %130 = phi i64 [ %152, %129 ], [ %127, %126 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1062, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %49, metadata !407, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %130, metadata !408, metadata !DIExpression()), !dbg !1111
  %131 = getelementptr double, ptr %109, i64 %130, !dbg !1113
  %132 = load double, ptr %131, align 8, !dbg !1113, !tbaa !320
  call void @llvm.dbg.value(metadata double %132, metadata !1068, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %40, metadata !407, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %130, metadata !408, metadata !DIExpression()), !dbg !1115
  %133 = getelementptr double, ptr %111, i64 %130, !dbg !1117
  %134 = load double, ptr %133, align 8, !dbg !1117, !tbaa !320
  call void @llvm.dbg.value(metadata double %134, metadata !1072, metadata !DIExpression()), !dbg !1114
  %135 = fmul double %75, %132, !dbg !1118
  %136 = fmul double %76, %134, !dbg !1119
  %137 = fsub double %135, %136, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %49, metadata !1092, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %130, metadata !1093, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %137, metadata !1094, metadata !DIExpression()), !dbg !1121
  store double %137, ptr %131, align 8, !dbg !1123, !tbaa !320
  %138 = fmul double %76, %132, !dbg !1124
  %139 = fmul double %75, %134, !dbg !1125
  %140 = fadd double %138, %139, !dbg !1126
  call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %40, metadata !1092, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %130, metadata !1093, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %140, metadata !1094, metadata !DIExpression()), !dbg !1127
  store double %140, ptr %133, align 8, !dbg !1129, !tbaa !320
  %141 = add nuw i64 %130, 1, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %141, metadata !1062, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i64 %141, metadata !1062, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %49, metadata !407, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %141, metadata !408, metadata !DIExpression()), !dbg !1111
  %142 = getelementptr double, ptr %109, i64 %141, !dbg !1113
  %143 = load double, ptr %142, align 8, !dbg !1113, !tbaa !320
  call void @llvm.dbg.value(metadata double %143, metadata !1068, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %40, metadata !407, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %141, metadata !408, metadata !DIExpression()), !dbg !1115
  %144 = getelementptr double, ptr %111, i64 %141, !dbg !1117
  %145 = load double, ptr %144, align 8, !dbg !1117, !tbaa !320
  call void @llvm.dbg.value(metadata double %145, metadata !1072, metadata !DIExpression()), !dbg !1114
  %146 = fmul double %75, %143, !dbg !1118
  %147 = fmul double %76, %145, !dbg !1119
  %148 = fsub double %146, %147, !dbg !1120
  call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %49, metadata !1092, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %141, metadata !1093, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata double %148, metadata !1094, metadata !DIExpression()), !dbg !1121
  store double %148, ptr %142, align 8, !dbg !1123, !tbaa !320
  %149 = fmul double %76, %143, !dbg !1124
  %150 = fmul double %75, %145, !dbg !1125
  %151 = fadd double %149, %150, !dbg !1126
  call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %40, metadata !1092, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %141, metadata !1093, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata double %151, metadata !1094, metadata !DIExpression()), !dbg !1127
  store double %151, ptr %144, align 8, !dbg !1129, !tbaa !320
  %152 = add nuw i64 %130, 2, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %152, metadata !1062, metadata !DIExpression()), !dbg !1073
  %153 = icmp eq i64 %152, %8, !dbg !1109
  br i1 %153, label %154, label %129, !dbg !1110, !llvm.loop !1131

154:                                              ; preds = %126, %129, %102
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !917, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !961
  %155 = add i64 %40, -1, !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !917, metadata !DIExpression()), !dbg !961
  %156 = icmp eq i64 %155, 0, !dbg !962
  %157 = add i64 %39, 1, !dbg !963
  br i1 %156, label %158, label %38, !dbg !963, !llvm.loop !1133

158:                                              ; preds = %154, %23
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata i64 0, metadata !334, metadata !DIExpression()), !dbg !1135
  %159 = load double, ptr %27, align 8, !dbg !1137, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %159, metadata !918, metadata !DIExpression()), !dbg !961
  tail call void @llvm.dbg.value(metadata i64 0, metadata !912, metadata !DIExpression()), !dbg !961
  %160 = icmp eq i64 %8, 0, !dbg !1138
  br i1 %160, label %187, label %161, !dbg !1139

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !412
  %164 = getelementptr inbounds %struct.gsl_permutation_struct, ptr %2, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !1140
  %166 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !314
  %168 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %169 = load i64, ptr %168, align 8, !tbaa !316
  %170 = and i64 %8, 1, !dbg !1139
  %171 = icmp eq i64 %8, 1, !dbg !1139
  br i1 %171, label %174, label %172, !dbg !1139

172:                                              ; preds = %161
  %173 = and i64 %8, -2, !dbg !1139
  br label %200, !dbg !1139

174:                                              ; preds = %200, %161
  %175 = phi i64 [ 0, %161 ], [ %222, %200 ]
  %176 = icmp eq i64 %170, 0, !dbg !1139
  br i1 %176, label %187, label %177, !dbg !1139

177:                                              ; preds = %174
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !912, metadata !DIExpression()), !dbg !961
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 0, metadata !407, metadata !DIExpression()), !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !408, metadata !DIExpression()), !dbg !1141
  %178 = getelementptr double, ptr %163, i64 %175, !dbg !1143
  %179 = load double, ptr %178, align 8, !dbg !1143, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %179, metadata !926, metadata !DIExpression()), !dbg !1144
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1145, metadata !DIExpression()), !dbg !1151
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1150, metadata !DIExpression()), !dbg !1151
  %180 = getelementptr inbounds i64, ptr %165, i64 %175, !dbg !1153
  %181 = load i64, ptr %180, align 8, !dbg !1153, !tbaa !1154
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !930, metadata !DIExpression()), !dbg !1144
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata i64 %181, metadata !334, metadata !DIExpression()), !dbg !1155
  %182 = mul i64 %169, %181, !dbg !1157
  %183 = getelementptr inbounds double, ptr %167, i64 %182, !dbg !1158
  %184 = load double, ptr %183, align 8, !dbg !1158, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %184, metadata !931, metadata !DIExpression()), !dbg !1144
  %185 = fmul double %159, %184, !dbg !1159
  %186 = fadd double %179, %185, !dbg !1160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1092, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1093, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %186, metadata !1094, metadata !DIExpression()), !dbg !1161
  store double %186, ptr %178, align 8, !dbg !1163, !tbaa !320
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !912, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !961
  br label %187

187:                                              ; preds = %177, %174, %158
  %188 = add i64 %8, 1
  %189 = tail call i64 @llvm.umin.i64(i64 %6, i64 %188)
  tail call void @llvm.dbg.value(metadata i64 1, metadata !917, metadata !DIExpression()), !dbg !961
  %190 = icmp ugt i64 %189, 1, !dbg !1164
  br i1 %190, label %191, label %296, !dbg !1165

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !412
  %194 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %195 = load i64, ptr %194, align 8, !tbaa !414
  %196 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !412
  %198 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %199 = load i64, ptr %198, align 8, !tbaa !414
  br label %225, !dbg !1165

200:                                              ; preds = %200, %172
  %201 = phi i64 [ 0, %172 ], [ %222, %200 ]
  %202 = phi i64 [ 0, %172 ], [ %223, %200 ]
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !912, metadata !DIExpression()), !dbg !961
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 0, metadata !407, metadata !DIExpression()), !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !408, metadata !DIExpression()), !dbg !1141
  %203 = getelementptr double, ptr %163, i64 %201, !dbg !1143
  %204 = load double, ptr %203, align 8, !dbg !1143, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %204, metadata !926, metadata !DIExpression()), !dbg !1144
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1145, metadata !DIExpression()), !dbg !1151
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !1150, metadata !DIExpression()), !dbg !1151
  %205 = getelementptr inbounds i64, ptr %165, i64 %201, !dbg !1153
  %206 = load i64, ptr %205, align 8, !dbg !1153, !tbaa !1154
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !930, metadata !DIExpression()), !dbg !1144
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !334, metadata !DIExpression()), !dbg !1155
  %207 = mul i64 %169, %206, !dbg !1157
  %208 = getelementptr inbounds double, ptr %167, i64 %207, !dbg !1158
  %209 = load double, ptr %208, align 8, !dbg !1158, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %209, metadata !931, metadata !DIExpression()), !dbg !1144
  %210 = fmul double %159, %209, !dbg !1159
  %211 = fadd double %204, %210, !dbg !1160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1092, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata i64 %201, metadata !1093, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %211, metadata !1094, metadata !DIExpression()), !dbg !1161
  store double %211, ptr %203, align 8, !dbg !1163, !tbaa !320
  %212 = or disjoint i64 %201, 1, !dbg !1166
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !912, metadata !DIExpression()), !dbg !961
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !912, metadata !DIExpression()), !dbg !961
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 0, metadata !407, metadata !DIExpression()), !dbg !1141
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !408, metadata !DIExpression()), !dbg !1141
  %213 = getelementptr double, ptr %163, i64 %212, !dbg !1143
  %214 = load double, ptr %213, align 8, !dbg !1143, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %214, metadata !926, metadata !DIExpression()), !dbg !1144
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1145, metadata !DIExpression()), !dbg !1151
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !1150, metadata !DIExpression()), !dbg !1151
  %215 = getelementptr inbounds i64, ptr %165, i64 %212, !dbg !1153
  %216 = load i64, ptr %215, align 8, !dbg !1153, !tbaa !1154
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !930, metadata !DIExpression()), !dbg !1144
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !334, metadata !DIExpression()), !dbg !1155
  %217 = mul i64 %169, %216, !dbg !1157
  %218 = getelementptr inbounds double, ptr %167, i64 %217, !dbg !1158
  %219 = load double, ptr %218, align 8, !dbg !1158, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %219, metadata !931, metadata !DIExpression()), !dbg !1144
  %220 = fmul double %159, %219, !dbg !1159
  %221 = fadd double %214, %220, !dbg !1160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1092, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !1093, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata double %221, metadata !1094, metadata !DIExpression()), !dbg !1161
  store double %221, ptr %213, align 8, !dbg !1163, !tbaa !320
  %222 = add nuw i64 %201, 2, !dbg !1166
  tail call void @llvm.dbg.value(metadata i64 %222, metadata !912, metadata !DIExpression()), !dbg !961
  %223 = add i64 %202, 2, !dbg !1139
  %224 = icmp eq i64 %223, %173, !dbg !1139
  br i1 %224, label %174, label %200, !dbg !1139, !llvm.loop !1167

225:                                              ; preds = %191, %293
  %226 = phi i64 [ 1, %191 ], [ %294, %293 ]
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !917, metadata !DIExpression()), !dbg !961
  %227 = add i64 %226, -1, !dbg !1169
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !407, metadata !DIExpression()), !dbg !1170
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !408, metadata !DIExpression()), !dbg !1170
  %228 = mul i64 %195, %227, !dbg !1172
  %229 = getelementptr double, ptr %193, i64 %228, !dbg !1173
  %230 = getelementptr double, ptr %229, i64 %227, !dbg !1173
  %231 = load double, ptr %230, align 8, !dbg !1173, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %231, metadata !937, metadata !DIExpression()), !dbg !1174
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1175
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !407, metadata !DIExpression()), !dbg !1175
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !408, metadata !DIExpression()), !dbg !1175
  %232 = mul i64 %195, %226, !dbg !1177
  %233 = getelementptr double, ptr %193, i64 %232, !dbg !1178
  %234 = getelementptr double, ptr %233, i64 %227, !dbg !1178
  %235 = load double, ptr %234, align 8, !dbg !1178, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %235, metadata !938, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata double %231, metadata !977, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata double %235, metadata !983, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata ptr undef, metadata !984, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.value(metadata ptr undef, metadata !985, metadata !DIExpression()), !dbg !1179
  %236 = fcmp oeq double %235, 0.000000e+00, !dbg !1181
  br i1 %236, label %257, label %237, !dbg !1182

237:                                              ; preds = %225
  %238 = tail call double @llvm.fabs.f64(double %235), !dbg !1183
  %239 = tail call double @llvm.fabs.f64(double %231), !dbg !1184
  %240 = fcmp ogt double %238, %239, !dbg !1185
  br i1 %240, label %241, label %249, !dbg !1186

241:                                              ; preds = %237
  %242 = fneg double %231, !dbg !1187
  %243 = fdiv double %242, %235, !dbg !1188
  call void @llvm.dbg.value(metadata double %243, metadata !986, metadata !DIExpression()), !dbg !1189
  %244 = fmul double %243, %243, !dbg !1190
  %245 = fadd double %244, 1.000000e+00, !dbg !1191
  %246 = tail call double @llvm.sqrt.f64(double %245), !dbg !1192
  %247 = fdiv double 1.000000e+00, %246, !dbg !1193
  call void @llvm.dbg.value(metadata double %247, metadata !990, metadata !DIExpression()), !dbg !1189
  tail call void @llvm.dbg.value(metadata double %247, metadata !936, metadata !DIExpression()), !dbg !1174
  %248 = fmul double %243, %247, !dbg !1194
  tail call void @llvm.dbg.value(metadata double %248, metadata !932, metadata !DIExpression()), !dbg !1174
  br label %257, !dbg !1195

249:                                              ; preds = %237
  %250 = fneg double %235, !dbg !1196
  %251 = fdiv double %250, %231, !dbg !1197
  call void @llvm.dbg.value(metadata double %251, metadata !991, metadata !DIExpression()), !dbg !1198
  %252 = fmul double %251, %251, !dbg !1199
  %253 = fadd double %252, 1.000000e+00, !dbg !1200
  %254 = tail call double @llvm.sqrt.f64(double %253), !dbg !1201
  %255 = fdiv double 1.000000e+00, %254, !dbg !1202
  call void @llvm.dbg.value(metadata double %255, metadata !993, metadata !DIExpression()), !dbg !1198
  tail call void @llvm.dbg.value(metadata double %255, metadata !932, metadata !DIExpression()), !dbg !1174
  %256 = fmul double %251, %255, !dbg !1203
  tail call void @llvm.dbg.value(metadata double %256, metadata !936, metadata !DIExpression()), !dbg !1174
  br label %257

257:                                              ; preds = %225, %241, %249
  %258 = phi double [ %248, %241 ], [ %255, %249 ], [ 1.000000e+00, %225 ], !dbg !1204
  %259 = phi double [ %247, %241 ], [ %256, %249 ], [ 0.000000e+00, %225 ], !dbg !1204
  tail call void @llvm.dbg.value(metadata double %259, metadata !936, metadata !DIExpression()), !dbg !1174
  tail call void @llvm.dbg.value(metadata double %258, metadata !932, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %6, metadata !1049, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %8, metadata !1055, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr %0, metadata !1056, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr %1, metadata !1057, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %227, metadata !1058, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 %226, metadata !1059, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %258, metadata !1060, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata double %259, metadata !1061, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i64 0, metadata !1062, metadata !DIExpression()), !dbg !1205
  br label %260, !dbg !1207

260:                                              ; preds = %260, %257
  %261 = phi i64 [ 0, %257 ], [ %274, %260 ]
  call void @llvm.dbg.value(metadata i64 %261, metadata !1062, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr %0, metadata !400, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i64 %261, metadata !407, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i64 %227, metadata !408, metadata !DIExpression()), !dbg !1208
  %262 = mul i64 %261, %199, !dbg !1210
  %263 = getelementptr double, ptr %197, i64 %262, !dbg !1211
  %264 = getelementptr double, ptr %263, i64 %227, !dbg !1211
  %265 = load double, ptr %264, align 8, !dbg !1211, !tbaa !320
  call void @llvm.dbg.value(metadata double %265, metadata !1063, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata ptr %0, metadata !400, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 %261, metadata !407, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 %226, metadata !408, metadata !DIExpression()), !dbg !1213
  %266 = getelementptr double, ptr %263, i64 %226, !dbg !1215
  %267 = load double, ptr %266, align 8, !dbg !1215, !tbaa !320
  call void @llvm.dbg.value(metadata double %267, metadata !1067, metadata !DIExpression()), !dbg !1212
  %268 = fmul double %258, %265, !dbg !1216
  %269 = fmul double %259, %267, !dbg !1217
  %270 = fsub double %268, %269, !dbg !1218
  call void @llvm.dbg.value(metadata ptr %0, metadata !1087, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %261, metadata !1092, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %227, metadata !1093, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata double %270, metadata !1094, metadata !DIExpression()), !dbg !1219
  store double %270, ptr %264, align 8, !dbg !1221, !tbaa !320
  %271 = fmul double %259, %265, !dbg !1222
  %272 = fmul double %258, %267, !dbg !1223
  %273 = fadd double %271, %272, !dbg !1224
  call void @llvm.dbg.value(metadata ptr %0, metadata !1087, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %261, metadata !1092, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %226, metadata !1093, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata double %273, metadata !1094, metadata !DIExpression()), !dbg !1225
  store double %273, ptr %266, align 8, !dbg !1227, !tbaa !320
  %274 = add nuw i64 %261, 1, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %274, metadata !1062, metadata !DIExpression()), !dbg !1205
  %275 = icmp eq i64 %274, %6, !dbg !1229
  br i1 %275, label %276, label %260, !dbg !1207, !llvm.loop !1230

276:                                              ; preds = %260
  %277 = tail call i64 @llvm.umin.i64(i64 %227, i64 %226), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %277, metadata !1062, metadata !DIExpression()), !dbg !1205
  %278 = icmp ult i64 %277, %8, !dbg !1233
  br i1 %278, label %279, label %293, !dbg !1234

279:                                              ; preds = %276, %279
  %280 = phi i64 [ %291, %279 ], [ %277, %276 ]
  call void @llvm.dbg.value(metadata i64 %280, metadata !1062, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %227, metadata !407, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i64 %280, metadata !408, metadata !DIExpression()), !dbg !1235
  %281 = getelementptr double, ptr %229, i64 %280, !dbg !1237
  %282 = load double, ptr %281, align 8, !dbg !1237, !tbaa !320
  call void @llvm.dbg.value(metadata double %282, metadata !1068, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %226, metadata !407, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %280, metadata !408, metadata !DIExpression()), !dbg !1239
  %283 = getelementptr double, ptr %233, i64 %280, !dbg !1241
  %284 = load double, ptr %283, align 8, !dbg !1241, !tbaa !320
  call void @llvm.dbg.value(metadata double %284, metadata !1072, metadata !DIExpression()), !dbg !1238
  %285 = fmul double %258, %282, !dbg !1242
  %286 = fmul double %259, %284, !dbg !1243
  %287 = fsub double %285, %286, !dbg !1244
  call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %227, metadata !1092, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %280, metadata !1093, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata double %287, metadata !1094, metadata !DIExpression()), !dbg !1245
  store double %287, ptr %281, align 8, !dbg !1247, !tbaa !320
  %288 = fmul double %259, %282, !dbg !1248
  %289 = fmul double %258, %284, !dbg !1249
  %290 = fadd double %288, %289, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %226, metadata !1092, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %280, metadata !1093, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata double %290, metadata !1094, metadata !DIExpression()), !dbg !1251
  store double %290, ptr %283, align 8, !dbg !1253, !tbaa !320
  %291 = add nuw i64 %280, 1, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %291, metadata !1062, metadata !DIExpression()), !dbg !1205
  %292 = icmp eq i64 %291, %8, !dbg !1233
  br i1 %292, label %293, label %279, !dbg !1234, !llvm.loop !1255

293:                                              ; preds = %279, %276
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1087, metadata !DIExpression()), !dbg !1257
  tail call void @llvm.dbg.value(metadata i64 %226, metadata !1092, metadata !DIExpression()), !dbg !1257
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !1093, metadata !DIExpression()), !dbg !1257
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1094, metadata !DIExpression()), !dbg !1257
  store double 0.000000e+00, ptr %234, align 8, !dbg !1259, !tbaa !320
  %294 = add nuw i64 %226, 1, !dbg !1260
  tail call void @llvm.dbg.value(metadata i64 %294, metadata !917, metadata !DIExpression()), !dbg !961
  %295 = icmp eq i64 %294, %189, !dbg !1164
  br i1 %295, label %296, label %225, !dbg !1165, !llvm.loop !1261

296:                                              ; preds = %293, %187, %37, %19, %15
  %297 = phi i32 [ 20, %15 ], [ 19, %19 ], [ 19, %37 ], [ 0, %187 ], [ 0, %293 ], !dbg !1263
  ret i32 %297, !dbg !1264
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gsl_linalg_QRPT_rank(ptr noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1265 {
  %3 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !1293
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1273, metadata !DIExpression(), metadata !1293, metadata ptr %3, metadata !DIExpression()), !dbg !1294
  %4 = alloca double, align 8, !DIAssignID !1295
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1283, metadata !DIExpression(), metadata !1295, metadata ptr %4, metadata !DIExpression()), !dbg !1296
  %5 = alloca double, align 8, !DIAssignID !1297
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1286, metadata !DIExpression(), metadata !1297, metadata ptr %5, metadata !DIExpression()), !dbg !1296
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1269, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata double %1, metadata !1270, metadata !DIExpression()), !dbg !1294
  %6 = load i64, ptr %0, align 8, !dbg !1298, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1271, metadata !DIExpression()), !dbg !1294
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1299
  %8 = load i64, ptr %7, align 8, !dbg !1299, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1272, metadata !DIExpression()), !dbg !1294
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7, !dbg !1300
  call void @gsl_matrix_const_diagonal(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %3, ptr noundef nonnull %0) #7, !dbg !1301
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1282, metadata !DIExpression()), !dbg !1294
  %9 = fcmp olt double %1, 0.000000e+00, !dbg !1302
  br i1 %9, label %10, label %26, !dbg !1303

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7, !dbg !1304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7, !dbg !1304
  call void @gsl_vector_minmax(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #7, !dbg !1305
  %11 = load double, ptr %4, align 8, !dbg !1306, !tbaa !320
  %12 = call double @llvm.fabs.f64(double %11), !dbg !1306
  %13 = load double, ptr %5, align 8, !dbg !1306, !tbaa !320
  %14 = call double @llvm.fabs.f64(double %13), !dbg !1306
  %15 = fcmp ogt double %12, %14, !dbg !1306
  %16 = select i1 %15, double %12, double %14, !dbg !1306
  tail call void @llvm.dbg.value(metadata double %16, metadata !1287, metadata !DIExpression()), !dbg !1296
  %17 = call double @log(double noundef %16) #7, !dbg !1307
  %18 = fdiv double %17, 0x3FE62E42FEFA39EF, !dbg !1308
  %19 = fptosi double %18 to i32, !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !1288, metadata !DIExpression()), !dbg !1296
  %20 = add i64 %8, %6, !dbg !1310
  %21 = uitofp i64 %20 to double, !dbg !1311
  %22 = fmul double %21, 2.000000e+01, !dbg !1312
  %23 = call double @ldexp(double 1.000000e+00, i32 %19) #7, !dbg !1313
  %24 = fmul double %22, %23, !dbg !1314
  %25 = fmul double %24, 0x3CB0000000000000, !dbg !1315
  tail call void @llvm.dbg.value(metadata double %25, metadata !1280, metadata !DIExpression()), !dbg !1294
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7, !dbg !1316
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7, !dbg !1316
  br label %26, !dbg !1317

26:                                               ; preds = %2, %10
  %27 = phi double [ %25, %10 ], [ %1, %2 ], !dbg !1318
  tail call void @llvm.dbg.value(metadata double %27, metadata !1280, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1281, metadata !DIExpression()), !dbg !1294
  %28 = call i64 @llvm.umin.i64(i64 %6, i64 %8)
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1281, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1282, metadata !DIExpression()), !dbg !1294
  %29 = icmp eq i64 %28, 0, !dbg !1319
  br i1 %29, label %74, label %30, !dbg !1320

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !314
  %33 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !316
  %35 = and i64 %28, 1, !dbg !1320
  %36 = icmp eq i64 %28, 1, !dbg !1320
  br i1 %36, label %61, label %37, !dbg !1320

37:                                               ; preds = %30
  %38 = and i64 %28, -2, !dbg !1320
  br label %39, !dbg !1320

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %58, %39 ]
  %41 = phi i64 [ 0, %37 ], [ %57, %39 ]
  %42 = phi i64 [ 0, %37 ], [ %59, %39 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1281, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !1282, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !334, metadata !DIExpression()), !dbg !1321
  %43 = mul i64 %34, %40, !dbg !1323
  %44 = getelementptr inbounds double, ptr %32, i64 %43, !dbg !1324
  %45 = load double, ptr %44, align 8, !dbg !1324, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %45, metadata !1289, metadata !DIExpression()), !dbg !1325
  %46 = call double @llvm.fabs.f64(double %45), !dbg !1326
  %47 = fcmp ogt double %46, %27, !dbg !1328
  %48 = zext i1 %47 to i64, !dbg !1329
  %49 = add i64 %41, %48, !dbg !1329
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1282, metadata !DIExpression()), !dbg !1294
  %50 = or disjoint i64 %40, 1, !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1281, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1281, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1282, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !334, metadata !DIExpression()), !dbg !1321
  %51 = mul i64 %34, %50, !dbg !1323
  %52 = getelementptr inbounds double, ptr %32, i64 %51, !dbg !1324
  %53 = load double, ptr %52, align 8, !dbg !1324, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %53, metadata !1289, metadata !DIExpression()), !dbg !1325
  %54 = call double @llvm.fabs.f64(double %53), !dbg !1326
  %55 = fcmp ogt double %54, %27, !dbg !1328
  %56 = zext i1 %55 to i64, !dbg !1329
  %57 = add i64 %49, %56, !dbg !1329
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !1282, metadata !DIExpression()), !dbg !1294
  %58 = add nuw i64 %40, 2, !dbg !1330
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1281, metadata !DIExpression()), !dbg !1294
  %59 = add i64 %42, 2, !dbg !1320
  %60 = icmp eq i64 %59, %38, !dbg !1320
  br i1 %60, label %61, label %39, !dbg !1320, !llvm.loop !1331

61:                                               ; preds = %39, %30
  %62 = phi i64 [ undef, %30 ], [ %57, %39 ]
  %63 = phi i64 [ 0, %30 ], [ %58, %39 ]
  %64 = phi i64 [ 0, %30 ], [ %57, %39 ]
  %65 = icmp eq i64 %35, 0, !dbg !1320
  br i1 %65, label %74, label %66, !dbg !1320

66:                                               ; preds = %61
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !1281, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata i64 %64, metadata !1282, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1321
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !334, metadata !DIExpression()), !dbg !1321
  %67 = mul i64 %34, %63, !dbg !1323
  %68 = getelementptr inbounds double, ptr %32, i64 %67, !dbg !1324
  %69 = load double, ptr %68, align 8, !dbg !1324, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %69, metadata !1289, metadata !DIExpression()), !dbg !1325
  %70 = call double @llvm.fabs.f64(double %69), !dbg !1326
  %71 = fcmp ogt double %70, %27, !dbg !1328
  %72 = zext i1 %71 to i64, !dbg !1329
  %73 = add i64 %64, %72, !dbg !1329
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !1282, metadata !DIExpression()), !dbg !1294
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !1281, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1294
  br label %74, !dbg !1333

74:                                               ; preds = %66, %61, %26
  %75 = phi i64 [ 0, %26 ], [ %62, %61 ], [ %73, %66 ], !dbg !1294
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7, !dbg !1333
  ret i64 %75, !dbg !1334
}

declare !dbg !1335 void @gsl_matrix_const_diagonal(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef) local_unnamed_addr #2

declare !dbg !1338 void @gsl_vector_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1341 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_QRPT_rcond(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !1342 {
  %4 = alloca %struct._gsl_matrix_const_view, align 8, !DIAssignID !1356
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1351, metadata !DIExpression(), metadata !1356, metadata ptr %4, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1346, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1347, metadata !DIExpression()), !dbg !1358
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1348, metadata !DIExpression()), !dbg !1358
  %5 = load i64, ptr %0, align 8, !dbg !1359, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1349, metadata !DIExpression()), !dbg !1358
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1360
  %7 = load i64, ptr %6, align 8, !dbg !1360, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1350, metadata !DIExpression()), !dbg !1358
  %8 = icmp ult i64 %5, %7, !dbg !1361
  br i1 %8, label %9, label %10, !dbg !1362

9:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 628, i32 noundef 19) #7, !dbg !1363
  br label %17, !dbg !1363

10:                                               ; preds = %3
  %11 = load i64, ptr %2, align 8, !dbg !1366, !tbaa !271
  %12 = mul i64 %7, 3, !dbg !1367
  %13 = icmp eq i64 %11, %12, !dbg !1368
  br i1 %13, label %15, label %14, !dbg !1369

14:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 632, i32 noundef 19) #7, !dbg !1370
  br label %17, !dbg !1370

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #7, !dbg !1373
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %7, i64 noundef %7) #7, !dbg !1374
  %16 = call i32 @gsl_linalg_tri_upper_rcond(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %2) #7, !dbg !1375
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1355, metadata !DIExpression()), !dbg !1357
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #7, !dbg !1376
  br label %17

17:                                               ; preds = %15, %14, %9
  %18 = phi i32 [ 19, %9 ], [ 19, %14 ], [ %16, %15 ], !dbg !1377
  ret i32 %18, !dbg !1378
}

declare !dbg !1379 i32 @gsl_linalg_tri_upper_rcond(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!78}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "qrpt.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "236fe1d18d062aba3af86b1f0c8f5927")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 75, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 27)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 20)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 16)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 25)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 249, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 40)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 30)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 257, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 37)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !31, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !3, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !46, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 434, type: !41, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 35)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 509, type: !46, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 33)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 517, type: !66, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 628, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 15)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 632, type: !66, isLocal: true, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !79, retainedTypes: !134, globals: !136, splitDebugInlining: false, nameTableKind: None)
!79 = !{!80, !119, !125, !130}
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 39, baseType: !82, size: 32, elements: !83)
!81 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!84 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!85 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!86 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!87 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!88 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!89 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!90 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!91 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!92 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!93 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!94 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!95 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!96 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!97 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!98 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!99 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!100 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!101 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!102 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!103 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!104 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!105 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!106 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!107 = !DIEnumerator(name: "GSL_ESING", value: 21)
!108 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!109 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!110 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!111 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!112 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!113 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!114 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!115 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!116 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!117 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!118 = !DIEnumerator(name: "GSL_EOF", value: 32)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !120, line: 48, baseType: !121, size: 32, elements: !122)
!120 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!121 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "CblasUpper", value: 121)
!124 = !DIEnumerator(name: "CblasLower", value: 122)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !120, line: 47, baseType: !121, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!128 = !DIEnumerator(name: "CblasTrans", value: 112)
!129 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !120, line: 49, baseType: !121, size: 32, elements: !131)
!131 = !{!132, !133}
!132 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!133 = !DIEnumerator(name: "CblasUnit", value: 132)
!134 = !{!82, !135}
!135 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!136 = !{!0, !7, !12, !17, !22, !27, !29, !34, !39, !44, !49, !51, !53, !55, !57, !62, !64, !69, !71, !76}
!137 = !{i32 7, !"Dwarf Version", i32 5}
!138 = !{i32 2, !"Debug Info Version", i32 3}
!139 = !{i32 1, !"wchar_size", i32 4}
!140 = !{i32 8, !"PIC Level", i32 2}
!141 = !{i32 7, !"PIE Level", i32 2}
!142 = !{i32 7, !"uwtable", i32 2}
!143 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!144 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!145 = distinct !DISubprogram(name: "gsl_linalg_QRPT_decomp", scope: !2, file: !2, line: 68, type: !146, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !189)
!146 = !DISubroutineType(types: !147)
!147 = !{!82, !148, !170, !180, !188, !170}
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !150, line: 50, baseType: !151)
!150 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 42, size: 384, elements: !152)
!152 = !{!153, !157, !158, !159, !161, !169}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !151, file: !150, line: 44, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 18, baseType: !156)
!155 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!156 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !151, file: !150, line: 45, baseType: !154, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !151, file: !150, line: 46, baseType: !154, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !151, file: !150, line: 47, baseType: !160, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !151, file: !150, line: 48, baseType: !162, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !164, line: 44, baseType: !165)
!164 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !164, line: 38, size: 128, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !165, file: !164, line: 40, baseType: !154, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !165, file: !164, line: 41, baseType: !160, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !151, file: !150, line: 49, baseType: !82, size: 32, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !172, line: 50, baseType: !173)
!172 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 42, size: 320, elements: !174)
!174 = !{!175, !176, !177, !178, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !173, file: !172, line: 44, baseType: !154, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !173, file: !172, line: 45, baseType: !154, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !173, file: !172, line: 46, baseType: !160, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !173, file: !172, line: 47, baseType: !162, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !173, file: !172, line: 48, baseType: !82, size: 32, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_permutation", file: !182, line: 47, baseType: !183)
!182 = !DIFile(filename: "../gsl/gsl_permutation.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3f1dc4966e787f4bad2ce907e35d62b3")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_permutation_struct", file: !182, line: 41, size: 128, elements: !184)
!184 = !{!185, !186}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !183, file: !182, line: 43, baseType: !154, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !183, file: !182, line: 44, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!189 = !{!190, !191, !192, !193, !194, !195, !197, !198, !203, !212, !213, !217, !218, !219, !223, !225, !226, !227, !235, !241, !244, !245, !248}
!190 = !DILocalVariable(name: "A", arg: 1, scope: !145, file: !2, line: 68, type: !148)
!191 = !DILocalVariable(name: "tau", arg: 2, scope: !145, file: !2, line: 68, type: !170)
!192 = !DILocalVariable(name: "p", arg: 3, scope: !145, file: !2, line: 68, type: !180)
!193 = !DILocalVariable(name: "signum", arg: 4, scope: !145, file: !2, line: 68, type: !188)
!194 = !DILocalVariable(name: "norm", arg: 5, scope: !145, file: !2, line: 68, type: !170)
!195 = !DILocalVariable(name: "M", scope: !145, file: !2, line: 70, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!197 = !DILocalVariable(name: "N", scope: !145, file: !2, line: 71, type: !196)
!198 = !DILocalVariable(name: "i", scope: !199, file: !2, line: 87, type: !154)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 86, column: 5)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 81, column: 12)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 77, column: 12)
!202 = distinct !DILexicalBlock(scope: !145, file: !2, line: 73, column: 7)
!203 = !DILocalVariable(name: "c", scope: !204, file: !2, line: 97, type: !207)
!204 = distinct !DILexicalBlock(scope: !205, file: !2, line: 96, column: 9)
!205 = distinct !DILexicalBlock(scope: !206, file: !2, line: 95, column: 7)
!206 = distinct !DILexicalBlock(scope: !199, file: !2, line: 95, column: 7)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !172, line: 57, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !172, line: 55, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 52, size: 320, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !209, file: !172, line: 54, baseType: !171, size: 320)
!212 = !DILocalVariable(name: "x", scope: !204, file: !2, line: 98, type: !135)
!213 = !DILocalVariable(name: "max_norm", scope: !214, file: !2, line: 106, type: !135)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 103, column: 9)
!215 = distinct !DILexicalBlock(scope: !216, file: !2, line: 102, column: 7)
!216 = distinct !DILexicalBlock(scope: !199, file: !2, line: 102, column: 7)
!217 = !DILocalVariable(name: "j", scope: !214, file: !2, line: 107, type: !154)
!218 = !DILocalVariable(name: "kmax", scope: !214, file: !2, line: 107, type: !154)
!219 = !DILocalVariable(name: "x", scope: !220, file: !2, line: 111, type: !135)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 110, column: 13)
!221 = distinct !DILexicalBlock(scope: !222, file: !2, line: 109, column: 11)
!222 = distinct !DILexicalBlock(scope: !214, file: !2, line: 109, column: 11)
!223 = !DILocalVariable(name: "c_full", scope: !224, file: !2, line: 133, type: !207)
!224 = distinct !DILexicalBlock(scope: !214, file: !2, line: 132, column: 11)
!225 = !DILocalVariable(name: "c", scope: !224, file: !2, line: 134, type: !207)
!226 = !DILocalVariable(name: "tau_i", scope: !224, file: !2, line: 136, type: !135)
!227 = !DILocalVariable(name: "m", scope: !228, file: !2, line: 144, type: !230)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 143, column: 15)
!229 = distinct !DILexicalBlock(scope: !224, file: !2, line: 142, column: 17)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !150, line: 57, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !150, line: 55, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 52, size: 384, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !232, file: !150, line: 54, baseType: !149, size: 384)
!235 = !DILocalVariable(name: "x", scope: !236, file: !2, line: 156, type: !135)
!236 = distinct !DILexicalBlock(scope: !237, file: !2, line: 155, column: 17)
!237 = distinct !DILexicalBlock(scope: !238, file: !2, line: 154, column: 15)
!238 = distinct !DILexicalBlock(scope: !239, file: !2, line: 154, column: 15)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 153, column: 13)
!240 = distinct !DILexicalBlock(scope: !214, file: !2, line: 152, column: 15)
!241 = !DILocalVariable(name: "y", scope: !242, file: !2, line: 160, type: !135)
!242 = distinct !DILexicalBlock(scope: !243, file: !2, line: 159, column: 21)
!243 = distinct !DILexicalBlock(scope: !236, file: !2, line: 158, column: 23)
!244 = !DILocalVariable(name: "temp", scope: !242, file: !2, line: 161, type: !135)
!245 = !DILocalVariable(name: "c_full", scope: !246, file: !2, line: 172, type: !207)
!246 = distinct !DILexicalBlock(scope: !247, file: !2, line: 171, column: 25)
!247 = distinct !DILexicalBlock(scope: !242, file: !2, line: 170, column: 27)
!248 = !DILocalVariable(name: "c", scope: !246, file: !2, line: 173, type: !207)
!249 = distinct !DIAssignID()
!250 = !DILocation(line: 0, scope: !204)
!251 = distinct !DIAssignID()
!252 = !DILocation(line: 0, scope: !224)
!253 = distinct !DIAssignID()
!254 = distinct !DIAssignID()
!255 = !DILocation(line: 0, scope: !228)
!256 = distinct !DIAssignID()
!257 = !DILocation(line: 0, scope: !246)
!258 = distinct !DIAssignID()
!259 = !DILocation(line: 0, scope: !145)
!260 = !DILocation(line: 70, column: 23, scope: !145)
!261 = !{!262, !263, i64 0}
!262 = !{!"", !263, i64 0, !263, i64 8, !263, i64 16, !266, i64 24, !266, i64 32, !267, i64 40}
!263 = !{!"long", !264, i64 0}
!264 = !{!"omnipotent char", !265, i64 0}
!265 = !{!"Simple C/C++ TBAA"}
!266 = !{!"any pointer", !264, i64 0}
!267 = !{!"int", !264, i64 0}
!268 = !DILocation(line: 71, column: 23, scope: !145)
!269 = !{!262, !263, i64 8}
!270 = !DILocation(line: 73, column: 12, scope: !202)
!271 = !{!272, !263, i64 0}
!272 = !{!"", !263, i64 0, !263, i64 8, !266, i64 16, !266, i64 24, !267, i64 32}
!273 = !DILocation(line: 73, column: 20, scope: !202)
!274 = !DILocation(line: 73, column: 17, scope: !202)
!275 = !DILocation(line: 73, column: 7, scope: !145)
!276 = !DILocation(line: 75, column: 7, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !2, line: 75, column: 7)
!278 = distinct !DILexicalBlock(scope: !202, file: !2, line: 74, column: 5)
!279 = !DILocation(line: 77, column: 15, scope: !201)
!280 = !{!281, !263, i64 0}
!281 = !{!"gsl_permutation_struct", !263, i64 0, !266, i64 8}
!282 = !DILocation(line: 77, column: 20, scope: !201)
!283 = !DILocation(line: 77, column: 12, scope: !202)
!284 = !DILocation(line: 79, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 79, column: 7)
!286 = distinct !DILexicalBlock(scope: !201, file: !2, line: 78, column: 5)
!287 = !DILocation(line: 81, column: 18, scope: !200)
!288 = !DILocation(line: 81, column: 23, scope: !200)
!289 = !DILocation(line: 81, column: 12, scope: !201)
!290 = !DILocation(line: 83, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !292, file: !2, line: 83, column: 7)
!292 = distinct !DILexicalBlock(scope: !200, file: !2, line: 82, column: 5)
!293 = !DILocation(line: 89, column: 15, scope: !199)
!294 = !{!267, !267, i64 0}
!295 = !DILocation(line: 91, column: 7, scope: !199)
!296 = !DILocation(line: 0, scope: !199)
!297 = !DILocation(line: 95, column: 21, scope: !205)
!298 = !DILocation(line: 95, column: 7, scope: !206)
!299 = !DILocation(line: 102, column: 21, scope: !215)
!300 = !DILocation(line: 102, column: 7, scope: !216)
!301 = !DILocation(line: 97, column: 11, scope: !204)
!302 = !DILocation(line: 97, column: 31, scope: !204)
!303 = !DILocation(line: 98, column: 22, scope: !204)
!304 = !DILocalVariable(name: "v", arg: 1, scope: !305, file: !172, line: 188, type: !170)
!305 = distinct !DISubprogram(name: "gsl_vector_set", scope: !172, file: !172, line: 188, type: !306, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !170, !196, !135}
!308 = !{!304, !309, !310}
!309 = !DILocalVariable(name: "i", arg: 2, scope: !305, file: !172, line: 188, type: !196)
!310 = !DILocalVariable(name: "x", arg: 3, scope: !305, file: !172, line: 188, type: !135)
!311 = !DILocation(line: 0, scope: !305, inlinedAt: !312)
!312 = distinct !DILocation(line: 99, column: 11, scope: !204)
!313 = !DILocation(line: 196, column: 6, scope: !305, inlinedAt: !312)
!314 = !{!272, !266, i64 16}
!315 = !DILocation(line: 196, column: 18, scope: !305, inlinedAt: !312)
!316 = !{!272, !263, i64 8}
!317 = !DILocation(line: 196, column: 13, scope: !305, inlinedAt: !312)
!318 = !DILocation(line: 196, column: 3, scope: !305, inlinedAt: !312)
!319 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !312)
!320 = !{!321, !321, i64 0}
!321 = !{!"double", !264, i64 0}
!322 = !DILocation(line: 100, column: 9, scope: !205)
!323 = !DILocation(line: 95, column: 27, scope: !205)
!324 = distinct !{!324, !298, !325, !326}
!325 = !DILocation(line: 100, column: 9, scope: !206)
!326 = !{!"llvm.loop.mustprogress"}
!327 = !DILocalVariable(name: "v", arg: 1, scope: !328, file: !172, line: 175, type: !331)
!328 = distinct !DISubprogram(name: "gsl_vector_get", scope: !172, file: !172, line: 175, type: !329, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !333)
!329 = !DISubroutineType(types: !330)
!330 = !{!135, !331, !196}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!333 = !{!327, !334}
!334 = !DILocalVariable(name: "i", arg: 2, scope: !328, file: !172, line: 175, type: !196)
!335 = !DILocation(line: 0, scope: !328, inlinedAt: !336)
!336 = distinct !DILocation(line: 106, column: 29, scope: !214)
!337 = !DILocation(line: 183, column: 13, scope: !328, inlinedAt: !336)
!338 = !DILocation(line: 183, column: 25, scope: !328, inlinedAt: !336)
!339 = !DILocation(line: 0, scope: !214)
!340 = !DILocation(line: 109, column: 22, scope: !222)
!341 = !DILocation(line: 109, column: 29, scope: !221)
!342 = !DILocation(line: 109, column: 11, scope: !222)
!343 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !336)
!344 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !336)
!345 = !DILocation(line: 0, scope: !328, inlinedAt: !346)
!346 = distinct !DILocation(line: 111, column: 26, scope: !220)
!347 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !346)
!348 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !346)
!349 = !DILocation(line: 0, scope: !220)
!350 = !DILocation(line: 113, column: 21, scope: !351)
!351 = distinct !DILexicalBlock(scope: !220, file: !2, line: 113, column: 19)
!352 = !DILocation(line: 113, column: 19, scope: !220)
!353 = !DILocation(line: 109, column: 35, scope: !221)
!354 = distinct !{!354, !342, !355, !326}
!355 = !DILocation(line: 118, column: 13, scope: !222)
!356 = !DILocation(line: 120, column: 20, scope: !357)
!357 = distinct !DILexicalBlock(scope: !214, file: !2, line: 120, column: 15)
!358 = !DILocation(line: 120, column: 15, scope: !214)
!359 = !DILocation(line: 122, column: 15, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !2, line: 121, column: 13)
!361 = !DILocation(line: 123, column: 15, scope: !360)
!362 = !DILocation(line: 124, column: 15, scope: !360)
!363 = !DILocation(line: 126, column: 29, scope: !360)
!364 = !DILocation(line: 126, column: 27, scope: !360)
!365 = !DILocation(line: 126, column: 25, scope: !360)
!366 = !DILocation(line: 127, column: 13, scope: !360)
!367 = !DILocation(line: 133, column: 13, scope: !224)
!368 = !DILocation(line: 133, column: 38, scope: !224)
!369 = !DILocation(line: 134, column: 13, scope: !224)
!370 = !DILocation(line: 135, column: 60, scope: !224)
!371 = !DILocation(line: 134, column: 33, scope: !224)
!372 = !DILocation(line: 136, column: 28, scope: !224)
!373 = !DILocation(line: 0, scope: !305, inlinedAt: !374)
!374 = distinct !DILocation(line: 138, column: 13, scope: !224)
!375 = !DILocation(line: 196, column: 6, scope: !305, inlinedAt: !374)
!376 = !DILocation(line: 196, column: 18, scope: !305, inlinedAt: !374)
!377 = !DILocation(line: 196, column: 13, scope: !305, inlinedAt: !374)
!378 = !DILocation(line: 196, column: 3, scope: !305, inlinedAt: !374)
!379 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !374)
!380 = !DILocation(line: 142, column: 17, scope: !224)
!381 = !DILocation(line: 148, column: 11, scope: !214)
!382 = !DILocation(line: 152, column: 15, scope: !214)
!383 = !DILocation(line: 144, column: 17, scope: !228)
!384 = !DILocation(line: 144, column: 81, scope: !228)
!385 = !DILocation(line: 144, column: 37, scope: !228)
!386 = !DILocation(line: 146, column: 17, scope: !228)
!387 = !DILocation(line: 147, column: 15, scope: !229)
!388 = !DILocation(line: 152, column: 21, scope: !240)
!389 = !DILocation(line: 183, column: 13, scope: !328, inlinedAt: !390)
!390 = distinct !DILocation(line: 156, column: 30, scope: !236)
!391 = !DILocation(line: 183, column: 25, scope: !328, inlinedAt: !390)
!392 = !DILocation(line: 154, column: 15, scope: !238)
!393 = !DILocation(line: 0, scope: !328, inlinedAt: !390)
!394 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !390)
!395 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !390)
!396 = !DILocation(line: 0, scope: !236)
!397 = !DILocation(line: 158, column: 25, scope: !243)
!398 = !DILocation(line: 158, column: 23, scope: !236)
!399 = !DILocation(line: 0, scope: !242)
!400 = !DILocalVariable(name: "m", arg: 1, scope: !401, file: !150, line: 270, type: !404)
!401 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !150, file: !150, line: 270, type: !402, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !406)
!402 = !DISubroutineType(types: !403)
!403 = !{!135, !404, !196, !196}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!406 = !{!400, !407, !408}
!407 = !DILocalVariable(name: "i", arg: 2, scope: !401, file: !150, line: 270, type: !196)
!408 = !DILocalVariable(name: "j", arg: 3, scope: !401, file: !150, line: 270, type: !196)
!409 = !DILocation(line: 0, scope: !401, inlinedAt: !410)
!410 = distinct !DILocation(line: 161, column: 36, scope: !242)
!411 = !DILocation(line: 285, column: 13, scope: !401, inlinedAt: !410)
!412 = !{!262, !266, i64 24}
!413 = !DILocation(line: 285, column: 25, scope: !401, inlinedAt: !410)
!414 = !{!262, !263, i64 16}
!415 = !DILocation(line: 285, column: 20, scope: !401, inlinedAt: !410)
!416 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !410)
!417 = !DILocation(line: 161, column: 61, scope: !242)
!418 = !DILocation(line: 163, column: 27, scope: !419)
!419 = distinct !DILexicalBlock(scope: !242, file: !2, line: 163, column: 27)
!420 = !DILocation(line: 163, column: 39, scope: !419)
!421 = !DILocation(line: 163, column: 27, scope: !242)
!422 = !DILocation(line: 166, column: 48, scope: !419)
!423 = !DILocation(line: 166, column: 41, scope: !419)
!424 = !DILocation(line: 166, column: 33, scope: !419)
!425 = !DILocation(line: 166, column: 31, scope: !419)
!426 = !DILocation(line: 0, scope: !419)
!427 = !DILocation(line: 170, column: 35, scope: !247)
!428 = !DILocation(line: 170, column: 27, scope: !247)
!429 = !DILocation(line: 170, column: 40, scope: !247)
!430 = !DILocation(line: 170, column: 27, scope: !242)
!431 = !DILocation(line: 172, column: 27, scope: !246)
!432 = !DILocation(line: 172, column: 52, scope: !246)
!433 = !DILocation(line: 173, column: 27, scope: !246)
!434 = !DILocation(line: 174, column: 29, scope: !246)
!435 = !DILocation(line: 176, column: 31, scope: !246)
!436 = !DILocation(line: 177, column: 25, scope: !247)
!437 = !DILocation(line: 177, column: 25, scope: !246)
!438 = !DILocation(line: 0, scope: !305, inlinedAt: !439)
!439 = distinct !DILocation(line: 179, column: 23, scope: !242)
!440 = !DILocation(line: 196, column: 6, scope: !305, inlinedAt: !439)
!441 = !DILocation(line: 196, column: 18, scope: !305, inlinedAt: !439)
!442 = !DILocation(line: 196, column: 13, scope: !305, inlinedAt: !439)
!443 = !DILocation(line: 196, column: 3, scope: !305, inlinedAt: !439)
!444 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !439)
!445 = !DILocation(line: 180, column: 21, scope: !242)
!446 = !DILocation(line: 154, column: 39, scope: !237)
!447 = !DILocation(line: 154, column: 33, scope: !237)
!448 = distinct !{!448, !392, !449, !326}
!449 = !DILocation(line: 181, column: 17, scope: !238)
!450 = distinct !{!450, !300, !451, !326}
!451 = !DILocation(line: 183, column: 9, scope: !216)
!452 = !DILocation(line: 0, scope: !202)
!453 = !DILocation(line: 187, column: 1, scope: !145)
!454 = !DISubprogram(name: "gsl_error", scope: !81, file: !81, line: 77, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !457, !457, !82, !82}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!459 = !DISubprogram(name: "gsl_permutation_init", scope: !182, file: !182, line: 51, type: !460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !180}
!462 = !DISubprogram(name: "gsl_matrix_column", scope: !150, file: !150, line: 109, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!463 = !DISubroutineType(types: !464)
!464 = !{!208, !148, !196}
!465 = !DISubprogram(name: "gsl_blas_dnrm2", scope: !466, file: !466, line: 91, type: !467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!467 = !DISubroutineType(types: !468)
!468 = !{!135, !331}
!469 = !DISubprogram(name: "gsl_matrix_swap_columns", scope: !150, file: !150, line: 222, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!470 = !DISubroutineType(types: !471)
!471 = !{!82, !148, !196, !196}
!472 = !DISubprogram(name: "gsl_permutation_swap", scope: !182, file: !182, line: 63, type: !473, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!473 = !DISubroutineType(types: !474)
!474 = !{!82, !180, !196, !196}
!475 = !DISubprogram(name: "gsl_vector_swap_elements", scope: !172, file: !172, line: 141, type: !476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!476 = !DISubroutineType(types: !477)
!477 = !{!82, !170, !196, !196}
!478 = !DISubprogram(name: "gsl_vector_subvector", scope: !172, file: !172, line: 103, type: !479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!479 = !DISubroutineType(types: !480)
!480 = !{!208, !170, !154, !154}
!481 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !482, file: !482, line: 94, type: !483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!482 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!483 = !DISubroutineType(types: !484)
!484 = !{!135, !170}
!485 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !150, file: !150, line: 101, type: !486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!486 = !DISubroutineType(types: !487)
!487 = !{!231, !148, !196, !196, !196, !196}
!488 = !DISubprogram(name: "gsl_linalg_householder_hm", scope: !482, file: !482, line: 97, type: !489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!489 = !DISubroutineType(types: !490)
!490 = !{!82, !135, !331, !148}
!491 = !DISubprogram(name: "sqrt", scope: !492, file: !492, line: 143, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!492 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!493 = !DISubroutineType(types: !494)
!494 = !{!135, !135}
!495 = distinct !DISubprogram(name: "gsl_linalg_QRPT_decomp2", scope: !2, file: !2, line: 190, type: !496, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{!82, !404, !148, !148, !170, !180, !188, !170}
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507}
!499 = !DILocalVariable(name: "A", arg: 1, scope: !495, file: !2, line: 190, type: !404)
!500 = !DILocalVariable(name: "q", arg: 2, scope: !495, file: !2, line: 190, type: !148)
!501 = !DILocalVariable(name: "r", arg: 3, scope: !495, file: !2, line: 190, type: !148)
!502 = !DILocalVariable(name: "tau", arg: 4, scope: !495, file: !2, line: 190, type: !170)
!503 = !DILocalVariable(name: "p", arg: 5, scope: !495, file: !2, line: 190, type: !180)
!504 = !DILocalVariable(name: "signum", arg: 6, scope: !495, file: !2, line: 190, type: !188)
!505 = !DILocalVariable(name: "norm", arg: 7, scope: !495, file: !2, line: 190, type: !170)
!506 = !DILocalVariable(name: "M", scope: !495, file: !2, line: 192, type: !196)
!507 = !DILocalVariable(name: "N", scope: !495, file: !2, line: 193, type: !196)
!508 = !DILocation(line: 0, scope: !495)
!509 = !DILocation(line: 192, column: 23, scope: !495)
!510 = !DILocation(line: 193, column: 23, scope: !495)
!511 = !DILocation(line: 195, column: 10, scope: !512)
!512 = distinct !DILexicalBlock(scope: !495, file: !2, line: 195, column: 7)
!513 = !DILocation(line: 195, column: 16, scope: !512)
!514 = !DILocation(line: 195, column: 21, scope: !512)
!515 = !DILocation(line: 195, column: 27, scope: !512)
!516 = !DILocation(line: 195, column: 33, scope: !512)
!517 = !DILocation(line: 195, column: 7, scope: !495)
!518 = !DILocation(line: 197, column: 7, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 197, column: 7)
!520 = distinct !DILexicalBlock(scope: !512, file: !2, line: 196, column: 5)
!521 = !DILocation(line: 199, column: 15, scope: !522)
!522 = distinct !DILexicalBlock(scope: !512, file: !2, line: 199, column: 12)
!523 = !DILocation(line: 199, column: 21, scope: !522)
!524 = !DILocation(line: 199, column: 26, scope: !522)
!525 = !DILocation(line: 199, column: 32, scope: !522)
!526 = !DILocation(line: 199, column: 38, scope: !522)
!527 = !DILocation(line: 199, column: 12, scope: !512)
!528 = !DILocation(line: 201, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 201, column: 7)
!530 = distinct !DILexicalBlock(scope: !522, file: !2, line: 200, column: 5)
!531 = !DILocation(line: 203, column: 17, scope: !532)
!532 = distinct !DILexicalBlock(scope: !522, file: !2, line: 203, column: 12)
!533 = !DILocation(line: 203, column: 25, scope: !532)
!534 = !DILocation(line: 203, column: 22, scope: !532)
!535 = !DILocation(line: 203, column: 12, scope: !522)
!536 = !DILocation(line: 205, column: 7, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 205, column: 7)
!538 = distinct !DILexicalBlock(scope: !532, file: !2, line: 204, column: 5)
!539 = !DILocation(line: 207, column: 15, scope: !540)
!540 = distinct !DILexicalBlock(scope: !532, file: !2, line: 207, column: 12)
!541 = !DILocation(line: 207, column: 20, scope: !540)
!542 = !DILocation(line: 207, column: 12, scope: !532)
!543 = !DILocation(line: 209, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 209, column: 7)
!545 = distinct !DILexicalBlock(scope: !540, file: !2, line: 208, column: 5)
!546 = !DILocation(line: 211, column: 18, scope: !547)
!547 = distinct !DILexicalBlock(scope: !540, file: !2, line: 211, column: 12)
!548 = !DILocation(line: 211, column: 23, scope: !547)
!549 = !DILocation(line: 211, column: 12, scope: !540)
!550 = !DILocation(line: 213, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 213, column: 7)
!552 = distinct !DILexicalBlock(scope: !547, file: !2, line: 212, column: 5)
!553 = !DILocation(line: 216, column: 3, scope: !495)
!554 = !DILocation(line: 218, column: 3, scope: !495)
!555 = !{i32 0, i32 20}
!556 = !DILocation(line: 222, column: 3, scope: !495)
!557 = !DILocation(line: 224, column: 3, scope: !495)
!558 = !DILocation(line: 225, column: 1, scope: !495)
!559 = !DISubprogram(name: "gsl_matrix_memcpy", scope: !150, file: !150, line: 217, type: !560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DISubroutineType(types: !561)
!561 = !{!82, !148, !404}
!562 = !DISubprogram(name: "gsl_linalg_QR_unpack", scope: !482, file: !482, line: 290, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!563 = !DISubroutineType(types: !564)
!564 = !{!82, !404, !331, !148, !148}
!565 = distinct !DISubprogram(name: "gsl_linalg_QRPT_solve", scope: !2, file: !2, line: 237, type: !566, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !570)
!566 = !DISubroutineType(types: !567)
!567 = !{!82, !404, !331, !568, !331, !170}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!570 = !{!571, !572, !573, !574, !575}
!571 = !DILocalVariable(name: "QR", arg: 1, scope: !565, file: !2, line: 237, type: !404)
!572 = !DILocalVariable(name: "tau", arg: 2, scope: !565, file: !2, line: 238, type: !331)
!573 = !DILocalVariable(name: "p", arg: 3, scope: !565, file: !2, line: 239, type: !568)
!574 = !DILocalVariable(name: "b", arg: 4, scope: !565, file: !2, line: 240, type: !331)
!575 = !DILocalVariable(name: "x", arg: 5, scope: !565, file: !2, line: 241, type: !170)
!576 = !DILocation(line: 0, scope: !565)
!577 = !DILocation(line: 243, column: 11, scope: !578)
!578 = distinct !DILexicalBlock(scope: !565, file: !2, line: 243, column: 7)
!579 = !DILocation(line: 243, column: 24, scope: !578)
!580 = !DILocation(line: 243, column: 17, scope: !578)
!581 = !DILocation(line: 243, column: 7, scope: !565)
!582 = !DILocation(line: 245, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 245, column: 7)
!584 = distinct !DILexicalBlock(scope: !578, file: !2, line: 244, column: 5)
!585 = !DILocation(line: 247, column: 28, scope: !586)
!586 = distinct !DILexicalBlock(scope: !578, file: !2, line: 247, column: 12)
!587 = !DILocation(line: 247, column: 22, scope: !586)
!588 = !DILocation(line: 247, column: 12, scope: !578)
!589 = !DILocation(line: 249, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !591, file: !2, line: 249, column: 7)
!591 = distinct !DILexicalBlock(scope: !586, file: !2, line: 248, column: 5)
!592 = !DILocation(line: 251, column: 28, scope: !593)
!593 = distinct !DILexicalBlock(scope: !586, file: !2, line: 251, column: 12)
!594 = !DILocation(line: 251, column: 22, scope: !593)
!595 = !DILocation(line: 251, column: 12, scope: !586)
!596 = !DILocation(line: 253, column: 7, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !2, line: 253, column: 7)
!598 = distinct !DILexicalBlock(scope: !593, file: !2, line: 252, column: 5)
!599 = !DILocation(line: 255, column: 28, scope: !600)
!600 = distinct !DILexicalBlock(scope: !593, file: !2, line: 255, column: 12)
!601 = !DILocation(line: 255, column: 22, scope: !600)
!602 = !DILocation(line: 255, column: 12, scope: !593)
!603 = !DILocation(line: 257, column: 7, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !2, line: 257, column: 7)
!605 = distinct !DILexicalBlock(scope: !600, file: !2, line: 256, column: 5)
!606 = !DILocation(line: 261, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !600, file: !2, line: 260, column: 5)
!608 = !DILocation(line: 263, column: 7, scope: !607)
!609 = !{i32 0, i32 21}
!610 = !DILocation(line: 265, column: 7, scope: !607)
!611 = !DILocation(line: 0, scope: !578)
!612 = !DILocation(line: 267, column: 1, scope: !565)
!613 = !DISubprogram(name: "gsl_vector_memcpy", scope: !172, file: !172, line: 136, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!614 = !DISubroutineType(types: !615)
!615 = !{!82, !170, !331}
!616 = distinct !DISubprogram(name: "gsl_linalg_QRPT_svx", scope: !2, file: !2, line: 270, type: !617, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{!82, !404, !331, !568, !170}
!619 = !{!620, !621, !622, !623}
!620 = !DILocalVariable(name: "QR", arg: 1, scope: !616, file: !2, line: 270, type: !404)
!621 = !DILocalVariable(name: "tau", arg: 2, scope: !616, file: !2, line: 271, type: !331)
!622 = !DILocalVariable(name: "p", arg: 3, scope: !616, file: !2, line: 272, type: !568)
!623 = !DILocalVariable(name: "x", arg: 4, scope: !616, file: !2, line: 273, type: !170)
!624 = !DILocation(line: 0, scope: !616)
!625 = !DILocation(line: 275, column: 11, scope: !626)
!626 = distinct !DILexicalBlock(scope: !616, file: !2, line: 275, column: 7)
!627 = !DILocation(line: 275, column: 24, scope: !626)
!628 = !DILocation(line: 275, column: 17, scope: !626)
!629 = !DILocation(line: 275, column: 7, scope: !616)
!630 = !DILocation(line: 277, column: 7, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !2, line: 277, column: 7)
!632 = distinct !DILexicalBlock(scope: !626, file: !2, line: 276, column: 5)
!633 = !DILocation(line: 279, column: 28, scope: !634)
!634 = distinct !DILexicalBlock(scope: !626, file: !2, line: 279, column: 12)
!635 = !DILocation(line: 279, column: 22, scope: !634)
!636 = !DILocation(line: 279, column: 12, scope: !626)
!637 = !DILocation(line: 281, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !2, line: 281, column: 7)
!639 = distinct !DILexicalBlock(scope: !634, file: !2, line: 280, column: 5)
!640 = !DILocation(line: 283, column: 28, scope: !641)
!641 = distinct !DILexicalBlock(scope: !634, file: !2, line: 283, column: 12)
!642 = !DILocation(line: 283, column: 22, scope: !641)
!643 = !DILocation(line: 283, column: 12, scope: !634)
!644 = !DILocation(line: 285, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !2, line: 285, column: 7)
!646 = distinct !DILexicalBlock(scope: !641, file: !2, line: 284, column: 5)
!647 = !DILocation(line: 291, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !641, file: !2, line: 288, column: 5)
!649 = !DILocation(line: 295, column: 7, scope: !648)
!650 = !DILocation(line: 297, column: 7, scope: !648)
!651 = !DILocation(line: 299, column: 7, scope: !648)
!652 = !DILocation(line: 0, scope: !626)
!653 = !DILocation(line: 301, column: 1, scope: !616)
!654 = !DISubprogram(name: "gsl_linalg_QR_QTvec", scope: !482, file: !482, line: 274, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DISubroutineType(types: !656)
!656 = !{!82, !404, !331, !170}
!657 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !466, file: !466, line: 217, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!658 = !DISubroutineType(types: !659)
!659 = !{!82, !660, !662, !663, !404, !170}
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !661, line: 45, baseType: !119)
!661 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !661, line: 44, baseType: !125)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !661, line: 46, baseType: !130)
!664 = !DISubprogram(name: "gsl_permute_vector_inverse", scope: !665, file: !665, line: 41, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!665 = !DIFile(filename: "../gsl/gsl_permute_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "05dfc9fcd9b4e47246745becff796730")
!666 = !DISubroutineType(types: !667)
!667 = !{!82, !568, !170}
!668 = distinct !DISubprogram(name: "gsl_linalg_QRPT_lssolve", scope: !2, file: !2, line: 312, type: !669, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!82, !404, !331, !568, !331, !170, !170}
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679}
!672 = !DILocalVariable(name: "QR", arg: 1, scope: !668, file: !2, line: 312, type: !404)
!673 = !DILocalVariable(name: "tau", arg: 2, scope: !668, file: !2, line: 312, type: !331)
!674 = !DILocalVariable(name: "p", arg: 3, scope: !668, file: !2, line: 312, type: !568)
!675 = !DILocalVariable(name: "b", arg: 4, scope: !668, file: !2, line: 313, type: !331)
!676 = !DILocalVariable(name: "x", arg: 5, scope: !668, file: !2, line: 313, type: !170)
!677 = !DILocalVariable(name: "residual", arg: 6, scope: !668, file: !2, line: 313, type: !170)
!678 = !DILocalVariable(name: "N", scope: !668, file: !2, line: 315, type: !196)
!679 = !DILocalVariable(name: "status", scope: !668, file: !2, line: 316, type: !82)
!680 = !DILocation(line: 0, scope: !668)
!681 = !DILocation(line: 315, column: 24, scope: !668)
!682 = !DILocation(line: 316, column: 16, scope: !668)
!683 = !DILocation(line: 317, column: 3, scope: !668)
!684 = distinct !DISubprogram(name: "gsl_linalg_QRPT_lssolve2", scope: !2, file: !2, line: 329, type: !685, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !687)
!685 = !DISubroutineType(types: !686)
!686 = !{!82, !404, !331, !568, !331, !196, !170, !170}
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !710, !711, !712}
!688 = !DILocalVariable(name: "QR", arg: 1, scope: !684, file: !2, line: 329, type: !404)
!689 = !DILocalVariable(name: "tau", arg: 2, scope: !684, file: !2, line: 329, type: !331)
!690 = !DILocalVariable(name: "p", arg: 3, scope: !684, file: !2, line: 329, type: !568)
!691 = !DILocalVariable(name: "b", arg: 4, scope: !684, file: !2, line: 330, type: !331)
!692 = !DILocalVariable(name: "rank", arg: 5, scope: !684, file: !2, line: 330, type: !196)
!693 = !DILocalVariable(name: "x", arg: 6, scope: !684, file: !2, line: 330, type: !170)
!694 = !DILocalVariable(name: "residual", arg: 7, scope: !684, file: !2, line: 330, type: !170)
!695 = !DILocalVariable(name: "M", scope: !684, file: !2, line: 332, type: !196)
!696 = !DILocalVariable(name: "N", scope: !684, file: !2, line: 333, type: !196)
!697 = !DILocalVariable(name: "R11", scope: !698, file: !2, line: 357, type: !704)
!698 = distinct !DILexicalBlock(scope: !699, file: !2, line: 356, column: 5)
!699 = distinct !DILexicalBlock(scope: !700, file: !2, line: 351, column: 12)
!700 = distinct !DILexicalBlock(scope: !701, file: !2, line: 347, column: 12)
!701 = distinct !DILexicalBlock(scope: !702, file: !2, line: 343, column: 12)
!702 = distinct !DILexicalBlock(scope: !703, file: !2, line: 339, column: 12)
!703 = distinct !DILexicalBlock(scope: !684, file: !2, line: 335, column: 7)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_const_view", file: !150, line: 64, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_const_view", file: !150, line: 62, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 59, size: 384, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !707, file: !150, line: 61, baseType: !149, size: 384)
!710 = !DILocalVariable(name: "QTb1", scope: !698, file: !2, line: 358, type: !207)
!711 = !DILocalVariable(name: "x1", scope: !698, file: !2, line: 359, type: !207)
!712 = !DILocalVariable(name: "i", scope: !698, file: !2, line: 360, type: !154)
!713 = distinct !DIAssignID()
!714 = !DILocation(line: 0, scope: !698)
!715 = distinct !DIAssignID()
!716 = distinct !DIAssignID()
!717 = !DILocation(line: 0, scope: !684)
!718 = !DILocation(line: 332, column: 24, scope: !684)
!719 = !DILocation(line: 333, column: 24, scope: !684)
!720 = !DILocation(line: 335, column: 9, scope: !703)
!721 = !DILocation(line: 335, column: 7, scope: !684)
!722 = !DILocation(line: 337, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !2, line: 337, column: 7)
!724 = distinct !DILexicalBlock(scope: !703, file: !2, line: 336, column: 5)
!725 = !DILocation(line: 339, column: 20, scope: !702)
!726 = !DILocation(line: 339, column: 14, scope: !702)
!727 = !DILocation(line: 339, column: 12, scope: !703)
!728 = !DILocation(line: 341, column: 7, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !2, line: 341, column: 7)
!730 = distinct !DILexicalBlock(scope: !702, file: !2, line: 340, column: 5)
!731 = !DILocation(line: 343, column: 22, scope: !701)
!732 = !DILocation(line: 345, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 345, column: 7)
!734 = distinct !DILexicalBlock(scope: !701, file: !2, line: 344, column: 5)
!735 = !DILocation(line: 347, column: 20, scope: !700)
!736 = !DILocation(line: 347, column: 14, scope: !700)
!737 = !DILocation(line: 347, column: 12, scope: !701)
!738 = !DILocation(line: 349, column: 7, scope: !739)
!739 = distinct !DILexicalBlock(scope: !740, file: !2, line: 349, column: 7)
!740 = distinct !DILexicalBlock(scope: !700, file: !2, line: 348, column: 5)
!741 = !DILocation(line: 351, column: 27, scope: !699)
!742 = !DILocation(line: 351, column: 14, scope: !699)
!743 = !DILocation(line: 351, column: 12, scope: !700)
!744 = !DILocation(line: 353, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !2, line: 353, column: 7)
!746 = distinct !DILexicalBlock(scope: !699, file: !2, line: 352, column: 5)
!747 = !DILocation(line: 357, column: 7, scope: !698)
!748 = !DILocation(line: 357, column: 35, scope: !698)
!749 = !DILocation(line: 358, column: 7, scope: !698)
!750 = !DILocation(line: 358, column: 30, scope: !698)
!751 = !DILocation(line: 359, column: 7, scope: !698)
!752 = !DILocation(line: 359, column: 28, scope: !698)
!753 = !DILocation(line: 363, column: 7, scope: !698)
!754 = !DILocation(line: 364, column: 7, scope: !698)
!755 = !DILocation(line: 367, column: 7, scope: !698)
!756 = !DILocation(line: 368, column: 7, scope: !698)
!757 = !DILocation(line: 371, column: 24, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !2, line: 371, column: 7)
!759 = distinct !DILexicalBlock(scope: !698, file: !2, line: 371, column: 7)
!760 = !DILocation(line: 371, column: 7, scope: !759)
!761 = !DILocation(line: 0, scope: !305, inlinedAt: !762)
!762 = distinct !DILocation(line: 372, column: 9, scope: !758)
!763 = !DILocation(line: 196, column: 13, scope: !305, inlinedAt: !762)
!764 = !DILocation(line: 196, column: 3, scope: !305, inlinedAt: !762)
!765 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !762)
!766 = !DILocation(line: 371, column: 29, scope: !758)
!767 = distinct !{!767, !768}
!768 = !{!"llvm.loop.unroll.disable"}
!769 = distinct !{!769, !760, !770, !326}
!770 = !DILocation(line: 372, column: 33, scope: !759)
!771 = !DILocation(line: 375, column: 7, scope: !698)
!772 = !DILocation(line: 378, column: 7, scope: !698)
!773 = !DILocation(line: 379, column: 7, scope: !698)
!774 = !DILocation(line: 382, column: 5, scope: !699)
!775 = !DILocation(line: 0, scope: !703)
!776 = !DILocation(line: 383, column: 1, scope: !684)
!777 = !DISubprogram(name: "gsl_matrix_const_submatrix", scope: !150, file: !150, line: 153, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!778 = !DISubroutineType(types: !779)
!779 = !{!706, !404, !196, !196, !196, !196}
!780 = !DISubprogram(name: "gsl_vector_set_zero", scope: !172, file: !172, line: 126, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !170}
!783 = !DISubprogram(name: "gsl_linalg_QR_Qvec", scope: !482, file: !482, line: 278, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!784 = distinct !DISubprogram(name: "gsl_linalg_QRPT_QRsolve", scope: !2, file: !2, line: 386, type: !785, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!82, !404, !404, !568, !331, !170}
!787 = !{!788, !789, !790, !791, !792}
!788 = !DILocalVariable(name: "Q", arg: 1, scope: !784, file: !2, line: 386, type: !404)
!789 = !DILocalVariable(name: "R", arg: 2, scope: !784, file: !2, line: 386, type: !404)
!790 = !DILocalVariable(name: "p", arg: 3, scope: !784, file: !2, line: 387, type: !568)
!791 = !DILocalVariable(name: "b", arg: 4, scope: !784, file: !2, line: 388, type: !331)
!792 = !DILocalVariable(name: "x", arg: 5, scope: !784, file: !2, line: 389, type: !170)
!793 = !DILocation(line: 0, scope: !784)
!794 = !DILocation(line: 391, column: 10, scope: !795)
!795 = distinct !DILexicalBlock(scope: !784, file: !2, line: 391, column: 7)
!796 = !DILocation(line: 391, column: 22, scope: !795)
!797 = !DILocation(line: 391, column: 16, scope: !795)
!798 = !DILocation(line: 391, column: 28, scope: !795)
!799 = !DILocation(line: 391, column: 34, scope: !795)
!800 = !DILocation(line: 391, column: 46, scope: !795)
!801 = !DILocation(line: 391, column: 40, scope: !795)
!802 = !DILocation(line: 391, column: 7, scope: !784)
!803 = !DILocation(line: 395, column: 27, scope: !804)
!804 = distinct !DILexicalBlock(scope: !795, file: !2, line: 395, column: 12)
!805 = !DILocation(line: 395, column: 21, scope: !804)
!806 = !DILocation(line: 395, column: 32, scope: !804)
!807 = !DILocation(line: 396, column: 30, scope: !804)
!808 = !DILocation(line: 396, column: 24, scope: !804)
!809 = !DILocation(line: 395, column: 12, scope: !795)
!810 = !DILocation(line: 404, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !804, file: !2, line: 401, column: 5)
!812 = !DILocation(line: 408, column: 7, scope: !811)
!813 = !DILocation(line: 412, column: 7, scope: !811)
!814 = !DILocation(line: 414, column: 7, scope: !811)
!815 = !DILocation(line: 0, scope: !795)
!816 = !DILocation(line: 416, column: 1, scope: !784)
!817 = !DISubprogram(name: "gsl_blas_dgemv", scope: !466, file: !466, line: 205, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!818 = !DISubroutineType(types: !819)
!819 = !{!82, !662, !135, !404, !331, !135, !170}
!820 = distinct !DISubprogram(name: "gsl_linalg_QRPT_Rsolve", scope: !2, file: !2, line: 419, type: !821, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !823)
!821 = !DISubroutineType(types: !822)
!822 = !{!82, !404, !568, !331, !170}
!823 = !{!824, !825, !826, !827}
!824 = !DILocalVariable(name: "QR", arg: 1, scope: !820, file: !2, line: 419, type: !404)
!825 = !DILocalVariable(name: "p", arg: 2, scope: !820, file: !2, line: 420, type: !568)
!826 = !DILocalVariable(name: "b", arg: 3, scope: !820, file: !2, line: 421, type: !331)
!827 = !DILocalVariable(name: "x", arg: 4, scope: !820, file: !2, line: 422, type: !170)
!828 = !DILocation(line: 0, scope: !820)
!829 = !DILocation(line: 424, column: 11, scope: !830)
!830 = distinct !DILexicalBlock(scope: !820, file: !2, line: 424, column: 7)
!831 = !DILocation(line: 424, column: 24, scope: !830)
!832 = !DILocation(line: 424, column: 17, scope: !830)
!833 = !DILocation(line: 424, column: 7, scope: !820)
!834 = !DILocation(line: 426, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !2, line: 426, column: 7)
!836 = distinct !DILexicalBlock(scope: !830, file: !2, line: 425, column: 5)
!837 = !DILocation(line: 428, column: 28, scope: !838)
!838 = distinct !DILexicalBlock(scope: !830, file: !2, line: 428, column: 12)
!839 = !DILocation(line: 428, column: 22, scope: !838)
!840 = !DILocation(line: 428, column: 12, scope: !830)
!841 = !DILocation(line: 430, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !2, line: 430, column: 7)
!843 = distinct !DILexicalBlock(scope: !838, file: !2, line: 429, column: 5)
!844 = !DILocation(line: 432, column: 28, scope: !845)
!845 = distinct !DILexicalBlock(scope: !838, file: !2, line: 432, column: 12)
!846 = !DILocation(line: 432, column: 22, scope: !845)
!847 = !DILocation(line: 432, column: 12, scope: !838)
!848 = !DILocation(line: 434, column: 7, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !2, line: 434, column: 7)
!850 = distinct !DILexicalBlock(scope: !845, file: !2, line: 433, column: 5)
!851 = !DILocation(line: 436, column: 15, scope: !852)
!852 = distinct !DILexicalBlock(scope: !845, file: !2, line: 436, column: 12)
!853 = !DILocation(line: 436, column: 20, scope: !852)
!854 = !DILocation(line: 436, column: 12, scope: !845)
!855 = !DILocation(line: 438, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !2, line: 438, column: 7)
!857 = distinct !DILexicalBlock(scope: !852, file: !2, line: 437, column: 5)
!858 = !DILocation(line: 444, column: 7, scope: !859)
!859 = distinct !DILexicalBlock(scope: !852, file: !2, line: 441, column: 5)
!860 = !DILocation(line: 448, column: 7, scope: !859)
!861 = !DILocation(line: 450, column: 7, scope: !859)
!862 = !DILocation(line: 452, column: 7, scope: !859)
!863 = !DILocation(line: 0, scope: !830)
!864 = !DILocation(line: 454, column: 1, scope: !820)
!865 = distinct !DISubprogram(name: "gsl_linalg_QRPT_Rsvx", scope: !2, file: !2, line: 458, type: !866, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{!82, !404, !568, !170}
!868 = !{!869, !870, !871}
!869 = !DILocalVariable(name: "QR", arg: 1, scope: !865, file: !2, line: 458, type: !404)
!870 = !DILocalVariable(name: "p", arg: 2, scope: !865, file: !2, line: 459, type: !568)
!871 = !DILocalVariable(name: "x", arg: 3, scope: !865, file: !2, line: 460, type: !170)
!872 = !DILocation(line: 0, scope: !865)
!873 = !DILocation(line: 462, column: 11, scope: !874)
!874 = distinct !DILexicalBlock(scope: !865, file: !2, line: 462, column: 7)
!875 = !DILocation(line: 462, column: 24, scope: !874)
!876 = !DILocation(line: 462, column: 17, scope: !874)
!877 = !DILocation(line: 462, column: 7, scope: !865)
!878 = !DILocation(line: 464, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !2, line: 464, column: 7)
!880 = distinct !DILexicalBlock(scope: !874, file: !2, line: 463, column: 5)
!881 = !DILocation(line: 466, column: 28, scope: !882)
!882 = distinct !DILexicalBlock(scope: !874, file: !2, line: 466, column: 12)
!883 = !DILocation(line: 466, column: 22, scope: !882)
!884 = !DILocation(line: 466, column: 12, scope: !874)
!885 = !DILocation(line: 468, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 468, column: 7)
!887 = distinct !DILexicalBlock(scope: !882, file: !2, line: 467, column: 5)
!888 = !DILocation(line: 470, column: 15, scope: !889)
!889 = distinct !DILexicalBlock(scope: !882, file: !2, line: 470, column: 12)
!890 = !DILocation(line: 470, column: 20, scope: !889)
!891 = !DILocation(line: 470, column: 12, scope: !882)
!892 = !DILocation(line: 472, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !2, line: 472, column: 7)
!894 = distinct !DILexicalBlock(scope: !889, file: !2, line: 471, column: 5)
!895 = !DILocation(line: 478, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !889, file: !2, line: 475, column: 5)
!897 = !DILocation(line: 480, column: 7, scope: !896)
!898 = !DILocation(line: 482, column: 7, scope: !896)
!899 = !DILocation(line: 0, scope: !874)
!900 = !DILocation(line: 484, column: 1, scope: !865)
!901 = distinct !DISubprogram(name: "gsl_linalg_QRPT_update", scope: !2, file: !2, line: 500, type: !902, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{!82, !148, !148, !568, !170, !331}
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !917, !918, !919, !923, !924, !925, !926, !930, !931, !932, !936, !937, !938}
!905 = !DILocalVariable(name: "Q", arg: 1, scope: !901, file: !2, line: 500, type: !148)
!906 = !DILocalVariable(name: "R", arg: 2, scope: !901, file: !2, line: 500, type: !148)
!907 = !DILocalVariable(name: "p", arg: 3, scope: !901, file: !2, line: 501, type: !568)
!908 = !DILocalVariable(name: "w", arg: 4, scope: !901, file: !2, line: 502, type: !170)
!909 = !DILocalVariable(name: "v", arg: 5, scope: !901, file: !2, line: 502, type: !331)
!910 = !DILocalVariable(name: "M", scope: !901, file: !2, line: 504, type: !196)
!911 = !DILocalVariable(name: "N", scope: !901, file: !2, line: 505, type: !196)
!912 = !DILocalVariable(name: "j", scope: !913, file: !2, line: 521, type: !154)
!913 = distinct !DILexicalBlock(scope: !914, file: !2, line: 520, column: 5)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 515, column: 12)
!915 = distinct !DILexicalBlock(scope: !916, file: !2, line: 511, column: 12)
!916 = distinct !DILexicalBlock(scope: !901, file: !2, line: 507, column: 7)
!917 = !DILocalVariable(name: "k", scope: !913, file: !2, line: 521, type: !154)
!918 = !DILocalVariable(name: "w0", scope: !913, file: !2, line: 522, type: !135)
!919 = !DILocalVariable(name: "c", scope: !920, file: !2, line: 533, type: !135)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 532, column: 9)
!921 = distinct !DILexicalBlock(scope: !922, file: !2, line: 531, column: 7)
!922 = distinct !DILexicalBlock(scope: !913, file: !2, line: 531, column: 7)
!923 = !DILocalVariable(name: "s", scope: !920, file: !2, line: 533, type: !135)
!924 = !DILocalVariable(name: "wk", scope: !920, file: !2, line: 534, type: !135)
!925 = !DILocalVariable(name: "wkm1", scope: !920, file: !2, line: 535, type: !135)
!926 = !DILocalVariable(name: "r0j", scope: !927, file: !2, line: 548, type: !135)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 547, column: 9)
!928 = distinct !DILexicalBlock(scope: !929, file: !2, line: 546, column: 7)
!929 = distinct !DILexicalBlock(scope: !913, file: !2, line: 546, column: 7)
!930 = !DILocalVariable(name: "p_j", scope: !927, file: !2, line: 549, type: !154)
!931 = !DILocalVariable(name: "vj", scope: !927, file: !2, line: 550, type: !135)
!932 = !DILocalVariable(name: "c", scope: !933, file: !2, line: 559, type: !135)
!933 = distinct !DILexicalBlock(scope: !934, file: !2, line: 558, column: 9)
!934 = distinct !DILexicalBlock(scope: !935, file: !2, line: 557, column: 6)
!935 = distinct !DILexicalBlock(scope: !913, file: !2, line: 557, column: 6)
!936 = !DILocalVariable(name: "s", scope: !933, file: !2, line: 559, type: !135)
!937 = !DILocalVariable(name: "diag", scope: !933, file: !2, line: 560, type: !135)
!938 = !DILocalVariable(name: "offdiag", scope: !933, file: !2, line: 561, type: !135)
!939 = !DILocation(line: 0, scope: !901)
!940 = !DILocation(line: 504, column: 23, scope: !901)
!941 = !DILocation(line: 505, column: 23, scope: !901)
!942 = !DILocation(line: 507, column: 10, scope: !916)
!943 = !DILocation(line: 507, column: 16, scope: !916)
!944 = !DILocation(line: 507, column: 21, scope: !916)
!945 = !DILocation(line: 507, column: 27, scope: !916)
!946 = !DILocation(line: 507, column: 33, scope: !916)
!947 = !DILocation(line: 507, column: 7, scope: !901)
!948 = !DILocation(line: 509, column: 7, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !2, line: 509, column: 7)
!950 = distinct !DILexicalBlock(scope: !916, file: !2, line: 508, column: 5)
!951 = !DILocation(line: 511, column: 15, scope: !915)
!952 = !DILocation(line: 511, column: 20, scope: !915)
!953 = !DILocation(line: 511, column: 12, scope: !916)
!954 = !DILocation(line: 513, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !2, line: 513, column: 7)
!956 = distinct !DILexicalBlock(scope: !915, file: !2, line: 512, column: 5)
!957 = !DILocation(line: 515, column: 15, scope: !914)
!958 = !DILocation(line: 515, column: 20, scope: !914)
!959 = !DILocation(line: 515, column: 12, scope: !915)
!960 = !DILocation(line: 531, scope: !922)
!961 = !DILocation(line: 0, scope: !913)
!962 = !DILocation(line: 531, column: 25, scope: !921)
!963 = !DILocation(line: 531, column: 7, scope: !922)
!964 = !DILocation(line: 517, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !2, line: 517, column: 7)
!966 = distinct !DILexicalBlock(scope: !914, file: !2, line: 516, column: 5)
!967 = !DILocation(line: 0, scope: !328, inlinedAt: !968)
!968 = distinct !DILocation(line: 534, column: 23, scope: !920)
!969 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !968)
!970 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !968)
!971 = !DILocation(line: 0, scope: !920)
!972 = !DILocation(line: 535, column: 46, scope: !920)
!973 = !DILocation(line: 0, scope: !328, inlinedAt: !974)
!974 = distinct !DILocation(line: 535, column: 25, scope: !920)
!975 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !974)
!976 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !974)
!977 = !DILocalVariable(name: "a", arg: 1, scope: !978, file: !482, line: 740, type: !981)
!978 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !482, file: !482, line: 740, type: !979, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !982)
!979 = !DISubroutineType(types: !980)
!980 = !{null, !981, !981, !160, !160}
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!982 = !{!977, !983, !984, !985, !986, !990, !991, !993}
!983 = !DILocalVariable(name: "b", arg: 2, scope: !978, file: !482, line: 740, type: !981)
!984 = !DILocalVariable(name: "c", arg: 3, scope: !978, file: !482, line: 740, type: !160)
!985 = !DILocalVariable(name: "s", arg: 4, scope: !978, file: !482, line: 740, type: !160)
!986 = !DILocalVariable(name: "t", scope: !987, file: !482, line: 749, type: !135)
!987 = distinct !DILexicalBlock(scope: !988, file: !482, line: 748, column: 5)
!988 = distinct !DILexicalBlock(scope: !989, file: !482, line: 747, column: 12)
!989 = distinct !DILexicalBlock(scope: !978, file: !482, line: 742, column: 7)
!990 = !DILocalVariable(name: "s1", scope: !987, file: !482, line: 750, type: !135)
!991 = !DILocalVariable(name: "t", scope: !992, file: !482, line: 756, type: !135)
!992 = distinct !DILexicalBlock(scope: !988, file: !482, line: 755, column: 5)
!993 = !DILocalVariable(name: "c1", scope: !992, file: !482, line: 757, type: !135)
!994 = !DILocation(line: 0, scope: !978, inlinedAt: !995)
!995 = distinct !DILocation(line: 537, column: 11, scope: !920)
!996 = !DILocation(line: 742, column: 9, scope: !989, inlinedAt: !995)
!997 = !DILocation(line: 742, column: 7, scope: !978, inlinedAt: !995)
!998 = !DILocation(line: 747, column: 12, scope: !988, inlinedAt: !995)
!999 = !DILocation(line: 747, column: 23, scope: !988, inlinedAt: !995)
!1000 = !DILocation(line: 747, column: 21, scope: !988, inlinedAt: !995)
!1001 = !DILocation(line: 747, column: 12, scope: !989, inlinedAt: !995)
!1002 = !DILocation(line: 749, column: 18, scope: !987, inlinedAt: !995)
!1003 = !DILocation(line: 749, column: 21, scope: !987, inlinedAt: !995)
!1004 = !DILocation(line: 0, scope: !987, inlinedAt: !995)
!1005 = !DILocation(line: 750, column: 37, scope: !987, inlinedAt: !995)
!1006 = !DILocation(line: 750, column: 33, scope: !987, inlinedAt: !995)
!1007 = !DILocation(line: 750, column: 25, scope: !987, inlinedAt: !995)
!1008 = !DILocation(line: 750, column: 23, scope: !987, inlinedAt: !995)
!1009 = !DILocation(line: 752, column: 15, scope: !987, inlinedAt: !995)
!1010 = !DILocation(line: 753, column: 5, scope: !987, inlinedAt: !995)
!1011 = !DILocation(line: 756, column: 18, scope: !992, inlinedAt: !995)
!1012 = !DILocation(line: 756, column: 21, scope: !992, inlinedAt: !995)
!1013 = !DILocation(line: 0, scope: !992, inlinedAt: !995)
!1014 = !DILocation(line: 757, column: 37, scope: !992, inlinedAt: !995)
!1015 = !DILocation(line: 757, column: 33, scope: !992, inlinedAt: !995)
!1016 = !DILocation(line: 757, column: 25, scope: !992, inlinedAt: !995)
!1017 = !DILocation(line: 757, column: 23, scope: !992, inlinedAt: !995)
!1018 = !DILocation(line: 759, column: 15, scope: !992, inlinedAt: !995)
!1019 = !DILocation(line: 0, scope: !989, inlinedAt: !995)
!1020 = !DILocalVariable(name: "v", arg: 1, scope: !1021, file: !482, line: 765, type: !170)
!1021 = distinct !DISubprogram(name: "gsl_linalg_givens_gv", scope: !482, file: !482, line: 765, type: !1022, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1024)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !170, !196, !196, !981, !981}
!1024 = !{!1020, !1025, !1026, !1027, !1028, !1029, !1030}
!1025 = !DILocalVariable(name: "i", arg: 2, scope: !1021, file: !482, line: 765, type: !196)
!1026 = !DILocalVariable(name: "j", arg: 3, scope: !1021, file: !482, line: 765, type: !196)
!1027 = !DILocalVariable(name: "c", arg: 4, scope: !1021, file: !482, line: 766, type: !981)
!1028 = !DILocalVariable(name: "s", arg: 5, scope: !1021, file: !482, line: 766, type: !981)
!1029 = !DILocalVariable(name: "vi", scope: !1021, file: !482, line: 770, type: !135)
!1030 = !DILocalVariable(name: "vj", scope: !1021, file: !482, line: 771, type: !135)
!1031 = !DILocation(line: 0, scope: !1021, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 538, column: 11, scope: !920)
!1033 = !DILocation(line: 0, scope: !328, inlinedAt: !1034)
!1034 = distinct !DILocation(line: 770, column: 15, scope: !1021, inlinedAt: !1032)
!1035 = !DILocation(line: 0, scope: !328, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 771, column: 15, scope: !1021, inlinedAt: !1032)
!1037 = !DILocation(line: 772, column: 27, scope: !1021, inlinedAt: !1032)
!1038 = !DILocation(line: 772, column: 36, scope: !1021, inlinedAt: !1032)
!1039 = !DILocation(line: 772, column: 32, scope: !1021, inlinedAt: !1032)
!1040 = !DILocation(line: 0, scope: !305, inlinedAt: !1041)
!1041 = distinct !DILocation(line: 772, column: 3, scope: !1021, inlinedAt: !1032)
!1042 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !1041)
!1043 = !DILocation(line: 773, column: 27, scope: !1021, inlinedAt: !1032)
!1044 = !DILocation(line: 773, column: 36, scope: !1021, inlinedAt: !1032)
!1045 = !DILocation(line: 773, column: 32, scope: !1021, inlinedAt: !1032)
!1046 = !DILocation(line: 0, scope: !305, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 773, column: 3, scope: !1021, inlinedAt: !1032)
!1048 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !1047)
!1049 = !DILocalVariable(name: "M", arg: 1, scope: !1050, file: !1051, line: 22, type: !154)
!1050 = distinct !DISubprogram(name: "apply_givens_qr", scope: !1051, file: !1051, line: 22, type: !1052, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1054)
!1051 = !DIFile(filename: "./apply_givens.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1430c6da1968c27d96b974d1078e7cb2")
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !154, !154, !148, !148, !154, !154, !135, !135}
!1054 = !{!1049, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1067, !1068, !1072}
!1055 = !DILocalVariable(name: "N", arg: 2, scope: !1050, file: !1051, line: 22, type: !154)
!1056 = !DILocalVariable(name: "Q", arg: 3, scope: !1050, file: !1051, line: 22, type: !148)
!1057 = !DILocalVariable(name: "R", arg: 4, scope: !1050, file: !1051, line: 22, type: !148)
!1058 = !DILocalVariable(name: "i", arg: 5, scope: !1050, file: !1051, line: 23, type: !154)
!1059 = !DILocalVariable(name: "j", arg: 6, scope: !1050, file: !1051, line: 23, type: !154)
!1060 = !DILocalVariable(name: "c", arg: 7, scope: !1050, file: !1051, line: 23, type: !135)
!1061 = !DILocalVariable(name: "s", arg: 8, scope: !1050, file: !1051, line: 23, type: !135)
!1062 = !DILocalVariable(name: "k", scope: !1050, file: !1051, line: 25, type: !154)
!1063 = !DILocalVariable(name: "qki", scope: !1064, file: !1051, line: 39, type: !135)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !1051, line: 38, column: 5)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !1051, line: 37, column: 3)
!1066 = distinct !DILexicalBlock(scope: !1050, file: !1051, line: 37, column: 3)
!1067 = !DILocalVariable(name: "qkj", scope: !1064, file: !1051, line: 40, type: !135)
!1068 = !DILocalVariable(name: "rik", scope: !1069, file: !1051, line: 60, type: !135)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !1051, line: 59, column: 5)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !1051, line: 58, column: 3)
!1071 = distinct !DILexicalBlock(scope: !1050, file: !1051, line: 58, column: 3)
!1072 = !DILocalVariable(name: "rjk", scope: !1069, file: !1051, line: 61, type: !135)
!1073 = !DILocation(line: 0, scope: !1050, inlinedAt: !1074)
!1074 = distinct !DILocation(line: 539, column: 11, scope: !920)
!1075 = !DILocation(line: 37, column: 3, scope: !1066, inlinedAt: !1074)
!1076 = !DILocation(line: 0, scope: !401, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 39, column: 20, scope: !1064, inlinedAt: !1074)
!1078 = !DILocation(line: 285, column: 20, scope: !401, inlinedAt: !1077)
!1079 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1077)
!1080 = !DILocation(line: 0, scope: !1064, inlinedAt: !1074)
!1081 = !DILocation(line: 0, scope: !401, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 40, column: 20, scope: !1064, inlinedAt: !1074)
!1083 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1082)
!1084 = !DILocation(line: 41, column: 36, scope: !1064, inlinedAt: !1074)
!1085 = !DILocation(line: 41, column: 46, scope: !1064, inlinedAt: !1074)
!1086 = !DILocation(line: 41, column: 40, scope: !1064, inlinedAt: !1074)
!1087 = !DILocalVariable(name: "m", arg: 1, scope: !1088, file: !150, line: 290, type: !148)
!1088 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !150, file: !150, line: 290, type: !1089, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !148, !196, !196, !981}
!1091 = !{!1087, !1092, !1093, !1094}
!1092 = !DILocalVariable(name: "i", arg: 2, scope: !1088, file: !150, line: 290, type: !196)
!1093 = !DILocalVariable(name: "j", arg: 3, scope: !1088, file: !150, line: 290, type: !196)
!1094 = !DILocalVariable(name: "x", arg: 4, scope: !1088, file: !150, line: 290, type: !981)
!1095 = !DILocation(line: 0, scope: !1088, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 41, column: 7, scope: !1064, inlinedAt: !1074)
!1097 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1096)
!1098 = !DILocation(line: 42, column: 36, scope: !1064, inlinedAt: !1074)
!1099 = !DILocation(line: 42, column: 46, scope: !1064, inlinedAt: !1074)
!1100 = !DILocation(line: 42, column: 40, scope: !1064, inlinedAt: !1074)
!1101 = !DILocation(line: 0, scope: !1088, inlinedAt: !1102)
!1102 = distinct !DILocation(line: 42, column: 7, scope: !1064, inlinedAt: !1074)
!1103 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1102)
!1104 = !DILocation(line: 37, column: 23, scope: !1065, inlinedAt: !1074)
!1105 = !DILocation(line: 37, column: 17, scope: !1065, inlinedAt: !1074)
!1106 = distinct !{!1106, !1075, !1107, !326}
!1107 = !DILocation(line: 43, column: 5, scope: !1066, inlinedAt: !1074)
!1108 = !DILocation(line: 58, column: 12, scope: !1071, inlinedAt: !1074)
!1109 = !DILocation(line: 58, column: 30, scope: !1070, inlinedAt: !1074)
!1110 = !DILocation(line: 58, column: 3, scope: !1071, inlinedAt: !1074)
!1111 = !DILocation(line: 0, scope: !401, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 60, column: 20, scope: !1069, inlinedAt: !1074)
!1113 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1112)
!1114 = !DILocation(line: 0, scope: !1069, inlinedAt: !1074)
!1115 = !DILocation(line: 0, scope: !401, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 61, column: 20, scope: !1069, inlinedAt: !1074)
!1117 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1116)
!1118 = !DILocation(line: 62, column: 34, scope: !1069, inlinedAt: !1074)
!1119 = !DILocation(line: 62, column: 44, scope: !1069, inlinedAt: !1074)
!1120 = !DILocation(line: 62, column: 40, scope: !1069, inlinedAt: !1074)
!1121 = !DILocation(line: 0, scope: !1088, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 62, column: 7, scope: !1069, inlinedAt: !1074)
!1123 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1122)
!1124 = !DILocation(line: 63, column: 34, scope: !1069, inlinedAt: !1074)
!1125 = !DILocation(line: 63, column: 44, scope: !1069, inlinedAt: !1074)
!1126 = !DILocation(line: 63, column: 40, scope: !1069, inlinedAt: !1074)
!1127 = !DILocation(line: 0, scope: !1088, inlinedAt: !1128)
!1128 = distinct !DILocation(line: 63, column: 7, scope: !1069, inlinedAt: !1074)
!1129 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1128)
!1130 = !DILocation(line: 58, column: 36, scope: !1070, inlinedAt: !1074)
!1131 = distinct !{!1131, !1110, !1132, !326}
!1132 = !DILocation(line: 64, column: 5, scope: !1071, inlinedAt: !1074)
!1133 = distinct !{!1133, !963, !1134, !326}
!1134 = !DILocation(line: 540, column: 9, scope: !922)
!1135 = !DILocation(line: 0, scope: !328, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 542, column: 12, scope: !913)
!1137 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !1136)
!1138 = !DILocation(line: 546, column: 21, scope: !928)
!1139 = !DILocation(line: 546, column: 7, scope: !929)
!1140 = !{!281, !266, i64 8}
!1141 = !DILocation(line: 0, scope: !401, inlinedAt: !1142)
!1142 = distinct !DILocation(line: 548, column: 24, scope: !927)
!1143 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1142)
!1144 = !DILocation(line: 0, scope: !927)
!1145 = !DILocalVariable(name: "p", arg: 1, scope: !1146, file: !182, line: 85, type: !568)
!1146 = distinct !DISubprogram(name: "gsl_permutation_get", scope: !182, file: !182, line: 85, type: !1147, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1149)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!154, !568, !196}
!1149 = !{!1145, !1150}
!1150 = !DILocalVariable(name: "i", arg: 2, scope: !1146, file: !182, line: 85, type: !196)
!1151 = !DILocation(line: 0, scope: !1146, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 549, column: 24, scope: !927)
!1153 = !DILocation(line: 93, column: 10, scope: !1146, inlinedAt: !1152)
!1154 = !{!263, !263, i64 0}
!1155 = !DILocation(line: 0, scope: !328, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 550, column: 23, scope: !927)
!1157 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !1156)
!1158 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !1156)
!1159 = !DILocation(line: 551, column: 45, scope: !927)
!1160 = !DILocation(line: 551, column: 40, scope: !927)
!1161 = !DILocation(line: 0, scope: !1088, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 551, column: 11, scope: !927)
!1163 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1162)
!1164 = !DILocation(line: 557, column: 20, scope: !934)
!1165 = !DILocation(line: 557, column: 6, scope: !935)
!1166 = !DILocation(line: 546, column: 27, scope: !928)
!1167 = distinct !{!1167, !1139, !1168, !326}
!1168 = !DILocation(line: 552, column: 9, scope: !929)
!1169 = !DILocation(line: 560, column: 46, scope: !933)
!1170 = !DILocation(line: 0, scope: !401, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 560, column: 25, scope: !933)
!1172 = !DILocation(line: 285, column: 20, scope: !401, inlinedAt: !1171)
!1173 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1171)
!1174 = !DILocation(line: 0, scope: !933)
!1175 = !DILocation(line: 0, scope: !401, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 561, column: 28, scope: !933)
!1177 = !DILocation(line: 285, column: 20, scope: !401, inlinedAt: !1176)
!1178 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1176)
!1179 = !DILocation(line: 0, scope: !978, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 563, column: 11, scope: !933)
!1181 = !DILocation(line: 742, column: 9, scope: !989, inlinedAt: !1180)
!1182 = !DILocation(line: 742, column: 7, scope: !978, inlinedAt: !1180)
!1183 = !DILocation(line: 747, column: 12, scope: !988, inlinedAt: !1180)
!1184 = !DILocation(line: 747, column: 23, scope: !988, inlinedAt: !1180)
!1185 = !DILocation(line: 747, column: 21, scope: !988, inlinedAt: !1180)
!1186 = !DILocation(line: 747, column: 12, scope: !989, inlinedAt: !1180)
!1187 = !DILocation(line: 749, column: 18, scope: !987, inlinedAt: !1180)
!1188 = !DILocation(line: 749, column: 21, scope: !987, inlinedAt: !1180)
!1189 = !DILocation(line: 0, scope: !987, inlinedAt: !1180)
!1190 = !DILocation(line: 750, column: 37, scope: !987, inlinedAt: !1180)
!1191 = !DILocation(line: 750, column: 33, scope: !987, inlinedAt: !1180)
!1192 = !DILocation(line: 750, column: 25, scope: !987, inlinedAt: !1180)
!1193 = !DILocation(line: 750, column: 23, scope: !987, inlinedAt: !1180)
!1194 = !DILocation(line: 752, column: 15, scope: !987, inlinedAt: !1180)
!1195 = !DILocation(line: 753, column: 5, scope: !987, inlinedAt: !1180)
!1196 = !DILocation(line: 756, column: 18, scope: !992, inlinedAt: !1180)
!1197 = !DILocation(line: 756, column: 21, scope: !992, inlinedAt: !1180)
!1198 = !DILocation(line: 0, scope: !992, inlinedAt: !1180)
!1199 = !DILocation(line: 757, column: 37, scope: !992, inlinedAt: !1180)
!1200 = !DILocation(line: 757, column: 33, scope: !992, inlinedAt: !1180)
!1201 = !DILocation(line: 757, column: 25, scope: !992, inlinedAt: !1180)
!1202 = !DILocation(line: 757, column: 23, scope: !992, inlinedAt: !1180)
!1203 = !DILocation(line: 759, column: 15, scope: !992, inlinedAt: !1180)
!1204 = !DILocation(line: 0, scope: !989, inlinedAt: !1180)
!1205 = !DILocation(line: 0, scope: !1050, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 564, column: 11, scope: !933)
!1207 = !DILocation(line: 37, column: 3, scope: !1066, inlinedAt: !1206)
!1208 = !DILocation(line: 0, scope: !401, inlinedAt: !1209)
!1209 = distinct !DILocation(line: 39, column: 20, scope: !1064, inlinedAt: !1206)
!1210 = !DILocation(line: 285, column: 20, scope: !401, inlinedAt: !1209)
!1211 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1209)
!1212 = !DILocation(line: 0, scope: !1064, inlinedAt: !1206)
!1213 = !DILocation(line: 0, scope: !401, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 40, column: 20, scope: !1064, inlinedAt: !1206)
!1215 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1214)
!1216 = !DILocation(line: 41, column: 36, scope: !1064, inlinedAt: !1206)
!1217 = !DILocation(line: 41, column: 46, scope: !1064, inlinedAt: !1206)
!1218 = !DILocation(line: 41, column: 40, scope: !1064, inlinedAt: !1206)
!1219 = !DILocation(line: 0, scope: !1088, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 41, column: 7, scope: !1064, inlinedAt: !1206)
!1221 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1220)
!1222 = !DILocation(line: 42, column: 36, scope: !1064, inlinedAt: !1206)
!1223 = !DILocation(line: 42, column: 46, scope: !1064, inlinedAt: !1206)
!1224 = !DILocation(line: 42, column: 40, scope: !1064, inlinedAt: !1206)
!1225 = !DILocation(line: 0, scope: !1088, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 42, column: 7, scope: !1064, inlinedAt: !1206)
!1227 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1226)
!1228 = !DILocation(line: 37, column: 23, scope: !1065, inlinedAt: !1206)
!1229 = !DILocation(line: 37, column: 17, scope: !1065, inlinedAt: !1206)
!1230 = distinct !{!1230, !1207, !1231, !326}
!1231 = !DILocation(line: 43, column: 5, scope: !1066, inlinedAt: !1206)
!1232 = !DILocation(line: 58, column: 12, scope: !1071, inlinedAt: !1206)
!1233 = !DILocation(line: 58, column: 30, scope: !1070, inlinedAt: !1206)
!1234 = !DILocation(line: 58, column: 3, scope: !1071, inlinedAt: !1206)
!1235 = !DILocation(line: 0, scope: !401, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 60, column: 20, scope: !1069, inlinedAt: !1206)
!1237 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1236)
!1238 = !DILocation(line: 0, scope: !1069, inlinedAt: !1206)
!1239 = !DILocation(line: 0, scope: !401, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 61, column: 20, scope: !1069, inlinedAt: !1206)
!1241 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1240)
!1242 = !DILocation(line: 62, column: 34, scope: !1069, inlinedAt: !1206)
!1243 = !DILocation(line: 62, column: 44, scope: !1069, inlinedAt: !1206)
!1244 = !DILocation(line: 62, column: 40, scope: !1069, inlinedAt: !1206)
!1245 = !DILocation(line: 0, scope: !1088, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 62, column: 7, scope: !1069, inlinedAt: !1206)
!1247 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1246)
!1248 = !DILocation(line: 63, column: 34, scope: !1069, inlinedAt: !1206)
!1249 = !DILocation(line: 63, column: 44, scope: !1069, inlinedAt: !1206)
!1250 = !DILocation(line: 63, column: 40, scope: !1069, inlinedAt: !1206)
!1251 = !DILocation(line: 0, scope: !1088, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 63, column: 7, scope: !1069, inlinedAt: !1206)
!1253 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1252)
!1254 = !DILocation(line: 58, column: 36, scope: !1070, inlinedAt: !1206)
!1255 = distinct !{!1255, !1234, !1256, !326}
!1256 = !DILocation(line: 64, column: 5, scope: !1071, inlinedAt: !1206)
!1257 = !DILocation(line: 0, scope: !1088, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 566, column: 11, scope: !933)
!1259 = !DILocation(line: 305, column: 27, scope: !1088, inlinedAt: !1258)
!1260 = !DILocation(line: 557, column: 39, scope: !934)
!1261 = distinct !{!1261, !1165, !1262, !326}
!1262 = !DILocation(line: 567, column: 9, scope: !935)
!1263 = !DILocation(line: 0, scope: !916)
!1264 = !DILocation(line: 571, column: 1, scope: !901)
!1265 = distinct !DISubprogram(name: "gsl_linalg_QRPT_rank", scope: !2, file: !2, line: 586, type: !1266, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1268)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!154, !404, !981}
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1280, !1281, !1282, !1283, !1286, !1287, !1288, !1289}
!1269 = !DILocalVariable(name: "QR", arg: 1, scope: !1265, file: !2, line: 586, type: !404)
!1270 = !DILocalVariable(name: "tol", arg: 2, scope: !1265, file: !2, line: 586, type: !981)
!1271 = !DILocalVariable(name: "M", scope: !1265, file: !2, line: 588, type: !196)
!1272 = !DILocalVariable(name: "N", scope: !1265, file: !2, line: 589, type: !196)
!1273 = !DILocalVariable(name: "diag", scope: !1265, file: !2, line: 590, type: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !172, line: 64, baseType: !1275)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !172, line: 62, baseType: !1277)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 59, size: 320, elements: !1278)
!1278 = !{!1279}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1277, file: !172, line: 61, baseType: !171, size: 320)
!1280 = !DILocalVariable(name: "eps", scope: !1265, file: !2, line: 591, type: !135)
!1281 = !DILocalVariable(name: "i", scope: !1265, file: !2, line: 592, type: !154)
!1282 = !DILocalVariable(name: "r", scope: !1265, file: !2, line: 593, type: !154)
!1283 = !DILocalVariable(name: "min", scope: !1284, file: !2, line: 597, type: !135)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 596, column: 5)
!1285 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 595, column: 7)
!1286 = !DILocalVariable(name: "max", scope: !1284, file: !2, line: 597, type: !135)
!1287 = !DILocalVariable(name: "absmax", scope: !1284, file: !2, line: 597, type: !135)
!1288 = !DILocalVariable(name: "ee", scope: !1284, file: !2, line: 598, type: !82)
!1289 = !DILocalVariable(name: "di", scope: !1290, file: !2, line: 612, type: !135)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 611, column: 5)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !2, line: 610, column: 3)
!1292 = distinct !DILexicalBlock(scope: !1265, file: !2, line: 610, column: 3)
!1293 = distinct !DIAssignID()
!1294 = !DILocation(line: 0, scope: !1265)
!1295 = distinct !DIAssignID()
!1296 = !DILocation(line: 0, scope: !1284)
!1297 = distinct !DIAssignID()
!1298 = !DILocation(line: 588, column: 24, scope: !1265)
!1299 = !DILocation(line: 589, column: 24, scope: !1265)
!1300 = !DILocation(line: 590, column: 3, scope: !1265)
!1301 = !DILocation(line: 590, column: 32, scope: !1265)
!1302 = !DILocation(line: 595, column: 11, scope: !1285)
!1303 = !DILocation(line: 595, column: 7, scope: !1265)
!1304 = !DILocation(line: 597, column: 7, scope: !1284)
!1305 = !DILocation(line: 600, column: 7, scope: !1284)
!1306 = !DILocation(line: 601, column: 16, scope: !1284)
!1307 = !DILocation(line: 602, column: 19, scope: !1284)
!1308 = !DILocation(line: 602, column: 31, scope: !1284)
!1309 = !DILocation(line: 602, column: 12, scope: !1284)
!1310 = !DILocation(line: 604, column: 23, scope: !1284)
!1311 = !DILocation(line: 604, column: 20, scope: !1284)
!1312 = !DILocation(line: 604, column: 18, scope: !1284)
!1313 = !DILocation(line: 604, column: 30, scope: !1284)
!1314 = !DILocation(line: 604, column: 28, scope: !1284)
!1315 = !DILocation(line: 604, column: 52, scope: !1284)
!1316 = !DILocation(line: 605, column: 5, scope: !1285)
!1317 = !DILocation(line: 605, column: 5, scope: !1284)
!1318 = !DILocation(line: 0, scope: !1285)
!1319 = !DILocation(line: 610, column: 17, scope: !1291)
!1320 = !DILocation(line: 610, column: 3, scope: !1292)
!1321 = !DILocation(line: 0, scope: !328, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 612, column: 19, scope: !1290)
!1323 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !1322)
!1324 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !1322)
!1325 = !DILocation(line: 0, scope: !1290)
!1326 = !DILocation(line: 613, column: 11, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 613, column: 11)
!1328 = !DILocation(line: 613, column: 20, scope: !1327)
!1329 = !DILocation(line: 613, column: 11, scope: !1290)
!1330 = !DILocation(line: 610, column: 34, scope: !1291)
!1331 = distinct !{!1331, !1320, !1332, !326}
!1332 = !DILocation(line: 615, column: 5, scope: !1292)
!1333 = !DILocation(line: 618, column: 1, scope: !1265)
!1334 = !DILocation(line: 617, column: 3, scope: !1265)
!1335 = !DISubprogram(name: "gsl_matrix_const_diagonal", scope: !150, file: !150, line: 166, type: !1336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!1276, !404}
!1338 = !DISubprogram(name: "gsl_vector_minmax", scope: !172, file: !172, line: 145, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !331, !160, !160}
!1341 = !DISubprogram(name: "log", scope: !492, file: !492, line: 104, type: !493, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1342 = distinct !DISubprogram(name: "gsl_linalg_QRPT_rcond", scope: !2, file: !2, line: 621, type: !1343, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1345)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!82, !404, !160, !170}
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1355}
!1346 = !DILocalVariable(name: "QR", arg: 1, scope: !1342, file: !2, line: 621, type: !404)
!1347 = !DILocalVariable(name: "rcond", arg: 2, scope: !1342, file: !2, line: 621, type: !160)
!1348 = !DILocalVariable(name: "work", arg: 3, scope: !1342, file: !2, line: 621, type: !170)
!1349 = !DILocalVariable(name: "M", scope: !1342, file: !2, line: 623, type: !196)
!1350 = !DILocalVariable(name: "N", scope: !1342, file: !2, line: 624, type: !196)
!1351 = !DILocalVariable(name: "R", scope: !1352, file: !2, line: 636, type: !704)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 635, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 630, column: 12)
!1354 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 626, column: 7)
!1355 = !DILocalVariable(name: "status", scope: !1352, file: !2, line: 637, type: !82)
!1356 = distinct !DIAssignID()
!1357 = !DILocation(line: 0, scope: !1352)
!1358 = !DILocation(line: 0, scope: !1342)
!1359 = !DILocation(line: 623, column: 24, scope: !1342)
!1360 = !DILocation(line: 624, column: 24, scope: !1342)
!1361 = !DILocation(line: 626, column: 9, scope: !1354)
!1362 = !DILocation(line: 626, column: 7, scope: !1342)
!1363 = !DILocation(line: 628, column: 7, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !2, line: 628, column: 7)
!1365 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 627, column: 5)
!1366 = !DILocation(line: 630, column: 18, scope: !1353)
!1367 = !DILocation(line: 630, column: 28, scope: !1353)
!1368 = !DILocation(line: 630, column: 23, scope: !1353)
!1369 = !DILocation(line: 630, column: 12, scope: !1354)
!1370 = !DILocation(line: 632, column: 7, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !2, line: 632, column: 7)
!1372 = distinct !DILexicalBlock(scope: !1353, file: !2, line: 631, column: 5)
!1373 = !DILocation(line: 636, column: 7, scope: !1352)
!1374 = !DILocation(line: 636, column: 33, scope: !1352)
!1375 = !DILocation(line: 639, column: 16, scope: !1352)
!1376 = !DILocation(line: 642, column: 5, scope: !1353)
!1377 = !DILocation(line: 0, scope: !1354)
!1378 = !DILocation(line: 643, column: 1, scope: !1342)
!1379 = !DISubprogram(name: "gsl_linalg_tri_upper_rcond", scope: !482, file: !482, line: 715, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
