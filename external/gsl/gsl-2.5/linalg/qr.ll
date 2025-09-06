; ModuleID = 'qr.c'
source_filename = "qr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_const_view = type { %struct.gsl_vector }
%struct._gsl_matrix_const_view = type { %struct.gsl_matrix }

@.str = private unnamed_addr constant [29 x i8] c"size of tau must be MIN(M,N)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"qr.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [25 x i8] c"QR matrix must be square\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [30 x i8] c"matrix size must match b size\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [37 x i8] c"matrix size must match solution size\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [34 x i8] c"matrix size must match x/rhs size\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [25 x i8] c"QR matrix must have M>=N\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [37 x i8] c"matrix size must match residual size\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [30 x i8] c"matrix size must match x size\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [32 x i8] c"matrix size must match rhs size\00", align 1, !dbg !38
@.str.10 = private unnamed_addr constant [24 x i8] c"R matrix must be square\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [22 x i8] c"vector size must be M\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [24 x i8] c"matrix must have M rows\00", align 1, !dbg !53
@.str.13 = private unnamed_addr constant [27 x i8] c"matrix must have M columns\00", align 1, !dbg !55
@.str.14 = private unnamed_addr constant [23 x i8] c"Q matrix must be M x M\00", align 1, !dbg !60
@.str.15 = private unnamed_addr constant [23 x i8] c"R matrix must be M x N\00", align 1, !dbg !65
@.str.16 = private unnamed_addr constant [37 x i8] c"Q matrix must be M x M if R is M x N\00", align 1, !dbg !67
@.str.17 = private unnamed_addr constant [33 x i8] c"w must be length M if R is M x N\00", align 1, !dbg !69
@.str.18 = private unnamed_addr constant [33 x i8] c"v must be length N if R is M x N\00", align 1, !dbg !74

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_decomp(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !141 {
  %3 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !205
  call void @llvm.dbg.assign(metadata i1 undef, metadata !186, metadata !DIExpression(), metadata !205, metadata ptr %3, metadata !DIExpression()), !dbg !206
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !207
  call void @llvm.dbg.assign(metadata i1 undef, metadata !195, metadata !DIExpression(), metadata !207, metadata ptr %4, metadata !DIExpression()), !dbg !206
  %5 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !208
  call void @llvm.dbg.assign(metadata i1 undef, metadata !197, metadata !DIExpression(), metadata !208, metadata ptr %5, metadata !DIExpression()), !dbg !209
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !178, metadata !DIExpression()), !dbg !210
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !179, metadata !DIExpression()), !dbg !210
  %6 = load i64, ptr %0, align 8, !dbg !211, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !180, metadata !DIExpression()), !dbg !210
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !219
  %8 = load i64, ptr %7, align 8, !dbg !219, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !182, metadata !DIExpression()), !dbg !210
  %9 = load i64, ptr %1, align 8, !dbg !221, !tbaa !222
  %10 = tail call i64 @llvm.umin.i64(i64 %6, i64 %8), !dbg !224
  %11 = icmp eq i64 %9, %10, !dbg !225
  br i1 %11, label %12, label %17, !dbg !226

12:                                               ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !227
  %13 = icmp eq i64 %9, 0, !dbg !228
  br i1 %13, label %33, label %14, !dbg !229

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %18, !dbg !229

17:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 19) #6, !dbg !230
  br label %33, !dbg !230

18:                                               ; preds = %14, %31
  %19 = phi i64 [ 0, %14 ], [ %26, %31 ]
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !183, metadata !DIExpression()), !dbg !227
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6, !dbg !233
  call void @gsl_matrix_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %3, ptr noundef nonnull %0, i64 noundef %19) #6, !dbg !234
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !235
  %20 = sub i64 %6, %19, !dbg !236
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %3, i64 noundef %19, i64 noundef %20) #6, !dbg !237
  %21 = call double @gsl_linalg_householder_transform(ptr noundef nonnull %4) #6, !dbg !238
  tail call void @llvm.dbg.value(metadata double %21, metadata !196, metadata !DIExpression()), !dbg !206
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !239, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata i64 %19, metadata !244, metadata !DIExpression()), !dbg !246
  tail call void @llvm.dbg.value(metadata double %21, metadata !245, metadata !DIExpression()), !dbg !246
  %22 = load ptr, ptr %15, align 8, !dbg !248, !tbaa !249
  %23 = load i64, ptr %16, align 8, !dbg !250, !tbaa !251
  %24 = mul i64 %23, %19, !dbg !252
  %25 = getelementptr inbounds double, ptr %22, i64 %24, !dbg !253
  store double %21, ptr %25, align 8, !dbg !254, !tbaa !255
  %26 = add nuw i64 %19, 1, !dbg !257
  %27 = icmp ult i64 %26, %8, !dbg !258
  br i1 %27, label %28, label %31, !dbg !259

28:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #6, !dbg !260
  %29 = sub i64 %8, %26, !dbg !261
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %19, i64 noundef %26, i64 noundef %20, i64 noundef %29) #6, !dbg !262
  %30 = call i32 @gsl_linalg_householder_hm(double noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #6, !dbg !263
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #6, !dbg !264
  br label %31, !dbg !265

31:                                               ; preds = %28, %18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !266
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6, !dbg !266
  tail call void @llvm.dbg.value(metadata i64 %26, metadata !183, metadata !DIExpression()), !dbg !227
  %32 = icmp eq i64 %26, %9, !dbg !228
  br i1 %32, label %33, label %18, !dbg !229, !llvm.loop !267

33:                                               ; preds = %31, %12, %17
  %34 = phi i32 [ 19, %17 ], [ 0, %12 ], [ 0, %31 ], !dbg !270
  ret i32 %34, !dbg !271
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !272 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !277 void @gsl_matrix_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !280 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !283 double @gsl_linalg_householder_transform(ptr noundef) local_unnamed_addr #2

declare !dbg !287 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !290 i32 @gsl_linalg_householder_hm(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_solve(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !295 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !301, metadata !DIExpression()), !dbg !305
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !302, metadata !DIExpression()), !dbg !305
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !303, metadata !DIExpression()), !dbg !305
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !304, metadata !DIExpression()), !dbg !305
  %5 = load i64, ptr %0, align 8, !dbg !306, !tbaa !212
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !308
  %7 = load i64, ptr %6, align 8, !dbg !308, !tbaa !220
  %8 = icmp eq i64 %5, %7, !dbg !309
  br i1 %8, label %10, label %9, !dbg !310

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 20) #6, !dbg !311
  br label %31, !dbg !311

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8, !dbg !314, !tbaa !222
  %12 = icmp eq i64 %5, %11, !dbg !316
  br i1 %12, label %14, label %13, !dbg !317

13:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 114, i32 noundef 19) #6, !dbg !318
  br label %31, !dbg !318

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !dbg !321, !tbaa !222
  %16 = icmp eq i64 %5, %15, !dbg !323
  br i1 %16, label %18, label %17, !dbg !324

17:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 118, i32 noundef 19) #6, !dbg !325
  br label %31, !dbg !325

18:                                               ; preds = %14
  %19 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %2) #6, !dbg !328
  call void @llvm.dbg.value(metadata ptr %0, metadata !330, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata ptr %1, metadata !335, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata ptr %3, metadata !336, metadata !DIExpression()), !dbg !337
  %20 = load i64, ptr %0, align 8, !dbg !339, !tbaa !212
  %21 = load i64, ptr %6, align 8, !dbg !341, !tbaa !220
  %22 = icmp eq i64 %20, %21, !dbg !342
  br i1 %22, label %24, label %23, !dbg !343

23:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 20) #6, !dbg !344
  br label %31, !dbg !344

24:                                               ; preds = %18
  %25 = load i64, ptr %3, align 8, !dbg !347, !tbaa !222
  %26 = icmp eq i64 %20, %25, !dbg !349
  br i1 %26, label %28, label %27, !dbg !350

27:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 151, i32 noundef 19) #6, !dbg !351
  br label %31, !dbg !351

28:                                               ; preds = %24
  %29 = tail call i32 @gsl_linalg_QR_QTvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3), !dbg !354, !range !356
  %30 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %3) #6, !dbg !357
  br label %31, !dbg !358

31:                                               ; preds = %28, %27, %23, %9, %13, %17
  %32 = phi i32 [ 20, %9 ], [ 19, %13 ], [ 19, %17 ], [ 0, %23 ], [ 0, %27 ], [ 0, %28 ], !dbg !359
  ret i32 %32, !dbg !360
}

declare !dbg !361 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_svx(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !331 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !330, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !335, metadata !DIExpression()), !dbg !364
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !336, metadata !DIExpression()), !dbg !364
  %4 = load i64, ptr %0, align 8, !dbg !365, !tbaa !212
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !366
  %6 = load i64, ptr %5, align 8, !dbg !366, !tbaa !220
  %7 = icmp eq i64 %4, %6, !dbg !367
  br i1 %7, label %9, label %8, !dbg !368

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 20) #6, !dbg !369
  br label %16, !dbg !369

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8, !dbg !370, !tbaa !222
  %11 = icmp eq i64 %4, %10, !dbg !371
  br i1 %11, label %13, label %12, !dbg !372

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 151, i32 noundef 19) #6, !dbg !373
  br label %16, !dbg !373

13:                                               ; preds = %9
  %14 = tail call i32 @gsl_linalg_QR_QTvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2), !dbg !374, !range !356
  %15 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #6, !dbg !375
  br label %16, !dbg !376

16:                                               ; preds = %8, %12, %13
  %17 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 0, %13 ], !dbg !377
  ret i32 %17, !dbg !378
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_QTvec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !379 {
  %4 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !403
  call void @llvm.dbg.assign(metadata i1 undef, metadata !390, metadata !DIExpression(), metadata !403, metadata ptr %4, metadata !DIExpression()), !dbg !404
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !405
  call void @llvm.dbg.assign(metadata i1 undef, metadata !400, metadata !DIExpression(), metadata !405, metadata ptr %5, metadata !DIExpression()), !dbg !404
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !406
  call void @llvm.dbg.assign(metadata i1 undef, metadata !401, metadata !DIExpression(), metadata !406, metadata ptr %6, metadata !DIExpression()), !dbg !404
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !381, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !382, metadata !DIExpression()), !dbg !407
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !383, metadata !DIExpression()), !dbg !407
  %7 = load i64, ptr %0, align 8, !dbg !408, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !384, metadata !DIExpression()), !dbg !407
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !409
  %9 = load i64, ptr %8, align 8, !dbg !409, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !385, metadata !DIExpression()), !dbg !407
  %10 = load i64, ptr %1, align 8, !dbg !410, !tbaa !222
  %11 = tail call i64 @llvm.umin.i64(i64 %7, i64 %9), !dbg !411
  %12 = icmp eq i64 %10, %11, !dbg !412
  br i1 %12, label %14, label %13, !dbg !413

13:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 339, i32 noundef 19) #6, !dbg !414
  br label %34, !dbg !414

14:                                               ; preds = %3
  %15 = load i64, ptr %2, align 8, !dbg !417, !tbaa !222
  %16 = icmp eq i64 %15, %7, !dbg !418
  br i1 %16, label %17, label %22, !dbg !419

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i64 0, metadata !386, metadata !DIExpression()), !dbg !420
  %18 = icmp eq i64 %10, 0, !dbg !421
  br i1 %18, label %34, label %19, !dbg !422

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %23, !dbg !422

22:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 343, i32 noundef 19) #6, !dbg !423
  br label %34, !dbg !423

23:                                               ; preds = %19, %23
  %24 = phi i64 [ 0, %19 ], [ %32, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !386, metadata !DIExpression()), !dbg !420
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !426
  call void @gsl_matrix_const_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %24) #6, !dbg !427
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !428
  %25 = sub i64 %7, %24, !dbg !429
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %24, i64 noundef %25) #6, !dbg !430
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !431
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %2, i64 noundef %24, i64 noundef %25) #6, !dbg !432
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !433, metadata !DIExpression()), !dbg !439
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !438, metadata !DIExpression()), !dbg !439
  %26 = load ptr, ptr %20, align 8, !dbg !441, !tbaa !249
  %27 = load i64, ptr %21, align 8, !dbg !442, !tbaa !251
  %28 = mul i64 %27, %24, !dbg !443
  %29 = getelementptr inbounds double, ptr %26, i64 %28, !dbg !444
  %30 = load double, ptr %29, align 8, !dbg !444, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %30, metadata !402, metadata !DIExpression()), !dbg !404
  %31 = call i32 @gsl_linalg_householder_hv(double noundef %30, ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !445
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !446
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !446
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !446
  %32 = add nuw i64 %24, 1, !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !386, metadata !DIExpression()), !dbg !420
  %33 = icmp eq i64 %32, %10, !dbg !421
  br i1 %33, label %34, label %23, !dbg !422, !llvm.loop !448

34:                                               ; preds = %23, %17, %22, %13
  %35 = phi i32 [ 19, %13 ], [ 19, %22 ], [ 0, %17 ], [ 0, %23 ], !dbg !450
  ret i32 %35, !dbg !451
}

declare !dbg !452 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_lssolve(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !460 {
  %6 = alloca %struct._gsl_matrix_const_view, align 8, !DIAssignID !484
  call void @llvm.dbg.assign(metadata i1 undef, metadata !471, metadata !DIExpression(), metadata !484, metadata ptr %6, metadata !DIExpression()), !dbg !485
  %7 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !486
  call void @llvm.dbg.assign(metadata i1 undef, metadata !483, metadata !DIExpression(), metadata !486, metadata ptr %7, metadata !DIExpression()), !dbg !485
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !464, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !465, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !466, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !467, metadata !DIExpression()), !dbg !487
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !468, metadata !DIExpression()), !dbg !487
  %8 = load i64, ptr %0, align 8, !dbg !488, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !469, metadata !DIExpression()), !dbg !487
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !489
  %10 = load i64, ptr %9, align 8, !dbg !489, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !470, metadata !DIExpression()), !dbg !487
  %11 = icmp ult i64 %8, %10, !dbg !490
  br i1 %11, label %12, label %13, !dbg !491

12:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 183, i32 noundef 19) #6, !dbg !492
  br label %31, !dbg !492

13:                                               ; preds = %5
  %14 = load i64, ptr %2, align 8, !dbg !495, !tbaa !222
  %15 = icmp eq i64 %8, %14, !dbg !496
  br i1 %15, label %17, label %16, !dbg !497

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 187, i32 noundef 19) #6, !dbg !498
  br label %31, !dbg !498

17:                                               ; preds = %13
  %18 = load i64, ptr %3, align 8, !dbg !501, !tbaa !222
  %19 = icmp eq i64 %10, %18, !dbg !502
  br i1 %19, label %21, label %20, !dbg !503

20:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 191, i32 noundef 19) #6, !dbg !504
  br label %31, !dbg !504

21:                                               ; preds = %17
  %22 = load i64, ptr %4, align 8, !dbg !507, !tbaa !222
  %23 = icmp eq i64 %8, %22, !dbg !508
  br i1 %23, label %25, label %24, !dbg !509

24:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 195, i32 noundef 19) #6, !dbg !510
  br label %31, !dbg !510

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #6, !dbg !513
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %6, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %10, i64 noundef %10) #6, !dbg !514
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #6, !dbg !515
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %7, ptr noundef nonnull %4, i64 noundef 0, i64 noundef %10) #6, !dbg !516
  %26 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %4, ptr noundef nonnull %2) #6, !dbg !517
  %27 = call i32 @gsl_linalg_QR_QTvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4), !dbg !518, !range !356
  %28 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %3, ptr noundef nonnull %7) #6, !dbg !519
  %29 = call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %6, ptr noundef nonnull %3) #6, !dbg !520
  call void @gsl_vector_set_zero(ptr noundef nonnull %7) #6, !dbg !521
  %30 = call i32 @gsl_linalg_QR_Qvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %4), !dbg !522, !range !356
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #6, !dbg !523
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #6, !dbg !523
  br label %31

31:                                               ; preds = %25, %24, %20, %16, %12
  %32 = phi i32 [ 19, %12 ], [ 19, %16 ], [ 19, %20 ], [ 19, %24 ], [ 0, %25 ], !dbg !524
  ret i32 %32, !dbg !525
}

declare !dbg !526 void @gsl_matrix_const_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_const_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !529 void @gsl_vector_set_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_Qvec(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !532 {
  %4 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !550
  call void @llvm.dbg.assign(metadata i1 undef, metadata !543, metadata !DIExpression(), metadata !550, metadata ptr %4, metadata !DIExpression()), !dbg !551
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !552
  call void @llvm.dbg.assign(metadata i1 undef, metadata !547, metadata !DIExpression(), metadata !552, metadata ptr %5, metadata !DIExpression()), !dbg !551
  %6 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !553
  call void @llvm.dbg.assign(metadata i1 undef, metadata !548, metadata !DIExpression(), metadata !553, metadata ptr %6, metadata !DIExpression()), !dbg !551
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !534, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !535, metadata !DIExpression()), !dbg !554
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !536, metadata !DIExpression()), !dbg !554
  %7 = load i64, ptr %0, align 8, !dbg !555, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !537, metadata !DIExpression()), !dbg !554
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !556
  %9 = load i64, ptr %8, align 8, !dbg !556, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !538, metadata !DIExpression()), !dbg !554
  %10 = load i64, ptr %1, align 8, !dbg !557, !tbaa !222
  %11 = tail call i64 @llvm.umin.i64(i64 %7, i64 %9), !dbg !558
  %12 = icmp eq i64 %10, %11, !dbg !559
  br i1 %12, label %14, label %13, !dbg !560

13:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 372, i32 noundef 19) #6, !dbg !561
  br label %34, !dbg !561

14:                                               ; preds = %3
  %15 = load i64, ptr %2, align 8, !dbg !564, !tbaa !222
  %16 = icmp eq i64 %15, %7, !dbg !565
  br i1 %16, label %17, label %22, !dbg !566

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !539, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !567
  %18 = icmp eq i64 %10, 0, !dbg !568
  br i1 %18, label %34, label %19, !dbg !569

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %23, !dbg !569

22:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 376, i32 noundef 19) #6, !dbg !570
  br label %34, !dbg !570

23:                                               ; preds = %19, %23
  %24 = phi i64 [ %10, %19 ], [ %25, %23 ]
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !539, metadata !DIExpression()), !dbg !567
  %25 = add i64 %24, -1, !dbg !573
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !539, metadata !DIExpression()), !dbg !567
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !574
  call void @gsl_matrix_const_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %25) #6, !dbg !575
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !576
  %26 = sub i64 %7, %25, !dbg !577
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %25, i64 noundef %26) #6, !dbg !578
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !579
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %6, ptr noundef nonnull %2, i64 noundef %25, i64 noundef %26) #6, !dbg !580
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !433, metadata !DIExpression()), !dbg !581
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !438, metadata !DIExpression()), !dbg !581
  %27 = load ptr, ptr %20, align 8, !dbg !583, !tbaa !249
  %28 = load i64, ptr %21, align 8, !dbg !584, !tbaa !251
  %29 = mul i64 %28, %25, !dbg !585
  %30 = getelementptr inbounds double, ptr %27, i64 %29, !dbg !586
  %31 = load double, ptr %30, align 8, !dbg !586, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %31, metadata !549, metadata !DIExpression()), !dbg !551
  %32 = call i32 @gsl_linalg_householder_hv(double noundef %31, ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !587
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !588
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !588
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !588
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !539, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !567
  %33 = icmp eq i64 %25, 0, !dbg !568
  br i1 %33, label %34, label %23, !dbg !569, !llvm.loop !589

34:                                               ; preds = %23, %17, %22, %13
  %35 = phi i32 [ 19, %13 ], [ 19, %22 ], [ 0, %17 ], [ 0, %23 ], !dbg !591
  ret i32 %35, !dbg !592
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_Rsolve(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !593 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !595, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !596, metadata !DIExpression()), !dbg !598
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !597, metadata !DIExpression()), !dbg !598
  %4 = load i64, ptr %0, align 8, !dbg !599, !tbaa !212
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !601
  %6 = load i64, ptr %5, align 8, !dbg !601, !tbaa !220
  %7 = icmp eq i64 %4, %6, !dbg !602
  br i1 %7, label %9, label %8, !dbg !603

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 20) #6, !dbg !604
  br label %20, !dbg !604

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !607, !tbaa !222
  %11 = icmp eq i64 %4, %10, !dbg !609
  br i1 %11, label %13, label %12, !dbg !610

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 234, i32 noundef 19) #6, !dbg !611
  br label %20, !dbg !611

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !614, !tbaa !222
  %15 = icmp eq i64 %4, %14, !dbg !616
  br i1 %15, label %17, label %16, !dbg !617

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 238, i32 noundef 19) #6, !dbg !618
  br label %20, !dbg !618

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %1) #6, !dbg !621
  %19 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #6, !dbg !623
  br label %20, !dbg !624

