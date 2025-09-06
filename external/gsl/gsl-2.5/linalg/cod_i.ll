; ModuleID = 'cod.ll'
source_filename = "cod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._gsl_matrix_view = type { %struct.gsl_matrix }
%struct.gsl_matrix = type { i64, i64, i64, ptr, ptr, i32 }
%struct._gsl_vector_view = type { %struct.gsl_vector }
%struct.gsl_vector = type { i64, i64, ptr, ptr, i32 }
%struct._gsl_matrix_const_view = type { %struct.gsl_matrix }
%struct._gsl_vector_const_view = type { %struct.gsl_vector }

@.str = private unnamed_addr constant [31 x i8] c"size of tau_Q must be MIN(M,N)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [6 x i8] c"cod.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [31 x i8] c"size of tau_Z must be MIN(M,N)\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [27 x i8] c"permutation size must be N\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [20 x i8] c"work size must be N\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [27 x i8] c"QRZT matrix must have M>=N\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [30 x i8] c"matrix size must match b size\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [25 x i8] c"rank must be <= MIN(M,N)\00", align 1, !dbg !31
@.str.8 = private unnamed_addr constant [37 x i8] c"matrix size must match solution size\00", align 1, !dbg !36
@.str.9 = private unnamed_addr constant [37 x i8] c"matrix size must match residual size\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [23 x i8] c"S must be rank-by-rank\00", align 1, !dbg !43
@.str.11 = private unnamed_addr constant [25 x i8] c"work must be length rank\00", align 1, !dbg !48
@.str.12 = private unnamed_addr constant [17 x i8] c"Q must by M-by-M\00", align 1, !dbg !50
@.str.13 = private unnamed_addr constant [17 x i8] c"R must by M-by-N\00", align 1, !dbg !55
@.str.14 = private unnamed_addr constant [17 x i8] c"Z must by N-by-N\00", align 1, !dbg !57
@.str.15 = private unnamed_addr constant [27 x i8] c"tau_Z must be GSL_MIN(M,N)\00", align 1, !dbg !59
@.str.16 = private unnamed_addr constant [25 x i8] c"QRZT must have N columns\00", align 1, !dbg !61
@.str.17 = private unnamed_addr constant [27 x i8] c"workspace must be length M\00", align 1, !dbg !63
@.str.18 = private unnamed_addr constant [19 x i8] c"tau has wrong size\00", align 1, !dbg !65
@.str.19 = private unnamed_addr constant [15 x i8] c"N must be >= M\00", align 1, !dbg !70
@.str.20 = private unnamed_addr constant [19 x i8] c"v must be length N\00", align 1, !dbg !75
@.str.21 = private unnamed_addr constant [24 x i8] c"lambda must be positive\00", align 1, !dbg !77

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_COD_decomp_e(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr nocapture noundef writeonly %5, ptr noundef %6) local_unnamed_addr #0 !dbg !150 {
  %8 = alloca i32, align 4, !DIAssignID !225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !209, metadata !DIExpression(), metadata !225, metadata ptr %8, metadata !DIExpression()), !dbg !226
  %9 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !227
  call void @llvm.dbg.assign(metadata i1 undef, metadata !211, metadata !DIExpression(), metadata !227, metadata ptr %9, metadata !DIExpression()), !dbg !228
  %10 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !229
  call void @llvm.dbg.assign(metadata i1 undef, metadata !219, metadata !DIExpression(), metadata !229, metadata ptr %10, metadata !DIExpression()), !dbg !228
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !193, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !194, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !195, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !196, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata double %4, metadata !197, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !198, metadata !DIExpression()), !dbg !230
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !199, metadata !DIExpression()), !dbg !230
  %11 = load i64, ptr %0, align 8, !dbg !231, !tbaa !232
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !200, metadata !DIExpression()), !dbg !230
  %12 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !239
  %13 = load i64, ptr %12, align 8, !dbg !239, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !202, metadata !DIExpression()), !dbg !230
  %14 = load i64, ptr %1, align 8, !dbg !241, !tbaa !242
  %15 = tail call i64 @llvm.umin.i64(i64 %11, i64 %13), !dbg !244
  %16 = icmp eq i64 %14, %15, !dbg !245
  br i1 %16, label %18, label %17, !dbg !246

17:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 68, i32 noundef 19) #5, !dbg !247
  br label %39, !dbg !247

18:                                               ; preds = %7
  %19 = load i64, ptr %2, align 8, !dbg !250, !tbaa !242
  %20 = icmp eq i64 %19, %14, !dbg !251
  br i1 %20, label %22, label %21, !dbg !252

21:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 72, i32 noundef 19) #5, !dbg !253
  br label %39, !dbg !253

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8, !dbg !256, !tbaa !257
  %24 = icmp eq i64 %23, %13, !dbg !259
  br i1 %24, label %26, label %25, !dbg !260

25:                                               ; preds = %22
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 76, i32 noundef 19) #5, !dbg !261
  br label %39, !dbg !261

26:                                               ; preds = %22
  %27 = load i64, ptr %6, align 8, !dbg !264, !tbaa !242
  %28 = icmp eq i64 %27, %13, !dbg !265
  br i1 %28, label %30, label %29, !dbg !266

29:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 80, i32 noundef 19) #5, !dbg !267
  br label %39, !dbg !267

30:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #5, !dbg !270
  %31 = call i32 @gsl_linalg_QRPT_decomp(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef nonnull %6) #5, !dbg !271
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !203, metadata !DIExpression()), !dbg !226
  %32 = icmp eq i32 %31, 0, !dbg !272
  br i1 %32, label %33, label %38, !dbg !274

33:                                               ; preds = %30
  %34 = call i64 @gsl_linalg_QRPT_rank(ptr noundef nonnull %0, double noundef %4) #5, !dbg !275
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !210, metadata !DIExpression()), !dbg !226
  %35 = icmp ult i64 %34, %13, !dbg !276
  br i1 %35, label %36, label %37, !dbg !277

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #5, !dbg !278
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %9, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %34, i64 noundef %13) #5, !dbg !279
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #5, !dbg !280
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %2, i64 noundef 0, i64 noundef %34) #5, !dbg !281
  call fastcc void @cod_RZ(ptr noundef nonnull %9, ptr noundef nonnull %10), !dbg !282
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #5, !dbg !283
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #5, !dbg !283
  br label %37, !dbg !284

37:                                               ; preds = %36, %33
  store i64 %34, ptr %5, align 8, !dbg !285, !tbaa !286
  br label %38, !dbg !287

38:                                               ; preds = %37, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #5, !dbg !288
  br label %39

39:                                               ; preds = %38, %29, %25, %21, %17
  %40 = phi i32 [ 19, %17 ], [ 19, %21 ], [ 19, %25 ], [ 19, %29 ], [ %31, %38 ], !dbg !289
  ret i32 %40, !dbg !290
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !291 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !296 i32 @gsl_linalg_QRPT_decomp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !301 i64 @gsl_linalg_QRPT_rank(ptr noundef, double noundef) local_unnamed_addr #2

declare !dbg !307 void @gsl_matrix_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !310 void @gsl_vector_subvector(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cod_RZ(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !dbg !313 {
  %3 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !336
  call void @llvm.dbg.assign(metadata i1 undef, metadata !330, metadata !DIExpression(), metadata !336, metadata ptr %3, metadata !DIExpression()), !dbg !337
  %4 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !338
  call void @llvm.dbg.assign(metadata i1 undef, metadata !332, metadata !DIExpression(), metadata !338, metadata ptr %4, metadata !DIExpression()), !dbg !339
  %5 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !335, metadata !DIExpression(), metadata !340, metadata ptr %5, metadata !DIExpression()), !dbg !339
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !317, metadata !DIExpression()), !dbg !341
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !318, metadata !DIExpression()), !dbg !341
  %6 = load i64, ptr %0, align 8, !dbg !342, !tbaa !232
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !319, metadata !DIExpression()), !dbg !341
  %7 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !343
  %8 = load i64, ptr %7, align 8, !dbg !343, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !320, metadata !DIExpression()), !dbg !341
  %9 = load i64, ptr %1, align 8, !dbg !344, !tbaa !242
  %10 = icmp eq i64 %9, %6, !dbg !345
  br i1 %10, label %12, label %11, !dbg !346

11:                                               ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 460, i32 noundef 19) #5, !dbg !347
  br label %66, !dbg !347

12:                                               ; preds = %2
  %13 = icmp ult i64 %8, %6, !dbg !350
  br i1 %13, label %14, label %15, !dbg !351

14:                                               ; preds = %12
  tail call void @gsl_error(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 464, i32 noundef 4) #5, !dbg !352
  br label %66, !dbg !352

15:                                               ; preds = %12
  %16 = icmp eq i64 %6, %8, !dbg !355
  br i1 %16, label %25, label %17, !dbg !356

17:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !321, metadata !DIExpression()), !dbg !357
  %18 = icmp eq i64 %6, 0, !dbg !358
  br i1 %18, label %66, label %19, !dbg !359

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 2
  %22 = sub i64 %8, %6
  %23 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %24 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %26, !dbg !359

25:                                               ; preds = %15
  tail call void @gsl_vector_set_all(ptr noundef nonnull %1, double noundef 0.000000e+00) #5, !dbg !360
  br label %66, !dbg !362

26:                                               ; preds = %64, %19
  %27 = phi i64 [ %6, %19 ], [ %28, %64 ]
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !321, metadata !DIExpression()), !dbg !357
  %28 = add i64 %27, -1, !dbg !363
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !321, metadata !DIExpression()), !dbg !357
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !364, metadata !DIExpression()), !dbg !371
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !369, metadata !DIExpression()), !dbg !371
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !370, metadata !DIExpression()), !dbg !371
  %29 = load ptr, ptr %20, align 8, !dbg !373, !tbaa !374
  %30 = load i64, ptr %21, align 8, !dbg !375, !tbaa !376
  %31 = mul i64 %30, %28, !dbg !377
  %32 = getelementptr double, ptr %29, i64 %31, !dbg !378
  %33 = getelementptr double, ptr %32, i64 %28, !dbg !378
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !326, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5, !dbg !379
  call void @gsl_matrix_subrow(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %3, ptr noundef nonnull %0, i64 noundef %28, i64 noundef %6, i64 noundef %22) #5, !dbg !380
  call void @llvm.dbg.value(metadata ptr %33, metadata !381, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata ptr %3, metadata !386, metadata !DIExpression()), !dbg !392
  %34 = call double @gsl_blas_dnrm2(ptr noundef nonnull %3) #5, !dbg !394
  call void @llvm.dbg.value(metadata double %34, metadata !389, metadata !DIExpression()), !dbg !392
  %35 = fcmp oeq double %34, 0.000000e+00, !dbg !395
  br i1 %35, label %53, label %36, !dbg !397

36:                                               ; preds = %26
  %37 = load double, ptr %33, align 8, !dbg !398, !tbaa !399
  %38 = fcmp oge double %37, 0.000000e+00, !dbg !401
  %39 = select i1 %38, double 1.000000e+00, double -1.000000e+00, !dbg !398
  %40 = fneg double %39, !dbg !402
  %41 = call double @gsl_hypot(double noundef %37, double noundef %34) #5, !dbg !403
  %42 = fmul double %41, %40, !dbg !404
  call void @llvm.dbg.value(metadata double %42, metadata !387, metadata !DIExpression()), !dbg !392
  %43 = load double, ptr %33, align 8, !dbg !405, !tbaa !399
  %handler_result = call double @fSubHandlerDouble(double %42, double %43), !dbg !406
  %44 = fdiv double %handler_result, %42, !dbg !406
  call void @llvm.dbg.value(metadata double %44, metadata !388, metadata !DIExpression()), !dbg !392
  %handler_result1 = call double @fSubHandlerDouble(double %43, double %42), !dbg !407
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !390, metadata !DIExpression()), !dbg !409
  %45 = call double @llvm.fabs.f64(double %handler_result1), !dbg !407
  %46 = fcmp ogt double %45, 0x10000000000000, !dbg !410
  br i1 %46, label %47, label %49, !dbg !411

47:                                               ; preds = %36
  %48 = fdiv double 1.000000e+00, %handler_result1, !dbg !412
  br label %51, !dbg !414

49:                                               ; preds = %36
  %50 = fdiv double 0x3CB0000000000000, %handler_result1, !dbg !415
  call void @gsl_blas_dscal(double noundef %50, ptr noundef nonnull %3) #5, !dbg !417
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi double [ 0x4330000000000000, %49 ], [ %48, %47 ]
  call void @gsl_blas_dscal(double noundef %52, ptr noundef nonnull %3) #5, !dbg !418
  store double %42, ptr %33, align 8, !dbg !419, !tbaa !399
  br label %53, !dbg !420

53:                                               ; preds = %51, %26
  %54 = phi double [ %44, %51 ], [ 0.000000e+00, %26 ], !dbg !392
  tail call void @llvm.dbg.value(metadata double %54, metadata !331, metadata !DIExpression()), !dbg !337
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !421, metadata !DIExpression()), !dbg !428
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !426, metadata !DIExpression()), !dbg !428
  tail call void @llvm.dbg.value(metadata double %54, metadata !427, metadata !DIExpression()), !dbg !428
  %55 = load ptr, ptr %23, align 8, !dbg !430, !tbaa !431
  %56 = load i64, ptr %24, align 8, !dbg !432, !tbaa !433
  %57 = mul i64 %56, %28, !dbg !434
  %58 = getelementptr inbounds double, ptr %55, i64 %57, !dbg !435
  store double %54, ptr %58, align 8, !dbg !436, !tbaa !399
  %59 = fcmp une double %54, 0.000000e+00, !dbg !437
  %60 = icmp ne i64 %28, 0
  %61 = and i1 %60, %59, !dbg !438
  br i1 %61, label %62, label %64, !dbg !438

62:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5, !dbg !439
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %4, ptr noundef nonnull %1, i64 noundef 0, i64 noundef %28) #5, !dbg !440
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #5, !dbg !441
  %63 = sub i64 %8, %28, !dbg !442
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %5, ptr noundef nonnull %0, i64 noundef 0, i64 noundef %28, i64 noundef %28, i64 noundef %63) #5, !dbg !443
  call fastcc void @cod_householder_mh(double noundef %54, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %4), !dbg !444
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #5, !dbg !445
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5, !dbg !445
  br label %64, !dbg !446

64:                                               ; preds = %62, %53
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5, !dbg !447
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !321, metadata !DIExpression()), !dbg !357
  %65 = icmp eq i64 %28, 0, !dbg !358
  br i1 %65, label %66, label %26, !dbg !359, !llvm.loop !448

66:                                               ; preds = %64, %25, %17, %14, %11
  ret void, !dbg !452
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_linalg_COD_decomp(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5) local_unnamed_addr #0 !dbg !453 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !457, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !458, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !459, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !460, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !461, metadata !DIExpression()), !dbg !463
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !462, metadata !DIExpression()), !dbg !463
  %7 = tail call i32 @gsl_linalg_COD_decomp_e(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, double noundef -1.000000e+00, ptr noundef %4, ptr noundef %5), !dbg !464
  ret i32 %7, !dbg !465
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_COD_lssolve(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 !dbg !466 {
  %9 = alloca %struct._gsl_matrix_const_view, align 8, !DIAssignID !499
  call void @llvm.dbg.assign(metadata i1 undef, metadata !484, metadata !DIExpression(), metadata !499, metadata ptr %9, metadata !DIExpression()), !dbg !500
  %10 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !501
  call void @llvm.dbg.assign(metadata i1 undef, metadata !497, metadata !DIExpression(), metadata !501, metadata ptr %10, metadata !DIExpression()), !dbg !500
  %11 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !502
  call void @llvm.dbg.assign(metadata i1 undef, metadata !498, metadata !DIExpression(), metadata !502, metadata ptr %11, metadata !DIExpression()), !dbg !500
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !474, metadata !DIExpression()), !dbg !503
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !475, metadata !DIExpression()), !dbg !503
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !476, metadata !DIExpression()), !dbg !503
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !477, metadata !DIExpression()), !dbg !503
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !478, metadata !DIExpression()), !dbg !503
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !479, metadata !DIExpression()), !dbg !503
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !480, metadata !DIExpression()), !dbg !503
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !481, metadata !DIExpression()), !dbg !503
  %12 = load i64, ptr %0, align 8, !dbg !504, !tbaa !232
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !482, metadata !DIExpression()), !dbg !503
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !505
  %14 = load i64, ptr %13, align 8, !dbg !505, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !483, metadata !DIExpression()), !dbg !503
  %15 = icmp ult i64 %12, %14, !dbg !506
  br i1 %15, label %16, label %17, !dbg !507

16:                                               ; preds = %8
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 153, i32 noundef 19) #5, !dbg !508
  br label %39, !dbg !508

17:                                               ; preds = %8
  %18 = load i64, ptr %5, align 8, !dbg !511, !tbaa !242
  %19 = icmp eq i64 %12, %18, !dbg !512
  br i1 %19, label %21, label %20, !dbg !513

20:                                               ; preds = %17
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 157, i32 noundef 19) #5, !dbg !514
  br label %39, !dbg !514

21:                                               ; preds = %17
  %22 = icmp ult i64 %14, %4, !dbg !517
  br i1 %22, label %23, label %24, !dbg !518

23:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 161, i32 noundef 19) #5, !dbg !519
  br label %39, !dbg !519

24:                                               ; preds = %21
  %25 = load i64, ptr %6, align 8, !dbg !522, !tbaa !242
  %26 = icmp eq i64 %14, %25, !dbg !523
  br i1 %26, label %28, label %27, !dbg !524

27:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 165, i32 noundef 19) #5, !dbg !525
  br label %39, !dbg !525

28:                                               ; preds = %24
  %29 = load i64, ptr %7, align 8, !dbg !528, !tbaa !242
  %30 = icmp eq i64 %12, %29, !dbg !529
  br i1 %30, label %32, label %31, !dbg !530

31:                                               ; preds = %28
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 169, i32 noundef 19) #5, !dbg !531
  br label %39, !dbg !531

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #5, !dbg !534
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %9, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %4, i64 noundef %4) #5, !dbg !535
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #5, !dbg !536
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %10, ptr noundef nonnull %7, i64 noundef 0, i64 noundef %4) #5, !dbg !537
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #5, !dbg !538
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %11, ptr noundef nonnull %6, i64 noundef 0, i64 noundef %4) #5, !dbg !539
  call void @gsl_vector_set_zero(ptr noundef nonnull %6) #5, !dbg !540
  %33 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %7, ptr noundef nonnull %5) #5, !dbg !541
  %34 = call i32 @gsl_linalg_QR_QTvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7) #5, !dbg !542
  %35 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %11, ptr noundef nonnull %10) #5, !dbg !543
  %36 = call i32 @gsl_blas_dtrsv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %9, ptr noundef nonnull %11) #5, !dbg !544
  call fastcc void @cod_householder_Zvec(ptr noundef nonnull %0, ptr noundef %2, i64 noundef %4, ptr noundef nonnull %6), !dbg !545
  %37 = call i32 @gsl_permute_vector_inverse(ptr noundef %3, ptr noundef nonnull %6) #5, !dbg !546
  call void @gsl_vector_set_zero(ptr noundef nonnull %10) #5, !dbg !547
  %38 = call i32 @gsl_linalg_QR_Qvec(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %7) #5, !dbg !548
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #5, !dbg !549
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #5, !dbg !549
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #5, !dbg !549
  br label %39

