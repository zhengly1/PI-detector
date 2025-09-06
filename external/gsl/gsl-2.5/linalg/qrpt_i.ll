; ModuleID = 'qrpt.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 75, i32 noundef 19) #6, !dbg !276
  br label %139, !dbg !276

19:                                               ; preds = %5
  %20 = load i64, ptr %2, align 8, !dbg !279, !tbaa !280
  %21 = icmp eq i64 %20, %14, !dbg !282
  br i1 %21, label %23, label %22, !dbg !283

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 79, i32 noundef 19) #6, !dbg !284
  br label %139, !dbg !284

23:                                               ; preds = %19
  %24 = load i64, ptr %4, align 8, !dbg !287, !tbaa !271
  %25 = icmp eq i64 %24, %14, !dbg !288
  br i1 %25, label %27, label %26, !dbg !289

26:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 19) #6, !dbg !290
  br label %139, !dbg !290

27:                                               ; preds = %23
  store i32 1, ptr %3, align 4, !dbg !293, !tbaa !294
  tail call void @gsl_permutation_init(ptr noundef nonnull %2) #6, !dbg !295
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
  br i1 %33, label %139, label %34, !dbg !300

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %37 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %38 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %39 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %50, !dbg !300

41:                                               ; preds = %41, %29
  %42 = phi i64 [ 0, %29 ], [ %48, %41 ]
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !198, metadata !DIExpression()), !dbg !296
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !301
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %42) #6, !dbg !302
  %43 = call double @gsl_blas_dnrm2(ptr noundef nonnull %6) #6, !dbg !303
  tail call void @llvm.dbg.value(metadata double %43, metadata !212, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !304, metadata !DIExpression()), !dbg !311
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !309, metadata !DIExpression()), !dbg !311
  tail call void @llvm.dbg.value(metadata double %43, metadata !310, metadata !DIExpression()), !dbg !311
  %44 = load ptr, ptr %30, align 8, !dbg !313, !tbaa !314
  %45 = load i64, ptr %31, align 8, !dbg !315, !tbaa !316
  %46 = mul i64 %45, %42, !dbg !317
  %47 = getelementptr inbounds double, ptr %44, i64 %46, !dbg !318
  store double %43, ptr %47, align 8, !dbg !319, !tbaa !320
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !322
  %48 = add nuw i64 %42, 1, !dbg !323
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !198, metadata !DIExpression()), !dbg !296
  %49 = icmp eq i64 %48, %14, !dbg !297
  br i1 %49, label %32, label %41, !dbg !298, !llvm.loop !324

50:                                               ; preds = %137, %34
  %51 = phi i64 [ 0, %34 ], [ %54, %137 ]
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

60:                                               ; preds = %60, %56
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
  %75 = call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %0, i64 noundef %51, i64 noundef %68) #6, !dbg !359
  %76 = call i32 @gsl_permutation_swap(ptr noundef nonnull %2, i64 noundef %51, i64 noundef %68) #6, !dbg !361
  %77 = call i32 @gsl_vector_swap_elements(ptr noundef nonnull %4, i64 noundef %51, i64 noundef %68) #6, !dbg !362
  %78 = load i32, ptr %3, align 4, !dbg !363, !tbaa !294
  %79 = sub nsw i32 0, %78, !dbg !364
  store i32 %79, ptr %3, align 4, !dbg !365, !tbaa !294
  br label %80, !dbg !366

80:                                               ; preds = %74, %72, %50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6, !dbg !367
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %51) #6, !dbg !368
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #6, !dbg !369
  %81 = sub i64 %12, %51, !dbg !370
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %7, i64 noundef %51, i64 noundef %81) #6, !dbg !371
  %82 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %8) #6, !dbg !372
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
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #6, !dbg !381
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !381
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !217, metadata !DIExpression()), !dbg !339
  br label %137, !dbg !382

88:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #6, !dbg !383
  %89 = sub i64 %14, %54, !dbg !384
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef %51, i64 noundef %54, i64 noundef %81, i64 noundef %89) #6, !dbg !385
  %90 = call i32 @gsl_linalg_householder_hm(double noundef %82, ptr noundef nonnull %8, ptr noundef nonnull %9) #6, !dbg !386
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #6, !dbg !387
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #6, !dbg !381
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !381
  %91 = icmp ult i64 %54, %12, !dbg !388
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !217, metadata !DIExpression()), !dbg !339
  %92 = and i1 %91, %55, !dbg !382
  br i1 %92, label %93, label %137, !dbg !382

93:                                               ; preds = %88
  %94 = sub i64 %12, %54
  %95 = load ptr, ptr %35, align 8, !dbg !389, !tbaa !314
  %96 = load i64, ptr %36, align 8, !dbg !391, !tbaa !316
  br label %97, !dbg !392

97:                                               ; preds = %132, %93
  %98 = phi i64 [ %96, %93 ], [ %133, %132 ], !dbg !391
  %99 = phi ptr [ %95, %93 ], [ %134, %132 ], !dbg !389
  %100 = phi i64 [ %54, %93 ], [ %135, %132 ]
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !217, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !393
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !334, metadata !DIExpression()), !dbg !393
  %101 = mul i64 %98, %100, !dbg !394
  %102 = getelementptr inbounds double, ptr %99, i64 %101, !dbg !395
  %103 = load double, ptr %102, align 8, !dbg !395, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %103, metadata !235, metadata !DIExpression()), !dbg !396
  %104 = fcmp ogt double %103, 0.000000e+00, !dbg !397
  br i1 %104, label %105, label %132, !dbg !398

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
  br i1 %114, label %115, label %119, !dbg !421

115:                                              ; preds = %105
  %116 = fmul double %112, %112, !dbg !422
  %handler_result = call double @fSubHandlerDouble(double 1.000000e+00, double %116), !dbg !423
  %117 = call double @sqrt(double noundef %handler_result) #6, !dbg !423
  %118 = fmul double %103, %117, !dbg !424
  tail call void @llvm.dbg.value(metadata double %118, metadata !241, metadata !DIExpression()), !dbg !399
  br label %119

119:                                              ; preds = %115, %105
  %120 = phi double [ %118, %115 ], [ 0.000000e+00, %105 ], !dbg !425
  tail call void @llvm.dbg.value(metadata double %120, metadata !241, metadata !DIExpression()), !dbg !399
  %121 = fdiv double %120, %103, !dbg !426
  %122 = call double @llvm.fabs.f64(double %121), !dbg !427
  %123 = fcmp olt double %122, 0x3E71E3779B97F4A8, !dbg !428
  br i1 %123, label %124, label %126, !dbg !429

124:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #6, !dbg !430
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %0, i64 noundef %100) #6, !dbg !431
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #6, !dbg !432
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %11, ptr noundef nonnull %10, i64 noundef %54, i64 noundef %94) #6, !dbg !433
  %125 = call double @gsl_blas_dnrm2(ptr noundef nonnull %11) #6, !dbg !434
  tail call void @llvm.dbg.value(metadata double %125, metadata !241, metadata !DIExpression()), !dbg !399
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #6, !dbg !435
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #6, !dbg !435
  br label %126, !dbg !436

126:                                              ; preds = %124, %119
  %127 = phi double [ %125, %124 ], [ %120, %119 ], !dbg !399
  tail call void @llvm.dbg.value(metadata double %127, metadata !241, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !304, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !309, metadata !DIExpression()), !dbg !437
  tail call void @llvm.dbg.value(metadata double %127, metadata !310, metadata !DIExpression()), !dbg !437
  %128 = load ptr, ptr %35, align 8, !dbg !439, !tbaa !314
  %129 = load i64, ptr %36, align 8, !dbg !440, !tbaa !316
  %130 = mul i64 %129, %100, !dbg !441
  %131 = getelementptr inbounds double, ptr %128, i64 %130, !dbg !442
  store double %127, ptr %131, align 8, !dbg !443, !tbaa !320
  br label %132, !dbg !444

132:                                              ; preds = %126, %97
  %133 = phi i64 [ %129, %126 ], [ %98, %97 ]
  %134 = phi ptr [ %128, %126 ], [ %99, %97 ]
  %135 = add nuw i64 %100, 1, !dbg !445
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !217, metadata !DIExpression()), !dbg !339
  %136 = icmp ult i64 %135, %14, !dbg !446
  br i1 %136, label %97, label %137, !dbg !392, !llvm.loop !447

137:                                              ; preds = %132, %88, %87
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !198, metadata !DIExpression()), !dbg !296
  %138 = icmp eq i64 %54, %15, !dbg !299
  br i1 %138, label %139, label %50, !dbg !300, !llvm.loop !449

139:                                              ; preds = %137, %32, %26, %22, %18
  %140 = phi i32 [ 19, %18 ], [ 19, %22 ], [ 19, %26 ], [ 0, %32 ], [ 0, %137 ], !dbg !451
  ret i32 %140, !dbg !452
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !453 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !458 void @gsl_permutation_init(ptr noundef) local_unnamed_addr #2

declare !dbg !461 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !464 double @gsl_blas_dnrm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !468 i32 @gsl_matrix_swap_columns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !471 i32 @gsl_permutation_swap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !474 i32 @gsl_vector_swap_elements(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !477 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !480 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !484 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !487 i32 @gsl_linalg_householder_hm(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !490 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_decomp2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5, ptr noundef %6) local_unnamed_addr #0 !dbg !494 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !498, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !499, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !500, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !501, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !502, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !503, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !504, metadata !DIExpression()), !dbg !507
  %8 = load i64, ptr %0, align 8, !dbg !508, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !505, metadata !DIExpression()), !dbg !507
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !509
  %10 = load i64, ptr %9, align 8, !dbg !509, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !506, metadata !DIExpression()), !dbg !507
  %11 = load i64, ptr %1, align 8, !dbg !510, !tbaa !261
  %12 = icmp eq i64 %11, %8, !dbg !512
  br i1 %12, label %13, label %17, !dbg !513

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !514
  %15 = load i64, ptr %14, align 8, !dbg !514, !tbaa !269
  %16 = icmp eq i64 %15, %8, !dbg !515
  br i1 %16, label %18, label %17, !dbg !516

17:                                               ; preds = %13, %7
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 197, i32 noundef 19) #6, !dbg !517
  br label %43, !dbg !517

18:                                               ; preds = %13
  %19 = load i64, ptr %2, align 8, !dbg !520, !tbaa !261
  %20 = icmp eq i64 %19, %8, !dbg !522
  br i1 %20, label %21, label %25, !dbg !523

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !524
  %23 = load i64, ptr %22, align 8, !dbg !524, !tbaa !269
  %24 = icmp eq i64 %23, %10, !dbg !525
  br i1 %24, label %26, label %25, !dbg !526

25:                                               ; preds = %21, %18
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 201, i32 noundef 19) #6, !dbg !527
  br label %43, !dbg !527

26:                                               ; preds = %21
  %27 = load i64, ptr %3, align 8, !dbg !530, !tbaa !271
  %28 = tail call i64 @llvm.umin.i64(i64 %8, i64 %10), !dbg !532
  %29 = icmp eq i64 %27, %28, !dbg !533
  br i1 %29, label %31, label %30, !dbg !534

30:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 205, i32 noundef 19) #6, !dbg !535
  br label %43, !dbg !535

31:                                               ; preds = %26
  %32 = load i64, ptr %4, align 8, !dbg !538, !tbaa !280
  %33 = icmp eq i64 %32, %10, !dbg !540
  br i1 %33, label %35, label %34, !dbg !541

34:                                               ; preds = %31
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 209, i32 noundef 19) #6, !dbg !542
  br label %43, !dbg !542

35:                                               ; preds = %31
  %36 = load i64, ptr %6, align 8, !dbg !545, !tbaa !271
  %37 = icmp eq i64 %36, %10, !dbg !547
  br i1 %37, label %39, label %38, !dbg !548

38:                                               ; preds = %35
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 19) #6, !dbg !549
  br label %43, !dbg !549

39:                                               ; preds = %35
  %40 = tail call i32 @gsl_matrix_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %0) #6, !dbg !552
  %41 = tail call i32 @gsl_linalg_QRPT_decomp(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6), !dbg !553, !range !554
  %42 = tail call i32 @gsl_linalg_QR_unpack(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %1, ptr noundef nonnull %2) #6, !dbg !555
  br label %43, !dbg !556

43:                                               ; preds = %39, %38, %34, %30, %25, %17
  %44 = phi i32 [ 19, %17 ], [ 19, %25 ], [ 19, %30 ], [ 19, %34 ], [ 19, %38 ], [ 0, %39 ], !dbg !507
  ret i32 %44, !dbg !557
}

declare !dbg !558 i32 @gsl_matrix_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !561 i32 @gsl_linalg_QR_unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !564 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !570, metadata !DIExpression()), !dbg !575
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !571, metadata !DIExpression()), !dbg !575
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !572, metadata !DIExpression()), !dbg !575
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !573, metadata !DIExpression()), !dbg !575
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !574, metadata !DIExpression()), !dbg !575
  %6 = load i64, ptr %0, align 8, !dbg !576, !tbaa !261
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !578
  %8 = load i64, ptr %7, align 8, !dbg !578, !tbaa !269
  %9 = icmp eq i64 %6, %8, !dbg !579
  br i1 %9, label %11, label %10, !dbg !580

10:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 245, i32 noundef 20) #6, !dbg !581
  br label %26, !dbg !581

11:                                               ; preds = %5
  %12 = load i64, ptr %2, align 8, !dbg !584, !tbaa !280
  %13 = icmp eq i64 %6, %12, !dbg !586
  br i1 %13, label %15, label %14, !dbg !587

14:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 19) #6, !dbg !588
  br label %26, !dbg !588

15:                                               ; preds = %11
  %16 = load i64, ptr %3, align 8, !dbg !591, !tbaa !271
  %17 = icmp eq i64 %6, %16, !dbg !593
  br i1 %17, label %19, label %18, !dbg !594

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 253, i32 noundef 19) #6, !dbg !595
  br label %26, !dbg !595

19:                                               ; preds = %15
  %20 = load i64, ptr %4, align 8, !dbg !598, !tbaa !271
  %21 = icmp eq i64 %6, %20, !dbg !600
  br i1 %21, label %23, label %22, !dbg !601

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 19) #6, !dbg !602
  br label %26, !dbg !602

23:                                               ; preds = %19
  %24 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %3) #6, !dbg !605
  %25 = tail call i32 @gsl_linalg_QRPT_svx(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4), !dbg !607, !range !608
  br label %26, !dbg !609

26:                                               ; preds = %23, %22, %18, %14, %10
  %27 = phi i32 [ 20, %10 ], [ 19, %14 ], [ 19, %18 ], [ 19, %22 ], [ 0, %23 ], !dbg !610
  ret i32 %27, !dbg !611
}

declare !dbg !612 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_svx(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !615 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !619, metadata !DIExpression()), !dbg !623
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !620, metadata !DIExpression()), !dbg !623
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !621, metadata !DIExpression()), !dbg !623
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !622, metadata !DIExpression()), !dbg !623
  %5 = load i64, ptr %0, align 8, !dbg !624, !tbaa !261
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !626
  %7 = load i64, ptr %6, align 8, !dbg !626, !tbaa !269
  %8 = icmp eq i64 %5, %7, !dbg !627
  br i1 %8, label %10, label %9, !dbg !628

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 277, i32 noundef 20) #6, !dbg !629
  br label %22, !dbg !629

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !632, !tbaa !280
  %12 = icmp eq i64 %5, %11, !dbg !634
  br i1 %12, label %14, label %13, !dbg !635

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 281, i32 noundef 19) #6, !dbg !636
  br label %22, !dbg !636

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !639, !tbaa !271
  %16 = icmp eq i64 %5, %15, !dbg !641
  br i1 %16, label %18, label %17, !dbg !642

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 285, i32 noundef 19) #6, !dbg !643
  br label %22, !dbg !643

18:                                               ; preds = %14
  %19 = tail call i32 @gsl_linalg_QR_QTvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3) #6, !dbg !646
  %20 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #6, !dbg !648
  %21 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %2, ptr noundef nonnull %3) #6, !dbg !649
  br label %22, !dbg !650

22:                                               ; preds = %18, %17, %13, %9
  %23 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 0, %18 ], !dbg !651
  ret i32 %23, !dbg !652
}

declare !dbg !653 i32 @gsl_linalg_QR_QTvec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !656 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !663 i32 @gsl_permute_vector_inverse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_lssolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !dbg !667 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !671, metadata !DIExpression()), !dbg !679
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !672, metadata !DIExpression()), !dbg !679
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !673, metadata !DIExpression()), !dbg !679
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !674, metadata !DIExpression()), !dbg !679
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !675, metadata !DIExpression()), !dbg !679
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !676, metadata !DIExpression()), !dbg !679
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !680
  %8 = load i64, ptr %7, align 8, !dbg !680, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !677, metadata !DIExpression()), !dbg !679
  %9 = tail call i32 @gsl_linalg_QRPT_lssolve2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %8, ptr noundef %4, ptr noundef %5), !dbg !681, !range !554
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !678, metadata !DIExpression()), !dbg !679
  ret i32 %9, !dbg !682
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_lssolve2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 !dbg !683 {
  %8 = alloca %struct._gsl_matrix_const_view, align 8, !DIAssignID !712
  call void @llvm.dbg.assign(metadata i1 undef, metadata !696, metadata !DIExpression(), metadata !712, metadata ptr %8, metadata !DIExpression()), !dbg !713
  %9 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !714
  call void @llvm.dbg.assign(metadata i1 undef, metadata !709, metadata !DIExpression(), metadata !714, metadata ptr %9, metadata !DIExpression()), !dbg !713
  %10 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !715
  call void @llvm.dbg.assign(metadata i1 undef, metadata !710, metadata !DIExpression(), metadata !715, metadata ptr %10, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !687, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !688, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !689, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !690, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !691, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !692, metadata !DIExpression()), !dbg !716
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !693, metadata !DIExpression()), !dbg !716
  %11 = load i64, ptr %0, align 8, !dbg !717, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !694, metadata !DIExpression()), !dbg !716
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !718
  %13 = load i64, ptr %12, align 8, !dbg !718, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !695, metadata !DIExpression()), !dbg !716
  %14 = icmp ult i64 %11, %13, !dbg !719
  br i1 %14, label %15, label %16, !dbg !720

15:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 337, i32 noundef 19) #6, !dbg !721
  br label %76, !dbg !721

16:                                               ; preds = %7
  %17 = load i64, ptr %3, align 8, !dbg !724, !tbaa !271
  %18 = icmp eq i64 %11, %17, !dbg !725
  br i1 %18, label %20, label %19, !dbg !726

19:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 341, i32 noundef 19) #6, !dbg !727
  br label %76, !dbg !727

20:                                               ; preds = %16
  %21 = add i64 %4, -1, !dbg !730
  %22 = icmp ult i64 %21, %13, !dbg !730
  br i1 %22, label %24, label %23, !dbg !730

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 345, i32 noundef 19) #6, !dbg !731
  br label %76, !dbg !731

24:                                               ; preds = %20
  %25 = load i64, ptr %5, align 8, !dbg !734, !tbaa !271
  %26 = icmp eq i64 %13, %25, !dbg !735
  br i1 %26, label %28, label %27, !dbg !736

27:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 349, i32 noundef 19) #6, !dbg !737
  br label %76, !dbg !737

28:                                               ; preds = %24
  %29 = load i64, ptr %6, align 8, !dbg !740, !tbaa !271
  %30 = icmp eq i64 %11, %29, !dbg !741
  br i1 %30, label %32, label %31, !dbg !742

31:                                               ; preds = %28
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 353, i32 noundef 19) #6, !dbg !743
  br label %76, !dbg !743

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #6, !dbg !746
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %8, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %4, i64 noundef %4) #6, !dbg !747
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #6, !dbg !748
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %9, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %4) #6, !dbg !749
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #6, !dbg !750
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %5, i64 noundef 0, i64 noundef %4) #6, !dbg !751
  %33 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %6, ptr noundef nonnull %3) #6, !dbg !752
  %34 = call i32 @gsl_linalg_QR_QTvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %6) #6, !dbg !753
  %35 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %10, ptr noundef nonnull %9) #6, !dbg !754
  %36 = call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %8, ptr noundef nonnull %10) #6, !dbg !755
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !711, metadata !DIExpression()), !dbg !713
  %37 = icmp ugt i64 %13, %4, !dbg !756
  br i1 %37, label %38, label %73, !dbg !759

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.gsl_vector, ptr %5, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !314
  %41 = getelementptr inbounds %struct.gsl_vector, ptr %5, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !316
  %43 = sub i64 %13, %4, !dbg !759
  %44 = and i64 %43, 3, !dbg !759
  %45 = icmp eq i64 %44, 0, !dbg !759
  br i1 %45, label %54, label %46, !dbg !759

46:                                               ; preds = %46, %38
  %47 = phi i64 [ %51, %46 ], [ %4, %38 ]
  %48 = phi i64 [ %52, %46 ], [ 0, %38 ]
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !711, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !309, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !760
  %49 = mul i64 %42, %47, !dbg !762
  %50 = getelementptr inbounds double, ptr %40, i64 %49, !dbg !763
  store double 0.000000e+00, ptr %50, align 8, !dbg !764, !tbaa !320
  %51 = add nuw i64 %47, 1, !dbg !765
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !711, metadata !DIExpression()), !dbg !713
  %52 = add i64 %48, 1, !dbg !759
  %53 = icmp eq i64 %52, %44, !dbg !759
  br i1 %53, label %54, label %46, !dbg !759, !llvm.loop !766

54:                                               ; preds = %46, %38
  %55 = phi i64 [ %4, %38 ], [ %51, %46 ]
  %56 = sub i64 %4, %13, !dbg !759
  %57 = icmp ugt i64 %56, -4, !dbg !759
  br i1 %57, label %73, label %58, !dbg !759

58:                                               ; preds = %58, %54
  %59 = phi i64 [ %71, %58 ], [ %55, %54 ]
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !711, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !309, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !760
  %60 = mul i64 %42, %59, !dbg !762
  %61 = getelementptr inbounds double, ptr %40, i64 %60, !dbg !763
  store double 0.000000e+00, ptr %61, align 8, !dbg !764, !tbaa !320
  %62 = add nuw i64 %59, 1, !dbg !765
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !711, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !711, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !309, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !760
  %63 = mul i64 %42, %62, !dbg !762
  %64 = getelementptr inbounds double, ptr %40, i64 %63, !dbg !763
  store double 0.000000e+00, ptr %64, align 8, !dbg !764, !tbaa !320
  %65 = add nuw i64 %59, 2, !dbg !765
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !711, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !711, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !309, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !760
  %66 = mul i64 %42, %65, !dbg !762
  %67 = getelementptr inbounds double, ptr %40, i64 %66, !dbg !763
  store double 0.000000e+00, ptr %67, align 8, !dbg !764, !tbaa !320
  %68 = add nuw i64 %59, 3, !dbg !765
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !711, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !711, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !304, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !309, metadata !DIExpression()), !dbg !760
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !310, metadata !DIExpression()), !dbg !760
  %69 = mul i64 %42, %68, !dbg !762
  %70 = getelementptr inbounds double, ptr %40, i64 %69, !dbg !763
  store double 0.000000e+00, ptr %70, align 8, !dbg !764, !tbaa !320
  %71 = add nuw i64 %59, 4, !dbg !765
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !711, metadata !DIExpression()), !dbg !713
  %72 = icmp eq i64 %71, %13, !dbg !756
  br i1 %72, label %73, label %58, !dbg !759, !llvm.loop !768

73:                                               ; preds = %58, %54, %32
  %74 = call i32 @gsl_permute_vector_inverse(ptr noundef %2, ptr noundef nonnull %5) #6, !dbg !770
  call void @gsl_vector_set_zero(ptr noundef nonnull %9) #6, !dbg !771
  %75 = call i32 @gsl_linalg_QR_Qvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %6) #6, !dbg !772
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #6, !dbg !773
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #6, !dbg !773
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #6, !dbg !773
  br label %76

76:                                               ; preds = %73, %31, %27, %23, %19, %15
  %77 = phi i32 [ 19, %15 ], [ 19, %19 ], [ 19, %23 ], [ 19, %27 ], [ 19, %31 ], [ 0, %73 ], !dbg !774
  ret i32 %77, !dbg !775
}

declare !dbg !776 void @gsl_matrix_const_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_const_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !779 void @gsl_vector_set_zero(ptr noundef) local_unnamed_addr #2

declare !dbg !782 i32 @gsl_linalg_QR_Qvec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_QRsolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !783 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !787, metadata !DIExpression()), !dbg !792
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !788, metadata !DIExpression()), !dbg !792
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !789, metadata !DIExpression()), !dbg !792
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !790, metadata !DIExpression()), !dbg !792
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !791, metadata !DIExpression()), !dbg !792
  %6 = load i64, ptr %0, align 8, !dbg !793, !tbaa !261
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !795
  %8 = load i64, ptr %7, align 8, !dbg !795, !tbaa !269
  %9 = icmp eq i64 %6, %8, !dbg !796
  br i1 %9, label %10, label %27, !dbg !797

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8, !dbg !798, !tbaa !261
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !799
  %13 = load i64, ptr %12, align 8, !dbg !799, !tbaa !269
  %14 = icmp eq i64 %11, %13, !dbg !800
  br i1 %14, label %15, label %27, !dbg !801

15:                                               ; preds = %10
  %16 = load i64, ptr %2, align 8, !dbg !802, !tbaa !280
  %17 = icmp eq i64 %6, %16, !dbg !804
  %18 = icmp eq i64 %6, %11
  %19 = and i1 %18, %17, !dbg !805
  br i1 %19, label %20, label %27, !dbg !805

20:                                               ; preds = %15
  %21 = load i64, ptr %3, align 8, !dbg !806, !tbaa !271
  %22 = icmp eq i64 %6, %21, !dbg !807
  br i1 %22, label %23, label %27, !dbg !808

23:                                               ; preds = %20
  %24 = tail call i32 @gsl_blas_dgemv(i32 noundef 112, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %3, double noundef 0.000000e+00, ptr noundef %4) #6, !dbg !809
  %25 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %1, ptr noundef %4) #6, !dbg !811
  %26 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %2, ptr noundef %4) #6, !dbg !812
  br label %27, !dbg !813

27:                                               ; preds = %23, %20, %15, %10, %5
  %28 = phi i32 [ 0, %23 ], [ 20, %10 ], [ 20, %5 ], [ 19, %20 ], [ 19, %15 ], !dbg !814
  ret i32 %28, !dbg !815
}

declare !dbg !816 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_Rsolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !819 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !823, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !824, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !825, metadata !DIExpression()), !dbg !827
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !826, metadata !DIExpression()), !dbg !827
  %5 = load i64, ptr %0, align 8, !dbg !828, !tbaa !261
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !830
  %7 = load i64, ptr %6, align 8, !dbg !830, !tbaa !269
  %8 = icmp eq i64 %5, %7, !dbg !831
  br i1 %8, label %10, label %9, !dbg !832

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 426, i32 noundef 20) #6, !dbg !833
  br label %26, !dbg !833

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !836, !tbaa !271
  %12 = icmp eq i64 %5, %11, !dbg !838
  br i1 %12, label %14, label %13, !dbg !839

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 19) #6, !dbg !840
  br label %26, !dbg !840

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !843, !tbaa !271
  %16 = icmp eq i64 %5, %15, !dbg !845
  br i1 %16, label %18, label %17, !dbg !846

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 434, i32 noundef 19) #6, !dbg !847
  br label %26, !dbg !847

18:                                               ; preds = %14
  %19 = load i64, ptr %1, align 8, !dbg !850, !tbaa !280
  %20 = icmp eq i64 %19, %5, !dbg !852
  br i1 %20, label %22, label %21, !dbg !853

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 438, i32 noundef 19) #6, !dbg !854
  br label %26, !dbg !854

22:                                               ; preds = %18
  %23 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2) #6, !dbg !857
  %24 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #6, !dbg !859
  %25 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %3) #6, !dbg !860
  br label %26, !dbg !861

26:                                               ; preds = %22, %21, %17, %13, %9
  %27 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 19, %21 ], [ 0, %22 ], !dbg !862
  ret i32 %27, !dbg !863
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_Rsvx(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !864 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !868, metadata !DIExpression()), !dbg !871
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !869, metadata !DIExpression()), !dbg !871
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !870, metadata !DIExpression()), !dbg !871
  %4 = load i64, ptr %0, align 8, !dbg !872, !tbaa !261
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !874
  %6 = load i64, ptr %5, align 8, !dbg !874, !tbaa !269
  %7 = icmp eq i64 %4, %6, !dbg !875
  br i1 %7, label %9, label %8, !dbg !876

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 464, i32 noundef 20) #6, !dbg !877
  br label %20, !dbg !877

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8, !dbg !880, !tbaa !271
  %11 = icmp eq i64 %4, %10, !dbg !882
  br i1 %11, label %13, label %12, !dbg !883

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 468, i32 noundef 19) #6, !dbg !884
  br label %20, !dbg !884

13:                                               ; preds = %9
  %14 = load i64, ptr %1, align 8, !dbg !887, !tbaa !280
  %15 = icmp eq i64 %14, %4, !dbg !889
  br i1 %15, label %17, label %16, !dbg !890

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 472, i32 noundef 19) #6, !dbg !891
  br label %20, !dbg !891

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #6, !dbg !894
  %19 = tail call i32 @gsl_permute_vector_inverse(ptr noundef nonnull %1, ptr noundef nonnull %2) #6, !dbg !896
  br label %20, !dbg !897

20:                                               ; preds = %17, %16, %12, %8
  %21 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 0, %17 ], !dbg !898
  ret i32 %21, !dbg !899
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QRPT_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 !dbg !900 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !904, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !905, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !906, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !907, metadata !DIExpression()), !dbg !938
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !908, metadata !DIExpression()), !dbg !938
  %6 = load i64, ptr %1, align 8, !dbg !939, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !909, metadata !DIExpression()), !dbg !938
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !940
  %8 = load i64, ptr %7, align 8, !dbg !940, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !910, metadata !DIExpression()), !dbg !938
  %9 = load i64, ptr %0, align 8, !dbg !941, !tbaa !261
  %10 = icmp eq i64 %9, %6, !dbg !942
  br i1 %10, label %11, label %15, !dbg !943

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !944
  %13 = load i64, ptr %12, align 8, !dbg !944, !tbaa !269
  %14 = icmp eq i64 %13, %6, !dbg !945
  br i1 %14, label %16, label %15, !dbg !946

15:                                               ; preds = %11, %5
  tail call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 509, i32 noundef 20) #6, !dbg !947
  br label %275, !dbg !947

16:                                               ; preds = %11
  %17 = load i64, ptr %3, align 8, !dbg !950, !tbaa !271
  %18 = icmp eq i64 %17, %6, !dbg !951
  br i1 %18, label %20, label %19, !dbg !952

19:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 513, i32 noundef 19) #6, !dbg !953
  br label %275, !dbg !953

20:                                               ; preds = %16
  %21 = load i64, ptr %4, align 8, !dbg !956, !tbaa !271
  %22 = icmp eq i64 %21, %8, !dbg !957
  br i1 %22, label %23, label %37, !dbg !958

23:                                               ; preds = %20
  %24 = add i64 %6, -1, !dbg !959
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !916, metadata !DIExpression()), !dbg !960
  %25 = icmp eq i64 %24, 0, !dbg !961
  %26 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !314
  br i1 %25, label %146, label %28, !dbg !962

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !316
  %31 = icmp eq i64 %6, 0
  %32 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %33 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %35 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %36 = add i64 %6, -2, !dbg !962
  br label %38, !dbg !962

37:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 517, i32 noundef 19) #6, !dbg !963
  br label %275, !dbg !963

38:                                               ; preds = %142, %28
  %39 = phi i64 [ 0, %28 ], [ %145, %142 ]
  %40 = phi i64 [ %24, %28 ], [ %143, %142 ]
  %41 = phi i64 [ %6, %28 ], [ %40, %142 ]
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !966
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !334, metadata !DIExpression()), !dbg !966
  %42 = sub i64 %36, %39, !dbg !968
  %43 = tail call i64 @llvm.umin.i64(i64 %40, i64 %42), !dbg !968
  %44 = sub i64 %8, %43, !dbg !968
  %45 = add i64 %43, 1, !dbg !968
  %46 = mul i64 %30, %40, !dbg !968
  %47 = getelementptr inbounds double, ptr %27, i64 %46, !dbg !969
  %48 = load double, ptr %47, align 8, !dbg !969, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %48, metadata !923, metadata !DIExpression()), !dbg !970
  %49 = add i64 %41, -2, !dbg !971
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !972
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !334, metadata !DIExpression()), !dbg !972
  %50 = mul i64 %30, %49, !dbg !974
  %51 = getelementptr inbounds double, ptr %27, i64 %50, !dbg !975
  %52 = load double, ptr %51, align 8, !dbg !975, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %52, metadata !924, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata double %52, metadata !976, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata double %48, metadata !982, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr undef, metadata !983, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr undef, metadata !984, metadata !DIExpression()), !dbg !993
  %53 = fcmp oeq double %48, 0.000000e+00, !dbg !995
  br i1 %53, label %72, label %54, !dbg !996

54:                                               ; preds = %38
  %55 = tail call double @llvm.fabs.f64(double %48), !dbg !997
  %56 = tail call double @llvm.fabs.f64(double %52), !dbg !998
  %57 = fcmp ogt double %55, %56, !dbg !999
  br i1 %57, label %58, label %65, !dbg !1000

58:                                               ; preds = %54
  %59 = fneg double %52, !dbg !1001
  %60 = fdiv double %59, %48, !dbg !1002
  call void @llvm.dbg.value(metadata double %60, metadata !985, metadata !DIExpression()), !dbg !1003
  %61 = fmul double %60, %60, !dbg !1004
  %handler_result = call double @fAddHandlerDouble(double %61, double 1.000000e+00), !dbg !1005
  %62 = tail call double @llvm.sqrt.f64(double %handler_result), !dbg !1005
  %63 = fdiv double 1.000000e+00, %62, !dbg !1006
  call void @llvm.dbg.value(metadata double %63, metadata !989, metadata !DIExpression()), !dbg !1003
  tail call void @llvm.dbg.value(metadata double %63, metadata !922, metadata !DIExpression()), !dbg !970
  %64 = fmul double %60, %63, !dbg !1007
  tail call void @llvm.dbg.value(metadata double %64, metadata !918, metadata !DIExpression()), !dbg !970
  br label %72, !dbg !1008

