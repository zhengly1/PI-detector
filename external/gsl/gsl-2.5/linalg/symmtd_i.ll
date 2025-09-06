; ModuleID = 'symmtd.ll'
source_filename = "symmtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_const_view = type { %struct.gsl_vector }

@.str = private unnamed_addr constant [59 x i8] c"symmetric tridiagonal decomposition requires square matrix\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"symmtd.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [38 x i8] c"size of tau must be (matrix size - 1)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [24 x i8] c"matrix A must be square\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [31 x i8] c"size of Q must match size of A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [38 x i8] c"size of diagonal must match size of A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [46 x i8] c"size of subdiagonal must be (matrix size - 1)\00", align 1, !dbg !29

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_symmtd_decomp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !90 {
  %3 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !135, metadata !DIExpression(), metadata !159, metadata ptr %3, metadata !DIExpression()), !dbg !160
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !161
  call void @llvm.dbg.assign(metadata i1 undef, metadata !144, metadata !DIExpression(), metadata !161, metadata ptr %4, metadata !DIExpression()), !dbg !160
  %5 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !162
  call void @llvm.dbg.assign(metadata i1 undef, metadata !146, metadata !DIExpression(), metadata !162, metadata ptr %5, metadata !DIExpression()), !dbg !163
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !164
  call void @llvm.dbg.assign(metadata i1 undef, metadata !155, metadata !DIExpression(), metadata !164, metadata ptr %6, metadata !DIExpression()), !dbg !163
  %7 = alloca double, align 8, !DIAssignID !165
  call void @llvm.dbg.assign(metadata i1 undef, metadata !156, metadata !DIExpression(), metadata !165, metadata ptr %7, metadata !DIExpression()), !dbg !166
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !127, metadata !DIExpression()), !dbg !167
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !128, metadata !DIExpression()), !dbg !167
  %8 = load i64, ptr %0, align 8, !dbg !168, !tbaa !169
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !176
  %10 = load i64, ptr %9, align 8, !dbg !176, !tbaa !177
  %11 = icmp eq i64 %8, %10, !dbg !178
  br i1 %11, label %13, label %12, !dbg !179

12:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 20) #4, !dbg !180
  br label %49, !dbg !180

13:                                               ; preds = %2
  %14 = load i64, ptr %1, align 8, !dbg !183, !tbaa !184
  %15 = add i64 %14, 1, !dbg !186
  %16 = icmp eq i64 %15, %8, !dbg !187
  br i1 %16, label %17, label %24, !dbg !188

17:                                               ; preds = %13
  %18 = add i64 %8, -2
  tail call void @llvm.dbg.value(metadata i64 0, metadata !134, metadata !DIExpression()), !dbg !189
  %19 = icmp eq i64 %18, 0, !dbg !190
  br i1 %19, label %49, label %20, !dbg !191

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %22 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %23 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %25, !dbg !191

24:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 73, i32 noundef 19) #4, !dbg !192
  br label %49, !dbg !192

25:                                               ; preds = %43, %20
  %26 = phi i64 [ 0, %20 ], [ %27, %43 ]
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !134, metadata !DIExpression()), !dbg !189
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #4, !dbg !195
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %3, ptr noundef nonnull %0, i64 noundef %26) #4, !dbg !196
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #4, !dbg !197
  %27 = add nuw i64 %26, 1, !dbg !198
  %28 = sub i64 %8, %27, !dbg !199
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %3, i64 noundef %27, i64 noundef %28) #4, !dbg !200
  %29 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %4) #4, !dbg !201
  tail call void @llvm.dbg.value(metadata double %29, metadata !145, metadata !DIExpression()), !dbg !160
  %30 = fcmp une double %29, 0.000000e+00, !dbg !202
  br i1 %30, label %31, label %43, !dbg !203

31:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #4, !dbg !204
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %27, i64 noundef %27, i64 noundef %28, i64 noundef %28) #4, !dbg !205
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !206, metadata !DIExpression()), !dbg !214
  tail call void @llvm.dbg.value(metadata i64 0, metadata !213, metadata !DIExpression()), !dbg !214
  %32 = load ptr, ptr %21, align 8, !dbg !216, !tbaa !217
  %33 = load double, ptr %32, align 8, !dbg !218, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %33, metadata !154, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #4, !dbg !221
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %1, i64 noundef %26, i64 noundef %28) #4, !dbg !222
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata i64 0, metadata !228, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !229, metadata !DIExpression()), !dbg !230
  %34 = load ptr, ptr %21, align 8, !dbg !232, !tbaa !217
  store double 1.000000e+00, ptr %34, align 8, !dbg !233, !tbaa !219
  %35 = call i32 @gsl_blas_dsymv(i32 noundef 122, double noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %4, double noundef 0.000000e+00, ptr noundef nonnull %6) #4, !dbg !234
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #4, !dbg !235
  %36 = call i32 @gsl_blas_ddot(ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %7) #4, !dbg !236
  %37 = fmul double %29, -5.000000e-01, !dbg !237
  %38 = load double, ptr %7, align 8, !dbg !238, !tbaa !219
  %39 = fmul double %37, %38, !dbg !239
  tail call void @llvm.dbg.value(metadata double %39, metadata !158, metadata !DIExpression()), !dbg !166
  %40 = call i32 @gsl_blas_daxpy(double noundef %39, ptr noundef nonnull %4, ptr noundef nonnull %6) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #4, !dbg !241
  %41 = call i32 @gsl_blas_dsyr2(i32 noundef 122, double noundef -1.000000e+00, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #4, !dbg !242
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !243
  tail call void @llvm.dbg.value(metadata i64 0, metadata !228, metadata !DIExpression()), !dbg !243
  tail call void @llvm.dbg.value(metadata double %33, metadata !229, metadata !DIExpression()), !dbg !243
  %42 = load ptr, ptr %21, align 8, !dbg !245, !tbaa !217
  store double %33, ptr %42, align 8, !dbg !246, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #4, !dbg !247
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #4, !dbg !247
  br label %43, !dbg !248

43:                                               ; preds = %31, %25
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !223, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !228, metadata !DIExpression()), !dbg !249
  tail call void @llvm.dbg.value(metadata double %29, metadata !229, metadata !DIExpression()), !dbg !249
  %44 = load ptr, ptr %22, align 8, !dbg !251, !tbaa !217
  %45 = load i64, ptr %23, align 8, !dbg !252, !tbaa !253
  %46 = mul i64 %45, %26, !dbg !254
  %47 = getelementptr inbounds double, ptr %44, i64 %46, !dbg !255
  store double %29, ptr %47, align 8, !dbg !256, !tbaa !219
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #4, !dbg !257
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #4, !dbg !257
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !134, metadata !DIExpression()), !dbg !189
  %48 = icmp eq i64 %27, %18, !dbg !190
  br i1 %48, label %49, label %25, !dbg !191, !llvm.loop !258

49:                                               ; preds = %43, %24, %17, %12
  %50 = phi i32 [ 20, %12 ], [ 19, %24 ], [ 0, %17 ], [ 0, %43 ], !dbg !261
  ret i32 %50, !dbg !262
}

declare !dbg !263 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !268 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !271 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !274 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #1

declare !dbg !278 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !281 i32 @gsl_blas_dsymv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !289 i32 @gsl_blas_ddot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !292 i32 @gsl_blas_daxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !295 i32 @gsl_blas_dsyr2(i32 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_symmtd_unpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 !dbg !298 {
  %6 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !336
  call void @llvm.dbg.assign(metadata i1 undef, metadata !315, metadata !DIExpression(), metadata !336, metadata ptr %6, metadata !DIExpression()), !dbg !337
  %7 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !338
  call void @llvm.dbg.assign(metadata i1 undef, metadata !325, metadata !DIExpression(), metadata !338, metadata ptr %7, metadata !DIExpression()), !dbg !337
  %8 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !339
  call void @llvm.dbg.assign(metadata i1 undef, metadata !327, metadata !DIExpression(), metadata !339, metadata ptr %8, metadata !DIExpression()), !dbg !337
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !302, metadata !DIExpression()), !dbg !340
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !303, metadata !DIExpression()), !dbg !340
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !304, metadata !DIExpression()), !dbg !340
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !305, metadata !DIExpression()), !dbg !340
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !306, metadata !DIExpression()), !dbg !340
  %9 = load i64, ptr %0, align 8, !dbg !341, !tbaa !169
  %10 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !342
  %11 = load i64, ptr %10, align 8, !dbg !342, !tbaa !177
  %12 = icmp eq i64 %9, %11, !dbg !343
  br i1 %12, label %14, label %13, !dbg !344

13:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 20) #4, !dbg !345
  br label %182, !dbg !345

14:                                               ; preds = %5
  %15 = load i64, ptr %1, align 8, !dbg !348, !tbaa !184
  %16 = add i64 %15, 1, !dbg !349
  %17 = icmp eq i64 %16, %9, !dbg !350
  br i1 %17, label %19, label %18, !dbg !351

18:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 136, i32 noundef 19) #4, !dbg !352
  br label %182, !dbg !352

19:                                               ; preds = %14
  %20 = load i64, ptr %2, align 8, !dbg !355, !tbaa !169
  %21 = icmp eq i64 %20, %9, !dbg !356
  br i1 %21, label %22, label %26, !dbg !357

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !358
  %24 = load i64, ptr %23, align 8, !dbg !358, !tbaa !177
  %25 = icmp eq i64 %24, %9, !dbg !359
  br i1 %25, label %27, label %26, !dbg !360

26:                                               ; preds = %22, %19
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 140, i32 noundef 19) #4, !dbg !361
  br label %182, !dbg !361

27:                                               ; preds = %22
  %28 = load i64, ptr %3, align 8, !dbg !364, !tbaa !184
  %29 = icmp eq i64 %28, %9, !dbg !365
  br i1 %29, label %31, label %30, !dbg !366

30:                                               ; preds = %27
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 19) #4, !dbg !367
  br label %182, !dbg !367

31:                                               ; preds = %27
  %32 = load i64, ptr %4, align 8, !dbg !370, !tbaa !184
  %33 = add i64 %32, 1, !dbg !371
  %34 = icmp eq i64 %33, %9, !dbg !372
  br i1 %34, label %36, label %35, !dbg !373

35:                                               ; preds = %31
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 148, i32 noundef 19) #4, !dbg !374
  br label %182, !dbg !374

36:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !307, metadata !DIExpression()), !dbg !377
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %2) #4, !dbg !378
  %37 = add i64 %9, -2, !dbg !379
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !314, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !377
  %38 = icmp eq i64 %37, 0, !dbg !380
  br i1 %38, label %44, label %39, !dbg !381

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %41 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %58, !dbg !381

42:                                               ; preds = %58
  tail call void @llvm.dbg.value(metadata i64 0, metadata !314, metadata !DIExpression()), !dbg !377
  %43 = icmp eq i64 %9, 0, !dbg !382
  br i1 %43, label %87, label %44, !dbg !383

44:                                               ; preds = %42, %36
  %45 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !384
  %47 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !385
  %49 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !217
  %51 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !253
  %53 = add i64 %9, -1, !dbg !383
  %54 = and i64 %9, 3, !dbg !383
  %55 = icmp ult i64 %53, 3, !dbg !383
  br i1 %55, label %69, label %56, !dbg !383

56:                                               ; preds = %44
  %57 = and i64 %9, -4, !dbg !383
  br label %101, !dbg !383

58:                                               ; preds = %58, %39
  %59 = phi i64 [ %37, %39 ], [ %60, %58 ]
  tail call void @llvm.dbg.value(metadata i64 %59, metadata !314, metadata !DIExpression()), !dbg !377
  %60 = add i64 %59, -1, !dbg !386
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !314, metadata !DIExpression()), !dbg !377
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #4, !dbg !387
  call void @gsl_matrix_const_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %60) #4, !dbg !388
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #4, !dbg !389
  %61 = sub i64 %9, %59, !dbg !390
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %7, ptr noundef nonnull %6, i64 noundef %59, i64 noundef %61) #4, !dbg !391
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !206, metadata !DIExpression()), !dbg !392
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !213, metadata !DIExpression()), !dbg !392
  %62 = load ptr, ptr %40, align 8, !dbg !394, !tbaa !217
  %63 = load i64, ptr %41, align 8, !dbg !395, !tbaa !253
  %64 = mul i64 %63, %60, !dbg !396
  %65 = getelementptr inbounds double, ptr %62, i64 %64, !dbg !397
  %66 = load double, ptr %65, align 8, !dbg !397, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %66, metadata !326, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #4, !dbg !398
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %8, ptr noundef nonnull %2, i64 noundef %59, i64 noundef %59, i64 noundef %61, i64 noundef %61) #4, !dbg !399
  %67 = call i32 @gsl_linalg_householder_hm(double noundef %66, ptr noundef nonnull %7, ptr noundef nonnull %8) #4, !dbg !400
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #4, !dbg !401
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #4, !dbg !401
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #4, !dbg !401
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !314, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !377
  %68 = icmp eq i64 %60, 0, !dbg !380
  br i1 %68, label %42, label %58, !dbg !381, !llvm.loop !402

69:                                               ; preds = %101, %44
  %70 = phi i64 [ 0, %44 ], [ %131, %101 ]
  %71 = icmp eq i64 %54, 0, !dbg !383
  br i1 %71, label %84, label %72, !dbg !383

72:                                               ; preds = %72, %69
  %73 = phi i64 [ %81, %72 ], [ %70, %69 ]
  %74 = phi i64 [ %82, %72 ], [ 0, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !409, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !410, metadata !DIExpression()), !dbg !411
  %75 = mul i64 %48, %73, !dbg !413
  %76 = getelementptr double, ptr %46, i64 %75, !dbg !414
  %77 = getelementptr double, ptr %76, i64 %73, !dbg !414
  %78 = load double, ptr %77, align 8, !dbg !414, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %78, metadata !328, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !228, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata double %78, metadata !229, metadata !DIExpression()), !dbg !416
  %79 = mul i64 %52, %73, !dbg !418
  %80 = getelementptr inbounds double, ptr %50, i64 %79, !dbg !419
  store double %78, ptr %80, align 8, !dbg !420, !tbaa !219
  %81 = add nuw i64 %73, 1, !dbg !421
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !314, metadata !DIExpression()), !dbg !377
  %82 = add i64 %74, 1, !dbg !383
  %83 = icmp eq i64 %82, %54, !dbg !383
  br i1 %83, label %84, label %72, !dbg !383, !llvm.loop !422

84:                                               ; preds = %72, %69
  %85 = add i64 %9, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !314, metadata !DIExpression()), !dbg !377
  %86 = icmp eq i64 %85, 0, !dbg !424
  br i1 %86, label %182, label %87, !dbg !425

87:                                               ; preds = %84, %42
  %88 = phi i64 [ %85, %84 ], [ -1, %42 ]
  %89 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !384
  %91 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !385
  %93 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !217
  %95 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !253
  %97 = and i64 %88, 3, !dbg !425
  %98 = icmp ult i64 %88, 4, !dbg !425
  br i1 %98, label %167, label %99, !dbg !425

99:                                               ; preds = %87
  %100 = and i64 %88, -4, !dbg !425
  br label %134, !dbg !425

