; ModuleID = 'svd.ll'
source_filename = "svd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_const_view = type { %struct.gsl_vector }

@.str = private unnamed_addr constant [43 x i8] c"svd of MxN matrix, M<N, is not implemented\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"svd.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [56 x i8] c"square matrix V must match second dimension of matrix A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [24 x i8] c"matrix V must be square\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [59 x i8] c"length of vector S must match second dimension of matrix A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [60 x i8] c"length of workspace must match second dimension of matrix A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [37 x i8] c"SVD decomposition failed to converge\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [56 x i8] c"square matrix X must match second dimension of matrix A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"matrix X must be square\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [50 x i8] c"first dimension of matrix U must size of vector b\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [59 x i8] c"length of vector S must match second dimension of matrix U\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [47 x i8] c"length of vector S must match size of matrix V\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [45 x i8] c"size of matrix V must match size of vector x\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [56 x i8] c"first dimension of matrix U must match size of vector h\00", align 1, !dbg !58
@.str.14 = private unnamed_addr constant [56 x i8] c"square matrix Q must match second dimension of matrix A\00", align 1, !dbg !60
@.str.15 = private unnamed_addr constant [24 x i8] c"matrix Q must be square\00", align 1, !dbg !62
@.str.16 = private unnamed_addr constant [50 x i8] c"Jacobi iterations did not reach desired tolerance\00", align 1, !dbg !64

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_SV_decomp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !123 {
  %5 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !231
  call void @llvm.dbg.assign(metadata i1 undef, metadata !173, metadata !DIExpression(), metadata !231, metadata ptr %5, metadata !DIExpression()), !dbg !232
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !233
  call void @llvm.dbg.assign(metadata i1 undef, metadata !182, metadata !DIExpression(), metadata !233, metadata ptr %6, metadata !DIExpression()), !dbg !234
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !190, metadata !DIExpression(), metadata !235, metadata ptr %7, metadata !DIExpression()), !dbg !236
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !237
  call void @llvm.dbg.assign(metadata i1 undef, metadata !191, metadata !DIExpression(), metadata !237, metadata ptr %8, metadata !DIExpression()), !dbg !236
  %9 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !238
  call void @llvm.dbg.assign(metadata i1 undef, metadata !192, metadata !DIExpression(), metadata !238, metadata ptr %9, metadata !DIExpression()), !dbg !236
  %10 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !239
  call void @llvm.dbg.assign(metadata i1 undef, metadata !198, metadata !DIExpression(), metadata !239, metadata ptr %10, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !160, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !161, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !162, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !163, metadata !DIExpression()), !dbg !240
  %11 = load i64, ptr %0, align 8, !dbg !241, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !169, metadata !DIExpression()), !dbg !240
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !249
  %13 = load i64, ptr %12, align 8, !dbg !249, !tbaa !250
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !171, metadata !DIExpression()), !dbg !240
  %14 = icmp ult i64 %11, %13, !dbg !251
  %15 = tail call i64 @llvm.umin.i64(i64 %11, i64 %13), !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !172, metadata !DIExpression()), !dbg !240
  br i1 %14, label %16, label %17, !dbg !252

16:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 60, i32 noundef 24) #10, !dbg !253
  br label %298, !dbg !253

17:                                               ; preds = %4
  %18 = load i64, ptr %1, align 8, !dbg !257, !tbaa !242
  %19 = icmp eq i64 %18, %13, !dbg !259
  br i1 %19, label %21, label %20, !dbg !260

20:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef 19) #10, !dbg !261
  br label %298, !dbg !261

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !264
  %23 = load i64, ptr %22, align 8, !dbg !264, !tbaa !250
  %24 = icmp eq i64 %13, %23, !dbg !266
  br i1 %24, label %26, label %25, !dbg !267

25:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 20) #10, !dbg !268
  br label %298, !dbg !268

26:                                               ; preds = %21
  %27 = load i64, ptr %2, align 8, !dbg !271, !tbaa !273
  %28 = icmp eq i64 %27, %13, !dbg !275
  br i1 %28, label %30, label %29, !dbg !276

29:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef 19) #10, !dbg !277
  br label %298, !dbg !277

30:                                               ; preds = %26
  %31 = load i64, ptr %3, align 8, !dbg !280, !tbaa !273
  %32 = icmp eq i64 %31, %13, !dbg !282
  br i1 %32, label %34, label %33, !dbg !283

33:                                               ; preds = %30
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 79, i32 noundef 19) #10, !dbg !284
  br label %298, !dbg !284

34:                                               ; preds = %30
  %35 = icmp eq i64 %13, 1, !dbg !287
  br i1 %35, label %36, label %46, !dbg !288

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10, !dbg !289
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %5, ptr noundef nonnull %0, i64 noundef 0) #10, !dbg !290
  %37 = call double @gsl_blas_dnrm2(ptr noundef nonnull %5) #10, !dbg !291
  tail call void @llvm.dbg.value(metadata double %37, metadata !181, metadata !DIExpression()), !dbg !232
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !299
  tail call void @llvm.dbg.value(metadata double %37, metadata !298, metadata !DIExpression()), !dbg !299
  %38 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2, !dbg !301
  %39 = load ptr, ptr %38, align 8, !dbg !301, !tbaa !302
  store double %37, ptr %39, align 8, !dbg !303, !tbaa !304
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !315
  tail call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !315
  tail call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !315
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !314, metadata !DIExpression()), !dbg !315
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3, !dbg !317
  %41 = load ptr, ptr %40, align 8, !dbg !317, !tbaa !318
  store double 1.000000e+00, ptr %41, align 8, !dbg !319, !tbaa !304
  %42 = fcmp une double %37, 0.000000e+00, !dbg !320
  br i1 %42, label %43, label %45, !dbg !322

43:                                               ; preds = %36
  %44 = fdiv double 1.000000e+00, %37, !dbg !323
  call void @gsl_blas_dscal(double noundef %44, ptr noundef nonnull %5) #10, !dbg !325
  br label %45, !dbg !326

45:                                               ; preds = %43, %36
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10, !dbg !327
  br label %298

46:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10, !dbg !328
  %47 = add i64 %15, -1, !dbg !329
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %3, i64 noundef 0, i64 noundef %47) #10, !dbg !330
  %48 = call i32 @gsl_linalg_bidiag_decomp(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %6) #10, !dbg !331
  %49 = call i32 @gsl_linalg_bidiag_unpack2(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %1) #10, !dbg !332
  call fastcc void @chop_small_elements(ptr noundef nonnull %2, ptr noundef nonnull %6), !dbg !333
  %50 = add i64 %13, -1, !dbg !334
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !165, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 0, metadata !168, metadata !DIExpression()), !dbg !240
  %51 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 2
  %52 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 1
  %53 = mul i64 %13, 100
  %54 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 2
  %55 = getelementptr inbounds %struct.gsl_vector, ptr %7, i64 0, i32 1
  %56 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  %57 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 1
  br label %58, !dbg !335

58:                                               ; preds = %194, %46
  %59 = phi i64 [ %50, %46 ], [ %196, %194 ]
  %60 = phi i64 [ 0, %46 ], [ %195, %194 ]
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !165, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !168, metadata !DIExpression()), !dbg !240
  %61 = add i64 %59, -1, !dbg !336
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !337, metadata !DIExpression()), !dbg !345
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !344, metadata !DIExpression()), !dbg !345
  %62 = load ptr, ptr %51, align 8, !dbg !347, !tbaa !302
  %63 = load i64, ptr %52, align 8, !dbg !348, !tbaa !349
  %64 = mul i64 %63, %61, !dbg !350
  %65 = getelementptr inbounds double, ptr %62, i64 %64, !dbg !351
  %66 = load double, ptr %65, align 8, !dbg !351, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %66, metadata !184, metadata !DIExpression()), !dbg !352
  %67 = fcmp oeq double %66, 0.000000e+00, !dbg !353
  br i1 %67, label %194, label %68, !dbg !355, !llvm.loop !356

68:                                               ; preds = %58
  %69 = call i32 @gsl_isnan(double noundef %66) #10, !dbg !359
  %70 = icmp eq i32 %69, 0, !dbg !359
  br i1 %70, label %71, label %194, !dbg !360, !llvm.loop !356

71:                                               ; preds = %83, %68
  %72 = phi i64 [ %86, %83 ], [ 0, %68 ]
  %73 = phi i64 [ %76, %83 ], [ %61, %68 ], !dbg !361
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !164, metadata !DIExpression()), !dbg !240
  %74 = icmp eq i64 %73, 0, !dbg !362
  br i1 %74, label %87, label %75, !dbg !363

75:                                               ; preds = %71
  %76 = add i64 %73, -1, !dbg !364
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !337, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !344, metadata !DIExpression()), !dbg !365
  %77 = load ptr, ptr %51, align 8, !dbg !367, !tbaa !302
  %78 = load i64, ptr %52, align 8, !dbg !368, !tbaa !349
  %79 = mul i64 %78, %76, !dbg !369
  %80 = getelementptr inbounds double, ptr %77, i64 %79, !dbg !370
  %81 = load double, ptr %80, align 8, !dbg !370, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %81, metadata !186, metadata !DIExpression()), !dbg !371
  %82 = fcmp oeq double %81, 0.000000e+00, !dbg !372
  br i1 %82, label %87, label %83, !dbg !374

83:                                               ; preds = %75
  %84 = call i32 @gsl_isnan(double noundef %81) #10, !dbg !375
  %85 = icmp eq i32 %84, 0, !dbg !375
  %86 = add i64 %72, 1, !dbg !376
  br i1 %85, label %71, label %87, !dbg !376

87:                                               ; preds = %83, %75, %71
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !164, metadata !DIExpression()), !dbg !240
  %88 = add i64 %60, 1, !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %88, metadata !168, metadata !DIExpression()), !dbg !240
  %89 = icmp ugt i64 %88, %53, !dbg !378
  br i1 %89, label %90, label %91, !dbg !380

90:                                               ; preds = %87
  call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 148, i32 noundef 11) #10, !dbg !381
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !165, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !168, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10, !dbg !384
  br label %298

91:                                               ; preds = %87
  %92 = sub i64 %59, %73, !dbg !385
  %93 = add i64 %92, 1, !dbg !386
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !188, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10, !dbg !387
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %2, i64 noundef %73, i64 noundef %93) #10, !dbg !388
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10, !dbg !389
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %6, i64 noundef %73, i64 noundef %92) #10, !dbg !390
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #10, !dbg !391
  %94 = load i64, ptr %0, align 8, !dbg !392, !tbaa !242
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %73, i64 noundef %94, i64 noundef %93) #10, !dbg !393
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #10, !dbg !394
  %95 = load i64, ptr %1, align 8, !dbg !395, !tbaa !242
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %10, ptr noundef nonnull %1, i64 noundef 0, i64 noundef %73, i64 noundef %95, i64 noundef %93) #10, !dbg !396
  tail call void @llvm.dbg.value(metadata i32 0, metadata !199, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !200, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !201, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i64 0, metadata !166, metadata !DIExpression()), !dbg !240
  %96 = icmp eq i64 %93, 0, !dbg !397
  br i1 %96, label %116, label %97, !dbg !398

97:                                               ; preds = %91
  %98 = load ptr, ptr %54, align 8, !tbaa !302
  %99 = load i64, ptr %55, align 8, !tbaa !349
  %100 = icmp eq i64 %59, %73, !dbg !398
  br i1 %100, label %103, label %101, !dbg !398

101:                                              ; preds = %97
  %102 = and i64 %93, -2, !dbg !398
  br label %126, !dbg !398

103:                                              ; preds = %126, %97
  %104 = phi double [ undef, %97 ], [ %142, %126 ]
  %105 = phi i64 [ 0, %97 ], [ %143, %126 ]
  %106 = phi double [ 0.000000e+00, %97 ], [ %142, %126 ]
  %107 = and i64 %92, 1, !dbg !398
  %108 = icmp eq i64 %107, 0, !dbg !398
  br i1 %108, label %109, label %116, !dbg !398

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %106, metadata !201, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !337, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !344, metadata !DIExpression()), !dbg !399
  %110 = mul i64 %99, %105, !dbg !401
  %111 = getelementptr inbounds double, ptr %98, i64 %110, !dbg !402
  %112 = load double, ptr %111, align 8, !dbg !402, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %112, metadata !202, metadata !DIExpression()), !dbg !403
  %113 = call double @llvm.fabs.f64(double %112), !dbg !404
  tail call void @llvm.dbg.value(metadata double %113, metadata !206, metadata !DIExpression()), !dbg !403
  %114 = fcmp ogt double %113, %106, !dbg !405
  %115 = select i1 %114, double %113, double %106, !dbg !407
  tail call void @llvm.dbg.value(metadata double %115, metadata !201, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !166, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !240
  br label %116, !dbg !408

116:                                              ; preds = %109, %103, %91
  %117 = phi double [ 0.000000e+00, %91 ], [ %104, %103 ], [ %115, %109 ], !dbg !236
  tail call void @llvm.dbg.value(metadata i64 0, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %117, metadata !201, metadata !DIExpression()), !dbg !236
  %118 = icmp eq i64 %59, %73, !dbg !408
  br i1 %118, label %178, label %119, !dbg !409

119:                                              ; preds = %116
  %120 = load ptr, ptr %56, align 8, !tbaa !302
  %121 = load i64, ptr %57, align 8, !tbaa !349
  %122 = and i64 %92, 1, !dbg !409
  %123 = icmp eq i64 %72, 0, !dbg !409
  br i1 %123, label %166, label %124, !dbg !409

124:                                              ; preds = %119
  %125 = and i64 %92, -2, !dbg !409
  br label %146, !dbg !409

126:                                              ; preds = %126, %101
  %127 = phi i64 [ 0, %101 ], [ %143, %126 ]
  %128 = phi double [ 0.000000e+00, %101 ], [ %142, %126 ]
  %129 = phi i64 [ 0, %101 ], [ %144, %126 ]
  tail call void @llvm.dbg.value(metadata i64 %127, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %128, metadata !201, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !337, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i64 %127, metadata !344, metadata !DIExpression()), !dbg !399
  %130 = mul i64 %99, %127, !dbg !401
  %131 = getelementptr inbounds double, ptr %98, i64 %130, !dbg !402
  %132 = load double, ptr %131, align 8, !dbg !402, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %132, metadata !202, metadata !DIExpression()), !dbg !403
  %133 = call double @llvm.fabs.f64(double %132), !dbg !404
  tail call void @llvm.dbg.value(metadata double %133, metadata !206, metadata !DIExpression()), !dbg !403
  %134 = fcmp ogt double %133, %128, !dbg !405
  %135 = select i1 %134, double %133, double %128, !dbg !407
  tail call void @llvm.dbg.value(metadata double %135, metadata !201, metadata !DIExpression()), !dbg !236
  %136 = or disjoint i64 %127, 1, !dbg !410
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %135, metadata !201, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !337, metadata !DIExpression()), !dbg !399
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !344, metadata !DIExpression()), !dbg !399
  %137 = mul i64 %99, %136, !dbg !401
  %138 = getelementptr inbounds double, ptr %98, i64 %137, !dbg !402
  %139 = load double, ptr %138, align 8, !dbg !402, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %139, metadata !202, metadata !DIExpression()), !dbg !403
  %140 = call double @llvm.fabs.f64(double %139), !dbg !404
  tail call void @llvm.dbg.value(metadata double %140, metadata !206, metadata !DIExpression()), !dbg !403
  %141 = fcmp ogt double %140, %135, !dbg !405
  %142 = select i1 %141, double %140, double %135, !dbg !407
  tail call void @llvm.dbg.value(metadata double %142, metadata !201, metadata !DIExpression()), !dbg !236
  %143 = add nuw i64 %127, 2, !dbg !410
  tail call void @llvm.dbg.value(metadata i64 %143, metadata !166, metadata !DIExpression()), !dbg !240
  %144 = add i64 %129, 2, !dbg !398
  %145 = icmp eq i64 %144, %102, !dbg !398
  br i1 %145, label %103, label %126, !dbg !398, !llvm.loop !411

146:                                              ; preds = %146, %124
  %147 = phi i64 [ 0, %124 ], [ %163, %146 ]
  %148 = phi double [ %117, %124 ], [ %162, %146 ]
  %149 = phi i64 [ 0, %124 ], [ %164, %146 ]
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %148, metadata !201, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !337, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata i64 %147, metadata !344, metadata !DIExpression()), !dbg !413
  %150 = mul i64 %121, %147, !dbg !415
  %151 = getelementptr inbounds double, ptr %120, i64 %150, !dbg !416
  %152 = load double, ptr %151, align 8, !dbg !416, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %152, metadata !207, metadata !DIExpression()), !dbg !417
  %153 = call double @llvm.fabs.f64(double %152), !dbg !418
  tail call void @llvm.dbg.value(metadata double %153, metadata !211, metadata !DIExpression()), !dbg !417
  %154 = fcmp ogt double %153, %148, !dbg !419
  %155 = select i1 %154, double %153, double %148, !dbg !421
  tail call void @llvm.dbg.value(metadata double %155, metadata !201, metadata !DIExpression()), !dbg !236
  %156 = or disjoint i64 %147, 1, !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %155, metadata !201, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !337, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata i64 %156, metadata !344, metadata !DIExpression()), !dbg !413
  %157 = mul i64 %121, %156, !dbg !415
  %158 = getelementptr inbounds double, ptr %120, i64 %157, !dbg !416
  %159 = load double, ptr %158, align 8, !dbg !416, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %159, metadata !207, metadata !DIExpression()), !dbg !417
  %160 = call double @llvm.fabs.f64(double %159), !dbg !418
  tail call void @llvm.dbg.value(metadata double %160, metadata !211, metadata !DIExpression()), !dbg !417
  %161 = fcmp ogt double %160, %155, !dbg !419
  %162 = select i1 %161, double %160, double %155, !dbg !421
  tail call void @llvm.dbg.value(metadata double %162, metadata !201, metadata !DIExpression()), !dbg !236
  %163 = add nuw i64 %147, 2, !dbg !422
  tail call void @llvm.dbg.value(metadata i64 %163, metadata !166, metadata !DIExpression()), !dbg !240
  %164 = add i64 %149, 2, !dbg !409
  %165 = icmp eq i64 %164, %125, !dbg !409
  br i1 %165, label %166, label %146, !dbg !409, !llvm.loop !423

166:                                              ; preds = %146, %119
  %167 = phi double [ undef, %119 ], [ %162, %146 ]
  %168 = phi i64 [ 0, %119 ], [ %163, %146 ]
  %169 = phi double [ %117, %119 ], [ %162, %146 ]
  %170 = icmp eq i64 %122, 0, !dbg !409
  br i1 %170, label %178, label %171, !dbg !409

171:                                              ; preds = %166
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata double %169, metadata !201, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !337, metadata !DIExpression()), !dbg !413
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !344, metadata !DIExpression()), !dbg !413
  %172 = mul i64 %121, %168, !dbg !415
  %173 = getelementptr inbounds double, ptr %120, i64 %172, !dbg !416
  %174 = load double, ptr %173, align 8, !dbg !416, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %174, metadata !207, metadata !DIExpression()), !dbg !417
  %175 = call double @llvm.fabs.f64(double %174), !dbg !418
  tail call void @llvm.dbg.value(metadata double %175, metadata !211, metadata !DIExpression()), !dbg !417
  %176 = fcmp ogt double %175, %169, !dbg !419
  %177 = select i1 %176, double %175, double %169, !dbg !421
  tail call void @llvm.dbg.value(metadata double %177, metadata !201, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !166, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !240
  br label %178, !dbg !425

178:                                              ; preds = %171, %166, %116
  %179 = phi double [ %117, %116 ], [ %167, %166 ], [ %177, %171 ], !dbg !236
  %180 = fcmp ogt double %179, 0x5FEFFFFFFFFFFFFF, !dbg !425
  br i1 %180, label %181, label %183, !dbg !427

181:                                              ; preds = %178
  %182 = fdiv double %179, 0x5FEFFFFFFFFFFFFF, !dbg !428
  tail call void @llvm.dbg.value(metadata double %182, metadata !200, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 1, metadata !199, metadata !DIExpression()), !dbg !236
  br label %189, !dbg !430

183:                                              ; preds = %178
  %184 = fcmp olt double %179, 0x2000000000000000, !dbg !431
  %185 = fcmp ogt double %179, 0.000000e+00
  %186 = and i1 %184, %185, !dbg !433
  br i1 %186, label %187, label %192, !dbg !433

187:                                              ; preds = %183
  %188 = fmul double %179, 0x5FE0000000000000, !dbg !434
  tail call void @llvm.dbg.value(metadata double %188, metadata !200, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 1, metadata !199, metadata !DIExpression()), !dbg !236
  br label %189, !dbg !436

189:                                              ; preds = %187, %181
  %190 = phi double [ %188, %187 ], [ %182, %181 ]
  tail call void @llvm.dbg.value(metadata double %190, metadata !200, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !199, metadata !DIExpression()), !dbg !236
  %191 = fdiv double 1.000000e+00, %190, !dbg !437
  call void @gsl_blas_dscal(double noundef %191, ptr noundef nonnull %7) #10, !dbg !440
  call void @gsl_blas_dscal(double noundef %191, ptr noundef nonnull %8) #10, !dbg !441
  call fastcc void @qrstep(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !442
  call fastcc void @chop_small_elements(ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !443
  call void @gsl_blas_dscal(double noundef %190, ptr noundef nonnull %7) #10, !dbg !444
  call void @gsl_blas_dscal(double noundef %190, ptr noundef nonnull %8) #10, !dbg !447
  br label %193, !dbg !448

192:                                              ; preds = %183
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !200, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !199, metadata !DIExpression()), !dbg !236
  call fastcc void @qrstep(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !442
  call fastcc void @chop_small_elements(ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !443
  br label %193, !dbg !449

193:                                              ; preds = %192, %189
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #10, !dbg !450
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #10, !dbg !450
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10, !dbg !450
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10, !dbg !450
  br label %194, !dbg !357

194:                                              ; preds = %193, %68, %58
  %195 = phi i64 [ %88, %193 ], [ %60, %68 ], [ %60, %58 ], !dbg !234
  %196 = phi i64 [ %59, %193 ], [ %61, %68 ], [ %61, %58 ], !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !165, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !168, metadata !DIExpression()), !dbg !240
  %197 = icmp eq i64 %196, 0, !dbg !451
  br i1 %197, label %198, label %58, !dbg !335

198:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10, !dbg !384
  tail call void @llvm.dbg.value(metadata i64 0, metadata !167, metadata !DIExpression()), !dbg !240
  %199 = icmp eq i64 %15, 0, !dbg !452
  br i1 %199, label %298, label %200, !dbg !453

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !302
  %203 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %204 = load i64, ptr %203, align 8, !tbaa !349
  %205 = icmp eq i64 %13, 0
  %206 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %207 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %208 = and i64 %13, 3
  %209 = icmp ult i64 %13, 4
  %210 = and i64 %13, -4
  %211 = icmp eq i64 %208, 0
  br label %215, !dbg !453

212:                                              ; preds = %265
  tail call void @llvm.dbg.value(metadata i64 0, metadata !166, metadata !DIExpression()), !dbg !240
  %213 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %214 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  br label %268, !dbg !454

215:                                              ; preds = %265, %200
  %216 = phi i64 [ 0, %200 ], [ %266, %265 ]
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !167, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !455
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !344, metadata !DIExpression()), !dbg !455
  %217 = mul i64 %204, %216, !dbg !457
  %218 = getelementptr inbounds double, ptr %202, i64 %217, !dbg !458
  %219 = load double, ptr %218, align 8, !dbg !458, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %219, metadata !212, metadata !DIExpression()), !dbg !459
  %220 = fcmp olt double %219, 0.000000e+00, !dbg !460
  br i1 %220, label %221, label %265, !dbg !461

221:                                              ; preds = %215
  tail call void @llvm.dbg.value(metadata i64 0, metadata !166, metadata !DIExpression()), !dbg !240
  br i1 %205, label %263, label %222, !dbg !462

222:                                              ; preds = %221
  %223 = load ptr, ptr %206, align 8, !tbaa !318
  %224 = load i64, ptr %207, align 8, !tbaa !463
  %225 = getelementptr double, ptr %223, i64 %216, !dbg !462
  br i1 %209, label %251, label %226, !dbg !462

226:                                              ; preds = %226, %222
  %227 = phi i64 [ %248, %226 ], [ 0, %222 ]
  %228 = phi i64 [ %249, %226 ], [ 0, %222 ]
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !471, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !472, metadata !DIExpression()), !dbg !473
  %229 = mul i64 %224, %227, !dbg !475
  %230 = getelementptr double, ptr %225, i64 %229, !dbg !476
  %231 = load double, ptr %230, align 8, !dbg !476, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %231, metadata !216, metadata !DIExpression()), !dbg !477
  %232 = fneg double %231, !dbg !478
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %227, metadata !312, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !313, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double %232, metadata !314, metadata !DIExpression()), !dbg !479
  store double %232, ptr %230, align 8, !dbg !481, !tbaa !304
  %233 = or disjoint i64 %227, 1, !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !471, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !472, metadata !DIExpression()), !dbg !473
  %234 = mul i64 %224, %233, !dbg !475
  %235 = getelementptr double, ptr %225, i64 %234, !dbg !476
  %236 = load double, ptr %235, align 8, !dbg !476, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %236, metadata !216, metadata !DIExpression()), !dbg !477
  %237 = fneg double %236, !dbg !478
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !312, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !313, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double %237, metadata !314, metadata !DIExpression()), !dbg !479
  store double %237, ptr %235, align 8, !dbg !481, !tbaa !304
  %238 = or disjoint i64 %227, 2, !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !471, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !472, metadata !DIExpression()), !dbg !473
  %239 = mul i64 %224, %238, !dbg !475
  %240 = getelementptr double, ptr %225, i64 %239, !dbg !476
  %241 = load double, ptr %240, align 8, !dbg !476, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %241, metadata !216, metadata !DIExpression()), !dbg !477
  %242 = fneg double %241, !dbg !478
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !312, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !313, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double %242, metadata !314, metadata !DIExpression()), !dbg !479
  store double %242, ptr %240, align 8, !dbg !481, !tbaa !304
  %243 = or disjoint i64 %227, 3, !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !471, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !472, metadata !DIExpression()), !dbg !473
  %244 = mul i64 %224, %243, !dbg !475
  %245 = getelementptr double, ptr %225, i64 %244, !dbg !476
  %246 = load double, ptr %245, align 8, !dbg !476, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %246, metadata !216, metadata !DIExpression()), !dbg !477
  %247 = fneg double %246, !dbg !478
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %243, metadata !312, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !313, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double %247, metadata !314, metadata !DIExpression()), !dbg !479
  store double %247, ptr %245, align 8, !dbg !481, !tbaa !304
  %248 = add nuw i64 %227, 4, !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %248, metadata !166, metadata !DIExpression()), !dbg !240
  %249 = add i64 %228, 4, !dbg !462
  %250 = icmp eq i64 %249, %210, !dbg !462
  br i1 %250, label %251, label %226, !dbg !462, !llvm.loop !483

251:                                              ; preds = %226, %222
  %252 = phi i64 [ 0, %222 ], [ %248, %226 ]
  br i1 %211, label %263, label %253, !dbg !462

253:                                              ; preds = %253, %251
  %254 = phi i64 [ %260, %253 ], [ %252, %251 ]
  %255 = phi i64 [ %261, %253 ], [ 0, %251 ]
  tail call void @llvm.dbg.value(metadata i64 %254, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %254, metadata !471, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !472, metadata !DIExpression()), !dbg !473
  %256 = mul i64 %224, %254, !dbg !475
  %257 = getelementptr double, ptr %225, i64 %256, !dbg !476
  %258 = load double, ptr %257, align 8, !dbg !476, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %258, metadata !216, metadata !DIExpression()), !dbg !477
  %259 = fneg double %258, !dbg !478
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %254, metadata !312, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !313, metadata !DIExpression()), !dbg !479
  tail call void @llvm.dbg.value(metadata double %259, metadata !314, metadata !DIExpression()), !dbg !479
  store double %259, ptr %257, align 8, !dbg !481, !tbaa !304
  %260 = add nuw i64 %254, 1, !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !166, metadata !DIExpression()), !dbg !240
  %261 = add i64 %255, 1, !dbg !462
  %262 = icmp eq i64 %261, %208, !dbg !462
  br i1 %262, label %263, label %253, !dbg !462, !llvm.loop !485

263:                                              ; preds = %253, %251, %221
  %264 = fneg double %219, !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %216, metadata !297, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata double %264, metadata !298, metadata !DIExpression()), !dbg !488
  store double %264, ptr %218, align 8, !dbg !490, !tbaa !304
  br label %265, !dbg !491

265:                                              ; preds = %263, %215
  %266 = add nuw i64 %216, 1, !dbg !492
  tail call void @llvm.dbg.value(metadata i64 %266, metadata !167, metadata !DIExpression()), !dbg !240
  %267 = icmp eq i64 %266, %15, !dbg !452
  br i1 %267, label %212, label %215, !dbg !453, !llvm.loop !493

268:                                              ; preds = %296, %212
  %269 = phi i64 [ 0, %212 ], [ %272, %296 ]
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !166, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !344, metadata !DIExpression()), !dbg !495
  %270 = load ptr, ptr %213, align 8, !dbg !497, !tbaa !302
  %271 = load i64, ptr %214, align 8, !dbg !498, !tbaa !349
  tail call void @llvm.dbg.value(metadata double poison, metadata !222, metadata !DIExpression()), !dbg !499
  tail call void @llvm.dbg.value(metadata i64 %269, metadata !226, metadata !DIExpression()), !dbg !499
  %272 = add nuw i64 %269, 1, !dbg !500
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !167, metadata !DIExpression()), !dbg !240
  %273 = icmp ult i64 %272, %15, !dbg !501
  br i1 %273, label %274, label %296, !dbg !502

274:                                              ; preds = %268
  %275 = mul i64 %271, %269, !dbg !503
  %276 = getelementptr inbounds double, ptr %270, i64 %275, !dbg !504
  %277 = load double, ptr %276, align 8, !dbg !504, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %277, metadata !222, metadata !DIExpression()), !dbg !499
  br label %278, !dbg !502

278:                                              ; preds = %278, %274
  %279 = phi i64 [ %287, %278 ], [ %269, %274 ]
  %280 = phi double [ %286, %278 ], [ %277, %274 ]
  %281 = phi i64 [ %288, %278 ], [ %272, %274 ]
  tail call void @llvm.dbg.value(metadata i64 %279, metadata !226, metadata !DIExpression()), !dbg !499
  tail call void @llvm.dbg.value(metadata double %280, metadata !222, metadata !DIExpression()), !dbg !499
  tail call void @llvm.dbg.value(metadata i64 %281, metadata !167, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata i64 %281, metadata !344, metadata !DIExpression()), !dbg !505
  %282 = mul i64 %281, %271, !dbg !507
  %283 = getelementptr inbounds double, ptr %270, i64 %282, !dbg !508
  %284 = load double, ptr %283, align 8, !dbg !508, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %284, metadata !227, metadata !DIExpression()), !dbg !509
  %285 = fcmp ogt double %284, %280, !dbg !510
  %286 = select i1 %285, double %284, double %280, !dbg !512
  %287 = select i1 %285, i64 %281, i64 %279, !dbg !512
  tail call void @llvm.dbg.value(metadata i64 %287, metadata !226, metadata !DIExpression()), !dbg !499
  tail call void @llvm.dbg.value(metadata double %286, metadata !222, metadata !DIExpression()), !dbg !499
  %288 = add nuw i64 %281, 1, !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %288, metadata !167, metadata !DIExpression()), !dbg !240
  %289 = icmp ult i64 %288, %15, !dbg !501
  br i1 %289, label %278, label %290, !dbg !502, !llvm.loop !514

290:                                              ; preds = %278
  %291 = icmp eq i64 %287, %269, !dbg !516
  br i1 %291, label %296, label %292, !dbg !518

292:                                              ; preds = %290
  %293 = call i32 @gsl_vector_swap_elements(ptr noundef nonnull %2, i64 noundef %269, i64 noundef %287) #10, !dbg !519
  %294 = call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %0, i64 noundef %269, i64 noundef %287) #10, !dbg !521
  %295 = call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %1, i64 noundef %269, i64 noundef %287) #10, !dbg !522
  br label %296, !dbg !523

296:                                              ; preds = %292, %290, %268
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !166, metadata !DIExpression()), !dbg !240
  %297 = icmp eq i64 %272, %15, !dbg !524
  br i1 %297, label %298, label %268, !dbg !454, !llvm.loop !525

298:                                              ; preds = %296, %198, %90, %45, %33, %29, %25, %20, %16
  %299 = phi i32 [ 24, %16 ], [ 19, %20 ], [ 20, %25 ], [ 19, %29 ], [ 19, %33 ], [ 0, %45 ], [ 11, %90 ], [ 0, %198 ], [ 0, %296 ]
  ret i32 %299, !dbg !527
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !528 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !533 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !536 double @gsl_blas_dnrm2(ptr noundef) local_unnamed_addr #2

declare !dbg !540 void @gsl_blas_dscal(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !543 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !546 i32 @gsl_linalg_bidiag_decomp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !550 i32 @gsl_linalg_bidiag_unpack2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @chop_small_elements(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !dbg !553 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !558, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !559, metadata !DIExpression()), !dbg !568
  %3 = load i64, ptr %0, align 8, !dbg !569, !tbaa !273
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !560, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !570
  tail call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression()), !dbg !570
  %4 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 2, !dbg !572
  %5 = load ptr, ptr %4, align 8, !dbg !572, !tbaa !302
  tail call void @llvm.dbg.value(metadata double poison, metadata !561, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata i64 0, metadata !562, metadata !DIExpression()), !dbg !568
  %6 = add i64 %3, -1
  tail call void @llvm.dbg.value(metadata double poison, metadata !561, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata i64 0, metadata !562, metadata !DIExpression()), !dbg !568
  %7 = icmp eq i64 %6, 0, !dbg !573
  br i1 %7, label %34, label %8, !dbg !574

8:                                                ; preds = %2
  %9 = load double, ptr %5, align 8, !dbg !575, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %9, metadata !561, metadata !DIExpression()), !dbg !568
  %10 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 1, !dbg !576
  %11 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !302
  %13 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !349
  %15 = load i64, ptr %10, align 8, !tbaa !349
  br label %16, !dbg !574

16:                                               ; preds = %32, %8
  %17 = phi double [ %9, %8 ], [ %25, %32 ]
  %18 = phi i64 [ 0, %8 ], [ %22, %32 ]
  tail call void @llvm.dbg.value(metadata double %17, metadata !561, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !562, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !577
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !344, metadata !DIExpression()), !dbg !577
  %19 = mul i64 %14, %18, !dbg !579
  %20 = getelementptr inbounds double, ptr %12, i64 %19, !dbg !580
  %21 = load double, ptr %20, align 8, !dbg !580, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %21, metadata !563, metadata !DIExpression()), !dbg !581
  %22 = add nuw i64 %18, 1, !dbg !582
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !583
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !344, metadata !DIExpression()), !dbg !583
  %23 = mul i64 %15, %22, !dbg !585
  %24 = getelementptr inbounds double, ptr %5, i64 %23, !dbg !586
  %25 = load double, ptr %24, align 8, !dbg !586, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %25, metadata !567, metadata !DIExpression()), !dbg !581
  %26 = tail call double @llvm.fabs.f64(double %21), !dbg !587
  %27 = tail call double @llvm.fabs.f64(double %17), !dbg !589
  %28 = tail call double @llvm.fabs.f64(double %25), !dbg !590
  %handler_result = call double @fAddHandlerDouble(double %27, double %28), !dbg !591
  %29 = fmul double %handler_result, 0x3CB0000000000000, !dbg !591
  %30 = fcmp olt double %26, %29, !dbg !592
  br i1 %30, label %31, label %32, !dbg !593

31:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !297, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !594
  store double 0.000000e+00, ptr %20, align 8, !dbg !597, !tbaa !304
  br label %32, !dbg !598

32:                                               ; preds = %31, %16
  tail call void @llvm.dbg.value(metadata double %25, metadata !561, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !562, metadata !DIExpression()), !dbg !568
  %33 = icmp eq i64 %22, %6, !dbg !573
  br i1 %33, label %34, label %16, !dbg !574, !llvm.loop !599

34:                                               ; preds = %32, %2
  ret void, !dbg !601
}

declare !dbg !602 i32 @gsl_isnan(double noundef) local_unnamed_addr #2

declare !dbg !606 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @qrstep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !dbg !609 {
  %5 = alloca i32, align 4, !DIAssignID !669
  %6 = alloca i32, align 4, !DIAssignID !670
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !613, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !614, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !615, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !616, metadata !DIExpression()), !dbg !671
  %7 = load i64, ptr %2, align 8, !dbg !672, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !617, metadata !DIExpression()), !dbg !671
  %8 = load i64, ptr %3, align 8, !dbg !673, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !618, metadata !DIExpression()), !dbg !671
  %9 = load i64, ptr %0, align 8, !dbg !674, !tbaa !273
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !619, metadata !DIExpression()), !dbg !671
  switch i64 %9, label %10 [
    i64 1, label %1111
    i64 2, label %16
  ], !dbg !675

10:                                               ; preds = %4
  %11 = add i64 %9, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !628, metadata !DIExpression()), !dbg !671
  %12 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !302
  %14 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !349
  br label %506, !dbg !676

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !677, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %1, metadata !680, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !681, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !682, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %7, metadata !690, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %8, metadata !691, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !728
  call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression()), !dbg !728
  %17 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 2, !dbg !730
  %18 = load ptr, ptr %17, align 8, !dbg !730, !tbaa !302
  %19 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 1, !dbg !731
  %20 = load double, ptr %18, align 8, !dbg !732, !tbaa !304
  call void @llvm.dbg.value(metadata double %20, metadata !692, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression()), !dbg !733
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2, !dbg !735
  %22 = load ptr, ptr %21, align 8, !dbg !735, !tbaa !302
  %23 = load double, ptr %22, align 8, !dbg !736, !tbaa !304
  call void @llvm.dbg.value(metadata double %23, metadata !693, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !737
  call void @llvm.dbg.value(metadata i64 1, metadata !344, metadata !DIExpression()), !dbg !737
  %24 = load i64, ptr %19, align 8, !dbg !739, !tbaa !349
  %25 = getelementptr inbounds double, ptr %18, i64 %24, !dbg !740
  %26 = load double, ptr %25, align 8, !dbg !740, !tbaa !304
  call void @llvm.dbg.value(metadata double %26, metadata !694, metadata !DIExpression()), !dbg !724
  %27 = fcmp oeq double %20, 0.000000e+00, !dbg !741
  %28 = fcmp oeq double %26, 0.000000e+00, !dbg !742
  br i1 %27, label %29, label %150, !dbg !743

29:                                               ; preds = %16
  call void @llvm.dbg.value(metadata double %23, metadata !744, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata double %26, metadata !749, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata ptr undef, metadata !750, metadata !DIExpression()), !dbg !760
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !760
  br i1 %28, label %48, label %30, !dbg !762

30:                                               ; preds = %29
  %31 = tail call double @llvm.fabs.f64(double %26), !dbg !763
  %32 = tail call double @llvm.fabs.f64(double %23), !dbg !764
  %33 = fcmp ogt double %31, %32, !dbg !765
  br i1 %33, label %34, label %41, !dbg !766

34:                                               ; preds = %30
  %35 = fneg double %23, !dbg !767
  %36 = fdiv double %35, %26, !dbg !768
  call void @llvm.dbg.value(metadata double %36, metadata !752, metadata !DIExpression()), !dbg !769
  %37 = fmul double %36, %36, !dbg !770
  %handler_result = call double @fAddHandlerDouble(double %37, double 1.000000e+00), !dbg !771
  %38 = tail call double @llvm.sqrt.f64(double %handler_result), !dbg !771
  %39 = fdiv double 1.000000e+00, %38, !dbg !772
  call void @llvm.dbg.value(metadata double %39, metadata !756, metadata !DIExpression()), !dbg !769
  call void @llvm.dbg.value(metadata double %39, metadata !685, metadata !DIExpression()), !dbg !724
  %40 = fmul double %36, %39, !dbg !773
  call void @llvm.dbg.value(metadata double %40, metadata !684, metadata !DIExpression()), !dbg !724
  br label %48, !dbg !774

41:                                               ; preds = %30
  %42 = fneg double %26, !dbg !775
  %43 = fdiv double %42, %23, !dbg !776
  call void @llvm.dbg.value(metadata double %43, metadata !757, metadata !DIExpression()), !dbg !777
  %44 = fmul double %43, %43, !dbg !778
  %handler_result1 = call double @fAddHandlerDouble(double %44, double 1.000000e+00), !dbg !779
  %45 = tail call double @llvm.sqrt.f64(double %handler_result1), !dbg !779
  %46 = fdiv double 1.000000e+00, %45, !dbg !780
  call void @llvm.dbg.value(metadata double %46, metadata !759, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata double %46, metadata !684, metadata !DIExpression()), !dbg !724
  %47 = fmul double %43, %46, !dbg !781
  call void @llvm.dbg.value(metadata double %47, metadata !685, metadata !DIExpression()), !dbg !724
  br label %48

48:                                               ; preds = %41, %34, %29
  %49 = phi double [ %40, %34 ], [ %46, %41 ], [ 1.000000e+00, %29 ], !dbg !782
  %50 = phi double [ %39, %34 ], [ %47, %41 ], [ 0.000000e+00, %29 ], !dbg !782
  call void @llvm.dbg.value(metadata double %50, metadata !685, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %49, metadata !684, metadata !DIExpression()), !dbg !724
  %51 = fmul double %23, %49, !dbg !783
  %52 = fmul double %26, %50, !dbg !784
  %handler_result2 = call double @fSubHandlerDouble(double %51, double %52), !dbg !785
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata double %handler_result2, metadata !298, metadata !DIExpression()), !dbg !787
  store double %handler_result2, ptr %18, align 8, !dbg !785, !tbaa !304
  %53 = fmul double %23, %50, !dbg !788
  %54 = fmul double %26, %49, !dbg !789
  %handler_result3 = call double @fAddHandlerDouble(double %54, double %53), !dbg !790
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !298, metadata !DIExpression()), !dbg !792
  store double %handler_result3, ptr %22, align 8, !dbg !790, !tbaa !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata i64 1, metadata !297, metadata !DIExpression()), !dbg !793
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !793
  store double 0.000000e+00, ptr %25, align 8, !dbg !795, !tbaa !304
  call void @llvm.dbg.value(metadata i64 0, metadata !683, metadata !DIExpression()), !dbg !724
  %55 = icmp eq i64 %7, 0, !dbg !796
  br i1 %55, label %148, label %56, !dbg !797

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !318
  %59 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !463
  %61 = icmp eq i64 %60, 1, !dbg !797
  br i1 %61, label %92, label %62, !dbg !797

62:                                               ; preds = %56
  %63 = and i64 %7, 1, !dbg !797
  %64 = icmp eq i64 %7, 1, !dbg !797
  br i1 %64, label %135, label %65, !dbg !797

65:                                               ; preds = %62
  %66 = and i64 %7, -2, !dbg !797
  br label %67, !dbg !797

67:                                               ; preds = %67, %65
  %68 = phi i64 [ 0, %65 ], [ %89, %67 ]
  %69 = phi i64 [ 0, %65 ], [ %90, %67 ]
  call void @llvm.dbg.value(metadata i64 %68, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %68, metadata !471, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !798
  %70 = mul i64 %68, %60, !dbg !800
  %71 = getelementptr double, ptr %58, i64 %70, !dbg !801
  %72 = load double, ptr %71, align 8, !dbg !801, !tbaa !304
  call void @llvm.dbg.value(metadata double %72, metadata !695, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %68, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !803
  %73 = getelementptr double, ptr %71, i64 1, !dbg !805
  %74 = load double, ptr %73, align 8, !dbg !805, !tbaa !304
  call void @llvm.dbg.value(metadata double %74, metadata !701, metadata !DIExpression()), !dbg !802
  %75 = fmul double %49, %72, !dbg !806
  %76 = fmul double %50, %74, !dbg !807
  %handler_result4 = call double @fSubHandlerDouble(double %75, double %76), !dbg !808
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %68, metadata !312, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !314, metadata !DIExpression()), !dbg !810
  store double %handler_result4, ptr %71, align 8, !dbg !808, !tbaa !304
  %77 = fmul double %50, %72, !dbg !811
  %78 = fmul double %49, %74, !dbg !812
  %handler_result5 = call double @fAddHandlerDouble(double %77, double %78), !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 %68, metadata !312, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !314, metadata !DIExpression()), !dbg !815
  store double %handler_result5, ptr %73, align 8, !dbg !813, !tbaa !304
  %79 = or disjoint i64 %68, 1, !dbg !816
  call void @llvm.dbg.value(metadata i64 %79, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %79, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %79, metadata !471, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !798
  %80 = mul i64 %79, %60, !dbg !800
  %81 = getelementptr double, ptr %58, i64 %80, !dbg !801
  %82 = load double, ptr %81, align 8, !dbg !801, !tbaa !304
  call void @llvm.dbg.value(metadata double %82, metadata !695, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %79, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !803
  %83 = getelementptr double, ptr %81, i64 1, !dbg !805
  %84 = load double, ptr %83, align 8, !dbg !805, !tbaa !304
  call void @llvm.dbg.value(metadata double %84, metadata !701, metadata !DIExpression()), !dbg !802
  %85 = fmul double %49, %82, !dbg !806
  %86 = fmul double %50, %84, !dbg !807
  %handler_result6 = call double @fSubHandlerDouble(double %85, double %86), !dbg !808
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %79, metadata !312, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !314, metadata !DIExpression()), !dbg !810
  store double %handler_result6, ptr %81, align 8, !dbg !808, !tbaa !304
  %87 = fmul double %50, %82, !dbg !811
  %88 = fmul double %49, %84, !dbg !812
  %handler_result7 = call double @fAddHandlerDouble(double %87, double %88), !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 %79, metadata !312, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !314, metadata !DIExpression()), !dbg !815
  store double %handler_result7, ptr %83, align 8, !dbg !813, !tbaa !304
  %89 = add nuw i64 %68, 2, !dbg !816
  call void @llvm.dbg.value(metadata i64 %89, metadata !683, metadata !DIExpression()), !dbg !724
  %90 = add i64 %69, 2, !dbg !797
  %91 = icmp eq i64 %90, %66, !dbg !797
  br i1 %91, label %135, label %67, !dbg !797, !llvm.loop !817

92:                                               ; preds = %56
  %93 = load double, ptr %58, align 8
  %94 = and i64 %7, 1, !dbg !797
  %95 = icmp eq i64 %7, 1, !dbg !797
  br i1 %95, label %122, label %96, !dbg !797

96:                                               ; preds = %92
  %97 = and i64 %7, -2, !dbg !797
  br label %98, !dbg !797

98:                                               ; preds = %98, %96
  %99 = phi double [ %93, %96 ], [ %handler_result11, %98 ]
  %100 = phi i64 [ 0, %96 ], [ %119, %98 ]
  %101 = phi i64 [ 0, %96 ], [ %120, %98 ]
  call void @llvm.dbg.value(metadata i64 %100, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %100, metadata !471, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !798
  %102 = mul nuw i64 %100, %60, !dbg !800
  %103 = getelementptr double, ptr %58, i64 %102, !dbg !801
  call void @llvm.dbg.value(metadata double %99, metadata !695, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %100, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !803
  %104 = getelementptr double, ptr %103, i64 1, !dbg !805
  %105 = load double, ptr %104, align 8, !dbg !805, !tbaa !304
  call void @llvm.dbg.value(metadata double %105, metadata !701, metadata !DIExpression()), !dbg !802
  %106 = fmul double %49, %99, !dbg !806
  %107 = fmul double %50, %105, !dbg !807
  %handler_result8 = call double @fSubHandlerDouble(double %106, double %107), !dbg !808
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %100, metadata !312, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !314, metadata !DIExpression()), !dbg !810
  store double %handler_result8, ptr %103, align 8, !dbg !808, !tbaa !304
  %108 = fmul double %50, %99, !dbg !811
  %109 = fmul double %49, %105, !dbg !812
  %handler_result9 = call double @fAddHandlerDouble(double %108, double %109), !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 %100, metadata !312, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !314, metadata !DIExpression()), !dbg !815
  store double %handler_result9, ptr %104, align 8, !dbg !813, !tbaa !304
  %110 = or disjoint i64 %100, 1, !dbg !816
  call void @llvm.dbg.value(metadata i64 %110, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %110, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %110, metadata !471, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !798
  %111 = mul nuw i64 %110, %60, !dbg !800
  %112 = getelementptr double, ptr %58, i64 %111, !dbg !801
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !695, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %110, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !803
  %113 = getelementptr double, ptr %112, i64 1, !dbg !805
  %114 = load double, ptr %113, align 8, !dbg !805, !tbaa !304
  call void @llvm.dbg.value(metadata double %114, metadata !701, metadata !DIExpression()), !dbg !802
  %115 = fmul double %49, %handler_result9, !dbg !806
  %116 = fmul double %50, %114, !dbg !807
  %handler_result10 = call double @fSubHandlerDouble(double %115, double %116), !dbg !808
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %110, metadata !312, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !314, metadata !DIExpression()), !dbg !810
  store double %handler_result10, ptr %112, align 8, !dbg !808, !tbaa !304
  %117 = fmul double %50, %handler_result9, !dbg !811
  %118 = fmul double %49, %114, !dbg !812
  %handler_result11 = call double @fAddHandlerDouble(double %117, double %118), !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 %110, metadata !312, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !314, metadata !DIExpression()), !dbg !815
  store double %handler_result11, ptr %113, align 8, !dbg !813, !tbaa !304
  %119 = add nuw i64 %100, 2, !dbg !816
  call void @llvm.dbg.value(metadata i64 %119, metadata !683, metadata !DIExpression()), !dbg !724
  %120 = add i64 %101, 2, !dbg !797
  %121 = icmp eq i64 %120, %97, !dbg !797
  br i1 %121, label %122, label %98, !dbg !797, !llvm.loop !817

122:                                              ; preds = %98, %92
  %123 = phi double [ %93, %92 ], [ %handler_result11, %98 ]
  %124 = phi i64 [ 0, %92 ], [ %119, %98 ]
  %125 = icmp eq i64 %94, 0, !dbg !797
  br i1 %125, label %148, label %126, !dbg !797

126:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i64 %124, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %124, metadata !471, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !798
  %127 = mul nuw i64 %124, %60, !dbg !800
  %128 = getelementptr double, ptr %58, i64 %127, !dbg !801
  call void @llvm.dbg.value(metadata double %123, metadata !695, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %124, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !803
  %129 = getelementptr double, ptr %128, i64 1, !dbg !805
  %130 = load double, ptr %129, align 8, !dbg !805, !tbaa !304
  call void @llvm.dbg.value(metadata double %130, metadata !701, metadata !DIExpression()), !dbg !802
  %131 = fmul double %49, %123, !dbg !806
  %132 = fmul double %50, %130, !dbg !807
  %handler_result12 = call double @fSubHandlerDouble(double %131, double %132), !dbg !808
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %124, metadata !312, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %handler_result12, metadata !314, metadata !DIExpression()), !dbg !810
  store double %handler_result12, ptr %128, align 8, !dbg !808, !tbaa !304
  %133 = fmul double %50, %123, !dbg !811
  %134 = fmul double %49, %130, !dbg !812
  %handler_result13 = call double @fAddHandlerDouble(double %133, double %134), !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 %124, metadata !312, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata double %handler_result13, metadata !314, metadata !DIExpression()), !dbg !815
  store double %handler_result13, ptr %129, align 8, !dbg !813, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %124, metadata !683, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  br label %148, !dbg !819

135:                                              ; preds = %67, %62
  %136 = phi i64 [ 0, %62 ], [ %89, %67 ]
  %137 = icmp eq i64 %63, 0, !dbg !797
  br i1 %137, label %148, label %138, !dbg !797

138:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 %136, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %136, metadata !471, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !798
  %139 = mul i64 %136, %60, !dbg !800
  %140 = getelementptr double, ptr %58, i64 %139, !dbg !801
  %141 = load double, ptr %140, align 8, !dbg !801, !tbaa !304
  call void @llvm.dbg.value(metadata double %141, metadata !695, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %136, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !803
  %142 = getelementptr double, ptr %140, i64 1, !dbg !805
  %143 = load double, ptr %142, align 8, !dbg !805, !tbaa !304
  call void @llvm.dbg.value(metadata double %143, metadata !701, metadata !DIExpression()), !dbg !802
  %144 = fmul double %49, %141, !dbg !806
  %145 = fmul double %50, %143, !dbg !807
  %handler_result14 = call double @fSubHandlerDouble(double %144, double %145), !dbg !808
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %136, metadata !312, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata double %handler_result14, metadata !314, metadata !DIExpression()), !dbg !810
  store double %handler_result14, ptr %140, align 8, !dbg !808, !tbaa !304
  %146 = fmul double %50, %141, !dbg !811
  %147 = fmul double %49, %143, !dbg !812
  %handler_result15 = call double @fAddHandlerDouble(double %146, double %147), !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 %136, metadata !312, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata double %handler_result15, metadata !314, metadata !DIExpression()), !dbg !815
  store double %handler_result15, ptr %142, align 8, !dbg !813, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %136, metadata !683, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  br label %148, !dbg !819

148:                                              ; preds = %138, %135, %126, %122, %48
  %149 = tail call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 1) #10, !dbg !819
  br label %1111, !dbg !820

150:                                              ; preds = %16
  br i1 %28, label %151, label %243, !dbg !821

151:                                              ; preds = %150
  call void @llvm.dbg.value(metadata double %20, metadata !744, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata double %23, metadata !749, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr undef, metadata !750, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !822
  %152 = fcmp oeq double %23, 0.000000e+00, !dbg !824
  br i1 %152, label %171, label %153, !dbg !825

153:                                              ; preds = %151
  %154 = tail call double @llvm.fabs.f64(double %23), !dbg !826
  %155 = tail call double @llvm.fabs.f64(double %20), !dbg !827
  %156 = fcmp ogt double %154, %155, !dbg !828
  br i1 %156, label %157, label %164, !dbg !829

157:                                              ; preds = %153
  %158 = fneg double %20, !dbg !830
  %159 = fdiv double %158, %23, !dbg !831
  call void @llvm.dbg.value(metadata double %159, metadata !752, metadata !DIExpression()), !dbg !832
  %160 = fmul double %159, %159, !dbg !833
  %handler_result16 = call double @fAddHandlerDouble(double %160, double 1.000000e+00), !dbg !834
  %161 = tail call double @llvm.sqrt.f64(double %handler_result16), !dbg !834
  %162 = fdiv double 1.000000e+00, %161, !dbg !835
  call void @llvm.dbg.value(metadata double %162, metadata !756, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata double %162, metadata !685, metadata !DIExpression()), !dbg !724
  %163 = fmul double %159, %162, !dbg !836
  call void @llvm.dbg.value(metadata double %163, metadata !684, metadata !DIExpression()), !dbg !724
  br label %171, !dbg !837

164:                                              ; preds = %153
  %165 = fneg double %23, !dbg !838
  %166 = fdiv double %165, %20, !dbg !839
  call void @llvm.dbg.value(metadata double %166, metadata !757, metadata !DIExpression()), !dbg !840
  %167 = fmul double %166, %166, !dbg !841
  %handler_result17 = call double @fAddHandlerDouble(double %167, double 1.000000e+00), !dbg !842
  %168 = tail call double @llvm.sqrt.f64(double %handler_result17), !dbg !842
  %169 = fdiv double 1.000000e+00, %168, !dbg !843
  call void @llvm.dbg.value(metadata double %169, metadata !759, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata double %169, metadata !684, metadata !DIExpression()), !dbg !724
  %170 = fmul double %166, %169, !dbg !844
  call void @llvm.dbg.value(metadata double %170, metadata !685, metadata !DIExpression()), !dbg !724
  br label %171

171:                                              ; preds = %164, %157, %151
  %172 = phi double [ %163, %157 ], [ %169, %164 ], [ 1.000000e+00, %151 ], !dbg !845
  %173 = phi double [ %162, %157 ], [ %170, %164 ], [ 0.000000e+00, %151 ], !dbg !845
  call void @llvm.dbg.value(metadata double %173, metadata !685, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %172, metadata !684, metadata !DIExpression()), !dbg !724
  %174 = fmul double %20, %172, !dbg !846
  %175 = fmul double %23, %173, !dbg !847
  %handler_result18 = call double @fSubHandlerDouble(double %174, double %175), !dbg !848
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !298, metadata !DIExpression()), !dbg !850
  store double %handler_result18, ptr %18, align 8, !dbg !848, !tbaa !304
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !851
  store double 0.000000e+00, ptr %22, align 8, !dbg !853, !tbaa !304
  call void @llvm.dbg.value(metadata i64 0, metadata !683, metadata !DIExpression()), !dbg !724
  %176 = icmp eq i64 %8, 0, !dbg !854
  br i1 %176, label %1111, label %177, !dbg !855

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !318
  %180 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  %181 = load i64, ptr %180, align 8, !tbaa !463
  %182 = icmp eq i64 %181, 1, !dbg !855
  br i1 %182, label %213, label %183, !dbg !855

183:                                              ; preds = %177
  %184 = and i64 %8, 1, !dbg !855
  %185 = icmp eq i64 %8, 1, !dbg !855
  br i1 %185, label %1072, label %186, !dbg !855

186:                                              ; preds = %183
  %187 = and i64 %8, -2, !dbg !855
  br label %188, !dbg !855

188:                                              ; preds = %188, %186
  %189 = phi i64 [ 0, %186 ], [ %210, %188 ]
  %190 = phi i64 [ 0, %186 ], [ %211, %188 ]
  call void @llvm.dbg.value(metadata i64 %189, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 %189, metadata !471, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !856
  %191 = mul i64 %189, %181, !dbg !858
  %192 = getelementptr double, ptr %179, i64 %191, !dbg !859
  %193 = load double, ptr %192, align 8, !dbg !859, !tbaa !304
  call void @llvm.dbg.value(metadata double %193, metadata !702, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %189, metadata !471, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !861
  %194 = getelementptr double, ptr %192, i64 1, !dbg !863
  %195 = load double, ptr %194, align 8, !dbg !863, !tbaa !304
  call void @llvm.dbg.value(metadata double %195, metadata !708, metadata !DIExpression()), !dbg !860
  %196 = fmul double %172, %193, !dbg !864
  %197 = fmul double %173, %195, !dbg !865
  %handler_result19 = call double @fSubHandlerDouble(double %196, double %197), !dbg !866
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %189, metadata !312, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !314, metadata !DIExpression()), !dbg !868
  store double %handler_result19, ptr %192, align 8, !dbg !866, !tbaa !304
  %198 = fmul double %173, %193, !dbg !869
  %199 = fmul double %172, %195, !dbg !870
  %handler_result20 = call double @fAddHandlerDouble(double %198, double %199), !dbg !871
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 %189, metadata !312, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !314, metadata !DIExpression()), !dbg !873
  store double %handler_result20, ptr %194, align 8, !dbg !871, !tbaa !304
  %200 = or disjoint i64 %189, 1, !dbg !874
  call void @llvm.dbg.value(metadata i64 %200, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %200, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 %200, metadata !471, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !856
  %201 = mul i64 %200, %181, !dbg !858
  %202 = getelementptr double, ptr %179, i64 %201, !dbg !859
  %203 = load double, ptr %202, align 8, !dbg !859, !tbaa !304
  call void @llvm.dbg.value(metadata double %203, metadata !702, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %200, metadata !471, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !861
  %204 = getelementptr double, ptr %202, i64 1, !dbg !863
  %205 = load double, ptr %204, align 8, !dbg !863, !tbaa !304
  call void @llvm.dbg.value(metadata double %205, metadata !708, metadata !DIExpression()), !dbg !860
  %206 = fmul double %172, %203, !dbg !864
  %207 = fmul double %173, %205, !dbg !865
  %handler_result21 = call double @fSubHandlerDouble(double %206, double %207), !dbg !866
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %200, metadata !312, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !314, metadata !DIExpression()), !dbg !868
  store double %handler_result21, ptr %202, align 8, !dbg !866, !tbaa !304
  %208 = fmul double %173, %203, !dbg !869
  %209 = fmul double %172, %205, !dbg !870
  %handler_result22 = call double @fAddHandlerDouble(double %208, double %209), !dbg !871
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 %200, metadata !312, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !314, metadata !DIExpression()), !dbg !873
  store double %handler_result22, ptr %204, align 8, !dbg !871, !tbaa !304
  %210 = add nuw i64 %189, 2, !dbg !874
  call void @llvm.dbg.value(metadata i64 %210, metadata !683, metadata !DIExpression()), !dbg !724
  %211 = add i64 %190, 2, !dbg !855
  %212 = icmp eq i64 %211, %187, !dbg !855
  br i1 %212, label %1072, label %188, !dbg !855, !llvm.loop !875

213:                                              ; preds = %177
  %214 = load double, ptr %179, align 8
  %215 = and i64 %8, 1, !dbg !855
  %216 = icmp eq i64 %8, 1, !dbg !855
  br i1 %216, label %1059, label %217, !dbg !855

217:                                              ; preds = %213
  %218 = and i64 %8, -2, !dbg !855
  br label %219, !dbg !855

219:                                              ; preds = %219, %217
  %220 = phi double [ %214, %217 ], [ %handler_result26, %219 ]
  %221 = phi i64 [ 0, %217 ], [ %240, %219 ]
  %222 = phi i64 [ 0, %217 ], [ %241, %219 ]
  call void @llvm.dbg.value(metadata i64 %221, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 %221, metadata !471, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !856
  %223 = mul nuw i64 %221, %181, !dbg !858
  %224 = getelementptr double, ptr %179, i64 %223, !dbg !859
  call void @llvm.dbg.value(metadata double %220, metadata !702, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %221, metadata !471, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !861
  %225 = getelementptr double, ptr %224, i64 1, !dbg !863
  %226 = load double, ptr %225, align 8, !dbg !863, !tbaa !304
  call void @llvm.dbg.value(metadata double %226, metadata !708, metadata !DIExpression()), !dbg !860
  %227 = fmul double %172, %220, !dbg !864
  %228 = fmul double %173, %226, !dbg !865
  %handler_result23 = call double @fSubHandlerDouble(double %227, double %228), !dbg !866
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %221, metadata !312, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !314, metadata !DIExpression()), !dbg !868
  store double %handler_result23, ptr %224, align 8, !dbg !866, !tbaa !304
  %229 = fmul double %173, %220, !dbg !869
  %230 = fmul double %172, %226, !dbg !870
  %handler_result24 = call double @fAddHandlerDouble(double %229, double %230), !dbg !871
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 %221, metadata !312, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !314, metadata !DIExpression()), !dbg !873
  store double %handler_result24, ptr %225, align 8, !dbg !871, !tbaa !304
  %231 = or disjoint i64 %221, 1, !dbg !874
  call void @llvm.dbg.value(metadata i64 %231, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %231, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 %231, metadata !471, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !856
  %232 = mul nuw i64 %231, %181, !dbg !858
  %233 = getelementptr double, ptr %179, i64 %232, !dbg !859
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !702, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %231, metadata !471, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !861
  %234 = getelementptr double, ptr %233, i64 1, !dbg !863
  %235 = load double, ptr %234, align 8, !dbg !863, !tbaa !304
  call void @llvm.dbg.value(metadata double %235, metadata !708, metadata !DIExpression()), !dbg !860
  %236 = fmul double %172, %handler_result24, !dbg !864
  %237 = fmul double %173, %235, !dbg !865
  %handler_result25 = call double @fSubHandlerDouble(double %236, double %237), !dbg !866
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %231, metadata !312, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata double %handler_result25, metadata !314, metadata !DIExpression()), !dbg !868
  store double %handler_result25, ptr %233, align 8, !dbg !866, !tbaa !304
  %238 = fmul double %173, %handler_result24, !dbg !869
  %239 = fmul double %172, %235, !dbg !870
  %handler_result26 = call double @fAddHandlerDouble(double %238, double %239), !dbg !871
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 %231, metadata !312, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata double %handler_result26, metadata !314, metadata !DIExpression()), !dbg !873
  store double %handler_result26, ptr %234, align 8, !dbg !871, !tbaa !304
  %240 = add nuw i64 %221, 2, !dbg !874
  call void @llvm.dbg.value(metadata i64 %240, metadata !683, metadata !DIExpression()), !dbg !724
  %241 = add i64 %222, 2, !dbg !855
  %242 = icmp eq i64 %241, %218, !dbg !855
  br i1 %242, label %1059, label %219, !dbg !855, !llvm.loop !875

243:                                              ; preds = %150
  call void @llvm.dbg.assign(metadata i1 undef, metadata !877, metadata !DIExpression(), metadata !669, metadata ptr %5, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.assign(metadata i1 undef, metadata !891, metadata !DIExpression(), metadata !670, metadata ptr %6, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata double %20, metadata !884, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata double %23, metadata !885, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata double %26, metadata !886, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr undef, metadata !887, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr undef, metadata !888, metadata !DIExpression()), !dbg !898
  %244 = fmul double %20, 2.000000e+00, !dbg !899
  %245 = fmul double %244, %23, !dbg !900
  call void @llvm.dbg.value(metadata double %245, metadata !889, metadata !DIExpression()), !dbg !898
  %246 = fcmp oeq double %23, 0.000000e+00
  br i1 %246, label %293, label %247, !dbg !901

247:                                              ; preds = %243
  %248 = tail call double @llvm.fabs.f64(double %20), !dbg !903
  %249 = fcmp olt double %248, 0x2000000000000000, !dbg !904
  %250 = fcmp ogt double %248, 0x5FEFFFFFFFFFFFFF
  %251 = or i1 %249, %250, !dbg !905
  br i1 %251, label %262, label %252, !dbg !905

252:                                              ; preds = %247
  %253 = tail call double @llvm.fabs.f64(double %23), !dbg !906
  %254 = fcmp olt double %253, 0x2000000000000000, !dbg !907
  %255 = fcmp ogt double %253, 0x5FEFFFFFFFFFFFFF
  %256 = or i1 %254, %255, !dbg !908
  br i1 %256, label %262, label %257, !dbg !908

257:                                              ; preds = %252
  %258 = tail call double @llvm.fabs.f64(double %26), !dbg !909
  %259 = fcmp olt double %258, 0x2000000000000000, !dbg !910
  %260 = fcmp ogt double %258, 0x5FEFFFFFFFFFFFFF
  %261 = or i1 %259, %260, !dbg !911
  br i1 %261, label %262, label %275, !dbg !911

262:                                              ; preds = %257, %252, %247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10, !dbg !912
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10, !dbg !912
  %263 = call double @frexp(double noundef %20, ptr noundef nonnull %5) #10, !dbg !913
  %264 = call double @frexp(double noundef %23, ptr noundef nonnull %6) #10, !dbg !914
  %265 = load i32, ptr %5, align 4, !dbg !915, !tbaa !916
  %266 = load i32, ptr %6, align 4, !dbg !917, !tbaa !916
  %267 = add nsw i32 %266, %265, !dbg !918
  %268 = sdiv i32 %267, -4, !dbg !919
  %269 = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %268) #10, !dbg !920
  call void @llvm.dbg.value(metadata double %269, metadata !890, metadata !DIExpression()), !dbg !896
  %270 = fmul double %20, %269, !dbg !921
  call void @llvm.dbg.value(metadata double %270, metadata !884, metadata !DIExpression()), !dbg !898
  %271 = fmul double %23, %269, !dbg !922
  call void @llvm.dbg.value(metadata double %271, metadata !885, metadata !DIExpression()), !dbg !898
  %272 = fmul double %26, %269, !dbg !923
  call void @llvm.dbg.value(metadata double %272, metadata !886, metadata !DIExpression()), !dbg !898
  %273 = fmul double %270, 2.000000e+00, !dbg !924
  %274 = fmul double %271, %273, !dbg !925
  call void @llvm.dbg.value(metadata double %274, metadata !889, metadata !DIExpression()), !dbg !898
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10, !dbg !926
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10, !dbg !926
  br label %275, !dbg !927

275:                                              ; preds = %262, %257
  %276 = phi double [ %272, %262 ], [ %26, %257 ]
  %277 = phi double [ %274, %262 ], [ %245, %257 ], !dbg !898
  %278 = phi double [ %271, %262 ], [ %23, %257 ]
  %279 = phi double [ %270, %262 ], [ %20, %257 ]
  call void @llvm.dbg.value(metadata double %279, metadata !884, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata double %278, metadata !885, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata double %277, metadata !889, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata double %276, metadata !886, metadata !DIExpression()), !dbg !898
  %280 = fcmp une double %277, 0.000000e+00, !dbg !928
  br i1 %280, label %281, label %293, !dbg !929

281:                                              ; preds = %275
  %282 = fmul double %278, %278, !dbg !930
  %handler_result27 = call double @fAddHandlerDouble(double %276, double %279), !dbg !931
  %handler_result28 = call double @fSubHandlerDouble(double %276, double %279), !dbg !932
  %283 = fmul double %handler_result27, %handler_result28, !dbg !932
  %handler_result29 = call double @fAddHandlerDouble(double %282, double %283), !dbg !933
  %284 = fdiv double %handler_result29, %277, !dbg !933
  call void @llvm.dbg.value(metadata double %284, metadata !895, metadata !DIExpression()), !dbg !934
  %285 = fcmp ult double %284, 0.000000e+00, !dbg !935
  %286 = tail call double @hypot(double noundef 1.000000e+00, double noundef %284) #10, !dbg !937
  %handler_result30 = call double @fAddHandlerDouble(double %284, double %286), !dbg !938
  %287 = fdiv double 1.000000e+00, %handler_result30, !dbg !938
  %handler_result31 = call double @fSubHandlerDouble(double %286, double %284), !dbg !938
  %288 = fdiv double -1.000000e+00, %handler_result31, !dbg !938
  %289 = select i1 %285, double %288, double %287, !dbg !938
  call void @llvm.dbg.value(metadata double %289, metadata !892, metadata !DIExpression()), !dbg !934
  %290 = tail call double @hypot(double noundef 1.000000e+00, double noundef %289) #10, !dbg !939
  %291 = fdiv double 1.000000e+00, %290, !dbg !940
  call void @llvm.dbg.value(metadata double %291, metadata !684, metadata !DIExpression()), !dbg !724
  %292 = fmul double %291, %289, !dbg !941
  br label %293, !dbg !942

293:                                              ; preds = %281, %275, %243
  %294 = phi double [ %291, %281 ], [ 1.000000e+00, %243 ], [ 1.000000e+00, %275 ], !dbg !898
  %295 = phi double [ %292, %281 ], [ 0.000000e+00, %243 ], [ 0.000000e+00, %275 ], !dbg !898
  call void @llvm.dbg.value(metadata double %294, metadata !684, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %295, metadata !685, metadata !DIExpression()), !dbg !724
  %296 = fmul double %20, %294, !dbg !943
  %297 = fmul double %23, %295, !dbg !944
  %handler_result32 = call double @fSubHandlerDouble(double %296, double %297), !dbg !945
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !686, metadata !DIExpression()), !dbg !724
  %298 = fneg double %295, !dbg !945
  %299 = fmul double %26, %298, !dbg !946
  call void @llvm.dbg.value(metadata double %299, metadata !688, metadata !DIExpression()), !dbg !724
  %300 = fmul double %20, %295, !dbg !947
  %301 = fmul double %23, %294, !dbg !948
  %handler_result33 = call double @fAddHandlerDouble(double %301, double %300), !dbg !949
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !687, metadata !DIExpression()), !dbg !724
  %302 = fmul double %26, %294, !dbg !949
  call void @llvm.dbg.value(metadata double %302, metadata !689, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 0, metadata !683, metadata !DIExpression()), !dbg !724
  %303 = icmp eq i64 %8, 0, !dbg !950
  br i1 %303, label %396, label %304, !dbg !951

304:                                              ; preds = %293
  %305 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %306 = load ptr, ptr %305, align 8, !tbaa !318
  %307 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  %308 = load i64, ptr %307, align 8, !tbaa !463
  %309 = icmp eq i64 %308, 1, !dbg !951
  br i1 %309, label %340, label %310, !dbg !951

310:                                              ; preds = %304
  %311 = and i64 %8, 1, !dbg !951
  %312 = icmp eq i64 %8, 1, !dbg !951
  br i1 %312, label %383, label %313, !dbg !951

313:                                              ; preds = %310
  %314 = and i64 %8, -2, !dbg !951
  br label %315, !dbg !951

315:                                              ; preds = %315, %313
  %316 = phi i64 [ 0, %313 ], [ %337, %315 ]
  %317 = phi i64 [ 0, %313 ], [ %338, %315 ]
  call void @llvm.dbg.value(metadata i64 %316, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 %316, metadata !471, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !952
  %318 = mul i64 %316, %308, !dbg !954
  %319 = getelementptr double, ptr %306, i64 %318, !dbg !955
  %320 = load double, ptr %319, align 8, !dbg !955, !tbaa !304
  call void @llvm.dbg.value(metadata double %320, metadata !709, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 %316, metadata !471, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !957
  %321 = getelementptr double, ptr %319, i64 1, !dbg !959
  %322 = load double, ptr %321, align 8, !dbg !959, !tbaa !304
  call void @llvm.dbg.value(metadata double %322, metadata !714, metadata !DIExpression()), !dbg !956
  %323 = fmul double %294, %320, !dbg !960
  %324 = fmul double %295, %322, !dbg !961
  %handler_result34 = call double @fSubHandlerDouble(double %323, double %324), !dbg !962
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %316, metadata !312, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata double %handler_result34, metadata !314, metadata !DIExpression()), !dbg !964
  store double %handler_result34, ptr %319, align 8, !dbg !962, !tbaa !304
  %325 = fmul double %295, %320, !dbg !965
  %326 = fmul double %294, %322, !dbg !966
  %handler_result35 = call double @fAddHandlerDouble(double %325, double %326), !dbg !967
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %316, metadata !312, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata double %handler_result35, metadata !314, metadata !DIExpression()), !dbg !969
  store double %handler_result35, ptr %321, align 8, !dbg !967, !tbaa !304
  %327 = or disjoint i64 %316, 1, !dbg !970
  call void @llvm.dbg.value(metadata i64 %327, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %327, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 %327, metadata !471, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !952
  %328 = mul i64 %327, %308, !dbg !954
  %329 = getelementptr double, ptr %306, i64 %328, !dbg !955
  %330 = load double, ptr %329, align 8, !dbg !955, !tbaa !304
  call void @llvm.dbg.value(metadata double %330, metadata !709, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 %327, metadata !471, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !957
  %331 = getelementptr double, ptr %329, i64 1, !dbg !959
  %332 = load double, ptr %331, align 8, !dbg !959, !tbaa !304
  call void @llvm.dbg.value(metadata double %332, metadata !714, metadata !DIExpression()), !dbg !956
  %333 = fmul double %294, %330, !dbg !960
  %334 = fmul double %295, %332, !dbg !961
  %handler_result36 = call double @fSubHandlerDouble(double %333, double %334), !dbg !962
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %327, metadata !312, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata double %handler_result36, metadata !314, metadata !DIExpression()), !dbg !964
  store double %handler_result36, ptr %329, align 8, !dbg !962, !tbaa !304
  %335 = fmul double %295, %330, !dbg !965
  %336 = fmul double %294, %332, !dbg !966
  %handler_result37 = call double @fAddHandlerDouble(double %335, double %336), !dbg !967
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %327, metadata !312, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata double %handler_result37, metadata !314, metadata !DIExpression()), !dbg !969
  store double %handler_result37, ptr %331, align 8, !dbg !967, !tbaa !304
  %337 = add nuw i64 %316, 2, !dbg !970
  call void @llvm.dbg.value(metadata i64 %337, metadata !683, metadata !DIExpression()), !dbg !724
  %338 = add i64 %317, 2, !dbg !951
  %339 = icmp eq i64 %338, %314, !dbg !951
  br i1 %339, label %383, label %315, !dbg !951, !llvm.loop !971

340:                                              ; preds = %304
  %341 = load double, ptr %306, align 8
  %342 = and i64 %8, 1, !dbg !951
  %343 = icmp eq i64 %8, 1, !dbg !951
  br i1 %343, label %370, label %344, !dbg !951

344:                                              ; preds = %340
  %345 = and i64 %8, -2, !dbg !951
  br label %346, !dbg !951

346:                                              ; preds = %346, %344
  %347 = phi double [ %341, %344 ], [ %handler_result41, %346 ]
  %348 = phi i64 [ 0, %344 ], [ %367, %346 ]
  %349 = phi i64 [ 0, %344 ], [ %368, %346 ]
  call void @llvm.dbg.value(metadata i64 %348, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 %348, metadata !471, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !952
  %350 = mul nuw i64 %348, %308, !dbg !954
  %351 = getelementptr double, ptr %306, i64 %350, !dbg !955
  call void @llvm.dbg.value(metadata double %347, metadata !709, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 %348, metadata !471, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !957
  %352 = getelementptr double, ptr %351, i64 1, !dbg !959
  %353 = load double, ptr %352, align 8, !dbg !959, !tbaa !304
  call void @llvm.dbg.value(metadata double %353, metadata !714, metadata !DIExpression()), !dbg !956
  %354 = fmul double %294, %347, !dbg !960
  %355 = fmul double %295, %353, !dbg !961
  %handler_result38 = call double @fSubHandlerDouble(double %354, double %355), !dbg !962
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %348, metadata !312, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata double %handler_result38, metadata !314, metadata !DIExpression()), !dbg !964
  store double %handler_result38, ptr %351, align 8, !dbg !962, !tbaa !304
  %356 = fmul double %295, %347, !dbg !965
  %357 = fmul double %294, %353, !dbg !966
  %handler_result39 = call double @fAddHandlerDouble(double %356, double %357), !dbg !967
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %348, metadata !312, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !314, metadata !DIExpression()), !dbg !969
  store double %handler_result39, ptr %352, align 8, !dbg !967, !tbaa !304
  %358 = or disjoint i64 %348, 1, !dbg !970
  call void @llvm.dbg.value(metadata i64 %358, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %358, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 %358, metadata !471, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !952
  %359 = mul nuw i64 %358, %308, !dbg !954
  %360 = getelementptr double, ptr %306, i64 %359, !dbg !955
  call void @llvm.dbg.value(metadata double %handler_result39, metadata !709, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 %358, metadata !471, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !957
  %361 = getelementptr double, ptr %360, i64 1, !dbg !959
  %362 = load double, ptr %361, align 8, !dbg !959, !tbaa !304
  call void @llvm.dbg.value(metadata double %362, metadata !714, metadata !DIExpression()), !dbg !956
  %363 = fmul double %294, %handler_result39, !dbg !960
  %364 = fmul double %295, %362, !dbg !961
  %handler_result40 = call double @fSubHandlerDouble(double %363, double %364), !dbg !962
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %358, metadata !312, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata double %handler_result40, metadata !314, metadata !DIExpression()), !dbg !964
  store double %handler_result40, ptr %360, align 8, !dbg !962, !tbaa !304
  %365 = fmul double %295, %handler_result39, !dbg !965
  %366 = fmul double %294, %362, !dbg !966
  %handler_result41 = call double @fAddHandlerDouble(double %365, double %366), !dbg !967
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %358, metadata !312, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata double %handler_result41, metadata !314, metadata !DIExpression()), !dbg !969
  store double %handler_result41, ptr %361, align 8, !dbg !967, !tbaa !304
  %367 = add nuw i64 %348, 2, !dbg !970
  call void @llvm.dbg.value(metadata i64 %367, metadata !683, metadata !DIExpression()), !dbg !724
  %368 = add i64 %349, 2, !dbg !951
  %369 = icmp eq i64 %368, %345, !dbg !951
  br i1 %369, label %370, label %346, !dbg !951, !llvm.loop !971

370:                                              ; preds = %346, %340
  %371 = phi double [ %341, %340 ], [ %handler_result41, %346 ]
  %372 = phi i64 [ 0, %340 ], [ %367, %346 ]
  %373 = icmp eq i64 %342, 0, !dbg !951
  br i1 %373, label %396, label %374, !dbg !951

374:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i64 %372, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 %372, metadata !471, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !952
  %375 = mul nuw i64 %372, %308, !dbg !954
  %376 = getelementptr double, ptr %306, i64 %375, !dbg !955
  call void @llvm.dbg.value(metadata double %371, metadata !709, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 %372, metadata !471, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !957
  %377 = getelementptr double, ptr %376, i64 1, !dbg !959
  %378 = load double, ptr %377, align 8, !dbg !959, !tbaa !304
  call void @llvm.dbg.value(metadata double %378, metadata !714, metadata !DIExpression()), !dbg !956
  %379 = fmul double %294, %371, !dbg !960
  %380 = fmul double %295, %378, !dbg !961
  %handler_result42 = call double @fSubHandlerDouble(double %379, double %380), !dbg !962
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %372, metadata !312, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata double %handler_result42, metadata !314, metadata !DIExpression()), !dbg !964
  store double %handler_result42, ptr %376, align 8, !dbg !962, !tbaa !304
  %381 = fmul double %295, %371, !dbg !965
  %382 = fmul double %294, %378, !dbg !966
  %handler_result43 = call double @fAddHandlerDouble(double %381, double %382), !dbg !967
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %372, metadata !312, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata double %handler_result43, metadata !314, metadata !DIExpression()), !dbg !969
  store double %handler_result43, ptr %377, align 8, !dbg !967, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %372, metadata !683, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  br label %396, !dbg !973

383:                                              ; preds = %315, %310
  %384 = phi i64 [ 0, %310 ], [ %337, %315 ]
  %385 = icmp eq i64 %311, 0, !dbg !951
  br i1 %385, label %396, label %386, !dbg !951

386:                                              ; preds = %383
  call void @llvm.dbg.value(metadata i64 %384, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 %384, metadata !471, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !952
  %387 = mul i64 %384, %308, !dbg !954
  %388 = getelementptr double, ptr %306, i64 %387, !dbg !955
  %389 = load double, ptr %388, align 8, !dbg !955, !tbaa !304
  call void @llvm.dbg.value(metadata double %389, metadata !709, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 %384, metadata !471, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !957
  %390 = getelementptr double, ptr %388, i64 1, !dbg !959
  %391 = load double, ptr %390, align 8, !dbg !959, !tbaa !304
  call void @llvm.dbg.value(metadata double %391, metadata !714, metadata !DIExpression()), !dbg !956
  %392 = fmul double %294, %389, !dbg !960
  %393 = fmul double %295, %391, !dbg !961
  %handler_result44 = call double @fSubHandlerDouble(double %392, double %393), !dbg !962
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 %384, metadata !312, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata double %handler_result44, metadata !314, metadata !DIExpression()), !dbg !964
  store double %handler_result44, ptr %388, align 8, !dbg !962, !tbaa !304
  %394 = fmul double %295, %389, !dbg !965
  %395 = fmul double %294, %391, !dbg !966
  %handler_result45 = call double @fAddHandlerDouble(double %394, double %395), !dbg !967
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 %384, metadata !312, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !969
  call void @llvm.dbg.value(metadata double %handler_result45, metadata !314, metadata !DIExpression()), !dbg !969
  store double %handler_result45, ptr %390, align 8, !dbg !967, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %384, metadata !683, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  br label %396, !dbg !973

396:                                              ; preds = %386, %383, %374, %370, %293
  %397 = tail call double @hypot(double noundef %handler_result32, double noundef %299) #10, !dbg !973
  %398 = tail call double @hypot(double noundef %handler_result33, double noundef %302) #10, !dbg !974
  %399 = fcmp olt double %397, %398, !dbg !975
  br i1 %399, label %400, label %402, !dbg !976

400:                                              ; preds = %396
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !715, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata double %handler_result33, metadata !686, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %handler_result32, metadata !687, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %299, metadata !718, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata double %302, metadata !688, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %299, metadata !689, metadata !DIExpression()), !dbg !724
  %401 = tail call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 1) #10, !dbg !978
  br label %402, !dbg !979

402:                                              ; preds = %400, %396
  %403 = phi double [ %299, %400 ], [ %302, %396 ], !dbg !980
  %404 = phi double [ %302, %400 ], [ %299, %396 ], !dbg !980
  %405 = phi double [ %handler_result32, %400 ], [ %handler_result33, %396 ], !dbg !980
  %406 = phi double [ %handler_result33, %400 ], [ %handler_result32, %396 ], !dbg !980
  call void @llvm.dbg.value(metadata double %406, metadata !686, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %405, metadata !687, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %404, metadata !688, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %403, metadata !689, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %406, metadata !744, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata double %404, metadata !749, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata ptr undef, metadata !750, metadata !DIExpression()), !dbg !981
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !981
  %407 = fcmp oeq double %404, 0.000000e+00, !dbg !983
  br i1 %407, label %426, label %408, !dbg !984

408:                                              ; preds = %402
  %409 = tail call double @llvm.fabs.f64(double %404), !dbg !985
  %410 = tail call double @llvm.fabs.f64(double %406), !dbg !986
  %411 = fcmp ogt double %409, %410, !dbg !987
  br i1 %411, label %412, label %419, !dbg !988

412:                                              ; preds = %408
  %413 = fneg double %406, !dbg !989
  %414 = fdiv double %413, %404, !dbg !990
  call void @llvm.dbg.value(metadata double %414, metadata !752, metadata !DIExpression()), !dbg !991
  %415 = fmul double %414, %414, !dbg !992
  %handler_result46 = call double @fAddHandlerDouble(double %415, double 1.000000e+00), !dbg !993
  %416 = tail call double @llvm.sqrt.f64(double %handler_result46), !dbg !993
  %417 = fdiv double 1.000000e+00, %416, !dbg !994
  call void @llvm.dbg.value(metadata double %417, metadata !756, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata double %417, metadata !685, metadata !DIExpression()), !dbg !724
  %418 = fmul double %414, %417, !dbg !995
  call void @llvm.dbg.value(metadata double %418, metadata !684, metadata !DIExpression()), !dbg !724
  br label %426, !dbg !996

419:                                              ; preds = %408
  %420 = fneg double %404, !dbg !997
  %421 = fdiv double %420, %406, !dbg !998
  call void @llvm.dbg.value(metadata double %421, metadata !757, metadata !DIExpression()), !dbg !999
  %422 = fmul double %421, %421, !dbg !1000
  %handler_result47 = call double @fAddHandlerDouble(double %422, double 1.000000e+00), !dbg !1001
  %423 = tail call double @llvm.sqrt.f64(double %handler_result47), !dbg !1001
  %424 = fdiv double 1.000000e+00, %423, !dbg !1002
  call void @llvm.dbg.value(metadata double %424, metadata !759, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata double %424, metadata !684, metadata !DIExpression()), !dbg !724
  %425 = fmul double %421, %424, !dbg !1003
  call void @llvm.dbg.value(metadata double %425, metadata !685, metadata !DIExpression()), !dbg !724
  br label %426

426:                                              ; preds = %419, %412, %402
  %427 = phi double [ %418, %412 ], [ %424, %419 ], [ 1.000000e+00, %402 ], !dbg !1004
  %428 = phi double [ %417, %412 ], [ %425, %419 ], [ 0.000000e+00, %402 ], !dbg !1004
  call void @llvm.dbg.value(metadata double %428, metadata !685, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata double %427, metadata !684, metadata !DIExpression()), !dbg !724
  %429 = fmul double %406, %427, !dbg !1005
  %430 = fmul double %404, %428, !dbg !1006
  %handler_result48 = call double @fSubHandlerDouble(double %429, double %430), !dbg !1007
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double %handler_result48, metadata !298, metadata !DIExpression()), !dbg !1009
  %431 = load ptr, ptr %17, align 8, !dbg !1007, !tbaa !302
  store double %handler_result48, ptr %431, align 8, !dbg !1010, !tbaa !304
  %432 = fmul double %405, %427, !dbg !1011
  %433 = fmul double %403, %428, !dbg !1012
  %handler_result49 = call double @fSubHandlerDouble(double %432, double %433), !dbg !1013
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata double %handler_result49, metadata !298, metadata !DIExpression()), !dbg !1015
  %434 = load ptr, ptr %21, align 8, !dbg !1013, !tbaa !302
  store double %handler_result49, ptr %434, align 8, !dbg !1016, !tbaa !304
  %435 = fmul double %405, %428, !dbg !1017
  %436 = fmul double %403, %427, !dbg !1018
  %handler_result50 = call double @fAddHandlerDouble(double %436, double %435), !dbg !1019
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata i64 1, metadata !297, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.value(metadata double %handler_result50, metadata !298, metadata !DIExpression()), !dbg !1021
  %437 = load i64, ptr %19, align 8, !dbg !1019, !tbaa !349
  %438 = getelementptr inbounds double, ptr %431, i64 %437, !dbg !1022
  store double %handler_result50, ptr %438, align 8, !dbg !1023, !tbaa !304
  call void @llvm.dbg.value(metadata i64 0, metadata !683, metadata !DIExpression()), !dbg !724
  %439 = icmp eq i64 %7, 0, !dbg !1024
  br i1 %439, label %1111, label %440, !dbg !1025

440:                                              ; preds = %426
  %441 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %442 = load ptr, ptr %441, align 8, !tbaa !318
  %443 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %444 = load i64, ptr %443, align 8, !tbaa !463
  %445 = icmp eq i64 %444, 1, !dbg !1025
  br i1 %445, label %476, label %446, !dbg !1025

446:                                              ; preds = %440
  %447 = and i64 %7, 1, !dbg !1025
  %448 = icmp eq i64 %7, 1, !dbg !1025
  br i1 %448, label %1098, label %449, !dbg !1025

449:                                              ; preds = %446
  %450 = and i64 %7, -2, !dbg !1025
  br label %451, !dbg !1025

451:                                              ; preds = %451, %449
  %452 = phi i64 [ 0, %449 ], [ %473, %451 ]
  %453 = phi i64 [ 0, %449 ], [ %474, %451 ]
  call void @llvm.dbg.value(metadata i64 %452, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %452, metadata !471, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1026
  %454 = mul i64 %452, %444, !dbg !1028
  %455 = getelementptr double, ptr %442, i64 %454, !dbg !1029
  %456 = load double, ptr %455, align 8, !dbg !1029, !tbaa !304
  call void @llvm.dbg.value(metadata double %456, metadata !719, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %452, metadata !471, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1031
  %457 = getelementptr double, ptr %455, i64 1, !dbg !1033
  %458 = load double, ptr %457, align 8, !dbg !1033, !tbaa !304
  call void @llvm.dbg.value(metadata double %458, metadata !723, metadata !DIExpression()), !dbg !1030
  %459 = fmul double %427, %456, !dbg !1034
  %460 = fmul double %428, %458, !dbg !1035
  %handler_result51 = call double @fSubHandlerDouble(double %459, double %460), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %452, metadata !312, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata double %handler_result51, metadata !314, metadata !DIExpression()), !dbg !1038
  store double %handler_result51, ptr %455, align 8, !dbg !1036, !tbaa !304
  %461 = fmul double %428, %456, !dbg !1039
  %462 = fmul double %427, %458, !dbg !1040
  %handler_result52 = call double @fAddHandlerDouble(double %461, double %462), !dbg !1041
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %452, metadata !312, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata double %handler_result52, metadata !314, metadata !DIExpression()), !dbg !1043
  store double %handler_result52, ptr %457, align 8, !dbg !1041, !tbaa !304
  %463 = or disjoint i64 %452, 1, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %463, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %463, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %463, metadata !471, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1026
  %464 = mul i64 %463, %444, !dbg !1028
  %465 = getelementptr double, ptr %442, i64 %464, !dbg !1029
  %466 = load double, ptr %465, align 8, !dbg !1029, !tbaa !304
  call void @llvm.dbg.value(metadata double %466, metadata !719, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %463, metadata !471, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1031
  %467 = getelementptr double, ptr %465, i64 1, !dbg !1033
  %468 = load double, ptr %467, align 8, !dbg !1033, !tbaa !304
  call void @llvm.dbg.value(metadata double %468, metadata !723, metadata !DIExpression()), !dbg !1030
  %469 = fmul double %427, %466, !dbg !1034
  %470 = fmul double %428, %468, !dbg !1035
  %handler_result53 = call double @fSubHandlerDouble(double %469, double %470), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %463, metadata !312, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata double %handler_result53, metadata !314, metadata !DIExpression()), !dbg !1038
  store double %handler_result53, ptr %465, align 8, !dbg !1036, !tbaa !304
  %471 = fmul double %428, %466, !dbg !1039
  %472 = fmul double %427, %468, !dbg !1040
  %handler_result54 = call double @fAddHandlerDouble(double %471, double %472), !dbg !1041
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %463, metadata !312, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata double %handler_result54, metadata !314, metadata !DIExpression()), !dbg !1043
  store double %handler_result54, ptr %467, align 8, !dbg !1041, !tbaa !304
  %473 = add nuw i64 %452, 2, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %473, metadata !683, metadata !DIExpression()), !dbg !724
  %474 = add i64 %453, 2, !dbg !1025
  %475 = icmp eq i64 %474, %450, !dbg !1025
  br i1 %475, label %1098, label %451, !dbg !1025, !llvm.loop !1045

476:                                              ; preds = %440
  %477 = load double, ptr %442, align 8
  %478 = and i64 %7, 1, !dbg !1025
  %479 = icmp eq i64 %7, 1, !dbg !1025
  br i1 %479, label %1085, label %480, !dbg !1025

480:                                              ; preds = %476
  %481 = and i64 %7, -2, !dbg !1025
  br label %482, !dbg !1025

482:                                              ; preds = %482, %480
  %483 = phi double [ %477, %480 ], [ %handler_result58, %482 ]
  %484 = phi i64 [ 0, %480 ], [ %503, %482 ]
  %485 = phi i64 [ 0, %480 ], [ %504, %482 ]
  call void @llvm.dbg.value(metadata i64 %484, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %484, metadata !471, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1026
  %486 = mul nuw i64 %484, %444, !dbg !1028
  %487 = getelementptr double, ptr %442, i64 %486, !dbg !1029
  call void @llvm.dbg.value(metadata double %483, metadata !719, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %484, metadata !471, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1031
  %488 = getelementptr double, ptr %487, i64 1, !dbg !1033
  %489 = load double, ptr %488, align 8, !dbg !1033, !tbaa !304
  call void @llvm.dbg.value(metadata double %489, metadata !723, metadata !DIExpression()), !dbg !1030
  %490 = fmul double %427, %483, !dbg !1034
  %491 = fmul double %428, %489, !dbg !1035
  %handler_result55 = call double @fSubHandlerDouble(double %490, double %491), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %484, metadata !312, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata double %handler_result55, metadata !314, metadata !DIExpression()), !dbg !1038
  store double %handler_result55, ptr %487, align 8, !dbg !1036, !tbaa !304
  %492 = fmul double %428, %483, !dbg !1039
  %493 = fmul double %427, %489, !dbg !1040
  %handler_result56 = call double @fAddHandlerDouble(double %492, double %493), !dbg !1041
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %484, metadata !312, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !314, metadata !DIExpression()), !dbg !1043
  store double %handler_result56, ptr %488, align 8, !dbg !1041, !tbaa !304
  %494 = or disjoint i64 %484, 1, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %494, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 %494, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %494, metadata !471, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1026
  %495 = mul nuw i64 %494, %444, !dbg !1028
  %496 = getelementptr double, ptr %442, i64 %495, !dbg !1029
  call void @llvm.dbg.value(metadata double %handler_result56, metadata !719, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %494, metadata !471, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1031
  %497 = getelementptr double, ptr %496, i64 1, !dbg !1033
  %498 = load double, ptr %497, align 8, !dbg !1033, !tbaa !304
  call void @llvm.dbg.value(metadata double %498, metadata !723, metadata !DIExpression()), !dbg !1030
  %499 = fmul double %427, %handler_result56, !dbg !1034
  %500 = fmul double %428, %498, !dbg !1035
  %handler_result57 = call double @fSubHandlerDouble(double %499, double %500), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %494, metadata !312, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata double %handler_result57, metadata !314, metadata !DIExpression()), !dbg !1038
  store double %handler_result57, ptr %496, align 8, !dbg !1036, !tbaa !304
  %501 = fmul double %428, %handler_result56, !dbg !1039
  %502 = fmul double %427, %498, !dbg !1040
  %handler_result58 = call double @fAddHandlerDouble(double %501, double %502), !dbg !1041
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %494, metadata !312, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata double %handler_result58, metadata !314, metadata !DIExpression()), !dbg !1043
  store double %handler_result58, ptr %497, align 8, !dbg !1041, !tbaa !304
  %503 = add nuw i64 %484, 2, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %503, metadata !683, metadata !DIExpression()), !dbg !724
  %504 = add i64 %485, 2, !dbg !1025
  %505 = icmp eq i64 %504, %481, !dbg !1025
  br i1 %505, label %1085, label %482, !dbg !1025, !llvm.loop !1045

506:                                              ; preds = %630, %10
  %507 = phi i64 [ 0, %10 ], [ %631, %630 ]
  tail call void @llvm.dbg.value(metadata i64 %507, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1047
  tail call void @llvm.dbg.value(metadata i64 %507, metadata !344, metadata !DIExpression()), !dbg !1047
  %508 = mul i64 %15, %507, !dbg !1049
  %509 = getelementptr inbounds double, ptr %13, i64 %508, !dbg !1050
  %510 = load double, ptr %509, align 8, !dbg !1050, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %510, metadata !630, metadata !DIExpression()), !dbg !1051
  %511 = fcmp une double %510, 0.000000e+00, !dbg !1052
  br i1 %511, label %630, label %512, !dbg !1054

512:                                              ; preds = %506
  call void @llvm.dbg.value(metadata ptr %0, metadata !1055, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata ptr %1, metadata !1060, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata ptr %2, metadata !1061, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %507, metadata !1062, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %7, metadata !1063, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %9, metadata !1064, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %507, metadata !344, metadata !DIExpression()), !dbg !1086
  %513 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2, !dbg !1088
  %514 = load ptr, ptr %513, align 8, !dbg !1088, !tbaa !302
  %515 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1, !dbg !1089
  %516 = load i64, ptr %515, align 8, !dbg !1089, !tbaa !349
  call void @llvm.dbg.value(metadata double poison, metadata !1067, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %507, metadata !344, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1090
  call void @llvm.dbg.value(metadata double poison, metadata !1068, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %507, metadata !1069, metadata !DIExpression()), !dbg !1083
  %517 = add nuw i64 %507, 1, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %517, metadata !344, metadata !DIExpression()), !dbg !1090
  %518 = mul i64 %15, %517, !dbg !1093
  %519 = getelementptr inbounds double, ptr %13, i64 %518, !dbg !1094
  %520 = load double, ptr %519, align 8, !dbg !1094, !tbaa !304
  call void @llvm.dbg.value(metadata double %520, metadata !1068, metadata !DIExpression()), !dbg !1083
  %521 = mul i64 %516, %507, !dbg !1095
  %522 = getelementptr inbounds double, ptr %514, i64 %521, !dbg !1096
  %523 = load double, ptr %522, align 8, !dbg !1096, !tbaa !304
  call void @llvm.dbg.value(metadata double %523, metadata !1067, metadata !DIExpression()), !dbg !1083
  %524 = icmp eq i64 %7, 0
  %525 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %526 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %527 = add i64 %9, -2
  %528 = and i64 %7, 1
  %529 = icmp eq i64 %7, 1
  %530 = and i64 %7, -2
  %531 = icmp eq i64 %528, 0
  br label %532, !dbg !1097

532:                                              ; preds = %626, %512
  %533 = phi double [ %523, %512 ], [ %628, %626 ]
  %534 = phi double [ %520, %512 ], [ %627, %626 ]
  %535 = phi i64 [ %507, %512 ], [ %604, %626 ]
  call void @llvm.dbg.value(metadata double %533, metadata !1067, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata double %534, metadata !1068, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %535, metadata !1069, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata double %534, metadata !744, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata double poison, metadata !749, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr undef, metadata !750, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !1098
  %536 = fcmp oeq double %533, 0.000000e+00, !dbg !1100
  br i1 %536, label %554, label %537, !dbg !1101

537:                                              ; preds = %532
  %538 = fneg double %533, !dbg !1102
  call void @llvm.dbg.value(metadata double %538, metadata !749, metadata !DIExpression()), !dbg !1098
  %539 = tail call double @llvm.fabs.f64(double %538), !dbg !1103
  %540 = tail call double @llvm.fabs.f64(double %534), !dbg !1104
  %541 = fcmp ogt double %539, %540, !dbg !1105
  br i1 %541, label %542, label %548, !dbg !1106

542:                                              ; preds = %537
  %543 = fdiv double %534, %533, !dbg !1107
  call void @llvm.dbg.value(metadata double %543, metadata !752, metadata !DIExpression()), !dbg !1108
  %544 = fmul double %543, %543, !dbg !1109
  %handler_result59 = call double @fAddHandlerDouble(double %544, double 1.000000e+00), !dbg !1110
  %545 = tail call double @llvm.sqrt.f64(double %handler_result59), !dbg !1110
  %546 = fdiv double 1.000000e+00, %545, !dbg !1111
  call void @llvm.dbg.value(metadata double %546, metadata !756, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata double %546, metadata !1066, metadata !DIExpression()), !dbg !1083
  %547 = fmul double %543, %546, !dbg !1112
  call void @llvm.dbg.value(metadata double %547, metadata !1065, metadata !DIExpression()), !dbg !1083
  br label %554, !dbg !1113

548:                                              ; preds = %537
  %549 = fdiv double %533, %534, !dbg !1114
  call void @llvm.dbg.value(metadata double %549, metadata !757, metadata !DIExpression()), !dbg !1115
  %550 = fmul double %549, %549, !dbg !1116
  %handler_result60 = call double @fAddHandlerDouble(double %550, double 1.000000e+00), !dbg !1117
  %551 = tail call double @llvm.sqrt.f64(double %handler_result60), !dbg !1117
  %552 = fdiv double 1.000000e+00, %551, !dbg !1118
  call void @llvm.dbg.value(metadata double %552, metadata !759, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata double %552, metadata !1065, metadata !DIExpression()), !dbg !1083
  %553 = fmul double %549, %552, !dbg !1119
  call void @llvm.dbg.value(metadata double %553, metadata !1066, metadata !DIExpression()), !dbg !1083
  br label %554

554:                                              ; preds = %548, %542, %532
  %555 = phi double [ %547, %542 ], [ %552, %548 ], [ 1.000000e+00, %532 ], !dbg !1120
  %556 = phi double [ %546, %542 ], [ %553, %548 ], [ 0.000000e+00, %532 ], !dbg !1120
  call void @llvm.dbg.value(metadata double %556, metadata !1066, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata double %555, metadata !1065, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 0, metadata !1070, metadata !DIExpression()), !dbg !1121
  br i1 %524, label %603, label %557, !dbg !1122

557:                                              ; preds = %554
  %558 = load ptr, ptr %525, align 8, !tbaa !318
  %559 = load i64, ptr %526, align 8, !tbaa !463
  br i1 %529, label %589, label %560, !dbg !1122

560:                                              ; preds = %560, %557
  %561 = phi i64 [ %586, %560 ], [ 0, %557 ]
  %562 = phi i64 [ %587, %560 ], [ 0, %557 ]
  call void @llvm.dbg.value(metadata i64 %561, metadata !1070, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %561, metadata !471, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %507, metadata !472, metadata !DIExpression()), !dbg !1123
  %563 = mul i64 %561, %559, !dbg !1125
  %564 = getelementptr double, ptr %558, i64 %563, !dbg !1126
  %565 = getelementptr double, ptr %564, i64 %507, !dbg !1126
  %566 = load double, ptr %565, align 8, !dbg !1126, !tbaa !304
  call void @llvm.dbg.value(metadata double %566, metadata !1075, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %561, metadata !471, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %535, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1128
  %567 = getelementptr double, ptr %564, i64 %535, !dbg !1130
  %568 = getelementptr double, ptr %567, i64 1, !dbg !1130
  %569 = load double, ptr %568, align 8, !dbg !1130, !tbaa !304
  call void @llvm.dbg.value(metadata double %569, metadata !1079, metadata !DIExpression()), !dbg !1127
  %570 = fmul double %555, %566, !dbg !1131
  %571 = fmul double %556, %569, !dbg !1132
  %handler_result61 = call double @fSubHandlerDouble(double %570, double %571), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 %561, metadata !312, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 %507, metadata !313, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata double %handler_result61, metadata !314, metadata !DIExpression()), !dbg !1135
  store double %handler_result61, ptr %565, align 8, !dbg !1133, !tbaa !304
  %572 = fmul double %556, %566, !dbg !1136
  %573 = fmul double %555, %569, !dbg !1137
  %handler_result62 = call double @fAddHandlerDouble(double %572, double %573), !dbg !1138
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %561, metadata !312, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %535, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1140
  call void @llvm.dbg.value(metadata double %handler_result62, metadata !314, metadata !DIExpression()), !dbg !1140
  store double %handler_result62, ptr %568, align 8, !dbg !1138, !tbaa !304
  %574 = or disjoint i64 %561, 1, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %574, metadata !1070, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i64 %574, metadata !1070, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %574, metadata !471, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %507, metadata !472, metadata !DIExpression()), !dbg !1123
  %575 = mul i64 %574, %559, !dbg !1125
  %576 = getelementptr double, ptr %558, i64 %575, !dbg !1126
  %577 = getelementptr double, ptr %576, i64 %507, !dbg !1126
  %578 = load double, ptr %577, align 8, !dbg !1126, !tbaa !304
  call void @llvm.dbg.value(metadata double %578, metadata !1075, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %574, metadata !471, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %535, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1128
  %579 = getelementptr double, ptr %576, i64 %535, !dbg !1130
  %580 = getelementptr double, ptr %579, i64 1, !dbg !1130
  %581 = load double, ptr %580, align 8, !dbg !1130, !tbaa !304
  call void @llvm.dbg.value(metadata double %581, metadata !1079, metadata !DIExpression()), !dbg !1127
  %582 = fmul double %555, %578, !dbg !1131
  %583 = fmul double %556, %581, !dbg !1132
  %handler_result63 = call double @fSubHandlerDouble(double %582, double %583), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 %574, metadata !312, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 %507, metadata !313, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata double %handler_result63, metadata !314, metadata !DIExpression()), !dbg !1135
  store double %handler_result63, ptr %577, align 8, !dbg !1133, !tbaa !304
  %584 = fmul double %556, %578, !dbg !1136
  %585 = fmul double %555, %581, !dbg !1137
  %handler_result64 = call double @fAddHandlerDouble(double %584, double %585), !dbg !1138
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %574, metadata !312, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %535, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1140
  call void @llvm.dbg.value(metadata double %handler_result64, metadata !314, metadata !DIExpression()), !dbg !1140
  store double %handler_result64, ptr %580, align 8, !dbg !1138, !tbaa !304
  %586 = add nuw i64 %561, 2, !dbg !1141
  call void @llvm.dbg.value(metadata i64 %586, metadata !1070, metadata !DIExpression()), !dbg !1121
  %587 = add i64 %562, 2, !dbg !1122
  %588 = icmp eq i64 %587, %530, !dbg !1122
  br i1 %588, label %589, label %560, !dbg !1122, !llvm.loop !1142

589:                                              ; preds = %560, %557
  %590 = phi i64 [ 0, %557 ], [ %586, %560 ]
  br i1 %531, label %603, label %591, !dbg !1122

591:                                              ; preds = %589
  call void @llvm.dbg.value(metadata i64 %590, metadata !1070, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %590, metadata !471, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %507, metadata !472, metadata !DIExpression()), !dbg !1123
  %592 = mul i64 %590, %559, !dbg !1125
  %593 = getelementptr double, ptr %558, i64 %592, !dbg !1126
  %594 = getelementptr double, ptr %593, i64 %507, !dbg !1126
  %595 = load double, ptr %594, align 8, !dbg !1126, !tbaa !304
  call void @llvm.dbg.value(metadata double %595, metadata !1075, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %590, metadata !471, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %535, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1128
  %596 = getelementptr double, ptr %593, i64 %535, !dbg !1130
  %597 = getelementptr double, ptr %596, i64 1, !dbg !1130
  %598 = load double, ptr %597, align 8, !dbg !1130, !tbaa !304
  call void @llvm.dbg.value(metadata double %598, metadata !1079, metadata !DIExpression()), !dbg !1127
  %599 = fmul double %555, %595, !dbg !1131
  %600 = fmul double %556, %598, !dbg !1132
  %handler_result65 = call double @fSubHandlerDouble(double %599, double %600), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 %590, metadata !312, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 %507, metadata !313, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata double %handler_result65, metadata !314, metadata !DIExpression()), !dbg !1135
  store double %handler_result65, ptr %594, align 8, !dbg !1133, !tbaa !304
  %601 = fmul double %556, %595, !dbg !1136
  %602 = fmul double %555, %598, !dbg !1137
  %handler_result66 = call double @fAddHandlerDouble(double %601, double %602), !dbg !1138
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %590, metadata !312, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i64 %535, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1140
  call void @llvm.dbg.value(metadata double %handler_result66, metadata !314, metadata !DIExpression()), !dbg !1140
  store double %handler_result66, ptr %597, align 8, !dbg !1138, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %590, metadata !1070, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1121
  br label %603, !dbg !1144

603:                                              ; preds = %591, %589, %554
  %604 = add nuw i64 %535, 1, !dbg !1144
  %605 = fmul double %533, %556, !dbg !1145
  %606 = fmul double %534, %555, !dbg !1146
  %handler_result67 = call double @fAddHandlerDouble(double %606, double %605), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %604, metadata !297, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata double %handler_result67, metadata !298, metadata !DIExpression()), !dbg !1149
  %607 = mul i64 %604, %15, !dbg !1147
  %608 = getelementptr inbounds double, ptr %13, i64 %607, !dbg !1150
  store double %handler_result67, ptr %608, align 8, !dbg !1151, !tbaa !304
  %609 = icmp eq i64 %535, %507, !dbg !1152
  br i1 %609, label %610, label %613, !dbg !1154

610:                                              ; preds = %603
  %611 = fmul double %533, %555, !dbg !1155
  %612 = fmul double %534, %556, !dbg !1156
  %handler_result68 = call double @fSubHandlerDouble(double %611, double %612), !dbg !1157
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %535, metadata !297, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata double %handler_result68, metadata !298, metadata !DIExpression()), !dbg !1159
  store double %handler_result68, ptr %522, align 8, !dbg !1157, !tbaa !304
  br label %613, !dbg !1160

613:                                              ; preds = %610, %603
  %614 = icmp ult i64 %535, %527, !dbg !1161
  br i1 %614, label %615, label %626, !dbg !1162

615:                                              ; preds = %613
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata i64 %604, metadata !344, metadata !DIExpression()), !dbg !1163
  %616 = mul i64 %604, %516, !dbg !1165
  %617 = getelementptr inbounds double, ptr %514, i64 %616, !dbg !1166
  %618 = load double, ptr %617, align 8, !dbg !1166, !tbaa !304
  call void @llvm.dbg.value(metadata double %618, metadata !1080, metadata !DIExpression()), !dbg !1167
  %619 = fmul double %555, %618, !dbg !1168
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i64 %604, metadata !297, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata double %619, metadata !298, metadata !DIExpression()), !dbg !1169
  store double %619, ptr %617, align 8, !dbg !1171, !tbaa !304
  %620 = fneg double %556, !dbg !1172
  %621 = fmul double %618, %620, !dbg !1173
  call void @llvm.dbg.value(metadata double %621, metadata !1067, metadata !DIExpression()), !dbg !1083
  %622 = add i64 %535, 2, !dbg !1174
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata i64 %622, metadata !344, metadata !DIExpression()), !dbg !1175
  %623 = mul i64 %622, %15, !dbg !1177
  %624 = getelementptr inbounds double, ptr %13, i64 %623, !dbg !1178
  %625 = load double, ptr %624, align 8, !dbg !1178, !tbaa !304
  call void @llvm.dbg.value(metadata double %625, metadata !1068, metadata !DIExpression()), !dbg !1083
  br label %626, !dbg !1179

626:                                              ; preds = %615, %613
  %627 = phi double [ %625, %615 ], [ %534, %613 ], !dbg !1083
  %628 = phi double [ %621, %615 ], [ %533, %613 ], !dbg !1083
  call void @llvm.dbg.value(metadata double %628, metadata !1067, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata double %627, metadata !1068, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %604, metadata !1069, metadata !DIExpression()), !dbg !1083
  %629 = icmp eq i64 %604, %11, !dbg !1180
  br i1 %629, label %1111, label %532, !dbg !1097, !llvm.loop !1181

630:                                              ; preds = %506
  %631 = add nuw i64 %507, 1, !dbg !1183
  tail call void @llvm.dbg.value(metadata i64 %631, metadata !628, metadata !DIExpression()), !dbg !671
  %632 = icmp eq i64 %631, %11, !dbg !1184
  br i1 %632, label %633, label %506, !dbg !676, !llvm.loop !1185

633:                                              ; preds = %630
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1187
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !344, metadata !DIExpression()), !dbg !1187
  %634 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 2, !dbg !1189
  %635 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 1, !dbg !1190
  %636 = mul i64 %15, %11, !dbg !1191
  %637 = getelementptr inbounds double, ptr %13, i64 %636, !dbg !1192
  %638 = load double, ptr %637, align 8, !dbg !1192, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %638, metadata !634, metadata !DIExpression()), !dbg !1193
  %639 = fcmp une double %638, 0.000000e+00, !dbg !1194
  %640 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2, !dbg !671
  %641 = load ptr, ptr %640, align 8, !dbg !671, !tbaa !302
  %642 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1, !dbg !671
  br i1 %639, label %719, label %643, !dbg !1196

643:                                              ; preds = %633
  call void @llvm.dbg.value(metadata ptr %0, metadata !1197, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr %1, metadata !1202, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr %3, metadata !1203, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %8, metadata !1204, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %9, metadata !1205, metadata !DIExpression()), !dbg !1224
  %644 = add i64 %9, -2, !dbg !1227
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i64 %644, metadata !344, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata double poison, metadata !1208, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %644, metadata !344, metadata !DIExpression()), !dbg !1230
  %645 = load i64, ptr %642, align 8, !dbg !1232, !tbaa !349
  call void @llvm.dbg.value(metadata double poison, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %644, metadata !1210, metadata !DIExpression()), !dbg !1224
  %646 = mul i64 %645, %644, !dbg !1233
  %647 = getelementptr inbounds double, ptr %641, i64 %646, !dbg !1234
  %648 = load double, ptr %647, align 8, !dbg !1234, !tbaa !304
  call void @llvm.dbg.value(metadata double %648, metadata !1209, metadata !DIExpression()), !dbg !1224
  %649 = mul i64 %15, %644, !dbg !1235
  %650 = icmp eq i64 %8, 0
  %651 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %652 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  br label %653, !dbg !1236

653:                                              ; preds = %710, %643
  %654 = phi i64 [ %644, %643 ], [ %718, %710 ]
  %655 = phi i64 [ %649, %643 ], [ %716, %710 ]
  %656 = phi double [ %648, %643 ], [ %717, %710 ]
  %657 = phi i64 [ %11, %643 ], [ %654, %710 ]
  %658 = getelementptr inbounds double, ptr %13, i64 %655, !dbg !1237
  %659 = load double, ptr %658, align 8, !dbg !1237, !tbaa !304
  call void @llvm.dbg.value(metadata double %659, metadata !1208, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %656, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %657, metadata !1210, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %659, metadata !744, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata double %656, metadata !749, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata ptr undef, metadata !750, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !1239
  %660 = fcmp oeq double %656, 0.000000e+00, !dbg !1241
  br i1 %660, label %679, label %661, !dbg !1242

661:                                              ; preds = %653
  %662 = tail call double @llvm.fabs.f64(double %656), !dbg !1243
  %663 = tail call double @llvm.fabs.f64(double %659), !dbg !1244
  %664 = fcmp ogt double %662, %663, !dbg !1245
  br i1 %664, label %665, label %672, !dbg !1246

665:                                              ; preds = %661
  %666 = fneg double %659, !dbg !1247
  %667 = fdiv double %666, %656, !dbg !1248
  call void @llvm.dbg.value(metadata double %667, metadata !752, metadata !DIExpression()), !dbg !1249
  %668 = fmul double %667, %667, !dbg !1250
  %handler_result69 = call double @fAddHandlerDouble(double %668, double 1.000000e+00), !dbg !1251
  %669 = tail call double @llvm.sqrt.f64(double %handler_result69), !dbg !1251
  %670 = fdiv double 1.000000e+00, %669, !dbg !1252
  call void @llvm.dbg.value(metadata double %670, metadata !756, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata double %670, metadata !1207, metadata !DIExpression()), !dbg !1224
  %671 = fmul double %667, %670, !dbg !1253
  call void @llvm.dbg.value(metadata double %671, metadata !1206, metadata !DIExpression()), !dbg !1224
  br label %679, !dbg !1254

672:                                              ; preds = %661
  %673 = fneg double %656, !dbg !1255
  %674 = fdiv double %673, %659, !dbg !1256
  call void @llvm.dbg.value(metadata double %674, metadata !757, metadata !DIExpression()), !dbg !1257
  %675 = fmul double %674, %674, !dbg !1258
  %handler_result70 = call double @fAddHandlerDouble(double %675, double 1.000000e+00), !dbg !1259
  %676 = tail call double @llvm.sqrt.f64(double %handler_result70), !dbg !1259
  %677 = fdiv double 1.000000e+00, %676, !dbg !1260
  call void @llvm.dbg.value(metadata double %677, metadata !759, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata double %677, metadata !1206, metadata !DIExpression()), !dbg !1224
  %678 = fmul double %674, %677, !dbg !1261
  call void @llvm.dbg.value(metadata double %678, metadata !1207, metadata !DIExpression()), !dbg !1224
  br label %679

679:                                              ; preds = %672, %665, %653
  %680 = phi double [ %671, %665 ], [ %677, %672 ], [ 1.000000e+00, %653 ], !dbg !1262
  %681 = phi double [ %670, %665 ], [ %678, %672 ], [ 0.000000e+00, %653 ], !dbg !1262
  call void @llvm.dbg.value(metadata double %681, metadata !1207, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata double %680, metadata !1206, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 0, metadata !1211, metadata !DIExpression()), !dbg !1263
  br i1 %650, label %699, label %682, !dbg !1264

682:                                              ; preds = %679
  %683 = load ptr, ptr %651, align 8, !tbaa !318
  %684 = load i64, ptr %652, align 8, !tbaa !463
  br label %685, !dbg !1264

685:                                              ; preds = %685, %682
  %686 = phi i64 [ 0, %682 ], [ %697, %685 ]
  call void @llvm.dbg.value(metadata i64 %686, metadata !1211, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %686, metadata !471, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i64 %654, metadata !472, metadata !DIExpression()), !dbg !1265
  %687 = mul i64 %686, %684, !dbg !1267
  %688 = getelementptr double, ptr %683, i64 %687, !dbg !1268
  %689 = getelementptr double, ptr %688, i64 %654, !dbg !1268
  %690 = load double, ptr %689, align 8, !dbg !1268, !tbaa !304
  call void @llvm.dbg.value(metadata double %690, metadata !1216, metadata !DIExpression()), !dbg !1269
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %686, metadata !471, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata i64 %11, metadata !472, metadata !DIExpression()), !dbg !1270
  %691 = getelementptr double, ptr %688, i64 %11, !dbg !1272
  %692 = load double, ptr %691, align 8, !dbg !1272, !tbaa !304
  call void @llvm.dbg.value(metadata double %692, metadata !1220, metadata !DIExpression()), !dbg !1269
  %693 = fmul double %680, %690, !dbg !1273
  %694 = fmul double %681, %692, !dbg !1274
  %handler_result71 = call double @fSubHandlerDouble(double %693, double %694), !dbg !1275
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %686, metadata !312, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata i64 %654, metadata !313, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata double %handler_result71, metadata !314, metadata !DIExpression()), !dbg !1277
  store double %handler_result71, ptr %689, align 8, !dbg !1275, !tbaa !304
  %695 = fmul double %681, %690, !dbg !1278
  %696 = fmul double %680, %692, !dbg !1279
  %handler_result72 = call double @fAddHandlerDouble(double %695, double %696), !dbg !1280
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %686, metadata !312, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata i64 %11, metadata !313, metadata !DIExpression()), !dbg !1282
  call void @llvm.dbg.value(metadata double %handler_result72, metadata !314, metadata !DIExpression()), !dbg !1282
  store double %handler_result72, ptr %691, align 8, !dbg !1280, !tbaa !304
  %697 = add nuw i64 %686, 1, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %697, metadata !1211, metadata !DIExpression()), !dbg !1263
  %698 = icmp eq i64 %697, %8, !dbg !1284
  br i1 %698, label %699, label %685, !dbg !1264, !llvm.loop !1285

699:                                              ; preds = %685, %679
  %700 = fmul double %659, %680, !dbg !1287
  %701 = fmul double %656, %681, !dbg !1288
  %handler_result73 = call double @fSubHandlerDouble(double %700, double %701), !dbg !1289
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i64 %654, metadata !297, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata double %handler_result73, metadata !298, metadata !DIExpression()), !dbg !1291
  %702 = mul i64 %654, %15, !dbg !1289
  %703 = getelementptr inbounds double, ptr %13, i64 %702, !dbg !1292
  store double %handler_result73, ptr %703, align 8, !dbg !1293, !tbaa !304
  %704 = icmp eq i64 %654, %644, !dbg !1294
  br i1 %704, label %705, label %708, !dbg !1296

705:                                              ; preds = %699
  %706 = fmul double %659, %681, !dbg !1297
  %707 = fmul double %656, %680, !dbg !1298
  %handler_result74 = call double @fAddHandlerDouble(double %707, double %706), !dbg !1299
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %654, metadata !297, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata double %handler_result74, metadata !298, metadata !DIExpression()), !dbg !1301
  store double %handler_result74, ptr %647, align 8, !dbg !1299, !tbaa !304
  br label %708, !dbg !1302

708:                                              ; preds = %705, %699
  %709 = icmp eq i64 %654, 0, !dbg !1303
  br i1 %709, label %1111, label %710, !dbg !1304

710:                                              ; preds = %708
  %711 = add i64 %657, -2, !dbg !1305
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i64 %711, metadata !344, metadata !DIExpression()), !dbg !1306
  %712 = mul i64 %711, %645, !dbg !1308
  %713 = getelementptr inbounds double, ptr %641, i64 %712, !dbg !1309
  %714 = load double, ptr %713, align 8, !dbg !1309, !tbaa !304
  call void @llvm.dbg.value(metadata double %714, metadata !1221, metadata !DIExpression()), !dbg !1310
  %715 = fmul double %680, %714, !dbg !1311
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i64 %711, metadata !297, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata double %715, metadata !298, metadata !DIExpression()), !dbg !1312
  store double %715, ptr %713, align 8, !dbg !1314, !tbaa !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 %711, metadata !344, metadata !DIExpression()), !dbg !1315
  %716 = mul i64 %711, %15, !dbg !1317
  call void @llvm.dbg.value(metadata double poison, metadata !1208, metadata !DIExpression()), !dbg !1224
  %717 = fmul double %681, %714, !dbg !1318
  call void @llvm.dbg.value(metadata double %717, metadata !1209, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i64 %654, metadata !1210, metadata !DIExpression()), !dbg !1224
  %718 = add i64 %654, -1, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %718, metadata !1210, metadata !DIExpression()), !dbg !1224
  br label %653, !dbg !1236, !llvm.loop !1320

719:                                              ; preds = %633
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression()), !dbg !1322
  %720 = load double, ptr %13, align 8, !dbg !1324, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %720, metadata !636, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1326
  tail call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression()), !dbg !1326
  %721 = load double, ptr %641, align 8, !dbg !1328, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %721, metadata !638, metadata !DIExpression()), !dbg !1325
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata i64 1, metadata !344, metadata !DIExpression()), !dbg !1329
  %722 = getelementptr inbounds double, ptr %13, i64 %15, !dbg !1331
  %723 = load double, ptr %722, align 8, !dbg !1331, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %723, metadata !639, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata ptr %0, metadata !1332, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %1, metadata !1337, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata i64 %9, metadata !1338, metadata !DIExpression()), !dbg !1357
  %724 = add i64 %9, -2, !dbg !1359
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.value(metadata i64 %724, metadata !344, metadata !DIExpression()), !dbg !1360
  %725 = mul i64 %15, %724, !dbg !1362
  %726 = getelementptr inbounds double, ptr %13, i64 %725, !dbg !1363
  %727 = load double, ptr %726, align 8, !dbg !1363, !tbaa !304
  call void @llvm.dbg.value(metadata double %727, metadata !1339, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %11, metadata !344, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata double %638, metadata !1340, metadata !DIExpression()), !dbg !1357
  %728 = icmp ugt i64 %9, 2, !dbg !1366
  br i1 %728, label %731, label %729, !dbg !1367

729:                                              ; preds = %719
  %730 = load i64, ptr %642, align 8, !dbg !1368, !tbaa !349
  br label %737, !dbg !1367

731:                                              ; preds = %719
  %732 = add i64 %9, -3, !dbg !1370
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %732, metadata !344, metadata !DIExpression()), !dbg !1371
  %733 = load i64, ptr %642, align 8, !dbg !1373, !tbaa !349
  %734 = mul i64 %733, %732, !dbg !1374
  %735 = getelementptr inbounds double, ptr %641, i64 %734, !dbg !1375
  %736 = load double, ptr %735, align 8, !dbg !1375, !tbaa !304
  br label %737, !dbg !1367

737:                                              ; preds = %731, %729
  %738 = phi i64 [ %733, %731 ], [ %730, %729 ], !dbg !1368
  %739 = phi double [ %736, %731 ], [ 0.000000e+00, %729 ], !dbg !1367
  call void @llvm.dbg.value(metadata double %739, metadata !1341, metadata !DIExpression()), !dbg !1357
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %724, metadata !344, metadata !DIExpression()), !dbg !1376
  %740 = mul i64 %738, %724, !dbg !1377
  %741 = getelementptr inbounds double, ptr %641, i64 %740, !dbg !1378
  %742 = load double, ptr %741, align 8, !dbg !1378, !tbaa !304
  call void @llvm.dbg.value(metadata double %742, metadata !1342, metadata !DIExpression()), !dbg !1357
  %743 = fmul double %727, %727, !dbg !1379
  %744 = fmul double %739, %739, !dbg !1380
  %handler_result75 = call double @fAddHandlerDouble(double %743, double %744), !dbg !1381
  call void @llvm.dbg.value(metadata double %handler_result75, metadata !1344, metadata !DIExpression()), !dbg !1382
  %745 = fmul double %638, %638, !dbg !1381
  %746 = fmul double %742, %742, !dbg !1383
  %handler_result76 = call double @fAddHandlerDouble(double %745, double %746), !dbg !1384
  call void @llvm.dbg.value(metadata double %handler_result76, metadata !1346, metadata !DIExpression()), !dbg !1382
  %747 = fmul double %727, %742, !dbg !1384
  call void @llvm.dbg.value(metadata double %747, metadata !1347, metadata !DIExpression()), !dbg !1382
  %handler_result77 = call double @fSubHandlerDouble(double %handler_result75, double %handler_result76), !dbg !1385
  %748 = fmul double %handler_result77, 5.000000e-01, !dbg !1385
  call void @llvm.dbg.value(metadata double %748, metadata !1348, metadata !DIExpression()), !dbg !1382
  %handler_result78 = call double @fAddHandlerDouble(double %handler_result75, double %handler_result76), !dbg !1386
  call void @llvm.dbg.value(metadata double %handler_result78, metadata !1349, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata double %743, metadata !1350, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata double %745, metadata !1351, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata double %744, metadata !1352, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata double %746, metadata !1353, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata double poison, metadata !1354, metadata !DIExpression()), !dbg !1382
  %749 = tail call double @hypot(double noundef %748, double noundef %747) #10, !dbg !1386
  call void @llvm.dbg.value(metadata double %749, metadata !1355, metadata !DIExpression()), !dbg !1382
  %750 = fmul double %handler_result78, 5.000000e-01, !dbg !1387
  %handler_result79 = call double @fAddHandlerDouble(double %749, double %750), !dbg !1388
  call void @llvm.dbg.value(metadata double %handler_result79, metadata !1356, metadata !DIExpression()), !dbg !1382
  %751 = fcmp ult double %748, 0.000000e+00, !dbg !1388
  br i1 %751, label %759, label %752, !dbg !1390

752:                                              ; preds = %737
  %753 = fmul double %745, %743, !dbg !1391
  %754 = fmul double %745, %744, !dbg !1392
  %handler_result80 = call double @fAddHandlerDouble(double %753, double %754), !dbg !1393
  %755 = fmul double %744, %746, !dbg !1393
  %handler_result81 = call double @fAddHandlerDouble(double %handler_result80, double %755), !dbg !1394
  call void @llvm.dbg.value(metadata double %handler_result81, metadata !1354, metadata !DIExpression()), !dbg !1382
  %756 = fcmp ogt double %handler_result79, 0.000000e+00, !dbg !1394
  %757 = fdiv double %handler_result81, %handler_result79, !dbg !1396
  %758 = select i1 %756, double %757, double 0.000000e+00, !dbg !1396
  call void @llvm.dbg.value(metadata double %758, metadata !1343, metadata !DIExpression()), !dbg !1357
  br label %759, !dbg !1397

759:                                              ; preds = %752, %737
  %760 = phi double [ %758, %752 ], [ %handler_result79, %737 ], !dbg !1398
  call void @llvm.dbg.value(metadata double %760, metadata !1343, metadata !DIExpression()), !dbg !1357
  tail call void @llvm.dbg.value(metadata double %760, metadata !640, metadata !DIExpression()), !dbg !1399
  tail call void @llvm.dbg.value(metadata double poison, metadata !621, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !622, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !623, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %720, metadata !625, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %721, metadata !626, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %723, metadata !627, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata i64 0, metadata !629, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double poison, metadata !620, metadata !DIExpression()), !dbg !671
  %761 = load ptr, ptr %634, align 8, !dbg !1400, !tbaa !302
  %762 = load i64, ptr %635, align 8, !dbg !1402, !tbaa !349
  %763 = fmul double %720, %721, !dbg !1403
  tail call void @llvm.dbg.value(metadata double %763, metadata !621, metadata !DIExpression()), !dbg !671
  %764 = fmul double %720, %720, !dbg !1404
  %handler_result82 = call double @fSubHandlerDouble(double %764, double %760)
  tail call void @llvm.dbg.value(metadata double %handler_result82, metadata !620, metadata !DIExpression()), !dbg !671
  %765 = icmp eq i64 %8, 0
  %766 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %767 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  %768 = icmp eq i64 %7, 0
  %769 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %770 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %771 = add i64 %8, -1, !dbg !1405
  %772 = add i64 %7, -1, !dbg !1405
  %773 = and i64 %8, 1
  %774 = icmp eq i64 %771, 0
  %775 = and i64 %8, -2
  %776 = icmp eq i64 %773, 0
  %777 = and i64 %8, 1
  %778 = icmp eq i64 %771, 0
  %779 = and i64 %8, -2
  %780 = icmp eq i64 %777, 0
  %781 = and i64 %7, 1
  %782 = icmp eq i64 %772, 0
  %783 = and i64 %7, -2
  %784 = icmp eq i64 %781, 0
  %785 = and i64 %7, 1
  %786 = icmp eq i64 %772, 0
  %787 = and i64 %7, -2
  %788 = icmp eq i64 %785, 0
  br label %789, !dbg !1405

789:                                              ; preds = %1048, %759
  %790 = phi double [ %handler_result82, %759 ], [ %handler_result115, %1048 ]
  %791 = phi double [ %763, %759 ], [ %1037, %1048 ]
  %792 = phi double [ 0.000000e+00, %759 ], [ %handler_result115, %1048 ]
  %793 = phi double [ %720, %759 ], [ %handler_result116, %1048 ]
  %794 = phi double [ %721, %759 ], [ %1040, %1048 ]
  %795 = phi double [ %723, %759 ], [ %1049, %1048 ]
  %796 = phi i64 [ 0, %759 ], [ %1050, %1048 ]
  tail call void @llvm.dbg.value(metadata double %790, metadata !620, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %791, metadata !621, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %792, metadata !623, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %793, metadata !625, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %794, metadata !626, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %795, metadata !627, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !629, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata double %790, metadata !744, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata double %791, metadata !749, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr undef, metadata !750, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !1406
  %797 = fcmp oeq double %791, 0.000000e+00, !dbg !1408
  br i1 %797, label %816, label %798, !dbg !1409

798:                                              ; preds = %789
  %799 = tail call double @llvm.fabs.f64(double %791), !dbg !1410
  %800 = tail call double @llvm.fabs.f64(double %790), !dbg !1411
  %801 = fcmp ogt double %799, %800, !dbg !1412
  br i1 %801, label %802, label %809, !dbg !1413

802:                                              ; preds = %798
  %803 = fneg double %790, !dbg !1414
  %804 = fdiv double %803, %791, !dbg !1415
  call void @llvm.dbg.value(metadata double %804, metadata !752, metadata !DIExpression()), !dbg !1416
  %805 = fmul double %804, %804, !dbg !1417
  %handler_result83 = call double @fAddHandlerDouble(double %805, double 1.000000e+00), !dbg !1418
  %806 = tail call double @llvm.sqrt.f64(double %handler_result83), !dbg !1418
  %807 = fdiv double 1.000000e+00, %806, !dbg !1419
  call void @llvm.dbg.value(metadata double %807, metadata !756, metadata !DIExpression()), !dbg !1416
  tail call void @llvm.dbg.value(metadata double %807, metadata !646, metadata !DIExpression()), !dbg !1420
  %808 = fmul double %804, %807, !dbg !1421
  tail call void @llvm.dbg.value(metadata double %808, metadata !642, metadata !DIExpression()), !dbg !1420
  br label %816, !dbg !1422

809:                                              ; preds = %798
  %810 = fneg double %791, !dbg !1423
  %811 = fdiv double %810, %790, !dbg !1424
  call void @llvm.dbg.value(metadata double %811, metadata !757, metadata !DIExpression()), !dbg !1425
  %812 = fmul double %811, %811, !dbg !1426
  %handler_result84 = call double @fAddHandlerDouble(double %812, double 1.000000e+00), !dbg !1427
  %813 = tail call double @llvm.sqrt.f64(double %handler_result84), !dbg !1427
  %814 = fdiv double 1.000000e+00, %813, !dbg !1428
  call void @llvm.dbg.value(metadata double %814, metadata !759, metadata !DIExpression()), !dbg !1425
  tail call void @llvm.dbg.value(metadata double %814, metadata !642, metadata !DIExpression()), !dbg !1420
  %815 = fmul double %811, %814, !dbg !1429
  tail call void @llvm.dbg.value(metadata double %815, metadata !646, metadata !DIExpression()), !dbg !1420
  br label %816

816:                                              ; preds = %809, %802, %789
  %817 = phi double [ %808, %802 ], [ %814, %809 ], [ 1.000000e+00, %789 ], !dbg !1430
  %818 = phi double [ %807, %802 ], [ %815, %809 ], [ 0.000000e+00, %789 ], !dbg !1430
  tail call void @llvm.dbg.value(metadata double %818, metadata !646, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata double %817, metadata !642, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 0, metadata !628, metadata !DIExpression()), !dbg !671
  br i1 %765, label %900, label %819, !dbg !1431

819:                                              ; preds = %816
  %820 = load ptr, ptr %766, align 8, !tbaa !318
  %821 = load i64, ptr %767, align 8, !tbaa !463
  %822 = getelementptr double, ptr %820, i64 %796, !dbg !1431
  %823 = icmp eq i64 %821, 1, !dbg !1431
  br i1 %823, label %850, label %824, !dbg !1431

824:                                              ; preds = %819
  br i1 %774, label %888, label %825, !dbg !1431

825:                                              ; preds = %825, %824
  %826 = phi i64 [ %847, %825 ], [ 0, %824 ]
  %827 = phi i64 [ %848, %825 ], [ 0, %824 ]
  tail call void @llvm.dbg.value(metadata i64 %826, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %826, metadata !471, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1432
  %828 = mul i64 %821, %826, !dbg !1434
  %829 = getelementptr double, ptr %822, i64 %828, !dbg !1435
  %830 = load double, ptr %829, align 8, !dbg !1435, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %830, metadata !647, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %826, metadata !471, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1437
  %831 = getelementptr double, ptr %829, i64 1, !dbg !1439
  %832 = load double, ptr %831, align 8, !dbg !1439, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %832, metadata !651, metadata !DIExpression()), !dbg !1436
  %833 = fmul double %817, %830, !dbg !1440
  %834 = fmul double %818, %832, !dbg !1441
  %handler_result85 = call double @fSubHandlerDouble(double %833, double %834), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %826, metadata !312, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata double %handler_result85, metadata !314, metadata !DIExpression()), !dbg !1444
  store double %handler_result85, ptr %829, align 8, !dbg !1442, !tbaa !304
  %835 = fmul double %818, %830, !dbg !1445
  %836 = fmul double %817, %832, !dbg !1446
  %handler_result86 = call double @fAddHandlerDouble(double %835, double %836), !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %826, metadata !312, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1449
  tail call void @llvm.dbg.value(metadata double %handler_result86, metadata !314, metadata !DIExpression()), !dbg !1449
  store double %handler_result86, ptr %831, align 8, !dbg !1447, !tbaa !304
  %837 = or disjoint i64 %826, 1, !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %837, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %837, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %837, metadata !471, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1432
  %838 = mul i64 %821, %837, !dbg !1434
  %839 = getelementptr double, ptr %822, i64 %838, !dbg !1435
  %840 = load double, ptr %839, align 8, !dbg !1435, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %840, metadata !647, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %837, metadata !471, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1437
  %841 = getelementptr double, ptr %839, i64 1, !dbg !1439
  %842 = load double, ptr %841, align 8, !dbg !1439, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %842, metadata !651, metadata !DIExpression()), !dbg !1436
  %843 = fmul double %817, %840, !dbg !1440
  %844 = fmul double %818, %842, !dbg !1441
  %handler_result87 = call double @fSubHandlerDouble(double %843, double %844), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %837, metadata !312, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata double %handler_result87, metadata !314, metadata !DIExpression()), !dbg !1444
  store double %handler_result87, ptr %839, align 8, !dbg !1442, !tbaa !304
  %845 = fmul double %818, %840, !dbg !1445
  %846 = fmul double %817, %842, !dbg !1446
  %handler_result88 = call double @fAddHandlerDouble(double %845, double %846), !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %837, metadata !312, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1449
  tail call void @llvm.dbg.value(metadata double %handler_result88, metadata !314, metadata !DIExpression()), !dbg !1449
  store double %handler_result88, ptr %841, align 8, !dbg !1447, !tbaa !304
  %847 = add nuw i64 %826, 2, !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %847, metadata !628, metadata !DIExpression()), !dbg !671
  %848 = add i64 %827, 2, !dbg !1431
  %849 = icmp eq i64 %848, %775, !dbg !1431
  br i1 %849, label %888, label %825, !dbg !1431, !llvm.loop !1451

850:                                              ; preds = %819
  %851 = load double, ptr %822, align 8
  br i1 %778, label %876, label %852, !dbg !1431

852:                                              ; preds = %852, %850
  %853 = phi double [ %handler_result92, %852 ], [ %851, %850 ]
  %854 = phi i64 [ %873, %852 ], [ 0, %850 ]
  %855 = phi i64 [ %874, %852 ], [ 0, %850 ]
  tail call void @llvm.dbg.value(metadata i64 %854, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %854, metadata !471, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1432
  %856 = mul nuw i64 %821, %854, !dbg !1434
  %857 = getelementptr double, ptr %822, i64 %856, !dbg !1435
  tail call void @llvm.dbg.value(metadata double %853, metadata !647, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %854, metadata !471, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1437
  %858 = getelementptr double, ptr %857, i64 1, !dbg !1439
  %859 = load double, ptr %858, align 8, !dbg !1439, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %859, metadata !651, metadata !DIExpression()), !dbg !1436
  %860 = fmul double %817, %853, !dbg !1440
  %861 = fmul double %818, %859, !dbg !1441
  %handler_result89 = call double @fSubHandlerDouble(double %860, double %861), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %854, metadata !312, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata double %handler_result89, metadata !314, metadata !DIExpression()), !dbg !1444
  store double %handler_result89, ptr %857, align 8, !dbg !1442, !tbaa !304
  %862 = fmul double %818, %853, !dbg !1445
  %863 = fmul double %817, %859, !dbg !1446
  %handler_result90 = call double @fAddHandlerDouble(double %862, double %863), !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %854, metadata !312, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1449
  tail call void @llvm.dbg.value(metadata double %handler_result90, metadata !314, metadata !DIExpression()), !dbg !1449
  store double %handler_result90, ptr %858, align 8, !dbg !1447, !tbaa !304
  %864 = or disjoint i64 %854, 1, !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %864, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %864, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %864, metadata !471, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1432
  %865 = mul nuw i64 %821, %864, !dbg !1434
  %866 = getelementptr double, ptr %822, i64 %865, !dbg !1435
  tail call void @llvm.dbg.value(metadata double %handler_result90, metadata !647, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %864, metadata !471, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1437
  %867 = getelementptr double, ptr %866, i64 1, !dbg !1439
  %868 = load double, ptr %867, align 8, !dbg !1439, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %868, metadata !651, metadata !DIExpression()), !dbg !1436
  %869 = fmul double %817, %handler_result90, !dbg !1440
  %870 = fmul double %818, %868, !dbg !1441
  %handler_result91 = call double @fSubHandlerDouble(double %869, double %870), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %864, metadata !312, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata double %handler_result91, metadata !314, metadata !DIExpression()), !dbg !1444
  store double %handler_result91, ptr %866, align 8, !dbg !1442, !tbaa !304
  %871 = fmul double %818, %handler_result90, !dbg !1445
  %872 = fmul double %817, %868, !dbg !1446
  %handler_result92 = call double @fAddHandlerDouble(double %871, double %872), !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %864, metadata !312, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1449
  tail call void @llvm.dbg.value(metadata double %handler_result92, metadata !314, metadata !DIExpression()), !dbg !1449
  store double %handler_result92, ptr %867, align 8, !dbg !1447, !tbaa !304
  %873 = add nuw i64 %854, 2, !dbg !1450
  tail call void @llvm.dbg.value(metadata i64 %873, metadata !628, metadata !DIExpression()), !dbg !671
  %874 = add i64 %855, 2, !dbg !1431
  %875 = icmp eq i64 %874, %779, !dbg !1431
  br i1 %875, label %876, label %852, !dbg !1431, !llvm.loop !1451

876:                                              ; preds = %852, %850
  %877 = phi double [ %851, %850 ], [ %handler_result92, %852 ]
  %878 = phi i64 [ 0, %850 ], [ %873, %852 ]
  br i1 %780, label %900, label %879, !dbg !1431

879:                                              ; preds = %876
  tail call void @llvm.dbg.value(metadata i64 %878, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %878, metadata !471, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1432
  %880 = mul nuw i64 %821, %878, !dbg !1434
  %881 = getelementptr double, ptr %822, i64 %880, !dbg !1435
  tail call void @llvm.dbg.value(metadata double %877, metadata !647, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %878, metadata !471, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1437
  %882 = getelementptr double, ptr %881, i64 1, !dbg !1439
  %883 = load double, ptr %882, align 8, !dbg !1439, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %883, metadata !651, metadata !DIExpression()), !dbg !1436
  %884 = fmul double %817, %877, !dbg !1440
  %885 = fmul double %818, %883, !dbg !1441
  %handler_result93 = call double @fSubHandlerDouble(double %884, double %885), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %878, metadata !312, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata double %handler_result93, metadata !314, metadata !DIExpression()), !dbg !1444
  store double %handler_result93, ptr %881, align 8, !dbg !1442, !tbaa !304
  %886 = fmul double %818, %877, !dbg !1445
  %887 = fmul double %817, %883, !dbg !1446
  %handler_result94 = call double @fAddHandlerDouble(double %886, double %887), !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %878, metadata !312, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1449
  tail call void @llvm.dbg.value(metadata double %handler_result94, metadata !314, metadata !DIExpression()), !dbg !1449
  store double %handler_result94, ptr %882, align 8, !dbg !1447, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %878, metadata !628, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !671
  br label %900, !dbg !1453

888:                                              ; preds = %825, %824
  %889 = phi i64 [ 0, %824 ], [ %847, %825 ]
  br i1 %776, label %900, label %890, !dbg !1431

890:                                              ; preds = %888
  tail call void @llvm.dbg.value(metadata i64 %889, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %889, metadata !471, metadata !DIExpression()), !dbg !1432
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1432
  %891 = mul i64 %821, %889, !dbg !1434
  %892 = getelementptr double, ptr %822, i64 %891, !dbg !1435
  %893 = load double, ptr %892, align 8, !dbg !1435, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %893, metadata !647, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %889, metadata !471, metadata !DIExpression()), !dbg !1437
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1437
  %894 = getelementptr double, ptr %892, i64 1, !dbg !1439
  %895 = load double, ptr %894, align 8, !dbg !1439, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %895, metadata !651, metadata !DIExpression()), !dbg !1436
  %896 = fmul double %817, %893, !dbg !1440
  %897 = fmul double %818, %895, !dbg !1441
  %handler_result95 = call double @fSubHandlerDouble(double %896, double %897), !dbg !1442
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %889, metadata !312, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1444
  tail call void @llvm.dbg.value(metadata double %handler_result95, metadata !314, metadata !DIExpression()), !dbg !1444
  store double %handler_result95, ptr %892, align 8, !dbg !1442, !tbaa !304
  %898 = fmul double %818, %893, !dbg !1445
  %899 = fmul double %817, %895, !dbg !1446
  %handler_result96 = call double @fAddHandlerDouble(double %898, double %899), !dbg !1447
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %889, metadata !312, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1449
  tail call void @llvm.dbg.value(metadata double %handler_result96, metadata !314, metadata !DIExpression()), !dbg !1449
  store double %handler_result96, ptr %894, align 8, !dbg !1447, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %889, metadata !628, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !671
  br label %900, !dbg !1453

900:                                              ; preds = %890, %888, %879, %876, %816
  tail call void @llvm.dbg.value(metadata double poison, metadata !652, metadata !DIExpression()), !dbg !1454
  %901 = fmul double %793, %817, !dbg !1453
  %902 = fmul double %794, %818, !dbg !1455
  %handler_result97 = call double @fSubHandlerDouble(double %901, double %902), !dbg !1456
  tail call void @llvm.dbg.value(metadata double %handler_result97, metadata !654, metadata !DIExpression()), !dbg !1454
  %903 = fmul double %793, %818, !dbg !1456
  %904 = fmul double %794, %817, !dbg !1457
  %handler_result98 = call double @fAddHandlerDouble(double %904, double %903), !dbg !1458
  tail call void @llvm.dbg.value(metadata double %handler_result98, metadata !655, metadata !DIExpression()), !dbg !1454
  %905 = fneg double %818, !dbg !1458
  %906 = fmul double %795, %905, !dbg !1459
  tail call void @llvm.dbg.value(metadata double %906, metadata !656, metadata !DIExpression()), !dbg !1454
  %907 = fmul double %795, %817, !dbg !1460
  tail call void @llvm.dbg.value(metadata double %907, metadata !657, metadata !DIExpression()), !dbg !1454
  %908 = icmp eq i64 %796, 0, !dbg !1461
  br i1 %908, label %917, label %909, !dbg !1463

909:                                              ; preds = %900
  %910 = fmul double %792, %817, !dbg !1464
  %911 = fmul double %791, %818, !dbg !1465
  %handler_result99 = call double @fSubHandlerDouble(double %910, double %911), !dbg !1466
  tail call void @llvm.dbg.value(metadata double %handler_result99, metadata !652, metadata !DIExpression()), !dbg !1454
  %912 = add i64 %796, -1, !dbg !1466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata i64 %912, metadata !297, metadata !DIExpression()), !dbg !1468
  tail call void @llvm.dbg.value(metadata double %handler_result99, metadata !298, metadata !DIExpression()), !dbg !1468
  %913 = load ptr, ptr %640, align 8, !dbg !1470, !tbaa !302
  %914 = load i64, ptr %642, align 8, !dbg !1471, !tbaa !349
  %915 = mul i64 %914, %912, !dbg !1472
  %916 = getelementptr inbounds double, ptr %913, i64 %915, !dbg !1473
  store double %handler_result99, ptr %916, align 8, !dbg !1474, !tbaa !304
  br label %917, !dbg !1475

917:                                              ; preds = %909, %900
  tail call void @llvm.dbg.value(metadata double %handler_result97, metadata !622, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %handler_result98, metadata !623, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %906, metadata !624, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %907, metadata !625, metadata !DIExpression()), !dbg !671
  %918 = icmp ult i64 %796, %724, !dbg !1476
  br i1 %918, label %919, label %926, !dbg !1478

919:                                              ; preds = %917
  %920 = add nuw i64 %796, 1, !dbg !1479
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1481
  tail call void @llvm.dbg.value(metadata i64 %920, metadata !344, metadata !DIExpression()), !dbg !1481
  %921 = load ptr, ptr %640, align 8, !dbg !1483, !tbaa !302
  %922 = load i64, ptr %642, align 8, !dbg !1484, !tbaa !349
  %923 = mul i64 %922, %920, !dbg !1485
  %924 = getelementptr inbounds double, ptr %921, i64 %923, !dbg !1486
  %925 = load double, ptr %924, align 8, !dbg !1486, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %925, metadata !626, metadata !DIExpression()), !dbg !671
  br label %926, !dbg !1487

926:                                              ; preds = %919, %917
  %927 = phi double [ %925, %919 ], [ 0.000000e+00, %917 ], !dbg !1488
  tail call void @llvm.dbg.value(metadata double %927, metadata !626, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %handler_result97, metadata !620, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %906, metadata !621, metadata !DIExpression()), !dbg !671
  call void @llvm.dbg.value(metadata double %handler_result97, metadata !744, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata double %906, metadata !749, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata ptr undef, metadata !750, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !1489
  %928 = fcmp oeq double %906, 0.000000e+00, !dbg !1491
  br i1 %928, label %947, label %929, !dbg !1492

929:                                              ; preds = %926
  %930 = tail call double @llvm.fabs.f64(double %906), !dbg !1493
  %931 = tail call double @llvm.fabs.f64(double %handler_result97), !dbg !1494
  %932 = fcmp ogt double %930, %931, !dbg !1495
  br i1 %932, label %933, label %940, !dbg !1496

933:                                              ; preds = %929
  %934 = fneg double %handler_result97, !dbg !1497
  %935 = fdiv double %934, %906, !dbg !1498
  call void @llvm.dbg.value(metadata double %935, metadata !752, metadata !DIExpression()), !dbg !1499
  %936 = fmul double %935, %935, !dbg !1500
  %handler_result100 = call double @fAddHandlerDouble(double %936, double 1.000000e+00), !dbg !1501
  %937 = tail call double @llvm.sqrt.f64(double %handler_result100), !dbg !1501
  %938 = fdiv double 1.000000e+00, %937, !dbg !1502
  call void @llvm.dbg.value(metadata double %938, metadata !756, metadata !DIExpression()), !dbg !1499
  tail call void @llvm.dbg.value(metadata double %938, metadata !646, metadata !DIExpression()), !dbg !1420
  %939 = fmul double %935, %938, !dbg !1503
  tail call void @llvm.dbg.value(metadata double %939, metadata !642, metadata !DIExpression()), !dbg !1420
  br label %947, !dbg !1504

940:                                              ; preds = %929
  %941 = fneg double %906, !dbg !1505
  %942 = fdiv double %941, %handler_result97, !dbg !1506
  call void @llvm.dbg.value(metadata double %942, metadata !757, metadata !DIExpression()), !dbg !1507
  %943 = fmul double %942, %942, !dbg !1508
  %handler_result101 = call double @fAddHandlerDouble(double %943, double 1.000000e+00), !dbg !1509
  %944 = tail call double @llvm.sqrt.f64(double %handler_result101), !dbg !1509
  %945 = fdiv double 1.000000e+00, %944, !dbg !1510
  call void @llvm.dbg.value(metadata double %945, metadata !759, metadata !DIExpression()), !dbg !1507
  tail call void @llvm.dbg.value(metadata double %945, metadata !642, metadata !DIExpression()), !dbg !1420
  %946 = fmul double %942, %945, !dbg !1511
  tail call void @llvm.dbg.value(metadata double %946, metadata !646, metadata !DIExpression()), !dbg !1420
  br label %947

947:                                              ; preds = %940, %933, %926
  %948 = phi double [ %939, %933 ], [ %945, %940 ], [ 1.000000e+00, %926 ], !dbg !1512
  %949 = phi double [ %938, %933 ], [ %946, %940 ], [ 0.000000e+00, %926 ], !dbg !1512
  tail call void @llvm.dbg.value(metadata double %949, metadata !646, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata double %948, metadata !642, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata i64 0, metadata !628, metadata !DIExpression()), !dbg !671
  br i1 %768, label %1031, label %950, !dbg !1513

950:                                              ; preds = %947
  %951 = load ptr, ptr %769, align 8, !tbaa !318
  %952 = load i64, ptr %770, align 8, !tbaa !463
  %953 = getelementptr double, ptr %951, i64 %796, !dbg !1513
  %954 = icmp eq i64 %952, 1, !dbg !1513
  br i1 %954, label %981, label %955, !dbg !1513

955:                                              ; preds = %950
  br i1 %782, label %1019, label %956, !dbg !1513

956:                                              ; preds = %956, %955
  %957 = phi i64 [ %978, %956 ], [ 0, %955 ]
  %958 = phi i64 [ %979, %956 ], [ 0, %955 ]
  tail call void @llvm.dbg.value(metadata i64 %957, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %957, metadata !471, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1514
  %959 = mul i64 %952, %957, !dbg !1516
  %960 = getelementptr double, ptr %953, i64 %959, !dbg !1517
  %961 = load double, ptr %960, align 8, !dbg !1517, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %961, metadata !658, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %957, metadata !471, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1519
  %962 = getelementptr double, ptr %960, i64 1, !dbg !1521
  %963 = load double, ptr %962, align 8, !dbg !1521, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %963, metadata !662, metadata !DIExpression()), !dbg !1518
  %964 = fmul double %948, %961, !dbg !1522
  %965 = fmul double %949, %963, !dbg !1523
  %handler_result102 = call double @fSubHandlerDouble(double %964, double %965), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %957, metadata !312, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata double %handler_result102, metadata !314, metadata !DIExpression()), !dbg !1526
  store double %handler_result102, ptr %960, align 8, !dbg !1524, !tbaa !304
  %966 = fmul double %949, %961, !dbg !1527
  %967 = fmul double %948, %963, !dbg !1528
  %handler_result103 = call double @fAddHandlerDouble(double %966, double %967), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %957, metadata !312, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1531
  tail call void @llvm.dbg.value(metadata double %handler_result103, metadata !314, metadata !DIExpression()), !dbg !1531
  store double %handler_result103, ptr %962, align 8, !dbg !1529, !tbaa !304
  %968 = or disjoint i64 %957, 1, !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %968, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %968, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %968, metadata !471, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1514
  %969 = mul i64 %952, %968, !dbg !1516
  %970 = getelementptr double, ptr %953, i64 %969, !dbg !1517
  %971 = load double, ptr %970, align 8, !dbg !1517, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %971, metadata !658, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %968, metadata !471, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1519
  %972 = getelementptr double, ptr %970, i64 1, !dbg !1521
  %973 = load double, ptr %972, align 8, !dbg !1521, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %973, metadata !662, metadata !DIExpression()), !dbg !1518
  %974 = fmul double %948, %971, !dbg !1522
  %975 = fmul double %949, %973, !dbg !1523
  %handler_result104 = call double @fSubHandlerDouble(double %974, double %975), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %968, metadata !312, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata double %handler_result104, metadata !314, metadata !DIExpression()), !dbg !1526
  store double %handler_result104, ptr %970, align 8, !dbg !1524, !tbaa !304
  %976 = fmul double %949, %971, !dbg !1527
  %977 = fmul double %948, %973, !dbg !1528
  %handler_result105 = call double @fAddHandlerDouble(double %976, double %977), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %968, metadata !312, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1531
  tail call void @llvm.dbg.value(metadata double %handler_result105, metadata !314, metadata !DIExpression()), !dbg !1531
  store double %handler_result105, ptr %972, align 8, !dbg !1529, !tbaa !304
  %978 = add nuw i64 %957, 2, !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %978, metadata !628, metadata !DIExpression()), !dbg !671
  %979 = add i64 %958, 2, !dbg !1513
  %980 = icmp eq i64 %979, %783, !dbg !1513
  br i1 %980, label %1019, label %956, !dbg !1513, !llvm.loop !1533

981:                                              ; preds = %950
  %982 = load double, ptr %953, align 8
  br i1 %786, label %1007, label %983, !dbg !1513

983:                                              ; preds = %983, %981
  %984 = phi double [ %handler_result109, %983 ], [ %982, %981 ]
  %985 = phi i64 [ %1004, %983 ], [ 0, %981 ]
  %986 = phi i64 [ %1005, %983 ], [ 0, %981 ]
  tail call void @llvm.dbg.value(metadata i64 %985, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %985, metadata !471, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1514
  %987 = mul nuw i64 %952, %985, !dbg !1516
  %988 = getelementptr double, ptr %953, i64 %987, !dbg !1517
  tail call void @llvm.dbg.value(metadata double %984, metadata !658, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %985, metadata !471, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1519
  %989 = getelementptr double, ptr %988, i64 1, !dbg !1521
  %990 = load double, ptr %989, align 8, !dbg !1521, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %990, metadata !662, metadata !DIExpression()), !dbg !1518
  %991 = fmul double %948, %984, !dbg !1522
  %992 = fmul double %949, %990, !dbg !1523
  %handler_result106 = call double @fSubHandlerDouble(double %991, double %992), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %985, metadata !312, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata double %handler_result106, metadata !314, metadata !DIExpression()), !dbg !1526
  store double %handler_result106, ptr %988, align 8, !dbg !1524, !tbaa !304
  %993 = fmul double %949, %984, !dbg !1527
  %994 = fmul double %948, %990, !dbg !1528
  %handler_result107 = call double @fAddHandlerDouble(double %993, double %994), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %985, metadata !312, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1531
  tail call void @llvm.dbg.value(metadata double %handler_result107, metadata !314, metadata !DIExpression()), !dbg !1531
  store double %handler_result107, ptr %989, align 8, !dbg !1529, !tbaa !304
  %995 = or disjoint i64 %985, 1, !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %995, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %995, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %995, metadata !471, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1514
  %996 = mul nuw i64 %952, %995, !dbg !1516
  %997 = getelementptr double, ptr %953, i64 %996, !dbg !1517
  tail call void @llvm.dbg.value(metadata double %handler_result107, metadata !658, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %995, metadata !471, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1519
  %998 = getelementptr double, ptr %997, i64 1, !dbg !1521
  %999 = load double, ptr %998, align 8, !dbg !1521, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %999, metadata !662, metadata !DIExpression()), !dbg !1518
  %1000 = fmul double %948, %handler_result107, !dbg !1522
  %1001 = fmul double %949, %999, !dbg !1523
  %handler_result108 = call double @fSubHandlerDouble(double %1000, double %1001), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %995, metadata !312, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata double %handler_result108, metadata !314, metadata !DIExpression()), !dbg !1526
  store double %handler_result108, ptr %997, align 8, !dbg !1524, !tbaa !304
  %1002 = fmul double %949, %handler_result107, !dbg !1527
  %1003 = fmul double %948, %999, !dbg !1528
  %handler_result109 = call double @fAddHandlerDouble(double %1002, double %1003), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %995, metadata !312, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1531
  tail call void @llvm.dbg.value(metadata double %handler_result109, metadata !314, metadata !DIExpression()), !dbg !1531
  store double %handler_result109, ptr %998, align 8, !dbg !1529, !tbaa !304
  %1004 = add nuw i64 %985, 2, !dbg !1532
  tail call void @llvm.dbg.value(metadata i64 %1004, metadata !628, metadata !DIExpression()), !dbg !671
  %1005 = add i64 %986, 2, !dbg !1513
  %1006 = icmp eq i64 %1005, %787, !dbg !1513
  br i1 %1006, label %1007, label %983, !dbg !1513, !llvm.loop !1533

1007:                                             ; preds = %983, %981
  %1008 = phi double [ %982, %981 ], [ %handler_result109, %983 ]
  %1009 = phi i64 [ 0, %981 ], [ %1004, %983 ]
  br i1 %788, label %1031, label %1010, !dbg !1513

1010:                                             ; preds = %1007
  tail call void @llvm.dbg.value(metadata i64 %1009, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %1009, metadata !471, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1514
  %1011 = mul nuw i64 %952, %1009, !dbg !1516
  %1012 = getelementptr double, ptr %953, i64 %1011, !dbg !1517
  tail call void @llvm.dbg.value(metadata double %1008, metadata !658, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %1009, metadata !471, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1519
  %1013 = getelementptr double, ptr %1012, i64 1, !dbg !1521
  %1014 = load double, ptr %1013, align 8, !dbg !1521, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1014, metadata !662, metadata !DIExpression()), !dbg !1518
  %1015 = fmul double %948, %1008, !dbg !1522
  %1016 = fmul double %949, %1014, !dbg !1523
  %handler_result110 = call double @fSubHandlerDouble(double %1015, double %1016), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %1009, metadata !312, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata double %handler_result110, metadata !314, metadata !DIExpression()), !dbg !1526
  store double %handler_result110, ptr %1012, align 8, !dbg !1524, !tbaa !304
  %1017 = fmul double %949, %1008, !dbg !1527
  %1018 = fmul double %948, %1014, !dbg !1528
  %handler_result111 = call double @fAddHandlerDouble(double %1017, double %1018), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %1009, metadata !312, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1531
  tail call void @llvm.dbg.value(metadata double %handler_result111, metadata !314, metadata !DIExpression()), !dbg !1531
  store double %handler_result111, ptr %1013, align 8, !dbg !1529, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %1009, metadata !628, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !671
  br label %1031, !dbg !1535

1019:                                             ; preds = %956, %955
  %1020 = phi i64 [ 0, %955 ], [ %978, %956 ]
  br i1 %784, label %1031, label %1021, !dbg !1513

1021:                                             ; preds = %1019
  tail call void @llvm.dbg.value(metadata i64 %1020, metadata !628, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %1020, metadata !471, metadata !DIExpression()), !dbg !1514
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression()), !dbg !1514
  %1022 = mul i64 %952, %1020, !dbg !1516
  %1023 = getelementptr double, ptr %953, i64 %1022, !dbg !1517
  %1024 = load double, ptr %1023, align 8, !dbg !1517, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1024, metadata !658, metadata !DIExpression()), !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %1020, metadata !471, metadata !DIExpression()), !dbg !1519
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1519
  %1025 = getelementptr double, ptr %1023, i64 1, !dbg !1521
  %1026 = load double, ptr %1025, align 8, !dbg !1521, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1026, metadata !662, metadata !DIExpression()), !dbg !1518
  %1027 = fmul double %948, %1024, !dbg !1522
  %1028 = fmul double %949, %1026, !dbg !1523
  %handler_result112 = call double @fSubHandlerDouble(double %1027, double %1028), !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %1020, metadata !312, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression()), !dbg !1526
  tail call void @llvm.dbg.value(metadata double %handler_result112, metadata !314, metadata !DIExpression()), !dbg !1526
  store double %handler_result112, ptr %1023, align 8, !dbg !1524, !tbaa !304
  %1029 = fmul double %949, %1024, !dbg !1527
  %1030 = fmul double %948, %1026, !dbg !1528
  %handler_result113 = call double @fAddHandlerDouble(double %1029, double %1030), !dbg !1529
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %1020, metadata !312, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1531
  tail call void @llvm.dbg.value(metadata double %handler_result113, metadata !314, metadata !DIExpression()), !dbg !1531
  store double %handler_result113, ptr %1025, align 8, !dbg !1529, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %1020, metadata !628, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !671
  br label %1031, !dbg !1535

1031:                                             ; preds = %1021, %1019, %1010, %1007, %947
  %1032 = fmul double %handler_result97, %948, !dbg !1535
  %1033 = fmul double %906, %949, !dbg !1536
  %handler_result114 = call double @fSubHandlerDouble(double %1032, double %1033), !dbg !1537
  tail call void @llvm.dbg.value(metadata double %handler_result114, metadata !663, metadata !DIExpression()), !dbg !1538
  %1034 = fmul double %handler_result98, %948, !dbg !1537
  %1035 = fmul double %907, %949, !dbg !1539
  %handler_result115 = call double @fSubHandlerDouble(double %1034, double %1035), !dbg !1540
  tail call void @llvm.dbg.value(metadata double %handler_result115, metadata !665, metadata !DIExpression()), !dbg !1538
  %1036 = fneg double %949, !dbg !1540
  %1037 = fmul double %927, %1036, !dbg !1541
  tail call void @llvm.dbg.value(metadata double %1037, metadata !666, metadata !DIExpression()), !dbg !1538
  %1038 = fmul double %handler_result98, %949, !dbg !1542
  %1039 = fmul double %907, %948, !dbg !1543
  %handler_result116 = call double @fAddHandlerDouble(double %1039, double %1038), !dbg !1544
  tail call void @llvm.dbg.value(metadata double %handler_result116, metadata !667, metadata !DIExpression()), !dbg !1538
  %1040 = fmul double %927, %948, !dbg !1544
  tail call void @llvm.dbg.value(metadata double %1040, metadata !668, metadata !DIExpression()), !dbg !1538
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1545
  tail call void @llvm.dbg.value(metadata i64 %796, metadata !297, metadata !DIExpression()), !dbg !1545
  tail call void @llvm.dbg.value(metadata double %handler_result114, metadata !298, metadata !DIExpression()), !dbg !1545
  %1041 = mul i64 %762, %796, !dbg !1547
  %1042 = getelementptr inbounds double, ptr %761, i64 %1041, !dbg !1548
  store double %handler_result114, ptr %1042, align 8, !dbg !1549, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %handler_result114, metadata !622, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %handler_result115, metadata !623, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %1037, metadata !624, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %handler_result116, metadata !625, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %1040, metadata !626, metadata !DIExpression()), !dbg !671
  br i1 %918, label %1043, label %1048, !dbg !1550

1043:                                             ; preds = %1031
  %1044 = add nuw i64 %796, 2, !dbg !1551
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1554
  tail call void @llvm.dbg.value(metadata i64 %1044, metadata !344, metadata !DIExpression()), !dbg !1554
  %1045 = mul i64 %762, %1044, !dbg !1556
  %1046 = getelementptr inbounds double, ptr %761, i64 %1045, !dbg !1557
  %1047 = load double, ptr %1046, align 8, !dbg !1557, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1047, metadata !627, metadata !DIExpression()), !dbg !671
  br label %1048, !dbg !1558

1048:                                             ; preds = %1043, %1031
  %1049 = phi double [ %1047, %1043 ], [ 0.000000e+00, %1031 ], !dbg !1559
  tail call void @llvm.dbg.value(metadata double %1049, metadata !627, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %handler_result115, metadata !620, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %1037, metadata !621, metadata !DIExpression()), !dbg !671
  %1050 = add nuw i64 %796, 1, !dbg !1560
  tail call void @llvm.dbg.value(metadata double %handler_result115, metadata !623, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %handler_result116, metadata !625, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata double %1040, metadata !626, metadata !DIExpression()), !dbg !671
  tail call void @llvm.dbg.value(metadata i64 %1050, metadata !629, metadata !DIExpression()), !dbg !671
  %1051 = icmp eq i64 %1050, %11, !dbg !1561
  br i1 %1051, label %1052, label %789, !dbg !1405, !llvm.loop !1562

1052:                                             ; preds = %1048
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata i64 %724, metadata !297, metadata !DIExpression()), !dbg !1564
  tail call void @llvm.dbg.value(metadata double %handler_result115, metadata !298, metadata !DIExpression()), !dbg !1564
  %1053 = load ptr, ptr %640, align 8, !dbg !1566, !tbaa !302
  %1054 = load i64, ptr %642, align 8, !dbg !1567, !tbaa !349
  %1055 = mul i64 %1054, %724, !dbg !1568
  %1056 = getelementptr inbounds double, ptr %1053, i64 %1055, !dbg !1569
  store double %handler_result115, ptr %1056, align 8, !dbg !1570, !tbaa !304
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1571
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !297, metadata !DIExpression()), !dbg !1571
  tail call void @llvm.dbg.value(metadata double %handler_result116, metadata !298, metadata !DIExpression()), !dbg !1571
  %1057 = mul i64 %762, %11, !dbg !1572
  %1058 = getelementptr inbounds double, ptr %761, i64 %1057, !dbg !1573
  store double %handler_result116, ptr %1058, align 8, !dbg !1574, !tbaa !304
  br label %1111, !dbg !1575

1059:                                             ; preds = %219, %213
  %1060 = phi double [ %214, %213 ], [ %handler_result26, %219 ]
  %1061 = phi i64 [ 0, %213 ], [ %240, %219 ]
  %1062 = icmp eq i64 %215, 0, !dbg !855
  br i1 %1062, label %1111, label %1063, !dbg !855

1063:                                             ; preds = %1059
  call void @llvm.dbg.value(metadata i64 %1061, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 %1061, metadata !471, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !856
  %1064 = mul nuw i64 %1061, %181, !dbg !858
  %1065 = getelementptr double, ptr %179, i64 %1064, !dbg !859
  call void @llvm.dbg.value(metadata double %1060, metadata !702, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %1061, metadata !471, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !861
  %1066 = getelementptr double, ptr %1065, i64 1, !dbg !863
  %1067 = load double, ptr %1066, align 8, !dbg !863, !tbaa !304
  call void @llvm.dbg.value(metadata double %1067, metadata !708, metadata !DIExpression()), !dbg !860
  %1068 = fmul double %172, %1060, !dbg !864
  %1069 = fmul double %173, %1067, !dbg !865
  %handler_result117 = call double @fSubHandlerDouble(double %1068, double %1069), !dbg !866
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %1061, metadata !312, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata double %handler_result117, metadata !314, metadata !DIExpression()), !dbg !868
  store double %handler_result117, ptr %1065, align 8, !dbg !866, !tbaa !304
  %1070 = fmul double %173, %1060, !dbg !869
  %1071 = fmul double %172, %1067, !dbg !870
  %handler_result118 = call double @fAddHandlerDouble(double %1070, double %1071), !dbg !871
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 %1061, metadata !312, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata double %handler_result118, metadata !314, metadata !DIExpression()), !dbg !873
  store double %handler_result118, ptr %1066, align 8, !dbg !871, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %1061, metadata !683, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  br label %1111, !dbg !1575

1072:                                             ; preds = %188, %183
  %1073 = phi i64 [ 0, %183 ], [ %210, %188 ]
  %1074 = icmp eq i64 %184, 0, !dbg !855
  br i1 %1074, label %1111, label %1075, !dbg !855

1075:                                             ; preds = %1072
  call void @llvm.dbg.value(metadata i64 %1073, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 %1073, metadata !471, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !856
  %1076 = mul i64 %1073, %181, !dbg !858
  %1077 = getelementptr double, ptr %179, i64 %1076, !dbg !859
  %1078 = load double, ptr %1077, align 8, !dbg !859, !tbaa !304
  call void @llvm.dbg.value(metadata double %1078, metadata !702, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 %1073, metadata !471, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !861
  %1079 = getelementptr double, ptr %1077, i64 1, !dbg !863
  %1080 = load double, ptr %1079, align 8, !dbg !863, !tbaa !304
  call void @llvm.dbg.value(metadata double %1080, metadata !708, metadata !DIExpression()), !dbg !860
  %1081 = fmul double %172, %1078, !dbg !864
  %1082 = fmul double %173, %1080, !dbg !865
  %handler_result119 = call double @fSubHandlerDouble(double %1081, double %1082), !dbg !866
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %1073, metadata !312, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata double %handler_result119, metadata !314, metadata !DIExpression()), !dbg !868
  store double %handler_result119, ptr %1077, align 8, !dbg !866, !tbaa !304
  %1083 = fmul double %173, %1078, !dbg !869
  %1084 = fmul double %172, %1080, !dbg !870
  %handler_result120 = call double @fAddHandlerDouble(double %1083, double %1084), !dbg !871
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 %1073, metadata !312, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata double %handler_result120, metadata !314, metadata !DIExpression()), !dbg !873
  store double %handler_result120, ptr %1079, align 8, !dbg !871, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %1073, metadata !683, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  br label %1111, !dbg !1575

1085:                                             ; preds = %482, %476
  %1086 = phi double [ %477, %476 ], [ %handler_result58, %482 ]
  %1087 = phi i64 [ 0, %476 ], [ %503, %482 ]
  %1088 = icmp eq i64 %478, 0, !dbg !1025
  br i1 %1088, label %1111, label %1089, !dbg !1025

1089:                                             ; preds = %1085
  call void @llvm.dbg.value(metadata i64 %1087, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %1087, metadata !471, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1026
  %1090 = mul nuw i64 %1087, %444, !dbg !1028
  %1091 = getelementptr double, ptr %442, i64 %1090, !dbg !1029
  call void @llvm.dbg.value(metadata double %1086, metadata !719, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %1087, metadata !471, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1031
  %1092 = getelementptr double, ptr %1091, i64 1, !dbg !1033
  %1093 = load double, ptr %1092, align 8, !dbg !1033, !tbaa !304
  call void @llvm.dbg.value(metadata double %1093, metadata !723, metadata !DIExpression()), !dbg !1030
  %1094 = fmul double %427, %1086, !dbg !1034
  %1095 = fmul double %428, %1093, !dbg !1035
  %handler_result121 = call double @fSubHandlerDouble(double %1094, double %1095), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %1087, metadata !312, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata double %handler_result121, metadata !314, metadata !DIExpression()), !dbg !1038
  store double %handler_result121, ptr %1091, align 8, !dbg !1036, !tbaa !304
  %1096 = fmul double %428, %1086, !dbg !1039
  %1097 = fmul double %427, %1093, !dbg !1040
  %handler_result122 = call double @fAddHandlerDouble(double %1096, double %1097), !dbg !1041
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %1087, metadata !312, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata double %handler_result122, metadata !314, metadata !DIExpression()), !dbg !1043
  store double %handler_result122, ptr %1092, align 8, !dbg !1041, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %1087, metadata !683, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  br label %1111, !dbg !1575

1098:                                             ; preds = %451, %446
  %1099 = phi i64 [ 0, %446 ], [ %473, %451 ]
  %1100 = icmp eq i64 %447, 0, !dbg !1025
  br i1 %1100, label %1111, label %1101, !dbg !1025

1101:                                             ; preds = %1098
  call void @llvm.dbg.value(metadata i64 %1099, metadata !683, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 %1099, metadata !471, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1026
  %1102 = mul i64 %1099, %444, !dbg !1028
  %1103 = getelementptr double, ptr %442, i64 %1102, !dbg !1029
  %1104 = load double, ptr %1103, align 8, !dbg !1029, !tbaa !304
  call void @llvm.dbg.value(metadata double %1104, metadata !719, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %1099, metadata !471, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1031
  %1105 = getelementptr double, ptr %1103, i64 1, !dbg !1033
  %1106 = load double, ptr %1105, align 8, !dbg !1033, !tbaa !304
  call void @llvm.dbg.value(metadata double %1106, metadata !723, metadata !DIExpression()), !dbg !1030
  %1107 = fmul double %427, %1104, !dbg !1034
  %1108 = fmul double %428, %1106, !dbg !1035
  %handler_result123 = call double @fSubHandlerDouble(double %1107, double %1108), !dbg !1036
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 %1099, metadata !312, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata double %handler_result123, metadata !314, metadata !DIExpression()), !dbg !1038
  store double %handler_result123, ptr %1103, align 8, !dbg !1036, !tbaa !304
  %1109 = fmul double %428, %1104, !dbg !1039
  %1110 = fmul double %427, %1106, !dbg !1040
  %handler_result124 = call double @fAddHandlerDouble(double %1109, double %1110), !dbg !1041
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 %1099, metadata !312, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata double %handler_result124, metadata !314, metadata !DIExpression()), !dbg !1043
  store double %handler_result124, ptr %1105, align 8, !dbg !1041, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %1099, metadata !683, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  br label %1111, !dbg !1575

1111:                                             ; preds = %1101, %1098, %1089, %1085, %1075, %1072, %1063, %1059, %1052, %708, %626, %426, %171, %148, %4
  ret void, !dbg !1575
}

declare !dbg !1576 i32 @gsl_vector_swap_elements(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1579 i32 @gsl_matrix_swap_columns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_SV_decomp_mod(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1582 {
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1633
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1595, metadata !DIExpression(), metadata !1633, metadata ptr %6, metadata !DIExpression()), !dbg !1634
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1635
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1599, metadata !DIExpression(), metadata !1635, metadata ptr %7, metadata !DIExpression()), !dbg !1636
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1603, metadata !DIExpression(), metadata !1637, metadata ptr %8, metadata !DIExpression()), !dbg !1636
  %9 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1638
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1605, metadata !DIExpression(), metadata !1638, metadata ptr %9, metadata !DIExpression()), !dbg !1639
  %10 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1640
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1621, metadata !DIExpression(), metadata !1640, metadata ptr %10, metadata !DIExpression()), !dbg !1641
  %11 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1642
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1622, metadata !DIExpression(), metadata !1642, metadata ptr %11, metadata !DIExpression()), !dbg !1643
  %12 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1624, metadata !DIExpression(), metadata !1644, metadata ptr %12, metadata !DIExpression()), !dbg !1645
  %13 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1646
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1632, metadata !DIExpression(), metadata !1646, metadata ptr %13, metadata !DIExpression()), !dbg !1647
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1586, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1587, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1588, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1589, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1590, metadata !DIExpression()), !dbg !1648
  %14 = load i64, ptr %0, align 8, !dbg !1649, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1593, metadata !DIExpression()), !dbg !1648
  %15 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1650
  %16 = load i64, ptr %15, align 8, !dbg !1650, !tbaa !250
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1594, metadata !DIExpression()), !dbg !1648
  %17 = icmp ult i64 %14, %16, !dbg !1651
  br i1 %17, label %18, label %19, !dbg !1653

18:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 285, i32 noundef 24) #10, !dbg !1654
  br label %151, !dbg !1654

19:                                               ; preds = %5
  %20 = load i64, ptr %2, align 8, !dbg !1657, !tbaa !242
  %21 = icmp eq i64 %20, %16, !dbg !1659
  br i1 %21, label %23, label %22, !dbg !1660

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 290, i32 noundef 19) #10, !dbg !1661
  br label %151, !dbg !1661

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !1664
  %25 = load i64, ptr %24, align 8, !dbg !1664, !tbaa !250
  %26 = icmp eq i64 %16, %25, !dbg !1666
  br i1 %26, label %28, label %27, !dbg !1667

27:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 294, i32 noundef 20) #10, !dbg !1668
  br label %151, !dbg !1668

28:                                               ; preds = %23
  %29 = load i64, ptr %1, align 8, !dbg !1671, !tbaa !242
  %30 = icmp eq i64 %29, %16, !dbg !1673
  br i1 %30, label %32, label %31, !dbg !1674

31:                                               ; preds = %28
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 299, i32 noundef 19) #10, !dbg !1675
  br label %151, !dbg !1675

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !1678
  %34 = load i64, ptr %33, align 8, !dbg !1678, !tbaa !250
  %35 = icmp eq i64 %16, %34, !dbg !1680
  br i1 %35, label %37, label %36, !dbg !1681

36:                                               ; preds = %32
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 303, i32 noundef 20) #10, !dbg !1682
  br label %151, !dbg !1682

37:                                               ; preds = %32
  %38 = load i64, ptr %3, align 8, !dbg !1685, !tbaa !273
  %39 = icmp eq i64 %38, %16, !dbg !1687
  br i1 %39, label %41, label %40, !dbg !1688

40:                                               ; preds = %37
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 308, i32 noundef 19) #10, !dbg !1689
  br label %151, !dbg !1689

41:                                               ; preds = %37
  %42 = load i64, ptr %4, align 8, !dbg !1692, !tbaa !273
  %43 = icmp eq i64 %42, %16, !dbg !1694
  br i1 %43, label %45, label %44, !dbg !1695

44:                                               ; preds = %41
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 313, i32 noundef 19) #10, !dbg !1696
  br label %151, !dbg !1696

45:                                               ; preds = %41
  %46 = icmp eq i64 %16, 1, !dbg !1699
  br i1 %46, label %52, label %47, !dbg !1700

47:                                               ; preds = %45
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1648
  %48 = icmp eq i64 %16, 0, !dbg !1701
  br i1 %48, label %128, label %49, !dbg !1702

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %51 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  br label %71, !dbg !1702

52:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10, !dbg !1703
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef 0) #10, !dbg !1704
  %53 = call double @gsl_blas_dnrm2(ptr noundef nonnull %6) #10, !dbg !1705
  tail call void @llvm.dbg.value(metadata double %53, metadata !1598, metadata !DIExpression()), !dbg !1634
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !292, metadata !DIExpression()), !dbg !1706
  tail call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !1706
  tail call void @llvm.dbg.value(metadata double %53, metadata !298, metadata !DIExpression()), !dbg !1706
  %54 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2, !dbg !1708
  %55 = load ptr, ptr %54, align 8, !dbg !1708, !tbaa !302
  store double %53, ptr %55, align 8, !dbg !1709, !tbaa !304
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1710
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !314, metadata !DIExpression()), !dbg !1710
  %56 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3, !dbg !1712
  %57 = load ptr, ptr %56, align 8, !dbg !1712, !tbaa !318
  store double 1.000000e+00, ptr %57, align 8, !dbg !1713, !tbaa !304
  %58 = fcmp une double %53, 0.000000e+00, !dbg !1714
  br i1 %58, label %59, label %61, !dbg !1716

59:                                               ; preds = %52
  %60 = fdiv double 1.000000e+00, %53, !dbg !1717
  call void @gsl_blas_dscal(double noundef %60, ptr noundef nonnull %6) #10, !dbg !1719
  br label %61, !dbg !1720

61:                                               ; preds = %59, %52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10, !dbg !1721
  br label %151

62:                                               ; preds = %80
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1648
  %63 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %64 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %65 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !318
  %67 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !463
  %69 = load ptr, ptr %63, align 8, !tbaa !318
  %70 = load i64, ptr %64, align 8, !tbaa !463
  br label %88, !dbg !1722

71:                                               ; preds = %80, %49
  %72 = phi i64 [ 0, %49 ], [ %75, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !1591, metadata !DIExpression()), !dbg !1648
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10, !dbg !1723
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %72) #10, !dbg !1724
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10, !dbg !1725
  %73 = sub i64 %14, %72, !dbg !1726
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %7, i64 noundef %72, i64 noundef %73) #10, !dbg !1727
  %74 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %8) #10, !dbg !1728
  tail call void @llvm.dbg.value(metadata double %74, metadata !1604, metadata !DIExpression()), !dbg !1636
  %75 = add nuw i64 %72, 1, !dbg !1729
  %76 = icmp ult i64 %75, %16, !dbg !1730
  br i1 %76, label %77, label %80, !dbg !1731

77:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #10, !dbg !1732
  %78 = sub i64 %16, %75, !dbg !1733
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef %72, i64 noundef %75, i64 noundef %73, i64 noundef %78) #10, !dbg !1734
  %79 = call i32 @gsl_linalg_householder_hm(double noundef %74, ptr noundef nonnull %8, ptr noundef nonnull %9) #10, !dbg !1735
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #10, !dbg !1736
  br label %80, !dbg !1737

80:                                               ; preds = %77, %71
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !292, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !297, metadata !DIExpression()), !dbg !1738
  tail call void @llvm.dbg.value(metadata double %74, metadata !298, metadata !DIExpression()), !dbg !1738
  %81 = load ptr, ptr %50, align 8, !dbg !1740, !tbaa !302
  %82 = load i64, ptr %51, align 8, !dbg !1741, !tbaa !349
  %83 = mul i64 %82, %72, !dbg !1742
  %84 = getelementptr inbounds double, ptr %81, i64 %83, !dbg !1743
  store double %74, ptr %84, align 8, !dbg !1744, !tbaa !304
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10, !dbg !1745
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10, !dbg !1745
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !1591, metadata !DIExpression()), !dbg !1648
  %85 = icmp eq i64 %75, %16, !dbg !1701
  br i1 %85, label %62, label %71, !dbg !1702, !llvm.loop !1746

86:                                               ; preds = %109, %99
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1591, metadata !DIExpression()), !dbg !1648
  %87 = icmp eq i64 %107, %16, !dbg !1748
  br i1 %87, label %95, label %88, !dbg !1722, !llvm.loop !1749

88:                                               ; preds = %86, %62
  %89 = phi i64 [ 0, %62 ], [ %107, %86 ]
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1591, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1648
  %90 = icmp eq i64 %89, 0, !dbg !1751
  br i1 %90, label %99, label %91, !dbg !1754

91:                                               ; preds = %88
  %92 = shl i64 %89, 3, !dbg !1751
  %93 = mul i64 %70, %89
  %94 = getelementptr double, ptr %69, i64 %93
  call void @llvm.memset.p0.i64(ptr align 8 %94, i8 0, i64 %92, i1 false), !dbg !1755, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1592, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !312, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !313, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !314, metadata !DIExpression()), !dbg !1758
  br label %99, !dbg !1759

95:                                               ; preds = %86
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1592, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1648
  br i1 %48, label %128, label %96, !dbg !1761

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %98 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  br label %116, !dbg !1761

99:                                               ; preds = %91, %88
  %100 = phi i64 [ %93, %91 ], [ 0, %88 ], !dbg !1762
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !464, metadata !DIExpression()), !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !471, metadata !DIExpression()), !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !472, metadata !DIExpression()), !dbg !1764
  %101 = mul i64 %68, %89, !dbg !1759
  %102 = getelementptr double, ptr %66, i64 %101, !dbg !1765
  %103 = getelementptr double, ptr %102, i64 %89, !dbg !1765
  %104 = load double, ptr %103, align 8, !dbg !1765, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %104, metadata !1608, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !1767
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !312, metadata !DIExpression()), !dbg !1767
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !313, metadata !DIExpression()), !dbg !1767
  tail call void @llvm.dbg.value(metadata double %104, metadata !314, metadata !DIExpression()), !dbg !1767
  %105 = getelementptr double, ptr %69, i64 %100, !dbg !1768
  %106 = getelementptr double, ptr %105, i64 %89, !dbg !1768
  store double %104, ptr %106, align 8, !dbg !1769, !tbaa !304
  %107 = add nuw i64 %89, 1, !dbg !1770
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1592, metadata !DIExpression()), !dbg !1648
  %108 = icmp ult i64 %107, %16, !dbg !1771
  br i1 %108, label %109, label %86, !dbg !1772

109:                                              ; preds = %109, %99
  %110 = phi i64 [ %114, %109 ], [ %107, %99 ]
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !1592, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !464, metadata !DIExpression()), !dbg !1773
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !471, metadata !DIExpression()), !dbg !1773
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !472, metadata !DIExpression()), !dbg !1773
  %111 = getelementptr double, ptr %102, i64 %110, !dbg !1775
  %112 = load double, ptr %111, align 8, !dbg !1775, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %112, metadata !1613, metadata !DIExpression()), !dbg !1776
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !312, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !313, metadata !DIExpression()), !dbg !1777
  tail call void @llvm.dbg.value(metadata double %112, metadata !314, metadata !DIExpression()), !dbg !1777
  %113 = getelementptr double, ptr %105, i64 %110, !dbg !1779
  store double %112, ptr %113, align 8, !dbg !1780, !tbaa !304
  %114 = add nuw i64 %110, 1, !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !1592, metadata !DIExpression()), !dbg !1648
  %115 = icmp ult i64 %114, %16, !dbg !1771
  br i1 %115, label %109, label %86, !dbg !1772, !llvm.loop !1782

116:                                              ; preds = %116, %96
  %117 = phi i64 [ %16, %96 ], [ %118, %116 ]
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !1592, metadata !DIExpression()), !dbg !1648
  %118 = add i64 %117, -1, !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1592, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !337, metadata !DIExpression()), !dbg !1785
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !344, metadata !DIExpression()), !dbg !1785
  %119 = load ptr, ptr %97, align 8, !dbg !1787, !tbaa !302
  %120 = load i64, ptr %98, align 8, !dbg !1788, !tbaa !349
  %121 = mul i64 %120, %118, !dbg !1789
  %122 = getelementptr inbounds double, ptr %119, i64 %121, !dbg !1790
  %123 = load double, ptr %122, align 8, !dbg !1790, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %123, metadata !1617, metadata !DIExpression()), !dbg !1641
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #10, !dbg !1791
  %124 = sub i64 %14, %118, !dbg !1792
  %125 = sub i64 %16, %118, !dbg !1793
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %10, ptr noundef nonnull %0, i64 noundef %118, i64 noundef %118, i64 noundef %124, i64 noundef %125) #10, !dbg !1794
  %126 = call i32 @gsl_linalg_householder_hm1(double noundef %123, ptr noundef nonnull %10) #10, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #10, !dbg !1796
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1592, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1648
  %127 = icmp eq i64 %118, 0, !dbg !1797
  br i1 %127, label %128, label %116, !dbg !1761, !llvm.loop !1798

128:                                              ; preds = %116, %95, %47
  %129 = call i32 @gsl_linalg_SV_decomp(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !1800
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #10, !dbg !1801
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %11, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %16) #10, !dbg !1802
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1591, metadata !DIExpression()), !dbg !1648
  %130 = icmp eq i64 %14, 0, !dbg !1803
  br i1 %130, label %150, label %131, !dbg !1804

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.gsl_vector, ptr %12, i64 0, i32 2
  %133 = getelementptr inbounds %struct.gsl_vector, ptr %12, i64 0, i32 1
  br label %134, !dbg !1804

134:                                              ; preds = %146, %131
  %135 = phi i64 [ 0, %131 ], [ %148, %146 ]
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !1591, metadata !DIExpression()), !dbg !1648
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #10, !dbg !1805
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %12, ptr noundef nonnull %0, i64 noundef %135) #10, !dbg !1806
  call void @gsl_vector_set_zero(ptr noundef nonnull %11) #10, !dbg !1807
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1648
  br i1 %48, label %146, label %136, !dbg !1808

136:                                              ; preds = %136, %134
  %137 = phi i64 [ %144, %136 ], [ 0, %134 ]
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !1592, metadata !DIExpression()), !dbg !1648
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !337, metadata !DIExpression()), !dbg !1809
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !344, metadata !DIExpression()), !dbg !1809
  %138 = load ptr, ptr %132, align 8, !dbg !1811, !tbaa !302
  %139 = load i64, ptr %133, align 8, !dbg !1812, !tbaa !349
  %140 = mul i64 %139, %137, !dbg !1813
  %141 = getelementptr inbounds double, ptr %138, i64 %140, !dbg !1814
  %142 = load double, ptr %141, align 8, !dbg !1814, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %142, metadata !1628, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #10, !dbg !1815
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %13, ptr noundef nonnull %1, i64 noundef %137) #10, !dbg !1816
  %143 = call i32 @gsl_blas_daxpy(double noundef %142, ptr noundef nonnull %13, ptr noundef nonnull %11) #10, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #10, !dbg !1818
  %144 = add nuw i64 %137, 1, !dbg !1819
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1592, metadata !DIExpression()), !dbg !1648
  %145 = icmp eq i64 %144, %16, !dbg !1820
  br i1 %145, label %146, label %136, !dbg !1808, !llvm.loop !1821

146:                                              ; preds = %136, %134
  %147 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %12, ptr noundef nonnull %11) #10, !dbg !1823
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #10, !dbg !1824
  %148 = add nuw i64 %135, 1, !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !1591, metadata !DIExpression()), !dbg !1648
  %149 = icmp eq i64 %148, %14, !dbg !1803
  br i1 %149, label %150, label %134, !dbg !1804, !llvm.loop !1826

150:                                              ; preds = %146, %128
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #10, !dbg !1828
  br label %151, !dbg !1829

151:                                              ; preds = %150, %61, %44, %40, %36, %31, %27, %22, %18
  %152 = phi i32 [ 24, %18 ], [ 19, %22 ], [ 20, %27 ], [ 19, %31 ], [ 20, %36 ], [ 19, %40 ], [ 19, %44 ], [ 0, %61 ], [ 0, %150 ], !dbg !1648
  ret i32 %152, !dbg !1830
}

declare !dbg !1831 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !1834 i32 @gsl_linalg_householder_hm(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1837 i32 @gsl_linalg_householder_hm1(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1840 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1841 void @gsl_vector_set_zero(ptr noundef) local_unnamed_addr #2

declare !dbg !1844 i32 @gsl_blas_daxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1847 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_SV_solve(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1850 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1854, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1855, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1856, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1857, metadata !DIExpression()), !dbg !1873
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1858, metadata !DIExpression()), !dbg !1873
  %6 = load i64, ptr %0, align 8, !dbg !1874, !tbaa !242
  %7 = load i64, ptr %3, align 8, !dbg !1875, !tbaa !273
  %8 = icmp eq i64 %6, %7, !dbg !1876
  br i1 %8, label %10, label %9, !dbg !1877

9:                                                ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 429, i32 noundef 19) #10, !dbg !1878
  br label %89, !dbg !1878

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1881
  %12 = load i64, ptr %11, align 8, !dbg !1881, !tbaa !250
  %13 = load i64, ptr %2, align 8, !dbg !1882, !tbaa !273
  %14 = icmp eq i64 %12, %13, !dbg !1883
  br i1 %14, label %16, label %15, !dbg !1884

15:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 434, i32 noundef 19) #10, !dbg !1885
  br label %89, !dbg !1885

16:                                               ; preds = %10
  %17 = load i64, ptr %1, align 8, !dbg !1888, !tbaa !242
  %18 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !1889
  %19 = load i64, ptr %18, align 8, !dbg !1889, !tbaa !250
  %20 = icmp eq i64 %17, %19, !dbg !1890
  br i1 %20, label %22, label %21, !dbg !1891

21:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 438, i32 noundef 20) #10, !dbg !1892
  br label %89, !dbg !1892

22:                                               ; preds = %16
  %23 = icmp eq i64 %12, %17, !dbg !1895
  br i1 %23, label %25, label %24, !dbg !1896

24:                                               ; preds = %22
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 443, i32 noundef 19) #10, !dbg !1897
  br label %89, !dbg !1897

25:                                               ; preds = %22
  %26 = load i64, ptr %4, align 8, !dbg !1900, !tbaa !273
  %27 = icmp eq i64 %12, %26, !dbg !1901
  br i1 %27, label %29, label %28, !dbg !1902

28:                                               ; preds = %25
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 19) #10, !dbg !1903
  br label %89, !dbg !1903

29:                                               ; preds = %25
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1859, metadata !DIExpression()), !dbg !1906
  %30 = tail call ptr @gsl_vector_calloc(i64 noundef %12) #10, !dbg !1907
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1867, metadata !DIExpression()), !dbg !1906
  %31 = tail call i32 @gsl_blas_dgemv(i32 noundef 112, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %3, double noundef 0.000000e+00, ptr noundef %30) #10, !dbg !1908
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1866, metadata !DIExpression()), !dbg !1906
  %32 = icmp eq i64 %12, 0, !dbg !1909
  br i1 %32, label %87, label %33, !dbg !1910

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gsl_vector, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !302
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %30, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !349
  %38 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !302
  %40 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !349
  %42 = and i64 %12, 1, !dbg !1910
  %43 = icmp eq i64 %12, 1, !dbg !1910
  br i1 %43, label %73, label %44, !dbg !1910

44:                                               ; preds = %33
  %45 = and i64 %12, -2, !dbg !1910
  br label %46, !dbg !1910

46:                                               ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %70, %46 ]
  %48 = phi i64 [ 0, %44 ], [ %71, %46 ]
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1866, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !337, metadata !DIExpression()), !dbg !1911
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !344, metadata !DIExpression()), !dbg !1911
  %49 = mul i64 %37, %47, !dbg !1913
  %50 = getelementptr inbounds double, ptr %35, i64 %49, !dbg !1914
  %51 = load double, ptr %50, align 8, !dbg !1914, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %51, metadata !1868, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !1916
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !344, metadata !DIExpression()), !dbg !1916
  %52 = mul i64 %41, %47, !dbg !1918
  %53 = getelementptr inbounds double, ptr %39, i64 %52, !dbg !1919
  %54 = load double, ptr %53, align 8, !dbg !1919, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %54, metadata !1872, metadata !DIExpression()), !dbg !1915
  %55 = fcmp une double %54, 0.000000e+00, !dbg !1920
  %56 = fdiv double 1.000000e+00, %54, !dbg !1922
  %57 = select i1 %55, double %56, double %54, !dbg !1922
  tail call void @llvm.dbg.value(metadata double %57, metadata !1872, metadata !DIExpression()), !dbg !1915
  %58 = fmul double %51, %57, !dbg !1923
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !292, metadata !DIExpression()), !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !297, metadata !DIExpression()), !dbg !1924
  tail call void @llvm.dbg.value(metadata double %58, metadata !298, metadata !DIExpression()), !dbg !1924
  store double %58, ptr %50, align 8, !dbg !1926, !tbaa !304
  %59 = or disjoint i64 %47, 1, !dbg !1927
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !1866, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !1866, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !337, metadata !DIExpression()), !dbg !1911
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !344, metadata !DIExpression()), !dbg !1911
  %60 = mul i64 %37, %59, !dbg !1913
  %61 = getelementptr inbounds double, ptr %35, i64 %60, !dbg !1914
  %62 = load double, ptr %61, align 8, !dbg !1914, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %62, metadata !1868, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !1916
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !344, metadata !DIExpression()), !dbg !1916
  %63 = mul i64 %41, %59, !dbg !1918
  %64 = getelementptr inbounds double, ptr %39, i64 %63, !dbg !1919
  %65 = load double, ptr %64, align 8, !dbg !1919, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %65, metadata !1872, metadata !DIExpression()), !dbg !1915
  %66 = fcmp une double %65, 0.000000e+00, !dbg !1920
  %67 = fdiv double 1.000000e+00, %65, !dbg !1922
  %68 = select i1 %66, double %67, double %65, !dbg !1922
  tail call void @llvm.dbg.value(metadata double %68, metadata !1872, metadata !DIExpression()), !dbg !1915
  %69 = fmul double %62, %68, !dbg !1923
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !292, metadata !DIExpression()), !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !297, metadata !DIExpression()), !dbg !1924
  tail call void @llvm.dbg.value(metadata double %69, metadata !298, metadata !DIExpression()), !dbg !1924
  store double %69, ptr %61, align 8, !dbg !1926, !tbaa !304
  %70 = add nuw i64 %47, 2, !dbg !1927
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !1866, metadata !DIExpression()), !dbg !1906
  %71 = add i64 %48, 2, !dbg !1910
  %72 = icmp eq i64 %71, %45, !dbg !1910
  br i1 %72, label %73, label %46, !dbg !1910, !llvm.loop !1928

73:                                               ; preds = %46, %33
  %74 = phi i64 [ 0, %33 ], [ %70, %46 ]
  %75 = icmp eq i64 %42, 0, !dbg !1910
  br i1 %75, label %87, label %76, !dbg !1910

76:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !1866, metadata !DIExpression()), !dbg !1906
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !337, metadata !DIExpression()), !dbg !1911
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !344, metadata !DIExpression()), !dbg !1911
  %77 = mul i64 %37, %74, !dbg !1913
  %78 = getelementptr inbounds double, ptr %35, i64 %77, !dbg !1914
  %79 = load double, ptr %78, align 8, !dbg !1914, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %79, metadata !1868, metadata !DIExpression()), !dbg !1915
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !1916
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !344, metadata !DIExpression()), !dbg !1916
  %80 = mul i64 %41, %74, !dbg !1918
  %81 = getelementptr inbounds double, ptr %39, i64 %80, !dbg !1919
  %82 = load double, ptr %81, align 8, !dbg !1919, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %82, metadata !1872, metadata !DIExpression()), !dbg !1915
  %83 = fcmp une double %82, 0.000000e+00, !dbg !1920
  %84 = fdiv double 1.000000e+00, %82, !dbg !1922
  %85 = select i1 %83, double %84, double %82, !dbg !1922
  tail call void @llvm.dbg.value(metadata double %85, metadata !1872, metadata !DIExpression()), !dbg !1915
  %86 = fmul double %79, %85, !dbg !1923
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !292, metadata !DIExpression()), !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !297, metadata !DIExpression()), !dbg !1924
  tail call void @llvm.dbg.value(metadata double %86, metadata !298, metadata !DIExpression()), !dbg !1924
  store double %86, ptr %78, align 8, !dbg !1926, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !1866, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1906
  br label %87, !dbg !1930

87:                                               ; preds = %76, %73, %29
  %88 = tail call i32 @gsl_blas_dgemv(i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %1, ptr noundef %30, double noundef 0.000000e+00, ptr noundef nonnull %4) #10, !dbg !1930
  tail call void @gsl_vector_free(ptr noundef %30) #10, !dbg !1931
  br label %89

89:                                               ; preds = %87, %28, %24, %21, %15, %9
  %90 = phi i32 [ 19, %9 ], [ 19, %15 ], [ 20, %21 ], [ 19, %24 ], [ 19, %28 ], [ 0, %87 ], !dbg !1932
  ret i32 %90, !dbg !1933
}

declare !dbg !1934 ptr @gsl_vector_calloc(i64 noundef) local_unnamed_addr #2

declare !dbg !1937 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1942 void @gsl_vector_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_SV_leverage(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !1943 {
  %3 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !1964
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1953, metadata !DIExpression(), metadata !1964, metadata ptr %3, metadata !DIExpression()), !dbg !1965
  %4 = alloca double, align 8, !DIAssignID !1966
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1963, metadata !DIExpression(), metadata !1966, metadata ptr %4, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1947, metadata !DIExpression()), !dbg !1967
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1948, metadata !DIExpression()), !dbg !1967
  %5 = load i64, ptr %0, align 8, !dbg !1968, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1949, metadata !DIExpression()), !dbg !1967
  %6 = load i64, ptr %1, align 8, !dbg !1969, !tbaa !273
  %7 = icmp eq i64 %5, %6, !dbg !1970
  br i1 %7, label %8, label %13, !dbg !1971

8:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1950, metadata !DIExpression()), !dbg !1972
  %9 = icmp eq i64 %5, 0, !dbg !1973
  br i1 %9, label %24, label %10, !dbg !1974

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %14, !dbg !1974

13:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 495, i32 noundef 19) #10, !dbg !1975
  br label %24, !dbg !1975

14:                                               ; preds = %14, %10
  %15 = phi i64 [ 0, %10 ], [ %22, %14 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1950, metadata !DIExpression()), !dbg !1972
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10, !dbg !1978
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %3, ptr noundef nonnull %0, i64 noundef %15) #10, !dbg !1979
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10, !dbg !1980
  %16 = call i32 @gsl_blas_ddot(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %4) #10, !dbg !1981
  %17 = load double, ptr %4, align 8, !dbg !1982, !tbaa !304
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !297, metadata !DIExpression()), !dbg !1983
  tail call void @llvm.dbg.value(metadata double %17, metadata !298, metadata !DIExpression()), !dbg !1983
  %18 = load ptr, ptr %11, align 8, !dbg !1985, !tbaa !302
  %19 = load i64, ptr %12, align 8, !dbg !1986, !tbaa !349
  %20 = mul i64 %19, %15, !dbg !1987
  %21 = getelementptr inbounds double, ptr %18, i64 %20, !dbg !1988
  store double %17, ptr %21, align 8, !dbg !1989, !tbaa !304
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10, !dbg !1990
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10, !dbg !1990
  %22 = add nuw i64 %15, 1, !dbg !1991
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !1950, metadata !DIExpression()), !dbg !1972
  %23 = icmp eq i64 %22, %5, !dbg !1973
  br i1 %23, label %24, label %14, !dbg !1974, !llvm.loop !1992

24:                                               ; preds = %14, %13, %8
  %25 = phi i32 [ 19, %13 ], [ 0, %8 ], [ 0, %14 ], !dbg !1994
  ret i32 %25, !dbg !1995
}

declare !dbg !1996 void @gsl_matrix_const_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1999 i32 @gsl_blas_ddot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_SV_decomp_jacobi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !2002 {
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !2067
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2023, metadata !DIExpression(), metadata !2067, metadata ptr %4, metadata !DIExpression()), !dbg !2068
  %5 = alloca double, align 8, !DIAssignID !2069
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2037, metadata !DIExpression(), metadata !2069, metadata ptr %5, metadata !DIExpression()), !dbg !2070
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !2071
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2048, metadata !DIExpression(), metadata !2071, metadata ptr %6, metadata !DIExpression()), !dbg !2070
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !2072
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2049, metadata !DIExpression(), metadata !2072, metadata ptr %7, metadata !DIExpression()), !dbg !2070
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !2073
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2062, metadata !DIExpression(), metadata !2073, metadata ptr %8, metadata !DIExpression()), !dbg !2074
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2006, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2007, metadata !DIExpression()), !dbg !2075
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2008, metadata !DIExpression()), !dbg !2075
  %9 = load i64, ptr %0, align 8, !dbg !2076, !tbaa !242
  %10 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !2077
  %11 = load i64, ptr %10, align 8, !dbg !2077, !tbaa !250
  %12 = icmp ult i64 %9, %11, !dbg !2078
  br i1 %12, label %13, label %14, !dbg !2079

13:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 24) #10, !dbg !2080
  br label %211, !dbg !2080

14:                                               ; preds = %3
  %15 = load i64, ptr %1, align 8, !dbg !2083, !tbaa !242
  %16 = icmp eq i64 %15, %11, !dbg !2084
  br i1 %16, label %18, label %17, !dbg !2085

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 547, i32 noundef 19) #10, !dbg !2086
  br label %211, !dbg !2086

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !2089
  %20 = load i64, ptr %19, align 8, !dbg !2089, !tbaa !250
  %21 = icmp eq i64 %11, %20, !dbg !2090
  br i1 %21, label %23, label %22, !dbg !2091

22:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 551, i32 noundef 20) #10, !dbg !2092
  br label %211, !dbg !2092

23:                                               ; preds = %18
  %24 = load i64, ptr %2, align 8, !dbg !2095, !tbaa !273
  %25 = icmp eq i64 %24, %11, !dbg !2096
  br i1 %25, label %27, label %26, !dbg !2097

26:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 556, i32 noundef 19) #10, !dbg !2098
  br label %211, !dbg !2098

27:                                               ; preds = %23
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !2009, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2015, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2019, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2020, metadata !DIExpression()), !dbg !2101
  %28 = trunc i64 %11 to i32, !dbg !2102
  %29 = mul i32 %28, 5, !dbg !2102
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2021, metadata !DIExpression()), !dbg !2101
  %30 = mul i64 %9, 10, !dbg !2103
  %31 = uitofp i64 %30 to double, !dbg !2104
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !2105
  tail call void @llvm.dbg.value(metadata double %32, metadata !2022, metadata !DIExpression()), !dbg !2101
  %33 = tail call i32 @llvm.smax.i32(i32 %29, i32 12), !dbg !2106
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !2021, metadata !DIExpression()), !dbg !2101
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %1) #10, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2017, metadata !DIExpression()), !dbg !2101
  %34 = icmp eq i64 %11, 0, !dbg !2108
  br i1 %34, label %38, label %35, !dbg !2109

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %37 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  br label %51, !dbg !2109

38:                                               ; preds = %51, %27
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2019, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2020, metadata !DIExpression()), !dbg !2101
  %39 = add i64 %11, -1
  %40 = mul i64 %39, %11
  %41 = lshr i64 %40, 1
  %42 = trunc i64 %41 to i32
  %43 = icmp eq i64 %39, 0
  %44 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %45 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %46 = icmp eq i64 %9, 0
  %47 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %48 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %50 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  br label %73, !dbg !2110

51:                                               ; preds = %51, %35
  %52 = phi i64 [ 0, %35 ], [ %59, %51 ]
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !2017, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10, !dbg !2111
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %52) #10, !dbg !2112
  %53 = call double @gsl_blas_dnrm2(ptr noundef nonnull %4) #10, !dbg !2113
  tail call void @llvm.dbg.value(metadata double %53, metadata !2027, metadata !DIExpression()), !dbg !2068
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !2114
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !297, metadata !DIExpression()), !dbg !2115
  tail call void @llvm.dbg.value(metadata double %54, metadata !298, metadata !DIExpression()), !dbg !2115
  %55 = load ptr, ptr %36, align 8, !dbg !2117, !tbaa !302
  %56 = load i64, ptr %37, align 8, !dbg !2118, !tbaa !349
  %57 = mul i64 %56, %52, !dbg !2119
  %58 = getelementptr inbounds double, ptr %55, i64 %57, !dbg !2120
  store double %54, ptr %58, align 8, !dbg !2121, !tbaa !304
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10, !dbg !2122
  %59 = add nuw i64 %52, 1, !dbg !2123
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !2017, metadata !DIExpression()), !dbg !2101
  %60 = icmp eq i64 %59, %11, !dbg !2108
  br i1 %60, label %38, label %51, !dbg !2109, !llvm.loop !2124

61:                                               ; preds = %181
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !2060, metadata !DIExpression()), !dbg !2126
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2017, metadata !DIExpression()), !dbg !2101
  br i1 %34, label %209, label %62, !dbg !2127

62:                                               ; preds = %61
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !2060, metadata !DIExpression()), !dbg !2126
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2017, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10, !dbg !2128
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %0, i64 noundef 0) #10, !dbg !2129
  %63 = call double @gsl_blas_dnrm2(ptr noundef nonnull %8) #10, !dbg !2130
  tail call void @llvm.dbg.value(metadata double %63, metadata !2066, metadata !DIExpression()), !dbg !2074
  %64 = fcmp oeq double %63, 0.000000e+00, !dbg !2131
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !2136
  %65 = load ptr, ptr %44, align 8, !dbg !2139, !tbaa !302
  br i1 %64, label %69, label %66, !dbg !2141

66:                                               ; preds = %62
  tail call void @llvm.dbg.value(metadata double %63, metadata !298, metadata !DIExpression()), !dbg !2136
  store double %63, ptr %65, align 8, !dbg !2142, !tbaa !304
  %67 = fdiv double 1.000000e+00, %63, !dbg !2143
  %68 = call i32 @gsl_vector_scale(ptr noundef nonnull %8, double noundef %67) #10, !dbg !2144
  tail call void @llvm.dbg.value(metadata double %63, metadata !2060, metadata !DIExpression()), !dbg !2126
  br label %70

69:                                               ; preds = %62
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !2133
  store double 0.000000e+00, ptr %65, align 8, !dbg !2145, !tbaa !304
  call void @gsl_vector_set_zero(ptr noundef nonnull %8) #10, !dbg !2146
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2060, metadata !DIExpression()), !dbg !2126
  br label %70, !dbg !2147

70:                                               ; preds = %69, %66
  %71 = phi double [ 0.000000e+00, %69 ], [ %63, %66 ], !dbg !2140
  tail call void @llvm.dbg.value(metadata double %71, metadata !2060, metadata !DIExpression()), !dbg !2126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10, !dbg !2148
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2017, metadata !DIExpression()), !dbg !2101
  %72 = icmp eq i64 %11, 1, !dbg !2149
  br i1 %72, label %209, label %187, !dbg !2127

73:                                               ; preds = %181, %38
  %74 = phi i32 [ 0, %38 ], [ %183, %181 ]
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !2020, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !2019, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2017, metadata !DIExpression()), !dbg !2101
  br i1 %43, label %181, label %78, !dbg !2150

75:                                               ; preds = %177, %78
  %76 = phi i32 [ %80, %78 ], [ %178, %177 ], !dbg !2151
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !2017, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !2019, metadata !DIExpression()), !dbg !2101
  %77 = icmp eq i64 %81, %39, !dbg !2152
  br i1 %77, label %181, label %78, !dbg !2150, !llvm.loop !2153

78:                                               ; preds = %75, %73
  %79 = phi i64 [ %81, %75 ], [ 0, %73 ]
  %80 = phi i32 [ %76, %75 ], [ %42, %73 ]
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2017, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !2019, metadata !DIExpression()), !dbg !2101
  %81 = add nuw i64 %79, 1, !dbg !2155
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !2018, metadata !DIExpression()), !dbg !2101
  %82 = icmp ult i64 %81, %11, !dbg !2156
  br i1 %82, label %83, label %75, !dbg !2157

83:                                               ; preds = %177, %78
  %84 = phi i64 [ %179, %177 ], [ %81, %78 ]
  %85 = phi i32 [ %178, %177 ], [ %80, %78 ]
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2018, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !2019, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2028, metadata !DIExpression()), !dbg !2070
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2036, metadata !DIExpression()), !dbg !2070
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10, !dbg !2158
  store double 0.000000e+00, ptr %5, align 8, !dbg !2159, !tbaa !304, !DIAssignID !2160
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !2037, metadata !DIExpression(), metadata !2160, metadata ptr %5, metadata !DIExpression()), !dbg !2070
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2038, metadata !DIExpression()), !dbg !2070
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10, !dbg !2161
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %79) #10, !dbg !2162
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10, !dbg !2163
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %84) #10, !dbg !2164
  %86 = call i32 @gsl_blas_ddot(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #10, !dbg !2165
  %87 = load double, ptr %5, align 8, !dbg !2166, !tbaa !304
  %88 = fmul double %87, 2.000000e+00, !dbg !2166
  store double %88, ptr %5, align 8, !dbg !2166, !tbaa !304, !DIAssignID !2167
  call void @llvm.dbg.assign(metadata double %88, metadata !2037, metadata !DIExpression(), metadata !2167, metadata ptr %5, metadata !DIExpression()), !dbg !2070
  %89 = call double @gsl_blas_dnrm2(ptr noundef nonnull %6) #10, !dbg !2168
  tail call void @llvm.dbg.value(metadata double %89, metadata !2028, metadata !DIExpression()), !dbg !2070
  %90 = call double @gsl_blas_dnrm2(ptr noundef nonnull %7) #10, !dbg !2169
  tail call void @llvm.dbg.value(metadata double %90, metadata !2036, metadata !DIExpression()), !dbg !2070
  %91 = fmul double %89, %89, !dbg !2170
  %92 = fmul double %90, %90, !dbg !2171
  %handler_result = call double @fSubHandlerDouble(double %91, double %92), !dbg !2172
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !2038, metadata !DIExpression()), !dbg !2070
  %93 = load double, ptr %5, align 8, !dbg !2172, !tbaa !304
  %94 = call double @hypot(double noundef %93, double noundef %handler_result) #10, !dbg !2173
  tail call void @llvm.dbg.value(metadata double %94, metadata !2041, metadata !DIExpression()), !dbg !2070
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !2174
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !344, metadata !DIExpression()), !dbg !2174
  %95 = load ptr, ptr %44, align 8, !dbg !2176, !tbaa !302
  %96 = load i64, ptr %45, align 8, !dbg !2177, !tbaa !349
  %97 = mul i64 %96, %79, !dbg !2178
  %98 = getelementptr inbounds double, ptr %95, i64 %97, !dbg !2179
  %99 = load double, ptr %98, align 8, !dbg !2179, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %99, metadata !2042, metadata !DIExpression()), !dbg !2070
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !2180
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !344, metadata !DIExpression()), !dbg !2180
  %100 = mul i64 %96, %84, !dbg !2182
  %101 = getelementptr inbounds double, ptr %95, i64 %100, !dbg !2183
  %102 = load double, ptr %101, align 8, !dbg !2183, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %102, metadata !2043, metadata !DIExpression()), !dbg !2070
  %103 = call double @gsl_coerce_double(double noundef %89) #10, !dbg !2184
  %104 = call double @gsl_coerce_double(double noundef %90) #10, !dbg !2185
  %105 = fcmp ult double %103, %104, !dbg !2186
  tail call void @llvm.dbg.value(metadata i1 %105, metadata !2044, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2070
  %106 = load double, ptr %5, align 8, !dbg !2187, !tbaa !304
  %107 = fmul double %89, %90, !dbg !2188
  %108 = call double @gsl_coerce_double(double noundef %107) #10, !dbg !2188
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2070
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !2046, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2070
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !2047, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2070
  br i1 %105, label %128, label %109, !dbg !2189

109:                                              ; preds = %83
  %110 = fcmp olt double %90, %102, !dbg !2191
  tail call void @llvm.dbg.value(metadata i1 %110, metadata !2047, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2070
  %111 = fcmp olt double %89, %99, !dbg !2192
  tail call void @llvm.dbg.value(metadata i1 %111, metadata !2046, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2070
  %112 = call double @llvm.fabs.f64(double %106), !dbg !2193
  %113 = fmul double %32, %108, !dbg !2194
  %114 = fcmp ole double %112, %113, !dbg !2195
  tail call void @llvm.dbg.value(metadata i1 %114, metadata !2045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2070
  %115 = select i1 %114, i1 true, i1 %111, !dbg !2196
  %116 = select i1 %115, i1 true, i1 %110, !dbg !2196
  br i1 %116, label %117, label %119, !dbg !2196

117:                                              ; preds = %109
  %118 = add nsw i32 %85, -1, !dbg !2197
  tail call void @llvm.dbg.value(metadata i32 %118, metadata !2019, metadata !DIExpression()), !dbg !2101
  br label %177, !dbg !2199

119:                                              ; preds = %109
  %120 = fcmp une double %94, 0.000000e+00, !dbg !2200
  br i1 %120, label %121, label %128, !dbg !2202

121:                                              ; preds = %119
  %handler_result1 = call double @fAddHandlerDouble(double %94, double %handler_result), !dbg !2203
  %122 = fmul double %94, 2.000000e+00, !dbg !2203
  %123 = fdiv double %handler_result1, %122, !dbg !2205
  %124 = call double @sqrt(double noundef %123) #10, !dbg !2206
  tail call void @llvm.dbg.value(metadata double %124, metadata !2039, metadata !DIExpression()), !dbg !2070
  %125 = load double, ptr %5, align 8, !dbg !2207, !tbaa !304
  %126 = fmul double %122, %124, !dbg !2208
  %127 = fdiv double %125, %126, !dbg !2209
  tail call void @llvm.dbg.value(metadata double %127, metadata !2040, metadata !DIExpression()), !dbg !2070
  br label %128

128:                                              ; preds = %121, %119, %83
  %129 = phi double [ %127, %121 ], [ 1.000000e+00, %119 ], [ 1.000000e+00, %83 ], !dbg !2210
  %130 = phi double [ %124, %121 ], [ 0.000000e+00, %119 ], [ 0.000000e+00, %83 ], !dbg !2210
  tail call void @llvm.dbg.value(metadata double %130, metadata !2039, metadata !DIExpression()), !dbg !2070
  tail call void @llvm.dbg.value(metadata double %129, metadata !2040, metadata !DIExpression()), !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2016, metadata !DIExpression()), !dbg !2101
  br i1 %46, label %148, label %131, !dbg !2211

131:                                              ; preds = %128
  %132 = load ptr, ptr %47, align 8, !tbaa !318
  %133 = load i64, ptr %48, align 8, !tbaa !463
  br label %134, !dbg !2211

134:                                              ; preds = %134, %131
  %135 = phi i64 [ 0, %131 ], [ %146, %134 ]
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !2016, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !464, metadata !DIExpression()), !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !471, metadata !DIExpression()), !dbg !2212
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !472, metadata !DIExpression()), !dbg !2212
  %136 = mul i64 %133, %135, !dbg !2214
  %137 = getelementptr double, ptr %132, i64 %136, !dbg !2215
  %138 = getelementptr double, ptr %137, i64 %84, !dbg !2215
  %139 = load double, ptr %138, align 8, !dbg !2215, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %139, metadata !2050, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !464, metadata !DIExpression()), !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !471, metadata !DIExpression()), !dbg !2217
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !472, metadata !DIExpression()), !dbg !2217
  %140 = getelementptr double, ptr %137, i64 %79, !dbg !2219
  %141 = load double, ptr %140, align 8, !dbg !2219, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %141, metadata !2054, metadata !DIExpression()), !dbg !2216
  %142 = fmul double %130, %141, !dbg !2220
  %143 = fmul double %129, %139, !dbg !2221
  %handler_result2 = call double @fAddHandlerDouble(double %143, double %142), !dbg !2222
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !306, metadata !DIExpression()), !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !312, metadata !DIExpression()), !dbg !2224
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !313, metadata !DIExpression()), !dbg !2224
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !314, metadata !DIExpression()), !dbg !2224
  store double %handler_result2, ptr %140, align 8, !dbg !2222, !tbaa !304
  %144 = fmul double %130, %139, !dbg !2225
  %145 = fmul double %129, %141, !dbg !2226
  %handler_result3 = call double @fSubHandlerDouble(double %144, double %145), !dbg !2227
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !306, metadata !DIExpression()), !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !312, metadata !DIExpression()), !dbg !2229
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !313, metadata !DIExpression()), !dbg !2229
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !314, metadata !DIExpression()), !dbg !2229
  store double %handler_result3, ptr %138, align 8, !dbg !2227, !tbaa !304
  %146 = add nuw i64 %135, 1, !dbg !2230
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2016, metadata !DIExpression()), !dbg !2101
  %147 = icmp eq i64 %146, %9, !dbg !2231
  br i1 %147, label %148, label %134, !dbg !2211, !llvm.loop !2232

148:                                              ; preds = %134, %128
  %149 = call double @llvm.fabs.f64(double %130), !dbg !2234
  %150 = fmul double %99, %149, !dbg !2235
  %151 = call double @llvm.fabs.f64(double %129), !dbg !2236
  %152 = fmul double %102, %151, !dbg !2237
  %handler_result4 = call double @fAddHandlerDouble(double %152, double %150), !dbg !2238
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !297, metadata !DIExpression()), !dbg !2240
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !298, metadata !DIExpression()), !dbg !2240
  %153 = load ptr, ptr %44, align 8, !dbg !2238, !tbaa !302
  %154 = load i64, ptr %45, align 8, !dbg !2241, !tbaa !349
  %155 = mul i64 %154, %79, !dbg !2242
  %156 = getelementptr inbounds double, ptr %153, i64 %155, !dbg !2243
  store double %handler_result4, ptr %156, align 8, !dbg !2244, !tbaa !304
  %157 = fmul double %99, %151, !dbg !2245
  %158 = fmul double %102, %149, !dbg !2246
  %handler_result5 = call double @fAddHandlerDouble(double %157, double %158), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2249
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !297, metadata !DIExpression()), !dbg !2249
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !298, metadata !DIExpression()), !dbg !2249
  %159 = mul i64 %154, %84, !dbg !2247
  %160 = getelementptr inbounds double, ptr %153, i64 %159, !dbg !2250
  store double %handler_result5, ptr %160, align 8, !dbg !2251, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2016, metadata !DIExpression()), !dbg !2101
  %161 = load ptr, ptr %49, align 8, !tbaa !318
  %162 = load i64, ptr %50, align 8, !tbaa !463
  br label %163, !dbg !2252

163:                                              ; preds = %163, %148
  %164 = phi i64 [ 0, %148 ], [ %175, %163 ]
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !2016, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !2253
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !471, metadata !DIExpression()), !dbg !2253
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !472, metadata !DIExpression()), !dbg !2253
  %165 = mul i64 %162, %164, !dbg !2255
  %166 = getelementptr double, ptr %161, i64 %165, !dbg !2256
  %167 = getelementptr double, ptr %166, i64 %79, !dbg !2256
  %168 = load double, ptr %167, align 8, !dbg !2256, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %168, metadata !2055, metadata !DIExpression()), !dbg !2257
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !2258
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !471, metadata !DIExpression()), !dbg !2258
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !472, metadata !DIExpression()), !dbg !2258
  %169 = getelementptr double, ptr %166, i64 %84, !dbg !2260
  %170 = load double, ptr %169, align 8, !dbg !2260, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %170, metadata !2059, metadata !DIExpression()), !dbg !2257
  %171 = fmul double %130, %168, !dbg !2261
  %172 = fmul double %129, %170, !dbg !2262
  %handler_result6 = call double @fAddHandlerDouble(double %171, double %172), !dbg !2263
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !312, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !313, metadata !DIExpression()), !dbg !2265
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !314, metadata !DIExpression()), !dbg !2265
  store double %handler_result6, ptr %167, align 8, !dbg !2263, !tbaa !304
  %173 = fmul double %130, %170, !dbg !2266
  %174 = fmul double %129, %168, !dbg !2267
  %handler_result7 = call double @fSubHandlerDouble(double %173, double %174), !dbg !2268
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 %164, metadata !312, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !313, metadata !DIExpression()), !dbg !2270
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !314, metadata !DIExpression()), !dbg !2270
  store double %handler_result7, ptr %169, align 8, !dbg !2268, !tbaa !304
  %175 = add nuw i64 %164, 1, !dbg !2271
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2016, metadata !DIExpression()), !dbg !2101
  %176 = icmp eq i64 %175, %11, !dbg !2272
  br i1 %176, label %177, label %163, !dbg !2252, !llvm.loop !2273

177:                                              ; preds = %163, %117
  %178 = phi i32 [ %118, %117 ], [ %85, %163 ], !dbg !2151
  tail call void @llvm.dbg.value(metadata i32 %178, metadata !2019, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10, !dbg !2275
  %179 = add nuw i64 %84, 1, !dbg !2276
  tail call void @llvm.dbg.value(metadata i64 %179, metadata !2018, metadata !DIExpression()), !dbg !2101
  %180 = icmp ult i64 %179, %11, !dbg !2156
  br i1 %180, label %83, label %75, !dbg !2157, !llvm.loop !2277

181:                                              ; preds = %75, %73
  %182 = phi i32 [ %42, %73 ], [ %76, %75 ], !dbg !2279
  %183 = add nuw nsw i32 %74, 1, !dbg !2280
  tail call void @llvm.dbg.value(metadata i32 %182, metadata !2019, metadata !DIExpression()), !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 %183, metadata !2020, metadata !DIExpression()), !dbg !2101
  %184 = icmp sgt i32 %182, 0, !dbg !2281
  %185 = icmp ult i32 %74, %33, !dbg !2282
  %186 = select i1 %184, i1 %185, i1 false, !dbg !2282
  br i1 %186, label %73, label %61, !dbg !2110, !llvm.loop !2283

187:                                              ; preds = %205, %70
  %188 = phi double [ %206, %205 ], [ %71, %70 ]
  %189 = phi i64 [ %207, %205 ], [ 1, %70 ]
  tail call void @llvm.dbg.value(metadata double %188, metadata !2060, metadata !DIExpression()), !dbg !2126
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !2017, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10, !dbg !2128
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %0, i64 noundef %189) #10, !dbg !2129
  %190 = call double @gsl_blas_dnrm2(ptr noundef nonnull %8) #10, !dbg !2130
  tail call void @llvm.dbg.value(metadata double %190, metadata !2066, metadata !DIExpression()), !dbg !2074
  %191 = fcmp une double %190, 0.000000e+00, !dbg !2131
  %192 = fcmp une double %188, 0.000000e+00
  %193 = and i1 %192, %191, !dbg !2141
  %194 = fmul double %32, %188
  %195 = fcmp ugt double %190, %194
  %196 = and i1 %193, %195, !dbg !2141
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !297, metadata !DIExpression()), !dbg !2136
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !297, metadata !DIExpression()), !dbg !2133
  %197 = load ptr, ptr %44, align 8, !dbg !2139, !tbaa !302
  %198 = load i64, ptr %45, align 8, !dbg !2285, !tbaa !349
  %199 = mul i64 %198, %189, !dbg !2286
  %200 = getelementptr inbounds double, ptr %197, i64 %199, !dbg !2287
  br i1 %196, label %202, label %201, !dbg !2141

201:                                              ; preds = %187
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !2133
  store double 0.000000e+00, ptr %200, align 8, !dbg !2145, !tbaa !304
  call void @gsl_vector_set_zero(ptr noundef nonnull %8) #10, !dbg !2146
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2060, metadata !DIExpression()), !dbg !2126
  br label %205, !dbg !2147

202:                                              ; preds = %187
  tail call void @llvm.dbg.value(metadata double %190, metadata !298, metadata !DIExpression()), !dbg !2136
  store double %190, ptr %200, align 8, !dbg !2142, !tbaa !304
  %203 = fdiv double 1.000000e+00, %190, !dbg !2143
  %204 = call i32 @gsl_vector_scale(ptr noundef nonnull %8, double noundef %203) #10, !dbg !2144
  tail call void @llvm.dbg.value(metadata double %190, metadata !2060, metadata !DIExpression()), !dbg !2126
  br label %205

205:                                              ; preds = %202, %201
  %206 = phi double [ 0.000000e+00, %201 ], [ %190, %202 ], !dbg !2140
  tail call void @llvm.dbg.value(metadata double %206, metadata !2060, metadata !DIExpression()), !dbg !2126
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10, !dbg !2148
  %207 = add nuw i64 %189, 1, !dbg !2288
  tail call void @llvm.dbg.value(metadata i64 %207, metadata !2017, metadata !DIExpression()), !dbg !2101
  %208 = icmp eq i64 %207, %11, !dbg !2149
  br i1 %208, label %209, label %187, !dbg !2127, !llvm.loop !2289

209:                                              ; preds = %205, %70, %61
  br i1 %184, label %210, label %211, !dbg !2292

210:                                              ; preds = %209
  call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 712, i32 noundef 14) #10, !dbg !2293
  br label %211, !dbg !2293

211:                                              ; preds = %210, %209, %26, %22, %17, %13
  %212 = phi i32 [ 24, %13 ], [ 19, %17 ], [ 20, %22 ], [ 19, %26 ], [ 14, %210 ], [ 0, %209 ], !dbg !2297
  ret i32 %212, !dbg !2298
}

declare !dbg !2299 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2302 double @hypot(double noundef, double noundef) local_unnamed_addr #5

declare !dbg !2306 double @gsl_coerce_double(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2309 double @sqrt(double noundef) local_unnamed_addr #6

declare !dbg !2312 i32 @gsl_vector_scale(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare !dbg !2315 double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2319 double @ldexp(double noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!66}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "svd.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "edccd4e6c01f730719a72bce00d5d659")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 43)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 56)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 24)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 59)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 60)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 37)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !14, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 303, type: !19, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 428, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 50)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 433, type: !24, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 442, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 47)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 447, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 45)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 494, type: !14, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 546, type: !14, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 551, type: !19, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 711, type: !43, isLocal: true, isDefinition: true)
!66 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !67, globals: !114, splitDebugInlining: false, nameTableKind: None)
!67 = !{!68, !107}
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 39, baseType: !70, size: 32, elements: !71)
!69 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!72 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!73 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!74 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!75 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!76 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!77 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!78 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!79 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!80 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!81 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!82 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!83 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!84 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!85 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!86 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!87 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!88 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!89 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!90 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!91 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!92 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!93 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!94 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!95 = !DIEnumerator(name: "GSL_ESING", value: 21)
!96 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!97 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!98 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!99 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!100 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!101 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!102 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!103 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!104 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!105 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!106 = !DIEnumerator(name: "GSL_EOF", value: 32)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !108, line: 47, baseType: !109, size: 32, elements: !110)
!108 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !{!111, !112, !113}
!111 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!112 = !DIEnumerator(name: "CblasTrans", value: 112)
!113 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!114 = !{!0, !7, !12, !17, !22, !27, !32, !37, !39, !41, !46, !48, !53, !58, !60, !62, !64}
!115 = !{i32 7, !"Dwarf Version", i32 5}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 4}
!118 = !{i32 8, !"PIC Level", i32 2}
!119 = !{i32 7, !"PIE Level", i32 2}
!120 = !{i32 7, !"uwtable", i32 2}
!121 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!122 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!123 = distinct !DISubprogram(name: "gsl_linalg_SV_decomp", scope: !2, file: !2, line: 49, type: !124, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !159)
!124 = !DISubroutineType(types: !125)
!125 = !{!70, !126, !126, !149, !149}
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
!148 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !129, file: !128, line: 49, baseType: !70, size: 32, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !151, line: 50, baseType: !152)
!151 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 42, size: 320, elements: !153)
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !152, file: !151, line: 44, baseType: !132, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !152, file: !151, line: 45, baseType: !132, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !152, file: !151, line: 46, baseType: !138, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !152, file: !151, line: 47, baseType: !141, size: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !152, file: !151, line: 48, baseType: !70, size: 32, offset: 256)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !171, !172, !173, !181, !182, !184, !186, !188, !190, !191, !192, !198, !199, !200, !201, !202, !206, !207, !211, !212, !216, !222, !226, !227}
!160 = !DILocalVariable(name: "A", arg: 1, scope: !123, file: !2, line: 49, type: !126)
!161 = !DILocalVariable(name: "V", arg: 2, scope: !123, file: !2, line: 49, type: !126)
!162 = !DILocalVariable(name: "S", arg: 3, scope: !123, file: !2, line: 49, type: !149)
!163 = !DILocalVariable(name: "work", arg: 4, scope: !123, file: !2, line: 50, type: !149)
!164 = !DILocalVariable(name: "a", scope: !123, file: !2, line: 52, type: !132)
!165 = !DILocalVariable(name: "b", scope: !123, file: !2, line: 52, type: !132)
!166 = !DILocalVariable(name: "i", scope: !123, file: !2, line: 52, type: !132)
!167 = !DILocalVariable(name: "j", scope: !123, file: !2, line: 52, type: !132)
!168 = !DILocalVariable(name: "iter", scope: !123, file: !2, line: 52, type: !132)
!169 = !DILocalVariable(name: "M", scope: !123, file: !2, line: 54, type: !170)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!171 = !DILocalVariable(name: "N", scope: !123, file: !2, line: 55, type: !170)
!172 = !DILocalVariable(name: "K", scope: !123, file: !2, line: 56, type: !170)
!173 = !DILocalVariable(name: "column", scope: !174, file: !2, line: 86, type: !176)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 85, column: 5)
!175 = distinct !DILexicalBlock(scope: !123, file: !2, line: 84, column: 7)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !151, line: 57, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !151, line: 55, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 52, size: 320, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !178, file: !151, line: 54, baseType: !150, size: 320)
!181 = !DILocalVariable(name: "norm", scope: !174, file: !2, line: 87, type: !139)
!182 = !DILocalVariable(name: "f", scope: !183, file: !2, line: 101, type: !176)
!183 = distinct !DILexicalBlock(scope: !123, file: !2, line: 100, column: 3)
!184 = !DILocalVariable(name: "fbm1", scope: !185, file: !2, line: 119, type: !139)
!185 = distinct !DILexicalBlock(scope: !183, file: !2, line: 118, column: 7)
!186 = !DILocalVariable(name: "fam1", scope: !187, file: !2, line: 134, type: !139)
!187 = distinct !DILexicalBlock(scope: !185, file: !2, line: 133, column: 11)
!188 = !DILocalVariable(name: "n_block", scope: !189, file: !2, line: 153, type: !170)
!189 = distinct !DILexicalBlock(scope: !185, file: !2, line: 152, column: 9)
!190 = !DILocalVariable(name: "S_block", scope: !189, file: !2, line: 154, type: !176)
!191 = !DILocalVariable(name: "f_block", scope: !189, file: !2, line: 155, type: !176)
!192 = !DILocalVariable(name: "U_block", scope: !189, file: !2, line: 157, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !128, line: 57, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !128, line: 55, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 52, size: 384, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !195, file: !128, line: 54, baseType: !127, size: 384)
!198 = !DILocalVariable(name: "V_block", scope: !189, file: !2, line: 159, type: !193)
!199 = !DILocalVariable(name: "rescale", scope: !189, file: !2, line: 162, type: !70)
!200 = !DILocalVariable(name: "scale", scope: !189, file: !2, line: 163, type: !139)
!201 = !DILocalVariable(name: "norm", scope: !189, file: !2, line: 164, type: !139)
!202 = !DILocalVariable(name: "s_i", scope: !203, file: !2, line: 170, type: !139)
!203 = distinct !DILexicalBlock(scope: !204, file: !2, line: 169, column: 13)
!204 = distinct !DILexicalBlock(scope: !205, file: !2, line: 168, column: 11)
!205 = distinct !DILexicalBlock(scope: !189, file: !2, line: 168, column: 11)
!206 = !DILocalVariable(name: "a", scope: !203, file: !2, line: 171, type: !139)
!207 = !DILocalVariable(name: "f_i", scope: !208, file: !2, line: 177, type: !139)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 176, column: 13)
!209 = distinct !DILexicalBlock(scope: !210, file: !2, line: 175, column: 11)
!210 = distinct !DILexicalBlock(scope: !189, file: !2, line: 175, column: 11)
!211 = !DILocalVariable(name: "a", scope: !208, file: !2, line: 178, type: !139)
!212 = !DILocalVariable(name: "Sj", scope: !213, file: !2, line: 224, type: !139)
!213 = distinct !DILexicalBlock(scope: !214, file: !2, line: 223, column: 5)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 222, column: 3)
!215 = distinct !DILexicalBlock(scope: !123, file: !2, line: 222, column: 3)
!216 = !DILocalVariable(name: "Vij", scope: !217, file: !2, line: 230, type: !139)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 229, column: 13)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 228, column: 11)
!219 = distinct !DILexicalBlock(scope: !220, file: !2, line: 228, column: 11)
!220 = distinct !DILexicalBlock(scope: !221, file: !2, line: 227, column: 9)
!221 = distinct !DILexicalBlock(scope: !213, file: !2, line: 226, column: 11)
!222 = !DILocalVariable(name: "S_max", scope: !223, file: !2, line: 242, type: !139)
!223 = distinct !DILexicalBlock(scope: !224, file: !2, line: 241, column: 5)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 240, column: 3)
!225 = distinct !DILexicalBlock(scope: !123, file: !2, line: 240, column: 3)
!226 = !DILocalVariable(name: "i_max", scope: !223, file: !2, line: 243, type: !132)
!227 = !DILocalVariable(name: "Sj", scope: !228, file: !2, line: 247, type: !139)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 246, column: 9)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 245, column: 7)
!230 = distinct !DILexicalBlock(scope: !223, file: !2, line: 245, column: 7)
!231 = distinct !DIAssignID()
!232 = !DILocation(line: 0, scope: !174)
!233 = distinct !DIAssignID()
!234 = !DILocation(line: 0, scope: !183)
!235 = distinct !DIAssignID()
!236 = !DILocation(line: 0, scope: !189)
!237 = distinct !DIAssignID()
!238 = distinct !DIAssignID()
!239 = distinct !DIAssignID()
!240 = !DILocation(line: 0, scope: !123)
!241 = !DILocation(line: 54, column: 23, scope: !123)
!242 = !{!243, !244, i64 0}
!243 = !{!"", !244, i64 0, !244, i64 8, !244, i64 16, !247, i64 24, !247, i64 32, !248, i64 40}
!244 = !{!"long", !245, i64 0}
!245 = !{!"omnipotent char", !246, i64 0}
!246 = !{!"Simple C/C++ TBAA"}
!247 = !{!"any pointer", !245, i64 0}
!248 = !{!"int", !245, i64 0}
!249 = !DILocation(line: 55, column: 23, scope: !123)
!250 = !{!243, !244, i64 8}
!251 = !DILocation(line: 56, column: 20, scope: !123)
!252 = !DILocation(line: 58, column: 7, scope: !123)
!253 = !DILocation(line: 60, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 60, column: 7)
!255 = distinct !DILexicalBlock(scope: !256, file: !2, line: 59, column: 5)
!256 = distinct !DILexicalBlock(scope: !123, file: !2, line: 58, column: 7)
!257 = !DILocation(line: 62, column: 15, scope: !258)
!258 = distinct !DILexicalBlock(scope: !256, file: !2, line: 62, column: 12)
!259 = !DILocation(line: 62, column: 21, scope: !258)
!260 = !DILocation(line: 62, column: 12, scope: !256)
!261 = !DILocation(line: 64, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !2, line: 64, column: 7)
!263 = distinct !DILexicalBlock(scope: !258, file: !2, line: 63, column: 5)
!264 = !DILocation(line: 67, column: 27, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !2, line: 67, column: 12)
!266 = !DILocation(line: 67, column: 21, scope: !265)
!267 = !DILocation(line: 67, column: 12, scope: !258)
!268 = !DILocation(line: 69, column: 7, scope: !269)
!269 = distinct !DILexicalBlock(scope: !270, file: !2, line: 69, column: 7)
!270 = distinct !DILexicalBlock(scope: !265, file: !2, line: 68, column: 5)
!271 = !DILocation(line: 71, column: 15, scope: !272)
!272 = distinct !DILexicalBlock(scope: !265, file: !2, line: 71, column: 12)
!273 = !{!274, !244, i64 0}
!274 = !{!"", !244, i64 0, !244, i64 8, !247, i64 16, !247, i64 24, !248, i64 32}
!275 = !DILocation(line: 71, column: 20, scope: !272)
!276 = !DILocation(line: 71, column: 12, scope: !265)
!277 = !DILocation(line: 73, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !2, line: 73, column: 7)
!279 = distinct !DILexicalBlock(scope: !272, file: !2, line: 72, column: 5)
!280 = !DILocation(line: 76, column: 18, scope: !281)
!281 = distinct !DILexicalBlock(scope: !272, file: !2, line: 76, column: 12)
!282 = !DILocation(line: 76, column: 23, scope: !281)
!283 = !DILocation(line: 76, column: 12, scope: !272)
!284 = !DILocation(line: 78, column: 7, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !2, line: 78, column: 7)
!286 = distinct !DILexicalBlock(scope: !281, file: !2, line: 77, column: 5)
!287 = !DILocation(line: 84, column: 9, scope: !175)
!288 = !DILocation(line: 84, column: 7, scope: !123)
!289 = !DILocation(line: 86, column: 7, scope: !174)
!290 = !DILocation(line: 86, column: 32, scope: !174)
!291 = !DILocation(line: 87, column: 21, scope: !174)
!292 = !DILocalVariable(name: "v", arg: 1, scope: !293, file: !151, line: 188, type: !149)
!293 = distinct !DISubprogram(name: "gsl_vector_set", scope: !151, file: !151, line: 188, type: !294, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !149, !170, !139}
!296 = !{!292, !297, !298}
!297 = !DILocalVariable(name: "i", arg: 2, scope: !293, file: !151, line: 188, type: !170)
!298 = !DILocalVariable(name: "x", arg: 3, scope: !293, file: !151, line: 188, type: !139)
!299 = !DILocation(line: 0, scope: !293, inlinedAt: !300)
!300 = distinct !DILocation(line: 89, column: 7, scope: !174)
!301 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !300)
!302 = !{!274, !247, i64 16}
!303 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !300)
!304 = !{!305, !305, i64 0}
!305 = !{!"double", !245, i64 0}
!306 = !DILocalVariable(name: "m", arg: 1, scope: !307, file: !128, line: 290, type: !126)
!307 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !128, file: !128, line: 290, type: !308, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !311)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !126, !170, !170, !310}
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!311 = !{!306, !312, !313, !314}
!312 = !DILocalVariable(name: "i", arg: 2, scope: !307, file: !128, line: 290, type: !170)
!313 = !DILocalVariable(name: "j", arg: 3, scope: !307, file: !128, line: 290, type: !170)
!314 = !DILocalVariable(name: "x", arg: 4, scope: !307, file: !128, line: 290, type: !310)
!315 = !DILocation(line: 0, scope: !307, inlinedAt: !316)
!316 = distinct !DILocation(line: 90, column: 7, scope: !174)
!317 = !DILocation(line: 305, column: 6, scope: !307, inlinedAt: !316)
!318 = !{!243, !247, i64 24}
!319 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !316)
!320 = !DILocation(line: 92, column: 16, scope: !321)
!321 = distinct !DILexicalBlock(scope: !174, file: !2, line: 92, column: 11)
!322 = !DILocation(line: 92, column: 11, scope: !174)
!323 = !DILocation(line: 94, column: 30, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !2, line: 93, column: 9)
!325 = !DILocation(line: 94, column: 11, scope: !324)
!326 = !DILocation(line: 95, column: 9, scope: !324)
!327 = !DILocation(line: 98, column: 5, scope: !175)
!328 = !DILocation(line: 101, column: 5, scope: !183)
!329 = !DILocation(line: 101, column: 58, scope: !183)
!330 = !DILocation(line: 101, column: 25, scope: !183)
!331 = !DILocation(line: 105, column: 5, scope: !183)
!332 = !DILocation(line: 106, column: 5, scope: !183)
!333 = !DILocation(line: 110, column: 5, scope: !183)
!334 = !DILocation(line: 114, column: 11, scope: !183)
!335 = !DILocation(line: 117, column: 5, scope: !183)
!336 = !DILocation(line: 119, column: 52, scope: !185)
!337 = !DILocalVariable(name: "v", arg: 1, scope: !338, file: !151, line: 175, type: !341)
!338 = distinct !DISubprogram(name: "gsl_vector_get", scope: !151, file: !151, line: 175, type: !339, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !343)
!339 = !DISubroutineType(types: !340)
!340 = !{!139, !341, !170}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!343 = !{!337, !344}
!344 = !DILocalVariable(name: "i", arg: 2, scope: !338, file: !151, line: 175, type: !170)
!345 = !DILocation(line: 0, scope: !338, inlinedAt: !346)
!346 = distinct !DILocation(line: 119, column: 23, scope: !185)
!347 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !346)
!348 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !346)
!349 = !{!274, !244, i64 8}
!350 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !346)
!351 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !346)
!352 = !DILocation(line: 0, scope: !185)
!353 = !DILocation(line: 121, column: 18, scope: !354)
!354 = distinct !DILexicalBlock(scope: !185, file: !2, line: 121, column: 13)
!355 = !DILocation(line: 121, column: 25, scope: !354)
!356 = distinct !{!356, !335, !357, !358}
!357 = !DILocation(line: 217, column: 7, scope: !183)
!358 = !{!"llvm.loop.mustprogress"}
!359 = !DILocation(line: 121, column: 28, scope: !354)
!360 = !DILocation(line: 121, column: 13, scope: !185)
!361 = !DILocation(line: 130, column: 11, scope: !185)
!362 = !DILocation(line: 132, column: 18, scope: !185)
!363 = !DILocation(line: 132, column: 9, scope: !185)
!364 = !DILocation(line: 134, column: 56, scope: !187)
!365 = !DILocation(line: 0, scope: !338, inlinedAt: !366)
!366 = distinct !DILocation(line: 134, column: 27, scope: !187)
!367 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !366)
!368 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !366)
!369 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !366)
!370 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !366)
!371 = !DILocation(line: 0, scope: !187)
!372 = !DILocation(line: 136, column: 22, scope: !373)
!373 = distinct !DILexicalBlock(scope: !187, file: !2, line: 136, column: 17)
!374 = !DILocation(line: 136, column: 29, scope: !373)
!375 = !DILocation(line: 136, column: 32, scope: !373)
!376 = !DILocation(line: 136, column: 17, scope: !187)
!377 = !DILocation(line: 144, column: 13, scope: !185)
!378 = !DILocation(line: 146, column: 18, scope: !379)
!379 = distinct !DILexicalBlock(scope: !185, file: !2, line: 146, column: 13)
!380 = !DILocation(line: 146, column: 13, scope: !185)
!381 = !DILocation(line: 148, column: 13, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 148, column: 13)
!383 = distinct !DILexicalBlock(scope: !379, file: !2, line: 147, column: 11)
!384 = !DILocation(line: 218, column: 3, scope: !123)
!385 = !DILocation(line: 153, column: 36, scope: !189)
!386 = !DILocation(line: 153, column: 40, scope: !189)
!387 = !DILocation(line: 154, column: 11, scope: !189)
!388 = !DILocation(line: 154, column: 37, scope: !189)
!389 = !DILocation(line: 155, column: 11, scope: !189)
!390 = !DILocation(line: 155, column: 37, scope: !189)
!391 = !DILocation(line: 157, column: 11, scope: !189)
!392 = !DILocation(line: 158, column: 47, scope: !189)
!393 = !DILocation(line: 158, column: 13, scope: !189)
!394 = !DILocation(line: 159, column: 11, scope: !189)
!395 = !DILocation(line: 160, column: 47, scope: !189)
!396 = !DILocation(line: 160, column: 13, scope: !189)
!397 = !DILocation(line: 168, column: 25, scope: !204)
!398 = !DILocation(line: 168, column: 11, scope: !205)
!399 = !DILocation(line: 0, scope: !338, inlinedAt: !400)
!400 = distinct !DILocation(line: 170, column: 28, scope: !203)
!401 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !400)
!402 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !400)
!403 = !DILocation(line: 0, scope: !203)
!404 = !DILocation(line: 171, column: 26, scope: !203)
!405 = !DILocation(line: 172, column: 21, scope: !406)
!406 = distinct !DILexicalBlock(scope: !203, file: !2, line: 172, column: 19)
!407 = !DILocation(line: 172, column: 19, scope: !203)
!408 = !DILocation(line: 175, column: 25, scope: !209)
!409 = !DILocation(line: 175, column: 11, scope: !210)
!410 = !DILocation(line: 168, column: 37, scope: !204)
!411 = distinct !{!411, !398, !412, !358}
!412 = !DILocation(line: 173, column: 13, scope: !205)
!413 = !DILocation(line: 0, scope: !338, inlinedAt: !414)
!414 = distinct !DILocation(line: 177, column: 28, scope: !208)
!415 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !414)
!416 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !414)
!417 = !DILocation(line: 0, scope: !208)
!418 = !DILocation(line: 178, column: 26, scope: !208)
!419 = !DILocation(line: 179, column: 21, scope: !420)
!420 = distinct !DILexicalBlock(scope: !208, file: !2, line: 179, column: 19)
!421 = !DILocation(line: 179, column: 19, scope: !208)
!422 = !DILocation(line: 175, column: 41, scope: !209)
!423 = distinct !{!423, !409, !424, !358}
!424 = !DILocation(line: 180, column: 13, scope: !210)
!425 = !DILocation(line: 184, column: 20, scope: !426)
!426 = distinct !DILexicalBlock(scope: !189, file: !2, line: 184, column: 15)
!427 = !DILocation(line: 184, column: 15, scope: !189)
!428 = !DILocation(line: 186, column: 29, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !2, line: 185, column: 13)
!430 = !DILocation(line: 188, column: 13, scope: !429)
!431 = !DILocation(line: 189, column: 25, scope: !432)
!432 = distinct !DILexicalBlock(scope: !426, file: !2, line: 189, column: 20)
!433 = !DILocation(line: 189, column: 44, scope: !432)
!434 = !DILocation(line: 191, column: 29, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !2, line: 190, column: 13)
!436 = !DILocation(line: 193, column: 13, scope: !435)
!437 = !DILocation(line: 197, column: 34, scope: !438)
!438 = distinct !DILexicalBlock(scope: !439, file: !2, line: 196, column: 13)
!439 = distinct !DILexicalBlock(scope: !189, file: !2, line: 195, column: 15)
!440 = !DILocation(line: 197, column: 15, scope: !438)
!441 = !DILocation(line: 198, column: 15, scope: !438)
!442 = !DILocation(line: 203, column: 11, scope: !189)
!443 = !DILocation(line: 206, column: 11, scope: !189)
!444 = !DILocation(line: 212, column: 15, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !2, line: 211, column: 13)
!446 = distinct !DILexicalBlock(scope: !189, file: !2, line: 210, column: 15)
!447 = !DILocation(line: 213, column: 15, scope: !445)
!448 = !DILocation(line: 214, column: 13, scope: !445)
!449 = !DILocation(line: 210, column: 15, scope: !189)
!450 = !DILocation(line: 215, column: 9, scope: !185)
!451 = !DILocation(line: 117, column: 14, scope: !183)
!452 = !DILocation(line: 222, column: 17, scope: !214)
!453 = !DILocation(line: 222, column: 3, scope: !215)
!454 = !DILocation(line: 240, column: 3, scope: !225)
!455 = !DILocation(line: 0, scope: !338, inlinedAt: !456)
!456 = distinct !DILocation(line: 224, column: 19, scope: !213)
!457 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !456)
!458 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !456)
!459 = !DILocation(line: 0, scope: !213)
!460 = !DILocation(line: 226, column: 14, scope: !221)
!461 = !DILocation(line: 226, column: 11, scope: !213)
!462 = !DILocation(line: 228, column: 11, scope: !219)
!463 = !{!243, !244, i64 16}
!464 = !DILocalVariable(name: "m", arg: 1, scope: !465, file: !128, line: 270, type: !468)
!465 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !128, file: !128, line: 270, type: !466, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !470)
!466 = !DISubroutineType(types: !467)
!467 = !{!139, !468, !170, !170}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!470 = !{!464, !471, !472}
!471 = !DILocalVariable(name: "i", arg: 2, scope: !465, file: !128, line: 270, type: !170)
!472 = !DILocalVariable(name: "j", arg: 3, scope: !465, file: !128, line: 270, type: !170)
!473 = !DILocation(line: 0, scope: !465, inlinedAt: !474)
!474 = distinct !DILocation(line: 230, column: 28, scope: !217)
!475 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !474)
!476 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !474)
!477 = !DILocation(line: 0, scope: !217)
!478 = !DILocation(line: 231, column: 40, scope: !217)
!479 = !DILocation(line: 0, scope: !307, inlinedAt: !480)
!480 = distinct !DILocation(line: 231, column: 15, scope: !217)
!481 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !480)
!482 = !DILocation(line: 228, column: 31, scope: !218)
!483 = distinct !{!483, !462, !484, !358}
!484 = !DILocation(line: 232, column: 13, scope: !219)
!485 = distinct !{!485, !486}
!486 = !{!"llvm.loop.unroll.disable"}
!487 = !DILocation(line: 234, column: 33, scope: !220)
!488 = !DILocation(line: 0, scope: !293, inlinedAt: !489)
!489 = distinct !DILocation(line: 234, column: 11, scope: !220)
!490 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !489)
!491 = !DILocation(line: 235, column: 9, scope: !220)
!492 = !DILocation(line: 222, column: 23, scope: !214)
!493 = distinct !{!493, !453, !494, !358}
!494 = !DILocation(line: 236, column: 5, scope: !215)
!495 = !DILocation(line: 0, scope: !338, inlinedAt: !496)
!496 = distinct !DILocation(line: 242, column: 22, scope: !223)
!497 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !496)
!498 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !496)
!499 = !DILocation(line: 0, scope: !223)
!500 = !DILocation(line: 245, column: 18, scope: !230)
!501 = !DILocation(line: 245, column: 25, scope: !229)
!502 = !DILocation(line: 245, column: 7, scope: !230)
!503 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !496)
!504 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !496)
!505 = !DILocation(line: 0, scope: !338, inlinedAt: !506)
!506 = distinct !DILocation(line: 247, column: 23, scope: !228)
!507 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !506)
!508 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !506)
!509 = !DILocation(line: 0, scope: !228)
!510 = !DILocation(line: 249, column: 18, scope: !511)
!511 = distinct !DILexicalBlock(scope: !228, file: !2, line: 249, column: 15)
!512 = !DILocation(line: 249, column: 15, scope: !228)
!513 = !DILocation(line: 245, column: 31, scope: !229)
!514 = distinct !{!514, !502, !515, !358}
!515 = !DILocation(line: 254, column: 9, scope: !230)
!516 = !DILocation(line: 256, column: 17, scope: !517)
!517 = distinct !DILexicalBlock(scope: !223, file: !2, line: 256, column: 11)
!518 = !DILocation(line: 256, column: 11, scope: !223)
!519 = !DILocation(line: 259, column: 11, scope: !520)
!520 = distinct !DILexicalBlock(scope: !517, file: !2, line: 257, column: 9)
!521 = !DILocation(line: 262, column: 11, scope: !520)
!522 = !DILocation(line: 263, column: 11, scope: !520)
!523 = !DILocation(line: 264, column: 9, scope: !520)
!524 = !DILocation(line: 240, column: 17, scope: !224)
!525 = distinct !{!525, !454, !526, !358}
!526 = !DILocation(line: 265, column: 5, scope: !225)
!527 = !DILocation(line: 268, column: 1, scope: !123)
!528 = !DISubprogram(name: "gsl_error", scope: !69, file: !69, line: 77, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !531, !531, !70, !70}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!533 = !DISubprogram(name: "gsl_matrix_column", scope: !128, file: !128, line: 109, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DISubroutineType(types: !535)
!535 = !{!177, !126, !170}
!536 = !DISubprogram(name: "gsl_blas_dnrm2", scope: !537, file: !537, line: 91, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!537 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!538 = !DISubroutineType(types: !539)
!539 = !{!139, !341}
!540 = !DISubprogram(name: "gsl_blas_dscal", scope: !537, file: !537, line: 173, type: !541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !139, !149}
!543 = !DISubprogram(name: "gsl_vector_subvector", scope: !151, file: !151, line: 103, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!544 = !DISubroutineType(types: !545)
!545 = !{!177, !149, !132, !132}
!546 = !DISubprogram(name: "gsl_linalg_bidiag_decomp", scope: !547, file: !547, line: 686, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!547 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!548 = !DISubroutineType(types: !549)
!549 = !{!70, !126, !149, !149}
!550 = !DISubprogram(name: "gsl_linalg_bidiag_unpack2", scope: !547, file: !547, line: 698, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!551 = !DISubroutineType(types: !552)
!552 = !{!70, !126, !149, !149, !126}
!553 = distinct !DISubprogram(name: "chop_small_elements", scope: !554, file: !554, line: 21, type: !555, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !557)
!554 = !DIFile(filename: "./svdstep.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "9899c63550f2f85639bd3fc1c0e8daff")
!555 = !DISubroutineType(types: !556)
!556 = !{null, !149, !149}
!557 = !{!558, !559, !560, !561, !562, !563, !567}
!558 = !DILocalVariable(name: "d", arg: 1, scope: !553, file: !554, line: 21, type: !149)
!559 = !DILocalVariable(name: "f", arg: 2, scope: !553, file: !554, line: 21, type: !149)
!560 = !DILocalVariable(name: "N", scope: !553, file: !554, line: 23, type: !170)
!561 = !DILocalVariable(name: "d_i", scope: !553, file: !554, line: 24, type: !139)
!562 = !DILocalVariable(name: "i", scope: !553, file: !554, line: 26, type: !132)
!563 = !DILocalVariable(name: "f_i", scope: !564, file: !554, line: 30, type: !139)
!564 = distinct !DILexicalBlock(scope: !565, file: !554, line: 29, column: 5)
!565 = distinct !DILexicalBlock(scope: !566, file: !554, line: 28, column: 3)
!566 = distinct !DILexicalBlock(scope: !553, file: !554, line: 28, column: 3)
!567 = !DILocalVariable(name: "d_ip1", scope: !564, file: !554, line: 31, type: !139)
!568 = !DILocation(line: 0, scope: !553)
!569 = !DILocation(line: 23, column: 23, scope: !553)
!570 = !DILocation(line: 0, scope: !338, inlinedAt: !571)
!571 = distinct !DILocation(line: 24, column: 16, scope: !553)
!572 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !571)
!573 = !DILocation(line: 28, column: 17, scope: !565)
!574 = !DILocation(line: 28, column: 3, scope: !566)
!575 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !571)
!576 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !571)
!577 = !DILocation(line: 0, scope: !338, inlinedAt: !578)
!578 = distinct !DILocation(line: 30, column: 20, scope: !564)
!579 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !578)
!580 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !578)
!581 = !DILocation(line: 0, scope: !564)
!582 = !DILocation(line: 31, column: 43, scope: !564)
!583 = !DILocation(line: 0, scope: !338, inlinedAt: !584)
!584 = distinct !DILocation(line: 31, column: 22, scope: !564)
!585 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !584)
!586 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !584)
!587 = !DILocation(line: 33, column: 11, scope: !588)
!588 = distinct !DILexicalBlock(scope: !564, file: !554, line: 33, column: 11)
!589 = !DILocation(line: 33, column: 43, scope: !588)
!590 = !DILocation(line: 33, column: 56, scope: !588)
!591 = !DILocation(line: 33, column: 40, scope: !588)
!592 = !DILocation(line: 33, column: 22, scope: !588)
!593 = !DILocation(line: 33, column: 11, scope: !564)
!594 = !DILocation(line: 0, scope: !293, inlinedAt: !595)
!595 = distinct !DILocation(line: 35, column: 11, scope: !596)
!596 = distinct !DILexicalBlock(scope: !588, file: !554, line: 34, column: 9)
!597 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !595)
!598 = !DILocation(line: 36, column: 9, scope: !596)
!599 = distinct !{!599, !574, !600, !358}
!600 = !DILocation(line: 39, column: 5, scope: !566)
!601 = !DILocation(line: 41, column: 1, scope: !553)
!602 = !DISubprogram(name: "gsl_isnan", scope: !603, file: !603, line: 43, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!604 = !DISubroutineType(types: !605)
!605 = !{!70, !310}
!606 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !128, file: !128, line: 101, type: !607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubroutineType(types: !608)
!608 = !{!194, !126, !170, !170, !170, !170}
!609 = distinct !DISubprogram(name: "qrstep", scope: !554, file: !554, line: 416, type: !610, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !149, !149, !126, !126}
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !634, !636, !638, !639, !640, !642, !646, !647, !651, !652, !654, !655, !656, !657, !658, !662, !663, !665, !666, !667, !668}
!613 = !DILocalVariable(name: "d", arg: 1, scope: !609, file: !554, line: 416, type: !149)
!614 = !DILocalVariable(name: "f", arg: 2, scope: !609, file: !554, line: 416, type: !149)
!615 = !DILocalVariable(name: "U", arg: 3, scope: !609, file: !554, line: 416, type: !126)
!616 = !DILocalVariable(name: "V", arg: 4, scope: !609, file: !554, line: 416, type: !126)
!617 = !DILocalVariable(name: "M", scope: !609, file: !554, line: 419, type: !170)
!618 = !DILocalVariable(name: "N", scope: !609, file: !554, line: 420, type: !170)
!619 = !DILocalVariable(name: "n", scope: !609, file: !554, line: 422, type: !170)
!620 = !DILocalVariable(name: "y", scope: !609, file: !554, line: 423, type: !139)
!621 = !DILocalVariable(name: "z", scope: !609, file: !554, line: 423, type: !139)
!622 = !DILocalVariable(name: "ak", scope: !609, file: !554, line: 424, type: !139)
!623 = !DILocalVariable(name: "bk", scope: !609, file: !554, line: 424, type: !139)
!624 = !DILocalVariable(name: "zk", scope: !609, file: !554, line: 424, type: !139)
!625 = !DILocalVariable(name: "ap", scope: !609, file: !554, line: 424, type: !139)
!626 = !DILocalVariable(name: "bp", scope: !609, file: !554, line: 424, type: !139)
!627 = !DILocalVariable(name: "aq", scope: !609, file: !554, line: 424, type: !139)
!628 = !DILocalVariable(name: "i", scope: !609, file: !554, line: 425, type: !132)
!629 = !DILocalVariable(name: "k", scope: !609, file: !554, line: 425, type: !132)
!630 = !DILocalVariable(name: "d_i", scope: !631, file: !554, line: 442, type: !139)
!631 = distinct !DILexicalBlock(scope: !632, file: !554, line: 441, column: 5)
!632 = distinct !DILexicalBlock(scope: !633, file: !554, line: 440, column: 3)
!633 = distinct !DILexicalBlock(scope: !609, file: !554, line: 440, column: 3)
!634 = !DILocalVariable(name: "d_nm1", scope: !635, file: !554, line: 454, type: !139)
!635 = distinct !DILexicalBlock(scope: !609, file: !554, line: 453, column: 3)
!636 = !DILocalVariable(name: "d0", scope: !637, file: !554, line: 467, type: !139)
!637 = distinct !DILexicalBlock(scope: !609, file: !554, line: 466, column: 3)
!638 = !DILocalVariable(name: "f0", scope: !637, file: !554, line: 468, type: !139)
!639 = !DILocalVariable(name: "d1", scope: !637, file: !554, line: 470, type: !139)
!640 = !DILocalVariable(name: "mu", scope: !641, file: !554, line: 473, type: !139)
!641 = distinct !DILexicalBlock(scope: !637, file: !554, line: 472, column: 5)
!642 = !DILocalVariable(name: "c", scope: !643, file: !554, line: 492, type: !139)
!643 = distinct !DILexicalBlock(scope: !644, file: !554, line: 491, column: 5)
!644 = distinct !DILexicalBlock(scope: !645, file: !554, line: 490, column: 3)
!645 = distinct !DILexicalBlock(scope: !609, file: !554, line: 490, column: 3)
!646 = !DILocalVariable(name: "s", scope: !643, file: !554, line: 492, type: !139)
!647 = !DILocalVariable(name: "Vip", scope: !648, file: !554, line: 506, type: !139)
!648 = distinct !DILexicalBlock(scope: !649, file: !554, line: 505, column: 9)
!649 = distinct !DILexicalBlock(scope: !650, file: !554, line: 504, column: 7)
!650 = distinct !DILexicalBlock(scope: !643, file: !554, line: 504, column: 7)
!651 = !DILocalVariable(name: "Viq", scope: !648, file: !554, line: 507, type: !139)
!652 = !DILocalVariable(name: "bk1", scope: !653, file: !554, line: 516, type: !139)
!653 = distinct !DILexicalBlock(scope: !643, file: !554, line: 515, column: 7)
!654 = !DILocalVariable(name: "ap1", scope: !653, file: !554, line: 518, type: !139)
!655 = !DILocalVariable(name: "bp1", scope: !653, file: !554, line: 519, type: !139)
!656 = !DILocalVariable(name: "zp1", scope: !653, file: !554, line: 520, type: !139)
!657 = !DILocalVariable(name: "aq1", scope: !653, file: !554, line: 522, type: !139)
!658 = !DILocalVariable(name: "Uip", scope: !659, file: !554, line: 561, type: !139)
!659 = distinct !DILexicalBlock(scope: !660, file: !554, line: 560, column: 9)
!660 = distinct !DILexicalBlock(scope: !661, file: !554, line: 559, column: 7)
!661 = distinct !DILexicalBlock(scope: !643, file: !554, line: 559, column: 7)
!662 = !DILocalVariable(name: "Uiq", scope: !659, file: !554, line: 562, type: !139)
!663 = !DILocalVariable(name: "ak1", scope: !664, file: !554, line: 571, type: !139)
!664 = distinct !DILexicalBlock(scope: !643, file: !554, line: 570, column: 7)
!665 = !DILocalVariable(name: "bk1", scope: !664, file: !554, line: 572, type: !139)
!666 = !DILocalVariable(name: "zk1", scope: !664, file: !554, line: 573, type: !139)
!667 = !DILocalVariable(name: "ap1", scope: !664, file: !554, line: 575, type: !139)
!668 = !DILocalVariable(name: "bp1", scope: !664, file: !554, line: 576, type: !139)
!669 = distinct !DIAssignID()
!670 = distinct !DIAssignID()
!671 = !DILocation(line: 0, scope: !609)
!672 = !DILocation(line: 419, column: 23, scope: !609)
!673 = !DILocation(line: 420, column: 23, scope: !609)
!674 = !DILocation(line: 422, column: 23, scope: !609)
!675 = !DILocation(line: 427, column: 7, scope: !609)
!676 = !DILocation(line: 440, column: 3, scope: !633)
!677 = !DILocalVariable(name: "d", arg: 1, scope: !678, file: !554, line: 171, type: !149)
!678 = distinct !DISubprogram(name: "svd2", scope: !554, file: !554, line: 171, type: !610, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !679)
!679 = !{!677, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !701, !702, !708, !709, !714, !715, !718, !719, !723}
!680 = !DILocalVariable(name: "f", arg: 2, scope: !678, file: !554, line: 171, type: !149)
!681 = !DILocalVariable(name: "U", arg: 3, scope: !678, file: !554, line: 171, type: !126)
!682 = !DILocalVariable(name: "V", arg: 4, scope: !678, file: !554, line: 171, type: !126)
!683 = !DILocalVariable(name: "i", scope: !678, file: !554, line: 173, type: !132)
!684 = !DILocalVariable(name: "c", scope: !678, file: !554, line: 174, type: !139)
!685 = !DILocalVariable(name: "s", scope: !678, file: !554, line: 174, type: !139)
!686 = !DILocalVariable(name: "a11", scope: !678, file: !554, line: 174, type: !139)
!687 = !DILocalVariable(name: "a12", scope: !678, file: !554, line: 174, type: !139)
!688 = !DILocalVariable(name: "a21", scope: !678, file: !554, line: 174, type: !139)
!689 = !DILocalVariable(name: "a22", scope: !678, file: !554, line: 174, type: !139)
!690 = !DILocalVariable(name: "M", scope: !678, file: !554, line: 176, type: !170)
!691 = !DILocalVariable(name: "N", scope: !678, file: !554, line: 177, type: !170)
!692 = !DILocalVariable(name: "d0", scope: !678, file: !554, line: 179, type: !139)
!693 = !DILocalVariable(name: "f0", scope: !678, file: !554, line: 180, type: !139)
!694 = !DILocalVariable(name: "d1", scope: !678, file: !554, line: 182, type: !139)
!695 = !DILocalVariable(name: "Uip", scope: !696, file: !554, line: 200, type: !139)
!696 = distinct !DILexicalBlock(scope: !697, file: !554, line: 199, column: 9)
!697 = distinct !DILexicalBlock(scope: !698, file: !554, line: 198, column: 7)
!698 = distinct !DILexicalBlock(scope: !699, file: !554, line: 198, column: 7)
!699 = distinct !DILexicalBlock(scope: !700, file: !554, line: 185, column: 5)
!700 = distinct !DILexicalBlock(scope: !678, file: !554, line: 184, column: 7)
!701 = !DILocalVariable(name: "Uiq", scope: !696, file: !554, line: 201, type: !139)
!702 = !DILocalVariable(name: "Vip", scope: !703, file: !554, line: 227, type: !139)
!703 = distinct !DILexicalBlock(scope: !704, file: !554, line: 226, column: 9)
!704 = distinct !DILexicalBlock(scope: !705, file: !554, line: 225, column: 7)
!705 = distinct !DILexicalBlock(scope: !706, file: !554, line: 225, column: 7)
!706 = distinct !DILexicalBlock(scope: !707, file: !554, line: 213, column: 5)
!707 = distinct !DILexicalBlock(scope: !700, file: !554, line: 212, column: 12)
!708 = !DILocalVariable(name: "Viq", scope: !703, file: !554, line: 228, type: !139)
!709 = !DILocalVariable(name: "Vip", scope: !710, file: !554, line: 253, type: !139)
!710 = distinct !DILexicalBlock(scope: !711, file: !554, line: 252, column: 9)
!711 = distinct !DILexicalBlock(scope: !712, file: !554, line: 251, column: 7)
!712 = distinct !DILexicalBlock(scope: !713, file: !554, line: 251, column: 7)
!713 = distinct !DILexicalBlock(scope: !707, file: !554, line: 236, column: 5)
!714 = !DILocalVariable(name: "Viq", scope: !710, file: !554, line: 254, type: !139)
!715 = !DILocalVariable(name: "t1", scope: !716, file: !554, line: 264, type: !139)
!716 = distinct !DILexicalBlock(scope: !717, file: !554, line: 263, column: 9)
!717 = distinct !DILexicalBlock(scope: !713, file: !554, line: 262, column: 11)
!718 = !DILocalVariable(name: "t2", scope: !716, file: !554, line: 264, type: !139)
!719 = !DILocalVariable(name: "Uip", scope: !720, file: !554, line: 288, type: !139)
!720 = distinct !DILexicalBlock(scope: !721, file: !554, line: 287, column: 9)
!721 = distinct !DILexicalBlock(scope: !722, file: !554, line: 286, column: 7)
!722 = distinct !DILexicalBlock(scope: !713, file: !554, line: 286, column: 7)
!723 = !DILocalVariable(name: "Uiq", scope: !720, file: !554, line: 289, type: !139)
!724 = !DILocation(line: 0, scope: !678, inlinedAt: !725)
!725 = distinct !DILocation(line: 434, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !554, line: 433, column: 5)
!727 = distinct !DILexicalBlock(scope: !609, file: !554, line: 432, column: 7)
!728 = !DILocation(line: 0, scope: !338, inlinedAt: !729)
!729 = distinct !DILocation(line: 179, column: 15, scope: !678, inlinedAt: !725)
!730 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !729)
!731 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !729)
!732 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !729)
!733 = !DILocation(line: 0, scope: !338, inlinedAt: !734)
!734 = distinct !DILocation(line: 180, column: 15, scope: !678, inlinedAt: !725)
!735 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !734)
!736 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !734)
!737 = !DILocation(line: 0, scope: !338, inlinedAt: !738)
!738 = distinct !DILocation(line: 182, column: 15, scope: !678, inlinedAt: !725)
!739 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !738)
!740 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !738)
!741 = !DILocation(line: 184, column: 10, scope: !700, inlinedAt: !725)
!742 = !DILocation(line: 0, scope: !700, inlinedAt: !725)
!743 = !DILocation(line: 184, column: 7, scope: !678, inlinedAt: !725)
!744 = !DILocalVariable(name: "a", arg: 1, scope: !745, file: !547, line: 740, type: !310)
!745 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !547, file: !547, line: 740, type: !746, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !310, !310, !138, !138}
!748 = !{!744, !749, !750, !751, !752, !756, !757, !759}
!749 = !DILocalVariable(name: "b", arg: 2, scope: !745, file: !547, line: 740, type: !310)
!750 = !DILocalVariable(name: "c", arg: 3, scope: !745, file: !547, line: 740, type: !138)
!751 = !DILocalVariable(name: "s", arg: 4, scope: !745, file: !547, line: 740, type: !138)
!752 = !DILocalVariable(name: "t", scope: !753, file: !547, line: 749, type: !139)
!753 = distinct !DILexicalBlock(scope: !754, file: !547, line: 748, column: 5)
!754 = distinct !DILexicalBlock(scope: !755, file: !547, line: 747, column: 12)
!755 = distinct !DILexicalBlock(scope: !745, file: !547, line: 742, column: 7)
!756 = !DILocalVariable(name: "s1", scope: !753, file: !547, line: 750, type: !139)
!757 = !DILocalVariable(name: "t", scope: !758, file: !547, line: 756, type: !139)
!758 = distinct !DILexicalBlock(scope: !754, file: !547, line: 755, column: 5)
!759 = !DILocalVariable(name: "c1", scope: !758, file: !547, line: 757, type: !139)
!760 = !DILocation(line: 0, scope: !745, inlinedAt: !761)
!761 = distinct !DILocation(line: 188, column: 7, scope: !699, inlinedAt: !725)
!762 = !DILocation(line: 742, column: 7, scope: !745, inlinedAt: !761)
!763 = !DILocation(line: 747, column: 12, scope: !754, inlinedAt: !761)
!764 = !DILocation(line: 747, column: 23, scope: !754, inlinedAt: !761)
!765 = !DILocation(line: 747, column: 21, scope: !754, inlinedAt: !761)
!766 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !761)
!767 = !DILocation(line: 749, column: 18, scope: !753, inlinedAt: !761)
!768 = !DILocation(line: 749, column: 21, scope: !753, inlinedAt: !761)
!769 = !DILocation(line: 0, scope: !753, inlinedAt: !761)
!770 = !DILocation(line: 750, column: 37, scope: !753, inlinedAt: !761)
!771 = !DILocation(line: 750, column: 25, scope: !753, inlinedAt: !761)
!772 = !DILocation(line: 750, column: 23, scope: !753, inlinedAt: !761)
!773 = !DILocation(line: 752, column: 15, scope: !753, inlinedAt: !761)
!774 = !DILocation(line: 753, column: 5, scope: !753, inlinedAt: !761)
!775 = !DILocation(line: 756, column: 18, scope: !758, inlinedAt: !761)
!776 = !DILocation(line: 756, column: 21, scope: !758, inlinedAt: !761)
!777 = !DILocation(line: 0, scope: !758, inlinedAt: !761)
!778 = !DILocation(line: 757, column: 37, scope: !758, inlinedAt: !761)
!779 = !DILocation(line: 757, column: 25, scope: !758, inlinedAt: !761)
!780 = !DILocation(line: 757, column: 23, scope: !758, inlinedAt: !761)
!781 = !DILocation(line: 759, column: 15, scope: !758, inlinedAt: !761)
!782 = !DILocation(line: 0, scope: !755, inlinedAt: !761)
!783 = !DILocation(line: 192, column: 31, scope: !699, inlinedAt: !725)
!784 = !DILocation(line: 192, column: 40, scope: !699, inlinedAt: !725)
!785 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !786)
!786 = distinct !DILocation(line: 192, column: 7, scope: !699, inlinedAt: !725)
!787 = !DILocation(line: 0, scope: !293, inlinedAt: !786)
!788 = !DILocation(line: 193, column: 31, scope: !699, inlinedAt: !725)
!789 = !DILocation(line: 193, column: 40, scope: !699, inlinedAt: !725)
!790 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !791)
!791 = distinct !DILocation(line: 193, column: 7, scope: !699, inlinedAt: !725)
!792 = !DILocation(line: 0, scope: !293, inlinedAt: !791)
!793 = !DILocation(line: 0, scope: !293, inlinedAt: !794)
!794 = distinct !DILocation(line: 194, column: 7, scope: !699, inlinedAt: !725)
!795 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !794)
!796 = !DILocation(line: 198, column: 21, scope: !697, inlinedAt: !725)
!797 = !DILocation(line: 198, column: 7, scope: !698, inlinedAt: !725)
!798 = !DILocation(line: 0, scope: !465, inlinedAt: !799)
!799 = distinct !DILocation(line: 200, column: 24, scope: !696, inlinedAt: !725)
!800 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !799)
!801 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !799)
!802 = !DILocation(line: 0, scope: !696, inlinedAt: !725)
!803 = !DILocation(line: 0, scope: !465, inlinedAt: !804)
!804 = distinct !DILocation(line: 201, column: 24, scope: !696, inlinedAt: !725)
!805 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !804)
!806 = !DILocation(line: 202, column: 38, scope: !696, inlinedAt: !725)
!807 = !DILocation(line: 202, column: 48, scope: !696, inlinedAt: !725)
!808 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !809)
!809 = distinct !DILocation(line: 202, column: 11, scope: !696, inlinedAt: !725)
!810 = !DILocation(line: 0, scope: !307, inlinedAt: !809)
!811 = !DILocation(line: 203, column: 38, scope: !696, inlinedAt: !725)
!812 = !DILocation(line: 203, column: 48, scope: !696, inlinedAt: !725)
!813 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !814)
!814 = distinct !DILocation(line: 203, column: 11, scope: !696, inlinedAt: !725)
!815 = !DILocation(line: 0, scope: !307, inlinedAt: !814)
!816 = !DILocation(line: 198, column: 27, scope: !697, inlinedAt: !725)
!817 = distinct !{!817, !797, !818, !358}
!818 = !DILocation(line: 204, column: 9, scope: !698, inlinedAt: !725)
!819 = !DILocation(line: 208, column: 7, scope: !699, inlinedAt: !725)
!820 = !DILocation(line: 210, column: 7, scope: !699, inlinedAt: !725)
!821 = !DILocation(line: 212, column: 12, scope: !700, inlinedAt: !725)
!822 = !DILocation(line: 0, scope: !745, inlinedAt: !823)
!823 = distinct !DILocation(line: 216, column: 7, scope: !706, inlinedAt: !725)
!824 = !DILocation(line: 742, column: 9, scope: !755, inlinedAt: !823)
!825 = !DILocation(line: 742, column: 7, scope: !745, inlinedAt: !823)
!826 = !DILocation(line: 747, column: 12, scope: !754, inlinedAt: !823)
!827 = !DILocation(line: 747, column: 23, scope: !754, inlinedAt: !823)
!828 = !DILocation(line: 747, column: 21, scope: !754, inlinedAt: !823)
!829 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !823)
!830 = !DILocation(line: 749, column: 18, scope: !753, inlinedAt: !823)
!831 = !DILocation(line: 749, column: 21, scope: !753, inlinedAt: !823)
!832 = !DILocation(line: 0, scope: !753, inlinedAt: !823)
!833 = !DILocation(line: 750, column: 37, scope: !753, inlinedAt: !823)
!834 = !DILocation(line: 750, column: 25, scope: !753, inlinedAt: !823)
!835 = !DILocation(line: 750, column: 23, scope: !753, inlinedAt: !823)
!836 = !DILocation(line: 752, column: 15, scope: !753, inlinedAt: !823)
!837 = !DILocation(line: 753, column: 5, scope: !753, inlinedAt: !823)
!838 = !DILocation(line: 756, column: 18, scope: !758, inlinedAt: !823)
!839 = !DILocation(line: 756, column: 21, scope: !758, inlinedAt: !823)
!840 = !DILocation(line: 0, scope: !758, inlinedAt: !823)
!841 = !DILocation(line: 757, column: 37, scope: !758, inlinedAt: !823)
!842 = !DILocation(line: 757, column: 25, scope: !758, inlinedAt: !823)
!843 = !DILocation(line: 757, column: 23, scope: !758, inlinedAt: !823)
!844 = !DILocation(line: 759, column: 15, scope: !758, inlinedAt: !823)
!845 = !DILocation(line: 0, scope: !755, inlinedAt: !823)
!846 = !DILocation(line: 220, column: 32, scope: !706, inlinedAt: !725)
!847 = !DILocation(line: 220, column: 41, scope: !706, inlinedAt: !725)
!848 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !849)
!849 = distinct !DILocation(line: 220, column: 7, scope: !706, inlinedAt: !725)
!850 = !DILocation(line: 0, scope: !293, inlinedAt: !849)
!851 = !DILocation(line: 0, scope: !293, inlinedAt: !852)
!852 = distinct !DILocation(line: 221, column: 7, scope: !706, inlinedAt: !725)
!853 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !852)
!854 = !DILocation(line: 225, column: 21, scope: !704, inlinedAt: !725)
!855 = !DILocation(line: 225, column: 7, scope: !705, inlinedAt: !725)
!856 = !DILocation(line: 0, scope: !465, inlinedAt: !857)
!857 = distinct !DILocation(line: 227, column: 24, scope: !703, inlinedAt: !725)
!858 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !857)
!859 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !857)
!860 = !DILocation(line: 0, scope: !703, inlinedAt: !725)
!861 = !DILocation(line: 0, scope: !465, inlinedAt: !862)
!862 = distinct !DILocation(line: 228, column: 24, scope: !703, inlinedAt: !725)
!863 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !862)
!864 = !DILocation(line: 229, column: 38, scope: !703, inlinedAt: !725)
!865 = !DILocation(line: 229, column: 48, scope: !703, inlinedAt: !725)
!866 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !867)
!867 = distinct !DILocation(line: 229, column: 11, scope: !703, inlinedAt: !725)
!868 = !DILocation(line: 0, scope: !307, inlinedAt: !867)
!869 = !DILocation(line: 230, column: 38, scope: !703, inlinedAt: !725)
!870 = !DILocation(line: 230, column: 48, scope: !703, inlinedAt: !725)
!871 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !872)
!872 = distinct !DILocation(line: 230, column: 11, scope: !703, inlinedAt: !725)
!873 = !DILocation(line: 0, scope: !307, inlinedAt: !872)
!874 = !DILocation(line: 225, column: 27, scope: !704, inlinedAt: !725)
!875 = distinct !{!875, !855, !876, !358}
!876 = !DILocation(line: 231, column: 9, scope: !705, inlinedAt: !725)
!877 = !DILocalVariable(name: "d0_exp", scope: !878, file: !554, line: 135, type: !70)
!878 = distinct !DILexicalBlock(scope: !879, file: !554, line: 133, column: 5)
!879 = distinct !DILexicalBlock(scope: !880, file: !554, line: 130, column: 7)
!880 = distinct !DISubprogram(name: "create_schur", scope: !554, file: !554, line: 118, type: !881, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !883)
!881 = !DISubroutineType(types: !882)
!882 = !{null, !139, !139, !139, !138, !138}
!883 = !{!884, !885, !886, !887, !888, !889, !890, !877, !891, !892, !895}
!884 = !DILocalVariable(name: "d0", arg: 1, scope: !880, file: !554, line: 118, type: !139)
!885 = !DILocalVariable(name: "f0", arg: 2, scope: !880, file: !554, line: 118, type: !139)
!886 = !DILocalVariable(name: "d1", arg: 3, scope: !880, file: !554, line: 118, type: !139)
!887 = !DILocalVariable(name: "c", arg: 4, scope: !880, file: !554, line: 118, type: !138)
!888 = !DILocalVariable(name: "s", arg: 5, scope: !880, file: !554, line: 118, type: !138)
!889 = !DILocalVariable(name: "apq", scope: !880, file: !554, line: 120, type: !139)
!890 = !DILocalVariable(name: "scale", scope: !878, file: !554, line: 134, type: !139)
!891 = !DILocalVariable(name: "f0_exp", scope: !878, file: !554, line: 135, type: !70)
!892 = !DILocalVariable(name: "t", scope: !893, file: !554, line: 148, type: !139)
!893 = distinct !DILexicalBlock(scope: !894, file: !554, line: 147, column: 5)
!894 = distinct !DILexicalBlock(scope: !880, file: !554, line: 146, column: 7)
!895 = !DILocalVariable(name: "tau", scope: !893, file: !554, line: 149, type: !139)
!896 = !DILocation(line: 0, scope: !878, inlinedAt: !897)
!897 = distinct !DILocation(line: 239, column: 7, scope: !713, inlinedAt: !725)
!898 = !DILocation(line: 0, scope: !880, inlinedAt: !897)
!899 = !DILocation(line: 120, column: 20, scope: !880, inlinedAt: !897)
!900 = !DILocation(line: 120, column: 25, scope: !880, inlinedAt: !897)
!901 = !DILocation(line: 122, column: 15, scope: !902, inlinedAt: !897)
!902 = distinct !DILexicalBlock(scope: !880, file: !554, line: 122, column: 7)
!903 = !DILocation(line: 130, column: 7, scope: !879, inlinedAt: !897)
!904 = !DILocation(line: 130, column: 16, scope: !879, inlinedAt: !897)
!905 = !DILocation(line: 130, column: 35, scope: !879, inlinedAt: !897)
!906 = !DILocation(line: 131, column: 10, scope: !879, inlinedAt: !897)
!907 = !DILocation(line: 131, column: 19, scope: !879, inlinedAt: !897)
!908 = !DILocation(line: 131, column: 38, scope: !879, inlinedAt: !897)
!909 = !DILocation(line: 132, column: 10, scope: !879, inlinedAt: !897)
!910 = !DILocation(line: 132, column: 19, scope: !879, inlinedAt: !897)
!911 = !DILocation(line: 132, column: 38, scope: !879, inlinedAt: !897)
!912 = !DILocation(line: 135, column: 7, scope: !878, inlinedAt: !897)
!913 = !DILocation(line: 136, column: 7, scope: !878, inlinedAt: !897)
!914 = !DILocation(line: 137, column: 7, scope: !878, inlinedAt: !897)
!915 = !DILocation(line: 139, column: 28, scope: !878, inlinedAt: !897)
!916 = !{!248, !248, i64 0}
!917 = !DILocation(line: 139, column: 37, scope: !878, inlinedAt: !897)
!918 = !DILocation(line: 139, column: 35, scope: !878, inlinedAt: !897)
!919 = !DILocation(line: 139, column: 44, scope: !878, inlinedAt: !897)
!920 = !DILocation(line: 139, column: 15, scope: !878, inlinedAt: !897)
!921 = !DILocation(line: 140, column: 10, scope: !878, inlinedAt: !897)
!922 = !DILocation(line: 141, column: 10, scope: !878, inlinedAt: !897)
!923 = !DILocation(line: 142, column: 10, scope: !878, inlinedAt: !897)
!924 = !DILocation(line: 143, column: 17, scope: !878, inlinedAt: !897)
!925 = !DILocation(line: 143, column: 22, scope: !878, inlinedAt: !897)
!926 = !DILocation(line: 144, column: 5, scope: !879, inlinedAt: !897)
!927 = !DILocation(line: 144, column: 5, scope: !878, inlinedAt: !897)
!928 = !DILocation(line: 146, column: 11, scope: !894, inlinedAt: !897)
!929 = !DILocation(line: 146, column: 7, scope: !880, inlinedAt: !897)
!930 = !DILocation(line: 149, column: 23, scope: !893, inlinedAt: !897)
!931 = !DILocation(line: 149, column: 43, scope: !893, inlinedAt: !897)
!932 = !DILocation(line: 149, column: 38, scope: !893, inlinedAt: !897)
!933 = !DILocation(line: 149, column: 50, scope: !893, inlinedAt: !897)
!934 = !DILocation(line: 0, scope: !893, inlinedAt: !897)
!935 = !DILocation(line: 151, column: 15, scope: !936, inlinedAt: !897)
!936 = distinct !DILexicalBlock(scope: !893, file: !554, line: 151, column: 11)
!937 = !DILocation(line: 0, scope: !936, inlinedAt: !897)
!938 = !DILocation(line: 151, column: 11, scope: !893, inlinedAt: !897)
!939 = !DILocation(line: 160, column: 18, scope: !893, inlinedAt: !897)
!940 = !DILocation(line: 160, column: 16, scope: !893, inlinedAt: !897)
!941 = !DILocation(line: 161, column: 14, scope: !893, inlinedAt: !897)
!942 = !DILocation(line: 162, column: 5, scope: !893, inlinedAt: !897)
!943 = !DILocation(line: 243, column: 15, scope: !713, inlinedAt: !725)
!944 = !DILocation(line: 243, column: 24, scope: !713, inlinedAt: !725)
!945 = !DILocation(line: 244, column: 13, scope: !713, inlinedAt: !725)
!946 = !DILocation(line: 244, column: 17, scope: !713, inlinedAt: !725)
!947 = !DILocation(line: 246, column: 15, scope: !713, inlinedAt: !725)
!948 = !DILocation(line: 246, column: 24, scope: !713, inlinedAt: !725)
!949 = !DILocation(line: 247, column: 15, scope: !713, inlinedAt: !725)
!950 = !DILocation(line: 251, column: 21, scope: !711, inlinedAt: !725)
!951 = !DILocation(line: 251, column: 7, scope: !712, inlinedAt: !725)
!952 = !DILocation(line: 0, scope: !465, inlinedAt: !953)
!953 = distinct !DILocation(line: 253, column: 24, scope: !710, inlinedAt: !725)
!954 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !953)
!955 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !953)
!956 = !DILocation(line: 0, scope: !710, inlinedAt: !725)
!957 = !DILocation(line: 0, scope: !465, inlinedAt: !958)
!958 = distinct !DILocation(line: 254, column: 24, scope: !710, inlinedAt: !725)
!959 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !958)
!960 = !DILocation(line: 255, column: 38, scope: !710, inlinedAt: !725)
!961 = !DILocation(line: 255, column: 48, scope: !710, inlinedAt: !725)
!962 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !963)
!963 = distinct !DILocation(line: 255, column: 11, scope: !710, inlinedAt: !725)
!964 = !DILocation(line: 0, scope: !307, inlinedAt: !963)
!965 = !DILocation(line: 256, column: 38, scope: !710, inlinedAt: !725)
!966 = !DILocation(line: 256, column: 48, scope: !710, inlinedAt: !725)
!967 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !968)
!968 = distinct !DILocation(line: 256, column: 11, scope: !710, inlinedAt: !725)
!969 = !DILocation(line: 0, scope: !307, inlinedAt: !968)
!970 = !DILocation(line: 251, column: 27, scope: !711, inlinedAt: !725)
!971 = distinct !{!971, !951, !972, !358}
!972 = !DILocation(line: 257, column: 9, scope: !712, inlinedAt: !725)
!973 = !DILocation(line: 262, column: 11, scope: !717, inlinedAt: !725)
!974 = !DILocation(line: 262, column: 29, scope: !717, inlinedAt: !725)
!975 = !DILocation(line: 262, column: 27, scope: !717, inlinedAt: !725)
!976 = !DILocation(line: 262, column: 11, scope: !713, inlinedAt: !725)
!977 = !DILocation(line: 0, scope: !716, inlinedAt: !725)
!978 = !DILocation(line: 273, column: 11, scope: !716, inlinedAt: !725)
!979 = !DILocation(line: 274, column: 9, scope: !716, inlinedAt: !725)
!980 = !DILocation(line: 0, scope: !713, inlinedAt: !725)
!981 = !DILocation(line: 0, scope: !745, inlinedAt: !982)
!982 = distinct !DILocation(line: 276, column: 7, scope: !713, inlinedAt: !725)
!983 = !DILocation(line: 742, column: 9, scope: !755, inlinedAt: !982)
!984 = !DILocation(line: 742, column: 7, scope: !745, inlinedAt: !982)
!985 = !DILocation(line: 747, column: 12, scope: !754, inlinedAt: !982)
!986 = !DILocation(line: 747, column: 23, scope: !754, inlinedAt: !982)
!987 = !DILocation(line: 747, column: 21, scope: !754, inlinedAt: !982)
!988 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !982)
!989 = !DILocation(line: 749, column: 18, scope: !753, inlinedAt: !982)
!990 = !DILocation(line: 749, column: 21, scope: !753, inlinedAt: !982)
!991 = !DILocation(line: 0, scope: !753, inlinedAt: !982)
!992 = !DILocation(line: 750, column: 37, scope: !753, inlinedAt: !982)
!993 = !DILocation(line: 750, column: 25, scope: !753, inlinedAt: !982)
!994 = !DILocation(line: 750, column: 23, scope: !753, inlinedAt: !982)
!995 = !DILocation(line: 752, column: 15, scope: !753, inlinedAt: !982)
!996 = !DILocation(line: 753, column: 5, scope: !753, inlinedAt: !982)
!997 = !DILocation(line: 756, column: 18, scope: !758, inlinedAt: !982)
!998 = !DILocation(line: 756, column: 21, scope: !758, inlinedAt: !982)
!999 = !DILocation(line: 0, scope: !758, inlinedAt: !982)
!1000 = !DILocation(line: 757, column: 37, scope: !758, inlinedAt: !982)
!1001 = !DILocation(line: 757, column: 25, scope: !758, inlinedAt: !982)
!1002 = !DILocation(line: 757, column: 23, scope: !758, inlinedAt: !982)
!1003 = !DILocation(line: 759, column: 15, scope: !758, inlinedAt: !982)
!1004 = !DILocation(line: 0, scope: !755, inlinedAt: !982)
!1005 = !DILocation(line: 280, column: 31, scope: !713, inlinedAt: !725)
!1006 = !DILocation(line: 280, column: 41, scope: !713, inlinedAt: !725)
!1007 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 280, column: 7, scope: !713, inlinedAt: !725)
!1009 = !DILocation(line: 0, scope: !293, inlinedAt: !1008)
!1010 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1008)
!1011 = !DILocation(line: 281, column: 31, scope: !713, inlinedAt: !725)
!1012 = !DILocation(line: 281, column: 41, scope: !713, inlinedAt: !725)
!1013 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 281, column: 7, scope: !713, inlinedAt: !725)
!1015 = !DILocation(line: 0, scope: !293, inlinedAt: !1014)
!1016 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1014)
!1017 = !DILocation(line: 282, column: 31, scope: !713, inlinedAt: !725)
!1018 = !DILocation(line: 282, column: 41, scope: !713, inlinedAt: !725)
!1019 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 282, column: 7, scope: !713, inlinedAt: !725)
!1021 = !DILocation(line: 0, scope: !293, inlinedAt: !1020)
!1022 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1020)
!1023 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1020)
!1024 = !DILocation(line: 286, column: 21, scope: !721, inlinedAt: !725)
!1025 = !DILocation(line: 286, column: 7, scope: !722, inlinedAt: !725)
!1026 = !DILocation(line: 0, scope: !465, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 288, column: 24, scope: !720, inlinedAt: !725)
!1028 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1027)
!1029 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1027)
!1030 = !DILocation(line: 0, scope: !720, inlinedAt: !725)
!1031 = !DILocation(line: 0, scope: !465, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 289, column: 24, scope: !720, inlinedAt: !725)
!1033 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1032)
!1034 = !DILocation(line: 290, column: 38, scope: !720, inlinedAt: !725)
!1035 = !DILocation(line: 290, column: 48, scope: !720, inlinedAt: !725)
!1036 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 290, column: 11, scope: !720, inlinedAt: !725)
!1038 = !DILocation(line: 0, scope: !307, inlinedAt: !1037)
!1039 = !DILocation(line: 291, column: 38, scope: !720, inlinedAt: !725)
!1040 = !DILocation(line: 291, column: 48, scope: !720, inlinedAt: !725)
!1041 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 291, column: 11, scope: !720, inlinedAt: !725)
!1043 = !DILocation(line: 0, scope: !307, inlinedAt: !1042)
!1044 = !DILocation(line: 286, column: 27, scope: !721, inlinedAt: !725)
!1045 = distinct !{!1045, !1025, !1046, !358}
!1046 = !DILocation(line: 292, column: 9, scope: !722, inlinedAt: !725)
!1047 = !DILocation(line: 0, scope: !338, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 442, column: 20, scope: !631)
!1049 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1048)
!1050 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1048)
!1051 = !DILocation(line: 0, scope: !631)
!1052 = !DILocation(line: 444, column: 15, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !631, file: !554, line: 444, column: 11)
!1054 = !DILocation(line: 444, column: 11, scope: !631)
!1055 = !DILocalVariable(name: "d", arg: 1, scope: !1056, file: !554, line: 300, type: !149)
!1056 = distinct !DISubprogram(name: "chase_out_intermediate_zero", scope: !554, file: !554, line: 300, type: !1057, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !149, !149, !126, !132}
!1059 = !{!1055, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1075, !1079, !1080}
!1060 = !DILocalVariable(name: "f", arg: 2, scope: !1056, file: !554, line: 300, type: !149)
!1061 = !DILocalVariable(name: "U", arg: 3, scope: !1056, file: !554, line: 300, type: !126)
!1062 = !DILocalVariable(name: "k0", arg: 4, scope: !1056, file: !554, line: 300, type: !132)
!1063 = !DILocalVariable(name: "M", scope: !1056, file: !554, line: 303, type: !170)
!1064 = !DILocalVariable(name: "n", scope: !1056, file: !554, line: 305, type: !170)
!1065 = !DILocalVariable(name: "c", scope: !1056, file: !554, line: 306, type: !139)
!1066 = !DILocalVariable(name: "s", scope: !1056, file: !554, line: 306, type: !139)
!1067 = !DILocalVariable(name: "x", scope: !1056, file: !554, line: 307, type: !139)
!1068 = !DILocalVariable(name: "y", scope: !1056, file: !554, line: 307, type: !139)
!1069 = !DILocalVariable(name: "k", scope: !1056, file: !554, line: 308, type: !132)
!1070 = !DILocalVariable(name: "i", scope: !1071, file: !554, line: 327, type: !132)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !554, line: 326, column: 7)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !554, line: 314, column: 5)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !554, line: 313, column: 3)
!1074 = distinct !DILexicalBlock(scope: !1056, file: !554, line: 313, column: 3)
!1075 = !DILocalVariable(name: "Uip", scope: !1076, file: !554, line: 331, type: !139)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !554, line: 330, column: 11)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !554, line: 329, column: 9)
!1078 = distinct !DILexicalBlock(scope: !1071, file: !554, line: 329, column: 9)
!1079 = !DILocalVariable(name: "Uiq", scope: !1076, file: !554, line: 332, type: !139)
!1080 = !DILocalVariable(name: "z", scope: !1081, file: !554, line: 348, type: !139)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !554, line: 347, column: 9)
!1082 = distinct !DILexicalBlock(scope: !1072, file: !554, line: 346, column: 11)
!1083 = !DILocation(line: 0, scope: !1056, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 446, column: 11, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1053, file: !554, line: 445, column: 9)
!1086 = !DILocation(line: 0, scope: !338, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 310, column: 7, scope: !1056, inlinedAt: !1084)
!1088 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1087)
!1089 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1087)
!1090 = !DILocation(line: 0, scope: !338, inlinedAt: !1091)
!1091 = distinct !DILocation(line: 311, column: 7, scope: !1056, inlinedAt: !1084)
!1092 = !DILocation(line: 311, column: 28, scope: !1056, inlinedAt: !1084)
!1093 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1091)
!1094 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1091)
!1095 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1087)
!1096 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1087)
!1097 = !DILocation(line: 313, column: 3, scope: !1074, inlinedAt: !1084)
!1098 = !DILocation(line: 0, scope: !745, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 315, column: 7, scope: !1072, inlinedAt: !1084)
!1100 = !DILocation(line: 742, column: 9, scope: !755, inlinedAt: !1099)
!1101 = !DILocation(line: 742, column: 7, scope: !745, inlinedAt: !1099)
!1102 = !DILocation(line: 315, column: 29, scope: !1072, inlinedAt: !1084)
!1103 = !DILocation(line: 747, column: 12, scope: !754, inlinedAt: !1099)
!1104 = !DILocation(line: 747, column: 23, scope: !754, inlinedAt: !1099)
!1105 = !DILocation(line: 747, column: 21, scope: !754, inlinedAt: !1099)
!1106 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !1099)
!1107 = !DILocation(line: 749, column: 21, scope: !753, inlinedAt: !1099)
!1108 = !DILocation(line: 0, scope: !753, inlinedAt: !1099)
!1109 = !DILocation(line: 750, column: 37, scope: !753, inlinedAt: !1099)
!1110 = !DILocation(line: 750, column: 25, scope: !753, inlinedAt: !1099)
!1111 = !DILocation(line: 750, column: 23, scope: !753, inlinedAt: !1099)
!1112 = !DILocation(line: 752, column: 15, scope: !753, inlinedAt: !1099)
!1113 = !DILocation(line: 753, column: 5, scope: !753, inlinedAt: !1099)
!1114 = !DILocation(line: 756, column: 21, scope: !758, inlinedAt: !1099)
!1115 = !DILocation(line: 0, scope: !758, inlinedAt: !1099)
!1116 = !DILocation(line: 757, column: 37, scope: !758, inlinedAt: !1099)
!1117 = !DILocation(line: 757, column: 25, scope: !758, inlinedAt: !1099)
!1118 = !DILocation(line: 757, column: 23, scope: !758, inlinedAt: !1099)
!1119 = !DILocation(line: 759, column: 15, scope: !758, inlinedAt: !1099)
!1120 = !DILocation(line: 0, scope: !755, inlinedAt: !1099)
!1121 = !DILocation(line: 0, scope: !1071, inlinedAt: !1084)
!1122 = !DILocation(line: 329, column: 9, scope: !1078, inlinedAt: !1084)
!1123 = !DILocation(line: 0, scope: !465, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 331, column: 26, scope: !1076, inlinedAt: !1084)
!1125 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1124)
!1126 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1124)
!1127 = !DILocation(line: 0, scope: !1076, inlinedAt: !1084)
!1128 = !DILocation(line: 0, scope: !465, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 332, column: 26, scope: !1076, inlinedAt: !1084)
!1130 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1129)
!1131 = !DILocation(line: 333, column: 41, scope: !1076, inlinedAt: !1084)
!1132 = !DILocation(line: 333, column: 51, scope: !1076, inlinedAt: !1084)
!1133 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 333, column: 13, scope: !1076, inlinedAt: !1084)
!1135 = !DILocation(line: 0, scope: !307, inlinedAt: !1134)
!1136 = !DILocation(line: 334, column: 44, scope: !1076, inlinedAt: !1084)
!1137 = !DILocation(line: 334, column: 54, scope: !1076, inlinedAt: !1084)
!1138 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 334, column: 13, scope: !1076, inlinedAt: !1084)
!1140 = !DILocation(line: 0, scope: !307, inlinedAt: !1139)
!1141 = !DILocation(line: 329, column: 29, scope: !1077, inlinedAt: !1084)
!1142 = distinct !{!1142, !1122, !1143, !358}
!1143 = !DILocation(line: 335, column: 11, scope: !1078, inlinedAt: !1084)
!1144 = !DILocation(line: 341, column: 28, scope: !1072, inlinedAt: !1084)
!1145 = !DILocation(line: 341, column: 35, scope: !1072, inlinedAt: !1084)
!1146 = !DILocation(line: 341, column: 43, scope: !1072, inlinedAt: !1084)
!1147 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 341, column: 7, scope: !1072, inlinedAt: !1084)
!1149 = !DILocation(line: 0, scope: !293, inlinedAt: !1148)
!1150 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1148)
!1151 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1148)
!1152 = !DILocation(line: 343, column: 13, scope: !1153, inlinedAt: !1084)
!1153 = distinct !DILexicalBlock(scope: !1072, file: !554, line: 343, column: 11)
!1154 = !DILocation(line: 343, column: 11, scope: !1072, inlinedAt: !1084)
!1155 = !DILocation(line: 344, column: 33, scope: !1153, inlinedAt: !1084)
!1156 = !DILocation(line: 344, column: 41, scope: !1153, inlinedAt: !1084)
!1157 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 344, column: 9, scope: !1153, inlinedAt: !1084)
!1159 = !DILocation(line: 0, scope: !293, inlinedAt: !1158)
!1160 = !DILocation(line: 344, column: 9, scope: !1153, inlinedAt: !1084)
!1161 = !DILocation(line: 346, column: 13, scope: !1082, inlinedAt: !1084)
!1162 = !DILocation(line: 346, column: 11, scope: !1072, inlinedAt: !1084)
!1163 = !DILocation(line: 0, scope: !338, inlinedAt: !1164)
!1164 = distinct !DILocation(line: 348, column: 22, scope: !1081, inlinedAt: !1084)
!1165 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1164)
!1166 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1164)
!1167 = !DILocation(line: 0, scope: !1081, inlinedAt: !1084)
!1168 = !DILocation(line: 349, column: 39, scope: !1081, inlinedAt: !1084)
!1169 = !DILocation(line: 0, scope: !293, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 349, column: 11, scope: !1081, inlinedAt: !1084)
!1171 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1170)
!1172 = !DILocation(line: 351, column: 15, scope: !1081, inlinedAt: !1084)
!1173 = !DILocation(line: 351, column: 18, scope: !1081, inlinedAt: !1084)
!1174 = !DILocation(line: 352, column: 36, scope: !1081, inlinedAt: !1084)
!1175 = !DILocation(line: 0, scope: !338, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 352, column: 15, scope: !1081, inlinedAt: !1084)
!1177 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1176)
!1178 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1176)
!1179 = !DILocation(line: 353, column: 9, scope: !1081, inlinedAt: !1084)
!1180 = !DILocation(line: 313, column: 18, scope: !1073, inlinedAt: !1084)
!1181 = distinct !{!1181, !1097, !1182, !358}
!1182 = !DILocation(line: 354, column: 5, scope: !1074, inlinedAt: !1084)
!1183 = !DILocation(line: 440, column: 27, scope: !632)
!1184 = !DILocation(line: 440, column: 17, scope: !632)
!1185 = distinct !{!1185, !676, !1186, !358}
!1186 = !DILocation(line: 449, column: 5, scope: !633)
!1187 = !DILocation(line: 0, scope: !338, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 454, column: 20, scope: !635)
!1189 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1188)
!1190 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1188)
!1191 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1188)
!1192 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1188)
!1193 = !DILocation(line: 0, scope: !635)
!1194 = !DILocation(line: 456, column: 15, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !635, file: !554, line: 456, column: 9)
!1196 = !DILocation(line: 456, column: 9, scope: !635)
!1197 = !DILocalVariable(name: "d", arg: 1, scope: !1198, file: !554, line: 358, type: !149)
!1198 = distinct !DISubprogram(name: "chase_out_trailing_zero", scope: !554, file: !554, line: 358, type: !1199, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !149, !149, !126}
!1201 = !{!1197, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1216, !1220, !1221}
!1202 = !DILocalVariable(name: "f", arg: 2, scope: !1198, file: !554, line: 358, type: !149)
!1203 = !DILocalVariable(name: "V", arg: 3, scope: !1198, file: !554, line: 358, type: !126)
!1204 = !DILocalVariable(name: "N", scope: !1198, file: !554, line: 361, type: !170)
!1205 = !DILocalVariable(name: "n", scope: !1198, file: !554, line: 363, type: !170)
!1206 = !DILocalVariable(name: "c", scope: !1198, file: !554, line: 364, type: !139)
!1207 = !DILocalVariable(name: "s", scope: !1198, file: !554, line: 364, type: !139)
!1208 = !DILocalVariable(name: "x", scope: !1198, file: !554, line: 365, type: !139)
!1209 = !DILocalVariable(name: "y", scope: !1198, file: !554, line: 365, type: !139)
!1210 = !DILocalVariable(name: "k", scope: !1198, file: !554, line: 366, type: !132)
!1211 = !DILocalVariable(name: "i", scope: !1212, file: !554, line: 385, type: !132)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !554, line: 384, column: 7)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !554, line: 372, column: 5)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !554, line: 371, column: 3)
!1215 = distinct !DILexicalBlock(scope: !1198, file: !554, line: 371, column: 3)
!1216 = !DILocalVariable(name: "Vip", scope: !1217, file: !554, line: 389, type: !139)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !554, line: 388, column: 11)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !554, line: 387, column: 9)
!1219 = distinct !DILexicalBlock(scope: !1212, file: !554, line: 387, column: 9)
!1220 = !DILocalVariable(name: "Viq", scope: !1217, file: !554, line: 390, type: !139)
!1221 = !DILocalVariable(name: "z", scope: !1222, file: !554, line: 406, type: !139)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !554, line: 405, column: 9)
!1223 = distinct !DILexicalBlock(scope: !1213, file: !554, line: 404, column: 11)
!1224 = !DILocation(line: 0, scope: !1198, inlinedAt: !1225)
!1225 = distinct !DILocation(line: 458, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1195, file: !554, line: 457, column: 7)
!1227 = !DILocation(line: 368, column: 28, scope: !1198, inlinedAt: !1225)
!1228 = !DILocation(line: 0, scope: !338, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 368, column: 7, scope: !1198, inlinedAt: !1225)
!1230 = !DILocation(line: 0, scope: !338, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 369, column: 7, scope: !1198, inlinedAt: !1225)
!1232 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1231)
!1233 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1231)
!1234 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1231)
!1235 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1229)
!1236 = !DILocation(line: 371, column: 3, scope: !1215, inlinedAt: !1225)
!1237 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 0, scope: !1198, inlinedAt: !1225)
!1239 = !DILocation(line: 0, scope: !745, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 373, column: 7, scope: !1213, inlinedAt: !1225)
!1241 = !DILocation(line: 742, column: 9, scope: !755, inlinedAt: !1240)
!1242 = !DILocation(line: 742, column: 7, scope: !745, inlinedAt: !1240)
!1243 = !DILocation(line: 747, column: 12, scope: !754, inlinedAt: !1240)
!1244 = !DILocation(line: 747, column: 23, scope: !754, inlinedAt: !1240)
!1245 = !DILocation(line: 747, column: 21, scope: !754, inlinedAt: !1240)
!1246 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !1240)
!1247 = !DILocation(line: 749, column: 18, scope: !753, inlinedAt: !1240)
!1248 = !DILocation(line: 749, column: 21, scope: !753, inlinedAt: !1240)
!1249 = !DILocation(line: 0, scope: !753, inlinedAt: !1240)
!1250 = !DILocation(line: 750, column: 37, scope: !753, inlinedAt: !1240)
!1251 = !DILocation(line: 750, column: 25, scope: !753, inlinedAt: !1240)
!1252 = !DILocation(line: 750, column: 23, scope: !753, inlinedAt: !1240)
!1253 = !DILocation(line: 752, column: 15, scope: !753, inlinedAt: !1240)
!1254 = !DILocation(line: 753, column: 5, scope: !753, inlinedAt: !1240)
!1255 = !DILocation(line: 756, column: 18, scope: !758, inlinedAt: !1240)
!1256 = !DILocation(line: 756, column: 21, scope: !758, inlinedAt: !1240)
!1257 = !DILocation(line: 0, scope: !758, inlinedAt: !1240)
!1258 = !DILocation(line: 757, column: 37, scope: !758, inlinedAt: !1240)
!1259 = !DILocation(line: 757, column: 25, scope: !758, inlinedAt: !1240)
!1260 = !DILocation(line: 757, column: 23, scope: !758, inlinedAt: !1240)
!1261 = !DILocation(line: 759, column: 15, scope: !758, inlinedAt: !1240)
!1262 = !DILocation(line: 0, scope: !755, inlinedAt: !1240)
!1263 = !DILocation(line: 0, scope: !1212, inlinedAt: !1225)
!1264 = !DILocation(line: 387, column: 9, scope: !1219, inlinedAt: !1225)
!1265 = !DILocation(line: 0, scope: !465, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 389, column: 26, scope: !1217, inlinedAt: !1225)
!1267 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1266)
!1268 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1266)
!1269 = !DILocation(line: 0, scope: !1217, inlinedAt: !1225)
!1270 = !DILocation(line: 0, scope: !465, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 390, column: 26, scope: !1217, inlinedAt: !1225)
!1272 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1271)
!1273 = !DILocation(line: 391, column: 40, scope: !1217, inlinedAt: !1225)
!1274 = !DILocation(line: 391, column: 50, scope: !1217, inlinedAt: !1225)
!1275 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 391, column: 13, scope: !1217, inlinedAt: !1225)
!1277 = !DILocation(line: 0, scope: !307, inlinedAt: !1276)
!1278 = !DILocation(line: 392, column: 44, scope: !1217, inlinedAt: !1225)
!1279 = !DILocation(line: 392, column: 54, scope: !1217, inlinedAt: !1225)
!1280 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 392, column: 13, scope: !1217, inlinedAt: !1225)
!1282 = !DILocation(line: 0, scope: !307, inlinedAt: !1281)
!1283 = !DILocation(line: 387, column: 29, scope: !1218, inlinedAt: !1225)
!1284 = !DILocation(line: 387, column: 23, scope: !1218, inlinedAt: !1225)
!1285 = distinct !{!1285, !1264, !1286, !358}
!1286 = !DILocation(line: 393, column: 11, scope: !1219, inlinedAt: !1225)
!1287 = !DILocation(line: 399, column: 31, scope: !1213, inlinedAt: !1225)
!1288 = !DILocation(line: 399, column: 39, scope: !1213, inlinedAt: !1225)
!1289 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 399, column: 7, scope: !1213, inlinedAt: !1225)
!1291 = !DILocation(line: 0, scope: !293, inlinedAt: !1290)
!1292 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1290)
!1293 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1290)
!1294 = !DILocation(line: 401, column: 13, scope: !1295, inlinedAt: !1225)
!1295 = distinct !DILexicalBlock(scope: !1213, file: !554, line: 401, column: 11)
!1296 = !DILocation(line: 401, column: 11, scope: !1213, inlinedAt: !1225)
!1297 = !DILocation(line: 402, column: 33, scope: !1295, inlinedAt: !1225)
!1298 = !DILocation(line: 402, column: 41, scope: !1295, inlinedAt: !1225)
!1299 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1300)
!1300 = distinct !DILocation(line: 402, column: 9, scope: !1295, inlinedAt: !1225)
!1301 = !DILocation(line: 0, scope: !293, inlinedAt: !1300)
!1302 = !DILocation(line: 402, column: 9, scope: !1295, inlinedAt: !1225)
!1303 = !DILocation(line: 404, column: 13, scope: !1223, inlinedAt: !1225)
!1304 = !DILocation(line: 404, column: 11, scope: !1213, inlinedAt: !1225)
!1305 = !DILocation(line: 406, column: 43, scope: !1222, inlinedAt: !1225)
!1306 = !DILocation(line: 0, scope: !338, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 406, column: 22, scope: !1222, inlinedAt: !1225)
!1308 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1307)
!1309 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1307)
!1310 = !DILocation(line: 0, scope: !1222, inlinedAt: !1225)
!1311 = !DILocation(line: 407, column: 39, scope: !1222, inlinedAt: !1225)
!1312 = !DILocation(line: 0, scope: !293, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 407, column: 11, scope: !1222, inlinedAt: !1225)
!1314 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1313)
!1315 = !DILocation(line: 0, scope: !338, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 409, column: 15, scope: !1222, inlinedAt: !1225)
!1317 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1316)
!1318 = !DILocation(line: 410, column: 17, scope: !1222, inlinedAt: !1225)
!1319 = !DILocation(line: 371, column: 20, scope: !1214, inlinedAt: !1225)
!1320 = distinct !{!1320, !1236, !1321, !358}
!1321 = !DILocation(line: 412, column: 5, scope: !1215, inlinedAt: !1225)
!1322 = !DILocation(line: 0, scope: !338, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 467, column: 17, scope: !637)
!1324 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1323)
!1325 = !DILocation(line: 0, scope: !637)
!1326 = !DILocation(line: 0, scope: !338, inlinedAt: !1327)
!1327 = distinct !DILocation(line: 468, column: 17, scope: !637)
!1328 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1327)
!1329 = !DILocation(line: 0, scope: !338, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 470, column: 17, scope: !637)
!1331 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1330)
!1332 = !DILocalVariable(name: "d", arg: 1, scope: !1333, file: !554, line: 44, type: !341)
!1333 = distinct !DISubprogram(name: "trailing_eigenvalue", scope: !554, file: !554, line: 44, type: !1334, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1336)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!139, !341, !341}
!1336 = !{!1332, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1337 = !DILocalVariable(name: "f", arg: 2, scope: !1333, file: !554, line: 44, type: !341)
!1338 = !DILocalVariable(name: "n", scope: !1333, file: !554, line: 46, type: !170)
!1339 = !DILocalVariable(name: "da", scope: !1333, file: !554, line: 48, type: !139)
!1340 = !DILocalVariable(name: "db", scope: !1333, file: !554, line: 49, type: !139)
!1341 = !DILocalVariable(name: "fa", scope: !1333, file: !554, line: 50, type: !139)
!1342 = !DILocalVariable(name: "fb", scope: !1333, file: !554, line: 51, type: !139)
!1343 = !DILocalVariable(name: "mu", scope: !1333, file: !554, line: 53, type: !139)
!1344 = !DILocalVariable(name: "ta", scope: !1345, file: !554, line: 87, type: !139)
!1345 = distinct !DILexicalBlock(scope: !1333, file: !554, line: 77, column: 3)
!1346 = !DILocalVariable(name: "tb", scope: !1345, file: !554, line: 88, type: !139)
!1347 = !DILocalVariable(name: "tab", scope: !1345, file: !554, line: 89, type: !139)
!1348 = !DILocalVariable(name: "dt", scope: !1345, file: !554, line: 91, type: !139)
!1349 = !DILocalVariable(name: "S", scope: !1345, file: !554, line: 93, type: !139)
!1350 = !DILocalVariable(name: "da2", scope: !1345, file: !554, line: 94, type: !139)
!1351 = !DILocalVariable(name: "db2", scope: !1345, file: !554, line: 94, type: !139)
!1352 = !DILocalVariable(name: "fa2", scope: !1345, file: !554, line: 95, type: !139)
!1353 = !DILocalVariable(name: "fb2", scope: !1345, file: !554, line: 95, type: !139)
!1354 = !DILocalVariable(name: "P", scope: !1345, file: !554, line: 96, type: !139)
!1355 = !DILocalVariable(name: "D", scope: !1345, file: !554, line: 97, type: !139)
!1356 = !DILocalVariable(name: "r1", scope: !1345, file: !554, line: 98, type: !139)
!1357 = !DILocation(line: 0, scope: !1333, inlinedAt: !1358)
!1358 = distinct !DILocation(line: 473, column: 19, scope: !641)
!1359 = !DILocation(line: 48, column: 36, scope: !1333, inlinedAt: !1358)
!1360 = !DILocation(line: 0, scope: !338, inlinedAt: !1361)
!1361 = distinct !DILocation(line: 48, column: 15, scope: !1333, inlinedAt: !1358)
!1362 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1361)
!1363 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1361)
!1364 = !DILocation(line: 0, scope: !338, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 49, column: 15, scope: !1333, inlinedAt: !1358)
!1366 = !DILocation(line: 50, column: 18, scope: !1333, inlinedAt: !1358)
!1367 = !DILocation(line: 50, column: 15, scope: !1333, inlinedAt: !1358)
!1368 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 51, column: 15, scope: !1333, inlinedAt: !1358)
!1370 = !DILocation(line: 50, column: 46, scope: !1333, inlinedAt: !1358)
!1371 = !DILocation(line: 0, scope: !338, inlinedAt: !1372)
!1372 = distinct !DILocation(line: 50, column: 25, scope: !1333, inlinedAt: !1358)
!1373 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1372)
!1374 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1372)
!1375 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1372)
!1376 = !DILocation(line: 0, scope: !338, inlinedAt: !1369)
!1377 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1369)
!1378 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1369)
!1379 = !DILocation(line: 87, column: 20, scope: !1345, inlinedAt: !1358)
!1380 = !DILocation(line: 87, column: 30, scope: !1345, inlinedAt: !1358)
!1381 = !DILocation(line: 88, column: 20, scope: !1345, inlinedAt: !1358)
!1382 = !DILocation(line: 0, scope: !1345, inlinedAt: !1358)
!1383 = !DILocation(line: 88, column: 30, scope: !1345, inlinedAt: !1358)
!1384 = !DILocation(line: 89, column: 21, scope: !1345, inlinedAt: !1358)
!1385 = !DILocation(line: 91, column: 27, scope: !1345, inlinedAt: !1358)
!1386 = !DILocation(line: 97, column: 16, scope: !1345, inlinedAt: !1358)
!1387 = !DILocation(line: 98, column: 18, scope: !1345, inlinedAt: !1358)
!1388 = !DILocation(line: 100, column: 12, scope: !1389, inlinedAt: !1358)
!1389 = distinct !DILexicalBlock(scope: !1345, file: !554, line: 100, column: 9)
!1390 = !DILocation(line: 100, column: 9, scope: !1345, inlinedAt: !1358)
!1391 = !DILocation(line: 96, column: 21, scope: !1345, inlinedAt: !1358)
!1392 = !DILocation(line: 96, column: 35, scope: !1345, inlinedAt: !1358)
!1393 = !DILocation(line: 96, column: 49, scope: !1345, inlinedAt: !1358)
!1394 = !DILocation(line: 103, column: 18, scope: !1395, inlinedAt: !1358)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !554, line: 101, column: 7)
!1396 = !DILocation(line: 103, column: 14, scope: !1395, inlinedAt: !1358)
!1397 = !DILocation(line: 104, column: 7, scope: !1395, inlinedAt: !1358)
!1398 = !DILocation(line: 0, scope: !1389, inlinedAt: !1358)
!1399 = !DILocation(line: 0, scope: !641)
!1400 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 602, column: 3, scope: !609)
!1402 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1401)
!1403 = !DILocation(line: 476, column: 14, scope: !641)
!1404 = !DILocation(line: 475, column: 14, scope: !641)
!1405 = !DILocation(line: 490, column: 3, scope: !645)
!1406 = !DILocation(line: 0, scope: !745, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 493, column: 7, scope: !643)
!1408 = !DILocation(line: 742, column: 9, scope: !755, inlinedAt: !1407)
!1409 = !DILocation(line: 742, column: 7, scope: !745, inlinedAt: !1407)
!1410 = !DILocation(line: 747, column: 12, scope: !754, inlinedAt: !1407)
!1411 = !DILocation(line: 747, column: 23, scope: !754, inlinedAt: !1407)
!1412 = !DILocation(line: 747, column: 21, scope: !754, inlinedAt: !1407)
!1413 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !1407)
!1414 = !DILocation(line: 749, column: 18, scope: !753, inlinedAt: !1407)
!1415 = !DILocation(line: 749, column: 21, scope: !753, inlinedAt: !1407)
!1416 = !DILocation(line: 0, scope: !753, inlinedAt: !1407)
!1417 = !DILocation(line: 750, column: 37, scope: !753, inlinedAt: !1407)
!1418 = !DILocation(line: 750, column: 25, scope: !753, inlinedAt: !1407)
!1419 = !DILocation(line: 750, column: 23, scope: !753, inlinedAt: !1407)
!1420 = !DILocation(line: 0, scope: !643)
!1421 = !DILocation(line: 752, column: 15, scope: !753, inlinedAt: !1407)
!1422 = !DILocation(line: 753, column: 5, scope: !753, inlinedAt: !1407)
!1423 = !DILocation(line: 756, column: 18, scope: !758, inlinedAt: !1407)
!1424 = !DILocation(line: 756, column: 21, scope: !758, inlinedAt: !1407)
!1425 = !DILocation(line: 0, scope: !758, inlinedAt: !1407)
!1426 = !DILocation(line: 757, column: 37, scope: !758, inlinedAt: !1407)
!1427 = !DILocation(line: 757, column: 25, scope: !758, inlinedAt: !1407)
!1428 = !DILocation(line: 757, column: 23, scope: !758, inlinedAt: !1407)
!1429 = !DILocation(line: 759, column: 15, scope: !758, inlinedAt: !1407)
!1430 = !DILocation(line: 0, scope: !755, inlinedAt: !1407)
!1431 = !DILocation(line: 504, column: 7, scope: !650)
!1432 = !DILocation(line: 0, scope: !465, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 506, column: 24, scope: !648)
!1434 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1433)
!1435 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1433)
!1436 = !DILocation(line: 0, scope: !648)
!1437 = !DILocation(line: 0, scope: !465, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 507, column: 24, scope: !648)
!1439 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1438)
!1440 = !DILocation(line: 508, column: 38, scope: !648)
!1441 = !DILocation(line: 508, column: 48, scope: !648)
!1442 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 508, column: 11, scope: !648)
!1444 = !DILocation(line: 0, scope: !307, inlinedAt: !1443)
!1445 = !DILocation(line: 509, column: 42, scope: !648)
!1446 = !DILocation(line: 509, column: 52, scope: !648)
!1447 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 509, column: 11, scope: !648)
!1449 = !DILocation(line: 0, scope: !307, inlinedAt: !1448)
!1450 = !DILocation(line: 504, column: 27, scope: !649)
!1451 = distinct !{!1451, !1431, !1452, !358}
!1452 = !DILocation(line: 510, column: 9, scope: !650)
!1453 = !DILocation(line: 518, column: 24, scope: !653)
!1454 = !DILocation(line: 0, scope: !653)
!1455 = !DILocation(line: 518, column: 33, scope: !653)
!1456 = !DILocation(line: 519, column: 24, scope: !653)
!1457 = !DILocation(line: 519, column: 33, scope: !653)
!1458 = !DILocation(line: 520, column: 22, scope: !653)
!1459 = !DILocation(line: 520, column: 25, scope: !653)
!1460 = !DILocation(line: 522, column: 24, scope: !653)
!1461 = !DILocation(line: 524, column: 15, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !653, file: !554, line: 524, column: 13)
!1463 = !DILocation(line: 524, column: 13, scope: !653)
!1464 = !DILocation(line: 516, column: 24, scope: !653)
!1465 = !DILocation(line: 516, column: 33, scope: !653)
!1466 = !DILocation(line: 526, column: 34, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1462, file: !554, line: 525, column: 11)
!1468 = !DILocation(line: 0, scope: !293, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 526, column: 13, scope: !1467)
!1470 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1469)
!1471 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1469)
!1472 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1469)
!1473 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1469)
!1474 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1469)
!1475 = !DILocation(line: 527, column: 11, scope: !1467)
!1476 = !DILocation(line: 535, column: 15, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !653, file: !554, line: 535, column: 13)
!1478 = !DILocation(line: 535, column: 13, scope: !653)
!1479 = !DILocation(line: 537, column: 39, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !554, line: 536, column: 11)
!1481 = !DILocation(line: 0, scope: !338, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 537, column: 18, scope: !1480)
!1483 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1482)
!1484 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1482)
!1485 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1482)
!1486 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1482)
!1487 = !DILocation(line: 538, column: 11, scope: !1480)
!1488 = !DILocation(line: 0, scope: !1477)
!1489 = !DILocation(line: 0, scope: !745, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 548, column: 7, scope: !643)
!1491 = !DILocation(line: 742, column: 9, scope: !755, inlinedAt: !1490)
!1492 = !DILocation(line: 742, column: 7, scope: !745, inlinedAt: !1490)
!1493 = !DILocation(line: 747, column: 12, scope: !754, inlinedAt: !1490)
!1494 = !DILocation(line: 747, column: 23, scope: !754, inlinedAt: !1490)
!1495 = !DILocation(line: 747, column: 21, scope: !754, inlinedAt: !1490)
!1496 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !1490)
!1497 = !DILocation(line: 749, column: 18, scope: !753, inlinedAt: !1490)
!1498 = !DILocation(line: 749, column: 21, scope: !753, inlinedAt: !1490)
!1499 = !DILocation(line: 0, scope: !753, inlinedAt: !1490)
!1500 = !DILocation(line: 750, column: 37, scope: !753, inlinedAt: !1490)
!1501 = !DILocation(line: 750, column: 25, scope: !753, inlinedAt: !1490)
!1502 = !DILocation(line: 750, column: 23, scope: !753, inlinedAt: !1490)
!1503 = !DILocation(line: 752, column: 15, scope: !753, inlinedAt: !1490)
!1504 = !DILocation(line: 753, column: 5, scope: !753, inlinedAt: !1490)
!1505 = !DILocation(line: 756, column: 18, scope: !758, inlinedAt: !1490)
!1506 = !DILocation(line: 756, column: 21, scope: !758, inlinedAt: !1490)
!1507 = !DILocation(line: 0, scope: !758, inlinedAt: !1490)
!1508 = !DILocation(line: 757, column: 37, scope: !758, inlinedAt: !1490)
!1509 = !DILocation(line: 757, column: 25, scope: !758, inlinedAt: !1490)
!1510 = !DILocation(line: 757, column: 23, scope: !758, inlinedAt: !1490)
!1511 = !DILocation(line: 759, column: 15, scope: !758, inlinedAt: !1490)
!1512 = !DILocation(line: 0, scope: !755, inlinedAt: !1490)
!1513 = !DILocation(line: 559, column: 7, scope: !661)
!1514 = !DILocation(line: 0, scope: !465, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 561, column: 24, scope: !659)
!1516 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1515)
!1517 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1515)
!1518 = !DILocation(line: 0, scope: !659)
!1519 = !DILocation(line: 0, scope: !465, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 562, column: 24, scope: !659)
!1521 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1520)
!1522 = !DILocation(line: 563, column: 38, scope: !659)
!1523 = !DILocation(line: 563, column: 48, scope: !659)
!1524 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 563, column: 11, scope: !659)
!1526 = !DILocation(line: 0, scope: !307, inlinedAt: !1525)
!1527 = !DILocation(line: 564, column: 42, scope: !659)
!1528 = !DILocation(line: 564, column: 52, scope: !659)
!1529 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 564, column: 11, scope: !659)
!1531 = !DILocation(line: 0, scope: !307, inlinedAt: !1530)
!1532 = !DILocation(line: 559, column: 27, scope: !660)
!1533 = distinct !{!1533, !1513, !1534, !358}
!1534 = !DILocation(line: 565, column: 9, scope: !661)
!1535 = !DILocation(line: 571, column: 24, scope: !664)
!1536 = !DILocation(line: 571, column: 33, scope: !664)
!1537 = !DILocation(line: 572, column: 24, scope: !664)
!1538 = !DILocation(line: 0, scope: !664)
!1539 = !DILocation(line: 572, column: 33, scope: !664)
!1540 = !DILocation(line: 573, column: 22, scope: !664)
!1541 = !DILocation(line: 573, column: 25, scope: !664)
!1542 = !DILocation(line: 575, column: 24, scope: !664)
!1543 = !DILocation(line: 575, column: 33, scope: !664)
!1544 = !DILocation(line: 576, column: 24, scope: !664)
!1545 = !DILocation(line: 0, scope: !293, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 578, column: 9, scope: !664)
!1547 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1546)
!1548 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1546)
!1549 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1546)
!1550 = !DILocation(line: 587, column: 13, scope: !664)
!1551 = !DILocation(line: 589, column: 39, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !554, line: 588, column: 11)
!1553 = distinct !DILexicalBlock(scope: !664, file: !554, line: 587, column: 13)
!1554 = !DILocation(line: 0, scope: !338, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 589, column: 18, scope: !1552)
!1556 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1555)
!1557 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1555)
!1558 = !DILocation(line: 590, column: 11, scope: !1552)
!1559 = !DILocation(line: 0, scope: !1553)
!1560 = !DILocation(line: 490, column: 27, scope: !644)
!1561 = !DILocation(line: 490, column: 17, scope: !644)
!1562 = distinct !{!1562, !1405, !1563, !358}
!1563 = !DILocation(line: 599, column: 5, scope: !645)
!1564 = !DILocation(line: 0, scope: !293, inlinedAt: !1565)
!1565 = distinct !DILocation(line: 601, column: 3, scope: !609)
!1566 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1565)
!1567 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1565)
!1568 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1565)
!1569 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1565)
!1570 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1565)
!1571 = !DILocation(line: 0, scope: !293, inlinedAt: !1401)
!1572 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1401)
!1573 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1401)
!1574 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1401)
!1575 = !DILocation(line: 603, column: 1, scope: !609)
!1576 = !DISubprogram(name: "gsl_vector_swap_elements", scope: !151, file: !151, line: 141, type: !1577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!70, !149, !170, !170}
!1579 = !DISubprogram(name: "gsl_matrix_swap_columns", scope: !128, file: !128, line: 222, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!70, !126, !170, !170}
!1582 = distinct !DISubprogram(name: "gsl_linalg_SV_decomp_mod", scope: !2, file: !2, line: 274, type: !1583, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!70, !126, !126, !126, !149, !149}
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1598, !1599, !1603, !1604, !1605, !1608, !1613, !1617, !1621, !1622, !1624, !1628, !1632}
!1586 = !DILocalVariable(name: "A", arg: 1, scope: !1582, file: !2, line: 274, type: !126)
!1587 = !DILocalVariable(name: "X", arg: 2, scope: !1582, file: !2, line: 275, type: !126)
!1588 = !DILocalVariable(name: "V", arg: 3, scope: !1582, file: !2, line: 276, type: !126)
!1589 = !DILocalVariable(name: "S", arg: 4, scope: !1582, file: !2, line: 276, type: !149)
!1590 = !DILocalVariable(name: "work", arg: 5, scope: !1582, file: !2, line: 276, type: !149)
!1591 = !DILocalVariable(name: "i", scope: !1582, file: !2, line: 278, type: !132)
!1592 = !DILocalVariable(name: "j", scope: !1582, file: !2, line: 278, type: !132)
!1593 = !DILocalVariable(name: "M", scope: !1582, file: !2, line: 280, type: !170)
!1594 = !DILocalVariable(name: "N", scope: !1582, file: !2, line: 281, type: !170)
!1595 = !DILocalVariable(name: "column", scope: !1596, file: !2, line: 318, type: !176)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !2, line: 317, column: 5)
!1597 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 316, column: 7)
!1598 = !DILocalVariable(name: "norm", scope: !1596, file: !2, line: 319, type: !139)
!1599 = !DILocalVariable(name: "c", scope: !1600, file: !2, line: 336, type: !176)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 335, column: 5)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !2, line: 334, column: 3)
!1602 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 334, column: 3)
!1603 = !DILocalVariable(name: "v", scope: !1600, file: !2, line: 337, type: !176)
!1604 = !DILocalVariable(name: "tau_i", scope: !1600, file: !2, line: 338, type: !139)
!1605 = !DILocalVariable(name: "m", scope: !1606, file: !2, line: 344, type: !193)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !2, line: 343, column: 9)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 342, column: 11)
!1608 = !DILocalVariable(name: "Aii", scope: !1609, file: !2, line: 362, type: !139)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 361, column: 7)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !2, line: 355, column: 5)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !2, line: 354, column: 3)
!1612 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 354, column: 3)
!1613 = !DILocalVariable(name: "Aij", scope: !1614, file: !2, line: 368, type: !139)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 367, column: 9)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 366, column: 7)
!1616 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 366, column: 7)
!1617 = !DILocalVariable(name: "tj", scope: !1618, file: !2, line: 378, type: !139)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !2, line: 376, column: 5)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !2, line: 375, column: 3)
!1620 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 375, column: 3)
!1621 = !DILocalVariable(name: "m", scope: !1618, file: !2, line: 379, type: !193)
!1622 = !DILocalVariable(name: "sum", scope: !1623, file: !2, line: 390, type: !176)
!1623 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 389, column: 3)
!1624 = !DILocalVariable(name: "L_i", scope: !1625, file: !2, line: 394, type: !176)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !2, line: 393, column: 7)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !2, line: 392, column: 5)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 392, column: 5)
!1628 = !DILocalVariable(name: "Lij", scope: !1629, file: !2, line: 399, type: !139)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 398, column: 11)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !2, line: 397, column: 9)
!1631 = distinct !DILexicalBlock(scope: !1625, file: !2, line: 397, column: 9)
!1632 = !DILocalVariable(name: "X_j", scope: !1629, file: !2, line: 400, type: !176)
!1633 = distinct !DIAssignID()
!1634 = !DILocation(line: 0, scope: !1596)
!1635 = distinct !DIAssignID()
!1636 = !DILocation(line: 0, scope: !1600)
!1637 = distinct !DIAssignID()
!1638 = distinct !DIAssignID()
!1639 = !DILocation(line: 0, scope: !1606)
!1640 = distinct !DIAssignID()
!1641 = !DILocation(line: 0, scope: !1618)
!1642 = distinct !DIAssignID()
!1643 = !DILocation(line: 0, scope: !1623)
!1644 = distinct !DIAssignID()
!1645 = !DILocation(line: 0, scope: !1625)
!1646 = distinct !DIAssignID()
!1647 = !DILocation(line: 0, scope: !1629)
!1648 = !DILocation(line: 0, scope: !1582)
!1649 = !DILocation(line: 280, column: 23, scope: !1582)
!1650 = !DILocation(line: 281, column: 23, scope: !1582)
!1651 = !DILocation(line: 283, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 283, column: 7)
!1653 = !DILocation(line: 283, column: 7, scope: !1582)
!1654 = !DILocation(line: 285, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 285, column: 7)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 284, column: 5)
!1657 = !DILocation(line: 287, column: 15, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 287, column: 12)
!1659 = !DILocation(line: 287, column: 21, scope: !1658)
!1660 = !DILocation(line: 287, column: 12, scope: !1652)
!1661 = !DILocation(line: 289, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !2, line: 289, column: 7)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 288, column: 5)
!1664 = !DILocation(line: 292, column: 27, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1658, file: !2, line: 292, column: 12)
!1666 = !DILocation(line: 292, column: 21, scope: !1665)
!1667 = !DILocation(line: 292, column: 12, scope: !1658)
!1668 = !DILocation(line: 294, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 294, column: 7)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 293, column: 5)
!1671 = !DILocation(line: 296, column: 15, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 296, column: 12)
!1673 = !DILocation(line: 296, column: 21, scope: !1672)
!1674 = !DILocation(line: 296, column: 12, scope: !1665)
!1675 = !DILocation(line: 298, column: 7, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 298, column: 7)
!1677 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 297, column: 5)
!1678 = !DILocation(line: 301, column: 27, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 301, column: 12)
!1680 = !DILocation(line: 301, column: 21, scope: !1679)
!1681 = !DILocation(line: 301, column: 12, scope: !1672)
!1682 = !DILocation(line: 303, column: 7, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 303, column: 7)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 302, column: 5)
!1685 = !DILocation(line: 305, column: 15, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 305, column: 12)
!1687 = !DILocation(line: 305, column: 20, scope: !1686)
!1688 = !DILocation(line: 305, column: 12, scope: !1679)
!1689 = !DILocation(line: 307, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 307, column: 7)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 306, column: 5)
!1692 = !DILocation(line: 310, column: 18, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 310, column: 12)
!1694 = !DILocation(line: 310, column: 23, scope: !1693)
!1695 = !DILocation(line: 310, column: 12, scope: !1686)
!1696 = !DILocation(line: 312, column: 7, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1698, file: !2, line: 312, column: 7)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !2, line: 311, column: 5)
!1699 = !DILocation(line: 316, column: 9, scope: !1597)
!1700 = !DILocation(line: 316, column: 7, scope: !1582)
!1701 = !DILocation(line: 334, column: 17, scope: !1601)
!1702 = !DILocation(line: 334, column: 3, scope: !1602)
!1703 = !DILocation(line: 318, column: 7, scope: !1596)
!1704 = !DILocation(line: 318, column: 32, scope: !1596)
!1705 = !DILocation(line: 319, column: 21, scope: !1596)
!1706 = !DILocation(line: 0, scope: !293, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 321, column: 7, scope: !1596)
!1708 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1707)
!1709 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1707)
!1710 = !DILocation(line: 0, scope: !307, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 322, column: 7, scope: !1596)
!1712 = !DILocation(line: 305, column: 6, scope: !307, inlinedAt: !1711)
!1713 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1711)
!1714 = !DILocation(line: 324, column: 16, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 324, column: 11)
!1716 = !DILocation(line: 324, column: 11, scope: !1596)
!1717 = !DILocation(line: 326, column: 30, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 325, column: 9)
!1719 = !DILocation(line: 326, column: 11, scope: !1718)
!1720 = !DILocation(line: 327, column: 9, scope: !1718)
!1721 = !DILocation(line: 330, column: 5, scope: !1597)
!1722 = !DILocation(line: 354, column: 3, scope: !1612)
!1723 = !DILocation(line: 336, column: 7, scope: !1600)
!1724 = !DILocation(line: 336, column: 27, scope: !1600)
!1725 = !DILocation(line: 337, column: 7, scope: !1600)
!1726 = !DILocation(line: 337, column: 65, scope: !1600)
!1727 = !DILocation(line: 337, column: 27, scope: !1600)
!1728 = !DILocation(line: 338, column: 22, scope: !1600)
!1729 = !DILocation(line: 342, column: 13, scope: !1607)
!1730 = !DILocation(line: 342, column: 17, scope: !1607)
!1731 = !DILocation(line: 342, column: 11, scope: !1600)
!1732 = !DILocation(line: 344, column: 11, scope: !1606)
!1733 = !DILocation(line: 345, column: 57, scope: !1606)
!1734 = !DILocation(line: 345, column: 13, scope: !1606)
!1735 = !DILocation(line: 346, column: 11, scope: !1606)
!1736 = !DILocation(line: 347, column: 9, scope: !1607)
!1737 = !DILocation(line: 347, column: 9, scope: !1606)
!1738 = !DILocation(line: 0, scope: !293, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 349, column: 7, scope: !1600)
!1740 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1739)
!1741 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1739)
!1742 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1739)
!1743 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1739)
!1744 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1739)
!1745 = !DILocation(line: 350, column: 5, scope: !1601)
!1746 = distinct !{!1746, !1702, !1747, !358}
!1747 = !DILocation(line: 350, column: 5, scope: !1602)
!1748 = !DILocation(line: 354, column: 17, scope: !1611)
!1749 = distinct !{!1749, !1722, !1750, !358}
!1750 = !DILocation(line: 371, column: 5, scope: !1612)
!1751 = !DILocation(line: 356, column: 21, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !2, line: 356, column: 7)
!1753 = distinct !DILexicalBlock(scope: !1610, file: !2, line: 356, column: 7)
!1754 = !DILocation(line: 356, column: 7, scope: !1753)
!1755 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 358, column: 11, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 357, column: 9)
!1758 = !DILocation(line: 0, scope: !307, inlinedAt: !1756)
!1759 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1760)
!1760 = distinct !DILocation(line: 362, column: 22, scope: !1609)
!1761 = !DILocation(line: 375, column: 3, scope: !1620)
!1762 = !DILocation(line: 305, column: 13, scope: !307, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 363, column: 9, scope: !1609)
!1764 = !DILocation(line: 0, scope: !465, inlinedAt: !1760)
!1765 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1760)
!1766 = !DILocation(line: 0, scope: !1609)
!1767 = !DILocation(line: 0, scope: !307, inlinedAt: !1763)
!1768 = !DILocation(line: 305, column: 3, scope: !307, inlinedAt: !1763)
!1769 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1763)
!1770 = !DILocation(line: 366, column: 18, scope: !1616)
!1771 = !DILocation(line: 366, column: 25, scope: !1615)
!1772 = !DILocation(line: 366, column: 7, scope: !1616)
!1773 = !DILocation(line: 0, scope: !465, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 368, column: 24, scope: !1614)
!1775 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1774)
!1776 = !DILocation(line: 0, scope: !1614)
!1777 = !DILocation(line: 0, scope: !307, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 369, column: 11, scope: !1614)
!1779 = !DILocation(line: 305, column: 3, scope: !307, inlinedAt: !1778)
!1780 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1778)
!1781 = !DILocation(line: 366, column: 31, scope: !1615)
!1782 = distinct !{!1782, !1772, !1783, !358}
!1783 = !DILocation(line: 370, column: 9, scope: !1616)
!1784 = !DILocation(line: 375, column: 16, scope: !1619)
!1785 = !DILocation(line: 0, scope: !338, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 378, column: 19, scope: !1618)
!1787 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1786)
!1788 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1786)
!1789 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1786)
!1790 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1786)
!1791 = !DILocation(line: 379, column: 7, scope: !1618)
!1792 = !DILocation(line: 379, column: 60, scope: !1618)
!1793 = !DILocation(line: 379, column: 67, scope: !1618)
!1794 = !DILocation(line: 379, column: 27, scope: !1618)
!1795 = !DILocation(line: 380, column: 7, scope: !1618)
!1796 = !DILocation(line: 381, column: 5, scope: !1619)
!1797 = !DILocation(line: 375, column: 19, scope: !1619)
!1798 = distinct !{!1798, !1761, !1799, !358}
!1799 = !DILocation(line: 381, column: 5, scope: !1620)
!1800 = !DILocation(line: 385, column: 3, scope: !1582)
!1801 = !DILocation(line: 390, column: 5, scope: !1623)
!1802 = !DILocation(line: 390, column: 27, scope: !1623)
!1803 = !DILocation(line: 392, column: 19, scope: !1626)
!1804 = !DILocation(line: 392, column: 5, scope: !1627)
!1805 = !DILocation(line: 394, column: 9, scope: !1625)
!1806 = !DILocation(line: 394, column: 31, scope: !1625)
!1807 = !DILocation(line: 395, column: 9, scope: !1625)
!1808 = !DILocation(line: 397, column: 9, scope: !1631)
!1809 = !DILocation(line: 0, scope: !338, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 399, column: 26, scope: !1629)
!1811 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1810)
!1812 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1810)
!1813 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1810)
!1814 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1810)
!1815 = !DILocation(line: 400, column: 13, scope: !1629)
!1816 = !DILocation(line: 400, column: 35, scope: !1629)
!1817 = !DILocation(line: 401, column: 13, scope: !1629)
!1818 = !DILocation(line: 402, column: 11, scope: !1630)
!1819 = !DILocation(line: 397, column: 29, scope: !1630)
!1820 = !DILocation(line: 397, column: 23, scope: !1630)
!1821 = distinct !{!1821, !1808, !1822, !358}
!1822 = !DILocation(line: 402, column: 11, scope: !1631)
!1823 = !DILocation(line: 404, column: 9, scope: !1625)
!1824 = !DILocation(line: 405, column: 7, scope: !1626)
!1825 = !DILocation(line: 392, column: 25, scope: !1626)
!1826 = distinct !{!1826, !1804, !1827, !358}
!1827 = !DILocation(line: 405, column: 7, scope: !1627)
!1828 = !DILocation(line: 406, column: 3, scope: !1582)
!1829 = !DILocation(line: 408, column: 3, scope: !1582)
!1830 = !DILocation(line: 409, column: 1, scope: !1582)
!1831 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !547, file: !547, line: 94, type: !1832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!139, !149}
!1834 = !DISubprogram(name: "gsl_linalg_householder_hm", scope: !547, file: !547, line: 97, type: !1835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!70, !139, !341, !126}
!1837 = !DISubprogram(name: "gsl_linalg_householder_hm1", scope: !547, file: !547, line: 109, type: !1838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!70, !139, !126}
!1840 = !DISubprogram(name: "gsl_matrix_row", scope: !128, file: !128, line: 106, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1841 = !DISubprogram(name: "gsl_vector_set_zero", scope: !151, file: !151, line: 126, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{null, !149}
!1844 = !DISubprogram(name: "gsl_blas_daxpy", scope: !537, file: !537, line: 121, type: !1845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!70, !139, !341, !149}
!1847 = !DISubprogram(name: "gsl_vector_memcpy", scope: !151, file: !151, line: 136, type: !1848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!70, !149, !341}
!1850 = distinct !DISubprogram(name: "gsl_linalg_SV_solve", scope: !2, file: !2, line: 421, type: !1851, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!70, !468, !468, !341, !341, !149}
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1866, !1867, !1868, !1872}
!1854 = !DILocalVariable(name: "U", arg: 1, scope: !1850, file: !2, line: 421, type: !468)
!1855 = !DILocalVariable(name: "V", arg: 2, scope: !1850, file: !2, line: 422, type: !468)
!1856 = !DILocalVariable(name: "S", arg: 3, scope: !1850, file: !2, line: 423, type: !341)
!1857 = !DILocalVariable(name: "b", arg: 4, scope: !1850, file: !2, line: 424, type: !341)
!1858 = !DILocalVariable(name: "x", arg: 5, scope: !1850, file: !2, line: 424, type: !149)
!1859 = !DILocalVariable(name: "N", scope: !1860, file: !2, line: 451, type: !170)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 450, column: 5)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 445, column: 12)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 440, column: 12)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 436, column: 12)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 431, column: 12)
!1865 = distinct !DILexicalBlock(scope: !1850, file: !2, line: 426, column: 7)
!1866 = !DILocalVariable(name: "i", scope: !1860, file: !2, line: 452, type: !132)
!1867 = !DILocalVariable(name: "w", scope: !1860, file: !2, line: 454, type: !149)
!1868 = !DILocalVariable(name: "wi", scope: !1869, file: !2, line: 460, type: !139)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 459, column: 9)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !2, line: 458, column: 7)
!1871 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 458, column: 7)
!1872 = !DILocalVariable(name: "alpha", scope: !1869, file: !2, line: 461, type: !139)
!1873 = !DILocation(line: 0, scope: !1850)
!1874 = !DILocation(line: 426, column: 10, scope: !1865)
!1875 = !DILocation(line: 426, column: 22, scope: !1865)
!1876 = !DILocation(line: 426, column: 16, scope: !1865)
!1877 = !DILocation(line: 426, column: 7, scope: !1850)
!1878 = !DILocation(line: 428, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 428, column: 7)
!1880 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 427, column: 5)
!1881 = !DILocation(line: 431, column: 15, scope: !1864)
!1882 = !DILocation(line: 431, column: 27, scope: !1864)
!1883 = !DILocation(line: 431, column: 21, scope: !1864)
!1884 = !DILocation(line: 431, column: 12, scope: !1865)
!1885 = !DILocation(line: 433, column: 7, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !2, line: 433, column: 7)
!1887 = distinct !DILexicalBlock(scope: !1864, file: !2, line: 432, column: 5)
!1888 = !DILocation(line: 436, column: 15, scope: !1863)
!1889 = !DILocation(line: 436, column: 27, scope: !1863)
!1890 = !DILocation(line: 436, column: 21, scope: !1863)
!1891 = !DILocation(line: 436, column: 12, scope: !1864)
!1892 = !DILocation(line: 438, column: 7, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !2, line: 438, column: 7)
!1894 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 437, column: 5)
!1895 = !DILocation(line: 440, column: 20, scope: !1862)
!1896 = !DILocation(line: 440, column: 12, scope: !1863)
!1897 = !DILocation(line: 442, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !2, line: 442, column: 7)
!1899 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 441, column: 5)
!1900 = !DILocation(line: 445, column: 27, scope: !1861)
!1901 = !DILocation(line: 445, column: 21, scope: !1861)
!1902 = !DILocation(line: 445, column: 12, scope: !1862)
!1903 = !DILocation(line: 447, column: 7, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !2, line: 447, column: 7)
!1905 = distinct !DILexicalBlock(scope: !1861, file: !2, line: 446, column: 5)
!1906 = !DILocation(line: 0, scope: !1860)
!1907 = !DILocation(line: 454, column: 23, scope: !1860)
!1908 = !DILocation(line: 456, column: 7, scope: !1860)
!1909 = !DILocation(line: 458, column: 21, scope: !1870)
!1910 = !DILocation(line: 458, column: 7, scope: !1871)
!1911 = !DILocation(line: 0, scope: !338, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 460, column: 23, scope: !1869)
!1913 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1912)
!1914 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1912)
!1915 = !DILocation(line: 0, scope: !1869)
!1916 = !DILocation(line: 0, scope: !338, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 461, column: 26, scope: !1869)
!1918 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1917)
!1919 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1917)
!1920 = !DILocation(line: 462, column: 21, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1869, file: !2, line: 462, column: 15)
!1922 = !DILocation(line: 462, column: 15, scope: !1869)
!1923 = !DILocation(line: 464, column: 39, scope: !1869)
!1924 = !DILocation(line: 0, scope: !293, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 464, column: 11, scope: !1869)
!1926 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1925)
!1927 = !DILocation(line: 458, column: 27, scope: !1870)
!1928 = distinct !{!1928, !1910, !1929, !358}
!1929 = !DILocation(line: 465, column: 9, scope: !1871)
!1930 = !DILocation(line: 467, column: 7, scope: !1860)
!1931 = !DILocation(line: 469, column: 7, scope: !1860)
!1932 = !DILocation(line: 0, scope: !1865)
!1933 = !DILocation(line: 473, column: 1, scope: !1850)
!1934 = !DISubprogram(name: "gsl_vector_calloc", scope: !151, file: !151, line: 70, type: !1935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!149, !170}
!1937 = !DISubprogram(name: "gsl_blas_dgemv", scope: !537, file: !537, line: 205, type: !1938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!70, !1940, !139, !468, !341, !139, !149}
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !1941, line: 44, baseType: !107)
!1941 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!1942 = !DISubprogram(name: "gsl_vector_free", scope: !151, file: !151, line: 82, type: !1842, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1943 = distinct !DISubprogram(name: "gsl_linalg_SV_leverage", scope: !2, file: !2, line: 488, type: !1944, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1946)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!70, !468, !149}
!1946 = !{!1947, !1948, !1949, !1950, !1953, !1963}
!1947 = !DILocalVariable(name: "U", arg: 1, scope: !1943, file: !2, line: 488, type: !468)
!1948 = !DILocalVariable(name: "h", arg: 2, scope: !1943, file: !2, line: 488, type: !149)
!1949 = !DILocalVariable(name: "M", scope: !1943, file: !2, line: 490, type: !170)
!1950 = !DILocalVariable(name: "i", scope: !1951, file: !2, line: 499, type: !132)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 498, column: 5)
!1952 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 492, column: 7)
!1953 = !DILocalVariable(name: "v", scope: !1954, file: !2, line: 503, type: !1957)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 502, column: 9)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 501, column: 7)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !2, line: 501, column: 7)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !151, line: 64, baseType: !1958)
!1958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1959)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !151, line: 62, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 59, size: 320, elements: !1961)
!1961 = !{!1962}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1960, file: !151, line: 61, baseType: !150, size: 320)
!1963 = !DILocalVariable(name: "hi", scope: !1954, file: !2, line: 504, type: !139)
!1964 = distinct !DIAssignID()
!1965 = !DILocation(line: 0, scope: !1954)
!1966 = distinct !DIAssignID()
!1967 = !DILocation(line: 0, scope: !1943)
!1968 = !DILocation(line: 490, column: 23, scope: !1943)
!1969 = !DILocation(line: 492, column: 15, scope: !1952)
!1970 = !DILocation(line: 492, column: 9, scope: !1952)
!1971 = !DILocation(line: 492, column: 7, scope: !1943)
!1972 = !DILocation(line: 0, scope: !1951)
!1973 = !DILocation(line: 501, column: 21, scope: !1955)
!1974 = !DILocation(line: 501, column: 7, scope: !1956)
!1975 = !DILocation(line: 494, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !2, line: 494, column: 7)
!1977 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 493, column: 5)
!1978 = !DILocation(line: 503, column: 11, scope: !1954)
!1979 = !DILocation(line: 503, column: 37, scope: !1954)
!1980 = !DILocation(line: 504, column: 11, scope: !1954)
!1981 = !DILocation(line: 506, column: 11, scope: !1954)
!1982 = !DILocation(line: 507, column: 32, scope: !1954)
!1983 = !DILocation(line: 0, scope: !293, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 507, column: 11, scope: !1954)
!1985 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1984)
!1986 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1984)
!1987 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1984)
!1988 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1984)
!1989 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1984)
!1990 = !DILocation(line: 508, column: 9, scope: !1955)
!1991 = !DILocation(line: 501, column: 26, scope: !1955)
!1992 = distinct !{!1992, !1974, !1993, !358}
!1993 = !DILocation(line: 508, column: 9, scope: !1956)
!1994 = !DILocation(line: 0, scope: !1952)
!1995 = !DILocation(line: 512, column: 1, scope: !1943)
!1996 = !DISubprogram(name: "gsl_matrix_const_row", scope: !128, file: !128, line: 158, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!1959, !468, !170}
!1999 = !DISubprogram(name: "gsl_blas_ddot", scope: !537, file: !537, line: 66, type: !2000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!70, !341, !341, !138}
!2002 = distinct !DISubprogram(name: "gsl_linalg_SV_decomp_jacobi", scope: !2, file: !2, line: 536, type: !2003, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!70, !126, !126, !149}
!2005 = !{!2006, !2007, !2008, !2009, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2027, !2028, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2054, !2055, !2059, !2060, !2062, !2066}
!2006 = !DILocalVariable(name: "A", arg: 1, scope: !2002, file: !2, line: 536, type: !126)
!2007 = !DILocalVariable(name: "Q", arg: 2, scope: !2002, file: !2, line: 536, type: !126)
!2008 = !DILocalVariable(name: "S", arg: 3, scope: !2002, file: !2, line: 536, type: !149)
!2009 = !DILocalVariable(name: "M", scope: !2010, file: !2, line: 560, type: !170)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 559, column: 5)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 553, column: 12)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 549, column: 12)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 544, column: 12)
!2014 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 538, column: 7)
!2015 = !DILocalVariable(name: "N", scope: !2010, file: !2, line: 561, type: !170)
!2016 = !DILocalVariable(name: "i", scope: !2010, file: !2, line: 562, type: !132)
!2017 = !DILocalVariable(name: "j", scope: !2010, file: !2, line: 562, type: !132)
!2018 = !DILocalVariable(name: "k", scope: !2010, file: !2, line: 562, type: !132)
!2019 = !DILocalVariable(name: "count", scope: !2010, file: !2, line: 565, type: !70)
!2020 = !DILocalVariable(name: "sweep", scope: !2010, file: !2, line: 566, type: !70)
!2021 = !DILocalVariable(name: "sweepmax", scope: !2010, file: !2, line: 567, type: !70)
!2022 = !DILocalVariable(name: "tolerance", scope: !2010, file: !2, line: 569, type: !139)
!2023 = !DILocalVariable(name: "cj", scope: !2024, file: !2, line: 582, type: !176)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 581, column: 9)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 580, column: 7)
!2026 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 580, column: 7)
!2027 = !DILocalVariable(name: "sj", scope: !2024, file: !2, line: 583, type: !139)
!2028 = !DILocalVariable(name: "a", scope: !2029, file: !2, line: 598, type: !139)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !2, line: 597, column: 17)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 596, column: 15)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 596, column: 15)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !2, line: 595, column: 13)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 594, column: 11)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !2, line: 594, column: 11)
!2035 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 590, column: 9)
!2036 = !DILocalVariable(name: "b", scope: !2029, file: !2, line: 599, type: !139)
!2037 = !DILocalVariable(name: "p", scope: !2029, file: !2, line: 600, type: !139)
!2038 = !DILocalVariable(name: "q", scope: !2029, file: !2, line: 601, type: !139)
!2039 = !DILocalVariable(name: "cosine", scope: !2029, file: !2, line: 602, type: !139)
!2040 = !DILocalVariable(name: "sine", scope: !2029, file: !2, line: 602, type: !139)
!2041 = !DILocalVariable(name: "v", scope: !2029, file: !2, line: 603, type: !139)
!2042 = !DILocalVariable(name: "abserr_a", scope: !2029, file: !2, line: 604, type: !139)
!2043 = !DILocalVariable(name: "abserr_b", scope: !2029, file: !2, line: 604, type: !139)
!2044 = !DILocalVariable(name: "sorted", scope: !2029, file: !2, line: 605, type: !70)
!2045 = !DILocalVariable(name: "orthog", scope: !2029, file: !2, line: 605, type: !70)
!2046 = !DILocalVariable(name: "noisya", scope: !2029, file: !2, line: 605, type: !70)
!2047 = !DILocalVariable(name: "noisyb", scope: !2029, file: !2, line: 605, type: !70)
!2048 = !DILocalVariable(name: "cj", scope: !2029, file: !2, line: 607, type: !176)
!2049 = !DILocalVariable(name: "ck", scope: !2029, file: !2, line: 608, type: !176)
!2050 = !DILocalVariable(name: "Aik", scope: !2051, file: !2, line: 650, type: !310)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !2, line: 649, column: 21)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 648, column: 19)
!2053 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 648, column: 19)
!2054 = !DILocalVariable(name: "Aij", scope: !2051, file: !2, line: 651, type: !310)
!2055 = !DILocalVariable(name: "Qij", scope: !2056, file: !2, line: 662, type: !310)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !2, line: 661, column: 21)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !2, line: 660, column: 19)
!2058 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 660, column: 19)
!2059 = !DILocalVariable(name: "Qik", scope: !2056, file: !2, line: 663, type: !310)
!2060 = !DILocalVariable(name: "prev_norm", scope: !2061, file: !2, line: 679, type: !139)
!2061 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 678, column: 7)
!2062 = !DILocalVariable(name: "column", scope: !2063, file: !2, line: 683, type: !176)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !2, line: 682, column: 11)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !2, line: 681, column: 9)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !2, line: 681, column: 9)
!2066 = !DILocalVariable(name: "norm", scope: !2063, file: !2, line: 684, type: !139)
!2067 = distinct !DIAssignID()
!2068 = !DILocation(line: 0, scope: !2024)
!2069 = distinct !DIAssignID()
!2070 = !DILocation(line: 0, scope: !2029)
!2071 = distinct !DIAssignID()
!2072 = distinct !DIAssignID()
!2073 = distinct !DIAssignID()
!2074 = !DILocation(line: 0, scope: !2063)
!2075 = !DILocation(line: 0, scope: !2002)
!2076 = !DILocation(line: 538, column: 10, scope: !2014)
!2077 = !DILocation(line: 538, column: 21, scope: !2014)
!2078 = !DILocation(line: 538, column: 16, scope: !2014)
!2079 = !DILocation(line: 538, column: 7, scope: !2002)
!2080 = !DILocation(line: 542, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !2, line: 542, column: 7)
!2082 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 539, column: 5)
!2083 = !DILocation(line: 544, column: 15, scope: !2013)
!2084 = !DILocation(line: 544, column: 21, scope: !2013)
!2085 = !DILocation(line: 544, column: 12, scope: !2014)
!2086 = !DILocation(line: 546, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !2, line: 546, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 545, column: 5)
!2089 = !DILocation(line: 549, column: 27, scope: !2012)
!2090 = !DILocation(line: 549, column: 21, scope: !2012)
!2091 = !DILocation(line: 549, column: 12, scope: !2013)
!2092 = !DILocation(line: 551, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !2, line: 551, column: 7)
!2094 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 550, column: 5)
!2095 = !DILocation(line: 553, column: 15, scope: !2011)
!2096 = !DILocation(line: 553, column: 20, scope: !2011)
!2097 = !DILocation(line: 553, column: 12, scope: !2012)
!2098 = !DILocation(line: 555, column: 7, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 555, column: 7)
!2100 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 554, column: 5)
!2101 = !DILocation(line: 0, scope: !2010)
!2102 = !DILocation(line: 567, column: 22, scope: !2010)
!2103 = !DILocation(line: 569, column: 29, scope: !2010)
!2104 = !DILocation(line: 569, column: 26, scope: !2010)
!2105 = !DILocation(line: 569, column: 33, scope: !2010)
!2106 = !DILocation(line: 572, column: 18, scope: !2010)
!2107 = !DILocation(line: 575, column: 7, scope: !2010)
!2108 = !DILocation(line: 580, column: 21, scope: !2025)
!2109 = !DILocation(line: 580, column: 7, scope: !2026)
!2110 = !DILocation(line: 589, column: 7, scope: !2010)
!2111 = !DILocation(line: 582, column: 11, scope: !2024)
!2112 = !DILocation(line: 582, column: 32, scope: !2024)
!2113 = !DILocation(line: 583, column: 23, scope: !2024)
!2114 = !DILocation(line: 584, column: 48, scope: !2024)
!2115 = !DILocation(line: 0, scope: !293, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 584, column: 11, scope: !2024)
!2117 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !2116)
!2118 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !2116)
!2119 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !2116)
!2120 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !2116)
!2121 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2116)
!2122 = !DILocation(line: 585, column: 9, scope: !2025)
!2123 = !DILocation(line: 580, column: 27, scope: !2025)
!2124 = distinct !{!2124, !2109, !2125, !358}
!2125 = !DILocation(line: 585, column: 9, scope: !2026)
!2126 = !DILocation(line: 0, scope: !2061)
!2127 = !DILocation(line: 681, column: 9, scope: !2065)
!2128 = !DILocation(line: 683, column: 13, scope: !2063)
!2129 = !DILocation(line: 683, column: 38, scope: !2063)
!2130 = !DILocation(line: 684, column: 27, scope: !2063)
!2131 = !DILocation(line: 690, column: 22, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2063, file: !2, line: 690, column: 17)
!2133 = !DILocation(line: 0, scope: !293, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 693, column: 17, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 692, column: 15)
!2136 = !DILocation(line: 0, scope: !293, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 700, column: 17, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2132, file: !2, line: 699, column: 15)
!2139 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !2140)
!2140 = !DILocation(line: 0, scope: !2132)
!2141 = !DILocation(line: 690, column: 29, scope: !2132)
!2142 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2137)
!2143 = !DILocation(line: 701, column: 55, scope: !2138)
!2144 = !DILocation(line: 701, column: 17, scope: !2138)
!2145 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2134)
!2146 = !DILocation(line: 694, column: 17, scope: !2135)
!2147 = !DILocation(line: 697, column: 15, scope: !2135)
!2148 = !DILocation(line: 705, column: 11, scope: !2064)
!2149 = !DILocation(line: 681, column: 23, scope: !2064)
!2150 = !DILocation(line: 594, column: 11, scope: !2034)
!2151 = !DILocation(line: 0, scope: !2035)
!2152 = !DILocation(line: 594, column: 25, scope: !2033)
!2153 = distinct !{!2153, !2150, !2154, !358}
!2154 = !DILocation(line: 668, column: 13, scope: !2034)
!2155 = !DILocation(line: 596, column: 26, scope: !2031)
!2156 = !DILocation(line: 596, column: 33, scope: !2030)
!2157 = !DILocation(line: 596, column: 15, scope: !2031)
!2158 = !DILocation(line: 600, column: 19, scope: !2029)
!2159 = !DILocation(line: 600, column: 26, scope: !2029)
!2160 = distinct !DIAssignID()
!2161 = !DILocation(line: 607, column: 19, scope: !2029)
!2162 = !DILocation(line: 607, column: 40, scope: !2029)
!2163 = !DILocation(line: 608, column: 19, scope: !2029)
!2164 = !DILocation(line: 608, column: 40, scope: !2029)
!2165 = !DILocation(line: 610, column: 19, scope: !2029)
!2166 = !DILocation(line: 611, column: 21, scope: !2029)
!2167 = distinct !DIAssignID()
!2168 = !DILocation(line: 613, column: 23, scope: !2029)
!2169 = !DILocation(line: 614, column: 23, scope: !2029)
!2170 = !DILocation(line: 616, column: 25, scope: !2029)
!2171 = !DILocation(line: 616, column: 33, scope: !2029)
!2172 = !DILocation(line: 617, column: 29, scope: !2029)
!2173 = !DILocation(line: 617, column: 23, scope: !2029)
!2174 = !DILocation(line: 0, scope: !338, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 621, column: 30, scope: !2029)
!2176 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !2175)
!2177 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !2175)
!2178 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !2175)
!2179 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !2175)
!2180 = !DILocation(line: 0, scope: !338, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 622, column: 30, scope: !2029)
!2182 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !2181)
!2183 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !2181)
!2184 = !DILocation(line: 624, column: 29, scope: !2029)
!2185 = !DILocation(line: 624, column: 50, scope: !2029)
!2186 = !DILocation(line: 624, column: 47, scope: !2029)
!2187 = !DILocation(line: 625, column: 35, scope: !2029)
!2188 = !DILocation(line: 625, column: 53, scope: !2029)
!2189 = !DILocation(line: 629, column: 30, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 629, column: 23)
!2191 = !DILocation(line: 627, column: 31, scope: !2029)
!2192 = !DILocation(line: 626, column: 31, scope: !2029)
!2193 = !DILocation(line: 625, column: 29, scope: !2029)
!2194 = !DILocation(line: 625, column: 51, scope: !2029)
!2195 = !DILocation(line: 625, column: 38, scope: !2029)
!2196 = !DILocation(line: 629, column: 41, scope: !2190)
!2197 = !DILocation(line: 631, column: 28, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 630, column: 21)
!2199 = !DILocation(line: 632, column: 23, scope: !2198)
!2200 = !DILocation(line: 636, column: 25, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2029, file: !2, line: 636, column: 23)
!2202 = !DILocation(line: 636, column: 30, scope: !2201)
!2203 = !DILocation(line: 643, column: 52, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2201, file: !2, line: 642, column: 21)
!2205 = !DILocation(line: 643, column: 45, scope: !2204)
!2206 = !DILocation(line: 643, column: 32, scope: !2204)
!2207 = !DILocation(line: 644, column: 30, scope: !2204)
!2208 = !DILocation(line: 644, column: 43, scope: !2204)
!2209 = !DILocation(line: 644, column: 32, scope: !2204)
!2210 = !DILocation(line: 0, scope: !2201)
!2211 = !DILocation(line: 648, column: 19, scope: !2053)
!2212 = !DILocation(line: 0, scope: !465, inlinedAt: !2213)
!2213 = distinct !DILocation(line: 650, column: 42, scope: !2051)
!2214 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !2213)
!2215 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !2213)
!2216 = !DILocation(line: 0, scope: !2051)
!2217 = !DILocation(line: 0, scope: !465, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 651, column: 42, scope: !2051)
!2219 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !2218)
!2220 = !DILocation(line: 652, column: 52, scope: !2051)
!2221 = !DILocation(line: 652, column: 67, scope: !2051)
!2222 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !2223)
!2223 = distinct !DILocation(line: 652, column: 23, scope: !2051)
!2224 = !DILocation(line: 0, scope: !307, inlinedAt: !2223)
!2225 = !DILocation(line: 653, column: 66, scope: !2051)
!2226 = !DILocation(line: 653, column: 60, scope: !2051)
!2227 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 653, column: 23, scope: !2051)
!2229 = !DILocation(line: 0, scope: !307, inlinedAt: !2228)
!2230 = !DILocation(line: 648, column: 39, scope: !2052)
!2231 = !DILocation(line: 648, column: 33, scope: !2052)
!2232 = distinct !{!2232, !2211, !2233, !358}
!2233 = !DILocation(line: 654, column: 21, scope: !2053)
!2234 = !DILocation(line: 656, column: 40, scope: !2029)
!2235 = !DILocation(line: 656, column: 53, scope: !2029)
!2236 = !DILocation(line: 656, column: 66, scope: !2029)
!2237 = !DILocation(line: 656, column: 77, scope: !2029)
!2238 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 656, column: 19, scope: !2029)
!2240 = !DILocation(line: 0, scope: !293, inlinedAt: !2239)
!2241 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !2239)
!2242 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !2239)
!2243 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !2239)
!2244 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2239)
!2245 = !DILocation(line: 657, column: 51, scope: !2029)
!2246 = !DILocation(line: 657, column: 77, scope: !2029)
!2247 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 657, column: 19, scope: !2029)
!2249 = !DILocation(line: 0, scope: !293, inlinedAt: !2248)
!2250 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !2248)
!2251 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2248)
!2252 = !DILocation(line: 660, column: 19, scope: !2058)
!2253 = !DILocation(line: 0, scope: !465, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 662, column: 42, scope: !2056)
!2255 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !2254)
!2256 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !2254)
!2257 = !DILocation(line: 0, scope: !2056)
!2258 = !DILocation(line: 0, scope: !465, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 663, column: 42, scope: !2056)
!2260 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !2259)
!2261 = !DILocation(line: 664, column: 52, scope: !2056)
!2262 = !DILocation(line: 664, column: 67, scope: !2056)
!2263 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 664, column: 23, scope: !2056)
!2265 = !DILocation(line: 0, scope: !307, inlinedAt: !2264)
!2266 = !DILocation(line: 665, column: 66, scope: !2056)
!2267 = !DILocation(line: 665, column: 60, scope: !2056)
!2268 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !2269)
!2269 = distinct !DILocation(line: 665, column: 23, scope: !2056)
!2270 = !DILocation(line: 0, scope: !307, inlinedAt: !2269)
!2271 = !DILocation(line: 660, column: 39, scope: !2057)
!2272 = !DILocation(line: 660, column: 33, scope: !2057)
!2273 = distinct !{!2273, !2252, !2274, !358}
!2274 = !DILocation(line: 666, column: 21, scope: !2058)
!2275 = !DILocation(line: 667, column: 17, scope: !2030)
!2276 = !DILocation(line: 596, column: 39, scope: !2030)
!2277 = distinct !{!2277, !2157, !2278, !358}
!2278 = !DILocation(line: 667, column: 17, scope: !2031)
!2279 = !DILocation(line: 592, column: 17, scope: !2035)
!2280 = !DILocation(line: 671, column: 16, scope: !2035)
!2281 = !DILocation(line: 589, column: 20, scope: !2010)
!2282 = !DILocation(line: 589, column: 24, scope: !2010)
!2283 = distinct !{!2283, !2110, !2284, !358}
!2284 = !DILocation(line: 672, column: 9, scope: !2010)
!2285 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !2140)
!2286 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !2140)
!2287 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !2140)
!2288 = !DILocation(line: 681, column: 29, scope: !2064)
!2289 = distinct !{!2289, !2127, !2290, !358, !2291}
!2290 = !DILocation(line: 705, column: 11, scope: !2065)
!2291 = !{!"llvm.loop.peeled.count", i32 1}
!2292 = !DILocation(line: 708, column: 11, scope: !2010)
!2293 = !DILocation(line: 711, column: 11, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !2, line: 711, column: 11)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !2, line: 709, column: 9)
!2296 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 708, column: 11)
!2297 = !DILocation(line: 0, scope: !2014)
!2298 = !DILocation(line: 717, column: 1, scope: !2002)
!2299 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !128, file: !128, line: 209, type: !2300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !126}
!2302 = !DISubprogram(name: "hypot", scope: !2303, file: !2303, line: 147, type: !2304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!139, !139, !139}
!2306 = !DISubprogram(name: "gsl_coerce_double", scope: !603, file: !603, line: 52, type: !2307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!139, !310}
!2309 = !DISubprogram(name: "sqrt", scope: !2303, file: !2303, line: 143, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!139, !139}
!2312 = !DISubprogram(name: "gsl_vector_scale", scope: !151, file: !151, line: 155, type: !2313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!70, !149, !310}
!2315 = !DISubprogram(name: "frexp", scope: !2303, file: !2303, line: 98, type: !2316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!139, !139, !2318}
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2319 = !DISubprogram(name: "ldexp", scope: !2303, file: !2303, line: 101, type: !2320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!139, !139, !70}