39:                                               ; preds = %32, %31, %27, %23, %20, %16
  %40 = phi i32 [ 19, %16 ], [ 19, %20 ], [ 19, %23 ], [ 19, %27 ], [ 19, %31 ], [ 0, %32 ], !dbg !550
  ret i32 %40, !dbg !551
}

declare !dbg !552 void @gsl_matrix_const_submatrix(ptr dead_on_unwind writable sret(%struct._gsl_matrix_const_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !555 void @gsl_vector_set_zero(ptr noundef) local_unnamed_addr #2

declare !dbg !558 i32 @gsl_vector_memcpy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !561 i32 @gsl_linalg_QR_QTvec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !564 i32 @gsl_blas_dtrsv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cod_householder_Zvec(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !572 {
  %5 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !600
  %6 = alloca double, align 8, !DIAssignID !601
  %7 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !602
  call void @llvm.dbg.assign(metadata i1 undef, metadata !588, metadata !DIExpression(), metadata !602, metadata ptr %7, metadata !DIExpression()), !dbg !603
  %8 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !604
  call void @llvm.dbg.assign(metadata i1 undef, metadata !598, metadata !DIExpression(), metadata !604, metadata ptr %8, metadata !DIExpression()), !dbg !603
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !576, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !577, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !578, metadata !DIExpression()), !dbg !605
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !579, metadata !DIExpression()), !dbg !605
  %9 = load i64, ptr %0, align 8, !dbg !606, !tbaa !232
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !580, metadata !DIExpression()), !dbg !605
  %10 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !607
  %11 = load i64, ptr %10, align 8, !dbg !607, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !581, metadata !DIExpression()), !dbg !605
  %12 = load i64, ptr %1, align 8, !dbg !608, !tbaa !242
  %13 = tail call i64 @llvm.umin.i64(i64 %9, i64 %11), !dbg !609
  %14 = icmp eq i64 %12, %13, !dbg !610
  br i1 %14, label %16, label %15, !dbg !611

15:                                               ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 643, i32 noundef 19) #5, !dbg !612
  br label %54, !dbg !612

16:                                               ; preds = %4
  %17 = load i64, ptr %3, align 8, !dbg !615, !tbaa !242
  %18 = icmp eq i64 %17, %11, !dbg !616
  br i1 %18, label %20, label %19, !dbg !617

19:                                               ; preds = %16
  tail call void @gsl_error(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 647, i32 noundef 19) #5, !dbg !618
  br label %54, !dbg !618

20:                                               ; preds = %16
  %21 = icmp ugt i64 %11, %2, !dbg !621
  tail call void @llvm.dbg.value(metadata i64 0, metadata !582, metadata !DIExpression()), !dbg !622
  %22 = icmp ne i64 %2, 0
  %23 = and i1 %21, %22, !dbg !623
  br i1 %23, label %24, label %54, !dbg !623

24:                                               ; preds = %20
  %25 = sub i64 %11, %2
  %26 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %27 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  %28 = getelementptr inbounds %struct.gsl_vector, ptr %8, i64 0, i32 2
  br label %29, !dbg !624

29:                                               ; preds = %51, %24
  %30 = phi i64 [ 0, %24 ], [ %52, %51 ]
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !582, metadata !DIExpression()), !dbg !622
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5, !dbg !625
  call void @gsl_matrix_const_subrow(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %7, ptr noundef nonnull %0, i64 noundef %30, i64 noundef %2, i64 noundef %25) #5, !dbg !626
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #5, !dbg !627
  %31 = sub i64 %11, %30, !dbg !628
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %8, ptr noundef nonnull %3, i64 noundef %30, i64 noundef %31) #5, !dbg !629
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !630, metadata !DIExpression()), !dbg !636
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !635, metadata !DIExpression()), !dbg !636
  %32 = load ptr, ptr %26, align 8, !dbg !638, !tbaa !431
  %33 = load i64, ptr %27, align 8, !dbg !639, !tbaa !433
  %34 = mul i64 %33, %30, !dbg !640
  %35 = getelementptr inbounds double, ptr %32, i64 %34, !dbg !641
  %36 = load double, ptr %35, align 8, !dbg !641, !tbaa !399
  tail call void @llvm.dbg.value(metadata double %36, metadata !599, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.assign(metadata i1 undef, metadata !642, metadata !DIExpression(), metadata !600, metadata ptr %5, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.assign(metadata i1 undef, metadata !655, metadata !DIExpression(), metadata !601, metadata ptr %6, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata double %36, metadata !649, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata ptr %7, metadata !650, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata ptr %8, metadata !651, metadata !DIExpression()), !dbg !659
  %37 = fcmp oeq double %36, 0.000000e+00, !dbg !660
  br i1 %37, label %51, label %38, !dbg !661

38:                                               ; preds = %29
  %39 = load i64, ptr %8, align 8, !dbg !662, !tbaa !242
  call void @llvm.dbg.value(metadata i64 %39, metadata !652, metadata !DIExpression()), !dbg !657
  %40 = load i64, ptr %7, align 8, !dbg !663, !tbaa !242
  call void @llvm.dbg.value(metadata i64 %40, metadata !653, metadata !DIExpression()), !dbg !657
  call void @llvm.dbg.value(metadata ptr %8, metadata !630, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i64 0, metadata !635, metadata !DIExpression()), !dbg !664
  %41 = load ptr, ptr %28, align 8, !dbg !666, !tbaa !431
  %42 = load double, ptr %41, align 8, !dbg !667, !tbaa !399
  call void @llvm.dbg.value(metadata double %42, metadata !654, metadata !DIExpression()), !dbg !657
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5, !dbg !668
  %43 = sub i64 %39, %40, !dbg !669
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %5, ptr noundef nonnull %8, i64 noundef %43, i64 noundef %40) #5, !dbg !670
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #5, !dbg !671
  %44 = call i32 @gsl_blas_ddot(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #5, !dbg !672
  %45 = load double, ptr %6, align 8, !dbg !673, !tbaa !399
  %handler_result = call double @fAddHandlerDouble(double %42, double %45), !dbg !674
  call void @llvm.dbg.value(metadata double %handler_result, metadata !656, metadata !DIExpression()), !dbg !657
  %46 = fmul double %36, %handler_result, !dbg !674
  %handler_result1 = call double @fSubHandlerDouble(double %42, double %46), !dbg !675
  call void @llvm.dbg.value(metadata ptr %8, metadata !421, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i64 0, metadata !426, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !427, metadata !DIExpression()), !dbg !677
  %47 = load ptr, ptr %28, align 8, !dbg !675, !tbaa !431
  store double %handler_result1, ptr %47, align 8, !dbg !678, !tbaa !399
  %48 = fneg double %36, !dbg !679
  %49 = fmul double %handler_result, %48, !dbg !680
  %50 = call i32 @gsl_blas_daxpy(double noundef %49, ptr noundef nonnull %7, ptr noundef nonnull %5) #5, !dbg !681
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #5, !dbg !682
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5, !dbg !682
  br label %51

51:                                               ; preds = %38, %29
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #5, !dbg !683
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5, !dbg !683
  %52 = add nuw i64 %30, 1, !dbg !684
  tail call void @llvm.dbg.value(metadata i64 %52, metadata !582, metadata !DIExpression()), !dbg !622
  %53 = icmp eq i64 %52, %2, !dbg !685
  br i1 %53, label %54, label %29, !dbg !624, !llvm.loop !686

54:                                               ; preds = %51, %20, %19, %15
  ret void, !dbg !688
}

declare !dbg !689 i32 @gsl_permute_vector_inverse(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !693 i32 @gsl_linalg_QR_Qvec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_COD_lssolve2(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10) local_unnamed_addr #0 !dbg !694 {
  %12 = alloca %struct._gsl_matrix_const_view, align 8, !DIAssignID !722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !711, metadata !DIExpression(), metadata !722, metadata ptr %12, metadata !DIExpression()), !dbg !723
  %13 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !724
  call void @llvm.dbg.assign(metadata i1 undef, metadata !720, metadata !DIExpression(), metadata !724, metadata ptr %13, metadata !DIExpression()), !dbg !723
  %14 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !725
  call void @llvm.dbg.assign(metadata i1 undef, metadata !721, metadata !DIExpression(), metadata !725, metadata ptr %14, metadata !DIExpression()), !dbg !723
  tail call void @llvm.dbg.value(metadata double %0, metadata !698, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !699, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !700, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !701, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !702, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !703, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !704, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !705, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !706, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !707, metadata !DIExpression()), !dbg !726
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !708, metadata !DIExpression()), !dbg !726
  %15 = load i64, ptr %1, align 8, !dbg !727, !tbaa !232
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !709, metadata !DIExpression()), !dbg !726
  %16 = getelementptr inbounds %struct.gsl_matrix, ptr %1, i64 0, i32 1, !dbg !728
  %17 = load i64, ptr %16, align 8, !dbg !728, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !710, metadata !DIExpression()), !dbg !726
  %18 = icmp ult i64 %15, %17, !dbg !729
  br i1 %18, label %19, label %20, !dbg !730

19:                                               ; preds = %11
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 233, i32 noundef 19) #5, !dbg !731
  br label %55, !dbg !731

20:                                               ; preds = %11
  %21 = load i64, ptr %6, align 8, !dbg !734, !tbaa !242
  %22 = icmp eq i64 %15, %21, !dbg !735
  br i1 %22, label %24, label %23, !dbg !736

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 237, i32 noundef 19) #5, !dbg !737
  br label %55, !dbg !737

24:                                               ; preds = %20
  %25 = icmp ult i64 %17, %5, !dbg !740
  br i1 %25, label %26, label %27, !dbg !741

26:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 19) #5, !dbg !742
  br label %55, !dbg !742

27:                                               ; preds = %24
  %28 = load i64, ptr %7, align 8, !dbg !745, !tbaa !242
  %29 = icmp eq i64 %17, %28, !dbg !746
  br i1 %29, label %31, label %30, !dbg !747

30:                                               ; preds = %27
  tail call void @gsl_error(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 245, i32 noundef 19) #5, !dbg !748
  br label %55, !dbg !748

31:                                               ; preds = %27
  %32 = load i64, ptr %8, align 8, !dbg !751, !tbaa !242
  %33 = icmp eq i64 %15, %32, !dbg !752
  br i1 %33, label %35, label %34, !dbg !753

34:                                               ; preds = %31
  tail call void @gsl_error(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 19) #5, !dbg !754
  br label %55, !dbg !754

35:                                               ; preds = %31
  %36 = load i64, ptr %9, align 8, !dbg !757, !tbaa !232
  %37 = icmp eq i64 %36, %5, !dbg !758
  br i1 %37, label %38, label %42, !dbg !759

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.gsl_matrix, ptr %9, i64 0, i32 1, !dbg !760
  %40 = load i64, ptr %39, align 8, !dbg !760, !tbaa !240
  %41 = icmp eq i64 %40, %5, !dbg !761
  br i1 %41, label %43, label %42, !dbg !762

42:                                               ; preds = %38, %35
  tail call void @gsl_error(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 253, i32 noundef 19) #5, !dbg !763
  br label %55, !dbg !763

43:                                               ; preds = %38
  %44 = load i64, ptr %10, align 8, !dbg !766, !tbaa !242
  %45 = icmp eq i64 %44, %5, !dbg !767
  br i1 %45, label %47, label %46, !dbg !768

46:                                               ; preds = %43
  tail call void @gsl_error(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 19) #5, !dbg !769
  br label %55, !dbg !769

47:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %12) #5, !dbg !772
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %12, ptr noundef nonnull %1, i64 noundef 0, i64 noundef 0, i64 noundef %5, i64 noundef %5) #5, !dbg !773
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #5, !dbg !774
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %13, ptr noundef nonnull %8, i64 noundef 0, i64 noundef %5) #5, !dbg !775
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #5, !dbg !776
  call void @gsl_vector_subvector(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %14, ptr noundef nonnull %7, i64 noundef 0, i64 noundef %5) #5, !dbg !777
  call void @gsl_vector_set_zero(ptr noundef nonnull %7) #5, !dbg !778
  %48 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %8, ptr noundef nonnull %6) #5, !dbg !779
  %49 = call i32 @gsl_linalg_QR_QTvec(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %8) #5, !dbg !780
  call fastcc void @cod_trireg_solve(ptr noundef nonnull %12, double noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %9, ptr noundef nonnull %14, ptr noundef nonnull %10), !dbg !781
  %50 = call i32 @gsl_vector_memcpy(ptr noundef nonnull %10, ptr noundef nonnull %14) #5, !dbg !782
  call fastcc void @cod_householder_Zvec(ptr noundef nonnull %1, ptr noundef %3, i64 noundef %5, ptr noundef nonnull %7), !dbg !783
  %51 = call i32 @gsl_permute_vector_inverse(ptr noundef %4, ptr noundef nonnull %7) #5, !dbg !784
  %52 = call i32 @gsl_blas_dtrmv(i32 noundef 121, i32 noundef 111, i32 noundef 131, ptr noundef nonnull %12, ptr noundef nonnull %10) #5, !dbg !785
  %53 = call i32 @gsl_vector_sub(ptr noundef nonnull %13, ptr noundef nonnull %10) #5, !dbg !786
  %54 = call i32 @gsl_linalg_QR_Qvec(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %8) #5, !dbg !787
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #5, !dbg !788
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #5, !dbg !788
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %12) #5, !dbg !788
  br label %55

55:                                               ; preds = %47, %46, %42, %34, %30, %26, %23, %19
  %56 = phi i32 [ 19, %19 ], [ 19, %23 ], [ 19, %26 ], [ 19, %30 ], [ 19, %34 ], [ 19, %42 ], [ 19, %46 ], [ 0, %47 ], !dbg !789
  ret i32 %56, !dbg !790
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cod_trireg_solve(ptr noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !dbg !791 {
  %7 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !833
  call void @llvm.dbg.assign(metadata i1 undef, metadata !802, metadata !DIExpression(), metadata !833, metadata ptr %7, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !795, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata double %1, metadata !796, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !797, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !798, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !799, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !800, metadata !DIExpression()), !dbg !834
  %8 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !835
  %9 = load i64, ptr %8, align 8, !dbg !835, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !801, metadata !DIExpression()), !dbg !834
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #5, !dbg !836
  call void @gsl_matrix_const_diagonal(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %7, ptr noundef %0) #5, !dbg !837
  %10 = fcmp ugt double %1, 0.000000e+00, !dbg !838
  br i1 %10, label %12, label %11, !dbg !840

11:                                               ; preds = %6
  call void @gsl_error(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 706, i32 noundef 4) #5, !dbg !841
  br label %139, !dbg !841

12:                                               ; preds = %6
  %13 = call i32 @gsl_matrix_transpose_tricpy(i8 noundef signext 85, i32 noundef 0, ptr noundef %3, ptr noundef nonnull %0) #5, !dbg !844
  %14 = call i32 @gsl_vector_memcpy(ptr noundef %5, ptr noundef nonnull %7) #5, !dbg !845
  %15 = call i32 @gsl_vector_memcpy(ptr noundef %4, ptr noundef %2) #5, !dbg !846
  tail call void @llvm.dbg.value(metadata i64 0, metadata !804, metadata !DIExpression()), !dbg !834
  %16 = icmp eq i64 %9, 0, !dbg !847
  br i1 %16, label %137, label %17, !dbg !848

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 3
  %19 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 2
  %20 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 2
  %21 = getelementptr inbounds %struct.gsl_vector, ptr %4, i64 0, i32 1
  %22 = getelementptr inbounds %struct.gsl_vector, ptr %5, i64 0, i32 2
  %23 = getelementptr inbounds %struct.gsl_vector, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %18, align 8, !dbg !849, !tbaa !374
  %25 = load i64, ptr %19, align 8, !dbg !859, !tbaa !376
  br label %28, !dbg !848

26:                                               ; preds = %127
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !804, metadata !DIExpression()), !dbg !834
  %27 = icmp eq i64 %35, %9, !dbg !847
  br i1 %27, label %137, label %28, !dbg !848, !llvm.loop !860

28:                                               ; preds = %26, %17
  %29 = phi i64 [ %25, %17 ], [ %129, %26 ], !dbg !859
  %30 = phi ptr [ %24, %17 ], [ %130, %26 ], !dbg !849
  %31 = phi i64 [ 0, %17 ], [ %35, %26 ]
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !804, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !806, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !854, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !855, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !856, metadata !DIExpression()), !dbg !863
  tail call void @llvm.dbg.value(metadata double %1, metadata !857, metadata !DIExpression()), !dbg !863
  %32 = mul i64 %29, %31, !dbg !864
  %33 = getelementptr double, ptr %30, i64 %32, !dbg !865
  %34 = getelementptr double, ptr %33, i64 %31, !dbg !865
  store double %1, ptr %34, align 8, !dbg !866, !tbaa !399
  %35 = add nuw i64 %31, 1, !dbg !867
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !805, metadata !DIExpression()), !dbg !834
  %36 = icmp ult i64 %35, %9, !dbg !869
  br i1 %36, label %42, label %37, !dbg !871

37:                                               ; preds = %42, %28
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !805, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !806, metadata !DIExpression()), !dbg !862
  %38 = load ptr, ptr %20, align 8, !dbg !872, !tbaa !431
  %39 = load i64, ptr %21, align 8, !dbg !874, !tbaa !433
  %40 = load ptr, ptr %22, align 8, !dbg !875, !tbaa !431
  %41 = load i64, ptr %23, align 8, !dbg !877, !tbaa !433
  br label %49, !dbg !878

42:                                               ; preds = %42, %28
  %43 = phi i64 [ %47, %42 ], [ %35, %28 ]
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !805, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !854, metadata !DIExpression()), !dbg !879
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !855, metadata !DIExpression()), !dbg !879
  tail call void @llvm.dbg.value(metadata i64 %43, metadata !856, metadata !DIExpression()), !dbg !879
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !857, metadata !DIExpression()), !dbg !879
  %44 = mul i64 %43, %29, !dbg !882
  %45 = getelementptr double, ptr %30, i64 %44, !dbg !883
  %46 = getelementptr double, ptr %45, i64 %43, !dbg !883
  store double 0.000000e+00, ptr %46, align 8, !dbg !884, !tbaa !399
  %47 = add nuw i64 %43, 1, !dbg !885
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !805, metadata !DIExpression()), !dbg !834
  %48 = icmp ult i64 %47, %9, !dbg !869
  br i1 %48, label %42, label %37, !dbg !871, !llvm.loop !886

