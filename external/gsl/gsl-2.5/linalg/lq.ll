; ModuleID = 'lq.c'
source_filename = "lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_const_view = type { %struct.gsl_vector }
%struct._gsl_matrix_const_view = type { %struct.gsl_matrix }

@.str = private unnamed_addr constant [29 x i8] c"size of tau must be MIN(M,N)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"lq.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [25 x i8] c"LQ matrix must be square\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [30 x i8] c"matrix size must match b size\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [37 x i8] c"matrix size must match solution size\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [34 x i8] c"matrix size must match x/rhs size\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [25 x i8] c"LQ matrix must have M>=N\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [37 x i8] c"matrix size must match residual size\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [30 x i8] c"matrix size must match x size\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [32 x i8] c"matrix size must match rhs size\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [24 x i8] c"R matrix must be square\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [22 x i8] c"vector size must be M\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [23 x i8] c"Q matrix must be M x M\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [23 x i8] c"R matrix must be N x M\00", align 1, !dbg !58
@.str.14 = private unnamed_addr constant [37 x i8] c"Q matrix must be N x N if L is M x N\00", align 1, !dbg !60
@.str.15 = private unnamed_addr constant [33 x i8] c"w must be length N if L is M x N\00", align 1, !dbg !62
@.str.16 = private unnamed_addr constant [33 x i8] c"v must be length M if L is M x N\00", align 1, !dbg !67

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_decomp(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !134 {
  %3 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !198
  call void @llvm.dbg.assign(metadata i1 undef, metadata !179, metadata !DIExpression(), metadata !198, metadata ptr %3, metadata !DIExpression()), !dbg !199
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !200
  call void @llvm.dbg.assign(metadata i1 undef, metadata !188, metadata !DIExpression(), metadata !200, metadata ptr %4, metadata !DIExpression()), !dbg !199
  %5 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !201
  call void @llvm.dbg.assign(metadata i1 undef, metadata !190, metadata !DIExpression(), metadata !201, metadata ptr %5, metadata !DIExpression()), !dbg !202
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !171, metadata !DIExpression()), !dbg !203
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !172, metadata !DIExpression()), !dbg !203
  %6 = load i64, ptr %0, align 8, !dbg !204, !tbaa !205
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !173, metadata !DIExpression()), !dbg !203
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !212
  %8 = load i64, ptr %7, align 8, !dbg !212, !tbaa !213
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !175, metadata !DIExpression()), !dbg !203
  %9 = load i64, ptr %1, align 8, !dbg !214, !tbaa !215
  %10 = tail call i64 @llvm.umin.i64(i64 %8, i64 %6), !dbg !217
  %11 = icmp eq i64 %9, %10, !dbg !218
  br i1 %11, label %12, label %17, !dbg !219

12:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 0, metadata !176, metadata !DIExpression()), !dbg !220
  %13 = icmp eq i64 %9, 0, !dbg !221
  br i1 %13, label %33, label %14, !dbg !222

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %18, !dbg !222

17:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 19) #6, !dbg !223
  br label %33, !dbg !223

18:                                               ; preds = %14, %31
  %19 = phi i64 [ 0, %14 ], [ %26, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !176, metadata !DIExpression()), !dbg !220
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6, !dbg !226
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %3, ptr noundef nonnull %0, i64 noundef %19) #6, !dbg !227
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !228
  %20 = sub i64 %8, %19, !dbg !229
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %3, i64 noundef %19, i64 noundef %20) #6, !dbg !230
  %21 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %4) #6, !dbg !231
  tail call void @llvm.dbg.value(metadata double %21, metadata !189, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !232, metadata !DIExpression()), !dbg !239
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !237, metadata !DIExpression()), !dbg !239
  tail call void @llvm.dbg.value(metadata double %21, metadata !238, metadata !DIExpression()), !dbg !239
  %22 = load ptr, ptr %15, align 8, !dbg !241, !tbaa !242
  %23 = load i64, ptr %16, align 8, !dbg !243, !tbaa !244
  %24 = mul i64 %23, %19, !dbg !245
  %25 = getelementptr inbounds double, ptr %22, i64 %24, !dbg !246
  store double %21, ptr %25, align 8, !dbg !247, !tbaa !248
  %26 = add nuw i64 %19, 1, !dbg !250
  %27 = icmp ult i64 %26, %6, !dbg !251
  br i1 %27, label %28, label %31, !dbg !252

28:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #6, !dbg !253
  %29 = sub i64 %6, %26, !dbg !254
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %26, i64 noundef %19, i64 noundef %29, i64 noundef %20) #6, !dbg !255
  %30 = call i32 @gsl_linalg_householder_mh(double noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !dbg !256
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #6, !dbg !257
  br label %31, !dbg !258

31:                                               ; preds = %28, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !259
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6, !dbg !259
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !176, metadata !DIExpression()), !dbg !220
  %32 = icmp eq i64 %26, %9, !dbg !221
  br i1 %32, label %33, label %18, !dbg !222, !llvm.loop !260

33:                                               ; preds = %31, %12, %17
  %34 = phi i32 [ 19, %17 ], [ 0, %12 ], [ 0, %31 ], !dbg !263
  ret i32 %34, !dbg !264
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !265 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !270 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !273 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !276 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !280 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !283 i32 @gsl_linalg_householder_mh(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_solve_T(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !288 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !294, metadata !DIExpression()), !dbg !298
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !295, metadata !DIExpression()), !dbg !298
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !296, metadata !DIExpression()), !dbg !298
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !297, metadata !DIExpression()), !dbg !298
  %5 = load i64, ptr %0, align 8, !dbg !299, !tbaa !205
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !301
  %7 = load i64, ptr %6, align 8, !dbg !301, !tbaa !213
  %8 = icmp eq i64 %5, %7, !dbg !302
  br i1 %8, label %10, label %9, !dbg !303

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 134, i32 noundef 20) #6, !dbg !304
  br label %31, !dbg !304

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !307, !tbaa !215
  %12 = icmp eq i64 %5, %11, !dbg !309
  br i1 %12, label %14, label %13, !dbg !310

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 138, i32 noundef 19) #6, !dbg !311
  br label %31, !dbg !311

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !314, !tbaa !215
  %16 = icmp eq i64 %5, %15, !dbg !316
  br i1 %16, label %18, label %17, !dbg !317

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 142, i32 noundef 19) #6, !dbg !318
  br label %31, !dbg !318

18:                                               ; preds = %14
  %19 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2) #6, !dbg !321
  call void @llvm.dbg.value(metadata ptr %0, metadata !323, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata ptr %1, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata ptr %3, metadata !329, metadata !DIExpression()), !dbg !330
  %20 = load i64, ptr %0, align 8, !dbg !332, !tbaa !205
  %21 = load i64, ptr %6, align 8, !dbg !334, !tbaa !213
  %22 = icmp eq i64 %20, %21, !dbg !335
  br i1 %22, label %24, label %23, !dbg !336

23:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 20) #6, !dbg !337
  br label %31, !dbg !337

24:                                               ; preds = %18
  %25 = load i64, ptr %3, align 8, !dbg !340, !tbaa !215
  %26 = icmp eq i64 %20, %25, !dbg !342
  br i1 %26, label %28, label %27, !dbg !343

27:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 19) #6, !dbg !344
  br label %31, !dbg !344

28:                                               ; preds = %24
  %29 = tail call i32 @gsl_linalg_LQ_vecQT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3), !dbg !347, !range !349
  %30 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #6, !dbg !350
  br label %31, !dbg !351

31:                                               ; preds = %28, %27, %23, %9, %13, %17
  %32 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 0, %23 ], [ 0, %27 ], [ 0, %28 ], !dbg !352
  ret i32 %32, !dbg !353
}

declare !dbg !354 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_svx_T(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !324 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !323, metadata !DIExpression()), !dbg !357
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !328, metadata !DIExpression()), !dbg !357
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !329, metadata !DIExpression()), !dbg !357
  %4 = load i64, ptr %0, align 8, !dbg !358, !tbaa !205
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !359
  %6 = load i64, ptr %5, align 8, !dbg !359, !tbaa !213
  %7 = icmp eq i64 %4, %6, !dbg !360
  br i1 %7, label %9, label %8, !dbg !361

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 20) #6, !dbg !362
  br label %16, !dbg !362

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8, !dbg !363, !tbaa !215
  %11 = icmp eq i64 %4, %10, !dbg !364
  br i1 %11, label %13, label %12, !dbg !365

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 19) #6, !dbg !366
  br label %16, !dbg !366

13:                                               ; preds = %9
  %14 = tail call i32 @gsl_linalg_LQ_vecQT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2), !dbg !367, !range !349
  %15 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #6, !dbg !368
  br label %16, !dbg !369

16:                                               ; preds = %8, %12, %13
  %17 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 0, %13 ], !dbg !370
  ret i32 %17, !dbg !371
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_vecQT(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !372 {
  %4 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !396
  call void @llvm.dbg.assign(metadata i1 undef, metadata !383, metadata !DIExpression(), metadata !396, metadata ptr %4, metadata !DIExpression()), !dbg !397
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !398
  call void @llvm.dbg.assign(metadata i1 undef, metadata !393, metadata !DIExpression(), metadata !398, metadata ptr %5, metadata !DIExpression()), !dbg !397
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !399
  call void @llvm.dbg.assign(metadata i1 undef, metadata !394, metadata !DIExpression(), metadata !399, metadata ptr %6, metadata !DIExpression()), !dbg !397
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !374, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !375, metadata !DIExpression()), !dbg !400
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !376, metadata !DIExpression()), !dbg !400
  %7 = load i64, ptr %0, align 8, !dbg !401, !tbaa !205
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !377, metadata !DIExpression()), !dbg !400
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !402
  %9 = load i64, ptr %8, align 8, !dbg !402, !tbaa !213
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !378, metadata !DIExpression()), !dbg !400
  %10 = load i64, ptr %1, align 8, !dbg !403, !tbaa !215
  %11 = tail call i64 @llvm.umin.i64(i64 %9, i64 %7), !dbg !404
  %12 = icmp eq i64 %10, %11, !dbg !405
  br i1 %12, label %14, label %13, !dbg !406

13:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 340, i32 noundef 19) #6, !dbg !407
  br label %34, !dbg !407

14:                                               ; preds = %3
  %15 = load i64, ptr %2, align 8, !dbg !410, !tbaa !215
  %16 = icmp eq i64 %15, %9, !dbg !411
  br i1 %16, label %17, label %22, !dbg !412

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i64 0, metadata !379, metadata !DIExpression()), !dbg !413
  %18 = icmp eq i64 %10, 0, !dbg !414
  br i1 %18, label %34, label %19, !dbg !415

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %23, !dbg !415

22:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 344, i32 noundef 19) #6, !dbg !416
  br label %34, !dbg !416

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %32, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !379, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !419
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %24) #6, !dbg !420
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !421
  %25 = sub i64 %9, %24, !dbg !422
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %24, i64 noundef %25) #6, !dbg !423
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !424
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %2, i64 noundef %24, i64 noundef %25) #6, !dbg !425
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !426, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !431, metadata !DIExpression()), !dbg !432
  %26 = load ptr, ptr %20, align 8, !dbg !434, !tbaa !242
  %27 = load i64, ptr %21, align 8, !dbg !435, !tbaa !244
  %28 = mul i64 %27, %24, !dbg !436
  %29 = getelementptr inbounds double, ptr %26, i64 %28, !dbg !437
  %30 = load double, ptr %29, align 8, !dbg !437, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %30, metadata !395, metadata !DIExpression()), !dbg !397
  %31 = call i32 @gsl_linalg_householder_hv(double noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !438
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !439
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !439
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !439
  %32 = add nuw i64 %24, 1, !dbg !440
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !379, metadata !DIExpression()), !dbg !413
  %33 = icmp eq i64 %32, %10, !dbg !414
  br i1 %33, label %34, label %23, !dbg !415, !llvm.loop !441

34:                                               ; preds = %23, %17, %22, %13
  %35 = phi i32 [ 19, %13 ], [ 19, %22 ], [ 0, %17 ], [ 0, %23 ], !dbg !443
  ret i32 %35, !dbg !444
}

declare !dbg !445 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_lssolve_T(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !453 {
  %6 = alloca %struct._gsl_matrix_const_view, align 8, !DIAssignID !477
  call void @llvm.dbg.assign(metadata i1 undef, metadata !464, metadata !DIExpression(), metadata !477, metadata ptr %6, metadata !DIExpression()), !dbg !478
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !476, metadata !DIExpression(), metadata !479, metadata ptr %7, metadata !DIExpression()), !dbg !478
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !457, metadata !DIExpression()), !dbg !480
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !458, metadata !DIExpression()), !dbg !480
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !459, metadata !DIExpression()), !dbg !480
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !460, metadata !DIExpression()), !dbg !480
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !461, metadata !DIExpression()), !dbg !480
  %8 = load i64, ptr %0, align 8, !dbg !481, !tbaa !205
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !462, metadata !DIExpression()), !dbg !480
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !482
  %10 = load i64, ptr %9, align 8, !dbg !482, !tbaa !213
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !463, metadata !DIExpression()), !dbg !480
  %11 = icmp ult i64 %10, %8, !dbg !483
  br i1 %11, label %12, label %13, !dbg !484

12:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 207, i32 noundef 19) #6, !dbg !485
  br label %31, !dbg !485

13:                                               ; preds = %5
  %14 = load i64, ptr %2, align 8, !dbg !488, !tbaa !215
  %15 = icmp eq i64 %10, %14, !dbg !489
  br i1 %15, label %17, label %16, !dbg !490

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef 19) #6, !dbg !491
  br label %31, !dbg !491

17:                                               ; preds = %13
  %18 = load i64, ptr %3, align 8, !dbg !494, !tbaa !215
  %19 = icmp eq i64 %8, %18, !dbg !495
  br i1 %19, label %21, label %20, !dbg !496

20:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 215, i32 noundef 19) #6, !dbg !497
  br label %31, !dbg !497

21:                                               ; preds = %17
  %22 = load i64, ptr %4, align 8, !dbg !500, !tbaa !215
  %23 = icmp eq i64 %10, %22, !dbg !501
  br i1 %23, label %25, label %24, !dbg !502

24:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 19) #6, !dbg !503
  br label %31, !dbg !503

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #6, !dbg !506
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %6, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %8, i64 noundef %8) #6, !dbg !507
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6, !dbg !508
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %8) #6, !dbg !509
  %26 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %2) #6, !dbg !510
  %27 = call i32 @gsl_linalg_LQ_vecQT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4), !dbg !511, !range !349
  %28 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %7) #6, !dbg !512
  %29 = call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %6, ptr noundef nonnull %3) #6, !dbg !513
  call void @gsl_vector_set_zero(ptr noundef nonnull %7) #6, !dbg !514
  %30 = call i32 @gsl_linalg_LQ_vecQ(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4), !dbg !515, !range !349
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !516
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #6, !dbg !516
  br label %31

31:                                               ; preds = %25, %24, %20, %16, %12
  %32 = phi i32 [ 19, %12 ], [ 19, %16 ], [ 19, %20 ], [ 19, %24 ], [ 0, %25 ], !dbg !517
  ret i32 %32, !dbg !518
}

declare !dbg !519 void @gsl_matrix_const_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_const_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !522 void @gsl_vector_set_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_vecQ(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !525 {
  %4 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !543
  call void @llvm.dbg.assign(metadata i1 undef, metadata !536, metadata !DIExpression(), metadata !543, metadata ptr %4, metadata !DIExpression()), !dbg !544
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !545
  call void @llvm.dbg.assign(metadata i1 undef, metadata !540, metadata !DIExpression(), metadata !545, metadata ptr %5, metadata !DIExpression()), !dbg !544
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !541, metadata !DIExpression(), metadata !546, metadata ptr %6, metadata !DIExpression()), !dbg !544
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !527, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !528, metadata !DIExpression()), !dbg !547
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !529, metadata !DIExpression()), !dbg !547
  %7 = load i64, ptr %0, align 8, !dbg !548, !tbaa !205
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !530, metadata !DIExpression()), !dbg !547
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !549
  %9 = load i64, ptr %8, align 8, !dbg !549, !tbaa !213
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !531, metadata !DIExpression()), !dbg !547
  %10 = load i64, ptr %1, align 8, !dbg !550, !tbaa !215
  %11 = tail call i64 @llvm.umin.i64(i64 %9, i64 %7), !dbg !551
  %12 = icmp eq i64 %10, %11, !dbg !552
  br i1 %12, label %14, label %13, !dbg !553

13:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 373, i32 noundef 19) #6, !dbg !554
  br label %34, !dbg !554

14:                                               ; preds = %3
  %15 = load i64, ptr %2, align 8, !dbg !557, !tbaa !215
  %16 = icmp eq i64 %15, %9, !dbg !558
  br i1 %16, label %17, label %22, !dbg !559

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !532, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !532, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !560
  %18 = icmp eq i64 %10, 0, !dbg !561
  br i1 %18, label %34, label %19, !dbg !562

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %23, !dbg !562

22:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 377, i32 noundef 19) #6, !dbg !563
  br label %34, !dbg !563

23:                                               ; preds = %19, %23
  %24 = phi i64 [ %10, %19 ], [ %25, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !532, metadata !DIExpression()), !dbg !560
  %25 = add i64 %24, -1, !dbg !566
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !532, metadata !DIExpression()), !dbg !560
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !567
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %25) #6, !dbg !568
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !569
  %26 = sub i64 %9, %25, !dbg !570
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %25, i64 noundef %26) #6, !dbg !571
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !572
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %2, i64 noundef %25, i64 noundef %26) #6, !dbg !573
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !426, metadata !DIExpression()), !dbg !574
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !431, metadata !DIExpression()), !dbg !574
  %27 = load ptr, ptr %20, align 8, !dbg !576, !tbaa !242
  %28 = load i64, ptr %21, align 8, !dbg !577, !tbaa !244
  %29 = mul i64 %28, %25, !dbg !578
  %30 = getelementptr inbounds double, ptr %27, i64 %29, !dbg !579
  %31 = load double, ptr %30, align 8, !dbg !579, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %31, metadata !542, metadata !DIExpression()), !dbg !544
  %32 = call i32 @gsl_linalg_householder_hv(double noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !580
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !581
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !581
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !581
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !532, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !560
  %33 = icmp eq i64 %25, 0, !dbg !561
  br i1 %33, label %34, label %23, !dbg !562, !llvm.loop !582

34:                                               ; preds = %23, %17, %22, %13
  %35 = phi i32 [ 19, %13 ], [ 19, %22 ], [ 0, %17 ], [ 0, %23 ], !dbg !584
  ret i32 %35, !dbg !585
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_Lsolve_T(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !586 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !588, metadata !DIExpression()), !dbg !591
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !589, metadata !DIExpression()), !dbg !591
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !590, metadata !DIExpression()), !dbg !591
  %4 = load i64, ptr %0, align 8, !dbg !592, !tbaa !205
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !594
  %6 = load i64, ptr %5, align 8, !dbg !594, !tbaa !213
  %7 = icmp eq i64 %4, %6, !dbg !595
  br i1 %7, label %9, label %8, !dbg !596

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 254, i32 noundef 20) #6, !dbg !597
  br label %20, !dbg !597

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !600, !tbaa !215
  %11 = icmp eq i64 %4, %10, !dbg !602
  br i1 %11, label %13, label %12, !dbg !603

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 258, i32 noundef 19) #6, !dbg !604
  br label %20, !dbg !604

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !607, !tbaa !215
  %15 = icmp eq i64 %4, %14, !dbg !609
  br i1 %15, label %17, label %16, !dbg !610

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 262, i32 noundef 19) #6, !dbg !611
  br label %20, !dbg !611

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %1) #6, !dbg !614
  %19 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #6, !dbg !616
  br label %20, !dbg !617

