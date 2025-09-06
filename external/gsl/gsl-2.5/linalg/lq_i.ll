; ModuleID = 'lq.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 19) #5, !dbg !223
  br label %33, !dbg !223

18:                                               ; preds = %31, %14
  %19 = phi i64 [ 0, %14 ], [ %26, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !176, metadata !DIExpression()), !dbg !220
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5, !dbg !226
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %3, ptr noundef nonnull %0, i64 noundef %19) #5, !dbg !227
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5, !dbg !228
  %20 = sub i64 %8, %19, !dbg !229
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %3, i64 noundef %19, i64 noundef %20) #5, !dbg !230
  %21 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %4) #5, !dbg !231
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
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #5, !dbg !253
  %29 = sub i64 %6, %26, !dbg !254
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %26, i64 noundef %19, i64 noundef %29, i64 noundef %20) #5, !dbg !255
  %30 = call i32 @gsl_linalg_householder_mh(double noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #5, !dbg !256
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #5, !dbg !257
  br label %31, !dbg !258

31:                                               ; preds = %28, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5, !dbg !259
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5, !dbg !259
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !176, metadata !DIExpression()), !dbg !220
  %32 = icmp eq i64 %26, %9, !dbg !221
  br i1 %32, label %33, label %18, !dbg !222, !llvm.loop !260

33:                                               ; preds = %31, %17, %12
  %34 = phi i32 [ 19, %17 ], [ 0, %12 ], [ 0, %31 ], !dbg !263
  ret i32 %34, !dbg !264
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !265 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !270 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !273 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !276 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !280 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !283 i32 @gsl_linalg_householder_mh(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 134, i32 noundef 20) #5, !dbg !304
  br label %31, !dbg !304

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !307, !tbaa !215
  %12 = icmp eq i64 %5, %11, !dbg !309
  br i1 %12, label %14, label %13, !dbg !310

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 138, i32 noundef 19) #5, !dbg !311
  br label %31, !dbg !311

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !314, !tbaa !215
  %16 = icmp eq i64 %5, %15, !dbg !316
  br i1 %16, label %18, label %17, !dbg !317

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 142, i32 noundef 19) #5, !dbg !318
  br label %31, !dbg !318

18:                                               ; preds = %14
  %19 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2) #5, !dbg !321
  call void @llvm.dbg.value(metadata ptr %0, metadata !323, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata ptr %1, metadata !328, metadata !DIExpression()), !dbg !330
  call void @llvm.dbg.value(metadata ptr %3, metadata !329, metadata !DIExpression()), !dbg !330
  %20 = load i64, ptr %0, align 8, !dbg !332, !tbaa !205
  %21 = load i64, ptr %6, align 8, !dbg !334, !tbaa !213
  %22 = icmp eq i64 %20, %21, !dbg !335
  br i1 %22, label %24, label %23, !dbg !336

23:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 20) #5, !dbg !337
  br label %31, !dbg !337

24:                                               ; preds = %18
  %25 = load i64, ptr %3, align 8, !dbg !340, !tbaa !215
  %26 = icmp eq i64 %20, %25, !dbg !342
  br i1 %26, label %28, label %27, !dbg !343

27:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 19) #5, !dbg !344
  br label %31, !dbg !344

28:                                               ; preds = %24
  %29 = tail call i32 @gsl_linalg_LQ_vecQT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3), !dbg !347, !range !349
  %30 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #5, !dbg !350
  br label %31, !dbg !351

31:                                               ; preds = %28, %27, %23, %17, %13, %9
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
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 20) #5, !dbg !362
  br label %16, !dbg !362

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8, !dbg !363, !tbaa !215
  %11 = icmp eq i64 %4, %10, !dbg !364
  br i1 %11, label %13, label %12, !dbg !365

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 19) #5, !dbg !366
  br label %16, !dbg !366

13:                                               ; preds = %9
  %14 = tail call i32 @gsl_linalg_LQ_vecQT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2), !dbg !367, !range !349
  %15 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #5, !dbg !368
  br label %16, !dbg !369

16:                                               ; preds = %13, %12, %8
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 340, i32 noundef 19) #5, !dbg !407
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
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 344, i32 noundef 19) #5, !dbg !416
  br label %34, !dbg !416

23:                                               ; preds = %23, %19
  %24 = phi i64 [ 0, %19 ], [ %32, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !379, metadata !DIExpression()), !dbg !413
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5, !dbg !419
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %24) #5, !dbg !420
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5, !dbg !421
  %25 = sub i64 %9, %24, !dbg !422
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %24, i64 noundef %25) #5, !dbg !423
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !424
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %2, i64 noundef %24, i64 noundef %25) #5, !dbg !425
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !426, metadata !DIExpression()), !dbg !432
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !431, metadata !DIExpression()), !dbg !432
  %26 = load ptr, ptr %20, align 8, !dbg !434, !tbaa !242
  %27 = load i64, ptr %21, align 8, !dbg !435, !tbaa !244
  %28 = mul i64 %27, %24, !dbg !436
  %29 = getelementptr inbounds double, ptr %26, i64 %28, !dbg !437
  %30 = load double, ptr %29, align 8, !dbg !437, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %30, metadata !395, metadata !DIExpression()), !dbg !397
  %31 = call i32 @gsl_linalg_householder_hv(double noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #5, !dbg !438
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !439
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5, !dbg !439
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5, !dbg !439
  %32 = add nuw i64 %24, 1, !dbg !440
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !379, metadata !DIExpression()), !dbg !413
  %33 = icmp eq i64 %32, %10, !dbg !414
  br i1 %33, label %34, label %23, !dbg !415, !llvm.loop !441

34:                                               ; preds = %23, %22, %17, %13
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
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 207, i32 noundef 19) #5, !dbg !485
  br label %31, !dbg !485

13:                                               ; preds = %5
  %14 = load i64, ptr %2, align 8, !dbg !488, !tbaa !215
  %15 = icmp eq i64 %10, %14, !dbg !489
  br i1 %15, label %17, label %16, !dbg !490

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 211, i32 noundef 19) #5, !dbg !491
  br label %31, !dbg !491

17:                                               ; preds = %13
  %18 = load i64, ptr %3, align 8, !dbg !494, !tbaa !215
  %19 = icmp eq i64 %8, %18, !dbg !495
  br i1 %19, label %21, label %20, !dbg !496

20:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 215, i32 noundef 19) #5, !dbg !497
  br label %31, !dbg !497

21:                                               ; preds = %17
  %22 = load i64, ptr %4, align 8, !dbg !500, !tbaa !215
  %23 = icmp eq i64 %10, %22, !dbg !501
  br i1 %23, label %25, label %24, !dbg !502

24:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 219, i32 noundef 19) #5, !dbg !503
  br label %31, !dbg !503

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #5, !dbg !506
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %6, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %8, i64 noundef %8) #5, !dbg !507
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5, !dbg !508
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %8) #5, !dbg !509
  %26 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %2) #5, !dbg !510
  %27 = call i32 @gsl_linalg_LQ_vecQT(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4), !dbg !511, !range !349
  %28 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %7) #5, !dbg !512
  %29 = call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %6, ptr noundef nonnull %3) #5, !dbg !513
  call void @gsl_vector_set_zero(ptr noundef nonnull %7) #5, !dbg !514
  %30 = call i32 @gsl_linalg_LQ_vecQ(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4), !dbg !515, !range !349
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5, !dbg !516
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #5, !dbg !516
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 373, i32 noundef 19) #5, !dbg !554
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
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 377, i32 noundef 19) #5, !dbg !563
  br label %34, !dbg !563

23:                                               ; preds = %23, %19
  %24 = phi i64 [ %10, %19 ], [ %25, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !532, metadata !DIExpression()), !dbg !560
  %25 = add i64 %24, -1, !dbg !566
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !532, metadata !DIExpression()), !dbg !560
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5, !dbg !567
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %25) #5, !dbg !568
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5, !dbg !569
  %26 = sub i64 %9, %25, !dbg !570
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %25, i64 noundef %26) #5, !dbg !571
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !572
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %2, i64 noundef %25, i64 noundef %26) #5, !dbg !573
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !426, metadata !DIExpression()), !dbg !574
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !431, metadata !DIExpression()), !dbg !574
  %27 = load ptr, ptr %20, align 8, !dbg !576, !tbaa !242
  %28 = load i64, ptr %21, align 8, !dbg !577, !tbaa !244
  %29 = mul i64 %28, %25, !dbg !578
  %30 = getelementptr inbounds double, ptr %27, i64 %29, !dbg !579
  %31 = load double, ptr %30, align 8, !dbg !579, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %31, metadata !542, metadata !DIExpression()), !dbg !544
  %32 = call i32 @gsl_linalg_householder_hv(double noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #5, !dbg !580
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !581
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5, !dbg !581
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5, !dbg !581
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !532, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !560
  %33 = icmp eq i64 %25, 0, !dbg !561
  br i1 %33, label %34, label %23, !dbg !562, !llvm.loop !582

34:                                               ; preds = %23, %22, %17, %13
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
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 254, i32 noundef 20) #5, !dbg !597
  br label %20, !dbg !597

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !600, !tbaa !215
  %11 = icmp eq i64 %4, %10, !dbg !602
  br i1 %11, label %13, label %12, !dbg !603

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 258, i32 noundef 19) #5, !dbg !604
  br label %20, !dbg !604

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !607, !tbaa !215
  %15 = icmp eq i64 %4, %14, !dbg !609
  br i1 %15, label %17, label %16, !dbg !610

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 262, i32 noundef 19) #5, !dbg !611
  br label %20, !dbg !611

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %1) #5, !dbg !614
  %19 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #5, !dbg !616
  br label %20, !dbg !617

