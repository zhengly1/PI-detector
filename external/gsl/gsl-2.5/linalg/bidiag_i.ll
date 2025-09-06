; ModuleID = 'bidiag.ll'
source_filename = "bidiag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_const_view = type { %struct.gsl_vector }

@.str = private unnamed_addr constant [39 x i8] c"bidiagonal decomposition requires M>=N\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [9 x i8] c"bidiag.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [24 x i8] c"size of tau_U must be N\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [30 x i8] c"size of tau_V must be (N - 1)\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [26 x i8] c"matrix A must have M >= N\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [29 x i8] c"size of tau must be MIN(M,N)\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [33 x i8] c"size of tau must be MIN(M,N) - 1\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [24 x i8] c"size of U must be M x N\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"size of V must be N x N\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [38 x i8] c"size of diagonal must match size of A\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [48 x i8] c"size of subdiagonal must be (diagonal size - 1)\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [46 x i8] c"size of subdiagonal must be (matrix size - 1)\00", align 1, !dbg !51

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_bidiag_decomp(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !106 {
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !182
  call void @llvm.dbg.assign(metadata i1 undef, metadata !154, metadata !DIExpression(), metadata !182, metadata ptr %4, metadata !DIExpression()), !dbg !183
  %5 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !184
  call void @llvm.dbg.assign(metadata i1 undef, metadata !164, metadata !DIExpression(), metadata !184, metadata ptr %5, metadata !DIExpression()), !dbg !183
  %6 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !185
  call void @llvm.dbg.assign(metadata i1 undef, metadata !166, metadata !DIExpression(), metadata !185, metadata ptr %6, metadata !DIExpression()), !dbg !186
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !187
  call void @llvm.dbg.assign(metadata i1 undef, metadata !174, metadata !DIExpression(), metadata !187, metadata ptr %7, metadata !DIExpression()), !dbg !188
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !189
  call void @llvm.dbg.assign(metadata i1 undef, metadata !177, metadata !DIExpression(), metadata !189, metadata ptr %8, metadata !DIExpression()), !dbg !188
  %9 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !190
  call void @llvm.dbg.assign(metadata i1 undef, metadata !179, metadata !DIExpression(), metadata !190, metadata ptr %9, metadata !DIExpression()), !dbg !191
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !143, metadata !DIExpression()), !dbg !192
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !144, metadata !DIExpression()), !dbg !192
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !145, metadata !DIExpression()), !dbg !192
  %10 = load i64, ptr %0, align 8, !dbg !193, !tbaa !194
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !201
  %12 = load i64, ptr %11, align 8, !dbg !201, !tbaa !202
  %13 = icmp ult i64 %10, %12, !dbg !203
  br i1 %13, label %14, label %15, !dbg !204

14:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 79, i32 noundef 19) #4, !dbg !205
  br label %58, !dbg !205

15:                                               ; preds = %3
  %16 = load i64, ptr %1, align 8, !dbg !208, !tbaa !209
  %17 = icmp eq i64 %16, %12, !dbg !211
  br i1 %17, label %19, label %18, !dbg !212

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 83, i32 noundef 19) #4, !dbg !213
  br label %58, !dbg !213

19:                                               ; preds = %15
  %20 = load i64, ptr %2, align 8, !dbg !216, !tbaa !209
  %21 = add i64 %20, 1, !dbg !217
  %22 = icmp eq i64 %21, %12, !dbg !218
  br i1 %22, label %23, label %30, !dbg !219

23:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 0, metadata !153, metadata !DIExpression()), !dbg !220
  %24 = icmp eq i64 %12, 0, !dbg !221
  br i1 %24, label %58, label %25, !dbg !222

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %27 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %28 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %29 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  br label %31, !dbg !222

30:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 87, i32 noundef 19) #4, !dbg !223
  br label %58, !dbg !223

31:                                               ; preds = %56, %25
  %32 = phi i64 [ 0, %25 ], [ %35, %56 ]
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !153, metadata !DIExpression()), !dbg !220
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #4, !dbg !226
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %32) #4, !dbg !227
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #4, !dbg !228
  %33 = sub i64 %10, %32, !dbg !229
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %32, i64 noundef %33) #4, !dbg !230
  %34 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %5) #4, !dbg !231
  tail call void @llvm.dbg.value(metadata double %34, metadata !165, metadata !DIExpression()), !dbg !183
  %35 = add nuw i64 %32, 1, !dbg !232
  %36 = icmp ult i64 %35, %12, !dbg !233
  br i1 %36, label %37, label %51, !dbg !234

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #4, !dbg !235
  %38 = sub i64 %12, %35, !dbg !236
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %32, i64 noundef %35, i64 noundef %33, i64 noundef %38) #4, !dbg !237
  %39 = call i32 @gsl_linalg_householder_hm(double noundef %34, ptr noundef nonnull %5, ptr noundef nonnull %6) #4, !dbg !238
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #4, !dbg !239
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !245, metadata !DIExpression()), !dbg !247
  tail call void @llvm.dbg.value(metadata double %34, metadata !246, metadata !DIExpression()), !dbg !247
  %40 = load ptr, ptr %26, align 8, !dbg !249, !tbaa !250
  %41 = load i64, ptr %27, align 8, !dbg !251, !tbaa !252
  %42 = mul i64 %41, %32, !dbg !253
  %43 = getelementptr inbounds double, ptr %40, i64 %42, !dbg !254
  store double %34, ptr %43, align 8, !dbg !255, !tbaa !256
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #4, !dbg !258
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #4, !dbg !258
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #4, !dbg !259
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %32) #4, !dbg !260
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #4, !dbg !261
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %7, i64 noundef %35, i64 noundef %38) #4, !dbg !262
  %44 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %8) #4, !dbg !263
  tail call void @llvm.dbg.value(metadata double %44, metadata !178, metadata !DIExpression()), !dbg !188
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #4, !dbg !264
  %45 = sub i64 %10, %35, !dbg !265
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef %35, i64 noundef %35, i64 noundef %45, i64 noundef %38) #4, !dbg !266
  %46 = call i32 @gsl_linalg_householder_mh(double noundef %44, ptr noundef nonnull %8, ptr noundef nonnull %9) #4, !dbg !267
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #4, !dbg !268
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !269
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !245, metadata !DIExpression()), !dbg !269
  tail call void @llvm.dbg.value(metadata double %44, metadata !246, metadata !DIExpression()), !dbg !269
  %47 = load ptr, ptr %28, align 8, !dbg !271, !tbaa !250
  %48 = load i64, ptr %29, align 8, !dbg !272, !tbaa !252
  %49 = mul i64 %48, %32, !dbg !273
  %50 = getelementptr inbounds double, ptr %47, i64 %49, !dbg !274
  store double %44, ptr %50, align 8, !dbg !275, !tbaa !256
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #4, !dbg !276
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #4, !dbg !276
  br label %56, !dbg !277

51:                                               ; preds = %31
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !278
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !245, metadata !DIExpression()), !dbg !278
  tail call void @llvm.dbg.value(metadata double %34, metadata !246, metadata !DIExpression()), !dbg !278
  %52 = load ptr, ptr %26, align 8, !dbg !280, !tbaa !250
  %53 = load i64, ptr %27, align 8, !dbg !281, !tbaa !252
  %54 = mul i64 %53, %32, !dbg !282
  %55 = getelementptr inbounds double, ptr %52, i64 %54, !dbg !283
  store double %34, ptr %55, align 8, !dbg !284, !tbaa !256
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #4, !dbg !258
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #4, !dbg !258
  br label %56, !dbg !285

56:                                               ; preds = %51, %37
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !153, metadata !DIExpression()), !dbg !220
  %57 = icmp eq i64 %35, %12, !dbg !221
  br i1 %57, label %58, label %31, !dbg !222, !llvm.loop !286

58:                                               ; preds = %56, %30, %23, %18, %14
  %59 = phi i32 [ 19, %14 ], [ 19, %18 ], [ 19, %30 ], [ 0, %23 ], [ 0, %56 ], !dbg !192
  ret i32 %59, !dbg !289
}

declare !dbg !290 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !295 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !298 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !301 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #1

declare !dbg !305 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !308 i32 @gsl_linalg_householder_hm(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !313 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !314 i32 @gsl_linalg_householder_mh(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_bidiag_unpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) local_unnamed_addr #0 !dbg !315 {
  %8 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !369
  call void @llvm.dbg.assign(metadata i1 undef, metadata !349, metadata !DIExpression(), metadata !369, metadata ptr %8, metadata !DIExpression()), !dbg !370
  %9 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !371
  call void @llvm.dbg.assign(metadata i1 undef, metadata !359, metadata !DIExpression(), metadata !371, metadata ptr %9, metadata !DIExpression()), !dbg !370
  %10 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !372
  call void @llvm.dbg.assign(metadata i1 undef, metadata !361, metadata !DIExpression(), metadata !372, metadata ptr %10, metadata !DIExpression()), !dbg !370
  %11 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !373
  call void @llvm.dbg.assign(metadata i1 undef, metadata !362, metadata !DIExpression(), metadata !373, metadata ptr %11, metadata !DIExpression()), !dbg !374
  %12 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !375
  call void @llvm.dbg.assign(metadata i1 undef, metadata !366, metadata !DIExpression(), metadata !375, metadata ptr %12, metadata !DIExpression()), !dbg !374
  %13 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !368, metadata !DIExpression(), metadata !376, metadata ptr %13, metadata !DIExpression()), !dbg !374
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !321, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !322, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !323, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !324, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !325, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !326, metadata !DIExpression()), !dbg !377
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !327, metadata !DIExpression()), !dbg !377
  %14 = load i64, ptr %0, align 8, !dbg !378, !tbaa !194
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !328, metadata !DIExpression()), !dbg !377
  %15 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !379
  %16 = load i64, ptr %15, align 8, !dbg !379, !tbaa !202
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !329, metadata !DIExpression()), !dbg !377
  %17 = icmp ult i64 %14, %16, !dbg !380
  %18 = tail call i64 @llvm.umin.i64(i64 %14, i64 %16), !dbg !380
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !330, metadata !DIExpression()), !dbg !377
  br i1 %17, label %19, label %20, !dbg !381

19:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 161, i32 noundef 19) #4, !dbg !382
  br label %214, !dbg !382

20:                                               ; preds = %7
  %21 = load i64, ptr %1, align 8, !dbg !385, !tbaa !209
  %22 = icmp eq i64 %21, %18, !dbg !386
  br i1 %22, label %24, label %23, !dbg !387

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 19) #4, !dbg !388
  br label %214, !dbg !388

24:                                               ; preds = %20
  %25 = load i64, ptr %3, align 8, !dbg !391, !tbaa !209
  %26 = add i64 %25, 1, !dbg !392
  %27 = icmp eq i64 %26, %18, !dbg !393
  br i1 %27, label %29, label %28, !dbg !394

28:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 19) #4, !dbg !395
  br label %214, !dbg !395

29:                                               ; preds = %24
  %30 = load i64, ptr %2, align 8, !dbg !398, !tbaa !194
  %31 = icmp eq i64 %30, %14, !dbg !399
  br i1 %31, label %32, label %36, !dbg !400

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !401
  %34 = load i64, ptr %33, align 8, !dbg !401, !tbaa !202
  %35 = icmp eq i64 %34, %16, !dbg !402
  br i1 %35, label %37, label %36, !dbg !403

36:                                               ; preds = %32, %29
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 173, i32 noundef 19) #4, !dbg !404
  br label %214, !dbg !404

37:                                               ; preds = %32
  %38 = load i64, ptr %4, align 8, !dbg !407, !tbaa !194
  %39 = icmp eq i64 %38, %16, !dbg !408
  br i1 %39, label %40, label %44, !dbg !409

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.gsl_matrix, ptr %4, i64 0, i32 1, !dbg !410
  %42 = load i64, ptr %41, align 8, !dbg !410, !tbaa !202
  %43 = icmp eq i64 %42, %16, !dbg !411
  br i1 %43, label %45, label %44, !dbg !412

44:                                               ; preds = %40, %37
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 177, i32 noundef 19) #4, !dbg !413
  br label %214, !dbg !413

45:                                               ; preds = %40
  %46 = load i64, ptr %5, align 8, !dbg !416, !tbaa !209
  %47 = icmp eq i64 %46, %18, !dbg !417
  br i1 %47, label %49, label %48, !dbg !418

48:                                               ; preds = %45
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 181, i32 noundef 19) #4, !dbg !419
  br label %214, !dbg !419

49:                                               ; preds = %45
  %50 = load i64, ptr %6, align 8, !dbg !422, !tbaa !209
  %51 = add i64 %50, 1, !dbg !423
  %52 = icmp eq i64 %51, %18, !dbg !424
  br i1 %52, label %53, label %68, !dbg !425