65:                                               ; preds = %54
  %66 = fneg double %48, !dbg !1009
  %67 = fdiv double %66, %52, !dbg !1010
  call void @llvm.dbg.value(metadata double %67, metadata !990, metadata !DIExpression()), !dbg !1011
  %68 = fmul double %67, %67, !dbg !1012
  %handler_result1 = call double @fAddHandlerDouble(double %68, double 1.000000e+00), !dbg !1013
  %69 = tail call double @llvm.sqrt.f64(double %handler_result1), !dbg !1013
  %70 = fdiv double 1.000000e+00, %69, !dbg !1014
  call void @llvm.dbg.value(metadata double %70, metadata !992, metadata !DIExpression()), !dbg !1011
  tail call void @llvm.dbg.value(metadata double %70, metadata !918, metadata !DIExpression()), !dbg !970
  %71 = fmul double %67, %70, !dbg !1015
  tail call void @llvm.dbg.value(metadata double %71, metadata !922, metadata !DIExpression()), !dbg !970
  br label %72

72:                                               ; preds = %65, %58, %38
  %73 = phi double [ %64, %58 ], [ %70, %65 ], [ 1.000000e+00, %38 ], !dbg !1016
  %74 = phi double [ %63, %58 ], [ %71, %65 ], [ 0.000000e+00, %38 ], !dbg !1016
  tail call void @llvm.dbg.value(metadata double %74, metadata !922, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata double %73, metadata !918, metadata !DIExpression()), !dbg !970
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1017, metadata !DIExpression()), !dbg !1028
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1022, metadata !DIExpression()), !dbg !1028
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1023, metadata !DIExpression()), !dbg !1028
  tail call void @llvm.dbg.value(metadata double %73, metadata !1024, metadata !DIExpression()), !dbg !1028
  tail call void @llvm.dbg.value(metadata double %74, metadata !1025, metadata !DIExpression()), !dbg !1028
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1030
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !334, metadata !DIExpression()), !dbg !1030
  tail call void @llvm.dbg.value(metadata double %52, metadata !1026, metadata !DIExpression()), !dbg !1028
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1032
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !334, metadata !DIExpression()), !dbg !1032
  tail call void @llvm.dbg.value(metadata double %48, metadata !1027, metadata !DIExpression()), !dbg !1028
  %75 = fmul double %52, %73, !dbg !1034
  %76 = fmul double %48, %74, !dbg !1035
  %handler_result2 = call double @fSubHandlerDouble(double %75, double %76), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !304, metadata !DIExpression()), !dbg !1038
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !309, metadata !DIExpression()), !dbg !1038
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !310, metadata !DIExpression()), !dbg !1038
  store double %handler_result2, ptr %51, align 8, !dbg !1036, !tbaa !320
  %77 = fmul double %52, %74, !dbg !1039
  %78 = fmul double %48, %73, !dbg !1040
  %handler_result3 = call double @fAddHandlerDouble(double %78, double %77), !dbg !1041
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !304, metadata !DIExpression()), !dbg !1043
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !309, metadata !DIExpression()), !dbg !1043
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !310, metadata !DIExpression()), !dbg !1043
  store double %handler_result3, ptr %47, align 8, !dbg !1041, !tbaa !320
  call void @llvm.dbg.value(metadata i64 %6, metadata !1044, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %8, metadata !1050, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr %0, metadata !1051, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr %1, metadata !1052, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %49, metadata !1053, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %40, metadata !1054, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata double %73, metadata !1055, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata double %74, metadata !1056, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i64 0, metadata !1057, metadata !DIExpression()), !dbg !1068
  br i1 %31, label %96, label %79, !dbg !1070

79:                                               ; preds = %72
  %80 = load ptr, ptr %32, align 8, !tbaa !412
  %81 = load i64, ptr %33, align 8, !tbaa !414
  br label %82, !dbg !1070

82:                                               ; preds = %82, %79
  %83 = phi i64 [ 0, %79 ], [ %94, %82 ]
  call void @llvm.dbg.value(metadata i64 %83, metadata !1057, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr %0, metadata !400, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i64 %83, metadata !407, metadata !DIExpression()), !dbg !1071
  call void @llvm.dbg.value(metadata i64 %49, metadata !408, metadata !DIExpression()), !dbg !1071
  %84 = mul i64 %83, %81, !dbg !1073
  %85 = getelementptr double, ptr %80, i64 %84, !dbg !1074
  %86 = getelementptr double, ptr %85, i64 %49, !dbg !1074
  %87 = load double, ptr %86, align 8, !dbg !1074, !tbaa !320
  call void @llvm.dbg.value(metadata double %87, metadata !1058, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata ptr %0, metadata !400, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %83, metadata !407, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i64 %40, metadata !408, metadata !DIExpression()), !dbg !1076
  %88 = getelementptr double, ptr %85, i64 %40, !dbg !1078
  %89 = load double, ptr %88, align 8, !dbg !1078, !tbaa !320
  call void @llvm.dbg.value(metadata double %89, metadata !1062, metadata !DIExpression()), !dbg !1075
  %90 = fmul double %73, %87, !dbg !1079
  %91 = fmul double %74, %89, !dbg !1080
  %handler_result4 = call double @fSubHandlerDouble(double %90, double %91), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %0, metadata !1086, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %83, metadata !1087, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %49, metadata !1088, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !1089, metadata !DIExpression()), !dbg !1091
  store double %handler_result4, ptr %86, align 8, !dbg !1081, !tbaa !320
  %92 = fmul double %74, %87, !dbg !1092
  %93 = fmul double %73, %89, !dbg !1093
  %handler_result5 = call double @fAddHandlerDouble(double %92, double %93), !dbg !1094
  call void @llvm.dbg.value(metadata ptr %0, metadata !1086, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %83, metadata !1087, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %40, metadata !1088, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !1089, metadata !DIExpression()), !dbg !1096
  store double %handler_result5, ptr %88, align 8, !dbg !1094, !tbaa !320
  %94 = add nuw i64 %83, 1, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %94, metadata !1057, metadata !DIExpression()), !dbg !1068
  %95 = icmp eq i64 %94, %6, !dbg !1098
  br i1 %95, label %96, label %82, !dbg !1070, !llvm.loop !1099

96:                                               ; preds = %82, %72
  %97 = tail call i64 @llvm.umin.i64(i64 %49, i64 %40), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %97, metadata !1057, metadata !DIExpression()), !dbg !1068
  %98 = icmp ult i64 %97, %8, !dbg !1102
  br i1 %98, label %99, label %142, !dbg !1103

99:                                               ; preds = %96
  %100 = load ptr, ptr %34, align 8, !tbaa !412
  %101 = load i64, ptr %35, align 8, !tbaa !414
  %102 = mul i64 %101, %49
  %103 = getelementptr double, ptr %100, i64 %102
  %104 = mul i64 %101, %40
  %105 = getelementptr double, ptr %100, i64 %104
  %106 = and i64 %44, 1, !dbg !1103
  %107 = icmp eq i64 %106, 0, !dbg !1103
  br i1 %107, label %118, label %108, !dbg !1103

108:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i64 %97, metadata !1057, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %49, metadata !407, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %97, metadata !408, metadata !DIExpression()), !dbg !1104
  %109 = getelementptr double, ptr %103, i64 %97, !dbg !1106
  %110 = load double, ptr %109, align 8, !dbg !1106, !tbaa !320
  call void @llvm.dbg.value(metadata double %110, metadata !1063, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %40, metadata !407, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %97, metadata !408, metadata !DIExpression()), !dbg !1108
  %111 = getelementptr double, ptr %105, i64 %97, !dbg !1110
  %112 = load double, ptr %111, align 8, !dbg !1110, !tbaa !320
  call void @llvm.dbg.value(metadata double %112, metadata !1067, metadata !DIExpression()), !dbg !1107
  %113 = fmul double %73, %110, !dbg !1111
  %114 = fmul double %74, %112, !dbg !1112
  %handler_result6 = call double @fSubHandlerDouble(double %113, double %114), !dbg !1113
  call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %49, metadata !1087, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %97, metadata !1088, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !1089, metadata !DIExpression()), !dbg !1115
  store double %handler_result6, ptr %109, align 8, !dbg !1113, !tbaa !320
  %115 = fmul double %74, %110, !dbg !1116
  %116 = fmul double %73, %112, !dbg !1117
  %handler_result7 = call double @fAddHandlerDouble(double %115, double %116), !dbg !1118
  call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %40, metadata !1087, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %97, metadata !1088, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !1089, metadata !DIExpression()), !dbg !1120
  store double %handler_result7, ptr %111, align 8, !dbg !1118, !tbaa !320
  %117 = add nuw i64 %97, 1, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %117, metadata !1057, metadata !DIExpression()), !dbg !1068
  br label %118, !dbg !1103

118:                                              ; preds = %108, %99
  %119 = phi i64 [ %97, %99 ], [ %117, %108 ]
  %120 = icmp eq i64 %8, %45, !dbg !1103
  br i1 %120, label %142, label %121, !dbg !1103

121:                                              ; preds = %121, %118
  %122 = phi i64 [ %140, %121 ], [ %119, %118 ]
  call void @llvm.dbg.value(metadata i64 %122, metadata !1057, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %49, metadata !407, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %122, metadata !408, metadata !DIExpression()), !dbg !1104
  %123 = getelementptr double, ptr %103, i64 %122, !dbg !1106
  %124 = load double, ptr %123, align 8, !dbg !1106, !tbaa !320
  call void @llvm.dbg.value(metadata double %124, metadata !1063, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %40, metadata !407, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %122, metadata !408, metadata !DIExpression()), !dbg !1108
  %125 = getelementptr double, ptr %105, i64 %122, !dbg !1110
  %126 = load double, ptr %125, align 8, !dbg !1110, !tbaa !320
  call void @llvm.dbg.value(metadata double %126, metadata !1067, metadata !DIExpression()), !dbg !1107
  %127 = fmul double %73, %124, !dbg !1111
  %128 = fmul double %74, %126, !dbg !1112
  %handler_result8 = call double @fSubHandlerDouble(double %127, double %128), !dbg !1113
  call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %49, metadata !1087, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %122, metadata !1088, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !1089, metadata !DIExpression()), !dbg !1115
  store double %handler_result8, ptr %123, align 8, !dbg !1113, !tbaa !320
  %129 = fmul double %74, %124, !dbg !1116
  %130 = fmul double %73, %126, !dbg !1117
  %handler_result9 = call double @fAddHandlerDouble(double %129, double %130), !dbg !1118
  call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %40, metadata !1087, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %122, metadata !1088, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !1089, metadata !DIExpression()), !dbg !1120
  store double %handler_result9, ptr %125, align 8, !dbg !1118, !tbaa !320
  %131 = add nuw i64 %122, 1, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %131, metadata !1057, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i64 %131, metadata !1057, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %49, metadata !407, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %131, metadata !408, metadata !DIExpression()), !dbg !1104
  %132 = getelementptr double, ptr %103, i64 %131, !dbg !1106
  %133 = load double, ptr %132, align 8, !dbg !1106, !tbaa !320
  call void @llvm.dbg.value(metadata double %133, metadata !1063, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %40, metadata !407, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %131, metadata !408, metadata !DIExpression()), !dbg !1108
  %134 = getelementptr double, ptr %105, i64 %131, !dbg !1110
  %135 = load double, ptr %134, align 8, !dbg !1110, !tbaa !320
  call void @llvm.dbg.value(metadata double %135, metadata !1067, metadata !DIExpression()), !dbg !1107
  %136 = fmul double %73, %133, !dbg !1111
  %137 = fmul double %74, %135, !dbg !1112
  %handler_result10 = call double @fSubHandlerDouble(double %136, double %137), !dbg !1113
  call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %49, metadata !1087, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %131, metadata !1088, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !1089, metadata !DIExpression()), !dbg !1115
  store double %handler_result10, ptr %132, align 8, !dbg !1113, !tbaa !320
  %138 = fmul double %74, %133, !dbg !1116
  %139 = fmul double %73, %135, !dbg !1117
  %handler_result11 = call double @fAddHandlerDouble(double %138, double %139), !dbg !1118
  call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %40, metadata !1087, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %131, metadata !1088, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !1089, metadata !DIExpression()), !dbg !1120
  store double %handler_result11, ptr %134, align 8, !dbg !1118, !tbaa !320
  %140 = add nuw i64 %122, 2, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %140, metadata !1057, metadata !DIExpression()), !dbg !1068
  %141 = icmp eq i64 %140, %8, !dbg !1102
  br i1 %141, label %142, label %121, !dbg !1103, !llvm.loop !1122

142:                                              ; preds = %121, %118, %96
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !916, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !960
  %143 = add i64 %40, -1, !dbg !959
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !916, metadata !DIExpression()), !dbg !960
  %144 = icmp eq i64 %143, 0, !dbg !961
  %145 = add i64 %39, 1, !dbg !962
  br i1 %144, label %146, label %38, !dbg !962, !llvm.loop !1124

146:                                              ; preds = %142, %23
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1126
  tail call void @llvm.dbg.value(metadata i64 0, metadata !334, metadata !DIExpression()), !dbg !1126
  %147 = load double, ptr %27, align 8, !dbg !1128, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %147, metadata !917, metadata !DIExpression()), !dbg !960
  tail call void @llvm.dbg.value(metadata i64 0, metadata !911, metadata !DIExpression()), !dbg !960
  %148 = icmp eq i64 %8, 0, !dbg !1129
  br i1 %148, label %174, label %149, !dbg !1130

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !412
  %152 = getelementptr inbounds %struct.gsl_permutation_struct, ptr %2, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !1131
  %154 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !314
  %156 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !316
  %158 = and i64 %8, 1, !dbg !1130
  %159 = icmp eq i64 %8, 1, !dbg !1130
  br i1 %159, label %162, label %160, !dbg !1130

160:                                              ; preds = %149
  %161 = and i64 %8, -2, !dbg !1130
  br label %187, !dbg !1130

162:                                              ; preds = %187, %149
  %163 = phi i64 [ 0, %149 ], [ %207, %187 ]
  %164 = icmp eq i64 %158, 0, !dbg !1130
  br i1 %164, label %174, label %165, !dbg !1130

165:                                              ; preds = %162
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !911, metadata !DIExpression()), !dbg !960
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 0, metadata !407, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !408, metadata !DIExpression()), !dbg !1132
  %166 = getelementptr double, ptr %151, i64 %163, !dbg !1134
  %167 = load double, ptr %166, align 8, !dbg !1134, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %167, metadata !925, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1136, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !1141, metadata !DIExpression()), !dbg !1142
  %168 = getelementptr inbounds i64, ptr %153, i64 %163, !dbg !1144
  %169 = load i64, ptr %168, align 8, !dbg !1144, !tbaa !1145
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !929, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !1146
  tail call void @llvm.dbg.value(metadata i64 %169, metadata !334, metadata !DIExpression()), !dbg !1146
  %170 = mul i64 %157, %169, !dbg !1148
  %171 = getelementptr inbounds double, ptr %155, i64 %170, !dbg !1149
  %172 = load double, ptr %171, align 8, !dbg !1149, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %172, metadata !930, metadata !DIExpression()), !dbg !1135
  %173 = fmul double %147, %172, !dbg !1150
  %handler_result12 = call double @fAddHandlerDouble(double %167, double %173), !dbg !1151
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1087, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !1088, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !1089, metadata !DIExpression()), !dbg !1153
  store double %handler_result12, ptr %166, align 8, !dbg !1151, !tbaa !320
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !911, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !960
  br label %174

174:                                              ; preds = %165, %162, %146
  %175 = add i64 %8, 1
  %176 = tail call i64 @llvm.umin.i64(i64 %6, i64 %175)
  tail call void @llvm.dbg.value(metadata i64 1, metadata !916, metadata !DIExpression()), !dbg !960
  %177 = icmp ugt i64 %176, 1, !dbg !1154
  br i1 %177, label %178, label %275, !dbg !1155

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !412
  %181 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %182 = load i64, ptr %181, align 8, !tbaa !414
  %183 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !412
  %185 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %186 = load i64, ptr %185, align 8, !tbaa !414
  br label %210, !dbg !1155

187:                                              ; preds = %187, %160
  %188 = phi i64 [ 0, %160 ], [ %207, %187 ]
  %189 = phi i64 [ 0, %160 ], [ %208, %187 ]
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !911, metadata !DIExpression()), !dbg !960
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 0, metadata !407, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !408, metadata !DIExpression()), !dbg !1132
  %190 = getelementptr double, ptr %151, i64 %188, !dbg !1134
  %191 = load double, ptr %190, align 8, !dbg !1134, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %191, metadata !925, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1136, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !1141, metadata !DIExpression()), !dbg !1142
  %192 = getelementptr inbounds i64, ptr %153, i64 %188, !dbg !1144
  %193 = load i64, ptr %192, align 8, !dbg !1144, !tbaa !1145
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !929, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !1146
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !334, metadata !DIExpression()), !dbg !1146
  %194 = mul i64 %157, %193, !dbg !1148
  %195 = getelementptr inbounds double, ptr %155, i64 %194, !dbg !1149
  %196 = load double, ptr %195, align 8, !dbg !1149, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %196, metadata !930, metadata !DIExpression()), !dbg !1135
  %197 = fmul double %147, %196, !dbg !1150
  %handler_result13 = call double @fAddHandlerDouble(double %191, double %197), !dbg !1151
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1087, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !1088, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !1089, metadata !DIExpression()), !dbg !1153
  store double %handler_result13, ptr %190, align 8, !dbg !1151, !tbaa !320
  %198 = or disjoint i64 %188, 1, !dbg !1156
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !911, metadata !DIExpression()), !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !911, metadata !DIExpression()), !dbg !960
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 0, metadata !407, metadata !DIExpression()), !dbg !1132
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !408, metadata !DIExpression()), !dbg !1132
  %199 = getelementptr double, ptr %151, i64 %198, !dbg !1134
  %200 = load double, ptr %199, align 8, !dbg !1134, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %200, metadata !925, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1136, metadata !DIExpression()), !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !1141, metadata !DIExpression()), !dbg !1142
  %201 = getelementptr inbounds i64, ptr %153, i64 %198, !dbg !1144
  %202 = load i64, ptr %201, align 8, !dbg !1144, !tbaa !1145
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !929, metadata !DIExpression()), !dbg !1135
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !327, metadata !DIExpression()), !dbg !1146
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !334, metadata !DIExpression()), !dbg !1146
  %203 = mul i64 %157, %202, !dbg !1148
  %204 = getelementptr inbounds double, ptr %155, i64 %203, !dbg !1149
  %205 = load double, ptr %204, align 8, !dbg !1149, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %205, metadata !930, metadata !DIExpression()), !dbg !1135
  %206 = fmul double %147, %205, !dbg !1150
  %handler_result14 = call double @fAddHandlerDouble(double %200, double %206), !dbg !1151
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1087, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata i64 %198, metadata !1088, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !1089, metadata !DIExpression()), !dbg !1153
  store double %handler_result14, ptr %199, align 8, !dbg !1151, !tbaa !320
  %207 = add nuw i64 %188, 2, !dbg !1156
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !911, metadata !DIExpression()), !dbg !960
  %208 = add i64 %189, 2, !dbg !1130
  %209 = icmp eq i64 %208, %161, !dbg !1130
  br i1 %209, label %162, label %187, !dbg !1130, !llvm.loop !1157