20:                                               ; preds = %8, %12, %16, %17
  %21 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 0, %17 ], !dbg !625
  ret i32 %21, !dbg !626
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_Rsvx(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !627 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !631, metadata !DIExpression()), !dbg !633
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !632, metadata !DIExpression()), !dbg !633
  %3 = load i64, ptr %0, align 8, !dbg !634, !tbaa !212
  %4 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !636
  %5 = load i64, ptr %4, align 8, !dbg !636, !tbaa !220
  %6 = icmp eq i64 %3, %5, !dbg !637
  br i1 %6, label %8, label %7, !dbg !638

7:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 260, i32 noundef 20) #6, !dbg !639
  br label %14, !dbg !639

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8, !dbg !642, !tbaa !222
  %10 = icmp eq i64 %3, %9, !dbg !644
  br i1 %10, label %12, label %11, !dbg !645

11:                                               ; preds = %8
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 264, i32 noundef 19) #6, !dbg !646
  br label %14, !dbg !646

12:                                               ; preds = %8
  %13 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %1) #6, !dbg !649
  br label %14, !dbg !651

14:                                               ; preds = %7, %11, %12
  %15 = phi i32 [ 20, %7 ], [ 19, %11 ], [ 0, %12 ], !dbg !652
  ret i32 %15, !dbg !653
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_R_solve(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !654 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !656, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !657, metadata !DIExpression()), !dbg !659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !658, metadata !DIExpression()), !dbg !659
  %4 = load i64, ptr %0, align 8, !dbg !660, !tbaa !212
  %5 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !662
  %6 = load i64, ptr %5, align 8, !dbg !662, !tbaa !220
  %7 = icmp eq i64 %4, %6, !dbg !663
  br i1 %7, label %9, label %8, !dbg !664

8:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 281, i32 noundef 20) #6, !dbg !665
  br label %20, !dbg !665

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !dbg !668, !tbaa !222
  %11 = icmp eq i64 %4, %10, !dbg !670
  br i1 %11, label %13, label %12, !dbg !671

12:                                               ; preds = %9
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 285, i32 noundef 19) #6, !dbg !672
  br label %20, !dbg !672

13:                                               ; preds = %9
  %14 = load i64, ptr %2, align 8, !dbg !675, !tbaa !222
  %15 = icmp eq i64 %4, %14, !dbg !677
  br i1 %15, label %17, label %16, !dbg !678

16:                                               ; preds = %13
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 289, i32 noundef 19) #6, !dbg !679
  br label %20, !dbg !679

17:                                               ; preds = %13
  %18 = tail call i32 @gsl_vector_memcpy(ptr noundef nonnull %2, ptr noundef nonnull %1) #6, !dbg !682
  %19 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %2) #6, !dbg !684
  br label %20, !dbg !685

20:                                               ; preds = %8, %12, %16, %17
  %21 = phi i32 [ 20, %8 ], [ 19, %12 ], [ 19, %16 ], [ 0, %17 ], !dbg !686
  ret i32 %21, !dbg !687
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_R_svx(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !688 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !690, metadata !DIExpression()), !dbg !692
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !691, metadata !DIExpression()), !dbg !692
  %3 = load i64, ptr %0, align 8, !dbg !693, !tbaa !212
  %4 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !695
  %5 = load i64, ptr %4, align 8, !dbg !695, !tbaa !220
  %6 = icmp eq i64 %3, %5, !dbg !696
  br i1 %6, label %8, label %7, !dbg !697

7:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 310, i32 noundef 20) #6, !dbg !698
  br label %14, !dbg !698

8:                                                ; preds = %2
  %9 = load i64, ptr %1, align 8, !dbg !701, !tbaa !222
  %10 = icmp eq i64 %3, %9, !dbg !703
  br i1 %10, label %12, label %11, !dbg !704

11:                                               ; preds = %8
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 314, i32 noundef 19) #6, !dbg !705
  br label %14, !dbg !705

12:                                               ; preds = %8
  %13 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %0, ptr noundef nonnull %1) #6, !dbg !708
  br label %14, !dbg !710

14:                                               ; preds = %7, %11, %12
  %15 = phi i32 [ 20, %7 ], [ 19, %11 ], [ 0, %12 ], !dbg !711
  ret i32 %15, !dbg !712
}

declare !dbg !713 void @gsl_matrix_const_column(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !716 void @gsl_vector_const_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !719 i32 @gsl_linalg_householder_hv(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_QTmat(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !722 {
  %4 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !742
  call void @llvm.dbg.assign(metadata i1 undef, metadata !735, metadata !DIExpression(), metadata !742, metadata ptr %4, metadata !DIExpression()), !dbg !743
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !744
  call void @llvm.dbg.assign(metadata i1 undef, metadata !739, metadata !DIExpression(), metadata !744, metadata ptr %5, metadata !DIExpression()), !dbg !743
  %6 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !745
  call void @llvm.dbg.assign(metadata i1 undef, metadata !740, metadata !DIExpression(), metadata !745, metadata ptr %6, metadata !DIExpression()), !dbg !743
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !726, metadata !DIExpression()), !dbg !746
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !727, metadata !DIExpression()), !dbg !746
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !728, metadata !DIExpression()), !dbg !746
  %7 = load i64, ptr %0, align 8, !dbg !747, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !729, metadata !DIExpression()), !dbg !746
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !748
  %9 = load i64, ptr %8, align 8, !dbg !748, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !730, metadata !DIExpression()), !dbg !746
  %10 = load i64, ptr %1, align 8, !dbg !749, !tbaa !222
  %11 = tail call i64 @llvm.umin.i64(i64 %7, i64 %9), !dbg !750
  %12 = icmp eq i64 %10, %11, !dbg !751
  br i1 %12, label %14, label %13, !dbg !752

13:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 407, i32 noundef 19) #6, !dbg !753
  br label %36, !dbg !753

14:                                               ; preds = %3
  %15 = load i64, ptr %2, align 8, !dbg !756, !tbaa !212
  %16 = icmp eq i64 %15, %7, !dbg !757
  br i1 %16, label %17, label %23, !dbg !758

17:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i64 0, metadata !731, metadata !DIExpression()), !dbg !759
  %18 = icmp eq i64 %10, 0, !dbg !760
  br i1 %18, label %36, label %19, !dbg !761

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %24, !dbg !761

23:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 411, i32 noundef 19) #6, !dbg !762
  br label %36, !dbg !762

24:                                               ; preds = %19, %24
  %25 = phi i64 [ 0, %19 ], [ %34, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !731, metadata !DIExpression()), !dbg !759
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !765
  call void @gsl_matrix_const_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %25) #6, !dbg !766
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !767
  %26 = sub i64 %7, %25, !dbg !768
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %25, i64 noundef %26) #6, !dbg !769
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #6, !dbg !770
  %27 = load i64, ptr %20, align 8, !dbg !771, !tbaa !220
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %6, ptr noundef nonnull %2, i64 noundef %25, i64 noundef 0, i64 noundef %26, i64 noundef %27) #6, !dbg !772
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !433, metadata !DIExpression()), !dbg !773
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !438, metadata !DIExpression()), !dbg !773
  %28 = load ptr, ptr %21, align 8, !dbg !775, !tbaa !249
  %29 = load i64, ptr %22, align 8, !dbg !776, !tbaa !251
  %30 = mul i64 %29, %25, !dbg !777
  %31 = getelementptr inbounds double, ptr %28, i64 %30, !dbg !778
  %32 = load double, ptr %31, align 8, !dbg !778, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %32, metadata !741, metadata !DIExpression()), !dbg !743
  %33 = call i32 @gsl_linalg_householder_hm(double noundef %32, ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !779
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #6, !dbg !780
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !780
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !780
  %34 = add nuw i64 %25, 1, !dbg !781
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !731, metadata !DIExpression()), !dbg !759
  %35 = icmp eq i64 %34, %10, !dbg !760
  br i1 %35, label %36, label %24, !dbg !761, !llvm.loop !782

36:                                               ; preds = %24, %17, %23, %13
  %37 = phi i32 [ 19, %13 ], [ 19, %23 ], [ 0, %17 ], [ 0, %24 ], !dbg !784
  ret i32 %37, !dbg !785
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_matQ(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 !dbg !786 {
  %4 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !804
  call void @llvm.dbg.assign(metadata i1 undef, metadata !797, metadata !DIExpression(), metadata !804, metadata ptr %4, metadata !DIExpression()), !dbg !805
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !806
  call void @llvm.dbg.assign(metadata i1 undef, metadata !801, metadata !DIExpression(), metadata !806, metadata ptr %5, metadata !DIExpression()), !dbg !805
  %6 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !807
  call void @llvm.dbg.assign(metadata i1 undef, metadata !802, metadata !DIExpression(), metadata !807, metadata ptr %6, metadata !DIExpression()), !dbg !805
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !788, metadata !DIExpression()), !dbg !808
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !789, metadata !DIExpression()), !dbg !808
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !790, metadata !DIExpression()), !dbg !808
  %7 = load i64, ptr %0, align 8, !dbg !809, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !791, metadata !DIExpression()), !dbg !808
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !810
  %9 = load i64, ptr %8, align 8, !dbg !810, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !792, metadata !DIExpression()), !dbg !808
  %10 = load i64, ptr %1, align 8, !dbg !811, !tbaa !222
  %11 = tail call i64 @llvm.umin.i64(i64 %7, i64 %9), !dbg !812
  %12 = icmp eq i64 %10, %11, !dbg !813
  br i1 %12, label %14, label %13, !dbg !814

13:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 440, i32 noundef 19) #6, !dbg !815
  br label %36, !dbg !815

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !818
  %16 = load i64, ptr %15, align 8, !dbg !818, !tbaa !220
  %17 = icmp eq i64 %16, %7, !dbg !819
  br i1 %17, label %18, label %23, !dbg !820

18:                                               ; preds = %14
  tail call void @llvm.dbg.value(metadata i64 0, metadata !793, metadata !DIExpression()), !dbg !821
  %19 = icmp eq i64 %10, 0, !dbg !822
  br i1 %19, label %36, label %20, !dbg !823

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %22 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %24, !dbg !823

23:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 444, i32 noundef 19) #6, !dbg !824
  br label %36, !dbg !824

24:                                               ; preds = %20, %24
  %25 = phi i64 [ 0, %20 ], [ %34, %24 ]
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !793, metadata !DIExpression()), !dbg !821
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6, !dbg !827
  call void @gsl_matrix_const_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %4, ptr noundef nonnull %0, i64 noundef %25) #6, !dbg !828
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !829
  %26 = sub i64 %7, %25, !dbg !830
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %4, i64 noundef %25, i64 noundef %26) #6, !dbg !831
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #6, !dbg !832
  %27 = load i64, ptr %2, align 8, !dbg !833, !tbaa !212
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %6, ptr noundef nonnull %2, i64 noundef 0, i64 noundef %25, i64 noundef %27, i64 noundef %26) #6, !dbg !834
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !433, metadata !DIExpression()), !dbg !835
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !438, metadata !DIExpression()), !dbg !835
  %28 = load ptr, ptr %21, align 8, !dbg !837, !tbaa !249
  %29 = load i64, ptr %22, align 8, !dbg !838, !tbaa !251
  %30 = mul i64 %29, %25, !dbg !839
  %31 = getelementptr inbounds double, ptr %28, i64 %30, !dbg !840
  %32 = load double, ptr %31, align 8, !dbg !840, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %32, metadata !803, metadata !DIExpression()), !dbg !805
  %33 = call i32 @gsl_linalg_householder_mh(double noundef %32, ptr noundef nonnull %5, ptr noundef nonnull %6) #6, !dbg !841
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #6, !dbg !842
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !842
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6, !dbg !842
  %34 = add nuw i64 %25, 1, !dbg !843
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !793, metadata !DIExpression()), !dbg !821
  %35 = icmp eq i64 %34, %10, !dbg !822
  br i1 %35, label %36, label %24, !dbg !823, !llvm.loop !844

36:                                               ; preds = %24, %18, %23, %13
  %37 = phi i32 [ 19, %13 ], [ 19, %23 ], [ 0, %18 ], [ 0, %24 ], !dbg !846
  ret i32 %37, !dbg !847
}

declare !dbg !848 i32 @gsl_linalg_householder_mh(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_unpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !dbg !849 {
  %5 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !872
  call void @llvm.dbg.assign(metadata i1 undef, metadata !865, metadata !DIExpression(), metadata !872, metadata ptr %5, metadata !DIExpression()), !dbg !873
  %6 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !874
  call void @llvm.dbg.assign(metadata i1 undef, metadata !869, metadata !DIExpression(), metadata !874, metadata ptr %6, metadata !DIExpression()), !dbg !873
  %7 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !875
  call void @llvm.dbg.assign(metadata i1 undef, metadata !870, metadata !DIExpression(), metadata !875, metadata ptr %7, metadata !DIExpression()), !dbg !873
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !853, metadata !DIExpression()), !dbg !876
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !854, metadata !DIExpression()), !dbg !876
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !855, metadata !DIExpression()), !dbg !876
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !856, metadata !DIExpression()), !dbg !876
  %8 = load i64, ptr %0, align 8, !dbg !877, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !857, metadata !DIExpression()), !dbg !876
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !878
  %10 = load i64, ptr %9, align 8, !dbg !878, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !858, metadata !DIExpression()), !dbg !876
  %11 = freeze i64 %10
  %12 = load i64, ptr %2, align 8, !dbg !879, !tbaa !212
  %13 = icmp eq i64 %12, %8, !dbg !880
  br i1 %13, label %14, label %18, !dbg !881

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !882
  %16 = load i64, ptr %15, align 8, !dbg !882, !tbaa !220
  %17 = icmp eq i64 %16, %8, !dbg !883
  br i1 %17, label %19, label %18, !dbg !884

18:                                               ; preds = %4, %14
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 474, i32 noundef 20) #6, !dbg !885
  br label %86, !dbg !885

19:                                               ; preds = %14
  %20 = load i64, ptr %3, align 8, !dbg !888, !tbaa !212
  %21 = icmp eq i64 %20, %8, !dbg !889
  br i1 %21, label %22, label %26, !dbg !890

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 1, !dbg !891
  %24 = load i64, ptr %23, align 8, !dbg !891, !tbaa !220
  %25 = icmp eq i64 %24, %11, !dbg !892
  br i1 %25, label %27, label %26, !dbg !893

26:                                               ; preds = %19, %22
  tail call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 478, i32 noundef 20) #6, !dbg !894
  br label %86, !dbg !894

27:                                               ; preds = %22
  %28 = load i64, ptr %1, align 8, !dbg !897, !tbaa !222
  %29 = tail call i64 @llvm.umin.i64(i64 %8, i64 %11), !dbg !898
  %30 = icmp eq i64 %28, %29, !dbg !899
  br i1 %30, label %32, label %31, !dbg !900

31:                                               ; preds = %27
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 482, i32 noundef 19) #6, !dbg !901
  br label %86, !dbg !901

32:                                               ; preds = %27
  tail call void @gsl_matrix_set_identity(ptr noundef nonnull %2) #6, !dbg !904
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !859, metadata !DIExpression()), !dbg !905
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !859, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !905
  %33 = icmp eq i64 %28, 0, !dbg !906
  br i1 %33, label %37, label %34, !dbg !907

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %36 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %44, !dbg !907

37:                                               ; preds = %44, %32
  tail call void @llvm.dbg.value(metadata i64 0, metadata !859, metadata !DIExpression()), !dbg !905
  %38 = icmp eq i64 %8, 0, !dbg !908
  br i1 %38, label %86, label %39, !dbg !911

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %41 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  %42 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %43 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  br label %55, !dbg !911

44:                                               ; preds = %34, %44
  %45 = phi i64 [ %28, %34 ], [ %46, %44 ]
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !859, metadata !DIExpression()), !dbg !905
  %46 = add i64 %45, -1, !dbg !912
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !859, metadata !DIExpression()), !dbg !905
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #6, !dbg !913
  call void @gsl_matrix_const_column(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %5, ptr noundef nonnull %0, i64 noundef %46) #6, !dbg !914
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #6, !dbg !915
  %47 = sub i64 %8, %46, !dbg !916
  call void @gsl_vector_const_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %6, ptr noundef nonnull %5, i64 noundef %46, i64 noundef %47) #6, !dbg !917
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #6, !dbg !918
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %7, ptr noundef nonnull %2, i64 noundef %46, i64 noundef %46, i64 noundef %47, i64 noundef %47) #6, !dbg !919
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !433, metadata !DIExpression()), !dbg !920
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !438, metadata !DIExpression()), !dbg !920
  %48 = load ptr, ptr %35, align 8, !dbg !922, !tbaa !249
  %49 = load i64, ptr %36, align 8, !dbg !923, !tbaa !251
  %50 = mul i64 %49, %46, !dbg !924
  %51 = getelementptr inbounds double, ptr %48, i64 %50, !dbg !925
  %52 = load double, ptr %51, align 8, !dbg !925, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %52, metadata !871, metadata !DIExpression()), !dbg !873
  %53 = call i32 @gsl_linalg_householder_hm(double noundef %52, ptr noundef nonnull %6, ptr noundef nonnull %7) #6, !dbg !926
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #6, !dbg !927
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #6, !dbg !927
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #6, !dbg !927
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !859, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !905
  %54 = icmp eq i64 %46, 0, !dbg !906
  br i1 %54, label %37, label %44, !dbg !907, !llvm.loop !928

55:                                               ; preds = %39, %83
  %56 = phi i64 [ 0, %39 ], [ %84, %83 ]
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !859, metadata !DIExpression()), !dbg !905
  %57 = call i64 @llvm.umin.i64(i64 %11, i64 %56), !dbg !930
  tail call void @llvm.dbg.value(metadata i64 0, metadata !864, metadata !DIExpression()), !dbg !905
  %58 = icmp eq i64 %57, 0, !dbg !933
  br i1 %58, label %65, label %59, !dbg !930

59:                                               ; preds = %55
  %60 = shl nuw i64 %57, 3, !dbg !930
  %61 = load ptr, ptr %40, align 8, !tbaa !935
  %62 = load i64, ptr %41, align 8, !tbaa !936
  %63 = mul i64 %62, %56
  %64 = getelementptr double, ptr %61, i64 %63
  call void @llvm.memset.p0.i64(ptr align 8 %64, i8 0, i64 %60, i1 false), !dbg !937, !tbaa !255
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !864, metadata !DIExpression()), !dbg !905
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !943, metadata !DIExpression()), !dbg !948
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !944, metadata !DIExpression()), !dbg !948
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !945, metadata !DIExpression()), !dbg !948
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !946, metadata !DIExpression()), !dbg !948
  br label %65, !dbg !949

65:                                               ; preds = %59, %55
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !864, metadata !DIExpression()), !dbg !905
  %66 = icmp ult i64 %56, %11, !dbg !949
  br i1 %66, label %67, label %83, !dbg !952

67:                                               ; preds = %65
  %68 = load ptr, ptr %42, align 8, !tbaa !935
  %69 = load i64, ptr %43, align 8, !tbaa !936
  %70 = mul i64 %69, %56
  %71 = getelementptr double, ptr %68, i64 %70
  %72 = load ptr, ptr %40, align 8, !tbaa !935
  %73 = load i64, ptr %41, align 8, !tbaa !936
  %74 = mul i64 %73, %56
  %75 = getelementptr double, ptr %72, i64 %74
  br label %76, !dbg !952

76:                                               ; preds = %67, %76
  %77 = phi i64 [ %56, %67 ], [ %81, %76 ]
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !864, metadata !DIExpression()), !dbg !905
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !953, metadata !DIExpression()), !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !958, metadata !DIExpression()), !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !959, metadata !DIExpression()), !dbg !960
  %78 = getelementptr double, ptr %71, i64 %77, !dbg !962
  %79 = load double, ptr %78, align 8, !dbg !962, !tbaa !255
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !943, metadata !DIExpression()), !dbg !963
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !944, metadata !DIExpression()), !dbg !963
  tail call void @llvm.dbg.value(metadata i64 %77, metadata !945, metadata !DIExpression()), !dbg !963
  tail call void @llvm.dbg.value(metadata double %79, metadata !946, metadata !DIExpression()), !dbg !963
  %80 = getelementptr double, ptr %75, i64 %77, !dbg !965
  store double %79, ptr %80, align 8, !dbg !966, !tbaa !255
  %81 = add nuw i64 %77, 1, !dbg !967
  tail call void @llvm.dbg.value(metadata i64 %81, metadata !864, metadata !DIExpression()), !dbg !905
  %82 = icmp ult i64 %81, %11, !dbg !949
  br i1 %82, label %76, label %83, !dbg !952, !llvm.loop !968