20:                                               ; preds = %17, %16, %12, %8
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
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef 20) #5, !dbg !632
  br label %14, !dbg !632

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8, !dbg !635, !tbaa !215
  %10 = icmp eq i64 %3, %9, !dbg !637
  br i1 %10, label %12, label %11, !dbg !638

11:                                               ; preds = %8
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 288, i32 noundef 19) #5, !dbg !639
  br label %14, !dbg !639

12:                                               ; preds = %8
  %13 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %1) #5, !dbg !642
  br label %14, !dbg !644

14:                                               ; preds = %12, %11, %7
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
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 305, i32 noundef 20) #5, !dbg !658
  br label %20, !dbg !658

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !661, !tbaa !215
  %11 = icmp eq i64 %4, %10, !dbg !663
  br i1 %11, label %13, label %12, !dbg !664

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 309, i32 noundef 19) #5, !dbg !665
  br label %20, !dbg !665

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !668, !tbaa !215
  %15 = icmp eq i64 %4, %14, !dbg !670
  br i1 %15, label %17, label %16, !dbg !671

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 313, i32 noundef 19) #5, !dbg !672
  br label %20, !dbg !672

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %1) #5, !dbg !675
  %19 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #5, !dbg !677
  br label %20, !dbg !678

20:                                               ; preds = %17, %16, %12, %8
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

17:                                               ; preds = %13, %4
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 409, i32 noundef 20) #5, !dbg !727
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

25:                                               ; preds = %21, %18
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 413, i32 noundef 20) #5, !dbg !736
  br label %120, !dbg !736

26:                                               ; preds = %21
  %27 = load i64, ptr %1, align 8, !dbg !739, !tbaa !215
  %28 = tail call i64 @llvm.umin.i64(i64 %10, i64 %8), !dbg !740
  %29 = icmp eq i64 %27, %28, !dbg !741
  br i1 %29, label %31, label %30, !dbg !742

30:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 19) #5, !dbg !743
  br label %120, !dbg !743

31:                                               ; preds = %26
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %2) #5, !dbg !746
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

49:                                               ; preds = %49, %33
  %50 = phi i64 [ %27, %33 ], [ %51, %49 ]
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !700, metadata !DIExpression()), !dbg !747
  %51 = add i64 %50, -1, !dbg !756
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !700, metadata !DIExpression()), !dbg !747
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5, !dbg !757
  call void @gsl_matrix_const_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %51) #5, !dbg !758
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !759
  %52 = sub i64 %10, %51, !dbg !760
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %6, ptr noundef nonnull %5, i64 noundef %51, i64 noundef %52) #5, !dbg !761
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #5, !dbg !762
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %7, ptr noundef nonnull %2, i64 noundef %51, i64 noundef %51, i64 noundef %52, i64 noundef %52) #5, !dbg !763
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !426, metadata !DIExpression()), !dbg !764
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !431, metadata !DIExpression()), !dbg !764
  %53 = load ptr, ptr %34, align 8, !dbg !766, !tbaa !242
  %54 = load i64, ptr %35, align 8, !dbg !767, !tbaa !244
  %55 = mul i64 %54, %51, !dbg !768
  %56 = getelementptr inbounds double, ptr %53, i64 %55, !dbg !769
  %57 = load double, ptr %56, align 8, !dbg !769, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %57, metadata !713, metadata !DIExpression()), !dbg !715
  %58 = call i32 @gsl_linalg_householder_mh(double noundef %57, ptr noundef nonnull %6, ptr noundef nonnull %7) #5, !dbg !770
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #5, !dbg !771
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !771
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5, !dbg !771
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !700, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !747
  %59 = icmp eq i64 %51, 0, !dbg !748
  br i1 %59, label %36, label %49, !dbg !749, !llvm.loop !772

60:                                               ; preds = %117, %38
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

81:                                               ; preds = %81, %78
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

14:                                               ; preds = %10, %4
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 475, i32 noundef 20) #5, !dbg !867
  br label %292, !dbg !867

15:                                               ; preds = %10
  %16 = load i64, ptr %3, align 8, !dbg !870, !tbaa !215
  %17 = icmp eq i64 %16, %7, !dbg !871
  br i1 %17, label %19, label %18, !dbg !872

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 479, i32 noundef 19) #5, !dbg !873
  br label %292, !dbg !873

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
  br i1 %24, label %138, label %27, !dbg !882

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
  tail call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 483, i32 noundef 19) #5, !dbg !883
  br label %292, !dbg !883

39:                                               ; preds = %135, %27
  %40 = phi i64 [ %23, %27 ], [ %136, %135 ]
  %41 = phi i64 [ %7, %27 ], [ %40, %135 ]
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
  br i1 %49, label %68, label %50, !dbg !915

50:                                               ; preds = %39
  %51 = tail call double @llvm.fabs.f64(double %44), !dbg !916
  %52 = tail call double @llvm.fabs.f64(double %48), !dbg !917
  %53 = fcmp ogt double %51, %52, !dbg !918
  br i1 %53, label %54, label %61, !dbg !919

54:                                               ; preds = %50
  %55 = fneg double %48, !dbg !920
  %56 = fdiv double %55, %44, !dbg !921
  call void @llvm.dbg.value(metadata double %56, metadata !904, metadata !DIExpression()), !dbg !922
  %57 = fmul double %56, %56, !dbg !923
  %handler_result = call double @fAddHandlerDouble(double %57, double 1.000000e+00), !dbg !924
  %58 = tail call double @llvm.sqrt.f64(double %handler_result), !dbg !924
  %59 = fdiv double 1.000000e+00, %58, !dbg !925
  call void @llvm.dbg.value(metadata double %59, metadata !908, metadata !DIExpression()), !dbg !922
  tail call void @llvm.dbg.value(metadata double %59, metadata !843, metadata !DIExpression()), !dbg !890
  %60 = fmul double %56, %59, !dbg !926
  tail call void @llvm.dbg.value(metadata double %60, metadata !839, metadata !DIExpression()), !dbg !890
  br label %68, !dbg !927

61:                                               ; preds = %50
  %62 = fneg double %44, !dbg !928
  %63 = fdiv double %62, %48, !dbg !929
  call void @llvm.dbg.value(metadata double %63, metadata !909, metadata !DIExpression()), !dbg !930
  %64 = fmul double %63, %63, !dbg !931
  %handler_result1 = call double @fAddHandlerDouble(double %64, double 1.000000e+00), !dbg !932
  %65 = tail call double @llvm.sqrt.f64(double %handler_result1), !dbg !932
  %66 = fdiv double 1.000000e+00, %65, !dbg !933
  call void @llvm.dbg.value(metadata double %66, metadata !911, metadata !DIExpression()), !dbg !930
  tail call void @llvm.dbg.value(metadata double %66, metadata !839, metadata !DIExpression()), !dbg !890
  %67 = fmul double %63, %66, !dbg !934
  tail call void @llvm.dbg.value(metadata double %67, metadata !843, metadata !DIExpression()), !dbg !890
  br label %68