210:                                              ; preds = %272, %178
  %211 = phi i64 [ 1, %178 ], [ %273, %272 ]
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !916, metadata !DIExpression()), !dbg !960
  %212 = add i64 %211, -1, !dbg !1159
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !407, metadata !DIExpression()), !dbg !1160
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !408, metadata !DIExpression()), !dbg !1160
  %213 = mul i64 %182, %212, !dbg !1162
  %214 = getelementptr double, ptr %180, i64 %213, !dbg !1163
  %215 = getelementptr double, ptr %214, i64 %212, !dbg !1163
  %216 = load double, ptr %215, align 8, !dbg !1163, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %216, metadata !936, metadata !DIExpression()), !dbg !1164
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1165
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !407, metadata !DIExpression()), !dbg !1165
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !408, metadata !DIExpression()), !dbg !1165
  %217 = mul i64 %182, %211, !dbg !1167
  %218 = getelementptr double, ptr %180, i64 %217, !dbg !1168
  %219 = getelementptr double, ptr %218, i64 %212, !dbg !1168
  %220 = load double, ptr %219, align 8, !dbg !1168, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %220, metadata !937, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata double %216, metadata !976, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata double %220, metadata !982, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata ptr undef, metadata !983, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata ptr undef, metadata !984, metadata !DIExpression()), !dbg !1169
  %221 = fcmp oeq double %220, 0.000000e+00, !dbg !1171
  br i1 %221, label %240, label %222, !dbg !1172

222:                                              ; preds = %210
  %223 = tail call double @llvm.fabs.f64(double %220), !dbg !1173
  %224 = tail call double @llvm.fabs.f64(double %216), !dbg !1174
  %225 = fcmp ogt double %223, %224, !dbg !1175
  br i1 %225, label %226, label %233, !dbg !1176

226:                                              ; preds = %222
  %227 = fneg double %216, !dbg !1177
  %228 = fdiv double %227, %220, !dbg !1178
  call void @llvm.dbg.value(metadata double %228, metadata !985, metadata !DIExpression()), !dbg !1179
  %229 = fmul double %228, %228, !dbg !1180
  %handler_result15 = call double @fAddHandlerDouble(double %229, double 1.000000e+00), !dbg !1181
  %230 = tail call double @llvm.sqrt.f64(double %handler_result15), !dbg !1181
  %231 = fdiv double 1.000000e+00, %230, !dbg !1182
  call void @llvm.dbg.value(metadata double %231, metadata !989, metadata !DIExpression()), !dbg !1179
  tail call void @llvm.dbg.value(metadata double %231, metadata !935, metadata !DIExpression()), !dbg !1164
  %232 = fmul double %228, %231, !dbg !1183
  tail call void @llvm.dbg.value(metadata double %232, metadata !931, metadata !DIExpression()), !dbg !1164
  br label %240, !dbg !1184

233:                                              ; preds = %222
  %234 = fneg double %220, !dbg !1185
  %235 = fdiv double %234, %216, !dbg !1186
  call void @llvm.dbg.value(metadata double %235, metadata !990, metadata !DIExpression()), !dbg !1187
  %236 = fmul double %235, %235, !dbg !1188
  %handler_result16 = call double @fAddHandlerDouble(double %236, double 1.000000e+00), !dbg !1189
  %237 = tail call double @llvm.sqrt.f64(double %handler_result16), !dbg !1189
  %238 = fdiv double 1.000000e+00, %237, !dbg !1190
  call void @llvm.dbg.value(metadata double %238, metadata !992, metadata !DIExpression()), !dbg !1187
  tail call void @llvm.dbg.value(metadata double %238, metadata !931, metadata !DIExpression()), !dbg !1164
  %239 = fmul double %235, %238, !dbg !1191
  tail call void @llvm.dbg.value(metadata double %239, metadata !935, metadata !DIExpression()), !dbg !1164
  br label %240

240:                                              ; preds = %233, %226, %210
  %241 = phi double [ %232, %226 ], [ %238, %233 ], [ 1.000000e+00, %210 ], !dbg !1192
  %242 = phi double [ %231, %226 ], [ %239, %233 ], [ 0.000000e+00, %210 ], !dbg !1192
  tail call void @llvm.dbg.value(metadata double %242, metadata !935, metadata !DIExpression()), !dbg !1164
  tail call void @llvm.dbg.value(metadata double %241, metadata !931, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %6, metadata !1044, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %8, metadata !1050, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %0, metadata !1051, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %1, metadata !1052, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %212, metadata !1053, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %211, metadata !1054, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %241, metadata !1055, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %242, metadata !1056, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 0, metadata !1057, metadata !DIExpression()), !dbg !1193
  br label %243, !dbg !1195

243:                                              ; preds = %243, %240
  %244 = phi i64 [ 0, %240 ], [ %255, %243 ]
  call void @llvm.dbg.value(metadata i64 %244, metadata !1057, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %0, metadata !400, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i64 %244, metadata !407, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i64 %212, metadata !408, metadata !DIExpression()), !dbg !1196
  %245 = mul i64 %244, %186, !dbg !1198
  %246 = getelementptr double, ptr %184, i64 %245, !dbg !1199
  %247 = getelementptr double, ptr %246, i64 %212, !dbg !1199
  %248 = load double, ptr %247, align 8, !dbg !1199, !tbaa !320
  call void @llvm.dbg.value(metadata double %248, metadata !1058, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata ptr %0, metadata !400, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %244, metadata !407, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata i64 %211, metadata !408, metadata !DIExpression()), !dbg !1201
  %249 = getelementptr double, ptr %246, i64 %211, !dbg !1203
  %250 = load double, ptr %249, align 8, !dbg !1203, !tbaa !320
  call void @llvm.dbg.value(metadata double %250, metadata !1062, metadata !DIExpression()), !dbg !1200
  %251 = fmul double %241, %248, !dbg !1204
  %252 = fmul double %242, %250, !dbg !1205
  %handler_result17 = call double @fSubHandlerDouble(double %251, double %252), !dbg !1206
  call void @llvm.dbg.value(metadata ptr %0, metadata !1086, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i64 %244, metadata !1087, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i64 %212, metadata !1088, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !1089, metadata !DIExpression()), !dbg !1208
  store double %handler_result17, ptr %247, align 8, !dbg !1206, !tbaa !320
  %253 = fmul double %242, %248, !dbg !1209
  %254 = fmul double %241, %250, !dbg !1210
  %handler_result18 = call double @fAddHandlerDouble(double %253, double %254), !dbg !1211
  call void @llvm.dbg.value(metadata ptr %0, metadata !1086, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 %244, metadata !1087, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i64 %211, metadata !1088, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !1089, metadata !DIExpression()), !dbg !1213
  store double %handler_result18, ptr %249, align 8, !dbg !1211, !tbaa !320
  %255 = add nuw i64 %244, 1, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %255, metadata !1057, metadata !DIExpression()), !dbg !1193
  %256 = icmp eq i64 %255, %6, !dbg !1215
  br i1 %256, label %257, label %243, !dbg !1195, !llvm.loop !1216

257:                                              ; preds = %243
  %258 = tail call i64 @llvm.umin.i64(i64 %212, i64 %211), !dbg !1218
  call void @llvm.dbg.value(metadata i64 %258, metadata !1057, metadata !DIExpression()), !dbg !1193
  %259 = icmp ult i64 %258, %8, !dbg !1219
  br i1 %259, label %260, label %272, !dbg !1220

260:                                              ; preds = %260, %257
  %261 = phi i64 [ %270, %260 ], [ %258, %257 ]
  call void @llvm.dbg.value(metadata i64 %261, metadata !1057, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i64 %212, metadata !407, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata i64 %261, metadata !408, metadata !DIExpression()), !dbg !1221
  %262 = getelementptr double, ptr %214, i64 %261, !dbg !1223
  %263 = load double, ptr %262, align 8, !dbg !1223, !tbaa !320
  call void @llvm.dbg.value(metadata double %263, metadata !1063, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr %1, metadata !400, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %211, metadata !407, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %261, metadata !408, metadata !DIExpression()), !dbg !1225
  %264 = getelementptr double, ptr %218, i64 %261, !dbg !1227
  %265 = load double, ptr %264, align 8, !dbg !1227, !tbaa !320
  call void @llvm.dbg.value(metadata double %265, metadata !1067, metadata !DIExpression()), !dbg !1224
  %266 = fmul double %241, %263, !dbg !1228
  %267 = fmul double %242, %265, !dbg !1229
  %handler_result19 = call double @fSubHandlerDouble(double %266, double %267), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %212, metadata !1087, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %261, metadata !1088, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !1089, metadata !DIExpression()), !dbg !1232
  store double %handler_result19, ptr %262, align 8, !dbg !1230, !tbaa !320
  %268 = fmul double %242, %263, !dbg !1233
  %269 = fmul double %241, %265, !dbg !1234
  %handler_result20 = call double @fAddHandlerDouble(double %268, double %269), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %211, metadata !1087, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %261, metadata !1088, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !1089, metadata !DIExpression()), !dbg !1237
  store double %handler_result20, ptr %264, align 8, !dbg !1235, !tbaa !320
  %270 = add nuw i64 %261, 1, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %270, metadata !1057, metadata !DIExpression()), !dbg !1193
  %271 = icmp eq i64 %270, %8, !dbg !1219
  br i1 %271, label %272, label %260, !dbg !1220, !llvm.loop !1239

272:                                              ; preds = %260, %257
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1086, metadata !DIExpression()), !dbg !1241
  tail call void @llvm.dbg.value(metadata i64 %211, metadata !1087, metadata !DIExpression()), !dbg !1241
  tail call void @llvm.dbg.value(metadata i64 %212, metadata !1088, metadata !DIExpression()), !dbg !1241
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !1089, metadata !DIExpression()), !dbg !1241
  store double 0.000000e+00, ptr %219, align 8, !dbg !1243, !tbaa !320
  %273 = add nuw i64 %211, 1, !dbg !1244
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !916, metadata !DIExpression()), !dbg !960
  %274 = icmp eq i64 %273, %176, !dbg !1154
  br i1 %274, label %275, label %210, !dbg !1155, !llvm.loop !1245

275:                                              ; preds = %272, %174, %37, %19, %15
  %276 = phi i32 [ 20, %15 ], [ 19, %19 ], [ 19, %37 ], [ 0, %174 ], [ 0, %272 ], !dbg !1247
  ret i32 %276, !dbg !1248
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gsl_linalg_QRPT_rank(ptr noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !1249 {
  %3 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !1277
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1257, metadata !DIExpression(), metadata !1277, metadata ptr %3, metadata !DIExpression()), !dbg !1278
  %4 = alloca double, align 8, !DIAssignID !1279
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1267, metadata !DIExpression(), metadata !1279, metadata ptr %4, metadata !DIExpression()), !dbg !1280
  %5 = alloca double, align 8, !DIAssignID !1281
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1270, metadata !DIExpression(), metadata !1281, metadata ptr %5, metadata !DIExpression()), !dbg !1280
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1253, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata double %1, metadata !1254, metadata !DIExpression()), !dbg !1278
  %6 = load i64, ptr %0, align 8, !dbg !1282, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1255, metadata !DIExpression()), !dbg !1278
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1283
  %8 = load i64, ptr %7, align 8, !dbg !1283, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1256, metadata !DIExpression()), !dbg !1278
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6, !dbg !1284
  call void @gsl_matrix_const_diagonal(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %3, ptr noundef nonnull %0) #6, !dbg !1285
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1266, metadata !DIExpression()), !dbg !1278
  %9 = fcmp olt double %1, 0.000000e+00, !dbg !1286
  br i1 %9, label %10, label %25, !dbg !1287

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6, !dbg !1288
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6, !dbg !1288
  call void @gsl_vector_minmax(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !dbg !1289
  %11 = load double, ptr %4, align 8, !dbg !1290, !tbaa !320
  %12 = call double @llvm.fabs.f64(double %11), !dbg !1290
  %13 = load double, ptr %5, align 8, !dbg !1290, !tbaa !320
  %14 = call double @llvm.fabs.f64(double %13), !dbg !1290
  %15 = fcmp ogt double %12, %14, !dbg !1290
  %16 = select i1 %15, double %12, double %14, !dbg !1290
  tail call void @llvm.dbg.value(metadata double %16, metadata !1271, metadata !DIExpression()), !dbg !1280
  %handler_result = call double @callHandler(i32 12, double %16, double %16), !dbg !1291
  %17 = fdiv double %handler_result, 0x3FE62E42FEFA39EF, !dbg !1291
  %18 = fptosi double %17 to i32, !dbg !1292
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !1272, metadata !DIExpression()), !dbg !1280
  %19 = add i64 %8, %6, !dbg !1293
  %20 = uitofp i64 %19 to double, !dbg !1294
  %21 = fmul double %20, 2.000000e+01, !dbg !1295
  %22 = call double @ldexp(double 1.000000e+00, i32 %18) #6, !dbg !1296
  %23 = fmul double %21, %22, !dbg !1297
  %24 = fmul double %23, 0x3CB0000000000000, !dbg !1298
  tail call void @llvm.dbg.value(metadata double %24, metadata !1264, metadata !DIExpression()), !dbg !1278
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6, !dbg !1299
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6, !dbg !1299
  br label %25, !dbg !1300

25:                                               ; preds = %10, %2
  %26 = phi double [ %24, %10 ], [ %1, %2 ], !dbg !1301
  tail call void @llvm.dbg.value(metadata double %26, metadata !1264, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1265, metadata !DIExpression()), !dbg !1278
  %27 = call i64 @llvm.umin.i64(i64 %6, i64 %8)
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1265, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1266, metadata !DIExpression()), !dbg !1278
  %28 = icmp eq i64 %27, 0, !dbg !1302
  br i1 %28, label %73, label %29, !dbg !1303

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !314
  %32 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !316
  %34 = and i64 %27, 1, !dbg !1303
  %35 = icmp eq i64 %27, 1, !dbg !1303
  br i1 %35, label %60, label %36, !dbg !1303

36:                                               ; preds = %29
  %37 = and i64 %27, -2, !dbg !1303
  br label %38, !dbg !1303

38:                                               ; preds = %38, %36
  %39 = phi i64 [ 0, %36 ], [ %57, %38 ]
  %40 = phi i64 [ 0, %36 ], [ %56, %38 ]
  %41 = phi i64 [ 0, %36 ], [ %58, %38 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1265, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1266, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1304
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !334, metadata !DIExpression()), !dbg !1304
  %42 = mul i64 %33, %39, !dbg !1306
  %43 = getelementptr inbounds double, ptr %31, i64 %42, !dbg !1307
  %44 = load double, ptr %43, align 8, !dbg !1307, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %44, metadata !1273, metadata !DIExpression()), !dbg !1308
  %45 = call double @llvm.fabs.f64(double %44), !dbg !1309
  %46 = fcmp ogt double %45, %26, !dbg !1311
  %47 = zext i1 %46 to i64, !dbg !1312
  %48 = add i64 %40, %47, !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1266, metadata !DIExpression()), !dbg !1278
  %49 = or disjoint i64 %39, 1, !dbg !1313
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1265, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1265, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1266, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1304
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !334, metadata !DIExpression()), !dbg !1304
  %50 = mul i64 %33, %49, !dbg !1306
  %51 = getelementptr inbounds double, ptr %31, i64 %50, !dbg !1307
  %52 = load double, ptr %51, align 8, !dbg !1307, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %52, metadata !1273, metadata !DIExpression()), !dbg !1308
  %53 = call double @llvm.fabs.f64(double %52), !dbg !1309
  %54 = fcmp ogt double %53, %26, !dbg !1311
  %55 = zext i1 %54 to i64, !dbg !1312
  %56 = add i64 %48, %55, !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !1266, metadata !DIExpression()), !dbg !1278
  %57 = add nuw i64 %39, 2, !dbg !1313
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !1265, metadata !DIExpression()), !dbg !1278
  %58 = add i64 %41, 2, !dbg !1303
  %59 = icmp eq i64 %58, %37, !dbg !1303
  br i1 %59, label %60, label %38, !dbg !1303, !llvm.loop !1314

60:                                               ; preds = %38, %29
  %61 = phi i64 [ undef, %29 ], [ %56, %38 ]
  %62 = phi i64 [ 0, %29 ], [ %57, %38 ]
  %63 = phi i64 [ 0, %29 ], [ %56, %38 ]
  %64 = icmp eq i64 %34, 0, !dbg !1303
  br i1 %64, label %73, label %65, !dbg !1303

