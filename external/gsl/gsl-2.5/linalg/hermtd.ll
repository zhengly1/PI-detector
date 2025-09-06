; ModuleID = 'hermtd.c'
source_filename = "hermtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_complex_view = type { %struct.gsl_vector_complex }
%struct.gsl_vector_complex = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_complex_view = type { %struct.gsl_matrix_complex }
%struct.gsl_matrix_complex = type { i64, i64, i64, ptr, ptr, i32 }
%struct.gsl_complex = type { [2 x double] }
%struct._gsl_vector_complex_const_view = type { %struct.gsl_vector_complex }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }

@.str = private unnamed_addr constant [59 x i8] c"hermitian tridiagonal decomposition requires square matrix\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"hermtd.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [38 x i8] c"size of tau must be (matrix size - 1)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [24 x i8] c"matrix A must be sqaure\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [31 x i8] c"size of U must match size of A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [38 x i8] c"size of diagonal must match size of A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [46 x i8] c"size of subdiagonal must be (matrix size - 1)\00", align 1, !dbg !29

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_hermtd_decomp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !101 {
  %3 = alloca %struct._gsl_vector_complex_view, align 8, !DIAssignID !174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !149, metadata !DIExpression(), metadata !174, metadata ptr %3, metadata !DIExpression()), !dbg !175
  %4 = alloca %struct._gsl_vector_complex_view, align 8, !DIAssignID !176
  call void @llvm.dbg.assign(metadata i1 undef, metadata !158, metadata !DIExpression(), metadata !176, metadata ptr %4, metadata !DIExpression()), !dbg !175
  %5 = alloca %struct._gsl_matrix_complex_view, align 8, !DIAssignID !177
  call void @llvm.dbg.assign(metadata i1 undef, metadata !160, metadata !DIExpression(), metadata !177, metadata ptr %5, metadata !DIExpression()), !dbg !178
  %6 = alloca %struct._gsl_vector_complex_view, align 8, !DIAssignID !179
  call void @llvm.dbg.assign(metadata i1 undef, metadata !169, metadata !DIExpression(), metadata !179, metadata ptr %6, metadata !DIExpression()), !dbg !178
  %7 = alloca %struct.gsl_complex, align 8, !DIAssignID !180
  call void @llvm.dbg.assign(metadata i1 undef, metadata !170, metadata !DIExpression(), metadata !180, metadata ptr %7, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !137, metadata !DIExpression()), !dbg !182
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !138, metadata !DIExpression()), !dbg !182
  %8 = load i64, ptr %0, align 8, !dbg !183, !tbaa !184
  %9 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 1, !dbg !191
  %10 = load i64, ptr %9, align 8, !dbg !191, !tbaa !192
  %11 = icmp eq i64 %8, %10, !dbg !193
  br i1 %11, label %13, label %12, !dbg !194

12:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 20) #5, !dbg !195
  br label %67, !dbg !195

13:                                               ; preds = %2
  %14 = load i64, ptr %1, align 8, !dbg !198, !tbaa !199
  %15 = add i64 %14, 1, !dbg !201
  %16 = icmp eq i64 %15, %8, !dbg !202
  br i1 %16, label %17, label %25, !dbg !203

17:                                               ; preds = %13
  %18 = add i64 %8, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !144, metadata !DIExpression()), !dbg !204
  %19 = icmp eq i64 %18, 0, !dbg !205
  br i1 %19, label %67, label %20, !dbg !206

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gsl_vector_complex, ptr %4, i64 0, i32 2
  %22 = getelementptr inbounds { double, double }, ptr %7, i64 0, i32 1
  %23 = getelementptr inbounds %struct.gsl_vector_complex, ptr %1, i64 0, i32 2
  %24 = getelementptr inbounds %struct.gsl_vector_complex, ptr %1, i64 0, i32 1
  br label %26, !dbg !206

25:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 19) #5, !dbg !207
  br label %67, !dbg !207