49:                                               ; preds = %127, %37
  %50 = phi i64 [ %129, %127 ], [ %29, %37 ], !dbg !888
  %51 = phi ptr [ %130, %127 ], [ %30, %37 ], !dbg !897
  %52 = phi i64 [ %131, %127 ], [ %41, %37 ], !dbg !877
  %53 = phi ptr [ %132, %127 ], [ %40, %37 ], !dbg !875
  %54 = phi i64 [ %133, %127 ], [ %39, %37 ], !dbg !874
  %55 = phi ptr [ %134, %127 ], [ %38, %37 ], !dbg !872
  %56 = phi i64 [ %128, %127 ], [ %31, %37 ]
  %57 = phi double [ %135, %127 ], [ 0.000000e+00, %37 ]
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !805, metadata !DIExpression()), !dbg !834
  tail call void @llvm.dbg.value(metadata double %57, metadata !806, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !630, metadata !DIExpression()), !dbg !898
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !635, metadata !DIExpression()), !dbg !898
  %58 = mul i64 %54, %56, !dbg !899
  %59 = getelementptr inbounds double, ptr %55, i64 %58, !dbg !900
  %60 = load double, ptr %59, align 8, !dbg !900, !tbaa !399
  tail call void @llvm.dbg.value(metadata double %60, metadata !815, metadata !DIExpression()), !dbg !901
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !630, metadata !DIExpression()), !dbg !902
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !635, metadata !DIExpression()), !dbg !902
  %61 = mul i64 %52, %56, !dbg !903
  %62 = getelementptr inbounds double, ptr %53, i64 %61, !dbg !904
  %63 = load double, ptr %62, align 8, !dbg !904, !tbaa !399
  tail call void @llvm.dbg.value(metadata double %63, metadata !816, metadata !DIExpression()), !dbg !901
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !893, metadata !DIExpression()), !dbg !905
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !894, metadata !DIExpression()), !dbg !905
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !895, metadata !DIExpression()), !dbg !905
  %64 = mul i64 %50, %56, !dbg !906
  %65 = getelementptr double, ptr %51, i64 %64, !dbg !907
  %66 = getelementptr double, ptr %65, i64 %56, !dbg !907
  %67 = load double, ptr %66, align 8, !dbg !907, !tbaa !399
  tail call void @llvm.dbg.value(metadata double %67, metadata !817, metadata !DIExpression()), !dbg !901
  %68 = fcmp oeq double %67, 0.000000e+00, !dbg !908
  br i1 %68, label %69, label %71, !dbg !910

69:                                               ; preds = %49
  %70 = add nuw i64 %56, 1, !dbg !911
  br label %127, !dbg !910

71:                                               ; preds = %49
  %72 = call double @llvm.fabs.f64(double %63), !dbg !912
  %73 = call double @llvm.fabs.f64(double %67), !dbg !913
  %74 = fcmp olt double %72, %73, !dbg !914
  br i1 %74, label %75, label %82, !dbg !915

75:                                               ; preds = %71
  %76 = fdiv double %63, %67, !dbg !916
  tail call void @llvm.dbg.value(metadata double %76, metadata !818, metadata !DIExpression()), !dbg !917
  %77 = fmul double %76, 2.500000e-01, !dbg !918
  %78 = fmul double %76, %77, !dbg !919
  %handler_result = call double @fAddHandlerDouble(double %78, double 2.500000e-01), !dbg !920
  %79 = call double @sqrt(double noundef %handler_result) #5, !dbg !920
  %80 = fdiv double 5.000000e-01, %79, !dbg !921
  tail call void @llvm.dbg.value(metadata double %80, metadata !810, metadata !DIExpression()), !dbg !901
  %81 = fmul double %76, %80, !dbg !922
  tail call void @llvm.dbg.value(metadata double %81, metadata !814, metadata !DIExpression()), !dbg !901
  br label %89, !dbg !923

82:                                               ; preds = %71
  %83 = fdiv double %67, %63, !dbg !924
  tail call void @llvm.dbg.value(metadata double %83, metadata !821, metadata !DIExpression()), !dbg !925
  %84 = fmul double %83, 2.500000e-01, !dbg !926
  %85 = fmul double %83, %84, !dbg !927
  %handler_result1 = call double @fAddHandlerDouble(double %85, double 2.500000e-01), !dbg !928
  %86 = call double @sqrt(double noundef %handler_result1) #5, !dbg !928
  %87 = fdiv double 5.000000e-01, %86, !dbg !929
  tail call void @llvm.dbg.value(metadata double %87, metadata !814, metadata !DIExpression()), !dbg !901
  %88 = fmul double %83, %87, !dbg !930
  tail call void @llvm.dbg.value(metadata double %88, metadata !810, metadata !DIExpression()), !dbg !901
  br label %89

89:                                               ; preds = %82, %75
  %90 = phi double [ %81, %75 ], [ %87, %82 ], !dbg !931
  %91 = phi double [ %80, %75 ], [ %88, %82 ], !dbg !931
  tail call void @llvm.dbg.value(metadata double %91, metadata !810, metadata !DIExpression()), !dbg !901
  tail call void @llvm.dbg.value(metadata double %90, metadata !814, metadata !DIExpression()), !dbg !901
  %92 = fmul double %63, %90, !dbg !932
  %93 = fmul double %67, %91, !dbg !933
  %handler_result2 = call double @fAddHandlerDouble(double %92, double %93), !dbg !934
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !823, metadata !DIExpression()), !dbg !935
  %94 = fmul double %60, %90, !dbg !934
  %95 = fmul double %57, %91, !dbg !936
  %handler_result3 = call double @fAddHandlerDouble(double %94, double %95), !dbg !937
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !825, metadata !DIExpression()), !dbg !935
  %96 = fmul double %57, %90, !dbg !937
  %97 = fmul double %60, %91, !dbg !938
  %handler_result4 = call double @fSubHandlerDouble(double %96, double %97), !dbg !939
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !806, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !421, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !426, metadata !DIExpression()), !dbg !941
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !427, metadata !DIExpression()), !dbg !941
  %98 = load ptr, ptr %22, align 8, !dbg !939, !tbaa !431
  %99 = load i64, ptr %23, align 8, !dbg !942, !tbaa !433
  %100 = mul i64 %99, %56, !dbg !943
  %101 = getelementptr inbounds double, ptr %98, i64 %100, !dbg !944
  store double %handler_result2, ptr %101, align 8, !dbg !945, !tbaa !399
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !854, metadata !DIExpression()), !dbg !946
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !855, metadata !DIExpression()), !dbg !946
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !856, metadata !DIExpression()), !dbg !946
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !857, metadata !DIExpression()), !dbg !946
  %102 = load ptr, ptr %18, align 8, !dbg !948, !tbaa !374
  %103 = load i64, ptr %19, align 8, !dbg !949, !tbaa !376
  %104 = mul i64 %103, %56, !dbg !950
  %105 = getelementptr double, ptr %102, i64 %104, !dbg !951
  %106 = getelementptr double, ptr %105, i64 %56, !dbg !951
  store double %handler_result2, ptr %106, align 8, !dbg !952, !tbaa !399
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !421, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !426, metadata !DIExpression()), !dbg !953
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !427, metadata !DIExpression()), !dbg !953
  %107 = load ptr, ptr %20, align 8, !dbg !955, !tbaa !431
  %108 = load i64, ptr %21, align 8, !dbg !956, !tbaa !433
  %109 = mul i64 %108, %56, !dbg !957
  %110 = getelementptr inbounds double, ptr %107, i64 %109, !dbg !958
  store double %handler_result3, ptr %110, align 8, !dbg !959, !tbaa !399
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !803, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !834
  %111 = add nuw i64 %56, 1, !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %111, metadata !803, metadata !DIExpression()), !dbg !834
  %112 = icmp ult i64 %111, %9, !dbg !961
  br i1 %112, label %113, label %127, !dbg !962

113:                                              ; preds = %113, %89
  %114 = phi i64 [ %125, %113 ], [ %111, %89 ]
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !893, metadata !DIExpression()), !dbg !963
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !894, metadata !DIExpression()), !dbg !963
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !895, metadata !DIExpression()), !dbg !963
  %115 = mul i64 %114, %103, !dbg !965
  %116 = getelementptr double, ptr %102, i64 %115, !dbg !966
  %117 = getelementptr double, ptr %116, i64 %56, !dbg !966
  %118 = load double, ptr %117, align 8, !dbg !966, !tbaa !399
  tail call void @llvm.dbg.value(metadata double %118, metadata !826, metadata !DIExpression()), !dbg !967
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !893, metadata !DIExpression()), !dbg !968
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !894, metadata !DIExpression()), !dbg !968
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !895, metadata !DIExpression()), !dbg !968
  %119 = getelementptr double, ptr %116, i64 %114, !dbg !970
  %120 = load double, ptr %119, align 8, !dbg !970, !tbaa !399
  tail call void @llvm.dbg.value(metadata double %120, metadata !830, metadata !DIExpression()), !dbg !967
  %121 = fmul double %90, %118, !dbg !971
  %122 = fmul double %91, %120, !dbg !972
  %handler_result5 = call double @fAddHandlerDouble(double %121, double %122), !dbg !973
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !831, metadata !DIExpression()), !dbg !967
  %123 = fmul double %90, %120, !dbg !973
  %124 = fmul double %91, %118, !dbg !974
  %handler_result6 = call double @fSubHandlerDouble(double %123, double %124), !dbg !975
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !832, metadata !DIExpression()), !dbg !967
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !854, metadata !DIExpression()), !dbg !977
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !855, metadata !DIExpression()), !dbg !977
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !856, metadata !DIExpression()), !dbg !977
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !857, metadata !DIExpression()), !dbg !977
  store double %handler_result5, ptr %117, align 8, !dbg !975, !tbaa !399
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !854, metadata !DIExpression()), !dbg !978
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !855, metadata !DIExpression()), !dbg !978
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !856, metadata !DIExpression()), !dbg !978
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !857, metadata !DIExpression()), !dbg !978
  store double %handler_result6, ptr %119, align 8, !dbg !980, !tbaa !399
  tail call void @llvm.dbg.value(metadata i64 %114, metadata !803, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !834
  %125 = add nuw i64 %114, 1, !dbg !960
  tail call void @llvm.dbg.value(metadata i64 %125, metadata !803, metadata !DIExpression()), !dbg !834
  %126 = icmp ult i64 %125, %9, !dbg !961
  br i1 %126, label %113, label %127, !dbg !962, !llvm.loop !981

127:                                              ; preds = %113, %89, %69
  %128 = phi i64 [ %70, %69 ], [ %111, %89 ], [ %111, %113 ], !dbg !911
  %129 = phi i64 [ %50, %69 ], [ %103, %89 ], [ %103, %113 ]
  %130 = phi ptr [ %51, %69 ], [ %102, %89 ], [ %102, %113 ]
  %131 = phi i64 [ %52, %69 ], [ %99, %89 ], [ %99, %113 ]
  %132 = phi ptr [ %53, %69 ], [ %98, %89 ], [ %98, %113 ]
  %133 = phi i64 [ %54, %69 ], [ %108, %89 ], [ %108, %113 ]
  %134 = phi ptr [ %55, %69 ], [ %107, %89 ], [ %107, %113 ]
  %135 = phi double [ %57, %69 ], [ %handler_result4, %89 ], [ %handler_result4, %113 ], !dbg !862
  tail call void @llvm.dbg.value(metadata double %135, metadata !806, metadata !DIExpression()), !dbg !862
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !805, metadata !DIExpression()), !dbg !834
  %136 = icmp ult i64 %128, %9, !dbg !983
  br i1 %136, label %49, label %26, !dbg !878, !llvm.loop !984

137:                                              ; preds = %26, %12
  %138 = call i32 @gsl_blas_dtrsv(i32 noundef 122, i32 noundef 112, i32 noundef 131, ptr noundef %3, ptr noundef %4) #5, !dbg !986
  br label %139, !dbg !987

139:                                              ; preds = %137, %11
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #5, !dbg !988
  ret void, !dbg !988
}

declare !dbg !989 i32 @gsl_blas_dtrmv(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !990 i32 @gsl_vector_sub(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_COD_unpack(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 !dbg !991 {
  %8 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1023
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1012, metadata !DIExpression(), metadata !1023, metadata ptr %8, metadata !DIExpression()), !dbg !1024
  %9 = alloca %struct._gsl_matrix_const_view, align 8, !DIAssignID !1025
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1013, metadata !DIExpression(), metadata !1025, metadata ptr %9, metadata !DIExpression()), !dbg !1024
  %10 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !1026
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1014, metadata !DIExpression(), metadata !1026, metadata ptr %10, metadata !DIExpression()), !dbg !1027
  %11 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1028
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1018, metadata !DIExpression(), metadata !1028, metadata ptr %11, metadata !DIExpression()), !dbg !1027
  %12 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1029
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1020, metadata !DIExpression(), metadata !1029, metadata ptr %12, metadata !DIExpression()), !dbg !1030
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !995, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !996, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !997, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !998, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !999, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1000, metadata !DIExpression()), !dbg !1031
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1001, metadata !DIExpression()), !dbg !1031
  %13 = load i64, ptr %0, align 8, !dbg !1032, !tbaa !232
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1002, metadata !DIExpression()), !dbg !1031
  %14 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1033
  %15 = load i64, ptr %14, align 8, !dbg !1033, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %15, metadata !1003, metadata !DIExpression()), !dbg !1031
  %16 = load i64, ptr %1, align 8, !dbg !1034, !tbaa !242
  %17 = tail call i64 @llvm.umin.i64(i64 %13, i64 %15), !dbg !1035
  %18 = icmp eq i64 %16, %17, !dbg !1036
  br i1 %18, label %20, label %19, !dbg !1037

19:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 318, i32 noundef 19) #5, !dbg !1038
  br label %73, !dbg !1038

20:                                               ; preds = %7
  %21 = load i64, ptr %2, align 8, !dbg !1041, !tbaa !242
  %22 = icmp eq i64 %21, %16, !dbg !1042
  br i1 %22, label %24, label %23, !dbg !1043

23:                                               ; preds = %20
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 322, i32 noundef 19) #5, !dbg !1044
  br label %73, !dbg !1044

24:                                               ; preds = %20
  %25 = icmp ult i64 %16, %3, !dbg !1047
  br i1 %25, label %26, label %27, !dbg !1048

26:                                               ; preds = %24
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 326, i32 noundef 19) #5, !dbg !1049
  br label %73, !dbg !1049

27:                                               ; preds = %24
  %28 = load i64, ptr %4, align 8, !dbg !1052, !tbaa !232
  %29 = icmp eq i64 %28, %13, !dbg !1053
  br i1 %29, label %30, label %34, !dbg !1054

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gsl_matrix, ptr %4, i64 0, i32 1, !dbg !1055
  %32 = load i64, ptr %31, align 8, !dbg !1055, !tbaa !240
  %33 = icmp eq i64 %32, %13, !dbg !1056
  br i1 %33, label %35, label %34, !dbg !1057

34:                                               ; preds = %30, %27
  tail call void @gsl_error(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 330, i32 noundef 19) #5, !dbg !1058
  br label %73, !dbg !1058

35:                                               ; preds = %30
  %36 = load i64, ptr %5, align 8, !dbg !1061, !tbaa !232
  %37 = icmp eq i64 %36, %13, !dbg !1062
  br i1 %37, label %38, label %42, !dbg !1063

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.gsl_matrix, ptr %5, i64 0, i32 1, !dbg !1064
  %40 = load i64, ptr %39, align 8, !dbg !1064, !tbaa !240
  %41 = icmp eq i64 %40, %15, !dbg !1065
  br i1 %41, label %43, label %42, !dbg !1066

42:                                               ; preds = %38, %35
  tail call void @gsl_error(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 334, i32 noundef 19) #5, !dbg !1067
  br label %73, !dbg !1067

43:                                               ; preds = %38
  %44 = load i64, ptr %6, align 8, !dbg !1070, !tbaa !232
  %45 = icmp eq i64 %44, %15, !dbg !1071
  br i1 %45, label %46, label %50, !dbg !1072

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.gsl_matrix, ptr %6, i64 0, i32 1, !dbg !1073
  %48 = load i64, ptr %47, align 8, !dbg !1073, !tbaa !240
  %49 = icmp eq i64 %48, %15, !dbg !1074
  br i1 %49, label %51, label %50, !dbg !1075

50:                                               ; preds = %46, %43
  tail call void @gsl_error(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 338, i32 noundef 19) #5, !dbg !1076
  br label %73, !dbg !1076

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #5, !dbg !1079
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %8, ptr noundef nonnull %5, i64 noundef 0, i64 noundef 0, i64 noundef %3, i64 noundef %3) #5, !dbg !1080
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #5, !dbg !1081
  call void @gsl_matrix_const_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_const_view) align 8 %9, ptr noundef nonnull %0, i64 noundef 0, i64 noundef 0, i64 noundef %3, i64 noundef %3) #5, !dbg !1082
  call void @gsl_matrix_set_identity(ptr noundef nonnull %4) #5, !dbg !1083
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1004, metadata !DIExpression()), !dbg !1024
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1024
  %52 = icmp eq i64 %16, 0, !dbg !1084
  br i1 %52, label %67, label %53, !dbg !1085

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %55 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %56, !dbg !1085

56:                                               ; preds = %56, %53
  %57 = phi i64 [ %16, %53 ], [ %58, %56 ]
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !1004, metadata !DIExpression()), !dbg !1024
  %58 = add i64 %57, -1, !dbg !1086
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1004, metadata !DIExpression()), !dbg !1024
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #5, !dbg !1087
  %59 = sub i64 %13, %58, !dbg !1088
  call void @gsl_matrix_const_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %10, ptr noundef nonnull %0, i64 noundef %58, i64 noundef %58, i64 noundef %59) #5, !dbg !1089
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #5, !dbg !1090
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %11, ptr noundef nonnull %4, i64 noundef %58, i64 noundef %58, i64 noundef %59, i64 noundef %59) #5, !dbg !1091
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !630, metadata !DIExpression()), !dbg !1092
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !635, metadata !DIExpression()), !dbg !1092
  %60 = load ptr, ptr %54, align 8, !dbg !1094, !tbaa !431
  %61 = load i64, ptr %55, align 8, !dbg !1095, !tbaa !433
  %62 = mul i64 %61, %58, !dbg !1096
  %63 = getelementptr inbounds double, ptr %60, i64 %62, !dbg !1097
  %64 = load double, ptr %63, align 8, !dbg !1097, !tbaa !399
  tail call void @llvm.dbg.value(metadata double %64, metadata !1019, metadata !DIExpression()), !dbg !1027
  %65 = call i32 @gsl_linalg_householder_hm(double noundef %64, ptr noundef nonnull %10, ptr noundef nonnull %11) #5, !dbg !1098
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #5, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #5, !dbg !1099
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1004, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1024
  %66 = icmp eq i64 %58, 0, !dbg !1084
  br i1 %66, label %67, label %56, !dbg !1085, !llvm.loop !1100