65:                                               ; preds = %60
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !1265, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !1266, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !327, metadata !DIExpression()), !dbg !1304
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !334, metadata !DIExpression()), !dbg !1304
  %66 = mul i64 %33, %62, !dbg !1306
  %67 = getelementptr inbounds double, ptr %31, i64 %66, !dbg !1307
  %68 = load double, ptr %67, align 8, !dbg !1307, !tbaa !320
  tail call void @llvm.dbg.value(metadata double %68, metadata !1273, metadata !DIExpression()), !dbg !1308
  %69 = call double @llvm.fabs.f64(double %68), !dbg !1309
  %70 = fcmp ogt double %69, %26, !dbg !1311
  %71 = zext i1 %70 to i64, !dbg !1312
  %72 = add i64 %63, %71, !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !1266, metadata !DIExpression()), !dbg !1278
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !1265, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1278
  br label %73, !dbg !1316

73:                                               ; preds = %65, %60, %25
  %74 = phi i64 [ 0, %25 ], [ %61, %60 ], [ %72, %65 ], !dbg !1278
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6, !dbg !1316
  ret i64 %74, !dbg !1317
}

declare !dbg !1318 void @gsl_matrix_const_diagonal(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef) local_unnamed_addr #2

declare !dbg !1321 void @gsl_vector_minmax(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1324 double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_QRPT_rcond(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !1325 {
  %4 = alloca %struct._gsl_matrix_const_view, align 8, !DIAssignID !1339
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1334, metadata !DIExpression(), metadata !1339, metadata ptr %4, metadata !DIExpression()), !dbg !1340
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1329, metadata !DIExpression()), !dbg !1341
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1330, metadata !DIExpression()), !dbg !1341
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1331, metadata !DIExpression()), !dbg !1341
  %5 = load i64, ptr %0, align 8, !dbg !1342, !tbaa !261
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1332, metadata !DIExpression()), !dbg !1341
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1343
  %7 = load i64, ptr %6, align 8, !dbg !1343, !tbaa !269
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1333, metadata !DIExpression()), !dbg !1341
  %8 = icmp ult i64 %5, %7, !dbg !1344
  br i1 %8, label %9, label %10, !dbg !1345

9:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 628, i32 noundef 19) #6, !dbg !1346
  br label %17, !dbg !1346

10:                                               ; preds = %3
  %11 = load i64, ptr %2, align 8, !dbg !1349, !tbaa !271
  %12 = mul i64 %7, 3, !dbg !1350
  %13 = icmp eq i64 %11, %12, !dbg !1351
  br i1 %13, label %15, label %14, !dbg !1352

14:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 632, i32 noundef 19) #6, !dbg !1353
  br label %17, !dbg !1353

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #6, !dbg !1356
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %7, i64 noundef %7) #6, !dbg !1357
  %16 = call i32 @gsl_linalg_tri_upper_rcond(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %2) #6, !dbg !1358
  tail call void @llvm.dbg.value(metadata i32 %16, metadata !1338, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #6, !dbg !1359
  br label %17

17:                                               ; preds = %15, %14, %9
  %18 = phi i32 [ 19, %9 ], [ 19, %14 ], [ %16, %15 ], !dbg !1360
  ret i32 %18, !dbg !1361
}