101:                                              ; preds = %101, %56
  %102 = phi i64 [ 0, %56 ], [ %131, %101 ]
  %103 = phi i64 [ 0, %56 ], [ %132, %101 ]
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !409, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !410, metadata !DIExpression()), !dbg !411
  %104 = mul i64 %48, %102, !dbg !413
  %105 = getelementptr double, ptr %46, i64 %104, !dbg !414
  %106 = getelementptr double, ptr %105, i64 %102, !dbg !414
  %107 = load double, ptr %106, align 8, !dbg !414, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %107, metadata !328, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !228, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata double %107, metadata !229, metadata !DIExpression()), !dbg !416
  %108 = mul i64 %52, %102, !dbg !418
  %109 = getelementptr inbounds double, ptr %50, i64 %108, !dbg !419
  store double %107, ptr %109, align 8, !dbg !420, !tbaa !219
  %110 = or disjoint i64 %102, 1, !dbg !421
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !409, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !410, metadata !DIExpression()), !dbg !411
  %111 = mul i64 %48, %110, !dbg !413
  %112 = getelementptr double, ptr %46, i64 %111, !dbg !414
  %113 = getelementptr double, ptr %112, i64 %110, !dbg !414
  %114 = load double, ptr %113, align 8, !dbg !414, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %114, metadata !328, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !228, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata double %114, metadata !229, metadata !DIExpression()), !dbg !416
  %115 = mul i64 %52, %110, !dbg !418
  %116 = getelementptr inbounds double, ptr %50, i64 %115, !dbg !419
  store double %114, ptr %116, align 8, !dbg !420, !tbaa !219
  %117 = or disjoint i64 %102, 2, !dbg !421
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !409, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !410, metadata !DIExpression()), !dbg !411
  %118 = mul i64 %48, %117, !dbg !413
  %119 = getelementptr double, ptr %46, i64 %118, !dbg !414
  %120 = getelementptr double, ptr %119, i64 %117, !dbg !414
  %121 = load double, ptr %120, align 8, !dbg !414, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %121, metadata !328, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !228, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata double %121, metadata !229, metadata !DIExpression()), !dbg !416
  %122 = mul i64 %52, %117, !dbg !418
  %123 = getelementptr inbounds double, ptr %50, i64 %122, !dbg !419
  store double %121, ptr %123, align 8, !dbg !420, !tbaa !219
  %124 = or disjoint i64 %102, 3, !dbg !421
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !409, metadata !DIExpression()), !dbg !411
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !410, metadata !DIExpression()), !dbg !411
  %125 = mul i64 %48, %124, !dbg !413
  %126 = getelementptr double, ptr %46, i64 %125, !dbg !414
  %127 = getelementptr double, ptr %126, i64 %124, !dbg !414
  %128 = load double, ptr %127, align 8, !dbg !414, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %128, metadata !328, metadata !DIExpression()), !dbg !415
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !223, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !228, metadata !DIExpression()), !dbg !416
  tail call void @llvm.dbg.value(metadata double %128, metadata !229, metadata !DIExpression()), !dbg !416
  %129 = mul i64 %52, %124, !dbg !418
  %130 = getelementptr inbounds double, ptr %50, i64 %129, !dbg !419
  store double %128, ptr %130, align 8, !dbg !420, !tbaa !219
  %131 = add nuw i64 %102, 4, !dbg !421
  tail call void @llvm.dbg.value(metadata i64 %131, metadata !314, metadata !DIExpression()), !dbg !377
  %132 = add i64 %103, 4, !dbg !383
  %133 = icmp eq i64 %132, %57, !dbg !383
  br i1 %133, label %69, label %101, !dbg !383, !llvm.loop !426

134:                                              ; preds = %134, %99
  %135 = phi i64 [ 0, %99 ], [ %158, %134 ]
  %136 = phi i64 [ 0, %99 ], [ %165, %134 ]
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !314, metadata !DIExpression()), !dbg !377
  %137 = or disjoint i64 %135, 1, !dbg !428
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !409, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !410, metadata !DIExpression()), !dbg !429
  %138 = mul i64 %92, %137, !dbg !431
  %139 = getelementptr double, ptr %90, i64 %138, !dbg !432
  %140 = getelementptr double, ptr %139, i64 %135, !dbg !432
  %141 = load double, ptr %140, align 8, !dbg !432, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %141, metadata !332, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %135, metadata !228, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata double %141, metadata !229, metadata !DIExpression()), !dbg !434
  %142 = mul i64 %96, %135, !dbg !436
  %143 = getelementptr inbounds double, ptr %94, i64 %142, !dbg !437
  store double %141, ptr %143, align 8, !dbg !438, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !314, metadata !DIExpression()), !dbg !377
  %144 = or disjoint i64 %135, 2, !dbg !428
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !409, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !410, metadata !DIExpression()), !dbg !429
  %145 = mul i64 %92, %144, !dbg !431
  %146 = getelementptr double, ptr %90, i64 %145, !dbg !432
  %147 = getelementptr double, ptr %146, i64 %137, !dbg !432
  %148 = load double, ptr %147, align 8, !dbg !432, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %148, metadata !332, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !228, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata double %148, metadata !229, metadata !DIExpression()), !dbg !434
  %149 = mul i64 %96, %137, !dbg !436
  %150 = getelementptr inbounds double, ptr %94, i64 %149, !dbg !437
  store double %148, ptr %150, align 8, !dbg !438, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !314, metadata !DIExpression()), !dbg !377
  %151 = or disjoint i64 %135, 3, !dbg !428
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !409, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !410, metadata !DIExpression()), !dbg !429
  %152 = mul i64 %92, %151, !dbg !431
  %153 = getelementptr double, ptr %90, i64 %152, !dbg !432
  %154 = getelementptr double, ptr %153, i64 %144, !dbg !432
  %155 = load double, ptr %154, align 8, !dbg !432, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %155, metadata !332, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !228, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata double %155, metadata !229, metadata !DIExpression()), !dbg !434
  %156 = mul i64 %96, %144, !dbg !436
  %157 = getelementptr inbounds double, ptr %94, i64 %156, !dbg !437
  store double %155, ptr %157, align 8, !dbg !438, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !314, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !314, metadata !DIExpression()), !dbg !377
  %158 = add nuw i64 %135, 4, !dbg !428
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !409, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !410, metadata !DIExpression()), !dbg !429
  %159 = mul i64 %92, %158, !dbg !431
  %160 = getelementptr double, ptr %90, i64 %159, !dbg !432
  %161 = getelementptr double, ptr %160, i64 %151, !dbg !432
  %162 = load double, ptr %161, align 8, !dbg !432, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %162, metadata !332, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %151, metadata !228, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata double %162, metadata !229, metadata !DIExpression()), !dbg !434
  %163 = mul i64 %96, %151, !dbg !436
  %164 = getelementptr inbounds double, ptr %94, i64 %163, !dbg !437
  store double %162, ptr %164, align 8, !dbg !438, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %158, metadata !314, metadata !DIExpression()), !dbg !377
  %165 = add i64 %136, 4, !dbg !425
  %166 = icmp eq i64 %165, %100, !dbg !425
  br i1 %166, label %167, label %134, !dbg !425, !llvm.loop !439

167:                                              ; preds = %134, %87
  %168 = phi i64 [ 0, %87 ], [ %158, %134 ]
  %169 = icmp eq i64 %97, 0, !dbg !425
  br i1 %169, label %182, label %170, !dbg !425

170:                                              ; preds = %170, %167
  %171 = phi i64 [ %173, %170 ], [ %168, %167 ]
  %172 = phi i64 [ %180, %170 ], [ 0, %167 ]
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !314, metadata !DIExpression()), !dbg !377
  %173 = add nuw i64 %171, 1, !dbg !428
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !409, metadata !DIExpression()), !dbg !429
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !410, metadata !DIExpression()), !dbg !429
  %174 = mul i64 %92, %173, !dbg !431
  %175 = getelementptr double, ptr %90, i64 %174, !dbg !432
  %176 = getelementptr double, ptr %175, i64 %171, !dbg !432
  %177 = load double, ptr %176, align 8, !dbg !432, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %177, metadata !332, metadata !DIExpression()), !dbg !433
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !223, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !228, metadata !DIExpression()), !dbg !434
  tail call void @llvm.dbg.value(metadata double %177, metadata !229, metadata !DIExpression()), !dbg !434
  %178 = mul i64 %96, %171, !dbg !436
  %179 = getelementptr inbounds double, ptr %94, i64 %178, !dbg !437
  store double %177, ptr %179, align 8, !dbg !438, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !314, metadata !DIExpression()), !dbg !377
  %180 = add i64 %172, 1, !dbg !425
  %181 = icmp eq i64 %180, %97, !dbg !425
  br i1 %181, label %182, label %170, !dbg !425, !llvm.loop !441

182:                                              ; preds = %170, %167, %84, %35, %30, %26, %18, %13
  %183 = phi i32 [ 20, %13 ], [ 19, %18 ], [ 19, %26 ], [ 19, %30 ], [ 19, %35 ], [ 0, %84 ], [ 0, %170 ], [ 0, %167 ], !dbg !442
  ret i32 %183, !dbg !443
}

declare !dbg !444 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #1

declare !dbg !447 void @gsl_matrix_const_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !450 void @gsl_vector_const_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !453 i32 @gsl_linalg_householder_hm(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_symmtd_unpack_T(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !456 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !460, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !461, metadata !DIExpression()), !dbg !477
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !462, metadata !DIExpression()), !dbg !477
  %4 = load i64, ptr %0, align 8, !dbg !478, !tbaa !169
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !479
  %6 = load i64, ptr %5, align 8, !dbg !479, !tbaa !177
  %7 = icmp eq i64 %4, %6, !dbg !480
  br i1 %7, label %9, label %8, !dbg !481

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 198, i32 noundef 20) #4, !dbg !482
  br label %147, !dbg !482

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !485, !tbaa !184
  %11 = icmp eq i64 %10, %4, !dbg !486
  br i1 %11, label %13, label %12, !dbg !487

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 202, i32 noundef 19) #4, !dbg !488
  br label %147, !dbg !488

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !491, !tbaa !184
  %15 = add i64 %14, 1, !dbg !492
  %16 = icmp eq i64 %15, %4, !dbg !493
  br i1 %16, label %17, label %32, !dbg !494

17:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i64 0, metadata !468, metadata !DIExpression()), !dbg !495
  %18 = icmp eq i64 %4, 0, !dbg !496
  br i1 %18, label %51, label %19, !dbg !497

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !384
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !385
  %24 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !217
  %26 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !253
  %28 = and i64 %4, 3, !dbg !497
  %29 = icmp ult i64 %4, 4, !dbg !497
  br i1 %29, label %33, label %30, !dbg !497

30:                                               ; preds = %19
  %31 = and i64 %4, -4, !dbg !497
  br label %66, !dbg !497

32:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 206, i32 noundef 19) #4, !dbg !498
  br label %147, !dbg !498

33:                                               ; preds = %66, %19
  %34 = phi i64 [ 0, %19 ], [ %96, %66 ]
  %35 = icmp eq i64 %28, 0, !dbg !497
  br i1 %35, label %48, label %36, !dbg !497

36:                                               ; preds = %36, %33
  %37 = phi i64 [ %45, %36 ], [ %34, %33 ]
  %38 = phi i64 [ %46, %36 ], [ 0, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !409, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !410, metadata !DIExpression()), !dbg !501
  %39 = mul i64 %23, %37, !dbg !503
  %40 = getelementptr double, ptr %21, i64 %39, !dbg !504
  %41 = getelementptr double, ptr %40, i64 %37, !dbg !504
  %42 = load double, ptr %41, align 8, !dbg !504, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %42, metadata !469, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !223, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !228, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata double %42, metadata !229, metadata !DIExpression()), !dbg !506
  %43 = mul i64 %27, %37, !dbg !508
  %44 = getelementptr inbounds double, ptr %25, i64 %43, !dbg !509
  store double %42, ptr %44, align 8, !dbg !510, !tbaa !219
  %45 = add nuw i64 %37, 1, !dbg !511
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !468, metadata !DIExpression()), !dbg !495
  %46 = add i64 %38, 1, !dbg !497
  %47 = icmp eq i64 %46, %28, !dbg !497
  br i1 %47, label %48, label %36, !dbg !497, !llvm.loop !512

48:                                               ; preds = %36, %33
  %49 = add i64 %4, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !468, metadata !DIExpression()), !dbg !495
  %50 = icmp eq i64 %49, 0, !dbg !513
  br i1 %50, label %147, label %51, !dbg !514

51:                                               ; preds = %48, %17
  %52 = phi i64 [ %49, %48 ], [ -1, %17 ]
  %53 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !384
  %55 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !385
  %57 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !217
  %59 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !253
  %61 = add i64 %4, -2, !dbg !514
  %62 = and i64 %52, 3, !dbg !514
  %63 = icmp ult i64 %61, 3, !dbg !514
  br i1 %63, label %132, label %64, !dbg !514

64:                                               ; preds = %51
  %65 = and i64 %52, -4, !dbg !514
  br label %99, !dbg !514

66:                                               ; preds = %66, %30
  %67 = phi i64 [ 0, %30 ], [ %96, %66 ]
  %68 = phi i64 [ 0, %30 ], [ %97, %66 ]
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !409, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !410, metadata !DIExpression()), !dbg !501
  %69 = mul i64 %23, %67, !dbg !503
  %70 = getelementptr double, ptr %21, i64 %69, !dbg !504
  %71 = getelementptr double, ptr %70, i64 %67, !dbg !504
  %72 = load double, ptr %71, align 8, !dbg !504, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %72, metadata !469, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !223, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !228, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata double %72, metadata !229, metadata !DIExpression()), !dbg !506
  %73 = mul i64 %27, %67, !dbg !508
  %74 = getelementptr inbounds double, ptr %25, i64 %73, !dbg !509
  store double %72, ptr %74, align 8, !dbg !510, !tbaa !219
  %75 = or disjoint i64 %67, 1, !dbg !511
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !409, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !410, metadata !DIExpression()), !dbg !501
  %76 = mul i64 %23, %75, !dbg !503
  %77 = getelementptr double, ptr %21, i64 %76, !dbg !504
  %78 = getelementptr double, ptr %77, i64 %75, !dbg !504
  %79 = load double, ptr %78, align 8, !dbg !504, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %79, metadata !469, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !223, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %75, metadata !228, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata double %79, metadata !229, metadata !DIExpression()), !dbg !506
  %80 = mul i64 %27, %75, !dbg !508
  %81 = getelementptr inbounds double, ptr %25, i64 %80, !dbg !509
  store double %79, ptr %81, align 8, !dbg !510, !tbaa !219
  %82 = or disjoint i64 %67, 2, !dbg !511
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !409, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !410, metadata !DIExpression()), !dbg !501
  %83 = mul i64 %23, %82, !dbg !503
  %84 = getelementptr double, ptr %21, i64 %83, !dbg !504
  %85 = getelementptr double, ptr %84, i64 %82, !dbg !504
  %86 = load double, ptr %85, align 8, !dbg !504, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %86, metadata !469, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !223, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !228, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata double %86, metadata !229, metadata !DIExpression()), !dbg !506
  %87 = mul i64 %27, %82, !dbg !508
  %88 = getelementptr inbounds double, ptr %25, i64 %87, !dbg !509
  store double %86, ptr %88, align 8, !dbg !510, !tbaa !219
  %89 = or disjoint i64 %67, 3, !dbg !511
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !409, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !410, metadata !DIExpression()), !dbg !501
  %90 = mul i64 %23, %89, !dbg !503
  %91 = getelementptr double, ptr %21, i64 %90, !dbg !504
  %92 = getelementptr double, ptr %91, i64 %89, !dbg !504
  %93 = load double, ptr %92, align 8, !dbg !504, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %93, metadata !469, metadata !DIExpression()), !dbg !505
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !223, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !228, metadata !DIExpression()), !dbg !506
  tail call void @llvm.dbg.value(metadata double %93, metadata !229, metadata !DIExpression()), !dbg !506
  %94 = mul i64 %27, %89, !dbg !508
  %95 = getelementptr inbounds double, ptr %25, i64 %94, !dbg !509
  store double %93, ptr %95, align 8, !dbg !510, !tbaa !219
  %96 = add nuw i64 %67, 4, !dbg !511
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !468, metadata !DIExpression()), !dbg !495
  %97 = add i64 %68, 4, !dbg !497
  %98 = icmp eq i64 %97, %31, !dbg !497
  br i1 %98, label %33, label %66, !dbg !497, !llvm.loop !515