26:                                               ; preds = %20, %59
  %27 = phi i64 [ 0, %20 ], [ %28, %59 ]
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !144, metadata !DIExpression()), !dbg !204
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5, !dbg !210
  call void @gsl_matrix_complex_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_view) align 8 %3, ptr noundef nonnull %0, i64 noundef %27) #5, !dbg !211
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5, !dbg !212
  %28 = add nuw i64 %27, 1, !dbg !213
  %29 = sub i64 %8, %28, !dbg !214
  call void @gsl_vector_complex_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_view) align 8 %4, ptr noundef nonnull %3, i64 noundef %28, i64 noundef %29) #5, !dbg !215
  %30 = call { double, double } @gsl_linalg_complex_householder_transform(ptr noundef nonnull %4) #5, !dbg !216
  %31 = extractvalue { double, double } %30, 0, !dbg !216
  tail call void @llvm.dbg.value(metadata double %31, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !175
  %32 = extractvalue { double, double } %30, 1, !dbg !216
  tail call void @llvm.dbg.value(metadata double %32, metadata !159, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !175
  %33 = icmp ult i64 %28, %18, !dbg !217
  br i1 %33, label %34, label %59, !dbg !218

34:                                               ; preds = %26
  %35 = fcmp oeq double %31, 0.000000e+00, !dbg !219
  %36 = fcmp oeq double %32, 0.000000e+00
  %37 = select i1 %35, i1 %36, i1 false, !dbg !220
  br i1 %37, label %59, label %38, !dbg !220

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #5, !dbg !221
  call void @gsl_matrix_complex_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_complex_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %28, i64 noundef %28, i64 noundef %29, i64 noundef %29) #5, !dbg !222
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !231
  tail call void @llvm.dbg.value(metadata i64 0, metadata !230, metadata !DIExpression()), !dbg !231
  %39 = load ptr, ptr %21, align 8, !dbg !233, !tbaa !234
  %40 = load double, ptr %39, align 8, !dbg !235, !tbaa.struct !236
  %41 = getelementptr inbounds i8, ptr %39, i64 8, !dbg !235
  %42 = load double, ptr %41, align 8, !dbg !235, !tbaa.struct !238
  tail call void @llvm.dbg.value(metadata double %40, metadata !168, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !178
  tail call void @llvm.dbg.value(metadata double %42, metadata !168, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !178
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !239
  call void @gsl_vector_complex_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_view) align 8 %6, ptr noundef nonnull %1, i64 noundef %27, i64 noundef %29) #5, !dbg !240
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !248
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !248
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !246, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !248
  %43 = load ptr, ptr %21, align 8, !dbg !250, !tbaa !234
  store double 1.000000e+00, ptr %43, align 8, !dbg !251, !tbaa.struct !236
  %44 = getelementptr inbounds i8, ptr %43, i64 8, !dbg !251
  store double 0.000000e+00, ptr %44, align 8, !dbg !251, !tbaa.struct !238
  %45 = call i32 @gsl_blas_zhemv(i32 noundef 122, double %31, double %32, ptr noundef nonnull %5, ptr noundef nonnull %4, double 0.000000e+00, double 0.000000e+00, ptr noundef nonnull %6) #5, !dbg !252
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5, !dbg !253
  %46 = call i32 @gsl_blas_zdotc(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %7) #5, !dbg !254
  %47 = load double, ptr %7, align 8, !dbg !255
  %48 = load double, ptr %22, align 8, !dbg !255
  %49 = call { double, double } @gsl_complex_mul(double %31, double %32, double %47, double %48) #5, !dbg !255
  %50 = extractvalue { double, double } %49, 0, !dbg !255
  %51 = extractvalue { double, double } %49, 1, !dbg !255
  tail call void @llvm.dbg.value(metadata double %50, metadata !172, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !181
  tail call void @llvm.dbg.value(metadata double %51, metadata !172, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !181
  %52 = call { double, double } @gsl_complex_mul_real(double %50, double %51, double noundef -5.000000e-01) #5, !dbg !256
  %53 = extractvalue { double, double } %52, 0, !dbg !256
  %54 = extractvalue { double, double } %52, 1, !dbg !256
  tail call void @llvm.dbg.value(metadata double %53, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !181
  tail call void @llvm.dbg.value(metadata double %54, metadata !173, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !181
  %55 = call i32 @gsl_blas_zaxpy(double %53, double %54, ptr noundef nonnull %4, ptr noundef nonnull %6) #5, !dbg !257
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5, !dbg !258
  %56 = call i32 @gsl_blas_zher2(i32 noundef 122, double -1.000000e+00, double 0.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #5, !dbg !259
  tail call void @llvm.dbg.value(metadata double %40, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !260
  tail call void @llvm.dbg.value(metadata double %42, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !260
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !246, metadata !DIExpression()), !dbg !260
  tail call void @llvm.dbg.value(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !260
  %57 = load ptr, ptr %21, align 8, !dbg !262, !tbaa !234
  store double %40, ptr %57, align 8, !dbg !263, !tbaa.struct !236
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !263
  store double %42, ptr %58, align 8, !dbg !263, !tbaa.struct !238
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !264
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #5, !dbg !264
  br label %59, !dbg !265

59:                                               ; preds = %34, %38, %26
  tail call void @llvm.dbg.value(metadata double %31, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !266
  tail call void @llvm.dbg.value(metadata double %32, metadata !241, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !266
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !246, metadata !DIExpression()), !dbg !266
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !247, metadata !DIExpression()), !dbg !266
  %60 = load ptr, ptr %23, align 8, !dbg !268, !tbaa !234
  %61 = shl i64 %27, 1, !dbg !268
  %62 = load i64, ptr %24, align 8, !dbg !268, !tbaa !269
  %63 = mul i64 %61, %62, !dbg !268
  %64 = getelementptr inbounds double, ptr %60, i64 %63, !dbg !268
  store double %31, ptr %64, align 8, !dbg !270, !tbaa.struct !236
  %65 = getelementptr inbounds i8, ptr %64, i64 8, !dbg !270
  store double %32, ptr %65, align 8, !dbg !270, !tbaa.struct !238
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5, !dbg !271
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5, !dbg !271
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !144, metadata !DIExpression()), !dbg !204
  %66 = icmp eq i64 %28, %18, !dbg !205
  br i1 %66, label %67, label %26, !dbg !206, !llvm.loop !272

67:                                               ; preds = %59, %17, %12, %25
  %68 = phi i32 [ 20, %12 ], [ 19, %25 ], [ 0, %17 ], [ 0, %59 ], !dbg !275
  ret i32 %68, !dbg !276
}

declare !dbg !277 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !282 void @gsl_matrix_complex_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_complex_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !285 void @gsl_vector_complex_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_complex_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !288 { double, double } @gsl_linalg_complex_householder_transform(ptr noundef) local_unnamed_addr #1

declare !dbg !292 void @gsl_matrix_complex_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_complex_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !295 i32 @gsl_blas_zhemv(i32 noundef, double, double, ptr noundef, ptr noundef, double, double, ptr noundef) local_unnamed_addr #1

declare !dbg !303 i32 @gsl_blas_zdotc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !306 { double, double } @gsl_complex_mul(double, double, double, double) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !310 { double, double } @gsl_complex_mul_real(double, double, double noundef) local_unnamed_addr #1

declare !dbg !313 i32 @gsl_blas_zaxpy(double, double, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !316 i32 @gsl_blas_zher2(i32 noundef, double, double, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_hermtd_unpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 !dbg !319 {
  %6 = alloca %struct._gsl_vector_complex_const_view, align 8, !DIAssignID !374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !357, metadata !DIExpression(), metadata !374, metadata ptr %6, metadata !DIExpression()), !dbg !375
  %7 = alloca %struct._gsl_vector_complex_const_view, align 8, !DIAssignID !376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !364, metadata !DIExpression(), metadata !376, metadata ptr %7, metadata !DIExpression()), !dbg !375
  %8 = alloca %struct._gsl_matrix_complex_view, align 8, !DIAssignID !377
  call void @llvm.dbg.assign(metadata i1 undef, metadata !365, metadata !DIExpression(), metadata !377, metadata ptr %8, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !340, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !341, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !342, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !343, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !344, metadata !DIExpression()), !dbg !378
  %9 = load i64, ptr %0, align 8, !dbg !379, !tbaa !184
  %10 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 1, !dbg !380
  %11 = load i64, ptr %10, align 8, !dbg !380, !tbaa !192
  %12 = icmp eq i64 %9, %11, !dbg !381
  br i1 %12, label %14, label %13, !dbg !382

13:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 136, i32 noundef 20) #5, !dbg !383
  br label %148, !dbg !383

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 8, !dbg !386, !tbaa !199
  %16 = add i64 %15, 1, !dbg !387
  %17 = icmp eq i64 %16, %9, !dbg !388
  br i1 %17, label %19, label %18, !dbg !389

18:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 140, i32 noundef 19) #5, !dbg !390
  br label %148, !dbg !390

19:                                               ; preds = %14
  %20 = load i64, ptr %2, align 8, !dbg !393, !tbaa !184
  %21 = icmp eq i64 %20, %9, !dbg !394
  br i1 %21, label %22, label %26, !dbg !395

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %2, i64 0, i32 1, !dbg !396
  %24 = load i64, ptr %23, align 8, !dbg !396, !tbaa !192
  %25 = icmp eq i64 %24, %9, !dbg !397
  br i1 %25, label %27, label %26, !dbg !398

26:                                               ; preds = %19, %22
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 19) #5, !dbg !399
  br label %148, !dbg !399

27:                                               ; preds = %22
  %28 = load i64, ptr %3, align 8, !dbg !402, !tbaa !199
  %29 = icmp eq i64 %28, %9, !dbg !403
  br i1 %29, label %31, label %30, !dbg !404

30:                                               ; preds = %27
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 148, i32 noundef 19) #5, !dbg !405
  br label %148, !dbg !405

31:                                               ; preds = %27
  %32 = load i64, ptr %4, align 8, !dbg !408, !tbaa !199
  %33 = add i64 %32, 1, !dbg !409
  %34 = icmp eq i64 %33, %9, !dbg !410
  br i1 %34, label %36, label %35, !dbg !411

35:                                               ; preds = %31
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 152, i32 noundef 19) #5, !dbg !412
  br label %148, !dbg !412

36:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !345, metadata !DIExpression()), !dbg !415
  tail call void @gsl_matrix_complex_set_identity(ptr noundef nonnull %2) #5, !dbg !416
  %37 = add i64 %9, -1, !dbg !417
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !352, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !415
  %38 = icmp eq i64 %37, 0, !dbg !418
  br i1 %38, label %44, label %39, !dbg !419

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.gsl_vector_complex, ptr %1, i64 0, i32 2
  %41 = getelementptr inbounds %struct.gsl_vector_complex, ptr %1, i64 0, i32 1
  br label %58, !dbg !419

42:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata i64 0, metadata !352, metadata !DIExpression()), !dbg !415
  %43 = icmp eq i64 %9, 0, !dbg !420
  br i1 %43, label %83, label %44, !dbg !421

44:                                               ; preds = %36, %42
  %45 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !422
  %47 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !423
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !234
  %52 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !269
  %54 = and i64 %9, 1, !dbg !421
  %55 = icmp eq i64 %37, 0, !dbg !421
  br i1 %55, label %72, label %56, !dbg !421

56:                                               ; preds = %44
  %57 = and i64 %9, -2, !dbg !421
  br label %96, !dbg !421

58:                                               ; preds = %39, %58
  %59 = phi i64 [ %37, %39 ], [ %60, %58 ]
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !352, metadata !DIExpression()), !dbg !415
  %60 = add i64 %59, -1, !dbg !424
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !352, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !223, metadata !DIExpression()), !dbg !425
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !230, metadata !DIExpression()), !dbg !425
  %61 = load ptr, ptr %40, align 8, !dbg !427, !tbaa !234
  %62 = shl i64 %60, 1, !dbg !427
  %63 = load i64, ptr %41, align 8, !dbg !427, !tbaa !269
  %64 = mul i64 %62, %63, !dbg !427
  %65 = getelementptr inbounds double, ptr %61, i64 %64, !dbg !427
  %66 = load double, ptr %65, align 8, !dbg !428, !tbaa.struct !236
  %67 = getelementptr inbounds i8, ptr %65, i64 8, !dbg !428
  %68 = load double, ptr %67, align 8, !dbg !428, !tbaa.struct !238
  tail call void @llvm.dbg.value(metadata double %66, metadata !353, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !375
  tail call void @llvm.dbg.value(metadata double %68, metadata !353, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !375
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !429
  call void @gsl_matrix_complex_const_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_const_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %60) #5, !dbg !430
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5, !dbg !431
  %69 = sub i64 %9, %59, !dbg !432
  call void @gsl_vector_complex_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_complex_const_view) align 8 %7, ptr noundef nonnull %6, i64 noundef %59, i64 noundef %69) #5, !dbg !433
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #5, !dbg !434
  call void @gsl_matrix_complex_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_complex_view) align 8 %8, ptr noundef nonnull %2, i64 noundef %59, i64 noundef %59, i64 noundef %69, i64 noundef %69) #5, !dbg !435
  %70 = call i32 @gsl_linalg_complex_householder_hm(double %66, double %68, ptr noundef nonnull %7, ptr noundef nonnull %8) #5, !dbg !436
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #5, !dbg !437
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5, !dbg !437
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !437
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !352, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !415
  %71 = icmp eq i64 %60, 0, !dbg !418
  br i1 %71, label %42, label %58, !dbg !419, !llvm.loop !438