declare !dbg !1362 i32 @gsl_linalg_tri_upper_rcond(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nofree willreturn
declare double @ldexp(double, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree willreturn }
attributes #6 = { nounwind }

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
!423 = !DILocation(line: 166, column: 33, scope: !419)
!424 = !DILocation(line: 166, column: 31, scope: !419)
!425 = !DILocation(line: 0, scope: !419)
!426 = !DILocation(line: 170, column: 35, scope: !247)
!427 = !DILocation(line: 170, column: 27, scope: !247)
!428 = !DILocation(line: 170, column: 40, scope: !247)
!429 = !DILocation(line: 170, column: 27, scope: !242)
!430 = !DILocation(line: 172, column: 27, scope: !246)
!431 = !DILocation(line: 172, column: 52, scope: !246)
!432 = !DILocation(line: 173, column: 27, scope: !246)
!433 = !DILocation(line: 174, column: 29, scope: !246)
!434 = !DILocation(line: 176, column: 31, scope: !246)
!435 = !DILocation(line: 177, column: 25, scope: !247)
!436 = !DILocation(line: 177, column: 25, scope: !246)
!437 = !DILocation(line: 0, scope: !305, inlinedAt: !438)
!438 = distinct !DILocation(line: 179, column: 23, scope: !242)
!439 = !DILocation(line: 196, column: 6, scope: !305, inlinedAt: !438)
!440 = !DILocation(line: 196, column: 18, scope: !305, inlinedAt: !438)
!441 = !DILocation(line: 196, column: 13, scope: !305, inlinedAt: !438)
!442 = !DILocation(line: 196, column: 3, scope: !305, inlinedAt: !438)
!443 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !438)
!444 = !DILocation(line: 180, column: 21, scope: !242)
!445 = !DILocation(line: 154, column: 39, scope: !237)
!446 = !DILocation(line: 154, column: 33, scope: !237)
!447 = distinct !{!447, !392, !448, !326}
!448 = !DILocation(line: 181, column: 17, scope: !238)
!449 = distinct !{!449, !300, !450, !326}
!450 = !DILocation(line: 183, column: 9, scope: !216)
!451 = !DILocation(line: 0, scope: !202)
!452 = !DILocation(line: 187, column: 1, scope: !145)
!453 = !DISubprogram(name: "gsl_error", scope: !81, file: !81, line: 77, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !456, !456, !82, !82}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!458 = !DISubprogram(name: "gsl_permutation_init", scope: !182, file: !182, line: 51, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !180}
!461 = !DISubprogram(name: "gsl_matrix_column", scope: !150, file: !150, line: 109, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!462 = !DISubroutineType(types: !463)
!463 = !{!208, !148, !196}
!464 = !DISubprogram(name: "gsl_blas_dnrm2", scope: !465, file: !465, line: 91, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!466 = !DISubroutineType(types: !467)
!467 = !{!135, !331}
!468 = !DISubprogram(name: "gsl_matrix_swap_columns", scope: !150, file: !150, line: 222, type: !469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = !DISubroutineType(types: !470)
!470 = !{!82, !148, !196, !196}
!471 = !DISubprogram(name: "gsl_permutation_swap", scope: !182, file: !182, line: 63, type: !472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!472 = !DISubroutineType(types: !473)
!473 = !{!82, !180, !196, !196}
!474 = !DISubprogram(name: "gsl_vector_swap_elements", scope: !172, file: !172, line: 141, type: !475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!475 = !DISubroutineType(types: !476)
!476 = !{!82, !170, !196, !196}
!477 = !DISubprogram(name: "gsl_vector_subvector", scope: !172, file: !172, line: 103, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!478 = !DISubroutineType(types: !479)
!479 = !{!208, !170, !154, !154}
!480 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !481, file: !481, line: 94, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!481 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!482 = !DISubroutineType(types: !483)
!483 = !{!135, !170}
!484 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !150, file: !150, line: 101, type: !485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!485 = !DISubroutineType(types: !486)
!486 = !{!231, !148, !196, !196, !196, !196}
!487 = !DISubprogram(name: "gsl_linalg_householder_hm", scope: !481, file: !481, line: 97, type: !488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!488 = !DISubroutineType(types: !489)
!489 = !{!82, !135, !331, !148}
!490 = !DISubprogram(name: "sqrt", scope: !491, file: !491, line: 143, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!491 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!492 = !DISubroutineType(types: !493)
!493 = !{!135, !135}
!494 = distinct !DISubprogram(name: "gsl_linalg_QRPT_decomp2", scope: !2, file: !2, line: 190, type: !495, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !497)
!495 = !DISubroutineType(types: !496)
!496 = !{!82, !404, !148, !148, !170, !180, !188, !170}
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506}
!498 = !DILocalVariable(name: "A", arg: 1, scope: !494, file: !2, line: 190, type: !404)
!499 = !DILocalVariable(name: "q", arg: 2, scope: !494, file: !2, line: 190, type: !148)
!500 = !DILocalVariable(name: "r", arg: 3, scope: !494, file: !2, line: 190, type: !148)
!501 = !DILocalVariable(name: "tau", arg: 4, scope: !494, file: !2, line: 190, type: !170)
!502 = !DILocalVariable(name: "p", arg: 5, scope: !494, file: !2, line: 190, type: !180)
!503 = !DILocalVariable(name: "signum", arg: 6, scope: !494, file: !2, line: 190, type: !188)
!504 = !DILocalVariable(name: "norm", arg: 7, scope: !494, file: !2, line: 190, type: !170)
!505 = !DILocalVariable(name: "M", scope: !494, file: !2, line: 192, type: !196)
!506 = !DILocalVariable(name: "N", scope: !494, file: !2, line: 193, type: !196)
!507 = !DILocation(line: 0, scope: !494)
!508 = !DILocation(line: 192, column: 23, scope: !494)
!509 = !DILocation(line: 193, column: 23, scope: !494)
!510 = !DILocation(line: 195, column: 10, scope: !511)
!511 = distinct !DILexicalBlock(scope: !494, file: !2, line: 195, column: 7)
!512 = !DILocation(line: 195, column: 16, scope: !511)
!513 = !DILocation(line: 195, column: 21, scope: !511)
!514 = !DILocation(line: 195, column: 27, scope: !511)
!515 = !DILocation(line: 195, column: 33, scope: !511)
!516 = !DILocation(line: 195, column: 7, scope: !494)
!517 = !DILocation(line: 197, column: 7, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !2, line: 197, column: 7)
!519 = distinct !DILexicalBlock(scope: !511, file: !2, line: 196, column: 5)
!520 = !DILocation(line: 199, column: 15, scope: !521)
!521 = distinct !DILexicalBlock(scope: !511, file: !2, line: 199, column: 12)
!522 = !DILocation(line: 199, column: 21, scope: !521)
!523 = !DILocation(line: 199, column: 26, scope: !521)
!524 = !DILocation(line: 199, column: 32, scope: !521)
!525 = !DILocation(line: 199, column: 38, scope: !521)
!526 = !DILocation(line: 199, column: 12, scope: !511)
!527 = !DILocation(line: 201, column: 7, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !2, line: 201, column: 7)
!529 = distinct !DILexicalBlock(scope: !521, file: !2, line: 200, column: 5)
!530 = !DILocation(line: 203, column: 17, scope: !531)
!531 = distinct !DILexicalBlock(scope: !521, file: !2, line: 203, column: 12)
!532 = !DILocation(line: 203, column: 25, scope: !531)
!533 = !DILocation(line: 203, column: 22, scope: !531)
!534 = !DILocation(line: 203, column: 12, scope: !521)
!535 = !DILocation(line: 205, column: 7, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !2, line: 205, column: 7)
!537 = distinct !DILexicalBlock(scope: !531, file: !2, line: 204, column: 5)
!538 = !DILocation(line: 207, column: 15, scope: !539)
!539 = distinct !DILexicalBlock(scope: !531, file: !2, line: 207, column: 12)
!540 = !DILocation(line: 207, column: 20, scope: !539)
!541 = !DILocation(line: 207, column: 12, scope: !531)
!542 = !DILocation(line: 209, column: 7, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !2, line: 209, column: 7)
!544 = distinct !DILexicalBlock(scope: !539, file: !2, line: 208, column: 5)
!545 = !DILocation(line: 211, column: 18, scope: !546)
!546 = distinct !DILexicalBlock(scope: !539, file: !2, line: 211, column: 12)
!547 = !DILocation(line: 211, column: 23, scope: !546)
!548 = !DILocation(line: 211, column: 12, scope: !539)
!549 = !DILocation(line: 213, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !2, line: 213, column: 7)
!551 = distinct !DILexicalBlock(scope: !546, file: !2, line: 212, column: 5)
!552 = !DILocation(line: 216, column: 3, scope: !494)
!553 = !DILocation(line: 218, column: 3, scope: !494)
!554 = !{i32 0, i32 20}
!555 = !DILocation(line: 222, column: 3, scope: !494)
!556 = !DILocation(line: 224, column: 3, scope: !494)
!557 = !DILocation(line: 225, column: 1, scope: !494)
!558 = !DISubprogram(name: "gsl_matrix_memcpy", scope: !150, file: !150, line: 217, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DISubroutineType(types: !560)
!560 = !{!82, !148, !404}
!561 = !DISubprogram(name: "gsl_linalg_QR_unpack", scope: !481, file: !481, line: 290, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DISubroutineType(types: !563)
!563 = !{!82, !404, !331, !148, !148}
!564 = distinct !DISubprogram(name: "gsl_linalg_QRPT_solve", scope: !2, file: !2, line: 237, type: !565, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !569)
!565 = !DISubroutineType(types: !566)
!566 = !{!82, !404, !331, !567, !331, !170}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!569 = !{!570, !571, !572, !573, !574}
!570 = !DILocalVariable(name: "QR", arg: 1, scope: !564, file: !2, line: 237, type: !404)
!571 = !DILocalVariable(name: "tau", arg: 2, scope: !564, file: !2, line: 238, type: !331)
!572 = !DILocalVariable(name: "p", arg: 3, scope: !564, file: !2, line: 239, type: !567)
!573 = !DILocalVariable(name: "b", arg: 4, scope: !564, file: !2, line: 240, type: !331)
!574 = !DILocalVariable(name: "x", arg: 5, scope: !564, file: !2, line: 241, type: !170)
!575 = !DILocation(line: 0, scope: !564)
!576 = !DILocation(line: 243, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !564, file: !2, line: 243, column: 7)
!578 = !DILocation(line: 243, column: 24, scope: !577)
!579 = !DILocation(line: 243, column: 17, scope: !577)
!580 = !DILocation(line: 243, column: 7, scope: !564)
!581 = !DILocation(line: 245, column: 7, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !2, line: 245, column: 7)
!583 = distinct !DILexicalBlock(scope: !577, file: !2, line: 244, column: 5)
!584 = !DILocation(line: 247, column: 28, scope: !585)
!585 = distinct !DILexicalBlock(scope: !577, file: !2, line: 247, column: 12)
!586 = !DILocation(line: 247, column: 22, scope: !585)
!587 = !DILocation(line: 247, column: 12, scope: !577)
!588 = !DILocation(line: 249, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !2, line: 249, column: 7)
!590 = distinct !DILexicalBlock(scope: !585, file: !2, line: 248, column: 5)
!591 = !DILocation(line: 251, column: 28, scope: !592)
!592 = distinct !DILexicalBlock(scope: !585, file: !2, line: 251, column: 12)
!593 = !DILocation(line: 251, column: 22, scope: !592)
!594 = !DILocation(line: 251, column: 12, scope: !585)
!595 = !DILocation(line: 253, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !2, line: 253, column: 7)
!597 = distinct !DILexicalBlock(scope: !592, file: !2, line: 252, column: 5)
!598 = !DILocation(line: 255, column: 28, scope: !599)
!599 = distinct !DILexicalBlock(scope: !592, file: !2, line: 255, column: 12)
!600 = !DILocation(line: 255, column: 22, scope: !599)
!601 = !DILocation(line: 255, column: 12, scope: !592)
!602 = !DILocation(line: 257, column: 7, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 257, column: 7)
!604 = distinct !DILexicalBlock(scope: !599, file: !2, line: 256, column: 5)
!605 = !DILocation(line: 261, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !599, file: !2, line: 260, column: 5)
!607 = !DILocation(line: 263, column: 7, scope: !606)
!608 = !{i32 0, i32 21}
!609 = !DILocation(line: 265, column: 7, scope: !606)
!610 = !DILocation(line: 0, scope: !577)
!611 = !DILocation(line: 267, column: 1, scope: !564)
!612 = !DISubprogram(name: "gsl_vector_memcpy", scope: !172, file: !172, line: 136, type: !613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!613 = !DISubroutineType(types: !614)
!614 = !{!82, !170, !331}
!615 = distinct !DISubprogram(name: "gsl_linalg_QRPT_svx", scope: !2, file: !2, line: 270, type: !616, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{!82, !404, !331, !567, !170}
!618 = !{!619, !620, !621, !622}
!619 = !DILocalVariable(name: "QR", arg: 1, scope: !615, file: !2, line: 270, type: !404)
!620 = !DILocalVariable(name: "tau", arg: 2, scope: !615, file: !2, line: 271, type: !331)
!621 = !DILocalVariable(name: "p", arg: 3, scope: !615, file: !2, line: 272, type: !567)
!622 = !DILocalVariable(name: "x", arg: 4, scope: !615, file: !2, line: 273, type: !170)
!623 = !DILocation(line: 0, scope: !615)
!624 = !DILocation(line: 275, column: 11, scope: !625)
!625 = distinct !DILexicalBlock(scope: !615, file: !2, line: 275, column: 7)
!626 = !DILocation(line: 275, column: 24, scope: !625)
!627 = !DILocation(line: 275, column: 17, scope: !625)
!628 = !DILocation(line: 275, column: 7, scope: !615)
!629 = !DILocation(line: 277, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !2, line: 277, column: 7)
!631 = distinct !DILexicalBlock(scope: !625, file: !2, line: 276, column: 5)
!632 = !DILocation(line: 279, column: 28, scope: !633)
!633 = distinct !DILexicalBlock(scope: !625, file: !2, line: 279, column: 12)
!634 = !DILocation(line: 279, column: 22, scope: !633)
!635 = !DILocation(line: 279, column: 12, scope: !625)
!636 = !DILocation(line: 281, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !2, line: 281, column: 7)
!638 = distinct !DILexicalBlock(scope: !633, file: !2, line: 280, column: 5)
!639 = !DILocation(line: 283, column: 28, scope: !640)
!640 = distinct !DILexicalBlock(scope: !633, file: !2, line: 283, column: 12)
!641 = !DILocation(line: 283, column: 22, scope: !640)
!642 = !DILocation(line: 283, column: 12, scope: !633)
!643 = !DILocation(line: 285, column: 7, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !2, line: 285, column: 7)
!645 = distinct !DILexicalBlock(scope: !640, file: !2, line: 284, column: 5)
!646 = !DILocation(line: 291, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !640, file: !2, line: 288, column: 5)
!648 = !DILocation(line: 295, column: 7, scope: !647)
!649 = !DILocation(line: 297, column: 7, scope: !647)
!650 = !DILocation(line: 299, column: 7, scope: !647)
!651 = !DILocation(line: 0, scope: !625)
!652 = !DILocation(line: 301, column: 1, scope: !615)
!653 = !DISubprogram(name: "gsl_linalg_QR_QTvec", scope: !481, file: !481, line: 274, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!654 = !DISubroutineType(types: !655)
!655 = !{!82, !404, !331, !170}
!656 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !465, file: !465, line: 217, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!657 = !DISubroutineType(types: !658)
!658 = !{!82, !659, !661, !662, !404, !170}
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !660, line: 45, baseType: !119)
!660 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !660, line: 44, baseType: !125)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !660, line: 46, baseType: !130)
!663 = !DISubprogram(name: "gsl_permute_vector_inverse", scope: !664, file: !664, line: 41, type: !665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!664 = !DIFile(filename: "../gsl/gsl_permute_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "05dfc9fcd9b4e47246745becff796730")
!665 = !DISubroutineType(types: !666)
!666 = !{!82, !567, !170}
!667 = distinct !DISubprogram(name: "gsl_linalg_QRPT_lssolve", scope: !2, file: !2, line: 312, type: !668, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !670)
!668 = !DISubroutineType(types: !669)
!669 = !{!82, !404, !331, !567, !331, !170, !170}
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678}
!671 = !DILocalVariable(name: "QR", arg: 1, scope: !667, file: !2, line: 312, type: !404)
!672 = !DILocalVariable(name: "tau", arg: 2, scope: !667, file: !2, line: 312, type: !331)
!673 = !DILocalVariable(name: "p", arg: 3, scope: !667, file: !2, line: 312, type: !567)
!674 = !DILocalVariable(name: "b", arg: 4, scope: !667, file: !2, line: 313, type: !331)
!675 = !DILocalVariable(name: "x", arg: 5, scope: !667, file: !2, line: 313, type: !170)
!676 = !DILocalVariable(name: "residual", arg: 6, scope: !667, file: !2, line: 313, type: !170)
!677 = !DILocalVariable(name: "N", scope: !667, file: !2, line: 315, type: !196)
!678 = !DILocalVariable(name: "status", scope: !667, file: !2, line: 316, type: !82)
!679 = !DILocation(line: 0, scope: !667)
!680 = !DILocation(line: 315, column: 24, scope: !667)
!681 = !DILocation(line: 316, column: 16, scope: !667)
!682 = !DILocation(line: 317, column: 3, scope: !667)
!683 = distinct !DISubprogram(name: "gsl_linalg_QRPT_lssolve2", scope: !2, file: !2, line: 329, type: !684, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!82, !404, !331, !567, !331, !196, !170, !170}
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !709, !710, !711}
!687 = !DILocalVariable(name: "QR", arg: 1, scope: !683, file: !2, line: 329, type: !404)
!688 = !DILocalVariable(name: "tau", arg: 2, scope: !683, file: !2, line: 329, type: !331)
!689 = !DILocalVariable(name: "p", arg: 3, scope: !683, file: !2, line: 329, type: !567)
!690 = !DILocalVariable(name: "b", arg: 4, scope: !683, file: !2, line: 330, type: !331)
!691 = !DILocalVariable(name: "rank", arg: 5, scope: !683, file: !2, line: 330, type: !196)
!692 = !DILocalVariable(name: "x", arg: 6, scope: !683, file: !2, line: 330, type: !170)
!693 = !DILocalVariable(name: "residual", arg: 7, scope: !683, file: !2, line: 330, type: !170)
!694 = !DILocalVariable(name: "M", scope: !683, file: !2, line: 332, type: !196)
!695 = !DILocalVariable(name: "N", scope: !683, file: !2, line: 333, type: !196)
!696 = !DILocalVariable(name: "R11", scope: !697, file: !2, line: 357, type: !703)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 356, column: 5)
!698 = distinct !DILexicalBlock(scope: !699, file: !2, line: 351, column: 12)
!699 = distinct !DILexicalBlock(scope: !700, file: !2, line: 347, column: 12)
!700 = distinct !DILexicalBlock(scope: !701, file: !2, line: 343, column: 12)
!701 = distinct !DILexicalBlock(scope: !702, file: !2, line: 339, column: 12)
!702 = distinct !DILexicalBlock(scope: !683, file: !2, line: 335, column: 7)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_const_view", file: !150, line: 64, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_const_view", file: !150, line: 62, baseType: !706)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 59, size: 384, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !706, file: !150, line: 61, baseType: !149, size: 384)
!709 = !DILocalVariable(name: "QTb1", scope: !697, file: !2, line: 358, type: !207)
!710 = !DILocalVariable(name: "x1", scope: !697, file: !2, line: 359, type: !207)
!711 = !DILocalVariable(name: "i", scope: !697, file: !2, line: 360, type: !154)
!712 = distinct !DIAssignID()
!713 = !DILocation(line: 0, scope: !697)
!714 = distinct !DIAssignID()
!715 = distinct !DIAssignID()
!716 = !DILocation(line: 0, scope: !683)
!717 = !DILocation(line: 332, column: 24, scope: !683)
!718 = !DILocation(line: 333, column: 24, scope: !683)
!719 = !DILocation(line: 335, column: 9, scope: !702)
!720 = !DILocation(line: 335, column: 7, scope: !683)
!721 = !DILocation(line: 337, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !2, line: 337, column: 7)
!723 = distinct !DILexicalBlock(scope: !702, file: !2, line: 336, column: 5)
!724 = !DILocation(line: 339, column: 20, scope: !701)
!725 = !DILocation(line: 339, column: 14, scope: !701)
!726 = !DILocation(line: 339, column: 12, scope: !702)
!727 = !DILocation(line: 341, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !2, line: 341, column: 7)
!729 = distinct !DILexicalBlock(scope: !701, file: !2, line: 340, column: 5)
!730 = !DILocation(line: 343, column: 22, scope: !700)
!731 = !DILocation(line: 345, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !2, line: 345, column: 7)
!733 = distinct !DILexicalBlock(scope: !700, file: !2, line: 344, column: 5)
!734 = !DILocation(line: 347, column: 20, scope: !699)
!735 = !DILocation(line: 347, column: 14, scope: !699)
!736 = !DILocation(line: 347, column: 12, scope: !700)
!737 = !DILocation(line: 349, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !2, line: 349, column: 7)
!739 = distinct !DILexicalBlock(scope: !699, file: !2, line: 348, column: 5)
!740 = !DILocation(line: 351, column: 27, scope: !698)
!741 = !DILocation(line: 351, column: 14, scope: !698)
!742 = !DILocation(line: 351, column: 12, scope: !699)
!743 = !DILocation(line: 353, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !2, line: 353, column: 7)
!745 = distinct !DILexicalBlock(scope: !698, file: !2, line: 352, column: 5)
!746 = !DILocation(line: 357, column: 7, scope: !697)
!747 = !DILocation(line: 357, column: 35, scope: !697)
!748 = !DILocation(line: 358, column: 7, scope: !697)
!749 = !DILocation(line: 358, column: 30, scope: !697)
!750 = !DILocation(line: 359, column: 7, scope: !697)
!751 = !DILocation(line: 359, column: 28, scope: !697)
!752 = !DILocation(line: 363, column: 7, scope: !697)
!753 = !DILocation(line: 364, column: 7, scope: !697)
!754 = !DILocation(line: 367, column: 7, scope: !697)
!755 = !DILocation(line: 368, column: 7, scope: !697)
!756 = !DILocation(line: 371, column: 24, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !2, line: 371, column: 7)
!758 = distinct !DILexicalBlock(scope: !697, file: !2, line: 371, column: 7)
!759 = !DILocation(line: 371, column: 7, scope: !758)
!760 = !DILocation(line: 0, scope: !305, inlinedAt: !761)
!761 = distinct !DILocation(line: 372, column: 9, scope: !757)
!762 = !DILocation(line: 196, column: 13, scope: !305, inlinedAt: !761)
!763 = !DILocation(line: 196, column: 3, scope: !305, inlinedAt: !761)
!764 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !761)
!765 = !DILocation(line: 371, column: 29, scope: !757)
!766 = distinct !{!766, !767}
!767 = !{!"llvm.loop.unroll.disable"}
!768 = distinct !{!768, !759, !769, !326}
!769 = !DILocation(line: 372, column: 33, scope: !758)
!770 = !DILocation(line: 375, column: 7, scope: !697)
!771 = !DILocation(line: 378, column: 7, scope: !697)
!772 = !DILocation(line: 379, column: 7, scope: !697)
!773 = !DILocation(line: 382, column: 5, scope: !698)
!774 = !DILocation(line: 0, scope: !702)
!775 = !DILocation(line: 383, column: 1, scope: !683)
!776 = !DISubprogram(name: "gsl_matrix_const_submatrix", scope: !150, file: !150, line: 153, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!777 = !DISubroutineType(types: !778)
!778 = !{!705, !404, !196, !196, !196, !196}
!779 = !DISubprogram(name: "gsl_vector_set_zero", scope: !172, file: !172, line: 126, type: !780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!780 = !DISubroutineType(types: !781)
!781 = !{null, !170}
!782 = !DISubprogram(name: "gsl_linalg_QR_Qvec", scope: !481, file: !481, line: 278, type: !654, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!783 = distinct !DISubprogram(name: "gsl_linalg_QRPT_QRsolve", scope: !2, file: !2, line: 386, type: !784, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !786)
!784 = !DISubroutineType(types: !785)
!785 = !{!82, !404, !404, !567, !331, !170}
!786 = !{!787, !788, !789, !790, !791}
!787 = !DILocalVariable(name: "Q", arg: 1, scope: !783, file: !2, line: 386, type: !404)
!788 = !DILocalVariable(name: "R", arg: 2, scope: !783, file: !2, line: 386, type: !404)
!789 = !DILocalVariable(name: "p", arg: 3, scope: !783, file: !2, line: 387, type: !567)
!790 = !DILocalVariable(name: "b", arg: 4, scope: !783, file: !2, line: 388, type: !331)
!791 = !DILocalVariable(name: "x", arg: 5, scope: !783, file: !2, line: 389, type: !170)
!792 = !DILocation(line: 0, scope: !783)
!793 = !DILocation(line: 391, column: 10, scope: !794)
!794 = distinct !DILexicalBlock(scope: !783, file: !2, line: 391, column: 7)
!795 = !DILocation(line: 391, column: 22, scope: !794)
!796 = !DILocation(line: 391, column: 16, scope: !794)
!797 = !DILocation(line: 391, column: 28, scope: !794)
!798 = !DILocation(line: 391, column: 34, scope: !794)
!799 = !DILocation(line: 391, column: 46, scope: !794)
!800 = !DILocation(line: 391, column: 40, scope: !794)
!801 = !DILocation(line: 391, column: 7, scope: !783)
!802 = !DILocation(line: 395, column: 27, scope: !803)
!803 = distinct !DILexicalBlock(scope: !794, file: !2, line: 395, column: 12)
!804 = !DILocation(line: 395, column: 21, scope: !803)
!805 = !DILocation(line: 395, column: 32, scope: !803)
!806 = !DILocation(line: 396, column: 30, scope: !803)
!807 = !DILocation(line: 396, column: 24, scope: !803)
!808 = !DILocation(line: 395, column: 12, scope: !794)
!809 = !DILocation(line: 404, column: 7, scope: !810)
!810 = distinct !DILexicalBlock(scope: !803, file: !2, line: 401, column: 5)
!811 = !DILocation(line: 408, column: 7, scope: !810)
!812 = !DILocation(line: 412, column: 7, scope: !810)
!813 = !DILocation(line: 414, column: 7, scope: !810)
!814 = !DILocation(line: 0, scope: !794)
!815 = !DILocation(line: 416, column: 1, scope: !783)
!816 = !DISubprogram(name: "gsl_blas_dgemv", scope: !465, file: !465, line: 205, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DISubroutineType(types: !818)
!818 = !{!82, !661, !135, !404, !331, !135, !170}
!819 = distinct !DISubprogram(name: "gsl_linalg_QRPT_Rsolve", scope: !2, file: !2, line: 419, type: !820, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!82, !404, !567, !331, !170}
!822 = !{!823, !824, !825, !826}
!823 = !DILocalVariable(name: "QR", arg: 1, scope: !819, file: !2, line: 419, type: !404)
!824 = !DILocalVariable(name: "p", arg: 2, scope: !819, file: !2, line: 420, type: !567)
!825 = !DILocalVariable(name: "b", arg: 3, scope: !819, file: !2, line: 421, type: !331)
!826 = !DILocalVariable(name: "x", arg: 4, scope: !819, file: !2, line: 422, type: !170)
!827 = !DILocation(line: 0, scope: !819)
!828 = !DILocation(line: 424, column: 11, scope: !829)
!829 = distinct !DILexicalBlock(scope: !819, file: !2, line: 424, column: 7)
!830 = !DILocation(line: 424, column: 24, scope: !829)
!831 = !DILocation(line: 424, column: 17, scope: !829)
!832 = !DILocation(line: 424, column: 7, scope: !819)
!833 = !DILocation(line: 426, column: 7, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !2, line: 426, column: 7)
!835 = distinct !DILexicalBlock(scope: !829, file: !2, line: 425, column: 5)
!836 = !DILocation(line: 428, column: 28, scope: !837)
!837 = distinct !DILexicalBlock(scope: !829, file: !2, line: 428, column: 12)
!838 = !DILocation(line: 428, column: 22, scope: !837)
!839 = !DILocation(line: 428, column: 12, scope: !829)
!840 = !DILocation(line: 430, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !2, line: 430, column: 7)
!842 = distinct !DILexicalBlock(scope: !837, file: !2, line: 429, column: 5)
!843 = !DILocation(line: 432, column: 28, scope: !844)
!844 = distinct !DILexicalBlock(scope: !837, file: !2, line: 432, column: 12)
!845 = !DILocation(line: 432, column: 22, scope: !844)
!846 = !DILocation(line: 432, column: 12, scope: !837)
!847 = !DILocation(line: 434, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !2, line: 434, column: 7)
!849 = distinct !DILexicalBlock(scope: !844, file: !2, line: 433, column: 5)
!850 = !DILocation(line: 436, column: 15, scope: !851)
!851 = distinct !DILexicalBlock(scope: !844, file: !2, line: 436, column: 12)
!852 = !DILocation(line: 436, column: 20, scope: !851)
!853 = !DILocation(line: 436, column: 12, scope: !844)
!854 = !DILocation(line: 438, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !2, line: 438, column: 7)
!856 = distinct !DILexicalBlock(scope: !851, file: !2, line: 437, column: 5)
!857 = !DILocation(line: 444, column: 7, scope: !858)
!858 = distinct !DILexicalBlock(scope: !851, file: !2, line: 441, column: 5)
!859 = !DILocation(line: 448, column: 7, scope: !858)
!860 = !DILocation(line: 450, column: 7, scope: !858)
!861 = !DILocation(line: 452, column: 7, scope: !858)
!862 = !DILocation(line: 0, scope: !829)
!863 = !DILocation(line: 454, column: 1, scope: !819)
!864 = distinct !DISubprogram(name: "gsl_linalg_QRPT_Rsvx", scope: !2, file: !2, line: 458, type: !865, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !867)
!865 = !DISubroutineType(types: !866)
!866 = !{!82, !404, !567, !170}
!867 = !{!868, !869, !870}
!868 = !DILocalVariable(name: "QR", arg: 1, scope: !864, file: !2, line: 458, type: !404)
!869 = !DILocalVariable(name: "p", arg: 2, scope: !864, file: !2, line: 459, type: !567)
!870 = !DILocalVariable(name: "x", arg: 3, scope: !864, file: !2, line: 460, type: !170)
!871 = !DILocation(line: 0, scope: !864)
!872 = !DILocation(line: 462, column: 11, scope: !873)
!873 = distinct !DILexicalBlock(scope: !864, file: !2, line: 462, column: 7)
!874 = !DILocation(line: 462, column: 24, scope: !873)
!875 = !DILocation(line: 462, column: 17, scope: !873)
!876 = !DILocation(line: 462, column: 7, scope: !864)
!877 = !DILocation(line: 464, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !2, line: 464, column: 7)
!879 = distinct !DILexicalBlock(scope: !873, file: !2, line: 463, column: 5)
!880 = !DILocation(line: 466, column: 28, scope: !881)
!881 = distinct !DILexicalBlock(scope: !873, file: !2, line: 466, column: 12)
!882 = !DILocation(line: 466, column: 22, scope: !881)
!883 = !DILocation(line: 466, column: 12, scope: !873)
!884 = !DILocation(line: 468, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !2, line: 468, column: 7)
!886 = distinct !DILexicalBlock(scope: !881, file: !2, line: 467, column: 5)
!887 = !DILocation(line: 470, column: 15, scope: !888)
!888 = distinct !DILexicalBlock(scope: !881, file: !2, line: 470, column: 12)
!889 = !DILocation(line: 470, column: 20, scope: !888)
!890 = !DILocation(line: 470, column: 12, scope: !881)
!891 = !DILocation(line: 472, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !2, line: 472, column: 7)
!893 = distinct !DILexicalBlock(scope: !888, file: !2, line: 471, column: 5)
!894 = !DILocation(line: 478, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !888, file: !2, line: 475, column: 5)
!896 = !DILocation(line: 480, column: 7, scope: !895)
!897 = !DILocation(line: 482, column: 7, scope: !895)
!898 = !DILocation(line: 0, scope: !873)
!899 = !DILocation(line: 484, column: 1, scope: !864)
!900 = distinct !DISubprogram(name: "gsl_linalg_QRPT_update", scope: !2, file: !2, line: 500, type: !901, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !903)
!901 = !DISubroutineType(types: !902)
!902 = !{!82, !148, !148, !567, !170, !331}
!903 = !{!904, !905, !906, !907, !908, !909, !910, !911, !916, !917, !918, !922, !923, !924, !925, !929, !930, !931, !935, !936, !937}
!904 = !DILocalVariable(name: "Q", arg: 1, scope: !900, file: !2, line: 500, type: !148)
!905 = !DILocalVariable(name: "R", arg: 2, scope: !900, file: !2, line: 500, type: !148)
!906 = !DILocalVariable(name: "p", arg: 3, scope: !900, file: !2, line: 501, type: !567)
!907 = !DILocalVariable(name: "w", arg: 4, scope: !900, file: !2, line: 502, type: !170)
!908 = !DILocalVariable(name: "v", arg: 5, scope: !900, file: !2, line: 502, type: !331)
!909 = !DILocalVariable(name: "M", scope: !900, file: !2, line: 504, type: !196)
!910 = !DILocalVariable(name: "N", scope: !900, file: !2, line: 505, type: !196)
!911 = !DILocalVariable(name: "j", scope: !912, file: !2, line: 521, type: !154)
!912 = distinct !DILexicalBlock(scope: !913, file: !2, line: 520, column: 5)
!913 = distinct !DILexicalBlock(scope: !914, file: !2, line: 515, column: 12)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 511, column: 12)
!915 = distinct !DILexicalBlock(scope: !900, file: !2, line: 507, column: 7)
!916 = !DILocalVariable(name: "k", scope: !912, file: !2, line: 521, type: !154)
!917 = !DILocalVariable(name: "w0", scope: !912, file: !2, line: 522, type: !135)
!918 = !DILocalVariable(name: "c", scope: !919, file: !2, line: 533, type: !135)
!919 = distinct !DILexicalBlock(scope: !920, file: !2, line: 532, column: 9)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 531, column: 7)
!921 = distinct !DILexicalBlock(scope: !912, file: !2, line: 531, column: 7)
!922 = !DILocalVariable(name: "s", scope: !919, file: !2, line: 533, type: !135)
!923 = !DILocalVariable(name: "wk", scope: !919, file: !2, line: 534, type: !135)
!924 = !DILocalVariable(name: "wkm1", scope: !919, file: !2, line: 535, type: !135)
!925 = !DILocalVariable(name: "r0j", scope: !926, file: !2, line: 548, type: !135)
!926 = distinct !DILexicalBlock(scope: !927, file: !2, line: 547, column: 9)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 546, column: 7)
!928 = distinct !DILexicalBlock(scope: !912, file: !2, line: 546, column: 7)
!929 = !DILocalVariable(name: "p_j", scope: !926, file: !2, line: 549, type: !154)
!930 = !DILocalVariable(name: "vj", scope: !926, file: !2, line: 550, type: !135)
!931 = !DILocalVariable(name: "c", scope: !932, file: !2, line: 559, type: !135)
!932 = distinct !DILexicalBlock(scope: !933, file: !2, line: 558, column: 9)
!933 = distinct !DILexicalBlock(scope: !934, file: !2, line: 557, column: 6)
!934 = distinct !DILexicalBlock(scope: !912, file: !2, line: 557, column: 6)
!935 = !DILocalVariable(name: "s", scope: !932, file: !2, line: 559, type: !135)
!936 = !DILocalVariable(name: "diag", scope: !932, file: !2, line: 560, type: !135)
!937 = !DILocalVariable(name: "offdiag", scope: !932, file: !2, line: 561, type: !135)
!938 = !DILocation(line: 0, scope: !900)
!939 = !DILocation(line: 504, column: 23, scope: !900)
!940 = !DILocation(line: 505, column: 23, scope: !900)
!941 = !DILocation(line: 507, column: 10, scope: !915)
!942 = !DILocation(line: 507, column: 16, scope: !915)
!943 = !DILocation(line: 507, column: 21, scope: !915)
!944 = !DILocation(line: 507, column: 27, scope: !915)
!945 = !DILocation(line: 507, column: 33, scope: !915)
!946 = !DILocation(line: 507, column: 7, scope: !900)
!947 = !DILocation(line: 509, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !2, line: 509, column: 7)
!949 = distinct !DILexicalBlock(scope: !915, file: !2, line: 508, column: 5)
!950 = !DILocation(line: 511, column: 15, scope: !914)
!951 = !DILocation(line: 511, column: 20, scope: !914)
!952 = !DILocation(line: 511, column: 12, scope: !915)
!953 = !DILocation(line: 513, column: 7, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !2, line: 513, column: 7)
!955 = distinct !DILexicalBlock(scope: !914, file: !2, line: 512, column: 5)
!956 = !DILocation(line: 515, column: 15, scope: !913)
!957 = !DILocation(line: 515, column: 20, scope: !913)
!958 = !DILocation(line: 515, column: 12, scope: !914)
!959 = !DILocation(line: 531, scope: !921)
!960 = !DILocation(line: 0, scope: !912)
!961 = !DILocation(line: 531, column: 25, scope: !920)
!962 = !DILocation(line: 531, column: 7, scope: !921)
!963 = !DILocation(line: 517, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !2, line: 517, column: 7)
!965 = distinct !DILexicalBlock(scope: !913, file: !2, line: 516, column: 5)
!966 = !DILocation(line: 0, scope: !328, inlinedAt: !967)
!967 = distinct !DILocation(line: 534, column: 23, scope: !919)
!968 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !967)
!969 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !967)
!970 = !DILocation(line: 0, scope: !919)
!971 = !DILocation(line: 535, column: 46, scope: !919)
!972 = !DILocation(line: 0, scope: !328, inlinedAt: !973)
!973 = distinct !DILocation(line: 535, column: 25, scope: !919)
!974 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !973)
!975 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !973)
!976 = !DILocalVariable(name: "a", arg: 1, scope: !977, file: !481, line: 740, type: !980)
!977 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !481, file: !481, line: 740, type: !978, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !981)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !980, !980, !160, !160}
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!981 = !{!976, !982, !983, !984, !985, !989, !990, !992}
!982 = !DILocalVariable(name: "b", arg: 2, scope: !977, file: !481, line: 740, type: !980)
!983 = !DILocalVariable(name: "c", arg: 3, scope: !977, file: !481, line: 740, type: !160)
!984 = !DILocalVariable(name: "s", arg: 4, scope: !977, file: !481, line: 740, type: !160)
!985 = !DILocalVariable(name: "t", scope: !986, file: !481, line: 749, type: !135)
!986 = distinct !DILexicalBlock(scope: !987, file: !481, line: 748, column: 5)
!987 = distinct !DILexicalBlock(scope: !988, file: !481, line: 747, column: 12)
!988 = distinct !DILexicalBlock(scope: !977, file: !481, line: 742, column: 7)
!989 = !DILocalVariable(name: "s1", scope: !986, file: !481, line: 750, type: !135)
!990 = !DILocalVariable(name: "t", scope: !991, file: !481, line: 756, type: !135)
!991 = distinct !DILexicalBlock(scope: !987, file: !481, line: 755, column: 5)
!992 = !DILocalVariable(name: "c1", scope: !991, file: !481, line: 757, type: !135)
!993 = !DILocation(line: 0, scope: !977, inlinedAt: !994)
!994 = distinct !DILocation(line: 537, column: 11, scope: !919)
!995 = !DILocation(line: 742, column: 9, scope: !988, inlinedAt: !994)
!996 = !DILocation(line: 742, column: 7, scope: !977, inlinedAt: !994)
!997 = !DILocation(line: 747, column: 12, scope: !987, inlinedAt: !994)
!998 = !DILocation(line: 747, column: 23, scope: !987, inlinedAt: !994)
!999 = !DILocation(line: 747, column: 21, scope: !987, inlinedAt: !994)
!1000 = !DILocation(line: 747, column: 12, scope: !988, inlinedAt: !994)
!1001 = !DILocation(line: 749, column: 18, scope: !986, inlinedAt: !994)
!1002 = !DILocation(line: 749, column: 21, scope: !986, inlinedAt: !994)
!1003 = !DILocation(line: 0, scope: !986, inlinedAt: !994)
!1004 = !DILocation(line: 750, column: 37, scope: !986, inlinedAt: !994)
!1005 = !DILocation(line: 750, column: 25, scope: !986, inlinedAt: !994)
!1006 = !DILocation(line: 750, column: 23, scope: !986, inlinedAt: !994)
!1007 = !DILocation(line: 752, column: 15, scope: !986, inlinedAt: !994)
!1008 = !DILocation(line: 753, column: 5, scope: !986, inlinedAt: !994)
!1009 = !DILocation(line: 756, column: 18, scope: !991, inlinedAt: !994)
!1010 = !DILocation(line: 756, column: 21, scope: !991, inlinedAt: !994)
!1011 = !DILocation(line: 0, scope: !991, inlinedAt: !994)
!1012 = !DILocation(line: 757, column: 37, scope: !991, inlinedAt: !994)
!1013 = !DILocation(line: 757, column: 25, scope: !991, inlinedAt: !994)
!1014 = !DILocation(line: 757, column: 23, scope: !991, inlinedAt: !994)
!1015 = !DILocation(line: 759, column: 15, scope: !991, inlinedAt: !994)
!1016 = !DILocation(line: 0, scope: !988, inlinedAt: !994)
!1017 = !DILocalVariable(name: "v", arg: 1, scope: !1018, file: !481, line: 765, type: !170)
!1018 = distinct !DISubprogram(name: "gsl_linalg_givens_gv", scope: !481, file: !481, line: 765, type: !1019, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !170, !196, !196, !980, !980}
!1021 = !{!1017, !1022, !1023, !1024, !1025, !1026, !1027}
!1022 = !DILocalVariable(name: "i", arg: 2, scope: !1018, file: !481, line: 765, type: !196)
!1023 = !DILocalVariable(name: "j", arg: 3, scope: !1018, file: !481, line: 765, type: !196)
!1024 = !DILocalVariable(name: "c", arg: 4, scope: !1018, file: !481, line: 766, type: !980)
!1025 = !DILocalVariable(name: "s", arg: 5, scope: !1018, file: !481, line: 766, type: !980)
!1026 = !DILocalVariable(name: "vi", scope: !1018, file: !481, line: 770, type: !135)
!1027 = !DILocalVariable(name: "vj", scope: !1018, file: !481, line: 771, type: !135)
!1028 = !DILocation(line: 0, scope: !1018, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 538, column: 11, scope: !919)
!1030 = !DILocation(line: 0, scope: !328, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 770, column: 15, scope: !1018, inlinedAt: !1029)
!1032 = !DILocation(line: 0, scope: !328, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 771, column: 15, scope: !1018, inlinedAt: !1029)
!1034 = !DILocation(line: 772, column: 27, scope: !1018, inlinedAt: !1029)
!1035 = !DILocation(line: 772, column: 36, scope: !1018, inlinedAt: !1029)
!1036 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 772, column: 3, scope: !1018, inlinedAt: !1029)
!1038 = !DILocation(line: 0, scope: !305, inlinedAt: !1037)
!1039 = !DILocation(line: 773, column: 27, scope: !1018, inlinedAt: !1029)
!1040 = !DILocation(line: 773, column: 36, scope: !1018, inlinedAt: !1029)
!1041 = !DILocation(line: 196, column: 26, scope: !305, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 773, column: 3, scope: !1018, inlinedAt: !1029)
!1043 = !DILocation(line: 0, scope: !305, inlinedAt: !1042)
!1044 = !DILocalVariable(name: "M", arg: 1, scope: !1045, file: !1046, line: 22, type: !154)
!1045 = distinct !DISubprogram(name: "apply_givens_qr", scope: !1046, file: !1046, line: 22, type: !1047, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1049)
!1046 = !DIFile(filename: "./apply_givens.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1430c6da1968c27d96b974d1078e7cb2")
!1047 = !DISubroutineType(types: !1048)
!1048 = !{null, !154, !154, !148, !148, !154, !154, !135, !135}
!1049 = !{!1044, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1062, !1063, !1067}
!1050 = !DILocalVariable(name: "N", arg: 2, scope: !1045, file: !1046, line: 22, type: !154)
!1051 = !DILocalVariable(name: "Q", arg: 3, scope: !1045, file: !1046, line: 22, type: !148)
!1052 = !DILocalVariable(name: "R", arg: 4, scope: !1045, file: !1046, line: 22, type: !148)
!1053 = !DILocalVariable(name: "i", arg: 5, scope: !1045, file: !1046, line: 23, type: !154)
!1054 = !DILocalVariable(name: "j", arg: 6, scope: !1045, file: !1046, line: 23, type: !154)
!1055 = !DILocalVariable(name: "c", arg: 7, scope: !1045, file: !1046, line: 23, type: !135)
!1056 = !DILocalVariable(name: "s", arg: 8, scope: !1045, file: !1046, line: 23, type: !135)
!1057 = !DILocalVariable(name: "k", scope: !1045, file: !1046, line: 25, type: !154)
!1058 = !DILocalVariable(name: "qki", scope: !1059, file: !1046, line: 39, type: !135)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !1046, line: 38, column: 5)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !1046, line: 37, column: 3)
!1061 = distinct !DILexicalBlock(scope: !1045, file: !1046, line: 37, column: 3)
!1062 = !DILocalVariable(name: "qkj", scope: !1059, file: !1046, line: 40, type: !135)
!1063 = !DILocalVariable(name: "rik", scope: !1064, file: !1046, line: 60, type: !135)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !1046, line: 59, column: 5)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !1046, line: 58, column: 3)
!1066 = distinct !DILexicalBlock(scope: !1045, file: !1046, line: 58, column: 3)
!1067 = !DILocalVariable(name: "rjk", scope: !1064, file: !1046, line: 61, type: !135)
!1068 = !DILocation(line: 0, scope: !1045, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 539, column: 11, scope: !919)
!1070 = !DILocation(line: 37, column: 3, scope: !1061, inlinedAt: !1069)
!1071 = !DILocation(line: 0, scope: !401, inlinedAt: !1072)
!1072 = distinct !DILocation(line: 39, column: 20, scope: !1059, inlinedAt: !1069)
!1073 = !DILocation(line: 285, column: 20, scope: !401, inlinedAt: !1072)
!1074 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1072)
!1075 = !DILocation(line: 0, scope: !1059, inlinedAt: !1069)
!1076 = !DILocation(line: 0, scope: !401, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 40, column: 20, scope: !1059, inlinedAt: !1069)
!1078 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1077)
!1079 = !DILocation(line: 41, column: 36, scope: !1059, inlinedAt: !1069)
!1080 = !DILocation(line: 41, column: 46, scope: !1059, inlinedAt: !1069)
!1081 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1090)
!1082 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !150, file: !150, line: 290, type: !1083, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1085)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{null, !148, !196, !196, !980}
!1085 = !{!1086, !1087, !1088, !1089}
!1086 = !DILocalVariable(name: "m", arg: 1, scope: !1082, file: !150, line: 290, type: !148)
!1087 = !DILocalVariable(name: "i", arg: 2, scope: !1082, file: !150, line: 290, type: !196)
!1088 = !DILocalVariable(name: "j", arg: 3, scope: !1082, file: !150, line: 290, type: !196)
!1089 = !DILocalVariable(name: "x", arg: 4, scope: !1082, file: !150, line: 290, type: !980)
!1090 = distinct !DILocation(line: 41, column: 7, scope: !1059, inlinedAt: !1069)
!1091 = !DILocation(line: 0, scope: !1082, inlinedAt: !1090)
!1092 = !DILocation(line: 42, column: 36, scope: !1059, inlinedAt: !1069)
!1093 = !DILocation(line: 42, column: 46, scope: !1059, inlinedAt: !1069)
!1094 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 42, column: 7, scope: !1059, inlinedAt: !1069)
!1096 = !DILocation(line: 0, scope: !1082, inlinedAt: !1095)
!1097 = !DILocation(line: 37, column: 23, scope: !1060, inlinedAt: !1069)
!1098 = !DILocation(line: 37, column: 17, scope: !1060, inlinedAt: !1069)
!1099 = distinct !{!1099, !1070, !1100, !326}
!1100 = !DILocation(line: 43, column: 5, scope: !1061, inlinedAt: !1069)
!1101 = !DILocation(line: 58, column: 12, scope: !1066, inlinedAt: !1069)
!1102 = !DILocation(line: 58, column: 30, scope: !1065, inlinedAt: !1069)
!1103 = !DILocation(line: 58, column: 3, scope: !1066, inlinedAt: !1069)
!1104 = !DILocation(line: 0, scope: !401, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 60, column: 20, scope: !1064, inlinedAt: !1069)
!1106 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1105)
!1107 = !DILocation(line: 0, scope: !1064, inlinedAt: !1069)
!1108 = !DILocation(line: 0, scope: !401, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 61, column: 20, scope: !1064, inlinedAt: !1069)
!1110 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1109)
!1111 = !DILocation(line: 62, column: 34, scope: !1064, inlinedAt: !1069)
!1112 = !DILocation(line: 62, column: 44, scope: !1064, inlinedAt: !1069)
!1113 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 62, column: 7, scope: !1064, inlinedAt: !1069)
!1115 = !DILocation(line: 0, scope: !1082, inlinedAt: !1114)
!1116 = !DILocation(line: 63, column: 34, scope: !1064, inlinedAt: !1069)
!1117 = !DILocation(line: 63, column: 44, scope: !1064, inlinedAt: !1069)
!1118 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 63, column: 7, scope: !1064, inlinedAt: !1069)
!1120 = !DILocation(line: 0, scope: !1082, inlinedAt: !1119)
!1121 = !DILocation(line: 58, column: 36, scope: !1065, inlinedAt: !1069)
!1122 = distinct !{!1122, !1103, !1123, !326}
!1123 = !DILocation(line: 64, column: 5, scope: !1066, inlinedAt: !1069)
!1124 = distinct !{!1124, !962, !1125, !326}
!1125 = !DILocation(line: 540, column: 9, scope: !921)
!1126 = !DILocation(line: 0, scope: !328, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 542, column: 12, scope: !912)
!1128 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !1127)
!1129 = !DILocation(line: 546, column: 21, scope: !927)
!1130 = !DILocation(line: 546, column: 7, scope: !928)
!1131 = !{!281, !266, i64 8}
!1132 = !DILocation(line: 0, scope: !401, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 548, column: 24, scope: !926)
!1134 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1133)
!1135 = !DILocation(line: 0, scope: !926)
!1136 = !DILocalVariable(name: "p", arg: 1, scope: !1137, file: !182, line: 85, type: !567)
!1137 = distinct !DISubprogram(name: "gsl_permutation_get", scope: !182, file: !182, line: 85, type: !1138, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!154, !567, !196}
!1140 = !{!1136, !1141}
!1141 = !DILocalVariable(name: "i", arg: 2, scope: !1137, file: !182, line: 85, type: !196)
!1142 = !DILocation(line: 0, scope: !1137, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 549, column: 24, scope: !926)
!1144 = !DILocation(line: 93, column: 10, scope: !1137, inlinedAt: !1143)
!1145 = !{!263, !263, i64 0}
!1146 = !DILocation(line: 0, scope: !328, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 550, column: 23, scope: !926)
!1148 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !1147)
!1149 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !1147)
!1150 = !DILocation(line: 551, column: 45, scope: !926)
!1151 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 551, column: 11, scope: !926)
!1153 = !DILocation(line: 0, scope: !1082, inlinedAt: !1152)
!1154 = !DILocation(line: 557, column: 20, scope: !933)
!1155 = !DILocation(line: 557, column: 6, scope: !934)
!1156 = !DILocation(line: 546, column: 27, scope: !927)
!1157 = distinct !{!1157, !1130, !1158, !326}
!1158 = !DILocation(line: 552, column: 9, scope: !928)
!1159 = !DILocation(line: 560, column: 46, scope: !932)
!1160 = !DILocation(line: 0, scope: !401, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 560, column: 25, scope: !932)
!1162 = !DILocation(line: 285, column: 20, scope: !401, inlinedAt: !1161)
!1163 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1161)
!1164 = !DILocation(line: 0, scope: !932)
!1165 = !DILocation(line: 0, scope: !401, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 561, column: 28, scope: !932)
!1167 = !DILocation(line: 285, column: 20, scope: !401, inlinedAt: !1166)
!1168 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1166)
!1169 = !DILocation(line: 0, scope: !977, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 563, column: 11, scope: !932)
!1171 = !DILocation(line: 742, column: 9, scope: !988, inlinedAt: !1170)
!1172 = !DILocation(line: 742, column: 7, scope: !977, inlinedAt: !1170)
!1173 = !DILocation(line: 747, column: 12, scope: !987, inlinedAt: !1170)
!1174 = !DILocation(line: 747, column: 23, scope: !987, inlinedAt: !1170)
!1175 = !DILocation(line: 747, column: 21, scope: !987, inlinedAt: !1170)
!1176 = !DILocation(line: 747, column: 12, scope: !988, inlinedAt: !1170)
!1177 = !DILocation(line: 749, column: 18, scope: !986, inlinedAt: !1170)
!1178 = !DILocation(line: 749, column: 21, scope: !986, inlinedAt: !1170)
!1179 = !DILocation(line: 0, scope: !986, inlinedAt: !1170)
!1180 = !DILocation(line: 750, column: 37, scope: !986, inlinedAt: !1170)
!1181 = !DILocation(line: 750, column: 25, scope: !986, inlinedAt: !1170)
!1182 = !DILocation(line: 750, column: 23, scope: !986, inlinedAt: !1170)
!1183 = !DILocation(line: 752, column: 15, scope: !986, inlinedAt: !1170)
!1184 = !DILocation(line: 753, column: 5, scope: !986, inlinedAt: !1170)
!1185 = !DILocation(line: 756, column: 18, scope: !991, inlinedAt: !1170)
!1186 = !DILocation(line: 756, column: 21, scope: !991, inlinedAt: !1170)
!1187 = !DILocation(line: 0, scope: !991, inlinedAt: !1170)
!1188 = !DILocation(line: 757, column: 37, scope: !991, inlinedAt: !1170)
!1189 = !DILocation(line: 757, column: 25, scope: !991, inlinedAt: !1170)
!1190 = !DILocation(line: 757, column: 23, scope: !991, inlinedAt: !1170)
!1191 = !DILocation(line: 759, column: 15, scope: !991, inlinedAt: !1170)
!1192 = !DILocation(line: 0, scope: !988, inlinedAt: !1170)
!1193 = !DILocation(line: 0, scope: !1045, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 564, column: 11, scope: !932)
!1195 = !DILocation(line: 37, column: 3, scope: !1061, inlinedAt: !1194)
!1196 = !DILocation(line: 0, scope: !401, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 39, column: 20, scope: !1059, inlinedAt: !1194)
!1198 = !DILocation(line: 285, column: 20, scope: !401, inlinedAt: !1197)
!1199 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1197)
!1200 = !DILocation(line: 0, scope: !1059, inlinedAt: !1194)
!1201 = !DILocation(line: 0, scope: !401, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 40, column: 20, scope: !1059, inlinedAt: !1194)
!1203 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1202)
!1204 = !DILocation(line: 41, column: 36, scope: !1059, inlinedAt: !1194)
!1205 = !DILocation(line: 41, column: 46, scope: !1059, inlinedAt: !1194)
!1206 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 41, column: 7, scope: !1059, inlinedAt: !1194)
!1208 = !DILocation(line: 0, scope: !1082, inlinedAt: !1207)
!1209 = !DILocation(line: 42, column: 36, scope: !1059, inlinedAt: !1194)
!1210 = !DILocation(line: 42, column: 46, scope: !1059, inlinedAt: !1194)
!1211 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 42, column: 7, scope: !1059, inlinedAt: !1194)
!1213 = !DILocation(line: 0, scope: !1082, inlinedAt: !1212)
!1214 = !DILocation(line: 37, column: 23, scope: !1060, inlinedAt: !1194)
!1215 = !DILocation(line: 37, column: 17, scope: !1060, inlinedAt: !1194)
!1216 = distinct !{!1216, !1195, !1217, !326}
!1217 = !DILocation(line: 43, column: 5, scope: !1061, inlinedAt: !1194)
!1218 = !DILocation(line: 58, column: 12, scope: !1066, inlinedAt: !1194)
!1219 = !DILocation(line: 58, column: 30, scope: !1065, inlinedAt: !1194)
!1220 = !DILocation(line: 58, column: 3, scope: !1066, inlinedAt: !1194)
!1221 = !DILocation(line: 0, scope: !401, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 60, column: 20, scope: !1064, inlinedAt: !1194)
!1223 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1222)
!1224 = !DILocation(line: 0, scope: !1064, inlinedAt: !1194)
!1225 = !DILocation(line: 0, scope: !401, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 61, column: 20, scope: !1064, inlinedAt: !1194)
!1227 = !DILocation(line: 285, column: 10, scope: !401, inlinedAt: !1226)
!1228 = !DILocation(line: 62, column: 34, scope: !1064, inlinedAt: !1194)
!1229 = !DILocation(line: 62, column: 44, scope: !1064, inlinedAt: !1194)
!1230 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 62, column: 7, scope: !1064, inlinedAt: !1194)
!1232 = !DILocation(line: 0, scope: !1082, inlinedAt: !1231)
!1233 = !DILocation(line: 63, column: 34, scope: !1064, inlinedAt: !1194)
!1234 = !DILocation(line: 63, column: 44, scope: !1064, inlinedAt: !1194)
!1235 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 63, column: 7, scope: !1064, inlinedAt: !1194)
!1237 = !DILocation(line: 0, scope: !1082, inlinedAt: !1236)
!1238 = !DILocation(line: 58, column: 36, scope: !1065, inlinedAt: !1194)
!1239 = distinct !{!1239, !1220, !1240, !326}
!1240 = !DILocation(line: 64, column: 5, scope: !1066, inlinedAt: !1194)
!1241 = !DILocation(line: 0, scope: !1082, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 566, column: 11, scope: !932)
!1243 = !DILocation(line: 305, column: 27, scope: !1082, inlinedAt: !1242)
!1244 = !DILocation(line: 557, column: 39, scope: !933)
!1245 = distinct !{!1245, !1155, !1246, !326}
!1246 = !DILocation(line: 567, column: 9, scope: !934)
!1247 = !DILocation(line: 0, scope: !915)
!1248 = !DILocation(line: 571, column: 1, scope: !900)
!1249 = distinct !DISubprogram(name: "gsl_linalg_QRPT_rank", scope: !2, file: !2, line: 586, type: !1250, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1252)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!154, !404, !980}
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1264, !1265, !1266, !1267, !1270, !1271, !1272, !1273}
!1253 = !DILocalVariable(name: "QR", arg: 1, scope: !1249, file: !2, line: 586, type: !404)
!1254 = !DILocalVariable(name: "tol", arg: 2, scope: !1249, file: !2, line: 586, type: !980)
!1255 = !DILocalVariable(name: "M", scope: !1249, file: !2, line: 588, type: !196)
!1256 = !DILocalVariable(name: "N", scope: !1249, file: !2, line: 589, type: !196)
!1257 = !DILocalVariable(name: "diag", scope: !1249, file: !2, line: 590, type: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !172, line: 64, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !172, line: 62, baseType: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 59, size: 320, elements: !1262)
!1262 = !{!1263}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1261, file: !172, line: 61, baseType: !171, size: 320)
!1264 = !DILocalVariable(name: "eps", scope: !1249, file: !2, line: 591, type: !135)
!1265 = !DILocalVariable(name: "i", scope: !1249, file: !2, line: 592, type: !154)
!1266 = !DILocalVariable(name: "r", scope: !1249, file: !2, line: 593, type: !154)
!1267 = !DILocalVariable(name: "min", scope: !1268, file: !2, line: 597, type: !135)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 596, column: 5)
!1269 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 595, column: 7)
!1270 = !DILocalVariable(name: "max", scope: !1268, file: !2, line: 597, type: !135)
!1271 = !DILocalVariable(name: "absmax", scope: !1268, file: !2, line: 597, type: !135)
!1272 = !DILocalVariable(name: "ee", scope: !1268, file: !2, line: 598, type: !82)
!1273 = !DILocalVariable(name: "di", scope: !1274, file: !2, line: 612, type: !135)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 611, column: 5)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !2, line: 610, column: 3)
!1276 = distinct !DILexicalBlock(scope: !1249, file: !2, line: 610, column: 3)
!1277 = distinct !DIAssignID()
!1278 = !DILocation(line: 0, scope: !1249)
!1279 = distinct !DIAssignID()
!1280 = !DILocation(line: 0, scope: !1268)
!1281 = distinct !DIAssignID()
!1282 = !DILocation(line: 588, column: 24, scope: !1249)
!1283 = !DILocation(line: 589, column: 24, scope: !1249)
!1284 = !DILocation(line: 590, column: 3, scope: !1249)
!1285 = !DILocation(line: 590, column: 32, scope: !1249)
!1286 = !DILocation(line: 595, column: 11, scope: !1269)
!1287 = !DILocation(line: 595, column: 7, scope: !1249)
!1288 = !DILocation(line: 597, column: 7, scope: !1268)
!1289 = !DILocation(line: 600, column: 7, scope: !1268)
!1290 = !DILocation(line: 601, column: 16, scope: !1268)
!1291 = !DILocation(line: 602, column: 31, scope: !1268)
!1292 = !DILocation(line: 602, column: 12, scope: !1268)
!1293 = !DILocation(line: 604, column: 23, scope: !1268)
!1294 = !DILocation(line: 604, column: 20, scope: !1268)
!1295 = !DILocation(line: 604, column: 18, scope: !1268)
!1296 = !DILocation(line: 604, column: 30, scope: !1268)
!1297 = !DILocation(line: 604, column: 28, scope: !1268)
!1298 = !DILocation(line: 604, column: 52, scope: !1268)
!1299 = !DILocation(line: 605, column: 5, scope: !1269)
!1300 = !DILocation(line: 605, column: 5, scope: !1268)
!1301 = !DILocation(line: 0, scope: !1269)
!1302 = !DILocation(line: 610, column: 17, scope: !1275)
!1303 = !DILocation(line: 610, column: 3, scope: !1276)
!1304 = !DILocation(line: 0, scope: !328, inlinedAt: !1305)
!1305 = distinct !DILocation(line: 612, column: 19, scope: !1274)
!1306 = !DILocation(line: 183, column: 20, scope: !328, inlinedAt: !1305)
!1307 = !DILocation(line: 183, column: 10, scope: !328, inlinedAt: !1305)
!1308 = !DILocation(line: 0, scope: !1274)
!1309 = !DILocation(line: 613, column: 11, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 613, column: 11)
!1311 = !DILocation(line: 613, column: 20, scope: !1310)
!1312 = !DILocation(line: 613, column: 11, scope: !1274)
!1313 = !DILocation(line: 610, column: 34, scope: !1275)
!1314 = distinct !{!1314, !1303, !1315, !326}
!1315 = !DILocation(line: 615, column: 5, scope: !1276)
!1316 = !DILocation(line: 618, column: 1, scope: !1249)
!1317 = !DILocation(line: 617, column: 3, scope: !1249)
!1318 = !DISubprogram(name: "gsl_matrix_const_diagonal", scope: !150, file: !150, line: 166, type: !1319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!1260, !404}
!1321 = !DISubprogram(name: "gsl_vector_minmax", scope: !172, file: !172, line: 145, type: !1322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !331, !160, !160}
!1324 = !DISubprogram(name: "log", scope: !491, file: !491, line: 104, type: !492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1325 = distinct !DISubprogram(name: "gsl_linalg_QRPT_rcond", scope: !2, file: !2, line: 621, type: !1326, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !78, retainedNodes: !1328)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!82, !404, !160, !170}
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1338}
!1329 = !DILocalVariable(name: "QR", arg: 1, scope: !1325, file: !2, line: 621, type: !404)
!1330 = !DILocalVariable(name: "rcond", arg: 2, scope: !1325, file: !2, line: 621, type: !160)
!1331 = !DILocalVariable(name: "work", arg: 3, scope: !1325, file: !2, line: 621, type: !170)
!1332 = !DILocalVariable(name: "M", scope: !1325, file: !2, line: 623, type: !196)
!1333 = !DILocalVariable(name: "N", scope: !1325, file: !2, line: 624, type: !196)
!1334 = !DILocalVariable(name: "R", scope: !1335, file: !2, line: 636, type: !703)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 635, column: 5)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 630, column: 12)
!1337 = distinct !DILexicalBlock(scope: !1325, file: !2, line: 626, column: 7)
!1338 = !DILocalVariable(name: "status", scope: !1335, file: !2, line: 637, type: !82)
!1339 = distinct !DIAssignID()
!1340 = !DILocation(line: 0, scope: !1335)
!1341 = !DILocation(line: 0, scope: !1325)
!1342 = !DILocation(line: 623, column: 24, scope: !1325)
!1343 = !DILocation(line: 624, column: 24, scope: !1325)
!1344 = !DILocation(line: 626, column: 9, scope: !1337)
!1345 = !DILocation(line: 626, column: 7, scope: !1325)
!1346 = !DILocation(line: 628, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 628, column: 7)
!1348 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 627, column: 5)
!1349 = !DILocation(line: 630, column: 18, scope: !1336)
!1350 = !DILocation(line: 630, column: 28, scope: !1336)
!1351 = !DILocation(line: 630, column: 23, scope: !1336)
!1352 = !DILocation(line: 630, column: 12, scope: !1337)
!1353 = !DILocation(line: 632, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !2, line: 632, column: 7)
!1355 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 631, column: 5)
!1356 = !DILocation(line: 636, column: 7, scope: !1335)
!1357 = !DILocation(line: 636, column: 33, scope: !1335)
!1358 = !DILocation(line: 639, column: 16, scope: !1335)
!1359 = !DILocation(line: 642, column: 5, scope: !1336)
!1360 = !DILocation(line: 0, scope: !1337)
!1361 = !DILocation(line: 643, column: 1, scope: !1325)
!1362 = !DISubprogram(name: "gsl_linalg_tri_upper_rcond", scope: !481, file: !481, line: 715, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