53:                                               ; preds = %49
  tail call void @llvm.dbg.value(metadata i64 0, metadata !331, metadata !DIExpression()), !dbg !426
  %54 = icmp eq i64 %16, 0, !dbg !427
  br i1 %54, label %88, label %55, !dbg !428

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !429
  %58 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !430
  %60 = getelementptr inbounds %struct.gsl_vector, ptr %5, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !250
  %62 = getelementptr inbounds %struct.gsl_vector, ptr %5, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !252
  %64 = and i64 %16, 3, !dbg !428
  %65 = icmp ult i64 %16, 4, !dbg !428
  br i1 %65, label %69, label %66, !dbg !428

66:                                               ; preds = %55
  %67 = and i64 %16, -4, !dbg !428
  br label %103, !dbg !428

68:                                               ; preds = %49
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 185, i32 noundef 19) #4, !dbg !431
  br label %214, !dbg !431

69:                                               ; preds = %103, %55
  %70 = phi i64 [ 0, %55 ], [ %133, %103 ]
  %71 = icmp eq i64 %64, 0, !dbg !428
  br i1 %71, label %84, label %72, !dbg !428

72:                                               ; preds = %72, %69
  %73 = phi i64 [ %81, %72 ], [ %70, %69 ]
  %74 = phi i64 [ %82, %72 ], [ 0, %69 ]
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !439, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !440, metadata !DIExpression()), !dbg !441
  %75 = mul i64 %59, %73, !dbg !443
  %76 = getelementptr double, ptr %57, i64 %75, !dbg !444
  %77 = getelementptr double, ptr %76, i64 %73, !dbg !444
  %78 = load double, ptr %77, align 8, !dbg !444, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %78, metadata !341, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !240, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !245, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata double %78, metadata !246, metadata !DIExpression()), !dbg !446
  %79 = mul i64 %63, %73, !dbg !448
  %80 = getelementptr inbounds double, ptr %61, i64 %79, !dbg !449
  store double %78, ptr %80, align 8, !dbg !450, !tbaa !256
  %81 = add nuw i64 %73, 1, !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !331, metadata !DIExpression()), !dbg !426
  %82 = add i64 %74, 1, !dbg !428
  %83 = icmp eq i64 %82, %64, !dbg !428
  br i1 %83, label %84, label %72, !dbg !428, !llvm.loop !452

84:                                               ; preds = %72, %69
  %85 = add i64 %16, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !331, metadata !DIExpression()), !dbg !426
  %86 = icmp eq i64 %85, 0, !dbg !454
  br i1 %86, label %87, label %88, !dbg !455

87:                                               ; preds = %84
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %4) #4, !dbg !456
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !331, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !426
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %2) #4, !dbg !457
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !340, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !426
  br label %199, !dbg !458

88:                                               ; preds = %84, %53
  %89 = phi i64 [ %85, %84 ], [ -1, %53 ]
  %90 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !429
  %92 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %93 = load i64, ptr %92, align 8, !tbaa !430
  %94 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !250
  %96 = getelementptr inbounds %struct.gsl_vector, ptr %6, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !252
  %98 = add i64 %16, -2, !dbg !455
  %99 = and i64 %89, 3, !dbg !455
  %100 = icmp ult i64 %98, 3, !dbg !455
  br i1 %100, label %169, label %101, !dbg !455

101:                                              ; preds = %88
  %102 = and i64 %89, -4, !dbg !455
  br label %136, !dbg !455

103:                                              ; preds = %103, %66
  %104 = phi i64 [ 0, %66 ], [ %133, %103 ]
  %105 = phi i64 [ 0, %66 ], [ %134, %103 ]
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !439, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !440, metadata !DIExpression()), !dbg !441
  %106 = mul i64 %59, %104, !dbg !443
  %107 = getelementptr double, ptr %57, i64 %106, !dbg !444
  %108 = getelementptr double, ptr %107, i64 %104, !dbg !444
  %109 = load double, ptr %108, align 8, !dbg !444, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %109, metadata !341, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !240, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !245, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata double %109, metadata !246, metadata !DIExpression()), !dbg !446
  %110 = mul i64 %63, %104, !dbg !448
  %111 = getelementptr inbounds double, ptr %61, i64 %110, !dbg !449
  store double %109, ptr %111, align 8, !dbg !450, !tbaa !256
  %112 = or disjoint i64 %104, 1, !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !439, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !440, metadata !DIExpression()), !dbg !441
  %113 = mul i64 %59, %112, !dbg !443
  %114 = getelementptr double, ptr %57, i64 %113, !dbg !444
  %115 = getelementptr double, ptr %114, i64 %112, !dbg !444
  %116 = load double, ptr %115, align 8, !dbg !444, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %116, metadata !341, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !240, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata i64 %112, metadata !245, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata double %116, metadata !246, metadata !DIExpression()), !dbg !446
  %117 = mul i64 %63, %112, !dbg !448
  %118 = getelementptr inbounds double, ptr %61, i64 %117, !dbg !449
  store double %116, ptr %118, align 8, !dbg !450, !tbaa !256
  %119 = or disjoint i64 %104, 2, !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !439, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !440, metadata !DIExpression()), !dbg !441
  %120 = mul i64 %59, %119, !dbg !443
  %121 = getelementptr double, ptr %57, i64 %120, !dbg !444
  %122 = getelementptr double, ptr %121, i64 %119, !dbg !444
  %123 = load double, ptr %122, align 8, !dbg !444, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %123, metadata !341, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !240, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata i64 %119, metadata !245, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata double %123, metadata !246, metadata !DIExpression()), !dbg !446
  %124 = mul i64 %63, %119, !dbg !448
  %125 = getelementptr inbounds double, ptr %61, i64 %124, !dbg !449
  store double %123, ptr %125, align 8, !dbg !450, !tbaa !256
  %126 = or disjoint i64 %104, 3, !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !439, metadata !DIExpression()), !dbg !441
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !440, metadata !DIExpression()), !dbg !441
  %127 = mul i64 %59, %126, !dbg !443
  %128 = getelementptr double, ptr %57, i64 %127, !dbg !444
  %129 = getelementptr double, ptr %128, i64 %126, !dbg !444
  %130 = load double, ptr %129, align 8, !dbg !444, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %130, metadata !341, metadata !DIExpression()), !dbg !445
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !240, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata i64 %126, metadata !245, metadata !DIExpression()), !dbg !446
  tail call void @llvm.dbg.value(metadata double %130, metadata !246, metadata !DIExpression()), !dbg !446
  %131 = mul i64 %63, %126, !dbg !448
  %132 = getelementptr inbounds double, ptr %61, i64 %131, !dbg !449
  store double %130, ptr %132, align 8, !dbg !450, !tbaa !256
  %133 = add nuw i64 %104, 4, !dbg !451
  tail call void @llvm.dbg.value(metadata i64 %133, metadata !331, metadata !DIExpression()), !dbg !426
  %134 = add i64 %105, 4, !dbg !428
  %135 = icmp eq i64 %134, %67, !dbg !428
  br i1 %135, label %69, label %103, !dbg !428, !llvm.loop !459

136:                                              ; preds = %136, %101
  %137 = phi i64 [ 0, %101 ], [ %160, %136 ]
  %138 = phi i64 [ 0, %101 ], [ %167, %136 ]
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !331, metadata !DIExpression()), !dbg !426
  %139 = or disjoint i64 %137, 1, !dbg !461
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !439, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !440, metadata !DIExpression()), !dbg !462
  %140 = mul i64 %93, %137, !dbg !464
  %141 = getelementptr double, ptr %91, i64 %140, !dbg !465
  %142 = getelementptr double, ptr %141, i64 %139, !dbg !465
  %143 = load double, ptr %142, align 8, !dbg !465, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %143, metadata !345, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !240, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %137, metadata !245, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata double %143, metadata !246, metadata !DIExpression()), !dbg !467
  %144 = mul i64 %97, %137, !dbg !469
  %145 = getelementptr inbounds double, ptr %95, i64 %144, !dbg !470
  store double %143, ptr %145, align 8, !dbg !471, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !331, metadata !DIExpression()), !dbg !426
  %146 = or disjoint i64 %137, 2, !dbg !461
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !439, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !440, metadata !DIExpression()), !dbg !462
  %147 = mul i64 %93, %139, !dbg !464
  %148 = getelementptr double, ptr %91, i64 %147, !dbg !465
  %149 = getelementptr double, ptr %148, i64 %146, !dbg !465
  %150 = load double, ptr %149, align 8, !dbg !465, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %150, metadata !345, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !240, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !245, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata double %150, metadata !246, metadata !DIExpression()), !dbg !467
  %151 = mul i64 %97, %139, !dbg !469
  %152 = getelementptr inbounds double, ptr %95, i64 %151, !dbg !470
  store double %150, ptr %152, align 8, !dbg !471, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !331, metadata !DIExpression()), !dbg !426
  %153 = or disjoint i64 %137, 3, !dbg !461
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !439, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !440, metadata !DIExpression()), !dbg !462
  %154 = mul i64 %93, %146, !dbg !464
  %155 = getelementptr double, ptr %91, i64 %154, !dbg !465
  %156 = getelementptr double, ptr %155, i64 %153, !dbg !465
  %157 = load double, ptr %156, align 8, !dbg !465, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %157, metadata !345, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !240, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !245, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata double %157, metadata !246, metadata !DIExpression()), !dbg !467
  %158 = mul i64 %97, %146, !dbg !469
  %159 = getelementptr inbounds double, ptr %95, i64 %158, !dbg !470
  store double %157, ptr %159, align 8, !dbg !471, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !331, metadata !DIExpression()), !dbg !426
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !331, metadata !DIExpression()), !dbg !426
  %160 = add nuw i64 %137, 4, !dbg !461
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !439, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !440, metadata !DIExpression()), !dbg !462
  %161 = mul i64 %93, %153, !dbg !464
  %162 = getelementptr double, ptr %91, i64 %161, !dbg !465
  %163 = getelementptr double, ptr %162, i64 %160, !dbg !465
  %164 = load double, ptr %163, align 8, !dbg !465, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %164, metadata !345, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !240, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %153, metadata !245, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata double %164, metadata !246, metadata !DIExpression()), !dbg !467
  %165 = mul i64 %97, %153, !dbg !469
  %166 = getelementptr inbounds double, ptr %95, i64 %165, !dbg !470
  store double %164, ptr %166, align 8, !dbg !471, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %160, metadata !331, metadata !DIExpression()), !dbg !426
  %167 = add i64 %138, 4, !dbg !455
  %168 = icmp eq i64 %167, %102, !dbg !455
  br i1 %168, label %169, label %136, !dbg !455, !llvm.loop !472

169:                                              ; preds = %136, %88
  %170 = phi i64 [ 0, %88 ], [ %160, %136 ]
  %171 = icmp eq i64 %99, 0, !dbg !455
  br i1 %171, label %184, label %172, !dbg !455

172:                                              ; preds = %172, %169
  %173 = phi i64 [ %175, %172 ], [ %170, %169 ]
  %174 = phi i64 [ %182, %172 ], [ 0, %169 ]
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !331, metadata !DIExpression()), !dbg !426
  %175 = add nuw i64 %173, 1, !dbg !461
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !439, metadata !DIExpression()), !dbg !462
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !440, metadata !DIExpression()), !dbg !462
  %176 = mul i64 %93, %173, !dbg !464
  %177 = getelementptr double, ptr %91, i64 %176, !dbg !465
  %178 = getelementptr double, ptr %177, i64 %175, !dbg !465
  %179 = load double, ptr %178, align 8, !dbg !465, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %179, metadata !345, metadata !DIExpression()), !dbg !466
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !240, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %173, metadata !245, metadata !DIExpression()), !dbg !467
  tail call void @llvm.dbg.value(metadata double %179, metadata !246, metadata !DIExpression()), !dbg !467
  %180 = mul i64 %97, %173, !dbg !469
  %181 = getelementptr inbounds double, ptr %95, i64 %180, !dbg !470
  store double %179, ptr %181, align 8, !dbg !471, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !331, metadata !DIExpression()), !dbg !426
  %182 = add i64 %174, 1, !dbg !455
  %183 = icmp eq i64 %182, %99, !dbg !455
  br i1 %183, label %184, label %172, !dbg !455, !llvm.loop !474

184:                                              ; preds = %172, %169
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %4) #4, !dbg !456
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !331, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !426
  %185 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %186 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  br label %187, !dbg !475