99:                                               ; preds = %99, %64
  %100 = phi i64 [ 0, %64 ], [ %123, %99 ]
  %101 = phi i64 [ 0, %64 ], [ %130, %99 ]
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !468, metadata !DIExpression()), !dbg !495
  %102 = or disjoint i64 %100, 1, !dbg !517
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !409, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !410, metadata !DIExpression()), !dbg !518
  %103 = mul i64 %56, %102, !dbg !520
  %104 = getelementptr double, ptr %54, i64 %103, !dbg !521
  %105 = getelementptr double, ptr %104, i64 %100, !dbg !521
  %106 = load double, ptr %105, align 8, !dbg !521, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %106, metadata !473, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !223, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !228, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata double %106, metadata !229, metadata !DIExpression()), !dbg !523
  %107 = mul i64 %60, %100, !dbg !525
  %108 = getelementptr inbounds double, ptr %58, i64 %107, !dbg !526
  store double %106, ptr %108, align 8, !dbg !527, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !468, metadata !DIExpression()), !dbg !495
  %109 = or disjoint i64 %100, 2, !dbg !517
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !409, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !410, metadata !DIExpression()), !dbg !518
  %110 = mul i64 %56, %109, !dbg !520
  %111 = getelementptr double, ptr %54, i64 %110, !dbg !521
  %112 = getelementptr double, ptr %111, i64 %102, !dbg !521
  %113 = load double, ptr %112, align 8, !dbg !521, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %113, metadata !473, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !223, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !228, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata double %113, metadata !229, metadata !DIExpression()), !dbg !523
  %114 = mul i64 %60, %102, !dbg !525
  %115 = getelementptr inbounds double, ptr %58, i64 %114, !dbg !526
  store double %113, ptr %115, align 8, !dbg !527, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !468, metadata !DIExpression()), !dbg !495
  %116 = or disjoint i64 %100, 3, !dbg !517
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !409, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !410, metadata !DIExpression()), !dbg !518
  %117 = mul i64 %56, %116, !dbg !520
  %118 = getelementptr double, ptr %54, i64 %117, !dbg !521
  %119 = getelementptr double, ptr %118, i64 %109, !dbg !521
  %120 = load double, ptr %119, align 8, !dbg !521, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %120, metadata !473, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !223, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %109, metadata !228, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata double %120, metadata !229, metadata !DIExpression()), !dbg !523
  %121 = mul i64 %60, %109, !dbg !525
  %122 = getelementptr inbounds double, ptr %58, i64 %121, !dbg !526
  store double %120, ptr %122, align 8, !dbg !527, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !468, metadata !DIExpression()), !dbg !495
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !468, metadata !DIExpression()), !dbg !495
  %123 = add nuw i64 %100, 4, !dbg !517
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !409, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !410, metadata !DIExpression()), !dbg !518
  %124 = mul i64 %56, %123, !dbg !520
  %125 = getelementptr double, ptr %54, i64 %124, !dbg !521
  %126 = getelementptr double, ptr %125, i64 %116, !dbg !521
  %127 = load double, ptr %126, align 8, !dbg !521, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %127, metadata !473, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !223, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %116, metadata !228, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata double %127, metadata !229, metadata !DIExpression()), !dbg !523
  %128 = mul i64 %60, %116, !dbg !525
  %129 = getelementptr inbounds double, ptr %58, i64 %128, !dbg !526
  store double %127, ptr %129, align 8, !dbg !527, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !468, metadata !DIExpression()), !dbg !495
  %130 = add i64 %101, 4, !dbg !514
  %131 = icmp eq i64 %130, %65, !dbg !514
  br i1 %131, label %132, label %99, !dbg !514, !llvm.loop !528

132:                                              ; preds = %99, %51
  %133 = phi i64 [ 0, %51 ], [ %123, %99 ]
  %134 = icmp eq i64 %62, 0, !dbg !514
  br i1 %134, label %147, label %135, !dbg !514

135:                                              ; preds = %135, %132
  %136 = phi i64 [ %138, %135 ], [ %133, %132 ]
  %137 = phi i64 [ %145, %135 ], [ 0, %132 ]
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !468, metadata !DIExpression()), !dbg !495
  %138 = add nuw i64 %136, 1, !dbg !517
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !404, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !409, metadata !DIExpression()), !dbg !518
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !410, metadata !DIExpression()), !dbg !518
  %139 = mul i64 %56, %138, !dbg !520
  %140 = getelementptr double, ptr %54, i64 %139, !dbg !521
  %141 = getelementptr double, ptr %140, i64 %136, !dbg !521
  %142 = load double, ptr %141, align 8, !dbg !521, !tbaa !219
  tail call void @llvm.dbg.value(metadata double %142, metadata !473, metadata !DIExpression()), !dbg !522
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !223, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !228, metadata !DIExpression()), !dbg !523
  tail call void @llvm.dbg.value(metadata double %142, metadata !229, metadata !DIExpression()), !dbg !523
  %143 = mul i64 %60, %136, !dbg !525
  %144 = getelementptr inbounds double, ptr %58, i64 %143, !dbg !526
  store double %142, ptr %144, align 8, !dbg !527, !tbaa !219
  tail call void @llvm.dbg.value(metadata i64 %138, metadata !468, metadata !DIExpression()), !dbg !495
  %145 = add i64 %137, 1, !dbg !514
  %146 = icmp eq i64 %145, %62, !dbg !514
  br i1 %146, label %147, label %135, !dbg !514, !llvm.loop !530