67:                                               ; preds = %56, %51
  call void @gsl_matrix_set_identity(ptr noundef nonnull %6) #5, !dbg !1102
  %68 = icmp ugt i64 %15, %3, !dbg !1103
  br i1 %68, label %69, label %71, !dbg !1104

69:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #5, !dbg !1105
  call void @gsl_matrix_row(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %12, ptr noundef nonnull %5, i64 noundef 0) #5, !dbg !1106
  %70 = call i32 @gsl_linalg_COD_matZ(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %12), !dbg !1107, !range !1108
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #5, !dbg !1109
  br label %71, !dbg !1110

71:                                               ; preds = %69, %67
  call void @gsl_matrix_set_zero(ptr noundef nonnull %5) #5, !dbg !1111
  %72 = call i32 @gsl_matrix_tricpy(i8 noundef signext 85, i32 noundef 1, ptr noundef nonnull %8, ptr noundef nonnull %9) #5, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #5, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #5, !dbg !1113
  br label %73

73:                                               ; preds = %71, %50, %42, %34, %26, %23, %19
  %74 = phi i32 [ 19, %19 ], [ 19, %23 ], [ 19, %26 ], [ 19, %34 ], [ 19, %42 ], [ 19, %50 ], [ 0, %71 ], !dbg !1114
  ret i32 %74, !dbg !1115
}

declare !dbg !1116 void @gsl_matrix_set_identity(ptr noundef) local_unnamed_addr #2

declare !dbg !1119 void @gsl_matrix_const_subcolumn(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1122 i32 @gsl_linalg_householder_hm(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1125 void @gsl_matrix_row(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_linalg_COD_matZ(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !dbg !1128 {
  %6 = alloca %struct._gsl_vector_const_view, align 8, !DIAssignID !1152
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1146, metadata !DIExpression(), metadata !1152, metadata ptr %6, metadata !DIExpression()), !dbg !1153
  %7 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1150, metadata !DIExpression(), metadata !1154, metadata ptr %7, metadata !DIExpression()), !dbg !1153
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1132, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1133, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1134, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1135, metadata !DIExpression()), !dbg !1155
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1136, metadata !DIExpression()), !dbg !1155
  %8 = load i64, ptr %3, align 8, !dbg !1156, !tbaa !232
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1137, metadata !DIExpression()), !dbg !1155
  %9 = getelementptr inbounds %struct.gsl_matrix, ptr %3, i64 0, i32 1, !dbg !1157
  %10 = load i64, ptr %9, align 8, !dbg !1157, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1138, metadata !DIExpression()), !dbg !1155
  %11 = load i64, ptr %1, align 8, !dbg !1158, !tbaa !242
  %12 = load i64, ptr %0, align 8, !dbg !1159, !tbaa !232
  %13 = getelementptr inbounds %struct.gsl_matrix, ptr %0, i64 0, i32 1, !dbg !1159
  %14 = load i64, ptr %13, align 8, !dbg !1159, !tbaa !240
  %15 = tail call i64 @llvm.umin.i64(i64 %12, i64 %14), !dbg !1159
  %16 = icmp eq i64 %11, %15, !dbg !1160
  br i1 %16, label %18, label %17, !dbg !1161

17:                                               ; preds = %5
  tail call void @gsl_error(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 398, i32 noundef 19) #5, !dbg !1162
  br label %43, !dbg !1162

18:                                               ; preds = %5
  %19 = icmp eq i64 %14, %10, !dbg !1165
  br i1 %19, label %21, label %20, !dbg !1166

20:                                               ; preds = %18
  tail call void @gsl_error(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 402, i32 noundef 19) #5, !dbg !1167
  br label %43, !dbg !1167

21:                                               ; preds = %18
  %22 = load i64, ptr %4, align 8, !dbg !1170, !tbaa !242
  %23 = icmp eq i64 %22, %8, !dbg !1171
  br i1 %23, label %25, label %24, !dbg !1172

24:                                               ; preds = %21
  tail call void @gsl_error(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 406, i32 noundef 19) #5, !dbg !1173
  br label %43, !dbg !1173

25:                                               ; preds = %21
  %26 = icmp ule i64 %10, %2, !dbg !1176
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1139, metadata !DIExpression()), !dbg !1177
  %27 = icmp eq i64 %2, 0
  %28 = or i1 %26, %27, !dbg !1178
  br i1 %28, label %43, label %29, !dbg !1178

29:                                               ; preds = %25
  %30 = sub i64 %10, %2
  %31 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 2
  %32 = getelementptr inbounds %struct.gsl_vector, ptr %1, i64 0, i32 1
  br label %33, !dbg !1179

33:                                               ; preds = %33, %29
  %34 = phi i64 [ %2, %29 ], [ %35, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1139, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1177
  %35 = add i64 %34, -1, !dbg !1180
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1139, metadata !DIExpression()), !dbg !1177
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #5, !dbg !1181
  call void @gsl_matrix_const_subrow(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_const_view) align 8 %6, ptr noundef nonnull %0, i64 noundef %35, i64 noundef %2, i64 noundef %30) #5, !dbg !1182
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #5, !dbg !1183
  %36 = sub i64 %10, %35, !dbg !1184
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %7, ptr noundef nonnull %3, i64 noundef 0, i64 noundef %35, i64 noundef %8, i64 noundef %36) #5, !dbg !1185
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !630, metadata !DIExpression()), !dbg !1186
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !635, metadata !DIExpression()), !dbg !1186
  %37 = load ptr, ptr %31, align 8, !dbg !1188, !tbaa !431
  %38 = load i64, ptr %32, align 8, !dbg !1189, !tbaa !433
  %39 = mul i64 %38, %35, !dbg !1190
  %40 = getelementptr inbounds double, ptr %37, i64 %39, !dbg !1191
  %41 = load double, ptr %40, align 8, !dbg !1191, !tbaa !399
  tail call void @llvm.dbg.value(metadata double %41, metadata !1151, metadata !DIExpression()), !dbg !1153
  call fastcc void @cod_householder_mh(double noundef %41, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4), !dbg !1192
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #5, !dbg !1193
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #5, !dbg !1193
  %42 = icmp eq i64 %35, 0, !dbg !1194
  br i1 %42, label %43, label %33, !dbg !1179, !llvm.loop !1195

43:                                               ; preds = %33, %25, %24, %20, %17
  %44 = phi i32 [ 19, %17 ], [ 19, %20 ], [ 19, %24 ], [ 0, %25 ], [ 0, %33 ], !dbg !1198
  ret i32 %44, !dbg !1199
}

declare !dbg !1200 void @gsl_matrix_set_zero(ptr noundef) local_unnamed_addr #2

declare !dbg !1201 i32 @gsl_matrix_tricpy(i8 noundef signext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1205 void @gsl_matrix_const_subrow(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cod_householder_mh(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !1206 {
  %5 = alloca %struct._gsl_vector_view, align 8, !DIAssignID !1221
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1219, metadata !DIExpression(), metadata !1221, metadata ptr %5, metadata !DIExpression()), !dbg !1222
  %6 = alloca %struct._gsl_matrix_view, align 8, !DIAssignID !1223
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1220, metadata !DIExpression(), metadata !1223, metadata ptr %6, metadata !DIExpression()), !dbg !1222
  tail call void @llvm.dbg.value(metadata double %0, metadata !1210, metadata !DIExpression()), !dbg !1224
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1211, metadata !DIExpression()), !dbg !1224
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1212, metadata !DIExpression()), !dbg !1224
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1213, metadata !DIExpression()), !dbg !1224
  %7 = fcmp oeq double %0, 0.000000e+00, !dbg !1225
  br i1 %7, label %19, label %8, !dbg !1226

8:                                                ; preds = %4
  %9 = load i64, ptr %2, align 8, !dbg !1227, !tbaa !232
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1214, metadata !DIExpression()), !dbg !1222
  %10 = getelementptr inbounds %struct.gsl_matrix, ptr %2, i64 0, i32 1, !dbg !1228
  %11 = load i64, ptr %10, align 8, !dbg !1228, !tbaa !240
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1217, metadata !DIExpression()), !dbg !1222
  %12 = load i64, ptr %1, align 8, !dbg !1229, !tbaa !242
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1218, metadata !DIExpression()), !dbg !1222
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #5, !dbg !1230
  call void @gsl_matrix_subcolumn(ptr dead_on_unwind nonnull writable sret(%struct._gsl_vector_view) align 8 %5, ptr noundef nonnull %2, i64 noundef 0, i64 noundef 0, i64 noundef %9) #5, !dbg !1231
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #5, !dbg !1232
  %13 = sub i64 %11, %12, !dbg !1233
  call void @gsl_matrix_submatrix(ptr dead_on_unwind nonnull writable sret(%struct._gsl_matrix_view) align 8 %6, ptr noundef nonnull %2, i64 noundef 0, i64 noundef %13, i64 noundef %9, i64 noundef %12) #5, !dbg !1234
  %14 = call i32 @gsl_vector_memcpy(ptr noundef %3, ptr noundef nonnull %5) #5, !dbg !1235
  %15 = call i32 @gsl_blas_dgemv(i32 noundef 111, double noundef 1.000000e+00, ptr noundef nonnull %6, ptr noundef nonnull %1, double noundef 1.000000e+00, ptr noundef %3) #5, !dbg !1236
  %16 = fneg double %0, !dbg !1237
  %17 = call i32 @gsl_blas_daxpy(double noundef %16, ptr noundef %3, ptr noundef nonnull %5) #5, !dbg !1238
  %18 = call i32 @gsl_blas_dger(double noundef %16, ptr noundef %3, ptr noundef nonnull %1, ptr noundef nonnull %6) #5, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #5, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #5, !dbg !1240
  br label %19

19:                                               ; preds = %8, %4
  ret void, !dbg !1241
}

declare !dbg !1242 void @gsl_vector_set_all(ptr noundef, double noundef) local_unnamed_addr #2