187:                                              ; preds = %187, %184
  %188 = phi i64 [ %89, %184 ], [ %189, %187 ]
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !331, metadata !DIExpression()), !dbg !426
  %189 = add i64 %188, -1, !dbg !476
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !331, metadata !DIExpression()), !dbg !426
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #4, !dbg !477
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %8, ptr noundef nonnull %0, i64 noundef %189) #4, !dbg !478
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #4, !dbg !479
  %190 = sub i64 %16, %188, !dbg !480
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %9, ptr noundef nonnull %8, i64 noundef %188, i64 noundef %190) #4, !dbg !481
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !482, metadata !DIExpression()), !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !487, metadata !DIExpression()), !dbg !488
  %191 = load ptr, ptr %185, align 8, !dbg !490, !tbaa !250
  %192 = load i64, ptr %186, align 8, !dbg !491, !tbaa !252
  %193 = mul i64 %192, %189, !dbg !492
  %194 = getelementptr inbounds double, ptr %191, i64 %193, !dbg !493
  %195 = load double, ptr %194, align 8, !dbg !493, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %195, metadata !360, metadata !DIExpression()), !dbg !370
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #4, !dbg !494
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %10, ptr noundef nonnull %4, i64 noundef %188, i64 noundef %188, i64 noundef %190, i64 noundef %190) #4, !dbg !495
  %196 = call i32 @gsl_linalg_householder_hm(double noundef %195, ptr noundef nonnull %9, ptr noundef nonnull %10) #4, !dbg !496
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #4, !dbg !497
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #4, !dbg !497
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #4, !dbg !497
  tail call void @llvm.dbg.value(metadata i64 %189, metadata !331, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !426
  %197 = icmp eq i64 %189, 0, !dbg !498
  br i1 %197, label %198, label %187, !dbg !475, !llvm.loop !499

198:                                              ; preds = %187
  call void @gsl_matrix_set_identity(ptr noundef nonnull %2) #4, !dbg !457
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !340, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !426
  br i1 %54, label %214, label %199, !dbg !458

199:                                              ; preds = %198, %87
  %200 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %201 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %202, !dbg !458

202:                                              ; preds = %202, %199
  %203 = phi i64 [ %16, %199 ], [ %204, %202 ]
  tail call void @llvm.dbg.value(metadata i64 %203, metadata !340, metadata !DIExpression()), !dbg !426
  %204 = add i64 %203, -1, !dbg !501
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !340, metadata !DIExpression()), !dbg !426
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #4, !dbg !502
  call void @gsl_matrix_const_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %11, ptr noundef nonnull %0, i64 noundef %204) #4, !dbg !503
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #4, !dbg !504
  %205 = sub i64 %14, %204, !dbg !505
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %12, ptr noundef nonnull %11, i64 noundef %204, i64 noundef %205) #4, !dbg !506
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !482, metadata !DIExpression()), !dbg !507
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !487, metadata !DIExpression()), !dbg !507
  %206 = load ptr, ptr %200, align 8, !dbg !509, !tbaa !250
  %207 = load i64, ptr %201, align 8, !dbg !510, !tbaa !252
  %208 = mul i64 %207, %204, !dbg !511
  %209 = getelementptr inbounds double, ptr %206, i64 %208, !dbg !512
  %210 = load double, ptr %209, align 8, !dbg !512, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %210, metadata !367, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #4, !dbg !513
  %211 = sub i64 %16, %204, !dbg !514
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %13, ptr noundef nonnull %2, i64 noundef %204, i64 noundef %204, i64 noundef %205, i64 noundef %211) #4, !dbg !515
  %212 = call i32 @gsl_linalg_householder_hm(double noundef %210, ptr noundef nonnull %12, ptr noundef nonnull %13) #4, !dbg !516
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #4, !dbg !517
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #4, !dbg !517
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #4, !dbg !517
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !340, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !426
  %213 = icmp eq i64 %204, 0, !dbg !518
  br i1 %213, label %214, label %202, !dbg !458, !llvm.loop !519

214:                                              ; preds = %202, %198, %68, %48, %44, %36, %28, %23, %19
  %215 = phi i32 [ 19, %19 ], [ 19, %23 ], [ 19, %28 ], [ 19, %36 ], [ 19, %44 ], [ 19, %48 ], [ 19, %68 ], [ 0, %198 ], [ 0, %202 ], !dbg !521
  ret i32 %215, !dbg !522
}

declare !dbg !523 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #1

declare !dbg !526 void @gsl_matrix_const_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !529 void @gsl_vector_const_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !532 void @gsl_matrix_const_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_bidiag_unpack2(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 !dbg !533 {
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !568
  call void @llvm.dbg.assign(metadata i1 undef, metadata !551, metadata !DIExpression(), metadata !568, metadata ptr %5, metadata !DIExpression()), !dbg !569
  %6 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !570
  call void @llvm.dbg.assign(metadata i1 undef, metadata !555, metadata !DIExpression(), metadata !570, metadata ptr %6, metadata !DIExpression()), !dbg !569
  %7 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !571
  call void @llvm.dbg.assign(metadata i1 undef, metadata !557, metadata !DIExpression(), metadata !571, metadata ptr %7, metadata !DIExpression()), !dbg !569
  %8 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !572
  call void @llvm.dbg.assign(metadata i1 undef, metadata !567, metadata !DIExpression(), metadata !572, metadata ptr %8, metadata !DIExpression()), !dbg !573
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !537, metadata !DIExpression()), !dbg !574
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !538, metadata !DIExpression()), !dbg !574
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !539, metadata !DIExpression()), !dbg !574
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !540, metadata !DIExpression()), !dbg !574
  %9 = load i64, ptr %0, align 8, !dbg !575, !tbaa !194
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !541, metadata !DIExpression()), !dbg !574
  %10 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !576
  %11 = load i64, ptr %10, align 8, !dbg !576, !tbaa !202
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !542, metadata !DIExpression()), !dbg !574
  %12 = icmp ult i64 %9, %11, !dbg !577
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %11), !dbg !577
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !543, metadata !DIExpression()), !dbg !574
  br i1 %12, label %14, label %15, !dbg !578

14:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 260, i32 noundef 19) #4, !dbg !579
  br label %141, !dbg !579

15:                                               ; preds = %4
  %16 = load i64, ptr %1, align 8, !dbg !582, !tbaa !209
  %17 = icmp eq i64 %16, %13, !dbg !583
  br i1 %17, label %19, label %18, !dbg !584

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 264, i32 noundef 19) #4, !dbg !585
  br label %141, !dbg !585

19:                                               ; preds = %15
  %20 = load i64, ptr %2, align 8, !dbg !588, !tbaa !209
  %21 = add i64 %20, 1, !dbg !589
  %22 = icmp eq i64 %21, %13, !dbg !590
  br i1 %22, label %24, label %23, !dbg !591

23:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 19) #4, !dbg !592
  br label %141, !dbg !592

24:                                               ; preds = %19
  %25 = load i64, ptr %3, align 8, !dbg !595, !tbaa !194
  %26 = icmp eq i64 %25, %11, !dbg !596
  br i1 %26, label %27, label %31, !dbg !597

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 1, !dbg !598
  %29 = load i64, ptr %28, align 8, !dbg !598, !tbaa !202
  %30 = icmp eq i64 %29, %11, !dbg !599
  br i1 %30, label %32, label %31, !dbg !600

31:                                               ; preds = %27, %24
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 272, i32 noundef 19) #4, !dbg !601
  br label %141, !dbg !601

32:                                               ; preds = %27
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %3) #4, !dbg !604
  %33 = add i64 %11, -1, !dbg !605
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !544, metadata !DIExpression()), !dbg !606
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !544, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !606
  %34 = icmp eq i64 %33, 0, !dbg !607
  br i1 %34, label %81, label %35, !dbg !608

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %37 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  br label %53, !dbg !608

38:                                               ; preds = %53
  tail call void @llvm.dbg.value(metadata i64 0, metadata !544, metadata !DIExpression()), !dbg !606
  br i1 %34, label %81, label %39, !dbg !609

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !429
  %42 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !430
  %44 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !250
  %46 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !252
  %48 = add i64 %11, -2, !dbg !609
  %49 = and i64 %33, 3, !dbg !609
  %50 = icmp ult i64 %48, 3, !dbg !609
  br i1 %50, label %64, label %51, !dbg !609

51:                                               ; preds = %39
  %52 = and i64 %33, -4, !dbg !609
  br label %86, !dbg !609

53:                                               ; preds = %53, %35
  %54 = phi i64 [ %33, %35 ], [ %55, %53 ]
  tail call void @llvm.dbg.value(metadata i64 %54, metadata !544, metadata !DIExpression()), !dbg !606
  %55 = add i64 %54, -1, !dbg !610
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !544, metadata !DIExpression()), !dbg !606
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #4, !dbg !611
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %55) #4, !dbg !612
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #4, !dbg !613
  %56 = sub i64 %11, %54, !dbg !614
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %6, ptr noundef nonnull %5, i64 noundef %54, i64 noundef %56) #4, !dbg !615
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !482, metadata !DIExpression()), !dbg !616
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !487, metadata !DIExpression()), !dbg !616
  %57 = load ptr, ptr %36, align 8, !dbg !618, !tbaa !250
  %58 = load i64, ptr %37, align 8, !dbg !619, !tbaa !252
  %59 = mul i64 %58, %55, !dbg !620
  %60 = getelementptr inbounds double, ptr %57, i64 %59, !dbg !621
  %61 = load double, ptr %60, align 8, !dbg !621, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %61, metadata !556, metadata !DIExpression()), !dbg !569
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #4, !dbg !622
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %7, ptr noundef nonnull %3, i64 noundef %54, i64 noundef %54, i64 noundef %56, i64 noundef %56) #4, !dbg !623
  %62 = call i32 @gsl_linalg_householder_hm(double noundef %61, ptr noundef nonnull %6, ptr noundef nonnull %7) #4, !dbg !624
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #4, !dbg !625
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #4, !dbg !625
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #4, !dbg !625
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !544, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !606
  %63 = icmp eq i64 %55, 0, !dbg !607
  br i1 %63, label %38, label %53, !dbg !608, !llvm.loop !626

64:                                               ; preds = %86, %39
  %65 = phi i64 [ 0, %39 ], [ %110, %86 ]
  %66 = icmp eq i64 %49, 0, !dbg !609
  br i1 %66, label %79, label %67, !dbg !609

67:                                               ; preds = %67, %64
  %68 = phi i64 [ %70, %67 ], [ %65, %64 ]
  %69 = phi i64 [ %77, %67 ], [ 0, %64 ]
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !544, metadata !DIExpression()), !dbg !606
  %70 = add nuw i64 %68, 1, !dbg !628
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !439, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !440, metadata !DIExpression()), !dbg !629
  %71 = mul i64 %43, %68, !dbg !631
  %72 = getelementptr double, ptr %41, i64 %71, !dbg !632
  %73 = getelementptr double, ptr %72, i64 %70, !dbg !632
  %74 = load double, ptr %73, align 8, !dbg !632, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %74, metadata !558, metadata !DIExpression()), !dbg !633
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i64 %68, metadata !245, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %74, metadata !246, metadata !DIExpression()), !dbg !634
  %75 = mul i64 %47, %68, !dbg !636
  %76 = getelementptr inbounds double, ptr %45, i64 %75, !dbg !637
  store double %74, ptr %76, align 8, !dbg !638, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !544, metadata !DIExpression()), !dbg !606
  %77 = add i64 %69, 1, !dbg !609
  %78 = icmp eq i64 %77, %49, !dbg !609
  br i1 %78, label %79, label %67, !dbg !609, !llvm.loop !639

79:                                               ; preds = %67, %64
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !550, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !606
  %80 = icmp eq i64 %11, 0, !dbg !640
  br i1 %80, label %141, label %81, !dbg !641

81:                                               ; preds = %79, %38, %32
  %82 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %83 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %84 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %85 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %119, !dbg !641