20:                                               ; preds = %8, %12, %16, %17
  %21 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 0, %17 ], !dbg !618
  ret i32 %21, !dbg !619
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_Lsvx_T(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !620 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !624, metadata !DIExpression()), !dbg !626
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !625, metadata !DIExpression()), !dbg !626
  %3 = load i64, ptr %0, align 8, !dbg !627, !tbaa !205
  %4 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !629
  %5 = load i64, ptr %4, align 8, !dbg !629, !tbaa !213
  %6 = icmp eq i64 %3, %5, !dbg !630
  br i1 %6, label %8, label %7, !dbg !631

7:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef 20) #6, !dbg !632
  br label %14, !dbg !632

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8, !dbg !635, !tbaa !215
  %10 = icmp eq i64 %3, %9, !dbg !637
  br i1 %10, label %12, label %11, !dbg !638

11:                                               ; preds = %8
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 288, i32 noundef 19) #6, !dbg !639
  br label %14, !dbg !639

12:                                               ; preds = %8
  %13 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %1) #6, !dbg !642
  br label %14, !dbg !644

14:                                               ; preds = %7, %11, %12
  %15 = phi i32 [ 20, %7 ], [ 19, %11 ], [ 0, %12 ], !dbg !645
  ret i32 %15, !dbg !646
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_L_solve_T(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !647 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !649, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !650, metadata !DIExpression()), !dbg !652
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !651, metadata !DIExpression()), !dbg !652
  %4 = load i64, ptr %0, align 8, !dbg !653, !tbaa !205
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !655
  %6 = load i64, ptr %5, align 8, !dbg !655, !tbaa !213
  %7 = icmp eq i64 %4, %6, !dbg !656
  br i1 %7, label %9, label %8, !dbg !657

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 305, i32 noundef 20) #6, !dbg !658
  br label %20, !dbg !658

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !661, !tbaa !215
  %11 = icmp eq i64 %4, %10, !dbg !663
  br i1 %11, label %13, label %12, !dbg !664

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 19) #6, !dbg !665
  br label %20, !dbg !665

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !668, !tbaa !215
  %15 = icmp eq i64 %4, %14, !dbg !670
  br i1 %15, label %17, label %16, !dbg !671

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 313, i32 noundef 19) #6, !dbg !672
  br label %20, !dbg !672

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %1) #6, !dbg !675
  %19 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #6, !dbg !677
  br label %20, !dbg !678

20:                                               ; preds = %8, %12, %16, %17
  %21 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 0, %17 ], !dbg !679
  ret i32 %21, !dbg !680
}

declare !dbg !681 void @gsl_matrix_const_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !684 void @gsl_vector_const_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !687 i32 @gsl_linalg_householder_hv(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_unpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !dbg !690 {
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !714
  call void @llvm.dbg.assign(metadata i1 undef, metadata !707, metadata !DIExpression(), metadata !714, metadata ptr %5, metadata !DIExpression()), !dbg !715
  %6 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !711, metadata !DIExpression(), metadata !716, metadata ptr %6, metadata !DIExpression()), !dbg !715
  %7 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !717
  call void @llvm.dbg.assign(metadata i1 undef, metadata !712, metadata !DIExpression(), metadata !717, metadata ptr %7, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !694, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !695, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !696, metadata !DIExpression()), !dbg !718
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !697, metadata !DIExpression()), !dbg !718
  %8 = load i64, ptr %0, align 8, !dbg !719, !tbaa !205
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !698, metadata !DIExpression()), !dbg !718
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !720
  %10 = load i64, ptr %9, align 8, !dbg !720, !tbaa !213
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !699, metadata !DIExpression()), !dbg !718
  %11 = load i64, ptr %2, align 8, !dbg !721, !tbaa !205
  %12 = icmp eq i64 %11, %10, !dbg !722
  br i1 %12, label %13, label %17, !dbg !723

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !724
  %15 = load i64, ptr %14, align 8, !dbg !724, !tbaa !213
  %16 = icmp eq i64 %15, %10, !dbg !725
  br i1 %16, label %18, label %17, !dbg !726

17:                                               ; preds = %4, %13
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 409, i32 noundef 20) #6, !dbg !727
  br label %120, !dbg !727

18:                                               ; preds = %13
  %19 = load i64, ptr %3, align 8, !dbg !730, !tbaa !205
  %20 = icmp eq i64 %19, %8, !dbg !731
  br i1 %20, label %21, label %25, !dbg !732

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 1, !dbg !733
  %23 = load i64, ptr %22, align 8, !dbg !733, !tbaa !213
  %24 = icmp eq i64 %23, %10, !dbg !734
  br i1 %24, label %26, label %25, !dbg !735

25:                                               ; preds = %18, %21
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 413, i32 noundef 20) #6, !dbg !736
  br label %120, !dbg !736

26:                                               ; preds = %21
  %27 = load i64, ptr %1, align 8, !dbg !739, !tbaa !215
  %28 = tail call i64 @llvm.umin.i64(i64 %10, i64 %8), !dbg !740
  %29 = icmp eq i64 %27, %28, !dbg !741
  br i1 %29, label %31, label %30, !dbg !742

30:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 19) #6, !dbg !743
  br label %120, !dbg !743

31:                                               ; preds = %26
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %2) #6, !dbg !746
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !700, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !747
  %32 = icmp eq i64 %27, 0, !dbg !748
  br i1 %32, label %36, label %33, !dbg !749

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %35 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %49, !dbg !749

36:                                               ; preds = %49, %31
  tail call void @llvm.dbg.value(metadata i64 0, metadata !700, metadata !DIExpression()), !dbg !747
  %37 = icmp eq i64 %8, 0, !dbg !750
  br i1 %37, label %120, label %38, !dbg !753

38:                                               ; preds = %36
  %39 = add i64 %10, -1
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !754
  %42 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !755
  %44 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !754
  %46 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !755
  %48 = getelementptr i8, ptr %45, i64 8
  br label %60, !dbg !753

49:                                               ; preds = %33, %49
  %50 = phi i64 [ %27, %33 ], [ %51, %49 ]
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !700, metadata !DIExpression()), !dbg !747
  %51 = add i64 %50, -1, !dbg !756
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !700, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !757
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %51) #6, !dbg !758
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !759
  %52 = sub i64 %10, %51, !dbg !760
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %6, ptr noundef nonnull %5, i64 noundef %51, i64 noundef %52) #6, !dbg !761
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #6, !dbg !762
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %7, ptr noundef nonnull %2, i64 noundef %51, i64 noundef %51, i64 noundef %52, i64 noundef %52) #6, !dbg !763
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !426, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !431, metadata !DIExpression()), !dbg !764
  %53 = load ptr, ptr %34, align 8, !dbg !766, !tbaa !242
  %54 = load i64, ptr %35, align 8, !dbg !767, !tbaa !244
  %55 = mul i64 %54, %51, !dbg !768
  %56 = getelementptr inbounds double, ptr %53, i64 %55, !dbg !769
  %57 = load double, ptr %56, align 8, !dbg !769, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %57, metadata !713, metadata !DIExpression()), !dbg !715
  %58 = call i32 @gsl_linalg_householder_mh(double noundef %57, ptr noundef nonnull %6, ptr noundef nonnull %7) #6, !dbg !770
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #6, !dbg !771
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !771
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !747
  %59 = icmp eq i64 %51, 0, !dbg !748
  br i1 %59, label %36, label %49, !dbg !749, !llvm.loop !772

60:                                               ; preds = %38, %117
  %61 = phi i64 [ 0, %38 ], [ %118, %117 ]
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !700, metadata !DIExpression()), !dbg !747
  %62 = call i64 @llvm.umin.i64(i64 %61, i64 %39), !dbg !774
  %63 = add nuw i64 %62, 1, !dbg !774
  %64 = shl i64 %61, 3, !dbg !774
  %65 = call i64 @llvm.umin.i64(i64 %61, i64 %39), !dbg !774
  %66 = shl i64 %65, 3, !dbg !774
  %67 = sub i64 %39, %65, !dbg !774
  %68 = shl nuw i64 %67, 3, !dbg !774
  %69 = add i64 %65, 1, !dbg !774
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !706, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata i64 0, metadata !705, metadata !DIExpression()), !dbg !747
  %70 = mul i64 %43, %61
  %71 = getelementptr double, ptr %41, i64 %70
  %72 = mul i64 %47, %61
  %73 = getelementptr double, ptr %45, i64 %72
  %74 = and i64 %63, 3, !dbg !776
  %75 = icmp ult i64 %62, 3, !dbg !776
  br i1 %75, label %78, label %76, !dbg !776

76:                                               ; preds = %60
  %77 = and i64 %63, -4, !dbg !776
  br label %96, !dbg !776

78:                                               ; preds = %96, %60
  %79 = phi i64 [ 0, %60 ], [ %114, %96 ]
  %80 = icmp eq i64 %74, 0, !dbg !776
  br i1 %80, label %90, label %81, !dbg !776

81:                                               ; preds = %78, %81
  %82 = phi i64 [ %87, %81 ], [ %79, %78 ]
  %83 = phi i64 [ %88, %81 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !705, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !783, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !784, metadata !DIExpression()), !dbg !785
  %84 = getelementptr double, ptr %71, i64 %82, !dbg !788
  %85 = load double, ptr %84, align 8, !dbg !788, !tbaa !248
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !789, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !795, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !796, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata double %85, metadata !797, metadata !DIExpression()), !dbg !798
  %86 = getelementptr double, ptr %73, i64 %82, !dbg !800
  store double %85, ptr %86, align 8, !dbg !801, !tbaa !248
  %87 = add nuw i64 %82, 1, !dbg !802
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !705, metadata !DIExpression()), !dbg !747
  %88 = add i64 %83, 1, !dbg !776
  %89 = icmp eq i64 %88, %74, !dbg !776
  br i1 %89, label %90, label %81, !dbg !776, !llvm.loop !803

90:                                               ; preds = %81, %78
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !705, metadata !DIExpression()), !dbg !747
  %91 = icmp ult i64 %69, %10, !dbg !805
  br i1 %91, label %92, label %117, !dbg !808

92:                                               ; preds = %90
  %93 = mul i64 %47, %64, !dbg !808
  %94 = getelementptr i8, ptr %48, i64 %93, !dbg !808
  %95 = getelementptr i8, ptr %94, i64 %66, !dbg !808
  call void @llvm.memset.p0.i64(ptr align 8 %95, i8 0, i64 %68, i1 false), !dbg !809, !tbaa !248
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !789, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !795, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !796, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !797, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !705, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !747
  br label %117, !dbg !812

96:                                               ; preds = %96, %76
  %97 = phi i64 [ 0, %76 ], [ %114, %96 ]
  %98 = phi i64 [ 0, %76 ], [ %115, %96 ]
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !705, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !783, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !784, metadata !DIExpression()), !dbg !785
  %99 = getelementptr double, ptr %71, i64 %97, !dbg !788
  %100 = load double, ptr %99, align 8, !dbg !788, !tbaa !248
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !789, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !795, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %97, metadata !796, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata double %100, metadata !797, metadata !DIExpression()), !dbg !798
  %101 = getelementptr double, ptr %73, i64 %97, !dbg !800
  store double %100, ptr %101, align 8, !dbg !801, !tbaa !248
  %102 = or disjoint i64 %97, 1, !dbg !802
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !705, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !705, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !783, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !784, metadata !DIExpression()), !dbg !785
  %103 = getelementptr double, ptr %71, i64 %102, !dbg !788
  %104 = load double, ptr %103, align 8, !dbg !788, !tbaa !248
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !789, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !795, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %102, metadata !796, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata double %104, metadata !797, metadata !DIExpression()), !dbg !798
  %105 = getelementptr double, ptr %73, i64 %102, !dbg !800
  store double %104, ptr %105, align 8, !dbg !801, !tbaa !248
  %106 = or disjoint i64 %97, 2, !dbg !802
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !705, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !705, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !783, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !784, metadata !DIExpression()), !dbg !785
  %107 = getelementptr double, ptr %71, i64 %106, !dbg !788
  %108 = load double, ptr %107, align 8, !dbg !788, !tbaa !248
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !789, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !795, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %106, metadata !796, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata double %108, metadata !797, metadata !DIExpression()), !dbg !798
  %109 = getelementptr double, ptr %73, i64 %106, !dbg !800
  store double %108, ptr %109, align 8, !dbg !801, !tbaa !248
  %110 = or disjoint i64 %97, 3, !dbg !802
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !705, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !705, metadata !DIExpression()), !dbg !747
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !783, metadata !DIExpression()), !dbg !785
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !784, metadata !DIExpression()), !dbg !785
  %111 = getelementptr double, ptr %71, i64 %110, !dbg !788
  %112 = load double, ptr %111, align 8, !dbg !788, !tbaa !248
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !789, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !795, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata i64 %110, metadata !796, metadata !DIExpression()), !dbg !798
  tail call void @llvm.dbg.value(metadata double %112, metadata !797, metadata !DIExpression()), !dbg !798
  %113 = getelementptr double, ptr %73, i64 %110, !dbg !800
  store double %112, ptr %113, align 8, !dbg !801, !tbaa !248
  %114 = add nuw i64 %97, 4, !dbg !802
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !705, metadata !DIExpression()), !dbg !747
  %115 = add i64 %98, 4, !dbg !776
  %116 = icmp eq i64 %115, %77, !dbg !776
  br i1 %116, label %78, label %96, !dbg !776, !llvm.loop !813

117:                                              ; preds = %92, %90
  %118 = add nuw i64 %61, 1, !dbg !812
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !700, metadata !DIExpression()), !dbg !747
  %119 = icmp eq i64 %118, %8, !dbg !750
  br i1 %119, label %120, label %60, !dbg !753, !llvm.loop !815

120:                                              ; preds = %117, %36, %30, %25, %17
  %121 = phi i32 [ 20, %17 ], [ 20, %25 ], [ 19, %30 ], [ 0, %36 ], [ 0, %117 ], !dbg !817
  ret i32 %121, !dbg !818
}

declare !dbg !819 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !dbg !822 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !826, metadata !DIExpression()), !dbg !858
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !827, metadata !DIExpression()), !dbg !858
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !828, metadata !DIExpression()), !dbg !858
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !829, metadata !DIExpression()), !dbg !858
  %5 = load i64, ptr %1, align 8, !dbg !859, !tbaa !205
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !830, metadata !DIExpression()), !dbg !858
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !860
  %7 = load i64, ptr %6, align 8, !dbg !860, !tbaa !213
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !831, metadata !DIExpression()), !dbg !858
  %8 = load i64, ptr %0, align 8, !dbg !861, !tbaa !205
  %9 = icmp eq i64 %8, %7, !dbg !862
  br i1 %9, label %10, label %14, !dbg !863

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !864
  %12 = load i64, ptr %11, align 8, !dbg !864, !tbaa !213
  %13 = icmp eq i64 %12, %7, !dbg !865
  br i1 %13, label %15, label %14, !dbg !866

14:                                               ; preds = %4, %10
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 475, i32 noundef 20) #6, !dbg !867
  br label %317, !dbg !867

15:                                               ; preds = %10
  %16 = load i64, ptr %3, align 8, !dbg !870, !tbaa !215
  %17 = icmp eq i64 %16, %7, !dbg !871
  br i1 %17, label %19, label %18, !dbg !872

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 479, i32 noundef 19) #6, !dbg !873
  br label %317, !dbg !873

19:                                               ; preds = %15
  %20 = load i64, ptr %2, align 8, !dbg !876, !tbaa !215
  %21 = icmp eq i64 %20, %5, !dbg !877
  br i1 %21, label %22, label %38, !dbg !878

22:                                               ; preds = %19
  %23 = add i64 %7, -1, !dbg !879
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !837, metadata !DIExpression()), !dbg !880
  %24 = icmp eq i64 %23, 0, !dbg !881
  %25 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !242
  br i1 %24, label %150, label %27, !dbg !882

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !244
  %30 = icmp eq i64 %7, 0
  %31 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %32 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %33 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %34 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %35 = and i64 %7, 1
  %36 = and i64 %7, -2
  %37 = icmp eq i64 %35, 0
  br label %39, !dbg !882

38:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 483, i32 noundef 19) #6, !dbg !883
  br label %317, !dbg !883

39:                                               ; preds = %27, %147
  %40 = phi i64 [ %23, %27 ], [ %148, %147 ]
  %41 = phi i64 [ %7, %27 ], [ %40, %147 ]
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !886
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !431, metadata !DIExpression()), !dbg !886
  %42 = mul i64 %29, %40, !dbg !888
  %43 = getelementptr inbounds double, ptr %26, i64 %42, !dbg !889
  %44 = load double, ptr %43, align 8, !dbg !889, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %44, metadata !844, metadata !DIExpression()), !dbg !890
  %45 = add i64 %41, -2, !dbg !891
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !892
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !431, metadata !DIExpression()), !dbg !892
  %46 = mul i64 %29, %45, !dbg !894
  %47 = getelementptr inbounds double, ptr %26, i64 %46, !dbg !895
  %48 = load double, ptr %47, align 8, !dbg !895, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %48, metadata !845, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata double %48, metadata !896, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata double %44, metadata !901, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr undef, metadata !902, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr undef, metadata !903, metadata !DIExpression()), !dbg !912
  %49 = fcmp oeq double %44, 0.000000e+00, !dbg !914
  br i1 %49, label %70, label %50, !dbg !915