83:                                               ; preds = %76, %65
  %84 = add nuw i64 %56, 1, !dbg !970
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !859, metadata !DIExpression()), !dbg !905
  %85 = icmp eq i64 %84, %8, !dbg !908
  br i1 %85, label %86, label %55, !dbg !911, !llvm.loop !971

86:                                               ; preds = %83, %37, %31, %26, %18
  %87 = phi i32 [ 20, %18 ], [ 20, %26 ], [ 19, %31 ], [ 0, %37 ], [ 0, %83 ], !dbg !973
  ret i32 %87, !dbg !974
}

declare !dbg !975 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_update(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 !dbg !978 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !982, metadata !DIExpression()), !dbg !1014
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !983, metadata !DIExpression()), !dbg !1014
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !984, metadata !DIExpression()), !dbg !1014
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !985, metadata !DIExpression()), !dbg !1014
  %5 = load i64, ptr %1, align 8, !dbg !1015, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !986, metadata !DIExpression()), !dbg !1014
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !1016
  %7 = load i64, ptr %6, align 8, !dbg !1016, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !987, metadata !DIExpression()), !dbg !1014
  %8 = load i64, ptr %0, align 8, !dbg !1017, !tbaa !212
  %9 = icmp eq i64 %8, %5, !dbg !1018
  br i1 %9, label %10, label %14, !dbg !1019

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1020
  %12 = load i64, ptr %11, align 8, !dbg !1020, !tbaa !220
  %13 = icmp eq i64 %12, %5, !dbg !1021
  br i1 %13, label %15, label %14, !dbg !1022

14:                                               ; preds = %4, %10
  tail call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 539, i32 noundef 20) #6, !dbg !1023
  br label %287, !dbg !1023

15:                                               ; preds = %10
  %16 = load i64, ptr %2, align 8, !dbg !1026, !tbaa !222
  %17 = icmp eq i64 %16, %5, !dbg !1027
  br i1 %17, label %19, label %18, !dbg !1028

18:                                               ; preds = %15
  tail call void @gsl_error(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 543, i32 noundef 19) #6, !dbg !1029
  br label %287, !dbg !1029

19:                                               ; preds = %15
  %20 = load i64, ptr %3, align 8, !dbg !1032, !tbaa !222
  %21 = icmp eq i64 %20, %7, !dbg !1033
  br i1 %21, label %22, label %36, !dbg !1034

22:                                               ; preds = %19
  %23 = add i64 %5, -1, !dbg !1035
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !993, metadata !DIExpression()), !dbg !1036
  %24 = icmp eq i64 %23, 0, !dbg !1037
  %25 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !249
  br i1 %24, label %157, label %27, !dbg !1038

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.gsl_vector, ptr %2, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !251
  %30 = icmp eq i64 %5, 0
  %31 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %32 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %33 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %34 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %35 = add i64 %5, -2, !dbg !1038
  br label %37, !dbg !1038

36:                                               ; preds = %19
  tail call void @gsl_error(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 547, i32 noundef 19) #6, !dbg !1039
  br label %287, !dbg !1039

37:                                               ; preds = %27, %153
  %38 = phi i64 [ 0, %27 ], [ %156, %153 ]
  %39 = phi i64 [ %23, %27 ], [ %154, %153 ]
  %40 = phi i64 [ %5, %27 ], [ %39, %153 ]
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !1042
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !438, metadata !DIExpression()), !dbg !1042
  %41 = sub i64 %35, %38, !dbg !1044
  %42 = tail call i64 @llvm.umin.i64(i64 %39, i64 %41), !dbg !1044
  %43 = sub i64 %7, %42, !dbg !1044
  %44 = add i64 %42, 1, !dbg !1044
  %45 = mul i64 %29, %39, !dbg !1044
  %46 = getelementptr inbounds double, ptr %26, i64 %45, !dbg !1045
  %47 = load double, ptr %46, align 8, !dbg !1045, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %47, metadata !1000, metadata !DIExpression()), !dbg !1046
  %48 = add i64 %40, -2, !dbg !1047
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !1048
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !438, metadata !DIExpression()), !dbg !1048
  %49 = mul i64 %29, %48, !dbg !1050
  %50 = getelementptr inbounds double, ptr %26, i64 %49, !dbg !1051
  %51 = load double, ptr %50, align 8, !dbg !1051, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %51, metadata !1001, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata double %51, metadata !1052, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata double %47, metadata !1057, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr undef, metadata !1058, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata ptr undef, metadata !1059, metadata !DIExpression()), !dbg !1068
  %52 = fcmp oeq double %47, 0.000000e+00, !dbg !1070
  br i1 %52, label %73, label %53, !dbg !1071

53:                                               ; preds = %37
  %54 = tail call double @llvm.fabs.f64(double %47), !dbg !1072
  %55 = tail call double @llvm.fabs.f64(double %51), !dbg !1073
  %56 = fcmp ogt double %54, %55, !dbg !1074
  br i1 %56, label %57, label %65, !dbg !1075

57:                                               ; preds = %53
  %58 = fneg double %51, !dbg !1076
  %59 = fdiv double %58, %47, !dbg !1077
  call void @llvm.dbg.value(metadata double %59, metadata !1060, metadata !DIExpression()), !dbg !1078
  %60 = fmul double %59, %59, !dbg !1079
  %61 = fadd double %60, 1.000000e+00, !dbg !1080
  %62 = tail call double @llvm.sqrt.f64(double %61), !dbg !1081
  %63 = fdiv double 1.000000e+00, %62, !dbg !1082
  call void @llvm.dbg.value(metadata double %63, metadata !1064, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata double %63, metadata !999, metadata !DIExpression()), !dbg !1046
  %64 = fmul double %59, %63, !dbg !1083
  tail call void @llvm.dbg.value(metadata double %64, metadata !995, metadata !DIExpression()), !dbg !1046
  br label %73, !dbg !1084

65:                                               ; preds = %53
  %66 = fneg double %47, !dbg !1085
  %67 = fdiv double %66, %51, !dbg !1086
  call void @llvm.dbg.value(metadata double %67, metadata !1065, metadata !DIExpression()), !dbg !1087
  %68 = fmul double %67, %67, !dbg !1088
  %69 = fadd double %68, 1.000000e+00, !dbg !1089
  %70 = tail call double @llvm.sqrt.f64(double %69), !dbg !1090
  %71 = fdiv double 1.000000e+00, %70, !dbg !1091
  call void @llvm.dbg.value(metadata double %71, metadata !1067, metadata !DIExpression()), !dbg !1087
  tail call void @llvm.dbg.value(metadata double %71, metadata !995, metadata !DIExpression()), !dbg !1046
  %72 = fmul double %67, %71, !dbg !1092
  tail call void @llvm.dbg.value(metadata double %72, metadata !999, metadata !DIExpression()), !dbg !1046
  br label %73

73:                                               ; preds = %37, %57, %65
  %74 = phi double [ %64, %57 ], [ %71, %65 ], [ 1.000000e+00, %37 ], !dbg !1093
  %75 = phi double [ %63, %57 ], [ %72, %65 ], [ 0.000000e+00, %37 ], !dbg !1093
  tail call void @llvm.dbg.value(metadata double %75, metadata !999, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata double %74, metadata !995, metadata !DIExpression()), !dbg !1046
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1094, metadata !DIExpression()), !dbg !1105
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1099, metadata !DIExpression()), !dbg !1105
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1100, metadata !DIExpression()), !dbg !1105
  tail call void @llvm.dbg.value(metadata double %74, metadata !1101, metadata !DIExpression()), !dbg !1105
  tail call void @llvm.dbg.value(metadata double %75, metadata !1102, metadata !DIExpression()), !dbg !1105
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !1107
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !438, metadata !DIExpression()), !dbg !1107
  tail call void @llvm.dbg.value(metadata double %51, metadata !1103, metadata !DIExpression()), !dbg !1105
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !1109
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !438, metadata !DIExpression()), !dbg !1109
  tail call void @llvm.dbg.value(metadata double %47, metadata !1104, metadata !DIExpression()), !dbg !1105
  %76 = fmul double %51, %74, !dbg !1111
  %77 = fmul double %47, %75, !dbg !1112
  %78 = fsub double %76, %77, !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !239, metadata !DIExpression()), !dbg !1114
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !244, metadata !DIExpression()), !dbg !1114
  tail call void @llvm.dbg.value(metadata double %78, metadata !245, metadata !DIExpression()), !dbg !1114
  store double %78, ptr %50, align 8, !dbg !1116, !tbaa !255
  %79 = fmul double %51, %75, !dbg !1117
  %80 = fmul double %47, %74, !dbg !1118
  %81 = fadd double %80, %79, !dbg !1119
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !239, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !244, metadata !DIExpression()), !dbg !1120
  tail call void @llvm.dbg.value(metadata double %81, metadata !245, metadata !DIExpression()), !dbg !1120
  store double %81, ptr %46, align 8, !dbg !1122, !tbaa !255
  call void @llvm.dbg.value(metadata i64 %5, metadata !1123, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %7, metadata !1129, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %0, metadata !1130, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %1, metadata !1131, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %48, metadata !1132, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %39, metadata !1133, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata double %74, metadata !1134, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata double %75, metadata !1135, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 0, metadata !1136, metadata !DIExpression()), !dbg !1147
  br i1 %30, label %101, label %82, !dbg !1149

82:                                               ; preds = %73
  %83 = load ptr, ptr %31, align 8, !tbaa !935
  %84 = load i64, ptr %32, align 8, !tbaa !936
  br label %85, !dbg !1149

85:                                               ; preds = %85, %82
  %86 = phi i64 [ 0, %82 ], [ %99, %85 ]
  call void @llvm.dbg.value(metadata i64 %86, metadata !1136, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %0, metadata !953, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %86, metadata !958, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i64 %48, metadata !959, metadata !DIExpression()), !dbg !1150
  %87 = mul i64 %86, %84, !dbg !1152
  %88 = getelementptr double, ptr %83, i64 %87, !dbg !1153
  %89 = getelementptr double, ptr %88, i64 %48, !dbg !1153
  %90 = load double, ptr %89, align 8, !dbg !1153, !tbaa !255
  call void @llvm.dbg.value(metadata double %90, metadata !1137, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %0, metadata !953, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %86, metadata !958, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %39, metadata !959, metadata !DIExpression()), !dbg !1155
  %91 = getelementptr double, ptr %88, i64 %39, !dbg !1157
  %92 = load double, ptr %91, align 8, !dbg !1157, !tbaa !255
  call void @llvm.dbg.value(metadata double %92, metadata !1141, metadata !DIExpression()), !dbg !1154
  %93 = fmul double %74, %90, !dbg !1158
  %94 = fmul double %75, %92, !dbg !1159
  %95 = fsub double %93, %94, !dbg !1160
  call void @llvm.dbg.value(metadata ptr %0, metadata !943, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %86, metadata !944, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i64 %48, metadata !945, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata double %95, metadata !946, metadata !DIExpression()), !dbg !1161
  store double %95, ptr %89, align 8, !dbg !1163, !tbaa !255
  %96 = fmul double %75, %90, !dbg !1164
  %97 = fmul double %74, %92, !dbg !1165
  %98 = fadd double %96, %97, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %0, metadata !943, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %86, metadata !944, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i64 %39, metadata !945, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata double %98, metadata !946, metadata !DIExpression()), !dbg !1167
  store double %98, ptr %91, align 8, !dbg !1169, !tbaa !255
  %99 = add nuw i64 %86, 1, !dbg !1170
  call void @llvm.dbg.value(metadata i64 %99, metadata !1136, metadata !DIExpression()), !dbg !1147
  %100 = icmp eq i64 %99, %5, !dbg !1171
  br i1 %100, label %101, label %85, !dbg !1149, !llvm.loop !1172

101:                                              ; preds = %85, %73
  %102 = tail call i64 @llvm.umin.i64(i64 %48, i64 %39), !dbg !1174
  call void @llvm.dbg.value(metadata i64 %102, metadata !1136, metadata !DIExpression()), !dbg !1147
  %103 = icmp ult i64 %102, %7, !dbg !1175
  br i1 %103, label %104, label %153, !dbg !1176

104:                                              ; preds = %101
  %105 = load ptr, ptr %33, align 8, !tbaa !935
  %106 = load i64, ptr %34, align 8, !tbaa !936
  %107 = mul i64 %106, %48
  %108 = getelementptr double, ptr %105, i64 %107
  %109 = mul i64 %106, %39
  %110 = getelementptr double, ptr %105, i64 %109
  %111 = and i64 %43, 1, !dbg !1176
  %112 = icmp eq i64 %111, 0, !dbg !1176
  br i1 %112, label %125, label %113, !dbg !1176

113:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 %102, metadata !1136, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %48, metadata !958, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %102, metadata !959, metadata !DIExpression()), !dbg !1177
  %114 = getelementptr double, ptr %108, i64 %102, !dbg !1179
  %115 = load double, ptr %114, align 8, !dbg !1179, !tbaa !255
  call void @llvm.dbg.value(metadata double %115, metadata !1142, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %39, metadata !958, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %102, metadata !959, metadata !DIExpression()), !dbg !1181
  %116 = getelementptr double, ptr %110, i64 %102, !dbg !1183
  %117 = load double, ptr %116, align 8, !dbg !1183, !tbaa !255
  call void @llvm.dbg.value(metadata double %117, metadata !1146, metadata !DIExpression()), !dbg !1180
  %118 = fmul double %74, %115, !dbg !1184
  %119 = fmul double %75, %117, !dbg !1185
  %120 = fsub double %118, %119, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %48, metadata !944, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %102, metadata !945, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata double %120, metadata !946, metadata !DIExpression()), !dbg !1187
  store double %120, ptr %114, align 8, !dbg !1189, !tbaa !255
  %121 = fmul double %75, %115, !dbg !1190
  %122 = fmul double %74, %117, !dbg !1191
  %123 = fadd double %121, %122, !dbg !1192
  call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %39, metadata !944, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %102, metadata !945, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %123, metadata !946, metadata !DIExpression()), !dbg !1193
  store double %123, ptr %116, align 8, !dbg !1195, !tbaa !255
  %124 = add nuw i64 %102, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %124, metadata !1136, metadata !DIExpression()), !dbg !1147
  br label %125, !dbg !1176

125:                                              ; preds = %113, %104
  %126 = phi i64 [ %102, %104 ], [ %124, %113 ]
  %127 = icmp eq i64 %7, %44, !dbg !1176
  br i1 %127, label %153, label %128, !dbg !1176

128:                                              ; preds = %125, %128
  %129 = phi i64 [ %151, %128 ], [ %126, %125 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1136, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %48, metadata !958, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %129, metadata !959, metadata !DIExpression()), !dbg !1177
  %130 = getelementptr double, ptr %108, i64 %129, !dbg !1179
  %131 = load double, ptr %130, align 8, !dbg !1179, !tbaa !255
  call void @llvm.dbg.value(metadata double %131, metadata !1142, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %39, metadata !958, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %129, metadata !959, metadata !DIExpression()), !dbg !1181
  %132 = getelementptr double, ptr %110, i64 %129, !dbg !1183
  %133 = load double, ptr %132, align 8, !dbg !1183, !tbaa !255
  call void @llvm.dbg.value(metadata double %133, metadata !1146, metadata !DIExpression()), !dbg !1180
  %134 = fmul double %74, %131, !dbg !1184
  %135 = fmul double %75, %133, !dbg !1185
  %136 = fsub double %134, %135, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %48, metadata !944, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %129, metadata !945, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata double %136, metadata !946, metadata !DIExpression()), !dbg !1187
  store double %136, ptr %130, align 8, !dbg !1189, !tbaa !255
  %137 = fmul double %75, %131, !dbg !1190
  %138 = fmul double %74, %133, !dbg !1191
  %139 = fadd double %137, %138, !dbg !1192
  call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %39, metadata !944, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %129, metadata !945, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %139, metadata !946, metadata !DIExpression()), !dbg !1193
  store double %139, ptr %132, align 8, !dbg !1195, !tbaa !255
  %140 = add nuw i64 %129, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %140, metadata !1136, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %140, metadata !1136, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %48, metadata !958, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %140, metadata !959, metadata !DIExpression()), !dbg !1177
  %141 = getelementptr double, ptr %108, i64 %140, !dbg !1179
  %142 = load double, ptr %141, align 8, !dbg !1179, !tbaa !255
  call void @llvm.dbg.value(metadata double %142, metadata !1142, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %39, metadata !958, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %140, metadata !959, metadata !DIExpression()), !dbg !1181
  %143 = getelementptr double, ptr %110, i64 %140, !dbg !1183
  %144 = load double, ptr %143, align 8, !dbg !1183, !tbaa !255
  call void @llvm.dbg.value(metadata double %144, metadata !1146, metadata !DIExpression()), !dbg !1180
  %145 = fmul double %74, %142, !dbg !1184
  %146 = fmul double %75, %144, !dbg !1185
  %147 = fsub double %145, %146, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %48, metadata !944, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata i64 %140, metadata !945, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata double %147, metadata !946, metadata !DIExpression()), !dbg !1187
  store double %147, ptr %141, align 8, !dbg !1189, !tbaa !255
  %148 = fmul double %75, %142, !dbg !1190
  %149 = fmul double %74, %144, !dbg !1191
  %150 = fadd double %148, %149, !dbg !1192
  call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %39, metadata !944, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i64 %140, metadata !945, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata double %150, metadata !946, metadata !DIExpression()), !dbg !1193
  store double %150, ptr %143, align 8, !dbg !1195, !tbaa !255
  %151 = add nuw i64 %129, 2, !dbg !1196
  call void @llvm.dbg.value(metadata i64 %151, metadata !1136, metadata !DIExpression()), !dbg !1147
  %152 = icmp eq i64 %151, %7, !dbg !1175
  br i1 %152, label %153, label %128, !dbg !1176, !llvm.loop !1197

153:                                              ; preds = %125, %128, %101
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !993, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1036
  %154 = add i64 %39, -1, !dbg !1035
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !993, metadata !DIExpression()), !dbg !1036
  %155 = icmp eq i64 %154, 0, !dbg !1037
  %156 = add i64 %38, 1, !dbg !1038
  br i1 %155, label %157, label %37, !dbg !1038, !llvm.loop !1199

157:                                              ; preds = %153, %22
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !433, metadata !DIExpression()), !dbg !1201
  tail call void @llvm.dbg.value(metadata i64 0, metadata !438, metadata !DIExpression()), !dbg !1201
  %158 = load double, ptr %26, align 8, !dbg !1203, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %158, metadata !994, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata i64 0, metadata !988, metadata !DIExpression()), !dbg !1036
  %159 = icmp eq i64 %7, 0, !dbg !1204
  br i1 %159, label %182, label %160, !dbg !1205

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !935
  %163 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !249
  %165 = getelementptr inbounds %struct.gsl_vector, ptr %3, i64 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !251
  %167 = and i64 %7, 1, !dbg !1205
  %168 = icmp eq i64 %7, 1, !dbg !1205
  br i1 %168, label %171, label %169, !dbg !1205

169:                                              ; preds = %160
  %170 = and i64 %7, -2, !dbg !1205
  br label %195, !dbg !1205

171:                                              ; preds = %195, %160
  %172 = phi i64 [ 0, %160 ], [ %213, %195 ]
  %173 = icmp eq i64 %167, 0, !dbg !1205
  br i1 %173, label %182, label %174, !dbg !1205

174:                                              ; preds = %171
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !988, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i64 0, metadata !958, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !959, metadata !DIExpression()), !dbg !1206
  %175 = getelementptr double, ptr %162, i64 %172, !dbg !1208
  %176 = load double, ptr %175, align 8, !dbg !1208, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %176, metadata !1002, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !433, metadata !DIExpression()), !dbg !1210
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !438, metadata !DIExpression()), !dbg !1210
  %177 = mul i64 %166, %172, !dbg !1212
  %178 = getelementptr inbounds double, ptr %164, i64 %177, !dbg !1213
  %179 = load double, ptr %178, align 8, !dbg !1213, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %179, metadata !1006, metadata !DIExpression()), !dbg !1209
  %180 = fmul double %158, %179, !dbg !1214
  %181 = fadd double %176, %180, !dbg !1215
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !945, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata double %181, metadata !946, metadata !DIExpression()), !dbg !1216
  store double %181, ptr %175, align 8, !dbg !1218, !tbaa !255
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !988, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1036
  br label %182