86:                                               ; preds = %86, %51
  %87 = phi i64 [ 0, %51 ], [ %110, %86 ]
  %88 = phi i64 [ 0, %51 ], [ %117, %86 ]
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !544, metadata !DIExpression()), !dbg !606
  %89 = or disjoint i64 %87, 1, !dbg !628
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !439, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !440, metadata !DIExpression()), !dbg !629
  %90 = mul i64 %43, %87, !dbg !631
  %91 = getelementptr double, ptr %41, i64 %90, !dbg !632
  %92 = getelementptr double, ptr %91, i64 %89, !dbg !632
  %93 = load double, ptr %92, align 8, !dbg !632, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %93, metadata !558, metadata !DIExpression()), !dbg !633
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !245, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %93, metadata !246, metadata !DIExpression()), !dbg !634
  %94 = mul i64 %47, %87, !dbg !636
  %95 = getelementptr inbounds double, ptr %45, i64 %94, !dbg !637
  store double %93, ptr %95, align 8, !dbg !638, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !544, metadata !DIExpression()), !dbg !606
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !544, metadata !DIExpression()), !dbg !606
  %96 = or disjoint i64 %87, 2, !dbg !628
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !439, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !440, metadata !DIExpression()), !dbg !629
  %97 = mul i64 %43, %89, !dbg !631
  %98 = getelementptr double, ptr %41, i64 %97, !dbg !632
  %99 = getelementptr double, ptr %98, i64 %96, !dbg !632
  %100 = load double, ptr %99, align 8, !dbg !632, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %100, metadata !558, metadata !DIExpression()), !dbg !633
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !245, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %100, metadata !246, metadata !DIExpression()), !dbg !634
  %101 = mul i64 %47, %89, !dbg !636
  %102 = getelementptr inbounds double, ptr %45, i64 %101, !dbg !637
  store double %100, ptr %102, align 8, !dbg !638, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !544, metadata !DIExpression()), !dbg !606
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !544, metadata !DIExpression()), !dbg !606
  %103 = or disjoint i64 %87, 3, !dbg !628
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !439, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !440, metadata !DIExpression()), !dbg !629
  %104 = mul i64 %43, %96, !dbg !631
  %105 = getelementptr double, ptr %41, i64 %104, !dbg !632
  %106 = getelementptr double, ptr %105, i64 %103, !dbg !632
  %107 = load double, ptr %106, align 8, !dbg !632, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %107, metadata !558, metadata !DIExpression()), !dbg !633
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i64 %96, metadata !245, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %107, metadata !246, metadata !DIExpression()), !dbg !634
  %108 = mul i64 %47, %96, !dbg !636
  %109 = getelementptr inbounds double, ptr %45, i64 %108, !dbg !637
  store double %107, ptr %109, align 8, !dbg !638, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !544, metadata !DIExpression()), !dbg !606
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !544, metadata !DIExpression()), !dbg !606
  %110 = add nuw i64 %87, 4, !dbg !628
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !439, metadata !DIExpression()), !dbg !629
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !440, metadata !DIExpression()), !dbg !629
  %111 = mul i64 %43, %103, !dbg !631
  %112 = getelementptr double, ptr %41, i64 %111, !dbg !632
  %113 = getelementptr double, ptr %112, i64 %110, !dbg !632
  %114 = load double, ptr %113, align 8, !dbg !632, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %114, metadata !558, metadata !DIExpression()), !dbg !633
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata i64 %103, metadata !245, metadata !DIExpression()), !dbg !634
  tail call void @llvm.dbg.value(metadata double %114, metadata !246, metadata !DIExpression()), !dbg !634
  %115 = mul i64 %47, %103, !dbg !636
  %116 = getelementptr inbounds double, ptr %45, i64 %115, !dbg !637
  store double %114, ptr %116, align 8, !dbg !638, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !544, metadata !DIExpression()), !dbg !606
  %117 = add i64 %88, 4, !dbg !609
  %118 = icmp eq i64 %117, %52, !dbg !609
  br i1 %118, label %64, label %86, !dbg !609, !llvm.loop !642

119:                                              ; preds = %119, %81
  %120 = phi i64 [ %11, %81 ], [ %121, %119 ]
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !550, metadata !DIExpression()), !dbg !606
  %121 = add i64 %120, -1, !dbg !644
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !550, metadata !DIExpression()), !dbg !606
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !482, metadata !DIExpression()), !dbg !645
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !487, metadata !DIExpression()), !dbg !645
  %122 = load ptr, ptr %82, align 8, !dbg !647, !tbaa !250
  %123 = load i64, ptr %83, align 8, !dbg !648, !tbaa !252
  %124 = mul i64 %123, %121, !dbg !649
  %125 = getelementptr inbounds double, ptr %122, i64 %124, !dbg !650
  %126 = load double, ptr %125, align 8, !dbg !650, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %126, metadata !562, metadata !DIExpression()), !dbg !573
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !651
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !439, metadata !DIExpression()), !dbg !651
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !440, metadata !DIExpression()), !dbg !651
  %127 = load ptr, ptr %84, align 8, !dbg !653, !tbaa !429
  %128 = load i64, ptr %85, align 8, !dbg !654, !tbaa !430
  %129 = mul i64 %128, %121, !dbg !655
  %130 = getelementptr double, ptr %127, i64 %129, !dbg !656
  %131 = getelementptr double, ptr %130, i64 %121, !dbg !656
  %132 = load double, ptr %131, align 8, !dbg !656, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %132, metadata !566, metadata !DIExpression()), !dbg !573
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #4, !dbg !657
  %133 = sub i64 %9, %121, !dbg !658
  %134 = sub i64 %11, %121, !dbg !659
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %8, ptr noundef nonnull %0, i64 noundef %121, i64 noundef %121, i64 noundef %133, i64 noundef %134) #4, !dbg !660
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !661
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !245, metadata !DIExpression()), !dbg !661
  tail call void @llvm.dbg.value(metadata double %132, metadata !246, metadata !DIExpression()), !dbg !661
  %135 = load ptr, ptr %82, align 8, !dbg !663, !tbaa !250
  %136 = load i64, ptr %83, align 8, !dbg !664, !tbaa !252
  %137 = mul i64 %136, %121, !dbg !665
  %138 = getelementptr inbounds double, ptr %135, i64 %137, !dbg !666
  store double %132, ptr %138, align 8, !dbg !667, !tbaa !256
  %139 = call i32 @gsl_linalg_householder_hm1(double noundef %126, ptr noundef nonnull %8) #4, !dbg !668
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #4, !dbg !669
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !550, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !606
  %140 = icmp eq i64 %121, 0, !dbg !640
  br i1 %140, label %141, label %119, !dbg !641, !llvm.loop !670

141:                                              ; preds = %119, %79, %31, %23, %18, %14
  %142 = phi i32 [ 19, %14 ], [ 19, %18 ], [ 19, %23 ], [ 19, %31 ], [ 0, %79 ], [ 0, %119 ], !dbg !672
  ret i32 %142, !dbg !673
}

declare !dbg !674 i32 @gsl_linalg_householder_hm1(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_bidiag_unpack_B(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !dbg !677 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !681, metadata !DIExpression()), !dbg !699
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !682, metadata !DIExpression()), !dbg !699
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !683, metadata !DIExpression()), !dbg !699
  %4 = load i64, ptr %0, align 8, !dbg !700, !tbaa !194
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !684, metadata !DIExpression()), !dbg !699
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !701
  %6 = load i64, ptr %5, align 8, !dbg !701, !tbaa !202
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !685, metadata !DIExpression()), !dbg !699
  %7 = tail call i64 @llvm.umin.i64(i64 %4, i64 %6), !dbg !702
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !686, metadata !DIExpression()), !dbg !699
  %8 = load i64, ptr %1, align 8, !dbg !703, !tbaa !209
  %9 = icmp eq i64 %8, %7, !dbg !704
  br i1 %9, label %11, label %10, !dbg !705

10:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 336, i32 noundef 19) #4, !dbg !706
  br label %145, !dbg !706

11:                                               ; preds = %3
  %12 = load i64, ptr %2, align 8, !dbg !709, !tbaa !209
  %13 = add i64 %12, 1, !dbg !710
  %14 = icmp eq i64 %13, %7, !dbg !711
  br i1 %14, label %15, label %30, !dbg !712

15:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i64 0, metadata !687, metadata !DIExpression()), !dbg !713
  %16 = icmp eq i64 %7, 0, !dbg !714
  br i1 %16, label %49, label %17, !dbg !715

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !429
  %20 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !430
  %22 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !250
  %24 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !252
  %26 = and i64 %7, 3, !dbg !715
  %27 = icmp ult i64 %7, 4, !dbg !715
  br i1 %27, label %31, label %28, !dbg !715

28:                                               ; preds = %17
  %29 = and i64 %7, -4, !dbg !715
  br label %64, !dbg !715

30:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 340, i32 noundef 19) #4, !dbg !716
  br label %145, !dbg !716

31:                                               ; preds = %64, %17
  %32 = phi i64 [ 0, %17 ], [ %94, %64 ]
  %33 = icmp eq i64 %26, 0, !dbg !715
  br i1 %33, label %46, label %34, !dbg !715

34:                                               ; preds = %34, %31
  %35 = phi i64 [ %43, %34 ], [ %32, %31 ]
  %36 = phi i64 [ %44, %34 ], [ 0, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !439, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !440, metadata !DIExpression()), !dbg !719
  %37 = mul i64 %21, %35, !dbg !721
  %38 = getelementptr double, ptr %19, i64 %37, !dbg !722
  %39 = getelementptr double, ptr %38, i64 %35, !dbg !722
  %40 = load double, ptr %39, align 8, !dbg !722, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %40, metadata !691, metadata !DIExpression()), !dbg !723
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !245, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata double %40, metadata !246, metadata !DIExpression()), !dbg !724
  %41 = mul i64 %25, %35, !dbg !726
  %42 = getelementptr inbounds double, ptr %23, i64 %41, !dbg !727
  store double %40, ptr %42, align 8, !dbg !728, !tbaa !256
  %43 = add nuw i64 %35, 1, !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !687, metadata !DIExpression()), !dbg !713
  %44 = add i64 %36, 1, !dbg !715
  %45 = icmp eq i64 %44, %26, !dbg !715
  br i1 %45, label %46, label %34, !dbg !715, !llvm.loop !730

46:                                               ; preds = %34, %31
  %47 = add i64 %7, -1
  tail call void @llvm.dbg.value(metadata i64 0, metadata !687, metadata !DIExpression()), !dbg !713
  %48 = icmp eq i64 %47, 0, !dbg !731
  br i1 %48, label %145, label %49, !dbg !732

49:                                               ; preds = %46, %15
  %50 = phi i64 [ %47, %46 ], [ -1, %15 ]
  %51 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !429
  %53 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !430
  %55 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !250
  %57 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !252
  %59 = add i64 %7, -2, !dbg !732
  %60 = and i64 %50, 3, !dbg !732
  %61 = icmp ult i64 %59, 3, !dbg !732
  br i1 %61, label %130, label %62, !dbg !732

62:                                               ; preds = %49
  %63 = and i64 %50, -4, !dbg !732
  br label %97, !dbg !732

64:                                               ; preds = %64, %28
  %65 = phi i64 [ 0, %28 ], [ %94, %64 ]
  %66 = phi i64 [ 0, %28 ], [ %95, %64 ]
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !439, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !440, metadata !DIExpression()), !dbg !719
  %67 = mul i64 %21, %65, !dbg !721
  %68 = getelementptr double, ptr %19, i64 %67, !dbg !722
  %69 = getelementptr double, ptr %68, i64 %65, !dbg !722
  %70 = load double, ptr %69, align 8, !dbg !722, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %70, metadata !691, metadata !DIExpression()), !dbg !723
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !245, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata double %70, metadata !246, metadata !DIExpression()), !dbg !724
  %71 = mul i64 %25, %65, !dbg !726
  %72 = getelementptr inbounds double, ptr %23, i64 %71, !dbg !727
  store double %70, ptr %72, align 8, !dbg !728, !tbaa !256
  %73 = or disjoint i64 %65, 1, !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !439, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !440, metadata !DIExpression()), !dbg !719
  %74 = mul i64 %21, %73, !dbg !721
  %75 = getelementptr double, ptr %19, i64 %74, !dbg !722
  %76 = getelementptr double, ptr %75, i64 %73, !dbg !722
  %77 = load double, ptr %76, align 8, !dbg !722, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %77, metadata !691, metadata !DIExpression()), !dbg !723
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata i64 %73, metadata !245, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata double %77, metadata !246, metadata !DIExpression()), !dbg !724
  %78 = mul i64 %25, %73, !dbg !726
  %79 = getelementptr inbounds double, ptr %23, i64 %78, !dbg !727
  store double %77, ptr %79, align 8, !dbg !728, !tbaa !256
  %80 = or disjoint i64 %65, 2, !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !439, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !440, metadata !DIExpression()), !dbg !719
  %81 = mul i64 %21, %80, !dbg !721
  %82 = getelementptr double, ptr %19, i64 %81, !dbg !722
  %83 = getelementptr double, ptr %82, i64 %80, !dbg !722
  %84 = load double, ptr %83, align 8, !dbg !722, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %84, metadata !691, metadata !DIExpression()), !dbg !723
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !245, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata double %84, metadata !246, metadata !DIExpression()), !dbg !724
  %85 = mul i64 %25, %80, !dbg !726
  %86 = getelementptr inbounds double, ptr %23, i64 %85, !dbg !727
  store double %84, ptr %86, align 8, !dbg !728, !tbaa !256
  %87 = or disjoint i64 %65, 3, !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !439, metadata !DIExpression()), !dbg !719
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !440, metadata !DIExpression()), !dbg !719
  %88 = mul i64 %21, %87, !dbg !721
  %89 = getelementptr double, ptr %19, i64 %88, !dbg !722
  %90 = getelementptr double, ptr %89, i64 %87, !dbg !722
  %91 = load double, ptr %90, align 8, !dbg !722, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %91, metadata !691, metadata !DIExpression()), !dbg !723
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !240, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !245, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata double %91, metadata !246, metadata !DIExpression()), !dbg !724
  %92 = mul i64 %25, %87, !dbg !726
  %93 = getelementptr inbounds double, ptr %23, i64 %92, !dbg !727
  store double %91, ptr %93, align 8, !dbg !728, !tbaa !256
  %94 = add nuw i64 %65, 4, !dbg !729
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !687, metadata !DIExpression()), !dbg !713
  %95 = add i64 %66, 4, !dbg !715
  %96 = icmp eq i64 %95, %29, !dbg !715
  br i1 %96, label %31, label %64, !dbg !715, !llvm.loop !733