72:                                               ; preds = %96, %44
  %73 = phi i64 [ 0, %44 ], [ %112, %96 ]
  %74 = icmp eq i64 %54, 0, !dbg !421
  br i1 %74, label %82, label %75, !dbg !421

75:                                               ; preds = %72
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !352, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !445, metadata !DIExpression()), !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !446, metadata !DIExpression()), !dbg !447
  %76 = shl i64 %73, 1, !dbg !449
  %77 = mul i64 %76, %49, !dbg !450
  %78 = getelementptr inbounds double, ptr %46, i64 %77, !dbg !451
  %79 = load double, ptr %78, align 8, !dbg !452, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %79, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !453
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !454, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !459, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata double %79, metadata !460, metadata !DIExpression()), !dbg !461
  %80 = mul i64 %53, %73, !dbg !463
  %81 = getelementptr inbounds double, ptr %51, i64 %80, !dbg !464
  store double %79, ptr %81, align 8, !dbg !465, !tbaa !466
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !352, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !415
  br label %82, !dbg !468

82:                                               ; preds = %72, %75
  tail call void @llvm.dbg.value(metadata i64 0, metadata !352, metadata !DIExpression()), !dbg !415
  br i1 %38, label %148, label %83, !dbg !468

83:                                               ; preds = %42, %82
  %84 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !422
  %86 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 2
  %87 = load i64, ptr %86, align 8, !tbaa !423
  %88 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !234
  %90 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !269
  %92 = and i64 %37, 1, !dbg !468
  %93 = icmp eq i64 %9, 2, !dbg !468
  br i1 %93, label %136, label %94, !dbg !468

94:                                               ; preds = %83
  %95 = and i64 %37, -2, !dbg !468
  br label %115, !dbg !468

96:                                               ; preds = %96, %56
  %97 = phi i64 [ 0, %56 ], [ %112, %96 ]
  %98 = phi i64 [ 0, %56 ], [ %113, %96 ]
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !352, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !445, metadata !DIExpression()), !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !446, metadata !DIExpression()), !dbg !447
  %99 = shl i64 %97, 1, !dbg !449
  %100 = mul i64 %99, %49, !dbg !450
  %101 = getelementptr inbounds double, ptr %46, i64 %100, !dbg !451
  %102 = load double, ptr %101, align 8, !dbg !452, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %102, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !453
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !454, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !459, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata double %102, metadata !460, metadata !DIExpression()), !dbg !461
  %103 = mul i64 %53, %97, !dbg !463
  %104 = getelementptr inbounds double, ptr %51, i64 %103, !dbg !464
  store double %102, ptr %104, align 8, !dbg !465, !tbaa !466
  %105 = or disjoint i64 %97, 1, !dbg !469
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !352, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !352, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !445, metadata !DIExpression()), !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !446, metadata !DIExpression()), !dbg !447
  %106 = shl i64 %105, 1, !dbg !449
  %107 = mul i64 %106, %49, !dbg !450
  %108 = getelementptr inbounds double, ptr %46, i64 %107, !dbg !451
  %109 = load double, ptr %108, align 8, !dbg !452, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %109, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !453
  tail call void @llvm.dbg.value(metadata double poison, metadata !366, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !453
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !454, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !459, metadata !DIExpression()), !dbg !461
  tail call void @llvm.dbg.value(metadata double %109, metadata !460, metadata !DIExpression()), !dbg !461
  %110 = mul i64 %53, %105, !dbg !463
  %111 = getelementptr inbounds double, ptr %51, i64 %110, !dbg !464
  store double %109, ptr %111, align 8, !dbg !465, !tbaa !466
  %112 = add nuw i64 %97, 2, !dbg !469
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !352, metadata !DIExpression()), !dbg !415
  %113 = add i64 %98, 2, !dbg !421
  %114 = icmp eq i64 %113, %57, !dbg !421
  br i1 %114, label %72, label %96, !dbg !421, !llvm.loop !470

115:                                              ; preds = %115, %94
  %116 = phi i64 [ 0, %94 ], [ %126, %115 ]
  %117 = phi i64 [ 0, %94 ], [ %134, %115 ]
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !352, metadata !DIExpression()), !dbg !415
  %118 = or disjoint i64 %116, 1, !dbg !472
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !445, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !446, metadata !DIExpression()), !dbg !473
  %119 = mul i64 %87, %118, !dbg !475
  %120 = add i64 %119, %116, !dbg !476
  %121 = shl i64 %120, 1, !dbg !477
  %122 = getelementptr inbounds double, ptr %85, i64 %121, !dbg !478
  %123 = load double, ptr %122, align 8, !dbg !479, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %123, metadata !370, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !480
  tail call void @llvm.dbg.value(metadata double poison, metadata !370, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !480
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !454, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !459, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %123, metadata !460, metadata !DIExpression()), !dbg !481
  %124 = mul i64 %91, %116, !dbg !483
  %125 = getelementptr inbounds double, ptr %89, i64 %124, !dbg !484
  store double %123, ptr %125, align 8, !dbg !485, !tbaa !466
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !352, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !352, metadata !DIExpression()), !dbg !415
  %126 = add nuw i64 %116, 2, !dbg !472
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !445, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !446, metadata !DIExpression()), !dbg !473
  %127 = mul i64 %87, %126, !dbg !475
  %128 = add i64 %127, %118, !dbg !476
  %129 = shl i64 %128, 1, !dbg !477
  %130 = getelementptr inbounds double, ptr %85, i64 %129, !dbg !478
  %131 = load double, ptr %130, align 8, !dbg !479, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %131, metadata !370, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !480
  tail call void @llvm.dbg.value(metadata double poison, metadata !370, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !480
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !454, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !459, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %131, metadata !460, metadata !DIExpression()), !dbg !481
  %132 = mul i64 %91, %118, !dbg !483
  %133 = getelementptr inbounds double, ptr %89, i64 %132, !dbg !484
  store double %131, ptr %133, align 8, !dbg !485, !tbaa !466
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !352, metadata !DIExpression()), !dbg !415
  %134 = add nuw i64 %117, 2, !dbg !468
  %135 = icmp eq i64 %134, %95, !dbg !468
  br i1 %135, label %136, label %115, !dbg !468, !llvm.loop !486

136:                                              ; preds = %115, %83
  %137 = phi i64 [ 0, %83 ], [ %126, %115 ]
  %138 = icmp eq i64 %92, 0, !dbg !468
  br i1 %138, label %148, label %139, !dbg !468

139:                                              ; preds = %136
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !352, metadata !DIExpression()), !dbg !415
  %140 = add nuw i64 %137, 1, !dbg !472
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !445, metadata !DIExpression()), !dbg !473
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !446, metadata !DIExpression()), !dbg !473
  %141 = mul i64 %87, %140, !dbg !475
  %142 = add i64 %141, %137, !dbg !476
  %143 = shl i64 %142, 1, !dbg !477
  %144 = getelementptr inbounds double, ptr %85, i64 %143, !dbg !478
  %145 = load double, ptr %144, align 8, !dbg !479, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %145, metadata !370, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !480
  tail call void @llvm.dbg.value(metadata double poison, metadata !370, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !480
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !454, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !459, metadata !DIExpression()), !dbg !481
  tail call void @llvm.dbg.value(metadata double %145, metadata !460, metadata !DIExpression()), !dbg !481
  %146 = mul i64 %91, %137, !dbg !483
  %147 = getelementptr inbounds double, ptr %89, i64 %146, !dbg !484
  store double %145, ptr %147, align 8, !dbg !485, !tbaa !466
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !352, metadata !DIExpression()), !dbg !415
  br label %148, !dbg !488

148:                                              ; preds = %139, %136, %82, %13, %18, %26, %30, %35
  %149 = phi i32 [ 20, %13 ], [ 19, %18 ], [ 19, %26 ], [ 19, %30 ], [ 19, %35 ], [ 0, %82 ], [ 0, %136 ], [ 0, %139 ], !dbg !489
  ret i32 %149, !dbg !488
}

declare !dbg !490 void @gsl_matrix_complex_set_identity(ptr noundef) local_unnamed_addr #1