68:                                               ; preds = %61, %54, %39
  %69 = phi double [ %60, %54 ], [ %66, %61 ], [ 1.000000e+00, %39 ], !dbg !935
  %70 = phi double [ %59, %54 ], [ %67, %61 ], [ 0.000000e+00, %39 ], !dbg !935
  tail call void @llvm.dbg.value(metadata double %70, metadata !843, metadata !DIExpression()), !dbg !890
  tail call void @llvm.dbg.value(metadata double %69, metadata !839, metadata !DIExpression()), !dbg !890
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !936, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !941, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !942, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata double %69, metadata !943, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata double %70, metadata !944, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !431, metadata !DIExpression()), !dbg !949
  tail call void @llvm.dbg.value(metadata double %48, metadata !945, metadata !DIExpression()), !dbg !947
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !431, metadata !DIExpression()), !dbg !951
  tail call void @llvm.dbg.value(metadata double %44, metadata !946, metadata !DIExpression()), !dbg !947
  %71 = fmul double %48, %69, !dbg !953
  %72 = fmul double %44, %70, !dbg !954
  %handler_result2 = call double @fSubHandlerDouble(double %71, double %72), !dbg !955
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !232, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !237, metadata !DIExpression()), !dbg !957
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !238, metadata !DIExpression()), !dbg !957
  store double %handler_result2, ptr %47, align 8, !dbg !955, !tbaa !248
  %73 = fmul double %48, %70, !dbg !958
  %74 = fmul double %44, %69, !dbg !959
  %handler_result3 = call double @fAddHandlerDouble(double %74, double %73), !dbg !960
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !232, metadata !DIExpression()), !dbg !962
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !237, metadata !DIExpression()), !dbg !962
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !238, metadata !DIExpression()), !dbg !962
  store double %handler_result3, ptr %43, align 8, !dbg !960, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %7, metadata !963, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i64 %5, metadata !969, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr %0, metadata !970, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i64 %45, metadata !972, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i64 %40, metadata !973, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata double %69, metadata !974, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata double %70, metadata !975, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i64 0, metadata !976, metadata !DIExpression()), !dbg !987
  br i1 %30, label %115, label %75, !dbg !989

75:                                               ; preds = %68
  %76 = load ptr, ptr %31, align 8, !tbaa !754
  %77 = load i64, ptr %32, align 8, !tbaa !755
  %78 = mul i64 %77, %45
  %79 = getelementptr double, ptr %76, i64 %78
  %80 = mul i64 %77, %40
  %81 = getelementptr double, ptr %76, i64 %80
  br label %82, !dbg !989

82:                                               ; preds = %82, %75
  %83 = phi i64 [ 0, %75 ], [ %102, %82 ]
  %84 = phi i64 [ 0, %75 ], [ %103, %82 ]
  call void @llvm.dbg.value(metadata i64 %83, metadata !976, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %45, metadata !783, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %83, metadata !784, metadata !DIExpression()), !dbg !990
  %85 = getelementptr double, ptr %79, i64 %83, !dbg !992
  %86 = load double, ptr %85, align 8, !dbg !992, !tbaa !248
  call void @llvm.dbg.value(metadata double %86, metadata !977, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %40, metadata !783, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %83, metadata !784, metadata !DIExpression()), !dbg !994
  %87 = getelementptr double, ptr %81, i64 %83, !dbg !996
  %88 = load double, ptr %87, align 8, !dbg !996, !tbaa !248
  call void @llvm.dbg.value(metadata double %88, metadata !981, metadata !DIExpression()), !dbg !993
  %89 = fmul double %69, %86, !dbg !997
  %90 = fmul double %70, %88, !dbg !998
  %handler_result4 = call double @fSubHandlerDouble(double %89, double %90), !dbg !999
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %45, metadata !795, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %83, metadata !796, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !797, metadata !DIExpression()), !dbg !1001
  store double %handler_result4, ptr %85, align 8, !dbg !999, !tbaa !248
  %91 = fmul double %70, %86, !dbg !1002
  %92 = fmul double %69, %88, !dbg !1003
  %handler_result5 = call double @fAddHandlerDouble(double %91, double %92), !dbg !1004
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %40, metadata !795, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %83, metadata !796, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata double %handler_result5, metadata !797, metadata !DIExpression()), !dbg !1006
  store double %handler_result5, ptr %87, align 8, !dbg !1004, !tbaa !248
  %93 = or disjoint i64 %83, 1, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %93, metadata !976, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata i64 %93, metadata !976, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %45, metadata !783, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %93, metadata !784, metadata !DIExpression()), !dbg !990
  %94 = getelementptr double, ptr %79, i64 %93, !dbg !992
  %95 = load double, ptr %94, align 8, !dbg !992, !tbaa !248
  call void @llvm.dbg.value(metadata double %95, metadata !977, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %40, metadata !783, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %93, metadata !784, metadata !DIExpression()), !dbg !994
  %96 = getelementptr double, ptr %81, i64 %93, !dbg !996
  %97 = load double, ptr %96, align 8, !dbg !996, !tbaa !248
  call void @llvm.dbg.value(metadata double %97, metadata !981, metadata !DIExpression()), !dbg !993
  %98 = fmul double %69, %95, !dbg !997
  %99 = fmul double %70, %97, !dbg !998
  %handler_result6 = call double @fSubHandlerDouble(double %98, double %99), !dbg !999
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %45, metadata !795, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %93, metadata !796, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !797, metadata !DIExpression()), !dbg !1001
  store double %handler_result6, ptr %94, align 8, !dbg !999, !tbaa !248
  %100 = fmul double %70, %95, !dbg !1002
  %101 = fmul double %69, %97, !dbg !1003
  %handler_result7 = call double @fAddHandlerDouble(double %100, double %101), !dbg !1004
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %40, metadata !795, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %93, metadata !796, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !797, metadata !DIExpression()), !dbg !1006
  store double %handler_result7, ptr %96, align 8, !dbg !1004, !tbaa !248
  %102 = add nuw i64 %83, 2, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %102, metadata !976, metadata !DIExpression()), !dbg !987
  %103 = add i64 %84, 2, !dbg !989
  %104 = icmp eq i64 %103, %36, !dbg !989
  br i1 %104, label %105, label %82, !dbg !989, !llvm.loop !1008

105:                                              ; preds = %82
  br i1 %37, label %115, label %106, !dbg !989

106:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 %102, metadata !976, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %45, metadata !783, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i64 %102, metadata !784, metadata !DIExpression()), !dbg !990
  %107 = getelementptr double, ptr %79, i64 %102, !dbg !992
  %108 = load double, ptr %107, align 8, !dbg !992, !tbaa !248
  call void @llvm.dbg.value(metadata double %108, metadata !977, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %40, metadata !783, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %102, metadata !784, metadata !DIExpression()), !dbg !994
  %109 = getelementptr double, ptr %81, i64 %102, !dbg !996
  %110 = load double, ptr %109, align 8, !dbg !996, !tbaa !248
  call void @llvm.dbg.value(metadata double %110, metadata !981, metadata !DIExpression()), !dbg !993
  %111 = fmul double %69, %108, !dbg !997
  %112 = fmul double %70, %110, !dbg !998
  %handler_result8 = call double @fSubHandlerDouble(double %111, double %112), !dbg !999
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %45, metadata !795, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata i64 %102, metadata !796, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.value(metadata double %handler_result8, metadata !797, metadata !DIExpression()), !dbg !1001
  store double %handler_result8, ptr %107, align 8, !dbg !999, !tbaa !248
  %113 = fmul double %70, %108, !dbg !1002
  %114 = fmul double %69, %110, !dbg !1003
  %handler_result9 = call double @fAddHandlerDouble(double %113, double %114), !dbg !1004
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %40, metadata !795, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %102, metadata !796, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata double %handler_result9, metadata !797, metadata !DIExpression()), !dbg !1006
  store double %handler_result9, ptr %109, align 8, !dbg !1004, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %102, metadata !976, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !987
  br label %115, !dbg !1010

115:                                              ; preds = %106, %105, %68
  %116 = tail call i64 @llvm.umin.i64(i64 %45, i64 %40), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %116, metadata !976, metadata !DIExpression()), !dbg !987
  %117 = icmp ult i64 %116, %5, !dbg !1011
  br i1 %117, label %118, label %135, !dbg !1012

118:                                              ; preds = %115
  %119 = load ptr, ptr %33, align 8, !tbaa !754
  %120 = load i64, ptr %34, align 8, !tbaa !755
  br label %121, !dbg !1012

