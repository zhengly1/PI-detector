; ModuleID = 'svd.c'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 60, i32 noundef 24) #11, !dbg !253
  br label %298, !dbg !253

17:                                               ; preds = %4
  %18 = load i64, ptr %1, align 8, !dbg !257, !tbaa !242
  %19 = icmp eq i64 %18, %13, !dbg !259
  br i1 %19, label %21, label %20, !dbg !260

20:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef 19) #11, !dbg !261
  br label %298, !dbg !261

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !264
  %23 = load i64, ptr %22, align 8, !dbg !264, !tbaa !250
  %24 = icmp eq i64 %13, %23, !dbg !266
  br i1 %24, label %26, label %25, !dbg !267

25:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 20) #11, !dbg !268
  br label %298, !dbg !268

26:                                               ; preds = %21
  %27 = load i64, ptr %2, align 8, !dbg !271, !tbaa !273
  %28 = icmp eq i64 %27, %13, !dbg !275
  br i1 %28, label %30, label %29, !dbg !276

29:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef 19) #11, !dbg !277
  br label %298, !dbg !277

30:                                               ; preds = %26
  %31 = load i64, ptr %3, align 8, !dbg !280, !tbaa !273
  %32 = icmp eq i64 %31, %13, !dbg !282
  br i1 %32, label %34, label %33, !dbg !283

33:                                               ; preds = %30
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 79, i32 noundef 19) #11, !dbg !284
  br label %298, !dbg !284

34:                                               ; preds = %30
  %35 = icmp eq i64 %13, 1, !dbg !287
  br i1 %35, label %36, label %46, !dbg !288

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #11, !dbg !289
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %5, ptr noundef nonnull %0, i64 noundef 0) #11, !dbg !290
  %37 = call double @gsl_blas_dnrm2(ptr noundef nonnull %5) #11, !dbg !291
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
  call void @gsl_blas_dscal(double noundef %44, ptr noundef nonnull %5) #11, !dbg !325
  br label %45, !dbg !326

45:                                               ; preds = %43, %36
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #11, !dbg !327
  br label %298

46:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11, !dbg !328
  %47 = add i64 %15, -1, !dbg !329
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %3, i64 noundef 0, i64 noundef %47) #11, !dbg !330
  %48 = call i32 @gsl_linalg_bidiag_decomp(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %6) #11, !dbg !331
  %49 = call i32 @gsl_linalg_bidiag_unpack2(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef nonnull %1) #11, !dbg !332
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

58:                                               ; preds = %46, %194
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
  %69 = call i32 @gsl_isnan(double noundef %66) #11, !dbg !359
  %70 = icmp eq i32 %69, 0, !dbg !359
  br i1 %70, label %71, label %194, !dbg !360, !llvm.loop !356

71:                                               ; preds = %68, %83
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
  %84 = call i32 @gsl_isnan(double noundef %81) #11, !dbg !375
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
  call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 148, i32 noundef 11) #11, !dbg !381
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !165, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !168, metadata !DIExpression()), !dbg !240
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11, !dbg !384
  br label %298

91:                                               ; preds = %87
  %92 = sub i64 %59, %73, !dbg !385
  %93 = add i64 %92, 1, !dbg !386
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !188, metadata !DIExpression()), !dbg !236
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #11, !dbg !387
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %2, i64 noundef %73, i64 noundef %93) #11, !dbg !388
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11, !dbg !389
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %6, i64 noundef %73, i64 noundef %92) #11, !dbg !390
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #11, !dbg !391
  %94 = load i64, ptr %0, align 8, !dbg !392, !tbaa !242
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %73, i64 noundef %94, i64 noundef %93) #11, !dbg !393
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #11, !dbg !394
  %95 = load i64, ptr %1, align 8, !dbg !395, !tbaa !242
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %10, ptr noundef nonnull %1, i64 noundef 0, i64 noundef %73, i64 noundef %95, i64 noundef %93) #11, !dbg !396
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

189:                                              ; preds = %181, %187
  %190 = phi double [ %188, %187 ], [ %182, %181 ]
  tail call void @llvm.dbg.value(metadata double %190, metadata !200, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !199, metadata !DIExpression()), !dbg !236
  %191 = fdiv double 1.000000e+00, %190, !dbg !437
  call void @gsl_blas_dscal(double noundef %191, ptr noundef nonnull %7) #11, !dbg !440
  call void @gsl_blas_dscal(double noundef %191, ptr noundef nonnull %8) #11, !dbg !441
  call fastcc void @qrstep(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !442
  call fastcc void @chop_small_elements(ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !443
  call void @gsl_blas_dscal(double noundef %190, ptr noundef nonnull %7) #11, !dbg !444
  call void @gsl_blas_dscal(double noundef %190, ptr noundef nonnull %8) #11, !dbg !447
  br label %193, !dbg !448

192:                                              ; preds = %183
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !200, metadata !DIExpression()), !dbg !236
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !199, metadata !DIExpression()), !dbg !236
  call fastcc void @qrstep(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !442
  call fastcc void @chop_small_elements(ptr noundef nonnull %7, ptr noundef nonnull %8), !dbg !443
  br label %193, !dbg !449

193:                                              ; preds = %192, %189
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #11, !dbg !450
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #11, !dbg !450
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11, !dbg !450
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #11, !dbg !450
  br label %194, !dbg !357

194:                                              ; preds = %58, %68, %193
  %195 = phi i64 [ %88, %193 ], [ %60, %68 ], [ %60, %58 ], !dbg !234
  %196 = phi i64 [ %59, %193 ], [ %61, %68 ], [ %61, %58 ], !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !165, metadata !DIExpression()), !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %195, metadata !168, metadata !DIExpression()), !dbg !240
  %197 = icmp eq i64 %196, 0, !dbg !451
  br i1 %197, label %198, label %58, !dbg !335

198:                                              ; preds = %194
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11, !dbg !384
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

215:                                              ; preds = %200, %265
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

226:                                              ; preds = %222, %226
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

253:                                              ; preds = %251, %253
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

263:                                              ; preds = %251, %253, %221
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

268:                                              ; preds = %212, %296
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

278:                                              ; preds = %274, %278
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
  %293 = call i32 @gsl_vector_swap_elements(ptr noundef nonnull %2, i64 noundef %269, i64 noundef %287) #11, !dbg !519
  %294 = call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %0, i64 noundef %269, i64 noundef %287) #11, !dbg !521
  %295 = call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %1, i64 noundef %269, i64 noundef %287) #11, !dbg !522
  br label %296, !dbg !523

296:                                              ; preds = %268, %292, %290
  tail call void @llvm.dbg.value(metadata i64 %272, metadata !166, metadata !DIExpression()), !dbg !240
  %297 = icmp eq i64 %272, %15, !dbg !524
  br i1 %297, label %298, label %268, !dbg !454, !llvm.loop !525

298:                                              ; preds = %296, %198, %90, %45, %33, %29, %25, %20, %16
  %299 = phi i32 [ 24, %16 ], [ 19, %20 ], [ 20, %25 ], [ 19, %29 ], [ 19, %33 ], [ 0, %45 ], [ 11, %90 ], [ 0, %198 ], [ 0, %296 ]
  ret i32 %299, !dbg !527
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !528 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !533 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !536 double @gsl_blas_dnrm2(ptr noundef) local_unnamed_addr #2

declare !dbg !540 void @gsl_blas_dscal(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  br i1 %7, label %35, label %8, !dbg !574

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

16:                                               ; preds = %8, %33
  %17 = phi double [ %9, %8 ], [ %25, %33 ]
  %18 = phi i64 [ 0, %8 ], [ %22, %33 ]
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
  %29 = fadd double %27, %28, !dbg !591
  %30 = fmul double %29, 0x3CB0000000000000, !dbg !592
  %31 = fcmp olt double %26, %30, !dbg !593
  br i1 %31, label %32, label %33, !dbg !594

32:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !297, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !595
  store double 0.000000e+00, ptr %20, align 8, !dbg !598, !tbaa !304
  br label %33, !dbg !599

33:                                               ; preds = %32, %16
  tail call void @llvm.dbg.value(metadata double %25, metadata !561, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !562, metadata !DIExpression()), !dbg !568
  %34 = icmp eq i64 %22, %6, !dbg !573
  br i1 %34, label %35, label %16, !dbg !574, !llvm.loop !600

35:                                               ; preds = %33, %2
  ret void, !dbg !602
}

declare !dbg !603 i32 @gsl_isnan(double noundef) local_unnamed_addr #2

declare !dbg !607 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nounwind uwtable
define internal fastcc void @qrstep(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !dbg !610 {
  %5 = alloca i32, align 4, !DIAssignID !670
  %6 = alloca i32, align 4, !DIAssignID !671
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !614, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !615, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !616, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !617, metadata !DIExpression()), !dbg !672
  %7 = load i64, ptr %2, align 8, !dbg !673, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !618, metadata !DIExpression()), !dbg !672
  %8 = load i64, ptr %3, align 8, !dbg !674, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !619, metadata !DIExpression()), !dbg !672
  %9 = load i64, ptr %0, align 8, !dbg !675, !tbaa !273
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !620, metadata !DIExpression()), !dbg !672
  switch i64 %9, label %10 [
    i64 1, label %1236
    i64 2, label %16
  ], !dbg !676

10:                                               ; preds = %4
  %11 = add i64 %9, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !629, metadata !DIExpression()), !dbg !672
  %12 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !302
  %14 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !349
  br label %565, !dbg !677

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !678, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %1, metadata !681, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !682, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !683, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %7, metadata !691, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %8, metadata !692, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !729
  call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression()), !dbg !729
  %17 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 2, !dbg !731
  %18 = load ptr, ptr %17, align 8, !dbg !731, !tbaa !302
  %19 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 1, !dbg !732
  %20 = load double, ptr %18, align 8, !dbg !733, !tbaa !304
  call void @llvm.dbg.value(metadata double %20, metadata !693, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !734
  call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression()), !dbg !734
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2, !dbg !736
  %22 = load ptr, ptr %21, align 8, !dbg !736, !tbaa !302
  %23 = load double, ptr %22, align 8, !dbg !737, !tbaa !304
  call void @llvm.dbg.value(metadata double %23, metadata !694, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i64 1, metadata !344, metadata !DIExpression()), !dbg !738
  %24 = load i64, ptr %19, align 8, !dbg !740, !tbaa !349
  %25 = getelementptr inbounds double, ptr %18, i64 %24, !dbg !741
  %26 = load double, ptr %25, align 8, !dbg !741, !tbaa !304
  call void @llvm.dbg.value(metadata double %26, metadata !695, metadata !DIExpression()), !dbg !725
  %27 = fcmp oeq double %20, 0.000000e+00, !dbg !742
  %28 = fcmp oeq double %26, 0.000000e+00, !dbg !743
  br i1 %27, label %29, label %166, !dbg !744

29:                                               ; preds = %16
  call void @llvm.dbg.value(metadata double %23, metadata !745, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata double %26, metadata !750, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata ptr undef, metadata !752, metadata !DIExpression()), !dbg !761
  br i1 %28, label %50, label %30, !dbg !763

30:                                               ; preds = %29
  %31 = tail call double @llvm.fabs.f64(double %26), !dbg !764
  %32 = tail call double @llvm.fabs.f64(double %23), !dbg !765
  %33 = fcmp ogt double %31, %32, !dbg !766
  br i1 %33, label %34, label %42, !dbg !767

34:                                               ; preds = %30
  %35 = fneg double %23, !dbg !768
  %36 = fdiv double %35, %26, !dbg !769
  call void @llvm.dbg.value(metadata double %36, metadata !753, metadata !DIExpression()), !dbg !770
  %37 = fmul double %36, %36, !dbg !771
  %38 = fadd double %37, 1.000000e+00, !dbg !772
  %39 = tail call double @llvm.sqrt.f64(double %38), !dbg !773
  %40 = fdiv double 1.000000e+00, %39, !dbg !774
  call void @llvm.dbg.value(metadata double %40, metadata !757, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata double %40, metadata !686, metadata !DIExpression()), !dbg !725
  %41 = fmul double %36, %40, !dbg !775
  call void @llvm.dbg.value(metadata double %41, metadata !685, metadata !DIExpression()), !dbg !725
  br label %50, !dbg !776

42:                                               ; preds = %30
  %43 = fneg double %26, !dbg !777
  %44 = fdiv double %43, %23, !dbg !778
  call void @llvm.dbg.value(metadata double %44, metadata !758, metadata !DIExpression()), !dbg !779
  %45 = fmul double %44, %44, !dbg !780
  %46 = fadd double %45, 1.000000e+00, !dbg !781
  %47 = tail call double @llvm.sqrt.f64(double %46), !dbg !782
  %48 = fdiv double 1.000000e+00, %47, !dbg !783
  call void @llvm.dbg.value(metadata double %48, metadata !760, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata double %48, metadata !685, metadata !DIExpression()), !dbg !725
  %49 = fmul double %44, %48, !dbg !784
  call void @llvm.dbg.value(metadata double %49, metadata !686, metadata !DIExpression()), !dbg !725
  br label %50

50:                                               ; preds = %42, %34, %29
  %51 = phi double [ %41, %34 ], [ %48, %42 ], [ 1.000000e+00, %29 ], !dbg !785
  %52 = phi double [ %40, %34 ], [ %49, %42 ], [ 0.000000e+00, %29 ], !dbg !785
  call void @llvm.dbg.value(metadata double %52, metadata !686, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %51, metadata !685, metadata !DIExpression()), !dbg !725
  %53 = fmul double %23, %51, !dbg !786
  %54 = fmul double %26, %52, !dbg !787
  %55 = fsub double %53, %54, !dbg !788
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.value(metadata double %55, metadata !298, metadata !DIExpression()), !dbg !789
  store double %55, ptr %18, align 8, !dbg !791, !tbaa !304
  %56 = fmul double %23, %52, !dbg !792
  %57 = fmul double %26, %51, !dbg !793
  %58 = fadd double %57, %56, !dbg !794
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata double %58, metadata !298, metadata !DIExpression()), !dbg !795
  store double %58, ptr %22, align 8, !dbg !797, !tbaa !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 1, metadata !297, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !798
  store double 0.000000e+00, ptr %25, align 8, !dbg !800, !tbaa !304
  call void @llvm.dbg.value(metadata i64 0, metadata !684, metadata !DIExpression()), !dbg !725
  %59 = icmp eq i64 %7, 0, !dbg !801
  br i1 %59, label %164, label %60, !dbg !802

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !318
  %63 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !463
  %65 = icmp eq i64 %64, 1, !dbg !802
  br i1 %65, label %100, label %66, !dbg !802

66:                                               ; preds = %60
  %67 = and i64 %7, 1, !dbg !802
  %68 = icmp eq i64 %7, 1, !dbg !802
  br i1 %68, label %149, label %69, !dbg !802

69:                                               ; preds = %66
  %70 = and i64 %7, -2, !dbg !802
  br label %71, !dbg !802

71:                                               ; preds = %71, %69
  %72 = phi i64 [ 0, %69 ], [ %97, %71 ]
  %73 = phi i64 [ 0, %69 ], [ %98, %71 ]
  call void @llvm.dbg.value(metadata i64 %72, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %72, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !803
  %74 = mul i64 %72, %64, !dbg !805
  %75 = getelementptr double, ptr %62, i64 %74, !dbg !806
  %76 = load double, ptr %75, align 8, !dbg !806, !tbaa !304
  call void @llvm.dbg.value(metadata double %76, metadata !696, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %72, metadata !471, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !808
  %77 = getelementptr double, ptr %75, i64 1, !dbg !810
  %78 = load double, ptr %77, align 8, !dbg !810, !tbaa !304
  call void @llvm.dbg.value(metadata double %78, metadata !702, metadata !DIExpression()), !dbg !807
  %79 = fmul double %51, %76, !dbg !811
  %80 = fmul double %52, %78, !dbg !812
  %81 = fsub double %79, %80, !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 %72, metadata !312, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata double %81, metadata !314, metadata !DIExpression()), !dbg !814
  store double %81, ptr %75, align 8, !dbg !816, !tbaa !304
  %82 = fmul double %52, %76, !dbg !817
  %83 = fmul double %51, %78, !dbg !818
  %84 = fadd double %82, %83, !dbg !819
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 %72, metadata !312, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata double %84, metadata !314, metadata !DIExpression()), !dbg !820
  store double %84, ptr %77, align 8, !dbg !822, !tbaa !304
  %85 = or disjoint i64 %72, 1, !dbg !823
  call void @llvm.dbg.value(metadata i64 %85, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %85, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %85, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !803
  %86 = mul i64 %85, %64, !dbg !805
  %87 = getelementptr double, ptr %62, i64 %86, !dbg !806
  %88 = load double, ptr %87, align 8, !dbg !806, !tbaa !304
  call void @llvm.dbg.value(metadata double %88, metadata !696, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %85, metadata !471, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !808
  %89 = getelementptr double, ptr %87, i64 1, !dbg !810
  %90 = load double, ptr %89, align 8, !dbg !810, !tbaa !304
  call void @llvm.dbg.value(metadata double %90, metadata !702, metadata !DIExpression()), !dbg !807
  %91 = fmul double %51, %88, !dbg !811
  %92 = fmul double %52, %90, !dbg !812
  %93 = fsub double %91, %92, !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 %85, metadata !312, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata double %93, metadata !314, metadata !DIExpression()), !dbg !814
  store double %93, ptr %87, align 8, !dbg !816, !tbaa !304
  %94 = fmul double %52, %88, !dbg !817
  %95 = fmul double %51, %90, !dbg !818
  %96 = fadd double %94, %95, !dbg !819
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 %85, metadata !312, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata double %96, metadata !314, metadata !DIExpression()), !dbg !820
  store double %96, ptr %89, align 8, !dbg !822, !tbaa !304
  %97 = add nuw i64 %72, 2, !dbg !823
  call void @llvm.dbg.value(metadata i64 %97, metadata !684, metadata !DIExpression()), !dbg !725
  %98 = add i64 %73, 2, !dbg !802
  %99 = icmp eq i64 %98, %70, !dbg !802
  br i1 %99, label %149, label %71, !dbg !802, !llvm.loop !824

100:                                              ; preds = %60
  %101 = load double, ptr %62, align 8
  %102 = and i64 %7, 1, !dbg !802
  %103 = icmp eq i64 %7, 1, !dbg !802
  br i1 %103, label %134, label %104, !dbg !802

104:                                              ; preds = %100
  %105 = and i64 %7, -2, !dbg !802
  br label %106, !dbg !802

106:                                              ; preds = %106, %104
  %107 = phi double [ %101, %104 ], [ %130, %106 ]
  %108 = phi i64 [ 0, %104 ], [ %131, %106 ]
  %109 = phi i64 [ 0, %104 ], [ %132, %106 ]
  call void @llvm.dbg.value(metadata i64 %108, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %108, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !803
  %110 = mul nuw i64 %108, %64, !dbg !805
  %111 = getelementptr double, ptr %62, i64 %110, !dbg !806
  call void @llvm.dbg.value(metadata double %107, metadata !696, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %108, metadata !471, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !808
  %112 = getelementptr double, ptr %111, i64 1, !dbg !810
  %113 = load double, ptr %112, align 8, !dbg !810, !tbaa !304
  call void @llvm.dbg.value(metadata double %113, metadata !702, metadata !DIExpression()), !dbg !807
  %114 = fmul double %51, %107, !dbg !811
  %115 = fmul double %52, %113, !dbg !812
  %116 = fsub double %114, %115, !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 %108, metadata !312, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata double %116, metadata !314, metadata !DIExpression()), !dbg !814
  store double %116, ptr %111, align 8, !dbg !816, !tbaa !304
  %117 = fmul double %52, %107, !dbg !817
  %118 = fmul double %51, %113, !dbg !818
  %119 = fadd double %117, %118, !dbg !819
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 %108, metadata !312, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata double %119, metadata !314, metadata !DIExpression()), !dbg !820
  store double %119, ptr %112, align 8, !dbg !822, !tbaa !304
  %120 = or disjoint i64 %108, 1, !dbg !823
  call void @llvm.dbg.value(metadata i64 %120, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %120, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %120, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !803
  %121 = mul nuw i64 %120, %64, !dbg !805
  %122 = getelementptr double, ptr %62, i64 %121, !dbg !806
  call void @llvm.dbg.value(metadata double %119, metadata !696, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %120, metadata !471, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !808
  %123 = getelementptr double, ptr %122, i64 1, !dbg !810
  %124 = load double, ptr %123, align 8, !dbg !810, !tbaa !304
  call void @llvm.dbg.value(metadata double %124, metadata !702, metadata !DIExpression()), !dbg !807
  %125 = fmul double %51, %119, !dbg !811
  %126 = fmul double %52, %124, !dbg !812
  %127 = fsub double %125, %126, !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 %120, metadata !312, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata double %127, metadata !314, metadata !DIExpression()), !dbg !814
  store double %127, ptr %122, align 8, !dbg !816, !tbaa !304
  %128 = fmul double %52, %119, !dbg !817
  %129 = fmul double %51, %124, !dbg !818
  %130 = fadd double %128, %129, !dbg !819
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 %120, metadata !312, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata double %130, metadata !314, metadata !DIExpression()), !dbg !820
  store double %130, ptr %123, align 8, !dbg !822, !tbaa !304
  %131 = add nuw i64 %108, 2, !dbg !823
  call void @llvm.dbg.value(metadata i64 %131, metadata !684, metadata !DIExpression()), !dbg !725
  %132 = add i64 %109, 2, !dbg !802
  %133 = icmp eq i64 %132, %105, !dbg !802
  br i1 %133, label %134, label %106, !dbg !802, !llvm.loop !824

134:                                              ; preds = %106, %100
  %135 = phi double [ %101, %100 ], [ %130, %106 ]
  %136 = phi i64 [ 0, %100 ], [ %131, %106 ]
  %137 = icmp eq i64 %102, 0, !dbg !802
  br i1 %137, label %164, label %138, !dbg !802

138:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i64 %136, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %136, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !803
  %139 = mul nuw i64 %136, %64, !dbg !805
  %140 = getelementptr double, ptr %62, i64 %139, !dbg !806
  call void @llvm.dbg.value(metadata double %135, metadata !696, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %136, metadata !471, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !808
  %141 = getelementptr double, ptr %140, i64 1, !dbg !810
  %142 = load double, ptr %141, align 8, !dbg !810, !tbaa !304
  call void @llvm.dbg.value(metadata double %142, metadata !702, metadata !DIExpression()), !dbg !807
  %143 = fmul double %51, %135, !dbg !811
  %144 = fmul double %52, %142, !dbg !812
  %145 = fsub double %143, %144, !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 %136, metadata !312, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata double %145, metadata !314, metadata !DIExpression()), !dbg !814
  store double %145, ptr %140, align 8, !dbg !816, !tbaa !304
  %146 = fmul double %52, %135, !dbg !817
  %147 = fmul double %51, %142, !dbg !818
  %148 = fadd double %146, %147, !dbg !819
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 %136, metadata !312, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata double %148, metadata !314, metadata !DIExpression()), !dbg !820
  store double %148, ptr %141, align 8, !dbg !822, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %136, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !725
  br label %164, !dbg !826

149:                                              ; preds = %71, %66
  %150 = phi i64 [ 0, %66 ], [ %97, %71 ]
  %151 = icmp eq i64 %67, 0, !dbg !802
  br i1 %151, label %164, label %152, !dbg !802

152:                                              ; preds = %149
  call void @llvm.dbg.value(metadata i64 %150, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 %150, metadata !471, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !803
  %153 = mul i64 %150, %64, !dbg !805
  %154 = getelementptr double, ptr %62, i64 %153, !dbg !806
  %155 = load double, ptr %154, align 8, !dbg !806, !tbaa !304
  call void @llvm.dbg.value(metadata double %155, metadata !696, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 %150, metadata !471, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !808
  %156 = getelementptr double, ptr %154, i64 1, !dbg !810
  %157 = load double, ptr %156, align 8, !dbg !810, !tbaa !304
  call void @llvm.dbg.value(metadata double %157, metadata !702, metadata !DIExpression()), !dbg !807
  %158 = fmul double %51, %155, !dbg !811
  %159 = fmul double %52, %157, !dbg !812
  %160 = fsub double %158, %159, !dbg !813
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 %150, metadata !312, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata double %160, metadata !314, metadata !DIExpression()), !dbg !814
  store double %160, ptr %154, align 8, !dbg !816, !tbaa !304
  %161 = fmul double %52, %155, !dbg !817
  %162 = fmul double %51, %157, !dbg !818
  %163 = fadd double %161, %162, !dbg !819
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 %150, metadata !312, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.value(metadata double %163, metadata !314, metadata !DIExpression()), !dbg !820
  store double %163, ptr %156, align 8, !dbg !822, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %150, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !725
  br label %164, !dbg !826

164:                                              ; preds = %152, %149, %138, %134, %50
  %165 = tail call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 1) #11, !dbg !826
  br label %1236, !dbg !827

166:                                              ; preds = %16
  br i1 %28, label %167, label %270, !dbg !828

167:                                              ; preds = %166
  call void @llvm.dbg.value(metadata double %20, metadata !745, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata double %23, metadata !750, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata ptr undef, metadata !752, metadata !DIExpression()), !dbg !829
  %168 = fcmp oeq double %23, 0.000000e+00, !dbg !831
  br i1 %168, label %189, label %169, !dbg !832

169:                                              ; preds = %167
  %170 = tail call double @llvm.fabs.f64(double %23), !dbg !833
  %171 = tail call double @llvm.fabs.f64(double %20), !dbg !834
  %172 = fcmp ogt double %170, %171, !dbg !835
  br i1 %172, label %173, label %181, !dbg !836

173:                                              ; preds = %169
  %174 = fneg double %20, !dbg !837
  %175 = fdiv double %174, %23, !dbg !838
  call void @llvm.dbg.value(metadata double %175, metadata !753, metadata !DIExpression()), !dbg !839
  %176 = fmul double %175, %175, !dbg !840
  %177 = fadd double %176, 1.000000e+00, !dbg !841
  %178 = tail call double @llvm.sqrt.f64(double %177), !dbg !842
  %179 = fdiv double 1.000000e+00, %178, !dbg !843
  call void @llvm.dbg.value(metadata double %179, metadata !757, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.value(metadata double %179, metadata !686, metadata !DIExpression()), !dbg !725
  %180 = fmul double %175, %179, !dbg !844
  call void @llvm.dbg.value(metadata double %180, metadata !685, metadata !DIExpression()), !dbg !725
  br label %189, !dbg !845

181:                                              ; preds = %169
  %182 = fneg double %23, !dbg !846
  %183 = fdiv double %182, %20, !dbg !847
  call void @llvm.dbg.value(metadata double %183, metadata !758, metadata !DIExpression()), !dbg !848
  %184 = fmul double %183, %183, !dbg !849
  %185 = fadd double %184, 1.000000e+00, !dbg !850
  %186 = tail call double @llvm.sqrt.f64(double %185), !dbg !851
  %187 = fdiv double 1.000000e+00, %186, !dbg !852
  call void @llvm.dbg.value(metadata double %187, metadata !760, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata double %187, metadata !685, metadata !DIExpression()), !dbg !725
  %188 = fmul double %183, %187, !dbg !853
  call void @llvm.dbg.value(metadata double %188, metadata !686, metadata !DIExpression()), !dbg !725
  br label %189

189:                                              ; preds = %181, %173, %167
  %190 = phi double [ %180, %173 ], [ %187, %181 ], [ 1.000000e+00, %167 ], !dbg !854
  %191 = phi double [ %179, %173 ], [ %188, %181 ], [ 0.000000e+00, %167 ], !dbg !854
  call void @llvm.dbg.value(metadata double %191, metadata !686, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %190, metadata !685, metadata !DIExpression()), !dbg !725
  %192 = fmul double %20, %190, !dbg !855
  %193 = fmul double %23, %191, !dbg !856
  %194 = fsub double %192, %193, !dbg !857
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata double %194, metadata !298, metadata !DIExpression()), !dbg !858
  store double %194, ptr %18, align 8, !dbg !860, !tbaa !304
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !861
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !861
  store double 0.000000e+00, ptr %22, align 8, !dbg !863, !tbaa !304
  call void @llvm.dbg.value(metadata i64 0, metadata !684, metadata !DIExpression()), !dbg !725
  %195 = icmp eq i64 %8, 0, !dbg !864
  br i1 %195, label %1236, label %196, !dbg !865

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !318
  %199 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  %200 = load i64, ptr %199, align 8, !tbaa !463
  %201 = icmp eq i64 %200, 1, !dbg !865
  br i1 %201, label %236, label %202, !dbg !865

202:                                              ; preds = %196
  %203 = and i64 %8, 1, !dbg !865
  %204 = icmp eq i64 %8, 1, !dbg !865
  br i1 %204, label %1191, label %205, !dbg !865

205:                                              ; preds = %202
  %206 = and i64 %8, -2, !dbg !865
  br label %207, !dbg !865

207:                                              ; preds = %207, %205
  %208 = phi i64 [ 0, %205 ], [ %233, %207 ]
  %209 = phi i64 [ 0, %205 ], [ %234, %207 ]
  call void @llvm.dbg.value(metadata i64 %208, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 %208, metadata !471, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !866
  %210 = mul i64 %208, %200, !dbg !868
  %211 = getelementptr double, ptr %198, i64 %210, !dbg !869
  %212 = load double, ptr %211, align 8, !dbg !869, !tbaa !304
  call void @llvm.dbg.value(metadata double %212, metadata !703, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %208, metadata !471, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !871
  %213 = getelementptr double, ptr %211, i64 1, !dbg !873
  %214 = load double, ptr %213, align 8, !dbg !873, !tbaa !304
  call void @llvm.dbg.value(metadata double %214, metadata !709, metadata !DIExpression()), !dbg !870
  %215 = fmul double %190, %212, !dbg !874
  %216 = fmul double %191, %214, !dbg !875
  %217 = fsub double %215, %216, !dbg !876
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 %208, metadata !312, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %217, metadata !314, metadata !DIExpression()), !dbg !877
  store double %217, ptr %211, align 8, !dbg !879, !tbaa !304
  %218 = fmul double %191, %212, !dbg !880
  %219 = fmul double %190, %214, !dbg !881
  %220 = fadd double %218, %219, !dbg !882
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %208, metadata !312, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %220, metadata !314, metadata !DIExpression()), !dbg !883
  store double %220, ptr %213, align 8, !dbg !885, !tbaa !304
  %221 = or disjoint i64 %208, 1, !dbg !886
  call void @llvm.dbg.value(metadata i64 %221, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %221, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 %221, metadata !471, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !866
  %222 = mul i64 %221, %200, !dbg !868
  %223 = getelementptr double, ptr %198, i64 %222, !dbg !869
  %224 = load double, ptr %223, align 8, !dbg !869, !tbaa !304
  call void @llvm.dbg.value(metadata double %224, metadata !703, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %221, metadata !471, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !871
  %225 = getelementptr double, ptr %223, i64 1, !dbg !873
  %226 = load double, ptr %225, align 8, !dbg !873, !tbaa !304
  call void @llvm.dbg.value(metadata double %226, metadata !709, metadata !DIExpression()), !dbg !870
  %227 = fmul double %190, %224, !dbg !874
  %228 = fmul double %191, %226, !dbg !875
  %229 = fsub double %227, %228, !dbg !876
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 %221, metadata !312, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %229, metadata !314, metadata !DIExpression()), !dbg !877
  store double %229, ptr %223, align 8, !dbg !879, !tbaa !304
  %230 = fmul double %191, %224, !dbg !880
  %231 = fmul double %190, %226, !dbg !881
  %232 = fadd double %230, %231, !dbg !882
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %221, metadata !312, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %232, metadata !314, metadata !DIExpression()), !dbg !883
  store double %232, ptr %225, align 8, !dbg !885, !tbaa !304
  %233 = add nuw i64 %208, 2, !dbg !886
  call void @llvm.dbg.value(metadata i64 %233, metadata !684, metadata !DIExpression()), !dbg !725
  %234 = add i64 %209, 2, !dbg !865
  %235 = icmp eq i64 %234, %206, !dbg !865
  br i1 %235, label %1191, label %207, !dbg !865, !llvm.loop !887

236:                                              ; preds = %196
  %237 = load double, ptr %198, align 8
  %238 = and i64 %8, 1, !dbg !865
  %239 = icmp eq i64 %8, 1, !dbg !865
  br i1 %239, label %1176, label %240, !dbg !865

240:                                              ; preds = %236
  %241 = and i64 %8, -2, !dbg !865
  br label %242, !dbg !865

242:                                              ; preds = %242, %240
  %243 = phi double [ %237, %240 ], [ %266, %242 ]
  %244 = phi i64 [ 0, %240 ], [ %267, %242 ]
  %245 = phi i64 [ 0, %240 ], [ %268, %242 ]
  call void @llvm.dbg.value(metadata i64 %244, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 %244, metadata !471, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !866
  %246 = mul nuw i64 %244, %200, !dbg !868
  %247 = getelementptr double, ptr %198, i64 %246, !dbg !869
  call void @llvm.dbg.value(metadata double %243, metadata !703, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %244, metadata !471, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !871
  %248 = getelementptr double, ptr %247, i64 1, !dbg !873
  %249 = load double, ptr %248, align 8, !dbg !873, !tbaa !304
  call void @llvm.dbg.value(metadata double %249, metadata !709, metadata !DIExpression()), !dbg !870
  %250 = fmul double %190, %243, !dbg !874
  %251 = fmul double %191, %249, !dbg !875
  %252 = fsub double %250, %251, !dbg !876
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 %244, metadata !312, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %252, metadata !314, metadata !DIExpression()), !dbg !877
  store double %252, ptr %247, align 8, !dbg !879, !tbaa !304
  %253 = fmul double %191, %243, !dbg !880
  %254 = fmul double %190, %249, !dbg !881
  %255 = fadd double %253, %254, !dbg !882
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %244, metadata !312, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %255, metadata !314, metadata !DIExpression()), !dbg !883
  store double %255, ptr %248, align 8, !dbg !885, !tbaa !304
  %256 = or disjoint i64 %244, 1, !dbg !886
  call void @llvm.dbg.value(metadata i64 %256, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %256, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 %256, metadata !471, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !866
  %257 = mul nuw i64 %256, %200, !dbg !868
  %258 = getelementptr double, ptr %198, i64 %257, !dbg !869
  call void @llvm.dbg.value(metadata double %255, metadata !703, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %256, metadata !471, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !871
  %259 = getelementptr double, ptr %258, i64 1, !dbg !873
  %260 = load double, ptr %259, align 8, !dbg !873, !tbaa !304
  call void @llvm.dbg.value(metadata double %260, metadata !709, metadata !DIExpression()), !dbg !870
  %261 = fmul double %190, %255, !dbg !874
  %262 = fmul double %191, %260, !dbg !875
  %263 = fsub double %261, %262, !dbg !876
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 %256, metadata !312, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %263, metadata !314, metadata !DIExpression()), !dbg !877
  store double %263, ptr %258, align 8, !dbg !879, !tbaa !304
  %264 = fmul double %191, %255, !dbg !880
  %265 = fmul double %190, %260, !dbg !881
  %266 = fadd double %264, %265, !dbg !882
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %256, metadata !312, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %266, metadata !314, metadata !DIExpression()), !dbg !883
  store double %266, ptr %259, align 8, !dbg !885, !tbaa !304
  %267 = add nuw i64 %244, 2, !dbg !886
  call void @llvm.dbg.value(metadata i64 %267, metadata !684, metadata !DIExpression()), !dbg !725
  %268 = add i64 %245, 2, !dbg !865
  %269 = icmp eq i64 %268, %241, !dbg !865
  br i1 %269, label %1176, label %242, !dbg !865, !llvm.loop !887

270:                                              ; preds = %166
  call void @llvm.dbg.assign(metadata i1 undef, metadata !889, metadata !DIExpression(), metadata !670, metadata ptr %5, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.assign(metadata i1 undef, metadata !903, metadata !DIExpression(), metadata !671, metadata ptr %6, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata double %20, metadata !896, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata double %23, metadata !897, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata double %26, metadata !898, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr undef, metadata !899, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr undef, metadata !900, metadata !DIExpression()), !dbg !910
  %271 = fmul double %20, 2.000000e+00, !dbg !911
  %272 = fmul double %271, %23, !dbg !912
  call void @llvm.dbg.value(metadata double %272, metadata !901, metadata !DIExpression()), !dbg !910
  %273 = fcmp oeq double %23, 0.000000e+00
  br i1 %273, label %325, label %274, !dbg !913

274:                                              ; preds = %270
  %275 = tail call double @llvm.fabs.f64(double %20), !dbg !915
  %276 = fcmp olt double %275, 0x2000000000000000, !dbg !916
  %277 = fcmp ogt double %275, 0x5FEFFFFFFFFFFFFF
  %278 = or i1 %276, %277, !dbg !917
  br i1 %278, label %289, label %279, !dbg !917

279:                                              ; preds = %274
  %280 = tail call double @llvm.fabs.f64(double %23), !dbg !918
  %281 = fcmp olt double %280, 0x2000000000000000, !dbg !919
  %282 = fcmp ogt double %280, 0x5FEFFFFFFFFFFFFF
  %283 = or i1 %281, %282, !dbg !920
  br i1 %283, label %289, label %284, !dbg !920

284:                                              ; preds = %279
  %285 = tail call double @llvm.fabs.f64(double %26), !dbg !921
  %286 = fcmp olt double %285, 0x2000000000000000, !dbg !922
  %287 = fcmp ogt double %285, 0x5FEFFFFFFFFFFFFF
  %288 = or i1 %286, %287, !dbg !923
  br i1 %288, label %289, label %302, !dbg !923

289:                                              ; preds = %284, %279, %274
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11, !dbg !924
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11, !dbg !924
  %290 = call double @frexp(double noundef %20, ptr noundef nonnull %5) #11, !dbg !925
  %291 = call double @frexp(double noundef %23, ptr noundef nonnull %6) #11, !dbg !926
  %292 = load i32, ptr %5, align 4, !dbg !927, !tbaa !928
  %293 = load i32, ptr %6, align 4, !dbg !929, !tbaa !928
  %294 = add nsw i32 %293, %292, !dbg !930
  %295 = sdiv i32 %294, -4, !dbg !931
  %296 = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %295) #11, !dbg !932
  call void @llvm.dbg.value(metadata double %296, metadata !902, metadata !DIExpression()), !dbg !908
  %297 = fmul double %20, %296, !dbg !933
  call void @llvm.dbg.value(metadata double %297, metadata !896, metadata !DIExpression()), !dbg !910
  %298 = fmul double %23, %296, !dbg !934
  call void @llvm.dbg.value(metadata double %298, metadata !897, metadata !DIExpression()), !dbg !910
  %299 = fmul double %26, %296, !dbg !935
  call void @llvm.dbg.value(metadata double %299, metadata !898, metadata !DIExpression()), !dbg !910
  %300 = fmul double %297, 2.000000e+00, !dbg !936
  %301 = fmul double %298, %300, !dbg !937
  call void @llvm.dbg.value(metadata double %301, metadata !901, metadata !DIExpression()), !dbg !910
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11, !dbg !938
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11, !dbg !938
  br label %302, !dbg !939

302:                                              ; preds = %289, %284
  %303 = phi double [ %299, %289 ], [ %26, %284 ]
  %304 = phi double [ %301, %289 ], [ %272, %284 ], !dbg !910
  %305 = phi double [ %298, %289 ], [ %23, %284 ]
  %306 = phi double [ %297, %289 ], [ %20, %284 ]
  call void @llvm.dbg.value(metadata double %306, metadata !896, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata double %305, metadata !897, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata double %304, metadata !901, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata double %303, metadata !898, metadata !DIExpression()), !dbg !910
  %307 = fcmp une double %304, 0.000000e+00, !dbg !940
  br i1 %307, label %308, label %325, !dbg !941

308:                                              ; preds = %302
  %309 = fmul double %305, %305, !dbg !942
  %310 = fadd double %303, %306, !dbg !943
  %311 = fsub double %303, %306, !dbg !944
  %312 = fmul double %310, %311, !dbg !945
  %313 = fadd double %309, %312, !dbg !946
  %314 = fdiv double %313, %304, !dbg !947
  call void @llvm.dbg.value(metadata double %314, metadata !907, metadata !DIExpression()), !dbg !948
  %315 = fcmp ult double %314, 0.000000e+00, !dbg !949
  %316 = tail call double @hypot(double noundef 1.000000e+00, double noundef %314) #11, !dbg !951
  %317 = fadd double %314, %316, !dbg !952
  %318 = fdiv double 1.000000e+00, %317, !dbg !952
  %319 = fsub double %316, %314, !dbg !952
  %320 = fdiv double -1.000000e+00, %319, !dbg !952
  %321 = select i1 %315, double %320, double %318, !dbg !952
  call void @llvm.dbg.value(metadata double %321, metadata !904, metadata !DIExpression()), !dbg !948
  %322 = tail call double @hypot(double noundef 1.000000e+00, double noundef %321) #11, !dbg !953
  %323 = fdiv double 1.000000e+00, %322, !dbg !954
  call void @llvm.dbg.value(metadata double %323, metadata !685, metadata !DIExpression()), !dbg !725
  %324 = fmul double %323, %321, !dbg !955
  br label %325, !dbg !956

325:                                              ; preds = %308, %302, %270
  %326 = phi double [ %323, %308 ], [ 1.000000e+00, %270 ], [ 1.000000e+00, %302 ], !dbg !910
  %327 = phi double [ %324, %308 ], [ 0.000000e+00, %270 ], [ 0.000000e+00, %302 ], !dbg !910
  call void @llvm.dbg.value(metadata double %326, metadata !685, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %327, metadata !686, metadata !DIExpression()), !dbg !725
  %328 = fmul double %20, %326, !dbg !957
  %329 = fmul double %23, %327, !dbg !958
  %330 = fsub double %328, %329, !dbg !959
  call void @llvm.dbg.value(metadata double %330, metadata !687, metadata !DIExpression()), !dbg !725
  %331 = fneg double %327, !dbg !960
  %332 = fmul double %26, %331, !dbg !961
  call void @llvm.dbg.value(metadata double %332, metadata !689, metadata !DIExpression()), !dbg !725
  %333 = fmul double %20, %327, !dbg !962
  %334 = fmul double %23, %326, !dbg !963
  %335 = fadd double %334, %333, !dbg !964
  call void @llvm.dbg.value(metadata double %335, metadata !688, metadata !DIExpression()), !dbg !725
  %336 = fmul double %26, %326, !dbg !965
  call void @llvm.dbg.value(metadata double %336, metadata !690, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 0, metadata !684, metadata !DIExpression()), !dbg !725
  %337 = icmp eq i64 %8, 0, !dbg !966
  br i1 %337, label %442, label %338, !dbg !967

338:                                              ; preds = %325
  %339 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %340 = load ptr, ptr %339, align 8, !tbaa !318
  %341 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  %342 = load i64, ptr %341, align 8, !tbaa !463
  %343 = icmp eq i64 %342, 1, !dbg !967
  br i1 %343, label %378, label %344, !dbg !967

344:                                              ; preds = %338
  %345 = and i64 %8, 1, !dbg !967
  %346 = icmp eq i64 %8, 1, !dbg !967
  br i1 %346, label %427, label %347, !dbg !967

347:                                              ; preds = %344
  %348 = and i64 %8, -2, !dbg !967
  br label %349, !dbg !967

349:                                              ; preds = %349, %347
  %350 = phi i64 [ 0, %347 ], [ %375, %349 ]
  %351 = phi i64 [ 0, %347 ], [ %376, %349 ]
  call void @llvm.dbg.value(metadata i64 %350, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %350, metadata !471, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !968
  %352 = mul i64 %350, %342, !dbg !970
  %353 = getelementptr double, ptr %340, i64 %352, !dbg !971
  %354 = load double, ptr %353, align 8, !dbg !971, !tbaa !304
  call void @llvm.dbg.value(metadata double %354, metadata !710, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 %350, metadata !471, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !973
  %355 = getelementptr double, ptr %353, i64 1, !dbg !975
  %356 = load double, ptr %355, align 8, !dbg !975, !tbaa !304
  call void @llvm.dbg.value(metadata double %356, metadata !715, metadata !DIExpression()), !dbg !972
  %357 = fmul double %326, %354, !dbg !976
  %358 = fmul double %327, %356, !dbg !977
  %359 = fsub double %357, %358, !dbg !978
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %350, metadata !312, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %359, metadata !314, metadata !DIExpression()), !dbg !979
  store double %359, ptr %353, align 8, !dbg !981, !tbaa !304
  %360 = fmul double %327, %354, !dbg !982
  %361 = fmul double %326, %356, !dbg !983
  %362 = fadd double %360, %361, !dbg !984
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 %350, metadata !312, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %362, metadata !314, metadata !DIExpression()), !dbg !985
  store double %362, ptr %355, align 8, !dbg !987, !tbaa !304
  %363 = or disjoint i64 %350, 1, !dbg !988
  call void @llvm.dbg.value(metadata i64 %363, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %363, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %363, metadata !471, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !968
  %364 = mul i64 %363, %342, !dbg !970
  %365 = getelementptr double, ptr %340, i64 %364, !dbg !971
  %366 = load double, ptr %365, align 8, !dbg !971, !tbaa !304
  call void @llvm.dbg.value(metadata double %366, metadata !710, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 %363, metadata !471, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !973
  %367 = getelementptr double, ptr %365, i64 1, !dbg !975
  %368 = load double, ptr %367, align 8, !dbg !975, !tbaa !304
  call void @llvm.dbg.value(metadata double %368, metadata !715, metadata !DIExpression()), !dbg !972
  %369 = fmul double %326, %366, !dbg !976
  %370 = fmul double %327, %368, !dbg !977
  %371 = fsub double %369, %370, !dbg !978
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %363, metadata !312, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %371, metadata !314, metadata !DIExpression()), !dbg !979
  store double %371, ptr %365, align 8, !dbg !981, !tbaa !304
  %372 = fmul double %327, %366, !dbg !982
  %373 = fmul double %326, %368, !dbg !983
  %374 = fadd double %372, %373, !dbg !984
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 %363, metadata !312, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %374, metadata !314, metadata !DIExpression()), !dbg !985
  store double %374, ptr %367, align 8, !dbg !987, !tbaa !304
  %375 = add nuw i64 %350, 2, !dbg !988
  call void @llvm.dbg.value(metadata i64 %375, metadata !684, metadata !DIExpression()), !dbg !725
  %376 = add i64 %351, 2, !dbg !967
  %377 = icmp eq i64 %376, %348, !dbg !967
  br i1 %377, label %427, label %349, !dbg !967, !llvm.loop !989

378:                                              ; preds = %338
  %379 = load double, ptr %340, align 8
  %380 = and i64 %8, 1, !dbg !967
  %381 = icmp eq i64 %8, 1, !dbg !967
  br i1 %381, label %412, label %382, !dbg !967

382:                                              ; preds = %378
  %383 = and i64 %8, -2, !dbg !967
  br label %384, !dbg !967

384:                                              ; preds = %384, %382
  %385 = phi double [ %379, %382 ], [ %408, %384 ]
  %386 = phi i64 [ 0, %382 ], [ %409, %384 ]
  %387 = phi i64 [ 0, %382 ], [ %410, %384 ]
  call void @llvm.dbg.value(metadata i64 %386, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %386, metadata !471, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !968
  %388 = mul nuw i64 %386, %342, !dbg !970
  %389 = getelementptr double, ptr %340, i64 %388, !dbg !971
  call void @llvm.dbg.value(metadata double %385, metadata !710, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 %386, metadata !471, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !973
  %390 = getelementptr double, ptr %389, i64 1, !dbg !975
  %391 = load double, ptr %390, align 8, !dbg !975, !tbaa !304
  call void @llvm.dbg.value(metadata double %391, metadata !715, metadata !DIExpression()), !dbg !972
  %392 = fmul double %326, %385, !dbg !976
  %393 = fmul double %327, %391, !dbg !977
  %394 = fsub double %392, %393, !dbg !978
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %386, metadata !312, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %394, metadata !314, metadata !DIExpression()), !dbg !979
  store double %394, ptr %389, align 8, !dbg !981, !tbaa !304
  %395 = fmul double %327, %385, !dbg !982
  %396 = fmul double %326, %391, !dbg !983
  %397 = fadd double %395, %396, !dbg !984
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 %386, metadata !312, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %397, metadata !314, metadata !DIExpression()), !dbg !985
  store double %397, ptr %390, align 8, !dbg !987, !tbaa !304
  %398 = or disjoint i64 %386, 1, !dbg !988
  call void @llvm.dbg.value(metadata i64 %398, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %398, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %398, metadata !471, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !968
  %399 = mul nuw i64 %398, %342, !dbg !970
  %400 = getelementptr double, ptr %340, i64 %399, !dbg !971
  call void @llvm.dbg.value(metadata double %397, metadata !710, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 %398, metadata !471, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !973
  %401 = getelementptr double, ptr %400, i64 1, !dbg !975
  %402 = load double, ptr %401, align 8, !dbg !975, !tbaa !304
  call void @llvm.dbg.value(metadata double %402, metadata !715, metadata !DIExpression()), !dbg !972
  %403 = fmul double %326, %397, !dbg !976
  %404 = fmul double %327, %402, !dbg !977
  %405 = fsub double %403, %404, !dbg !978
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %398, metadata !312, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %405, metadata !314, metadata !DIExpression()), !dbg !979
  store double %405, ptr %400, align 8, !dbg !981, !tbaa !304
  %406 = fmul double %327, %397, !dbg !982
  %407 = fmul double %326, %402, !dbg !983
  %408 = fadd double %406, %407, !dbg !984
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 %398, metadata !312, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %408, metadata !314, metadata !DIExpression()), !dbg !985
  store double %408, ptr %401, align 8, !dbg !987, !tbaa !304
  %409 = add nuw i64 %386, 2, !dbg !988
  call void @llvm.dbg.value(metadata i64 %409, metadata !684, metadata !DIExpression()), !dbg !725
  %410 = add i64 %387, 2, !dbg !967
  %411 = icmp eq i64 %410, %383, !dbg !967
  br i1 %411, label %412, label %384, !dbg !967, !llvm.loop !989

412:                                              ; preds = %384, %378
  %413 = phi double [ %379, %378 ], [ %408, %384 ]
  %414 = phi i64 [ 0, %378 ], [ %409, %384 ]
  %415 = icmp eq i64 %380, 0, !dbg !967
  br i1 %415, label %442, label %416, !dbg !967

416:                                              ; preds = %412
  call void @llvm.dbg.value(metadata i64 %414, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %414, metadata !471, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !968
  %417 = mul nuw i64 %414, %342, !dbg !970
  %418 = getelementptr double, ptr %340, i64 %417, !dbg !971
  call void @llvm.dbg.value(metadata double %413, metadata !710, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 %414, metadata !471, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !973
  %419 = getelementptr double, ptr %418, i64 1, !dbg !975
  %420 = load double, ptr %419, align 8, !dbg !975, !tbaa !304
  call void @llvm.dbg.value(metadata double %420, metadata !715, metadata !DIExpression()), !dbg !972
  %421 = fmul double %326, %413, !dbg !976
  %422 = fmul double %327, %420, !dbg !977
  %423 = fsub double %421, %422, !dbg !978
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %414, metadata !312, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %423, metadata !314, metadata !DIExpression()), !dbg !979
  store double %423, ptr %418, align 8, !dbg !981, !tbaa !304
  %424 = fmul double %327, %413, !dbg !982
  %425 = fmul double %326, %420, !dbg !983
  %426 = fadd double %424, %425, !dbg !984
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 %414, metadata !312, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %426, metadata !314, metadata !DIExpression()), !dbg !985
  store double %426, ptr %419, align 8, !dbg !987, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %414, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !725
  br label %442, !dbg !991

427:                                              ; preds = %349, %344
  %428 = phi i64 [ 0, %344 ], [ %375, %349 ]
  %429 = icmp eq i64 %345, 0, !dbg !967
  br i1 %429, label %442, label %430, !dbg !967

430:                                              ; preds = %427
  call void @llvm.dbg.value(metadata i64 %428, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 %428, metadata !471, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !968
  %431 = mul i64 %428, %342, !dbg !970
  %432 = getelementptr double, ptr %340, i64 %431, !dbg !971
  %433 = load double, ptr %432, align 8, !dbg !971, !tbaa !304
  call void @llvm.dbg.value(metadata double %433, metadata !710, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 %428, metadata !471, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !973
  %434 = getelementptr double, ptr %432, i64 1, !dbg !975
  %435 = load double, ptr %434, align 8, !dbg !975, !tbaa !304
  call void @llvm.dbg.value(metadata double %435, metadata !715, metadata !DIExpression()), !dbg !972
  %436 = fmul double %326, %433, !dbg !976
  %437 = fmul double %327, %435, !dbg !977
  %438 = fsub double %436, %437, !dbg !978
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 %428, metadata !312, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !979
  call void @llvm.dbg.value(metadata double %438, metadata !314, metadata !DIExpression()), !dbg !979
  store double %438, ptr %432, align 8, !dbg !981, !tbaa !304
  %439 = fmul double %327, %433, !dbg !982
  %440 = fmul double %326, %435, !dbg !983
  %441 = fadd double %439, %440, !dbg !984
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 %428, metadata !312, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.value(metadata double %441, metadata !314, metadata !DIExpression()), !dbg !985
  store double %441, ptr %434, align 8, !dbg !987, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %428, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !725
  br label %442, !dbg !991

442:                                              ; preds = %430, %427, %416, %412, %325
  %443 = tail call double @hypot(double noundef %330, double noundef %332) #11, !dbg !991
  %444 = tail call double @hypot(double noundef %335, double noundef %336) #11, !dbg !992
  %445 = fcmp olt double %443, %444, !dbg !993
  br i1 %445, label %446, label %448, !dbg !994

446:                                              ; preds = %442
  call void @llvm.dbg.value(metadata double %330, metadata !716, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata double %335, metadata !687, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %330, metadata !688, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %332, metadata !719, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata double %336, metadata !689, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %332, metadata !690, metadata !DIExpression()), !dbg !725
  %447 = tail call i32 @gsl_matrix_swap_columns(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 1) #11, !dbg !996
  br label %448, !dbg !997

448:                                              ; preds = %446, %442
  %449 = phi double [ %332, %446 ], [ %336, %442 ], !dbg !998
  %450 = phi double [ %336, %446 ], [ %332, %442 ], !dbg !998
  %451 = phi double [ %330, %446 ], [ %335, %442 ], !dbg !998
  %452 = phi double [ %335, %446 ], [ %330, %442 ], !dbg !998
  call void @llvm.dbg.value(metadata double %452, metadata !687, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %451, metadata !688, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %450, metadata !689, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %449, metadata !690, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %452, metadata !745, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata double %450, metadata !750, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata ptr undef, metadata !752, metadata !DIExpression()), !dbg !999
  %453 = fcmp oeq double %450, 0.000000e+00, !dbg !1001
  br i1 %453, label %474, label %454, !dbg !1002

454:                                              ; preds = %448
  %455 = tail call double @llvm.fabs.f64(double %450), !dbg !1003
  %456 = tail call double @llvm.fabs.f64(double %452), !dbg !1004
  %457 = fcmp ogt double %455, %456, !dbg !1005
  br i1 %457, label %458, label %466, !dbg !1006

458:                                              ; preds = %454
  %459 = fneg double %452, !dbg !1007
  %460 = fdiv double %459, %450, !dbg !1008
  call void @llvm.dbg.value(metadata double %460, metadata !753, metadata !DIExpression()), !dbg !1009
  %461 = fmul double %460, %460, !dbg !1010
  %462 = fadd double %461, 1.000000e+00, !dbg !1011
  %463 = tail call double @llvm.sqrt.f64(double %462), !dbg !1012
  %464 = fdiv double 1.000000e+00, %463, !dbg !1013
  call void @llvm.dbg.value(metadata double %464, metadata !757, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata double %464, metadata !686, metadata !DIExpression()), !dbg !725
  %465 = fmul double %460, %464, !dbg !1014
  call void @llvm.dbg.value(metadata double %465, metadata !685, metadata !DIExpression()), !dbg !725
  br label %474, !dbg !1015

466:                                              ; preds = %454
  %467 = fneg double %450, !dbg !1016
  %468 = fdiv double %467, %452, !dbg !1017
  call void @llvm.dbg.value(metadata double %468, metadata !758, metadata !DIExpression()), !dbg !1018
  %469 = fmul double %468, %468, !dbg !1019
  %470 = fadd double %469, 1.000000e+00, !dbg !1020
  %471 = tail call double @llvm.sqrt.f64(double %470), !dbg !1021
  %472 = fdiv double 1.000000e+00, %471, !dbg !1022
  call void @llvm.dbg.value(metadata double %472, metadata !760, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata double %472, metadata !685, metadata !DIExpression()), !dbg !725
  %473 = fmul double %468, %472, !dbg !1023
  call void @llvm.dbg.value(metadata double %473, metadata !686, metadata !DIExpression()), !dbg !725
  br label %474

474:                                              ; preds = %466, %458, %448
  %475 = phi double [ %465, %458 ], [ %472, %466 ], [ 1.000000e+00, %448 ], !dbg !1024
  %476 = phi double [ %464, %458 ], [ %473, %466 ], [ 0.000000e+00, %448 ], !dbg !1024
  call void @llvm.dbg.value(metadata double %476, metadata !686, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata double %475, metadata !685, metadata !DIExpression()), !dbg !725
  %477 = fmul double %452, %475, !dbg !1025
  %478 = fmul double %450, %476, !dbg !1026
  %479 = fsub double %477, %478, !dbg !1027
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata double %479, metadata !298, metadata !DIExpression()), !dbg !1028
  %480 = load ptr, ptr %17, align 8, !dbg !1030, !tbaa !302
  store double %479, ptr %480, align 8, !dbg !1031, !tbaa !304
  %481 = fmul double %451, %475, !dbg !1032
  %482 = fmul double %449, %476, !dbg !1033
  %483 = fsub double %481, %482, !dbg !1034
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !1035
  call void @llvm.dbg.value(metadata double %483, metadata !298, metadata !DIExpression()), !dbg !1035
  %484 = load ptr, ptr %21, align 8, !dbg !1037, !tbaa !302
  store double %483, ptr %484, align 8, !dbg !1038, !tbaa !304
  %485 = fmul double %451, %476, !dbg !1039
  %486 = fmul double %449, %475, !dbg !1040
  %487 = fadd double %486, %485, !dbg !1041
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata i64 1, metadata !297, metadata !DIExpression()), !dbg !1042
  call void @llvm.dbg.value(metadata double %487, metadata !298, metadata !DIExpression()), !dbg !1042
  %488 = load i64, ptr %19, align 8, !dbg !1044, !tbaa !349
  %489 = getelementptr inbounds double, ptr %480, i64 %488, !dbg !1045
  store double %487, ptr %489, align 8, !dbg !1046, !tbaa !304
  call void @llvm.dbg.value(metadata i64 0, metadata !684, metadata !DIExpression()), !dbg !725
  %490 = icmp eq i64 %7, 0, !dbg !1047
  br i1 %490, label %1236, label %491, !dbg !1048

491:                                              ; preds = %474
  %492 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !318
  %494 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %495 = load i64, ptr %494, align 8, !tbaa !463
  %496 = icmp eq i64 %495, 1, !dbg !1048
  br i1 %496, label %531, label %497, !dbg !1048

497:                                              ; preds = %491
  %498 = and i64 %7, 1, !dbg !1048
  %499 = icmp eq i64 %7, 1, !dbg !1048
  br i1 %499, label %1221, label %500, !dbg !1048

500:                                              ; preds = %497
  %501 = and i64 %7, -2, !dbg !1048
  br label %502, !dbg !1048

502:                                              ; preds = %502, %500
  %503 = phi i64 [ 0, %500 ], [ %528, %502 ]
  %504 = phi i64 [ 0, %500 ], [ %529, %502 ]
  call void @llvm.dbg.value(metadata i64 %503, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %503, metadata !471, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1049
  %505 = mul i64 %503, %495, !dbg !1051
  %506 = getelementptr double, ptr %493, i64 %505, !dbg !1052
  %507 = load double, ptr %506, align 8, !dbg !1052, !tbaa !304
  call void @llvm.dbg.value(metadata double %507, metadata !720, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %503, metadata !471, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1054
  %508 = getelementptr double, ptr %506, i64 1, !dbg !1056
  %509 = load double, ptr %508, align 8, !dbg !1056, !tbaa !304
  call void @llvm.dbg.value(metadata double %509, metadata !724, metadata !DIExpression()), !dbg !1053
  %510 = fmul double %475, %507, !dbg !1057
  %511 = fmul double %476, %509, !dbg !1058
  %512 = fsub double %510, %511, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 %503, metadata !312, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata double %512, metadata !314, metadata !DIExpression()), !dbg !1060
  store double %512, ptr %506, align 8, !dbg !1062, !tbaa !304
  %513 = fmul double %476, %507, !dbg !1063
  %514 = fmul double %475, %509, !dbg !1064
  %515 = fadd double %513, %514, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %503, metadata !312, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata double %515, metadata !314, metadata !DIExpression()), !dbg !1066
  store double %515, ptr %508, align 8, !dbg !1068, !tbaa !304
  %516 = or disjoint i64 %503, 1, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %516, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %516, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %516, metadata !471, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1049
  %517 = mul i64 %516, %495, !dbg !1051
  %518 = getelementptr double, ptr %493, i64 %517, !dbg !1052
  %519 = load double, ptr %518, align 8, !dbg !1052, !tbaa !304
  call void @llvm.dbg.value(metadata double %519, metadata !720, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %516, metadata !471, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1054
  %520 = getelementptr double, ptr %518, i64 1, !dbg !1056
  %521 = load double, ptr %520, align 8, !dbg !1056, !tbaa !304
  call void @llvm.dbg.value(metadata double %521, metadata !724, metadata !DIExpression()), !dbg !1053
  %522 = fmul double %475, %519, !dbg !1057
  %523 = fmul double %476, %521, !dbg !1058
  %524 = fsub double %522, %523, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 %516, metadata !312, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata double %524, metadata !314, metadata !DIExpression()), !dbg !1060
  store double %524, ptr %518, align 8, !dbg !1062, !tbaa !304
  %525 = fmul double %476, %519, !dbg !1063
  %526 = fmul double %475, %521, !dbg !1064
  %527 = fadd double %525, %526, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %516, metadata !312, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata double %527, metadata !314, metadata !DIExpression()), !dbg !1066
  store double %527, ptr %520, align 8, !dbg !1068, !tbaa !304
  %528 = add nuw i64 %503, 2, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %528, metadata !684, metadata !DIExpression()), !dbg !725
  %529 = add i64 %504, 2, !dbg !1048
  %530 = icmp eq i64 %529, %501, !dbg !1048
  br i1 %530, label %1221, label %502, !dbg !1048, !llvm.loop !1070

531:                                              ; preds = %491
  %532 = load double, ptr %493, align 8
  %533 = and i64 %7, 1, !dbg !1048
  %534 = icmp eq i64 %7, 1, !dbg !1048
  br i1 %534, label %1206, label %535, !dbg !1048

535:                                              ; preds = %531
  %536 = and i64 %7, -2, !dbg !1048
  br label %537, !dbg !1048

537:                                              ; preds = %537, %535
  %538 = phi double [ %532, %535 ], [ %561, %537 ]
  %539 = phi i64 [ 0, %535 ], [ %562, %537 ]
  %540 = phi i64 [ 0, %535 ], [ %563, %537 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %539, metadata !471, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1049
  %541 = mul nuw i64 %539, %495, !dbg !1051
  %542 = getelementptr double, ptr %493, i64 %541, !dbg !1052
  call void @llvm.dbg.value(metadata double %538, metadata !720, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %539, metadata !471, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1054
  %543 = getelementptr double, ptr %542, i64 1, !dbg !1056
  %544 = load double, ptr %543, align 8, !dbg !1056, !tbaa !304
  call void @llvm.dbg.value(metadata double %544, metadata !724, metadata !DIExpression()), !dbg !1053
  %545 = fmul double %475, %538, !dbg !1057
  %546 = fmul double %476, %544, !dbg !1058
  %547 = fsub double %545, %546, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 %539, metadata !312, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata double %547, metadata !314, metadata !DIExpression()), !dbg !1060
  store double %547, ptr %542, align 8, !dbg !1062, !tbaa !304
  %548 = fmul double %476, %538, !dbg !1063
  %549 = fmul double %475, %544, !dbg !1064
  %550 = fadd double %548, %549, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %539, metadata !312, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata double %550, metadata !314, metadata !DIExpression()), !dbg !1066
  store double %550, ptr %543, align 8, !dbg !1068, !tbaa !304
  %551 = or disjoint i64 %539, 1, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %551, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i64 %551, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %551, metadata !471, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1049
  %552 = mul nuw i64 %551, %495, !dbg !1051
  %553 = getelementptr double, ptr %493, i64 %552, !dbg !1052
  call void @llvm.dbg.value(metadata double %550, metadata !720, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %551, metadata !471, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1054
  %554 = getelementptr double, ptr %553, i64 1, !dbg !1056
  %555 = load double, ptr %554, align 8, !dbg !1056, !tbaa !304
  call void @llvm.dbg.value(metadata double %555, metadata !724, metadata !DIExpression()), !dbg !1053
  %556 = fmul double %475, %550, !dbg !1057
  %557 = fmul double %476, %555, !dbg !1058
  %558 = fsub double %556, %557, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 %551, metadata !312, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata double %558, metadata !314, metadata !DIExpression()), !dbg !1060
  store double %558, ptr %553, align 8, !dbg !1062, !tbaa !304
  %559 = fmul double %476, %550, !dbg !1063
  %560 = fmul double %475, %555, !dbg !1064
  %561 = fadd double %559, %560, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %551, metadata !312, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata double %561, metadata !314, metadata !DIExpression()), !dbg !1066
  store double %561, ptr %554, align 8, !dbg !1068, !tbaa !304
  %562 = add nuw i64 %539, 2, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %562, metadata !684, metadata !DIExpression()), !dbg !725
  %563 = add i64 %540, 2, !dbg !1048
  %564 = icmp eq i64 %563, %536, !dbg !1048
  br i1 %564, label %1206, label %537, !dbg !1048, !llvm.loop !1070

565:                                              ; preds = %10, %699
  %566 = phi i64 [ 0, %10 ], [ %700, %699 ]
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1072
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !344, metadata !DIExpression()), !dbg !1072
  %567 = mul i64 %15, %566, !dbg !1074
  %568 = getelementptr inbounds double, ptr %13, i64 %567, !dbg !1075
  %569 = load double, ptr %568, align 8, !dbg !1075, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %569, metadata !631, metadata !DIExpression()), !dbg !1076
  %570 = fcmp une double %569, 0.000000e+00, !dbg !1077
  br i1 %570, label %699, label %571, !dbg !1079

571:                                              ; preds = %565
  call void @llvm.dbg.value(metadata ptr %0, metadata !1080, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %1, metadata !1085, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %2, metadata !1086, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %566, metadata !1087, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %7, metadata !1088, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %9, metadata !1089, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %566, metadata !344, metadata !DIExpression()), !dbg !1111
  %572 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2, !dbg !1113
  %573 = load ptr, ptr %572, align 8, !dbg !1113, !tbaa !302
  %574 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1, !dbg !1114
  %575 = load i64, ptr %574, align 8, !dbg !1114, !tbaa !349
  call void @llvm.dbg.value(metadata double poison, metadata !1092, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %566, metadata !344, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1115
  call void @llvm.dbg.value(metadata double poison, metadata !1093, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %566, metadata !1094, metadata !DIExpression()), !dbg !1108
  %576 = add nuw i64 %566, 1, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %576, metadata !344, metadata !DIExpression()), !dbg !1115
  %577 = mul i64 %15, %576, !dbg !1118
  %578 = getelementptr inbounds double, ptr %13, i64 %577, !dbg !1119
  %579 = load double, ptr %578, align 8, !dbg !1119, !tbaa !304
  call void @llvm.dbg.value(metadata double %579, metadata !1093, metadata !DIExpression()), !dbg !1108
  %580 = mul i64 %575, %566, !dbg !1120
  %581 = getelementptr inbounds double, ptr %573, i64 %580, !dbg !1121
  %582 = load double, ptr %581, align 8, !dbg !1121, !tbaa !304
  call void @llvm.dbg.value(metadata double %582, metadata !1092, metadata !DIExpression()), !dbg !1108
  %583 = icmp eq i64 %7, 0
  %584 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %585 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %586 = add i64 %9, -2
  %587 = and i64 %7, 1
  %588 = icmp eq i64 %7, 1
  %589 = and i64 %7, -2
  %590 = icmp eq i64 %587, 0
  br label %591, !dbg !1122

591:                                              ; preds = %695, %571
  %592 = phi double [ %582, %571 ], [ %697, %695 ]
  %593 = phi double [ %579, %571 ], [ %696, %695 ]
  %594 = phi i64 [ %566, %571 ], [ %671, %695 ]
  call void @llvm.dbg.value(metadata double %592, metadata !1092, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata double %593, metadata !1093, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %594, metadata !1094, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata double %593, metadata !745, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata double poison, metadata !750, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr undef, metadata !752, metadata !DIExpression()), !dbg !1123
  %595 = fcmp oeq double %592, 0.000000e+00, !dbg !1125
  br i1 %595, label %615, label %596, !dbg !1126

596:                                              ; preds = %591
  %597 = fneg double %592, !dbg !1127
  call void @llvm.dbg.value(metadata double %597, metadata !750, metadata !DIExpression()), !dbg !1123
  %598 = tail call double @llvm.fabs.f64(double %597), !dbg !1128
  %599 = tail call double @llvm.fabs.f64(double %593), !dbg !1129
  %600 = fcmp ogt double %598, %599, !dbg !1130
  br i1 %600, label %601, label %608, !dbg !1131

601:                                              ; preds = %596
  %602 = fdiv double %593, %592, !dbg !1132
  call void @llvm.dbg.value(metadata double %602, metadata !753, metadata !DIExpression()), !dbg !1133
  %603 = fmul double %602, %602, !dbg !1134
  %604 = fadd double %603, 1.000000e+00, !dbg !1135
  %605 = tail call double @llvm.sqrt.f64(double %604), !dbg !1136
  %606 = fdiv double 1.000000e+00, %605, !dbg !1137
  call void @llvm.dbg.value(metadata double %606, metadata !757, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata double %606, metadata !1091, metadata !DIExpression()), !dbg !1108
  %607 = fmul double %602, %606, !dbg !1138
  call void @llvm.dbg.value(metadata double %607, metadata !1090, metadata !DIExpression()), !dbg !1108
  br label %615, !dbg !1139

608:                                              ; preds = %596
  %609 = fdiv double %592, %593, !dbg !1140
  call void @llvm.dbg.value(metadata double %609, metadata !758, metadata !DIExpression()), !dbg !1141
  %610 = fmul double %609, %609, !dbg !1142
  %611 = fadd double %610, 1.000000e+00, !dbg !1143
  %612 = tail call double @llvm.sqrt.f64(double %611), !dbg !1144
  %613 = fdiv double 1.000000e+00, %612, !dbg !1145
  call void @llvm.dbg.value(metadata double %613, metadata !760, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.value(metadata double %613, metadata !1090, metadata !DIExpression()), !dbg !1108
  %614 = fmul double %609, %613, !dbg !1146
  call void @llvm.dbg.value(metadata double %614, metadata !1091, metadata !DIExpression()), !dbg !1108
  br label %615

615:                                              ; preds = %608, %601, %591
  %616 = phi double [ %607, %601 ], [ %613, %608 ], [ 1.000000e+00, %591 ], !dbg !1147
  %617 = phi double [ %606, %601 ], [ %614, %608 ], [ 0.000000e+00, %591 ], !dbg !1147
  call void @llvm.dbg.value(metadata double %617, metadata !1091, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata double %616, metadata !1090, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 0, metadata !1095, metadata !DIExpression()), !dbg !1148
  br i1 %583, label %670, label %618, !dbg !1149

618:                                              ; preds = %615
  %619 = load ptr, ptr %584, align 8, !tbaa !318
  %620 = load i64, ptr %585, align 8, !tbaa !463
  br i1 %588, label %654, label %621, !dbg !1149

621:                                              ; preds = %618, %621
  %622 = phi i64 [ %651, %621 ], [ 0, %618 ]
  %623 = phi i64 [ %652, %621 ], [ 0, %618 ]
  call void @llvm.dbg.value(metadata i64 %622, metadata !1095, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %622, metadata !471, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %566, metadata !472, metadata !DIExpression()), !dbg !1150
  %624 = mul i64 %622, %620, !dbg !1152
  %625 = getelementptr double, ptr %619, i64 %624, !dbg !1153
  %626 = getelementptr double, ptr %625, i64 %566, !dbg !1153
  %627 = load double, ptr %626, align 8, !dbg !1153, !tbaa !304
  call void @llvm.dbg.value(metadata double %627, metadata !1100, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %622, metadata !471, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %594, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1155
  %628 = getelementptr double, ptr %625, i64 %594, !dbg !1157
  %629 = getelementptr double, ptr %628, i64 1, !dbg !1157
  %630 = load double, ptr %629, align 8, !dbg !1157, !tbaa !304
  call void @llvm.dbg.value(metadata double %630, metadata !1104, metadata !DIExpression()), !dbg !1154
  %631 = fmul double %616, %627, !dbg !1158
  %632 = fmul double %617, %630, !dbg !1159
  %633 = fsub double %631, %632, !dbg !1160
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %622, metadata !312, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %566, metadata !313, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %633, metadata !314, metadata !DIExpression()), !dbg !1161
  store double %633, ptr %626, align 8, !dbg !1163, !tbaa !304
  %634 = fmul double %617, %627, !dbg !1164
  %635 = fmul double %616, %630, !dbg !1165
  %636 = fadd double %634, %635, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %622, metadata !312, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %594, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1167
  call void @llvm.dbg.value(metadata double %636, metadata !314, metadata !DIExpression()), !dbg !1167
  store double %636, ptr %629, align 8, !dbg !1169, !tbaa !304
  %637 = or disjoint i64 %622, 1, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %637, metadata !1095, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %637, metadata !1095, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %637, metadata !471, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %566, metadata !472, metadata !DIExpression()), !dbg !1150
  %638 = mul i64 %637, %620, !dbg !1152
  %639 = getelementptr double, ptr %619, i64 %638, !dbg !1153
  %640 = getelementptr double, ptr %639, i64 %566, !dbg !1153
  %641 = load double, ptr %640, align 8, !dbg !1153, !tbaa !304
  call void @llvm.dbg.value(metadata double %641, metadata !1100, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %637, metadata !471, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %594, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1155
  %642 = getelementptr double, ptr %639, i64 %594, !dbg !1157
  %643 = getelementptr double, ptr %642, i64 1, !dbg !1157
  %644 = load double, ptr %643, align 8, !dbg !1157, !tbaa !304
  call void @llvm.dbg.value(metadata double %644, metadata !1104, metadata !DIExpression()), !dbg !1154
  %645 = fmul double %616, %641, !dbg !1158
  %646 = fmul double %617, %644, !dbg !1159
  %647 = fsub double %645, %646, !dbg !1160
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %637, metadata !312, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %566, metadata !313, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %647, metadata !314, metadata !DIExpression()), !dbg !1161
  store double %647, ptr %640, align 8, !dbg !1163, !tbaa !304
  %648 = fmul double %617, %641, !dbg !1164
  %649 = fmul double %616, %644, !dbg !1165
  %650 = fadd double %648, %649, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %637, metadata !312, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %594, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1167
  call void @llvm.dbg.value(metadata double %650, metadata !314, metadata !DIExpression()), !dbg !1167
  store double %650, ptr %643, align 8, !dbg !1169, !tbaa !304
  %651 = add nuw i64 %622, 2, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %651, metadata !1095, metadata !DIExpression()), !dbg !1148
  %652 = add i64 %623, 2, !dbg !1149
  %653 = icmp eq i64 %652, %589, !dbg !1149
  br i1 %653, label %654, label %621, !dbg !1149, !llvm.loop !1171

654:                                              ; preds = %621, %618
  %655 = phi i64 [ 0, %618 ], [ %651, %621 ]
  br i1 %590, label %670, label %656, !dbg !1149

656:                                              ; preds = %654
  call void @llvm.dbg.value(metadata i64 %655, metadata !1095, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %655, metadata !471, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %566, metadata !472, metadata !DIExpression()), !dbg !1150
  %657 = mul i64 %655, %620, !dbg !1152
  %658 = getelementptr double, ptr %619, i64 %657, !dbg !1153
  %659 = getelementptr double, ptr %658, i64 %566, !dbg !1153
  %660 = load double, ptr %659, align 8, !dbg !1153, !tbaa !304
  call void @llvm.dbg.value(metadata double %660, metadata !1100, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %655, metadata !471, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %594, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1155
  %661 = getelementptr double, ptr %658, i64 %594, !dbg !1157
  %662 = getelementptr double, ptr %661, i64 1, !dbg !1157
  %663 = load double, ptr %662, align 8, !dbg !1157, !tbaa !304
  call void @llvm.dbg.value(metadata double %663, metadata !1104, metadata !DIExpression()), !dbg !1154
  %664 = fmul double %616, %660, !dbg !1158
  %665 = fmul double %617, %663, !dbg !1159
  %666 = fsub double %664, %665, !dbg !1160
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %655, metadata !312, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %566, metadata !313, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %666, metadata !314, metadata !DIExpression()), !dbg !1161
  store double %666, ptr %659, align 8, !dbg !1163, !tbaa !304
  %667 = fmul double %617, %660, !dbg !1164
  %668 = fmul double %616, %663, !dbg !1165
  %669 = fadd double %667, %668, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %655, metadata !312, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %594, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1167
  call void @llvm.dbg.value(metadata double %669, metadata !314, metadata !DIExpression()), !dbg !1167
  store double %669, ptr %662, align 8, !dbg !1169, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %655, metadata !1095, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1148
  br label %670, !dbg !1173

670:                                              ; preds = %656, %654, %615
  %671 = add nuw i64 %594, 1, !dbg !1173
  %672 = fmul double %592, %617, !dbg !1174
  %673 = fmul double %593, %616, !dbg !1175
  %674 = fadd double %673, %672, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %671, metadata !297, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata double %674, metadata !298, metadata !DIExpression()), !dbg !1177
  %675 = mul i64 %671, %15, !dbg !1179
  %676 = getelementptr inbounds double, ptr %13, i64 %675, !dbg !1180
  store double %674, ptr %676, align 8, !dbg !1181, !tbaa !304
  %677 = icmp eq i64 %594, %566, !dbg !1182
  br i1 %677, label %678, label %682, !dbg !1184

678:                                              ; preds = %670
  %679 = fmul double %592, %616, !dbg !1185
  %680 = fmul double %593, %617, !dbg !1186
  %681 = fsub double %679, %680, !dbg !1187
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %594, metadata !297, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata double %681, metadata !298, metadata !DIExpression()), !dbg !1188
  store double %681, ptr %581, align 8, !dbg !1190, !tbaa !304
  br label %682, !dbg !1191

682:                                              ; preds = %678, %670
  %683 = icmp ult i64 %594, %586, !dbg !1192
  br i1 %683, label %684, label %695, !dbg !1193

684:                                              ; preds = %682
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i64 %671, metadata !344, metadata !DIExpression()), !dbg !1194
  %685 = mul i64 %671, %575, !dbg !1196
  %686 = getelementptr inbounds double, ptr %573, i64 %685, !dbg !1197
  %687 = load double, ptr %686, align 8, !dbg !1197, !tbaa !304
  call void @llvm.dbg.value(metadata double %687, metadata !1105, metadata !DIExpression()), !dbg !1198
  %688 = fmul double %616, %687, !dbg !1199
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata i64 %671, metadata !297, metadata !DIExpression()), !dbg !1200
  call void @llvm.dbg.value(metadata double %688, metadata !298, metadata !DIExpression()), !dbg !1200
  store double %688, ptr %686, align 8, !dbg !1202, !tbaa !304
  %689 = fneg double %617, !dbg !1203
  %690 = fmul double %687, %689, !dbg !1204
  call void @llvm.dbg.value(metadata double %690, metadata !1092, metadata !DIExpression()), !dbg !1108
  %691 = add i64 %594, 2, !dbg !1205
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %691, metadata !344, metadata !DIExpression()), !dbg !1206
  %692 = mul i64 %691, %15, !dbg !1208
  %693 = getelementptr inbounds double, ptr %13, i64 %692, !dbg !1209
  %694 = load double, ptr %693, align 8, !dbg !1209, !tbaa !304
  call void @llvm.dbg.value(metadata double %694, metadata !1093, metadata !DIExpression()), !dbg !1108
  br label %695, !dbg !1210

695:                                              ; preds = %684, %682
  %696 = phi double [ %694, %684 ], [ %593, %682 ], !dbg !1108
  %697 = phi double [ %690, %684 ], [ %592, %682 ], !dbg !1108
  call void @llvm.dbg.value(metadata double %697, metadata !1092, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata double %696, metadata !1093, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i64 %671, metadata !1094, metadata !DIExpression()), !dbg !1108
  %698 = icmp eq i64 %671, %11, !dbg !1211
  br i1 %698, label %1236, label %591, !dbg !1122, !llvm.loop !1212

699:                                              ; preds = %565
  %700 = add nuw i64 %566, 1, !dbg !1214
  tail call void @llvm.dbg.value(metadata i64 %700, metadata !629, metadata !DIExpression()), !dbg !672
  %701 = icmp eq i64 %700, %11, !dbg !1215
  br i1 %701, label %702, label %565, !dbg !677, !llvm.loop !1216

702:                                              ; preds = %699
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1218
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !344, metadata !DIExpression()), !dbg !1218
  %703 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 2, !dbg !1220
  %704 = getelementptr inbounds %struct.gsl_vector, ptr %0, i64 0, i32 1, !dbg !1221
  %705 = mul i64 %15, %11, !dbg !1222
  %706 = getelementptr inbounds double, ptr %13, i64 %705, !dbg !1223
  %707 = load double, ptr %706, align 8, !dbg !1223, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %707, metadata !635, metadata !DIExpression()), !dbg !1224
  %708 = fcmp une double %707, 0.000000e+00, !dbg !1225
  %709 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2, !dbg !672
  %710 = load ptr, ptr %709, align 8, !dbg !672, !tbaa !302
  %711 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1, !dbg !672
  br i1 %708, label %794, label %712, !dbg !1227

712:                                              ; preds = %702
  call void @llvm.dbg.value(metadata ptr %0, metadata !1228, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata ptr %1, metadata !1233, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata ptr %3, metadata !1234, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %8, metadata !1235, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %9, metadata !1236, metadata !DIExpression()), !dbg !1255
  %713 = add i64 %9, -2, !dbg !1258
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i64 %713, metadata !344, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata double poison, metadata !1239, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i64 %713, metadata !344, metadata !DIExpression()), !dbg !1261
  %714 = load i64, ptr %711, align 8, !dbg !1263, !tbaa !349
  call void @llvm.dbg.value(metadata double poison, metadata !1240, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %713, metadata !1241, metadata !DIExpression()), !dbg !1255
  %715 = mul i64 %714, %713, !dbg !1264
  %716 = getelementptr inbounds double, ptr %710, i64 %715, !dbg !1265
  %717 = load double, ptr %716, align 8, !dbg !1265, !tbaa !304
  call void @llvm.dbg.value(metadata double %717, metadata !1240, metadata !DIExpression()), !dbg !1255
  %718 = mul i64 %15, %713, !dbg !1266
  %719 = icmp eq i64 %8, 0
  %720 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %721 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  br label %722, !dbg !1267

722:                                              ; preds = %785, %712
  %723 = phi i64 [ %713, %712 ], [ %793, %785 ]
  %724 = phi i64 [ %718, %712 ], [ %791, %785 ]
  %725 = phi double [ %717, %712 ], [ %792, %785 ]
  %726 = phi i64 [ %11, %712 ], [ %723, %785 ]
  %727 = getelementptr inbounds double, ptr %13, i64 %724, !dbg !1268
  %728 = load double, ptr %727, align 8, !dbg !1268, !tbaa !304
  call void @llvm.dbg.value(metadata double %728, metadata !1239, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata double %725, metadata !1240, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %726, metadata !1241, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata double %728, metadata !745, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata double %725, metadata !750, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !1270
  call void @llvm.dbg.value(metadata ptr undef, metadata !752, metadata !DIExpression()), !dbg !1270
  %729 = fcmp oeq double %725, 0.000000e+00, !dbg !1272
  br i1 %729, label %750, label %730, !dbg !1273

730:                                              ; preds = %722
  %731 = tail call double @llvm.fabs.f64(double %725), !dbg !1274
  %732 = tail call double @llvm.fabs.f64(double %728), !dbg !1275
  %733 = fcmp ogt double %731, %732, !dbg !1276
  br i1 %733, label %734, label %742, !dbg !1277

734:                                              ; preds = %730
  %735 = fneg double %728, !dbg !1278
  %736 = fdiv double %735, %725, !dbg !1279
  call void @llvm.dbg.value(metadata double %736, metadata !753, metadata !DIExpression()), !dbg !1280
  %737 = fmul double %736, %736, !dbg !1281
  %738 = fadd double %737, 1.000000e+00, !dbg !1282
  %739 = tail call double @llvm.sqrt.f64(double %738), !dbg !1283
  %740 = fdiv double 1.000000e+00, %739, !dbg !1284
  call void @llvm.dbg.value(metadata double %740, metadata !757, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata double %740, metadata !1238, metadata !DIExpression()), !dbg !1255
  %741 = fmul double %736, %740, !dbg !1285
  call void @llvm.dbg.value(metadata double %741, metadata !1237, metadata !DIExpression()), !dbg !1255
  br label %750, !dbg !1286

742:                                              ; preds = %730
  %743 = fneg double %725, !dbg !1287
  %744 = fdiv double %743, %728, !dbg !1288
  call void @llvm.dbg.value(metadata double %744, metadata !758, metadata !DIExpression()), !dbg !1289
  %745 = fmul double %744, %744, !dbg !1290
  %746 = fadd double %745, 1.000000e+00, !dbg !1291
  %747 = tail call double @llvm.sqrt.f64(double %746), !dbg !1292
  %748 = fdiv double 1.000000e+00, %747, !dbg !1293
  call void @llvm.dbg.value(metadata double %748, metadata !760, metadata !DIExpression()), !dbg !1289
  call void @llvm.dbg.value(metadata double %748, metadata !1237, metadata !DIExpression()), !dbg !1255
  %749 = fmul double %744, %748, !dbg !1294
  call void @llvm.dbg.value(metadata double %749, metadata !1238, metadata !DIExpression()), !dbg !1255
  br label %750

750:                                              ; preds = %742, %734, %722
  %751 = phi double [ %741, %734 ], [ %748, %742 ], [ 1.000000e+00, %722 ], !dbg !1295
  %752 = phi double [ %740, %734 ], [ %749, %742 ], [ 0.000000e+00, %722 ], !dbg !1295
  call void @llvm.dbg.value(metadata double %752, metadata !1238, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata double %751, metadata !1237, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 0, metadata !1242, metadata !DIExpression()), !dbg !1296
  br i1 %719, label %772, label %753, !dbg !1297

753:                                              ; preds = %750
  %754 = load ptr, ptr %720, align 8, !tbaa !318
  %755 = load i64, ptr %721, align 8, !tbaa !463
  br label %756, !dbg !1297

756:                                              ; preds = %756, %753
  %757 = phi i64 [ 0, %753 ], [ %770, %756 ]
  call void @llvm.dbg.value(metadata i64 %757, metadata !1242, metadata !DIExpression()), !dbg !1296
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %757, metadata !471, metadata !DIExpression()), !dbg !1298
  call void @llvm.dbg.value(metadata i64 %723, metadata !472, metadata !DIExpression()), !dbg !1298
  %758 = mul i64 %757, %755, !dbg !1300
  %759 = getelementptr double, ptr %754, i64 %758, !dbg !1301
  %760 = getelementptr double, ptr %759, i64 %723, !dbg !1301
  %761 = load double, ptr %760, align 8, !dbg !1301, !tbaa !304
  call void @llvm.dbg.value(metadata double %761, metadata !1247, metadata !DIExpression()), !dbg !1302
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %757, metadata !471, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.value(metadata i64 %11, metadata !472, metadata !DIExpression()), !dbg !1303
  %762 = getelementptr double, ptr %759, i64 %11, !dbg !1305
  %763 = load double, ptr %762, align 8, !dbg !1305, !tbaa !304
  call void @llvm.dbg.value(metadata double %763, metadata !1251, metadata !DIExpression()), !dbg !1302
  %764 = fmul double %751, %761, !dbg !1306
  %765 = fmul double %752, %763, !dbg !1307
  %766 = fsub double %764, %765, !dbg !1308
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %757, metadata !312, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata i64 %723, metadata !313, metadata !DIExpression()), !dbg !1309
  call void @llvm.dbg.value(metadata double %766, metadata !314, metadata !DIExpression()), !dbg !1309
  store double %766, ptr %760, align 8, !dbg !1311, !tbaa !304
  %767 = fmul double %752, %761, !dbg !1312
  %768 = fmul double %751, %763, !dbg !1313
  %769 = fadd double %767, %768, !dbg !1314
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 %757, metadata !312, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i64 %11, metadata !313, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata double %769, metadata !314, metadata !DIExpression()), !dbg !1315
  store double %769, ptr %762, align 8, !dbg !1317, !tbaa !304
  %770 = add nuw i64 %757, 1, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %770, metadata !1242, metadata !DIExpression()), !dbg !1296
  %771 = icmp eq i64 %770, %8, !dbg !1319
  br i1 %771, label %772, label %756, !dbg !1297, !llvm.loop !1320

772:                                              ; preds = %756, %750
  %773 = fmul double %728, %751, !dbg !1322
  %774 = fmul double %725, %752, !dbg !1323
  %775 = fsub double %773, %774, !dbg !1324
  call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i64 %723, metadata !297, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata double %775, metadata !298, metadata !DIExpression()), !dbg !1325
  %776 = mul i64 %723, %15, !dbg !1327
  %777 = getelementptr inbounds double, ptr %13, i64 %776, !dbg !1328
  store double %775, ptr %777, align 8, !dbg !1329, !tbaa !304
  %778 = icmp eq i64 %723, %713, !dbg !1330
  br i1 %778, label %779, label %783, !dbg !1332

779:                                              ; preds = %772
  %780 = fmul double %728, %752, !dbg !1333
  %781 = fmul double %725, %751, !dbg !1334
  %782 = fadd double %781, %780, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i64 %723, metadata !297, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata double %782, metadata !298, metadata !DIExpression()), !dbg !1336
  store double %782, ptr %716, align 8, !dbg !1338, !tbaa !304
  br label %783, !dbg !1339

783:                                              ; preds = %779, %772
  %784 = icmp eq i64 %723, 0, !dbg !1340
  br i1 %784, label %1236, label %785, !dbg !1341

785:                                              ; preds = %783
  %786 = add i64 %726, -2, !dbg !1342
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %786, metadata !344, metadata !DIExpression()), !dbg !1343
  %787 = mul i64 %786, %714, !dbg !1345
  %788 = getelementptr inbounds double, ptr %710, i64 %787, !dbg !1346
  %789 = load double, ptr %788, align 8, !dbg !1346, !tbaa !304
  call void @llvm.dbg.value(metadata double %789, metadata !1252, metadata !DIExpression()), !dbg !1347
  %790 = fmul double %751, %789, !dbg !1348
  call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata i64 %786, metadata !297, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata double %790, metadata !298, metadata !DIExpression()), !dbg !1349
  store double %790, ptr %788, align 8, !dbg !1351, !tbaa !304
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.value(metadata i64 %786, metadata !344, metadata !DIExpression()), !dbg !1352
  %791 = mul i64 %786, %15, !dbg !1354
  call void @llvm.dbg.value(metadata double poison, metadata !1239, metadata !DIExpression()), !dbg !1255
  %792 = fmul double %752, %789, !dbg !1355
  call void @llvm.dbg.value(metadata double %792, metadata !1240, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %723, metadata !1241, metadata !DIExpression()), !dbg !1255
  %793 = add i64 %723, -1, !dbg !1356
  call void @llvm.dbg.value(metadata i64 %793, metadata !1241, metadata !DIExpression()), !dbg !1255
  br label %722, !dbg !1267, !llvm.loop !1357

794:                                              ; preds = %702
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1359
  tail call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression()), !dbg !1359
  %795 = load double, ptr %13, align 8, !dbg !1361, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %795, metadata !637, metadata !DIExpression()), !dbg !1362
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1363
  tail call void @llvm.dbg.value(metadata i64 0, metadata !344, metadata !DIExpression()), !dbg !1363
  %796 = load double, ptr %710, align 8, !dbg !1365, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %796, metadata !639, metadata !DIExpression()), !dbg !1362
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1366
  tail call void @llvm.dbg.value(metadata i64 1, metadata !344, metadata !DIExpression()), !dbg !1366
  %797 = getelementptr inbounds double, ptr %13, i64 %15, !dbg !1368
  %798 = load double, ptr %797, align 8, !dbg !1368, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %798, metadata !640, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata ptr %0, metadata !1369, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata ptr %1, metadata !1374, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata i64 %9, metadata !1375, metadata !DIExpression()), !dbg !1394
  %799 = add i64 %9, -2, !dbg !1396
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 %799, metadata !344, metadata !DIExpression()), !dbg !1397
  %800 = mul i64 %15, %799, !dbg !1399
  %801 = getelementptr inbounds double, ptr %13, i64 %800, !dbg !1400
  %802 = load double, ptr %801, align 8, !dbg !1400, !tbaa !304
  call void @llvm.dbg.value(metadata double %802, metadata !1376, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %11, metadata !344, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata double %707, metadata !1377, metadata !DIExpression()), !dbg !1394
  %803 = icmp ugt i64 %9, 2, !dbg !1403
  br i1 %803, label %806, label %804, !dbg !1404

804:                                              ; preds = %794
  %805 = load i64, ptr %711, align 8, !dbg !1405, !tbaa !349
  br label %812, !dbg !1404

806:                                              ; preds = %794
  %807 = add i64 %9, -3, !dbg !1407
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %807, metadata !344, metadata !DIExpression()), !dbg !1408
  %808 = load i64, ptr %711, align 8, !dbg !1410, !tbaa !349
  %809 = mul i64 %808, %807, !dbg !1411
  %810 = getelementptr inbounds double, ptr %710, i64 %809, !dbg !1412
  %811 = load double, ptr %810, align 8, !dbg !1412, !tbaa !304
  br label %812, !dbg !1404

812:                                              ; preds = %806, %804
  %813 = phi i64 [ %808, %806 ], [ %805, %804 ], !dbg !1405
  %814 = phi double [ %811, %806 ], [ 0.000000e+00, %804 ], !dbg !1404
  call void @llvm.dbg.value(metadata double %814, metadata !1378, metadata !DIExpression()), !dbg !1394
  call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %799, metadata !344, metadata !DIExpression()), !dbg !1413
  %815 = mul i64 %813, %799, !dbg !1414
  %816 = getelementptr inbounds double, ptr %710, i64 %815, !dbg !1415
  %817 = load double, ptr %816, align 8, !dbg !1415, !tbaa !304
  call void @llvm.dbg.value(metadata double %817, metadata !1379, metadata !DIExpression()), !dbg !1394
  %818 = fmul double %802, %802, !dbg !1416
  %819 = fmul double %814, %814, !dbg !1417
  %820 = fadd double %818, %819, !dbg !1418
  call void @llvm.dbg.value(metadata double %820, metadata !1381, metadata !DIExpression()), !dbg !1419
  %821 = fmul double %707, %707, !dbg !1420
  %822 = fmul double %817, %817, !dbg !1421
  %823 = fadd double %821, %822, !dbg !1422
  call void @llvm.dbg.value(metadata double %823, metadata !1383, metadata !DIExpression()), !dbg !1419
  %824 = fmul double %802, %817, !dbg !1423
  call void @llvm.dbg.value(metadata double %824, metadata !1384, metadata !DIExpression()), !dbg !1419
  %825 = fsub double %820, %823, !dbg !1424
  %826 = fmul double %825, 5.000000e-01, !dbg !1425
  call void @llvm.dbg.value(metadata double %826, metadata !1385, metadata !DIExpression()), !dbg !1419
  %827 = fadd double %820, %823, !dbg !1426
  call void @llvm.dbg.value(metadata double %827, metadata !1386, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata double %818, metadata !1387, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata double %821, metadata !1388, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata double %819, metadata !1389, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata double %822, metadata !1390, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata double poison, metadata !1391, metadata !DIExpression()), !dbg !1419
  %828 = tail call double @hypot(double noundef %826, double noundef %824) #11, !dbg !1427
  call void @llvm.dbg.value(metadata double %828, metadata !1392, metadata !DIExpression()), !dbg !1419
  %829 = fmul double %827, 5.000000e-01, !dbg !1428
  %830 = fadd double %828, %829, !dbg !1429
  call void @llvm.dbg.value(metadata double %830, metadata !1393, metadata !DIExpression()), !dbg !1419
  %831 = fcmp ult double %826, 0.000000e+00, !dbg !1430
  br i1 %831, label %841, label %832, !dbg !1432

832:                                              ; preds = %812
  %833 = fmul double %821, %818, !dbg !1433
  %834 = fmul double %821, %819, !dbg !1434
  %835 = fadd double %833, %834, !dbg !1435
  %836 = fmul double %819, %822, !dbg !1436
  %837 = fadd double %835, %836, !dbg !1437
  call void @llvm.dbg.value(metadata double %837, metadata !1391, metadata !DIExpression()), !dbg !1419
  %838 = fcmp ogt double %830, 0.000000e+00, !dbg !1438
  %839 = fdiv double %837, %830, !dbg !1440
  %840 = select i1 %838, double %839, double 0.000000e+00, !dbg !1440
  call void @llvm.dbg.value(metadata double %840, metadata !1380, metadata !DIExpression()), !dbg !1394
  br label %841, !dbg !1441

841:                                              ; preds = %832, %812
  %842 = phi double [ %840, %832 ], [ %830, %812 ], !dbg !1442
  call void @llvm.dbg.value(metadata double %842, metadata !1380, metadata !DIExpression()), !dbg !1394
  tail call void @llvm.dbg.value(metadata double %842, metadata !641, metadata !DIExpression()), !dbg !1443
  tail call void @llvm.dbg.value(metadata double poison, metadata !622, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !623, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !624, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %795, metadata !626, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %796, metadata !627, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %798, metadata !628, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata i64 0, metadata !630, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double poison, metadata !621, metadata !DIExpression()), !dbg !672
  %843 = load ptr, ptr %703, align 8, !dbg !1444, !tbaa !302
  %844 = load i64, ptr %704, align 8, !dbg !1446, !tbaa !349
  %845 = fmul double %795, %796, !dbg !1447
  tail call void @llvm.dbg.value(metadata double %845, metadata !622, metadata !DIExpression()), !dbg !672
  %846 = fmul double %795, %795, !dbg !1448
  %847 = fsub double %846, %842, !dbg !1449
  tail call void @llvm.dbg.value(metadata double %847, metadata !621, metadata !DIExpression()), !dbg !672
  %848 = icmp eq i64 %8, 0
  %849 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %850 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  %851 = icmp eq i64 %7, 0
  %852 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3
  %853 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 2
  %854 = add i64 %8, -1, !dbg !1450
  %855 = add i64 %7, -1, !dbg !1450
  %856 = and i64 %8, 1
  %857 = icmp eq i64 %854, 0
  %858 = and i64 %8, -2
  %859 = icmp eq i64 %856, 0
  %860 = and i64 %8, 1
  %861 = icmp eq i64 %854, 0
  %862 = and i64 %8, -2
  %863 = icmp eq i64 %860, 0
  %864 = and i64 %7, 1
  %865 = icmp eq i64 %855, 0
  %866 = and i64 %7, -2
  %867 = icmp eq i64 %864, 0
  %868 = and i64 %7, 1
  %869 = icmp eq i64 %855, 0
  %870 = and i64 %7, -2
  %871 = icmp eq i64 %868, 0
  br label %872, !dbg !1450

872:                                              ; preds = %841, %1165
  %873 = phi double [ %847, %841 ], [ %1151, %1165 ]
  %874 = phi double [ %845, %841 ], [ %1153, %1165 ]
  %875 = phi double [ 0.000000e+00, %841 ], [ %1151, %1165 ]
  %876 = phi double [ %795, %841 ], [ %1156, %1165 ]
  %877 = phi double [ %796, %841 ], [ %1157, %1165 ]
  %878 = phi double [ %798, %841 ], [ %1166, %1165 ]
  %879 = phi i64 [ 0, %841 ], [ %1167, %1165 ]
  tail call void @llvm.dbg.value(metadata double %873, metadata !621, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %874, metadata !622, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %875, metadata !624, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %876, metadata !626, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %877, metadata !627, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %878, metadata !628, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !630, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata double %873, metadata !745, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata double %874, metadata !750, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata ptr undef, metadata !752, metadata !DIExpression()), !dbg !1451
  %880 = fcmp oeq double %874, 0.000000e+00, !dbg !1453
  br i1 %880, label %901, label %881, !dbg !1454

881:                                              ; preds = %872
  %882 = tail call double @llvm.fabs.f64(double %874), !dbg !1455
  %883 = tail call double @llvm.fabs.f64(double %873), !dbg !1456
  %884 = fcmp ogt double %882, %883, !dbg !1457
  br i1 %884, label %885, label %893, !dbg !1458

885:                                              ; preds = %881
  %886 = fneg double %873, !dbg !1459
  %887 = fdiv double %886, %874, !dbg !1460
  call void @llvm.dbg.value(metadata double %887, metadata !753, metadata !DIExpression()), !dbg !1461
  %888 = fmul double %887, %887, !dbg !1462
  %889 = fadd double %888, 1.000000e+00, !dbg !1463
  %890 = tail call double @llvm.sqrt.f64(double %889), !dbg !1464
  %891 = fdiv double 1.000000e+00, %890, !dbg !1465
  call void @llvm.dbg.value(metadata double %891, metadata !757, metadata !DIExpression()), !dbg !1461
  tail call void @llvm.dbg.value(metadata double %891, metadata !647, metadata !DIExpression()), !dbg !1466
  %892 = fmul double %887, %891, !dbg !1467
  tail call void @llvm.dbg.value(metadata double %892, metadata !643, metadata !DIExpression()), !dbg !1466
  br label %901, !dbg !1468

893:                                              ; preds = %881
  %894 = fneg double %874, !dbg !1469
  %895 = fdiv double %894, %873, !dbg !1470
  call void @llvm.dbg.value(metadata double %895, metadata !758, metadata !DIExpression()), !dbg !1471
  %896 = fmul double %895, %895, !dbg !1472
  %897 = fadd double %896, 1.000000e+00, !dbg !1473
  %898 = tail call double @llvm.sqrt.f64(double %897), !dbg !1474
  %899 = fdiv double 1.000000e+00, %898, !dbg !1475
  call void @llvm.dbg.value(metadata double %899, metadata !760, metadata !DIExpression()), !dbg !1471
  tail call void @llvm.dbg.value(metadata double %899, metadata !643, metadata !DIExpression()), !dbg !1466
  %900 = fmul double %895, %899, !dbg !1476
  tail call void @llvm.dbg.value(metadata double %900, metadata !647, metadata !DIExpression()), !dbg !1466
  br label %901

901:                                              ; preds = %872, %885, %893
  %902 = phi double [ %892, %885 ], [ %899, %893 ], [ 1.000000e+00, %872 ], !dbg !1477
  %903 = phi double [ %891, %885 ], [ %900, %893 ], [ 0.000000e+00, %872 ], !dbg !1477
  tail call void @llvm.dbg.value(metadata double %903, metadata !647, metadata !DIExpression()), !dbg !1466
  tail call void @llvm.dbg.value(metadata double %902, metadata !643, metadata !DIExpression()), !dbg !1466
  tail call void @llvm.dbg.value(metadata i64 0, metadata !629, metadata !DIExpression()), !dbg !672
  br i1 %848, label %997, label %904, !dbg !1478

904:                                              ; preds = %901
  %905 = load ptr, ptr %849, align 8, !tbaa !318
  %906 = load i64, ptr %850, align 8, !tbaa !463
  %907 = getelementptr double, ptr %905, i64 %879, !dbg !1478
  %908 = icmp eq i64 %906, 1, !dbg !1478
  br i1 %908, label %939, label %909, !dbg !1478

909:                                              ; preds = %904
  br i1 %857, label %983, label %910, !dbg !1478

910:                                              ; preds = %909, %910
  %911 = phi i64 [ %936, %910 ], [ 0, %909 ]
  %912 = phi i64 [ %937, %910 ], [ 0, %909 ]
  tail call void @llvm.dbg.value(metadata i64 %911, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %911, metadata !471, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1479
  %913 = mul i64 %906, %911, !dbg !1481
  %914 = getelementptr double, ptr %907, i64 %913, !dbg !1482
  %915 = load double, ptr %914, align 8, !dbg !1482, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %915, metadata !648, metadata !DIExpression()), !dbg !1483
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %911, metadata !471, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1484
  %916 = getelementptr double, ptr %914, i64 1, !dbg !1486
  %917 = load double, ptr %916, align 8, !dbg !1486, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %917, metadata !652, metadata !DIExpression()), !dbg !1483
  %918 = fmul double %902, %915, !dbg !1487
  %919 = fmul double %903, %917, !dbg !1488
  %920 = fsub double %918, %919, !dbg !1489
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %911, metadata !312, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata double %920, metadata !314, metadata !DIExpression()), !dbg !1490
  store double %920, ptr %914, align 8, !dbg !1492, !tbaa !304
  %921 = fmul double %903, %915, !dbg !1493
  %922 = fmul double %902, %917, !dbg !1494
  %923 = fadd double %921, %922, !dbg !1495
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %911, metadata !312, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1496
  tail call void @llvm.dbg.value(metadata double %923, metadata !314, metadata !DIExpression()), !dbg !1496
  store double %923, ptr %916, align 8, !dbg !1498, !tbaa !304
  %924 = or disjoint i64 %911, 1, !dbg !1499
  tail call void @llvm.dbg.value(metadata i64 %924, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata i64 %924, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %924, metadata !471, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1479
  %925 = mul i64 %906, %924, !dbg !1481
  %926 = getelementptr double, ptr %907, i64 %925, !dbg !1482
  %927 = load double, ptr %926, align 8, !dbg !1482, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %927, metadata !648, metadata !DIExpression()), !dbg !1483
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %924, metadata !471, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1484
  %928 = getelementptr double, ptr %926, i64 1, !dbg !1486
  %929 = load double, ptr %928, align 8, !dbg !1486, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %929, metadata !652, metadata !DIExpression()), !dbg !1483
  %930 = fmul double %902, %927, !dbg !1487
  %931 = fmul double %903, %929, !dbg !1488
  %932 = fsub double %930, %931, !dbg !1489
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %924, metadata !312, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata double %932, metadata !314, metadata !DIExpression()), !dbg !1490
  store double %932, ptr %926, align 8, !dbg !1492, !tbaa !304
  %933 = fmul double %903, %927, !dbg !1493
  %934 = fmul double %902, %929, !dbg !1494
  %935 = fadd double %933, %934, !dbg !1495
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %924, metadata !312, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1496
  tail call void @llvm.dbg.value(metadata double %935, metadata !314, metadata !DIExpression()), !dbg !1496
  store double %935, ptr %928, align 8, !dbg !1498, !tbaa !304
  %936 = add nuw i64 %911, 2, !dbg !1499
  tail call void @llvm.dbg.value(metadata i64 %936, metadata !629, metadata !DIExpression()), !dbg !672
  %937 = add i64 %912, 2, !dbg !1478
  %938 = icmp eq i64 %937, %858, !dbg !1478
  br i1 %938, label %983, label %910, !dbg !1478, !llvm.loop !1500

939:                                              ; preds = %904
  %940 = load double, ptr %907, align 8
  br i1 %861, label %969, label %941, !dbg !1478

941:                                              ; preds = %939, %941
  %942 = phi double [ %965, %941 ], [ %940, %939 ]
  %943 = phi i64 [ %966, %941 ], [ 0, %939 ]
  %944 = phi i64 [ %967, %941 ], [ 0, %939 ]
  tail call void @llvm.dbg.value(metadata i64 %943, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %943, metadata !471, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1479
  %945 = mul nuw i64 %906, %943, !dbg !1481
  %946 = getelementptr double, ptr %907, i64 %945, !dbg !1482
  tail call void @llvm.dbg.value(metadata double %942, metadata !648, metadata !DIExpression()), !dbg !1483
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %943, metadata !471, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1484
  %947 = getelementptr double, ptr %946, i64 1, !dbg !1486
  %948 = load double, ptr %947, align 8, !dbg !1486, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %948, metadata !652, metadata !DIExpression()), !dbg !1483
  %949 = fmul double %902, %942, !dbg !1487
  %950 = fmul double %903, %948, !dbg !1488
  %951 = fsub double %949, %950, !dbg !1489
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %943, metadata !312, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata double %951, metadata !314, metadata !DIExpression()), !dbg !1490
  store double %951, ptr %946, align 8, !dbg !1492, !tbaa !304
  %952 = fmul double %903, %942, !dbg !1493
  %953 = fmul double %902, %948, !dbg !1494
  %954 = fadd double %952, %953, !dbg !1495
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %943, metadata !312, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1496
  tail call void @llvm.dbg.value(metadata double %954, metadata !314, metadata !DIExpression()), !dbg !1496
  store double %954, ptr %947, align 8, !dbg !1498, !tbaa !304
  %955 = or disjoint i64 %943, 1, !dbg !1499
  tail call void @llvm.dbg.value(metadata i64 %955, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata i64 %955, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %955, metadata !471, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1479
  %956 = mul nuw i64 %906, %955, !dbg !1481
  %957 = getelementptr double, ptr %907, i64 %956, !dbg !1482
  tail call void @llvm.dbg.value(metadata double %954, metadata !648, metadata !DIExpression()), !dbg !1483
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %955, metadata !471, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1484
  %958 = getelementptr double, ptr %957, i64 1, !dbg !1486
  %959 = load double, ptr %958, align 8, !dbg !1486, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %959, metadata !652, metadata !DIExpression()), !dbg !1483
  %960 = fmul double %902, %954, !dbg !1487
  %961 = fmul double %903, %959, !dbg !1488
  %962 = fsub double %960, %961, !dbg !1489
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %955, metadata !312, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata double %962, metadata !314, metadata !DIExpression()), !dbg !1490
  store double %962, ptr %957, align 8, !dbg !1492, !tbaa !304
  %963 = fmul double %903, %954, !dbg !1493
  %964 = fmul double %902, %959, !dbg !1494
  %965 = fadd double %963, %964, !dbg !1495
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %955, metadata !312, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1496
  tail call void @llvm.dbg.value(metadata double %965, metadata !314, metadata !DIExpression()), !dbg !1496
  store double %965, ptr %958, align 8, !dbg !1498, !tbaa !304
  %966 = add nuw i64 %943, 2, !dbg !1499
  tail call void @llvm.dbg.value(metadata i64 %966, metadata !629, metadata !DIExpression()), !dbg !672
  %967 = add i64 %944, 2, !dbg !1478
  %968 = icmp eq i64 %967, %862, !dbg !1478
  br i1 %968, label %969, label %941, !dbg !1478, !llvm.loop !1500

969:                                              ; preds = %941, %939
  %970 = phi double [ %940, %939 ], [ %965, %941 ]
  %971 = phi i64 [ 0, %939 ], [ %966, %941 ]
  br i1 %863, label %997, label %972, !dbg !1478

972:                                              ; preds = %969
  tail call void @llvm.dbg.value(metadata i64 %971, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %971, metadata !471, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1479
  %973 = mul nuw i64 %906, %971, !dbg !1481
  %974 = getelementptr double, ptr %907, i64 %973, !dbg !1482
  tail call void @llvm.dbg.value(metadata double %970, metadata !648, metadata !DIExpression()), !dbg !1483
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %971, metadata !471, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1484
  %975 = getelementptr double, ptr %974, i64 1, !dbg !1486
  %976 = load double, ptr %975, align 8, !dbg !1486, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %976, metadata !652, metadata !DIExpression()), !dbg !1483
  %977 = fmul double %902, %970, !dbg !1487
  %978 = fmul double %903, %976, !dbg !1488
  %979 = fsub double %977, %978, !dbg !1489
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %971, metadata !312, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata double %979, metadata !314, metadata !DIExpression()), !dbg !1490
  store double %979, ptr %974, align 8, !dbg !1492, !tbaa !304
  %980 = fmul double %903, %970, !dbg !1493
  %981 = fmul double %902, %976, !dbg !1494
  %982 = fadd double %980, %981, !dbg !1495
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %971, metadata !312, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1496
  tail call void @llvm.dbg.value(metadata double %982, metadata !314, metadata !DIExpression()), !dbg !1496
  store double %982, ptr %975, align 8, !dbg !1498, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %971, metadata !629, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !672
  br label %997, !dbg !1502

983:                                              ; preds = %910, %909
  %984 = phi i64 [ 0, %909 ], [ %936, %910 ]
  br i1 %859, label %997, label %985, !dbg !1478

985:                                              ; preds = %983
  tail call void @llvm.dbg.value(metadata i64 %984, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %984, metadata !471, metadata !DIExpression()), !dbg !1479
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1479
  %986 = mul i64 %906, %984, !dbg !1481
  %987 = getelementptr double, ptr %907, i64 %986, !dbg !1482
  %988 = load double, ptr %987, align 8, !dbg !1482, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %988, metadata !648, metadata !DIExpression()), !dbg !1483
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %984, metadata !471, metadata !DIExpression()), !dbg !1484
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1484
  %989 = getelementptr double, ptr %987, i64 1, !dbg !1486
  %990 = load double, ptr %989, align 8, !dbg !1486, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %990, metadata !652, metadata !DIExpression()), !dbg !1483
  %991 = fmul double %902, %988, !dbg !1487
  %992 = fmul double %903, %990, !dbg !1488
  %993 = fsub double %991, %992, !dbg !1489
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %984, metadata !312, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1490
  tail call void @llvm.dbg.value(metadata double %993, metadata !314, metadata !DIExpression()), !dbg !1490
  store double %993, ptr %987, align 8, !dbg !1492, !tbaa !304
  %994 = fmul double %903, %988, !dbg !1493
  %995 = fmul double %902, %990, !dbg !1494
  %996 = fadd double %994, %995, !dbg !1495
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %984, metadata !312, metadata !DIExpression()), !dbg !1496
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1496
  tail call void @llvm.dbg.value(metadata double %996, metadata !314, metadata !DIExpression()), !dbg !1496
  store double %996, ptr %989, align 8, !dbg !1498, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %984, metadata !629, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !672
  br label %997, !dbg !1502

997:                                              ; preds = %985, %983, %972, %969, %901
  tail call void @llvm.dbg.value(metadata double poison, metadata !653, metadata !DIExpression()), !dbg !1503
  %998 = fmul double %876, %902, !dbg !1502
  %999 = fmul double %877, %903, !dbg !1504
  %1000 = fsub double %998, %999, !dbg !1505
  tail call void @llvm.dbg.value(metadata double %1000, metadata !655, metadata !DIExpression()), !dbg !1503
  %1001 = fmul double %876, %903, !dbg !1506
  %1002 = fmul double %877, %902, !dbg !1507
  %1003 = fadd double %1002, %1001, !dbg !1508
  tail call void @llvm.dbg.value(metadata double %1003, metadata !656, metadata !DIExpression()), !dbg !1503
  %1004 = fneg double %903, !dbg !1509
  %1005 = fmul double %878, %1004, !dbg !1510
  tail call void @llvm.dbg.value(metadata double %1005, metadata !657, metadata !DIExpression()), !dbg !1503
  %1006 = fmul double %878, %902, !dbg !1511
  tail call void @llvm.dbg.value(metadata double %1006, metadata !658, metadata !DIExpression()), !dbg !1503
  %1007 = icmp eq i64 %879, 0, !dbg !1512
  br i1 %1007, label %1017, label %1008, !dbg !1514

1008:                                             ; preds = %997
  %1009 = fmul double %875, %902, !dbg !1515
  %1010 = fmul double %874, %903, !dbg !1516
  %1011 = fsub double %1009, %1010, !dbg !1517
  tail call void @llvm.dbg.value(metadata double %1011, metadata !653, metadata !DIExpression()), !dbg !1503
  %1012 = add i64 %879, -1, !dbg !1518
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1520
  tail call void @llvm.dbg.value(metadata i64 %1012, metadata !297, metadata !DIExpression()), !dbg !1520
  tail call void @llvm.dbg.value(metadata double %1011, metadata !298, metadata !DIExpression()), !dbg !1520
  %1013 = load ptr, ptr %709, align 8, !dbg !1522, !tbaa !302
  %1014 = load i64, ptr %711, align 8, !dbg !1523, !tbaa !349
  %1015 = mul i64 %1014, %1012, !dbg !1524
  %1016 = getelementptr inbounds double, ptr %1013, i64 %1015, !dbg !1525
  store double %1011, ptr %1016, align 8, !dbg !1526, !tbaa !304
  br label %1017, !dbg !1527

1017:                                             ; preds = %1008, %997
  tail call void @llvm.dbg.value(metadata double %1000, metadata !623, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1003, metadata !624, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1005, metadata !625, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1006, metadata !626, metadata !DIExpression()), !dbg !672
  %1018 = icmp ult i64 %879, %799, !dbg !1528
  br i1 %1018, label %1019, label %1026, !dbg !1530

1019:                                             ; preds = %1017
  %1020 = add nuw i64 %879, 1, !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !337, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata i64 %1020, metadata !344, metadata !DIExpression()), !dbg !1533
  %1021 = load ptr, ptr %709, align 8, !dbg !1535, !tbaa !302
  %1022 = load i64, ptr %711, align 8, !dbg !1536, !tbaa !349
  %1023 = mul i64 %1022, %1020, !dbg !1537
  %1024 = getelementptr inbounds double, ptr %1021, i64 %1023, !dbg !1538
  %1025 = load double, ptr %1024, align 8, !dbg !1538, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1025, metadata !627, metadata !DIExpression()), !dbg !672
  br label %1026, !dbg !1539

1026:                                             ; preds = %1017, %1019
  %1027 = phi double [ %1025, %1019 ], [ 0.000000e+00, %1017 ], !dbg !1540
  tail call void @llvm.dbg.value(metadata double %1027, metadata !627, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1000, metadata !621, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1005, metadata !622, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata double %1000, metadata !745, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata double %1005, metadata !750, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr undef, metadata !751, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr undef, metadata !752, metadata !DIExpression()), !dbg !1541
  %1028 = fcmp oeq double %1005, 0.000000e+00, !dbg !1543
  br i1 %1028, label %1049, label %1029, !dbg !1544

1029:                                             ; preds = %1026
  %1030 = tail call double @llvm.fabs.f64(double %1005), !dbg !1545
  %1031 = tail call double @llvm.fabs.f64(double %1000), !dbg !1546
  %1032 = fcmp ogt double %1030, %1031, !dbg !1547
  br i1 %1032, label %1033, label %1041, !dbg !1548

1033:                                             ; preds = %1029
  %1034 = fneg double %1000, !dbg !1549
  %1035 = fdiv double %1034, %1005, !dbg !1550
  call void @llvm.dbg.value(metadata double %1035, metadata !753, metadata !DIExpression()), !dbg !1551
  %1036 = fmul double %1035, %1035, !dbg !1552
  %1037 = fadd double %1036, 1.000000e+00, !dbg !1553
  %1038 = tail call double @llvm.sqrt.f64(double %1037), !dbg !1554
  %1039 = fdiv double 1.000000e+00, %1038, !dbg !1555
  call void @llvm.dbg.value(metadata double %1039, metadata !757, metadata !DIExpression()), !dbg !1551
  tail call void @llvm.dbg.value(metadata double %1039, metadata !647, metadata !DIExpression()), !dbg !1466
  %1040 = fmul double %1035, %1039, !dbg !1556
  tail call void @llvm.dbg.value(metadata double %1040, metadata !643, metadata !DIExpression()), !dbg !1466
  br label %1049, !dbg !1557

1041:                                             ; preds = %1029
  %1042 = fneg double %1005, !dbg !1558
  %1043 = fdiv double %1042, %1000, !dbg !1559
  call void @llvm.dbg.value(metadata double %1043, metadata !758, metadata !DIExpression()), !dbg !1560
  %1044 = fmul double %1043, %1043, !dbg !1561
  %1045 = fadd double %1044, 1.000000e+00, !dbg !1562
  %1046 = tail call double @llvm.sqrt.f64(double %1045), !dbg !1563
  %1047 = fdiv double 1.000000e+00, %1046, !dbg !1564
  call void @llvm.dbg.value(metadata double %1047, metadata !760, metadata !DIExpression()), !dbg !1560
  tail call void @llvm.dbg.value(metadata double %1047, metadata !643, metadata !DIExpression()), !dbg !1466
  %1048 = fmul double %1043, %1047, !dbg !1565
  tail call void @llvm.dbg.value(metadata double %1048, metadata !647, metadata !DIExpression()), !dbg !1466
  br label %1049

1049:                                             ; preds = %1026, %1033, %1041
  %1050 = phi double [ %1040, %1033 ], [ %1047, %1041 ], [ 1.000000e+00, %1026 ], !dbg !1566
  %1051 = phi double [ %1039, %1033 ], [ %1048, %1041 ], [ 0.000000e+00, %1026 ], !dbg !1566
  tail call void @llvm.dbg.value(metadata double %1051, metadata !647, metadata !DIExpression()), !dbg !1466
  tail call void @llvm.dbg.value(metadata double %1050, metadata !643, metadata !DIExpression()), !dbg !1466
  tail call void @llvm.dbg.value(metadata i64 0, metadata !629, metadata !DIExpression()), !dbg !672
  br i1 %851, label %1145, label %1052, !dbg !1567

1052:                                             ; preds = %1049
  %1053 = load ptr, ptr %852, align 8, !tbaa !318
  %1054 = load i64, ptr %853, align 8, !tbaa !463
  %1055 = getelementptr double, ptr %1053, i64 %879, !dbg !1567
  %1056 = icmp eq i64 %1054, 1, !dbg !1567
  br i1 %1056, label %1087, label %1057, !dbg !1567

1057:                                             ; preds = %1052
  br i1 %865, label %1131, label %1058, !dbg !1567

1058:                                             ; preds = %1057, %1058
  %1059 = phi i64 [ %1084, %1058 ], [ 0, %1057 ]
  %1060 = phi i64 [ %1085, %1058 ], [ 0, %1057 ]
  tail call void @llvm.dbg.value(metadata i64 %1059, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %1059, metadata !471, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1568
  %1061 = mul i64 %1054, %1059, !dbg !1570
  %1062 = getelementptr double, ptr %1055, i64 %1061, !dbg !1571
  %1063 = load double, ptr %1062, align 8, !dbg !1571, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1063, metadata !659, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %1059, metadata !471, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1573
  %1064 = getelementptr double, ptr %1062, i64 1, !dbg !1575
  %1065 = load double, ptr %1064, align 8, !dbg !1575, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1065, metadata !663, metadata !DIExpression()), !dbg !1572
  %1066 = fmul double %1050, %1063, !dbg !1576
  %1067 = fmul double %1051, %1065, !dbg !1577
  %1068 = fsub double %1066, %1067, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %1059, metadata !312, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata double %1068, metadata !314, metadata !DIExpression()), !dbg !1579
  store double %1068, ptr %1062, align 8, !dbg !1581, !tbaa !304
  %1069 = fmul double %1051, %1063, !dbg !1582
  %1070 = fmul double %1050, %1065, !dbg !1583
  %1071 = fadd double %1069, %1070, !dbg !1584
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %1059, metadata !312, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %1071, metadata !314, metadata !DIExpression()), !dbg !1585
  store double %1071, ptr %1064, align 8, !dbg !1587, !tbaa !304
  %1072 = or disjoint i64 %1059, 1, !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %1072, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata i64 %1072, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %1072, metadata !471, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1568
  %1073 = mul i64 %1054, %1072, !dbg !1570
  %1074 = getelementptr double, ptr %1055, i64 %1073, !dbg !1571
  %1075 = load double, ptr %1074, align 8, !dbg !1571, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1075, metadata !659, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %1072, metadata !471, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1573
  %1076 = getelementptr double, ptr %1074, i64 1, !dbg !1575
  %1077 = load double, ptr %1076, align 8, !dbg !1575, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1077, metadata !663, metadata !DIExpression()), !dbg !1572
  %1078 = fmul double %1050, %1075, !dbg !1576
  %1079 = fmul double %1051, %1077, !dbg !1577
  %1080 = fsub double %1078, %1079, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %1072, metadata !312, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata double %1080, metadata !314, metadata !DIExpression()), !dbg !1579
  store double %1080, ptr %1074, align 8, !dbg !1581, !tbaa !304
  %1081 = fmul double %1051, %1075, !dbg !1582
  %1082 = fmul double %1050, %1077, !dbg !1583
  %1083 = fadd double %1081, %1082, !dbg !1584
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %1072, metadata !312, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %1083, metadata !314, metadata !DIExpression()), !dbg !1585
  store double %1083, ptr %1076, align 8, !dbg !1587, !tbaa !304
  %1084 = add nuw i64 %1059, 2, !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %1084, metadata !629, metadata !DIExpression()), !dbg !672
  %1085 = add i64 %1060, 2, !dbg !1567
  %1086 = icmp eq i64 %1085, %866, !dbg !1567
  br i1 %1086, label %1131, label %1058, !dbg !1567, !llvm.loop !1589

1087:                                             ; preds = %1052
  %1088 = load double, ptr %1055, align 8
  br i1 %869, label %1117, label %1089, !dbg !1567

1089:                                             ; preds = %1087, %1089
  %1090 = phi double [ %1113, %1089 ], [ %1088, %1087 ]
  %1091 = phi i64 [ %1114, %1089 ], [ 0, %1087 ]
  %1092 = phi i64 [ %1115, %1089 ], [ 0, %1087 ]
  tail call void @llvm.dbg.value(metadata i64 %1091, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %1091, metadata !471, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1568
  %1093 = mul nuw i64 %1054, %1091, !dbg !1570
  %1094 = getelementptr double, ptr %1055, i64 %1093, !dbg !1571
  tail call void @llvm.dbg.value(metadata double %1090, metadata !659, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %1091, metadata !471, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1573
  %1095 = getelementptr double, ptr %1094, i64 1, !dbg !1575
  %1096 = load double, ptr %1095, align 8, !dbg !1575, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1096, metadata !663, metadata !DIExpression()), !dbg !1572
  %1097 = fmul double %1050, %1090, !dbg !1576
  %1098 = fmul double %1051, %1096, !dbg !1577
  %1099 = fsub double %1097, %1098, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %1091, metadata !312, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata double %1099, metadata !314, metadata !DIExpression()), !dbg !1579
  store double %1099, ptr %1094, align 8, !dbg !1581, !tbaa !304
  %1100 = fmul double %1051, %1090, !dbg !1582
  %1101 = fmul double %1050, %1096, !dbg !1583
  %1102 = fadd double %1100, %1101, !dbg !1584
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %1091, metadata !312, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %1102, metadata !314, metadata !DIExpression()), !dbg !1585
  store double %1102, ptr %1095, align 8, !dbg !1587, !tbaa !304
  %1103 = or disjoint i64 %1091, 1, !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %1103, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata i64 %1103, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %1103, metadata !471, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1568
  %1104 = mul nuw i64 %1054, %1103, !dbg !1570
  %1105 = getelementptr double, ptr %1055, i64 %1104, !dbg !1571
  tail call void @llvm.dbg.value(metadata double %1102, metadata !659, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %1103, metadata !471, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1573
  %1106 = getelementptr double, ptr %1105, i64 1, !dbg !1575
  %1107 = load double, ptr %1106, align 8, !dbg !1575, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1107, metadata !663, metadata !DIExpression()), !dbg !1572
  %1108 = fmul double %1050, %1102, !dbg !1576
  %1109 = fmul double %1051, %1107, !dbg !1577
  %1110 = fsub double %1108, %1109, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %1103, metadata !312, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata double %1110, metadata !314, metadata !DIExpression()), !dbg !1579
  store double %1110, ptr %1105, align 8, !dbg !1581, !tbaa !304
  %1111 = fmul double %1051, %1102, !dbg !1582
  %1112 = fmul double %1050, %1107, !dbg !1583
  %1113 = fadd double %1111, %1112, !dbg !1584
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %1103, metadata !312, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %1113, metadata !314, metadata !DIExpression()), !dbg !1585
  store double %1113, ptr %1106, align 8, !dbg !1587, !tbaa !304
  %1114 = add nuw i64 %1091, 2, !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %1114, metadata !629, metadata !DIExpression()), !dbg !672
  %1115 = add i64 %1092, 2, !dbg !1567
  %1116 = icmp eq i64 %1115, %870, !dbg !1567
  br i1 %1116, label %1117, label %1089, !dbg !1567, !llvm.loop !1589

1117:                                             ; preds = %1089, %1087
  %1118 = phi double [ %1088, %1087 ], [ %1113, %1089 ]
  %1119 = phi i64 [ 0, %1087 ], [ %1114, %1089 ]
  br i1 %871, label %1145, label %1120, !dbg !1567

1120:                                             ; preds = %1117
  tail call void @llvm.dbg.value(metadata i64 %1119, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %1119, metadata !471, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1568
  %1121 = mul nuw i64 %1054, %1119, !dbg !1570
  %1122 = getelementptr double, ptr %1055, i64 %1121, !dbg !1571
  tail call void @llvm.dbg.value(metadata double %1118, metadata !659, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %1119, metadata !471, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1573
  %1123 = getelementptr double, ptr %1122, i64 1, !dbg !1575
  %1124 = load double, ptr %1123, align 8, !dbg !1575, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1124, metadata !663, metadata !DIExpression()), !dbg !1572
  %1125 = fmul double %1050, %1118, !dbg !1576
  %1126 = fmul double %1051, %1124, !dbg !1577
  %1127 = fsub double %1125, %1126, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %1119, metadata !312, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata double %1127, metadata !314, metadata !DIExpression()), !dbg !1579
  store double %1127, ptr %1122, align 8, !dbg !1581, !tbaa !304
  %1128 = fmul double %1051, %1118, !dbg !1582
  %1129 = fmul double %1050, %1124, !dbg !1583
  %1130 = fadd double %1128, %1129, !dbg !1584
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %1119, metadata !312, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %1130, metadata !314, metadata !DIExpression()), !dbg !1585
  store double %1130, ptr %1123, align 8, !dbg !1587, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %1119, metadata !629, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !672
  br label %1145, !dbg !1591

1131:                                             ; preds = %1058, %1057
  %1132 = phi i64 [ 0, %1057 ], [ %1084, %1058 ]
  br i1 %867, label %1145, label %1133, !dbg !1567

1133:                                             ; preds = %1131
  tail call void @llvm.dbg.value(metadata i64 %1132, metadata !629, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %1132, metadata !471, metadata !DIExpression()), !dbg !1568
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression()), !dbg !1568
  %1134 = mul i64 %1054, %1132, !dbg !1570
  %1135 = getelementptr double, ptr %1055, i64 %1134, !dbg !1571
  %1136 = load double, ptr %1135, align 8, !dbg !1571, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1136, metadata !659, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %1132, metadata !471, metadata !DIExpression()), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1573
  %1137 = getelementptr double, ptr %1135, i64 1, !dbg !1575
  %1138 = load double, ptr %1137, align 8, !dbg !1575, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1138, metadata !663, metadata !DIExpression()), !dbg !1572
  %1139 = fmul double %1050, %1136, !dbg !1576
  %1140 = fmul double %1051, %1138, !dbg !1577
  %1141 = fsub double %1139, %1140, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %1132, metadata !312, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression()), !dbg !1579
  tail call void @llvm.dbg.value(metadata double %1141, metadata !314, metadata !DIExpression()), !dbg !1579
  store double %1141, ptr %1135, align 8, !dbg !1581, !tbaa !304
  %1142 = fmul double %1051, %1136, !dbg !1582
  %1143 = fmul double %1050, %1138, !dbg !1583
  %1144 = fadd double %1142, %1143, !dbg !1584
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %1132, metadata !312, metadata !DIExpression()), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !313, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1585
  tail call void @llvm.dbg.value(metadata double %1144, metadata !314, metadata !DIExpression()), !dbg !1585
  store double %1144, ptr %1137, align 8, !dbg !1587, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %1132, metadata !629, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !672
  br label %1145, !dbg !1591

1145:                                             ; preds = %1133, %1131, %1120, %1117, %1049
  %1146 = fmul double %1000, %1050, !dbg !1591
  %1147 = fmul double %1005, %1051, !dbg !1592
  %1148 = fsub double %1146, %1147, !dbg !1593
  tail call void @llvm.dbg.value(metadata double %1148, metadata !664, metadata !DIExpression()), !dbg !1594
  %1149 = fmul double %1003, %1050, !dbg !1595
  %1150 = fmul double %1006, %1051, !dbg !1596
  %1151 = fsub double %1149, %1150, !dbg !1597
  tail call void @llvm.dbg.value(metadata double %1151, metadata !666, metadata !DIExpression()), !dbg !1594
  %1152 = fneg double %1051, !dbg !1598
  %1153 = fmul double %1027, %1152, !dbg !1599
  tail call void @llvm.dbg.value(metadata double %1153, metadata !667, metadata !DIExpression()), !dbg !1594
  %1154 = fmul double %1003, %1051, !dbg !1600
  %1155 = fmul double %1006, %1050, !dbg !1601
  %1156 = fadd double %1155, %1154, !dbg !1602
  tail call void @llvm.dbg.value(metadata double %1156, metadata !668, metadata !DIExpression()), !dbg !1594
  %1157 = fmul double %1027, %1050, !dbg !1603
  tail call void @llvm.dbg.value(metadata double %1157, metadata !669, metadata !DIExpression()), !dbg !1594
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata i64 %879, metadata !297, metadata !DIExpression()), !dbg !1604
  tail call void @llvm.dbg.value(metadata double %1148, metadata !298, metadata !DIExpression()), !dbg !1604
  %1158 = mul i64 %844, %879, !dbg !1606
  %1159 = getelementptr inbounds double, ptr %843, i64 %1158, !dbg !1607
  store double %1148, ptr %1159, align 8, !dbg !1608, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1148, metadata !623, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1151, metadata !624, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1153, metadata !625, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1156, metadata !626, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1157, metadata !627, metadata !DIExpression()), !dbg !672
  br i1 %1018, label %1160, label %1165, !dbg !1609

1160:                                             ; preds = %1145
  %1161 = add nuw i64 %879, 2, !dbg !1610
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !337, metadata !DIExpression()), !dbg !1613
  tail call void @llvm.dbg.value(metadata i64 %1161, metadata !344, metadata !DIExpression()), !dbg !1613
  %1162 = mul i64 %844, %1161, !dbg !1615
  %1163 = getelementptr inbounds double, ptr %843, i64 %1162, !dbg !1616
  %1164 = load double, ptr %1163, align 8, !dbg !1616, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %1164, metadata !628, metadata !DIExpression()), !dbg !672
  br label %1165, !dbg !1617

1165:                                             ; preds = %1145, %1160
  %1166 = phi double [ %1164, %1160 ], [ 0.000000e+00, %1145 ], !dbg !1618
  tail call void @llvm.dbg.value(metadata double %1166, metadata !628, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1151, metadata !621, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1153, metadata !622, metadata !DIExpression()), !dbg !672
  %1167 = add nuw i64 %879, 1, !dbg !1619
  tail call void @llvm.dbg.value(metadata double %1151, metadata !624, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1156, metadata !626, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata double %1157, metadata !627, metadata !DIExpression()), !dbg !672
  tail call void @llvm.dbg.value(metadata i64 %1167, metadata !630, metadata !DIExpression()), !dbg !672
  %1168 = icmp eq i64 %1167, %11, !dbg !1620
  br i1 %1168, label %1169, label %872, !dbg !1450, !llvm.loop !1621

1169:                                             ; preds = %1165
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata i64 %799, metadata !297, metadata !DIExpression()), !dbg !1623
  tail call void @llvm.dbg.value(metadata double %1151, metadata !298, metadata !DIExpression()), !dbg !1623
  %1170 = load ptr, ptr %709, align 8, !dbg !1625, !tbaa !302
  %1171 = load i64, ptr %711, align 8, !dbg !1626, !tbaa !349
  %1172 = mul i64 %1171, %799, !dbg !1627
  %1173 = getelementptr inbounds double, ptr %1170, i64 %1172, !dbg !1628
  store double %1151, ptr %1173, align 8, !dbg !1629, !tbaa !304
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !297, metadata !DIExpression()), !dbg !1630
  tail call void @llvm.dbg.value(metadata double %1156, metadata !298, metadata !DIExpression()), !dbg !1630
  %1174 = mul i64 %844, %11, !dbg !1631
  %1175 = getelementptr inbounds double, ptr %843, i64 %1174, !dbg !1632
  store double %1156, ptr %1175, align 8, !dbg !1633, !tbaa !304
  br label %1236, !dbg !1634

1176:                                             ; preds = %242, %236
  %1177 = phi double [ %237, %236 ], [ %266, %242 ]
  %1178 = phi i64 [ 0, %236 ], [ %267, %242 ]
  %1179 = icmp eq i64 %238, 0, !dbg !865
  br i1 %1179, label %1236, label %1180, !dbg !865

1180:                                             ; preds = %1176
  call void @llvm.dbg.value(metadata i64 %1178, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 %1178, metadata !471, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !866
  %1181 = mul nuw i64 %1178, %200, !dbg !868
  %1182 = getelementptr double, ptr %198, i64 %1181, !dbg !869
  call void @llvm.dbg.value(metadata double %1177, metadata !703, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %1178, metadata !471, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !871
  %1183 = getelementptr double, ptr %1182, i64 1, !dbg !873
  %1184 = load double, ptr %1183, align 8, !dbg !873, !tbaa !304
  call void @llvm.dbg.value(metadata double %1184, metadata !709, metadata !DIExpression()), !dbg !870
  %1185 = fmul double %190, %1177, !dbg !874
  %1186 = fmul double %191, %1184, !dbg !875
  %1187 = fsub double %1185, %1186, !dbg !876
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 %1178, metadata !312, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %1187, metadata !314, metadata !DIExpression()), !dbg !877
  store double %1187, ptr %1182, align 8, !dbg !879, !tbaa !304
  %1188 = fmul double %191, %1177, !dbg !880
  %1189 = fmul double %190, %1184, !dbg !881
  %1190 = fadd double %1188, %1189, !dbg !882
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %1178, metadata !312, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %1190, metadata !314, metadata !DIExpression()), !dbg !883
  store double %1190, ptr %1183, align 8, !dbg !885, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %1178, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !725
  br label %1236, !dbg !1634

1191:                                             ; preds = %207, %202
  %1192 = phi i64 [ 0, %202 ], [ %233, %207 ]
  %1193 = icmp eq i64 %203, 0, !dbg !865
  br i1 %1193, label %1236, label %1194, !dbg !865

1194:                                             ; preds = %1191
  call void @llvm.dbg.value(metadata i64 %1192, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 %1192, metadata !471, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !866
  %1195 = mul i64 %1192, %200, !dbg !868
  %1196 = getelementptr double, ptr %198, i64 %1195, !dbg !869
  %1197 = load double, ptr %1196, align 8, !dbg !869, !tbaa !304
  call void @llvm.dbg.value(metadata double %1197, metadata !703, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata ptr %3, metadata !464, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 %1192, metadata !471, metadata !DIExpression()), !dbg !871
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !871
  %1198 = getelementptr double, ptr %1196, i64 1, !dbg !873
  %1199 = load double, ptr %1198, align 8, !dbg !873, !tbaa !304
  call void @llvm.dbg.value(metadata double %1199, metadata !709, metadata !DIExpression()), !dbg !870
  %1200 = fmul double %190, %1197, !dbg !874
  %1201 = fmul double %191, %1199, !dbg !875
  %1202 = fsub double %1200, %1201, !dbg !876
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 %1192, metadata !312, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata double %1202, metadata !314, metadata !DIExpression()), !dbg !877
  store double %1202, ptr %1196, align 8, !dbg !879, !tbaa !304
  %1203 = fmul double %191, %1197, !dbg !880
  %1204 = fmul double %190, %1199, !dbg !881
  %1205 = fadd double %1203, %1204, !dbg !882
  call void @llvm.dbg.value(metadata ptr %3, metadata !306, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %1192, metadata !312, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata double %1205, metadata !314, metadata !DIExpression()), !dbg !883
  store double %1205, ptr %1198, align 8, !dbg !885, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %1192, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !725
  br label %1236, !dbg !1634

1206:                                             ; preds = %537, %531
  %1207 = phi double [ %532, %531 ], [ %561, %537 ]
  %1208 = phi i64 [ 0, %531 ], [ %562, %537 ]
  %1209 = icmp eq i64 %533, 0, !dbg !1048
  br i1 %1209, label %1236, label %1210, !dbg !1048

1210:                                             ; preds = %1206
  call void @llvm.dbg.value(metadata i64 %1208, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %1208, metadata !471, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1049
  %1211 = mul nuw i64 %1208, %495, !dbg !1051
  %1212 = getelementptr double, ptr %493, i64 %1211, !dbg !1052
  call void @llvm.dbg.value(metadata double %1207, metadata !720, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %1208, metadata !471, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1054
  %1213 = getelementptr double, ptr %1212, i64 1, !dbg !1056
  %1214 = load double, ptr %1213, align 8, !dbg !1056, !tbaa !304
  call void @llvm.dbg.value(metadata double %1214, metadata !724, metadata !DIExpression()), !dbg !1053
  %1215 = fmul double %475, %1207, !dbg !1057
  %1216 = fmul double %476, %1214, !dbg !1058
  %1217 = fsub double %1215, %1216, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 %1208, metadata !312, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata double %1217, metadata !314, metadata !DIExpression()), !dbg !1060
  store double %1217, ptr %1212, align 8, !dbg !1062, !tbaa !304
  %1218 = fmul double %476, %1207, !dbg !1063
  %1219 = fmul double %475, %1214, !dbg !1064
  %1220 = fadd double %1218, %1219, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %1208, metadata !312, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata double %1220, metadata !314, metadata !DIExpression()), !dbg !1066
  store double %1220, ptr %1213, align 8, !dbg !1068, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %1208, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !725
  br label %1236, !dbg !1634

1221:                                             ; preds = %502, %497
  %1222 = phi i64 [ 0, %497 ], [ %528, %502 ]
  %1223 = icmp eq i64 %498, 0, !dbg !1048
  br i1 %1223, label %1236, label %1224, !dbg !1048

1224:                                             ; preds = %1221
  call void @llvm.dbg.value(metadata i64 %1222, metadata !684, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 %1222, metadata !471, metadata !DIExpression()), !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !472, metadata !DIExpression()), !dbg !1049
  %1225 = mul i64 %1222, %495, !dbg !1051
  %1226 = getelementptr double, ptr %493, i64 %1225, !dbg !1052
  %1227 = load double, ptr %1226, align 8, !dbg !1052, !tbaa !304
  call void @llvm.dbg.value(metadata double %1227, metadata !720, metadata !DIExpression()), !dbg !1053
  call void @llvm.dbg.value(metadata ptr %2, metadata !464, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 %1222, metadata !471, metadata !DIExpression()), !dbg !1054
  call void @llvm.dbg.value(metadata i64 1, metadata !472, metadata !DIExpression()), !dbg !1054
  %1228 = getelementptr double, ptr %1226, i64 1, !dbg !1056
  %1229 = load double, ptr %1228, align 8, !dbg !1056, !tbaa !304
  call void @llvm.dbg.value(metadata double %1229, metadata !724, metadata !DIExpression()), !dbg !1053
  %1230 = fmul double %475, %1227, !dbg !1057
  %1231 = fmul double %476, %1229, !dbg !1058
  %1232 = fsub double %1230, %1231, !dbg !1059
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 %1222, metadata !312, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1060
  call void @llvm.dbg.value(metadata double %1232, metadata !314, metadata !DIExpression()), !dbg !1060
  store double %1232, ptr %1226, align 8, !dbg !1062, !tbaa !304
  %1233 = fmul double %476, %1227, !dbg !1063
  %1234 = fmul double %475, %1229, !dbg !1064
  %1235 = fadd double %1233, %1234, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 %1222, metadata !312, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()), !dbg !1066
  call void @llvm.dbg.value(metadata double %1235, metadata !314, metadata !DIExpression()), !dbg !1066
  store double %1235, ptr %1228, align 8, !dbg !1068, !tbaa !304
  call void @llvm.dbg.value(metadata i64 %1222, metadata !684, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !725
  br label %1236, !dbg !1634

1236:                                             ; preds = %1224, %1221, %1210, %1206, %1194, %1191, %1180, %1176, %695, %783, %474, %189, %164, %4, %1169
  ret void, !dbg !1634
}

declare !dbg !1635 i32 @gsl_vector_swap_elements(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1638 i32 @gsl_matrix_swap_columns(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_SV_decomp_mod(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1641 {
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1654, metadata !DIExpression(), metadata !1692, metadata ptr %6, metadata !DIExpression()), !dbg !1693
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1694
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1658, metadata !DIExpression(), metadata !1694, metadata ptr %7, metadata !DIExpression()), !dbg !1695
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1696
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1662, metadata !DIExpression(), metadata !1696, metadata ptr %8, metadata !DIExpression()), !dbg !1695
  %9 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1697
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1664, metadata !DIExpression(), metadata !1697, metadata ptr %9, metadata !DIExpression()), !dbg !1698
  %10 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1680, metadata !DIExpression(), metadata !1699, metadata ptr %10, metadata !DIExpression()), !dbg !1700
  %11 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1701
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1681, metadata !DIExpression(), metadata !1701, metadata ptr %11, metadata !DIExpression()), !dbg !1702
  %12 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1703
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1683, metadata !DIExpression(), metadata !1703, metadata ptr %12, metadata !DIExpression()), !dbg !1704
  %13 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1705
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1691, metadata !DIExpression(), metadata !1705, metadata ptr %13, metadata !DIExpression()), !dbg !1706
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1645, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1646, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1647, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1648, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1649, metadata !DIExpression()), !dbg !1707
  %14 = load i64, ptr %0, align 8, !dbg !1708, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1652, metadata !DIExpression()), !dbg !1707
  %15 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1709
  %16 = load i64, ptr %15, align 8, !dbg !1709, !tbaa !250
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1653, metadata !DIExpression()), !dbg !1707
  %17 = icmp ult i64 %14, %16, !dbg !1710
  br i1 %17, label %18, label %19, !dbg !1712

18:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 285, i32 noundef 24) #11, !dbg !1713
  br label %151, !dbg !1713

19:                                               ; preds = %5
  %20 = load i64, ptr %2, align 8, !dbg !1716, !tbaa !242
  %21 = icmp eq i64 %20, %16, !dbg !1718
  br i1 %21, label %23, label %22, !dbg !1719

22:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 290, i32 noundef 19) #11, !dbg !1720
  br label %151, !dbg !1720

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !1723
  %25 = load i64, ptr %24, align 8, !dbg !1723, !tbaa !250
  %26 = icmp eq i64 %16, %25, !dbg !1725
  br i1 %26, label %28, label %27, !dbg !1726

27:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 294, i32 noundef 20) #11, !dbg !1727
  br label %151, !dbg !1727

28:                                               ; preds = %23
  %29 = load i64, ptr %1, align 8, !dbg !1730, !tbaa !242
  %30 = icmp eq i64 %29, %16, !dbg !1732
  br i1 %30, label %32, label %31, !dbg !1733

31:                                               ; preds = %28
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 299, i32 noundef 19) #11, !dbg !1734
  br label %151, !dbg !1734

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !1737
  %34 = load i64, ptr %33, align 8, !dbg !1737, !tbaa !250
  %35 = icmp eq i64 %16, %34, !dbg !1739
  br i1 %35, label %37, label %36, !dbg !1740

36:                                               ; preds = %32
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 303, i32 noundef 20) #11, !dbg !1741
  br label %151, !dbg !1741

37:                                               ; preds = %32
  %38 = load i64, ptr %3, align 8, !dbg !1744, !tbaa !273
  %39 = icmp eq i64 %38, %16, !dbg !1746
  br i1 %39, label %41, label %40, !dbg !1747

40:                                               ; preds = %37
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 308, i32 noundef 19) #11, !dbg !1748
  br label %151, !dbg !1748

41:                                               ; preds = %37
  %42 = load i64, ptr %4, align 8, !dbg !1751, !tbaa !273
  %43 = icmp eq i64 %42, %16, !dbg !1753
  br i1 %43, label %45, label %44, !dbg !1754

44:                                               ; preds = %41
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 313, i32 noundef 19) #11, !dbg !1755
  br label %151, !dbg !1755

45:                                               ; preds = %41
  %46 = icmp eq i64 %16, 1, !dbg !1758
  br i1 %46, label %52, label %47, !dbg !1759

47:                                               ; preds = %45
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1650, metadata !DIExpression()), !dbg !1707
  %48 = icmp eq i64 %16, 0, !dbg !1760
  br i1 %48, label %128, label %49, !dbg !1761

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %51 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  br label %71, !dbg !1761

52:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11, !dbg !1762
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef 0) #11, !dbg !1763
  %53 = call double @gsl_blas_dnrm2(ptr noundef nonnull %6) #11, !dbg !1764
  tail call void @llvm.dbg.value(metadata double %53, metadata !1657, metadata !DIExpression()), !dbg !1693
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !292, metadata !DIExpression()), !dbg !1765
  tail call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !1765
  tail call void @llvm.dbg.value(metadata double %53, metadata !298, metadata !DIExpression()), !dbg !1765
  %54 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2, !dbg !1767
  %55 = load ptr, ptr %54, align 8, !dbg !1767, !tbaa !302
  store double %53, ptr %55, align 8, !dbg !1768, !tbaa !304
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !306, metadata !DIExpression()), !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 0, metadata !312, metadata !DIExpression()), !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 0, metadata !313, metadata !DIExpression()), !dbg !1769
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !314, metadata !DIExpression()), !dbg !1769
  %56 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 3, !dbg !1771
  %57 = load ptr, ptr %56, align 8, !dbg !1771, !tbaa !318
  store double 1.000000e+00, ptr %57, align 8, !dbg !1772, !tbaa !304
  %58 = fcmp une double %53, 0.000000e+00, !dbg !1773
  br i1 %58, label %59, label %61, !dbg !1775

59:                                               ; preds = %52
  %60 = fdiv double 1.000000e+00, %53, !dbg !1776
  call void @gsl_blas_dscal(double noundef %60, ptr noundef nonnull %6) #11, !dbg !1778
  br label %61, !dbg !1779

61:                                               ; preds = %59, %52
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11, !dbg !1780
  br label %151

62:                                               ; preds = %80
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1650, metadata !DIExpression()), !dbg !1707
  %63 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %64 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %65 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !318
  %67 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !463
  %69 = load ptr, ptr %63, align 8, !tbaa !318
  %70 = load i64, ptr %64, align 8, !tbaa !463
  br label %88, !dbg !1781

71:                                               ; preds = %49, %80
  %72 = phi i64 [ 0, %49 ], [ %75, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !1650, metadata !DIExpression()), !dbg !1707
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #11, !dbg !1782
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %72) #11, !dbg !1783
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11, !dbg !1784
  %73 = sub i64 %14, %72, !dbg !1785
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %7, i64 noundef %72, i64 noundef %73) #11, !dbg !1786
  %74 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %8) #11, !dbg !1787
  tail call void @llvm.dbg.value(metadata double %74, metadata !1663, metadata !DIExpression()), !dbg !1695
  %75 = add nuw i64 %72, 1, !dbg !1788
  %76 = icmp ult i64 %75, %16, !dbg !1789
  br i1 %76, label %77, label %80, !dbg !1790

77:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #11, !dbg !1791
  %78 = sub i64 %16, %75, !dbg !1792
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef %72, i64 noundef %75, i64 noundef %73, i64 noundef %78) #11, !dbg !1793
  %79 = call i32 @gsl_linalg_householder_hm(double noundef %74, ptr noundef nonnull %8, ptr noundef nonnull %9) #11, !dbg !1794
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #11, !dbg !1795
  br label %80, !dbg !1796

80:                                               ; preds = %77, %71
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !292, metadata !DIExpression()), !dbg !1797
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !297, metadata !DIExpression()), !dbg !1797
  tail call void @llvm.dbg.value(metadata double %74, metadata !298, metadata !DIExpression()), !dbg !1797
  %81 = load ptr, ptr %50, align 8, !dbg !1799, !tbaa !302
  %82 = load i64, ptr %51, align 8, !dbg !1800, !tbaa !349
  %83 = mul i64 %82, %72, !dbg !1801
  %84 = getelementptr inbounds double, ptr %81, i64 %83, !dbg !1802
  store double %74, ptr %84, align 8, !dbg !1803, !tbaa !304
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11, !dbg !1804
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #11, !dbg !1804
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !1650, metadata !DIExpression()), !dbg !1707
  %85 = icmp eq i64 %75, %16, !dbg !1760
  br i1 %85, label %62, label %71, !dbg !1761, !llvm.loop !1805

86:                                               ; preds = %109, %99
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1650, metadata !DIExpression()), !dbg !1707
  %87 = icmp eq i64 %107, %16, !dbg !1807
  br i1 %87, label %95, label %88, !dbg !1781, !llvm.loop !1808

88:                                               ; preds = %62, %86
  %89 = phi i64 [ 0, %62 ], [ %107, %86 ]
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1650, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1651, metadata !DIExpression()), !dbg !1707
  %90 = icmp eq i64 %89, 0, !dbg !1810
  br i1 %90, label %99, label %91, !dbg !1813

91:                                               ; preds = %88
  %92 = shl i64 %89, 3, !dbg !1810
  %93 = mul i64 %70, %89
  %94 = getelementptr double, ptr %69, i64 %93
  call void @llvm.memset.p0.i64(ptr align 8 %94, i8 0, i64 %92, i1 false), !dbg !1814, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1651, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !312, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !313, metadata !DIExpression()), !dbg !1817
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !314, metadata !DIExpression()), !dbg !1817
  br label %99, !dbg !1818

95:                                               ; preds = %86
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1651, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1707
  br i1 %48, label %128, label %96, !dbg !1820

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %98 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  br label %116, !dbg !1820

99:                                               ; preds = %88, %91
  %100 = phi i64 [ %93, %91 ], [ 0, %88 ], !dbg !1821
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !464, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !471, metadata !DIExpression()), !dbg !1823
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !472, metadata !DIExpression()), !dbg !1823
  %101 = mul i64 %68, %89, !dbg !1818
  %102 = getelementptr double, ptr %66, i64 %101, !dbg !1824
  %103 = getelementptr double, ptr %102, i64 %89, !dbg !1824
  %104 = load double, ptr %103, align 8, !dbg !1824, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %104, metadata !1667, metadata !DIExpression()), !dbg !1825
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !1826
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !312, metadata !DIExpression()), !dbg !1826
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !313, metadata !DIExpression()), !dbg !1826
  tail call void @llvm.dbg.value(metadata double %104, metadata !314, metadata !DIExpression()), !dbg !1826
  %105 = getelementptr double, ptr %69, i64 %100, !dbg !1827
  %106 = getelementptr double, ptr %105, i64 %89, !dbg !1827
  store double %104, ptr %106, align 8, !dbg !1828, !tbaa !304
  %107 = add nuw i64 %89, 1, !dbg !1829
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1651, metadata !DIExpression()), !dbg !1707
  %108 = icmp ult i64 %107, %16, !dbg !1830
  br i1 %108, label %109, label %86, !dbg !1831

109:                                              ; preds = %99, %109
  %110 = phi i64 [ %114, %109 ], [ %107, %99 ]
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !1651, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !464, metadata !DIExpression()), !dbg !1832
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !471, metadata !DIExpression()), !dbg !1832
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !472, metadata !DIExpression()), !dbg !1832
  %111 = getelementptr double, ptr %102, i64 %110, !dbg !1834
  %112 = load double, ptr %111, align 8, !dbg !1834, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %112, metadata !1672, metadata !DIExpression()), !dbg !1835
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !1836
  tail call void @llvm.dbg.value(metadata i64 undef, metadata !312, metadata !DIExpression()), !dbg !1836
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !313, metadata !DIExpression()), !dbg !1836
  tail call void @llvm.dbg.value(metadata double %112, metadata !314, metadata !DIExpression()), !dbg !1836
  %113 = getelementptr double, ptr %105, i64 %110, !dbg !1838
  store double %112, ptr %113, align 8, !dbg !1839, !tbaa !304
  %114 = add nuw i64 %110, 1, !dbg !1840
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !1651, metadata !DIExpression()), !dbg !1707
  %115 = icmp ult i64 %114, %16, !dbg !1830
  br i1 %115, label %109, label %86, !dbg !1831, !llvm.loop !1841

116:                                              ; preds = %96, %116
  %117 = phi i64 [ %16, %96 ], [ %118, %116 ]
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !1651, metadata !DIExpression()), !dbg !1707
  %118 = add i64 %117, -1, !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1651, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !337, metadata !DIExpression()), !dbg !1844
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !344, metadata !DIExpression()), !dbg !1844
  %119 = load ptr, ptr %97, align 8, !dbg !1846, !tbaa !302
  %120 = load i64, ptr %98, align 8, !dbg !1847, !tbaa !349
  %121 = mul i64 %120, %118, !dbg !1848
  %122 = getelementptr inbounds double, ptr %119, i64 %121, !dbg !1849
  %123 = load double, ptr %122, align 8, !dbg !1849, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %123, metadata !1676, metadata !DIExpression()), !dbg !1700
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #11, !dbg !1850
  %124 = sub i64 %14, %118, !dbg !1851
  %125 = sub i64 %16, %118, !dbg !1852
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %10, ptr noundef nonnull %0, i64 noundef %118, i64 noundef %118, i64 noundef %124, i64 noundef %125) #11, !dbg !1853
  %126 = call i32 @gsl_linalg_householder_hm1(double noundef %123, ptr noundef nonnull %10) #11, !dbg !1854
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #11, !dbg !1855
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1651, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1707
  %127 = icmp eq i64 %118, 0, !dbg !1856
  br i1 %127, label %128, label %116, !dbg !1820, !llvm.loop !1857

128:                                              ; preds = %116, %47, %95
  %129 = call i32 @gsl_linalg_SV_decomp(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4), !dbg !1859
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #11, !dbg !1860
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %11, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %16) #11, !dbg !1861
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1650, metadata !DIExpression()), !dbg !1707
  %130 = icmp eq i64 %14, 0, !dbg !1862
  br i1 %130, label %150, label %131, !dbg !1863

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.gsl_vector, ptr %12, i64 0, i32 2
  %133 = getelementptr inbounds %struct.gsl_vector, ptr %12, i64 0, i32 1
  br label %134, !dbg !1863

134:                                              ; preds = %131, %146
  %135 = phi i64 [ 0, %131 ], [ %148, %146 ]
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !1650, metadata !DIExpression()), !dbg !1707
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #11, !dbg !1864
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %12, ptr noundef nonnull %0, i64 noundef %135) #11, !dbg !1865
  call void @gsl_vector_set_zero(ptr noundef nonnull %11) #11, !dbg !1866
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1651, metadata !DIExpression()), !dbg !1707
  br i1 %48, label %146, label %136, !dbg !1867

136:                                              ; preds = %134, %136
  %137 = phi i64 [ %144, %136 ], [ 0, %134 ]
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !1651, metadata !DIExpression()), !dbg !1707
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !337, metadata !DIExpression()), !dbg !1868
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !344, metadata !DIExpression()), !dbg !1868
  %138 = load ptr, ptr %132, align 8, !dbg !1870, !tbaa !302
  %139 = load i64, ptr %133, align 8, !dbg !1871, !tbaa !349
  %140 = mul i64 %139, %137, !dbg !1872
  %141 = getelementptr inbounds double, ptr %138, i64 %140, !dbg !1873
  %142 = load double, ptr %141, align 8, !dbg !1873, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %142, metadata !1687, metadata !DIExpression()), !dbg !1706
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #11, !dbg !1874
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %13, ptr noundef nonnull %1, i64 noundef %137) #11, !dbg !1875
  %143 = call i32 @gsl_blas_daxpy(double noundef %142, ptr noundef nonnull %13, ptr noundef nonnull %11) #11, !dbg !1876
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #11, !dbg !1877
  %144 = add nuw i64 %137, 1, !dbg !1878
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1651, metadata !DIExpression()), !dbg !1707
  %145 = icmp eq i64 %144, %16, !dbg !1879
  br i1 %145, label %146, label %136, !dbg !1867, !llvm.loop !1880

146:                                              ; preds = %136, %134
  %147 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %12, ptr noundef nonnull %11) #11, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #11, !dbg !1883
  %148 = add nuw i64 %135, 1, !dbg !1884
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !1650, metadata !DIExpression()), !dbg !1707
  %149 = icmp eq i64 %148, %14, !dbg !1862
  br i1 %149, label %150, label %134, !dbg !1863, !llvm.loop !1885

150:                                              ; preds = %146, %128
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #11, !dbg !1887
  br label %151, !dbg !1888

151:                                              ; preds = %150, %61, %44, %40, %36, %31, %27, %22, %18
  %152 = phi i32 [ 24, %18 ], [ 19, %22 ], [ 20, %27 ], [ 19, %31 ], [ 20, %36 ], [ 19, %40 ], [ 19, %44 ], [ 0, %61 ], [ 0, %150 ], !dbg !1707
  ret i32 %152, !dbg !1889
}

declare !dbg !1890 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !1893 i32 @gsl_linalg_householder_hm(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1896 i32 @gsl_linalg_householder_hm1(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1899 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1900 void @gsl_vector_set_zero(ptr noundef) local_unnamed_addr #2

declare !dbg !1903 i32 @gsl_blas_daxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1906 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_SV_solve(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1909 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1913, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1914, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1915, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1916, metadata !DIExpression()), !dbg !1932
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1917, metadata !DIExpression()), !dbg !1932
  %6 = load i64, ptr %0, align 8, !dbg !1933, !tbaa !242
  %7 = load i64, ptr %3, align 8, !dbg !1934, !tbaa !273
  %8 = icmp eq i64 %6, %7, !dbg !1935
  br i1 %8, label %10, label %9, !dbg !1936

9:                                                ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 429, i32 noundef 19) #11, !dbg !1937
  br label %89, !dbg !1937

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1940
  %12 = load i64, ptr %11, align 8, !dbg !1940, !tbaa !250
  %13 = load i64, ptr %2, align 8, !dbg !1941, !tbaa !273
  %14 = icmp eq i64 %12, %13, !dbg !1942
  br i1 %14, label %16, label %15, !dbg !1943

15:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 434, i32 noundef 19) #11, !dbg !1944
  br label %89, !dbg !1944

16:                                               ; preds = %10
  %17 = load i64, ptr %1, align 8, !dbg !1947, !tbaa !242
  %18 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !1948
  %19 = load i64, ptr %18, align 8, !dbg !1948, !tbaa !250
  %20 = icmp eq i64 %17, %19, !dbg !1949
  br i1 %20, label %22, label %21, !dbg !1950

21:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 438, i32 noundef 20) #11, !dbg !1951
  br label %89, !dbg !1951

22:                                               ; preds = %16
  %23 = icmp eq i64 %12, %17, !dbg !1954
  br i1 %23, label %25, label %24, !dbg !1955

24:                                               ; preds = %22
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 443, i32 noundef 19) #11, !dbg !1956
  br label %89, !dbg !1956

25:                                               ; preds = %22
  %26 = load i64, ptr %4, align 8, !dbg !1959, !tbaa !273
  %27 = icmp eq i64 %12, %26, !dbg !1960
  br i1 %27, label %29, label %28, !dbg !1961

28:                                               ; preds = %25
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 19) #11, !dbg !1962
  br label %89, !dbg !1962

29:                                               ; preds = %25
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1918, metadata !DIExpression()), !dbg !1965
  %30 = tail call ptr @gsl_vector_calloc(i64 noundef %12) #11, !dbg !1966
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1926, metadata !DIExpression()), !dbg !1965
  %31 = tail call i32 @gsl_blas_dgemv(i32 noundef 112, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %3, double noundef 0.000000e+00, ptr noundef %30) #11, !dbg !1967
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1925, metadata !DIExpression()), !dbg !1965
  %32 = icmp eq i64 %12, 0, !dbg !1968
  br i1 %32, label %87, label %33, !dbg !1969

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gsl_vector, ptr %30, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !302
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %30, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !349
  %38 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !302
  %40 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !349
  %42 = and i64 %12, 1, !dbg !1969
  %43 = icmp eq i64 %12, 1, !dbg !1969
  br i1 %43, label %73, label %44, !dbg !1969

44:                                               ; preds = %33
  %45 = and i64 %12, -2, !dbg !1969
  br label %46, !dbg !1969

46:                                               ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %70, %46 ]
  %48 = phi i64 [ 0, %44 ], [ %71, %46 ]
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1925, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !337, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !344, metadata !DIExpression()), !dbg !1970
  %49 = mul i64 %37, %47, !dbg !1972
  %50 = getelementptr inbounds double, ptr %35, i64 %49, !dbg !1973
  %51 = load double, ptr %50, align 8, !dbg !1973, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %51, metadata !1927, metadata !DIExpression()), !dbg !1974
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !1975
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !344, metadata !DIExpression()), !dbg !1975
  %52 = mul i64 %41, %47, !dbg !1977
  %53 = getelementptr inbounds double, ptr %39, i64 %52, !dbg !1978
  %54 = load double, ptr %53, align 8, !dbg !1978, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %54, metadata !1931, metadata !DIExpression()), !dbg !1974
  %55 = fcmp une double %54, 0.000000e+00, !dbg !1979
  %56 = fdiv double 1.000000e+00, %54, !dbg !1981
  %57 = select i1 %55, double %56, double %54, !dbg !1981
  tail call void @llvm.dbg.value(metadata double %57, metadata !1931, metadata !DIExpression()), !dbg !1974
  %58 = fmul double %51, %57, !dbg !1982
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !292, metadata !DIExpression()), !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !297, metadata !DIExpression()), !dbg !1983
  tail call void @llvm.dbg.value(metadata double %58, metadata !298, metadata !DIExpression()), !dbg !1983
  store double %58, ptr %50, align 8, !dbg !1985, !tbaa !304
  %59 = or disjoint i64 %47, 1, !dbg !1986
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !1925, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !1925, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !337, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !344, metadata !DIExpression()), !dbg !1970
  %60 = mul i64 %37, %59, !dbg !1972
  %61 = getelementptr inbounds double, ptr %35, i64 %60, !dbg !1973
  %62 = load double, ptr %61, align 8, !dbg !1973, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %62, metadata !1927, metadata !DIExpression()), !dbg !1974
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !1975
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !344, metadata !DIExpression()), !dbg !1975
  %63 = mul i64 %41, %59, !dbg !1977
  %64 = getelementptr inbounds double, ptr %39, i64 %63, !dbg !1978
  %65 = load double, ptr %64, align 8, !dbg !1978, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %65, metadata !1931, metadata !DIExpression()), !dbg !1974
  %66 = fcmp une double %65, 0.000000e+00, !dbg !1979
  %67 = fdiv double 1.000000e+00, %65, !dbg !1981
  %68 = select i1 %66, double %67, double %65, !dbg !1981
  tail call void @llvm.dbg.value(metadata double %68, metadata !1931, metadata !DIExpression()), !dbg !1974
  %69 = fmul double %62, %68, !dbg !1982
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !292, metadata !DIExpression()), !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !297, metadata !DIExpression()), !dbg !1983
  tail call void @llvm.dbg.value(metadata double %69, metadata !298, metadata !DIExpression()), !dbg !1983
  store double %69, ptr %61, align 8, !dbg !1985, !tbaa !304
  %70 = add nuw i64 %47, 2, !dbg !1986
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !1925, metadata !DIExpression()), !dbg !1965
  %71 = add i64 %48, 2, !dbg !1969
  %72 = icmp eq i64 %71, %45, !dbg !1969
  br i1 %72, label %73, label %46, !dbg !1969, !llvm.loop !1987

73:                                               ; preds = %46, %33
  %74 = phi i64 [ 0, %33 ], [ %70, %46 ]
  %75 = icmp eq i64 %42, 0, !dbg !1969
  br i1 %75, label %87, label %76, !dbg !1969

76:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !1925, metadata !DIExpression()), !dbg !1965
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !337, metadata !DIExpression()), !dbg !1970
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !344, metadata !DIExpression()), !dbg !1970
  %77 = mul i64 %37, %74, !dbg !1972
  %78 = getelementptr inbounds double, ptr %35, i64 %77, !dbg !1973
  %79 = load double, ptr %78, align 8, !dbg !1973, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %79, metadata !1927, metadata !DIExpression()), !dbg !1974
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !1975
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !344, metadata !DIExpression()), !dbg !1975
  %80 = mul i64 %41, %74, !dbg !1977
  %81 = getelementptr inbounds double, ptr %39, i64 %80, !dbg !1978
  %82 = load double, ptr %81, align 8, !dbg !1978, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %82, metadata !1931, metadata !DIExpression()), !dbg !1974
  %83 = fcmp une double %82, 0.000000e+00, !dbg !1979
  %84 = fdiv double 1.000000e+00, %82, !dbg !1981
  %85 = select i1 %83, double %84, double %82, !dbg !1981
  tail call void @llvm.dbg.value(metadata double %85, metadata !1931, metadata !DIExpression()), !dbg !1974
  %86 = fmul double %79, %85, !dbg !1982
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !292, metadata !DIExpression()), !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !297, metadata !DIExpression()), !dbg !1983
  tail call void @llvm.dbg.value(metadata double %86, metadata !298, metadata !DIExpression()), !dbg !1983
  store double %86, ptr %78, align 8, !dbg !1985, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !1925, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1965
  br label %87, !dbg !1989

87:                                               ; preds = %76, %73, %29
  %88 = tail call i32 @gsl_blas_dgemv(i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %1, ptr noundef %30, double noundef 0.000000e+00, ptr noundef nonnull %4) #11, !dbg !1989
  tail call void @gsl_vector_free(ptr noundef %30) #11, !dbg !1990
  br label %89

89:                                               ; preds = %9, %15, %21, %24, %28, %87
  %90 = phi i32 [ 19, %9 ], [ 19, %15 ], [ 20, %21 ], [ 19, %24 ], [ 19, %28 ], [ 0, %87 ], !dbg !1991
  ret i32 %90, !dbg !1992
}

declare !dbg !1993 ptr @gsl_vector_calloc(i64 noundef) local_unnamed_addr #2

declare !dbg !1996 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2001 void @gsl_vector_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_SV_leverage(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !2002 {
  %3 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !2023
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2012, metadata !DIExpression(), metadata !2023, metadata ptr %3, metadata !DIExpression()), !dbg !2024
  %4 = alloca double, align 8, !DIAssignID !2025
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2022, metadata !DIExpression(), metadata !2025, metadata ptr %4, metadata !DIExpression()), !dbg !2024
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2006, metadata !DIExpression()), !dbg !2026
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2007, metadata !DIExpression()), !dbg !2026
  %5 = load i64, ptr %0, align 8, !dbg !2027, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2008, metadata !DIExpression()), !dbg !2026
  %6 = load i64, ptr %1, align 8, !dbg !2028, !tbaa !273
  %7 = icmp eq i64 %5, %6, !dbg !2029
  br i1 %7, label %8, label %13, !dbg !2030

8:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2009, metadata !DIExpression()), !dbg !2031
  %9 = icmp eq i64 %5, 0, !dbg !2032
  br i1 %9, label %24, label %10, !dbg !2033

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %14, !dbg !2033

13:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 495, i32 noundef 19) #11, !dbg !2034
  br label %24, !dbg !2034

14:                                               ; preds = %10, %14
  %15 = phi i64 [ 0, %10 ], [ %22, %14 ]
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !2009, metadata !DIExpression()), !dbg !2031
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #11, !dbg !2037
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %3, ptr noundef nonnull %0, i64 noundef %15) #11, !dbg !2038
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11, !dbg !2039
  %16 = call i32 @gsl_blas_ddot(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %4) #11, !dbg !2040
  %17 = load double, ptr %4, align 8, !dbg !2041, !tbaa !304
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !292, metadata !DIExpression()), !dbg !2042
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !297, metadata !DIExpression()), !dbg !2042
  tail call void @llvm.dbg.value(metadata double %17, metadata !298, metadata !DIExpression()), !dbg !2042
  %18 = load ptr, ptr %11, align 8, !dbg !2044, !tbaa !302
  %19 = load i64, ptr %12, align 8, !dbg !2045, !tbaa !349
  %20 = mul i64 %19, %15, !dbg !2046
  %21 = getelementptr inbounds double, ptr %18, i64 %20, !dbg !2047
  store double %17, ptr %21, align 8, !dbg !2048, !tbaa !304
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11, !dbg !2049
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #11, !dbg !2049
  %22 = add nuw i64 %15, 1, !dbg !2050
  tail call void @llvm.dbg.value(metadata i64 %22, metadata !2009, metadata !DIExpression()), !dbg !2031
  %23 = icmp eq i64 %22, %5, !dbg !2032
  br i1 %23, label %24, label %14, !dbg !2033, !llvm.loop !2051

24:                                               ; preds = %14, %8, %13
  %25 = phi i32 [ 19, %13 ], [ 0, %8 ], [ 0, %14 ], !dbg !2053
  ret i32 %25, !dbg !2054
}

declare !dbg !2055 void @gsl_matrix_const_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2058 i32 @gsl_blas_ddot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_SV_decomp_jacobi(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !2061 {
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !2126
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2082, metadata !DIExpression(), metadata !2126, metadata ptr %4, metadata !DIExpression()), !dbg !2127
  %5 = alloca double, align 8, !DIAssignID !2128
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2096, metadata !DIExpression(), metadata !2128, metadata ptr %5, metadata !DIExpression()), !dbg !2129
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !2130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2107, metadata !DIExpression(), metadata !2130, metadata ptr %6, metadata !DIExpression()), !dbg !2129
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !2131
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2108, metadata !DIExpression(), metadata !2131, metadata ptr %7, metadata !DIExpression()), !dbg !2129
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !2132
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2121, metadata !DIExpression(), metadata !2132, metadata ptr %8, metadata !DIExpression()), !dbg !2133
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2065, metadata !DIExpression()), !dbg !2134
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2066, metadata !DIExpression()), !dbg !2134
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2067, metadata !DIExpression()), !dbg !2134
  %9 = load i64, ptr %0, align 8, !dbg !2135, !tbaa !242
  %10 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !2136
  %11 = load i64, ptr %10, align 8, !dbg !2136, !tbaa !250
  %12 = icmp ult i64 %9, %11, !dbg !2137
  br i1 %12, label %13, label %14, !dbg !2138

13:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 542, i32 noundef 24) #11, !dbg !2139
  br label %219, !dbg !2139

14:                                               ; preds = %3
  %15 = load i64, ptr %1, align 8, !dbg !2142, !tbaa !242
  %16 = icmp eq i64 %15, %11, !dbg !2143
  br i1 %16, label %18, label %17, !dbg !2144

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 547, i32 noundef 19) #11, !dbg !2145
  br label %219, !dbg !2145

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !2148
  %20 = load i64, ptr %19, align 8, !dbg !2148, !tbaa !250
  %21 = icmp eq i64 %11, %20, !dbg !2149
  br i1 %21, label %23, label %22, !dbg !2150

22:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 551, i32 noundef 20) #11, !dbg !2151
  br label %219, !dbg !2151

23:                                               ; preds = %18
  %24 = load i64, ptr %2, align 8, !dbg !2154, !tbaa !273
  %25 = icmp eq i64 %24, %11, !dbg !2155
  br i1 %25, label %27, label %26, !dbg !2156

26:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 556, i32 noundef 19) #11, !dbg !2157
  br label %219, !dbg !2157

27:                                               ; preds = %23
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !2068, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2074, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2078, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2079, metadata !DIExpression()), !dbg !2160
  %28 = trunc i64 %11 to i32, !dbg !2161
  %29 = mul i32 %28, 5, !dbg !2161
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2080, metadata !DIExpression()), !dbg !2160
  %30 = mul i64 %9, 10, !dbg !2162
  %31 = uitofp i64 %30 to double, !dbg !2163
  %32 = fmul double %31, 0x3CB0000000000000, !dbg !2164
  tail call void @llvm.dbg.value(metadata double %32, metadata !2081, metadata !DIExpression()), !dbg !2160
  %33 = tail call i32 @llvm.smax.i32(i32 %29, i32 12), !dbg !2165
  tail call void @llvm.dbg.value(metadata i32 %33, metadata !2080, metadata !DIExpression()), !dbg !2160
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %1) #11, !dbg !2166
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2076, metadata !DIExpression()), !dbg !2160
  %34 = icmp eq i64 %11, 0, !dbg !2167
  br i1 %34, label %38, label %35, !dbg !2168

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %37 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  br label %51, !dbg !2168

38:                                               ; preds = %51, %27
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2078, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2079, metadata !DIExpression()), !dbg !2160
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
  br label %73, !dbg !2169

51:                                               ; preds = %35, %51
  %52 = phi i64 [ 0, %35 ], [ %59, %51 ]
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !2076, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11, !dbg !2170
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %52) #11, !dbg !2171
  %53 = call double @gsl_blas_dnrm2(ptr noundef nonnull %4) #11, !dbg !2172
  tail call void @llvm.dbg.value(metadata double %53, metadata !2086, metadata !DIExpression()), !dbg !2127
  %54 = fmul double %53, 0x3CB0000000000000, !dbg !2173
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2174
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !297, metadata !DIExpression()), !dbg !2174
  tail call void @llvm.dbg.value(metadata double %54, metadata !298, metadata !DIExpression()), !dbg !2174
  %55 = load ptr, ptr %36, align 8, !dbg !2176, !tbaa !302
  %56 = load i64, ptr %37, align 8, !dbg !2177, !tbaa !349
  %57 = mul i64 %56, %52, !dbg !2178
  %58 = getelementptr inbounds double, ptr %55, i64 %57, !dbg !2179
  store double %54, ptr %58, align 8, !dbg !2180, !tbaa !304
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11, !dbg !2181
  %59 = add nuw i64 %52, 1, !dbg !2182
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !2076, metadata !DIExpression()), !dbg !2160
  %60 = icmp eq i64 %59, %11, !dbg !2167
  br i1 %60, label %38, label %51, !dbg !2168, !llvm.loop !2183

61:                                               ; preds = %189
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !2119, metadata !DIExpression()), !dbg !2185
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2076, metadata !DIExpression()), !dbg !2160
  br i1 %34, label %217, label %62, !dbg !2186

62:                                               ; preds = %61
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, metadata !2119, metadata !DIExpression()), !dbg !2185
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2076, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11, !dbg !2187
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %0, i64 noundef 0) #11, !dbg !2188
  %63 = call double @gsl_blas_dnrm2(ptr noundef nonnull %8) #11, !dbg !2189
  tail call void @llvm.dbg.value(metadata double %63, metadata !2125, metadata !DIExpression()), !dbg !2133
  %64 = fcmp oeq double %63, 0.000000e+00, !dbg !2190
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2192
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2195
  tail call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 0, metadata !297, metadata !DIExpression()), !dbg !2195
  %65 = load ptr, ptr %44, align 8, !dbg !2198, !tbaa !302
  br i1 %64, label %69, label %66, !dbg !2200

66:                                               ; preds = %62
  tail call void @llvm.dbg.value(metadata double %63, metadata !298, metadata !DIExpression()), !dbg !2195
  store double %63, ptr %65, align 8, !dbg !2201, !tbaa !304
  %67 = fdiv double 1.000000e+00, %63, !dbg !2202
  %68 = call i32 @gsl_vector_scale(ptr noundef nonnull %8, double noundef %67) #11, !dbg !2203
  tail call void @llvm.dbg.value(metadata double %63, metadata !2119, metadata !DIExpression()), !dbg !2185
  br label %70

69:                                               ; preds = %62
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !2192
  store double 0.000000e+00, ptr %65, align 8, !dbg !2204, !tbaa !304
  call void @gsl_vector_set_zero(ptr noundef nonnull %8) #11, !dbg !2205
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2119, metadata !DIExpression()), !dbg !2185
  br label %70, !dbg !2206

70:                                               ; preds = %69, %66
  %71 = phi double [ 0.000000e+00, %69 ], [ %63, %66 ], !dbg !2199
  tail call void @llvm.dbg.value(metadata double %71, metadata !2119, metadata !DIExpression()), !dbg !2185
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11, !dbg !2207
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2076, metadata !DIExpression()), !dbg !2160
  %72 = icmp eq i64 %11, 1, !dbg !2208
  br i1 %72, label %217, label %195, !dbg !2186

73:                                               ; preds = %38, %189
  %74 = phi i32 [ 0, %38 ], [ %191, %189 ]
  tail call void @llvm.dbg.value(metadata i32 %74, metadata !2079, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %42, metadata !2078, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2076, metadata !DIExpression()), !dbg !2160
  br i1 %43, label %189, label %78, !dbg !2209

75:                                               ; preds = %185, %78
  %76 = phi i32 [ %80, %78 ], [ %186, %185 ], !dbg !2210
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !2076, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !2078, metadata !DIExpression()), !dbg !2160
  %77 = icmp eq i64 %81, %39, !dbg !2211
  br i1 %77, label %189, label %78, !dbg !2209, !llvm.loop !2212

78:                                               ; preds = %73, %75
  %79 = phi i64 [ %81, %75 ], [ 0, %73 ]
  %80 = phi i32 [ %76, %75 ], [ %42, %73 ]
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2076, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !2078, metadata !DIExpression()), !dbg !2160
  %81 = add nuw i64 %79, 1, !dbg !2214
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !2077, metadata !DIExpression()), !dbg !2160
  %82 = icmp ult i64 %81, %11, !dbg !2215
  br i1 %82, label %83, label %75, !dbg !2216

83:                                               ; preds = %78, %185
  %84 = phi i64 [ %187, %185 ], [ %81, %78 ]
  %85 = phi i32 [ %186, %185 ], [ %80, %78 ]
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2077, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !2078, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2087, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2095, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11, !dbg !2217
  store double 0.000000e+00, ptr %5, align 8, !dbg !2218, !tbaa !304, !DIAssignID !2219
  call void @llvm.dbg.assign(metadata double 0.000000e+00, metadata !2096, metadata !DIExpression(), metadata !2219, metadata ptr %5, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2097, metadata !DIExpression()), !dbg !2129
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #11, !dbg !2220
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %79) #11, !dbg !2221
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #11, !dbg !2222
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %84) #11, !dbg !2223
  %86 = call i32 @gsl_blas_ddot(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #11, !dbg !2224
  %87 = load double, ptr %5, align 8, !dbg !2225, !tbaa !304
  %88 = fmul double %87, 2.000000e+00, !dbg !2225
  store double %88, ptr %5, align 8, !dbg !2225, !tbaa !304, !DIAssignID !2226
  call void @llvm.dbg.assign(metadata double %88, metadata !2096, metadata !DIExpression(), metadata !2226, metadata ptr %5, metadata !DIExpression()), !dbg !2129
  %89 = call double @gsl_blas_dnrm2(ptr noundef nonnull %6) #11, !dbg !2227
  tail call void @llvm.dbg.value(metadata double %89, metadata !2087, metadata !DIExpression()), !dbg !2129
  %90 = call double @gsl_blas_dnrm2(ptr noundef nonnull %7) #11, !dbg !2228
  tail call void @llvm.dbg.value(metadata double %90, metadata !2095, metadata !DIExpression()), !dbg !2129
  %91 = fmul double %89, %89, !dbg !2229
  %92 = fmul double %90, %90, !dbg !2230
  %93 = fsub double %91, %92, !dbg !2231
  tail call void @llvm.dbg.value(metadata double %93, metadata !2097, metadata !DIExpression()), !dbg !2129
  %94 = load double, ptr %5, align 8, !dbg !2232, !tbaa !304
  %95 = call double @hypot(double noundef %94, double noundef %93) #11, !dbg !2233
  tail call void @llvm.dbg.value(metadata double %95, metadata !2100, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !2234
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !344, metadata !DIExpression()), !dbg !2234
  %96 = load ptr, ptr %44, align 8, !dbg !2236, !tbaa !302
  %97 = load i64, ptr %45, align 8, !dbg !2237, !tbaa !349
  %98 = mul i64 %97, %79, !dbg !2238
  %99 = getelementptr inbounds double, ptr %96, i64 %98, !dbg !2239
  %100 = load double, ptr %99, align 8, !dbg !2239, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %100, metadata !2101, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !2240
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !344, metadata !DIExpression()), !dbg !2240
  %101 = mul i64 %97, %84, !dbg !2242
  %102 = getelementptr inbounds double, ptr %96, i64 %101, !dbg !2243
  %103 = load double, ptr %102, align 8, !dbg !2243, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %103, metadata !2102, metadata !DIExpression()), !dbg !2129
  %104 = call double @gsl_coerce_double(double noundef %89) #11, !dbg !2244
  %105 = call double @gsl_coerce_double(double noundef %90) #11, !dbg !2245
  %106 = fcmp ult double %104, %105, !dbg !2246
  tail call void @llvm.dbg.value(metadata i1 %106, metadata !2103, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  %107 = load double, ptr %5, align 8, !dbg !2247, !tbaa !304
  %108 = fmul double %89, %90, !dbg !2248
  %109 = call double @gsl_coerce_double(double noundef %108) #11, !dbg !2248
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !2104, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !2105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  tail call void @llvm.dbg.value(metadata i1 poison, metadata !2106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  br i1 %106, label %130, label %110, !dbg !2249

110:                                              ; preds = %83
  %111 = fcmp olt double %90, %103, !dbg !2251
  tail call void @llvm.dbg.value(metadata i1 %111, metadata !2106, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  %112 = fcmp olt double %89, %100, !dbg !2252
  tail call void @llvm.dbg.value(metadata i1 %112, metadata !2105, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  %113 = call double @llvm.fabs.f64(double %107), !dbg !2253
  %114 = fmul double %32, %109, !dbg !2254
  %115 = fcmp ole double %113, %114, !dbg !2255
  tail call void @llvm.dbg.value(metadata i1 %115, metadata !2104, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2129
  %116 = select i1 %115, i1 true, i1 %112, !dbg !2256
  %117 = select i1 %116, i1 true, i1 %111, !dbg !2256
  br i1 %117, label %118, label %120, !dbg !2256

118:                                              ; preds = %110
  %119 = add nsw i32 %85, -1, !dbg !2257
  tail call void @llvm.dbg.value(metadata i32 %119, metadata !2078, metadata !DIExpression()), !dbg !2160
  br label %185, !dbg !2259

120:                                              ; preds = %110
  %121 = fcmp une double %95, 0.000000e+00, !dbg !2260
  br i1 %121, label %122, label %130, !dbg !2262

122:                                              ; preds = %120
  %123 = fadd double %95, %93, !dbg !2263
  %124 = fmul double %95, 2.000000e+00, !dbg !2265
  %125 = fdiv double %123, %124, !dbg !2266
  %126 = call double @sqrt(double noundef %125) #11, !dbg !2267
  tail call void @llvm.dbg.value(metadata double %126, metadata !2098, metadata !DIExpression()), !dbg !2129
  %127 = load double, ptr %5, align 8, !dbg !2268, !tbaa !304
  %128 = fmul double %124, %126, !dbg !2269
  %129 = fdiv double %127, %128, !dbg !2270
  tail call void @llvm.dbg.value(metadata double %129, metadata !2099, metadata !DIExpression()), !dbg !2129
  br label %130

130:                                              ; preds = %83, %120, %122
  %131 = phi double [ %129, %122 ], [ 1.000000e+00, %120 ], [ 1.000000e+00, %83 ], !dbg !2271
  %132 = phi double [ %126, %122 ], [ 0.000000e+00, %120 ], [ 0.000000e+00, %83 ], !dbg !2271
  tail call void @llvm.dbg.value(metadata double %132, metadata !2098, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata double %131, metadata !2099, metadata !DIExpression()), !dbg !2129
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2075, metadata !DIExpression()), !dbg !2160
  br i1 %46, label %152, label %133, !dbg !2272

133:                                              ; preds = %130
  %134 = load ptr, ptr %47, align 8, !tbaa !318
  %135 = load i64, ptr %48, align 8, !tbaa !463
  br label %136, !dbg !2272

136:                                              ; preds = %133, %136
  %137 = phi i64 [ 0, %133 ], [ %150, %136 ]
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !2075, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !464, metadata !DIExpression()), !dbg !2273
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !471, metadata !DIExpression()), !dbg !2273
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !472, metadata !DIExpression()), !dbg !2273
  %138 = mul i64 %135, %137, !dbg !2275
  %139 = getelementptr double, ptr %134, i64 %138, !dbg !2276
  %140 = getelementptr double, ptr %139, i64 %84, !dbg !2276
  %141 = load double, ptr %140, align 8, !dbg !2276, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %141, metadata !2109, metadata !DIExpression()), !dbg !2277
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !464, metadata !DIExpression()), !dbg !2278
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !471, metadata !DIExpression()), !dbg !2278
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !472, metadata !DIExpression()), !dbg !2278
  %142 = getelementptr double, ptr %139, i64 %79, !dbg !2280
  %143 = load double, ptr %142, align 8, !dbg !2280, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %143, metadata !2113, metadata !DIExpression()), !dbg !2277
  %144 = fmul double %132, %143, !dbg !2281
  %145 = fmul double %131, %141, !dbg !2282
  %146 = fadd double %145, %144, !dbg !2283
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !306, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !312, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !313, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata double %146, metadata !314, metadata !DIExpression()), !dbg !2284
  store double %146, ptr %142, align 8, !dbg !2286, !tbaa !304
  %147 = fmul double %132, %141, !dbg !2287
  %148 = fmul double %131, %143, !dbg !2288
  %149 = fsub double %147, %148, !dbg !2288
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !306, metadata !DIExpression()), !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !312, metadata !DIExpression()), !dbg !2289
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !313, metadata !DIExpression()), !dbg !2289
  tail call void @llvm.dbg.value(metadata double %149, metadata !314, metadata !DIExpression()), !dbg !2289
  store double %149, ptr %140, align 8, !dbg !2291, !tbaa !304
  %150 = add nuw i64 %137, 1, !dbg !2292
  tail call void @llvm.dbg.value(metadata i64 %150, metadata !2075, metadata !DIExpression()), !dbg !2160
  %151 = icmp eq i64 %150, %9, !dbg !2293
  br i1 %151, label %152, label %136, !dbg !2272, !llvm.loop !2294

152:                                              ; preds = %136, %130
  %153 = call double @llvm.fabs.f64(double %132), !dbg !2296
  %154 = fmul double %100, %153, !dbg !2297
  %155 = call double @llvm.fabs.f64(double %131), !dbg !2298
  %156 = fmul double %103, %155, !dbg !2299
  %157 = fadd double %156, %154, !dbg !2300
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2301
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !297, metadata !DIExpression()), !dbg !2301
  tail call void @llvm.dbg.value(metadata double %157, metadata !298, metadata !DIExpression()), !dbg !2301
  %158 = load ptr, ptr %44, align 8, !dbg !2303, !tbaa !302
  %159 = load i64, ptr %45, align 8, !dbg !2304, !tbaa !349
  %160 = mul i64 %159, %79, !dbg !2305
  %161 = getelementptr inbounds double, ptr %158, i64 %160, !dbg !2306
  store double %157, ptr %161, align 8, !dbg !2307, !tbaa !304
  %162 = fmul double %100, %155, !dbg !2308
  %163 = fmul double %103, %153, !dbg !2309
  %164 = fadd double %162, %163, !dbg !2310
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2311
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !297, metadata !DIExpression()), !dbg !2311
  tail call void @llvm.dbg.value(metadata double %164, metadata !298, metadata !DIExpression()), !dbg !2311
  %165 = mul i64 %159, %84, !dbg !2313
  %166 = getelementptr inbounds double, ptr %158, i64 %165, !dbg !2314
  store double %164, ptr %166, align 8, !dbg !2315, !tbaa !304
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2075, metadata !DIExpression()), !dbg !2160
  %167 = load ptr, ptr %49, align 8, !tbaa !318
  %168 = load i64, ptr %50, align 8, !tbaa !463
  br label %169, !dbg !2316

169:                                              ; preds = %152, %169
  %170 = phi i64 [ 0, %152 ], [ %183, %169 ]
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2075, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !471, metadata !DIExpression()), !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !472, metadata !DIExpression()), !dbg !2317
  %171 = mul i64 %168, %170, !dbg !2319
  %172 = getelementptr double, ptr %167, i64 %171, !dbg !2320
  %173 = getelementptr double, ptr %172, i64 %79, !dbg !2320
  %174 = load double, ptr %173, align 8, !dbg !2320, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %174, metadata !2114, metadata !DIExpression()), !dbg !2321
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !464, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !471, metadata !DIExpression()), !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !472, metadata !DIExpression()), !dbg !2322
  %175 = getelementptr double, ptr %172, i64 %84, !dbg !2324
  %176 = load double, ptr %175, align 8, !dbg !2324, !tbaa !304
  tail call void @llvm.dbg.value(metadata double %176, metadata !2118, metadata !DIExpression()), !dbg !2321
  %177 = fmul double %132, %174, !dbg !2325
  %178 = fmul double %131, %176, !dbg !2326
  %179 = fadd double %177, %178, !dbg !2327
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !312, metadata !DIExpression()), !dbg !2328
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !313, metadata !DIExpression()), !dbg !2328
  tail call void @llvm.dbg.value(metadata double %179, metadata !314, metadata !DIExpression()), !dbg !2328
  store double %179, ptr %173, align 8, !dbg !2330, !tbaa !304
  %180 = fmul double %132, %176, !dbg !2331
  %181 = fmul double %131, %174, !dbg !2332
  %182 = fsub double %180, %181, !dbg !2332
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !306, metadata !DIExpression()), !dbg !2333
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !312, metadata !DIExpression()), !dbg !2333
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !313, metadata !DIExpression()), !dbg !2333
  tail call void @llvm.dbg.value(metadata double %182, metadata !314, metadata !DIExpression()), !dbg !2333
  store double %182, ptr %175, align 8, !dbg !2335, !tbaa !304
  %183 = add nuw i64 %170, 1, !dbg !2336
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2075, metadata !DIExpression()), !dbg !2160
  %184 = icmp eq i64 %183, %11, !dbg !2337
  br i1 %184, label %185, label %169, !dbg !2316, !llvm.loop !2338

185:                                              ; preds = %169, %118
  %186 = phi i32 [ %119, %118 ], [ %85, %169 ], !dbg !2210
  tail call void @llvm.dbg.value(metadata i32 %186, metadata !2078, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #11, !dbg !2340
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #11, !dbg !2340
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11, !dbg !2340
  %187 = add nuw i64 %84, 1, !dbg !2341
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2077, metadata !DIExpression()), !dbg !2160
  %188 = icmp ult i64 %187, %11, !dbg !2215
  br i1 %188, label %83, label %75, !dbg !2216, !llvm.loop !2342

189:                                              ; preds = %75, %73
  %190 = phi i32 [ %42, %73 ], [ %76, %75 ], !dbg !2344
  %191 = add nuw nsw i32 %74, 1, !dbg !2345
  tail call void @llvm.dbg.value(metadata i32 %190, metadata !2078, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i32 %191, metadata !2079, metadata !DIExpression()), !dbg !2160
  %192 = icmp sgt i32 %190, 0, !dbg !2346
  %193 = icmp ult i32 %74, %33, !dbg !2347
  %194 = select i1 %192, i1 %193, i1 false, !dbg !2347
  br i1 %194, label %73, label %61, !dbg !2169, !llvm.loop !2348

195:                                              ; preds = %70, %213
  %196 = phi double [ %214, %213 ], [ %71, %70 ]
  %197 = phi i64 [ %215, %213 ], [ 1, %70 ]
  tail call void @llvm.dbg.value(metadata double %196, metadata !2119, metadata !DIExpression()), !dbg !2185
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2076, metadata !DIExpression()), !dbg !2160
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #11, !dbg !2187
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %0, i64 noundef %197) #11, !dbg !2188
  %198 = call double @gsl_blas_dnrm2(ptr noundef nonnull %8) #11, !dbg !2189
  tail call void @llvm.dbg.value(metadata double %198, metadata !2125, metadata !DIExpression()), !dbg !2133
  %199 = fcmp une double %198, 0.000000e+00, !dbg !2190
  %200 = fcmp une double %196, 0.000000e+00
  %201 = and i1 %200, %199, !dbg !2200
  %202 = fmul double %32, %196
  %203 = fcmp ugt double %198, %202
  %204 = and i1 %201, %203, !dbg !2200
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2195
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !292, metadata !DIExpression()), !dbg !2192
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !297, metadata !DIExpression()), !dbg !2195
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !297, metadata !DIExpression()), !dbg !2192
  %205 = load ptr, ptr %44, align 8, !dbg !2198, !tbaa !302
  %206 = load i64, ptr %45, align 8, !dbg !2350, !tbaa !349
  %207 = mul i64 %206, %197, !dbg !2351
  %208 = getelementptr inbounds double, ptr %205, i64 %207, !dbg !2352
  br i1 %204, label %210, label %209, !dbg !2200

209:                                              ; preds = %195
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !298, metadata !DIExpression()), !dbg !2192
  store double 0.000000e+00, ptr %208, align 8, !dbg !2204, !tbaa !304
  call void @gsl_vector_set_zero(ptr noundef nonnull %8) #11, !dbg !2205
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2119, metadata !DIExpression()), !dbg !2185
  br label %213, !dbg !2206

210:                                              ; preds = %195
  tail call void @llvm.dbg.value(metadata double %198, metadata !298, metadata !DIExpression()), !dbg !2195
  store double %198, ptr %208, align 8, !dbg !2201, !tbaa !304
  %211 = fdiv double 1.000000e+00, %198, !dbg !2202
  %212 = call i32 @gsl_vector_scale(ptr noundef nonnull %8, double noundef %211) #11, !dbg !2203
  tail call void @llvm.dbg.value(metadata double %198, metadata !2119, metadata !DIExpression()), !dbg !2185
  br label %213

213:                                              ; preds = %210, %209
  %214 = phi double [ 0.000000e+00, %209 ], [ %198, %210 ], !dbg !2199
  tail call void @llvm.dbg.value(metadata double %214, metadata !2119, metadata !DIExpression()), !dbg !2185
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #11, !dbg !2207
  %215 = add nuw i64 %197, 1, !dbg !2353
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !2076, metadata !DIExpression()), !dbg !2160
  %216 = icmp eq i64 %215, %11, !dbg !2208
  br i1 %216, label %217, label %195, !dbg !2186, !llvm.loop !2354

217:                                              ; preds = %213, %70, %61
  br i1 %192, label %218, label %219, !dbg !2357

218:                                              ; preds = %217
  call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 712, i32 noundef 14) #11, !dbg !2358
  br label %219, !dbg !2358

219:                                              ; preds = %218, %217, %13, %17, %22, %26
  %220 = phi i32 [ 24, %13 ], [ 19, %17 ], [ 20, %22 ], [ 19, %26 ], [ 14, %218 ], [ 0, %217 ], !dbg !2362
  ret i32 %220, !dbg !2363
}

declare !dbg !2364 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2367 double @hypot(double noundef, double noundef) local_unnamed_addr #5

declare !dbg !2371 double @gsl_coerce_double(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !2374 double @sqrt(double noundef) local_unnamed_addr #6

declare !dbg !2377 i32 @gsl_vector_scale(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare !dbg !2380 double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2384 double @ldexp(double noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }

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
!591 = !DILocation(line: 33, column: 54, scope: !588)
!592 = !DILocation(line: 33, column: 40, scope: !588)
!593 = !DILocation(line: 33, column: 22, scope: !588)
!594 = !DILocation(line: 33, column: 11, scope: !564)
!595 = !DILocation(line: 0, scope: !293, inlinedAt: !596)
!596 = distinct !DILocation(line: 35, column: 11, scope: !597)
!597 = distinct !DILexicalBlock(scope: !588, file: !554, line: 34, column: 9)
!598 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !596)
!599 = !DILocation(line: 36, column: 9, scope: !597)
!600 = distinct !{!600, !574, !601, !358}
!601 = !DILocation(line: 39, column: 5, scope: !566)
!602 = !DILocation(line: 41, column: 1, scope: !553)
!603 = !DISubprogram(name: "gsl_isnan", scope: !604, file: !604, line: 43, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!605 = !DISubroutineType(types: !606)
!606 = !{!70, !310}
!607 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !128, file: !128, line: 101, type: !608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!608 = !DISubroutineType(types: !609)
!609 = !{!194, !126, !170, !170, !170, !170}
!610 = distinct !DISubprogram(name: "qrstep", scope: !554, file: !554, line: 416, type: !611, scopeLine: 417, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !613)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !149, !149, !126, !126}
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !635, !637, !639, !640, !641, !643, !647, !648, !652, !653, !655, !656, !657, !658, !659, !663, !664, !666, !667, !668, !669}
!614 = !DILocalVariable(name: "d", arg: 1, scope: !610, file: !554, line: 416, type: !149)
!615 = !DILocalVariable(name: "f", arg: 2, scope: !610, file: !554, line: 416, type: !149)
!616 = !DILocalVariable(name: "U", arg: 3, scope: !610, file: !554, line: 416, type: !126)
!617 = !DILocalVariable(name: "V", arg: 4, scope: !610, file: !554, line: 416, type: !126)
!618 = !DILocalVariable(name: "M", scope: !610, file: !554, line: 419, type: !170)
!619 = !DILocalVariable(name: "N", scope: !610, file: !554, line: 420, type: !170)
!620 = !DILocalVariable(name: "n", scope: !610, file: !554, line: 422, type: !170)
!621 = !DILocalVariable(name: "y", scope: !610, file: !554, line: 423, type: !139)
!622 = !DILocalVariable(name: "z", scope: !610, file: !554, line: 423, type: !139)
!623 = !DILocalVariable(name: "ak", scope: !610, file: !554, line: 424, type: !139)
!624 = !DILocalVariable(name: "bk", scope: !610, file: !554, line: 424, type: !139)
!625 = !DILocalVariable(name: "zk", scope: !610, file: !554, line: 424, type: !139)
!626 = !DILocalVariable(name: "ap", scope: !610, file: !554, line: 424, type: !139)
!627 = !DILocalVariable(name: "bp", scope: !610, file: !554, line: 424, type: !139)
!628 = !DILocalVariable(name: "aq", scope: !610, file: !554, line: 424, type: !139)
!629 = !DILocalVariable(name: "i", scope: !610, file: !554, line: 425, type: !132)
!630 = !DILocalVariable(name: "k", scope: !610, file: !554, line: 425, type: !132)
!631 = !DILocalVariable(name: "d_i", scope: !632, file: !554, line: 442, type: !139)
!632 = distinct !DILexicalBlock(scope: !633, file: !554, line: 441, column: 5)
!633 = distinct !DILexicalBlock(scope: !634, file: !554, line: 440, column: 3)
!634 = distinct !DILexicalBlock(scope: !610, file: !554, line: 440, column: 3)
!635 = !DILocalVariable(name: "d_nm1", scope: !636, file: !554, line: 454, type: !139)
!636 = distinct !DILexicalBlock(scope: !610, file: !554, line: 453, column: 3)
!637 = !DILocalVariable(name: "d0", scope: !638, file: !554, line: 467, type: !139)
!638 = distinct !DILexicalBlock(scope: !610, file: !554, line: 466, column: 3)
!639 = !DILocalVariable(name: "f0", scope: !638, file: !554, line: 468, type: !139)
!640 = !DILocalVariable(name: "d1", scope: !638, file: !554, line: 470, type: !139)
!641 = !DILocalVariable(name: "mu", scope: !642, file: !554, line: 473, type: !139)
!642 = distinct !DILexicalBlock(scope: !638, file: !554, line: 472, column: 5)
!643 = !DILocalVariable(name: "c", scope: !644, file: !554, line: 492, type: !139)
!644 = distinct !DILexicalBlock(scope: !645, file: !554, line: 491, column: 5)
!645 = distinct !DILexicalBlock(scope: !646, file: !554, line: 490, column: 3)
!646 = distinct !DILexicalBlock(scope: !610, file: !554, line: 490, column: 3)
!647 = !DILocalVariable(name: "s", scope: !644, file: !554, line: 492, type: !139)
!648 = !DILocalVariable(name: "Vip", scope: !649, file: !554, line: 506, type: !139)
!649 = distinct !DILexicalBlock(scope: !650, file: !554, line: 505, column: 9)
!650 = distinct !DILexicalBlock(scope: !651, file: !554, line: 504, column: 7)
!651 = distinct !DILexicalBlock(scope: !644, file: !554, line: 504, column: 7)
!652 = !DILocalVariable(name: "Viq", scope: !649, file: !554, line: 507, type: !139)
!653 = !DILocalVariable(name: "bk1", scope: !654, file: !554, line: 516, type: !139)
!654 = distinct !DILexicalBlock(scope: !644, file: !554, line: 515, column: 7)
!655 = !DILocalVariable(name: "ap1", scope: !654, file: !554, line: 518, type: !139)
!656 = !DILocalVariable(name: "bp1", scope: !654, file: !554, line: 519, type: !139)
!657 = !DILocalVariable(name: "zp1", scope: !654, file: !554, line: 520, type: !139)
!658 = !DILocalVariable(name: "aq1", scope: !654, file: !554, line: 522, type: !139)
!659 = !DILocalVariable(name: "Uip", scope: !660, file: !554, line: 561, type: !139)
!660 = distinct !DILexicalBlock(scope: !661, file: !554, line: 560, column: 9)
!661 = distinct !DILexicalBlock(scope: !662, file: !554, line: 559, column: 7)
!662 = distinct !DILexicalBlock(scope: !644, file: !554, line: 559, column: 7)
!663 = !DILocalVariable(name: "Uiq", scope: !660, file: !554, line: 562, type: !139)
!664 = !DILocalVariable(name: "ak1", scope: !665, file: !554, line: 571, type: !139)
!665 = distinct !DILexicalBlock(scope: !644, file: !554, line: 570, column: 7)
!666 = !DILocalVariable(name: "bk1", scope: !665, file: !554, line: 572, type: !139)
!667 = !DILocalVariable(name: "zk1", scope: !665, file: !554, line: 573, type: !139)
!668 = !DILocalVariable(name: "ap1", scope: !665, file: !554, line: 575, type: !139)
!669 = !DILocalVariable(name: "bp1", scope: !665, file: !554, line: 576, type: !139)
!670 = distinct !DIAssignID()
!671 = distinct !DIAssignID()
!672 = !DILocation(line: 0, scope: !610)
!673 = !DILocation(line: 419, column: 23, scope: !610)
!674 = !DILocation(line: 420, column: 23, scope: !610)
!675 = !DILocation(line: 422, column: 23, scope: !610)
!676 = !DILocation(line: 427, column: 7, scope: !610)
!677 = !DILocation(line: 440, column: 3, scope: !634)
!678 = !DILocalVariable(name: "d", arg: 1, scope: !679, file: !554, line: 171, type: !149)
!679 = distinct !DISubprogram(name: "svd2", scope: !554, file: !554, line: 171, type: !611, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !680)
!680 = !{!678, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !702, !703, !709, !710, !715, !716, !719, !720, !724}
!681 = !DILocalVariable(name: "f", arg: 2, scope: !679, file: !554, line: 171, type: !149)
!682 = !DILocalVariable(name: "U", arg: 3, scope: !679, file: !554, line: 171, type: !126)
!683 = !DILocalVariable(name: "V", arg: 4, scope: !679, file: !554, line: 171, type: !126)
!684 = !DILocalVariable(name: "i", scope: !679, file: !554, line: 173, type: !132)
!685 = !DILocalVariable(name: "c", scope: !679, file: !554, line: 174, type: !139)
!686 = !DILocalVariable(name: "s", scope: !679, file: !554, line: 174, type: !139)
!687 = !DILocalVariable(name: "a11", scope: !679, file: !554, line: 174, type: !139)
!688 = !DILocalVariable(name: "a12", scope: !679, file: !554, line: 174, type: !139)
!689 = !DILocalVariable(name: "a21", scope: !679, file: !554, line: 174, type: !139)
!690 = !DILocalVariable(name: "a22", scope: !679, file: !554, line: 174, type: !139)
!691 = !DILocalVariable(name: "M", scope: !679, file: !554, line: 176, type: !170)
!692 = !DILocalVariable(name: "N", scope: !679, file: !554, line: 177, type: !170)
!693 = !DILocalVariable(name: "d0", scope: !679, file: !554, line: 179, type: !139)
!694 = !DILocalVariable(name: "f0", scope: !679, file: !554, line: 180, type: !139)
!695 = !DILocalVariable(name: "d1", scope: !679, file: !554, line: 182, type: !139)
!696 = !DILocalVariable(name: "Uip", scope: !697, file: !554, line: 200, type: !139)
!697 = distinct !DILexicalBlock(scope: !698, file: !554, line: 199, column: 9)
!698 = distinct !DILexicalBlock(scope: !699, file: !554, line: 198, column: 7)
!699 = distinct !DILexicalBlock(scope: !700, file: !554, line: 198, column: 7)
!700 = distinct !DILexicalBlock(scope: !701, file: !554, line: 185, column: 5)
!701 = distinct !DILexicalBlock(scope: !679, file: !554, line: 184, column: 7)
!702 = !DILocalVariable(name: "Uiq", scope: !697, file: !554, line: 201, type: !139)
!703 = !DILocalVariable(name: "Vip", scope: !704, file: !554, line: 227, type: !139)
!704 = distinct !DILexicalBlock(scope: !705, file: !554, line: 226, column: 9)
!705 = distinct !DILexicalBlock(scope: !706, file: !554, line: 225, column: 7)
!706 = distinct !DILexicalBlock(scope: !707, file: !554, line: 225, column: 7)
!707 = distinct !DILexicalBlock(scope: !708, file: !554, line: 213, column: 5)
!708 = distinct !DILexicalBlock(scope: !701, file: !554, line: 212, column: 12)
!709 = !DILocalVariable(name: "Viq", scope: !704, file: !554, line: 228, type: !139)
!710 = !DILocalVariable(name: "Vip", scope: !711, file: !554, line: 253, type: !139)
!711 = distinct !DILexicalBlock(scope: !712, file: !554, line: 252, column: 9)
!712 = distinct !DILexicalBlock(scope: !713, file: !554, line: 251, column: 7)
!713 = distinct !DILexicalBlock(scope: !714, file: !554, line: 251, column: 7)
!714 = distinct !DILexicalBlock(scope: !708, file: !554, line: 236, column: 5)
!715 = !DILocalVariable(name: "Viq", scope: !711, file: !554, line: 254, type: !139)
!716 = !DILocalVariable(name: "t1", scope: !717, file: !554, line: 264, type: !139)
!717 = distinct !DILexicalBlock(scope: !718, file: !554, line: 263, column: 9)
!718 = distinct !DILexicalBlock(scope: !714, file: !554, line: 262, column: 11)
!719 = !DILocalVariable(name: "t2", scope: !717, file: !554, line: 264, type: !139)
!720 = !DILocalVariable(name: "Uip", scope: !721, file: !554, line: 288, type: !139)
!721 = distinct !DILexicalBlock(scope: !722, file: !554, line: 287, column: 9)
!722 = distinct !DILexicalBlock(scope: !723, file: !554, line: 286, column: 7)
!723 = distinct !DILexicalBlock(scope: !714, file: !554, line: 286, column: 7)
!724 = !DILocalVariable(name: "Uiq", scope: !721, file: !554, line: 289, type: !139)
!725 = !DILocation(line: 0, scope: !679, inlinedAt: !726)
!726 = distinct !DILocation(line: 434, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !554, line: 433, column: 5)
!728 = distinct !DILexicalBlock(scope: !610, file: !554, line: 432, column: 7)
!729 = !DILocation(line: 0, scope: !338, inlinedAt: !730)
!730 = distinct !DILocation(line: 179, column: 15, scope: !679, inlinedAt: !726)
!731 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !730)
!732 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !730)
!733 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !730)
!734 = !DILocation(line: 0, scope: !338, inlinedAt: !735)
!735 = distinct !DILocation(line: 180, column: 15, scope: !679, inlinedAt: !726)
!736 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !735)
!737 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !735)
!738 = !DILocation(line: 0, scope: !338, inlinedAt: !739)
!739 = distinct !DILocation(line: 182, column: 15, scope: !679, inlinedAt: !726)
!740 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !739)
!741 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !739)
!742 = !DILocation(line: 184, column: 10, scope: !701, inlinedAt: !726)
!743 = !DILocation(line: 0, scope: !701, inlinedAt: !726)
!744 = !DILocation(line: 184, column: 7, scope: !679, inlinedAt: !726)
!745 = !DILocalVariable(name: "a", arg: 1, scope: !746, file: !547, line: 740, type: !310)
!746 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !547, file: !547, line: 740, type: !747, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !310, !310, !138, !138}
!749 = !{!745, !750, !751, !752, !753, !757, !758, !760}
!750 = !DILocalVariable(name: "b", arg: 2, scope: !746, file: !547, line: 740, type: !310)
!751 = !DILocalVariable(name: "c", arg: 3, scope: !746, file: !547, line: 740, type: !138)
!752 = !DILocalVariable(name: "s", arg: 4, scope: !746, file: !547, line: 740, type: !138)
!753 = !DILocalVariable(name: "t", scope: !754, file: !547, line: 749, type: !139)
!754 = distinct !DILexicalBlock(scope: !755, file: !547, line: 748, column: 5)
!755 = distinct !DILexicalBlock(scope: !756, file: !547, line: 747, column: 12)
!756 = distinct !DILexicalBlock(scope: !746, file: !547, line: 742, column: 7)
!757 = !DILocalVariable(name: "s1", scope: !754, file: !547, line: 750, type: !139)
!758 = !DILocalVariable(name: "t", scope: !759, file: !547, line: 756, type: !139)
!759 = distinct !DILexicalBlock(scope: !755, file: !547, line: 755, column: 5)
!760 = !DILocalVariable(name: "c1", scope: !759, file: !547, line: 757, type: !139)
!761 = !DILocation(line: 0, scope: !746, inlinedAt: !762)
!762 = distinct !DILocation(line: 188, column: 7, scope: !700, inlinedAt: !726)
!763 = !DILocation(line: 742, column: 7, scope: !746, inlinedAt: !762)
!764 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !762)
!765 = !DILocation(line: 747, column: 23, scope: !755, inlinedAt: !762)
!766 = !DILocation(line: 747, column: 21, scope: !755, inlinedAt: !762)
!767 = !DILocation(line: 747, column: 12, scope: !756, inlinedAt: !762)
!768 = !DILocation(line: 749, column: 18, scope: !754, inlinedAt: !762)
!769 = !DILocation(line: 749, column: 21, scope: !754, inlinedAt: !762)
!770 = !DILocation(line: 0, scope: !754, inlinedAt: !762)
!771 = !DILocation(line: 750, column: 37, scope: !754, inlinedAt: !762)
!772 = !DILocation(line: 750, column: 33, scope: !754, inlinedAt: !762)
!773 = !DILocation(line: 750, column: 25, scope: !754, inlinedAt: !762)
!774 = !DILocation(line: 750, column: 23, scope: !754, inlinedAt: !762)
!775 = !DILocation(line: 752, column: 15, scope: !754, inlinedAt: !762)
!776 = !DILocation(line: 753, column: 5, scope: !754, inlinedAt: !762)
!777 = !DILocation(line: 756, column: 18, scope: !759, inlinedAt: !762)
!778 = !DILocation(line: 756, column: 21, scope: !759, inlinedAt: !762)
!779 = !DILocation(line: 0, scope: !759, inlinedAt: !762)
!780 = !DILocation(line: 757, column: 37, scope: !759, inlinedAt: !762)
!781 = !DILocation(line: 757, column: 33, scope: !759, inlinedAt: !762)
!782 = !DILocation(line: 757, column: 25, scope: !759, inlinedAt: !762)
!783 = !DILocation(line: 757, column: 23, scope: !759, inlinedAt: !762)
!784 = !DILocation(line: 759, column: 15, scope: !759, inlinedAt: !762)
!785 = !DILocation(line: 0, scope: !756, inlinedAt: !762)
!786 = !DILocation(line: 192, column: 31, scope: !700, inlinedAt: !726)
!787 = !DILocation(line: 192, column: 40, scope: !700, inlinedAt: !726)
!788 = !DILocation(line: 192, column: 36, scope: !700, inlinedAt: !726)
!789 = !DILocation(line: 0, scope: !293, inlinedAt: !790)
!790 = distinct !DILocation(line: 192, column: 7, scope: !700, inlinedAt: !726)
!791 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !790)
!792 = !DILocation(line: 193, column: 31, scope: !700, inlinedAt: !726)
!793 = !DILocation(line: 193, column: 40, scope: !700, inlinedAt: !726)
!794 = !DILocation(line: 193, column: 36, scope: !700, inlinedAt: !726)
!795 = !DILocation(line: 0, scope: !293, inlinedAt: !796)
!796 = distinct !DILocation(line: 193, column: 7, scope: !700, inlinedAt: !726)
!797 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !796)
!798 = !DILocation(line: 0, scope: !293, inlinedAt: !799)
!799 = distinct !DILocation(line: 194, column: 7, scope: !700, inlinedAt: !726)
!800 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !799)
!801 = !DILocation(line: 198, column: 21, scope: !698, inlinedAt: !726)
!802 = !DILocation(line: 198, column: 7, scope: !699, inlinedAt: !726)
!803 = !DILocation(line: 0, scope: !465, inlinedAt: !804)
!804 = distinct !DILocation(line: 200, column: 24, scope: !697, inlinedAt: !726)
!805 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !804)
!806 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !804)
!807 = !DILocation(line: 0, scope: !697, inlinedAt: !726)
!808 = !DILocation(line: 0, scope: !465, inlinedAt: !809)
!809 = distinct !DILocation(line: 201, column: 24, scope: !697, inlinedAt: !726)
!810 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !809)
!811 = !DILocation(line: 202, column: 38, scope: !697, inlinedAt: !726)
!812 = !DILocation(line: 202, column: 48, scope: !697, inlinedAt: !726)
!813 = !DILocation(line: 202, column: 44, scope: !697, inlinedAt: !726)
!814 = !DILocation(line: 0, scope: !307, inlinedAt: !815)
!815 = distinct !DILocation(line: 202, column: 11, scope: !697, inlinedAt: !726)
!816 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !815)
!817 = !DILocation(line: 203, column: 38, scope: !697, inlinedAt: !726)
!818 = !DILocation(line: 203, column: 48, scope: !697, inlinedAt: !726)
!819 = !DILocation(line: 203, column: 44, scope: !697, inlinedAt: !726)
!820 = !DILocation(line: 0, scope: !307, inlinedAt: !821)
!821 = distinct !DILocation(line: 203, column: 11, scope: !697, inlinedAt: !726)
!822 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !821)
!823 = !DILocation(line: 198, column: 27, scope: !698, inlinedAt: !726)
!824 = distinct !{!824, !802, !825, !358}
!825 = !DILocation(line: 204, column: 9, scope: !699, inlinedAt: !726)
!826 = !DILocation(line: 208, column: 7, scope: !700, inlinedAt: !726)
!827 = !DILocation(line: 210, column: 7, scope: !700, inlinedAt: !726)
!828 = !DILocation(line: 212, column: 12, scope: !701, inlinedAt: !726)
!829 = !DILocation(line: 0, scope: !746, inlinedAt: !830)
!830 = distinct !DILocation(line: 216, column: 7, scope: !707, inlinedAt: !726)
!831 = !DILocation(line: 742, column: 9, scope: !756, inlinedAt: !830)
!832 = !DILocation(line: 742, column: 7, scope: !746, inlinedAt: !830)
!833 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !830)
!834 = !DILocation(line: 747, column: 23, scope: !755, inlinedAt: !830)
!835 = !DILocation(line: 747, column: 21, scope: !755, inlinedAt: !830)
!836 = !DILocation(line: 747, column: 12, scope: !756, inlinedAt: !830)
!837 = !DILocation(line: 749, column: 18, scope: !754, inlinedAt: !830)
!838 = !DILocation(line: 749, column: 21, scope: !754, inlinedAt: !830)
!839 = !DILocation(line: 0, scope: !754, inlinedAt: !830)
!840 = !DILocation(line: 750, column: 37, scope: !754, inlinedAt: !830)
!841 = !DILocation(line: 750, column: 33, scope: !754, inlinedAt: !830)
!842 = !DILocation(line: 750, column: 25, scope: !754, inlinedAt: !830)
!843 = !DILocation(line: 750, column: 23, scope: !754, inlinedAt: !830)
!844 = !DILocation(line: 752, column: 15, scope: !754, inlinedAt: !830)
!845 = !DILocation(line: 753, column: 5, scope: !754, inlinedAt: !830)
!846 = !DILocation(line: 756, column: 18, scope: !759, inlinedAt: !830)
!847 = !DILocation(line: 756, column: 21, scope: !759, inlinedAt: !830)
!848 = !DILocation(line: 0, scope: !759, inlinedAt: !830)
!849 = !DILocation(line: 757, column: 37, scope: !759, inlinedAt: !830)
!850 = !DILocation(line: 757, column: 33, scope: !759, inlinedAt: !830)
!851 = !DILocation(line: 757, column: 25, scope: !759, inlinedAt: !830)
!852 = !DILocation(line: 757, column: 23, scope: !759, inlinedAt: !830)
!853 = !DILocation(line: 759, column: 15, scope: !759, inlinedAt: !830)
!854 = !DILocation(line: 0, scope: !756, inlinedAt: !830)
!855 = !DILocation(line: 220, column: 32, scope: !707, inlinedAt: !726)
!856 = !DILocation(line: 220, column: 41, scope: !707, inlinedAt: !726)
!857 = !DILocation(line: 220, column: 36, scope: !707, inlinedAt: !726)
!858 = !DILocation(line: 0, scope: !293, inlinedAt: !859)
!859 = distinct !DILocation(line: 220, column: 7, scope: !707, inlinedAt: !726)
!860 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !859)
!861 = !DILocation(line: 0, scope: !293, inlinedAt: !862)
!862 = distinct !DILocation(line: 221, column: 7, scope: !707, inlinedAt: !726)
!863 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !862)
!864 = !DILocation(line: 225, column: 21, scope: !705, inlinedAt: !726)
!865 = !DILocation(line: 225, column: 7, scope: !706, inlinedAt: !726)
!866 = !DILocation(line: 0, scope: !465, inlinedAt: !867)
!867 = distinct !DILocation(line: 227, column: 24, scope: !704, inlinedAt: !726)
!868 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !867)
!869 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !867)
!870 = !DILocation(line: 0, scope: !704, inlinedAt: !726)
!871 = !DILocation(line: 0, scope: !465, inlinedAt: !872)
!872 = distinct !DILocation(line: 228, column: 24, scope: !704, inlinedAt: !726)
!873 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !872)
!874 = !DILocation(line: 229, column: 38, scope: !704, inlinedAt: !726)
!875 = !DILocation(line: 229, column: 48, scope: !704, inlinedAt: !726)
!876 = !DILocation(line: 229, column: 44, scope: !704, inlinedAt: !726)
!877 = !DILocation(line: 0, scope: !307, inlinedAt: !878)
!878 = distinct !DILocation(line: 229, column: 11, scope: !704, inlinedAt: !726)
!879 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !878)
!880 = !DILocation(line: 230, column: 38, scope: !704, inlinedAt: !726)
!881 = !DILocation(line: 230, column: 48, scope: !704, inlinedAt: !726)
!882 = !DILocation(line: 230, column: 44, scope: !704, inlinedAt: !726)
!883 = !DILocation(line: 0, scope: !307, inlinedAt: !884)
!884 = distinct !DILocation(line: 230, column: 11, scope: !704, inlinedAt: !726)
!885 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !884)
!886 = !DILocation(line: 225, column: 27, scope: !705, inlinedAt: !726)
!887 = distinct !{!887, !865, !888, !358}
!888 = !DILocation(line: 231, column: 9, scope: !706, inlinedAt: !726)
!889 = !DILocalVariable(name: "d0_exp", scope: !890, file: !554, line: 135, type: !70)
!890 = distinct !DILexicalBlock(scope: !891, file: !554, line: 133, column: 5)
!891 = distinct !DILexicalBlock(scope: !892, file: !554, line: 130, column: 7)
!892 = distinct !DISubprogram(name: "create_schur", scope: !554, file: !554, line: 118, type: !893, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !139, !139, !139, !138, !138}
!895 = !{!896, !897, !898, !899, !900, !901, !902, !889, !903, !904, !907}
!896 = !DILocalVariable(name: "d0", arg: 1, scope: !892, file: !554, line: 118, type: !139)
!897 = !DILocalVariable(name: "f0", arg: 2, scope: !892, file: !554, line: 118, type: !139)
!898 = !DILocalVariable(name: "d1", arg: 3, scope: !892, file: !554, line: 118, type: !139)
!899 = !DILocalVariable(name: "c", arg: 4, scope: !892, file: !554, line: 118, type: !138)
!900 = !DILocalVariable(name: "s", arg: 5, scope: !892, file: !554, line: 118, type: !138)
!901 = !DILocalVariable(name: "apq", scope: !892, file: !554, line: 120, type: !139)
!902 = !DILocalVariable(name: "scale", scope: !890, file: !554, line: 134, type: !139)
!903 = !DILocalVariable(name: "f0_exp", scope: !890, file: !554, line: 135, type: !70)
!904 = !DILocalVariable(name: "t", scope: !905, file: !554, line: 148, type: !139)
!905 = distinct !DILexicalBlock(scope: !906, file: !554, line: 147, column: 5)
!906 = distinct !DILexicalBlock(scope: !892, file: !554, line: 146, column: 7)
!907 = !DILocalVariable(name: "tau", scope: !905, file: !554, line: 149, type: !139)
!908 = !DILocation(line: 0, scope: !890, inlinedAt: !909)
!909 = distinct !DILocation(line: 239, column: 7, scope: !714, inlinedAt: !726)
!910 = !DILocation(line: 0, scope: !892, inlinedAt: !909)
!911 = !DILocation(line: 120, column: 20, scope: !892, inlinedAt: !909)
!912 = !DILocation(line: 120, column: 25, scope: !892, inlinedAt: !909)
!913 = !DILocation(line: 122, column: 15, scope: !914, inlinedAt: !909)
!914 = distinct !DILexicalBlock(scope: !892, file: !554, line: 122, column: 7)
!915 = !DILocation(line: 130, column: 7, scope: !891, inlinedAt: !909)
!916 = !DILocation(line: 130, column: 16, scope: !891, inlinedAt: !909)
!917 = !DILocation(line: 130, column: 35, scope: !891, inlinedAt: !909)
!918 = !DILocation(line: 131, column: 10, scope: !891, inlinedAt: !909)
!919 = !DILocation(line: 131, column: 19, scope: !891, inlinedAt: !909)
!920 = !DILocation(line: 131, column: 38, scope: !891, inlinedAt: !909)
!921 = !DILocation(line: 132, column: 10, scope: !891, inlinedAt: !909)
!922 = !DILocation(line: 132, column: 19, scope: !891, inlinedAt: !909)
!923 = !DILocation(line: 132, column: 38, scope: !891, inlinedAt: !909)
!924 = !DILocation(line: 135, column: 7, scope: !890, inlinedAt: !909)
!925 = !DILocation(line: 136, column: 7, scope: !890, inlinedAt: !909)
!926 = !DILocation(line: 137, column: 7, scope: !890, inlinedAt: !909)
!927 = !DILocation(line: 139, column: 28, scope: !890, inlinedAt: !909)
!928 = !{!248, !248, i64 0}
!929 = !DILocation(line: 139, column: 37, scope: !890, inlinedAt: !909)
!930 = !DILocation(line: 139, column: 35, scope: !890, inlinedAt: !909)
!931 = !DILocation(line: 139, column: 44, scope: !890, inlinedAt: !909)
!932 = !DILocation(line: 139, column: 15, scope: !890, inlinedAt: !909)
!933 = !DILocation(line: 140, column: 10, scope: !890, inlinedAt: !909)
!934 = !DILocation(line: 141, column: 10, scope: !890, inlinedAt: !909)
!935 = !DILocation(line: 142, column: 10, scope: !890, inlinedAt: !909)
!936 = !DILocation(line: 143, column: 17, scope: !890, inlinedAt: !909)
!937 = !DILocation(line: 143, column: 22, scope: !890, inlinedAt: !909)
!938 = !DILocation(line: 144, column: 5, scope: !891, inlinedAt: !909)
!939 = !DILocation(line: 144, column: 5, scope: !890, inlinedAt: !909)
!940 = !DILocation(line: 146, column: 11, scope: !906, inlinedAt: !909)
!941 = !DILocation(line: 146, column: 7, scope: !892, inlinedAt: !909)
!942 = !DILocation(line: 149, column: 23, scope: !905, inlinedAt: !909)
!943 = !DILocation(line: 149, column: 33, scope: !905, inlinedAt: !909)
!944 = !DILocation(line: 149, column: 43, scope: !905, inlinedAt: !909)
!945 = !DILocation(line: 149, column: 38, scope: !905, inlinedAt: !909)
!946 = !DILocation(line: 149, column: 27, scope: !905, inlinedAt: !909)
!947 = !DILocation(line: 149, column: 50, scope: !905, inlinedAt: !909)
!948 = !DILocation(line: 0, scope: !905, inlinedAt: !909)
!949 = !DILocation(line: 151, column: 15, scope: !950, inlinedAt: !909)
!950 = distinct !DILexicalBlock(scope: !905, file: !554, line: 151, column: 11)
!951 = !DILocation(line: 0, scope: !950, inlinedAt: !909)
!952 = !DILocation(line: 151, column: 11, scope: !905, inlinedAt: !909)
!953 = !DILocation(line: 160, column: 18, scope: !905, inlinedAt: !909)
!954 = !DILocation(line: 160, column: 16, scope: !905, inlinedAt: !909)
!955 = !DILocation(line: 161, column: 14, scope: !905, inlinedAt: !909)
!956 = !DILocation(line: 162, column: 5, scope: !905, inlinedAt: !909)
!957 = !DILocation(line: 243, column: 15, scope: !714, inlinedAt: !726)
!958 = !DILocation(line: 243, column: 24, scope: !714, inlinedAt: !726)
!959 = !DILocation(line: 243, column: 20, scope: !714, inlinedAt: !726)
!960 = !DILocation(line: 244, column: 13, scope: !714, inlinedAt: !726)
!961 = !DILocation(line: 244, column: 17, scope: !714, inlinedAt: !726)
!962 = !DILocation(line: 246, column: 15, scope: !714, inlinedAt: !726)
!963 = !DILocation(line: 246, column: 24, scope: !714, inlinedAt: !726)
!964 = !DILocation(line: 246, column: 20, scope: !714, inlinedAt: !726)
!965 = !DILocation(line: 247, column: 15, scope: !714, inlinedAt: !726)
!966 = !DILocation(line: 251, column: 21, scope: !712, inlinedAt: !726)
!967 = !DILocation(line: 251, column: 7, scope: !713, inlinedAt: !726)
!968 = !DILocation(line: 0, scope: !465, inlinedAt: !969)
!969 = distinct !DILocation(line: 253, column: 24, scope: !711, inlinedAt: !726)
!970 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !969)
!971 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !969)
!972 = !DILocation(line: 0, scope: !711, inlinedAt: !726)
!973 = !DILocation(line: 0, scope: !465, inlinedAt: !974)
!974 = distinct !DILocation(line: 254, column: 24, scope: !711, inlinedAt: !726)
!975 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !974)
!976 = !DILocation(line: 255, column: 38, scope: !711, inlinedAt: !726)
!977 = !DILocation(line: 255, column: 48, scope: !711, inlinedAt: !726)
!978 = !DILocation(line: 255, column: 44, scope: !711, inlinedAt: !726)
!979 = !DILocation(line: 0, scope: !307, inlinedAt: !980)
!980 = distinct !DILocation(line: 255, column: 11, scope: !711, inlinedAt: !726)
!981 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !980)
!982 = !DILocation(line: 256, column: 38, scope: !711, inlinedAt: !726)
!983 = !DILocation(line: 256, column: 48, scope: !711, inlinedAt: !726)
!984 = !DILocation(line: 256, column: 44, scope: !711, inlinedAt: !726)
!985 = !DILocation(line: 0, scope: !307, inlinedAt: !986)
!986 = distinct !DILocation(line: 256, column: 11, scope: !711, inlinedAt: !726)
!987 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !986)
!988 = !DILocation(line: 251, column: 27, scope: !712, inlinedAt: !726)
!989 = distinct !{!989, !967, !990, !358}
!990 = !DILocation(line: 257, column: 9, scope: !713, inlinedAt: !726)
!991 = !DILocation(line: 262, column: 11, scope: !718, inlinedAt: !726)
!992 = !DILocation(line: 262, column: 29, scope: !718, inlinedAt: !726)
!993 = !DILocation(line: 262, column: 27, scope: !718, inlinedAt: !726)
!994 = !DILocation(line: 262, column: 11, scope: !714, inlinedAt: !726)
!995 = !DILocation(line: 0, scope: !717, inlinedAt: !726)
!996 = !DILocation(line: 273, column: 11, scope: !717, inlinedAt: !726)
!997 = !DILocation(line: 274, column: 9, scope: !717, inlinedAt: !726)
!998 = !DILocation(line: 0, scope: !714, inlinedAt: !726)
!999 = !DILocation(line: 0, scope: !746, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 276, column: 7, scope: !714, inlinedAt: !726)
!1001 = !DILocation(line: 742, column: 9, scope: !756, inlinedAt: !1000)
!1002 = !DILocation(line: 742, column: 7, scope: !746, inlinedAt: !1000)
!1003 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !1000)
!1004 = !DILocation(line: 747, column: 23, scope: !755, inlinedAt: !1000)
!1005 = !DILocation(line: 747, column: 21, scope: !755, inlinedAt: !1000)
!1006 = !DILocation(line: 747, column: 12, scope: !756, inlinedAt: !1000)
!1007 = !DILocation(line: 749, column: 18, scope: !754, inlinedAt: !1000)
!1008 = !DILocation(line: 749, column: 21, scope: !754, inlinedAt: !1000)
!1009 = !DILocation(line: 0, scope: !754, inlinedAt: !1000)
!1010 = !DILocation(line: 750, column: 37, scope: !754, inlinedAt: !1000)
!1011 = !DILocation(line: 750, column: 33, scope: !754, inlinedAt: !1000)
!1012 = !DILocation(line: 750, column: 25, scope: !754, inlinedAt: !1000)
!1013 = !DILocation(line: 750, column: 23, scope: !754, inlinedAt: !1000)
!1014 = !DILocation(line: 752, column: 15, scope: !754, inlinedAt: !1000)
!1015 = !DILocation(line: 753, column: 5, scope: !754, inlinedAt: !1000)
!1016 = !DILocation(line: 756, column: 18, scope: !759, inlinedAt: !1000)
!1017 = !DILocation(line: 756, column: 21, scope: !759, inlinedAt: !1000)
!1018 = !DILocation(line: 0, scope: !759, inlinedAt: !1000)
!1019 = !DILocation(line: 757, column: 37, scope: !759, inlinedAt: !1000)
!1020 = !DILocation(line: 757, column: 33, scope: !759, inlinedAt: !1000)
!1021 = !DILocation(line: 757, column: 25, scope: !759, inlinedAt: !1000)
!1022 = !DILocation(line: 757, column: 23, scope: !759, inlinedAt: !1000)
!1023 = !DILocation(line: 759, column: 15, scope: !759, inlinedAt: !1000)
!1024 = !DILocation(line: 0, scope: !756, inlinedAt: !1000)
!1025 = !DILocation(line: 280, column: 31, scope: !714, inlinedAt: !726)
!1026 = !DILocation(line: 280, column: 41, scope: !714, inlinedAt: !726)
!1027 = !DILocation(line: 280, column: 37, scope: !714, inlinedAt: !726)
!1028 = !DILocation(line: 0, scope: !293, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 280, column: 7, scope: !714, inlinedAt: !726)
!1030 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1029)
!1031 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1029)
!1032 = !DILocation(line: 281, column: 31, scope: !714, inlinedAt: !726)
!1033 = !DILocation(line: 281, column: 41, scope: !714, inlinedAt: !726)
!1034 = !DILocation(line: 281, column: 37, scope: !714, inlinedAt: !726)
!1035 = !DILocation(line: 0, scope: !293, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 281, column: 7, scope: !714, inlinedAt: !726)
!1037 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1036)
!1038 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1036)
!1039 = !DILocation(line: 282, column: 31, scope: !714, inlinedAt: !726)
!1040 = !DILocation(line: 282, column: 41, scope: !714, inlinedAt: !726)
!1041 = !DILocation(line: 282, column: 37, scope: !714, inlinedAt: !726)
!1042 = !DILocation(line: 0, scope: !293, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 282, column: 7, scope: !714, inlinedAt: !726)
!1044 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1043)
!1045 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1043)
!1046 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1043)
!1047 = !DILocation(line: 286, column: 21, scope: !722, inlinedAt: !726)
!1048 = !DILocation(line: 286, column: 7, scope: !723, inlinedAt: !726)
!1049 = !DILocation(line: 0, scope: !465, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 288, column: 24, scope: !721, inlinedAt: !726)
!1051 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1050)
!1052 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1050)
!1053 = !DILocation(line: 0, scope: !721, inlinedAt: !726)
!1054 = !DILocation(line: 0, scope: !465, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 289, column: 24, scope: !721, inlinedAt: !726)
!1056 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1055)
!1057 = !DILocation(line: 290, column: 38, scope: !721, inlinedAt: !726)
!1058 = !DILocation(line: 290, column: 48, scope: !721, inlinedAt: !726)
!1059 = !DILocation(line: 290, column: 44, scope: !721, inlinedAt: !726)
!1060 = !DILocation(line: 0, scope: !307, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 290, column: 11, scope: !721, inlinedAt: !726)
!1062 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1061)
!1063 = !DILocation(line: 291, column: 38, scope: !721, inlinedAt: !726)
!1064 = !DILocation(line: 291, column: 48, scope: !721, inlinedAt: !726)
!1065 = !DILocation(line: 291, column: 44, scope: !721, inlinedAt: !726)
!1066 = !DILocation(line: 0, scope: !307, inlinedAt: !1067)
!1067 = distinct !DILocation(line: 291, column: 11, scope: !721, inlinedAt: !726)
!1068 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1067)
!1069 = !DILocation(line: 286, column: 27, scope: !722, inlinedAt: !726)
!1070 = distinct !{!1070, !1048, !1071, !358}
!1071 = !DILocation(line: 292, column: 9, scope: !723, inlinedAt: !726)
!1072 = !DILocation(line: 0, scope: !338, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 442, column: 20, scope: !632)
!1074 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1073)
!1075 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1073)
!1076 = !DILocation(line: 0, scope: !632)
!1077 = !DILocation(line: 444, column: 15, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !632, file: !554, line: 444, column: 11)
!1079 = !DILocation(line: 444, column: 11, scope: !632)
!1080 = !DILocalVariable(name: "d", arg: 1, scope: !1081, file: !554, line: 300, type: !149)
!1081 = distinct !DISubprogram(name: "chase_out_intermediate_zero", scope: !554, file: !554, line: 300, type: !1082, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !149, !149, !126, !132}
!1084 = !{!1080, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1100, !1104, !1105}
!1085 = !DILocalVariable(name: "f", arg: 2, scope: !1081, file: !554, line: 300, type: !149)
!1086 = !DILocalVariable(name: "U", arg: 3, scope: !1081, file: !554, line: 300, type: !126)
!1087 = !DILocalVariable(name: "k0", arg: 4, scope: !1081, file: !554, line: 300, type: !132)
!1088 = !DILocalVariable(name: "M", scope: !1081, file: !554, line: 303, type: !170)
!1089 = !DILocalVariable(name: "n", scope: !1081, file: !554, line: 305, type: !170)
!1090 = !DILocalVariable(name: "c", scope: !1081, file: !554, line: 306, type: !139)
!1091 = !DILocalVariable(name: "s", scope: !1081, file: !554, line: 306, type: !139)
!1092 = !DILocalVariable(name: "x", scope: !1081, file: !554, line: 307, type: !139)
!1093 = !DILocalVariable(name: "y", scope: !1081, file: !554, line: 307, type: !139)
!1094 = !DILocalVariable(name: "k", scope: !1081, file: !554, line: 308, type: !132)
!1095 = !DILocalVariable(name: "i", scope: !1096, file: !554, line: 327, type: !132)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !554, line: 326, column: 7)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !554, line: 314, column: 5)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !554, line: 313, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1081, file: !554, line: 313, column: 3)
!1100 = !DILocalVariable(name: "Uip", scope: !1101, file: !554, line: 331, type: !139)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !554, line: 330, column: 11)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !554, line: 329, column: 9)
!1103 = distinct !DILexicalBlock(scope: !1096, file: !554, line: 329, column: 9)
!1104 = !DILocalVariable(name: "Uiq", scope: !1101, file: !554, line: 332, type: !139)
!1105 = !DILocalVariable(name: "z", scope: !1106, file: !554, line: 348, type: !139)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !554, line: 347, column: 9)
!1107 = distinct !DILexicalBlock(scope: !1097, file: !554, line: 346, column: 11)
!1108 = !DILocation(line: 0, scope: !1081, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 446, column: 11, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1078, file: !554, line: 445, column: 9)
!1111 = !DILocation(line: 0, scope: !338, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 310, column: 7, scope: !1081, inlinedAt: !1109)
!1113 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1112)
!1114 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1112)
!1115 = !DILocation(line: 0, scope: !338, inlinedAt: !1116)
!1116 = distinct !DILocation(line: 311, column: 7, scope: !1081, inlinedAt: !1109)
!1117 = !DILocation(line: 311, column: 28, scope: !1081, inlinedAt: !1109)
!1118 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1116)
!1119 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1116)
!1120 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1112)
!1121 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1112)
!1122 = !DILocation(line: 313, column: 3, scope: !1099, inlinedAt: !1109)
!1123 = !DILocation(line: 0, scope: !746, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 315, column: 7, scope: !1097, inlinedAt: !1109)
!1125 = !DILocation(line: 742, column: 9, scope: !756, inlinedAt: !1124)
!1126 = !DILocation(line: 742, column: 7, scope: !746, inlinedAt: !1124)
!1127 = !DILocation(line: 315, column: 29, scope: !1097, inlinedAt: !1109)
!1128 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !1124)
!1129 = !DILocation(line: 747, column: 23, scope: !755, inlinedAt: !1124)
!1130 = !DILocation(line: 747, column: 21, scope: !755, inlinedAt: !1124)
!1131 = !DILocation(line: 747, column: 12, scope: !756, inlinedAt: !1124)
!1132 = !DILocation(line: 749, column: 21, scope: !754, inlinedAt: !1124)
!1133 = !DILocation(line: 0, scope: !754, inlinedAt: !1124)
!1134 = !DILocation(line: 750, column: 37, scope: !754, inlinedAt: !1124)
!1135 = !DILocation(line: 750, column: 33, scope: !754, inlinedAt: !1124)
!1136 = !DILocation(line: 750, column: 25, scope: !754, inlinedAt: !1124)
!1137 = !DILocation(line: 750, column: 23, scope: !754, inlinedAt: !1124)
!1138 = !DILocation(line: 752, column: 15, scope: !754, inlinedAt: !1124)
!1139 = !DILocation(line: 753, column: 5, scope: !754, inlinedAt: !1124)
!1140 = !DILocation(line: 756, column: 21, scope: !759, inlinedAt: !1124)
!1141 = !DILocation(line: 0, scope: !759, inlinedAt: !1124)
!1142 = !DILocation(line: 757, column: 37, scope: !759, inlinedAt: !1124)
!1143 = !DILocation(line: 757, column: 33, scope: !759, inlinedAt: !1124)
!1144 = !DILocation(line: 757, column: 25, scope: !759, inlinedAt: !1124)
!1145 = !DILocation(line: 757, column: 23, scope: !759, inlinedAt: !1124)
!1146 = !DILocation(line: 759, column: 15, scope: !759, inlinedAt: !1124)
!1147 = !DILocation(line: 0, scope: !756, inlinedAt: !1124)
!1148 = !DILocation(line: 0, scope: !1096, inlinedAt: !1109)
!1149 = !DILocation(line: 329, column: 9, scope: !1103, inlinedAt: !1109)
!1150 = !DILocation(line: 0, scope: !465, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 331, column: 26, scope: !1101, inlinedAt: !1109)
!1152 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1151)
!1153 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1151)
!1154 = !DILocation(line: 0, scope: !1101, inlinedAt: !1109)
!1155 = !DILocation(line: 0, scope: !465, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 332, column: 26, scope: !1101, inlinedAt: !1109)
!1157 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1156)
!1158 = !DILocation(line: 333, column: 41, scope: !1101, inlinedAt: !1109)
!1159 = !DILocation(line: 333, column: 51, scope: !1101, inlinedAt: !1109)
!1160 = !DILocation(line: 333, column: 47, scope: !1101, inlinedAt: !1109)
!1161 = !DILocation(line: 0, scope: !307, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 333, column: 13, scope: !1101, inlinedAt: !1109)
!1163 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1162)
!1164 = !DILocation(line: 334, column: 44, scope: !1101, inlinedAt: !1109)
!1165 = !DILocation(line: 334, column: 54, scope: !1101, inlinedAt: !1109)
!1166 = !DILocation(line: 334, column: 50, scope: !1101, inlinedAt: !1109)
!1167 = !DILocation(line: 0, scope: !307, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 334, column: 13, scope: !1101, inlinedAt: !1109)
!1169 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1168)
!1170 = !DILocation(line: 329, column: 29, scope: !1102, inlinedAt: !1109)
!1171 = distinct !{!1171, !1149, !1172, !358}
!1172 = !DILocation(line: 335, column: 11, scope: !1103, inlinedAt: !1109)
!1173 = !DILocation(line: 341, column: 28, scope: !1097, inlinedAt: !1109)
!1174 = !DILocation(line: 341, column: 35, scope: !1097, inlinedAt: !1109)
!1175 = !DILocation(line: 341, column: 43, scope: !1097, inlinedAt: !1109)
!1176 = !DILocation(line: 341, column: 39, scope: !1097, inlinedAt: !1109)
!1177 = !DILocation(line: 0, scope: !293, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 341, column: 7, scope: !1097, inlinedAt: !1109)
!1179 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1178)
!1180 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1178)
!1181 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1178)
!1182 = !DILocation(line: 343, column: 13, scope: !1183, inlinedAt: !1109)
!1183 = distinct !DILexicalBlock(scope: !1097, file: !554, line: 343, column: 11)
!1184 = !DILocation(line: 343, column: 11, scope: !1097, inlinedAt: !1109)
!1185 = !DILocation(line: 344, column: 33, scope: !1183, inlinedAt: !1109)
!1186 = !DILocation(line: 344, column: 41, scope: !1183, inlinedAt: !1109)
!1187 = !DILocation(line: 344, column: 37, scope: !1183, inlinedAt: !1109)
!1188 = !DILocation(line: 0, scope: !293, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 344, column: 9, scope: !1183, inlinedAt: !1109)
!1190 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1189)
!1191 = !DILocation(line: 344, column: 9, scope: !1183, inlinedAt: !1109)
!1192 = !DILocation(line: 346, column: 13, scope: !1107, inlinedAt: !1109)
!1193 = !DILocation(line: 346, column: 11, scope: !1097, inlinedAt: !1109)
!1194 = !DILocation(line: 0, scope: !338, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 348, column: 22, scope: !1106, inlinedAt: !1109)
!1196 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1195)
!1197 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1195)
!1198 = !DILocation(line: 0, scope: !1106, inlinedAt: !1109)
!1199 = !DILocation(line: 349, column: 39, scope: !1106, inlinedAt: !1109)
!1200 = !DILocation(line: 0, scope: !293, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 349, column: 11, scope: !1106, inlinedAt: !1109)
!1202 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1201)
!1203 = !DILocation(line: 351, column: 15, scope: !1106, inlinedAt: !1109)
!1204 = !DILocation(line: 351, column: 18, scope: !1106, inlinedAt: !1109)
!1205 = !DILocation(line: 352, column: 36, scope: !1106, inlinedAt: !1109)
!1206 = !DILocation(line: 0, scope: !338, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 352, column: 15, scope: !1106, inlinedAt: !1109)
!1208 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1207)
!1209 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1207)
!1210 = !DILocation(line: 353, column: 9, scope: !1106, inlinedAt: !1109)
!1211 = !DILocation(line: 313, column: 18, scope: !1098, inlinedAt: !1109)
!1212 = distinct !{!1212, !1122, !1213, !358}
!1213 = !DILocation(line: 354, column: 5, scope: !1099, inlinedAt: !1109)
!1214 = !DILocation(line: 440, column: 27, scope: !633)
!1215 = !DILocation(line: 440, column: 17, scope: !633)
!1216 = distinct !{!1216, !677, !1217, !358}
!1217 = !DILocation(line: 449, column: 5, scope: !634)
!1218 = !DILocation(line: 0, scope: !338, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 454, column: 20, scope: !636)
!1220 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1219)
!1221 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1219)
!1222 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1219)
!1223 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1219)
!1224 = !DILocation(line: 0, scope: !636)
!1225 = !DILocation(line: 456, column: 15, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !636, file: !554, line: 456, column: 9)
!1227 = !DILocation(line: 456, column: 9, scope: !636)
!1228 = !DILocalVariable(name: "d", arg: 1, scope: !1229, file: !554, line: 358, type: !149)
!1229 = distinct !DISubprogram(name: "chase_out_trailing_zero", scope: !554, file: !554, line: 358, type: !1230, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !149, !149, !126}
!1232 = !{!1228, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1247, !1251, !1252}
!1233 = !DILocalVariable(name: "f", arg: 2, scope: !1229, file: !554, line: 358, type: !149)
!1234 = !DILocalVariable(name: "V", arg: 3, scope: !1229, file: !554, line: 358, type: !126)
!1235 = !DILocalVariable(name: "N", scope: !1229, file: !554, line: 361, type: !170)
!1236 = !DILocalVariable(name: "n", scope: !1229, file: !554, line: 363, type: !170)
!1237 = !DILocalVariable(name: "c", scope: !1229, file: !554, line: 364, type: !139)
!1238 = !DILocalVariable(name: "s", scope: !1229, file: !554, line: 364, type: !139)
!1239 = !DILocalVariable(name: "x", scope: !1229, file: !554, line: 365, type: !139)
!1240 = !DILocalVariable(name: "y", scope: !1229, file: !554, line: 365, type: !139)
!1241 = !DILocalVariable(name: "k", scope: !1229, file: !554, line: 366, type: !132)
!1242 = !DILocalVariable(name: "i", scope: !1243, file: !554, line: 385, type: !132)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !554, line: 384, column: 7)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !554, line: 372, column: 5)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !554, line: 371, column: 3)
!1246 = distinct !DILexicalBlock(scope: !1229, file: !554, line: 371, column: 3)
!1247 = !DILocalVariable(name: "Vip", scope: !1248, file: !554, line: 389, type: !139)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !554, line: 388, column: 11)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !554, line: 387, column: 9)
!1250 = distinct !DILexicalBlock(scope: !1243, file: !554, line: 387, column: 9)
!1251 = !DILocalVariable(name: "Viq", scope: !1248, file: !554, line: 390, type: !139)
!1252 = !DILocalVariable(name: "z", scope: !1253, file: !554, line: 406, type: !139)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !554, line: 405, column: 9)
!1254 = distinct !DILexicalBlock(scope: !1244, file: !554, line: 404, column: 11)
!1255 = !DILocation(line: 0, scope: !1229, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 458, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1226, file: !554, line: 457, column: 7)
!1258 = !DILocation(line: 368, column: 28, scope: !1229, inlinedAt: !1256)
!1259 = !DILocation(line: 0, scope: !338, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 368, column: 7, scope: !1229, inlinedAt: !1256)
!1261 = !DILocation(line: 0, scope: !338, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 369, column: 7, scope: !1229, inlinedAt: !1256)
!1263 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1262)
!1264 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1262)
!1265 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1262)
!1266 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1260)
!1267 = !DILocation(line: 371, column: 3, scope: !1246, inlinedAt: !1256)
!1268 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 0, scope: !1229, inlinedAt: !1256)
!1270 = !DILocation(line: 0, scope: !746, inlinedAt: !1271)
!1271 = distinct !DILocation(line: 373, column: 7, scope: !1244, inlinedAt: !1256)
!1272 = !DILocation(line: 742, column: 9, scope: !756, inlinedAt: !1271)
!1273 = !DILocation(line: 742, column: 7, scope: !746, inlinedAt: !1271)
!1274 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !1271)
!1275 = !DILocation(line: 747, column: 23, scope: !755, inlinedAt: !1271)
!1276 = !DILocation(line: 747, column: 21, scope: !755, inlinedAt: !1271)
!1277 = !DILocation(line: 747, column: 12, scope: !756, inlinedAt: !1271)
!1278 = !DILocation(line: 749, column: 18, scope: !754, inlinedAt: !1271)
!1279 = !DILocation(line: 749, column: 21, scope: !754, inlinedAt: !1271)
!1280 = !DILocation(line: 0, scope: !754, inlinedAt: !1271)
!1281 = !DILocation(line: 750, column: 37, scope: !754, inlinedAt: !1271)
!1282 = !DILocation(line: 750, column: 33, scope: !754, inlinedAt: !1271)
!1283 = !DILocation(line: 750, column: 25, scope: !754, inlinedAt: !1271)
!1284 = !DILocation(line: 750, column: 23, scope: !754, inlinedAt: !1271)
!1285 = !DILocation(line: 752, column: 15, scope: !754, inlinedAt: !1271)
!1286 = !DILocation(line: 753, column: 5, scope: !754, inlinedAt: !1271)
!1287 = !DILocation(line: 756, column: 18, scope: !759, inlinedAt: !1271)
!1288 = !DILocation(line: 756, column: 21, scope: !759, inlinedAt: !1271)
!1289 = !DILocation(line: 0, scope: !759, inlinedAt: !1271)
!1290 = !DILocation(line: 757, column: 37, scope: !759, inlinedAt: !1271)
!1291 = !DILocation(line: 757, column: 33, scope: !759, inlinedAt: !1271)
!1292 = !DILocation(line: 757, column: 25, scope: !759, inlinedAt: !1271)
!1293 = !DILocation(line: 757, column: 23, scope: !759, inlinedAt: !1271)
!1294 = !DILocation(line: 759, column: 15, scope: !759, inlinedAt: !1271)
!1295 = !DILocation(line: 0, scope: !756, inlinedAt: !1271)
!1296 = !DILocation(line: 0, scope: !1243, inlinedAt: !1256)
!1297 = !DILocation(line: 387, column: 9, scope: !1250, inlinedAt: !1256)
!1298 = !DILocation(line: 0, scope: !465, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 389, column: 26, scope: !1248, inlinedAt: !1256)
!1300 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1299)
!1301 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1299)
!1302 = !DILocation(line: 0, scope: !1248, inlinedAt: !1256)
!1303 = !DILocation(line: 0, scope: !465, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 390, column: 26, scope: !1248, inlinedAt: !1256)
!1305 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1304)
!1306 = !DILocation(line: 391, column: 40, scope: !1248, inlinedAt: !1256)
!1307 = !DILocation(line: 391, column: 50, scope: !1248, inlinedAt: !1256)
!1308 = !DILocation(line: 391, column: 46, scope: !1248, inlinedAt: !1256)
!1309 = !DILocation(line: 0, scope: !307, inlinedAt: !1310)
!1310 = distinct !DILocation(line: 391, column: 13, scope: !1248, inlinedAt: !1256)
!1311 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1310)
!1312 = !DILocation(line: 392, column: 44, scope: !1248, inlinedAt: !1256)
!1313 = !DILocation(line: 392, column: 54, scope: !1248, inlinedAt: !1256)
!1314 = !DILocation(line: 392, column: 50, scope: !1248, inlinedAt: !1256)
!1315 = !DILocation(line: 0, scope: !307, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 392, column: 13, scope: !1248, inlinedAt: !1256)
!1317 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1316)
!1318 = !DILocation(line: 387, column: 29, scope: !1249, inlinedAt: !1256)
!1319 = !DILocation(line: 387, column: 23, scope: !1249, inlinedAt: !1256)
!1320 = distinct !{!1320, !1297, !1321, !358}
!1321 = !DILocation(line: 393, column: 11, scope: !1250, inlinedAt: !1256)
!1322 = !DILocation(line: 399, column: 31, scope: !1244, inlinedAt: !1256)
!1323 = !DILocation(line: 399, column: 39, scope: !1244, inlinedAt: !1256)
!1324 = !DILocation(line: 399, column: 35, scope: !1244, inlinedAt: !1256)
!1325 = !DILocation(line: 0, scope: !293, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 399, column: 7, scope: !1244, inlinedAt: !1256)
!1327 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1326)
!1328 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1326)
!1329 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1326)
!1330 = !DILocation(line: 401, column: 13, scope: !1331, inlinedAt: !1256)
!1331 = distinct !DILexicalBlock(scope: !1244, file: !554, line: 401, column: 11)
!1332 = !DILocation(line: 401, column: 11, scope: !1244, inlinedAt: !1256)
!1333 = !DILocation(line: 402, column: 33, scope: !1331, inlinedAt: !1256)
!1334 = !DILocation(line: 402, column: 41, scope: !1331, inlinedAt: !1256)
!1335 = !DILocation(line: 402, column: 37, scope: !1331, inlinedAt: !1256)
!1336 = !DILocation(line: 0, scope: !293, inlinedAt: !1337)
!1337 = distinct !DILocation(line: 402, column: 9, scope: !1331, inlinedAt: !1256)
!1338 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1337)
!1339 = !DILocation(line: 402, column: 9, scope: !1331, inlinedAt: !1256)
!1340 = !DILocation(line: 404, column: 13, scope: !1254, inlinedAt: !1256)
!1341 = !DILocation(line: 404, column: 11, scope: !1244, inlinedAt: !1256)
!1342 = !DILocation(line: 406, column: 43, scope: !1253, inlinedAt: !1256)
!1343 = !DILocation(line: 0, scope: !338, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 406, column: 22, scope: !1253, inlinedAt: !1256)
!1345 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1344)
!1346 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1344)
!1347 = !DILocation(line: 0, scope: !1253, inlinedAt: !1256)
!1348 = !DILocation(line: 407, column: 39, scope: !1253, inlinedAt: !1256)
!1349 = !DILocation(line: 0, scope: !293, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 407, column: 11, scope: !1253, inlinedAt: !1256)
!1351 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1350)
!1352 = !DILocation(line: 0, scope: !338, inlinedAt: !1353)
!1353 = distinct !DILocation(line: 409, column: 15, scope: !1253, inlinedAt: !1256)
!1354 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1353)
!1355 = !DILocation(line: 410, column: 17, scope: !1253, inlinedAt: !1256)
!1356 = !DILocation(line: 371, column: 20, scope: !1245, inlinedAt: !1256)
!1357 = distinct !{!1357, !1267, !1358, !358}
!1358 = !DILocation(line: 412, column: 5, scope: !1246, inlinedAt: !1256)
!1359 = !DILocation(line: 0, scope: !338, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 467, column: 17, scope: !638)
!1361 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1360)
!1362 = !DILocation(line: 0, scope: !638)
!1363 = !DILocation(line: 0, scope: !338, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 468, column: 17, scope: !638)
!1365 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1364)
!1366 = !DILocation(line: 0, scope: !338, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 470, column: 17, scope: !638)
!1368 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1367)
!1369 = !DILocalVariable(name: "d", arg: 1, scope: !1370, file: !554, line: 44, type: !341)
!1370 = distinct !DISubprogram(name: "trailing_eigenvalue", scope: !554, file: !554, line: 44, type: !1371, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!139, !341, !341}
!1373 = !{!1369, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393}
!1374 = !DILocalVariable(name: "f", arg: 2, scope: !1370, file: !554, line: 44, type: !341)
!1375 = !DILocalVariable(name: "n", scope: !1370, file: !554, line: 46, type: !170)
!1376 = !DILocalVariable(name: "da", scope: !1370, file: !554, line: 48, type: !139)
!1377 = !DILocalVariable(name: "db", scope: !1370, file: !554, line: 49, type: !139)
!1378 = !DILocalVariable(name: "fa", scope: !1370, file: !554, line: 50, type: !139)
!1379 = !DILocalVariable(name: "fb", scope: !1370, file: !554, line: 51, type: !139)
!1380 = !DILocalVariable(name: "mu", scope: !1370, file: !554, line: 53, type: !139)
!1381 = !DILocalVariable(name: "ta", scope: !1382, file: !554, line: 87, type: !139)
!1382 = distinct !DILexicalBlock(scope: !1370, file: !554, line: 77, column: 3)
!1383 = !DILocalVariable(name: "tb", scope: !1382, file: !554, line: 88, type: !139)
!1384 = !DILocalVariable(name: "tab", scope: !1382, file: !554, line: 89, type: !139)
!1385 = !DILocalVariable(name: "dt", scope: !1382, file: !554, line: 91, type: !139)
!1386 = !DILocalVariable(name: "S", scope: !1382, file: !554, line: 93, type: !139)
!1387 = !DILocalVariable(name: "da2", scope: !1382, file: !554, line: 94, type: !139)
!1388 = !DILocalVariable(name: "db2", scope: !1382, file: !554, line: 94, type: !139)
!1389 = !DILocalVariable(name: "fa2", scope: !1382, file: !554, line: 95, type: !139)
!1390 = !DILocalVariable(name: "fb2", scope: !1382, file: !554, line: 95, type: !139)
!1391 = !DILocalVariable(name: "P", scope: !1382, file: !554, line: 96, type: !139)
!1392 = !DILocalVariable(name: "D", scope: !1382, file: !554, line: 97, type: !139)
!1393 = !DILocalVariable(name: "r1", scope: !1382, file: !554, line: 98, type: !139)
!1394 = !DILocation(line: 0, scope: !1370, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 473, column: 19, scope: !642)
!1396 = !DILocation(line: 48, column: 36, scope: !1370, inlinedAt: !1395)
!1397 = !DILocation(line: 0, scope: !338, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 48, column: 15, scope: !1370, inlinedAt: !1395)
!1399 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1398)
!1400 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1398)
!1401 = !DILocation(line: 0, scope: !338, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 49, column: 15, scope: !1370, inlinedAt: !1395)
!1403 = !DILocation(line: 50, column: 18, scope: !1370, inlinedAt: !1395)
!1404 = !DILocation(line: 50, column: 15, scope: !1370, inlinedAt: !1395)
!1405 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 51, column: 15, scope: !1370, inlinedAt: !1395)
!1407 = !DILocation(line: 50, column: 46, scope: !1370, inlinedAt: !1395)
!1408 = !DILocation(line: 0, scope: !338, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 50, column: 25, scope: !1370, inlinedAt: !1395)
!1410 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1409)
!1411 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1409)
!1412 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1409)
!1413 = !DILocation(line: 0, scope: !338, inlinedAt: !1406)
!1414 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1406)
!1415 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1406)
!1416 = !DILocation(line: 87, column: 20, scope: !1382, inlinedAt: !1395)
!1417 = !DILocation(line: 87, column: 30, scope: !1382, inlinedAt: !1395)
!1418 = !DILocation(line: 87, column: 25, scope: !1382, inlinedAt: !1395)
!1419 = !DILocation(line: 0, scope: !1382, inlinedAt: !1395)
!1420 = !DILocation(line: 88, column: 20, scope: !1382, inlinedAt: !1395)
!1421 = !DILocation(line: 88, column: 30, scope: !1382, inlinedAt: !1395)
!1422 = !DILocation(line: 88, column: 25, scope: !1382, inlinedAt: !1395)
!1423 = !DILocation(line: 89, column: 21, scope: !1382, inlinedAt: !1395)
!1424 = !DILocation(line: 91, column: 21, scope: !1382, inlinedAt: !1395)
!1425 = !DILocation(line: 91, column: 27, scope: !1382, inlinedAt: !1395)
!1426 = !DILocation(line: 93, column: 19, scope: !1382, inlinedAt: !1395)
!1427 = !DILocation(line: 97, column: 16, scope: !1382, inlinedAt: !1395)
!1428 = !DILocation(line: 98, column: 18, scope: !1382, inlinedAt: !1395)
!1429 = !DILocation(line: 98, column: 21, scope: !1382, inlinedAt: !1395)
!1430 = !DILocation(line: 100, column: 12, scope: !1431, inlinedAt: !1395)
!1431 = distinct !DILexicalBlock(scope: !1382, file: !554, line: 100, column: 9)
!1432 = !DILocation(line: 100, column: 9, scope: !1382, inlinedAt: !1395)
!1433 = !DILocation(line: 96, column: 21, scope: !1382, inlinedAt: !1395)
!1434 = !DILocation(line: 96, column: 35, scope: !1382, inlinedAt: !1395)
!1435 = !DILocation(line: 96, column: 28, scope: !1382, inlinedAt: !1395)
!1436 = !DILocation(line: 96, column: 49, scope: !1382, inlinedAt: !1395)
!1437 = !DILocation(line: 96, column: 42, scope: !1382, inlinedAt: !1395)
!1438 = !DILocation(line: 103, column: 18, scope: !1439, inlinedAt: !1395)
!1439 = distinct !DILexicalBlock(scope: !1431, file: !554, line: 101, column: 7)
!1440 = !DILocation(line: 103, column: 14, scope: !1439, inlinedAt: !1395)
!1441 = !DILocation(line: 104, column: 7, scope: !1439, inlinedAt: !1395)
!1442 = !DILocation(line: 0, scope: !1431, inlinedAt: !1395)
!1443 = !DILocation(line: 0, scope: !642)
!1444 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 602, column: 3, scope: !610)
!1446 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1445)
!1447 = !DILocation(line: 476, column: 14, scope: !642)
!1448 = !DILocation(line: 475, column: 14, scope: !642)
!1449 = !DILocation(line: 475, column: 19, scope: !642)
!1450 = !DILocation(line: 490, column: 3, scope: !646)
!1451 = !DILocation(line: 0, scope: !746, inlinedAt: !1452)
!1452 = distinct !DILocation(line: 493, column: 7, scope: !644)
!1453 = !DILocation(line: 742, column: 9, scope: !756, inlinedAt: !1452)
!1454 = !DILocation(line: 742, column: 7, scope: !746, inlinedAt: !1452)
!1455 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !1452)
!1456 = !DILocation(line: 747, column: 23, scope: !755, inlinedAt: !1452)
!1457 = !DILocation(line: 747, column: 21, scope: !755, inlinedAt: !1452)
!1458 = !DILocation(line: 747, column: 12, scope: !756, inlinedAt: !1452)
!1459 = !DILocation(line: 749, column: 18, scope: !754, inlinedAt: !1452)
!1460 = !DILocation(line: 749, column: 21, scope: !754, inlinedAt: !1452)
!1461 = !DILocation(line: 0, scope: !754, inlinedAt: !1452)
!1462 = !DILocation(line: 750, column: 37, scope: !754, inlinedAt: !1452)
!1463 = !DILocation(line: 750, column: 33, scope: !754, inlinedAt: !1452)
!1464 = !DILocation(line: 750, column: 25, scope: !754, inlinedAt: !1452)
!1465 = !DILocation(line: 750, column: 23, scope: !754, inlinedAt: !1452)
!1466 = !DILocation(line: 0, scope: !644)
!1467 = !DILocation(line: 752, column: 15, scope: !754, inlinedAt: !1452)
!1468 = !DILocation(line: 753, column: 5, scope: !754, inlinedAt: !1452)
!1469 = !DILocation(line: 756, column: 18, scope: !759, inlinedAt: !1452)
!1470 = !DILocation(line: 756, column: 21, scope: !759, inlinedAt: !1452)
!1471 = !DILocation(line: 0, scope: !759, inlinedAt: !1452)
!1472 = !DILocation(line: 757, column: 37, scope: !759, inlinedAt: !1452)
!1473 = !DILocation(line: 757, column: 33, scope: !759, inlinedAt: !1452)
!1474 = !DILocation(line: 757, column: 25, scope: !759, inlinedAt: !1452)
!1475 = !DILocation(line: 757, column: 23, scope: !759, inlinedAt: !1452)
!1476 = !DILocation(line: 759, column: 15, scope: !759, inlinedAt: !1452)
!1477 = !DILocation(line: 0, scope: !756, inlinedAt: !1452)
!1478 = !DILocation(line: 504, column: 7, scope: !651)
!1479 = !DILocation(line: 0, scope: !465, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 506, column: 24, scope: !649)
!1481 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1480)
!1482 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1480)
!1483 = !DILocation(line: 0, scope: !649)
!1484 = !DILocation(line: 0, scope: !465, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 507, column: 24, scope: !649)
!1486 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1485)
!1487 = !DILocation(line: 508, column: 38, scope: !649)
!1488 = !DILocation(line: 508, column: 48, scope: !649)
!1489 = !DILocation(line: 508, column: 44, scope: !649)
!1490 = !DILocation(line: 0, scope: !307, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 508, column: 11, scope: !649)
!1492 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1491)
!1493 = !DILocation(line: 509, column: 42, scope: !649)
!1494 = !DILocation(line: 509, column: 52, scope: !649)
!1495 = !DILocation(line: 509, column: 48, scope: !649)
!1496 = !DILocation(line: 0, scope: !307, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 509, column: 11, scope: !649)
!1498 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1497)
!1499 = !DILocation(line: 504, column: 27, scope: !650)
!1500 = distinct !{!1500, !1478, !1501, !358}
!1501 = !DILocation(line: 510, column: 9, scope: !651)
!1502 = !DILocation(line: 518, column: 24, scope: !654)
!1503 = !DILocation(line: 0, scope: !654)
!1504 = !DILocation(line: 518, column: 33, scope: !654)
!1505 = !DILocation(line: 518, column: 29, scope: !654)
!1506 = !DILocation(line: 519, column: 24, scope: !654)
!1507 = !DILocation(line: 519, column: 33, scope: !654)
!1508 = !DILocation(line: 519, column: 29, scope: !654)
!1509 = !DILocation(line: 520, column: 22, scope: !654)
!1510 = !DILocation(line: 520, column: 25, scope: !654)
!1511 = !DILocation(line: 522, column: 24, scope: !654)
!1512 = !DILocation(line: 524, column: 15, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !654, file: !554, line: 524, column: 13)
!1514 = !DILocation(line: 524, column: 13, scope: !654)
!1515 = !DILocation(line: 516, column: 24, scope: !654)
!1516 = !DILocation(line: 516, column: 33, scope: !654)
!1517 = !DILocation(line: 516, column: 29, scope: !654)
!1518 = !DILocation(line: 526, column: 34, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1513, file: !554, line: 525, column: 11)
!1520 = !DILocation(line: 0, scope: !293, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 526, column: 13, scope: !1519)
!1522 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1521)
!1523 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1521)
!1524 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1521)
!1525 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1521)
!1526 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1521)
!1527 = !DILocation(line: 527, column: 11, scope: !1519)
!1528 = !DILocation(line: 535, column: 15, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !654, file: !554, line: 535, column: 13)
!1530 = !DILocation(line: 535, column: 13, scope: !654)
!1531 = !DILocation(line: 537, column: 39, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1529, file: !554, line: 536, column: 11)
!1533 = !DILocation(line: 0, scope: !338, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 537, column: 18, scope: !1532)
!1535 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1534)
!1536 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1534)
!1537 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1534)
!1538 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1534)
!1539 = !DILocation(line: 538, column: 11, scope: !1532)
!1540 = !DILocation(line: 0, scope: !1529)
!1541 = !DILocation(line: 0, scope: !746, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 548, column: 7, scope: !644)
!1543 = !DILocation(line: 742, column: 9, scope: !756, inlinedAt: !1542)
!1544 = !DILocation(line: 742, column: 7, scope: !746, inlinedAt: !1542)
!1545 = !DILocation(line: 747, column: 12, scope: !755, inlinedAt: !1542)
!1546 = !DILocation(line: 747, column: 23, scope: !755, inlinedAt: !1542)
!1547 = !DILocation(line: 747, column: 21, scope: !755, inlinedAt: !1542)
!1548 = !DILocation(line: 747, column: 12, scope: !756, inlinedAt: !1542)
!1549 = !DILocation(line: 749, column: 18, scope: !754, inlinedAt: !1542)
!1550 = !DILocation(line: 749, column: 21, scope: !754, inlinedAt: !1542)
!1551 = !DILocation(line: 0, scope: !754, inlinedAt: !1542)
!1552 = !DILocation(line: 750, column: 37, scope: !754, inlinedAt: !1542)
!1553 = !DILocation(line: 750, column: 33, scope: !754, inlinedAt: !1542)
!1554 = !DILocation(line: 750, column: 25, scope: !754, inlinedAt: !1542)
!1555 = !DILocation(line: 750, column: 23, scope: !754, inlinedAt: !1542)
!1556 = !DILocation(line: 752, column: 15, scope: !754, inlinedAt: !1542)
!1557 = !DILocation(line: 753, column: 5, scope: !754, inlinedAt: !1542)
!1558 = !DILocation(line: 756, column: 18, scope: !759, inlinedAt: !1542)
!1559 = !DILocation(line: 756, column: 21, scope: !759, inlinedAt: !1542)
!1560 = !DILocation(line: 0, scope: !759, inlinedAt: !1542)
!1561 = !DILocation(line: 757, column: 37, scope: !759, inlinedAt: !1542)
!1562 = !DILocation(line: 757, column: 33, scope: !759, inlinedAt: !1542)
!1563 = !DILocation(line: 757, column: 25, scope: !759, inlinedAt: !1542)
!1564 = !DILocation(line: 757, column: 23, scope: !759, inlinedAt: !1542)
!1565 = !DILocation(line: 759, column: 15, scope: !759, inlinedAt: !1542)
!1566 = !DILocation(line: 0, scope: !756, inlinedAt: !1542)
!1567 = !DILocation(line: 559, column: 7, scope: !662)
!1568 = !DILocation(line: 0, scope: !465, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 561, column: 24, scope: !660)
!1570 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1569)
!1571 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1569)
!1572 = !DILocation(line: 0, scope: !660)
!1573 = !DILocation(line: 0, scope: !465, inlinedAt: !1574)
!1574 = distinct !DILocation(line: 562, column: 24, scope: !660)
!1575 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1574)
!1576 = !DILocation(line: 563, column: 38, scope: !660)
!1577 = !DILocation(line: 563, column: 48, scope: !660)
!1578 = !DILocation(line: 563, column: 44, scope: !660)
!1579 = !DILocation(line: 0, scope: !307, inlinedAt: !1580)
!1580 = distinct !DILocation(line: 563, column: 11, scope: !660)
!1581 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1580)
!1582 = !DILocation(line: 564, column: 42, scope: !660)
!1583 = !DILocation(line: 564, column: 52, scope: !660)
!1584 = !DILocation(line: 564, column: 48, scope: !660)
!1585 = !DILocation(line: 0, scope: !307, inlinedAt: !1586)
!1586 = distinct !DILocation(line: 564, column: 11, scope: !660)
!1587 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1586)
!1588 = !DILocation(line: 559, column: 27, scope: !661)
!1589 = distinct !{!1589, !1567, !1590, !358}
!1590 = !DILocation(line: 565, column: 9, scope: !662)
!1591 = !DILocation(line: 571, column: 24, scope: !665)
!1592 = !DILocation(line: 571, column: 33, scope: !665)
!1593 = !DILocation(line: 571, column: 29, scope: !665)
!1594 = !DILocation(line: 0, scope: !665)
!1595 = !DILocation(line: 572, column: 24, scope: !665)
!1596 = !DILocation(line: 572, column: 33, scope: !665)
!1597 = !DILocation(line: 572, column: 29, scope: !665)
!1598 = !DILocation(line: 573, column: 22, scope: !665)
!1599 = !DILocation(line: 573, column: 25, scope: !665)
!1600 = !DILocation(line: 575, column: 24, scope: !665)
!1601 = !DILocation(line: 575, column: 33, scope: !665)
!1602 = !DILocation(line: 575, column: 29, scope: !665)
!1603 = !DILocation(line: 576, column: 24, scope: !665)
!1604 = !DILocation(line: 0, scope: !293, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 578, column: 9, scope: !665)
!1606 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1605)
!1607 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1605)
!1608 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1605)
!1609 = !DILocation(line: 587, column: 13, scope: !665)
!1610 = !DILocation(line: 589, column: 39, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !554, line: 588, column: 11)
!1612 = distinct !DILexicalBlock(scope: !665, file: !554, line: 587, column: 13)
!1613 = !DILocation(line: 0, scope: !338, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 589, column: 18, scope: !1611)
!1615 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1614)
!1616 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1614)
!1617 = !DILocation(line: 590, column: 11, scope: !1611)
!1618 = !DILocation(line: 0, scope: !1612)
!1619 = !DILocation(line: 490, column: 27, scope: !645)
!1620 = !DILocation(line: 490, column: 17, scope: !645)
!1621 = distinct !{!1621, !1450, !1622, !358}
!1622 = !DILocation(line: 599, column: 5, scope: !646)
!1623 = !DILocation(line: 0, scope: !293, inlinedAt: !1624)
!1624 = distinct !DILocation(line: 601, column: 3, scope: !610)
!1625 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1624)
!1626 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1624)
!1627 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1624)
!1628 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1624)
!1629 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1624)
!1630 = !DILocation(line: 0, scope: !293, inlinedAt: !1445)
!1631 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1445)
!1632 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1445)
!1633 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1445)
!1634 = !DILocation(line: 603, column: 1, scope: !610)
!1635 = !DISubprogram(name: "gsl_vector_swap_elements", scope: !151, file: !151, line: 141, type: !1636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!70, !149, !170, !170}
!1638 = !DISubprogram(name: "gsl_matrix_swap_columns", scope: !128, file: !128, line: 222, type: !1639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!70, !126, !170, !170}
!1641 = distinct !DISubprogram(name: "gsl_linalg_SV_decomp_mod", scope: !2, file: !2, line: 274, type: !1642, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!70, !126, !126, !126, !149, !149}
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1657, !1658, !1662, !1663, !1664, !1667, !1672, !1676, !1680, !1681, !1683, !1687, !1691}
!1645 = !DILocalVariable(name: "A", arg: 1, scope: !1641, file: !2, line: 274, type: !126)
!1646 = !DILocalVariable(name: "X", arg: 2, scope: !1641, file: !2, line: 275, type: !126)
!1647 = !DILocalVariable(name: "V", arg: 3, scope: !1641, file: !2, line: 276, type: !126)
!1648 = !DILocalVariable(name: "S", arg: 4, scope: !1641, file: !2, line: 276, type: !149)
!1649 = !DILocalVariable(name: "work", arg: 5, scope: !1641, file: !2, line: 276, type: !149)
!1650 = !DILocalVariable(name: "i", scope: !1641, file: !2, line: 278, type: !132)
!1651 = !DILocalVariable(name: "j", scope: !1641, file: !2, line: 278, type: !132)
!1652 = !DILocalVariable(name: "M", scope: !1641, file: !2, line: 280, type: !170)
!1653 = !DILocalVariable(name: "N", scope: !1641, file: !2, line: 281, type: !170)
!1654 = !DILocalVariable(name: "column", scope: !1655, file: !2, line: 318, type: !176)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !2, line: 317, column: 5)
!1656 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 316, column: 7)
!1657 = !DILocalVariable(name: "norm", scope: !1655, file: !2, line: 319, type: !139)
!1658 = !DILocalVariable(name: "c", scope: !1659, file: !2, line: 336, type: !176)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 335, column: 5)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !2, line: 334, column: 3)
!1661 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 334, column: 3)
!1662 = !DILocalVariable(name: "v", scope: !1659, file: !2, line: 337, type: !176)
!1663 = !DILocalVariable(name: "tau_i", scope: !1659, file: !2, line: 338, type: !139)
!1664 = !DILocalVariable(name: "m", scope: !1665, file: !2, line: 344, type: !193)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !2, line: 343, column: 9)
!1666 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 342, column: 11)
!1667 = !DILocalVariable(name: "Aii", scope: !1668, file: !2, line: 362, type: !139)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 361, column: 7)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 355, column: 5)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 354, column: 3)
!1671 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 354, column: 3)
!1672 = !DILocalVariable(name: "Aij", scope: !1673, file: !2, line: 368, type: !139)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 367, column: 9)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !2, line: 366, column: 7)
!1675 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 366, column: 7)
!1676 = !DILocalVariable(name: "tj", scope: !1677, file: !2, line: 378, type: !139)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 376, column: 5)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 375, column: 3)
!1679 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 375, column: 3)
!1680 = !DILocalVariable(name: "m", scope: !1677, file: !2, line: 379, type: !193)
!1681 = !DILocalVariable(name: "sum", scope: !1682, file: !2, line: 390, type: !176)
!1682 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 389, column: 3)
!1683 = !DILocalVariable(name: "L_i", scope: !1684, file: !2, line: 394, type: !176)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !2, line: 393, column: 7)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 392, column: 5)
!1686 = distinct !DILexicalBlock(scope: !1682, file: !2, line: 392, column: 5)
!1687 = !DILocalVariable(name: "Lij", scope: !1688, file: !2, line: 399, type: !139)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !2, line: 398, column: 11)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !2, line: 397, column: 9)
!1690 = distinct !DILexicalBlock(scope: !1684, file: !2, line: 397, column: 9)
!1691 = !DILocalVariable(name: "X_j", scope: !1688, file: !2, line: 400, type: !176)
!1692 = distinct !DIAssignID()
!1693 = !DILocation(line: 0, scope: !1655)
!1694 = distinct !DIAssignID()
!1695 = !DILocation(line: 0, scope: !1659)
!1696 = distinct !DIAssignID()
!1697 = distinct !DIAssignID()
!1698 = !DILocation(line: 0, scope: !1665)
!1699 = distinct !DIAssignID()
!1700 = !DILocation(line: 0, scope: !1677)
!1701 = distinct !DIAssignID()
!1702 = !DILocation(line: 0, scope: !1682)
!1703 = distinct !DIAssignID()
!1704 = !DILocation(line: 0, scope: !1684)
!1705 = distinct !DIAssignID()
!1706 = !DILocation(line: 0, scope: !1688)
!1707 = !DILocation(line: 0, scope: !1641)
!1708 = !DILocation(line: 280, column: 23, scope: !1641)
!1709 = !DILocation(line: 281, column: 23, scope: !1641)
!1710 = !DILocation(line: 283, column: 9, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 283, column: 7)
!1712 = !DILocation(line: 283, column: 7, scope: !1641)
!1713 = !DILocation(line: 285, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 285, column: 7)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !2, line: 284, column: 5)
!1716 = !DILocation(line: 287, column: 15, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1711, file: !2, line: 287, column: 12)
!1718 = !DILocation(line: 287, column: 21, scope: !1717)
!1719 = !DILocation(line: 287, column: 12, scope: !1711)
!1720 = !DILocation(line: 289, column: 7, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !2, line: 289, column: 7)
!1722 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 288, column: 5)
!1723 = !DILocation(line: 292, column: 27, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1717, file: !2, line: 292, column: 12)
!1725 = !DILocation(line: 292, column: 21, scope: !1724)
!1726 = !DILocation(line: 292, column: 12, scope: !1717)
!1727 = !DILocation(line: 294, column: 7, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 294, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 293, column: 5)
!1730 = !DILocation(line: 296, column: 15, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 296, column: 12)
!1732 = !DILocation(line: 296, column: 21, scope: !1731)
!1733 = !DILocation(line: 296, column: 12, scope: !1724)
!1734 = !DILocation(line: 298, column: 7, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !2, line: 298, column: 7)
!1736 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 297, column: 5)
!1737 = !DILocation(line: 301, column: 27, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 301, column: 12)
!1739 = !DILocation(line: 301, column: 21, scope: !1738)
!1740 = !DILocation(line: 301, column: 12, scope: !1731)
!1741 = !DILocation(line: 303, column: 7, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 303, column: 7)
!1743 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 302, column: 5)
!1744 = !DILocation(line: 305, column: 15, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1738, file: !2, line: 305, column: 12)
!1746 = !DILocation(line: 305, column: 20, scope: !1745)
!1747 = !DILocation(line: 305, column: 12, scope: !1738)
!1748 = !DILocation(line: 307, column: 7, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 307, column: 7)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 306, column: 5)
!1751 = !DILocation(line: 310, column: 18, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1745, file: !2, line: 310, column: 12)
!1753 = !DILocation(line: 310, column: 23, scope: !1752)
!1754 = !DILocation(line: 310, column: 12, scope: !1745)
!1755 = !DILocation(line: 312, column: 7, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !2, line: 312, column: 7)
!1757 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 311, column: 5)
!1758 = !DILocation(line: 316, column: 9, scope: !1656)
!1759 = !DILocation(line: 316, column: 7, scope: !1641)
!1760 = !DILocation(line: 334, column: 17, scope: !1660)
!1761 = !DILocation(line: 334, column: 3, scope: !1661)
!1762 = !DILocation(line: 318, column: 7, scope: !1655)
!1763 = !DILocation(line: 318, column: 32, scope: !1655)
!1764 = !DILocation(line: 319, column: 21, scope: !1655)
!1765 = !DILocation(line: 0, scope: !293, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 321, column: 7, scope: !1655)
!1767 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1766)
!1768 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1766)
!1769 = !DILocation(line: 0, scope: !307, inlinedAt: !1770)
!1770 = distinct !DILocation(line: 322, column: 7, scope: !1655)
!1771 = !DILocation(line: 305, column: 6, scope: !307, inlinedAt: !1770)
!1772 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1770)
!1773 = !DILocation(line: 324, column: 16, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1655, file: !2, line: 324, column: 11)
!1775 = !DILocation(line: 324, column: 11, scope: !1655)
!1776 = !DILocation(line: 326, column: 30, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !2, line: 325, column: 9)
!1778 = !DILocation(line: 326, column: 11, scope: !1777)
!1779 = !DILocation(line: 327, column: 9, scope: !1777)
!1780 = !DILocation(line: 330, column: 5, scope: !1656)
!1781 = !DILocation(line: 354, column: 3, scope: !1671)
!1782 = !DILocation(line: 336, column: 7, scope: !1659)
!1783 = !DILocation(line: 336, column: 27, scope: !1659)
!1784 = !DILocation(line: 337, column: 7, scope: !1659)
!1785 = !DILocation(line: 337, column: 65, scope: !1659)
!1786 = !DILocation(line: 337, column: 27, scope: !1659)
!1787 = !DILocation(line: 338, column: 22, scope: !1659)
!1788 = !DILocation(line: 342, column: 13, scope: !1666)
!1789 = !DILocation(line: 342, column: 17, scope: !1666)
!1790 = !DILocation(line: 342, column: 11, scope: !1659)
!1791 = !DILocation(line: 344, column: 11, scope: !1665)
!1792 = !DILocation(line: 345, column: 57, scope: !1665)
!1793 = !DILocation(line: 345, column: 13, scope: !1665)
!1794 = !DILocation(line: 346, column: 11, scope: !1665)
!1795 = !DILocation(line: 347, column: 9, scope: !1666)
!1796 = !DILocation(line: 347, column: 9, scope: !1665)
!1797 = !DILocation(line: 0, scope: !293, inlinedAt: !1798)
!1798 = distinct !DILocation(line: 349, column: 7, scope: !1659)
!1799 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !1798)
!1800 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !1798)
!1801 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !1798)
!1802 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !1798)
!1803 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1798)
!1804 = !DILocation(line: 350, column: 5, scope: !1660)
!1805 = distinct !{!1805, !1761, !1806, !358}
!1806 = !DILocation(line: 350, column: 5, scope: !1661)
!1807 = !DILocation(line: 354, column: 17, scope: !1670)
!1808 = distinct !{!1808, !1781, !1809, !358}
!1809 = !DILocation(line: 371, column: 5, scope: !1671)
!1810 = !DILocation(line: 356, column: 21, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !2, line: 356, column: 7)
!1812 = distinct !DILexicalBlock(scope: !1669, file: !2, line: 356, column: 7)
!1813 = !DILocation(line: 356, column: 7, scope: !1812)
!1814 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 358, column: 11, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1811, file: !2, line: 357, column: 9)
!1817 = !DILocation(line: 0, scope: !307, inlinedAt: !1815)
!1818 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 362, column: 22, scope: !1668)
!1820 = !DILocation(line: 375, column: 3, scope: !1679)
!1821 = !DILocation(line: 305, column: 13, scope: !307, inlinedAt: !1822)
!1822 = distinct !DILocation(line: 363, column: 9, scope: !1668)
!1823 = !DILocation(line: 0, scope: !465, inlinedAt: !1819)
!1824 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1819)
!1825 = !DILocation(line: 0, scope: !1668)
!1826 = !DILocation(line: 0, scope: !307, inlinedAt: !1822)
!1827 = !DILocation(line: 305, column: 3, scope: !307, inlinedAt: !1822)
!1828 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1822)
!1829 = !DILocation(line: 366, column: 18, scope: !1675)
!1830 = !DILocation(line: 366, column: 25, scope: !1674)
!1831 = !DILocation(line: 366, column: 7, scope: !1675)
!1832 = !DILocation(line: 0, scope: !465, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 368, column: 24, scope: !1673)
!1834 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !1833)
!1835 = !DILocation(line: 0, scope: !1673)
!1836 = !DILocation(line: 0, scope: !307, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 369, column: 11, scope: !1673)
!1838 = !DILocation(line: 305, column: 3, scope: !307, inlinedAt: !1837)
!1839 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !1837)
!1840 = !DILocation(line: 366, column: 31, scope: !1674)
!1841 = distinct !{!1841, !1831, !1842, !358}
!1842 = !DILocation(line: 370, column: 9, scope: !1675)
!1843 = !DILocation(line: 375, column: 16, scope: !1678)
!1844 = !DILocation(line: 0, scope: !338, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 378, column: 19, scope: !1677)
!1846 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1845)
!1847 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1845)
!1848 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1845)
!1849 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1845)
!1850 = !DILocation(line: 379, column: 7, scope: !1677)
!1851 = !DILocation(line: 379, column: 60, scope: !1677)
!1852 = !DILocation(line: 379, column: 67, scope: !1677)
!1853 = !DILocation(line: 379, column: 27, scope: !1677)
!1854 = !DILocation(line: 380, column: 7, scope: !1677)
!1855 = !DILocation(line: 381, column: 5, scope: !1678)
!1856 = !DILocation(line: 375, column: 19, scope: !1678)
!1857 = distinct !{!1857, !1820, !1858, !358}
!1858 = !DILocation(line: 381, column: 5, scope: !1679)
!1859 = !DILocation(line: 385, column: 3, scope: !1641)
!1860 = !DILocation(line: 390, column: 5, scope: !1682)
!1861 = !DILocation(line: 390, column: 27, scope: !1682)
!1862 = !DILocation(line: 392, column: 19, scope: !1685)
!1863 = !DILocation(line: 392, column: 5, scope: !1686)
!1864 = !DILocation(line: 394, column: 9, scope: !1684)
!1865 = !DILocation(line: 394, column: 31, scope: !1684)
!1866 = !DILocation(line: 395, column: 9, scope: !1684)
!1867 = !DILocation(line: 397, column: 9, scope: !1690)
!1868 = !DILocation(line: 0, scope: !338, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 399, column: 26, scope: !1688)
!1870 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !1869)
!1871 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !1869)
!1872 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1869)
!1873 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1869)
!1874 = !DILocation(line: 400, column: 13, scope: !1688)
!1875 = !DILocation(line: 400, column: 35, scope: !1688)
!1876 = !DILocation(line: 401, column: 13, scope: !1688)
!1877 = !DILocation(line: 402, column: 11, scope: !1689)
!1878 = !DILocation(line: 397, column: 29, scope: !1689)
!1879 = !DILocation(line: 397, column: 23, scope: !1689)
!1880 = distinct !{!1880, !1867, !1881, !358}
!1881 = !DILocation(line: 402, column: 11, scope: !1690)
!1882 = !DILocation(line: 404, column: 9, scope: !1684)
!1883 = !DILocation(line: 405, column: 7, scope: !1685)
!1884 = !DILocation(line: 392, column: 25, scope: !1685)
!1885 = distinct !{!1885, !1863, !1886, !358}
!1886 = !DILocation(line: 405, column: 7, scope: !1686)
!1887 = !DILocation(line: 406, column: 3, scope: !1641)
!1888 = !DILocation(line: 408, column: 3, scope: !1641)
!1889 = !DILocation(line: 409, column: 1, scope: !1641)
!1890 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !547, file: !547, line: 94, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!139, !149}
!1893 = !DISubprogram(name: "gsl_linalg_householder_hm", scope: !547, file: !547, line: 97, type: !1894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!70, !139, !341, !126}
!1896 = !DISubprogram(name: "gsl_linalg_householder_hm1", scope: !547, file: !547, line: 109, type: !1897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!70, !139, !126}
!1899 = !DISubprogram(name: "gsl_matrix_row", scope: !128, file: !128, line: 106, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1900 = !DISubprogram(name: "gsl_vector_set_zero", scope: !151, file: !151, line: 126, type: !1901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !149}
!1903 = !DISubprogram(name: "gsl_blas_daxpy", scope: !537, file: !537, line: 121, type: !1904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!70, !139, !341, !149}
!1906 = !DISubprogram(name: "gsl_vector_memcpy", scope: !151, file: !151, line: 136, type: !1907, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!70, !149, !341}
!1909 = distinct !DISubprogram(name: "gsl_linalg_SV_solve", scope: !2, file: !2, line: 421, type: !1910, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !1912)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!70, !468, !468, !341, !341, !149}
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1925, !1926, !1927, !1931}
!1913 = !DILocalVariable(name: "U", arg: 1, scope: !1909, file: !2, line: 421, type: !468)
!1914 = !DILocalVariable(name: "V", arg: 2, scope: !1909, file: !2, line: 422, type: !468)
!1915 = !DILocalVariable(name: "S", arg: 3, scope: !1909, file: !2, line: 423, type: !341)
!1916 = !DILocalVariable(name: "b", arg: 4, scope: !1909, file: !2, line: 424, type: !341)
!1917 = !DILocalVariable(name: "x", arg: 5, scope: !1909, file: !2, line: 424, type: !149)
!1918 = !DILocalVariable(name: "N", scope: !1919, file: !2, line: 451, type: !170)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !2, line: 450, column: 5)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 445, column: 12)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !2, line: 440, column: 12)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !2, line: 436, column: 12)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 431, column: 12)
!1924 = distinct !DILexicalBlock(scope: !1909, file: !2, line: 426, column: 7)
!1925 = !DILocalVariable(name: "i", scope: !1919, file: !2, line: 452, type: !132)
!1926 = !DILocalVariable(name: "w", scope: !1919, file: !2, line: 454, type: !149)
!1927 = !DILocalVariable(name: "wi", scope: !1928, file: !2, line: 460, type: !139)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 459, column: 9)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 458, column: 7)
!1930 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 458, column: 7)
!1931 = !DILocalVariable(name: "alpha", scope: !1928, file: !2, line: 461, type: !139)
!1932 = !DILocation(line: 0, scope: !1909)
!1933 = !DILocation(line: 426, column: 10, scope: !1924)
!1934 = !DILocation(line: 426, column: 22, scope: !1924)
!1935 = !DILocation(line: 426, column: 16, scope: !1924)
!1936 = !DILocation(line: 426, column: 7, scope: !1909)
!1937 = !DILocation(line: 428, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 428, column: 7)
!1939 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 427, column: 5)
!1940 = !DILocation(line: 431, column: 15, scope: !1923)
!1941 = !DILocation(line: 431, column: 27, scope: !1923)
!1942 = !DILocation(line: 431, column: 21, scope: !1923)
!1943 = !DILocation(line: 431, column: 12, scope: !1924)
!1944 = !DILocation(line: 433, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1946, file: !2, line: 433, column: 7)
!1946 = distinct !DILexicalBlock(scope: !1923, file: !2, line: 432, column: 5)
!1947 = !DILocation(line: 436, column: 15, scope: !1922)
!1948 = !DILocation(line: 436, column: 27, scope: !1922)
!1949 = !DILocation(line: 436, column: 21, scope: !1922)
!1950 = !DILocation(line: 436, column: 12, scope: !1923)
!1951 = !DILocation(line: 438, column: 7, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 438, column: 7)
!1953 = distinct !DILexicalBlock(scope: !1922, file: !2, line: 437, column: 5)
!1954 = !DILocation(line: 440, column: 20, scope: !1921)
!1955 = !DILocation(line: 440, column: 12, scope: !1922)
!1956 = !DILocation(line: 442, column: 7, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !2, line: 442, column: 7)
!1958 = distinct !DILexicalBlock(scope: !1921, file: !2, line: 441, column: 5)
!1959 = !DILocation(line: 445, column: 27, scope: !1920)
!1960 = !DILocation(line: 445, column: 21, scope: !1920)
!1961 = !DILocation(line: 445, column: 12, scope: !1921)
!1962 = !DILocation(line: 447, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !2, line: 447, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1920, file: !2, line: 446, column: 5)
!1965 = !DILocation(line: 0, scope: !1919)
!1966 = !DILocation(line: 454, column: 23, scope: !1919)
!1967 = !DILocation(line: 456, column: 7, scope: !1919)
!1968 = !DILocation(line: 458, column: 21, scope: !1929)
!1969 = !DILocation(line: 458, column: 7, scope: !1930)
!1970 = !DILocation(line: 0, scope: !338, inlinedAt: !1971)
!1971 = distinct !DILocation(line: 460, column: 23, scope: !1928)
!1972 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1971)
!1973 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1971)
!1974 = !DILocation(line: 0, scope: !1928)
!1975 = !DILocation(line: 0, scope: !338, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 461, column: 26, scope: !1928)
!1977 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !1976)
!1978 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !1976)
!1979 = !DILocation(line: 462, column: 21, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1928, file: !2, line: 462, column: 15)
!1981 = !DILocation(line: 462, column: 15, scope: !1928)
!1982 = !DILocation(line: 464, column: 39, scope: !1928)
!1983 = !DILocation(line: 0, scope: !293, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 464, column: 11, scope: !1928)
!1985 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !1984)
!1986 = !DILocation(line: 458, column: 27, scope: !1929)
!1987 = distinct !{!1987, !1969, !1988, !358}
!1988 = !DILocation(line: 465, column: 9, scope: !1930)
!1989 = !DILocation(line: 467, column: 7, scope: !1919)
!1990 = !DILocation(line: 469, column: 7, scope: !1919)
!1991 = !DILocation(line: 0, scope: !1924)
!1992 = !DILocation(line: 473, column: 1, scope: !1909)
!1993 = !DISubprogram(name: "gsl_vector_calloc", scope: !151, file: !151, line: 70, type: !1994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!149, !170}
!1996 = !DISubprogram(name: "gsl_blas_dgemv", scope: !537, file: !537, line: 205, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!70, !1999, !139, !468, !341, !139, !149}
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !2000, line: 44, baseType: !107)
!2000 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!2001 = !DISubprogram(name: "gsl_vector_free", scope: !151, file: !151, line: 82, type: !1901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2002 = distinct !DISubprogram(name: "gsl_linalg_SV_leverage", scope: !2, file: !2, line: 488, type: !2003, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !2005)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!70, !468, !149}
!2005 = !{!2006, !2007, !2008, !2009, !2012, !2022}
!2006 = !DILocalVariable(name: "U", arg: 1, scope: !2002, file: !2, line: 488, type: !468)
!2007 = !DILocalVariable(name: "h", arg: 2, scope: !2002, file: !2, line: 488, type: !149)
!2008 = !DILocalVariable(name: "M", scope: !2002, file: !2, line: 490, type: !170)
!2009 = !DILocalVariable(name: "i", scope: !2010, file: !2, line: 499, type: !132)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 498, column: 5)
!2011 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 492, column: 7)
!2012 = !DILocalVariable(name: "v", scope: !2013, file: !2, line: 503, type: !2016)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 502, column: 9)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 501, column: 7)
!2015 = distinct !DILexicalBlock(scope: !2010, file: !2, line: 501, column: 7)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !151, line: 64, baseType: !2017)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !151, line: 62, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !151, line: 59, size: 320, elements: !2020)
!2020 = !{!2021}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2019, file: !151, line: 61, baseType: !150, size: 320)
!2022 = !DILocalVariable(name: "hi", scope: !2013, file: !2, line: 504, type: !139)
!2023 = distinct !DIAssignID()
!2024 = !DILocation(line: 0, scope: !2013)
!2025 = distinct !DIAssignID()
!2026 = !DILocation(line: 0, scope: !2002)
!2027 = !DILocation(line: 490, column: 23, scope: !2002)
!2028 = !DILocation(line: 492, column: 15, scope: !2011)
!2029 = !DILocation(line: 492, column: 9, scope: !2011)
!2030 = !DILocation(line: 492, column: 7, scope: !2002)
!2031 = !DILocation(line: 0, scope: !2010)
!2032 = !DILocation(line: 501, column: 21, scope: !2014)
!2033 = !DILocation(line: 501, column: 7, scope: !2015)
!2034 = !DILocation(line: 494, column: 7, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !2, line: 494, column: 7)
!2036 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 493, column: 5)
!2037 = !DILocation(line: 503, column: 11, scope: !2013)
!2038 = !DILocation(line: 503, column: 37, scope: !2013)
!2039 = !DILocation(line: 504, column: 11, scope: !2013)
!2040 = !DILocation(line: 506, column: 11, scope: !2013)
!2041 = !DILocation(line: 507, column: 32, scope: !2013)
!2042 = !DILocation(line: 0, scope: !293, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 507, column: 11, scope: !2013)
!2044 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !2043)
!2045 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !2043)
!2046 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !2043)
!2047 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !2043)
!2048 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2043)
!2049 = !DILocation(line: 508, column: 9, scope: !2014)
!2050 = !DILocation(line: 501, column: 26, scope: !2014)
!2051 = distinct !{!2051, !2033, !2052, !358}
!2052 = !DILocation(line: 508, column: 9, scope: !2015)
!2053 = !DILocation(line: 0, scope: !2011)
!2054 = !DILocation(line: 512, column: 1, scope: !2002)
!2055 = !DISubprogram(name: "gsl_matrix_const_row", scope: !128, file: !128, line: 158, type: !2056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!2018, !468, !170}
!2058 = !DISubprogram(name: "gsl_blas_ddot", scope: !537, file: !537, line: 66, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!70, !341, !341, !138}
!2061 = distinct !DISubprogram(name: "gsl_linalg_SV_decomp_jacobi", scope: !2, file: !2, line: 536, type: !2062, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !66, retainedNodes: !2064)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!70, !126, !126, !149}
!2064 = !{!2065, !2066, !2067, !2068, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2086, !2087, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2113, !2114, !2118, !2119, !2121, !2125}
!2065 = !DILocalVariable(name: "A", arg: 1, scope: !2061, file: !2, line: 536, type: !126)
!2066 = !DILocalVariable(name: "Q", arg: 2, scope: !2061, file: !2, line: 536, type: !126)
!2067 = !DILocalVariable(name: "S", arg: 3, scope: !2061, file: !2, line: 536, type: !149)
!2068 = !DILocalVariable(name: "M", scope: !2069, file: !2, line: 560, type: !170)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !2, line: 559, column: 5)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 553, column: 12)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 549, column: 12)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 544, column: 12)
!2073 = distinct !DILexicalBlock(scope: !2061, file: !2, line: 538, column: 7)
!2074 = !DILocalVariable(name: "N", scope: !2069, file: !2, line: 561, type: !170)
!2075 = !DILocalVariable(name: "i", scope: !2069, file: !2, line: 562, type: !132)
!2076 = !DILocalVariable(name: "j", scope: !2069, file: !2, line: 562, type: !132)
!2077 = !DILocalVariable(name: "k", scope: !2069, file: !2, line: 562, type: !132)
!2078 = !DILocalVariable(name: "count", scope: !2069, file: !2, line: 565, type: !70)
!2079 = !DILocalVariable(name: "sweep", scope: !2069, file: !2, line: 566, type: !70)
!2080 = !DILocalVariable(name: "sweepmax", scope: !2069, file: !2, line: 567, type: !70)
!2081 = !DILocalVariable(name: "tolerance", scope: !2069, file: !2, line: 569, type: !139)
!2082 = !DILocalVariable(name: "cj", scope: !2083, file: !2, line: 582, type: !176)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !2, line: 581, column: 9)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 580, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 580, column: 7)
!2086 = !DILocalVariable(name: "sj", scope: !2083, file: !2, line: 583, type: !139)
!2087 = !DILocalVariable(name: "a", scope: !2088, file: !2, line: 598, type: !139)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !2, line: 597, column: 17)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 596, column: 15)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !2, line: 596, column: 15)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 595, column: 13)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !2, line: 594, column: 11)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !2, line: 594, column: 11)
!2094 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 590, column: 9)
!2095 = !DILocalVariable(name: "b", scope: !2088, file: !2, line: 599, type: !139)
!2096 = !DILocalVariable(name: "p", scope: !2088, file: !2, line: 600, type: !139)
!2097 = !DILocalVariable(name: "q", scope: !2088, file: !2, line: 601, type: !139)
!2098 = !DILocalVariable(name: "cosine", scope: !2088, file: !2, line: 602, type: !139)
!2099 = !DILocalVariable(name: "sine", scope: !2088, file: !2, line: 602, type: !139)
!2100 = !DILocalVariable(name: "v", scope: !2088, file: !2, line: 603, type: !139)
!2101 = !DILocalVariable(name: "abserr_a", scope: !2088, file: !2, line: 604, type: !139)
!2102 = !DILocalVariable(name: "abserr_b", scope: !2088, file: !2, line: 604, type: !139)
!2103 = !DILocalVariable(name: "sorted", scope: !2088, file: !2, line: 605, type: !70)
!2104 = !DILocalVariable(name: "orthog", scope: !2088, file: !2, line: 605, type: !70)
!2105 = !DILocalVariable(name: "noisya", scope: !2088, file: !2, line: 605, type: !70)
!2106 = !DILocalVariable(name: "noisyb", scope: !2088, file: !2, line: 605, type: !70)
!2107 = !DILocalVariable(name: "cj", scope: !2088, file: !2, line: 607, type: !176)
!2108 = !DILocalVariable(name: "ck", scope: !2088, file: !2, line: 608, type: !176)
!2109 = !DILocalVariable(name: "Aik", scope: !2110, file: !2, line: 650, type: !310)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !2, line: 649, column: 21)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !2, line: 648, column: 19)
!2112 = distinct !DILexicalBlock(scope: !2088, file: !2, line: 648, column: 19)
!2113 = !DILocalVariable(name: "Aij", scope: !2110, file: !2, line: 651, type: !310)
!2114 = !DILocalVariable(name: "Qij", scope: !2115, file: !2, line: 662, type: !310)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 661, column: 21)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !2, line: 660, column: 19)
!2117 = distinct !DILexicalBlock(scope: !2088, file: !2, line: 660, column: 19)
!2118 = !DILocalVariable(name: "Qik", scope: !2115, file: !2, line: 663, type: !310)
!2119 = !DILocalVariable(name: "prev_norm", scope: !2120, file: !2, line: 679, type: !139)
!2120 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 678, column: 7)
!2121 = !DILocalVariable(name: "column", scope: !2122, file: !2, line: 683, type: !176)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !2, line: 682, column: 11)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !2, line: 681, column: 9)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !2, line: 681, column: 9)
!2125 = !DILocalVariable(name: "norm", scope: !2122, file: !2, line: 684, type: !139)
!2126 = distinct !DIAssignID()
!2127 = !DILocation(line: 0, scope: !2083)
!2128 = distinct !DIAssignID()
!2129 = !DILocation(line: 0, scope: !2088)
!2130 = distinct !DIAssignID()
!2131 = distinct !DIAssignID()
!2132 = distinct !DIAssignID()
!2133 = !DILocation(line: 0, scope: !2122)
!2134 = !DILocation(line: 0, scope: !2061)
!2135 = !DILocation(line: 538, column: 10, scope: !2073)
!2136 = !DILocation(line: 538, column: 21, scope: !2073)
!2137 = !DILocation(line: 538, column: 16, scope: !2073)
!2138 = !DILocation(line: 538, column: 7, scope: !2061)
!2139 = !DILocation(line: 542, column: 7, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 542, column: 7)
!2141 = distinct !DILexicalBlock(scope: !2073, file: !2, line: 539, column: 5)
!2142 = !DILocation(line: 544, column: 15, scope: !2072)
!2143 = !DILocation(line: 544, column: 21, scope: !2072)
!2144 = !DILocation(line: 544, column: 12, scope: !2073)
!2145 = !DILocation(line: 546, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 546, column: 7)
!2147 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 545, column: 5)
!2148 = !DILocation(line: 549, column: 27, scope: !2071)
!2149 = !DILocation(line: 549, column: 21, scope: !2071)
!2150 = !DILocation(line: 549, column: 12, scope: !2072)
!2151 = !DILocation(line: 551, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !2, line: 551, column: 7)
!2153 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 550, column: 5)
!2154 = !DILocation(line: 553, column: 15, scope: !2070)
!2155 = !DILocation(line: 553, column: 20, scope: !2070)
!2156 = !DILocation(line: 553, column: 12, scope: !2071)
!2157 = !DILocation(line: 555, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !2, line: 555, column: 7)
!2159 = distinct !DILexicalBlock(scope: !2070, file: !2, line: 554, column: 5)
!2160 = !DILocation(line: 0, scope: !2069)
!2161 = !DILocation(line: 567, column: 22, scope: !2069)
!2162 = !DILocation(line: 569, column: 29, scope: !2069)
!2163 = !DILocation(line: 569, column: 26, scope: !2069)
!2164 = !DILocation(line: 569, column: 33, scope: !2069)
!2165 = !DILocation(line: 572, column: 18, scope: !2069)
!2166 = !DILocation(line: 575, column: 7, scope: !2069)
!2167 = !DILocation(line: 580, column: 21, scope: !2084)
!2168 = !DILocation(line: 580, column: 7, scope: !2085)
!2169 = !DILocation(line: 589, column: 7, scope: !2069)
!2170 = !DILocation(line: 582, column: 11, scope: !2083)
!2171 = !DILocation(line: 582, column: 32, scope: !2083)
!2172 = !DILocation(line: 583, column: 23, scope: !2083)
!2173 = !DILocation(line: 584, column: 48, scope: !2083)
!2174 = !DILocation(line: 0, scope: !293, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 584, column: 11, scope: !2083)
!2176 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !2175)
!2177 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !2175)
!2178 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !2175)
!2179 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !2175)
!2180 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2175)
!2181 = !DILocation(line: 585, column: 9, scope: !2084)
!2182 = !DILocation(line: 580, column: 27, scope: !2084)
!2183 = distinct !{!2183, !2168, !2184, !358}
!2184 = !DILocation(line: 585, column: 9, scope: !2085)
!2185 = !DILocation(line: 0, scope: !2120)
!2186 = !DILocation(line: 681, column: 9, scope: !2124)
!2187 = !DILocation(line: 683, column: 13, scope: !2122)
!2188 = !DILocation(line: 683, column: 38, scope: !2122)
!2189 = !DILocation(line: 684, column: 27, scope: !2122)
!2190 = !DILocation(line: 690, column: 22, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2122, file: !2, line: 690, column: 17)
!2192 = !DILocation(line: 0, scope: !293, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 693, column: 17, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 692, column: 15)
!2195 = !DILocation(line: 0, scope: !293, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 700, column: 17, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2191, file: !2, line: 699, column: 15)
!2198 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !2199)
!2199 = !DILocation(line: 0, scope: !2191)
!2200 = !DILocation(line: 690, column: 29, scope: !2191)
!2201 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2196)
!2202 = !DILocation(line: 701, column: 55, scope: !2197)
!2203 = !DILocation(line: 701, column: 17, scope: !2197)
!2204 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2193)
!2205 = !DILocation(line: 694, column: 17, scope: !2194)
!2206 = !DILocation(line: 697, column: 15, scope: !2194)
!2207 = !DILocation(line: 705, column: 11, scope: !2123)
!2208 = !DILocation(line: 681, column: 23, scope: !2123)
!2209 = !DILocation(line: 594, column: 11, scope: !2093)
!2210 = !DILocation(line: 0, scope: !2094)
!2211 = !DILocation(line: 594, column: 25, scope: !2092)
!2212 = distinct !{!2212, !2209, !2213, !358}
!2213 = !DILocation(line: 668, column: 13, scope: !2093)
!2214 = !DILocation(line: 596, column: 26, scope: !2090)
!2215 = !DILocation(line: 596, column: 33, scope: !2089)
!2216 = !DILocation(line: 596, column: 15, scope: !2090)
!2217 = !DILocation(line: 600, column: 19, scope: !2088)
!2218 = !DILocation(line: 600, column: 26, scope: !2088)
!2219 = distinct !DIAssignID()
!2220 = !DILocation(line: 607, column: 19, scope: !2088)
!2221 = !DILocation(line: 607, column: 40, scope: !2088)
!2222 = !DILocation(line: 608, column: 19, scope: !2088)
!2223 = !DILocation(line: 608, column: 40, scope: !2088)
!2224 = !DILocation(line: 610, column: 19, scope: !2088)
!2225 = !DILocation(line: 611, column: 21, scope: !2088)
!2226 = distinct !DIAssignID()
!2227 = !DILocation(line: 613, column: 23, scope: !2088)
!2228 = !DILocation(line: 614, column: 23, scope: !2088)
!2229 = !DILocation(line: 616, column: 25, scope: !2088)
!2230 = !DILocation(line: 616, column: 33, scope: !2088)
!2231 = !DILocation(line: 616, column: 29, scope: !2088)
!2232 = !DILocation(line: 617, column: 29, scope: !2088)
!2233 = !DILocation(line: 617, column: 23, scope: !2088)
!2234 = !DILocation(line: 0, scope: !338, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 621, column: 30, scope: !2088)
!2236 = !DILocation(line: 183, column: 13, scope: !338, inlinedAt: !2235)
!2237 = !DILocation(line: 183, column: 25, scope: !338, inlinedAt: !2235)
!2238 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !2235)
!2239 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !2235)
!2240 = !DILocation(line: 0, scope: !338, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 622, column: 30, scope: !2088)
!2242 = !DILocation(line: 183, column: 20, scope: !338, inlinedAt: !2241)
!2243 = !DILocation(line: 183, column: 10, scope: !338, inlinedAt: !2241)
!2244 = !DILocation(line: 624, column: 29, scope: !2088)
!2245 = !DILocation(line: 624, column: 50, scope: !2088)
!2246 = !DILocation(line: 624, column: 47, scope: !2088)
!2247 = !DILocation(line: 625, column: 35, scope: !2088)
!2248 = !DILocation(line: 625, column: 53, scope: !2088)
!2249 = !DILocation(line: 629, column: 30, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2088, file: !2, line: 629, column: 23)
!2251 = !DILocation(line: 627, column: 31, scope: !2088)
!2252 = !DILocation(line: 626, column: 31, scope: !2088)
!2253 = !DILocation(line: 625, column: 29, scope: !2088)
!2254 = !DILocation(line: 625, column: 51, scope: !2088)
!2255 = !DILocation(line: 625, column: 38, scope: !2088)
!2256 = !DILocation(line: 629, column: 41, scope: !2250)
!2257 = !DILocation(line: 631, column: 28, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 630, column: 21)
!2259 = !DILocation(line: 632, column: 23, scope: !2258)
!2260 = !DILocation(line: 636, column: 25, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2088, file: !2, line: 636, column: 23)
!2262 = !DILocation(line: 636, column: 30, scope: !2261)
!2263 = !DILocation(line: 643, column: 40, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 642, column: 21)
!2265 = !DILocation(line: 643, column: 52, scope: !2264)
!2266 = !DILocation(line: 643, column: 45, scope: !2264)
!2267 = !DILocation(line: 643, column: 32, scope: !2264)
!2268 = !DILocation(line: 644, column: 30, scope: !2264)
!2269 = !DILocation(line: 644, column: 43, scope: !2264)
!2270 = !DILocation(line: 644, column: 32, scope: !2264)
!2271 = !DILocation(line: 0, scope: !2261)
!2272 = !DILocation(line: 648, column: 19, scope: !2112)
!2273 = !DILocation(line: 0, scope: !465, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 650, column: 42, scope: !2110)
!2275 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !2274)
!2276 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !2274)
!2277 = !DILocation(line: 0, scope: !2110)
!2278 = !DILocation(line: 0, scope: !465, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 651, column: 42, scope: !2110)
!2280 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !2279)
!2281 = !DILocation(line: 652, column: 52, scope: !2110)
!2282 = !DILocation(line: 652, column: 67, scope: !2110)
!2283 = !DILocation(line: 652, column: 61, scope: !2110)
!2284 = !DILocation(line: 0, scope: !307, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 652, column: 23, scope: !2110)
!2286 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !2285)
!2287 = !DILocation(line: 653, column: 66, scope: !2110)
!2288 = !DILocation(line: 653, column: 60, scope: !2110)
!2289 = !DILocation(line: 0, scope: !307, inlinedAt: !2290)
!2290 = distinct !DILocation(line: 653, column: 23, scope: !2110)
!2291 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !2290)
!2292 = !DILocation(line: 648, column: 39, scope: !2111)
!2293 = !DILocation(line: 648, column: 33, scope: !2111)
!2294 = distinct !{!2294, !2272, !2295, !358}
!2295 = !DILocation(line: 654, column: 21, scope: !2112)
!2296 = !DILocation(line: 656, column: 40, scope: !2088)
!2297 = !DILocation(line: 656, column: 53, scope: !2088)
!2298 = !DILocation(line: 656, column: 66, scope: !2088)
!2299 = !DILocation(line: 656, column: 77, scope: !2088)
!2300 = !DILocation(line: 656, column: 64, scope: !2088)
!2301 = !DILocation(line: 0, scope: !293, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 656, column: 19, scope: !2088)
!2303 = !DILocation(line: 196, column: 6, scope: !293, inlinedAt: !2302)
!2304 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !2302)
!2305 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !2302)
!2306 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !2302)
!2307 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2302)
!2308 = !DILocation(line: 657, column: 51, scope: !2088)
!2309 = !DILocation(line: 657, column: 77, scope: !2088)
!2310 = !DILocation(line: 657, column: 62, scope: !2088)
!2311 = !DILocation(line: 0, scope: !293, inlinedAt: !2312)
!2312 = distinct !DILocation(line: 657, column: 19, scope: !2088)
!2313 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !2312)
!2314 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !2312)
!2315 = !DILocation(line: 196, column: 26, scope: !293, inlinedAt: !2312)
!2316 = !DILocation(line: 660, column: 19, scope: !2117)
!2317 = !DILocation(line: 0, scope: !465, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 662, column: 42, scope: !2115)
!2319 = !DILocation(line: 285, column: 20, scope: !465, inlinedAt: !2318)
!2320 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !2318)
!2321 = !DILocation(line: 0, scope: !2115)
!2322 = !DILocation(line: 0, scope: !465, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 663, column: 42, scope: !2115)
!2324 = !DILocation(line: 285, column: 10, scope: !465, inlinedAt: !2323)
!2325 = !DILocation(line: 664, column: 52, scope: !2115)
!2326 = !DILocation(line: 664, column: 67, scope: !2115)
!2327 = !DILocation(line: 664, column: 61, scope: !2115)
!2328 = !DILocation(line: 0, scope: !307, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 664, column: 23, scope: !2115)
!2330 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !2329)
!2331 = !DILocation(line: 665, column: 66, scope: !2115)
!2332 = !DILocation(line: 665, column: 60, scope: !2115)
!2333 = !DILocation(line: 0, scope: !307, inlinedAt: !2334)
!2334 = distinct !DILocation(line: 665, column: 23, scope: !2115)
!2335 = !DILocation(line: 305, column: 27, scope: !307, inlinedAt: !2334)
!2336 = !DILocation(line: 660, column: 39, scope: !2116)
!2337 = !DILocation(line: 660, column: 33, scope: !2116)
!2338 = distinct !{!2338, !2316, !2339, !358}
!2339 = !DILocation(line: 666, column: 21, scope: !2117)
!2340 = !DILocation(line: 667, column: 17, scope: !2089)
!2341 = !DILocation(line: 596, column: 39, scope: !2089)
!2342 = distinct !{!2342, !2216, !2343, !358}
!2343 = !DILocation(line: 667, column: 17, scope: !2090)
!2344 = !DILocation(line: 592, column: 17, scope: !2094)
!2345 = !DILocation(line: 671, column: 16, scope: !2094)
!2346 = !DILocation(line: 589, column: 20, scope: !2069)
!2347 = !DILocation(line: 589, column: 24, scope: !2069)
!2348 = distinct !{!2348, !2169, !2349, !358}
!2349 = !DILocation(line: 672, column: 9, scope: !2069)
!2350 = !DILocation(line: 196, column: 18, scope: !293, inlinedAt: !2199)
!2351 = !DILocation(line: 196, column: 13, scope: !293, inlinedAt: !2199)
!2352 = !DILocation(line: 196, column: 3, scope: !293, inlinedAt: !2199)
!2353 = !DILocation(line: 681, column: 29, scope: !2123)
!2354 = distinct !{!2354, !2186, !2355, !358, !2356}
!2355 = !DILocation(line: 705, column: 11, scope: !2124)
!2356 = !{!"llvm.loop.peeled.count", i32 1}
!2357 = !DILocation(line: 708, column: 11, scope: !2069)
!2358 = !DILocation(line: 711, column: 11, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !2, line: 711, column: 11)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 709, column: 9)
!2361 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 708, column: 11)
!2362 = !DILocation(line: 0, scope: !2073)
!2363 = !DILocation(line: 717, column: 1, scope: !2061)
!2364 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !128, file: !128, line: 209, type: !2365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !126}
!2367 = !DISubprogram(name: "hypot", scope: !2368, file: !2368, line: 147, type: !2369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!139, !139, !139}
!2371 = !DISubprogram(name: "gsl_coerce_double", scope: !604, file: !604, line: 52, type: !2372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!139, !310}
!2374 = !DISubprogram(name: "sqrt", scope: !2368, file: !2368, line: 143, type: !2375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!139, !139}
!2377 = !DISubprogram(name: "gsl_vector_scale", scope: !151, file: !151, line: 155, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!70, !149, !310}
!2380 = !DISubprogram(name: "frexp", scope: !2368, file: !2368, line: 98, type: !2381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!139, !139, !2383}
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!2384 = !DISubprogram(name: "ldexp", scope: !2368, file: !2368, line: 101, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!139, !139, !70}