182:                                              ; preds = %174, %171, %157
  %183 = add i64 %7, 1
  %184 = tail call i64 @llvm.umin.i64(i64 %5, i64 %183)
  tail call void @llvm.dbg.value(metadata i64 1, metadata !993, metadata !DIExpression()), !dbg !1036
  %185 = icmp ugt i64 %184, 1, !dbg !1219
  br i1 %185, label %186, label %287, !dbg !1220

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !935
  %189 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !936
  %191 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !935
  %193 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %194 = load i64, ptr %193, align 8, !tbaa !936
  br label %216, !dbg !1220

195:                                              ; preds = %195, %169
  %196 = phi i64 [ 0, %169 ], [ %213, %195 ]
  %197 = phi i64 [ 0, %169 ], [ %214, %195 ]
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !988, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i64 0, metadata !958, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !959, metadata !DIExpression()), !dbg !1206
  %198 = getelementptr double, ptr %162, i64 %196, !dbg !1208
  %199 = load double, ptr %198, align 8, !dbg !1208, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %199, metadata !1002, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !433, metadata !DIExpression()), !dbg !1210
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !438, metadata !DIExpression()), !dbg !1210
  %200 = mul i64 %166, %196, !dbg !1212
  %201 = getelementptr inbounds double, ptr %164, i64 %200, !dbg !1213
  %202 = load double, ptr %201, align 8, !dbg !1213, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %202, metadata !1006, metadata !DIExpression()), !dbg !1209
  %203 = fmul double %158, %202, !dbg !1214
  %204 = fadd double %199, %203, !dbg !1215
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata i64 %196, metadata !945, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata double %204, metadata !946, metadata !DIExpression()), !dbg !1216
  store double %204, ptr %198, align 8, !dbg !1218, !tbaa !255
  %205 = or disjoint i64 %196, 1, !dbg !1221
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !988, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !988, metadata !DIExpression()), !dbg !1036
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i64 0, metadata !958, metadata !DIExpression()), !dbg !1206
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !959, metadata !DIExpression()), !dbg !1206
  %206 = getelementptr double, ptr %162, i64 %205, !dbg !1208
  %207 = load double, ptr %206, align 8, !dbg !1208, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %207, metadata !1002, metadata !DIExpression()), !dbg !1209
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !433, metadata !DIExpression()), !dbg !1210
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !438, metadata !DIExpression()), !dbg !1210
  %208 = mul i64 %166, %205, !dbg !1212
  %209 = getelementptr inbounds double, ptr %164, i64 %208, !dbg !1213
  %210 = load double, ptr %209, align 8, !dbg !1213, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %210, metadata !1006, metadata !DIExpression()), !dbg !1209
  %211 = fmul double %158, %210, !dbg !1214
  %212 = fadd double %207, %211, !dbg !1215
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata i64 0, metadata !944, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !945, metadata !DIExpression()), !dbg !1216
  tail call void @llvm.dbg.value(metadata double %212, metadata !946, metadata !DIExpression()), !dbg !1216
  store double %212, ptr %206, align 8, !dbg !1218, !tbaa !255
  %213 = add nuw i64 %196, 2, !dbg !1221
  tail call void @llvm.dbg.value(metadata i64 %213, metadata !988, metadata !DIExpression()), !dbg !1036
  %214 = add i64 %197, 2, !dbg !1205
  %215 = icmp eq i64 %214, %170, !dbg !1205
  br i1 %215, label %171, label %195, !dbg !1205, !llvm.loop !1222

216:                                              ; preds = %186, %284
  %217 = phi i64 [ 1, %186 ], [ %285, %284 ]
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !993, metadata !DIExpression()), !dbg !1036
  %218 = add i64 %217, -1, !dbg !1224
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !958, metadata !DIExpression()), !dbg !1225
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !959, metadata !DIExpression()), !dbg !1225
  %219 = mul i64 %190, %218, !dbg !1227
  %220 = getelementptr double, ptr %188, i64 %219, !dbg !1228
  %221 = getelementptr double, ptr %220, i64 %218, !dbg !1228
  %222 = load double, ptr %221, align 8, !dbg !1228, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %222, metadata !1012, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1230
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !958, metadata !DIExpression()), !dbg !1230
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !959, metadata !DIExpression()), !dbg !1230
  %223 = mul i64 %190, %217, !dbg !1232
  %224 = getelementptr double, ptr %188, i64 %223, !dbg !1233
  %225 = getelementptr double, ptr %224, i64 %218, !dbg !1233
  %226 = load double, ptr %225, align 8, !dbg !1233, !tbaa !255
  tail call void @llvm.dbg.value(metadata double %226, metadata !1013, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata double %222, metadata !1052, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata double %226, metadata !1057, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr undef, metadata !1058, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr undef, metadata !1059, metadata !DIExpression()), !dbg !1234
  %227 = fcmp oeq double %226, 0.000000e+00, !dbg !1236
  br i1 %227, label %248, label %228, !dbg !1237

228:                                              ; preds = %216
  %229 = tail call double @llvm.fabs.f64(double %226), !dbg !1238
  %230 = tail call double @llvm.fabs.f64(double %222), !dbg !1239
  %231 = fcmp ogt double %229, %230, !dbg !1240
  br i1 %231, label %232, label %240, !dbg !1241

232:                                              ; preds = %228
  %233 = fneg double %222, !dbg !1242
  %234 = fdiv double %233, %226, !dbg !1243
  call void @llvm.dbg.value(metadata double %234, metadata !1060, metadata !DIExpression()), !dbg !1244
  %235 = fmul double %234, %234, !dbg !1245
  %236 = fadd double %235, 1.000000e+00, !dbg !1246
  %237 = tail call double @llvm.sqrt.f64(double %236), !dbg !1247
  %238 = fdiv double 1.000000e+00, %237, !dbg !1248
  call void @llvm.dbg.value(metadata double %238, metadata !1064, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata double %238, metadata !1011, metadata !DIExpression()), !dbg !1229
  %239 = fmul double %234, %238, !dbg !1249
  tail call void @llvm.dbg.value(metadata double %239, metadata !1007, metadata !DIExpression()), !dbg !1229
  br label %248, !dbg !1250

240:                                              ; preds = %228
  %241 = fneg double %226, !dbg !1251
  %242 = fdiv double %241, %222, !dbg !1252
  call void @llvm.dbg.value(metadata double %242, metadata !1065, metadata !DIExpression()), !dbg !1253
  %243 = fmul double %242, %242, !dbg !1254
  %244 = fadd double %243, 1.000000e+00, !dbg !1255
  %245 = tail call double @llvm.sqrt.f64(double %244), !dbg !1256
  %246 = fdiv double 1.000000e+00, %245, !dbg !1257
  call void @llvm.dbg.value(metadata double %246, metadata !1067, metadata !DIExpression()), !dbg !1253
  tail call void @llvm.dbg.value(metadata double %246, metadata !1007, metadata !DIExpression()), !dbg !1229
  %247 = fmul double %242, %246, !dbg !1258
  tail call void @llvm.dbg.value(metadata double %247, metadata !1011, metadata !DIExpression()), !dbg !1229
  br label %248

248:                                              ; preds = %216, %232, %240
  %249 = phi double [ %239, %232 ], [ %246, %240 ], [ 1.000000e+00, %216 ], !dbg !1259
  %250 = phi double [ %238, %232 ], [ %247, %240 ], [ 0.000000e+00, %216 ], !dbg !1259
  tail call void @llvm.dbg.value(metadata double %250, metadata !1011, metadata !DIExpression()), !dbg !1229
  tail call void @llvm.dbg.value(metadata double %249, metadata !1007, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %5, metadata !1123, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %7, metadata !1129, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr %0, metadata !1130, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr %1, metadata !1131, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %218, metadata !1132, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 %217, metadata !1133, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %249, metadata !1134, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata double %250, metadata !1135, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata i64 0, metadata !1136, metadata !DIExpression()), !dbg !1260
  br label %251, !dbg !1262

251:                                              ; preds = %251, %248
  %252 = phi i64 [ 0, %248 ], [ %265, %251 ]
  call void @llvm.dbg.value(metadata i64 %252, metadata !1136, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr %0, metadata !953, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %252, metadata !958, metadata !DIExpression()), !dbg !1263
  call void @llvm.dbg.value(metadata i64 %218, metadata !959, metadata !DIExpression()), !dbg !1263
  %253 = mul i64 %252, %194, !dbg !1265
  %254 = getelementptr double, ptr %192, i64 %253, !dbg !1266
  %255 = getelementptr double, ptr %254, i64 %218, !dbg !1266
  %256 = load double, ptr %255, align 8, !dbg !1266, !tbaa !255
  call void @llvm.dbg.value(metadata double %256, metadata !1137, metadata !DIExpression()), !dbg !1267
  call void @llvm.dbg.value(metadata ptr %0, metadata !953, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i64 %252, metadata !958, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i64 %217, metadata !959, metadata !DIExpression()), !dbg !1268
  %257 = getelementptr double, ptr %254, i64 %217, !dbg !1270
  %258 = load double, ptr %257, align 8, !dbg !1270, !tbaa !255
  call void @llvm.dbg.value(metadata double %258, metadata !1141, metadata !DIExpression()), !dbg !1267
  %259 = fmul double %249, %256, !dbg !1271
  %260 = fmul double %250, %258, !dbg !1272
  %261 = fsub double %259, %260, !dbg !1273
  call void @llvm.dbg.value(metadata ptr %0, metadata !943, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %252, metadata !944, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i64 %218, metadata !945, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata double %261, metadata !946, metadata !DIExpression()), !dbg !1274
  store double %261, ptr %255, align 8, !dbg !1276, !tbaa !255
  %262 = fmul double %250, %256, !dbg !1277
  %263 = fmul double %249, %258, !dbg !1278
  %264 = fadd double %262, %263, !dbg !1279
  call void @llvm.dbg.value(metadata ptr %0, metadata !943, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i64 %252, metadata !944, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata i64 %217, metadata !945, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.value(metadata double %264, metadata !946, metadata !DIExpression()), !dbg !1280
  store double %264, ptr %257, align 8, !dbg !1282, !tbaa !255
  %265 = add nuw i64 %252, 1, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %265, metadata !1136, metadata !DIExpression()), !dbg !1260
  %266 = icmp eq i64 %265, %5, !dbg !1284
  br i1 %266, label %267, label %251, !dbg !1262, !llvm.loop !1285

267:                                              ; preds = %251
  %268 = tail call i64 @llvm.umin.i64(i64 %218, i64 %217), !dbg !1287
  call void @llvm.dbg.value(metadata i64 %268, metadata !1136, metadata !DIExpression()), !dbg !1260
  %269 = icmp ult i64 %268, %7, !dbg !1288
  br i1 %269, label %270, label %284, !dbg !1289

270:                                              ; preds = %267, %270
  %271 = phi i64 [ %282, %270 ], [ %268, %267 ]
  call void @llvm.dbg.value(metadata i64 %271, metadata !1136, metadata !DIExpression()), !dbg !1260
  call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64 %218, metadata !958, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i64 %271, metadata !959, metadata !DIExpression()), !dbg !1290
  %272 = getelementptr double, ptr %220, i64 %271, !dbg !1292
  %273 = load double, ptr %272, align 8, !dbg !1292, !tbaa !255
  call void @llvm.dbg.value(metadata double %273, metadata !1142, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata ptr %1, metadata !953, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i64 %217, metadata !958, metadata !DIExpression()), !dbg !1294
  call void @llvm.dbg.value(metadata i64 %271, metadata !959, metadata !DIExpression()), !dbg !1294
  %274 = getelementptr double, ptr %224, i64 %271, !dbg !1296
  %275 = load double, ptr %274, align 8, !dbg !1296, !tbaa !255
  call void @llvm.dbg.value(metadata double %275, metadata !1146, metadata !DIExpression()), !dbg !1293
  %276 = fmul double %249, %273, !dbg !1297
  %277 = fmul double %250, %275, !dbg !1298
  %278 = fsub double %276, %277, !dbg !1299
  call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i64 %218, metadata !944, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i64 %271, metadata !945, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata double %278, metadata !946, metadata !DIExpression()), !dbg !1300
  store double %278, ptr %272, align 8, !dbg !1302, !tbaa !255
  %279 = fmul double %250, %273, !dbg !1303
  %280 = fmul double %249, %275, !dbg !1304
  %281 = fadd double %279, %280, !dbg !1305
  call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i64 %217, metadata !944, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i64 %271, metadata !945, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata double %281, metadata !946, metadata !DIExpression()), !dbg !1306
  store double %281, ptr %274, align 8, !dbg !1308, !tbaa !255
  %282 = add nuw i64 %271, 1, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %282, metadata !1136, metadata !DIExpression()), !dbg !1260
  %283 = icmp eq i64 %282, %7, !dbg !1288
  br i1 %283, label %284, label %270, !dbg !1289, !llvm.loop !1310

284:                                              ; preds = %270, %267
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !943, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %217, metadata !944, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata i64 %218, metadata !945, metadata !DIExpression()), !dbg !1312
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !946, metadata !DIExpression()), !dbg !1312
  store double 0.000000e+00, ptr %225, align 8, !dbg !1314, !tbaa !255
  %285 = add nuw i64 %217, 1, !dbg !1315
  tail call void @llvm.dbg.value(metadata i64 %285, metadata !993, metadata !DIExpression()), !dbg !1036
  %286 = icmp eq i64 %285, %184, !dbg !1219
  br i1 %286, label %287, label %216, !dbg !1220, !llvm.loop !1316

287:                                              ; preds = %284, %182, %36, %18, %14
  %288 = phi i32 [ 20, %14 ], [ 19, %18 ], [ 19, %36 ], [ 0, %182 ], [ 0, %284 ], !dbg !1318
  ret i32 %288, !dbg !1319
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_QR_QRsolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !dbg !1320 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1324, metadata !DIExpression()), !dbg !1330
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1325, metadata !DIExpression()), !dbg !1330
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1326, metadata !DIExpression()), !dbg !1330
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1327, metadata !DIExpression()), !dbg !1330
  %5 = load i64, ptr %1, align 8, !dbg !1331, !tbaa !212
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !1328, metadata !DIExpression()), !dbg !1330
  %6 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !1332
  %7 = load i64, ptr %6, align 8, !dbg !1332, !tbaa !220
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !1329, metadata !DIExpression()), !dbg !1330
  %8 = icmp eq i64 %5, %7, !dbg !1333
  br i1 %8, label %9, label %21, !dbg !1335

9:                                                ; preds = %4
  %10 = load i64, ptr %0, align 8, !dbg !1336, !tbaa !212
  %11 = icmp eq i64 %10, %5, !dbg !1338
  br i1 %11, label %12, label %21, !dbg !1339

12:                                               ; preds = %9
  %13 = load i64, ptr %2, align 8, !dbg !1340, !tbaa !222
  %14 = icmp eq i64 %13, %5, !dbg !1341
  br i1 %14, label %15, label %21, !dbg !1342

15:                                               ; preds = %12
  %16 = load i64, ptr %3, align 8, !dbg !1343, !tbaa !222
  %17 = icmp eq i64 %16, %5, !dbg !1344
  br i1 %17, label %18, label %21, !dbg !1345

18:                                               ; preds = %15
  %19 = tail call i32 @gsl_blas_dgemv(i32 noundef 112, double noundef 1.000000e+00, ptr noundef nonnull %0, ptr noundef nonnull %2, double noundef 0.000000e+00, ptr noundef nonnull %3) #6, !dbg !1346
  %20 = tail call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %1, ptr noundef nonnull %3) #6, !dbg !1348
  br label %21, !dbg !1349

21:                                               ; preds = %9, %12, %15, %4, %18
  %22 = phi i32 [ 0, %18 ], [ 20, %4 ], [ 19, %15 ], [ 19, %12 ], [ 19, %9 ], !dbg !1350
  ret i32 %22, !dbg !1351
}