121:                                              ; preds = %121, %118
  %122 = phi i64 [ %116, %118 ], [ %133, %121 ]
  call void @llvm.dbg.value(metadata i64 %122, metadata !976, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i64 %122, metadata !783, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i64 %45, metadata !784, metadata !DIExpression()), !dbg !1013
  %123 = mul i64 %122, %120, !dbg !1015
  %124 = getelementptr double, ptr %119, i64 %123, !dbg !1016
  %125 = getelementptr double, ptr %124, i64 %45, !dbg !1016
  %126 = load double, ptr %125, align 8, !dbg !1016, !tbaa !248
  call void @llvm.dbg.value(metadata double %126, metadata !982, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i64 %122, metadata !783, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata i64 %40, metadata !784, metadata !DIExpression()), !dbg !1018
  %127 = getelementptr double, ptr %124, i64 %40, !dbg !1020
  %128 = load double, ptr %127, align 8, !dbg !1020, !tbaa !248
  call void @llvm.dbg.value(metadata double %128, metadata !986, metadata !DIExpression()), !dbg !1017
  %129 = fmul double %69, %126, !dbg !1021
  %130 = fmul double %70, %128, !dbg !1022
  %handler_result10 = call double @fSubHandlerDouble(double %129, double %130), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %122, metadata !795, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i64 %45, metadata !796, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata double %handler_result10, metadata !797, metadata !DIExpression()), !dbg !1025
  store double %handler_result10, ptr %125, align 8, !dbg !1023, !tbaa !248
  %131 = fmul double %70, %126, !dbg !1026
  %132 = fmul double %69, %128, !dbg !1027
  %handler_result11 = call double @fAddHandlerDouble(double %131, double %132), !dbg !1028
  call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %122, metadata !795, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %40, metadata !796, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata double %handler_result11, metadata !797, metadata !DIExpression()), !dbg !1030
  store double %handler_result11, ptr %127, align 8, !dbg !1028, !tbaa !248
  %133 = add nuw i64 %122, 1, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %133, metadata !976, metadata !DIExpression()), !dbg !987
  %134 = icmp eq i64 %133, %5, !dbg !1011
  br i1 %134, label %135, label %121, !dbg !1012, !llvm.loop !1032

135:                                              ; preds = %121, %115
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !837, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !880
  %136 = add i64 %40, -1, !dbg !879
  tail call void @llvm.dbg.value(metadata i64 %136, metadata !837, metadata !DIExpression()), !dbg !880
  %137 = icmp eq i64 %136, 0, !dbg !881
  br i1 %137, label %138, label %39, !dbg !882, !llvm.loop !1034

138:                                              ; preds = %135, %22
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata i64 0, metadata !431, metadata !DIExpression()), !dbg !1036
  %139 = load double, ptr %26, align 8, !dbg !1038, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %139, metadata !838, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata i64 0, metadata !832, metadata !DIExpression()), !dbg !880
  %140 = icmp eq i64 %5, 0, !dbg !1039
  br i1 %140, label %165, label %141, !dbg !1040

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !754
  %144 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %145 = load i64, ptr %144, align 8, !tbaa !755
  %146 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !242
  %148 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %149 = load i64, ptr %148, align 8, !tbaa !244
  %150 = and i64 %5, 1, !dbg !1040
  %151 = icmp eq i64 %5, 1, !dbg !1040
  br i1 %151, label %154, label %152, !dbg !1040

152:                                              ; preds = %141
  %153 = and i64 %5, -2, !dbg !1040
  br label %182, !dbg !1040

154:                                              ; preds = %182, %141
  %155 = phi i64 [ 0, %141 ], [ %200, %182 ]
  %156 = icmp eq i64 %150, 0, !dbg !1040
  br i1 %156, label %165, label %157, !dbg !1040

157:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !832, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !783, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 0, metadata !784, metadata !DIExpression()), !dbg !1041
  %158 = mul i64 %145, %155, !dbg !1043
  %159 = getelementptr double, ptr %143, i64 %158, !dbg !1044
  %160 = load double, ptr %159, align 8, !dbg !1044, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %160, metadata !846, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !431, metadata !DIExpression()), !dbg !1046
  %161 = mul i64 %149, %155, !dbg !1048
  %162 = getelementptr inbounds double, ptr %147, i64 %161, !dbg !1049
  %163 = load double, ptr %162, align 8, !dbg !1049, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %163, metadata !850, metadata !DIExpression()), !dbg !1045
  %164 = fmul double %139, %163, !dbg !1050
  %handler_result12 = call double @fAddHandlerDouble(double %160, double %164), !dbg !1051
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !795, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !797, metadata !DIExpression()), !dbg !1053
  store double %handler_result12, ptr %159, align 8, !dbg !1051, !tbaa !248
  tail call void @llvm.dbg.value(metadata i64 %155, metadata !832, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !880
  br label %165

165:                                              ; preds = %157, %154, %138
  %166 = add i64 %5, 1
  %167 = tail call i64 @llvm.umin.i64(i64 %7, i64 %166)
  tail call void @llvm.dbg.value(metadata i64 1, metadata !837, metadata !DIExpression()), !dbg !880
  %168 = icmp ugt i64 %167, 1, !dbg !1054
  br i1 %168, label %169, label %292, !dbg !1055

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !754
  %172 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %173 = load i64, ptr %172, align 8, !tbaa !755
  %174 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !754
  %176 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %177 = load i64, ptr %176, align 8, !tbaa !755
  %178 = and i64 %7, 1
  %179 = icmp eq i64 %23, 0
  %180 = and i64 %7, -2
  %181 = icmp eq i64 %178, 0
  br label %203, !dbg !1055

182:                                              ; preds = %182, %152
  %183 = phi i64 [ 0, %152 ], [ %200, %182 ]
  %184 = phi i64 [ 0, %152 ], [ %201, %182 ]
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !832, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !783, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 0, metadata !784, metadata !DIExpression()), !dbg !1041
  %185 = mul i64 %145, %183, !dbg !1043
  %186 = getelementptr double, ptr %143, i64 %185, !dbg !1044
  %187 = load double, ptr %186, align 8, !dbg !1044, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %187, metadata !846, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !431, metadata !DIExpression()), !dbg !1046
  %188 = mul i64 %149, %183, !dbg !1048
  %189 = getelementptr inbounds double, ptr %147, i64 %188, !dbg !1049
  %190 = load double, ptr %189, align 8, !dbg !1049, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %190, metadata !850, metadata !DIExpression()), !dbg !1045
  %191 = fmul double %139, %190, !dbg !1050
  %handler_result13 = call double @fAddHandlerDouble(double %187, double %191), !dbg !1051
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !795, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !797, metadata !DIExpression()), !dbg !1053
  store double %handler_result13, ptr %186, align 8, !dbg !1051, !tbaa !248
  %192 = or disjoint i64 %183, 1, !dbg !1056
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !832, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !832, metadata !DIExpression()), !dbg !880
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !783, metadata !DIExpression()), !dbg !1041
  tail call void @llvm.dbg.value(metadata i64 0, metadata !784, metadata !DIExpression()), !dbg !1041
  %193 = mul i64 %145, %192, !dbg !1043
  %194 = getelementptr double, ptr %143, i64 %193, !dbg !1044
  %195 = load double, ptr %194, align 8, !dbg !1044, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %195, metadata !846, metadata !DIExpression()), !dbg !1045
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !431, metadata !DIExpression()), !dbg !1046
  %196 = mul i64 %149, %192, !dbg !1048
  %197 = getelementptr inbounds double, ptr %147, i64 %196, !dbg !1049
  %198 = load double, ptr %197, align 8, !dbg !1049, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %198, metadata !850, metadata !DIExpression()), !dbg !1045
  %199 = fmul double %139, %198, !dbg !1050
  %handler_result14 = call double @fAddHandlerDouble(double %195, double %199), !dbg !1051
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !795, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()), !dbg !1053
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !797, metadata !DIExpression()), !dbg !1053
  store double %handler_result14, ptr %194, align 8, !dbg !1051, !tbaa !248
  %200 = add nuw i64 %183, 2, !dbg !1056
  tail call void @llvm.dbg.value(metadata i64 %200, metadata !832, metadata !DIExpression()), !dbg !880
  %201 = add i64 %184, 2, !dbg !1040
  %202 = icmp eq i64 %201, %153, !dbg !1040
  br i1 %202, label %154, label %182, !dbg !1040, !llvm.loop !1057

203:                                              ; preds = %289, %169
  %204 = phi i64 [ 1, %169 ], [ %290, %289 ]
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !837, metadata !DIExpression()), !dbg !880
  %205 = add i64 %204, -1, !dbg !1059
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !783, metadata !DIExpression()), !dbg !1060
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !784, metadata !DIExpression()), !dbg !1060
  %206 = mul i64 %173, %205, !dbg !1062
  %207 = getelementptr double, ptr %171, i64 %206, !dbg !1063
  %208 = getelementptr double, ptr %207, i64 %205, !dbg !1063
  %209 = load double, ptr %208, align 8, !dbg !1063, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %209, metadata !856, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1065
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !783, metadata !DIExpression()), !dbg !1065
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !784, metadata !DIExpression()), !dbg !1065
  %210 = getelementptr double, ptr %207, i64 %204, !dbg !1067
  %211 = load double, ptr %210, align 8, !dbg !1067, !tbaa !248
  tail call void @llvm.dbg.value(metadata double %211, metadata !857, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata double %209, metadata !896, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata double %211, metadata !901, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr undef, metadata !902, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr undef, metadata !903, metadata !DIExpression()), !dbg !1068
  %212 = fcmp oeq double %211, 0.000000e+00, !dbg !1070
  br i1 %212, label %231, label %213, !dbg !1071