declare !dbg !493 void @gsl_matrix_complex_const_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_complex_const_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !496 void @gsl_vector_complex_const_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_complex_const_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !499 i32 @gsl_linalg_complex_householder_hm(double, double, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_hermtd_unpack_T(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !502 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !506, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !507, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !508, metadata !DIExpression()), !dbg !523
  %4 = load i64, ptr %0, align 8, !dbg !524, !tbaa !184
  %5 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 1, !dbg !525
  %6 = load i64, ptr %5, align 8, !dbg !525, !tbaa !192
  %7 = icmp eq i64 %4, %6, !dbg !526
  br i1 %7, label %9, label %8, !dbg !527

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 20) #5, !dbg !528
  br label %113, !dbg !528

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !531, !tbaa !199
  %11 = icmp eq i64 %10, %4, !dbg !532
  br i1 %11, label %13, label %12, !dbg !533

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 210, i32 noundef 19) #5, !dbg !534
  br label %113, !dbg !534

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !537, !tbaa !199
  %15 = add i64 %14, 1, !dbg !538
  %16 = icmp eq i64 %15, %4, !dbg !539
  br i1 %16, label %17, label %33, !dbg !540

17:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i64 0, metadata !514, metadata !DIExpression()), !dbg !541
  %18 = icmp eq i64 %4, 0, !dbg !542
  br i1 %18, label %47, label %19, !dbg !543

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !422
  %22 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !423
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !234
  %27 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !269
  %29 = and i64 %4, 1, !dbg !543
  %30 = icmp eq i64 %4, 1, !dbg !543
  br i1 %30, label %34, label %31, !dbg !543

31:                                               ; preds = %19
  %32 = and i64 %4, -2, !dbg !543
  br label %61, !dbg !543

33:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 214, i32 noundef 19) #5, !dbg !544
  br label %113, !dbg !544

34:                                               ; preds = %61, %19
  %35 = phi i64 [ 0, %19 ], [ %77, %61 ]
  %36 = icmp eq i64 %29, 0, !dbg !543
  br i1 %36, label %44, label %37, !dbg !543

37:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !514, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !445, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !446, metadata !DIExpression()), !dbg !547
  %38 = shl i64 %35, 1, !dbg !549
  %39 = mul i64 %38, %24, !dbg !550
  %40 = getelementptr inbounds double, ptr %21, i64 %39, !dbg !551
  %41 = load double, ptr %40, align 8, !dbg !552, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %41, metadata !515, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !553
  tail call void @llvm.dbg.value(metadata double poison, metadata !515, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !553
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !454, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !459, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata double %41, metadata !460, metadata !DIExpression()), !dbg !554
  %42 = mul i64 %28, %35, !dbg !556
  %43 = getelementptr inbounds double, ptr %26, i64 %42, !dbg !557
  store double %41, ptr %43, align 8, !dbg !558, !tbaa !466
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !514, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !541
  br label %44

44:                                               ; preds = %34, %37
  %45 = add i64 %4, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !514, metadata !DIExpression()), !dbg !541
  %46 = icmp eq i64 %45, 0, !dbg !559
  br i1 %46, label %113, label %47, !dbg !560

47:                                               ; preds = %17, %44
  %48 = phi i64 [ %45, %44 ], [ -1, %17 ]
  %49 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !422
  %51 = getelementptr inbounds %struct.gsl_matrix_complex, ptr %0, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !423
  %53 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !234
  %55 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !269
  %57 = and i64 %48, 1, !dbg !560
  %58 = icmp eq i64 %4, 2, !dbg !560
  br i1 %58, label %101, label %59, !dbg !560

59:                                               ; preds = %47
  %60 = and i64 %48, -2, !dbg !560
  br label %80, !dbg !560

61:                                               ; preds = %61, %31
  %62 = phi i64 [ 0, %31 ], [ %77, %61 ]
  %63 = phi i64 [ 0, %31 ], [ %78, %61 ]
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !514, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !445, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !446, metadata !DIExpression()), !dbg !547
  %64 = shl i64 %62, 1, !dbg !549
  %65 = mul i64 %64, %24, !dbg !550
  %66 = getelementptr inbounds double, ptr %21, i64 %65, !dbg !551
  %67 = load double, ptr %66, align 8, !dbg !552, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %67, metadata !515, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !553
  tail call void @llvm.dbg.value(metadata double poison, metadata !515, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !553
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !454, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !459, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata double %67, metadata !460, metadata !DIExpression()), !dbg !554
  %68 = mul i64 %28, %62, !dbg !556
  %69 = getelementptr inbounds double, ptr %26, i64 %68, !dbg !557
  store double %67, ptr %69, align 8, !dbg !558, !tbaa !466
  %70 = or disjoint i64 %62, 1, !dbg !561
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !514, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !514, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !445, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !446, metadata !DIExpression()), !dbg !547
  %71 = shl i64 %70, 1, !dbg !549
  %72 = mul i64 %71, %24, !dbg !550
  %73 = getelementptr inbounds double, ptr %21, i64 %72, !dbg !551
  %74 = load double, ptr %73, align 8, !dbg !552, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %74, metadata !515, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !553
  tail call void @llvm.dbg.value(metadata double poison, metadata !515, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !553
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !454, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !459, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata double %74, metadata !460, metadata !DIExpression()), !dbg !554
  %75 = mul i64 %28, %70, !dbg !556
  %76 = getelementptr inbounds double, ptr %26, i64 %75, !dbg !557
  store double %74, ptr %76, align 8, !dbg !558, !tbaa !466
  %77 = add nuw i64 %62, 2, !dbg !561
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !514, metadata !DIExpression()), !dbg !541
  %78 = add i64 %63, 2, !dbg !543
  %79 = icmp eq i64 %78, %32, !dbg !543
  br i1 %79, label %34, label %61, !dbg !543, !llvm.loop !562

80:                                               ; preds = %80, %59
  %81 = phi i64 [ 0, %59 ], [ %91, %80 ]
  %82 = phi i64 [ 0, %59 ], [ %99, %80 ]
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !514, metadata !DIExpression()), !dbg !541
  %83 = or disjoint i64 %81, 1, !dbg !564
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !445, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !446, metadata !DIExpression()), !dbg !565
  %84 = mul i64 %52, %83, !dbg !567
  %85 = add i64 %84, %81, !dbg !568
  %86 = shl i64 %85, 1, !dbg !569
  %87 = getelementptr inbounds double, ptr %50, i64 %86, !dbg !570
  %88 = load double, ptr %87, align 8, !dbg !571, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %88, metadata !519, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !572
  tail call void @llvm.dbg.value(metadata double poison, metadata !519, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !454, metadata !DIExpression()), !dbg !573
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !459, metadata !DIExpression()), !dbg !573
  tail call void @llvm.dbg.value(metadata double %88, metadata !460, metadata !DIExpression()), !dbg !573
  %89 = mul i64 %56, %81, !dbg !575
  %90 = getelementptr inbounds double, ptr %54, i64 %89, !dbg !576
  store double %88, ptr %90, align 8, !dbg !577, !tbaa !466
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !514, metadata !DIExpression()), !dbg !541
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !514, metadata !DIExpression()), !dbg !541
  %91 = add nuw i64 %81, 2, !dbg !564
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !445, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !446, metadata !DIExpression()), !dbg !565
  %92 = mul i64 %52, %91, !dbg !567
  %93 = add i64 %92, %83, !dbg !568
  %94 = shl i64 %93, 1, !dbg !569
  %95 = getelementptr inbounds double, ptr %50, i64 %94, !dbg !570
  %96 = load double, ptr %95, align 8, !dbg !571, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %96, metadata !519, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !572
  tail call void @llvm.dbg.value(metadata double poison, metadata !519, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !454, metadata !DIExpression()), !dbg !573
  tail call void @llvm.dbg.value(metadata i64 %83, metadata !459, metadata !DIExpression()), !dbg !573
  tail call void @llvm.dbg.value(metadata double %96, metadata !460, metadata !DIExpression()), !dbg !573
  %97 = mul i64 %56, %83, !dbg !575
  %98 = getelementptr inbounds double, ptr %54, i64 %97, !dbg !576
  store double %96, ptr %98, align 8, !dbg !577, !tbaa !466
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !514, metadata !DIExpression()), !dbg !541
  %99 = add nuw i64 %82, 2, !dbg !560
  %100 = icmp eq i64 %99, %60, !dbg !560
  br i1 %100, label %101, label %80, !dbg !560, !llvm.loop !578

101:                                              ; preds = %80, %47
  %102 = phi i64 [ 0, %47 ], [ %91, %80 ]
  %103 = icmp eq i64 %57, 0, !dbg !560
  br i1 %103, label %113, label %104, !dbg !560