97:                                               ; preds = %97, %62
  %98 = phi i64 [ 0, %62 ], [ %121, %97 ]
  %99 = phi i64 [ 0, %62 ], [ %128, %97 ]
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !687, metadata !DIExpression()), !dbg !713
  %100 = or disjoint i64 %98, 1, !dbg !735
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !439, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !440, metadata !DIExpression()), !dbg !736
  %101 = mul i64 %54, %98, !dbg !738
  %102 = getelementptr double, ptr %52, i64 %101, !dbg !739
  %103 = getelementptr double, ptr %102, i64 %100, !dbg !739
  %104 = load double, ptr %103, align 8, !dbg !739, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %104, metadata !695, metadata !DIExpression()), !dbg !740
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata i64 %98, metadata !245, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata double %104, metadata !246, metadata !DIExpression()), !dbg !741
  %105 = mul i64 %58, %98, !dbg !743
  %106 = getelementptr inbounds double, ptr %56, i64 %105, !dbg !744
  store double %104, ptr %106, align 8, !dbg !745, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !687, metadata !DIExpression()), !dbg !713
  %107 = or disjoint i64 %98, 2, !dbg !735
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !439, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !440, metadata !DIExpression()), !dbg !736
  %108 = mul i64 %54, %100, !dbg !738
  %109 = getelementptr double, ptr %52, i64 %108, !dbg !739
  %110 = getelementptr double, ptr %109, i64 %107, !dbg !739
  %111 = load double, ptr %110, align 8, !dbg !739, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %111, metadata !695, metadata !DIExpression()), !dbg !740
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata i64 %100, metadata !245, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata double %111, metadata !246, metadata !DIExpression()), !dbg !741
  %112 = mul i64 %58, %100, !dbg !743
  %113 = getelementptr inbounds double, ptr %56, i64 %112, !dbg !744
  store double %111, ptr %113, align 8, !dbg !745, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !687, metadata !DIExpression()), !dbg !713
  %114 = or disjoint i64 %98, 3, !dbg !735
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !439, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !440, metadata !DIExpression()), !dbg !736
  %115 = mul i64 %54, %107, !dbg !738
  %116 = getelementptr double, ptr %52, i64 %115, !dbg !739
  %117 = getelementptr double, ptr %116, i64 %114, !dbg !739
  %118 = load double, ptr %117, align 8, !dbg !739, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %118, metadata !695, metadata !DIExpression()), !dbg !740
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !245, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata double %118, metadata !246, metadata !DIExpression()), !dbg !741
  %119 = mul i64 %58, %107, !dbg !743
  %120 = getelementptr inbounds double, ptr %56, i64 %119, !dbg !744
  store double %118, ptr %120, align 8, !dbg !745, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !687, metadata !DIExpression()), !dbg !713
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !687, metadata !DIExpression()), !dbg !713
  %121 = add nuw i64 %98, 4, !dbg !735
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !439, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !440, metadata !DIExpression()), !dbg !736
  %122 = mul i64 %54, %114, !dbg !738
  %123 = getelementptr double, ptr %52, i64 %122, !dbg !739
  %124 = getelementptr double, ptr %123, i64 %121, !dbg !739
  %125 = load double, ptr %124, align 8, !dbg !739, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %125, metadata !695, metadata !DIExpression()), !dbg !740
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !245, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata double %125, metadata !246, metadata !DIExpression()), !dbg !741
  %126 = mul i64 %58, %114, !dbg !743
  %127 = getelementptr inbounds double, ptr %56, i64 %126, !dbg !744
  store double %125, ptr %127, align 8, !dbg !745, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %121, metadata !687, metadata !DIExpression()), !dbg !713
  %128 = add i64 %99, 4, !dbg !732
  %129 = icmp eq i64 %128, %63, !dbg !732
  br i1 %129, label %130, label %97, !dbg !732, !llvm.loop !746

130:                                              ; preds = %97, %49
  %131 = phi i64 [ 0, %49 ], [ %121, %97 ]
  %132 = icmp eq i64 %60, 0, !dbg !732
  br i1 %132, label %145, label %133, !dbg !732

133:                                              ; preds = %133, %130
  %134 = phi i64 [ %136, %133 ], [ %131, %130 ]
  %135 = phi i64 [ %143, %133 ], [ 0, %130 ]
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !687, metadata !DIExpression()), !dbg !713
  %136 = add nuw i64 %134, 1, !dbg !735
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !434, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !439, metadata !DIExpression()), !dbg !736
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !440, metadata !DIExpression()), !dbg !736
  %137 = mul i64 %54, %134, !dbg !738
  %138 = getelementptr double, ptr %52, i64 %137, !dbg !739
  %139 = getelementptr double, ptr %138, i64 %136, !dbg !739
  %140 = load double, ptr %139, align 8, !dbg !739, !tbaa !256
  tail call void @llvm.dbg.value(metadata double %140, metadata !695, metadata !DIExpression()), !dbg !740
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !240, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata i64 %134, metadata !245, metadata !DIExpression()), !dbg !741
  tail call void @llvm.dbg.value(metadata double %140, metadata !246, metadata !DIExpression()), !dbg !741
  %141 = mul i64 %58, %134, !dbg !743
  %142 = getelementptr inbounds double, ptr %56, i64 %141, !dbg !744
  store double %140, ptr %142, align 8, !dbg !745, !tbaa !256
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !687, metadata !DIExpression()), !dbg !713
  %143 = add i64 %135, 1, !dbg !732
  %144 = icmp eq i64 %143, %60, !dbg !732
  br i1 %144, label %145, label %133, !dbg !732, !llvm.loop !748