213:                                              ; preds = %203
  %214 = tail call double @llvm.fabs.f64(double %211), !dbg !1072
  %215 = tail call double @llvm.fabs.f64(double %209), !dbg !1073
  %216 = fcmp ogt double %214, %215, !dbg !1074
  br i1 %216, label %217, label %224, !dbg !1075

217:                                              ; preds = %213
  %218 = fneg double %209, !dbg !1076
  %219 = fdiv double %218, %211, !dbg !1077
  call void @llvm.dbg.value(metadata double %219, metadata !904, metadata !DIExpression()), !dbg !1078
  %220 = fmul double %219, %219, !dbg !1079
  %handler_result15 = call double @fAddHandlerDouble(double %220, double 1.000000e+00), !dbg !1080
  %221 = tail call double @llvm.sqrt.f64(double %handler_result15), !dbg !1080
  %222 = fdiv double 1.000000e+00, %221, !dbg !1081
  call void @llvm.dbg.value(metadata double %222, metadata !908, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata double %222, metadata !855, metadata !DIExpression()), !dbg !1064
  %223 = fmul double %219, %222, !dbg !1082
  tail call void @llvm.dbg.value(metadata double %223, metadata !851, metadata !DIExpression()), !dbg !1064
  br label %231, !dbg !1083

224:                                              ; preds = %213
  %225 = fneg double %211, !dbg !1084
  %226 = fdiv double %225, %209, !dbg !1085
  call void @llvm.dbg.value(metadata double %226, metadata !909, metadata !DIExpression()), !dbg !1086
  %227 = fmul double %226, %226, !dbg !1087
  %handler_result16 = call double @fAddHandlerDouble(double %227, double 1.000000e+00), !dbg !1088
  %228 = tail call double @llvm.sqrt.f64(double %handler_result16), !dbg !1088
  %229 = fdiv double 1.000000e+00, %228, !dbg !1089
  call void @llvm.dbg.value(metadata double %229, metadata !911, metadata !DIExpression()), !dbg !1086
  tail call void @llvm.dbg.value(metadata double %229, metadata !851, metadata !DIExpression()), !dbg !1064
  %230 = fmul double %226, %229, !dbg !1090
  tail call void @llvm.dbg.value(metadata double %230, metadata !855, metadata !DIExpression()), !dbg !1064
  br label %231

231:                                              ; preds = %224, %217, %203
  %232 = phi double [ %223, %217 ], [ %229, %224 ], [ 1.000000e+00, %203 ], !dbg !1091
  %233 = phi double [ %222, %217 ], [ %230, %224 ], [ 0.000000e+00, %203 ], !dbg !1091
  tail call void @llvm.dbg.value(metadata double %233, metadata !855, metadata !DIExpression()), !dbg !1064
  tail call void @llvm.dbg.value(metadata double %232, metadata !851, metadata !DIExpression()), !dbg !1064
  call void @llvm.dbg.value(metadata i64 %7, metadata !963, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %5, metadata !969, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr %0, metadata !970, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %205, metadata !972, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %204, metadata !973, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %232, metadata !974, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata double %233, metadata !975, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 0, metadata !976, metadata !DIExpression()), !dbg !1092
  %234 = mul i64 %177, %205
  %235 = getelementptr double, ptr %175, i64 %234
  %236 = mul i64 %177, %204
  %237 = getelementptr double, ptr %175, i64 %236
  br i1 %179, label %261, label %238, !dbg !1094

238:                                              ; preds = %238, %231
  %239 = phi i64 [ %258, %238 ], [ 0, %231 ]
  %240 = phi i64 [ %259, %238 ], [ 0, %231 ]
  call void @llvm.dbg.value(metadata i64 %239, metadata !976, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %205, metadata !783, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %239, metadata !784, metadata !DIExpression()), !dbg !1095
  %241 = getelementptr double, ptr %235, i64 %239, !dbg !1097
  %242 = load double, ptr %241, align 8, !dbg !1097, !tbaa !248
  call void @llvm.dbg.value(metadata double %242, metadata !977, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %204, metadata !783, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %239, metadata !784, metadata !DIExpression()), !dbg !1099
  %243 = getelementptr double, ptr %237, i64 %239, !dbg !1101
  %244 = load double, ptr %243, align 8, !dbg !1101, !tbaa !248
  call void @llvm.dbg.value(metadata double %244, metadata !981, metadata !DIExpression()), !dbg !1098
  %245 = fmul double %232, %242, !dbg !1102
  %246 = fmul double %233, %244, !dbg !1103
  %handler_result17 = call double @fSubHandlerDouble(double %245, double %246), !dbg !1104
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %205, metadata !795, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %239, metadata !796, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result17, metadata !797, metadata !DIExpression()), !dbg !1106
  store double %handler_result17, ptr %241, align 8, !dbg !1104, !tbaa !248
  %247 = fmul double %233, %242, !dbg !1107
  %248 = fmul double %232, %244, !dbg !1108
  %handler_result18 = call double @fAddHandlerDouble(double %247, double %248), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %204, metadata !795, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %239, metadata !796, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata double %handler_result18, metadata !797, metadata !DIExpression()), !dbg !1111
  store double %handler_result18, ptr %243, align 8, !dbg !1109, !tbaa !248
  %249 = or disjoint i64 %239, 1, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %249, metadata !976, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %249, metadata !976, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %205, metadata !783, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %249, metadata !784, metadata !DIExpression()), !dbg !1095
  %250 = getelementptr double, ptr %235, i64 %249, !dbg !1097
  %251 = load double, ptr %250, align 8, !dbg !1097, !tbaa !248
  call void @llvm.dbg.value(metadata double %251, metadata !977, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %204, metadata !783, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %249, metadata !784, metadata !DIExpression()), !dbg !1099
  %252 = getelementptr double, ptr %237, i64 %249, !dbg !1101
  %253 = load double, ptr %252, align 8, !dbg !1101, !tbaa !248
  call void @llvm.dbg.value(metadata double %253, metadata !981, metadata !DIExpression()), !dbg !1098
  %254 = fmul double %232, %251, !dbg !1102
  %255 = fmul double %233, %253, !dbg !1103
  %handler_result19 = call double @fSubHandlerDouble(double %254, double %255), !dbg !1104
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %205, metadata !795, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %249, metadata !796, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result19, metadata !797, metadata !DIExpression()), !dbg !1106
  store double %handler_result19, ptr %250, align 8, !dbg !1104, !tbaa !248
  %256 = fmul double %233, %251, !dbg !1107
  %257 = fmul double %232, %253, !dbg !1108
  %handler_result20 = call double @fAddHandlerDouble(double %256, double %257), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %204, metadata !795, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %249, metadata !796, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata double %handler_result20, metadata !797, metadata !DIExpression()), !dbg !1111
  store double %handler_result20, ptr %252, align 8, !dbg !1109, !tbaa !248
  %258 = add nuw i64 %239, 2, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %258, metadata !976, metadata !DIExpression()), !dbg !1092
  %259 = add nuw i64 %240, 2, !dbg !1094
  %260 = icmp eq i64 %259, %180, !dbg !1094
  br i1 %260, label %261, label %238, !dbg !1094, !llvm.loop !1113

261:                                              ; preds = %238, %231
  %262 = phi i64 [ 0, %231 ], [ %258, %238 ]
  br i1 %181, label %272, label %263, !dbg !1094

263:                                              ; preds = %261
  call void @llvm.dbg.value(metadata i64 %262, metadata !976, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %205, metadata !783, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %262, metadata !784, metadata !DIExpression()), !dbg !1095
  %264 = getelementptr double, ptr %235, i64 %262, !dbg !1097
  %265 = load double, ptr %264, align 8, !dbg !1097, !tbaa !248
  call void @llvm.dbg.value(metadata double %265, metadata !977, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata ptr %0, metadata !778, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %204, metadata !783, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %262, metadata !784, metadata !DIExpression()), !dbg !1099
  %266 = getelementptr double, ptr %237, i64 %262, !dbg !1101
  %267 = load double, ptr %266, align 8, !dbg !1101, !tbaa !248
  call void @llvm.dbg.value(metadata double %267, metadata !981, metadata !DIExpression()), !dbg !1098
  %268 = fmul double %232, %265, !dbg !1102
  %269 = fmul double %233, %267, !dbg !1103
  %handler_result21 = call double @fSubHandlerDouble(double %268, double %269), !dbg !1104
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %205, metadata !795, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %262, metadata !796, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata double %handler_result21, metadata !797, metadata !DIExpression()), !dbg !1106
  store double %handler_result21, ptr %264, align 8, !dbg !1104, !tbaa !248
  %270 = fmul double %233, %265, !dbg !1107
  %271 = fmul double %232, %267, !dbg !1108
  %handler_result22 = call double @fAddHandlerDouble(double %270, double %271), !dbg !1109
  call void @llvm.dbg.value(metadata ptr %0, metadata !789, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %204, metadata !795, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %262, metadata !796, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata double %handler_result22, metadata !797, metadata !DIExpression()), !dbg !1111
  store double %handler_result22, ptr %266, align 8, !dbg !1109, !tbaa !248
  call void @llvm.dbg.value(metadata i64 %262, metadata !976, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1092
  br label %272, !dbg !1115

272:                                              ; preds = %263, %261
  %273 = tail call i64 @llvm.umin.i64(i64 %205, i64 %204), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %273, metadata !976, metadata !DIExpression()), !dbg !1092
  %274 = icmp ult i64 %273, %5, !dbg !1116
  br i1 %274, label %275, label %289, !dbg !1117