104:                                              ; preds = %101
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !514, metadata !DIExpression()), !dbg !541
  %105 = add nuw i64 %102, 1, !dbg !564
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !440, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !445, metadata !DIExpression()), !dbg !565
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !446, metadata !DIExpression()), !dbg !565
  %106 = mul i64 %52, %105, !dbg !567
  %107 = add i64 %106, %102, !dbg !568
  %108 = shl i64 %107, 1, !dbg !569
  %109 = getelementptr inbounds double, ptr %50, i64 %108, !dbg !570
  %110 = load double, ptr %109, align 8, !dbg !571, !tbaa.struct !236
  tail call void @llvm.dbg.value(metadata double %110, metadata !519, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !572
  tail call void @llvm.dbg.value(metadata double poison, metadata !519, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !454, metadata !DIExpression()), !dbg !573
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !459, metadata !DIExpression()), !dbg !573
  tail call void @llvm.dbg.value(metadata double %110, metadata !460, metadata !DIExpression()), !dbg !573
  %111 = mul i64 %56, %102, !dbg !575
  %112 = getelementptr inbounds double, ptr %54, i64 %111, !dbg !576
  store double %110, ptr %112, align 8, !dbg !577, !tbaa !466
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !514, metadata !DIExpression()), !dbg !541
  br label %113, !dbg !580