declare !dbg !1352 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!76}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "qr.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "7c8d7cb400f9f6c5c1ecb918cc83d206")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 110, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 25)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 114, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 30)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 118, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 37)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 34)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 183, type: !14, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !24, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !19, isLocal: true, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 264, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 32)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 24)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 343, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 22)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !2, line: 411, type: !45, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 444, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 27)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 474, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 23)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 478, type: !62, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !24, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 543, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 33)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !2, line: 547, type: !71, isLocal: true, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !77, globals: !132, splitDebugInlining: false, nameTableKind: None)
!77 = !{!78, !117, !123, !128}
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 39, baseType: !80, size: 32, elements: !81)
!79 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116}
!82 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!83 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!84 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!85 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!86 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!87 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!88 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!89 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!90 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!91 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!92 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!93 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!94 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!95 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!96 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!97 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!98 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!99 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!100 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!101 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!102 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!103 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!104 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!105 = !DIEnumerator(name: "GSL_ESING", value: 21)
!106 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!107 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!108 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!109 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!110 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!111 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!112 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!113 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!114 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!115 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!116 = !DIEnumerator(name: "GSL_EOF", value: 32)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !118, line: 48, baseType: !119, size: 32, elements: !120)
!118 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!119 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!120 = !{!121, !122}
!121 = !DIEnumerator(name: "CblasUpper", value: 121)
!122 = !DIEnumerator(name: "CblasLower", value: 122)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !118, line: 47, baseType: !119, size: 32, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!126 = !DIEnumerator(name: "CblasTrans", value: 112)
!127 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !118, line: 49, baseType: !119, size: 32, elements: !129)
!129 = !{!130, !131}
!130 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!131 = !DIEnumerator(name: "CblasUnit", value: 132)
!132 = !{!0, !7, !12, !17, !22, !27, !32, !34, !36, !38, !43, !48, !53, !55, !60, !65, !67, !69, !74}
!133 = !{i32 7, !"Dwarf Version", i32 5}
!134 = !{i32 2, !"Debug Info Version", i32 3}
!135 = !{i32 1, !"wchar_size", i32 4}
!136 = !{i32 8, !"PIC Level", i32 2}
!137 = !{i32 7, !"PIE Level", i32 2}
!138 = !{i32 7, !"uwtable", i32 2}
!139 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!140 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!141 = distinct !DISubprogram(name: "gsl_linalg_QR_decomp", scope: !2, file: !2, line: 59, type: !142, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !177)
!142 = !DISubroutineType(types: !143)
!143 = !{!80, !144, !167}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !146, line: 50, baseType: !147)
!146 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 42, size: 384, elements: !148)
!148 = !{!149, !153, !154, !155, !158, !166}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !147, file: !146, line: 44, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !151, line: 18, baseType: !152)
!151 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!152 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !147, file: !146, line: 45, baseType: !150, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !147, file: !146, line: 46, baseType: !150, size: 64, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !147, file: !146, line: 47, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !147, file: !146, line: 48, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !161, line: 44, baseType: !162)
!161 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !161, line: 38, size: 128, elements: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !162, file: !161, line: 40, baseType: !150, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !162, file: !161, line: 41, baseType: !156, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !147, file: !146, line: 49, baseType: !80, size: 32, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !169, line: 50, baseType: !170)
!169 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 42, size: 320, elements: !171)
!171 = !{!172, !173, !174, !175, !176}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !170, file: !169, line: 44, baseType: !150, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !170, file: !169, line: 45, baseType: !150, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !170, file: !169, line: 46, baseType: !156, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !170, file: !169, line: 47, baseType: !159, size: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !170, file: !169, line: 48, baseType: !80, size: 32, offset: 256)
!177 = !{!178, !179, !180, !182, !183, !186, !195, !196, !197}
!178 = !DILocalVariable(name: "A", arg: 1, scope: !141, file: !2, line: 59, type: !144)
!179 = !DILocalVariable(name: "tau", arg: 2, scope: !141, file: !2, line: 59, type: !167)
!180 = !DILocalVariable(name: "M", scope: !141, file: !2, line: 61, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!182 = !DILocalVariable(name: "N", scope: !141, file: !2, line: 62, type: !181)
!183 = !DILocalVariable(name: "i", scope: !184, file: !2, line: 70, type: !150)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 69, column: 5)
!185 = distinct !DILexicalBlock(scope: !141, file: !2, line: 64, column: 7)
!186 = !DILocalVariable(name: "c_full", scope: !187, file: !2, line: 77, type: !190)
!187 = distinct !DILexicalBlock(scope: !188, file: !2, line: 73, column: 9)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 72, column: 7)
!189 = distinct !DILexicalBlock(scope: !184, file: !2, line: 72, column: 7)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !169, line: 57, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !169, line: 55, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 52, size: 320, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !192, file: !169, line: 54, baseType: !168, size: 320)
!195 = !DILocalVariable(name: "c", scope: !187, file: !2, line: 78, type: !190)
!196 = !DILocalVariable(name: "tau_i", scope: !187, file: !2, line: 80, type: !157)
!197 = !DILocalVariable(name: "m", scope: !198, file: !2, line: 89, type: !200)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 88, column: 13)
!199 = distinct !DILexicalBlock(scope: !187, file: !2, line: 87, column: 15)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !146, line: 57, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !146, line: 55, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 52, size: 384, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !202, file: !146, line: 54, baseType: !145, size: 384)
!205 = distinct !DIAssignID()
!206 = !DILocation(line: 0, scope: !187)
!207 = distinct !DIAssignID()
!208 = distinct !DIAssignID()
!209 = !DILocation(line: 0, scope: !198)
!210 = !DILocation(line: 0, scope: !141)
!211 = !DILocation(line: 61, column: 23, scope: !141)
!212 = !{!213, !214, i64 0}
!213 = !{!"", !214, i64 0, !214, i64 8, !214, i64 16, !217, i64 24, !217, i64 32, !218, i64 40}
!214 = !{!"long", !215, i64 0}
!215 = !{!"omnipotent char", !216, i64 0}
!216 = !{!"Simple C/C++ TBAA"}
!217 = !{!"any pointer", !215, i64 0}
!218 = !{!"int", !215, i64 0}
!219 = !DILocation(line: 62, column: 23, scope: !141)
!220 = !{!213, !214, i64 8}
!221 = !DILocation(line: 64, column: 12, scope: !185)
!222 = !{!223, !214, i64 0}
!223 = !{!"", !214, i64 0, !214, i64 8, !217, i64 16, !217, i64 24, !218, i64 32}
!224 = !DILocation(line: 64, column: 20, scope: !185)
!225 = !DILocation(line: 64, column: 17, scope: !185)
!226 = !DILocation(line: 64, column: 7, scope: !141)
!227 = !DILocation(line: 0, scope: !184)
!228 = !DILocation(line: 72, column: 21, scope: !188)
!229 = !DILocation(line: 72, column: 7, scope: !189)
!230 = !DILocation(line: 66, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 66, column: 7)
!232 = distinct !DILexicalBlock(scope: !185, file: !2, line: 65, column: 5)
!233 = !DILocation(line: 77, column: 11, scope: !187)
!234 = !DILocation(line: 77, column: 36, scope: !187)
!235 = !DILocation(line: 78, column: 11, scope: !187)
!236 = !DILocation(line: 78, column: 75, scope: !187)
!237 = !DILocation(line: 78, column: 31, scope: !187)
!238 = !DILocation(line: 80, column: 26, scope: !187)
!239 = !DILocalVariable(name: "v", arg: 1, scope: !240, file: !169, line: 188, type: !167)
!240 = distinct !DISubprogram(name: "gsl_vector_set", scope: !169, file: !169, line: 188, type: !241, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !243)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !167, !181, !157}
!243 = !{!239, !244, !245}
!244 = !DILocalVariable(name: "i", arg: 2, scope: !240, file: !169, line: 188, type: !181)
!245 = !DILocalVariable(name: "x", arg: 3, scope: !240, file: !169, line: 188, type: !157)
!246 = !DILocation(line: 0, scope: !240, inlinedAt: !247)
!247 = distinct !DILocation(line: 82, column: 11, scope: !187)
!248 = !DILocation(line: 196, column: 6, scope: !240, inlinedAt: !247)
!249 = !{!223, !217, i64 16}
!250 = !DILocation(line: 196, column: 18, scope: !240, inlinedAt: !247)
!251 = !{!223, !214, i64 8}
!252 = !DILocation(line: 196, column: 13, scope: !240, inlinedAt: !247)
!253 = !DILocation(line: 196, column: 3, scope: !240, inlinedAt: !247)
!254 = !DILocation(line: 196, column: 26, scope: !240, inlinedAt: !247)
!255 = !{!256, !256, i64 0}
!256 = !{!"double", !215, i64 0}
!257 = !DILocation(line: 87, column: 17, scope: !199)
!258 = !DILocation(line: 87, column: 21, scope: !199)
!259 = !DILocation(line: 87, column: 15, scope: !187)
!260 = !DILocation(line: 89, column: 15, scope: !198)
!261 = !DILocation(line: 89, column: 79, scope: !198)
!262 = !DILocation(line: 89, column: 35, scope: !198)
!263 = !DILocation(line: 90, column: 15, scope: !198)
!264 = !DILocation(line: 91, column: 13, scope: !199)
!265 = !DILocation(line: 91, column: 13, scope: !198)
!266 = !DILocation(line: 92, column: 9, scope: !188)
!267 = distinct !{!267, !229, !268, !269}
!268 = !DILocation(line: 92, column: 9, scope: !189)
!269 = !{!"llvm.loop.mustprogress"}
!270 = !DILocation(line: 0, scope: !185)
!271 = !DILocation(line: 96, column: 1, scope: !141)
!272 = !DISubprogram(name: "gsl_error", scope: !79, file: !79, line: 77, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !275, !275, !80, !80}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!277 = !DISubprogram(name: "gsl_matrix_column", scope: !146, file: !146, line: 109, type: !278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!278 = !DISubroutineType(types: !279)
!279 = !{!191, !144, !181}
!280 = !DISubprogram(name: "gsl_vector_subvector", scope: !169, file: !169, line: 103, type: !281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!281 = !DISubroutineType(types: !282)
!282 = !{!191, !167, !150, !150}
!283 = !DISubprogram(name: "gsl_linalg_householder_transform", scope: !284, file: !284, line: 94, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!284 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!285 = !DISubroutineType(types: !286)
!286 = !{!157, !167}
!287 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !146, file: !146, line: 101, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!288 = !DISubroutineType(types: !289)
!289 = !{!201, !144, !181, !181, !181, !181}
!290 = !DISubprogram(name: "gsl_linalg_householder_hm", scope: !284, file: !284, line: 97, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!291 = !DISubroutineType(types: !292)
!292 = !{!80, !157, !293, !144}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!295 = distinct !DISubprogram(name: "gsl_linalg_QR_solve", scope: !2, file: !2, line: 106, type: !296, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !300)
!296 = !DISubroutineType(types: !297)
!297 = !{!80, !298, !293, !293, !167}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!300 = !{!301, !302, !303, !304}
!301 = !DILocalVariable(name: "QR", arg: 1, scope: !295, file: !2, line: 106, type: !298)
!302 = !DILocalVariable(name: "tau", arg: 2, scope: !295, file: !2, line: 106, type: !293)
!303 = !DILocalVariable(name: "b", arg: 3, scope: !295, file: !2, line: 106, type: !293)
!304 = !DILocalVariable(name: "x", arg: 4, scope: !295, file: !2, line: 106, type: !167)
!305 = !DILocation(line: 0, scope: !295)
!306 = !DILocation(line: 108, column: 11, scope: !307)
!307 = distinct !DILexicalBlock(scope: !295, file: !2, line: 108, column: 7)
!308 = !DILocation(line: 108, column: 24, scope: !307)
!309 = !DILocation(line: 108, column: 17, scope: !307)
!310 = !DILocation(line: 108, column: 7, scope: !295)
!311 = !DILocation(line: 110, column: 7, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 110, column: 7)
!313 = distinct !DILexicalBlock(scope: !307, file: !2, line: 109, column: 5)
!314 = !DILocation(line: 112, column: 28, scope: !315)
!315 = distinct !DILexicalBlock(scope: !307, file: !2, line: 112, column: 12)
!316 = !DILocation(line: 112, column: 22, scope: !315)
!317 = !DILocation(line: 112, column: 12, scope: !307)
!318 = !DILocation(line: 114, column: 7, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 114, column: 7)
!320 = distinct !DILexicalBlock(scope: !315, file: !2, line: 113, column: 5)
!321 = !DILocation(line: 116, column: 28, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !2, line: 116, column: 12)
!323 = !DILocation(line: 116, column: 22, scope: !322)
!324 = !DILocation(line: 116, column: 12, scope: !315)
!325 = !DILocation(line: 118, column: 7, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 118, column: 7)
!327 = distinct !DILexicalBlock(scope: !322, file: !2, line: 117, column: 5)
!328 = !DILocation(line: 124, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !2, line: 121, column: 5)
!330 = !DILocalVariable(name: "QR", arg: 1, scope: !331, file: !2, line: 142, type: !298)
!331 = distinct !DISubprogram(name: "gsl_linalg_QR_svx", scope: !2, file: !2, line: 142, type: !332, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{!80, !298, !293, !167}
!334 = !{!330, !335, !336}
!335 = !DILocalVariable(name: "tau", arg: 2, scope: !331, file: !2, line: 142, type: !293)
!336 = !DILocalVariable(name: "x", arg: 3, scope: !331, file: !2, line: 142, type: !167)
!337 = !DILocation(line: 0, scope: !331, inlinedAt: !338)
!338 = distinct !DILocation(line: 128, column: 7, scope: !329)
!339 = !DILocation(line: 145, column: 11, scope: !340, inlinedAt: !338)
!340 = distinct !DILexicalBlock(scope: !331, file: !2, line: 145, column: 7)
!341 = !DILocation(line: 145, column: 24, scope: !340, inlinedAt: !338)
!342 = !DILocation(line: 145, column: 17, scope: !340, inlinedAt: !338)
!343 = !DILocation(line: 145, column: 7, scope: !331, inlinedAt: !338)
!344 = !DILocation(line: 147, column: 7, scope: !345, inlinedAt: !338)
!345 = distinct !DILexicalBlock(scope: !346, file: !2, line: 147, column: 7)
!346 = distinct !DILexicalBlock(scope: !340, file: !2, line: 146, column: 5)
!347 = !DILocation(line: 149, column: 28, scope: !348, inlinedAt: !338)
!348 = distinct !DILexicalBlock(scope: !340, file: !2, line: 149, column: 12)
!349 = !DILocation(line: 149, column: 22, scope: !348, inlinedAt: !338)
!350 = !DILocation(line: 149, column: 12, scope: !340, inlinedAt: !338)
!351 = !DILocation(line: 151, column: 7, scope: !352, inlinedAt: !338)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 151, column: 7)
!353 = distinct !DILexicalBlock(scope: !348, file: !2, line: 150, column: 5)
!354 = !DILocation(line: 157, column: 7, scope: !355, inlinedAt: !338)
!355 = distinct !DILexicalBlock(scope: !348, file: !2, line: 154, column: 5)
!356 = !{i32 0, i32 20}
!357 = !DILocation(line: 161, column: 7, scope: !355, inlinedAt: !338)
!358 = !DILocation(line: 163, column: 7, scope: !355, inlinedAt: !338)
!359 = !DILocation(line: 0, scope: !307)
!360 = !DILocation(line: 132, column: 1, scope: !295)
!361 = !DISubprogram(name: "gsl_vector_memcpy", scope: !169, file: !169, line: 136, type: !362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!362 = !DISubroutineType(types: !363)
!363 = !{!80, !167, !293}
!364 = !DILocation(line: 0, scope: !331)
!365 = !DILocation(line: 145, column: 11, scope: !340)
!366 = !DILocation(line: 145, column: 24, scope: !340)
!367 = !DILocation(line: 145, column: 17, scope: !340)
!368 = !DILocation(line: 145, column: 7, scope: !331)
!369 = !DILocation(line: 147, column: 7, scope: !345)
!370 = !DILocation(line: 149, column: 28, scope: !348)
!371 = !DILocation(line: 149, column: 22, scope: !348)
!372 = !DILocation(line: 149, column: 12, scope: !340)
!373 = !DILocation(line: 151, column: 7, scope: !352)
!374 = !DILocation(line: 157, column: 7, scope: !355)
!375 = !DILocation(line: 161, column: 7, scope: !355)
!376 = !DILocation(line: 163, column: 7, scope: !355)
!377 = !DILocation(line: 0, scope: !340)
!378 = !DILocation(line: 165, column: 1, scope: !331)
!379 = distinct !DISubprogram(name: "gsl_linalg_QR_QTvec", scope: !2, file: !2, line: 332, type: !332, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !390, !400, !401, !402}
!381 = !DILocalVariable(name: "QR", arg: 1, scope: !379, file: !2, line: 332, type: !298)
!382 = !DILocalVariable(name: "tau", arg: 2, scope: !379, file: !2, line: 332, type: !293)
!383 = !DILocalVariable(name: "v", arg: 3, scope: !379, file: !2, line: 332, type: !167)
!384 = !DILocalVariable(name: "M", scope: !379, file: !2, line: 334, type: !181)
!385 = !DILocalVariable(name: "N", scope: !379, file: !2, line: 335, type: !181)
!386 = !DILocalVariable(name: "i", scope: !387, file: !2, line: 347, type: !150)
!387 = distinct !DILexicalBlock(scope: !388, file: !2, line: 346, column: 5)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 341, column: 12)
!389 = distinct !DILexicalBlock(scope: !379, file: !2, line: 337, column: 7)
!390 = !DILocalVariable(name: "c", scope: !391, file: !2, line: 353, type: !394)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 352, column: 9)
!392 = distinct !DILexicalBlock(scope: !393, file: !2, line: 351, column: 7)
!393 = distinct !DILexicalBlock(scope: !387, file: !2, line: 351, column: 7)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !169, line: 64, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !169, line: 62, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 59, size: 320, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !397, file: !169, line: 61, baseType: !168, size: 320)
!400 = !DILocalVariable(name: "h", scope: !391, file: !2, line: 354, type: !394)
!401 = !DILocalVariable(name: "w", scope: !391, file: !2, line: 355, type: !190)
!402 = !DILocalVariable(name: "ti", scope: !391, file: !2, line: 356, type: !157)
!403 = distinct !DIAssignID()
!404 = !DILocation(line: 0, scope: !391)
!405 = distinct !DIAssignID()
!406 = distinct !DIAssignID()
!407 = !DILocation(line: 0, scope: !379)
!408 = !DILocation(line: 334, column: 24, scope: !379)
!409 = !DILocation(line: 335, column: 24, scope: !379)
!410 = !DILocation(line: 337, column: 12, scope: !389)
!411 = !DILocation(line: 337, column: 20, scope: !389)
!412 = !DILocation(line: 337, column: 17, scope: !389)
!413 = !DILocation(line: 337, column: 7, scope: !379)
!414 = !DILocation(line: 339, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 339, column: 7)
!416 = distinct !DILexicalBlock(scope: !389, file: !2, line: 338, column: 5)
!417 = !DILocation(line: 341, column: 15, scope: !388)
!418 = !DILocation(line: 341, column: 20, scope: !388)
!419 = !DILocation(line: 341, column: 12, scope: !389)
!420 = !DILocation(line: 0, scope: !387)
!421 = !DILocation(line: 351, column: 21, scope: !392)
!422 = !DILocation(line: 351, column: 7, scope: !393)
!423 = !DILocation(line: 343, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !2, line: 343, column: 7)
!425 = distinct !DILexicalBlock(scope: !388, file: !2, line: 342, column: 5)
!426 = !DILocation(line: 353, column: 11, scope: !391)
!427 = !DILocation(line: 353, column: 37, scope: !391)
!428 = !DILocation(line: 354, column: 11, scope: !391)
!429 = !DILocation(line: 354, column: 83, scope: !391)
!430 = !DILocation(line: 354, column: 37, scope: !391)
!431 = !DILocation(line: 355, column: 11, scope: !391)
!432 = !DILocation(line: 355, column: 31, scope: !391)
!433 = !DILocalVariable(name: "v", arg: 1, scope: !434, file: !169, line: 175, type: !293)
!434 = distinct !DISubprogram(name: "gsl_vector_get", scope: !169, file: !169, line: 175, type: !435, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!157, !293, !181}
!437 = !{!433, !438}
!438 = !DILocalVariable(name: "i", arg: 2, scope: !434, file: !169, line: 175, type: !181)
!439 = !DILocation(line: 0, scope: !434, inlinedAt: !440)
!440 = distinct !DILocation(line: 356, column: 23, scope: !391)
!441 = !DILocation(line: 183, column: 13, scope: !434, inlinedAt: !440)
!442 = !DILocation(line: 183, column: 25, scope: !434, inlinedAt: !440)
!443 = !DILocation(line: 183, column: 20, scope: !434, inlinedAt: !440)
!444 = !DILocation(line: 183, column: 10, scope: !434, inlinedAt: !440)
!445 = !DILocation(line: 357, column: 11, scope: !391)
!446 = !DILocation(line: 358, column: 9, scope: !392)
!447 = !DILocation(line: 351, column: 40, scope: !392)
!448 = distinct !{!448, !422, !449, !269}
!449 = !DILocation(line: 358, column: 9, scope: !393)
!450 = !DILocation(line: 0, scope: !389)
!451 = !DILocation(line: 361, column: 1, scope: !379)
!452 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !453, file: !453, line: 217, type: !454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!453 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!454 = !DISubroutineType(types: !455)
!455 = !{!80, !456, !458, !459, !298, !167}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !457, line: 45, baseType: !117)
!457 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !457, line: 44, baseType: !123)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !457, line: 46, baseType: !128)
!460 = distinct !DISubprogram(name: "gsl_linalg_QR_lssolve", scope: !2, file: !2, line: 176, type: !461, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!80, !298, !293, !293, !167, !167}
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !483}
!464 = !DILocalVariable(name: "QR", arg: 1, scope: !460, file: !2, line: 176, type: !298)
!465 = !DILocalVariable(name: "tau", arg: 2, scope: !460, file: !2, line: 176, type: !293)
!466 = !DILocalVariable(name: "b", arg: 3, scope: !460, file: !2, line: 176, type: !293)
!467 = !DILocalVariable(name: "x", arg: 4, scope: !460, file: !2, line: 176, type: !167)
!468 = !DILocalVariable(name: "residual", arg: 5, scope: !460, file: !2, line: 176, type: !167)
!469 = !DILocalVariable(name: "M", scope: !460, file: !2, line: 178, type: !181)
!470 = !DILocalVariable(name: "N", scope: !460, file: !2, line: 179, type: !181)
!471 = !DILocalVariable(name: "R", scope: !472, file: !2, line: 199, type: !477)
!472 = distinct !DILexicalBlock(scope: !473, file: !2, line: 198, column: 5)
!473 = distinct !DILexicalBlock(scope: !474, file: !2, line: 193, column: 12)
!474 = distinct !DILexicalBlock(scope: !475, file: !2, line: 189, column: 12)
!475 = distinct !DILexicalBlock(scope: !476, file: !2, line: 185, column: 12)
!476 = distinct !DILexicalBlock(scope: !460, file: !2, line: 181, column: 7)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_const_view", file: !146, line: 64, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_const_view", file: !146, line: 62, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !146, line: 59, size: 384, elements: !481)
!481 = !{!482}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !480, file: !146, line: 61, baseType: !145, size: 384)
!483 = !DILocalVariable(name: "c", scope: !472, file: !2, line: 200, type: !190)
!484 = distinct !DIAssignID()
!485 = !DILocation(line: 0, scope: !472)
!486 = distinct !DIAssignID()
!487 = !DILocation(line: 0, scope: !460)
!488 = !DILocation(line: 178, column: 24, scope: !460)
!489 = !DILocation(line: 179, column: 24, scope: !460)
!490 = !DILocation(line: 181, column: 9, scope: !476)
!491 = !DILocation(line: 181, column: 7, scope: !460)
!492 = !DILocation(line: 183, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !2, line: 183, column: 7)
!494 = distinct !DILexicalBlock(scope: !476, file: !2, line: 182, column: 5)
!495 = !DILocation(line: 185, column: 20, scope: !475)
!496 = !DILocation(line: 185, column: 14, scope: !475)
!497 = !DILocation(line: 185, column: 12, scope: !476)
!498 = !DILocation(line: 187, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !2, line: 187, column: 7)
!500 = distinct !DILexicalBlock(scope: !475, file: !2, line: 186, column: 5)
!501 = !DILocation(line: 189, column: 20, scope: !474)
!502 = !DILocation(line: 189, column: 14, scope: !474)
!503 = !DILocation(line: 189, column: 12, scope: !475)
!504 = !DILocation(line: 191, column: 7, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 191, column: 7)
!506 = distinct !DILexicalBlock(scope: !474, file: !2, line: 190, column: 5)
!507 = !DILocation(line: 193, column: 27, scope: !473)
!508 = !DILocation(line: 193, column: 14, scope: !473)
!509 = !DILocation(line: 193, column: 12, scope: !474)
!510 = !DILocation(line: 195, column: 7, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !2, line: 195, column: 7)
!512 = distinct !DILexicalBlock(scope: !473, file: !2, line: 194, column: 5)
!513 = !DILocation(line: 199, column: 7, scope: !472)
!514 = !DILocation(line: 199, column: 33, scope: !472)
!515 = !DILocation(line: 200, column: 7, scope: !472)
!516 = !DILocation(line: 200, column: 27, scope: !472)
!517 = !DILocation(line: 202, column: 7, scope: !472)
!518 = !DILocation(line: 206, column: 7, scope: !472)
!519 = !DILocation(line: 210, column: 7, scope: !472)
!520 = !DILocation(line: 212, column: 7, scope: !472)
!521 = !DILocation(line: 216, column: 7, scope: !472)
!522 = !DILocation(line: 218, column: 7, scope: !472)
!523 = !DILocation(line: 221, column: 5, scope: !473)
!524 = !DILocation(line: 0, scope: !476)
!525 = !DILocation(line: 222, column: 1, scope: !460)
!526 = !DISubprogram(name: "gsl_matrix_const_submatrix", scope: !146, file: !146, line: 153, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{!479, !298, !181, !181, !181, !181}
!529 = !DISubprogram(name: "gsl_vector_set_zero", scope: !169, file: !169, line: 126, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !167}
!532 = distinct !DISubprogram(name: "gsl_linalg_QR_Qvec", scope: !2, file: !2, line: 365, type: !332, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !533)
!533 = !{!534, !535, !536, !537, !538, !539, !543, !547, !548, !549}
!534 = !DILocalVariable(name: "QR", arg: 1, scope: !532, file: !2, line: 365, type: !298)
!535 = !DILocalVariable(name: "tau", arg: 2, scope: !532, file: !2, line: 365, type: !293)
!536 = !DILocalVariable(name: "v", arg: 3, scope: !532, file: !2, line: 365, type: !167)
!537 = !DILocalVariable(name: "M", scope: !532, file: !2, line: 367, type: !181)
!538 = !DILocalVariable(name: "N", scope: !532, file: !2, line: 368, type: !181)
!539 = !DILocalVariable(name: "i", scope: !540, file: !2, line: 380, type: !150)
!540 = distinct !DILexicalBlock(scope: !541, file: !2, line: 379, column: 5)
!541 = distinct !DILexicalBlock(scope: !542, file: !2, line: 374, column: 12)
!542 = distinct !DILexicalBlock(scope: !532, file: !2, line: 370, column: 7)
!543 = !DILocalVariable(name: "c", scope: !544, file: !2, line: 386, type: !394)
!544 = distinct !DILexicalBlock(scope: !545, file: !2, line: 385, column: 9)
!545 = distinct !DILexicalBlock(scope: !546, file: !2, line: 384, column: 7)
!546 = distinct !DILexicalBlock(scope: !540, file: !2, line: 384, column: 7)
!547 = !DILocalVariable(name: "h", scope: !544, file: !2, line: 387, type: !394)
!548 = !DILocalVariable(name: "w", scope: !544, file: !2, line: 389, type: !190)
!549 = !DILocalVariable(name: "ti", scope: !544, file: !2, line: 390, type: !157)
!550 = distinct !DIAssignID()
!551 = !DILocation(line: 0, scope: !544)
!552 = distinct !DIAssignID()
!553 = distinct !DIAssignID()
!554 = !DILocation(line: 0, scope: !532)
!555 = !DILocation(line: 367, column: 24, scope: !532)
!556 = !DILocation(line: 368, column: 24, scope: !532)
!557 = !DILocation(line: 370, column: 12, scope: !542)
!558 = !DILocation(line: 370, column: 20, scope: !542)
!559 = !DILocation(line: 370, column: 17, scope: !542)
!560 = !DILocation(line: 370, column: 7, scope: !532)
!561 = !DILocation(line: 372, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !2, line: 372, column: 7)
!563 = distinct !DILexicalBlock(scope: !542, file: !2, line: 371, column: 5)
!564 = !DILocation(line: 374, column: 15, scope: !541)
!565 = !DILocation(line: 374, column: 20, scope: !541)
!566 = !DILocation(line: 374, column: 12, scope: !542)
!567 = !DILocation(line: 0, scope: !540)
!568 = !DILocation(line: 384, column: 36, scope: !545)
!569 = !DILocation(line: 384, column: 7, scope: !546)
!570 = !DILocation(line: 376, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !2, line: 376, column: 7)
!572 = distinct !DILexicalBlock(scope: !541, file: !2, line: 375, column: 5)
!573 = !DILocation(line: 384, column: 33, scope: !545)
!574 = !DILocation(line: 386, column: 11, scope: !544)
!575 = !DILocation(line: 386, column: 37, scope: !544)
!576 = !DILocation(line: 387, column: 11, scope: !544)
!577 = !DILocation(line: 388, column: 70, scope: !544)
!578 = !DILocation(line: 387, column: 37, scope: !544)
!579 = !DILocation(line: 389, column: 11, scope: !544)
!580 = !DILocation(line: 389, column: 31, scope: !544)
!581 = !DILocation(line: 0, scope: !434, inlinedAt: !582)
!582 = distinct !DILocation(line: 390, column: 23, scope: !544)
!583 = !DILocation(line: 183, column: 13, scope: !434, inlinedAt: !582)
!584 = !DILocation(line: 183, column: 25, scope: !434, inlinedAt: !582)
!585 = !DILocation(line: 183, column: 20, scope: !434, inlinedAt: !582)
!586 = !DILocation(line: 183, column: 10, scope: !434, inlinedAt: !582)
!587 = !DILocation(line: 391, column: 11, scope: !544)
!588 = !DILocation(line: 392, column: 9, scope: !545)
!589 = distinct !{!589, !569, !590, !269}
!590 = !DILocation(line: 392, column: 9, scope: !546)
!591 = !DILocation(line: 0, scope: !542)
!592 = !DILocation(line: 395, column: 1, scope: !532)
!593 = distinct !DISubprogram(name: "gsl_linalg_QR_Rsolve", scope: !2, file: !2, line: 226, type: !332, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !594)
!594 = !{!595, !596, !597}
!595 = !DILocalVariable(name: "QR", arg: 1, scope: !593, file: !2, line: 226, type: !298)
!596 = !DILocalVariable(name: "b", arg: 2, scope: !593, file: !2, line: 226, type: !293)
!597 = !DILocalVariable(name: "x", arg: 3, scope: !593, file: !2, line: 226, type: !167)
!598 = !DILocation(line: 0, scope: !593)
!599 = !DILocation(line: 228, column: 11, scope: !600)
!600 = distinct !DILexicalBlock(scope: !593, file: !2, line: 228, column: 7)
!601 = !DILocation(line: 228, column: 24, scope: !600)
!602 = !DILocation(line: 228, column: 17, scope: !600)
!603 = !DILocation(line: 228, column: 7, scope: !593)
!604 = !DILocation(line: 230, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !2, line: 230, column: 7)
!606 = distinct !DILexicalBlock(scope: !600, file: !2, line: 229, column: 5)
!607 = !DILocation(line: 232, column: 28, scope: !608)
!608 = distinct !DILexicalBlock(scope: !600, file: !2, line: 232, column: 12)
!609 = !DILocation(line: 232, column: 22, scope: !608)
!610 = !DILocation(line: 232, column: 12, scope: !600)
!611 = !DILocation(line: 234, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 234, column: 7)
!613 = distinct !DILexicalBlock(scope: !608, file: !2, line: 233, column: 5)
!614 = !DILocation(line: 236, column: 28, scope: !615)
!615 = distinct !DILexicalBlock(scope: !608, file: !2, line: 236, column: 12)
!616 = !DILocation(line: 236, column: 22, scope: !615)
!617 = !DILocation(line: 236, column: 12, scope: !608)
!618 = !DILocation(line: 238, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 238, column: 7)
!620 = distinct !DILexicalBlock(scope: !615, file: !2, line: 237, column: 5)
!621 = !DILocation(line: 244, column: 7, scope: !622)
!622 = distinct !DILexicalBlock(scope: !615, file: !2, line: 241, column: 5)
!623 = !DILocation(line: 248, column: 7, scope: !622)
!624 = !DILocation(line: 250, column: 7, scope: !622)
!625 = !DILocation(line: 0, scope: !600)
!626 = !DILocation(line: 252, column: 1, scope: !593)
!627 = distinct !DISubprogram(name: "gsl_linalg_QR_Rsvx", scope: !2, file: !2, line: 256, type: !628, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !630)
!628 = !DISubroutineType(types: !629)
!629 = !{!80, !298, !167}
!630 = !{!631, !632}
!631 = !DILocalVariable(name: "QR", arg: 1, scope: !627, file: !2, line: 256, type: !298)
!632 = !DILocalVariable(name: "x", arg: 2, scope: !627, file: !2, line: 256, type: !167)
!633 = !DILocation(line: 0, scope: !627)
!634 = !DILocation(line: 258, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !627, file: !2, line: 258, column: 7)
!636 = !DILocation(line: 258, column: 24, scope: !635)
!637 = !DILocation(line: 258, column: 17, scope: !635)
!638 = !DILocation(line: 258, column: 7, scope: !627)
!639 = !DILocation(line: 260, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !641, file: !2, line: 260, column: 7)
!641 = distinct !DILexicalBlock(scope: !635, file: !2, line: 259, column: 5)
!642 = !DILocation(line: 262, column: 28, scope: !643)
!643 = distinct !DILexicalBlock(scope: !635, file: !2, line: 262, column: 12)
!644 = !DILocation(line: 262, column: 22, scope: !643)
!645 = !DILocation(line: 262, column: 12, scope: !635)
!646 = !DILocation(line: 264, column: 7, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !2, line: 264, column: 7)
!648 = distinct !DILexicalBlock(scope: !643, file: !2, line: 263, column: 5)
!649 = !DILocation(line: 270, column: 7, scope: !650)
!650 = distinct !DILexicalBlock(scope: !643, file: !2, line: 267, column: 5)
!651 = !DILocation(line: 272, column: 7, scope: !650)
!652 = !DILocation(line: 0, scope: !635)
!653 = !DILocation(line: 274, column: 1, scope: !627)
!654 = distinct !DISubprogram(name: "gsl_linalg_R_solve", scope: !2, file: !2, line: 277, type: !332, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !655)
!655 = !{!656, !657, !658}
!656 = !DILocalVariable(name: "R", arg: 1, scope: !654, file: !2, line: 277, type: !298)
!657 = !DILocalVariable(name: "b", arg: 2, scope: !654, file: !2, line: 277, type: !293)
!658 = !DILocalVariable(name: "x", arg: 3, scope: !654, file: !2, line: 277, type: !167)
!659 = !DILocation(line: 0, scope: !654)
!660 = !DILocation(line: 279, column: 10, scope: !661)
!661 = distinct !DILexicalBlock(scope: !654, file: !2, line: 279, column: 7)
!662 = !DILocation(line: 279, column: 22, scope: !661)
!663 = !DILocation(line: 279, column: 16, scope: !661)
!664 = !DILocation(line: 279, column: 7, scope: !654)
!665 = !DILocation(line: 281, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !2, line: 281, column: 7)
!667 = distinct !DILexicalBlock(scope: !661, file: !2, line: 280, column: 5)
!668 = !DILocation(line: 283, column: 27, scope: !669)
!669 = distinct !DILexicalBlock(scope: !661, file: !2, line: 283, column: 12)
!670 = !DILocation(line: 283, column: 21, scope: !669)
!671 = !DILocation(line: 283, column: 12, scope: !661)
!672 = !DILocation(line: 285, column: 7, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !2, line: 285, column: 7)
!674 = distinct !DILexicalBlock(scope: !669, file: !2, line: 284, column: 5)
!675 = !DILocation(line: 287, column: 27, scope: !676)
!676 = distinct !DILexicalBlock(scope: !669, file: !2, line: 287, column: 12)
!677 = !DILocation(line: 287, column: 21, scope: !676)
!678 = !DILocation(line: 287, column: 12, scope: !669)
!679 = !DILocation(line: 289, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !681, file: !2, line: 289, column: 7)
!681 = distinct !DILexicalBlock(scope: !676, file: !2, line: 288, column: 5)
!682 = !DILocation(line: 295, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !676, file: !2, line: 292, column: 5)
!684 = !DILocation(line: 299, column: 7, scope: !683)
!685 = !DILocation(line: 301, column: 7, scope: !683)
!686 = !DILocation(line: 0, scope: !661)
!687 = !DILocation(line: 303, column: 1, scope: !654)
!688 = distinct !DISubprogram(name: "gsl_linalg_R_svx", scope: !2, file: !2, line: 306, type: !628, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !689)
!689 = !{!690, !691}
!690 = !DILocalVariable(name: "R", arg: 1, scope: !688, file: !2, line: 306, type: !298)
!691 = !DILocalVariable(name: "x", arg: 2, scope: !688, file: !2, line: 306, type: !167)
!692 = !DILocation(line: 0, scope: !688)
!693 = !DILocation(line: 308, column: 10, scope: !694)
!694 = distinct !DILexicalBlock(scope: !688, file: !2, line: 308, column: 7)
!695 = !DILocation(line: 308, column: 22, scope: !694)
!696 = !DILocation(line: 308, column: 16, scope: !694)
!697 = !DILocation(line: 308, column: 7, scope: !688)
!698 = !DILocation(line: 310, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !2, line: 310, column: 7)
!700 = distinct !DILexicalBlock(scope: !694, file: !2, line: 309, column: 5)
!701 = !DILocation(line: 312, column: 27, scope: !702)
!702 = distinct !DILexicalBlock(scope: !694, file: !2, line: 312, column: 12)
!703 = !DILocation(line: 312, column: 21, scope: !702)
!704 = !DILocation(line: 312, column: 12, scope: !694)
!705 = !DILocation(line: 314, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !2, line: 314, column: 7)
!707 = distinct !DILexicalBlock(scope: !702, file: !2, line: 313, column: 5)
!708 = !DILocation(line: 320, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !702, file: !2, line: 317, column: 5)
!710 = !DILocation(line: 322, column: 7, scope: !709)
!711 = !DILocation(line: 0, scope: !694)
!712 = !DILocation(line: 324, column: 1, scope: !688)
!713 = !DISubprogram(name: "gsl_matrix_const_column", scope: !146, file: !146, line: 162, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!714 = !DISubroutineType(types: !715)
!715 = !{!396, !298, !181}
!716 = !DISubprogram(name: "gsl_vector_const_subvector", scope: !169, file: !169, line: 114, type: !717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!717 = !DISubroutineType(types: !718)
!718 = !{!396, !293, !150, !150}
!719 = !DISubprogram(name: "gsl_linalg_householder_hv", scope: !284, file: !284, line: 105, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!720 = !DISubroutineType(types: !721)
!721 = !{!80, !157, !293, !167}
!722 = distinct !DISubprogram(name: "gsl_linalg_QR_QTmat", scope: !2, file: !2, line: 400, type: !723, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!80, !298, !293, !144}
!725 = !{!726, !727, !728, !729, !730, !731, !735, !739, !740, !741}
!726 = !DILocalVariable(name: "QR", arg: 1, scope: !722, file: !2, line: 400, type: !298)
!727 = !DILocalVariable(name: "tau", arg: 2, scope: !722, file: !2, line: 400, type: !293)
!728 = !DILocalVariable(name: "A", arg: 3, scope: !722, file: !2, line: 400, type: !144)
!729 = !DILocalVariable(name: "M", scope: !722, file: !2, line: 402, type: !181)
!730 = !DILocalVariable(name: "N", scope: !722, file: !2, line: 403, type: !181)
!731 = !DILocalVariable(name: "i", scope: !732, file: !2, line: 415, type: !150)
!732 = distinct !DILexicalBlock(scope: !733, file: !2, line: 414, column: 5)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 409, column: 12)
!734 = distinct !DILexicalBlock(scope: !722, file: !2, line: 405, column: 7)
!735 = !DILocalVariable(name: "c", scope: !736, file: !2, line: 421, type: !394)
!736 = distinct !DILexicalBlock(scope: !737, file: !2, line: 420, column: 9)
!737 = distinct !DILexicalBlock(scope: !738, file: !2, line: 419, column: 7)
!738 = distinct !DILexicalBlock(scope: !732, file: !2, line: 419, column: 7)
!739 = !DILocalVariable(name: "h", scope: !736, file: !2, line: 422, type: !394)
!740 = !DILocalVariable(name: "m", scope: !736, file: !2, line: 423, type: !200)
!741 = !DILocalVariable(name: "ti", scope: !736, file: !2, line: 424, type: !157)
!742 = distinct !DIAssignID()
!743 = !DILocation(line: 0, scope: !736)
!744 = distinct !DIAssignID()
!745 = distinct !DIAssignID()
!746 = !DILocation(line: 0, scope: !722)
!747 = !DILocation(line: 402, column: 24, scope: !722)
!748 = !DILocation(line: 403, column: 24, scope: !722)
!749 = !DILocation(line: 405, column: 12, scope: !734)
!750 = !DILocation(line: 405, column: 20, scope: !734)
!751 = !DILocation(line: 405, column: 17, scope: !734)
!752 = !DILocation(line: 405, column: 7, scope: !722)
!753 = !DILocation(line: 407, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !2, line: 407, column: 7)
!755 = distinct !DILexicalBlock(scope: !734, file: !2, line: 406, column: 5)
!756 = !DILocation(line: 409, column: 15, scope: !733)
!757 = !DILocation(line: 409, column: 21, scope: !733)
!758 = !DILocation(line: 409, column: 12, scope: !734)
!759 = !DILocation(line: 0, scope: !732)
!760 = !DILocation(line: 419, column: 21, scope: !737)
!761 = !DILocation(line: 419, column: 7, scope: !738)
!762 = !DILocation(line: 411, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !2, line: 411, column: 7)
!764 = distinct !DILexicalBlock(scope: !733, file: !2, line: 410, column: 5)
!765 = !DILocation(line: 421, column: 11, scope: !736)
!766 = !DILocation(line: 421, column: 37, scope: !736)
!767 = !DILocation(line: 422, column: 11, scope: !736)
!768 = !DILocation(line: 422, column: 83, scope: !736)
!769 = !DILocation(line: 422, column: 37, scope: !736)
!770 = !DILocation(line: 423, column: 11, scope: !736)
!771 = !DILocation(line: 423, column: 71, scope: !736)
!772 = !DILocation(line: 423, column: 31, scope: !736)
!773 = !DILocation(line: 0, scope: !434, inlinedAt: !774)
!774 = distinct !DILocation(line: 424, column: 23, scope: !736)
!775 = !DILocation(line: 183, column: 13, scope: !434, inlinedAt: !774)
!776 = !DILocation(line: 183, column: 25, scope: !434, inlinedAt: !774)
!777 = !DILocation(line: 183, column: 20, scope: !434, inlinedAt: !774)
!778 = !DILocation(line: 183, column: 10, scope: !434, inlinedAt: !774)
!779 = !DILocation(line: 425, column: 11, scope: !736)
!780 = !DILocation(line: 426, column: 9, scope: !737)
!781 = !DILocation(line: 419, column: 40, scope: !737)
!782 = distinct !{!782, !761, !783, !269}
!783 = !DILocation(line: 426, column: 9, scope: !738)
!784 = !DILocation(line: 0, scope: !734)
!785 = !DILocation(line: 429, column: 1, scope: !722)
!786 = distinct !DISubprogram(name: "gsl_linalg_QR_matQ", scope: !2, file: !2, line: 433, type: !723, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !787)
!787 = !{!788, !789, !790, !791, !792, !793, !797, !801, !802, !803}
!788 = !DILocalVariable(name: "QR", arg: 1, scope: !786, file: !2, line: 433, type: !298)
!789 = !DILocalVariable(name: "tau", arg: 2, scope: !786, file: !2, line: 433, type: !293)
!790 = !DILocalVariable(name: "A", arg: 3, scope: !786, file: !2, line: 433, type: !144)
!791 = !DILocalVariable(name: "M", scope: !786, file: !2, line: 435, type: !181)
!792 = !DILocalVariable(name: "N", scope: !786, file: !2, line: 436, type: !181)
!793 = !DILocalVariable(name: "i", scope: !794, file: !2, line: 448, type: !150)
!794 = distinct !DILexicalBlock(scope: !795, file: !2, line: 447, column: 5)
!795 = distinct !DILexicalBlock(scope: !796, file: !2, line: 442, column: 12)
!796 = distinct !DILexicalBlock(scope: !786, file: !2, line: 438, column: 7)
!797 = !DILocalVariable(name: "c", scope: !798, file: !2, line: 454, type: !394)
!798 = distinct !DILexicalBlock(scope: !799, file: !2, line: 453, column: 9)
!799 = distinct !DILexicalBlock(scope: !800, file: !2, line: 452, column: 7)
!800 = distinct !DILexicalBlock(scope: !794, file: !2, line: 452, column: 7)
!801 = !DILocalVariable(name: "h", scope: !798, file: !2, line: 455, type: !394)
!802 = !DILocalVariable(name: "m", scope: !798, file: !2, line: 456, type: !200)
!803 = !DILocalVariable(name: "ti", scope: !798, file: !2, line: 457, type: !157)
!804 = distinct !DIAssignID()
!805 = !DILocation(line: 0, scope: !798)
!806 = distinct !DIAssignID()
!807 = distinct !DIAssignID()
!808 = !DILocation(line: 0, scope: !786)
!809 = !DILocation(line: 435, column: 24, scope: !786)
!810 = !DILocation(line: 436, column: 24, scope: !786)
!811 = !DILocation(line: 438, column: 12, scope: !796)
!812 = !DILocation(line: 438, column: 20, scope: !796)
!813 = !DILocation(line: 438, column: 17, scope: !796)
!814 = !DILocation(line: 438, column: 7, scope: !786)
!815 = !DILocation(line: 440, column: 7, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !2, line: 440, column: 7)
!817 = distinct !DILexicalBlock(scope: !796, file: !2, line: 439, column: 5)
!818 = !DILocation(line: 442, column: 15, scope: !795)
!819 = !DILocation(line: 442, column: 21, scope: !795)
!820 = !DILocation(line: 442, column: 12, scope: !796)
!821 = !DILocation(line: 0, scope: !794)
!822 = !DILocation(line: 452, column: 21, scope: !799)
!823 = !DILocation(line: 452, column: 7, scope: !800)
!824 = !DILocation(line: 444, column: 7, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !2, line: 444, column: 7)
!826 = distinct !DILexicalBlock(scope: !795, file: !2, line: 443, column: 5)
!827 = !DILocation(line: 454, column: 11, scope: !798)
!828 = !DILocation(line: 454, column: 37, scope: !798)
!829 = !DILocation(line: 455, column: 11, scope: !798)
!830 = !DILocation(line: 455, column: 83, scope: !798)
!831 = !DILocation(line: 455, column: 37, scope: !798)
!832 = !DILocation(line: 456, column: 11, scope: !798)
!833 = !DILocation(line: 456, column: 64, scope: !798)
!834 = !DILocation(line: 456, column: 31, scope: !798)
!835 = !DILocation(line: 0, scope: !434, inlinedAt: !836)
!836 = distinct !DILocation(line: 457, column: 23, scope: !798)
!837 = !DILocation(line: 183, column: 13, scope: !434, inlinedAt: !836)
!838 = !DILocation(line: 183, column: 25, scope: !434, inlinedAt: !836)
!839 = !DILocation(line: 183, column: 20, scope: !434, inlinedAt: !836)
!840 = !DILocation(line: 183, column: 10, scope: !434, inlinedAt: !836)
!841 = !DILocation(line: 458, column: 11, scope: !798)
!842 = !DILocation(line: 459, column: 9, scope: !799)
!843 = !DILocation(line: 452, column: 40, scope: !799)
!844 = distinct !{!844, !823, !845, !269}
!845 = !DILocation(line: 459, column: 9, scope: !800)
!846 = !DILocation(line: 0, scope: !796)
!847 = !DILocation(line: 462, column: 1, scope: !786)
!848 = !DISubprogram(name: "gsl_linalg_householder_mh", scope: !284, file: !284, line: 101, type: !291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!849 = distinct !DISubprogram(name: "gsl_linalg_QR_unpack", scope: !2, file: !2, line: 467, type: !850, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !852)
!850 = !DISubroutineType(types: !851)
!851 = !{!80, !298, !293, !144, !144}
!852 = !{!853, !854, !855, !856, !857, !858, !859, !864, !865, !869, !870, !871}
!853 = !DILocalVariable(name: "QR", arg: 1, scope: !849, file: !2, line: 467, type: !298)
!854 = !DILocalVariable(name: "tau", arg: 2, scope: !849, file: !2, line: 467, type: !293)
!855 = !DILocalVariable(name: "Q", arg: 3, scope: !849, file: !2, line: 467, type: !144)
!856 = !DILocalVariable(name: "R", arg: 4, scope: !849, file: !2, line: 467, type: !144)
!857 = !DILocalVariable(name: "M", scope: !849, file: !2, line: 469, type: !181)
!858 = !DILocalVariable(name: "N", scope: !849, file: !2, line: 470, type: !181)
!859 = !DILocalVariable(name: "i", scope: !860, file: !2, line: 486, type: !150)
!860 = distinct !DILexicalBlock(scope: !861, file: !2, line: 485, column: 5)
!861 = distinct !DILexicalBlock(scope: !862, file: !2, line: 480, column: 12)
!862 = distinct !DILexicalBlock(scope: !863, file: !2, line: 476, column: 12)
!863 = distinct !DILexicalBlock(scope: !849, file: !2, line: 472, column: 7)
!864 = !DILocalVariable(name: "j", scope: !860, file: !2, line: 486, type: !150)
!865 = !DILocalVariable(name: "c", scope: !866, file: !2, line: 494, type: !394)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 493, column: 9)
!867 = distinct !DILexicalBlock(scope: !868, file: !2, line: 492, column: 7)
!868 = distinct !DILexicalBlock(scope: !860, file: !2, line: 492, column: 7)
!869 = !DILocalVariable(name: "h", scope: !866, file: !2, line: 495, type: !394)
!870 = !DILocalVariable(name: "m", scope: !866, file: !2, line: 497, type: !200)
!871 = !DILocalVariable(name: "ti", scope: !866, file: !2, line: 498, type: !157)
!872 = distinct !DIAssignID()
!873 = !DILocation(line: 0, scope: !866)
!874 = distinct !DIAssignID()
!875 = distinct !DIAssignID()
!876 = !DILocation(line: 0, scope: !849)
!877 = !DILocation(line: 469, column: 24, scope: !849)
!878 = !DILocation(line: 470, column: 24, scope: !849)
!879 = !DILocation(line: 472, column: 10, scope: !863)
!880 = !DILocation(line: 472, column: 16, scope: !863)
!881 = !DILocation(line: 472, column: 21, scope: !863)
!882 = !DILocation(line: 472, column: 27, scope: !863)
!883 = !DILocation(line: 472, column: 33, scope: !863)
!884 = !DILocation(line: 472, column: 7, scope: !849)
!885 = !DILocation(line: 474, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !2, line: 474, column: 7)
!887 = distinct !DILexicalBlock(scope: !863, file: !2, line: 473, column: 5)
!888 = !DILocation(line: 476, column: 15, scope: !862)
!889 = !DILocation(line: 476, column: 21, scope: !862)
!890 = !DILocation(line: 476, column: 26, scope: !862)
!891 = !DILocation(line: 476, column: 32, scope: !862)
!892 = !DILocation(line: 476, column: 38, scope: !862)
!893 = !DILocation(line: 476, column: 12, scope: !863)
!894 = !DILocation(line: 478, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !2, line: 478, column: 7)
!896 = distinct !DILexicalBlock(scope: !862, file: !2, line: 477, column: 5)
!897 = !DILocation(line: 480, column: 17, scope: !861)
!898 = !DILocation(line: 480, column: 25, scope: !861)
!899 = !DILocation(line: 480, column: 22, scope: !861)
!900 = !DILocation(line: 480, column: 12, scope: !862)
!901 = !DILocation(line: 482, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !2, line: 482, column: 7)
!903 = distinct !DILexicalBlock(scope: !861, file: !2, line: 481, column: 5)
!904 = !DILocation(line: 490, column: 7, scope: !860)
!905 = !DILocation(line: 0, scope: !860)
!906 = !DILocation(line: 492, column: 36, scope: !867)
!907 = !DILocation(line: 492, column: 7, scope: !868)
!908 = !DILocation(line: 504, column: 21, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !2, line: 504, column: 7)
!910 = distinct !DILexicalBlock(scope: !860, file: !2, line: 504, column: 7)
!911 = !DILocation(line: 504, column: 7, scope: !910)
!912 = !DILocation(line: 492, column: 33, scope: !867)
!913 = !DILocation(line: 494, column: 11, scope: !866)
!914 = !DILocation(line: 494, column: 37, scope: !866)
!915 = !DILocation(line: 495, column: 11, scope: !866)
!916 = !DILocation(line: 496, column: 70, scope: !866)
!917 = !DILocation(line: 495, column: 37, scope: !866)
!918 = !DILocation(line: 497, column: 11, scope: !866)
!919 = !DILocation(line: 497, column: 31, scope: !866)
!920 = !DILocation(line: 0, scope: !434, inlinedAt: !921)
!921 = distinct !DILocation(line: 498, column: 23, scope: !866)
!922 = !DILocation(line: 183, column: 13, scope: !434, inlinedAt: !921)
!923 = !DILocation(line: 183, column: 25, scope: !434, inlinedAt: !921)
!924 = !DILocation(line: 183, column: 20, scope: !434, inlinedAt: !921)
!925 = !DILocation(line: 183, column: 10, scope: !434, inlinedAt: !921)
!926 = !DILocation(line: 499, column: 11, scope: !866)
!927 = !DILocation(line: 500, column: 9, scope: !867)
!928 = distinct !{!928, !907, !929, !269}
!929 = !DILocation(line: 500, column: 9, scope: !868)
!930 = !DILocation(line: 506, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !2, line: 506, column: 11)
!932 = distinct !DILexicalBlock(scope: !909, file: !2, line: 505, column: 9)
!933 = !DILocation(line: 506, column: 29, scope: !934)
!934 = distinct !DILexicalBlock(scope: !931, file: !2, line: 506, column: 11)
!935 = !{!213, !217, i64 24}
!936 = !{!213, !214, i64 16}
!937 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !947)
!938 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !146, file: !146, line: 290, type: !939, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !942)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !144, !181, !181, !941}
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!942 = !{!943, !944, !945, !946}
!943 = !DILocalVariable(name: "m", arg: 1, scope: !938, file: !146, line: 290, type: !144)
!944 = !DILocalVariable(name: "i", arg: 2, scope: !938, file: !146, line: 290, type: !181)
!945 = !DILocalVariable(name: "j", arg: 3, scope: !938, file: !146, line: 290, type: !181)
!946 = !DILocalVariable(name: "x", arg: 4, scope: !938, file: !146, line: 290, type: !941)
!947 = distinct !DILocation(line: 507, column: 13, scope: !934)
!948 = !DILocation(line: 0, scope: !938, inlinedAt: !947)
!949 = !DILocation(line: 509, column: 25, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !2, line: 509, column: 11)
!951 = distinct !DILexicalBlock(scope: !932, file: !2, line: 509, column: 11)
!952 = !DILocation(line: 509, column: 11, scope: !951)
!953 = !DILocalVariable(name: "m", arg: 1, scope: !954, file: !146, line: 270, type: !298)
!954 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !146, file: !146, line: 270, type: !955, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !957)
!955 = !DISubroutineType(types: !956)
!956 = !{!157, !298, !181, !181}
!957 = !{!953, !958, !959}
!958 = !DILocalVariable(name: "i", arg: 2, scope: !954, file: !146, line: 270, type: !181)
!959 = !DILocalVariable(name: "j", arg: 3, scope: !954, file: !146, line: 270, type: !181)
!960 = !DILocation(line: 0, scope: !954, inlinedAt: !961)
!961 = distinct !DILocation(line: 510, column: 38, scope: !950)
!962 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !961)
!963 = !DILocation(line: 0, scope: !938, inlinedAt: !964)
!964 = distinct !DILocation(line: 510, column: 13, scope: !950)
!965 = !DILocation(line: 305, column: 3, scope: !938, inlinedAt: !964)
!966 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !964)
!967 = !DILocation(line: 509, column: 31, scope: !950)
!968 = distinct !{!968, !952, !969, !269}
!969 = !DILocation(line: 510, column: 63, scope: !951)
!970 = !DILocation(line: 504, column: 27, scope: !909)
!971 = distinct !{!971, !911, !972, !269}
!972 = !DILocation(line: 511, column: 9, scope: !910)
!973 = !DILocation(line: 0, scope: !863)
!974 = !DILocation(line: 515, column: 1, scope: !849)
!975 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !146, file: !146, line: 209, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !144}
!978 = distinct !DISubprogram(name: "gsl_linalg_QR_update", scope: !2, file: !2, line: 531, type: !979, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{!80, !144, !144, !167, !293}
!981 = !{!982, !983, !984, !985, !986, !987, !988, !993, !994, !995, !999, !1000, !1001, !1002, !1006, !1007, !1011, !1012, !1013}
!982 = !DILocalVariable(name: "Q", arg: 1, scope: !978, file: !2, line: 531, type: !144)
!983 = !DILocalVariable(name: "R", arg: 2, scope: !978, file: !2, line: 531, type: !144)
!984 = !DILocalVariable(name: "w", arg: 3, scope: !978, file: !2, line: 532, type: !167)
!985 = !DILocalVariable(name: "v", arg: 4, scope: !978, file: !2, line: 532, type: !293)
!986 = !DILocalVariable(name: "M", scope: !978, file: !2, line: 534, type: !181)
!987 = !DILocalVariable(name: "N", scope: !978, file: !2, line: 535, type: !181)
!988 = !DILocalVariable(name: "j", scope: !989, file: !2, line: 551, type: !150)
!989 = distinct !DILexicalBlock(scope: !990, file: !2, line: 550, column: 5)
!990 = distinct !DILexicalBlock(scope: !991, file: !2, line: 545, column: 12)
!991 = distinct !DILexicalBlock(scope: !992, file: !2, line: 541, column: 12)
!992 = distinct !DILexicalBlock(scope: !978, file: !2, line: 537, column: 7)
!993 = !DILocalVariable(name: "k", scope: !989, file: !2, line: 551, type: !150)
!994 = !DILocalVariable(name: "w0", scope: !989, file: !2, line: 552, type: !157)
!995 = !DILocalVariable(name: "c", scope: !996, file: !2, line: 563, type: !157)
!996 = distinct !DILexicalBlock(scope: !997, file: !2, line: 562, column: 9)
!997 = distinct !DILexicalBlock(scope: !998, file: !2, line: 561, column: 7)
!998 = distinct !DILexicalBlock(scope: !989, file: !2, line: 561, column: 7)
!999 = !DILocalVariable(name: "s", scope: !996, file: !2, line: 563, type: !157)
!1000 = !DILocalVariable(name: "wk", scope: !996, file: !2, line: 564, type: !157)
!1001 = !DILocalVariable(name: "wkm1", scope: !996, file: !2, line: 565, type: !157)
!1002 = !DILocalVariable(name: "r0j", scope: !1003, file: !2, line: 578, type: !157)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !2, line: 577, column: 9)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 576, column: 7)
!1005 = distinct !DILexicalBlock(scope: !989, file: !2, line: 576, column: 7)
!1006 = !DILocalVariable(name: "vj", scope: !1003, file: !2, line: 579, type: !157)
!1007 = !DILocalVariable(name: "c", scope: !1008, file: !2, line: 588, type: !157)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 587, column: 9)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 586, column: 7)
!1010 = distinct !DILexicalBlock(scope: !989, file: !2, line: 586, column: 7)
!1011 = !DILocalVariable(name: "s", scope: !1008, file: !2, line: 588, type: !157)
!1012 = !DILocalVariable(name: "diag", scope: !1008, file: !2, line: 589, type: !157)
!1013 = !DILocalVariable(name: "offdiag", scope: !1008, file: !2, line: 590, type: !157)
!1014 = !DILocation(line: 0, scope: !978)
!1015 = !DILocation(line: 534, column: 23, scope: !978)
!1016 = !DILocation(line: 535, column: 23, scope: !978)
!1017 = !DILocation(line: 537, column: 10, scope: !992)
!1018 = !DILocation(line: 537, column: 16, scope: !992)
!1019 = !DILocation(line: 537, column: 21, scope: !992)
!1020 = !DILocation(line: 537, column: 27, scope: !992)
!1021 = !DILocation(line: 537, column: 33, scope: !992)
!1022 = !DILocation(line: 537, column: 7, scope: !978)
!1023 = !DILocation(line: 539, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 539, column: 7)
!1025 = distinct !DILexicalBlock(scope: !992, file: !2, line: 538, column: 5)
!1026 = !DILocation(line: 541, column: 15, scope: !991)
!1027 = !DILocation(line: 541, column: 20, scope: !991)
!1028 = !DILocation(line: 541, column: 12, scope: !992)
!1029 = !DILocation(line: 543, column: 7, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 543, column: 7)
!1031 = distinct !DILexicalBlock(scope: !991, file: !2, line: 542, column: 5)
!1032 = !DILocation(line: 545, column: 15, scope: !990)
!1033 = !DILocation(line: 545, column: 20, scope: !990)
!1034 = !DILocation(line: 545, column: 12, scope: !991)
!1035 = !DILocation(line: 561, scope: !998)
!1036 = !DILocation(line: 0, scope: !989)
!1037 = !DILocation(line: 561, column: 25, scope: !997)
!1038 = !DILocation(line: 561, column: 7, scope: !998)
!1039 = !DILocation(line: 547, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 547, column: 7)
!1041 = distinct !DILexicalBlock(scope: !990, file: !2, line: 546, column: 5)
!1042 = !DILocation(line: 0, scope: !434, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 564, column: 23, scope: !996)
!1044 = !DILocation(line: 183, column: 20, scope: !434, inlinedAt: !1043)
!1045 = !DILocation(line: 183, column: 10, scope: !434, inlinedAt: !1043)
!1046 = !DILocation(line: 0, scope: !996)
!1047 = !DILocation(line: 565, column: 46, scope: !996)
!1048 = !DILocation(line: 0, scope: !434, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 565, column: 25, scope: !996)
!1050 = !DILocation(line: 183, column: 20, scope: !434, inlinedAt: !1049)
!1051 = !DILocation(line: 183, column: 10, scope: !434, inlinedAt: !1049)
!1052 = !DILocalVariable(name: "a", arg: 1, scope: !1053, file: !284, line: 740, type: !941)
!1053 = distinct !DISubprogram(name: "gsl_linalg_givens", scope: !284, file: !284, line: 740, type: !1054, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1056)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{null, !941, !941, !156, !156}
!1056 = !{!1052, !1057, !1058, !1059, !1060, !1064, !1065, !1067}
!1057 = !DILocalVariable(name: "b", arg: 2, scope: !1053, file: !284, line: 740, type: !941)
!1058 = !DILocalVariable(name: "c", arg: 3, scope: !1053, file: !284, line: 740, type: !156)
!1059 = !DILocalVariable(name: "s", arg: 4, scope: !1053, file: !284, line: 740, type: !156)
!1060 = !DILocalVariable(name: "t", scope: !1061, file: !284, line: 749, type: !157)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !284, line: 748, column: 5)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !284, line: 747, column: 12)
!1063 = distinct !DILexicalBlock(scope: !1053, file: !284, line: 742, column: 7)
!1064 = !DILocalVariable(name: "s1", scope: !1061, file: !284, line: 750, type: !157)
!1065 = !DILocalVariable(name: "t", scope: !1066, file: !284, line: 756, type: !157)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !284, line: 755, column: 5)
!1067 = !DILocalVariable(name: "c1", scope: !1066, file: !284, line: 757, type: !157)
!1068 = !DILocation(line: 0, scope: !1053, inlinedAt: !1069)
!1069 = distinct !DILocation(line: 567, column: 11, scope: !996)
!1070 = !DILocation(line: 742, column: 9, scope: !1063, inlinedAt: !1069)
!1071 = !DILocation(line: 742, column: 7, scope: !1053, inlinedAt: !1069)
!1072 = !DILocation(line: 747, column: 12, scope: !1062, inlinedAt: !1069)
!1073 = !DILocation(line: 747, column: 23, scope: !1062, inlinedAt: !1069)
!1074 = !DILocation(line: 747, column: 21, scope: !1062, inlinedAt: !1069)
!1075 = !DILocation(line: 747, column: 12, scope: !1063, inlinedAt: !1069)
!1076 = !DILocation(line: 749, column: 18, scope: !1061, inlinedAt: !1069)
!1077 = !DILocation(line: 749, column: 21, scope: !1061, inlinedAt: !1069)
!1078 = !DILocation(line: 0, scope: !1061, inlinedAt: !1069)
!1079 = !DILocation(line: 750, column: 37, scope: !1061, inlinedAt: !1069)
!1080 = !DILocation(line: 750, column: 33, scope: !1061, inlinedAt: !1069)
!1081 = !DILocation(line: 750, column: 25, scope: !1061, inlinedAt: !1069)
!1082 = !DILocation(line: 750, column: 23, scope: !1061, inlinedAt: !1069)
!1083 = !DILocation(line: 752, column: 15, scope: !1061, inlinedAt: !1069)
!1084 = !DILocation(line: 753, column: 5, scope: !1061, inlinedAt: !1069)
!1085 = !DILocation(line: 756, column: 18, scope: !1066, inlinedAt: !1069)
!1086 = !DILocation(line: 756, column: 21, scope: !1066, inlinedAt: !1069)
!1087 = !DILocation(line: 0, scope: !1066, inlinedAt: !1069)
!1088 = !DILocation(line: 757, column: 37, scope: !1066, inlinedAt: !1069)
!1089 = !DILocation(line: 757, column: 33, scope: !1066, inlinedAt: !1069)
!1090 = !DILocation(line: 757, column: 25, scope: !1066, inlinedAt: !1069)
!1091 = !DILocation(line: 757, column: 23, scope: !1066, inlinedAt: !1069)
!1092 = !DILocation(line: 759, column: 15, scope: !1066, inlinedAt: !1069)
!1093 = !DILocation(line: 0, scope: !1063, inlinedAt: !1069)
!1094 = !DILocalVariable(name: "v", arg: 1, scope: !1095, file: !284, line: 765, type: !167)
!1095 = distinct !DISubprogram(name: "gsl_linalg_givens_gv", scope: !284, file: !284, line: 765, type: !1096, scopeLine: 767, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !167, !181, !181, !941, !941}
!1098 = !{!1094, !1099, !1100, !1101, !1102, !1103, !1104}
!1099 = !DILocalVariable(name: "i", arg: 2, scope: !1095, file: !284, line: 765, type: !181)
!1100 = !DILocalVariable(name: "j", arg: 3, scope: !1095, file: !284, line: 765, type: !181)
!1101 = !DILocalVariable(name: "c", arg: 4, scope: !1095, file: !284, line: 766, type: !941)
!1102 = !DILocalVariable(name: "s", arg: 5, scope: !1095, file: !284, line: 766, type: !941)
!1103 = !DILocalVariable(name: "vi", scope: !1095, file: !284, line: 770, type: !157)
!1104 = !DILocalVariable(name: "vj", scope: !1095, file: !284, line: 771, type: !157)
!1105 = !DILocation(line: 0, scope: !1095, inlinedAt: !1106)
!1106 = distinct !DILocation(line: 568, column: 11, scope: !996)
!1107 = !DILocation(line: 0, scope: !434, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 770, column: 15, scope: !1095, inlinedAt: !1106)
!1109 = !DILocation(line: 0, scope: !434, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 771, column: 15, scope: !1095, inlinedAt: !1106)
!1111 = !DILocation(line: 772, column: 27, scope: !1095, inlinedAt: !1106)
!1112 = !DILocation(line: 772, column: 36, scope: !1095, inlinedAt: !1106)
!1113 = !DILocation(line: 772, column: 32, scope: !1095, inlinedAt: !1106)
!1114 = !DILocation(line: 0, scope: !240, inlinedAt: !1115)
!1115 = distinct !DILocation(line: 772, column: 3, scope: !1095, inlinedAt: !1106)
!1116 = !DILocation(line: 196, column: 26, scope: !240, inlinedAt: !1115)
!1117 = !DILocation(line: 773, column: 27, scope: !1095, inlinedAt: !1106)
!1118 = !DILocation(line: 773, column: 36, scope: !1095, inlinedAt: !1106)
!1119 = !DILocation(line: 773, column: 32, scope: !1095, inlinedAt: !1106)
!1120 = !DILocation(line: 0, scope: !240, inlinedAt: !1121)
!1121 = distinct !DILocation(line: 773, column: 3, scope: !1095, inlinedAt: !1106)
!1122 = !DILocation(line: 196, column: 26, scope: !240, inlinedAt: !1121)
!1123 = !DILocalVariable(name: "M", arg: 1, scope: !1124, file: !1125, line: 22, type: !150)
!1124 = distinct !DISubprogram(name: "apply_givens_qr", scope: !1125, file: !1125, line: 22, type: !1126, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1128)
!1125 = !DIFile(filename: "./apply_givens.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "1430c6da1968c27d96b974d1078e7cb2")
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !150, !150, !144, !144, !150, !150, !157, !157}
!1128 = !{!1123, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1141, !1142, !1146}
!1129 = !DILocalVariable(name: "N", arg: 2, scope: !1124, file: !1125, line: 22, type: !150)
!1130 = !DILocalVariable(name: "Q", arg: 3, scope: !1124, file: !1125, line: 22, type: !144)
!1131 = !DILocalVariable(name: "R", arg: 4, scope: !1124, file: !1125, line: 22, type: !144)
!1132 = !DILocalVariable(name: "i", arg: 5, scope: !1124, file: !1125, line: 23, type: !150)
!1133 = !DILocalVariable(name: "j", arg: 6, scope: !1124, file: !1125, line: 23, type: !150)
!1134 = !DILocalVariable(name: "c", arg: 7, scope: !1124, file: !1125, line: 23, type: !157)
!1135 = !DILocalVariable(name: "s", arg: 8, scope: !1124, file: !1125, line: 23, type: !157)
!1136 = !DILocalVariable(name: "k", scope: !1124, file: !1125, line: 25, type: !150)
!1137 = !DILocalVariable(name: "qki", scope: !1138, file: !1125, line: 39, type: !157)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !1125, line: 38, column: 5)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !1125, line: 37, column: 3)
!1140 = distinct !DILexicalBlock(scope: !1124, file: !1125, line: 37, column: 3)
!1141 = !DILocalVariable(name: "qkj", scope: !1138, file: !1125, line: 40, type: !157)
!1142 = !DILocalVariable(name: "rik", scope: !1143, file: !1125, line: 60, type: !157)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !1125, line: 59, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !1125, line: 58, column: 3)
!1145 = distinct !DILexicalBlock(scope: !1124, file: !1125, line: 58, column: 3)
!1146 = !DILocalVariable(name: "rjk", scope: !1143, file: !1125, line: 61, type: !157)
!1147 = !DILocation(line: 0, scope: !1124, inlinedAt: !1148)
!1148 = distinct !DILocation(line: 569, column: 11, scope: !996)
!1149 = !DILocation(line: 37, column: 3, scope: !1140, inlinedAt: !1148)
!1150 = !DILocation(line: 0, scope: !954, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 39, column: 20, scope: !1138, inlinedAt: !1148)
!1152 = !DILocation(line: 285, column: 20, scope: !954, inlinedAt: !1151)
!1153 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1151)
!1154 = !DILocation(line: 0, scope: !1138, inlinedAt: !1148)
!1155 = !DILocation(line: 0, scope: !954, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 40, column: 20, scope: !1138, inlinedAt: !1148)
!1157 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1156)
!1158 = !DILocation(line: 41, column: 36, scope: !1138, inlinedAt: !1148)
!1159 = !DILocation(line: 41, column: 46, scope: !1138, inlinedAt: !1148)
!1160 = !DILocation(line: 41, column: 40, scope: !1138, inlinedAt: !1148)
!1161 = !DILocation(line: 0, scope: !938, inlinedAt: !1162)
!1162 = distinct !DILocation(line: 41, column: 7, scope: !1138, inlinedAt: !1148)
!1163 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1162)
!1164 = !DILocation(line: 42, column: 36, scope: !1138, inlinedAt: !1148)
!1165 = !DILocation(line: 42, column: 46, scope: !1138, inlinedAt: !1148)
!1166 = !DILocation(line: 42, column: 40, scope: !1138, inlinedAt: !1148)
!1167 = !DILocation(line: 0, scope: !938, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 42, column: 7, scope: !1138, inlinedAt: !1148)
!1169 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1168)
!1170 = !DILocation(line: 37, column: 23, scope: !1139, inlinedAt: !1148)
!1171 = !DILocation(line: 37, column: 17, scope: !1139, inlinedAt: !1148)
!1172 = distinct !{!1172, !1149, !1173, !269}
!1173 = !DILocation(line: 43, column: 5, scope: !1140, inlinedAt: !1148)
!1174 = !DILocation(line: 58, column: 12, scope: !1145, inlinedAt: !1148)
!1175 = !DILocation(line: 58, column: 30, scope: !1144, inlinedAt: !1148)
!1176 = !DILocation(line: 58, column: 3, scope: !1145, inlinedAt: !1148)
!1177 = !DILocation(line: 0, scope: !954, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 60, column: 20, scope: !1143, inlinedAt: !1148)
!1179 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1178)
!1180 = !DILocation(line: 0, scope: !1143, inlinedAt: !1148)
!1181 = !DILocation(line: 0, scope: !954, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 61, column: 20, scope: !1143, inlinedAt: !1148)
!1183 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1182)
!1184 = !DILocation(line: 62, column: 34, scope: !1143, inlinedAt: !1148)
!1185 = !DILocation(line: 62, column: 44, scope: !1143, inlinedAt: !1148)
!1186 = !DILocation(line: 62, column: 40, scope: !1143, inlinedAt: !1148)
!1187 = !DILocation(line: 0, scope: !938, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 62, column: 7, scope: !1143, inlinedAt: !1148)
!1189 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1188)
!1190 = !DILocation(line: 63, column: 34, scope: !1143, inlinedAt: !1148)
!1191 = !DILocation(line: 63, column: 44, scope: !1143, inlinedAt: !1148)
!1192 = !DILocation(line: 63, column: 40, scope: !1143, inlinedAt: !1148)
!1193 = !DILocation(line: 0, scope: !938, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 63, column: 7, scope: !1143, inlinedAt: !1148)
!1195 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1194)
!1196 = !DILocation(line: 58, column: 36, scope: !1144, inlinedAt: !1148)
!1197 = distinct !{!1197, !1176, !1198, !269}
!1198 = !DILocation(line: 64, column: 5, scope: !1145, inlinedAt: !1148)
!1199 = distinct !{!1199, !1038, !1200, !269}
!1200 = !DILocation(line: 570, column: 9, scope: !998)
!1201 = !DILocation(line: 0, scope: !434, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 572, column: 12, scope: !989)
!1203 = !DILocation(line: 183, column: 10, scope: !434, inlinedAt: !1202)
!1204 = !DILocation(line: 576, column: 21, scope: !1004)
!1205 = !DILocation(line: 576, column: 7, scope: !1005)
!1206 = !DILocation(line: 0, scope: !954, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 578, column: 24, scope: !1003)
!1208 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1207)
!1209 = !DILocation(line: 0, scope: !1003)
!1210 = !DILocation(line: 0, scope: !434, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 579, column: 23, scope: !1003)
!1212 = !DILocation(line: 183, column: 20, scope: !434, inlinedAt: !1211)
!1213 = !DILocation(line: 183, column: 10, scope: !434, inlinedAt: !1211)
!1214 = !DILocation(line: 580, column: 45, scope: !1003)
!1215 = !DILocation(line: 580, column: 40, scope: !1003)
!1216 = !DILocation(line: 0, scope: !938, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 580, column: 11, scope: !1003)
!1218 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1217)
!1219 = !DILocation(line: 586, column: 21, scope: !1009)
!1220 = !DILocation(line: 586, column: 7, scope: !1010)
!1221 = !DILocation(line: 576, column: 27, scope: !1004)
!1222 = distinct !{!1222, !1205, !1223, !269}
!1223 = !DILocation(line: 581, column: 9, scope: !1005)
!1224 = !DILocation(line: 589, column: 46, scope: !1008)
!1225 = !DILocation(line: 0, scope: !954, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 589, column: 25, scope: !1008)
!1227 = !DILocation(line: 285, column: 20, scope: !954, inlinedAt: !1226)
!1228 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1226)
!1229 = !DILocation(line: 0, scope: !1008)
!1230 = !DILocation(line: 0, scope: !954, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 590, column: 28, scope: !1008)
!1232 = !DILocation(line: 285, column: 20, scope: !954, inlinedAt: !1231)
!1233 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1231)
!1234 = !DILocation(line: 0, scope: !1053, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 592, column: 11, scope: !1008)
!1236 = !DILocation(line: 742, column: 9, scope: !1063, inlinedAt: !1235)
!1237 = !DILocation(line: 742, column: 7, scope: !1053, inlinedAt: !1235)
!1238 = !DILocation(line: 747, column: 12, scope: !1062, inlinedAt: !1235)
!1239 = !DILocation(line: 747, column: 23, scope: !1062, inlinedAt: !1235)
!1240 = !DILocation(line: 747, column: 21, scope: !1062, inlinedAt: !1235)
!1241 = !DILocation(line: 747, column: 12, scope: !1063, inlinedAt: !1235)
!1242 = !DILocation(line: 749, column: 18, scope: !1061, inlinedAt: !1235)
!1243 = !DILocation(line: 749, column: 21, scope: !1061, inlinedAt: !1235)
!1244 = !DILocation(line: 0, scope: !1061, inlinedAt: !1235)
!1245 = !DILocation(line: 750, column: 37, scope: !1061, inlinedAt: !1235)
!1246 = !DILocation(line: 750, column: 33, scope: !1061, inlinedAt: !1235)
!1247 = !DILocation(line: 750, column: 25, scope: !1061, inlinedAt: !1235)
!1248 = !DILocation(line: 750, column: 23, scope: !1061, inlinedAt: !1235)
!1249 = !DILocation(line: 752, column: 15, scope: !1061, inlinedAt: !1235)
!1250 = !DILocation(line: 753, column: 5, scope: !1061, inlinedAt: !1235)
!1251 = !DILocation(line: 756, column: 18, scope: !1066, inlinedAt: !1235)
!1252 = !DILocation(line: 756, column: 21, scope: !1066, inlinedAt: !1235)
!1253 = !DILocation(line: 0, scope: !1066, inlinedAt: !1235)
!1254 = !DILocation(line: 757, column: 37, scope: !1066, inlinedAt: !1235)
!1255 = !DILocation(line: 757, column: 33, scope: !1066, inlinedAt: !1235)
!1256 = !DILocation(line: 757, column: 25, scope: !1066, inlinedAt: !1235)
!1257 = !DILocation(line: 757, column: 23, scope: !1066, inlinedAt: !1235)
!1258 = !DILocation(line: 759, column: 15, scope: !1066, inlinedAt: !1235)
!1259 = !DILocation(line: 0, scope: !1063, inlinedAt: !1235)
!1260 = !DILocation(line: 0, scope: !1124, inlinedAt: !1261)
!1261 = distinct !DILocation(line: 593, column: 11, scope: !1008)
!1262 = !DILocation(line: 37, column: 3, scope: !1140, inlinedAt: !1261)
!1263 = !DILocation(line: 0, scope: !954, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 39, column: 20, scope: !1138, inlinedAt: !1261)
!1265 = !DILocation(line: 285, column: 20, scope: !954, inlinedAt: !1264)
!1266 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1264)
!1267 = !DILocation(line: 0, scope: !1138, inlinedAt: !1261)
!1268 = !DILocation(line: 0, scope: !954, inlinedAt: !1269)
!1269 = distinct !DILocation(line: 40, column: 20, scope: !1138, inlinedAt: !1261)
!1270 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1269)
!1271 = !DILocation(line: 41, column: 36, scope: !1138, inlinedAt: !1261)
!1272 = !DILocation(line: 41, column: 46, scope: !1138, inlinedAt: !1261)
!1273 = !DILocation(line: 41, column: 40, scope: !1138, inlinedAt: !1261)
!1274 = !DILocation(line: 0, scope: !938, inlinedAt: !1275)
!1275 = distinct !DILocation(line: 41, column: 7, scope: !1138, inlinedAt: !1261)
!1276 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1275)
!1277 = !DILocation(line: 42, column: 36, scope: !1138, inlinedAt: !1261)
!1278 = !DILocation(line: 42, column: 46, scope: !1138, inlinedAt: !1261)
!1279 = !DILocation(line: 42, column: 40, scope: !1138, inlinedAt: !1261)
!1280 = !DILocation(line: 0, scope: !938, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 42, column: 7, scope: !1138, inlinedAt: !1261)
!1282 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1281)
!1283 = !DILocation(line: 37, column: 23, scope: !1139, inlinedAt: !1261)
!1284 = !DILocation(line: 37, column: 17, scope: !1139, inlinedAt: !1261)
!1285 = distinct !{!1285, !1262, !1286, !269}
!1286 = !DILocation(line: 43, column: 5, scope: !1140, inlinedAt: !1261)
!1287 = !DILocation(line: 58, column: 12, scope: !1145, inlinedAt: !1261)
!1288 = !DILocation(line: 58, column: 30, scope: !1144, inlinedAt: !1261)
!1289 = !DILocation(line: 58, column: 3, scope: !1145, inlinedAt: !1261)
!1290 = !DILocation(line: 0, scope: !954, inlinedAt: !1291)
!1291 = distinct !DILocation(line: 60, column: 20, scope: !1143, inlinedAt: !1261)
!1292 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1291)
!1293 = !DILocation(line: 0, scope: !1143, inlinedAt: !1261)
!1294 = !DILocation(line: 0, scope: !954, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 61, column: 20, scope: !1143, inlinedAt: !1261)
!1296 = !DILocation(line: 285, column: 10, scope: !954, inlinedAt: !1295)
!1297 = !DILocation(line: 62, column: 34, scope: !1143, inlinedAt: !1261)
!1298 = !DILocation(line: 62, column: 44, scope: !1143, inlinedAt: !1261)
!1299 = !DILocation(line: 62, column: 40, scope: !1143, inlinedAt: !1261)
!1300 = !DILocation(line: 0, scope: !938, inlinedAt: !1301)
!1301 = distinct !DILocation(line: 62, column: 7, scope: !1143, inlinedAt: !1261)
!1302 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1301)
!1303 = !DILocation(line: 63, column: 34, scope: !1143, inlinedAt: !1261)
!1304 = !DILocation(line: 63, column: 44, scope: !1143, inlinedAt: !1261)
!1305 = !DILocation(line: 63, column: 40, scope: !1143, inlinedAt: !1261)
!1306 = !DILocation(line: 0, scope: !938, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 63, column: 7, scope: !1143, inlinedAt: !1261)
!1308 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1307)
!1309 = !DILocation(line: 58, column: 36, scope: !1144, inlinedAt: !1261)
!1310 = distinct !{!1310, !1289, !1311, !269}
!1311 = !DILocation(line: 64, column: 5, scope: !1145, inlinedAt: !1261)
!1312 = !DILocation(line: 0, scope: !938, inlinedAt: !1313)
!1313 = distinct !DILocation(line: 595, column: 11, scope: !1008)
!1314 = !DILocation(line: 305, column: 27, scope: !938, inlinedAt: !1313)
!1315 = !DILocation(line: 586, column: 40, scope: !1009)
!1316 = distinct !{!1316, !1220, !1317, !269}
!1317 = !DILocation(line: 596, column: 9, scope: !1010)
!1318 = !DILocation(line: 0, scope: !992)
!1319 = !DILocation(line: 600, column: 1, scope: !978)
!1320 = distinct !DISubprogram(name: "gsl_linalg_QR_QRsolve", scope: !2, file: !2, line: 603, type: !1321, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !76, retainedNodes: !1323)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!80, !144, !144, !293, !167}
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329}
!1324 = !DILocalVariable(name: "Q", arg: 1, scope: !1320, file: !2, line: 603, type: !144)
!1325 = !DILocalVariable(name: "R", arg: 2, scope: !1320, file: !2, line: 603, type: !144)
!1326 = !DILocalVariable(name: "b", arg: 3, scope: !1320, file: !2, line: 603, type: !293)
!1327 = !DILocalVariable(name: "x", arg: 4, scope: !1320, file: !2, line: 603, type: !167)
!1328 = !DILocalVariable(name: "M", scope: !1320, file: !2, line: 605, type: !181)
!1329 = !DILocalVariable(name: "N", scope: !1320, file: !2, line: 606, type: !181)
!1330 = !DILocation(line: 0, scope: !1320)
!1331 = !DILocation(line: 605, column: 23, scope: !1320)
!1332 = !DILocation(line: 606, column: 23, scope: !1320)
!1333 = !DILocation(line: 608, column: 9, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 608, column: 7)
!1335 = !DILocation(line: 608, column: 7, scope: !1320)
!1336 = !DILocation(line: 612, column: 15, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 612, column: 12)
!1338 = !DILocation(line: 612, column: 21, scope: !1337)
!1339 = !DILocation(line: 612, column: 26, scope: !1337)
!1340 = !DILocation(line: 612, column: 32, scope: !1337)
!1341 = !DILocation(line: 612, column: 37, scope: !1337)
!1342 = !DILocation(line: 612, column: 42, scope: !1337)
!1343 = !DILocation(line: 612, column: 48, scope: !1337)
!1344 = !DILocation(line: 612, column: 53, scope: !1337)
!1345 = !DILocation(line: 612, column: 12, scope: !1334)
!1346 = !DILocation(line: 620, column: 7, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 617, column: 5)
!1348 = !DILocation(line: 624, column: 7, scope: !1347)
!1349 = !DILocation(line: 626, column: 7, scope: !1347)
!1350 = !DILocation(line: 0, scope: !1334)
!1351 = !DILocation(line: 628, column: 1, scope: !1320)
!1352 = !DISubprogram(name: "gsl_blas_dgemv", scope: !453, file: !453, line: 205, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!80, !458, !157, !298, !293, !157, !167}