275:                                              ; preds = %275, %272
  %276 = phi i64 [ %287, %275 ], [ %273, %272 ]
  call void @llvm.dbg.value(metadata i64 %276, metadata !976, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %276, metadata !783, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %205, metadata !784, metadata !DIExpression()), !dbg !1118
  %277 = mul i64 %276, %173, !dbg !1120
  %278 = getelementptr double, ptr %171, i64 %277, !dbg !1121
  %279 = getelementptr double, ptr %278, i64 %205, !dbg !1121
  %280 = load double, ptr %279, align 8, !dbg !1121, !tbaa !248
  call void @llvm.dbg.value(metadata double %280, metadata !982, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata ptr %1, metadata !778, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %276, metadata !783, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %204, metadata !784, metadata !DIExpression()), !dbg !1123
  %281 = getelementptr double, ptr %278, i64 %204, !dbg !1125
  %282 = load double, ptr %281, align 8, !dbg !1125, !tbaa !248
  call void @llvm.dbg.value(metadata double %282, metadata !986, metadata !DIExpression()), !dbg !1122
  %283 = fmul double %232, %280, !dbg !1126
  %284 = fmul double %233, %282, !dbg !1127
  %handler_result23 = call double @fSubHandlerDouble(double %283, double %284), !dbg !1128
  call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %276, metadata !795, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata i64 %205, metadata !796, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata double %handler_result23, metadata !797, metadata !DIExpression()), !dbg !1130
  store double %handler_result23, ptr %279, align 8, !dbg !1128, !tbaa !248
  %285 = fmul double %233, %280, !dbg !1131
  %286 = fmul double %232, %282, !dbg !1132
  %handler_result24 = call double @fAddHandlerDouble(double %285, double %286), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 %276, metadata !795, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata i64 %204, metadata !796, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.value(metadata double %handler_result24, metadata !797, metadata !DIExpression()), !dbg !1135
  store double %handler_result24, ptr %281, align 8, !dbg !1133, !tbaa !248
  %287 = add nuw i64 %276, 1, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %287, metadata !976, metadata !DIExpression()), !dbg !1092
  %288 = icmp eq i64 %287, %5, !dbg !1116
  br i1 %288, label %289, label %275, !dbg !1117, !llvm.loop !1137

289:                                              ; preds = %275, %272
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !1139
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !795, metadata !DIExpression()), !dbg !1139
  tail call void @llvm.dbg.value(metadata i64 %204, metadata !796, metadata !DIExpression()), !dbg !1139
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !797, metadata !DIExpression()), !dbg !1139
  store double 0.000000e+00, ptr %210, align 8, !dbg !1141, !tbaa !248
  %290 = add nuw i64 %204, 1, !dbg !1142
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !837, metadata !DIExpression()), !dbg !880
  %291 = icmp eq i64 %290, %167, !dbg !1054
  br i1 %291, label %292, label %203, !dbg !1055, !llvm.loop !1143

292:                                              ; preds = %289, %165, %38, %18, %14
  %293 = phi i32 [ 20, %14 ], [ 19, %18 ], [ 19, %38 ], [ 0, %165 ], [ 0, %289 ], !dbg !1145
  ret i32 %293, !dbg !1146
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_LQ_LQsolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1147 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1149, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1150, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1151, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1152, metadata !DIExpression()), !dbg !1155
  %5 = load i64, ptr %1, align 8, !dbg !1156, !tbaa !205
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1153, metadata !DIExpression()), !dbg !1155
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !1157
  %7 = load i64, ptr %6, align 8, !dbg !1157, !tbaa !213
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1154, metadata !DIExpression()), !dbg !1155
  %8 = icmp eq i64 %7, %5, !dbg !1158
  br i1 %8, label %9, label %21, !dbg !1160

9:                                                ; preds = %4
  %10 = load i64, ptr %0, align 8, !dbg !1161, !tbaa !205
  %11 = icmp eq i64 %10, %5, !dbg !1163
  br i1 %11, label %12, label %21, !dbg !1164

12:                                               ; preds = %9
  %13 = load i64, ptr %2, align 8, !dbg !1165, !tbaa !215
  %14 = icmp eq i64 %13, %5, !dbg !1166
  br i1 %14, label %15, label %21, !dbg !1167

15:                                               ; preds = %12
  %16 = load i64, ptr %3, align 8, !dbg !1168, !tbaa !215
  %17 = icmp eq i64 %16, %5, !dbg !1169
  br i1 %17, label %18, label %21, !dbg !1170

18:                                               ; preds = %15
  %19 = tail call i32 @gsl_blas_dgemv(i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %2, double noundef 0.000000e+00, ptr noundef nonnull %3) #5, !dbg !1171
  %20 = tail call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef nonnull %1, ptr noundef nonnull %3) #5, !dbg !1173
  br label %21, !dbg !1174

21:                                               ; preds = %18, %15, %12, %9, %4
  %22 = phi i32 [ 0, %18 ], [ 20, %4 ], [ 19, %15 ], [ 19, %12 ], [ 19, %9 ], !dbg !1175
  ret i32 %22, !dbg !1176
}