50:                                               ; preds = %39
  %51 = tail call double @llvm.fabs.f64(double %44), !dbg !916
  %52 = tail call double @llvm.fabs.f64(double %48), !dbg !917
  %53 = fcmp ogt double %51, %52, !dbg !918
  br i1 %53, label %54, label %62, !dbg !919

54:                                               ; preds = %50
  %55 = fneg double %48, !dbg !920
  %56 = fdiv double %55, %44, !dbg !921
  call void @llvm.dbg.value(metadata double %56, metadata !904, metadata !DIExpression()), !dbg !922
  %57 = fmul double %56, %56, !dbg !923
  %58 = fadd double %57, 1.000000e+00, !dbg !924
  %59 = tail call double @llvm.sqrt.f64(double %58), !dbg !925
  %60 = fdiv double 1.000000e+00, %59, !dbg !926
  call void @llvm.dbg.value(metadata double %60, metadata !908, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double %60, metadata !843, metadata !DIExpression()), !dbg !890
  %61 = fmul double %56, %60, !dbg !927
  tail call void @llvm.dbg.value(metadata double %61, metadata !839, metadata !DIExpression()), !dbg !890
  br label %70, !dbg !928

62:                                               ; preds = %50
  %63 = fneg double %44, !dbg !929
  %64 = fdiv double %63, %48, !dbg !930
  call void @llvm.dbg.value(metadata double %64, metadata !909, metadata !DIExpression()), !dbg !931
  %65 = fmul double %64, %64, !dbg !932
  %66 = fadd double %65, 1.000000e+00, !dbg !933
  %67 = tail call double @llvm.sqrt.f64(double %66), !dbg !934
  %68 = fdiv double 1.000000e+00, %67, !dbg !935
  call void @llvm.dbg.value(metadata double %68, metadata !911, metadata !DIExpression()), !dbg !931
  tail call void @llvm.dbg.value(metadata double %68, metadata !839, metadata !DIExpression()), !dbg !890
  %69 = fmul double %64, %68, !dbg !936
  tail call void @llvm.dbg.value(metadata double %69, metadata !843, metadata !DIExpression()), !dbg !890
  br label %70

70:                                               ; preds = %39, %54, %62
  %71 = phi double [ %61, %54 ], [ %68, %62 ], [ 1.000000e+00, %39 ], !dbg !937
  %72 = phi double [ %60, %54 ], [ %69, %62 ], [ 0.000000e+00, %39 ], !dbg !937
  tail call void @llvm.dbg.value(metadata double %72, metadata !843, metadata !DIExpression()), !dbg !890
  tail call void @llvm.dbg.value(metadata double %71, metadata !839, metadata !DIExpression()), !dbg !890
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !938, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !943, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !944, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %71, metadata !945, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %72, metadata !946, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !431, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata double %48, metadata !947, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !431, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata double %44, metadata !948, metadata !DIExpression()), !dbg !949
  %73 = fmul double %48, %71, !dbg !955
  %74 = fmul double %44, %72, !dbg !956
  %75 = fsub double %73, %74, !dbg !957
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !232, metadata !DIExpression()), !dbg !958
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !237, metadata !DIExpression()), !dbg !958
  tail call void @llvm.dbg.value(metadata double %75, metadata !238, metadata !DIExpression()), !dbg !958
  store double %75, ptr %47, align 8, !dbg !960, !tbaa !248
  %76 = fmul double %48, %72, !dbg !961
  %77 = fmul double %44, %71, !dbg !962
  %78 = fadd double %77, %76, !dbg !963
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !232, metadata !DIExpression()), !dbg !964
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !237, metadata !DIExpression()), !dbg !964
  tail call void @llvm.dbg.value(metadata double %78, metadata !238, metadata !DIExpression()), !dbg !964
  store double %78, ptr %43, align 8, !dbg !966, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %7, metadata !967, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %5, metadata !973, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr %0, metadata !974, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr %1, metadata !975, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %45, metadata !976, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %40, metadata !977, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata double %71, metadata !978, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata double %72, metadata !979, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 0, metadata !980, metadata !DIExpression()), !dbg !991
  br i1 %30, label %125, label %79, !dbg !993

79:                                               ; preds = %70
  %80 = load ptr, ptr %31, align 8, !tbaa !754
  %81 = load i64, ptr %32, align 8, !tbaa !755
  %82 = mul i64 %81, %45
  %83 = getelementptr double, ptr %80, i64 %82
  %84 = mul i64 %81, %40
  %85 = getelementptr double, ptr %80, i64 %84
  br label %86, !dbg !993

86:                                               ; preds = %86, %79
  %87 = phi i64 [ 0, %79 ], [ %110, %86 ]
  %88 = phi i64 [ 0, %79 ], [ %111, %86 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !980, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %45, metadata !783, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %87, metadata !784, metadata !DIExpression()), !dbg !994
  %89 = getelementptr double, ptr %83, i64 %87, !dbg !996
  %90 = load double, ptr %89, align 8, !dbg !996, !tbaa !248
  call void @llvm.dbg.value(metadata double %90, metadata !981, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %40, metadata !783, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %87, metadata !784, metadata !DIExpression()), !dbg !998
  %91 = getelementptr double, ptr %85, i64 %87, !dbg !1000
  %92 = load double, ptr %91, align 8, !dbg !1000, !tbaa !248
  call void @llvm.dbg.value(metadata double %92, metadata !985, metadata !DIExpression()), !dbg !997
  %93 = fmul double %71, %90, !dbg !1001
  %94 = fmul double %72, %92, !dbg !1002
  %95 = fsub double %93, %94, !dbg !1003
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i64 %45, metadata !795, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i64 %87, metadata !796, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata double %95, metadata !797, metadata !DIExpression()), !dbg !1004
  store double %95, ptr %89, align 8, !dbg !1006, !tbaa !248
  %96 = fmul double %72, %90, !dbg !1007
  %97 = fmul double %71, %92, !dbg !1008
  %98 = fadd double %96, %97, !dbg !1009
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %40, metadata !795, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %87, metadata !796, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double %98, metadata !797, metadata !DIExpression()), !dbg !1010
  store double %98, ptr %91, align 8, !dbg !1012, !tbaa !248
  %99 = or disjoint i64 %87, 1, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %99, metadata !980, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %99, metadata !980, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %45, metadata !783, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %99, metadata !784, metadata !DIExpression()), !dbg !994
  %100 = getelementptr double, ptr %83, i64 %99, !dbg !996
  %101 = load double, ptr %100, align 8, !dbg !996, !tbaa !248
  call void @llvm.dbg.value(metadata double %101, metadata !981, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %40, metadata !783, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %99, metadata !784, metadata !DIExpression()), !dbg !998
  %102 = getelementptr double, ptr %85, i64 %99, !dbg !1000
  %103 = load double, ptr %102, align 8, !dbg !1000, !tbaa !248
  call void @llvm.dbg.value(metadata double %103, metadata !985, metadata !DIExpression()), !dbg !997
  %104 = fmul double %71, %101, !dbg !1001
  %105 = fmul double %72, %103, !dbg !1002
  %106 = fsub double %104, %105, !dbg !1003
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i64 %45, metadata !795, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i64 %99, metadata !796, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata double %106, metadata !797, metadata !DIExpression()), !dbg !1004
  store double %106, ptr %100, align 8, !dbg !1006, !tbaa !248
  %107 = fmul double %72, %101, !dbg !1007
  %108 = fmul double %71, %103, !dbg !1008
  %109 = fadd double %107, %108, !dbg !1009
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %40, metadata !795, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %99, metadata !796, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double %109, metadata !797, metadata !DIExpression()), !dbg !1010
  store double %109, ptr %102, align 8, !dbg !1012, !tbaa !248
  %110 = add nuw i64 %87, 2, !dbg !1013
  call void @llvm.dbg.value(metadata i64 %110, metadata !980, metadata !DIExpression()), !dbg !991
  %111 = add i64 %88, 2, !dbg !993
  %112 = icmp eq i64 %111, %36, !dbg !993
  br i1 %112, label %113, label %86, !dbg !993, !llvm.loop !1014

113:                                              ; preds = %86
  br i1 %37, label %125, label %114, !dbg !993

114:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i64 %110, metadata !980, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %45, metadata !783, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %110, metadata !784, metadata !DIExpression()), !dbg !994
  %115 = getelementptr double, ptr %83, i64 %110, !dbg !996
  %116 = load double, ptr %115, align 8, !dbg !996, !tbaa !248
  call void @llvm.dbg.value(metadata double %116, metadata !981, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %40, metadata !783, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i64 %110, metadata !784, metadata !DIExpression()), !dbg !998
  %117 = getelementptr double, ptr %85, i64 %110, !dbg !1000
  %118 = load double, ptr %117, align 8, !dbg !1000, !tbaa !248
  call void @llvm.dbg.value(metadata double %118, metadata !985, metadata !DIExpression()), !dbg !997
  %119 = fmul double %71, %116, !dbg !1001
  %120 = fmul double %72, %118, !dbg !1002
  %121 = fsub double %119, %120, !dbg !1003
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i64 %45, metadata !795, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata i64 %110, metadata !796, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata double %121, metadata !797, metadata !DIExpression()), !dbg !1004
  store double %121, ptr %115, align 8, !dbg !1006, !tbaa !248
  %122 = fmul double %72, %116, !dbg !1007
  %123 = fmul double %71, %118, !dbg !1008
  %124 = fadd double %122, %123, !dbg !1009
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %40, metadata !795, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %110, metadata !796, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata double %124, metadata !797, metadata !DIExpression()), !dbg !1010
  store double %124, ptr %117, align 8, !dbg !1012, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %110, metadata !980, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !991
  br label %125, !dbg !1016

125:                                              ; preds = %114, %113, %70
  %126 = tail call i64 @llvm.umin.i64(i64 %45, i64 %40), !dbg !1016
  call void @llvm.dbg.value(metadata i64 %126, metadata !980, metadata !DIExpression()), !dbg !991
  %127 = icmp ult i64 %126, %5, !dbg !1017
  br i1 %127, label %128, label %147, !dbg !1018

128:                                              ; preds = %125
  %129 = load ptr, ptr %33, align 8, !tbaa !754
  %130 = load i64, ptr %34, align 8, !tbaa !755
  br label %131, !dbg !1018

131:                                              ; preds = %131, %128
  %132 = phi i64 [ %126, %128 ], [ %145, %131 ]
  call void @llvm.dbg.value(metadata i64 %132, metadata !980, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %132, metadata !783, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %45, metadata !784, metadata !DIExpression()), !dbg !1019
  %133 = mul i64 %132, %130, !dbg !1021
  %134 = getelementptr double, ptr %129, i64 %133, !dbg !1022
  %135 = getelementptr double, ptr %134, i64 %45, !dbg !1022
  %136 = load double, ptr %135, align 8, !dbg !1022, !tbaa !248
  call void @llvm.dbg.value(metadata double %136, metadata !986, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %132, metadata !783, metadata !DIExpression()), !dbg !1024
  call void @llvm.dbg.value(metadata i64 %40, metadata !784, metadata !DIExpression()), !dbg !1024
  %137 = getelementptr double, ptr %134, i64 %40, !dbg !1026
  %138 = load double, ptr %137, align 8, !dbg !1026, !tbaa !248
  call void @llvm.dbg.value(metadata double %138, metadata !990, metadata !DIExpression()), !dbg !1023
  %139 = fmul double %71, %136, !dbg !1027
  %140 = fmul double %72, %138, !dbg !1028
  %141 = fsub double %139, %140, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %132, metadata !795, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %45, metadata !796, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata double %141, metadata !797, metadata !DIExpression()), !dbg !1030
  store double %141, ptr %135, align 8, !dbg !1032, !tbaa !248
  %142 = fmul double %72, %136, !dbg !1033
  %143 = fmul double %71, %138, !dbg !1034
  %144 = fadd double %142, %143, !dbg !1035
  call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %132, metadata !795, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %40, metadata !796, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.value(metadata double %144, metadata !797, metadata !DIExpression()), !dbg !1036
  store double %144, ptr %137, align 8, !dbg !1038, !tbaa !248
  %145 = add nuw i64 %132, 1, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %145, metadata !980, metadata !DIExpression()), !dbg !991
  %146 = icmp eq i64 %145, %5, !dbg !1017
  br i1 %146, label %147, label %131, !dbg !1018, !llvm.loop !1040

147:                                              ; preds = %131, %125
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !837, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !880
  %148 = add i64 %40, -1, !dbg !879
  tail call void @llvm.dbg.value(metadata i64 %148, metadata !837, metadata !DIExpression()), !dbg !880
  %149 = icmp eq i64 %148, 0, !dbg !881
  br i1 %149, label %150, label %39, !dbg !882, !llvm.loop !1042

150:                                              ; preds = %147, %22
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !1044
  tail call void @llvm.dbg.value(metadata i64 0, metadata !431, metadata !DIExpression()), !dbg !1044
  %151 = load double, ptr %26, align 8, !dbg !1046, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %151, metadata !838, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata i64 0, metadata !832, metadata !DIExpression()), !dbg !880
  %152 = icmp eq i64 %5, 0, !dbg !1047
  br i1 %152, label %178, label %153, !dbg !1048

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !754
  %156 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !755
  %158 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !242
  %160 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !244
  %162 = and i64 %5, 1, !dbg !1048
  %163 = icmp eq i64 %5, 1, !dbg !1048
  br i1 %163, label %166, label %164, !dbg !1048

164:                                              ; preds = %153
  %165 = and i64 %5, -2, !dbg !1048
  br label %195, !dbg !1048

166:                                              ; preds = %195, %153
  %167 = phi i64 [ 0, %153 ], [ %215, %195 ]
  %168 = icmp eq i64 %162, 0, !dbg !1048
  br i1 %168, label %178, label %169, !dbg !1048

169:                                              ; preds = %166
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !832, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !783, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 0, metadata !784, metadata !DIExpression()), !dbg !1049
  %170 = mul i64 %157, %167, !dbg !1051
  %171 = getelementptr double, ptr %155, i64 %170, !dbg !1052
  %172 = load double, ptr %171, align 8, !dbg !1052, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %172, metadata !846, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !1054
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !431, metadata !DIExpression()), !dbg !1054
  %173 = mul i64 %161, %167, !dbg !1056
  %174 = getelementptr inbounds double, ptr %159, i64 %173, !dbg !1057
  %175 = load double, ptr %174, align 8, !dbg !1057, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %175, metadata !850, metadata !DIExpression()), !dbg !1053
  %176 = fmul double %151, %175, !dbg !1058
  %177 = fadd double %172, %176, !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !795, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata double %177, metadata !797, metadata !DIExpression()), !dbg !1060
  store double %177, ptr %171, align 8, !dbg !1062, !tbaa !248
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !832, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !880
  br label %178

178:                                              ; preds = %169, %166, %150
  %179 = add i64 %5, 1
  %180 = tail call i64 @llvm.umin.i64(i64 %7, i64 %179)
  tail call void @llvm.dbg.value(metadata i64 1, metadata !837, metadata !DIExpression()), !dbg !880
  %181 = icmp ugt i64 %180, 1, !dbg !1063
  br i1 %181, label %182, label %317, !dbg !1064

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !754
  %185 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %186 = load i64, ptr %185, align 8, !tbaa !755
  %187 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !754
  %189 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !755
  %191 = and i64 %7, 1
  %192 = icmp eq i64 %23, 0
  %193 = and i64 %7, -2
  %194 = icmp eq i64 %191, 0
  br label %218, !dbg !1064

195:                                              ; preds = %195, %164
  %196 = phi i64 [ 0, %164 ], [ %215, %195 ]
  %197 = phi i64 [ 0, %164 ], [ %216, %195 ]
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !832, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !783, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 0, metadata !784, metadata !DIExpression()), !dbg !1049
  %198 = mul i64 %157, %196, !dbg !1051
  %199 = getelementptr double, ptr %155, i64 %198, !dbg !1052
  %200 = load double, ptr %199, align 8, !dbg !1052, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %200, metadata !846, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !1054
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !431, metadata !DIExpression()), !dbg !1054
  %201 = mul i64 %161, %196, !dbg !1056
  %202 = getelementptr inbounds double, ptr %159, i64 %201, !dbg !1057
  %203 = load double, ptr %202, align 8, !dbg !1057, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %203, metadata !850, metadata !DIExpression()), !dbg !1053
  %204 = fmul double %151, %203, !dbg !1058
  %205 = fadd double %200, %204, !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !795, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata double %205, metadata !797, metadata !DIExpression()), !dbg !1060
  store double %205, ptr %199, align 8, !dbg !1062, !tbaa !248
  %206 = or disjoint i64 %196, 1, !dbg !1065
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !832, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !832, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !783, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 0, metadata !784, metadata !DIExpression()), !dbg !1049
  %207 = mul i64 %157, %206, !dbg !1051
  %208 = getelementptr double, ptr %155, i64 %207, !dbg !1052
  %209 = load double, ptr %208, align 8, !dbg !1052, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %209, metadata !846, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !1054
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !431, metadata !DIExpression()), !dbg !1054
  %210 = mul i64 %161, %206, !dbg !1056
  %211 = getelementptr inbounds double, ptr %159, i64 %210, !dbg !1057
  %212 = load double, ptr %211, align 8, !dbg !1057, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %212, metadata !850, metadata !DIExpression()), !dbg !1053
  %213 = fmul double %151, %212, !dbg !1058
  %214 = fadd double %209, %213, !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 %206, metadata !795, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata double %214, metadata !797, metadata !DIExpression()), !dbg !1060
  store double %214, ptr %208, align 8, !dbg !1062, !tbaa !248
  %215 = add nuw i64 %196, 2, !dbg !1065
  tail call void @llvm.dbg.value(metadata i64 %215, metadata !832, metadata !DIExpression()), !dbg !880
  %216 = add i64 %197, 2, !dbg !1048
  %217 = icmp eq i64 %216, %165, !dbg !1048
  br i1 %217, label %166, label %195, !dbg !1048, !llvm.loop !1066