declare !dbg !1245 void @gsl_matrix_subrow(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1248 double @gsl_blas_dnrm2(ptr noundef) local_unnamed_addr #2

declare !dbg !1251 double @gsl_hypot(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

declare !dbg !1255 void @gsl_blas_dscal(double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1258 void @gsl_matrix_subcolumn(ptr dead_on_unwind writable sret(%struct._gsl_vector_view) align 8, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1259 i32 @gsl_blas_dgemv(i32 noundef, double noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1262 i32 @gsl_blas_daxpy(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1265 i32 @gsl_blas_dger(double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1268 i32 @gsl_blas_ddot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1271 void @gsl_matrix_const_diagonal(ptr dead_on_unwind writable sret(%struct._gsl_vector_const_view) align 8, ptr noundef) local_unnamed_addr #2

declare !dbg !1274 i32 @gsl_matrix_transpose_tricpy(i8 noundef signext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !1275 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

declare double @fSubHandlerDouble(double, double)

declare double @fAddHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!82}
!llvm.module.flags = !{!142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "cod.c", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "536e54304ed0143b11e80c86b1d2097d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 31)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 27)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 20)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 153, type: !16, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 30)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 25)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 37)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !38, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 23)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 257, type: !33, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 330, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 17)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !52, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 338, type: !52, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !16, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 402, type: !33, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !2, line: 406, type: !16, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 460, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 19)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 464, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 15)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 647, type: !67, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 706, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 24)
!82 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !138, globals: !141, splitDebugInlining: false, nameTableKind: None)
!83 = !{!84, !123, !129, !134}
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 39, baseType: !86, size: 32, elements: !87)
!85 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!86 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!88 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!89 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!90 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!91 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!92 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!93 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!94 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!95 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!96 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!97 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!98 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!99 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!100 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!101 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!102 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!103 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!104 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!105 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!106 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!107 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!108 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!109 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!110 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!111 = !DIEnumerator(name: "GSL_ESING", value: 21)
!112 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!113 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!114 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!115 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!116 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!117 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!118 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!119 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!120 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!121 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!122 = !DIEnumerator(name: "GSL_EOF", value: 32)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_UPLO", file: !124, line: 48, baseType: !125, size: 32, elements: !126)
!124 = !DIFile(filename: "../gsl/gsl_cblas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "03ac5115536daff0db5f3e2b63839634")
!125 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!126 = !{!127, !128}
!127 = !DIEnumerator(name: "CblasUpper", value: 121)
!128 = !DIEnumerator(name: "CblasLower", value: 122)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_TRANSPOSE", file: !124, line: 47, baseType: !125, size: 32, elements: !130)
!130 = !{!131, !132, !133}
!131 = !DIEnumerator(name: "CblasNoTrans", value: 111)
!132 = !DIEnumerator(name: "CblasTrans", value: 112)
!133 = !DIEnumerator(name: "CblasConjTrans", value: 113)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "CBLAS_DIAG", file: !124, line: 49, baseType: !125, size: 32, elements: !135)
!135 = !{!136, !137}
!136 = !DIEnumerator(name: "CblasNonUnit", value: 131)
!137 = !DIEnumerator(name: "CblasUnit", value: 132)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!141 = !{!0, !7, !12, !14, !19, !24, !26, !31, !36, !41, !43, !48, !50, !55, !57, !59, !61, !63, !65, !70, !75, !77}
!142 = !{i32 7, !"Dwarf Version", i32 5}
!143 = !{i32 2, !"Debug Info Version", i32 3}
!144 = !{i32 1, !"wchar_size", i32 4}
!145 = !{i32 8, !"PIC Level", i32 2}
!146 = !{i32 7, !"PIE Level", i32 2}
!147 = !{i32 7, !"uwtable", i32 2}
!148 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!149 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!150 = distinct !DISubprogram(name: "gsl_linalg_COD_decomp_e", scope: !2, file: !2, line: 60, type: !151, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !192)
!151 = !DISubroutineType(types: !152)
!152 = !{!86, !153, !174, !174, !184, !140, !191, !174}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix", file: !155, line: 50, baseType: !156)
!155 = !DIFile(filename: "../gsl/gsl_matrix_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "8abdb641cd38b72e330b93b6fc6aef9c")
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 42, size: 384, elements: !157)
!157 = !{!158, !162, !163, !164, !165, !173}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "size1", scope: !156, file: !155, line: 44, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 18, baseType: !161)
!160 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "size2", scope: !156, file: !155, line: 45, baseType: !159, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tda", scope: !156, file: !155, line: 46, baseType: !159, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !156, file: !155, line: 47, baseType: !139, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !156, file: !155, line: 48, baseType: !166, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_block", file: !168, line: 44, baseType: !169)
!168 = !DIFile(filename: "../gsl/gsl_block_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "5e371590f329ba42fd19fc8c33477a3f")
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_block_struct", file: !168, line: 38, size: 128, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !169, file: !168, line: 40, baseType: !159, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !169, file: !168, line: 41, baseType: !139, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !156, file: !155, line: 49, baseType: !86, size: 32, offset: 320)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector", file: !176, line: 50, baseType: !177)
!176 = !DIFile(filename: "../gsl/gsl_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "01ba7cd7de10f3fa64dd78b7b86e4c27")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 42, size: 320, elements: !178)
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !177, file: !176, line: 44, baseType: !159, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !177, file: !176, line: 45, baseType: !159, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !177, file: !176, line: 46, baseType: !139, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !177, file: !176, line: 47, baseType: !166, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !177, file: !176, line: 48, baseType: !86, size: 32, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_permutation", file: !186, line: 47, baseType: !187)
!186 = !DIFile(filename: "../gsl/gsl_permutation.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "3f1dc4966e787f4bad2ce907e35d62b3")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_permutation_struct", file: !186, line: 41, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !187, file: !186, line: 43, baseType: !159, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !187, file: !186, line: 44, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !202, !203, !209, !210, !211, !219}
!193 = !DILocalVariable(name: "A", arg: 1, scope: !150, file: !2, line: 60, type: !153)
!194 = !DILocalVariable(name: "tau_Q", arg: 2, scope: !150, file: !2, line: 60, type: !174)
!195 = !DILocalVariable(name: "tau_Z", arg: 3, scope: !150, file: !2, line: 60, type: !174)
!196 = !DILocalVariable(name: "p", arg: 4, scope: !150, file: !2, line: 61, type: !184)
!197 = !DILocalVariable(name: "tol", arg: 5, scope: !150, file: !2, line: 61, type: !140)
!198 = !DILocalVariable(name: "rank", arg: 6, scope: !150, file: !2, line: 61, type: !191)
!199 = !DILocalVariable(name: "work", arg: 7, scope: !150, file: !2, line: 61, type: !174)
!200 = !DILocalVariable(name: "M", scope: !150, file: !2, line: 63, type: !201)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!202 = !DILocalVariable(name: "N", scope: !150, file: !2, line: 64, type: !201)
!203 = !DILocalVariable(name: "status", scope: !204, file: !2, line: 84, type: !86)
!204 = distinct !DILexicalBlock(scope: !205, file: !2, line: 83, column: 5)
!205 = distinct !DILexicalBlock(scope: !206, file: !2, line: 78, column: 12)
!206 = distinct !DILexicalBlock(scope: !207, file: !2, line: 74, column: 12)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 70, column: 12)
!208 = distinct !DILexicalBlock(scope: !150, file: !2, line: 66, column: 7)
!209 = !DILocalVariable(name: "signum", scope: !204, file: !2, line: 84, type: !86)
!210 = !DILocalVariable(name: "r", scope: !204, file: !2, line: 85, type: !159)
!211 = !DILocalVariable(name: "R_upper", scope: !212, file: !2, line: 106, type: !214)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 96, column: 9)
!213 = distinct !DILexicalBlock(scope: !204, file: !2, line: 95, column: 11)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_view", file: !155, line: 57, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_view", file: !155, line: 55, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 52, size: 384, elements: !217)
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !216, file: !155, line: 54, baseType: !154, size: 384)
!219 = !DILocalVariable(name: "t", scope: !212, file: !2, line: 107, type: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_view", file: !176, line: 57, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_view", file: !176, line: 55, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 52, size: 320, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !222, file: !176, line: 54, baseType: !175, size: 320)
!225 = distinct !DIAssignID()
!226 = !DILocation(line: 0, scope: !204)
!227 = distinct !DIAssignID()
!228 = !DILocation(line: 0, scope: !212)
!229 = distinct !DIAssignID()
!230 = !DILocation(line: 0, scope: !150)
!231 = !DILocation(line: 63, column: 23, scope: !150)
!232 = !{!233, !234, i64 0}
!233 = !{!"", !234, i64 0, !234, i64 8, !234, i64 16, !237, i64 24, !237, i64 32, !238, i64 40}
!234 = !{!"long", !235, i64 0}
!235 = !{!"omnipotent char", !236, i64 0}
!236 = !{!"Simple C/C++ TBAA"}
!237 = !{!"any pointer", !235, i64 0}
!238 = !{!"int", !235, i64 0}
!239 = !DILocation(line: 64, column: 23, scope: !150)
!240 = !{!233, !234, i64 8}
!241 = !DILocation(line: 66, column: 14, scope: !208)
!242 = !{!243, !234, i64 0}
!243 = !{!"", !234, i64 0, !234, i64 8, !237, i64 16, !237, i64 24, !238, i64 32}
!244 = !DILocation(line: 66, column: 22, scope: !208)
!245 = !DILocation(line: 66, column: 19, scope: !208)
!246 = !DILocation(line: 66, column: 7, scope: !150)
!247 = !DILocation(line: 68, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 68, column: 7)
!249 = distinct !DILexicalBlock(scope: !208, file: !2, line: 67, column: 5)
!250 = !DILocation(line: 70, column: 19, scope: !207)
!251 = !DILocation(line: 70, column: 24, scope: !207)
!252 = !DILocation(line: 70, column: 12, scope: !208)
!253 = !DILocation(line: 72, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 72, column: 7)
!255 = distinct !DILexicalBlock(scope: !207, file: !2, line: 71, column: 5)
!256 = !DILocation(line: 74, column: 15, scope: !206)
!257 = !{!258, !234, i64 0}
!258 = !{!"gsl_permutation_struct", !234, i64 0, !237, i64 8}
!259 = !DILocation(line: 74, column: 20, scope: !206)
!260 = !DILocation(line: 74, column: 12, scope: !207)
!261 = !DILocation(line: 76, column: 7, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !2, line: 76, column: 7)
!263 = distinct !DILexicalBlock(scope: !206, file: !2, line: 75, column: 5)
!264 = !DILocation(line: 78, column: 18, scope: !205)
!265 = !DILocation(line: 78, column: 23, scope: !205)
!266 = !DILocation(line: 78, column: 12, scope: !206)
!267 = !DILocation(line: 80, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 80, column: 7)
!269 = distinct !DILexicalBlock(scope: !205, file: !2, line: 79, column: 5)
!270 = !DILocation(line: 84, column: 7, scope: !204)
!271 = !DILocation(line: 88, column: 16, scope: !204)
!272 = !DILocation(line: 89, column: 11, scope: !273)
!273 = distinct !DILexicalBlock(scope: !204, file: !2, line: 89, column: 11)
!274 = !DILocation(line: 89, column: 11, scope: !204)
!275 = !DILocation(line: 93, column: 11, scope: !204)
!276 = !DILocation(line: 95, column: 13, scope: !213)
!277 = !DILocation(line: 95, column: 11, scope: !204)
!278 = !DILocation(line: 106, column: 11, scope: !212)
!279 = !DILocation(line: 106, column: 37, scope: !212)
!280 = !DILocation(line: 107, column: 11, scope: !212)
!281 = !DILocation(line: 107, column: 31, scope: !212)
!282 = !DILocation(line: 109, column: 11, scope: !212)
!283 = !DILocation(line: 110, column: 9, scope: !213)
!284 = !DILocation(line: 110, column: 9, scope: !212)
!285 = !DILocation(line: 112, column: 13, scope: !204)
!286 = !{!234, !234, i64 0}
!287 = !DILocation(line: 114, column: 7, scope: !204)
!288 = !DILocation(line: 115, column: 5, scope: !205)
!289 = !DILocation(line: 0, scope: !208)
!290 = !DILocation(line: 116, column: 1, scope: !150)
!291 = !DISubprogram(name: "gsl_error", scope: !85, file: !85, line: 77, type: !292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294, !294, !86, !86}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!296 = !DISubprogram(name: "gsl_linalg_QRPT_decomp", scope: !297, file: !297, line: 305, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!297 = !DIFile(filename: "../gsl/gsl_linalg.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "207a08de7165df3c48675386ae708207")
!298 = !DISubroutineType(types: !299)
!299 = !{!86, !153, !174, !184, !300, !174}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!301 = !DISubprogram(name: "gsl_linalg_QRPT_rank", scope: !297, file: !297, line: 365, type: !302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!302 = !DISubroutineType(types: !303)
!303 = !{!159, !304, !306}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!307 = !DISubprogram(name: "gsl_matrix_submatrix", scope: !155, file: !155, line: 101, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!308 = !DISubroutineType(types: !309)
!309 = !{!215, !153, !201, !201, !201, !201}
!310 = !DISubprogram(name: "gsl_vector_subvector", scope: !176, file: !176, line: 103, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!311 = !DISubroutineType(types: !312)
!312 = !{!221, !174, !159, !159}
!313 = distinct !DISubprogram(name: "cod_RZ", scope: !2, file: !2, line: 453, type: !314, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !316)
!314 = !DISubroutineType(cc: DW_CC_nocall, types: !315)
!315 = !{!86, !153, !174}
!316 = !{!317, !318, !319, !320, !321, !326, !330, !331, !332, !335}
!317 = !DILocalVariable(name: "A", arg: 1, scope: !313, file: !2, line: 453, type: !153)
!318 = !DILocalVariable(name: "tau", arg: 2, scope: !313, file: !2, line: 453, type: !174)
!319 = !DILocalVariable(name: "M", scope: !313, file: !2, line: 455, type: !201)
!320 = !DILocalVariable(name: "N", scope: !313, file: !2, line: 456, type: !201)
!321 = !DILocalVariable(name: "k", scope: !322, file: !2, line: 474, type: !159)
!322 = distinct !DILexicalBlock(scope: !323, file: !2, line: 473, column: 5)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 466, column: 12)
!324 = distinct !DILexicalBlock(scope: !325, file: !2, line: 462, column: 12)
!325 = distinct !DILexicalBlock(scope: !313, file: !2, line: 458, column: 7)
!326 = !DILocalVariable(name: "alpha", scope: !327, file: !2, line: 478, type: !139)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 477, column: 9)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 476, column: 7)
!329 = distinct !DILexicalBlock(scope: !322, file: !2, line: 476, column: 7)
!330 = !DILocalVariable(name: "z", scope: !327, file: !2, line: 479, type: !220)
!331 = !DILocalVariable(name: "tauk", scope: !327, file: !2, line: 480, type: !140)
!332 = !DILocalVariable(name: "w", scope: !333, file: !2, line: 488, type: !220)
!333 = distinct !DILexicalBlock(scope: !334, file: !2, line: 487, column: 13)
!334 = distinct !DILexicalBlock(scope: !327, file: !2, line: 486, column: 15)
!335 = !DILocalVariable(name: "B", scope: !333, file: !2, line: 489, type: !214)
!336 = distinct !DIAssignID()
!337 = !DILocation(line: 0, scope: !327)
!338 = distinct !DIAssignID()
!339 = !DILocation(line: 0, scope: !333)
!340 = distinct !DIAssignID()
!341 = !DILocation(line: 0, scope: !313)
!342 = !DILocation(line: 455, column: 23, scope: !313)
!343 = !DILocation(line: 456, column: 23, scope: !313)
!344 = !DILocation(line: 458, column: 12, scope: !325)
!345 = !DILocation(line: 458, column: 17, scope: !325)
!346 = !DILocation(line: 458, column: 7, scope: !313)
!347 = !DILocation(line: 460, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 460, column: 7)
!349 = distinct !DILexicalBlock(scope: !325, file: !2, line: 459, column: 5)
!350 = !DILocation(line: 462, column: 14, scope: !324)
!351 = !DILocation(line: 462, column: 12, scope: !325)
!352 = !DILocation(line: 464, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !2, line: 464, column: 7)
!354 = distinct !DILexicalBlock(scope: !324, file: !2, line: 463, column: 5)
!355 = !DILocation(line: 466, column: 14, scope: !323)
!356 = !DILocation(line: 466, column: 12, scope: !324)
!357 = !DILocation(line: 0, scope: !322)
!358 = !DILocation(line: 476, column: 21, scope: !328)
!359 = !DILocation(line: 476, column: 25, scope: !328)
!360 = !DILocation(line: 469, column: 7, scope: !361)
!361 = distinct !DILexicalBlock(scope: !323, file: !2, line: 467, column: 5)
!362 = !DILocation(line: 470, column: 7, scope: !361)
!363 = !DILocation(line: 476, column: 29, scope: !328)
!364 = !DILocalVariable(name: "m", arg: 1, scope: !365, file: !155, line: 310, type: !153)
!365 = distinct !DISubprogram(name: "gsl_matrix_ptr", scope: !155, file: !155, line: 310, type: !366, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !368)
!366 = !DISubroutineType(types: !367)
!367 = !{!139, !153, !201, !201}
!368 = !{!364, !369, !370}
!369 = !DILocalVariable(name: "i", arg: 2, scope: !365, file: !155, line: 310, type: !201)
!370 = !DILocalVariable(name: "j", arg: 3, scope: !365, file: !155, line: 310, type: !201)
!371 = !DILocation(line: 0, scope: !365, inlinedAt: !372)
!372 = distinct !DILocation(line: 478, column: 27, scope: !327)
!373 = !DILocation(line: 325, column: 25, scope: !365, inlinedAt: !372)
!374 = !{!233, !237, i64 24}
!375 = !DILocation(line: 325, column: 40, scope: !365, inlinedAt: !372)
!376 = !{!233, !234, i64 16}
!377 = !DILocation(line: 325, column: 35, scope: !365, inlinedAt: !372)
!378 = !DILocation(line: 325, column: 30, scope: !365, inlinedAt: !372)
!379 = !DILocation(line: 479, column: 11, scope: !327)
!380 = !DILocation(line: 479, column: 31, scope: !327)
!381 = !DILocalVariable(name: "alpha", arg: 1, scope: !382, file: !2, line: 500, type: !139)
!382 = distinct !DISubprogram(name: "cod_householder_transform", scope: !2, file: !2, line: 500, type: !383, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!140, !139, !174}
!385 = !{!381, !386, !387, !388, !389, !390}
!386 = !DILocalVariable(name: "v", arg: 2, scope: !382, file: !2, line: 500, type: !174)
!387 = !DILocalVariable(name: "beta", scope: !382, file: !2, line: 502, type: !140)
!388 = !DILocalVariable(name: "tau", scope: !382, file: !2, line: 502, type: !140)
!389 = !DILocalVariable(name: "xnorm", scope: !382, file: !2, line: 503, type: !140)
!390 = !DILocalVariable(name: "s", scope: !391, file: !2, line: 514, type: !140)
!391 = distinct !DILexicalBlock(scope: !382, file: !2, line: 513, column: 3)
!392 = !DILocation(line: 0, scope: !382, inlinedAt: !393)
!393 = distinct !DILocation(line: 483, column: 18, scope: !327)
!394 = !DILocation(line: 503, column: 18, scope: !382, inlinedAt: !393)
!395 = !DILocation(line: 505, column: 13, scope: !396, inlinedAt: !393)
!396 = distinct !DILexicalBlock(scope: !382, file: !2, line: 505, column: 7)
!397 = !DILocation(line: 505, column: 7, scope: !382, inlinedAt: !393)
!398 = !DILocation(line: 510, column: 13, scope: !382, inlinedAt: !393)
!399 = !{!400, !400, i64 0}
!400 = !{!"double", !235, i64 0}
!401 = !DILocation(line: 510, column: 20, scope: !382, inlinedAt: !393)
!402 = !DILocation(line: 510, column: 10, scope: !382, inlinedAt: !393)
!403 = !DILocation(line: 510, column: 44, scope: !382, inlinedAt: !393)
!404 = !DILocation(line: 510, column: 42, scope: !382, inlinedAt: !393)
!405 = !DILocation(line: 511, column: 17, scope: !382, inlinedAt: !393)
!406 = !DILocation(line: 511, column: 25, scope: !382, inlinedAt: !393)
!407 = !DILocation(line: 516, column: 9, scope: !408, inlinedAt: !393)
!408 = distinct !DILexicalBlock(scope: !391, file: !2, line: 516, column: 9)
!409 = !DILocation(line: 0, scope: !391, inlinedAt: !393)
!410 = !DILocation(line: 516, column: 17, scope: !408, inlinedAt: !393)
!411 = !DILocation(line: 516, column: 9, scope: !391, inlinedAt: !393)
!412 = !DILocation(line: 518, column: 29, scope: !413, inlinedAt: !393)
!413 = distinct !DILexicalBlock(scope: !408, file: !2, line: 517, column: 7)
!414 = !DILocation(line: 519, column: 7, scope: !413, inlinedAt: !393)
!415 = !DILocation(line: 522, column: 41, scope: !416, inlinedAt: !393)
!416 = distinct !DILexicalBlock(scope: !408, file: !2, line: 521, column: 7)
!417 = !DILocation(line: 522, column: 9, scope: !416, inlinedAt: !393)
!418 = !DILocation(line: 0, scope: !408, inlinedAt: !393)
!419 = !DILocation(line: 526, column: 12, scope: !391, inlinedAt: !393)
!420 = !DILocation(line: 529, column: 3, scope: !382, inlinedAt: !393)
!421 = !DILocalVariable(name: "v", arg: 1, scope: !422, file: !176, line: 188, type: !174)
!422 = distinct !DISubprogram(name: "gsl_vector_set", scope: !176, file: !176, line: 188, type: !423, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !174, !201, !140}
!425 = !{!421, !426, !427}
!426 = !DILocalVariable(name: "i", arg: 2, scope: !422, file: !176, line: 188, type: !201)
!427 = !DILocalVariable(name: "x", arg: 3, scope: !422, file: !176, line: 188, type: !140)
!428 = !DILocation(line: 0, scope: !422, inlinedAt: !429)
!429 = distinct !DILocation(line: 484, column: 11, scope: !327)
!430 = !DILocation(line: 196, column: 6, scope: !422, inlinedAt: !429)
!431 = !{!243, !237, i64 16}
!432 = !DILocation(line: 196, column: 18, scope: !422, inlinedAt: !429)
!433 = !{!243, !234, i64 8}
!434 = !DILocation(line: 196, column: 13, scope: !422, inlinedAt: !429)
!435 = !DILocation(line: 196, column: 3, scope: !422, inlinedAt: !429)
!436 = !DILocation(line: 196, column: 26, scope: !422, inlinedAt: !429)
!437 = !DILocation(line: 486, column: 21, scope: !334)
!438 = !DILocation(line: 486, column: 27, scope: !334)
!439 = !DILocation(line: 488, column: 15, scope: !333)
!440 = !DILocation(line: 488, column: 35, scope: !333)
!441 = !DILocation(line: 489, column: 15, scope: !333)
!442 = !DILocation(line: 489, column: 70, scope: !333)
!443 = !DILocation(line: 489, column: 35, scope: !333)
!444 = !DILocation(line: 491, column: 15, scope: !333)
!445 = !DILocation(line: 492, column: 13, scope: !334)
!446 = !DILocation(line: 492, column: 13, scope: !333)
!447 = !DILocation(line: 493, column: 9, scope: !328)
!448 = distinct !{!448, !449, !450, !451}
!449 = !DILocation(line: 476, column: 7, scope: !329)
!450 = !DILocation(line: 493, column: 9, scope: !329)
!451 = !{!"llvm.loop.mustprogress"}
!452 = !DILocation(line: 497, column: 1, scope: !313)
!453 = distinct !DISubprogram(name: "gsl_linalg_COD_decomp", scope: !2, file: !2, line: 119, type: !454, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!86, !153, !174, !174, !184, !191, !174}
!456 = !{!457, !458, !459, !460, !461, !462}
!457 = !DILocalVariable(name: "A", arg: 1, scope: !453, file: !2, line: 119, type: !153)
!458 = !DILocalVariable(name: "tau_Q", arg: 2, scope: !453, file: !2, line: 119, type: !174)
!459 = !DILocalVariable(name: "tau_Z", arg: 3, scope: !453, file: !2, line: 119, type: !174)
!460 = !DILocalVariable(name: "p", arg: 4, scope: !453, file: !2, line: 120, type: !184)
!461 = !DILocalVariable(name: "rank", arg: 5, scope: !453, file: !2, line: 120, type: !191)
!462 = !DILocalVariable(name: "work", arg: 6, scope: !453, file: !2, line: 120, type: !174)
!463 = !DILocation(line: 0, scope: !453)
!464 = !DILocation(line: 122, column: 10, scope: !453)
!465 = !DILocation(line: 122, column: 3, scope: !453)
!466 = distinct !DISubprogram(name: "gsl_linalg_COD_lssolve", scope: !2, file: !2, line: 144, type: !467, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !473)
!467 = !DISubroutineType(types: !468)
!468 = !{!86, !304, !469, !469, !471, !201, !469, !174, !174}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !497, !498}
!474 = !DILocalVariable(name: "QRZT", arg: 1, scope: !466, file: !2, line: 144, type: !304)
!475 = !DILocalVariable(name: "tau_Q", arg: 2, scope: !466, file: !2, line: 144, type: !469)
!476 = !DILocalVariable(name: "tau_Z", arg: 3, scope: !466, file: !2, line: 144, type: !469)
!477 = !DILocalVariable(name: "perm", arg: 4, scope: !466, file: !2, line: 145, type: !471)
!478 = !DILocalVariable(name: "rank", arg: 5, scope: !466, file: !2, line: 145, type: !201)
!479 = !DILocalVariable(name: "b", arg: 6, scope: !466, file: !2, line: 145, type: !469)
!480 = !DILocalVariable(name: "x", arg: 7, scope: !466, file: !2, line: 146, type: !174)
!481 = !DILocalVariable(name: "residual", arg: 8, scope: !466, file: !2, line: 146, type: !174)
!482 = !DILocalVariable(name: "M", scope: !466, file: !2, line: 148, type: !201)
!483 = !DILocalVariable(name: "N", scope: !466, file: !2, line: 149, type: !201)
!484 = !DILocalVariable(name: "R11", scope: !485, file: !2, line: 173, type: !491)
!485 = distinct !DILexicalBlock(scope: !486, file: !2, line: 172, column: 5)
!486 = distinct !DILexicalBlock(scope: !487, file: !2, line: 167, column: 12)
!487 = distinct !DILexicalBlock(scope: !488, file: !2, line: 163, column: 12)
!488 = distinct !DILexicalBlock(scope: !489, file: !2, line: 159, column: 12)
!489 = distinct !DILexicalBlock(scope: !490, file: !2, line: 155, column: 12)
!490 = distinct !DILexicalBlock(scope: !466, file: !2, line: 151, column: 7)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_matrix_const_view", file: !155, line: 64, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_matrix_const_view", file: !155, line: 62, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 59, size: 384, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "matrix", scope: !494, file: !155, line: 61, baseType: !154, size: 384)
!497 = !DILocalVariable(name: "QTb1", scope: !485, file: !2, line: 174, type: !220)
!498 = !DILocalVariable(name: "x1", scope: !485, file: !2, line: 175, type: !220)
!499 = distinct !DIAssignID()
!500 = !DILocation(line: 0, scope: !485)
!501 = distinct !DIAssignID()
!502 = distinct !DIAssignID()
!503 = !DILocation(line: 0, scope: !466)
!504 = !DILocation(line: 148, column: 26, scope: !466)
!505 = !DILocation(line: 149, column: 26, scope: !466)
!506 = !DILocation(line: 151, column: 9, scope: !490)
!507 = !DILocation(line: 151, column: 7, scope: !466)
!508 = !DILocation(line: 153, column: 7, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !2, line: 153, column: 7)
!510 = distinct !DILexicalBlock(scope: !490, file: !2, line: 152, column: 5)
!511 = !DILocation(line: 155, column: 20, scope: !489)
!512 = !DILocation(line: 155, column: 14, scope: !489)
!513 = !DILocation(line: 155, column: 12, scope: !490)
!514 = !DILocation(line: 157, column: 7, scope: !515)
!515 = distinct !DILexicalBlock(scope: !516, file: !2, line: 157, column: 7)
!516 = distinct !DILexicalBlock(scope: !489, file: !2, line: 156, column: 5)
!517 = !DILocation(line: 159, column: 17, scope: !488)
!518 = !DILocation(line: 159, column: 12, scope: !489)
!519 = !DILocation(line: 161, column: 7, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !2, line: 161, column: 7)
!521 = distinct !DILexicalBlock(scope: !488, file: !2, line: 160, column: 5)
!522 = !DILocation(line: 163, column: 20, scope: !487)
!523 = !DILocation(line: 163, column: 14, scope: !487)
!524 = !DILocation(line: 163, column: 12, scope: !488)
!525 = !DILocation(line: 165, column: 7, scope: !526)
!526 = distinct !DILexicalBlock(scope: !527, file: !2, line: 165, column: 7)
!527 = distinct !DILexicalBlock(scope: !487, file: !2, line: 164, column: 5)
!528 = !DILocation(line: 167, column: 27, scope: !486)
!529 = !DILocation(line: 167, column: 14, scope: !486)
!530 = !DILocation(line: 167, column: 12, scope: !487)
!531 = !DILocation(line: 169, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !2, line: 169, column: 7)
!533 = distinct !DILexicalBlock(scope: !486, file: !2, line: 168, column: 5)
!534 = !DILocation(line: 173, column: 7, scope: !485)
!535 = !DILocation(line: 173, column: 35, scope: !485)
!536 = !DILocation(line: 174, column: 7, scope: !485)
!537 = !DILocation(line: 174, column: 30, scope: !485)
!538 = !DILocation(line: 175, column: 7, scope: !485)
!539 = !DILocation(line: 175, column: 28, scope: !485)
!540 = !DILocation(line: 177, column: 7, scope: !485)
!541 = !DILocation(line: 180, column: 7, scope: !485)
!542 = !DILocation(line: 181, column: 7, scope: !485)
!543 = !DILocation(line: 184, column: 7, scope: !485)
!544 = !DILocation(line: 185, column: 7, scope: !485)
!545 = !DILocation(line: 188, column: 7, scope: !485)
!546 = !DILocation(line: 191, column: 7, scope: !485)
!547 = !DILocation(line: 194, column: 7, scope: !485)
!548 = !DILocation(line: 195, column: 7, scope: !485)
!549 = !DILocation(line: 198, column: 5, scope: !486)
!550 = !DILocation(line: 0, scope: !490)
!551 = !DILocation(line: 199, column: 1, scope: !466)
!552 = !DISubprogram(name: "gsl_matrix_const_submatrix", scope: !155, file: !155, line: 153, type: !553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!553 = !DISubroutineType(types: !554)
!554 = !{!493, !304, !201, !201, !201, !201}
!555 = !DISubprogram(name: "gsl_vector_set_zero", scope: !176, file: !176, line: 126, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !174}
!558 = !DISubprogram(name: "gsl_vector_memcpy", scope: !176, file: !176, line: 136, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!559 = !DISubroutineType(types: !560)
!560 = !{!86, !174, !469}
!561 = !DISubprogram(name: "gsl_linalg_QR_QTvec", scope: !297, file: !297, line: 274, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DISubroutineType(types: !563)
!563 = !{!86, !304, !469, !174}
!564 = !DISubprogram(name: "gsl_blas_dtrsv", scope: !565, file: !565, line: 217, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = !DIFile(filename: "../gsl/gsl_blas.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "a849aa34c220b7e23a85dd80b38fc17d")
!566 = !DISubroutineType(types: !567)
!567 = !{!86, !568, !570, !571, !304, !174}
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_UPLO_t", file: !569, line: 45, baseType: !123)
!569 = !DIFile(filename: "../gsl/gsl_blas_types.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "d92c095ecab3a8a791ec2d11baf0c11d")
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_TRANSPOSE_t", file: !569, line: 44, baseType: !129)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "CBLAS_DIAG_t", file: !569, line: 46, baseType: !134)
!572 = distinct !DISubprogram(name: "cod_householder_Zvec", scope: !2, file: !2, line: 635, type: !573, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !575)
!573 = !DISubroutineType(cc: DW_CC_nocall, types: !574)
!574 = !{!86, !304, !469, !201, !174}
!575 = !{!576, !577, !578, !579, !580, !581, !582, !588, !598, !599}
!576 = !DILocalVariable(name: "QRZT", arg: 1, scope: !572, file: !2, line: 635, type: !304)
!577 = !DILocalVariable(name: "tau_Z", arg: 2, scope: !572, file: !2, line: 635, type: !469)
!578 = !DILocalVariable(name: "rank", arg: 3, scope: !572, file: !2, line: 635, type: !201)
!579 = !DILocalVariable(name: "v", arg: 4, scope: !572, file: !2, line: 636, type: !174)
!580 = !DILocalVariable(name: "M", scope: !572, file: !2, line: 638, type: !201)
!581 = !DILocalVariable(name: "N", scope: !572, file: !2, line: 639, type: !201)
!582 = !DILocalVariable(name: "i", scope: !583, file: !2, line: 653, type: !159)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 652, column: 9)
!584 = distinct !DILexicalBlock(scope: !585, file: !2, line: 651, column: 11)
!585 = distinct !DILexicalBlock(scope: !586, file: !2, line: 650, column: 5)
!586 = distinct !DILexicalBlock(scope: !587, file: !2, line: 645, column: 12)
!587 = distinct !DILexicalBlock(scope: !572, file: !2, line: 641, column: 7)
!588 = !DILocalVariable(name: "h", scope: !589, file: !2, line: 657, type: !592)
!589 = distinct !DILexicalBlock(scope: !590, file: !2, line: 656, column: 13)
!590 = distinct !DILexicalBlock(scope: !591, file: !2, line: 655, column: 11)
!591 = distinct !DILexicalBlock(scope: !583, file: !2, line: 655, column: 11)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_vector_const_view", file: !176, line: 64, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "_gsl_vector_const_view", file: !176, line: 62, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 59, size: 320, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !595, file: !176, line: 61, baseType: !175, size: 320)
!598 = !DILocalVariable(name: "w", scope: !589, file: !2, line: 658, type: !220)
!599 = !DILocalVariable(name: "ti", scope: !589, file: !2, line: 659, type: !140)
!600 = distinct !DIAssignID()
!601 = distinct !DIAssignID()
!602 = distinct !DIAssignID()
!603 = !DILocation(line: 0, scope: !589)
!604 = distinct !DIAssignID()
!605 = !DILocation(line: 0, scope: !572)
!606 = !DILocation(line: 638, column: 26, scope: !572)
!607 = !DILocation(line: 639, column: 26, scope: !572)
!608 = !DILocation(line: 641, column: 14, scope: !587)
!609 = !DILocation(line: 641, column: 22, scope: !587)
!610 = !DILocation(line: 641, column: 19, scope: !587)
!611 = !DILocation(line: 641, column: 7, scope: !572)
!612 = !DILocation(line: 643, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !614, file: !2, line: 643, column: 7)
!614 = distinct !DILexicalBlock(scope: !587, file: !2, line: 642, column: 5)
!615 = !DILocation(line: 645, column: 15, scope: !586)
!616 = !DILocation(line: 645, column: 20, scope: !586)
!617 = !DILocation(line: 645, column: 12, scope: !587)
!618 = !DILocation(line: 647, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 647, column: 7)
!620 = distinct !DILexicalBlock(scope: !586, file: !2, line: 646, column: 5)
!621 = !DILocation(line: 651, column: 16, scope: !584)
!622 = !DILocation(line: 0, scope: !583)
!623 = !DILocation(line: 651, column: 11, scope: !585)
!624 = !DILocation(line: 655, column: 11, scope: !591)
!625 = !DILocation(line: 657, column: 15, scope: !589)
!626 = !DILocation(line: 657, column: 41, scope: !589)
!627 = !DILocation(line: 658, column: 15, scope: !589)
!628 = !DILocation(line: 658, column: 65, scope: !589)
!629 = !DILocation(line: 658, column: 35, scope: !589)
!630 = !DILocalVariable(name: "v", arg: 1, scope: !631, file: !176, line: 175, type: !469)
!631 = distinct !DISubprogram(name: "gsl_vector_get", scope: !176, file: !176, line: 175, type: !632, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !634)
!632 = !DISubroutineType(types: !633)
!633 = !{!140, !469, !201}
!634 = !{!630, !635}
!635 = !DILocalVariable(name: "i", arg: 2, scope: !631, file: !176, line: 175, type: !201)
!636 = !DILocation(line: 0, scope: !631, inlinedAt: !637)
!637 = distinct !DILocation(line: 659, column: 27, scope: !589)
!638 = !DILocation(line: 183, column: 13, scope: !631, inlinedAt: !637)
!639 = !DILocation(line: 183, column: 25, scope: !631, inlinedAt: !637)
!640 = !DILocation(line: 183, column: 20, scope: !631, inlinedAt: !637)
!641 = !DILocation(line: 183, column: 10, scope: !631, inlinedAt: !637)
!642 = !DILocalVariable(name: "w1", scope: !643, file: !2, line: 559, type: !220)
!643 = distinct !DILexicalBlock(scope: !644, file: !2, line: 555, column: 5)
!644 = distinct !DILexicalBlock(scope: !645, file: !2, line: 550, column: 7)
!645 = distinct !DISubprogram(name: "cod_householder_hv", scope: !2, file: !2, line: 548, type: !646, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{!86, !306, !469, !174}
!648 = !{!649, !650, !651, !652, !653, !654, !642, !655, !656}
!649 = !DILocalVariable(name: "tau", arg: 1, scope: !645, file: !2, line: 548, type: !306)
!650 = !DILocalVariable(name: "v", arg: 2, scope: !645, file: !2, line: 548, type: !469)
!651 = !DILocalVariable(name: "w", arg: 3, scope: !645, file: !2, line: 548, type: !174)
!652 = !DILocalVariable(name: "M", scope: !643, file: !2, line: 556, type: !201)
!653 = !DILocalVariable(name: "L", scope: !643, file: !2, line: 557, type: !201)
!654 = !DILocalVariable(name: "w0", scope: !643, file: !2, line: 558, type: !140)
!655 = !DILocalVariable(name: "d1", scope: !643, file: !2, line: 560, type: !140)
!656 = !DILocalVariable(name: "d", scope: !643, file: !2, line: 560, type: !140)
!657 = !DILocation(line: 0, scope: !643, inlinedAt: !658)
!658 = distinct !DILocation(line: 660, column: 15, scope: !589)
!659 = !DILocation(line: 0, scope: !645, inlinedAt: !658)
!660 = !DILocation(line: 550, column: 11, scope: !644, inlinedAt: !658)
!661 = !DILocation(line: 550, column: 7, scope: !645, inlinedAt: !658)
!662 = !DILocation(line: 556, column: 27, scope: !643, inlinedAt: !658)
!663 = !DILocation(line: 557, column: 27, scope: !643, inlinedAt: !658)
!664 = !DILocation(line: 0, scope: !631, inlinedAt: !665)
!665 = distinct !DILocation(line: 558, column: 19, scope: !643, inlinedAt: !658)
!666 = !DILocation(line: 183, column: 13, scope: !631, inlinedAt: !665)
!667 = !DILocation(line: 183, column: 10, scope: !631, inlinedAt: !665)
!668 = !DILocation(line: 559, column: 7, scope: !643, inlinedAt: !658)
!669 = !DILocation(line: 559, column: 54, scope: !643, inlinedAt: !658)
!670 = !DILocation(line: 559, column: 28, scope: !643, inlinedAt: !658)
!671 = !DILocation(line: 560, column: 7, scope: !643, inlinedAt: !658)
!672 = !DILocation(line: 563, column: 7, scope: !643, inlinedAt: !658)
!673 = !DILocation(line: 566, column: 16, scope: !643, inlinedAt: !658)
!674 = !DILocation(line: 569, column: 37, scope: !643, inlinedAt: !658)
!675 = !DILocation(line: 196, column: 6, scope: !422, inlinedAt: !676)
!676 = distinct !DILocation(line: 569, column: 7, scope: !643, inlinedAt: !658)
!677 = !DILocation(line: 0, scope: !422, inlinedAt: !676)
!678 = !DILocation(line: 196, column: 26, scope: !422, inlinedAt: !676)
!679 = !DILocation(line: 572, column: 22, scope: !643, inlinedAt: !658)
!680 = !DILocation(line: 572, column: 27, scope: !643, inlinedAt: !658)
!681 = !DILocation(line: 572, column: 7, scope: !643, inlinedAt: !658)
!682 = !DILocation(line: 575, column: 5, scope: !644, inlinedAt: !658)
!683 = !DILocation(line: 661, column: 13, scope: !590)
!684 = !DILocation(line: 655, column: 33, scope: !590)
!685 = !DILocation(line: 655, column: 25, scope: !590)
!686 = distinct !{!686, !624, !687, !451}
!687 = !DILocation(line: 661, column: 13, scope: !591)
!688 = !DILocation(line: 666, column: 1, scope: !572)
!689 = !DISubprogram(name: "gsl_permute_vector_inverse", scope: !690, file: !690, line: 41, type: !691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!690 = !DIFile(filename: "../gsl/gsl_permute_vector_double.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "05dfc9fcd9b4e47246745becff796730")
!691 = !DISubroutineType(types: !692)
!692 = !{!86, !471, !174}
!693 = !DISubprogram(name: "gsl_linalg_QR_Qvec", scope: !297, file: !297, line: 278, type: !562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!694 = distinct !DISubprogram(name: "gsl_linalg_COD_lssolve2", scope: !2, file: !2, line: 224, type: !695, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!86, !306, !304, !469, !469, !471, !201, !469, !174, !174, !153, !174}
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !720, !721}
!698 = !DILocalVariable(name: "lambda", arg: 1, scope: !694, file: !2, line: 224, type: !306)
!699 = !DILocalVariable(name: "QRZT", arg: 2, scope: !694, file: !2, line: 224, type: !304)
!700 = !DILocalVariable(name: "tau_Q", arg: 3, scope: !694, file: !2, line: 224, type: !469)
!701 = !DILocalVariable(name: "tau_Z", arg: 4, scope: !694, file: !2, line: 224, type: !469)
!702 = !DILocalVariable(name: "perm", arg: 5, scope: !694, file: !2, line: 225, type: !471)
!703 = !DILocalVariable(name: "rank", arg: 6, scope: !694, file: !2, line: 225, type: !201)
!704 = !DILocalVariable(name: "b", arg: 7, scope: !694, file: !2, line: 225, type: !469)
!705 = !DILocalVariable(name: "x", arg: 8, scope: !694, file: !2, line: 226, type: !174)
!706 = !DILocalVariable(name: "residual", arg: 9, scope: !694, file: !2, line: 226, type: !174)
!707 = !DILocalVariable(name: "S", arg: 10, scope: !694, file: !2, line: 226, type: !153)
!708 = !DILocalVariable(name: "work", arg: 11, scope: !694, file: !2, line: 226, type: !174)
!709 = !DILocalVariable(name: "M", scope: !694, file: !2, line: 228, type: !201)
!710 = !DILocalVariable(name: "N", scope: !694, file: !2, line: 229, type: !201)
!711 = !DILocalVariable(name: "R11", scope: !712, file: !2, line: 261, type: !491)
!712 = distinct !DILexicalBlock(scope: !713, file: !2, line: 260, column: 5)
!713 = distinct !DILexicalBlock(scope: !714, file: !2, line: 255, column: 12)
!714 = distinct !DILexicalBlock(scope: !715, file: !2, line: 251, column: 12)
!715 = distinct !DILexicalBlock(scope: !716, file: !2, line: 247, column: 12)
!716 = distinct !DILexicalBlock(scope: !717, file: !2, line: 243, column: 12)
!717 = distinct !DILexicalBlock(scope: !718, file: !2, line: 239, column: 12)
!718 = distinct !DILexicalBlock(scope: !719, file: !2, line: 235, column: 12)
!719 = distinct !DILexicalBlock(scope: !694, file: !2, line: 231, column: 7)
!720 = !DILocalVariable(name: "c1", scope: !712, file: !2, line: 262, type: !220)
!721 = !DILocalVariable(name: "y1", scope: !712, file: !2, line: 263, type: !220)
!722 = distinct !DIAssignID()
!723 = !DILocation(line: 0, scope: !712)
!724 = distinct !DIAssignID()
!725 = distinct !DIAssignID()
!726 = !DILocation(line: 0, scope: !694)
!727 = !DILocation(line: 228, column: 26, scope: !694)
!728 = !DILocation(line: 229, column: 26, scope: !694)
!729 = !DILocation(line: 231, column: 9, scope: !719)
!730 = !DILocation(line: 231, column: 7, scope: !694)
!731 = !DILocation(line: 233, column: 7, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !2, line: 233, column: 7)
!733 = distinct !DILexicalBlock(scope: !719, file: !2, line: 232, column: 5)
!734 = !DILocation(line: 235, column: 20, scope: !718)
!735 = !DILocation(line: 235, column: 14, scope: !718)
!736 = !DILocation(line: 235, column: 12, scope: !719)
!737 = !DILocation(line: 237, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !2, line: 237, column: 7)
!739 = distinct !DILexicalBlock(scope: !718, file: !2, line: 236, column: 5)
!740 = !DILocation(line: 239, column: 17, scope: !717)
!741 = !DILocation(line: 239, column: 12, scope: !718)
!742 = !DILocation(line: 241, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !2, line: 241, column: 7)
!744 = distinct !DILexicalBlock(scope: !717, file: !2, line: 240, column: 5)
!745 = !DILocation(line: 243, column: 20, scope: !716)
!746 = !DILocation(line: 243, column: 14, scope: !716)
!747 = !DILocation(line: 243, column: 12, scope: !717)
!748 = !DILocation(line: 245, column: 7, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !2, line: 245, column: 7)
!750 = distinct !DILexicalBlock(scope: !716, file: !2, line: 244, column: 5)
!751 = !DILocation(line: 247, column: 27, scope: !715)
!752 = !DILocation(line: 247, column: 14, scope: !715)
!753 = !DILocation(line: 247, column: 12, scope: !716)
!754 = !DILocation(line: 249, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !2, line: 249, column: 7)
!756 = distinct !DILexicalBlock(scope: !715, file: !2, line: 248, column: 5)
!757 = !DILocation(line: 251, column: 15, scope: !714)
!758 = !DILocation(line: 251, column: 21, scope: !714)
!759 = !DILocation(line: 251, column: 29, scope: !714)
!760 = !DILocation(line: 251, column: 35, scope: !714)
!761 = !DILocation(line: 251, column: 41, scope: !714)
!762 = !DILocation(line: 251, column: 12, scope: !715)
!763 = !DILocation(line: 253, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !2, line: 253, column: 7)
!765 = distinct !DILexicalBlock(scope: !714, file: !2, line: 252, column: 5)
!766 = !DILocation(line: 255, column: 18, scope: !713)
!767 = !DILocation(line: 255, column: 23, scope: !713)
!768 = !DILocation(line: 255, column: 12, scope: !714)
!769 = !DILocation(line: 257, column: 7, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !2, line: 257, column: 7)
!771 = distinct !DILexicalBlock(scope: !713, file: !2, line: 256, column: 5)
!772 = !DILocation(line: 261, column: 7, scope: !712)
!773 = !DILocation(line: 261, column: 35, scope: !712)
!774 = !DILocation(line: 262, column: 7, scope: !712)
!775 = !DILocation(line: 262, column: 28, scope: !712)
!776 = !DILocation(line: 263, column: 7, scope: !712)
!777 = !DILocation(line: 263, column: 28, scope: !712)
!778 = !DILocation(line: 265, column: 7, scope: !712)
!779 = !DILocation(line: 268, column: 7, scope: !712)
!780 = !DILocation(line: 269, column: 7, scope: !712)
!781 = !DILocation(line: 272, column: 7, scope: !712)
!782 = !DILocation(line: 275, column: 7, scope: !712)
!783 = !DILocation(line: 278, column: 7, scope: !712)
!784 = !DILocation(line: 281, column: 7, scope: !712)
!785 = !DILocation(line: 286, column: 7, scope: !712)
!786 = !DILocation(line: 288, column: 7, scope: !712)
!787 = !DILocation(line: 289, column: 7, scope: !712)
!788 = !DILocation(line: 292, column: 5, scope: !713)
!789 = !DILocation(line: 0, scope: !719)
!790 = !DILocation(line: 293, column: 1, scope: !694)
!791 = distinct !DISubprogram(name: "cod_trireg_solve", scope: !2, file: !2, line: 697, type: !792, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !794)
!792 = !DISubroutineType(cc: DW_CC_nocall, types: !793)
!793 = !{!86, !304, !306, !469, !153, !174, !174}
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !810, !814, !815, !816, !817, !818, !821, !823, !825, !826, !830, !831, !832}
!795 = !DILocalVariable(name: "R", arg: 1, scope: !791, file: !2, line: 697, type: !304)
!796 = !DILocalVariable(name: "lambda", arg: 2, scope: !791, file: !2, line: 697, type: !306)
!797 = !DILocalVariable(name: "b", arg: 3, scope: !791, file: !2, line: 697, type: !469)
!798 = !DILocalVariable(name: "S", arg: 4, scope: !791, file: !2, line: 698, type: !153)
!799 = !DILocalVariable(name: "x", arg: 5, scope: !791, file: !2, line: 698, type: !174)
!800 = !DILocalVariable(name: "work", arg: 6, scope: !791, file: !2, line: 698, type: !174)
!801 = !DILocalVariable(name: "N", scope: !791, file: !2, line: 700, type: !201)
!802 = !DILocalVariable(name: "diag", scope: !791, file: !2, line: 701, type: !592)
!803 = !DILocalVariable(name: "i", scope: !791, file: !2, line: 702, type: !159)
!804 = !DILocalVariable(name: "j", scope: !791, file: !2, line: 702, type: !159)
!805 = !DILocalVariable(name: "k", scope: !791, file: !2, line: 702, type: !159)
!806 = !DILocalVariable(name: "bj", scope: !807, file: !2, line: 718, type: !140)
!807 = distinct !DILexicalBlock(scope: !808, file: !2, line: 717, column: 5)
!808 = distinct !DILexicalBlock(scope: !809, file: !2, line: 716, column: 3)
!809 = distinct !DILexicalBlock(scope: !791, file: !2, line: 716, column: 3)
!810 = !DILocalVariable(name: "sine", scope: !811, file: !2, line: 736, type: !140)
!811 = distinct !DILexicalBlock(scope: !812, file: !2, line: 732, column: 9)
!812 = distinct !DILexicalBlock(scope: !813, file: !2, line: 731, column: 7)
!813 = distinct !DILexicalBlock(scope: !807, file: !2, line: 731, column: 7)
!814 = !DILocalVariable(name: "cosine", scope: !811, file: !2, line: 736, type: !140)
!815 = !DILocalVariable(name: "xk", scope: !811, file: !2, line: 738, type: !140)
!816 = !DILocalVariable(name: "rkk", scope: !811, file: !2, line: 739, type: !140)
!817 = !DILocalVariable(name: "skk", scope: !811, file: !2, line: 740, type: !140)
!818 = !DILocalVariable(name: "cotangent", scope: !819, file: !2, line: 749, type: !140)
!819 = distinct !DILexicalBlock(scope: !820, file: !2, line: 748, column: 13)
!820 = distinct !DILexicalBlock(scope: !811, file: !2, line: 747, column: 15)
!821 = !DILocalVariable(name: "tangent", scope: !822, file: !2, line: 755, type: !140)
!822 = distinct !DILexicalBlock(scope: !820, file: !2, line: 754, column: 13)
!823 = !DILocalVariable(name: "new_rkk", scope: !824, file: !2, line: 764, type: !140)
!824 = distinct !DILexicalBlock(scope: !811, file: !2, line: 763, column: 11)
!825 = !DILocalVariable(name: "new_xk", scope: !824, file: !2, line: 765, type: !140)
!826 = !DILocalVariable(name: "sik", scope: !827, file: !2, line: 778, type: !140)
!827 = distinct !DILexicalBlock(scope: !828, file: !2, line: 777, column: 13)
!828 = distinct !DILexicalBlock(scope: !829, file: !2, line: 776, column: 11)
!829 = distinct !DILexicalBlock(scope: !811, file: !2, line: 776, column: 11)
!830 = !DILocalVariable(name: "sii", scope: !827, file: !2, line: 779, type: !140)
!831 = !DILocalVariable(name: "new_sik", scope: !827, file: !2, line: 781, type: !140)
!832 = !DILocalVariable(name: "new_sii", scope: !827, file: !2, line: 782, type: !140)
!833 = distinct !DIAssignID()
!834 = !DILocation(line: 0, scope: !791)
!835 = !DILocation(line: 700, column: 23, scope: !791)
!836 = !DILocation(line: 701, column: 3, scope: !791)
!837 = !DILocation(line: 701, column: 32, scope: !791)
!838 = !DILocation(line: 704, column: 14, scope: !839)
!839 = distinct !DILexicalBlock(scope: !791, file: !2, line: 704, column: 7)
!840 = !DILocation(line: 704, column: 7, scope: !791)
!841 = !DILocation(line: 706, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !2, line: 706, column: 7)
!843 = distinct !DILexicalBlock(scope: !839, file: !2, line: 705, column: 5)
!844 = !DILocation(line: 710, column: 3, scope: !791)
!845 = !DILocation(line: 711, column: 3, scope: !791)
!846 = !DILocation(line: 712, column: 3, scope: !791)
!847 = !DILocation(line: 716, column: 17, scope: !808)
!848 = !DILocation(line: 716, column: 3, scope: !809)
!849 = !DILocation(line: 305, column: 6, scope: !850, inlinedAt: !858)
!850 = distinct !DISubprogram(name: "gsl_matrix_set", scope: !155, file: !155, line: 290, type: !851, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !153, !201, !201, !306}
!853 = !{!854, !855, !856, !857}
!854 = !DILocalVariable(name: "m", arg: 1, scope: !850, file: !155, line: 290, type: !153)
!855 = !DILocalVariable(name: "i", arg: 2, scope: !850, file: !155, line: 290, type: !201)
!856 = !DILocalVariable(name: "j", arg: 3, scope: !850, file: !155, line: 290, type: !201)
!857 = !DILocalVariable(name: "x", arg: 4, scope: !850, file: !155, line: 290, type: !306)
!858 = distinct !DILocation(line: 720, column: 7, scope: !807)
!859 = !DILocation(line: 305, column: 18, scope: !850, inlinedAt: !858)
!860 = distinct !{!860, !848, !861, !451}
!861 = !DILocation(line: 788, column: 5, scope: !809)
!862 = !DILocation(line: 0, scope: !807)
!863 = !DILocation(line: 0, scope: !850, inlinedAt: !858)
!864 = !DILocation(line: 305, column: 13, scope: !850, inlinedAt: !858)
!865 = !DILocation(line: 305, column: 3, scope: !850, inlinedAt: !858)
!866 = !DILocation(line: 305, column: 27, scope: !850, inlinedAt: !858)
!867 = !DILocation(line: 722, column: 18, scope: !868)
!868 = distinct !DILexicalBlock(scope: !807, file: !2, line: 722, column: 7)
!869 = !DILocation(line: 722, column: 25, scope: !870)
!870 = distinct !DILexicalBlock(scope: !868, file: !2, line: 722, column: 7)
!871 = !DILocation(line: 722, column: 7, scope: !868)
!872 = !DILocation(line: 183, column: 13, scope: !631, inlinedAt: !873)
!873 = distinct !DILocation(line: 738, column: 23, scope: !811)
!874 = !DILocation(line: 183, column: 25, scope: !631, inlinedAt: !873)
!875 = !DILocation(line: 183, column: 13, scope: !631, inlinedAt: !876)
!876 = distinct !DILocation(line: 739, column: 24, scope: !811)
!877 = !DILocation(line: 183, column: 25, scope: !631, inlinedAt: !876)
!878 = !DILocation(line: 731, column: 7, scope: !813)
!879 = !DILocation(line: 0, scope: !850, inlinedAt: !880)
!880 = distinct !DILocation(line: 724, column: 11, scope: !881)
!881 = distinct !DILexicalBlock(scope: !870, file: !2, line: 723, column: 9)
!882 = !DILocation(line: 305, column: 13, scope: !850, inlinedAt: !880)
!883 = !DILocation(line: 305, column: 3, scope: !850, inlinedAt: !880)
!884 = !DILocation(line: 305, column: 27, scope: !850, inlinedAt: !880)
!885 = !DILocation(line: 722, column: 31, scope: !870)
!886 = distinct !{!886, !871, !887, !451}
!887 = !DILocation(line: 725, column: 9, scope: !868)
!888 = !DILocation(line: 285, column: 25, scope: !889, inlinedAt: !896)
!889 = distinct !DISubprogram(name: "gsl_matrix_get", scope: !155, file: !155, line: 270, type: !890, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{!140, !304, !201, !201}
!892 = !{!893, !894, !895}
!893 = !DILocalVariable(name: "m", arg: 1, scope: !889, file: !155, line: 270, type: !304)
!894 = !DILocalVariable(name: "i", arg: 2, scope: !889, file: !155, line: 270, type: !201)
!895 = !DILocalVariable(name: "j", arg: 3, scope: !889, file: !155, line: 270, type: !201)
!896 = distinct !DILocation(line: 740, column: 24, scope: !811)
!897 = !DILocation(line: 285, column: 13, scope: !889, inlinedAt: !896)
!898 = !DILocation(line: 0, scope: !631, inlinedAt: !873)
!899 = !DILocation(line: 183, column: 20, scope: !631, inlinedAt: !873)
!900 = !DILocation(line: 183, column: 10, scope: !631, inlinedAt: !873)
!901 = !DILocation(line: 0, scope: !811)
!902 = !DILocation(line: 0, scope: !631, inlinedAt: !876)
!903 = !DILocation(line: 183, column: 20, scope: !631, inlinedAt: !876)
!904 = !DILocation(line: 183, column: 10, scope: !631, inlinedAt: !876)
!905 = !DILocation(line: 0, scope: !889, inlinedAt: !896)
!906 = !DILocation(line: 285, column: 20, scope: !889, inlinedAt: !896)
!907 = !DILocation(line: 285, column: 10, scope: !889, inlinedAt: !896)
!908 = !DILocation(line: 742, column: 19, scope: !909)
!909 = distinct !DILexicalBlock(scope: !811, file: !2, line: 742, column: 15)
!910 = !DILocation(line: 742, column: 15, scope: !811)
!911 = !DILocation(line: 731, column: 27, scope: !812)
!912 = !DILocation(line: 747, column: 15, scope: !820)
!913 = !DILocation(line: 747, column: 28, scope: !820)
!914 = !DILocation(line: 747, column: 26, scope: !820)
!915 = !DILocation(line: 747, column: 15, scope: !811)
!916 = !DILocation(line: 749, column: 38, scope: !819)
!917 = !DILocation(line: 0, scope: !819)
!918 = !DILocation(line: 750, column: 46, scope: !819)
!919 = !DILocation(line: 750, column: 58, scope: !819)
!920 = !DILocation(line: 750, column: 28, scope: !819)
!921 = !DILocation(line: 750, column: 26, scope: !819)
!922 = !DILocation(line: 751, column: 29, scope: !819)
!923 = !DILocation(line: 752, column: 13, scope: !819)
!924 = !DILocation(line: 755, column: 36, scope: !822)
!925 = !DILocation(line: 0, scope: !822)
!926 = !DILocation(line: 756, column: 48, scope: !822)
!927 = !DILocation(line: 756, column: 58, scope: !822)
!928 = !DILocation(line: 756, column: 30, scope: !822)
!929 = !DILocation(line: 756, column: 28, scope: !822)
!930 = !DILocation(line: 757, column: 29, scope: !822)
!931 = !DILocation(line: 0, scope: !820)
!932 = !DILocation(line: 764, column: 37, scope: !824)
!933 = !DILocation(line: 764, column: 50, scope: !824)
!934 = !DILocation(line: 765, column: 36, scope: !824)
!935 = !DILocation(line: 0, scope: !824)
!936 = !DILocation(line: 765, column: 48, scope: !824)
!937 = !DILocation(line: 767, column: 38, scope: !824)
!938 = !DILocation(line: 767, column: 29, scope: !824)
!939 = !DILocation(line: 196, column: 6, scope: !422, inlinedAt: !940)
!940 = distinct !DILocation(line: 769, column: 13, scope: !824)
!941 = !DILocation(line: 0, scope: !422, inlinedAt: !940)
!942 = !DILocation(line: 196, column: 18, scope: !422, inlinedAt: !940)
!943 = !DILocation(line: 196, column: 13, scope: !422, inlinedAt: !940)
!944 = !DILocation(line: 196, column: 3, scope: !422, inlinedAt: !940)
!945 = !DILocation(line: 196, column: 26, scope: !422, inlinedAt: !940)
!946 = !DILocation(line: 0, scope: !850, inlinedAt: !947)
!947 = distinct !DILocation(line: 770, column: 13, scope: !824)
!948 = !DILocation(line: 305, column: 6, scope: !850, inlinedAt: !947)
!949 = !DILocation(line: 305, column: 18, scope: !850, inlinedAt: !947)
!950 = !DILocation(line: 305, column: 13, scope: !850, inlinedAt: !947)
!951 = !DILocation(line: 305, column: 3, scope: !850, inlinedAt: !947)
!952 = !DILocation(line: 305, column: 27, scope: !850, inlinedAt: !947)
!953 = !DILocation(line: 0, scope: !422, inlinedAt: !954)
!954 = distinct !DILocation(line: 771, column: 13, scope: !824)
!955 = !DILocation(line: 196, column: 6, scope: !422, inlinedAt: !954)
!956 = !DILocation(line: 196, column: 18, scope: !422, inlinedAt: !954)
!957 = !DILocation(line: 196, column: 13, scope: !422, inlinedAt: !954)
!958 = !DILocation(line: 196, column: 3, scope: !422, inlinedAt: !954)
!959 = !DILocation(line: 196, column: 26, scope: !422, inlinedAt: !954)
!960 = !DILocation(line: 776, scope: !829)
!961 = !DILocation(line: 776, column: 29, scope: !828)
!962 = !DILocation(line: 776, column: 11, scope: !829)
!963 = !DILocation(line: 0, scope: !889, inlinedAt: !964)
!964 = distinct !DILocation(line: 778, column: 28, scope: !827)
!965 = !DILocation(line: 285, column: 20, scope: !889, inlinedAt: !964)
!966 = !DILocation(line: 285, column: 10, scope: !889, inlinedAt: !964)
!967 = !DILocation(line: 0, scope: !827)
!968 = !DILocation(line: 0, scope: !889, inlinedAt: !969)
!969 = distinct !DILocation(line: 779, column: 28, scope: !827)
!970 = !DILocation(line: 285, column: 10, scope: !889, inlinedAt: !969)
!971 = !DILocation(line: 781, column: 39, scope: !827)
!972 = !DILocation(line: 781, column: 52, scope: !827)
!973 = !DILocation(line: 782, column: 53, scope: !827)
!974 = !DILocation(line: 782, column: 44, scope: !827)
!975 = !DILocation(line: 305, column: 27, scope: !850, inlinedAt: !976)
!976 = distinct !DILocation(line: 784, column: 15, scope: !827)
!977 = !DILocation(line: 0, scope: !850, inlinedAt: !976)
!978 = !DILocation(line: 0, scope: !850, inlinedAt: !979)
!979 = distinct !DILocation(line: 785, column: 15, scope: !827)
!980 = !DILocation(line: 305, column: 27, scope: !850, inlinedAt: !979)
!981 = distinct !{!981, !962, !982, !451}
!982 = !DILocation(line: 786, column: 13, scope: !829)
!983 = !DILocation(line: 731, column: 21, scope: !812)
!984 = distinct !{!984, !878, !985, !451}
!985 = !DILocation(line: 787, column: 9, scope: !813)
!986 = !DILocation(line: 791, column: 3, scope: !791)
!987 = !DILocation(line: 793, column: 3, scope: !791)
!988 = !DILocation(line: 794, column: 1, scope: !791)
!989 = !DISubprogram(name: "gsl_blas_dtrmv", scope: !565, file: !565, line: 212, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!990 = !DISubprogram(name: "gsl_vector_sub", scope: !176, file: !176, line: 152, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!991 = distinct !DISubprogram(name: "gsl_linalg_COD_unpack", scope: !2, file: !2, line: 309, type: !992, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{!86, !304, !469, !469, !201, !153, !153, !153}
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1012, !1013, !1014, !1018, !1019, !1020}
!995 = !DILocalVariable(name: "QRZT", arg: 1, scope: !991, file: !2, line: 309, type: !304)
!996 = !DILocalVariable(name: "tau_Q", arg: 2, scope: !991, file: !2, line: 309, type: !469)
!997 = !DILocalVariable(name: "tau_Z", arg: 3, scope: !991, file: !2, line: 310, type: !469)
!998 = !DILocalVariable(name: "rank", arg: 4, scope: !991, file: !2, line: 310, type: !201)
!999 = !DILocalVariable(name: "Q", arg: 5, scope: !991, file: !2, line: 310, type: !153)
!1000 = !DILocalVariable(name: "R", arg: 6, scope: !991, file: !2, line: 311, type: !153)
!1001 = !DILocalVariable(name: "Z", arg: 7, scope: !991, file: !2, line: 311, type: !153)
!1002 = !DILocalVariable(name: "M", scope: !991, file: !2, line: 313, type: !201)
!1003 = !DILocalVariable(name: "N", scope: !991, file: !2, line: 314, type: !201)
!1004 = !DILocalVariable(name: "i", scope: !1005, file: !2, line: 342, type: !159)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 341, column: 5)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 336, column: 12)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 332, column: 12)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 328, column: 12)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 324, column: 12)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 320, column: 12)
!1011 = distinct !DILexicalBlock(scope: !991, file: !2, line: 316, column: 7)
!1012 = !DILocalVariable(name: "R11", scope: !1005, file: !2, line: 343, type: !214)
!1013 = !DILocalVariable(name: "QRZT11", scope: !1005, file: !2, line: 344, type: !491)
!1014 = !DILocalVariable(name: "h", scope: !1015, file: !2, line: 352, type: !592)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !2, line: 351, column: 9)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !2, line: 350, column: 7)
!1017 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 350, column: 7)
!1018 = !DILocalVariable(name: "m", scope: !1015, file: !2, line: 353, type: !214)
!1019 = !DILocalVariable(name: "ti", scope: !1015, file: !2, line: 354, type: !140)
!1020 = !DILocalVariable(name: "work", scope: !1021, file: !2, line: 363, type: !220)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 362, column: 9)
!1022 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 361, column: 11)
!1023 = distinct !DIAssignID()
!1024 = !DILocation(line: 0, scope: !1005)
!1025 = distinct !DIAssignID()
!1026 = distinct !DIAssignID()
!1027 = !DILocation(line: 0, scope: !1015)
!1028 = distinct !DIAssignID()
!1029 = distinct !DIAssignID()
!1030 = !DILocation(line: 0, scope: !1021)
!1031 = !DILocation(line: 0, scope: !991)
!1032 = !DILocation(line: 313, column: 26, scope: !991)
!1033 = !DILocation(line: 314, column: 26, scope: !991)
!1034 = !DILocation(line: 316, column: 14, scope: !1011)
!1035 = !DILocation(line: 316, column: 22, scope: !1011)
!1036 = !DILocation(line: 316, column: 19, scope: !1011)
!1037 = !DILocation(line: 316, column: 7, scope: !991)
!1038 = !DILocation(line: 318, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 318, column: 7)
!1040 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 317, column: 5)
!1041 = !DILocation(line: 320, column: 19, scope: !1010)
!1042 = !DILocation(line: 320, column: 24, scope: !1010)
!1043 = !DILocation(line: 320, column: 12, scope: !1011)
!1044 = !DILocation(line: 322, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 322, column: 7)
!1046 = distinct !DILexicalBlock(scope: !1010, file: !2, line: 321, column: 5)
!1047 = !DILocation(line: 324, column: 17, scope: !1009)
!1048 = !DILocation(line: 324, column: 12, scope: !1010)
!1049 = !DILocation(line: 326, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 326, column: 7)
!1051 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 325, column: 5)
!1052 = !DILocation(line: 328, column: 15, scope: !1008)
!1053 = !DILocation(line: 328, column: 21, scope: !1008)
!1054 = !DILocation(line: 328, column: 26, scope: !1008)
!1055 = !DILocation(line: 328, column: 32, scope: !1008)
!1056 = !DILocation(line: 328, column: 38, scope: !1008)
!1057 = !DILocation(line: 328, column: 12, scope: !1009)
!1058 = !DILocation(line: 330, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1060, file: !2, line: 330, column: 7)
!1060 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 329, column: 5)
!1061 = !DILocation(line: 332, column: 15, scope: !1007)
!1062 = !DILocation(line: 332, column: 21, scope: !1007)
!1063 = !DILocation(line: 332, column: 26, scope: !1007)
!1064 = !DILocation(line: 332, column: 32, scope: !1007)
!1065 = !DILocation(line: 332, column: 38, scope: !1007)
!1066 = !DILocation(line: 332, column: 12, scope: !1008)
!1067 = !DILocation(line: 334, column: 7, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 334, column: 7)
!1069 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 333, column: 5)
!1070 = !DILocation(line: 336, column: 15, scope: !1006)
!1071 = !DILocation(line: 336, column: 21, scope: !1006)
!1072 = !DILocation(line: 336, column: 26, scope: !1006)
!1073 = !DILocation(line: 336, column: 32, scope: !1006)
!1074 = !DILocation(line: 336, column: 38, scope: !1006)
!1075 = !DILocation(line: 336, column: 12, scope: !1007)
!1076 = !DILocation(line: 338, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !2, line: 338, column: 7)
!1078 = distinct !DILexicalBlock(scope: !1006, file: !2, line: 337, column: 5)
!1079 = !DILocation(line: 343, column: 7, scope: !1005)
!1080 = !DILocation(line: 343, column: 29, scope: !1005)
!1081 = !DILocation(line: 344, column: 7, scope: !1005)
!1082 = !DILocation(line: 344, column: 38, scope: !1005)
!1083 = !DILocation(line: 348, column: 7, scope: !1005)
!1084 = !DILocation(line: 350, column: 36, scope: !1016)
!1085 = !DILocation(line: 350, column: 7, scope: !1017)
!1086 = !DILocation(line: 350, column: 33, scope: !1016)
!1087 = !DILocation(line: 352, column: 11, scope: !1015)
!1088 = !DILocation(line: 352, column: 79, scope: !1015)
!1089 = !DILocation(line: 352, column: 37, scope: !1015)
!1090 = !DILocation(line: 353, column: 11, scope: !1015)
!1091 = !DILocation(line: 353, column: 31, scope: !1015)
!1092 = !DILocation(line: 0, scope: !631, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 354, column: 23, scope: !1015)
!1094 = !DILocation(line: 183, column: 13, scope: !631, inlinedAt: !1093)
!1095 = !DILocation(line: 183, column: 25, scope: !631, inlinedAt: !1093)
!1096 = !DILocation(line: 183, column: 20, scope: !631, inlinedAt: !1093)
!1097 = !DILocation(line: 183, column: 10, scope: !631, inlinedAt: !1093)
!1098 = !DILocation(line: 355, column: 11, scope: !1015)
!1099 = !DILocation(line: 356, column: 9, scope: !1016)
!1100 = distinct !{!1100, !1085, !1101, !451}
!1101 = !DILocation(line: 356, column: 9, scope: !1017)
!1102 = !DILocation(line: 359, column: 7, scope: !1005)
!1103 = !DILocation(line: 361, column: 16, scope: !1022)
!1104 = !DILocation(line: 361, column: 11, scope: !1005)
!1105 = !DILocation(line: 363, column: 11, scope: !1021)
!1106 = !DILocation(line: 363, column: 34, scope: !1021)
!1107 = !DILocation(line: 366, column: 11, scope: !1021)
!1108 = !{i32 0, i32 20}
!1109 = !DILocation(line: 367, column: 9, scope: !1022)
!1110 = !DILocation(line: 367, column: 9, scope: !1021)
!1111 = !DILocation(line: 370, column: 7, scope: !1005)
!1112 = !DILocation(line: 371, column: 7, scope: !1005)
!1113 = !DILocation(line: 374, column: 5, scope: !1006)
!1114 = !DILocation(line: 0, scope: !1011)
!1115 = !DILocation(line: 375, column: 1, scope: !991)
!1116 = !DISubprogram(name: "gsl_matrix_set_identity", scope: !155, file: !155, line: 209, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !153}
!1119 = !DISubprogram(name: "gsl_matrix_const_subcolumn", scope: !155, file: !155, line: 181, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!594, !304, !201, !201, !201}
!1122 = !DISubprogram(name: "gsl_linalg_householder_hm", scope: !297, file: !297, line: 97, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!86, !140, !469, !153}
!1125 = !DISubprogram(name: "gsl_matrix_row", scope: !155, file: !155, line: 106, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!221, !153, !201}
!1128 = distinct !DISubprogram(name: "gsl_linalg_COD_matZ", scope: !2, file: !2, line: 390, type: !1129, scopeLine: 392, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!86, !304, !469, !201, !153, !174}
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1146, !1150, !1151}
!1132 = !DILocalVariable(name: "QRZT", arg: 1, scope: !1128, file: !2, line: 390, type: !304)
!1133 = !DILocalVariable(name: "tau_Z", arg: 2, scope: !1128, file: !2, line: 390, type: !469)
!1134 = !DILocalVariable(name: "rank", arg: 3, scope: !1128, file: !2, line: 390, type: !201)
!1135 = !DILocalVariable(name: "A", arg: 4, scope: !1128, file: !2, line: 391, type: !153)
!1136 = !DILocalVariable(name: "work", arg: 5, scope: !1128, file: !2, line: 391, type: !174)
!1137 = !DILocalVariable(name: "M", scope: !1128, file: !2, line: 393, type: !201)
!1138 = !DILocalVariable(name: "N", scope: !1128, file: !2, line: 394, type: !201)
!1139 = !DILocalVariable(name: "i", scope: !1140, file: !2, line: 413, type: !159)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !2, line: 412, column: 9)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 411, column: 11)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 409, column: 5)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 404, column: 12)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 400, column: 12)
!1145 = distinct !DILexicalBlock(scope: !1128, file: !2, line: 396, column: 7)
!1146 = !DILocalVariable(name: "h", scope: !1147, file: !2, line: 417, type: !592)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 416, column: 13)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 415, column: 11)
!1149 = distinct !DILexicalBlock(scope: !1140, file: !2, line: 415, column: 11)
!1150 = !DILocalVariable(name: "m", scope: !1147, file: !2, line: 418, type: !214)
!1151 = !DILocalVariable(name: "ti", scope: !1147, file: !2, line: 419, type: !140)
!1152 = distinct !DIAssignID()
!1153 = !DILocation(line: 0, scope: !1147)
!1154 = distinct !DIAssignID()
!1155 = !DILocation(line: 0, scope: !1128)
!1156 = !DILocation(line: 393, column: 23, scope: !1128)
!1157 = !DILocation(line: 394, column: 23, scope: !1128)
!1158 = !DILocation(line: 396, column: 14, scope: !1145)
!1159 = !DILocation(line: 396, column: 22, scope: !1145)
!1160 = !DILocation(line: 396, column: 19, scope: !1145)
!1161 = !DILocation(line: 396, column: 7, scope: !1128)
!1162 = !DILocation(line: 398, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 398, column: 7)
!1164 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 397, column: 5)
!1165 = !DILocation(line: 400, column: 24, scope: !1144)
!1166 = !DILocation(line: 400, column: 12, scope: !1145)
!1167 = !DILocation(line: 402, column: 7, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !2, line: 402, column: 7)
!1169 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 401, column: 5)
!1170 = !DILocation(line: 404, column: 18, scope: !1143)
!1171 = !DILocation(line: 404, column: 23, scope: !1143)
!1172 = !DILocation(line: 404, column: 12, scope: !1144)
!1173 = !DILocation(line: 406, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 406, column: 7)
!1175 = distinct !DILexicalBlock(scope: !1143, file: !2, line: 405, column: 5)
!1176 = !DILocation(line: 411, column: 16, scope: !1141)
!1177 = !DILocation(line: 0, scope: !1140)
!1178 = !DILocation(line: 411, column: 11, scope: !1142)
!1179 = !DILocation(line: 415, column: 32, scope: !1148)
!1180 = !DILocation(line: 415, column: 36, scope: !1148)
!1181 = !DILocation(line: 417, column: 15, scope: !1147)
!1182 = !DILocation(line: 417, column: 41, scope: !1147)
!1183 = !DILocation(line: 418, column: 15, scope: !1147)
!1184 = !DILocation(line: 418, column: 71, scope: !1147)
!1185 = !DILocation(line: 418, column: 35, scope: !1147)
!1186 = !DILocation(line: 0, scope: !631, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 419, column: 27, scope: !1147)
!1188 = !DILocation(line: 183, column: 13, scope: !631, inlinedAt: !1187)
!1189 = !DILocation(line: 183, column: 25, scope: !631, inlinedAt: !1187)
!1190 = !DILocation(line: 183, column: 20, scope: !631, inlinedAt: !1187)
!1191 = !DILocation(line: 183, column: 10, scope: !631, inlinedAt: !1187)
!1192 = !DILocation(line: 420, column: 15, scope: !1147)
!1193 = !DILocation(line: 421, column: 13, scope: !1148)
!1194 = !DILocation(line: 415, column: 28, scope: !1148)
!1195 = distinct !{!1195, !1196, !1197, !451}
!1196 = !DILocation(line: 415, column: 11, scope: !1149)
!1197 = !DILocation(line: 421, column: 13, scope: !1149)
!1198 = !DILocation(line: 0, scope: !1145)
!1199 = !DILocation(line: 426, column: 1, scope: !1128)
!1200 = !DISubprogram(name: "gsl_matrix_set_zero", scope: !155, file: !155, line: 208, type: !1117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1201 = !DISubprogram(name: "gsl_matrix_tricpy", scope: !155, file: !155, line: 219, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!86, !295, !1204, !153, !304}
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!1205 = !DISubprogram(name: "gsl_matrix_const_subrow", scope: !155, file: !155, line: 177, type: !1120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1206 = distinct !DISubprogram(name: "cod_householder_mh", scope: !2, file: !2, line: 592, type: !1207, scopeLine: 594, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !1209)
!1207 = !DISubroutineType(cc: DW_CC_nocall, types: !1208)
!1208 = !{!86, !306, !469, !153, !174}
!1209 = !{!1210, !1211, !1212, !1213, !1214, !1217, !1218, !1219, !1220}
!1210 = !DILocalVariable(name: "tau", arg: 1, scope: !1206, file: !2, line: 592, type: !306)
!1211 = !DILocalVariable(name: "v", arg: 2, scope: !1206, file: !2, line: 592, type: !469)
!1212 = !DILocalVariable(name: "A", arg: 3, scope: !1206, file: !2, line: 592, type: !153)
!1213 = !DILocalVariable(name: "work", arg: 4, scope: !1206, file: !2, line: 593, type: !174)
!1214 = !DILocalVariable(name: "M", scope: !1215, file: !2, line: 601, type: !201)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 600, column: 5)
!1216 = distinct !DILexicalBlock(scope: !1206, file: !2, line: 595, column: 7)
!1217 = !DILocalVariable(name: "N", scope: !1215, file: !2, line: 602, type: !201)
!1218 = !DILocalVariable(name: "L", scope: !1215, file: !2, line: 603, type: !201)
!1219 = !DILocalVariable(name: "A1", scope: !1215, file: !2, line: 604, type: !220)
!1220 = !DILocalVariable(name: "C", scope: !1215, file: !2, line: 605, type: !214)
!1221 = distinct !DIAssignID()
!1222 = !DILocation(line: 0, scope: !1215)
!1223 = distinct !DIAssignID()
!1224 = !DILocation(line: 0, scope: !1206)
!1225 = !DILocation(line: 595, column: 11, scope: !1216)
!1226 = !DILocation(line: 595, column: 7, scope: !1206)
!1227 = !DILocation(line: 601, column: 27, scope: !1215)
!1228 = !DILocation(line: 602, column: 27, scope: !1215)
!1229 = !DILocation(line: 603, column: 27, scope: !1215)
!1230 = !DILocation(line: 604, column: 7, scope: !1215)
!1231 = !DILocation(line: 604, column: 28, scope: !1215)
!1232 = !DILocation(line: 605, column: 7, scope: !1215)
!1233 = !DILocation(line: 605, column: 56, scope: !1215)
!1234 = !DILocation(line: 605, column: 27, scope: !1215)
!1235 = !DILocation(line: 608, column: 7, scope: !1215)
!1236 = !DILocation(line: 611, column: 7, scope: !1215)
!1237 = !DILocation(line: 614, column: 22, scope: !1215)
!1238 = !DILocation(line: 614, column: 7, scope: !1215)
!1239 = !DILocation(line: 617, column: 7, scope: !1215)
!1240 = !DILocation(line: 620, column: 5, scope: !1216)
!1241 = !DILocation(line: 621, column: 1, scope: !1206)
!1242 = !DISubprogram(name: "gsl_vector_set_all", scope: !176, file: !176, line: 127, type: !1243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{null, !174, !140}
!1245 = !DISubprogram(name: "gsl_matrix_subrow", scope: !155, file: !155, line: 121, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!221, !153, !201, !201, !201}
!1248 = !DISubprogram(name: "gsl_blas_dnrm2", scope: !565, file: !565, line: 91, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!140, !469}
!1251 = !DISubprogram(name: "gsl_hypot", scope: !1252, file: !1252, line: 37, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1252 = !DIFile(filename: "../gsl/gsl_sys.h", directory: "/PI-detector/external/gsl/gsl-2.5/linalg", checksumkind: CSK_MD5, checksum: "66066a5c22c0bbe63a298abf4db295db")
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!140, !306, !306}
!1255 = !DISubprogram(name: "gsl_blas_dscal", scope: !565, file: !565, line: 173, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{null, !140, !174}
!1258 = !DISubprogram(name: "gsl_matrix_subcolumn", scope: !155, file: !155, line: 125, type: !1246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1259 = !DISubprogram(name: "gsl_blas_dgemv", scope: !565, file: !565, line: 205, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!86, !570, !140, !304, !469, !140, !174}
!1262 = !DISubprogram(name: "gsl_blas_daxpy", scope: !565, file: !565, line: 121, type: !1263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!86, !140, !469, !174}
!1265 = !DISubprogram(name: "gsl_blas_dger", scope: !565, file: !565, line: 288, type: !1266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!86, !140, !469, !469, !153}
!1268 = !DISubprogram(name: "gsl_blas_ddot", scope: !565, file: !565, line: 66, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!86, !469, !469, !139}
!1271 = !DISubprogram(name: "gsl_matrix_const_diagonal", scope: !155, file: !155, line: 166, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!594, !304}
!1274 = !DISubprogram(name: "gsl_matrix_transpose_tricpy", scope: !155, file: !155, line: 226, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1275 = !DISubprogram(name: "sqrt", scope: !1276, file: !1276, line: 143, type: !1277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1276 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!140, !140}