declare !dbg !1177 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!924 = !DILocation(line: 750, column: 25, scope: !905, inlinedAt: !913)
!925 = !DILocation(line: 750, column: 23, scope: !905, inlinedAt: !913)
!926 = !DILocation(line: 752, column: 15, scope: !905, inlinedAt: !913)
!927 = !DILocation(line: 753, column: 5, scope: !905, inlinedAt: !913)
!928 = !DILocation(line: 756, column: 18, scope: !910, inlinedAt: !913)
!929 = !DILocation(line: 756, column: 21, scope: !910, inlinedAt: !913)
!930 = !DILocation(line: 0, scope: !910, inlinedAt: !913)
!931 = !DILocation(line: 757, column: 37, scope: !910, inlinedAt: !913)
!932 = !DILocation(line: 757, column: 25, scope: !910, inlinedAt: !913)
!933 = !DILocation(line: 757, column: 23, scope: !910, inlinedAt: !913)
!934 = !DILocation(line: 759, column: 15, scope: !910, inlinedAt: !913)
!935 = !DILocation(line: 0, scope: !907, inlinedAt: !913)
!936 = !DILocalVariable(name: "v", arg: 1, scope: !937, file: !277, line: 765, type: !160)
!937 = distinct !DISubprogram(name: "gsl_linalg_givens_gv", scope: !277, file: !277, line: 765, type: !938, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !160, !174, !174, !793, !793}
!940 = !{!936, !941, !942, !943, !944, !945, !946}
!941 = !DILocalVariable(name: "i", arg: 2, scope: !937, file: !277, line: 765, type: !174)
!942 = !DILocalVariable(name: "j", arg: 3, scope: !937, file: !277, line: 765, type: !174)
!943 = !DILocalVariable(name: "c", arg: 4, scope: !937, file: !277, line: 766, type: !793)
!944 = !DILocalVariable(name: "s", arg: 5, scope: !937, file: !277, line: 766, type: !793)
!945 = !DILocalVariable(name: "vi", scope: !937, file: !277, line: 770, type: !150)
!946 = !DILocalVariable(name: "vj", scope: !937, file: !277, line: 771, type: !150)
!947 = !DILocation(line: 0, scope: !937, inlinedAt: !948)
!948 = distinct !DILocation(line: 504, column: 11, scope: !840)
!949 = !DILocation(line: 0, scope: !427, inlinedAt: !950)
!950 = distinct !DILocation(line: 770, column: 15, scope: !937, inlinedAt: !948)
!951 = !DILocation(line: 0, scope: !427, inlinedAt: !952)
!952 = distinct !DILocation(line: 771, column: 15, scope: !937, inlinedAt: !948)
!953 = !DILocation(line: 772, column: 27, scope: !937, inlinedAt: !948)
!954 = !DILocation(line: 772, column: 36, scope: !937, inlinedAt: !948)
!955 = !DILocation(line: 196, column: 26, scope: !233, inlinedAt: !956)
!956 = distinct !DILocation(line: 772, column: 3, scope: !937, inlinedAt: !948)
!957 = !DILocation(line: 0, scope: !233, inlinedAt: !956)
!958 = !DILocation(line: 773, column: 27, scope: !937, inlinedAt: !948)
!959 = !DILocation(line: 773, column: 36, scope: !937, inlinedAt: !948)
!960 = !DILocation(line: 196, column: 26, scope: !233, inlinedAt: !961)
!961 = distinct !DILocation(line: 773, column: 3, scope: !937, inlinedAt: !948)
!962 = !DILocation(line: 0, scope: !233, inlinedAt: !961)
!963 = !DILocalVariable(name: "M", arg: 1, scope: !964, file: !965, line: 69, type: !143)
!964 = distinct !DISubprogram(name: "apply_givens_lq", scope: !965, file: !965, line: 69, type: !966, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !968)
!965 = !DIFile(filename: "./apply_givens.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1430c6da1968c27d96b974d1078e7cb2")
!966 = !DISubroutineType(types: !967)
!967 = !{null, !143, !143, !137, !137, !143, !143, !150, !150}
!968 = !{!963, !969, !970, !971, !972, !973, !974, !975, !976, !977, !981, !982, !986}
!969 = !DILocalVariable(name: "N", arg: 2, scope: !964, file: !965, line: 69, type: !143)
!970 = !DILocalVariable(name: "Q", arg: 3, scope: !964, file: !965, line: 69, type: !137)
!971 = !DILocalVariable(name: "L", arg: 4, scope: !964, file: !965, line: 69, type: !137)
!972 = !DILocalVariable(name: "i", arg: 5, scope: !964, file: !965, line: 70, type: !143)
!973 = !DILocalVariable(name: "j", arg: 6, scope: !964, file: !965, line: 70, type: !143)
!974 = !DILocalVariable(name: "c", arg: 7, scope: !964, file: !965, line: 70, type: !150)
!975 = !DILocalVariable(name: "s", arg: 8, scope: !964, file: !965, line: 70, type: !150)
!976 = !DILocalVariable(name: "k", scope: !964, file: !965, line: 72, type: !143)
!977 = !DILocalVariable(name: "qik", scope: !978, file: !965, line: 86, type: !150)
!978 = distinct !DILexicalBlock(scope: !979, file: !965, line: 85, column: 5)
!979 = distinct !DILexicalBlock(scope: !980, file: !965, line: 84, column: 3)
!980 = distinct !DILexicalBlock(scope: !964, file: !965, line: 84, column: 3)
!981 = !DILocalVariable(name: "qjk", scope: !978, file: !965, line: 87, type: !150)
!982 = !DILocalVariable(name: "lki", scope: !983, file: !965, line: 107, type: !150)
!983 = distinct !DILexicalBlock(scope: !984, file: !965, line: 106, column: 5)
!984 = distinct !DILexicalBlock(scope: !985, file: !965, line: 105, column: 3)
!985 = distinct !DILexicalBlock(scope: !964, file: !965, line: 105, column: 3)
!986 = !DILocalVariable(name: "lkj", scope: !983, file: !965, line: 108, type: !150)
!987 = !DILocation(line: 0, scope: !964, inlinedAt: !988)
!988 = distinct !DILocation(line: 505, column: 11, scope: !840)
!989 = !DILocation(line: 84, column: 3, scope: !980, inlinedAt: !988)
!990 = !DILocation(line: 0, scope: !779, inlinedAt: !991)
!991 = distinct !DILocation(line: 86, column: 20, scope: !978, inlinedAt: !988)
!992 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !991)
!993 = !DILocation(line: 0, scope: !978, inlinedAt: !988)
!994 = !DILocation(line: 0, scope: !779, inlinedAt: !995)
!995 = distinct !DILocation(line: 87, column: 20, scope: !978, inlinedAt: !988)
!996 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !995)
!997 = !DILocation(line: 88, column: 36, scope: !978, inlinedAt: !988)
!998 = !DILocation(line: 88, column: 46, scope: !978, inlinedAt: !988)
!999 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 88, column: 7, scope: !978, inlinedAt: !988)
!1001 = !DILocation(line: 0, scope: !790, inlinedAt: !1000)
!1002 = !DILocation(line: 89, column: 36, scope: !978, inlinedAt: !988)
!1003 = !DILocation(line: 89, column: 46, scope: !978, inlinedAt: !988)
!1004 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1005)
!1005 = distinct !DILocation(line: 89, column: 7, scope: !978, inlinedAt: !988)
!1006 = !DILocation(line: 0, scope: !790, inlinedAt: !1005)
!1007 = !DILocation(line: 84, column: 23, scope: !979, inlinedAt: !988)
!1008 = distinct !{!1008, !989, !1009, !262}
!1009 = !DILocation(line: 90, column: 5, scope: !980, inlinedAt: !988)
!1010 = !DILocation(line: 105, column: 12, scope: !985, inlinedAt: !988)
!1011 = !DILocation(line: 105, column: 30, scope: !984, inlinedAt: !988)
!1012 = !DILocation(line: 105, column: 3, scope: !985, inlinedAt: !988)
!1013 = !DILocation(line: 0, scope: !779, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 107, column: 20, scope: !983, inlinedAt: !988)
!1015 = !DILocation(line: 285, column: 20, scope: !779, inlinedAt: !1014)
!1016 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1014)
!1017 = !DILocation(line: 0, scope: !983, inlinedAt: !988)
!1018 = !DILocation(line: 0, scope: !779, inlinedAt: !1019)
!1019 = distinct !DILocation(line: 108, column: 20, scope: !983, inlinedAt: !988)
!1020 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1019)
!1021 = !DILocation(line: 109, column: 34, scope: !983, inlinedAt: !988)
!1022 = !DILocation(line: 109, column: 44, scope: !983, inlinedAt: !988)
!1023 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1024)
!1024 = distinct !DILocation(line: 109, column: 7, scope: !983, inlinedAt: !988)
!1025 = !DILocation(line: 0, scope: !790, inlinedAt: !1024)
!1026 = !DILocation(line: 110, column: 34, scope: !983, inlinedAt: !988)
!1027 = !DILocation(line: 110, column: 44, scope: !983, inlinedAt: !988)
!1028 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1029)
!1029 = distinct !DILocation(line: 110, column: 7, scope: !983, inlinedAt: !988)
!1030 = !DILocation(line: 0, scope: !790, inlinedAt: !1029)
!1031 = !DILocation(line: 105, column: 36, scope: !984, inlinedAt: !988)
!1032 = distinct !{!1032, !1012, !1033, !262}
!1033 = !DILocation(line: 111, column: 5, scope: !985, inlinedAt: !988)
!1034 = distinct !{!1034, !882, !1035, !262}
!1035 = !DILocation(line: 506, column: 8, scope: !842)
!1036 = !DILocation(line: 0, scope: !427, inlinedAt: !1037)
!1037 = distinct !DILocation(line: 508, column: 12, scope: !833)
!1038 = !DILocation(line: 183, column: 10, scope: !427, inlinedAt: !1037)
!1039 = !DILocation(line: 512, column: 21, scope: !848)
!1040 = !DILocation(line: 512, column: 7, scope: !849)
!1041 = !DILocation(line: 0, scope: !779, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 514, column: 24, scope: !847)
!1043 = !DILocation(line: 285, column: 20, scope: !779, inlinedAt: !1042)
!1044 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1042)
!1045 = !DILocation(line: 0, scope: !847)
!1046 = !DILocation(line: 0, scope: !427, inlinedAt: !1047)
!1047 = distinct !DILocation(line: 515, column: 23, scope: !847)
!1048 = !DILocation(line: 183, column: 20, scope: !427, inlinedAt: !1047)
!1049 = !DILocation(line: 183, column: 10, scope: !427, inlinedAt: !1047)
!1050 = !DILocation(line: 516, column: 45, scope: !847)
!1051 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 516, column: 11, scope: !847)
!1053 = !DILocation(line: 0, scope: !790, inlinedAt: !1052)
!1054 = !DILocation(line: 522, column: 21, scope: !853)
!1055 = !DILocation(line: 522, column: 7, scope: !854)
!1056 = !DILocation(line: 512, column: 27, scope: !848)
!1057 = distinct !{!1057, !1040, !1058, !262}
!1058 = !DILocation(line: 517, column: 9, scope: !849)
!1059 = !DILocation(line: 525, column: 46, scope: !852)
!1060 = !DILocation(line: 0, scope: !779, inlinedAt: !1061)
!1061 = distinct !DILocation(line: 525, column: 25, scope: !852)
!1062 = !DILocation(line: 285, column: 20, scope: !779, inlinedAt: !1061)
!1063 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1061)
!1064 = !DILocation(line: 0, scope: !852)
!1065 = !DILocation(line: 0, scope: !779, inlinedAt: !1066)
!1066 = distinct !DILocation(line: 526, column: 28, scope: !852)
!1067 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1066)
!1068 = !DILocation(line: 0, scope: !897, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 528, column: 11, scope: !852)
!1070 = !DILocation(line: 742, column: 9, scope: !907, inlinedAt: !1069)
!1071 = !DILocation(line: 742, column: 7, scope: !897, inlinedAt: !1069)
!1072 = !DILocation(line: 747, column: 12, scope: !906, inlinedAt: !1069)
!1073 = !DILocation(line: 747, column: 23, scope: !906, inlinedAt: !1069)
!1074 = !DILocation(line: 747, column: 21, scope: !906, inlinedAt: !1069)
!1075 = !DILocation(line: 747, column: 12, scope: !907, inlinedAt: !1069)
!1076 = !DILocation(line: 749, column: 18, scope: !905, inlinedAt: !1069)
!1077 = !DILocation(line: 749, column: 21, scope: !905, inlinedAt: !1069)
!1078 = !DILocation(line: 0, scope: !905, inlinedAt: !1069)
!1079 = !DILocation(line: 750, column: 37, scope: !905, inlinedAt: !1069)
!1080 = !DILocation(line: 750, column: 25, scope: !905, inlinedAt: !1069)
!1081 = !DILocation(line: 750, column: 23, scope: !905, inlinedAt: !1069)
!1082 = !DILocation(line: 752, column: 15, scope: !905, inlinedAt: !1069)
!1083 = !DILocation(line: 753, column: 5, scope: !905, inlinedAt: !1069)
!1084 = !DILocation(line: 756, column: 18, scope: !910, inlinedAt: !1069)
!1085 = !DILocation(line: 756, column: 21, scope: !910, inlinedAt: !1069)
!1086 = !DILocation(line: 0, scope: !910, inlinedAt: !1069)
!1087 = !DILocation(line: 757, column: 37, scope: !910, inlinedAt: !1069)
!1088 = !DILocation(line: 757, column: 25, scope: !910, inlinedAt: !1069)
!1089 = !DILocation(line: 757, column: 23, scope: !910, inlinedAt: !1069)
!1090 = !DILocation(line: 759, column: 15, scope: !910, inlinedAt: !1069)
!1091 = !DILocation(line: 0, scope: !907, inlinedAt: !1069)
!1092 = !DILocation(line: 0, scope: !964, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 529, column: 11, scope: !852)
!1094 = !DILocation(line: 84, column: 3, scope: !980, inlinedAt: !1093)
!1095 = !DILocation(line: 0, scope: !779, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 86, column: 20, scope: !978, inlinedAt: !1093)
!1097 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1096)
!1098 = !DILocation(line: 0, scope: !978, inlinedAt: !1093)
!1099 = !DILocation(line: 0, scope: !779, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 87, column: 20, scope: !978, inlinedAt: !1093)
!1101 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1100)
!1102 = !DILocation(line: 88, column: 36, scope: !978, inlinedAt: !1093)
!1103 = !DILocation(line: 88, column: 46, scope: !978, inlinedAt: !1093)
!1104 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 88, column: 7, scope: !978, inlinedAt: !1093)
!1106 = !DILocation(line: 0, scope: !790, inlinedAt: !1105)
!1107 = !DILocation(line: 89, column: 36, scope: !978, inlinedAt: !1093)
!1108 = !DILocation(line: 89, column: 46, scope: !978, inlinedAt: !1093)
!1109 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 89, column: 7, scope: !978, inlinedAt: !1093)
!1111 = !DILocation(line: 0, scope: !790, inlinedAt: !1110)
!1112 = !DILocation(line: 84, column: 23, scope: !979, inlinedAt: !1093)
!1113 = distinct !{!1113, !1094, !1114, !262}
!1114 = !DILocation(line: 90, column: 5, scope: !980, inlinedAt: !1093)
!1115 = !DILocation(line: 105, column: 12, scope: !985, inlinedAt: !1093)
!1116 = !DILocation(line: 105, column: 30, scope: !984, inlinedAt: !1093)
!1117 = !DILocation(line: 105, column: 3, scope: !985, inlinedAt: !1093)
!1118 = !DILocation(line: 0, scope: !779, inlinedAt: !1119)
!1119 = distinct !DILocation(line: 107, column: 20, scope: !983, inlinedAt: !1093)
!1120 = !DILocation(line: 285, column: 20, scope: !779, inlinedAt: !1119)
!1121 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1119)
!1122 = !DILocation(line: 0, scope: !983, inlinedAt: !1093)
!1123 = !DILocation(line: 0, scope: !779, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 108, column: 20, scope: !983, inlinedAt: !1093)
!1125 = !DILocation(line: 285, column: 10, scope: !779, inlinedAt: !1124)
!1126 = !DILocation(line: 109, column: 34, scope: !983, inlinedAt: !1093)
!1127 = !DILocation(line: 109, column: 44, scope: !983, inlinedAt: !1093)
!1128 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 109, column: 7, scope: !983, inlinedAt: !1093)
!1130 = !DILocation(line: 0, scope: !790, inlinedAt: !1129)
!1131 = !DILocation(line: 110, column: 34, scope: !983, inlinedAt: !1093)
!1132 = !DILocation(line: 110, column: 44, scope: !983, inlinedAt: !1093)
!1133 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 110, column: 7, scope: !983, inlinedAt: !1093)
!1135 = !DILocation(line: 0, scope: !790, inlinedAt: !1134)
!1136 = !DILocation(line: 105, column: 36, scope: !984, inlinedAt: !1093)
!1137 = distinct !{!1137, !1117, !1138, !262}
!1138 = !DILocation(line: 111, column: 5, scope: !985, inlinedAt: !1093)
!1139 = !DILocation(line: 0, scope: !790, inlinedAt: !1140)
!1140 = distinct !DILocation(line: 531, column: 11, scope: !852)
!1141 = !DILocation(line: 305, column: 27, scope: !790, inlinedAt: !1140)
!1142 = !DILocation(line: 522, column: 40, scope: !853)
!1143 = distinct !{!1143, !1055, !1144, !262}
!1144 = !DILocation(line: 532, column: 9, scope: !854)
!1145 = !DILocation(line: 0, scope: !836)
!1146 = !DILocation(line: 536, column: 1, scope: !822)
!1147 = distinct !DISubprogram(name: "gsl_linalg_LQ_LQsolve", scope: !2, file: !2, line: 539, type: !823, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1148)
!1148 = !{!1149, !1150, !1151, !1152, !1153, !1154}
!1149 = !DILocalVariable(name: "Q", arg: 1, scope: !1147, file: !2, line: 539, type: !137)
!1150 = !DILocalVariable(name: "L", arg: 2, scope: !1147, file: !2, line: 539, type: !137)
!1151 = !DILocalVariable(name: "b", arg: 3, scope: !1147, file: !2, line: 539, type: !286)
!1152 = !DILocalVariable(name: "x", arg: 4, scope: !1147, file: !2, line: 539, type: !160)
!1153 = !DILocalVariable(name: "N", scope: !1147, file: !2, line: 541, type: !174)
!1154 = !DILocalVariable(name: "M", scope: !1147, file: !2, line: 542, type: !174)
!1155 = !DILocation(line: 0, scope: !1147)
!1156 = !DILocation(line: 541, column: 23, scope: !1147)
!1157 = !DILocation(line: 542, column: 23, scope: !1147)
!1158 = !DILocation(line: 544, column: 9, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 544, column: 7)
!1160 = !DILocation(line: 544, column: 7, scope: !1147)
!1161 = !DILocation(line: 548, column: 15, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1159, file: !2, line: 548, column: 12)
!1163 = !DILocation(line: 548, column: 21, scope: !1162)
!1164 = !DILocation(line: 548, column: 26, scope: !1162)
!1165 = !DILocation(line: 548, column: 32, scope: !1162)
!1166 = !DILocation(line: 548, column: 37, scope: !1162)
!1167 = !DILocation(line: 548, column: 42, scope: !1162)
!1168 = !DILocation(line: 548, column: 48, scope: !1162)
!1169 = !DILocation(line: 548, column: 53, scope: !1162)
!1170 = !DILocation(line: 548, column: 12, scope: !1159)
!1171 = !DILocation(line: 556, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 553, column: 5)
!1173 = !DILocation(line: 560, column: 7, scope: !1172)
!1174 = !DILocation(line: 562, column: 7, scope: !1172)
!1175 = !DILocation(line: 0, scope: !1159)
!1176 = !DILocation(line: 564, column: 1, scope: !1147)
!1177 = !DISubprogram(name: "gsl_blas_dgemv", scope: !446, file: !446, line: 205, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!73, !451, !150, !291, !286, !150, !160}