218:                                              ; preds = %182, %314
  %219 = phi i64 [ 1, %182 ], [ %315, %314 ]
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !837, metadata !DIExpression()), !dbg !880
  %220 = add i64 %219, -1, !dbg !1068
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 %220, metadata !783, metadata !DIExpression()), !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 %220, metadata !784, metadata !DIExpression()), !dbg !1069
  %221 = mul i64 %186, %220, !dbg !1071
  %222 = getelementptr double, ptr %184, i64 %221, !dbg !1072
  %223 = getelementptr double, ptr %222, i64 %220, !dbg !1072
  %224 = load double, ptr %223, align 8, !dbg !1072, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %224, metadata !856, metadata !DIExpression()), !dbg !1073
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i64 %220, metadata !783, metadata !DIExpression()), !dbg !1074
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !784, metadata !DIExpression()), !dbg !1074
  %225 = getelementptr double, ptr %222, i64 %219, !dbg !1076
  %226 = load double, ptr %225, align 8, !dbg !1076, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %226, metadata !857, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata double %224, metadata !896, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata double %226, metadata !901, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata ptr undef, metadata !902, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.value(metadata ptr undef, metadata !903, metadata !DIExpression()), !dbg !1077
  %227 = fcmp oeq double %226, 0.000000e+00, !dbg !1079
  br i1 %227, label %248, label %228, !dbg !1080

228:                                              ; preds = %218
  %229 = tail call double @llvm.fabs.f64(double %226), !dbg !1081
  %230 = tail call double @llvm.fabs.f64(double %224), !dbg !1082
  %231 = fcmp ogt double %229, %230, !dbg !1083
  br i1 %231, label %232, label %240, !dbg !1084

232:                                              ; preds = %228
  %233 = fneg double %224, !dbg !1085
  %234 = fdiv double %233, %226, !dbg !1086
  call void @llvm.dbg.value(metadata double %234, metadata !904, metadata !DIExpression()), !dbg !1087
  %235 = fmul double %234, %234, !dbg !1088
  %236 = fadd double %235, 1.000000e+00, !dbg !1089
  %237 = tail call double @llvm.sqrt.f64(double %236), !dbg !1090
  %238 = fdiv double 1.000000e+00, %237, !dbg !1091
  call void @llvm.dbg.value(metadata double %238, metadata !908, metadata !DIExpression()), !dbg !1087
  tail call void @llvm.dbg.value(metadata double %238, metadata !855, metadata !DIExpression()), !dbg !1073
  %239 = fmul double %234, %238, !dbg !1092
  tail call void @llvm.dbg.value(metadata double %239, metadata !851, metadata !DIExpression()), !dbg !1073
  br label %248, !dbg !1093

240:                                              ; preds = %228
  %241 = fneg double %226, !dbg !1094
  %242 = fdiv double %241, %224, !dbg !1095
  call void @llvm.dbg.value(metadata double %242, metadata !909, metadata !DIExpression()), !dbg !1096
  %243 = fmul double %242, %242, !dbg !1097
  %244 = fadd double %243, 1.000000e+00, !dbg !1098
  %245 = tail call double @llvm.sqrt.f64(double %244), !dbg !1099
  %246 = fdiv double 1.000000e+00, %245, !dbg !1100
  call void @llvm.dbg.value(metadata double %246, metadata !911, metadata !DIExpression()), !dbg !1096
  tail call void @llvm.dbg.value(metadata double %246, metadata !851, metadata !DIExpression()), !dbg !1073
  %247 = fmul double %242, %246, !dbg !1101
  tail call void @llvm.dbg.value(metadata double %247, metadata !855, metadata !DIExpression()), !dbg !1073
  br label %248

248:                                              ; preds = %218, %232, %240
  %249 = phi double [ %239, %232 ], [ %246, %240 ], [ 1.000000e+00, %218 ], !dbg !1102
  %250 = phi double [ %238, %232 ], [ %247, %240 ], [ 0.000000e+00, %218 ], !dbg !1102
  tail call void @llvm.dbg.value(metadata double %250, metadata !855, metadata !DIExpression()), !dbg !1073
  tail call void @llvm.dbg.value(metadata double %249, metadata !851, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.value(metadata i64 %7, metadata !967, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %5, metadata !973, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr %0, metadata !974, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr %1, metadata !975, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %220, metadata !976, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %219, metadata !977, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata double %249, metadata !978, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata double %250, metadata !979, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 0, metadata !980, metadata !DIExpression()), !dbg !1103
  %251 = mul i64 %190, %220
  %252 = getelementptr double, ptr %188, i64 %251
  %253 = mul i64 %190, %219
  %254 = getelementptr double, ptr %188, i64 %253
  br i1 %192, label %282, label %255, !dbg !1105

255:                                              ; preds = %248, %255
  %256 = phi i64 [ %279, %255 ], [ 0, %248 ]
  %257 = phi i64 [ %280, %255 ], [ 0, %248 ]
  call void @llvm.dbg.value(metadata i64 %256, metadata !980, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %220, metadata !783, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %256, metadata !784, metadata !DIExpression()), !dbg !1106
  %258 = getelementptr double, ptr %252, i64 %256, !dbg !1108
  %259 = load double, ptr %258, align 8, !dbg !1108, !tbaa !248
  call void @llvm.dbg.value(metadata double %259, metadata !981, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %219, metadata !783, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %256, metadata !784, metadata !DIExpression()), !dbg !1110
  %260 = getelementptr double, ptr %254, i64 %256, !dbg !1112
  %261 = load double, ptr %260, align 8, !dbg !1112, !tbaa !248
  call void @llvm.dbg.value(metadata double %261, metadata !985, metadata !DIExpression()), !dbg !1109
  %262 = fmul double %249, %259, !dbg !1113
  %263 = fmul double %250, %261, !dbg !1114
  %264 = fsub double %262, %263, !dbg !1115
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %220, metadata !795, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %256, metadata !796, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata double %264, metadata !797, metadata !DIExpression()), !dbg !1116
  store double %264, ptr %258, align 8, !dbg !1118, !tbaa !248
  %265 = fmul double %250, %259, !dbg !1119
  %266 = fmul double %249, %261, !dbg !1120
  %267 = fadd double %265, %266, !dbg !1121
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %219, metadata !795, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %256, metadata !796, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %267, metadata !797, metadata !DIExpression()), !dbg !1122
  store double %267, ptr %260, align 8, !dbg !1124, !tbaa !248
  %268 = or disjoint i64 %256, 1, !dbg !1125
  call void @llvm.dbg.value(metadata i64 %268, metadata !980, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %268, metadata !980, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %220, metadata !783, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %268, metadata !784, metadata !DIExpression()), !dbg !1106
  %269 = getelementptr double, ptr %252, i64 %268, !dbg !1108
  %270 = load double, ptr %269, align 8, !dbg !1108, !tbaa !248
  call void @llvm.dbg.value(metadata double %270, metadata !981, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %219, metadata !783, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %268, metadata !784, metadata !DIExpression()), !dbg !1110
  %271 = getelementptr double, ptr %254, i64 %268, !dbg !1112
  %272 = load double, ptr %271, align 8, !dbg !1112, !tbaa !248
  call void @llvm.dbg.value(metadata double %272, metadata !985, metadata !DIExpression()), !dbg !1109
  %273 = fmul double %249, %270, !dbg !1113
  %274 = fmul double %250, %272, !dbg !1114
  %275 = fsub double %273, %274, !dbg !1115
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %220, metadata !795, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %268, metadata !796, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata double %275, metadata !797, metadata !DIExpression()), !dbg !1116
  store double %275, ptr %269, align 8, !dbg !1118, !tbaa !248
  %276 = fmul double %250, %270, !dbg !1119
  %277 = fmul double %249, %272, !dbg !1120
  %278 = fadd double %276, %277, !dbg !1121
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %219, metadata !795, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %268, metadata !796, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %278, metadata !797, metadata !DIExpression()), !dbg !1122
  store double %278, ptr %271, align 8, !dbg !1124, !tbaa !248
  %279 = add nuw i64 %256, 2, !dbg !1125
  call void @llvm.dbg.value(metadata i64 %279, metadata !980, metadata !DIExpression()), !dbg !1103
  %280 = add nuw i64 %257, 2, !dbg !1105
  %281 = icmp eq i64 %280, %193, !dbg !1105
  br i1 %281, label %282, label %255, !dbg !1105, !llvm.loop !1126

282:                                              ; preds = %255, %248
  %283 = phi i64 [ 0, %248 ], [ %279, %255 ]
  br i1 %194, label %295, label %284, !dbg !1105

284:                                              ; preds = %282
  call void @llvm.dbg.value(metadata i64 %283, metadata !980, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %220, metadata !783, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %283, metadata !784, metadata !DIExpression()), !dbg !1106
  %285 = getelementptr double, ptr %252, i64 %283, !dbg !1108
  %286 = load double, ptr %285, align 8, !dbg !1108, !tbaa !248
  call void @llvm.dbg.value(metadata double %286, metadata !981, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %219, metadata !783, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %283, metadata !784, metadata !DIExpression()), !dbg !1110
  %287 = getelementptr double, ptr %254, i64 %283, !dbg !1112
  %288 = load double, ptr %287, align 8, !dbg !1112, !tbaa !248
  call void @llvm.dbg.value(metadata double %288, metadata !985, metadata !DIExpression()), !dbg !1109
  %289 = fmul double %249, %286, !dbg !1113
  %290 = fmul double %250, %288, !dbg !1114
  %291 = fsub double %289, %290, !dbg !1115
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %220, metadata !795, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %283, metadata !796, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata double %291, metadata !797, metadata !DIExpression()), !dbg !1116
  store double %291, ptr %285, align 8, !dbg !1118, !tbaa !248
  %292 = fmul double %250, %286, !dbg !1119
  %293 = fmul double %249, %288, !dbg !1120
  %294 = fadd double %292, %293, !dbg !1121
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %219, metadata !795, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %283, metadata !796, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata double %294, metadata !797, metadata !DIExpression()), !dbg !1122
  store double %294, ptr %287, align 8, !dbg !1124, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %283, metadata !980, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1103
  br label %295, !dbg !1128

295:                                              ; preds = %282, %284
  %296 = tail call i64 @llvm.umin.i64(i64 %220, i64 %219), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %296, metadata !980, metadata !DIExpression()), !dbg !1103
  %297 = icmp ult i64 %296, %5, !dbg !1129
  br i1 %297, label %298, label %314, !dbg !1130

298:                                              ; preds = %295, %298
  %299 = phi i64 [ %312, %298 ], [ %296, %295 ]
  call void @llvm.dbg.value(metadata i64 %299, metadata !980, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %299, metadata !783, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %220, metadata !784, metadata !DIExpression()), !dbg !1131
  %300 = mul i64 %299, %186, !dbg !1133
  %301 = getelementptr double, ptr %184, i64 %300, !dbg !1134
  %302 = getelementptr double, ptr %301, i64 %220, !dbg !1134
  %303 = load double, ptr %302, align 8, !dbg !1134, !tbaa !248
  call void @llvm.dbg.value(metadata double %303, metadata !986, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 %299, metadata !783, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i64 %219, metadata !784, metadata !DIExpression()), !dbg !1136
  %304 = getelementptr double, ptr %301, i64 %219, !dbg !1138
  %305 = load double, ptr %304, align 8, !dbg !1138, !tbaa !248
  call void @llvm.dbg.value(metadata double %305, metadata !990, metadata !DIExpression()), !dbg !1135
  %306 = fmul double %249, %303, !dbg !1139
  %307 = fmul double %250, %305, !dbg !1140
  %308 = fsub double %306, %307, !dbg !1141
  call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i64 %299, metadata !795, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i64 %220, metadata !796, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata double %308, metadata !797, metadata !DIExpression()), !dbg !1142
  store double %308, ptr %302, align 8, !dbg !1144, !tbaa !248
  %309 = fmul double %250, %303, !dbg !1145
  %310 = fmul double %249, %305, !dbg !1146
  %311 = fadd double %309, %310, !dbg !1147
  call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %299, metadata !795, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i64 %219, metadata !796, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata double %311, metadata !797, metadata !DIExpression()), !dbg !1148
  store double %311, ptr %304, align 8, !dbg !1150, !tbaa !248
  %312 = add nuw i64 %299, 1, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %312, metadata !980, metadata !DIExpression()), !dbg !1103
  %313 = icmp eq i64 %312, %5, !dbg !1129
  br i1 %313, label %314, label %298, !dbg !1130, !llvm.loop !1152

314:                                              ; preds = %298, %295
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1154
  tail call void @llvm.dbg.value(metadata i64 %220, metadata !795, metadata !DIExpression()), !dbg !1154
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !796, metadata !DIExpression()), !dbg !1154
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !797, metadata !DIExpression()), !dbg !1154
  store double 0.000000e+00, ptr %225, align 8, !dbg !1156, !tbaa !248
  %315 = add nuw i64 %219, 1, !dbg !1157
  tail call void @llvm.dbg.value(metadata i64 %315, metadata !837, metadata !DIExpression()), !dbg !880
  %316 = icmp eq i64 %315, %180, !dbg !1063
  br i1 %316, label %317, label %218, !dbg !1064, !llvm.loop !1158

317:                                              ; preds = %314, %178, %38, %18, %14
  %318 = phi i32 [ 20, %14 ], [ 19, %18 ], [ 19, %38 ], [ 0, %178 ], [ 0, %314 ], !dbg !1160
  ret i32 %318, !dbg !1161
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_LQsolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1162 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1164, metadata !DIExpression()), !dbg !1170
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1165, metadata !DIExpression()), !dbg !1170
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1166, metadata !DIExpression()), !dbg !1170
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1167, metadata !DIExpression()), !dbg !1170
  %5 = load i64, ptr %1, align 8, !dbg !1171, !tbaa !205
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1168, metadata !DIExpression()), !dbg !1170
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !1172
  %7 = load i64, ptr %6, align 8, !dbg !1172, !tbaa !213
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1169, metadata !DIExpression()), !dbg !1170
  %8 = icmp eq i64 %7, %5, !dbg !1173
  br i1 %8, label %9, label %21, !dbg !1175

9:                                                ; preds = %4
  %10 = load i64, ptr %0, align 8, !dbg !1176, !tbaa !205
  %11 = icmp eq i64 %10, %5, !dbg !1178
  br i1 %11, label %12, label %21, !dbg !1179

12:                                               ; preds = %9
  %13 = load i64, ptr %2, align 8, !dbg !1180, !tbaa !215
  %14 = icmp eq i64 %13, %5, !dbg !1181
  br i1 %14, label %15, label %21, !dbg !1182

15:                                               ; preds = %12
  %16 = load i64, ptr %3, align 8, !dbg !1183, !tbaa !215
  %17 = icmp eq i64 %16, %5, !dbg !1184
  br i1 %17, label %18, label %21, !dbg !1185

18:                                               ; preds = %15
  %19 = tail call i32 @gsl_blas_dgemv(i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %2, double noundef 0.000000e+00, ptr noundef nonnull %3) #6, !dbg !1186
  %20 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %1, ptr noundef nonnull %3) #6, !dbg !1188
  br label %21, !dbg !1189

21:                                               ; preds = %9, %12, %15, %4, %18
  %22 = phi i32 [ 0, %18 ], [ 20, %4 ], [ 19, %15 ], [ 19, %12 ], [ 19, %9 ], !dbg !1190
  ret i32 %22, !dbg !1191
}