113:                                              ; preds = %104, %101, %44, %8, %12, %33
  %114 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %33 ], [ 0, %44 ], [ 0, %101 ], [ 0, %104 ], !dbg !581
  ret i32 %114, !dbg !580
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "hermtd.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "0a931c035cccbb6148094d7e42b31e1d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 59)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 24)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 31)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !14, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 46)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !81, globals: !92, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36, !75}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 39, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!40 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!41 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!42 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!43 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!44 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!45 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!46 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!47 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!48 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!49 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!50 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!51 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!52 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!53 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!54 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!55 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!56 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!57 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!58 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!59 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!60 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!61 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!62 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!63 = !DIEnumerator(name: "GSL_ESING", value: 21)
!64 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!65 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!66 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!67 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!68 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!69 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!70 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!71 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!72 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!73 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!74 = !DIEnumerator(name: "GSL_EOF", value: 32)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !76, line: 48, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !{!79, !80}
!79 = !DIEnumerator(name: "CblasUpper", value: 121)
!80 = !DIEnumerator(name: "CblasLower", value: 122)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_complex", file: !84, line: 80, baseType: !85)
!84 = !DIFile(filename: "../gsl/gsl_complex.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "fa1ab7587b167751c5c7adf6bb027f7f")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 76, size: 128, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "dat", scope: !85, file: !84, line: 78, baseType: !88, size: 128)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 128, elements: !90)
!89 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!90 = !{!91}
!91 = !DISubrange(count: 2)
!92 = !{!0, !7, !12, !17, !22, !27, !29}
!93 = !{i32 7, !"Dwarf Version", i32 5}
!94 = !{i32 2, !"Debug Info Version", i32 3}
!95 = !{i32 1, !"wchar_size", i32 4}
!96 = !{i32 8, !"PIC Level", i32 2}
!97 = !{i32 7, !"PIE Level", i32 2}
!98 = !{i32 7, !"uwtable", i32 2}
!99 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!100 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!101 = distinct !DISubprogram(name: "gsl_linalg_hermtd_decomp", scope: !2, file: !2, line: 61, type: !102, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !136)
!102 = !DISubroutineType(types: !103)
!103 = !{!38, !104, !126}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_complex", file: !106, line: 50, baseType: !107)
!106 = !DIFile(filename: "../gsl/gsl_matrix_complex_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "c485e5a850396d8a68a20b26e12adce5")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 42, size: 384, elements: !108)
!108 = !{!109, !113, !114, !115, !117, !125}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !107, file: !106, line: 44, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 18, baseType: !112)
!111 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !107, file: !106, line: 45, baseType: !110, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !107, file: !106, line: 46, baseType: !110, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !107, file: !106, line: 47, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !107, file: !106, line: 48, baseType: !118, size: 64, offset: 256)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block_complex", file: !120, line: 44, baseType: !121)
!120 = !DIFile(filename: "../gsl/gsl_block_complex_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1fd1b05ef0a630a91e3e8898de6b93f8")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_complex_struct", file: !120, line: 38, size: 128, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !121, file: !120, line: 40, baseType: !110, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !121, file: !120, line: 41, baseType: !116, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !107, file: !106, line: 49, baseType: !38, size: 32, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_complex", file: !128, line: 51, baseType: !129)
!128 = !DIFile(filename: "../gsl/gsl_vector_complex_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1e0953f8884a405bde80afbe279edfff")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 44, size: 320, elements: !130)
!130 = !{!131, !132, !133, !134, !135}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !129, file: !128, line: 46, baseType: !110, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !129, file: !128, line: 47, baseType: !110, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !129, file: !128, line: 48, baseType: !116, size: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !129, file: !128, line: 49, baseType: !118, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !129, file: !128, line: 50, baseType: !38, size: 32, offset: 256)
!136 = !{!137, !138, !139, !144, !145, !147, !148, !149, !158, !159, !160, !168, !169, !170, !172, !173}
!137 = !DILocalVariable(name: "A", arg: 1, scope: !101, file: !2, line: 61, type: !104)
!138 = !DILocalVariable(name: "tau", arg: 2, scope: !101, file: !2, line: 61, type: !126)
!139 = !DILocalVariable(name: "N", scope: !140, file: !2, line: 74, type: !143)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 73, column: 5)
!141 = distinct !DILexicalBlock(scope: !142, file: !2, line: 68, column: 12)
!142 = distinct !DILexicalBlock(scope: !101, file: !2, line: 63, column: 7)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!144 = !DILocalVariable(name: "i", scope: !140, file: !2, line: 75, type: !110)
!145 = !DILocalVariable(name: "zero", scope: !140, file: !2, line: 77, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!147 = !DILocalVariable(name: "one", scope: !140, file: !2, line: 78, type: !146)
!148 = !DILocalVariable(name: "neg_one", scope: !140, file: !2, line: 79, type: !146)
!149 = !DILocalVariable(name: "c", scope: !150, file: !2, line: 83, type: !153)
!150 = distinct !DILexicalBlock(scope: !151, file: !2, line: 82, column: 9)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 81, column: 7)
!152 = distinct !DILexicalBlock(scope: !140, file: !2, line: 81, column: 7)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_complex_view", file: !128, line: 58, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_complex_view", file: !128, line: 56, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 53, size: 320, elements: !156)
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !155, file: !128, line: 55, baseType: !127, size: 320)
!158 = !DILocalVariable(name: "v", scope: !150, file: !2, line: 84, type: !153)
!159 = !DILocalVariable(name: "tau_i", scope: !150, file: !2, line: 85, type: !83)
!160 = !DILocalVariable(name: "m", scope: !161, file: !2, line: 92, type: !163)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 91, column: 13)
!162 = distinct !DILexicalBlock(scope: !150, file: !2, line: 89, column: 15)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_complex_view", file: !106, line: 57, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_complex_view", file: !106, line: 55, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !106, line: 52, size: 384, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !165, file: !106, line: 54, baseType: !105, size: 384)
!168 = !DILocalVariable(name: "ei", scope: !161, file: !2, line: 95, type: !83)
!169 = !DILocalVariable(name: "x", scope: !161, file: !2, line: 96, type: !153)
!170 = !DILocalVariable(name: "xv", scope: !171, file: !2, line: 104, type: !83)
!171 = distinct !DILexicalBlock(scope: !161, file: !2, line: 103, column: 15)
!172 = !DILocalVariable(name: "txv", scope: !171, file: !2, line: 104, type: !83)
!173 = !DILocalVariable(name: "alpha", scope: !171, file: !2, line: 104, type: !83)
!174 = distinct !DIAssignID()
!175 = !DILocation(line: 0, scope: !150)
!176 = distinct !DIAssignID()
!177 = distinct !DIAssignID()
!178 = !DILocation(line: 0, scope: !161)
!179 = distinct !DIAssignID()
!180 = distinct !DIAssignID()
!181 = !DILocation(line: 0, scope: !171)
!182 = !DILocation(line: 0, scope: !101)
!183 = !DILocation(line: 63, column: 10, scope: !142)
!184 = !{!185, !186, i64 0}
!185 = !{!"", !186, i64 0, !186, i64 8, !186, i64 16, !189, i64 24, !189, i64 32, !190, i64 40}
!186 = !{!"long", !187, i64 0}
!187 = !{!"omnipotent char", !188, i64 0}
!188 = !{!"Simple C/C++ TBAA"}
!189 = !{!"any pointer", !187, i64 0}
!190 = !{!"int", !187, i64 0}
!191 = !DILocation(line: 63, column: 22, scope: !142)
!192 = !{!185, !186, i64 8}
!193 = !DILocation(line: 63, column: 16, scope: !142)
!194 = !DILocation(line: 63, column: 7, scope: !101)
!195 = !DILocation(line: 65, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !2, line: 65, column: 7)
!197 = distinct !DILexicalBlock(scope: !142, file: !2, line: 64, column: 5)
!198 = !DILocation(line: 68, column: 17, scope: !141)
!199 = !{!200, !186, i64 0}
!200 = !{!"", !186, i64 0, !186, i64 8, !189, i64 16, !189, i64 24, !190, i64 32}
!201 = !DILocation(line: 68, column: 22, scope: !141)
!202 = !DILocation(line: 68, column: 26, scope: !141)
!203 = !DILocation(line: 68, column: 12, scope: !142)
!204 = !DILocation(line: 0, scope: !140)
!205 = !DILocation(line: 81, column: 22, scope: !151)
!206 = !DILocation(line: 81, column: 7, scope: !152)
!207 = !DILocation(line: 70, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !2, line: 70, column: 7)
!209 = distinct !DILexicalBlock(scope: !141, file: !2, line: 69, column: 5)
!210 = !DILocation(line: 83, column: 11, scope: !150)
!211 = !DILocation(line: 83, column: 39, scope: !150)
!212 = !DILocation(line: 84, column: 11, scope: !150)
!213 = !DILocation(line: 84, column: 82, scope: !150)
!214 = !DILocation(line: 84, column: 89, scope: !150)
!215 = !DILocation(line: 84, column: 39, scope: !150)
!216 = !DILocation(line: 85, column: 31, scope: !150)
!217 = !DILocation(line: 89, column: 23, scope: !162)
!218 = !DILocation(line: 90, column: 15, scope: !162)
!219 = !DILocation(line: 90, column: 36, scope: !162)
!220 = !DILocation(line: 90, column: 43, scope: !162)
!221 = !DILocation(line: 92, column: 15, scope: !161)
!222 = !DILocation(line: 93, column: 17, scope: !161)
!223 = !DILocalVariable(name: "v", arg: 1, scope: !224, file: !128, line: 191, type: !227)
!224 = distinct !DISubprogram(name: "gsl_vector_complex_get", scope: !128, file: !128, line: 191, type: !225, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !229)
!225 = !DISubroutineType(types: !226)
!226 = !{!83, !227, !143}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!229 = !{!223, !230}
!230 = !DILocalVariable(name: "i", arg: 2, scope: !224, file: !128, line: 192, type: !143)
!231 = !DILocation(line: 0, scope: !224, inlinedAt: !232)
!232 = distinct !DILocation(line: 95, column: 32, scope: !161)
!233 = !DILocation(line: 201, column: 11, scope: !224, inlinedAt: !232)
!234 = !{!200, !189, i64 16}
!235 = !DILocation(line: 201, column: 10, scope: !224, inlinedAt: !232)
!236 = !{i64 0, i64 16, !237}
!237 = !{!187, !187, i64 0}
!238 = !{i64 0, i64 8, !237}
!239 = !DILocation(line: 96, column: 15, scope: !161)
!240 = !DILocation(line: 96, column: 43, scope: !161)
!241 = !DILocalVariable(name: "z", arg: 3, scope: !242, file: !128, line: 207, type: !83)
!242 = distinct !DISubprogram(name: "gsl_vector_complex_set", scope: !128, file: !128, line: 206, type: !243, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !245)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !126, !143, !83}
!245 = !{!246, !247, !241}
!246 = !DILocalVariable(name: "v", arg: 1, scope: !242, file: !128, line: 206, type: !126)
!247 = !DILocalVariable(name: "i", arg: 2, scope: !242, file: !128, line: 207, type: !143)
!248 = !DILocation(line: 0, scope: !242, inlinedAt: !249)
!249 = distinct !DILocation(line: 97, column: 15, scope: !161)
!250 = !DILocation(line: 215, column: 4, scope: !242, inlinedAt: !249)
!251 = !DILocation(line: 215, column: 28, scope: !242, inlinedAt: !249)
!252 = !DILocation(line: 100, column: 15, scope: !161)
!253 = !DILocation(line: 104, column: 17, scope: !171)
!254 = !DILocation(line: 105, column: 17, scope: !171)
!255 = !DILocation(line: 106, column: 23, scope: !171)
!256 = !DILocation(line: 107, column: 25, scope: !171)
!257 = !DILocation(line: 108, column: 17, scope: !171)
!258 = !DILocation(line: 109, column: 15, scope: !161)
!259 = !DILocation(line: 112, column: 15, scope: !161)
!260 = !DILocation(line: 0, scope: !242, inlinedAt: !261)
!261 = distinct !DILocation(line: 114, column: 15, scope: !161)
!262 = !DILocation(line: 215, column: 4, scope: !242, inlinedAt: !261)
!263 = !DILocation(line: 215, column: 28, scope: !242, inlinedAt: !261)
!264 = !DILocation(line: 115, column: 13, scope: !162)
!265 = !DILocation(line: 115, column: 13, scope: !161)
!266 = !DILocation(line: 0, scope: !242, inlinedAt: !267)
!267 = distinct !DILocation(line: 117, column: 11, scope: !150)
!268 = !DILocation(line: 215, column: 4, scope: !242, inlinedAt: !267)
!269 = !{!200, !186, i64 8}
!270 = !DILocation(line: 215, column: 28, scope: !242, inlinedAt: !267)
!271 = !DILocation(line: 118, column: 9, scope: !151)
!272 = distinct !{!272, !206, !273, !274}
!273 = !DILocation(line: 118, column: 9, scope: !152)
!274 = !{!"llvm.loop.mustprogress"}
!275 = !DILocation(line: 0, scope: !142)
!276 = !DILocation(line: 122, column: 1, scope: !101)
!277 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !280, !280, !38, !38}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!282 = !DISubprogram(name: "gsl_matrix_complex_column", scope: !106, file: !106, line: 106, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!283 = !DISubroutineType(types: !284)
!284 = !{!154, !104, !143}
!285 = !DISubprogram(name: "gsl_vector_complex_subvector", scope: !128, file: !128, line: 107, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubroutineType(types: !287)
!287 = !{!154, !126, !110, !110}
!288 = !DISubprogram(name: "gsl_linalg_complex_householder_transform", scope: !289, file: !289, line: 95, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!289 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!290 = !DISubroutineType(types: !291)
!291 = !{!83, !126}
!292 = !DISubprogram(name: "gsl_matrix_complex_submatrix", scope: !106, file: !106, line: 98, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{!164, !104, !143, !143, !143, !143}
!295 = !DISubprogram(name: "gsl_blas_zhemv", scope: !296, file: !296, line: 336, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!297 = !DISubroutineType(types: !298)
!298 = !{!38, !299, !146, !301, !227, !146, !126}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !300, line: 45, baseType: !75)
!300 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!303 = !DISubprogram(name: "gsl_blas_zdotc", scope: !296, file: !296, line: 84, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = !DISubroutineType(types: !305)
!305 = !{!38, !227, !227, !82}
!306 = !DISubprogram(name: "gsl_complex_mul", scope: !307, file: !307, line: 68, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!307 = !DIFile(filename: "../gsl/gsl_complex_math.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3bebe2d988d25a9edadbea9b4bb7ae01")
!308 = !DISubroutineType(types: !309)
!309 = !{!83, !83, !83}
!310 = !DISubprogram(name: "gsl_complex_mul_real", scope: !307, file: !307, line: 73, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{!83, !83, !89}
!313 = !DISubprogram(name: "gsl_blas_zaxpy", scope: !296, file: !296, line: 141, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubroutineType(types: !315)
!315 = !{!38, !146, !227, !126}
!316 = !DISubprogram(name: "gsl_blas_zher2", scope: !296, file: !296, line: 358, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!317 = !DISubroutineType(types: !318)
!318 = !{!38, !299, !146, !227, !227, !104}
!319 = distinct !DISubprogram(name: "gsl_linalg_hermtd_unpack", scope: !2, file: !2, line: 128, type: !320, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !339)
!320 = !DISubroutineType(types: !321)
!321 = !{!38, !301, !227, !104, !322, !322}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !324, line: 50, baseType: !325)
!324 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 42, size: 320, elements: !326)
!326 = !{!327, !328, !329, !330, !338}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !325, file: !324, line: 44, baseType: !110, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !325, file: !324, line: 45, baseType: !110, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !325, file: !324, line: 46, baseType: !116, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !325, file: !324, line: 47, baseType: !331, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !333, line: 44, baseType: !334)
!333 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !333, line: 38, size: 128, elements: !335)
!335 = !{!336, !337}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !334, file: !333, line: 40, baseType: !110, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !334, file: !333, line: 41, baseType: !116, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !325, file: !324, line: 48, baseType: !38, size: 32, offset: 256)
!339 = !{!340, !341, !342, !343, !344, !345, !352, !353, !357, !364, !365, !366, !370}
!340 = !DILocalVariable(name: "A", arg: 1, scope: !319, file: !2, line: 128, type: !301)
!341 = !DILocalVariable(name: "tau", arg: 2, scope: !319, file: !2, line: 129, type: !227)
!342 = !DILocalVariable(name: "U", arg: 3, scope: !319, file: !2, line: 130, type: !104)
!343 = !DILocalVariable(name: "diag", arg: 4, scope: !319, file: !2, line: 131, type: !322)
!344 = !DILocalVariable(name: "sdiag", arg: 5, scope: !319, file: !2, line: 132, type: !322)
!345 = !DILocalVariable(name: "N", scope: !346, file: !2, line: 156, type: !143)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 155, column: 5)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 150, column: 12)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 146, column: 12)
!349 = distinct !DILexicalBlock(scope: !350, file: !2, line: 142, column: 12)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 138, column: 12)
!351 = distinct !DILexicalBlock(scope: !319, file: !2, line: 134, column: 7)
!352 = !DILocalVariable(name: "i", scope: !346, file: !2, line: 158, type: !110)
!353 = !DILocalVariable(name: "ti", scope: !354, file: !2, line: 166, type: !83)
!354 = distinct !DILexicalBlock(scope: !355, file: !2, line: 165, column: 9)
!355 = distinct !DILexicalBlock(scope: !356, file: !2, line: 164, column: 7)
!356 = distinct !DILexicalBlock(scope: !346, file: !2, line: 164, column: 7)
!357 = !DILocalVariable(name: "c", scope: !354, file: !2, line: 168, type: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_complex_const_view", file: !128, line: 65, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_complex_const_view", file: !128, line: 63, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !128, line: 60, size: 320, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !361, file: !128, line: 62, baseType: !127, size: 320)
!364 = !DILocalVariable(name: "h", scope: !354, file: !2, line: 170, type: !358)
!365 = !DILocalVariable(name: "m", scope: !354, file: !2, line: 173, type: !163)
!366 = !DILocalVariable(name: "Aii", scope: !367, file: !2, line: 183, type: !83)
!367 = distinct !DILexicalBlock(scope: !368, file: !2, line: 182, column: 9)
!368 = distinct !DILexicalBlock(scope: !369, file: !2, line: 181, column: 7)
!369 = distinct !DILexicalBlock(scope: !346, file: !2, line: 181, column: 7)
!370 = !DILocalVariable(name: "Aji", scope: !371, file: !2, line: 191, type: !83)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 190, column: 9)
!372 = distinct !DILexicalBlock(scope: !373, file: !2, line: 189, column: 7)
!373 = distinct !DILexicalBlock(scope: !346, file: !2, line: 189, column: 7)
!374 = distinct !DIAssignID()
!375 = !DILocation(line: 0, scope: !354)
!376 = distinct !DIAssignID()
!377 = distinct !DIAssignID()
!378 = !DILocation(line: 0, scope: !319)
!379 = !DILocation(line: 134, column: 10, scope: !351)
!380 = !DILocation(line: 134, column: 23, scope: !351)
!381 = !DILocation(line: 134, column: 16, scope: !351)
!382 = !DILocation(line: 134, column: 7, scope: !319)
!383 = !DILocation(line: 136, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !2, line: 136, column: 7)
!385 = distinct !DILexicalBlock(scope: !351, file: !2, line: 135, column: 5)
!386 = !DILocation(line: 138, column: 17, scope: !350)
!387 = !DILocation(line: 138, column: 22, scope: !350)
!388 = !DILocation(line: 138, column: 26, scope: !350)
!389 = !DILocation(line: 138, column: 12, scope: !351)
!390 = !DILocation(line: 140, column: 7, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 140, column: 7)
!392 = distinct !DILexicalBlock(scope: !350, file: !2, line: 139, column: 5)
!393 = !DILocation(line: 142, column: 15, scope: !349)
!394 = !DILocation(line: 142, column: 21, scope: !349)
!395 = !DILocation(line: 142, column: 33, scope: !349)
!396 = !DILocation(line: 142, column: 39, scope: !349)
!397 = !DILocation(line: 142, column: 45, scope: !349)
!398 = !DILocation(line: 142, column: 12, scope: !350)
!399 = !DILocation(line: 144, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !2, line: 144, column: 7)
!401 = distinct !DILexicalBlock(scope: !349, file: !2, line: 143, column: 5)
!402 = !DILocation(line: 146, column: 18, scope: !348)
!403 = !DILocation(line: 146, column: 23, scope: !348)
!404 = !DILocation(line: 146, column: 12, scope: !349)
!405 = !DILocation(line: 148, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !2, line: 148, column: 7)
!407 = distinct !DILexicalBlock(scope: !348, file: !2, line: 147, column: 5)
!408 = !DILocation(line: 150, column: 19, scope: !347)
!409 = !DILocation(line: 150, column: 24, scope: !347)
!410 = !DILocation(line: 150, column: 28, scope: !347)
!411 = !DILocation(line: 150, column: 12, scope: !348)
!412 = !DILocation(line: 152, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 152, column: 7)
!414 = distinct !DILexicalBlock(scope: !347, file: !2, line: 151, column: 5)
!415 = !DILocation(line: 0, scope: !346)
!416 = !DILocation(line: 162, column: 7, scope: !346)
!417 = !DILocation(line: 164, column: 18, scope: !356)
!418 = !DILocation(line: 164, column: 27, scope: !355)
!419 = !DILocation(line: 164, column: 7, scope: !356)
!420 = !DILocation(line: 181, column: 21, scope: !368)
!421 = !DILocation(line: 181, column: 7, scope: !369)
!422 = !{!185, !189, i64 24}
!423 = !{!185, !186, i64 16}
!424 = !DILocation(line: 164, column: 24, scope: !355)
!425 = !DILocation(line: 0, scope: !224, inlinedAt: !426)
!426 = distinct !DILocation(line: 166, column: 28, scope: !354)
!427 = !DILocation(line: 201, column: 11, scope: !224, inlinedAt: !426)
!428 = !DILocation(line: 201, column: 10, scope: !224, inlinedAt: !426)
!429 = !DILocation(line: 168, column: 11, scope: !354)
!430 = !DILocation(line: 168, column: 45, scope: !354)
!431 = !DILocation(line: 170, column: 11, scope: !354)
!432 = !DILocation(line: 171, column: 69, scope: !354)
!433 = !DILocation(line: 171, column: 13, scope: !354)
!434 = !DILocation(line: 173, column: 11, scope: !354)
!435 = !DILocation(line: 174, column: 13, scope: !354)
!436 = !DILocation(line: 176, column: 11, scope: !354)
!437 = !DILocation(line: 177, column: 9, scope: !355)
!438 = distinct !{!438, !419, !439, !274}
!439 = !DILocation(line: 177, column: 9, scope: !356)
!440 = !DILocalVariable(name: "m", arg: 1, scope: !441, file: !106, line: 265, type: !301)
!441 = distinct !DISubprogram(name: "gsl_matrix_complex_get", scope: !106, file: !106, line: 265, type: !442, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!83, !301, !143, !143}
!444 = !{!440, !445, !446}
!445 = !DILocalVariable(name: "i", arg: 2, scope: !441, file: !106, line: 266, type: !143)
!446 = !DILocalVariable(name: "j", arg: 3, scope: !441, file: !106, line: 266, type: !143)
!447 = !DILocation(line: 0, scope: !441, inlinedAt: !448)
!448 = distinct !DILocation(line: 183, column: 29, scope: !367)
!449 = !DILocation(line: 283, column: 51, scope: !441, inlinedAt: !448)
!450 = !DILocation(line: 283, column: 38, scope: !441, inlinedAt: !448)
!451 = !DILocation(line: 283, column: 35, scope: !441, inlinedAt: !448)
!452 = !DILocation(line: 283, column: 10, scope: !441, inlinedAt: !448)
!453 = !DILocation(line: 0, scope: !367)
!454 = !DILocalVariable(name: "v", arg: 1, scope: !455, file: !324, line: 188, type: !322)
!455 = distinct !DISubprogram(name: "gsl_vector_set", scope: !324, file: !324, line: 188, type: !456, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !322, !143, !89}
!458 = !{!454, !459, !460}
!459 = !DILocalVariable(name: "i", arg: 2, scope: !455, file: !324, line: 188, type: !143)
!460 = !DILocalVariable(name: "x", arg: 3, scope: !455, file: !324, line: 188, type: !89)
!461 = !DILocation(line: 0, scope: !455, inlinedAt: !462)
!462 = distinct !DILocation(line: 184, column: 11, scope: !367)
!463 = !DILocation(line: 196, column: 13, scope: !455, inlinedAt: !462)
!464 = !DILocation(line: 196, column: 3, scope: !455, inlinedAt: !462)
!465 = !DILocation(line: 196, column: 26, scope: !455, inlinedAt: !462)
!466 = !{!467, !467, i64 0}
!467 = !{!"double", !187, i64 0}
!468 = !DILocation(line: 189, column: 7, scope: !373)
!469 = !DILocation(line: 181, column: 27, scope: !368)
!470 = distinct !{!470, !421, !471, !274}
!471 = !DILocation(line: 185, column: 9, scope: !369)
!472 = !DILocation(line: 191, column: 57, scope: !371)
!473 = !DILocation(line: 0, scope: !441, inlinedAt: !474)
!474 = distinct !DILocation(line: 191, column: 29, scope: !371)
!475 = !DILocation(line: 283, column: 42, scope: !441, inlinedAt: !474)
!476 = !DILocation(line: 283, column: 51, scope: !441, inlinedAt: !474)
!477 = !DILocation(line: 283, column: 38, scope: !441, inlinedAt: !474)
!478 = !DILocation(line: 283, column: 35, scope: !441, inlinedAt: !474)
!479 = !DILocation(line: 283, column: 10, scope: !441, inlinedAt: !474)
!480 = !DILocation(line: 0, scope: !371)
!481 = !DILocation(line: 0, scope: !455, inlinedAt: !482)
!482 = distinct !DILocation(line: 192, column: 11, scope: !371)
!483 = !DILocation(line: 196, column: 13, scope: !455, inlinedAt: !482)
!484 = !DILocation(line: 196, column: 3, scope: !455, inlinedAt: !482)
!485 = !DILocation(line: 196, column: 26, scope: !455, inlinedAt: !482)
!486 = distinct !{!486, !468, !487, !274}
!487 = !DILocation(line: 193, column: 9, scope: !373)
!488 = !DILocation(line: 197, column: 1, scope: !319)
!489 = !DILocation(line: 0, scope: !351)
!490 = !DISubprogram(name: "gsl_matrix_complex_set_identity", scope: !106, file: !106, line: 209, type: !491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !104}
!493 = !DISubprogram(name: "gsl_matrix_complex_const_column", scope: !106, file: !106, line: 160, type: !494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!494 = !DISubroutineType(types: !495)
!495 = !{!360, !301, !143}
!496 = !DISubprogram(name: "gsl_vector_complex_const_subvector", scope: !128, file: !128, line: 119, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!497 = !DISubroutineType(types: !498)
!498 = !{!360, !227, !110, !110}
!499 = !DISubprogram(name: "gsl_linalg_complex_householder_hm", scope: !289, file: !289, line: 112, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!500 = !DISubroutineType(types: !501)
!501 = !{!38, !83, !227, !104}
!502 = distinct !DISubprogram(name: "gsl_linalg_hermtd_unpack_T", scope: !2, file: !2, line: 200, type: !503, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!38, !301, !322, !322}
!505 = !{!506, !507, !508, !509, !514, !515, !519}
!506 = !DILocalVariable(name: "A", arg: 1, scope: !502, file: !2, line: 200, type: !301)
!507 = !DILocalVariable(name: "diag", arg: 2, scope: !502, file: !2, line: 201, type: !322)
!508 = !DILocalVariable(name: "sdiag", arg: 3, scope: !502, file: !2, line: 202, type: !322)
!509 = !DILocalVariable(name: "N", scope: !510, file: !2, line: 218, type: !143)
!510 = distinct !DILexicalBlock(scope: !511, file: !2, line: 217, column: 5)
!511 = distinct !DILexicalBlock(scope: !512, file: !2, line: 212, column: 12)
!512 = distinct !DILexicalBlock(scope: !513, file: !2, line: 208, column: 12)
!513 = distinct !DILexicalBlock(scope: !502, file: !2, line: 204, column: 7)
!514 = !DILocalVariable(name: "i", scope: !510, file: !2, line: 220, type: !110)
!515 = !DILocalVariable(name: "Aii", scope: !516, file: !2, line: 226, type: !83)
!516 = distinct !DILexicalBlock(scope: !517, file: !2, line: 225, column: 9)
!517 = distinct !DILexicalBlock(scope: !518, file: !2, line: 224, column: 7)
!518 = distinct !DILexicalBlock(scope: !510, file: !2, line: 224, column: 7)
!519 = !DILocalVariable(name: "Aji", scope: !520, file: !2, line: 234, type: !83)
!520 = distinct !DILexicalBlock(scope: !521, file: !2, line: 233, column: 9)
!521 = distinct !DILexicalBlock(scope: !522, file: !2, line: 232, column: 7)
!522 = distinct !DILexicalBlock(scope: !510, file: !2, line: 232, column: 7)
!523 = !DILocation(line: 0, scope: !502)
!524 = !DILocation(line: 204, column: 10, scope: !513)
!525 = !DILocation(line: 204, column: 23, scope: !513)
!526 = !DILocation(line: 204, column: 16, scope: !513)
!527 = !DILocation(line: 204, column: 7, scope: !502)
!528 = !DILocation(line: 206, column: 7, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 206, column: 7)
!530 = distinct !DILexicalBlock(scope: !513, file: !2, line: 205, column: 5)
!531 = !DILocation(line: 208, column: 18, scope: !512)
!532 = !DILocation(line: 208, column: 23, scope: !512)
!533 = !DILocation(line: 208, column: 12, scope: !513)
!534 = !DILocation(line: 210, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !2, line: 210, column: 7)
!536 = distinct !DILexicalBlock(scope: !512, file: !2, line: 209, column: 5)
!537 = !DILocation(line: 212, column: 19, scope: !511)
!538 = !DILocation(line: 212, column: 24, scope: !511)
!539 = !DILocation(line: 212, column: 28, scope: !511)
!540 = !DILocation(line: 212, column: 12, scope: !512)
!541 = !DILocation(line: 0, scope: !510)
!542 = !DILocation(line: 224, column: 21, scope: !517)
!543 = !DILocation(line: 224, column: 7, scope: !518)
!544 = !DILocation(line: 214, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !2, line: 214, column: 7)
!546 = distinct !DILexicalBlock(scope: !511, file: !2, line: 213, column: 5)
!547 = !DILocation(line: 0, scope: !441, inlinedAt: !548)
!548 = distinct !DILocation(line: 226, column: 29, scope: !516)
!549 = !DILocation(line: 283, column: 51, scope: !441, inlinedAt: !548)
!550 = !DILocation(line: 283, column: 38, scope: !441, inlinedAt: !548)
!551 = !DILocation(line: 283, column: 35, scope: !441, inlinedAt: !548)
!552 = !DILocation(line: 283, column: 10, scope: !441, inlinedAt: !548)
!553 = !DILocation(line: 0, scope: !516)
!554 = !DILocation(line: 0, scope: !455, inlinedAt: !555)
!555 = distinct !DILocation(line: 227, column: 11, scope: !516)
!556 = !DILocation(line: 196, column: 13, scope: !455, inlinedAt: !555)
!557 = !DILocation(line: 196, column: 3, scope: !455, inlinedAt: !555)
!558 = !DILocation(line: 196, column: 26, scope: !455, inlinedAt: !555)
!559 = !DILocation(line: 232, column: 21, scope: !521)
!560 = !DILocation(line: 232, column: 7, scope: !522)
!561 = !DILocation(line: 224, column: 27, scope: !517)
!562 = distinct !{!562, !543, !563, !274}
!563 = !DILocation(line: 228, column: 9, scope: !518)
!564 = !DILocation(line: 234, column: 57, scope: !520)
!565 = !DILocation(line: 0, scope: !441, inlinedAt: !566)
!566 = distinct !DILocation(line: 234, column: 29, scope: !520)
!567 = !DILocation(line: 283, column: 42, scope: !441, inlinedAt: !566)
!568 = !DILocation(line: 283, column: 51, scope: !441, inlinedAt: !566)
!569 = !DILocation(line: 283, column: 38, scope: !441, inlinedAt: !566)
!570 = !DILocation(line: 283, column: 35, scope: !441, inlinedAt: !566)
!571 = !DILocation(line: 283, column: 10, scope: !441, inlinedAt: !566)
!572 = !DILocation(line: 0, scope: !520)
!573 = !DILocation(line: 0, scope: !455, inlinedAt: !574)
!574 = distinct !DILocation(line: 235, column: 11, scope: !520)
!575 = !DILocation(line: 196, column: 13, scope: !455, inlinedAt: !574)
!576 = !DILocation(line: 196, column: 3, scope: !455, inlinedAt: !574)
!577 = !DILocation(line: 196, column: 26, scope: !455, inlinedAt: !574)
!578 = distinct !{!578, !560, !579, !274}
!579 = !DILocation(line: 236, column: 9, scope: !522)
!580 = !DILocation(line: 240, column: 1, scope: !502)
!581 = !DILocation(line: 0, scope: !513)