145:                                              ; preds = %133, %130, %46, %30, %10
  %146 = phi i32 [ 19, %10 ], [ 19, %30 ], [ 0, %46 ], [ 0, %133 ], [ 0, %130 ], !dbg !749
  ret i32 %146, !dbg !750
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!56}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bidiag.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "2d21739de54fa9fd271a4bc3711879dc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 9)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 24)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 30)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 26)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 29)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 33)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 173, type: !14, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !14, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 181, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 38)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 48)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 340, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 46)
!56 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !57, globals: !97, splitDebugInlining: false, nameTableKind: None)
!57 = !{!58}
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 39, baseType: !60, size: 32, elements: !61)
!59 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!62 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!63 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!64 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!65 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!66 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!67 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!68 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!69 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!70 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!71 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!72 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!73 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!74 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!75 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!76 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!77 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!78 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!79 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!80 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!81 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!82 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!83 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!84 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!85 = !DIEnumerator(name: "GSL_ESING", value: 21)
!86 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!87 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!88 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!89 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!90 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!91 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!92 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!93 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!94 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!95 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!96 = !DIEnumerator(name: "GSL_EOF", value: 32)
!97 = !{!0, !7, !12, !17, !22, !27, !32, !37, !39, !41, !46, !51}
!98 = !{i32 7, !"Dwarf Version", i32 5}
!99 = !{i32 2, !"Debug Info Version", i32 3}
!100 = !{i32 1, !"wchar_size", i32 4}
!101 = !{i32 8, !"PIC Level", i32 2}
!102 = !{i32 7, !"PIE Level", i32 2}
!103 = !{i32 7, !"uwtable", i32 2}
!104 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!105 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!106 = distinct !DISubprogram(name: "gsl_linalg_bidiag_decomp", scope: !2, file: !2, line: 75, type: !107, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !142)
!107 = !DISubroutineType(types: !108)
!108 = !{!60, !109, !132, !132}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !111, line: 50, baseType: !112)
!111 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 42, size: 384, elements: !113)
!113 = !{!114, !118, !119, !120, !123, !131}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !112, file: !111, line: 44, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 18, baseType: !117)
!116 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!117 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !112, file: !111, line: 45, baseType: !115, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !112, file: !111, line: 46, baseType: !115, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !112, file: !111, line: 47, baseType: !121, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !112, file: !111, line: 48, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !126, line: 44, baseType: !127)
!126 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !126, line: 38, size: 128, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !127, file: !126, line: 40, baseType: !115, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !127, file: !126, line: 41, baseType: !121, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !112, file: !111, line: 49, baseType: !60, size: 32, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !134, line: 50, baseType: !135)
!134 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 42, size: 320, elements: !136)
!136 = !{!137, !138, !139, !140, !141}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !135, file: !134, line: 44, baseType: !115, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !135, file: !134, line: 45, baseType: !115, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !135, file: !134, line: 46, baseType: !121, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !135, file: !134, line: 47, baseType: !124, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !135, file: !134, line: 48, baseType: !60, size: 32, offset: 256)
!142 = !{!143, !144, !145, !146, !152, !153, !154, !164, !165, !166, !174, !177, !178, !179}
!143 = !DILocalVariable(name: "A", arg: 1, scope: !106, file: !2, line: 75, type: !109)
!144 = !DILocalVariable(name: "tau_U", arg: 2, scope: !106, file: !2, line: 75, type: !132)
!145 = !DILocalVariable(name: "tau_V", arg: 3, scope: !106, file: !2, line: 75, type: !132)
!146 = !DILocalVariable(name: "M", scope: !147, file: !2, line: 91, type: !151)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 90, column: 5)
!148 = distinct !DILexicalBlock(scope: !149, file: !2, line: 85, column: 12)
!149 = distinct !DILexicalBlock(scope: !150, file: !2, line: 81, column: 12)
!150 = distinct !DILexicalBlock(scope: !106, file: !2, line: 77, column: 7)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!152 = !DILocalVariable(name: "N", scope: !147, file: !2, line: 92, type: !151)
!153 = !DILocalVariable(name: "i", scope: !147, file: !2, line: 93, type: !115)
!154 = !DILocalVariable(name: "c", scope: !155, file: !2, line: 100, type: !159)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 99, column: 11)
!156 = distinct !DILexicalBlock(scope: !157, file: !2, line: 96, column: 9)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 95, column: 7)
!158 = distinct !DILexicalBlock(scope: !147, file: !2, line: 95, column: 7)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !134, line: 57, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !134, line: 55, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 52, size: 320, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !161, file: !134, line: 54, baseType: !133, size: 320)
!164 = !DILocalVariable(name: "v", scope: !155, file: !2, line: 101, type: !159)
!165 = !DILocalVariable(name: "tau_i", scope: !155, file: !2, line: 102, type: !122)
!166 = !DILocalVariable(name: "m", scope: !167, file: !2, line: 108, type: !169)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 107, column: 15)
!168 = distinct !DILexicalBlock(scope: !155, file: !2, line: 106, column: 17)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !111, line: 57, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !111, line: 55, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 52, size: 384, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !171, file: !111, line: 54, baseType: !110, size: 384)
!174 = !DILocalVariable(name: "r", scope: !175, file: !2, line: 121, type: !159)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 120, column: 13)
!176 = distinct !DILexicalBlock(scope: !156, file: !2, line: 119, column: 15)
!177 = !DILocalVariable(name: "v", scope: !175, file: !2, line: 122, type: !159)
!178 = !DILocalVariable(name: "tau_i", scope: !175, file: !2, line: 123, type: !122)
!179 = !DILocalVariable(name: "m", scope: !180, file: !2, line: 129, type: !169)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 128, column: 17)
!181 = distinct !DILexicalBlock(scope: !175, file: !2, line: 127, column: 19)
!182 = distinct !DIAssignID()
!183 = !DILocation(line: 0, scope: !155)
!184 = distinct !DIAssignID()
!185 = distinct !DIAssignID()
!186 = !DILocation(line: 0, scope: !167)
!187 = distinct !DIAssignID()
!188 = !DILocation(line: 0, scope: !175)
!189 = distinct !DIAssignID()
!190 = distinct !DIAssignID()
!191 = !DILocation(line: 0, scope: !180)
!192 = !DILocation(line: 0, scope: !106)
!193 = !DILocation(line: 77, column: 10, scope: !150)
!194 = !{!195, !196, i64 0}
!195 = !{!"", !196, i64 0, !196, i64 8, !196, i64 16, !199, i64 24, !199, i64 32, !200, i64 40}
!196 = !{!"long", !197, i64 0}
!197 = !{!"omnipotent char", !198, i64 0}
!198 = !{!"Simple C/C++ TBAA"}
!199 = !{!"any pointer", !197, i64 0}
!200 = !{!"int", !197, i64 0}
!201 = !DILocation(line: 77, column: 21, scope: !150)
!202 = !{!195, !196, i64 8}
!203 = !DILocation(line: 77, column: 16, scope: !150)
!204 = !DILocation(line: 77, column: 7, scope: !106)
!205 = !DILocation(line: 79, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !2, line: 79, column: 7)
!207 = distinct !DILexicalBlock(scope: !150, file: !2, line: 78, column: 5)
!208 = !DILocation(line: 81, column: 19, scope: !149)
!209 = !{!210, !196, i64 0}
!210 = !{!"", !196, i64 0, !196, i64 8, !199, i64 16, !199, i64 24, !200, i64 32}
!211 = !DILocation(line: 81, column: 25, scope: !149)
!212 = !DILocation(line: 81, column: 12, scope: !150)
!213 = !DILocation(line: 83, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !2, line: 83, column: 7)
!215 = distinct !DILexicalBlock(scope: !149, file: !2, line: 82, column: 5)
!216 = !DILocation(line: 85, column: 19, scope: !148)
!217 = !DILocation(line: 85, column: 24, scope: !148)
!218 = !DILocation(line: 85, column: 28, scope: !148)
!219 = !DILocation(line: 85, column: 12, scope: !149)
!220 = !DILocation(line: 0, scope: !147)
!221 = !DILocation(line: 95, column: 22, scope: !157)
!222 = !DILocation(line: 95, column: 7, scope: !158)
!223 = !DILocation(line: 87, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 87, column: 7)
!225 = distinct !DILexicalBlock(scope: !148, file: !2, line: 86, column: 5)
!226 = !DILocation(line: 100, column: 13, scope: !155)
!227 = !DILocation(line: 100, column: 33, scope: !155)
!228 = !DILocation(line: 101, column: 13, scope: !155)
!229 = !DILocation(line: 101, column: 71, scope: !155)
!230 = !DILocation(line: 101, column: 33, scope: !155)
!231 = !DILocation(line: 102, column: 28, scope: !155)
!232 = !DILocation(line: 106, column: 19, scope: !168)
!233 = !DILocation(line: 106, column: 23, scope: !168)
!234 = !DILocation(line: 106, column: 17, scope: !155)
!235 = !DILocation(line: 108, column: 17, scope: !167)
!236 = !DILocation(line: 109, column: 63, scope: !167)
!237 = !DILocation(line: 109, column: 19, scope: !167)
!238 = !DILocation(line: 110, column: 17, scope: !167)
!239 = !DILocation(line: 111, column: 15, scope: !168)
!240 = !DILocalVariable(name: "v", arg: 1, scope: !241, file: !134, line: 188, type: !132)
!241 = distinct !DISubprogram(name: "gsl_vector_set", scope: !134, file: !134, line: 188, type: !242, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !132, !151, !122}
!244 = !{!240, !245, !246}
!245 = !DILocalVariable(name: "i", arg: 2, scope: !241, file: !134, line: 188, type: !151)
!246 = !DILocalVariable(name: "x", arg: 3, scope: !241, file: !134, line: 188, type: !122)
!247 = !DILocation(line: 0, scope: !241, inlinedAt: !248)
!248 = distinct !DILocation(line: 113, column: 13, scope: !155)
!249 = !DILocation(line: 196, column: 6, scope: !241, inlinedAt: !248)
!250 = !{!210, !199, i64 16}
!251 = !DILocation(line: 196, column: 18, scope: !241, inlinedAt: !248)
!252 = !{!210, !196, i64 8}
!253 = !DILocation(line: 196, column: 13, scope: !241, inlinedAt: !248)
!254 = !DILocation(line: 196, column: 3, scope: !241, inlinedAt: !248)
!255 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !248)
!256 = !{!257, !257, i64 0}
!257 = !{!"double", !197, i64 0}
!258 = !DILocation(line: 115, column: 11, scope: !156)
!259 = !DILocation(line: 121, column: 15, scope: !175)
!260 = !DILocation(line: 121, column: 35, scope: !175)
!261 = !DILocation(line: 122, column: 15, scope: !175)
!262 = !DILocation(line: 122, column: 35, scope: !175)
!263 = !DILocation(line: 123, column: 30, scope: !175)
!264 = !DILocation(line: 129, column: 19, scope: !180)
!265 = !DILocation(line: 130, column: 58, scope: !180)
!266 = !DILocation(line: 130, column: 21, scope: !180)
!267 = !DILocation(line: 131, column: 19, scope: !180)
!268 = !DILocation(line: 132, column: 17, scope: !181)
!269 = !DILocation(line: 0, scope: !241, inlinedAt: !270)
!270 = distinct !DILocation(line: 134, column: 15, scope: !175)
!271 = !DILocation(line: 196, column: 6, scope: !241, inlinedAt: !270)
!272 = !DILocation(line: 196, column: 18, scope: !241, inlinedAt: !270)
!273 = !DILocation(line: 196, column: 13, scope: !241, inlinedAt: !270)
!274 = !DILocation(line: 196, column: 3, scope: !241, inlinedAt: !270)
!275 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !270)
!276 = !DILocation(line: 135, column: 13, scope: !176)
!277 = !DILocation(line: 135, column: 13, scope: !175)
!278 = !DILocation(line: 0, scope: !241, inlinedAt: !279)
!279 = distinct !DILocation(line: 113, column: 13, scope: !155)
!280 = !DILocation(line: 196, column: 6, scope: !241, inlinedAt: !279)
!281 = !DILocation(line: 196, column: 18, scope: !241, inlinedAt: !279)
!282 = !DILocation(line: 196, column: 13, scope: !241, inlinedAt: !279)
!283 = !DILocation(line: 196, column: 3, scope: !241, inlinedAt: !279)
!284 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !279)
!285 = !DILocation(line: 119, column: 15, scope: !156)
!286 = distinct !{!286, !222, !287, !288}
!287 = !DILocation(line: 136, column: 9, scope: !158)
!288 = !{!"llvm.loop.mustprogress"}
!289 = !DILocation(line: 140, column: 1, scope: !106)
!290 = !DISubprogram(name: "gsl_error", scope: !59, file: !59, line: 77, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !293, !293, !60, !60}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!295 = !DISubprogram(name: "gsl_matrix_column", scope: !111, file: !111, line: 109, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!296 = !DISubroutineType(types: !297)
!297 = !{!160, !109, !151}
!298 = !DISubprogram(name: "gsl_vector_subvector", scope: !134, file: !134, line: 103, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DISubroutineType(types: !300)
!300 = !{!160, !132, !115, !115}
!301 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !302, file: !302, line: 94, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!303 = !DISubroutineType(types: !304)
!304 = !{!122, !132}
!305 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !111, file: !111, line: 101, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{!170, !109, !151, !151, !151, !151}
!308 = !DISubprogram(name: "gsl_linalg_householder_hm", scope: !302, file: !302, line: 97, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DISubroutineType(types: !310)
!310 = !{!60, !122, !311, !109}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!313 = !DISubprogram(name: "gsl_matrix_row", scope: !111, file: !111, line: 106, type: !296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!314 = !DISubprogram(name: "gsl_linalg_householder_mh", scope: !302, file: !302, line: 101, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!315 = distinct !DISubprogram(name: "gsl_linalg_bidiag_unpack", scope: !2, file: !2, line: 146, type: !316, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !320)
!316 = !DISubroutineType(types: !317)
!317 = !{!60, !318, !311, !109, !311, !109, !132, !132}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !340, !341, !345, !349, !359, !360, !361, !362, !366, !367, !368}
!321 = !DILocalVariable(name: "A", arg: 1, scope: !315, file: !2, line: 146, type: !318)
!322 = !DILocalVariable(name: "tau_U", arg: 2, scope: !315, file: !2, line: 147, type: !311)
!323 = !DILocalVariable(name: "U", arg: 3, scope: !315, file: !2, line: 148, type: !109)
!324 = !DILocalVariable(name: "tau_V", arg: 4, scope: !315, file: !2, line: 149, type: !311)
!325 = !DILocalVariable(name: "V", arg: 5, scope: !315, file: !2, line: 150, type: !109)
!326 = !DILocalVariable(name: "diag", arg: 6, scope: !315, file: !2, line: 151, type: !132)
!327 = !DILocalVariable(name: "superdiag", arg: 7, scope: !315, file: !2, line: 152, type: !132)
!328 = !DILocalVariable(name: "M", scope: !315, file: !2, line: 154, type: !151)
!329 = !DILocalVariable(name: "N", scope: !315, file: !2, line: 155, type: !151)
!330 = !DILocalVariable(name: "K", scope: !315, file: !2, line: 157, type: !151)
!331 = !DILocalVariable(name: "i", scope: !332, file: !2, line: 189, type: !115)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 188, column: 5)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 183, column: 12)
!334 = distinct !DILexicalBlock(scope: !335, file: !2, line: 179, column: 12)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 175, column: 12)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 171, column: 12)
!337 = distinct !DILexicalBlock(scope: !338, file: !2, line: 167, column: 12)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 163, column: 12)
!339 = distinct !DILexicalBlock(scope: !315, file: !2, line: 159, column: 7)
!340 = !DILocalVariable(name: "j", scope: !332, file: !2, line: 189, type: !115)
!341 = !DILocalVariable(name: "Aii", scope: !342, file: !2, line: 195, type: !122)
!342 = distinct !DILexicalBlock(scope: !343, file: !2, line: 194, column: 9)
!343 = distinct !DILexicalBlock(scope: !344, file: !2, line: 193, column: 7)
!344 = distinct !DILexicalBlock(scope: !332, file: !2, line: 193, column: 7)
!345 = !DILocalVariable(name: "Aij", scope: !346, file: !2, line: 203, type: !122)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 202, column: 9)
!347 = distinct !DILexicalBlock(scope: !348, file: !2, line: 201, column: 7)
!348 = distinct !DILexicalBlock(scope: !332, file: !2, line: 201, column: 7)
!349 = !DILocalVariable(name: "r", scope: !350, file: !2, line: 214, type: !353)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 212, column: 9)
!351 = distinct !DILexicalBlock(scope: !352, file: !2, line: 211, column: 7)
!352 = distinct !DILexicalBlock(scope: !332, file: !2, line: 211, column: 7)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !134, line: 64, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !134, line: 62, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 59, size: 320, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !356, file: !134, line: 61, baseType: !133, size: 320)
!359 = !DILocalVariable(name: "h", scope: !350, file: !2, line: 215, type: !353)
!360 = !DILocalVariable(name: "ti", scope: !350, file: !2, line: 218, type: !122)
!361 = !DILocalVariable(name: "m", scope: !350, file: !2, line: 220, type: !169)
!362 = !DILocalVariable(name: "c", scope: !363, file: !2, line: 233, type: !353)
!363 = distinct !DILexicalBlock(scope: !364, file: !2, line: 231, column: 9)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 230, column: 7)
!365 = distinct !DILexicalBlock(scope: !332, file: !2, line: 230, column: 7)
!366 = !DILocalVariable(name: "h", scope: !363, file: !2, line: 234, type: !353)
!367 = !DILocalVariable(name: "tj", scope: !363, file: !2, line: 235, type: !122)
!368 = !DILocalVariable(name: "m", scope: !363, file: !2, line: 237, type: !169)
!369 = distinct !DIAssignID()
!370 = !DILocation(line: 0, scope: !350)
!371 = distinct !DIAssignID()
!372 = distinct !DIAssignID()
!373 = distinct !DIAssignID()
!374 = !DILocation(line: 0, scope: !363)
!375 = distinct !DIAssignID()
!376 = distinct !DIAssignID()
!377 = !DILocation(line: 0, scope: !315)
!378 = !DILocation(line: 154, column: 23, scope: !315)
!379 = !DILocation(line: 155, column: 23, scope: !315)
!380 = !DILocation(line: 157, column: 20, scope: !315)
!381 = !DILocation(line: 159, column: 7, scope: !315)
!382 = !DILocation(line: 161, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 161, column: 7)
!384 = distinct !DILexicalBlock(scope: !339, file: !2, line: 160, column: 5)
!385 = !DILocation(line: 163, column: 19, scope: !338)
!386 = !DILocation(line: 163, column: 24, scope: !338)
!387 = !DILocation(line: 163, column: 12, scope: !339)
!388 = !DILocation(line: 165, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 165, column: 7)
!390 = distinct !DILexicalBlock(scope: !338, file: !2, line: 164, column: 5)
!391 = !DILocation(line: 167, column: 19, scope: !337)
!392 = !DILocation(line: 167, column: 24, scope: !337)
!393 = !DILocation(line: 167, column: 28, scope: !337)
!394 = !DILocation(line: 167, column: 12, scope: !338)
!395 = !DILocation(line: 169, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !2, line: 169, column: 7)
!397 = distinct !DILexicalBlock(scope: !337, file: !2, line: 168, column: 5)
!398 = !DILocation(line: 171, column: 15, scope: !336)
!399 = !DILocation(line: 171, column: 21, scope: !336)
!400 = !DILocation(line: 171, column: 26, scope: !336)
!401 = !DILocation(line: 171, column: 32, scope: !336)
!402 = !DILocation(line: 171, column: 38, scope: !336)
!403 = !DILocation(line: 171, column: 12, scope: !337)
!404 = !DILocation(line: 173, column: 7, scope: !405)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 173, column: 7)
!406 = distinct !DILexicalBlock(scope: !336, file: !2, line: 172, column: 5)
!407 = !DILocation(line: 175, column: 15, scope: !335)
!408 = !DILocation(line: 175, column: 21, scope: !335)
!409 = !DILocation(line: 175, column: 26, scope: !335)
!410 = !DILocation(line: 175, column: 32, scope: !335)
!411 = !DILocation(line: 175, column: 38, scope: !335)
!412 = !DILocation(line: 175, column: 12, scope: !336)
!413 = !DILocation(line: 177, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !2, line: 177, column: 7)
!415 = distinct !DILexicalBlock(scope: !335, file: !2, line: 176, column: 5)
!416 = !DILocation(line: 179, column: 18, scope: !334)
!417 = !DILocation(line: 179, column: 23, scope: !334)
!418 = !DILocation(line: 179, column: 12, scope: !335)
!419 = !DILocation(line: 181, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !2, line: 181, column: 7)
!421 = distinct !DILexicalBlock(scope: !334, file: !2, line: 180, column: 5)
!422 = !DILocation(line: 183, column: 23, scope: !333)
!423 = !DILocation(line: 183, column: 28, scope: !333)
!424 = !DILocation(line: 183, column: 32, scope: !333)
!425 = !DILocation(line: 183, column: 12, scope: !334)
!426 = !DILocation(line: 0, scope: !332)
!427 = !DILocation(line: 193, column: 21, scope: !343)
!428 = !DILocation(line: 193, column: 7, scope: !344)
!429 = !{!195, !199, i64 24}
!430 = !{!195, !196, i64 16}
!431 = !DILocation(line: 185, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !433, file: !2, line: 185, column: 7)
!433 = distinct !DILexicalBlock(scope: !333, file: !2, line: 184, column: 5)
!434 = !DILocalVariable(name: "m", arg: 1, scope: !435, file: !111, line: 270, type: !318)
!435 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !111, file: !111, line: 270, type: !436, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!122, !318, !151, !151}
!438 = !{!434, !439, !440}
!439 = !DILocalVariable(name: "i", arg: 2, scope: !435, file: !111, line: 270, type: !151)
!440 = !DILocalVariable(name: "j", arg: 3, scope: !435, file: !111, line: 270, type: !151)
!441 = !DILocation(line: 0, scope: !435, inlinedAt: !442)
!442 = distinct !DILocation(line: 195, column: 24, scope: !342)
!443 = !DILocation(line: 285, column: 20, scope: !435, inlinedAt: !442)
!444 = !DILocation(line: 285, column: 10, scope: !435, inlinedAt: !442)
!445 = !DILocation(line: 0, scope: !342)
!446 = !DILocation(line: 0, scope: !241, inlinedAt: !447)
!447 = distinct !DILocation(line: 196, column: 11, scope: !342)
!448 = !DILocation(line: 196, column: 13, scope: !241, inlinedAt: !447)
!449 = !DILocation(line: 196, column: 3, scope: !241, inlinedAt: !447)
!450 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !447)
!451 = !DILocation(line: 193, column: 27, scope: !343)
!452 = distinct !{!452, !453}
!453 = !{!"llvm.loop.unroll.disable"}
!454 = !DILocation(line: 201, column: 21, scope: !347)
!455 = !DILocation(line: 201, column: 7, scope: !348)
!456 = !DILocation(line: 209, column: 7, scope: !332)
!457 = !DILocation(line: 228, column: 7, scope: !332)
!458 = !DILocation(line: 230, column: 7, scope: !365)
!459 = distinct !{!459, !428, !460, !288}
!460 = !DILocation(line: 197, column: 9, scope: !344)
!461 = !DILocation(line: 203, column: 47, scope: !346)
!462 = !DILocation(line: 0, scope: !435, inlinedAt: !463)
!463 = distinct !DILocation(line: 203, column: 24, scope: !346)
!464 = !DILocation(line: 285, column: 20, scope: !435, inlinedAt: !463)
!465 = !DILocation(line: 285, column: 10, scope: !435, inlinedAt: !463)
!466 = !DILocation(line: 0, scope: !346)
!467 = !DILocation(line: 0, scope: !241, inlinedAt: !468)
!468 = distinct !DILocation(line: 204, column: 11, scope: !346)
!469 = !DILocation(line: 196, column: 13, scope: !241, inlinedAt: !468)
!470 = !DILocation(line: 196, column: 3, scope: !241, inlinedAt: !468)
!471 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !468)
!472 = distinct !{!472, !455, !473, !288}
!473 = !DILocation(line: 205, column: 9, scope: !348)
!474 = distinct !{!474, !453}
!475 = !DILocation(line: 211, column: 7, scope: !352)
!476 = !DILocation(line: 211, column: 24, scope: !351)
!477 = !DILocation(line: 214, column: 11, scope: !350)
!478 = !DILocation(line: 214, column: 37, scope: !350)
!479 = !DILocation(line: 215, column: 11, scope: !350)
!480 = !DILocation(line: 216, column: 61, scope: !350)
!481 = !DILocation(line: 216, column: 13, scope: !350)
!482 = !DILocalVariable(name: "v", arg: 1, scope: !483, file: !134, line: 175, type: !311)
!483 = distinct !DISubprogram(name: "gsl_vector_get", scope: !134, file: !134, line: 175, type: !484, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{!122, !311, !151}
!486 = !{!482, !487}
!487 = !DILocalVariable(name: "i", arg: 2, scope: !483, file: !134, line: 175, type: !151)
!488 = !DILocation(line: 0, scope: !483, inlinedAt: !489)
!489 = distinct !DILocation(line: 218, column: 23, scope: !350)
!490 = !DILocation(line: 183, column: 13, scope: !483, inlinedAt: !489)
!491 = !DILocation(line: 183, column: 25, scope: !483, inlinedAt: !489)
!492 = !DILocation(line: 183, column: 20, scope: !483, inlinedAt: !489)
!493 = !DILocation(line: 183, column: 10, scope: !483, inlinedAt: !489)
!494 = !DILocation(line: 220, column: 11, scope: !350)
!495 = !DILocation(line: 221, column: 13, scope: !350)
!496 = !DILocation(line: 223, column: 11, scope: !350)
!497 = !DILocation(line: 224, column: 9, scope: !351)
!498 = !DILocation(line: 211, column: 27, scope: !351)
!499 = distinct !{!499, !475, !500, !288}
!500 = !DILocation(line: 224, column: 9, scope: !352)
!501 = !DILocation(line: 230, column: 20, scope: !364)
!502 = !DILocation(line: 233, column: 11, scope: !363)
!503 = !DILocation(line: 233, column: 37, scope: !363)
!504 = !DILocation(line: 234, column: 11, scope: !363)
!505 = !DILocation(line: 234, column: 81, scope: !363)
!506 = !DILocation(line: 234, column: 37, scope: !363)
!507 = !DILocation(line: 0, scope: !483, inlinedAt: !508)
!508 = distinct !DILocation(line: 235, column: 23, scope: !363)
!509 = !DILocation(line: 183, column: 13, scope: !483, inlinedAt: !508)
!510 = !DILocation(line: 183, column: 25, scope: !483, inlinedAt: !508)
!511 = !DILocation(line: 183, column: 20, scope: !483, inlinedAt: !508)
!512 = !DILocation(line: 183, column: 10, scope: !483, inlinedAt: !508)
!513 = !DILocation(line: 237, column: 11, scope: !363)
!514 = !DILocation(line: 238, column: 50, scope: !363)
!515 = !DILocation(line: 238, column: 13, scope: !363)
!516 = !DILocation(line: 240, column: 11, scope: !363)
!517 = !DILocation(line: 241, column: 9, scope: !364)
!518 = !DILocation(line: 230, column: 23, scope: !364)
!519 = distinct !{!519, !458, !520, !288}
!520 = !DILocation(line: 241, column: 9, scope: !365)
!521 = !DILocation(line: 0, scope: !339)
!522 = !DILocation(line: 245, column: 1, scope: !315)
!523 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !111, file: !111, line: 209, type: !524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !109}
!526 = !DISubprogram(name: "gsl_matrix_const_row", scope: !111, file: !111, line: 158, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{!355, !318, !151}
!529 = !DISubprogram(name: "gsl_vector_const_subvector", scope: !134, file: !134, line: 114, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DISubroutineType(types: !531)
!531 = !{!355, !311, !115, !115}
!532 = !DISubprogram(name: "gsl_matrix_const_column", scope: !111, file: !111, line: 162, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!533 = distinct !DISubprogram(name: "gsl_linalg_bidiag_unpack2", scope: !2, file: !2, line: 248, type: !534, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{!60, !109, !132, !132, !109}
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !550, !551, !555, !556, !557, !558, !562, !566, !567}
!537 = !DILocalVariable(name: "A", arg: 1, scope: !533, file: !2, line: 248, type: !109)
!538 = !DILocalVariable(name: "tau_U", arg: 2, scope: !533, file: !2, line: 249, type: !132)
!539 = !DILocalVariable(name: "tau_V", arg: 3, scope: !533, file: !2, line: 250, type: !132)
!540 = !DILocalVariable(name: "V", arg: 4, scope: !533, file: !2, line: 251, type: !109)
!541 = !DILocalVariable(name: "M", scope: !533, file: !2, line: 253, type: !151)
!542 = !DILocalVariable(name: "N", scope: !533, file: !2, line: 254, type: !151)
!543 = !DILocalVariable(name: "K", scope: !533, file: !2, line: 256, type: !151)
!544 = !DILocalVariable(name: "i", scope: !545, file: !2, line: 276, type: !115)
!545 = distinct !DILexicalBlock(scope: !546, file: !2, line: 275, column: 5)
!546 = distinct !DILexicalBlock(scope: !547, file: !2, line: 270, column: 12)
!547 = distinct !DILexicalBlock(scope: !548, file: !2, line: 266, column: 12)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 262, column: 12)
!549 = distinct !DILexicalBlock(scope: !533, file: !2, line: 258, column: 7)
!550 = !DILocalVariable(name: "j", scope: !545, file: !2, line: 276, type: !115)
!551 = !DILocalVariable(name: "r", scope: !552, file: !2, line: 285, type: !353)
!552 = distinct !DILexicalBlock(scope: !553, file: !2, line: 283, column: 9)
!553 = distinct !DILexicalBlock(scope: !554, file: !2, line: 282, column: 7)
!554 = distinct !DILexicalBlock(scope: !545, file: !2, line: 282, column: 7)
!555 = !DILocalVariable(name: "h", scope: !552, file: !2, line: 286, type: !353)
!556 = !DILocalVariable(name: "ti", scope: !552, file: !2, line: 289, type: !122)
!557 = !DILocalVariable(name: "m", scope: !552, file: !2, line: 291, type: !169)
!558 = !DILocalVariable(name: "Aij", scope: !559, file: !2, line: 301, type: !122)
!559 = distinct !DILexicalBlock(scope: !560, file: !2, line: 300, column: 9)
!560 = distinct !DILexicalBlock(scope: !561, file: !2, line: 299, column: 7)
!561 = distinct !DILexicalBlock(scope: !545, file: !2, line: 299, column: 7)
!562 = !DILocalVariable(name: "tj", scope: !563, file: !2, line: 311, type: !122)
!563 = distinct !DILexicalBlock(scope: !564, file: !2, line: 309, column: 9)
!564 = distinct !DILexicalBlock(scope: !565, file: !2, line: 308, column: 7)
!565 = distinct !DILexicalBlock(scope: !545, file: !2, line: 308, column: 7)
!566 = !DILocalVariable(name: "Ajj", scope: !563, file: !2, line: 312, type: !122)
!567 = !DILocalVariable(name: "m", scope: !563, file: !2, line: 313, type: !169)
!568 = distinct !DIAssignID()
!569 = !DILocation(line: 0, scope: !552)
!570 = distinct !DIAssignID()
!571 = distinct !DIAssignID()
!572 = distinct !DIAssignID()
!573 = !DILocation(line: 0, scope: !563)
!574 = !DILocation(line: 0, scope: !533)
!575 = !DILocation(line: 253, column: 23, scope: !533)
!576 = !DILocation(line: 254, column: 23, scope: !533)
!577 = !DILocation(line: 256, column: 20, scope: !533)
!578 = !DILocation(line: 258, column: 7, scope: !533)
!579 = !DILocation(line: 260, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !581, file: !2, line: 260, column: 7)
!581 = distinct !DILexicalBlock(scope: !549, file: !2, line: 259, column: 5)
!582 = !DILocation(line: 262, column: 19, scope: !548)
!583 = !DILocation(line: 262, column: 24, scope: !548)
!584 = !DILocation(line: 262, column: 12, scope: !549)
!585 = !DILocation(line: 264, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !2, line: 264, column: 7)
!587 = distinct !DILexicalBlock(scope: !548, file: !2, line: 263, column: 5)
!588 = !DILocation(line: 266, column: 19, scope: !547)
!589 = !DILocation(line: 266, column: 24, scope: !547)
!590 = !DILocation(line: 266, column: 28, scope: !547)
!591 = !DILocation(line: 266, column: 12, scope: !548)
!592 = !DILocation(line: 268, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !2, line: 268, column: 7)
!594 = distinct !DILexicalBlock(scope: !547, file: !2, line: 267, column: 5)
!595 = !DILocation(line: 270, column: 15, scope: !546)
!596 = !DILocation(line: 270, column: 21, scope: !546)
!597 = !DILocation(line: 270, column: 26, scope: !546)
!598 = !DILocation(line: 270, column: 32, scope: !546)
!599 = !DILocation(line: 270, column: 38, scope: !546)
!600 = !DILocation(line: 270, column: 12, scope: !547)
!601 = !DILocation(line: 272, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !2, line: 272, column: 7)
!603 = distinct !DILexicalBlock(scope: !546, file: !2, line: 271, column: 5)
!604 = !DILocation(line: 280, column: 7, scope: !545)
!605 = !DILocation(line: 282, column: 18, scope: !554)
!606 = !DILocation(line: 0, scope: !545)
!607 = !DILocation(line: 282, column: 27, scope: !553)
!608 = !DILocation(line: 282, column: 7, scope: !554)
!609 = !DILocation(line: 299, column: 7, scope: !561)
!610 = !DILocation(line: 282, column: 24, scope: !553)
!611 = !DILocation(line: 285, column: 11, scope: !552)
!612 = !DILocation(line: 285, column: 37, scope: !552)
!613 = !DILocation(line: 286, column: 11, scope: !552)
!614 = !DILocation(line: 287, column: 61, scope: !552)
!615 = !DILocation(line: 287, column: 13, scope: !552)
!616 = !DILocation(line: 0, scope: !483, inlinedAt: !617)
!617 = distinct !DILocation(line: 289, column: 23, scope: !552)
!618 = !DILocation(line: 183, column: 13, scope: !483, inlinedAt: !617)
!619 = !DILocation(line: 183, column: 25, scope: !483, inlinedAt: !617)
!620 = !DILocation(line: 183, column: 20, scope: !483, inlinedAt: !617)
!621 = !DILocation(line: 183, column: 10, scope: !483, inlinedAt: !617)
!622 = !DILocation(line: 291, column: 11, scope: !552)
!623 = !DILocation(line: 292, column: 13, scope: !552)
!624 = !DILocation(line: 294, column: 11, scope: !552)
!625 = !DILocation(line: 295, column: 9, scope: !553)
!626 = distinct !{!626, !608, !627, !288}
!627 = !DILocation(line: 295, column: 9, scope: !554)
!628 = !DILocation(line: 301, column: 47, scope: !559)
!629 = !DILocation(line: 0, scope: !435, inlinedAt: !630)
!630 = distinct !DILocation(line: 301, column: 24, scope: !559)
!631 = !DILocation(line: 285, column: 20, scope: !435, inlinedAt: !630)
!632 = !DILocation(line: 285, column: 10, scope: !435, inlinedAt: !630)
!633 = !DILocation(line: 0, scope: !559)
!634 = !DILocation(line: 0, scope: !241, inlinedAt: !635)
!635 = distinct !DILocation(line: 302, column: 11, scope: !559)
!636 = !DILocation(line: 196, column: 13, scope: !241, inlinedAt: !635)
!637 = !DILocation(line: 196, column: 3, scope: !241, inlinedAt: !635)
!638 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !635)
!639 = distinct !{!639, !453}
!640 = !DILocation(line: 308, column: 23, scope: !564)
!641 = !DILocation(line: 308, column: 7, scope: !565)
!642 = distinct !{!642, !609, !643, !288}
!643 = !DILocation(line: 303, column: 9, scope: !561)
!644 = !DILocation(line: 308, column: 20, scope: !564)
!645 = !DILocation(line: 0, scope: !483, inlinedAt: !646)
!646 = distinct !DILocation(line: 311, column: 23, scope: !563)
!647 = !DILocation(line: 183, column: 13, scope: !483, inlinedAt: !646)
!648 = !DILocation(line: 183, column: 25, scope: !483, inlinedAt: !646)
!649 = !DILocation(line: 183, column: 20, scope: !483, inlinedAt: !646)
!650 = !DILocation(line: 183, column: 10, scope: !483, inlinedAt: !646)
!651 = !DILocation(line: 0, scope: !435, inlinedAt: !652)
!652 = distinct !DILocation(line: 312, column: 24, scope: !563)
!653 = !DILocation(line: 285, column: 13, scope: !435, inlinedAt: !652)
!654 = !DILocation(line: 285, column: 25, scope: !435, inlinedAt: !652)
!655 = !DILocation(line: 285, column: 20, scope: !435, inlinedAt: !652)
!656 = !DILocation(line: 285, column: 10, scope: !435, inlinedAt: !652)
!657 = !DILocation(line: 313, column: 11, scope: !563)
!658 = !DILocation(line: 313, column: 63, scope: !563)
!659 = !DILocation(line: 313, column: 68, scope: !563)
!660 = !DILocation(line: 313, column: 31, scope: !563)
!661 = !DILocation(line: 0, scope: !241, inlinedAt: !662)
!662 = distinct !DILocation(line: 315, column: 11, scope: !563)
!663 = !DILocation(line: 196, column: 6, scope: !241, inlinedAt: !662)
!664 = !DILocation(line: 196, column: 18, scope: !241, inlinedAt: !662)
!665 = !DILocation(line: 196, column: 13, scope: !241, inlinedAt: !662)
!666 = !DILocation(line: 196, column: 3, scope: !241, inlinedAt: !662)
!667 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !662)
!668 = !DILocation(line: 316, column: 11, scope: !563)
!669 = !DILocation(line: 317, column: 9, scope: !564)
!670 = distinct !{!670, !641, !671, !288}
!671 = !DILocation(line: 317, column: 9, scope: !565)
!672 = !DILocation(line: 0, scope: !549)
!673 = !DILocation(line: 321, column: 1, scope: !533)
!674 = !DISubprogram(name: "gsl_linalg_householder_hm1", scope: !302, file: !302, line: 109, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!675 = !DISubroutineType(types: !676)
!676 = !{!60, !122, !109}
!677 = distinct !DISubprogram(name: "gsl_linalg_bidiag_unpack_B", scope: !2, file: !2, line: 325, type: !678, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !56, retainedNodes: !680)
!678 = !DISubroutineType(types: !679)
!679 = !{!60, !318, !132, !132}
!680 = !{!681, !682, !683, !684, !685, !686, !687, !691, !695}
!681 = !DILocalVariable(name: "A", arg: 1, scope: !677, file: !2, line: 325, type: !318)
!682 = !DILocalVariable(name: "diag", arg: 2, scope: !677, file: !2, line: 326, type: !132)
!683 = !DILocalVariable(name: "superdiag", arg: 3, scope: !677, file: !2, line: 327, type: !132)
!684 = !DILocalVariable(name: "M", scope: !677, file: !2, line: 329, type: !151)
!685 = !DILocalVariable(name: "N", scope: !677, file: !2, line: 330, type: !151)
!686 = !DILocalVariable(name: "K", scope: !677, file: !2, line: 332, type: !151)
!687 = !DILocalVariable(name: "i", scope: !688, file: !2, line: 344, type: !115)
!688 = distinct !DILexicalBlock(scope: !689, file: !2, line: 343, column: 5)
!689 = distinct !DILexicalBlock(scope: !690, file: !2, line: 338, column: 12)
!690 = distinct !DILexicalBlock(scope: !677, file: !2, line: 334, column: 7)
!691 = !DILocalVariable(name: "Aii", scope: !692, file: !2, line: 350, type: !122)
!692 = distinct !DILexicalBlock(scope: !693, file: !2, line: 349, column: 9)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 348, column: 7)
!694 = distinct !DILexicalBlock(scope: !688, file: !2, line: 348, column: 7)
!695 = !DILocalVariable(name: "Aij", scope: !696, file: !2, line: 358, type: !122)
!696 = distinct !DILexicalBlock(scope: !697, file: !2, line: 357, column: 9)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 356, column: 7)
!698 = distinct !DILexicalBlock(scope: !688, file: !2, line: 356, column: 7)
!699 = !DILocation(line: 0, scope: !677)
!700 = !DILocation(line: 329, column: 23, scope: !677)
!701 = !DILocation(line: 330, column: 23, scope: !677)
!702 = !DILocation(line: 332, column: 20, scope: !677)
!703 = !DILocation(line: 334, column: 13, scope: !690)
!704 = !DILocation(line: 334, column: 18, scope: !690)
!705 = !DILocation(line: 334, column: 7, scope: !677)
!706 = !DILocation(line: 336, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !2, line: 336, column: 7)
!708 = distinct !DILexicalBlock(scope: !690, file: !2, line: 335, column: 5)
!709 = !DILocation(line: 338, column: 23, scope: !689)
!710 = !DILocation(line: 338, column: 28, scope: !689)
!711 = !DILocation(line: 338, column: 32, scope: !689)
!712 = !DILocation(line: 338, column: 12, scope: !690)
!713 = !DILocation(line: 0, scope: !688)
!714 = !DILocation(line: 348, column: 21, scope: !693)
!715 = !DILocation(line: 348, column: 7, scope: !694)
!716 = !DILocation(line: 340, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !2, line: 340, column: 7)
!718 = distinct !DILexicalBlock(scope: !689, file: !2, line: 339, column: 5)
!719 = !DILocation(line: 0, scope: !435, inlinedAt: !720)
!720 = distinct !DILocation(line: 350, column: 24, scope: !692)
!721 = !DILocation(line: 285, column: 20, scope: !435, inlinedAt: !720)
!722 = !DILocation(line: 285, column: 10, scope: !435, inlinedAt: !720)
!723 = !DILocation(line: 0, scope: !692)
!724 = !DILocation(line: 0, scope: !241, inlinedAt: !725)
!725 = distinct !DILocation(line: 351, column: 11, scope: !692)
!726 = !DILocation(line: 196, column: 13, scope: !241, inlinedAt: !725)
!727 = !DILocation(line: 196, column: 3, scope: !241, inlinedAt: !725)
!728 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !725)
!729 = !DILocation(line: 348, column: 27, scope: !693)
!730 = distinct !{!730, !453}
!731 = !DILocation(line: 356, column: 21, scope: !697)
!732 = !DILocation(line: 356, column: 7, scope: !698)
!733 = distinct !{!733, !715, !734, !288}
!734 = !DILocation(line: 352, column: 9, scope: !694)
!735 = !DILocation(line: 358, column: 47, scope: !696)
!736 = !DILocation(line: 0, scope: !435, inlinedAt: !737)
!737 = distinct !DILocation(line: 358, column: 24, scope: !696)
!738 = !DILocation(line: 285, column: 20, scope: !435, inlinedAt: !737)
!739 = !DILocation(line: 285, column: 10, scope: !435, inlinedAt: !737)
!740 = !DILocation(line: 0, scope: !696)
!741 = !DILocation(line: 0, scope: !241, inlinedAt: !742)
!742 = distinct !DILocation(line: 359, column: 11, scope: !696)
!743 = !DILocation(line: 196, column: 13, scope: !241, inlinedAt: !742)
!744 = !DILocation(line: 196, column: 3, scope: !241, inlinedAt: !742)
!745 = !DILocation(line: 196, column: 26, scope: !241, inlinedAt: !742)
!746 = distinct !{!746, !732, !747, !288}
!747 = !DILocation(line: 360, column: 9, scope: !698)
!748 = distinct !{!748, !453}
!749 = !DILocation(line: 0, scope: !690)
!750 = !DILocation(line: 364, column: 1, scope: !677)