declare !dbg !1192 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!69}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lq.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3deb576ee267cc2d2a83dd30d1f09a77")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 134, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 25)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 30)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 37)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 175, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 34)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !14, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !24, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 262, type: !19, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 288, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 32)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 305, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 24)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 344, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 22)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 23)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !2, line: 413, type: !55, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 475, type: !24, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 479, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 33)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !64, isLocal: true, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, globals: !125, splitDebugInlining: false, nameTableKind: None)
!70 = !{!71, !110, !116, !121}
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !72, line: 39, baseType: !73, size: 32, elements: !74)
!72 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!75 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!76 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!77 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!78 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!79 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!80 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!81 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!82 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!83 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!84 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!85 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!86 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!87 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!88 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!89 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!90 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!91 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!92 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!93 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!94 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!95 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!96 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!97 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!98 = !DIEnumerator(name: "GSL_ESING", value: 21)
!99 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!100 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!101 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!102 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!103 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!104 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!105 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!106 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!107 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!108 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!109 = !DIEnumerator(name: "GSL_EOF", value: 32)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !111, line: 48, baseType: !112, size: 32, elements: !113)
!111 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !{!114, !115}
!114 = !DIEnumerator(name: "CblasUpper", value: 121)
!115 = !DIEnumerator(name: "CblasLower", value: 122)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !111, line: 47, baseType: !112, size: 32, elements: !117)
!117 = !{!118, !119, !120}
!118 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!119 = !DIEnumerator(name: "CblasTrans", value: 112)
!120 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!121 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !111, line: 49, baseType: !112, size: 32, elements: !122)
!122 = !{!123, !124}
!123 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!124 = !DIEnumerator(name: "CblasUnit", value: 132)
!125 = !{!0, !7, !12, !17, !22, !27, !32, !34, !36, !38, !43, !48, !53, !58, !60, !62, !67}
!126 = !{i32 7, !"Dwarf Version", i32 5}
!127 = !{i32 2, !"Debug Info Version", i32 3}
!128 = !{i32 1, !"wchar_size", i32 4}
!129 = !{i32 8, !"PIC Level", i32 2}
!130 = !{i32 7, !"PIE Level", i32 2}
!131 = !{i32 7, !"uwtable", i32 2}
!132 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!133 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!134 = distinct !DISubprogram(name: "gsl_linalg_LQ_decomp", scope: !2, file: !2, line: 82, type: !135, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !170)
!135 = !DISubroutineType(types: !136)
!136 = !{!73, !137, !160}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !139, line: 50, baseType: !140)
!139 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 42, size: 384, elements: !141)
!141 = !{!142, !146, !147, !148, !151, !159}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !140, file: !139, line: 44, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 18, baseType: !145)
!144 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!145 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !140, file: !139, line: 45, baseType: !143, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !140, file: !139, line: 46, baseType: !143, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !140, file: !139, line: 47, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !140, file: !139, line: 48, baseType: !152, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !154, line: 44, baseType: !155)
!154 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !154, line: 38, size: 128, elements: !156)
!156 = !{!157, !158}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !155, file: !154, line: 40, baseType: !143, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !155, file: !154, line: 41, baseType: !149, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !140, file: !139, line: 49, baseType: !73, size: 32, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !162, line: 50, baseType: !163)
!162 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 42, size: 320, elements: !164)
!164 = !{!165, !166, !167, !168, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !163, file: !162, line: 44, baseType: !143, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !163, file: !162, line: 45, baseType: !143, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !163, file: !162, line: 46, baseType: !149, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !163, file: !162, line: 47, baseType: !152, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !163, file: !162, line: 48, baseType: !73, size: 32, offset: 256)
!170 = !{!171, !172, !173, !175, !176, !179, !188, !189, !190}
!171 = !DILocalVariable(name: "A", arg: 1, scope: !134, file: !2, line: 82, type: !137)
!172 = !DILocalVariable(name: "tau", arg: 2, scope: !134, file: !2, line: 82, type: !160)
!173 = !DILocalVariable(name: "N", scope: !134, file: !2, line: 84, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!175 = !DILocalVariable(name: "M", scope: !134, file: !2, line: 85, type: !174)
!176 = !DILocalVariable(name: "i", scope: !177, file: !2, line: 93, type: !143)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 92, column: 5)
!178 = distinct !DILexicalBlock(scope: !134, file: !2, line: 87, column: 7)
!179 = !DILocalVariable(name: "c_full", scope: !180, file: !2, line: 100, type: !183)
!180 = distinct !DILexicalBlock(scope: !181, file: !2, line: 96, column: 9)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 95, column: 7)
!182 = distinct !DILexicalBlock(scope: !177, file: !2, line: 95, column: 7)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !162, line: 57, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !162, line: 55, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 52, size: 320, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !185, file: !162, line: 54, baseType: !161, size: 320)
!188 = !DILocalVariable(name: "c", scope: !180, file: !2, line: 101, type: !183)
!189 = !DILocalVariable(name: "tau_i", scope: !180, file: !2, line: 103, type: !150)
!190 = !DILocalVariable(name: "m", scope: !191, file: !2, line: 112, type: !193)
!191 = distinct !DILexicalBlock(scope: !192, file: !2, line: 111, column: 13)
!192 = distinct !DILexicalBlock(scope: !180, file: !2, line: 110, column: 15)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !139, line: 57, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !139, line: 55, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 52, size: 384, elements: !196)
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !195, file: !139, line: 54, baseType: !138, size: 384)
!198 = distinct !DIAssignID()
!199 = !DILocation(line: 0, scope: !180)
!200 = distinct !DIAssignID()
!201 = distinct !DIAssignID()
!202 = !DILocation(line: 0, scope: !191)
!203 = !DILocation(line: 0, scope: !134)
!204 = !DILocation(line: 84, column: 23, scope: !134)
!205 = !{!206, !207, i64 0}
!206 = !{!"", !207, i64 0, !207, i64 8, !207, i64 16, !210, i64 24, !210, i64 32, !211, i64 40}
!207 = !{!"long", !208, i64 0}
!208 = !{!"omnipotent char", !209, i64 0}
!209 = !{!"Simple C/C++ TBAA"}
!210 = !{!"any pointer", !208, i64 0}
!211 = !{!"int", !208, i64 0}
!212 = !DILocation(line: 85, column: 23, scope: !134)
!213 = !{!206, !207, i64 8}
!214 = !DILocation(line: 87, column: 12, scope: !178)
!215 = !{!216, !207, i64 0}
!216 = !{!"", !207, i64 0, !207, i64 8, !210, i64 16, !210, i64 24, !211, i64 32}
!217 = !DILocation(line: 87, column: 20, scope: !178)
!218 = !DILocation(line: 87, column: 17, scope: !178)
!219 = !DILocation(line: 87, column: 7, scope: !134)
!220 = !DILocation(line: 0, scope: !177)
!221 = !DILocation(line: 95, column: 21, scope: !181)
!222 = !DILocation(line: 95, column: 7, scope: !182)
!223 = !DILocation(line: 89, column: 7, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 89, column: 7)
!225 = distinct !DILexicalBlock(scope: !178, file: !2, line: 88, column: 5)
!226 = !DILocation(line: 100, column: 11, scope: !180)
!227 = !DILocation(line: 100, column: 36, scope: !180)
!228 = !DILocation(line: 101, column: 11, scope: !180)
!229 = !DILocation(line: 101, column: 75, scope: !180)
!230 = !DILocation(line: 101, column: 31, scope: !180)
!231 = !DILocation(line: 103, column: 26, scope: !180)
!232 = !DILocalVariable(name: "v", arg: 1, scope: !233, file: !162, line: 188, type: !160)
!233 = distinct !DISubprogram(name: "gsl_vector_set", scope: !162, file: !162, line: 188, type: !234, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !160, !174, !150}
!236 = !{!232, !237, !238}
!237 = !DILocalVariable(name: "i", arg: 2, scope: !233, file: !162, line: 188, type: !174)
!238 = !DILocalVariable(name: "x", arg: 3, scope: !233, file: !162, line: 188, type: !150)
!239 = !DILocation(line: 0, scope: !233, inlinedAt: !240)
!240 = distinct !DILocation(line: 105, column: 11, scope: !180)
!241 = !DILocation(line: 196, column: 6, scope: !233, inlinedAt: !240)
!242 = !{!216, !210, i64 16}
!243 = !DILocation(line: 196, column: 18, scope: !233, inlinedAt: !240)
!244 = !{!216, !207, i64 8}
!245 = !DILocation(line: 196, column: 13, scope: !233, inlinedAt: !240)
!246 = !DILocation(line: 196, column: 3, scope: !233, inlinedAt: !240)
!247 = !DILocation(line: 196, column: 26, scope: !233, inlinedAt: !240)
!248 = !{!249, !249, i64 0}
!249 = !{!"double", !208, i64 0}
!250 = !DILocation(line: 110, column: 17, scope: !192)
!251 = !DILocation(line: 110, column: 21, scope: !192)
!252 = !DILocation(line: 110, column: 15, scope: !180)
!253 = !DILocation(line: 112, column: 15, scope: !191)
!254 = !DILocation(line: 112, column: 72, scope: !191)
!255 = !DILocation(line: 112, column: 35, scope: !191)
!256 = !DILocation(line: 113, column: 15, scope: !191)
!257 = !DILocation(line: 114, column: 13, scope: !192)
!258 = !DILocation(line: 114, column: 13, scope: !191)
!259 = !DILocation(line: 115, column: 9, scope: !181)
!260 = distinct !{!260, !222, !261, !262}
!261 = !DILocation(line: 115, column: 9, scope: !182)
!262 = !{!"llvm.loop.mustprogress"}
!263 = !DILocation(line: 0, scope: !178)
!264 = !DILocation(line: 119, column: 1, scope: !134)
!265 = !DISubprogram(name: "gsl_error", scope: !72, file: !72, line: 77, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !268, !268, !73, !73}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!270 = !DISubprogram(name: "gsl_matrix_row", scope: !139, file: !139, line: 106, type: !271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!271 = !DISubroutineType(types: !272)
!272 = !{!184, !137, !174}
!273 = !DISubprogram(name: "gsl_vector_subvector", scope: !162, file: !162, line: 103, type: !274, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DISubroutineType(types: !275)
!275 = !{!184, !160, !143, !143}
!276 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !277, file: !277, line: 94, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!277 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!278 = !DISubroutineType(types: !279)
!279 = !{!150, !160}
!280 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !139, file: !139, line: 101, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DISubroutineType(types: !282)
!282 = !{!194, !137, !174, !174, !174, !174}
!283 = !DISubprogram(name: "gsl_linalg_householder_mh", scope: !277, file: !277, line: 101, type: !284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DISubroutineType(types: !285)
!285 = !{!73, !150, !286, !137}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!288 = distinct !DISubprogram(name: "gsl_linalg_LQ_solve_T", scope: !2, file: !2, line: 130, type: !289, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !293)
!289 = !DISubroutineType(types: !290)
!290 = !{!73, !291, !286, !286, !160}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!293 = !{!294, !295, !296, !297}
!294 = !DILocalVariable(name: "LQ", arg: 1, scope: !288, file: !2, line: 130, type: !291)
!295 = !DILocalVariable(name: "tau", arg: 2, scope: !288, file: !2, line: 130, type: !286)
!296 = !DILocalVariable(name: "b", arg: 3, scope: !288, file: !2, line: 130, type: !286)
!297 = !DILocalVariable(name: "x", arg: 4, scope: !288, file: !2, line: 130, type: !160)
!298 = !DILocation(line: 0, scope: !288)
!299 = !DILocation(line: 132, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !288, file: !2, line: 132, column: 7)
!301 = !DILocation(line: 132, column: 24, scope: !300)
!302 = !DILocation(line: 132, column: 17, scope: !300)
!303 = !DILocation(line: 132, column: 7, scope: !288)
!304 = !DILocation(line: 134, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !306, file: !2, line: 134, column: 7)
!306 = distinct !DILexicalBlock(scope: !300, file: !2, line: 133, column: 5)
!307 = !DILocation(line: 136, column: 28, scope: !308)
!308 = distinct !DILexicalBlock(scope: !300, file: !2, line: 136, column: 12)
!309 = !DILocation(line: 136, column: 22, scope: !308)
!310 = !DILocation(line: 136, column: 12, scope: !300)
!311 = !DILocation(line: 138, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 138, column: 7)
!313 = distinct !DILexicalBlock(scope: !308, file: !2, line: 137, column: 5)
!314 = !DILocation(line: 140, column: 28, scope: !315)
!315 = distinct !DILexicalBlock(scope: !308, file: !2, line: 140, column: 12)
!316 = !DILocation(line: 140, column: 22, scope: !315)
!317 = !DILocation(line: 140, column: 12, scope: !308)
!318 = !DILocation(line: 142, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 142, column: 7)
!320 = distinct !DILexicalBlock(scope: !315, file: !2, line: 141, column: 5)
!321 = !DILocation(line: 148, column: 7, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !2, line: 145, column: 5)
!323 = !DILocalVariable(name: "LQ", arg: 1, scope: !324, file: !2, line: 166, type: !291)
!324 = distinct !DISubprogram(name: "gsl_linalg_LQ_svx_T", scope: !2, file: !2, line: 166, type: !325, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{!73, !291, !286, !160}
!327 = !{!323, !328, !329}
!328 = !DILocalVariable(name: "tau", arg: 2, scope: !324, file: !2, line: 166, type: !286)
!329 = !DILocalVariable(name: "x", arg: 3, scope: !324, file: !2, line: 166, type: !160)
!330 = !DILocation(line: 0, scope: !324, inlinedAt: !331)
!331 = distinct !DILocation(line: 152, column: 7, scope: !322)
!332 = !DILocation(line: 169, column: 11, scope: !333, inlinedAt: !331)
!333 = distinct !DILexicalBlock(scope: !324, file: !2, line: 169, column: 7)
!334 = !DILocation(line: 169, column: 24, scope: !333, inlinedAt: !331)
!335 = !DILocation(line: 169, column: 17, scope: !333, inlinedAt: !331)
!336 = !DILocation(line: 169, column: 7, scope: !324, inlinedAt: !331)
!337 = !DILocation(line: 171, column: 7, scope: !338, inlinedAt: !331)
!338 = distinct !DILexicalBlock(scope: !339, file: !2, line: 171, column: 7)
!339 = distinct !DILexicalBlock(scope: !333, file: !2, line: 170, column: 5)
!340 = !DILocation(line: 173, column: 28, scope: !341, inlinedAt: !331)
!341 = distinct !DILexicalBlock(scope: !333, file: !2, line: 173, column: 12)
!342 = !DILocation(line: 173, column: 22, scope: !341, inlinedAt: !331)
!343 = !DILocation(line: 173, column: 12, scope: !333, inlinedAt: !331)
!344 = !DILocation(line: 175, column: 7, scope: !345, inlinedAt: !331)
!345 = distinct !DILexicalBlock(scope: !346, file: !2, line: 175, column: 7)
!346 = distinct !DILexicalBlock(scope: !341, file: !2, line: 174, column: 5)
!347 = !DILocation(line: 181, column: 7, scope: !348, inlinedAt: !331)
!348 = distinct !DILexicalBlock(scope: !341, file: !2, line: 178, column: 5)
!349 = !{i32 0, i32 20}
!350 = !DILocation(line: 185, column: 7, scope: !348, inlinedAt: !331)
!351 = !DILocation(line: 187, column: 7, scope: !348, inlinedAt: !331)
!352 = !DILocation(line: 0, scope: !300)
!353 = !DILocation(line: 156, column: 1, scope: !288)
!354 = !DISubprogram(name: "gsl_vector_memcpy", scope: !162, file: !162, line: 136, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{!73, !160, !286}
!357 = !DILocation(line: 0, scope: !324)
!358 = !DILocation(line: 169, column: 11, scope: !333)
!359 = !DILocation(line: 169, column: 24, scope: !333)
!360 = !DILocation(line: 169, column: 17, scope: !333)
!361 = !DILocation(line: 169, column: 7, scope: !324)
!362 = !DILocation(line: 171, column: 7, scope: !338)
!363 = !DILocation(line: 173, column: 28, scope: !341)
!364 = !DILocation(line: 173, column: 22, scope: !341)
!365 = !DILocation(line: 173, column: 12, scope: !333)
!366 = !DILocation(line: 175, column: 7, scope: !345)
!367 = !DILocation(line: 181, column: 7, scope: !348)
!368 = !DILocation(line: 185, column: 7, scope: !348)
!369 = !DILocation(line: 187, column: 7, scope: !348)
!370 = !DILocation(line: 0, scope: !333)
!371 = !DILocation(line: 189, column: 1, scope: !324)
!372 = distinct !DISubprogram(name: "gsl_linalg_LQ_vecQT", scope: !2, file: !2, line: 333, type: !325, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !373)
!373 = !{!374, !375, !376, !377, !378, !379, !383, !393, !394, !395}
!374 = !DILocalVariable(name: "LQ", arg: 1, scope: !372, file: !2, line: 333, type: !291)
!375 = !DILocalVariable(name: "tau", arg: 2, scope: !372, file: !2, line: 333, type: !286)
!376 = !DILocalVariable(name: "v", arg: 3, scope: !372, file: !2, line: 333, type: !160)
!377 = !DILocalVariable(name: "N", scope: !372, file: !2, line: 335, type: !174)
!378 = !DILocalVariable(name: "M", scope: !372, file: !2, line: 336, type: !174)
!379 = !DILocalVariable(name: "i", scope: !380, file: !2, line: 348, type: !143)
!380 = distinct !DILexicalBlock(scope: !381, file: !2, line: 347, column: 5)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 342, column: 12)
!382 = distinct !DILexicalBlock(scope: !372, file: !2, line: 338, column: 7)
!383 = !DILocalVariable(name: "c", scope: !384, file: !2, line: 354, type: !387)
!384 = distinct !DILexicalBlock(scope: !385, file: !2, line: 353, column: 9)
!385 = distinct !DILexicalBlock(scope: !386, file: !2, line: 352, column: 7)
!386 = distinct !DILexicalBlock(scope: !380, file: !2, line: 352, column: 7)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !162, line: 64, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !162, line: 62, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 59, size: 320, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !390, file: !162, line: 61, baseType: !161, size: 320)
!393 = !DILocalVariable(name: "h", scope: !384, file: !2, line: 355, type: !387)
!394 = !DILocalVariable(name: "w", scope: !384, file: !2, line: 357, type: !183)
!395 = !DILocalVariable(name: "ti", scope: !384, file: !2, line: 358, type: !150)
!396 = distinct !DIAssignID()
!397 = !DILocation(line: 0, scope: !384)
!398 = distinct !DIAssignID()
!399 = distinct !DIAssignID()
!400 = !DILocation(line: 0, scope: !372)
!401 = !DILocation(line: 335, column: 24, scope: !372)
!402 = !DILocation(line: 336, column: 24, scope: !372)
!403 = !DILocation(line: 338, column: 12, scope: !382)
!404 = !DILocation(line: 338, column: 20, scope: !382)
!405 = !DILocation(line: 338, column: 17, scope: !382)
!406 = !DILocation(line: 338, column: 7, scope: !372)
!407 = !DILocation(line: 340, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 340, column: 7)
!409 = distinct !DILexicalBlock(scope: !382, file: !2, line: 339, column: 5)
!410 = !DILocation(line: 342, column: 15, scope: !381)
!411 = !DILocation(line: 342, column: 20, scope: !381)
!412 = !DILocation(line: 342, column: 12, scope: !382)
!413 = !DILocation(line: 0, scope: !380)
!414 = !DILocation(line: 352, column: 21, scope: !385)
!415 = !DILocation(line: 352, column: 7, scope: !386)
!416 = !DILocation(line: 344, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !2, line: 344, column: 7)
!418 = distinct !DILexicalBlock(scope: !381, file: !2, line: 343, column: 5)
!419 = !DILocation(line: 354, column: 11, scope: !384)
!420 = !DILocation(line: 354, column: 37, scope: !384)
!421 = !DILocation(line: 355, column: 11, scope: !384)
!422 = !DILocation(line: 356, column: 70, scope: !384)
!423 = !DILocation(line: 355, column: 37, scope: !384)
!424 = !DILocation(line: 357, column: 11, scope: !384)
!425 = !DILocation(line: 357, column: 31, scope: !384)
!426 = !DILocalVariable(name: "v", arg: 1, scope: !427, file: !162, line: 175, type: !286)
!427 = distinct !DISubprogram(name: "gsl_vector_get", scope: !162, file: !162, line: 175, type: !428, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!150, !286, !174}
!430 = !{!426, !431}
!431 = !DILocalVariable(name: "i", arg: 2, scope: !427, file: !162, line: 175, type: !174)
!432 = !DILocation(line: 0, scope: !427, inlinedAt: !433)
!433 = distinct !DILocation(line: 358, column: 23, scope: !384)
!434 = !DILocation(line: 183, column: 13, scope: !427, inlinedAt: !433)
!435 = !DILocation(line: 183, column: 25, scope: !427, inlinedAt: !433)
!436 = !DILocation(line: 183, column: 20, scope: !427, inlinedAt: !433)
!437 = !DILocation(line: 183, column: 10, scope: !427, inlinedAt: !433)
!438 = !DILocation(line: 359, column: 11, scope: !384)
!439 = !DILocation(line: 360, column: 9, scope: !385)
!440 = !DILocation(line: 352, column: 40, scope: !385)
!441 = distinct !{!441, !415, !442, !262}
!442 = !DILocation(line: 360, column: 9, scope: !386)
!443 = !DILocation(line: 0, scope: !382)
!444 = !DILocation(line: 363, column: 1, scope: !372)
!445 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !446, file: !446, line: 217, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!446 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!447 = !DISubroutineType(types: !448)
!448 = !{!73, !449, !451, !452, !291, !160}
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !450, line: 45, baseType: !110)
!450 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !450, line: 44, baseType: !116)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !450, line: 46, baseType: !121)
!453 = distinct !DISubprogram(name: "gsl_linalg_LQ_lssolve_T", scope: !2, file: !2, line: 200, type: !454, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!73, !291, !286, !286, !160, !160}
!456 = !{!457, !458, !459, !460, !461, !462, !463, !464, !476}
!457 = !DILocalVariable(name: "LQ", arg: 1, scope: !453, file: !2, line: 200, type: !291)
!458 = !DILocalVariable(name: "tau", arg: 2, scope: !453, file: !2, line: 200, type: !286)
!459 = !DILocalVariable(name: "b", arg: 3, scope: !453, file: !2, line: 200, type: !286)
!460 = !DILocalVariable(name: "x", arg: 4, scope: !453, file: !2, line: 200, type: !160)
!461 = !DILocalVariable(name: "residual", arg: 5, scope: !453, file: !2, line: 200, type: !160)
!462 = !DILocalVariable(name: "N", scope: !453, file: !2, line: 202, type: !174)
!463 = !DILocalVariable(name: "M", scope: !453, file: !2, line: 203, type: !174)
!464 = !DILocalVariable(name: "L", scope: !465, file: !2, line: 223, type: !470)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 222, column: 5)
!466 = distinct !DILexicalBlock(scope: !467, file: !2, line: 217, column: 12)
!467 = distinct !DILexicalBlock(scope: !468, file: !2, line: 213, column: 12)
!468 = distinct !DILexicalBlock(scope: !469, file: !2, line: 209, column: 12)
!469 = distinct !DILexicalBlock(scope: !453, file: !2, line: 205, column: 7)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_const_view", file: !139, line: 64, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_const_view", file: !139, line: 62, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !139, line: 59, size: 384, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !473, file: !139, line: 61, baseType: !138, size: 384)
!476 = !DILocalVariable(name: "c", scope: !465, file: !2, line: 224, type: !183)
!477 = distinct !DIAssignID()
!478 = !DILocation(line: 0, scope: !465)
!479 = distinct !DIAssignID()
!480 = !DILocation(line: 0, scope: !453)
!481 = !DILocation(line: 202, column: 24, scope: !453)
!482 = !DILocation(line: 203, column: 24, scope: !453)
!483 = !DILocation(line: 205, column: 9, scope: !469)
!484 = !DILocation(line: 205, column: 7, scope: !453)
!485 = !DILocation(line: 207, column: 7, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !2, line: 207, column: 7)
!487 = distinct !DILexicalBlock(scope: !469, file: !2, line: 206, column: 5)
!488 = !DILocation(line: 209, column: 20, scope: !468)
!489 = !DILocation(line: 209, column: 14, scope: !468)
!490 = !DILocation(line: 209, column: 12, scope: !469)
!491 = !DILocation(line: 211, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !2, line: 211, column: 7)
!493 = distinct !DILexicalBlock(scope: !468, file: !2, line: 210, column: 5)
!494 = !DILocation(line: 213, column: 20, scope: !467)
!495 = !DILocation(line: 213, column: 14, scope: !467)
!496 = !DILocation(line: 213, column: 12, scope: !468)
!497 = !DILocation(line: 215, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 215, column: 7)
!499 = distinct !DILexicalBlock(scope: !467, file: !2, line: 214, column: 5)
!500 = !DILocation(line: 217, column: 27, scope: !466)
!501 = !DILocation(line: 217, column: 14, scope: !466)
!502 = !DILocation(line: 217, column: 12, scope: !467)
!503 = !DILocation(line: 219, column: 7, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !2, line: 219, column: 7)
!505 = distinct !DILexicalBlock(scope: !466, file: !2, line: 218, column: 5)
!506 = !DILocation(line: 223, column: 7, scope: !465)
!507 = !DILocation(line: 223, column: 33, scope: !465)
!508 = !DILocation(line: 224, column: 7, scope: !465)
!509 = !DILocation(line: 224, column: 27, scope: !465)
!510 = !DILocation(line: 226, column: 7, scope: !465)
!511 = !DILocation(line: 230, column: 7, scope: !465)
!512 = !DILocation(line: 234, column: 7, scope: !465)
!513 = !DILocation(line: 236, column: 7, scope: !465)
!514 = !DILocation(line: 240, column: 7, scope: !465)
!515 = !DILocation(line: 242, column: 7, scope: !465)
!516 = !DILocation(line: 245, column: 5, scope: !466)
!517 = !DILocation(line: 0, scope: !469)
!518 = !DILocation(line: 246, column: 1, scope: !453)
!519 = !DISubprogram(name: "gsl_matrix_const_submatrix", scope: !139, file: !139, line: 153, type: !520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!520 = !DISubroutineType(types: !521)
!521 = !{!472, !291, !174, !174, !174, !174}
!522 = !DISubprogram(name: "gsl_vector_set_zero", scope: !162, file: !162, line: 126, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !160}
!525 = distinct !DISubprogram(name: "gsl_linalg_LQ_vecQ", scope: !2, file: !2, line: 366, type: !325, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !526)
!526 = !{!527, !528, !529, !530, !531, !532, !536, !540, !541, !542}
!527 = !DILocalVariable(name: "LQ", arg: 1, scope: !525, file: !2, line: 366, type: !291)
!528 = !DILocalVariable(name: "tau", arg: 2, scope: !525, file: !2, line: 366, type: !286)
!529 = !DILocalVariable(name: "v", arg: 3, scope: !525, file: !2, line: 366, type: !160)
!530 = !DILocalVariable(name: "N", scope: !525, file: !2, line: 368, type: !174)
!531 = !DILocalVariable(name: "M", scope: !525, file: !2, line: 369, type: !174)
!532 = !DILocalVariable(name: "i", scope: !533, file: !2, line: 381, type: !143)
!533 = distinct !DILexicalBlock(scope: !534, file: !2, line: 380, column: 5)
!534 = distinct !DILexicalBlock(scope: !535, file: !2, line: 375, column: 12)
!535 = distinct !DILexicalBlock(scope: !525, file: !2, line: 371, column: 7)
!536 = !DILocalVariable(name: "c", scope: !537, file: !2, line: 387, type: !387)
!537 = distinct !DILexicalBlock(scope: !538, file: !2, line: 386, column: 9)
!538 = distinct !DILexicalBlock(scope: !539, file: !2, line: 385, column: 7)
!539 = distinct !DILexicalBlock(scope: !533, file: !2, line: 385, column: 7)
!540 = !DILocalVariable(name: "h", scope: !537, file: !2, line: 388, type: !387)
!541 = !DILocalVariable(name: "w", scope: !537, file: !2, line: 390, type: !183)
!542 = !DILocalVariable(name: "ti", scope: !537, file: !2, line: 391, type: !150)
!543 = distinct !DIAssignID()
!544 = !DILocation(line: 0, scope: !537)
!545 = distinct !DIAssignID()
!546 = distinct !DIAssignID()
!547 = !DILocation(line: 0, scope: !525)
!548 = !DILocation(line: 368, column: 24, scope: !525)
!549 = !DILocation(line: 369, column: 24, scope: !525)
!550 = !DILocation(line: 371, column: 12, scope: !535)
!551 = !DILocation(line: 371, column: 20, scope: !535)
!552 = !DILocation(line: 371, column: 17, scope: !535)
!553 = !DILocation(line: 371, column: 7, scope: !525)
!554 = !DILocation(line: 373, column: 7, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !2, line: 373, column: 7)
!556 = distinct !DILexicalBlock(scope: !535, file: !2, line: 372, column: 5)
!557 = !DILocation(line: 375, column: 15, scope: !534)
!558 = !DILocation(line: 375, column: 20, scope: !534)
!559 = !DILocation(line: 375, column: 12, scope: !535)
!560 = !DILocation(line: 0, scope: !533)
!561 = !DILocation(line: 385, column: 37, scope: !538)
!562 = !DILocation(line: 385, column: 7, scope: !539)
!563 = !DILocation(line: 377, column: 7, scope: !564)
!564 = distinct !DILexicalBlock(scope: !565, file: !2, line: 377, column: 7)
!565 = distinct !DILexicalBlock(scope: !534, file: !2, line: 376, column: 5)
!566 = !DILocation(line: 385, column: 34, scope: !538)
!567 = !DILocation(line: 387, column: 11, scope: !537)
!568 = !DILocation(line: 387, column: 37, scope: !537)
!569 = !DILocation(line: 388, column: 11, scope: !537)
!570 = !DILocation(line: 389, column: 70, scope: !537)
!571 = !DILocation(line: 388, column: 37, scope: !537)
!572 = !DILocation(line: 390, column: 11, scope: !537)
!573 = !DILocation(line: 390, column: 31, scope: !537)
!574 = !DILocation(line: 0, scope: !427, inlinedAt: !575)
!575 = distinct !DILocation(line: 391, column: 23, scope: !537)
!576 = !DILocation(line: 183, column: 13, scope: !427, inlinedAt: !575)
!577 = !DILocation(line: 183, column: 25, scope: !427, inlinedAt: !575)
!578 = !DILocation(line: 183, column: 20, scope: !427, inlinedAt: !575)
!579 = !DILocation(line: 183, column: 10, scope: !427, inlinedAt: !575)
!580 = !DILocation(line: 392, column: 11, scope: !537)
!581 = !DILocation(line: 393, column: 9, scope: !538)
!582 = distinct !{!582, !562, !583, !262}
!583 = !DILocation(line: 393, column: 9, scope: !539)
!584 = !DILocation(line: 0, scope: !535)
!585 = !DILocation(line: 396, column: 1, scope: !525)
!586 = distinct !DISubprogram(name: "gsl_linalg_LQ_Lsolve_T", scope: !2, file: !2, line: 250, type: !325, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !587)
!587 = !{!588, !589, !590}
!588 = !DILocalVariable(name: "LQ", arg: 1, scope: !586, file: !2, line: 250, type: !291)
!589 = !DILocalVariable(name: "b", arg: 2, scope: !586, file: !2, line: 250, type: !286)
!590 = !DILocalVariable(name: "x", arg: 3, scope: !586, file: !2, line: 250, type: !160)
!591 = !DILocation(line: 0, scope: !586)
!592 = !DILocation(line: 252, column: 11, scope: !593)
!593 = distinct !DILexicalBlock(scope: !586, file: !2, line: 252, column: 7)
!594 = !DILocation(line: 252, column: 24, scope: !593)
!595 = !DILocation(line: 252, column: 17, scope: !593)
!596 = !DILocation(line: 252, column: 7, scope: !586)
!597 = !DILocation(line: 254, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 254, column: 7)
!599 = distinct !DILexicalBlock(scope: !593, file: !2, line: 253, column: 5)
!600 = !DILocation(line: 256, column: 28, scope: !601)
!601 = distinct !DILexicalBlock(scope: !593, file: !2, line: 256, column: 12)
!602 = !DILocation(line: 256, column: 22, scope: !601)
!603 = !DILocation(line: 256, column: 12, scope: !593)
!604 = !DILocation(line: 258, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !2, line: 258, column: 7)
!606 = distinct !DILexicalBlock(scope: !601, file: !2, line: 257, column: 5)
!607 = !DILocation(line: 260, column: 28, scope: !608)
!608 = distinct !DILexicalBlock(scope: !601, file: !2, line: 260, column: 12)
!609 = !DILocation(line: 260, column: 22, scope: !608)
!610 = !DILocation(line: 260, column: 12, scope: !601)
!611 = !DILocation(line: 262, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 262, column: 7)
!613 = distinct !DILexicalBlock(scope: !608, file: !2, line: 261, column: 5)
!614 = !DILocation(line: 268, column: 7, scope: !615)
!615 = distinct !DILexicalBlock(scope: !608, file: !2, line: 265, column: 5)
!616 = !DILocation(line: 272, column: 7, scope: !615)
!617 = !DILocation(line: 274, column: 7, scope: !615)
!618 = !DILocation(line: 0, scope: !593)
!619 = !DILocation(line: 276, column: 1, scope: !586)
!620 = distinct !DISubprogram(name: "gsl_linalg_LQ_Lsvx_T", scope: !2, file: !2, line: 280, type: !621, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!73, !291, !160}
!623 = !{!624, !625}
!624 = !DILocalVariable(name: "LQ", arg: 1, scope: !620, file: !2, line: 280, type: !291)
!625 = !DILocalVariable(name: "x", arg: 2, scope: !620, file: !2, line: 280, type: !160)
!626 = !DILocation(line: 0, scope: !620)
!627 = !DILocation(line: 282, column: 11, scope: !628)
!628 = distinct !DILexicalBlock(scope: !620, file: !2, line: 282, column: 7)
!629 = !DILocation(line: 282, column: 24, scope: !628)
!630 = !DILocation(line: 282, column: 17, scope: !628)
!631 = !DILocation(line: 282, column: 7, scope: !620)
!632 = !DILocation(line: 284, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !2, line: 284, column: 7)
!634 = distinct !DILexicalBlock(scope: !628, file: !2, line: 283, column: 5)
!635 = !DILocation(line: 286, column: 28, scope: !636)
!636 = distinct !DILexicalBlock(scope: !628, file: !2, line: 286, column: 12)
!637 = !DILocation(line: 286, column: 22, scope: !636)
!638 = !DILocation(line: 286, column: 12, scope: !628)
!639 = !DILocation(line: 288, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !2, line: 288, column: 7)
!641 = distinct !DILexicalBlock(scope: !636, file: !2, line: 287, column: 5)
!642 = !DILocation(line: 294, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !636, file: !2, line: 291, column: 5)
!644 = !DILocation(line: 296, column: 7, scope: !643)
!645 = !DILocation(line: 0, scope: !628)
!646 = !DILocation(line: 298, column: 1, scope: !620)
!647 = distinct !DISubprogram(name: "gsl_linalg_L_solve_T", scope: !2, file: !2, line: 301, type: !325, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !648)
!648 = !{!649, !650, !651}
!649 = !DILocalVariable(name: "L", arg: 1, scope: !647, file: !2, line: 301, type: !291)
!650 = !DILocalVariable(name: "b", arg: 2, scope: !647, file: !2, line: 301, type: !286)
!651 = !DILocalVariable(name: "x", arg: 3, scope: !647, file: !2, line: 301, type: !160)
!652 = !DILocation(line: 0, scope: !647)
!653 = !DILocation(line: 303, column: 10, scope: !654)
!654 = distinct !DILexicalBlock(scope: !647, file: !2, line: 303, column: 7)
!655 = !DILocation(line: 303, column: 22, scope: !654)
!656 = !DILocation(line: 303, column: 16, scope: !654)
!657 = !DILocation(line: 303, column: 7, scope: !647)
!658 = !DILocation(line: 305, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !2, line: 305, column: 7)
!660 = distinct !DILexicalBlock(scope: !654, file: !2, line: 304, column: 5)
!661 = !DILocation(line: 307, column: 27, scope: !662)
!662 = distinct !DILexicalBlock(scope: !654, file: !2, line: 307, column: 12)
!663 = !DILocation(line: 307, column: 21, scope: !662)
!664 = !DILocation(line: 307, column: 12, scope: !654)
!665 = !DILocation(line: 309, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !2, line: 309, column: 7)
!667 = distinct !DILexicalBlock(scope: !662, file: !2, line: 308, column: 5)
!668 = !DILocation(line: 311, column: 27, scope: !669)
!669 = distinct !DILexicalBlock(scope: !662, file: !2, line: 311, column: 12)
!670 = !DILocation(line: 311, column: 21, scope: !669)
!671 = !DILocation(line: 311, column: 12, scope: !662)
!672 = !DILocation(line: 313, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !2, line: 313, column: 7)
!674 = distinct !DILexicalBlock(scope: !669, file: !2, line: 312, column: 5)
!675 = !DILocation(line: 319, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !669, file: !2, line: 316, column: 5)
!677 = !DILocation(line: 323, column: 7, scope: !676)
!678 = !DILocation(line: 325, column: 7, scope: !676)
!679 = !DILocation(line: 0, scope: !654)
!680 = !DILocation(line: 327, column: 1, scope: !647)
!681 = !DISubprogram(name: "gsl_matrix_const_row", scope: !139, file: !139, line: 158, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!682 = !DISubroutineType(types: !683)
!683 = !{!389, !291, !174}
!684 = !DISubprogram(name: "gsl_vector_const_subvector", scope: !162, file: !162, line: 114, type: !685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!685 = !DISubroutineType(types: !686)
!686 = !{!389, !286, !143, !143}
!687 = !DISubprogram(name: "gsl_linalg_householder_hv", scope: !277, file: !277, line: 105, type: !688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!688 = !DISubroutineType(types: !689)
!689 = !{!73, !150, !286, !160}
!690 = distinct !DISubprogram(name: "gsl_linalg_LQ_unpack", scope: !2, file: !2, line: 402, type: !691, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !693)
!691 = !DISubroutineType(types: !692)
!692 = !{!73, !291, !286, !137, !137}
!693 = !{!694, !695, !696, !697, !698, !699, !700, !705, !706, !707, !711, !712, !713}
!694 = !DILocalVariable(name: "LQ", arg: 1, scope: !690, file: !2, line: 402, type: !291)
!695 = !DILocalVariable(name: "tau", arg: 2, scope: !690, file: !2, line: 402, type: !286)
!696 = !DILocalVariable(name: "Q", arg: 3, scope: !690, file: !2, line: 402, type: !137)
!697 = !DILocalVariable(name: "L", arg: 4, scope: !690, file: !2, line: 402, type: !137)
!698 = !DILocalVariable(name: "N", scope: !690, file: !2, line: 404, type: !174)
!699 = !DILocalVariable(name: "M", scope: !690, file: !2, line: 405, type: !174)
!700 = !DILocalVariable(name: "i", scope: !701, file: !2, line: 421, type: !143)
!701 = distinct !DILexicalBlock(scope: !702, file: !2, line: 420, column: 5)
!702 = distinct !DILexicalBlock(scope: !703, file: !2, line: 415, column: 12)
!703 = distinct !DILexicalBlock(scope: !704, file: !2, line: 411, column: 12)
!704 = distinct !DILexicalBlock(scope: !690, file: !2, line: 407, column: 7)
!705 = !DILocalVariable(name: "j", scope: !701, file: !2, line: 421, type: !143)
!706 = !DILocalVariable(name: "l_border", scope: !701, file: !2, line: 421, type: !143)
!707 = !DILocalVariable(name: "c", scope: !708, file: !2, line: 429, type: !387)
!708 = distinct !DILexicalBlock(scope: !709, file: !2, line: 428, column: 9)
!709 = distinct !DILexicalBlock(scope: !710, file: !2, line: 427, column: 7)
!710 = distinct !DILexicalBlock(scope: !701, file: !2, line: 427, column: 7)
!711 = !DILocalVariable(name: "h", scope: !708, file: !2, line: 430, type: !387)
!712 = !DILocalVariable(name: "m", scope: !708, file: !2, line: 432, type: !193)
!713 = !DILocalVariable(name: "ti", scope: !708, file: !2, line: 433, type: !150)
!714 = distinct !DIAssignID()
!715 = !DILocation(line: 0, scope: !708)
!716 = distinct !DIAssignID()
!717 = distinct !DIAssignID()
!718 = !DILocation(line: 0, scope: !690)
!719 = !DILocation(line: 404, column: 24, scope: !690)
!720 = !DILocation(line: 405, column: 24, scope: !690)
!721 = !DILocation(line: 407, column: 10, scope: !704)
!722 = !DILocation(line: 407, column: 16, scope: !704)
!723 = !DILocation(line: 407, column: 21, scope: !704)
!724 = !DILocation(line: 407, column: 27, scope: !704)
!725 = !DILocation(line: 407, column: 33, scope: !704)
!726 = !DILocation(line: 407, column: 7, scope: !690)
!727 = !DILocation(line: 409, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !2, line: 409, column: 7)
!729 = distinct !DILexicalBlock(scope: !704, file: !2, line: 408, column: 5)
!730 = !DILocation(line: 411, column: 15, scope: !703)
!731 = !DILocation(line: 411, column: 21, scope: !703)
!732 = !DILocation(line: 411, column: 26, scope: !703)
!733 = !DILocation(line: 411, column: 32, scope: !703)
!734 = !DILocation(line: 411, column: 38, scope: !703)
!735 = !DILocation(line: 411, column: 12, scope: !704)
!736 = !DILocation(line: 413, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !2, line: 413, column: 7)
!738 = distinct !DILexicalBlock(scope: !703, file: !2, line: 412, column: 5)
!739 = !DILocation(line: 415, column: 17, scope: !702)
!740 = !DILocation(line: 415, column: 25, scope: !702)
!741 = !DILocation(line: 415, column: 22, scope: !702)
!742 = !DILocation(line: 415, column: 12, scope: !703)
!743 = !DILocation(line: 417, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !2, line: 417, column: 7)
!745 = distinct !DILexicalBlock(scope: !702, file: !2, line: 416, column: 5)
!746 = !DILocation(line: 425, column: 7, scope: !701)
!747 = !DILocation(line: 0, scope: !701)
!748 = !DILocation(line: 427, column: 36, scope: !709)
!749 = !DILocation(line: 427, column: 7, scope: !710)
!750 = !DILocation(line: 439, column: 21, scope: !751)
!751 = distinct !DILexicalBlock(scope: !752, file: !2, line: 439, column: 7)
!752 = distinct !DILexicalBlock(scope: !701, file: !2, line: 439, column: 7)
!753 = !DILocation(line: 439, column: 7, scope: !752)
!754 = !{!206, !210, i64 24}
!755 = !{!206, !207, i64 16}
!756 = !DILocation(line: 427, column: 33, scope: !709)
!757 = !DILocation(line: 429, column: 11, scope: !708)
!758 = !DILocation(line: 429, column: 37, scope: !708)
!759 = !DILocation(line: 430, column: 11, scope: !708)
!760 = !DILocation(line: 431, column: 70, scope: !708)
!761 = !DILocation(line: 430, column: 37, scope: !708)
!762 = !DILocation(line: 432, column: 11, scope: !708)
!763 = !DILocation(line: 432, column: 31, scope: !708)
!764 = !DILocation(line: 0, scope: !427, inlinedAt: !765)
!765 = distinct !DILocation(line: 433, column: 23, scope: !708)
!766 = !DILocation(line: 183, column: 13, scope: !427, inlinedAt: !765)
!767 = !DILocation(line: 183, column: 25, scope: !427, inlinedAt: !765)
!768 = !DILocation(line: 183, column: 20, scope: !427, inlinedAt: !765)
!769 = !DILocation(line: 183, column: 10, scope: !427, inlinedAt: !765)
!770 = !DILocation(line: 434, column: 11, scope: !708)
!771 = !DILocation(line: 435, column: 9, scope: !709)
!772 = distinct !{!772, !749, !773, !262}
!773 = !DILocation(line: 435, column: 9, scope: !710)
!774 = !DILocation(line: 441, column: 15, scope: !775)
!775 = distinct !DILexicalBlock(scope: !751, file: !2, line: 440, column: 9)
!776 = !DILocation(line: 442, column: 3, scope: !777)
!777 = distinct !DILexicalBlock(scope: !775, file: !2, line: 442, column: 3)
!778 = !DILocalVariable(name: "m", arg: 1, scope: !779, file: !139, line: 270, type: !291)
!779 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !139, file: !139, line: 270, type: !780, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !782)
!780 = !DISubroutineType(types: !781)
!781 = !{!150, !291, !174, !174}
!782 = !{!778, !783, !784}
!783 = !DILocalVariable(name: "i", arg: 2, scope: !779, file: !139, line: 270, type: !174)
!784 = !DILocalVariable(name: "j", arg: 3, scope: !779, file: !139, line: 270, type: !174)
!785 = !DILocation(line: 0, scope: !779, inlinedAt: !786)
!786 = distinct !DILocation(line: 443, column: 32, scope: !787)
!787 = distinct !DILexicalBlock(scope: !777, file: !2, line: 442, column: 3)
!788 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !786)
!789 = !DILocalVariable(name: "m", arg: 1, scope: !790, file: !139, line: 290, type: !137)
!790 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !139, file: !139, line: 290, type: !791, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !794)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !137, !174, !174, !793}
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!794 = !{!789, !795, !796, !797}
!795 = !DILocalVariable(name: "i", arg: 2, scope: !790, file: !139, line: 290, type: !174)
!796 = !DILocalVariable(name: "j", arg: 3, scope: !790, file: !139, line: 290, type: !174)
!797 = !DILocalVariable(name: "x", arg: 4, scope: !790, file: !139, line: 290, type: !793)
!798 = !DILocation(line: 0, scope: !790, inlinedAt: !799)
!799 = distinct !DILocation(line: 443, column: 7, scope: !787)
!800 = !DILocation(line: 305, column: 3, scope: !790, inlinedAt: !799)
!801 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !799)
!802 = !DILocation(line: 442, column: 32, scope: !787)
!803 = distinct !{!803, !804}
!804 = !{!"llvm.loop.unroll.disable"}
!805 = !DILocation(line: 445, column: 29, scope: !806)
!806 = distinct !DILexicalBlock(scope: !807, file: !2, line: 445, column: 6)
!807 = distinct !DILexicalBlock(scope: !775, file: !2, line: 445, column: 6)
!808 = !DILocation(line: 445, column: 6, scope: !807)
!809 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !810)
!810 = distinct !DILocation(line: 446, column: 3, scope: !806)
!811 = !DILocation(line: 0, scope: !790, inlinedAt: !810)
!812 = !DILocation(line: 439, column: 27, scope: !751)
!813 = distinct !{!813, !776, !814, !262}
!814 = !DILocation(line: 443, column: 57, scope: !777)
!815 = distinct !{!815, !753, !816, !262}
!816 = !DILocation(line: 447, column: 9, scope: !752)
!817 = !DILocation(line: 0, scope: !704)
!818 = !DILocation(line: 451, column: 1, scope: !690)
!819 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !139, file: !139, line: 209, type: !820, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!820 = !DISubroutineType(types: !821)
!821 = !{null, !137}
!822 = distinct !DISubprogram(name: "gsl_linalg_LQ_update", scope: !2, file: !2, line: 467, type: !823, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!73, !137, !137, !286, !160}
!825 = !{!826, !827, !828, !829, !830, !831, !832, !837, !838, !839, !843, !844, !845, !846, !850, !851, !855, !856, !857}
!826 = !DILocalVariable(name: "Q", arg: 1, scope: !822, file: !2, line: 467, type: !137)
!827 = !DILocalVariable(name: "L", arg: 2, scope: !822, file: !2, line: 467, type: !137)
!828 = !DILocalVariable(name: "v", arg: 3, scope: !822, file: !2, line: 468, type: !286)
!829 = !DILocalVariable(name: "w", arg: 4, scope: !822, file: !2, line: 468, type: !160)
!830 = !DILocalVariable(name: "N", scope: !822, file: !2, line: 470, type: !174)
!831 = !DILocalVariable(name: "M", scope: !822, file: !2, line: 471, type: !174)
!832 = !DILocalVariable(name: "j", scope: !833, file: !2, line: 487, type: !143)
!833 = distinct !DILexicalBlock(scope: !834, file: !2, line: 486, column: 5)
!834 = distinct !DILexicalBlock(scope: !835, file: !2, line: 481, column: 12)
!835 = distinct !DILexicalBlock(scope: !836, file: !2, line: 477, column: 12)
!836 = distinct !DILexicalBlock(scope: !822, file: !2, line: 473, column: 7)
!837 = !DILocalVariable(name: "k", scope: !833, file: !2, line: 487, type: !143)
!838 = !DILocalVariable(name: "w0", scope: !833, file: !2, line: 488, type: !150)
!839 = !DILocalVariable(name: "c", scope: !840, file: !2, line: 499, type: !150)
!840 = distinct !DILexicalBlock(scope: !841, file: !2, line: 498, column: 9)
!841 = distinct !DILexicalBlock(scope: !842, file: !2, line: 497, column: 7)
!842 = distinct !DILexicalBlock(scope: !833, file: !2, line: 497, column: 7)
!843 = !DILocalVariable(name: "s", scope: !840, file: !2, line: 499, type: !150)
!844 = !DILocalVariable(name: "wk", scope: !840, file: !2, line: 500, type: !150)
!845 = !DILocalVariable(name: "wkm1", scope: !840, file: !2, line: 501, type: !150)
!846 = !DILocalVariable(name: "lj0", scope: !847, file: !2, line: 514, type: !150)
!847 = distinct !DILexicalBlock(scope: !848, file: !2, line: 513, column: 9)
!848 = distinct !DILexicalBlock(scope: !849, file: !2, line: 512, column: 7)
!849 = distinct !DILexicalBlock(scope: !833, file: !2, line: 512, column: 7)
!850 = !DILocalVariable(name: "vj", scope: !847, file: !2, line: 515, type: !150)
!851 = !DILocalVariable(name: "c", scope: !852, file: !2, line: 524, type: !150)
!852 = distinct !DILexicalBlock(scope: !853, file: !2, line: 523, column: 9)
!853 = distinct !DILexicalBlock(scope: !854, file: !2, line: 522, column: 7)
!854 = distinct !DILexicalBlock(scope: !833, file: !2, line: 522, column: 7)
!855 = !DILocalVariable(name: "s", scope: !852, file: !2, line: 524, type: !150)
!856 = !DILocalVariable(name: "diag", scope: !852, file: !2, line: 525, type: !150)
!857 = !DILocalVariable(name: "offdiag", scope: !852, file: !2, line: 526, type: !150)
!858 = !DILocation(line: 0, scope: !822)
!859 = !DILocation(line: 470, column: 23, scope: !822)
!860 = !DILocation(line: 471, column: 23, scope: !822)
!861 = !DILocation(line: 473, column: 10, scope: !836)
!862 = !DILocation(line: 473, column: 16, scope: !836)
!863 = !DILocation(line: 473, column: 21, scope: !836)
!864 = !DILocation(line: 473, column: 27, scope: !836)
!865 = !DILocation(line: 473, column: 33, scope: !836)
!866 = !DILocation(line: 473, column: 7, scope: !822)
!867 = !DILocation(line: 475, column: 7, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !2, line: 475, column: 7)
!869 = distinct !DILexicalBlock(scope: !836, file: !2, line: 474, column: 5)
!870 = !DILocation(line: 477, column: 15, scope: !835)
!871 = !DILocation(line: 477, column: 20, scope: !835)
!872 = !DILocation(line: 477, column: 12, scope: !836)
!873 = !DILocation(line: 479, column: 7, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !2, line: 479, column: 7)
!875 = distinct !DILexicalBlock(scope: !835, file: !2, line: 478, column: 5)
!876 = !DILocation(line: 481, column: 15, scope: !834)
!877 = !DILocation(line: 481, column: 20, scope: !834)
!878 = !DILocation(line: 481, column: 12, scope: !835)
!879 = !DILocation(line: 497, scope: !842)
!880 = !DILocation(line: 0, scope: !833)
!881 = !DILocation(line: 497, column: 25, scope: !841)
!882 = !DILocation(line: 497, column: 7, scope: !842)
!883 = !DILocation(line: 483, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !2, line: 483, column: 7)
!885 = distinct !DILexicalBlock(scope: !834, file: !2, line: 482, column: 5)
!886 = !DILocation(line: 0, scope: !427, inlinedAt: !887)
!887 = distinct !DILocation(line: 500, column: 23, scope: !840)
!888 = !DILocation(line: 183, column: 20, scope: !427, inlinedAt: !887)
!889 = !DILocation(line: 183, column: 10, scope: !427, inlinedAt: !887)
!890 = !DILocation(line: 0, scope: !840)
!891 = !DILocation(line: 501, column: 46, scope: !840)
!892 = !DILocation(line: 0, scope: !427, inlinedAt: !893)
!893 = distinct !DILocation(line: 501, column: 25, scope: !840)
!894 = !DILocation(line: 183, column: 20, scope: !427, inlinedAt: !893)
!895 = !DILocation(line: 183, column: 10, scope: !427, inlinedAt: !893)
!896 = !DILocalVariable(name: "a", arg: 1, scope: !897, file: !277, line: 740, type: !793)
!897 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !277, file: !277, line: 740, type: !898, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !793, !793, !149, !149}
!900 = !{!896, !901, !902, !903, !904, !908, !909, !911}
!901 = !DILocalVariable(name: "b", arg: 2, scope: !897, file: !277, line: 740, type: !793)
!902 = !DILocalVariable(name: "c", arg: 3, scope: !897, file: !277, line: 740, type: !149)
!903 = !DILocalVariable(name: "s", arg: 4, scope: !897, file: !277, line: 740, type: !149)
!904 = !DILocalVariable(name: "t", scope: !905, file: !277, line: 749, type: !150)
!905 = distinct !DILexicalBlock(scope: !906, file: !277, line: 748, column: 5)
!906 = distinct !DILexicalBlock(scope: !907, file: !277, line: 747, column: 12)
!907 = distinct !DILexicalBlock(scope: !897, file: !277, line: 742, column: 7)
!908 = !DILocalVariable(name: "s1", scope: !905, file: !277, line: 750, type: !150)
!909 = !DILocalVariable(name: "t", scope: !910, file: !277, line: 756, type: !150)
!910 = distinct !DILexicalBlock(scope: !906, file: !277, line: 755, column: 5)
!911 = !DILocalVariable(name: "c1", scope: !910, file: !277, line: 757, type: !150)
!912 = !DILocation(line: 0, scope: !897, inlinedAt: !913)
!913 = distinct !DILocation(line: 503, column: 11, scope: !840)
!914 = !DILocation(line: 742, column: 9, scope: !907, inlinedAt: !913)
!915 = !DILocation(line: 742, column: 7, scope: !897, inlinedAt: !913)
!916 = !DILocation(line: 747, column: 12, scope: !906, inlinedAt: !913)
!917 = !DILocation(line: 747, column: 23, scope: !906, inlinedAt: !913)
!918 = !DILocation(line: 747, column: 21, scope: !906, inlinedAt: !913)
!919 = !DILocation(line: 747, column: 12, scope: !907, inlinedAt: !913)
!920 = !DILocation(line: 749, column: 18, scope: !905, inlinedAt: !913)
!921 = !DILocation(line: 749, column: 21, scope: !905, inlinedAt: !913)
!922 = !DILocation(line: 0, scope: !905, inlinedAt: !913)
!923 = !DILocation(line: 750, column: 37, scope: !905, inlinedAt: !913)
!924 = !DILocation(line: 750, column: 33, scope: !905, inlinedAt: !913)
!925 = !DILocation(line: 750, column: 25, scope: !905, inlinedAt: !913)
!926 = !DILocation(line: 750, column: 23, scope: !905, inlinedAt: !913)
!927 = !DILocation(line: 752, column: 15, scope: !905, inlinedAt: !913)
!928 = !DILocation(line: 753, column: 5, scope: !905, inlinedAt: !913)
!929 = !DILocation(line: 756, column: 18, scope: !910, inlinedAt: !913)
!930 = !DILocation(line: 756, column: 21, scope: !910, inlinedAt: !913)
!931 = !DILocation(line: 0, scope: !910, inlinedAt: !913)
!932 = !DILocation(line: 757, column: 37, scope: !910, inlinedAt: !913)
!933 = !DILocation(line: 757, column: 33, scope: !910, inlinedAt: !913)
!934 = !DILocation(line: 757, column: 25, scope: !910, inlinedAt: !913)
!935 = !DILocation(line: 757, column: 23, scope: !910, inlinedAt: !913)
!936 = !DILocation(line: 759, column: 15, scope: !910, inlinedAt: !913)
!937 = !DILocation(line: 0, scope: !907, inlinedAt: !913)
!938 = !DILocalVariable(name: "v", arg: 1, scope: !939, file: !277, line: 765, type: !160)
!939 = distinct !DISubprogram(name: "gsl_linalg_givens_gv", scope: !277, file: !277, line: 765, type: !940, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !160, !174, !174, !793, !793}
!942 = !{!938, !943, !944, !945, !946, !947, !948}
!943 = !DILocalVariable(name: "i", arg: 2, scope: !939, file: !277, line: 765, type: !174)
!944 = !DILocalVariable(name: "j", arg: 3, scope: !939, file: !277, line: 765, type: !174)
!945 = !DILocalVariable(name: "c", arg: 4, scope: !939, file: !277, line: 766, type: !793)
!946 = !DILocalVariable(name: "s", arg: 5, scope: !939, file: !277, line: 766, type: !793)
!947 = !DILocalVariable(name: "vi", scope: !939, file: !277, line: 770, type: !150)
!948 = !DILocalVariable(name: "vj", scope: !939, file: !277, line: 771, type: !150)
!949 = !DILocation(line: 0, scope: !939, inlinedAt: !950)
!950 = distinct !DILocation(line: 504, column: 11, scope: !840)
!951 = !DILocation(line: 0, scope: !427, inlinedAt: !952)
!952 = distinct !DILocation(line: 770, column: 15, scope: !939, inlinedAt: !950)
!953 = !DILocation(line: 0, scope: !427, inlinedAt: !954)
!954 = distinct !DILocation(line: 771, column: 15, scope: !939, inlinedAt: !950)
!955 = !DILocation(line: 772, column: 27, scope: !939, inlinedAt: !950)
!956 = !DILocation(line: 772, column: 36, scope: !939, inlinedAt: !950)
!957 = !DILocation(line: 772, column: 32, scope: !939, inlinedAt: !950)
!958 = !DILocation(line: 0, scope: !233, inlinedAt: !959)
!959 = distinct !DILocation(line: 772, column: 3, scope: !939, inlinedAt: !950)
!960 = !DILocation(line: 196, column: 26, scope: !233, inlinedAt: !959)
!961 = !DILocation(line: 773, column: 27, scope: !939, inlinedAt: !950)
!962 = !DILocation(line: 773, column: 36, scope: !939, inlinedAt: !950)
!963 = !DILocation(line: 773, column: 32, scope: !939, inlinedAt: !950)
!964 = !DILocation(line: 0, scope: !233, inlinedAt: !965)
!965 = distinct !DILocation(line: 773, column: 3, scope: !939, inlinedAt: !950)
!966 = !DILocation(line: 196, column: 26, scope: !233, inlinedAt: !965)
!967 = !DILocalVariable(name: "M", arg: 1, scope: !968, file: !969, line: 69, type: !143)
!968 = distinct !DISubprogram(name: "apply_givens_lq", scope: !969, file: !969, line: 69, type: !970, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !972)
!969 = !DIFile(filename: "./apply_givens.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1430c6da1968c27d96b974d1078e7cb2")
!970 = !DISubroutineType(types: !971)
!971 = !{null, !143, !143, !137, !137, !143, !143, !150, !150}
!972 = !{!967, !973, !974, !975, !976, !977, !978, !979, !980, !981, !985, !986, !990}
!973 = !DILocalVariable(name: "N", arg: 2, scope: !968, file: !969, line: 69, type: !143)
!974 = !DILocalVariable(name: "Q", arg: 3, scope: !968, file: !969, line: 69, type: !137)
!975 = !DILocalVariable(name: "L", arg: 4, scope: !968, file: !969, line: 69, type: !137)
!976 = !DILocalVariable(name: "i", arg: 5, scope: !968, file: !969, line: 70, type: !143)
!977 = !DILocalVariable(name: "j", arg: 6, scope: !968, file: !969, line: 70, type: !143)
!978 = !DILocalVariable(name: "c", arg: 7, scope: !968, file: !969, line: 70, type: !150)
!979 = !DILocalVariable(name: "s", arg: 8, scope: !968, file: !969, line: 70, type: !150)
!980 = !DILocalVariable(name: "k", scope: !968, file: !969, line: 72, type: !143)
!981 = !DILocalVariable(name: "qik", scope: !982, file: !969, line: 86, type: !150)
!982 = distinct !DILexicalBlock(scope: !983, file: !969, line: 85, column: 5)
!983 = distinct !DILexicalBlock(scope: !984, file: !969, line: 84, column: 3)
!984 = distinct !DILexicalBlock(scope: !968, file: !969, line: 84, column: 3)
!985 = !DILocalVariable(name: "qjk", scope: !982, file: !969, line: 87, type: !150)
!986 = !DILocalVariable(name: "lki", scope: !987, file: !969, line: 107, type: !150)
!987 = distinct !DILexicalBlock(scope: !988, file: !969, line: 106, column: 5)
!988 = distinct !DILexicalBlock(scope: !989, file: !969, line: 105, column: 3)
!989 = distinct !DILexicalBlock(scope: !968, file: !969, line: 105, column: 3)
!990 = !DILocalVariable(name: "lkj", scope: !987, file: !969, line: 108, type: !150)
!991 = !DILocation(line: 0, scope: !968, inlinedAt: !992)
!992 = distinct !DILocation(line: 505, column: 11, scope: !840)
!993 = !DILocation(line: 84, column: 3, scope: !984, inlinedAt: !992)
!994 = !DILocation(line: 0, scope: !779, inlinedAt: !995)
!995 = distinct !DILocation(line: 86, column: 20, scope: !982, inlinedAt: !992)
!996 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !995)
!997 = !DILocation(line: 0, scope: !982, inlinedAt: !992)
!998 = !DILocation(line: 0, scope: !779, inlinedAt: !999)
!999 = distinct !DILocation(line: 87, column: 20, scope: !982, inlinedAt: !992)
!1000 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !999)
!1001 = !DILocation(line: 88, column: 36, scope: !982, inlinedAt: !992)
!1002 = !DILocation(line: 88, column: 46, scope: !982, inlinedAt: !992)
!1003 = !DILocation(line: 88, column: 40, scope: !982, inlinedAt: !992)
!1004 = !DILocation(line: 0, scope: !790, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 88, column: 7, scope: !982, inlinedAt: !992)
!1006 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1005)
!1007 = !DILocation(line: 89, column: 36, scope: !982, inlinedAt: !992)
!1008 = !DILocation(line: 89, column: 46, scope: !982, inlinedAt: !992)
!1009 = !DILocation(line: 89, column: 40, scope: !982, inlinedAt: !992)
!1010 = !DILocation(line: 0, scope: !790, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 89, column: 7, scope: !982, inlinedAt: !992)
!1012 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1011)
!1013 = !DILocation(line: 84, column: 23, scope: !983, inlinedAt: !992)
!1014 = distinct !{!1014, !993, !1015, !262}
!1015 = !DILocation(line: 90, column: 5, scope: !984, inlinedAt: !992)
!1016 = !DILocation(line: 105, column: 12, scope: !989, inlinedAt: !992)
!1017 = !DILocation(line: 105, column: 30, scope: !988, inlinedAt: !992)
!1018 = !DILocation(line: 105, column: 3, scope: !989, inlinedAt: !992)
!1019 = !DILocation(line: 0, scope: !779, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 107, column: 20, scope: !987, inlinedAt: !992)
!1021 = !DILocation(line: 285, column: 20, scope: !779, inlinedAt: !1020)
!1022 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1020)
!1023 = !DILocation(line: 0, scope: !987, inlinedAt: !992)
!1024 = !DILocation(line: 0, scope: !779, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 108, column: 20, scope: !987, inlinedAt: !992)
!1026 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1025)
!1027 = !DILocation(line: 109, column: 34, scope: !987, inlinedAt: !992)
!1028 = !DILocation(line: 109, column: 44, scope: !987, inlinedAt: !992)
!1029 = !DILocation(line: 109, column: 40, scope: !987, inlinedAt: !992)
!1030 = !DILocation(line: 0, scope: !790, inlinedAt: !1031)
!1031 = distinct !DILocation(line: 109, column: 7, scope: !987, inlinedAt: !992)
!1032 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1031)
!1033 = !DILocation(line: 110, column: 34, scope: !987, inlinedAt: !992)
!1034 = !DILocation(line: 110, column: 44, scope: !987, inlinedAt: !992)
!1035 = !DILocation(line: 110, column: 40, scope: !987, inlinedAt: !992)
!1036 = !DILocation(line: 0, scope: !790, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 110, column: 7, scope: !987, inlinedAt: !992)
!1038 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1037)
!1039 = !DILocation(line: 105, column: 36, scope: !988, inlinedAt: !992)
!1040 = distinct !{!1040, !1018, !1041, !262}
!1041 = !DILocation(line: 111, column: 5, scope: !989, inlinedAt: !992)
!1042 = distinct !{!1042, !882, !1043, !262}
!1043 = !DILocation(line: 506, column: 8, scope: !842)
!1044 = !DILocation(line: 0, scope: !427, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 508, column: 12, scope: !833)
!1046 = !DILocation(line: 183, column: 10, scope: !427, inlinedAt: !1045)
!1047 = !DILocation(line: 512, column: 21, scope: !848)
!1048 = !DILocation(line: 512, column: 7, scope: !849)
!1049 = !DILocation(line: 0, scope: !779, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 514, column: 24, scope: !847)
!1051 = !DILocation(line: 285, column: 20, scope: !779, inlinedAt: !1050)
!1052 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1050)
!1053 = !DILocation(line: 0, scope: !847)
!1054 = !DILocation(line: 0, scope: !427, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 515, column: 23, scope: !847)
!1056 = !DILocation(line: 183, column: 20, scope: !427, inlinedAt: !1055)
!1057 = !DILocation(line: 183, column: 10, scope: !427, inlinedAt: !1055)
!1058 = !DILocation(line: 516, column: 45, scope: !847)
!1059 = !DILocation(line: 516, column: 40, scope: !847)
!1060 = !DILocation(line: 0, scope: !790, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 516, column: 11, scope: !847)
!1062 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1061)
!1063 = !DILocation(line: 522, column: 21, scope: !853)
!1064 = !DILocation(line: 522, column: 7, scope: !854)
!1065 = !DILocation(line: 512, column: 27, scope: !848)
!1066 = distinct !{!1066, !1048, !1067, !262}
!1067 = !DILocation(line: 517, column: 9, scope: !849)
!1068 = !DILocation(line: 525, column: 46, scope: !852)
!1069 = !DILocation(line: 0, scope: !779, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 525, column: 25, scope: !852)
!1071 = !DILocation(line: 285, column: 20, scope: !779, inlinedAt: !1070)
!1072 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1070)
!1073 = !DILocation(line: 0, scope: !852)
!1074 = !DILocation(line: 0, scope: !779, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 526, column: 28, scope: !852)
!1076 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1075)
!1077 = !DILocation(line: 0, scope: !897, inlinedAt: !1078)
!1078 = distinct !DILocation(line: 528, column: 11, scope: !852)
!1079 = !DILocation(line: 742, column: 9, scope: !907, inlinedAt: !1078)
!1080 = !DILocation(line: 742, column: 7, scope: !897, inlinedAt: !1078)
!1081 = !DILocation(line: 747, column: 12, scope: !906, inlinedAt: !1078)
!1082 = !DILocation(line: 747, column: 23, scope: !906, inlinedAt: !1078)
!1083 = !DILocation(line: 747, column: 21, scope: !906, inlinedAt: !1078)
!1084 = !DILocation(line: 747, column: 12, scope: !907, inlinedAt: !1078)
!1085 = !DILocation(line: 749, column: 18, scope: !905, inlinedAt: !1078)
!1086 = !DILocation(line: 749, column: 21, scope: !905, inlinedAt: !1078)
!1087 = !DILocation(line: 0, scope: !905, inlinedAt: !1078)
!1088 = !DILocation(line: 750, column: 37, scope: !905, inlinedAt: !1078)
!1089 = !DILocation(line: 750, column: 33, scope: !905, inlinedAt: !1078)
!1090 = !DILocation(line: 750, column: 25, scope: !905, inlinedAt: !1078)
!1091 = !DILocation(line: 750, column: 23, scope: !905, inlinedAt: !1078)
!1092 = !DILocation(line: 752, column: 15, scope: !905, inlinedAt: !1078)
!1093 = !DILocation(line: 753, column: 5, scope: !905, inlinedAt: !1078)
!1094 = !DILocation(line: 756, column: 18, scope: !910, inlinedAt: !1078)
!1095 = !DILocation(line: 756, column: 21, scope: !910, inlinedAt: !1078)
!1096 = !DILocation(line: 0, scope: !910, inlinedAt: !1078)
!1097 = !DILocation(line: 757, column: 37, scope: !910, inlinedAt: !1078)
!1098 = !DILocation(line: 757, column: 33, scope: !910, inlinedAt: !1078)
!1099 = !DILocation(line: 757, column: 25, scope: !910, inlinedAt: !1078)
!1100 = !DILocation(line: 757, column: 23, scope: !910, inlinedAt: !1078)
!1101 = !DILocation(line: 759, column: 15, scope: !910, inlinedAt: !1078)
!1102 = !DILocation(line: 0, scope: !907, inlinedAt: !1078)
!1103 = !DILocation(line: 0, scope: !968, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 529, column: 11, scope: !852)
!1105 = !DILocation(line: 84, column: 3, scope: !984, inlinedAt: !1104)
!1106 = !DILocation(line: 0, scope: !779, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 86, column: 20, scope: !982, inlinedAt: !1104)
!1108 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1107)
!1109 = !DILocation(line: 0, scope: !982, inlinedAt: !1104)
!1110 = !DILocation(line: 0, scope: !779, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 87, column: 20, scope: !982, inlinedAt: !1104)
!1112 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1111)
!1113 = !DILocation(line: 88, column: 36, scope: !982, inlinedAt: !1104)
!1114 = !DILocation(line: 88, column: 46, scope: !982, inlinedAt: !1104)
!1115 = !DILocation(line: 88, column: 40, scope: !982, inlinedAt: !1104)
!1116 = !DILocation(line: 0, scope: !790, inlinedAt: !1117)
!1117 = distinct !DILocation(line: 88, column: 7, scope: !982, inlinedAt: !1104)
!1118 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1117)
!1119 = !DILocation(line: 89, column: 36, scope: !982, inlinedAt: !1104)
!1120 = !DILocation(line: 89, column: 46, scope: !982, inlinedAt: !1104)
!1121 = !DILocation(line: 89, column: 40, scope: !982, inlinedAt: !1104)
!1122 = !DILocation(line: 0, scope: !790, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 89, column: 7, scope: !982, inlinedAt: !1104)
!1124 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1123)
!1125 = !DILocation(line: 84, column: 23, scope: !983, inlinedAt: !1104)
!1126 = distinct !{!1126, !1105, !1127, !262}
!1127 = !DILocation(line: 90, column: 5, scope: !984, inlinedAt: !1104)
!1128 = !DILocation(line: 105, column: 12, scope: !989, inlinedAt: !1104)
!1129 = !DILocation(line: 105, column: 30, scope: !988, inlinedAt: !1104)
!1130 = !DILocation(line: 105, column: 3, scope: !989, inlinedAt: !1104)
!1131 = !DILocation(line: 0, scope: !779, inlinedAt: !1132)
!1132 = distinct !DILocation(line: 107, column: 20, scope: !987, inlinedAt: !1104)
!1133 = !DILocation(line: 285, column: 20, scope: !779, inlinedAt: !1132)
!1134 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1132)
!1135 = !DILocation(line: 0, scope: !987, inlinedAt: !1104)
!1136 = !DILocation(line: 0, scope: !779, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 108, column: 20, scope: !987, inlinedAt: !1104)
!1138 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1137)
!1139 = !DILocation(line: 109, column: 34, scope: !987, inlinedAt: !1104)
!1140 = !DILocation(line: 109, column: 44, scope: !987, inlinedAt: !1104)
!1141 = !DILocation(line: 109, column: 40, scope: !987, inlinedAt: !1104)
!1142 = !DILocation(line: 0, scope: !790, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 109, column: 7, scope: !987, inlinedAt: !1104)
!1144 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1143)
!1145 = !DILocation(line: 110, column: 34, scope: !987, inlinedAt: !1104)
!1146 = !DILocation(line: 110, column: 44, scope: !987, inlinedAt: !1104)
!1147 = !DILocation(line: 110, column: 40, scope: !987, inlinedAt: !1104)
!1148 = !DILocation(line: 0, scope: !790, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 110, column: 7, scope: !987, inlinedAt: !1104)
!1150 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1149)
!1151 = !DILocation(line: 105, column: 36, scope: !988, inlinedAt: !1104)
!1152 = distinct !{!1152, !1130, !1153, !262}
!1153 = !DILocation(line: 111, column: 5, scope: !989, inlinedAt: !1104)
!1154 = !DILocation(line: 0, scope: !790, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 531, column: 11, scope: !852)
!1156 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1155)
!1157 = !DILocation(line: 522, column: 40, scope: !853)
!1158 = distinct !{!1158, !1064, !1159, !262}
!1159 = !DILocation(line: 532, column: 9, scope: !854)
!1160 = !DILocation(line: 0, scope: !836)
!1161 = !DILocation(line: 536, column: 1, scope: !822)
!1162 = distinct !DISubprogram(name: "gsl_linalg_LQ_LQsolve", scope: !2, file: !2, line: 539, type: !823, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1163)
!1163 = !{!1164, !1165, !1166, !1167, !1168, !1169}
!1164 = !DILocalVariable(name: "Q", arg: 1, scope: !1162, file: !2, line: 539, type: !137)
!1165 = !DILocalVariable(name: "L", arg: 2, scope: !1162, file: !2, line: 539, type: !137)
!1166 = !DILocalVariable(name: "b", arg: 3, scope: !1162, file: !2, line: 539, type: !286)
!1167 = !DILocalVariable(name: "x", arg: 4, scope: !1162, file: !2, line: 539, type: !160)
!1168 = !DILocalVariable(name: "N", scope: !1162, file: !2, line: 541, type: !174)
!1169 = !DILocalVariable(name: "M", scope: !1162, file: !2, line: 542, type: !174)
!1170 = !DILocation(line: 0, scope: !1162)
!1171 = !DILocation(line: 541, column: 23, scope: !1162)
!1172 = !DILocation(line: 542, column: 23, scope: !1162)
!1173 = !DILocation(line: 544, column: 9, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 544, column: 7)
!1175 = !DILocation(line: 544, column: 7, scope: !1162)
!1176 = !DILocation(line: 548, column: 15, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 548, column: 12)
!1178 = !DILocation(line: 548, column: 21, scope: !1177)
!1179 = !DILocation(line: 548, column: 26, scope: !1177)
!1180 = !DILocation(line: 548, column: 32, scope: !1177)
!1181 = !DILocation(line: 548, column: 37, scope: !1177)
!1182 = !DILocation(line: 548, column: 42, scope: !1177)
!1183 = !DILocation(line: 548, column: 48, scope: !1177)
!1184 = !DILocation(line: 548, column: 53, scope: !1177)
!1185 = !DILocation(line: 548, column: 12, scope: !1174)
!1186 = !DILocation(line: 556, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 553, column: 5)
!1188 = !DILocation(line: 560, column: 7, scope: !1187)
!1189 = !DILocation(line: 562, column: 7, scope: !1187)
!1190 = !DILocation(line: 0, scope: !1174)
!1191 = !DILocation(line: 564, column: 1, scope: !1162)
!1192 = !DISubprogram(name: "gsl_blas_dgemv", scope: !446, file: !446, line: 205, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!73, !451, !150, !291, !286, !150, !160}