147:                                              ; preds = %135, %132, %48, %32, %12, %8
  %148 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %32 ], [ 0, %48 ], [ 0, %135 ], [ 0, %132 ], !dbg !531
  ret i32 %148, !dbg !532
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "symmtd.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "15b3793832f485c3d8264e9d93f74e9b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 59)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 73, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 38)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 24)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 140, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 31)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 144, type: !14, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 148, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 46)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, globals: !81, splitDebugInlining: false, nameTableKind: None)
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
!81 = !{!0, !7, !12, !17, !22, !27, !29}
!82 = !{i32 7, !"Dwarf Version", i32 5}
!83 = !{i32 2, !"Debug Info Version", i32 3}
!84 = !{i32 1, !"wchar_size", i32 4}
!85 = !{i32 8, !"PIC Level", i32 2}
!86 = !{i32 7, !"PIE Level", i32 2}
!87 = !{i32 7, !"uwtable", i32 2}
!88 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!89 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!90 = distinct !DISubprogram(name: "gsl_linalg_symmtd_decomp", scope: !2, file: !2, line: 64, type: !91, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !126)
!91 = !DISubroutineType(types: !92)
!92 = !{!38, !93, !116}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !95, line: 50, baseType: !96)
!95 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 42, size: 384, elements: !97)
!97 = !{!98, !102, !103, !104, !107, !115}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !96, file: !95, line: 44, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 18, baseType: !101)
!100 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!101 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !96, file: !95, line: 45, baseType: !99, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !96, file: !95, line: 46, baseType: !99, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !96, file: !95, line: 47, baseType: !105, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !96, file: !95, line: 48, baseType: !108, size: 64, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !110, line: 44, baseType: !111)
!110 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !110, line: 38, size: 128, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !111, file: !110, line: 40, baseType: !99, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !111, file: !110, line: 41, baseType: !105, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !96, file: !95, line: 49, baseType: !38, size: 32, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !118, line: 50, baseType: !119)
!118 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 42, size: 320, elements: !120)
!120 = !{!121, !122, !123, !124, !125}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !119, file: !118, line: 44, baseType: !99, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !119, file: !118, line: 45, baseType: !99, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !119, file: !118, line: 46, baseType: !105, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !119, file: !118, line: 47, baseType: !108, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !119, file: !118, line: 48, baseType: !38, size: 32, offset: 256)
!126 = !{!127, !128, !129, !134, !135, !144, !145, !146, !154, !155, !156, !158}
!127 = !DILocalVariable(name: "A", arg: 1, scope: !90, file: !2, line: 64, type: !93)
!128 = !DILocalVariable(name: "tau", arg: 2, scope: !90, file: !2, line: 64, type: !116)
!129 = !DILocalVariable(name: "N", scope: !130, file: !2, line: 77, type: !133)
!130 = distinct !DILexicalBlock(scope: !131, file: !2, line: 76, column: 5)
!131 = distinct !DILexicalBlock(scope: !132, file: !2, line: 71, column: 12)
!132 = distinct !DILexicalBlock(scope: !90, file: !2, line: 66, column: 7)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!134 = !DILocalVariable(name: "i", scope: !130, file: !2, line: 78, type: !99)
!135 = !DILocalVariable(name: "c", scope: !136, file: !2, line: 82, type: !139)
!136 = distinct !DILexicalBlock(scope: !137, file: !2, line: 81, column: 9)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 80, column: 7)
!138 = distinct !DILexicalBlock(scope: !130, file: !2, line: 80, column: 7)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !118, line: 57, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !118, line: 55, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 52, size: 320, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !141, file: !118, line: 54, baseType: !117, size: 320)
!144 = !DILocalVariable(name: "v", scope: !136, file: !2, line: 83, type: !139)
!145 = !DILocalVariable(name: "tau_i", scope: !136, file: !2, line: 84, type: !106)
!146 = !DILocalVariable(name: "m", scope: !147, file: !2, line: 90, type: !149)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 89, column: 13)
!148 = distinct !DILexicalBlock(scope: !136, file: !2, line: 88, column: 15)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !95, line: 57, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !95, line: 55, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !95, line: 52, size: 384, elements: !152)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !151, file: !95, line: 54, baseType: !94, size: 384)
!154 = !DILocalVariable(name: "ei", scope: !147, file: !2, line: 92, type: !106)
!155 = !DILocalVariable(name: "x", scope: !147, file: !2, line: 93, type: !139)
!156 = !DILocalVariable(name: "xv", scope: !157, file: !2, line: 101, type: !106)
!157 = distinct !DILexicalBlock(scope: !147, file: !2, line: 100, column: 15)
!158 = !DILocalVariable(name: "alpha", scope: !157, file: !2, line: 101, type: !106)
!159 = distinct !DIAssignID()
!160 = !DILocation(line: 0, scope: !136)
!161 = distinct !DIAssignID()
!162 = distinct !DIAssignID()
!163 = !DILocation(line: 0, scope: !147)
!164 = distinct !DIAssignID()
!165 = distinct !DIAssignID()
!166 = !DILocation(line: 0, scope: !157)
!167 = !DILocation(line: 0, scope: !90)
!168 = !DILocation(line: 66, column: 10, scope: !132)
!169 = !{!170, !171, i64 0}
!170 = !{!"", !171, i64 0, !171, i64 8, !171, i64 16, !174, i64 24, !174, i64 32, !175, i64 40}
!171 = !{!"long", !172, i64 0}
!172 = !{!"omnipotent char", !173, i64 0}
!173 = !{!"Simple C/C++ TBAA"}
!174 = !{!"any pointer", !172, i64 0}
!175 = !{!"int", !172, i64 0}
!176 = !DILocation(line: 66, column: 22, scope: !132)
!177 = !{!170, !171, i64 8}
!178 = !DILocation(line: 66, column: 16, scope: !132)
!179 = !DILocation(line: 66, column: 7, scope: !90)
!180 = !DILocation(line: 68, column: 7, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 68, column: 7)
!182 = distinct !DILexicalBlock(scope: !132, file: !2, line: 67, column: 5)
!183 = !DILocation(line: 71, column: 17, scope: !131)
!184 = !{!185, !171, i64 0}
!185 = !{!"", !171, i64 0, !171, i64 8, !174, i64 16, !174, i64 24, !175, i64 32}
!186 = !DILocation(line: 71, column: 22, scope: !131)
!187 = !DILocation(line: 71, column: 26, scope: !131)
!188 = !DILocation(line: 71, column: 12, scope: !132)
!189 = !DILocation(line: 0, scope: !130)
!190 = !DILocation(line: 80, column: 22, scope: !137)
!191 = !DILocation(line: 80, column: 7, scope: !138)
!192 = !DILocation(line: 73, column: 7, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 73, column: 7)
!194 = distinct !DILexicalBlock(scope: !131, file: !2, line: 72, column: 5)
!195 = !DILocation(line: 82, column: 11, scope: !136)
!196 = !DILocation(line: 82, column: 31, scope: !136)
!197 = !DILocation(line: 83, column: 11, scope: !136)
!198 = !DILocation(line: 83, column: 66, scope: !136)
!199 = !DILocation(line: 83, column: 73, scope: !136)
!200 = !DILocation(line: 83, column: 31, scope: !136)
!201 = !DILocation(line: 84, column: 26, scope: !136)
!202 = !DILocation(line: 88, column: 21, scope: !148)
!203 = !DILocation(line: 88, column: 15, scope: !136)
!204 = !DILocation(line: 90, column: 15, scope: !147)
!205 = !DILocation(line: 90, column: 35, scope: !147)
!206 = !DILocalVariable(name: "v", arg: 1, scope: !207, file: !118, line: 175, type: !210)
!207 = distinct !DISubprogram(name: "gsl_vector_get", scope: !118, file: !118, line: 175, type: !208, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !212)
!208 = !DISubroutineType(types: !209)
!209 = !{!106, !210, !133}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!212 = !{!206, !213}
!213 = !DILocalVariable(name: "i", arg: 2, scope: !207, file: !118, line: 175, type: !133)
!214 = !DILocation(line: 0, scope: !207, inlinedAt: !215)
!215 = distinct !DILocation(line: 92, column: 27, scope: !147)
!216 = !DILocation(line: 183, column: 13, scope: !207, inlinedAt: !215)
!217 = !{!185, !174, i64 16}
!218 = !DILocation(line: 183, column: 10, scope: !207, inlinedAt: !215)
!219 = !{!220, !220, i64 0}
!220 = !{!"double", !172, i64 0}
!221 = !DILocation(line: 93, column: 15, scope: !147)
!222 = !DILocation(line: 93, column: 35, scope: !147)
!223 = !DILocalVariable(name: "v", arg: 1, scope: !224, file: !118, line: 188, type: !116)
!224 = distinct !DISubprogram(name: "gsl_vector_set", scope: !118, file: !118, line: 188, type: !225, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !116, !133, !106}
!227 = !{!223, !228, !229}
!228 = !DILocalVariable(name: "i", arg: 2, scope: !224, file: !118, line: 188, type: !133)
!229 = !DILocalVariable(name: "x", arg: 3, scope: !224, file: !118, line: 188, type: !106)
!230 = !DILocation(line: 0, scope: !224, inlinedAt: !231)
!231 = distinct !DILocation(line: 94, column: 15, scope: !147)
!232 = !DILocation(line: 196, column: 6, scope: !224, inlinedAt: !231)
!233 = !DILocation(line: 196, column: 26, scope: !224, inlinedAt: !231)
!234 = !DILocation(line: 97, column: 15, scope: !147)
!235 = !DILocation(line: 101, column: 17, scope: !157)
!236 = !DILocation(line: 102, column: 17, scope: !157)
!237 = !DILocation(line: 103, column: 25, scope: !157)
!238 = !DILocation(line: 103, column: 43, scope: !157)
!239 = !DILocation(line: 103, column: 41, scope: !157)
!240 = !DILocation(line: 104, column: 17, scope: !157)
!241 = !DILocation(line: 105, column: 15, scope: !147)
!242 = !DILocation(line: 108, column: 15, scope: !147)
!243 = !DILocation(line: 0, scope: !224, inlinedAt: !244)
!244 = distinct !DILocation(line: 110, column: 15, scope: !147)
!245 = !DILocation(line: 196, column: 6, scope: !224, inlinedAt: !244)
!246 = !DILocation(line: 196, column: 26, scope: !224, inlinedAt: !244)
!247 = !DILocation(line: 111, column: 13, scope: !148)
!248 = !DILocation(line: 111, column: 13, scope: !147)
!249 = !DILocation(line: 0, scope: !224, inlinedAt: !250)
!250 = distinct !DILocation(line: 113, column: 11, scope: !136)
!251 = !DILocation(line: 196, column: 6, scope: !224, inlinedAt: !250)
!252 = !DILocation(line: 196, column: 18, scope: !224, inlinedAt: !250)
!253 = !{!185, !171, i64 8}
!254 = !DILocation(line: 196, column: 13, scope: !224, inlinedAt: !250)
!255 = !DILocation(line: 196, column: 3, scope: !224, inlinedAt: !250)
!256 = !DILocation(line: 196, column: 26, scope: !224, inlinedAt: !250)
!257 = !DILocation(line: 114, column: 9, scope: !137)
!258 = distinct !{!258, !191, !259, !260}
!259 = !DILocation(line: 114, column: 9, scope: !138)
!260 = !{!"llvm.loop.mustprogress"}
!261 = !DILocation(line: 0, scope: !132)
!262 = !DILocation(line: 118, column: 1, scope: !90)
!263 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !266, !266, !38, !38}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!268 = !DISubprogram(name: "gsl_matrix_column", scope: !95, file: !95, line: 109, type: !269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!269 = !DISubroutineType(types: !270)
!270 = !{!140, !93, !133}
!271 = !DISubprogram(name: "gsl_vector_subvector", scope: !118, file: !118, line: 103, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!272 = !DISubroutineType(types: !273)
!273 = !{!140, !116, !99, !99}
!274 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !275, file: !275, line: 94, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!275 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!276 = !DISubroutineType(types: !277)
!277 = !{!106, !116}
!278 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !95, file: !95, line: 101, type: !279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!279 = !DISubroutineType(types: !280)
!280 = !{!150, !93, !133, !133, !133, !133}
!281 = !DISubprogram(name: "gsl_blas_dsymv", scope: !282, file: !282, line: 282, type: !283, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!282 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!283 = !DISubroutineType(types: !284)
!284 = !{!38, !285, !106, !287, !210, !106, !116}
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !286, line: 45, baseType: !75)
!286 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!289 = !DISubprogram(name: "gsl_blas_ddot", scope: !282, file: !282, line: 66, type: !290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!290 = !DISubroutineType(types: !291)
!291 = !{!38, !210, !210, !105}
!292 = !DISubprogram(name: "gsl_blas_daxpy", scope: !282, file: !282, line: 121, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!293 = !DISubroutineType(types: !294)
!294 = !{!38, !106, !210, !116}
!295 = !DISubprogram(name: "gsl_blas_dsyr2", scope: !282, file: !282, line: 298, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DISubroutineType(types: !297)
!297 = !{!38, !285, !106, !210, !210, !93}
!298 = distinct !DISubprogram(name: "gsl_linalg_symmtd_unpack", scope: !2, file: !2, line: 124, type: !299, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!38, !287, !210, !93, !116, !116}
!301 = !{!302, !303, !304, !305, !306, !307, !314, !315, !325, !326, !327, !328, !332}
!302 = !DILocalVariable(name: "A", arg: 1, scope: !298, file: !2, line: 124, type: !287)
!303 = !DILocalVariable(name: "tau", arg: 2, scope: !298, file: !2, line: 125, type: !210)
!304 = !DILocalVariable(name: "Q", arg: 3, scope: !298, file: !2, line: 126, type: !93)
!305 = !DILocalVariable(name: "diag", arg: 4, scope: !298, file: !2, line: 127, type: !116)
!306 = !DILocalVariable(name: "sdiag", arg: 5, scope: !298, file: !2, line: 128, type: !116)
!307 = !DILocalVariable(name: "N", scope: !308, file: !2, line: 152, type: !133)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 151, column: 5)
!309 = distinct !DILexicalBlock(scope: !310, file: !2, line: 146, column: 12)
!310 = distinct !DILexicalBlock(scope: !311, file: !2, line: 142, column: 12)
!311 = distinct !DILexicalBlock(scope: !312, file: !2, line: 138, column: 12)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 134, column: 12)
!313 = distinct !DILexicalBlock(scope: !298, file: !2, line: 130, column: 7)
!314 = !DILocalVariable(name: "i", scope: !308, file: !2, line: 154, type: !99)
!315 = !DILocalVariable(name: "c", scope: !316, file: !2, line: 162, type: !319)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 161, column: 9)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 160, column: 7)
!318 = distinct !DILexicalBlock(scope: !308, file: !2, line: 160, column: 7)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !118, line: 64, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !118, line: 62, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !118, line: 59, size: 320, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !322, file: !118, line: 61, baseType: !117, size: 320)
!325 = !DILocalVariable(name: "h", scope: !316, file: !2, line: 163, type: !319)
!326 = !DILocalVariable(name: "ti", scope: !316, file: !2, line: 164, type: !106)
!327 = !DILocalVariable(name: "m", scope: !316, file: !2, line: 166, type: !149)
!328 = !DILocalVariable(name: "Aii", scope: !329, file: !2, line: 175, type: !106)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 174, column: 9)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 173, column: 7)
!331 = distinct !DILexicalBlock(scope: !308, file: !2, line: 173, column: 7)
!332 = !DILocalVariable(name: "Aji", scope: !333, file: !2, line: 183, type: !106)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 182, column: 9)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 181, column: 7)
!335 = distinct !DILexicalBlock(scope: !308, file: !2, line: 181, column: 7)
!336 = distinct !DIAssignID()
!337 = !DILocation(line: 0, scope: !316)
!338 = distinct !DIAssignID()
!339 = distinct !DIAssignID()
!340 = !DILocation(line: 0, scope: !298)
!341 = !DILocation(line: 130, column: 10, scope: !313)
!342 = !DILocation(line: 130, column: 23, scope: !313)
!343 = !DILocation(line: 130, column: 16, scope: !313)
!344 = !DILocation(line: 130, column: 7, scope: !298)
!345 = !DILocation(line: 132, column: 7, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 132, column: 7)
!347 = distinct !DILexicalBlock(scope: !313, file: !2, line: 131, column: 5)
!348 = !DILocation(line: 134, column: 17, scope: !312)
!349 = !DILocation(line: 134, column: 22, scope: !312)
!350 = !DILocation(line: 134, column: 26, scope: !312)
!351 = !DILocation(line: 134, column: 12, scope: !313)
!352 = !DILocation(line: 136, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !2, line: 136, column: 7)
!354 = distinct !DILexicalBlock(scope: !312, file: !2, line: 135, column: 5)
!355 = !DILocation(line: 138, column: 15, scope: !311)
!356 = !DILocation(line: 138, column: 21, scope: !311)
!357 = !DILocation(line: 138, column: 33, scope: !311)
!358 = !DILocation(line: 138, column: 39, scope: !311)
!359 = !DILocation(line: 138, column: 45, scope: !311)
!360 = !DILocation(line: 138, column: 12, scope: !312)
!361 = !DILocation(line: 140, column: 7, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 140, column: 7)
!363 = distinct !DILexicalBlock(scope: !311, file: !2, line: 139, column: 5)
!364 = !DILocation(line: 142, column: 18, scope: !310)
!365 = !DILocation(line: 142, column: 23, scope: !310)
!366 = !DILocation(line: 142, column: 12, scope: !311)
!367 = !DILocation(line: 144, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !2, line: 144, column: 7)
!369 = distinct !DILexicalBlock(scope: !310, file: !2, line: 143, column: 5)
!370 = !DILocation(line: 146, column: 19, scope: !309)
!371 = !DILocation(line: 146, column: 24, scope: !309)
!372 = !DILocation(line: 146, column: 28, scope: !309)
!373 = !DILocation(line: 146, column: 12, scope: !310)
!374 = !DILocation(line: 148, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 148, column: 7)
!376 = distinct !DILexicalBlock(scope: !309, file: !2, line: 147, column: 5)
!377 = !DILocation(line: 0, scope: !308)
!378 = !DILocation(line: 158, column: 7, scope: !308)
!379 = !DILocation(line: 160, column: 18, scope: !318)
!380 = !DILocation(line: 160, column: 27, scope: !317)
!381 = !DILocation(line: 160, column: 7, scope: !318)
!382 = !DILocation(line: 173, column: 21, scope: !330)
!383 = !DILocation(line: 173, column: 7, scope: !331)
!384 = !{!170, !174, i64 24}
!385 = !{!170, !171, i64 16}
!386 = !DILocation(line: 160, column: 24, scope: !317)
!387 = !DILocation(line: 162, column: 11, scope: !316)
!388 = !DILocation(line: 162, column: 37, scope: !316)
!389 = !DILocation(line: 163, column: 11, scope: !316)
!390 = !DILocation(line: 163, column: 85, scope: !316)
!391 = !DILocation(line: 163, column: 37, scope: !316)
!392 = !DILocation(line: 0, scope: !207, inlinedAt: !393)
!393 = distinct !DILocation(line: 164, column: 23, scope: !316)
!394 = !DILocation(line: 183, column: 13, scope: !207, inlinedAt: !393)
!395 = !DILocation(line: 183, column: 25, scope: !207, inlinedAt: !393)
!396 = !DILocation(line: 183, column: 20, scope: !207, inlinedAt: !393)
!397 = !DILocation(line: 183, column: 10, scope: !207, inlinedAt: !393)
!398 = !DILocation(line: 166, column: 11, scope: !316)
!399 = !DILocation(line: 166, column: 31, scope: !316)
!400 = !DILocation(line: 168, column: 11, scope: !316)
!401 = !DILocation(line: 169, column: 9, scope: !317)
!402 = distinct !{!402, !381, !403, !260}
!403 = !DILocation(line: 169, column: 9, scope: !318)
!404 = !DILocalVariable(name: "m", arg: 1, scope: !405, file: !95, line: 270, type: !287)
!405 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !95, file: !95, line: 270, type: !406, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !408)
!406 = !DISubroutineType(types: !407)
!407 = !{!106, !287, !133, !133}
!408 = !{!404, !409, !410}
!409 = !DILocalVariable(name: "i", arg: 2, scope: !405, file: !95, line: 270, type: !133)
!410 = !DILocalVariable(name: "j", arg: 3, scope: !405, file: !95, line: 270, type: !133)
!411 = !DILocation(line: 0, scope: !405, inlinedAt: !412)
!412 = distinct !DILocation(line: 175, column: 24, scope: !329)
!413 = !DILocation(line: 285, column: 20, scope: !405, inlinedAt: !412)
!414 = !DILocation(line: 285, column: 10, scope: !405, inlinedAt: !412)
!415 = !DILocation(line: 0, scope: !329)
!416 = !DILocation(line: 0, scope: !224, inlinedAt: !417)
!417 = distinct !DILocation(line: 176, column: 11, scope: !329)
!418 = !DILocation(line: 196, column: 13, scope: !224, inlinedAt: !417)
!419 = !DILocation(line: 196, column: 3, scope: !224, inlinedAt: !417)
!420 = !DILocation(line: 196, column: 26, scope: !224, inlinedAt: !417)
!421 = !DILocation(line: 173, column: 27, scope: !330)
!422 = distinct !{!422, !423}
!423 = !{!"llvm.loop.unroll.disable"}
!424 = !DILocation(line: 181, column: 21, scope: !334)
!425 = !DILocation(line: 181, column: 7, scope: !335)
!426 = distinct !{!426, !383, !427, !260}
!427 = !DILocation(line: 177, column: 9, scope: !331)
!428 = !DILocation(line: 183, column: 44, scope: !333)
!429 = !DILocation(line: 0, scope: !405, inlinedAt: !430)
!430 = distinct !DILocation(line: 183, column: 24, scope: !333)
!431 = !DILocation(line: 285, column: 20, scope: !405, inlinedAt: !430)
!432 = !DILocation(line: 285, column: 10, scope: !405, inlinedAt: !430)
!433 = !DILocation(line: 0, scope: !333)
!434 = !DILocation(line: 0, scope: !224, inlinedAt: !435)
!435 = distinct !DILocation(line: 184, column: 11, scope: !333)
!436 = !DILocation(line: 196, column: 13, scope: !224, inlinedAt: !435)
!437 = !DILocation(line: 196, column: 3, scope: !224, inlinedAt: !435)
!438 = !DILocation(line: 196, column: 26, scope: !224, inlinedAt: !435)
!439 = distinct !{!439, !425, !440, !260}
!440 = !DILocation(line: 185, column: 9, scope: !335)
!441 = distinct !{!441, !423}
!442 = !DILocation(line: 0, scope: !313)
!443 = !DILocation(line: 189, column: 1, scope: !298)
!444 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !95, file: !95, line: 209, type: !445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !93}
!447 = !DISubprogram(name: "gsl_matrix_const_column", scope: !95, file: !95, line: 162, type: !448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!448 = !DISubroutineType(types: !449)
!449 = !{!321, !287, !133}
!450 = !DISubprogram(name: "gsl_vector_const_subvector", scope: !118, file: !118, line: 114, type: !451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DISubroutineType(types: !452)
!452 = !{!321, !210, !99, !99}
!453 = !DISubprogram(name: "gsl_linalg_householder_hm", scope: !275, file: !275, line: 97, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DISubroutineType(types: !455)
!455 = !{!38, !106, !210, !93}
!456 = distinct !DISubprogram(name: "gsl_linalg_symmtd_unpack_T", scope: !2, file: !2, line: 192, type: !457, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !459)
!457 = !DISubroutineType(types: !458)
!458 = !{!38, !287, !116, !116}
!459 = !{!460, !461, !462, !463, !468, !469, !473}
!460 = !DILocalVariable(name: "A", arg: 1, scope: !456, file: !2, line: 192, type: !287)
!461 = !DILocalVariable(name: "diag", arg: 2, scope: !456, file: !2, line: 193, type: !116)
!462 = !DILocalVariable(name: "sdiag", arg: 3, scope: !456, file: !2, line: 194, type: !116)
!463 = !DILocalVariable(name: "N", scope: !464, file: !2, line: 210, type: !133)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 209, column: 5)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 204, column: 12)
!466 = distinct !DILexicalBlock(scope: !467, file: !2, line: 200, column: 12)
!467 = distinct !DILexicalBlock(scope: !456, file: !2, line: 196, column: 7)
!468 = !DILocalVariable(name: "i", scope: !464, file: !2, line: 212, type: !99)
!469 = !DILocalVariable(name: "Aii", scope: !470, file: !2, line: 218, type: !106)
!470 = distinct !DILexicalBlock(scope: !471, file: !2, line: 217, column: 9)
!471 = distinct !DILexicalBlock(scope: !472, file: !2, line: 216, column: 7)
!472 = distinct !DILexicalBlock(scope: !464, file: !2, line: 216, column: 7)
!473 = !DILocalVariable(name: "Aij", scope: !474, file: !2, line: 226, type: !106)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 225, column: 9)
!475 = distinct !DILexicalBlock(scope: !476, file: !2, line: 224, column: 7)
!476 = distinct !DILexicalBlock(scope: !464, file: !2, line: 224, column: 7)
!477 = !DILocation(line: 0, scope: !456)
!478 = !DILocation(line: 196, column: 10, scope: !467)
!479 = !DILocation(line: 196, column: 23, scope: !467)
!480 = !DILocation(line: 196, column: 16, scope: !467)
!481 = !DILocation(line: 196, column: 7, scope: !456)
!482 = !DILocation(line: 198, column: 7, scope: !483)
!483 = distinct !DILexicalBlock(scope: !484, file: !2, line: 198, column: 7)
!484 = distinct !DILexicalBlock(scope: !467, file: !2, line: 197, column: 5)
!485 = !DILocation(line: 200, column: 18, scope: !466)
!486 = !DILocation(line: 200, column: 23, scope: !466)
!487 = !DILocation(line: 200, column: 12, scope: !467)
!488 = !DILocation(line: 202, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !2, line: 202, column: 7)
!490 = distinct !DILexicalBlock(scope: !466, file: !2, line: 201, column: 5)
!491 = !DILocation(line: 204, column: 19, scope: !465)
!492 = !DILocation(line: 204, column: 24, scope: !465)
!493 = !DILocation(line: 204, column: 28, scope: !465)
!494 = !DILocation(line: 204, column: 12, scope: !466)
!495 = !DILocation(line: 0, scope: !464)
!496 = !DILocation(line: 216, column: 21, scope: !471)
!497 = !DILocation(line: 216, column: 7, scope: !472)
!498 = !DILocation(line: 206, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !2, line: 206, column: 7)
!500 = distinct !DILexicalBlock(scope: !465, file: !2, line: 205, column: 5)
!501 = !DILocation(line: 0, scope: !405, inlinedAt: !502)
!502 = distinct !DILocation(line: 218, column: 24, scope: !470)
!503 = !DILocation(line: 285, column: 20, scope: !405, inlinedAt: !502)
!504 = !DILocation(line: 285, column: 10, scope: !405, inlinedAt: !502)
!505 = !DILocation(line: 0, scope: !470)
!506 = !DILocation(line: 0, scope: !224, inlinedAt: !507)
!507 = distinct !DILocation(line: 219, column: 11, scope: !470)
!508 = !DILocation(line: 196, column: 13, scope: !224, inlinedAt: !507)
!509 = !DILocation(line: 196, column: 3, scope: !224, inlinedAt: !507)
!510 = !DILocation(line: 196, column: 26, scope: !224, inlinedAt: !507)
!511 = !DILocation(line: 216, column: 27, scope: !471)
!512 = distinct !{!512, !423}
!513 = !DILocation(line: 224, column: 21, scope: !475)
!514 = !DILocation(line: 224, column: 7, scope: !476)
!515 = distinct !{!515, !497, !516, !260}
!516 = !DILocation(line: 220, column: 9, scope: !472)
!517 = !DILocation(line: 226, column: 44, scope: !474)
!518 = !DILocation(line: 0, scope: !405, inlinedAt: !519)
!519 = distinct !DILocation(line: 226, column: 24, scope: !474)
!520 = !DILocation(line: 285, column: 20, scope: !405, inlinedAt: !519)
!521 = !DILocation(line: 285, column: 10, scope: !405, inlinedAt: !519)
!522 = !DILocation(line: 0, scope: !474)
!523 = !DILocation(line: 0, scope: !224, inlinedAt: !524)
!524 = distinct !DILocation(line: 227, column: 11, scope: !474)
!525 = !DILocation(line: 196, column: 13, scope: !224, inlinedAt: !524)
!526 = !DILocation(line: 196, column: 3, scope: !224, inlinedAt: !524)
!527 = !DILocation(line: 196, column: 26, scope: !224, inlinedAt: !524)
!528 = distinct !{!528, !514, !529, !260}
!529 = !DILocation(line: 228, column: 9, scope: !476)
!530 = distinct !{!530, !423}
!531 = !DILocation(line: 0, scope: !467)
!532 = !DILocation(line: 232, column: 1, scope: !456)
