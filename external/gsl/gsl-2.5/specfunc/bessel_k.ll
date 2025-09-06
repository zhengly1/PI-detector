; ModuleID = 'bessel_k.c'
source_filename = "bessel_k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_k.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_k0_scaled_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_k1_scaled_e(x, &result)\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_k2_scaled_e(x, &result)\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_kl_scaled_e(l, x, &result)\00", align 1, !dbg !31

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_k0_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !88 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !101, metadata !DIExpression()), !dbg !103
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !102, metadata !DIExpression()), !dbg !103
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !104
  br i1 %3, label %6, label %4, !dbg !106

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !107, !tbaa !110
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !107
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !107, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 1) #6, !dbg !116
  br label %14, !dbg !116

6:                                                ; preds = %2
  %7 = fmul double %0, 2.000000e+00, !dbg !118
  %8 = fdiv double 0x400921FB54442D18, %7, !dbg !120
  store double %8, ptr %1, align 8, !dbg !121, !tbaa !110
  %9 = tail call double @llvm.fabs.f64(double %8), !dbg !122
  %10 = fmul double %9, 0x3CC0000000000000, !dbg !123
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !124
  store double %10, ptr %11, align 8, !dbg !125, !tbaa !115
  %12 = fcmp olt double %9, 0x10000000000000, !dbg !126
  br i1 %12, label %13, label %14, !dbg !128

13:                                               ; preds = %6
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #6, !dbg !129
  br label %14, !dbg !129

14:                                               ; preds = %6, %4, %13
  %15 = phi i32 [ 1, %4 ], [ 15, %13 ], [ 0, %6 ], !dbg !131
  ret i32 %15, !dbg !132
}

declare !dbg !133 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_k1_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !138 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !140, metadata !DIExpression()), !dbg !142
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !141, metadata !DIExpression()), !dbg !142
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !143
  br i1 %3, label %6, label %4, !dbg !145

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !146, !tbaa !110
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !146
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !146, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 1) #6, !dbg !149
  br label %21, !dbg !149

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x1FFF5DE25335C4EE, !dbg !151
  br i1 %7, label %8, label %10, !dbg !153

8:                                                ; preds = %6
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !154, !tbaa !110
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !154
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !154, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 16) #6, !dbg !157
  br label %21, !dbg !157

10:                                               ; preds = %6
  %11 = fmul double %0, 2.000000e+00, !dbg !159
  %12 = fdiv double 0x400921FB54442D18, %11, !dbg !161
  %13 = fdiv double 1.000000e+00, %0, !dbg !162
  %14 = fadd double %13, 1.000000e+00, !dbg !163
  %15 = fmul double %12, %14, !dbg !164
  store double %15, ptr %1, align 8, !dbg !165, !tbaa !110
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !166
  %17 = fmul double %16, 0x3CC0000000000000, !dbg !167
  %18 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !168
  store double %17, ptr %18, align 8, !dbg !169, !tbaa !115
  %19 = fcmp olt double %16, 0x10000000000000, !dbg !170
  br i1 %19, label %20, label %21, !dbg !172

20:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #6, !dbg !173
  br label %21, !dbg !173

21:                                               ; preds = %10, %4, %8, %20
  %22 = phi i32 [ 1, %4 ], [ 16, %8 ], [ 15, %20 ], [ 0, %10 ], !dbg !175
  ret i32 %22, !dbg !176
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_k2_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !177 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !179, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !180, metadata !DIExpression()), !dbg !181
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !182
  br i1 %3, label %6, label %4, !dbg !184

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !185, !tbaa !110
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !185
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !185, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 124, i32 noundef 1) #6, !dbg !188
  br label %24, !dbg !188

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x2AA965FEA53D6E98, !dbg !190
  br i1 %7, label %8, label %10, !dbg !192

8:                                                ; preds = %6
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !193, !tbaa !110
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !193
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !193, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 16) #6, !dbg !196
  br label %24, !dbg !196

10:                                               ; preds = %6
  %11 = fmul double %0, 2.000000e+00, !dbg !198
  %12 = fdiv double 0x400921FB54442D18, %11, !dbg !200
  %13 = fdiv double 3.000000e+00, %0, !dbg !201
  %14 = fdiv double 1.000000e+00, %0, !dbg !202
  %15 = fadd double %14, 1.000000e+00, !dbg !203
  %16 = fmul double %13, %15, !dbg !204
  %17 = fadd double %16, 1.000000e+00, !dbg !205
  %18 = fmul double %12, %17, !dbg !206
  store double %18, ptr %1, align 8, !dbg !207, !tbaa !110
  %19 = tail call double @llvm.fabs.f64(double %18), !dbg !208
  %20 = fmul double %19, 0x3CC0000000000000, !dbg !209
  %21 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !210
  store double %20, ptr %21, align 8, !dbg !211, !tbaa !115
  %22 = fcmp olt double %19, 0x10000000000000, !dbg !212
  br i1 %22, label %23, label %24, !dbg !214

23:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 15) #6, !dbg !215
  br label %24, !dbg !215

24:                                               ; preds = %10, %4, %8, %23
  %25 = phi i32 [ 1, %4 ], [ 16, %8 ], [ 15, %23 ], [ 0, %10 ], !dbg !217
  ret i32 %25, !dbg !218
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_kl_scaled_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !219 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !248
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !249
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !250
  call void @llvm.dbg.assign(metadata i1 undef, metadata !239, metadata !DIExpression(), metadata !250, metadata ptr %6, metadata !DIExpression()), !dbg !251
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !252
  call void @llvm.dbg.assign(metadata i1 undef, metadata !241, metadata !DIExpression(), metadata !252, metadata ptr %7, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !223, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata double %1, metadata !224, metadata !DIExpression()), !dbg !253
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !225, metadata !DIExpression()), !dbg !253
  %8 = icmp slt i32 %0, 0, !dbg !254
  %9 = fcmp ole double %1, 0.000000e+00
  %10 = or i1 %8, %9, !dbg !255
  br i1 %10, label %11, label %13, !dbg !255

11:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !256, !tbaa !110
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !256
  store double 0x7FF8000000000000, ptr %12, align 8, !dbg !256, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141, i32 noundef 1) #6, !dbg !259
  br label %212, !dbg !259

13:                                               ; preds = %3
  switch i32 %0, label %55 [
    i32 0, label %14
    i32 1, label %22
    i32 2, label %37
  ], !dbg !261

14:                                               ; preds = %13
  call void @llvm.dbg.value(metadata double %1, metadata !101, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.value(metadata ptr %2, metadata !102, metadata !DIExpression()), !dbg !262
  %15 = fmul double %1, 2.000000e+00, !dbg !265
  %16 = fdiv double 0x400921FB54442D18, %15, !dbg !266
  store double %16, ptr %2, align 8, !dbg !267, !tbaa !110
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !268
  %18 = fmul double %17, 0x3CC0000000000000, !dbg !269
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !270
  store double %18, ptr %19, align 8, !dbg !271, !tbaa !115
  %20 = fcmp olt double %17, 0x10000000000000, !dbg !272
  br i1 %20, label %21, label %212, !dbg !273

21:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #6, !dbg !274
  br label %212, !dbg !274

22:                                               ; preds = %13
  call void @llvm.dbg.value(metadata double %1, metadata !140, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.value(metadata ptr %2, metadata !141, metadata !DIExpression()), !dbg !275
  %23 = fcmp olt double %1, 0x1FFF5DE25335C4EE, !dbg !278
  br i1 %23, label %24, label %26, !dbg !279

24:                                               ; preds = %22
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !280, !tbaa !110
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !280
  store double 0x7FF0000000000000, ptr %25, align 8, !dbg !280, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 16) #6, !dbg !281
  br label %212, !dbg !281

26:                                               ; preds = %22
  %27 = fmul double %1, 2.000000e+00, !dbg !282
  %28 = fdiv double 0x400921FB54442D18, %27, !dbg !283
  %29 = fdiv double 1.000000e+00, %1, !dbg !284
  %30 = fadd double %29, 1.000000e+00, !dbg !285
  %31 = fmul double %28, %30, !dbg !286
  store double %31, ptr %2, align 8, !dbg !287, !tbaa !110
  %32 = tail call double @llvm.fabs.f64(double %31), !dbg !288
  %33 = fmul double %32, 0x3CC0000000000000, !dbg !289
  %34 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !290
  store double %33, ptr %34, align 8, !dbg !291, !tbaa !115
  %35 = fcmp olt double %32, 0x10000000000000, !dbg !292
  br i1 %35, label %36, label %212, !dbg !293

36:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #6, !dbg !294
  br label %212, !dbg !294

37:                                               ; preds = %13
  call void @llvm.dbg.value(metadata double %1, metadata !179, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata ptr %2, metadata !180, metadata !DIExpression()), !dbg !295
  %38 = fcmp olt double %1, 0x2AA965FEA53D6E98, !dbg !298
  br i1 %38, label %39, label %41, !dbg !299

39:                                               ; preds = %37
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !300, !tbaa !110
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !300
  store double 0x7FF0000000000000, ptr %40, align 8, !dbg !300, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 16) #6, !dbg !301
  br label %212, !dbg !301

41:                                               ; preds = %37
  %42 = fmul double %1, 2.000000e+00, !dbg !302
  %43 = fdiv double 0x400921FB54442D18, %42, !dbg !303
  %44 = fdiv double 3.000000e+00, %1, !dbg !304
  %45 = fdiv double 1.000000e+00, %1, !dbg !305
  %46 = fadd double %45, 1.000000e+00, !dbg !306
  %47 = fmul double %44, %46, !dbg !307
  %48 = fadd double %47, 1.000000e+00, !dbg !308
  %49 = fmul double %43, %48, !dbg !309
  store double %49, ptr %2, align 8, !dbg !310, !tbaa !110
  %50 = tail call double @llvm.fabs.f64(double %49), !dbg !311
  %51 = fmul double %50, 0x3CC0000000000000, !dbg !312
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !313
  store double %51, ptr %52, align 8, !dbg !314, !tbaa !115
  %53 = fcmp olt double %50, 0x10000000000000, !dbg !315
  br i1 %53, label %54, label %212, !dbg !316

54:                                               ; preds = %41
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 15) #6, !dbg !317
  br label %212, !dbg !317

55:                                               ; preds = %13
  %56 = fcmp olt double %1, 3.000000e+00, !dbg !318
  br i1 %56, label %57, label %113, !dbg !319

57:                                               ; preds = %55
  call void @llvm.dbg.assign(metadata i1 undef, metadata !320, metadata !DIExpression(), metadata !248, metadata ptr %4, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.assign(metadata i1 undef, metadata !332, metadata !DIExpression(), metadata !249, metadata ptr %5, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i32 %0, metadata !323, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata double %1, metadata !324, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.value(metadata ptr %2, metadata !325, metadata !DIExpression()), !dbg !343
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !347
  %58 = add nuw nsw i32 %0, 1, !dbg !348
  %59 = tail call double @gsl_sf_pow_int(double noundef %1, i32 noundef %58) #6, !dbg !349
  call void @llvm.dbg.value(metadata double %59, metadata !326, metadata !DIExpression()), !dbg !343
  %60 = shl nuw nsw i32 %0, 1, !dbg !350
  %61 = add nsw i32 %60, -1, !dbg !351
  %62 = call i32 @gsl_sf_doublefact_e(i32 noundef %61, ptr noundef nonnull %4) #6, !dbg !352
  call void @llvm.dbg.value(metadata i32 %62, metadata !327, metadata !DIExpression()), !dbg !343
  %63 = icmp ne i32 %62, 0, !dbg !353
  %64 = fcmp oeq double %59, 0.000000e+00
  %65 = select i1 %63, i1 true, i1 %64, !dbg !354
  br i1 %65, label %66, label %68, !dbg !354

66:                                               ; preds = %57
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !355, !tbaa !110
  %67 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !355
  store double 0x7FF0000000000000, ptr %67, align 8, !dbg !355, !tbaa !115
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef 16) #6, !dbg !358
  br label %111, !dbg !358

68:                                               ; preds = %57
  call void @llvm.dbg.value(metadata i32 50, metadata !328, metadata !DIExpression()), !dbg !346
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !360
  %69 = and i32 %0, 1, !dbg !361
  %70 = icmp eq i32 %69, 0, !dbg !361
  call void @llvm.dbg.value(metadata double %95, metadata !334, metadata !DIExpression()), !dbg !346
  %71 = call double @exp(double noundef %1) #6, !dbg !362
  call void @llvm.dbg.value(metadata double %71, metadata !335, metadata !DIExpression()), !dbg !346
  %72 = fmul double %1, 5.000000e-01, !dbg !363
  %73 = fmul double %72, %1, !dbg !364
  call void @llvm.dbg.value(metadata double %73, metadata !336, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !337, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !338, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !339, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i32 1, metadata !342, metadata !DIExpression()), !dbg !346
  br label %74, !dbg !365

74:                                               ; preds = %74, %68
  %75 = phi i32 [ 1, %68 ], [ %91, %74 ]
  %76 = phi double [ 1.000000e+00, %68 ], [ %85, %74 ]
  %77 = phi double [ 1.000000e+00, %68 ], [ %84, %74 ]
  %78 = phi double [ 1.000000e+00, %68 ], [ %87, %74 ]
  call void @llvm.dbg.value(metadata i32 %75, metadata !342, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %76, metadata !339, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %77, metadata !338, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %78, metadata !337, metadata !DIExpression()), !dbg !346
  %79 = sub nsw i32 %75, %0, !dbg !367
  %80 = shl nsw i32 %79, 1, !dbg !370
  %81 = add nsw i32 %80, -1, !dbg !371
  %82 = mul nsw i32 %81, %75, !dbg !372
  %83 = sitofp i32 %82 to double, !dbg !373
  %84 = fdiv double %77, %83, !dbg !374
  call void @llvm.dbg.value(metadata double %84, metadata !338, metadata !DIExpression()), !dbg !346
  %85 = fmul double %73, %76, !dbg !375
  call void @llvm.dbg.value(metadata double %85, metadata !339, metadata !DIExpression()), !dbg !346
  %86 = fmul double %85, %84, !dbg !376
  call void @llvm.dbg.value(metadata double %86, metadata !340, metadata !DIExpression()), !dbg !346
  %87 = fadd double %78, %86, !dbg !377
  call void @llvm.dbg.value(metadata double %87, metadata !337, metadata !DIExpression()), !dbg !346
  %88 = fdiv double %86, %87, !dbg !378
  %89 = call double @llvm.fabs.f64(double %88), !dbg !380
  %90 = fcmp olt double %89, 0x3CB0000000000000, !dbg !381
  call void @llvm.dbg.value(metadata i32 %75, metadata !342, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !346
  %91 = add nuw nsw i32 %75, 1
  call void @llvm.dbg.value(metadata i32 %91, metadata !342, metadata !DIExpression()), !dbg !346
  %92 = icmp eq i32 %91, 50
  %93 = select i1 %90, i1 true, i1 %92, !dbg !382
  br i1 %93, label %94, label %74, !dbg !382, !llvm.loop !383

94:                                               ; preds = %74
  %95 = select i1 %70, double 1.000000e+00, double -1.000000e+00, !dbg !361
  call void @llvm.dbg.value(metadata double %87, metadata !337, metadata !DIExpression()), !dbg !346
  %96 = call i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %5) #6, !dbg !386
  call void @llvm.dbg.value(metadata i32 %96, metadata !341, metadata !DIExpression()), !dbg !346
  %97 = load double, ptr %4, align 8, !dbg !387, !tbaa !110
  %98 = fmul double %95, %97, !dbg !388
  %99 = fdiv double %98, %59, !dbg !389
  %100 = fmul double %87, %99, !dbg !390
  call void @llvm.dbg.value(metadata double %100, metadata !333, metadata !DIExpression()), !dbg !346
  %101 = fmul double %95, -5.000000e-01, !dbg !391
  %102 = fmul double %101, 0x400921FB54442D18, !dbg !392
  %103 = load double, ptr %5, align 8, !dbg !393, !tbaa !110
  %104 = fmul double %71, %103, !dbg !394
  %105 = fsub double %104, %100, !dbg !395
  %106 = fmul double %102, %105, !dbg !396
  %107 = fmul double %71, %106, !dbg !397
  store double %107, ptr %2, align 8, !dbg !397, !tbaa !110
  %108 = call double @llvm.fabs.f64(double %107), !dbg !398
  %109 = fmul double %108, 0x3CC0000000000000, !dbg !399
  %110 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !400
  store double %109, ptr %110, align 8, !dbg !401, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !402
  br label %111

111:                                              ; preds = %66, %94
  %112 = phi i32 [ 16, %66 ], [ %96, %94 ], !dbg !403
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !404
  br label %212, !dbg !405

113:                                              ; preds = %55
  %114 = fmul double %1, 0x3ED965FEA53D6E41, !dbg !406
  %115 = mul nsw i32 %0, %0, !dbg !407
  %116 = add nuw i32 %0, 1, !dbg !408
  %117 = add i32 %116, %115, !dbg !409
  %118 = sitofp i32 %117 to double, !dbg !410
  %119 = fcmp ogt double %114, %118, !dbg !411
  br i1 %119, label %120, label %131, !dbg !412

120:                                              ; preds = %113
  %121 = sitofp i32 %0 to double, !dbg !413
  %122 = fadd double %121, 5.000000e-01, !dbg !414
  %123 = tail call i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double noundef %122, double noundef %1, ptr noundef %2) #6, !dbg !415
  tail call void @llvm.dbg.value(metadata i32 %123, metadata !226, metadata !DIExpression()), !dbg !416
  %124 = fdiv double 0x3FF921FB54442D18, %1, !dbg !417
  %125 = tail call double @sqrt(double noundef %124) #6, !dbg !418
  tail call void @llvm.dbg.value(metadata double %125, metadata !234, metadata !DIExpression()), !dbg !416
  %126 = load double, ptr %2, align 8, !dbg !419, !tbaa !110
  %127 = fmul double %125, %126, !dbg !419
  store double %127, ptr %2, align 8, !dbg !419, !tbaa !110
  %128 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !420
  %129 = load double, ptr %128, align 8, !dbg !421, !tbaa !115
  %130 = fmul double %125, %129, !dbg !421
  store double %130, ptr %128, align 8, !dbg !421, !tbaa !115
  br label %212

131:                                              ; preds = %113
  %132 = add nuw nsw i32 %115, 1, !dbg !422
  %133 = sitofp i32 %132 to double, !dbg !422
  %134 = fdiv double 2.900000e-01, %133, !dbg !422
  %135 = fmul double %1, %1, !dbg !422
  %136 = fadd double %135, %133, !dbg !422
  %137 = fdiv double 5.000000e-01, %136, !dbg !422
  %138 = fcmp olt double %134, %137, !dbg !422
  %139 = select i1 %138, double %134, double %137, !dbg !422
  %140 = fcmp olt double %139, 0x3ED965FEA53D6E41, !dbg !423
  br i1 %140, label %141, label %152, !dbg !424

141:                                              ; preds = %131
  %142 = sitofp i32 %0 to double, !dbg !425
  %143 = fadd double %142, 5.000000e-01, !dbg !426
  %144 = tail call i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double noundef %143, double noundef %1, ptr noundef %2) #6, !dbg !427
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !235, metadata !DIExpression()), !dbg !428
  %145 = fdiv double 0x3FF921FB54442D18, %1, !dbg !429
  %146 = tail call double @sqrt(double noundef %145) #6, !dbg !430
  tail call void @llvm.dbg.value(metadata double %146, metadata !238, metadata !DIExpression()), !dbg !428
  %147 = load double, ptr %2, align 8, !dbg !431, !tbaa !110
  %148 = fmul double %146, %147, !dbg !431
  store double %148, ptr %2, align 8, !dbg !431, !tbaa !110
  %149 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !432
  %150 = load double, ptr %149, align 8, !dbg !433, !tbaa !115
  %151 = fmul double %146, %150, !dbg !433
  store double %151, ptr %149, align 8, !dbg !433, !tbaa !115
  br label %212

152:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !434
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !435
  %153 = call i32 @gsl_sf_bessel_k1_scaled_e(double noundef %1, ptr noundef nonnull %6), !dbg !436, !range !437
  tail call void @llvm.dbg.value(metadata i32 %153, metadata !242, metadata !DIExpression()), !dbg !251
  %154 = call i32 @gsl_sf_bessel_k0_scaled_e(double noundef %1, ptr noundef nonnull %7), !dbg !438, !range !439
  tail call void @llvm.dbg.value(metadata i32 %154, metadata !243, metadata !DIExpression()), !dbg !251
  %155 = load double, ptr %6, align 8, !dbg !440, !tbaa !110
  tail call void @llvm.dbg.value(metadata double %155, metadata !245, metadata !DIExpression()), !dbg !251
  %156 = load double, ptr %7, align 8, !dbg !441, !tbaa !110
  tail call void @llvm.dbg.value(metadata double %156, metadata !246, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata i32 1, metadata !247, metadata !DIExpression()), !dbg !251
  %157 = add i32 %0, -1, !dbg !442
  %158 = and i32 %157, 1, !dbg !442
  %159 = icmp eq i32 %0, 2, !dbg !442
  br i1 %159, label %186, label %160, !dbg !442

160:                                              ; preds = %152
  %161 = and i32 %157, -2, !dbg !442
  br label %162, !dbg !442

162:                                              ; preds = %162, %160
  %163 = phi i32 [ 1, %160 ], [ %179, %162 ]
  %164 = phi double [ %156, %160 ], [ %172, %162 ]
  %165 = phi double [ %155, %160 ], [ %178, %162 ]
  %166 = phi i32 [ 0, %160 ], [ %180, %162 ]
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !247, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %164, metadata !246, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %165, metadata !245, metadata !DIExpression()), !dbg !251
  %167 = shl nuw nsw i32 %163, 1, !dbg !444
  %168 = or disjoint i32 %167, 1, !dbg !447
  %169 = sitofp i32 %168 to double, !dbg !448
  %170 = fdiv double %169, %1, !dbg !449
  %171 = fmul double %165, %170, !dbg !450
  %172 = fadd double %164, %171, !dbg !451
  tail call void @llvm.dbg.value(metadata double %172, metadata !244, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %165, metadata !246, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %172, metadata !245, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !247, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !251
  tail call void @llvm.dbg.value(metadata i32 %163, metadata !247, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !251
  tail call void @llvm.dbg.value(metadata double %165, metadata !246, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %172, metadata !245, metadata !DIExpression()), !dbg !251
  %173 = shl nuw i32 %163, 1, !dbg !444
  %174 = add i32 %173, 3, !dbg !447
  %175 = sitofp i32 %174 to double, !dbg !448
  %176 = fdiv double %175, %1, !dbg !449
  %177 = fmul double %172, %176, !dbg !450
  %178 = fadd double %165, %177, !dbg !451
  tail call void @llvm.dbg.value(metadata double %178, metadata !244, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %172, metadata !246, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double %178, metadata !245, metadata !DIExpression()), !dbg !251
  %179 = add nuw nsw i32 %163, 2, !dbg !452
  tail call void @llvm.dbg.value(metadata i32 %179, metadata !247, metadata !DIExpression()), !dbg !251
  %180 = add i32 %166, 2, !dbg !442
  %181 = icmp eq i32 %180, %161, !dbg !442
  br i1 %181, label %182, label %162, !dbg !442, !llvm.loop !453

182:                                              ; preds = %162
  %183 = shl nuw nsw i32 %179, 1, !dbg !444
  %184 = or disjoint i32 %183, 1, !dbg !447
  %185 = sitofp i32 %184 to double, !dbg !448
  br label %186, !dbg !442

186:                                              ; preds = %182, %152
  %187 = phi double [ undef, %152 ], [ %178, %182 ]
  %188 = phi double [ 3.000000e+00, %152 ], [ %185, %182 ]
  %189 = phi double [ %156, %152 ], [ %172, %182 ]
  %190 = phi double [ %155, %152 ], [ %178, %182 ]
  %191 = icmp eq i32 %158, 0, !dbg !442
  %192 = fdiv double %188, %1, !dbg !442
  %193 = fmul double %190, %192, !dbg !442
  %194 = fadd double %189, %193, !dbg !442
  %195 = select i1 %191, double %187, double %194, !dbg !442
  store double %195, ptr %2, align 8, !dbg !455, !tbaa !110
  %196 = tail call double @llvm.fabs.f64(double %195), !dbg !456
  %197 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !457
  %198 = load double, ptr %197, align 8, !dbg !457, !tbaa !115
  %199 = fdiv double %198, %155, !dbg !458
  %200 = tail call double @llvm.fabs.f64(double %199), !dbg !459
  %201 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !460
  %202 = load double, ptr %201, align 8, !dbg !460, !tbaa !115
  %203 = fdiv double %202, %156, !dbg !461
  %204 = tail call double @llvm.fabs.f64(double %203), !dbg !462
  %205 = fadd double %200, %204, !dbg !463
  %206 = fmul double %196, %205, !dbg !464
  %207 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !465
  %208 = fmul double %196, 0x3CC0000000000000, !dbg !466
  %209 = fadd double %208, %206, !dbg !467
  store double %209, ptr %207, align 8, !dbg !467, !tbaa !115
  %210 = icmp eq i32 %153, 0, !dbg !468
  %211 = select i1 %210, i32 %154, i32 %153, !dbg !468
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !469
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !469
  br label %212

212:                                              ; preds = %54, %41, %39, %36, %26, %24, %21, %14, %11, %111, %120, %141, %186
  %213 = phi i32 [ 1, %11 ], [ %112, %111 ], [ %123, %120 ], [ %144, %141 ], [ %211, %186 ], [ 15, %21 ], [ 0, %14 ], [ 16, %24 ], [ 15, %36 ], [ 0, %26 ], [ 16, %39 ], [ 15, %54 ], [ 0, %41 ], !dbg !470
  ret i32 %213, !dbg !471
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !472 i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !476 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare !dbg !480 i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_kl_scaled_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !481 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !486, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata double %1, metadata !487, metadata !DIExpression()), !dbg !501
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !488, metadata !DIExpression()), !dbg !501
  %4 = icmp slt i32 %0, 0, !dbg !502
  %5 = fcmp ole double %1, 0.000000e+00
  %6 = or i1 %4, %5, !dbg !503
  br i1 %6, label %7, label %8, !dbg !503

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 196, i32 noundef 1) #6, !dbg !504
  br label %88, !dbg !504

8:                                                ; preds = %3
  %9 = icmp eq i32 %0, 0, !dbg !507
  br i1 %9, label %10, label %18, !dbg !508

10:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %1, metadata !101, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr undef, metadata !102, metadata !DIExpression()), !dbg !509
  %11 = fmul double %1, 2.000000e+00, !dbg !511
  %12 = fdiv double 0x400921FB54442D18, %11, !dbg !512
  tail call void @llvm.dbg.value(metadata double %12, metadata !489, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  %13 = tail call double @llvm.fabs.f64(double %12), !dbg !514
  tail call void @llvm.dbg.value(metadata double poison, metadata !489, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !513
  %14 = fcmp olt double %13, 0x10000000000000, !dbg !515
  br i1 %14, label %15, label %16, !dbg !516

15:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #6, !dbg !517
  br label %16, !dbg !517

16:                                               ; preds = %10, %15
  %17 = phi i32 [ 15, %15 ], [ 0, %10 ], !dbg !518
  tail call void @llvm.dbg.value(metadata double %12, metadata !489, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !493, metadata !DIExpression()), !dbg !513
  store double %12, ptr %2, align 8, !dbg !519, !tbaa !520
  br label %88

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %1, metadata !140, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.value(metadata ptr undef, metadata !141, metadata !DIExpression()), !dbg !521
  %19 = fcmp olt double %1, 0x1FFF5DE25335C4EE, !dbg !523
  br i1 %19, label %20, label %23, !dbg !524

20:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !525
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !499, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !525
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 16) #6, !dbg !526
  %21 = fmul double %1, 2.000000e+00, !dbg !527
  %22 = fdiv double 0x400921FB54442D18, %21, !dbg !529
  br label %32, !dbg !526

23:                                               ; preds = %18
  %24 = fmul double %1, 2.000000e+00, !dbg !530
  %25 = fdiv double 0x400921FB54442D18, %24, !dbg !531
  %26 = fdiv double 1.000000e+00, %1, !dbg !532
  %27 = fadd double %26, 1.000000e+00, !dbg !533
  %28 = fmul double %25, %27, !dbg !534
  tail call void @llvm.dbg.value(metadata double %28, metadata !499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !525
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !535
  tail call void @llvm.dbg.value(metadata double poison, metadata !499, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !525
  %30 = fcmp olt double %29, 0x10000000000000, !dbg !536
  br i1 %30, label %31, label %32, !dbg !537

31:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #6, !dbg !538
  br label %32, !dbg !538

32:                                               ; preds = %20, %23, %31
  %33 = phi double [ %22, %20 ], [ %25, %23 ], [ %25, %31 ], !dbg !529
  %34 = phi double [ 0x7FF0000000000000, %20 ], [ %28, %23 ], [ %28, %31 ]
  tail call void @llvm.dbg.value(metadata double %34, metadata !499, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !525
  call void @llvm.dbg.value(metadata double %1, metadata !101, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.value(metadata ptr undef, metadata !102, metadata !DIExpression()), !dbg !539
  tail call void @llvm.dbg.value(metadata double %33, metadata !500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !525
  %35 = tail call double @llvm.fabs.f64(double %33), !dbg !540
  tail call void @llvm.dbg.value(metadata double poison, metadata !500, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !525
  %36 = fcmp olt double %35, 0x10000000000000, !dbg !541
  br i1 %36, label %37, label %38, !dbg !542

37:                                               ; preds = %32
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #6, !dbg !543
  br label %38, !dbg !543

38:                                               ; preds = %32, %37
  tail call void @llvm.dbg.value(metadata double %33, metadata !500, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !525
  tail call void @llvm.dbg.value(metadata double %34, metadata !497, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata double %33, metadata !498, metadata !DIExpression()), !dbg !525
  store double %33, ptr %2, align 8, !dbg !544, !tbaa !520
  %39 = getelementptr inbounds double, ptr %2, i64 1, !dbg !545
  store double %34, ptr %39, align 8, !dbg !546, !tbaa !520
  tail call void @llvm.dbg.value(metadata i32 1, metadata !494, metadata !DIExpression()), !dbg !525
  %40 = icmp eq i32 %0, 1, !dbg !547
  br i1 %40, label %88, label %41, !dbg !550

41:                                               ; preds = %38
  %42 = zext nneg i32 %0 to i64, !dbg !547
  %43 = add nsw i64 %42, -1, !dbg !550
  %44 = and i64 %43, 1, !dbg !550
  %45 = icmp eq i32 %0, 2, !dbg !550
  br i1 %45, label %73, label %46, !dbg !550

46:                                               ; preds = %41
  %47 = and i64 %43, -2, !dbg !550
  br label %48, !dbg !550

48:                                               ; preds = %48, %46
  %49 = phi i64 [ 1, %46 ], [ %69, %48 ]
  %50 = phi double [ %33, %46 ], [ %59, %48 ]
  %51 = phi double [ %34, %46 ], [ %68, %48 ]
  %52 = phi i64 [ 0, %46 ], [ %71, %48 ]
  tail call void @llvm.dbg.value(metadata double %50, metadata !498, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata double %51, metadata !497, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !494, metadata !DIExpression()), !dbg !525
  %53 = trunc i64 %49 to i32, !dbg !551
  %54 = shl i32 %53, 1, !dbg !551
  %55 = or disjoint i32 %54, 1, !dbg !551
  %56 = sitofp i32 %55 to double, !dbg !551
  %57 = fdiv double %56, %1, !dbg !553
  %58 = fmul double %51, %57, !dbg !554
  %59 = fadd double %50, %58, !dbg !555
  tail call void @llvm.dbg.value(metadata double %59, metadata !496, metadata !DIExpression()), !dbg !525
  %60 = add nuw nsw i64 %49, 1, !dbg !556
  %61 = getelementptr inbounds double, ptr %2, i64 %60, !dbg !557
  store double %59, ptr %61, align 8, !dbg !558, !tbaa !520
  tail call void @llvm.dbg.value(metadata double %51, metadata !498, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata double %59, metadata !497, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !494, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata double %51, metadata !498, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata double %59, metadata !497, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %60, metadata !494, metadata !DIExpression()), !dbg !525
  %62 = trunc i64 %60 to i32, !dbg !551
  %63 = shl i32 %62, 1, !dbg !551
  %64 = or disjoint i32 %63, 1, !dbg !551
  %65 = sitofp i32 %64 to double, !dbg !551
  %66 = fdiv double %65, %1, !dbg !553
  %67 = fmul double %59, %66, !dbg !554
  %68 = fadd double %51, %67, !dbg !555
  tail call void @llvm.dbg.value(metadata double %68, metadata !496, metadata !DIExpression()), !dbg !525
  %69 = add nuw nsw i64 %49, 2, !dbg !556
  %70 = getelementptr inbounds double, ptr %2, i64 %69, !dbg !557
  store double %68, ptr %70, align 8, !dbg !558, !tbaa !520
  tail call void @llvm.dbg.value(metadata double %59, metadata !498, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata double %68, metadata !497, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !494, metadata !DIExpression()), !dbg !525
  %71 = add i64 %52, 2, !dbg !550
  %72 = icmp eq i64 %71, %47, !dbg !550
  br i1 %72, label %73, label %48, !dbg !550, !llvm.loop !559

73:                                               ; preds = %48, %41
  %74 = phi i64 [ 1, %41 ], [ %69, %48 ]
  %75 = phi double [ %33, %41 ], [ %59, %48 ]
  %76 = phi double [ %34, %41 ], [ %68, %48 ]
  %77 = icmp eq i64 %44, 0, !dbg !550
  br i1 %77, label %88, label %78, !dbg !550

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata double %75, metadata !498, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata double %76, metadata !497, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !494, metadata !DIExpression()), !dbg !525
  %79 = trunc i64 %74 to i32, !dbg !551
  %80 = shl i32 %79, 1, !dbg !551
  %81 = or disjoint i32 %80, 1, !dbg !551
  %82 = sitofp i32 %81 to double, !dbg !551
  %83 = fdiv double %82, %1, !dbg !553
  %84 = fmul double %76, %83, !dbg !554
  %85 = fadd double %75, %84, !dbg !555
  tail call void @llvm.dbg.value(metadata double %85, metadata !496, metadata !DIExpression()), !dbg !525
  %86 = getelementptr double, ptr %2, i64 %74, !dbg !557
  %87 = getelementptr double, ptr %86, i64 1, !dbg !557
  store double %85, ptr %87, align 8, !dbg !558, !tbaa !520
  tail call void @llvm.dbg.value(metadata double %76, metadata !498, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata double %85, metadata !497, metadata !DIExpression()), !dbg !525
  tail call void @llvm.dbg.value(metadata i64 %74, metadata !494, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !525
  br label %88, !dbg !561

88:                                               ; preds = %78, %73, %38, %7, %16
  %89 = phi i32 [ 1, %7 ], [ %17, %16 ], [ 0, %38 ], [ 0, %73 ], [ 0, %78 ], !dbg !562
  ret i32 %89, !dbg !561
}

; Function Attrs: nounwind uwtable
define dso_local noundef double @gsl_sf_bessel_k0_scaled(double noundef %0) local_unnamed_addr #0 !dbg !563 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !567, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata double %0, metadata !101, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.value(metadata ptr undef, metadata !102, metadata !DIExpression()), !dbg !571
  %2 = fcmp ugt double %0, 0.000000e+00, !dbg !573
  br i1 %2, label %4, label %3, !dbg !574

3:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !568, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !568, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !570
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 1) #6, !dbg !575
  br label %10, !dbg !575

4:                                                ; preds = %1
  %5 = fmul double %0, 2.000000e+00, !dbg !576
  %6 = fdiv double 0x400921FB54442D18, %5, !dbg !577
  tail call void @llvm.dbg.value(metadata double %6, metadata !568, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !570
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !578
  tail call void @llvm.dbg.value(metadata double poison, metadata !568, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !570
  %8 = fcmp olt double %7, 0x10000000000000, !dbg !579
  br i1 %8, label %9, label %13, !dbg !580

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #6, !dbg !581
  br label %10, !dbg !581

10:                                               ; preds = %3, %9
  %11 = phi double [ 0x7FF8000000000000, %3 ], [ %6, %9 ]
  %12 = phi i32 [ 1, %3 ], [ 15, %9 ]
  tail call void @llvm.dbg.value(metadata double %11, metadata !568, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !570
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !569, metadata !DIExpression()), !dbg !570
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef %12) #6, !dbg !582
  br label %13, !dbg !582

13:                                               ; preds = %4, %10
  %14 = phi double [ %11, %10 ], [ %6, %4 ]
  ret double %14, !dbg !586
}

; Function Attrs: nounwind uwtable
define dso_local noundef double @gsl_sf_bessel_k1_scaled(double noundef %0) local_unnamed_addr #0 !dbg !587 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !589, metadata !DIExpression()), !dbg !592
  call void @llvm.dbg.value(metadata double %0, metadata !140, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.value(metadata ptr undef, metadata !141, metadata !DIExpression()), !dbg !593
  %2 = fcmp ugt double %0, 0.000000e+00, !dbg !595
  br i1 %2, label %4, label %3, !dbg !596

3:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !590, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !592
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !590, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !592
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 1) #6, !dbg !597
  br label %16, !dbg !597

4:                                                ; preds = %1
  %5 = fcmp olt double %0, 0x1FFF5DE25335C4EE, !dbg !598
  br i1 %5, label %6, label %7, !dbg !599

6:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !590, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !592
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !590, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !592
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 16) #6, !dbg !600
  br label %16, !dbg !600

7:                                                ; preds = %4
  %8 = fmul double %0, 2.000000e+00, !dbg !601
  %9 = fdiv double 0x400921FB54442D18, %8, !dbg !602
  %10 = fdiv double 1.000000e+00, %0, !dbg !603
  %11 = fadd double %10, 1.000000e+00, !dbg !604
  %12 = fmul double %9, %11, !dbg !605
  tail call void @llvm.dbg.value(metadata double %12, metadata !590, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !592
  %13 = tail call double @llvm.fabs.f64(double %12), !dbg !606
  tail call void @llvm.dbg.value(metadata double poison, metadata !590, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !592
  %14 = fcmp olt double %13, 0x10000000000000, !dbg !607
  br i1 %14, label %15, label %19, !dbg !608

15:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #6, !dbg !609
  br label %16, !dbg !609

16:                                               ; preds = %3, %6, %15
  %17 = phi double [ 0x7FF8000000000000, %3 ], [ %12, %15 ], [ 0x7FF0000000000000, %6 ]
  %18 = phi i32 [ 1, %3 ], [ 15, %15 ], [ 16, %6 ]
  tail call void @llvm.dbg.value(metadata double %17, metadata !590, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !592
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !591, metadata !DIExpression()), !dbg !592
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 235, i32 noundef %18) #6, !dbg !610
  br label %19, !dbg !610

19:                                               ; preds = %7, %16
  %20 = phi double [ %17, %16 ], [ %12, %7 ]
  ret double %20, !dbg !614
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_k2_scaled(double noundef %0) local_unnamed_addr #0 !dbg !615 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !617, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata double %0, metadata !179, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata ptr undef, metadata !180, metadata !DIExpression()), !dbg !621
  %2 = fcmp ugt double %0, 0.000000e+00, !dbg !623
  br i1 %2, label %4, label %3, !dbg !624

3:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !620
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !620
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 124, i32 noundef 1) #6, !dbg !625
  br label %19, !dbg !625

4:                                                ; preds = %1
  %5 = fcmp olt double %0, 0x2AA965FEA53D6E98, !dbg !626
  br i1 %5, label %6, label %7, !dbg !627

6:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !620
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !620
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 16) #6, !dbg !628
  br label %19, !dbg !628

7:                                                ; preds = %4
  %8 = fmul double %0, 2.000000e+00, !dbg !629
  %9 = fdiv double 0x400921FB54442D18, %8, !dbg !630
  %10 = fdiv double 3.000000e+00, %0, !dbg !631
  %11 = fdiv double 1.000000e+00, %0, !dbg !632
  %12 = fadd double %11, 1.000000e+00, !dbg !633
  %13 = fmul double %10, %12, !dbg !634
  %14 = fadd double %13, 1.000000e+00, !dbg !635
  %15 = fmul double %9, %14, !dbg !636
  tail call void @llvm.dbg.value(metadata double %15, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !620
  %16 = tail call double @llvm.fabs.f64(double %15), !dbg !637
  tail call void @llvm.dbg.value(metadata double poison, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !620
  %17 = fcmp olt double %16, 0x10000000000000, !dbg !638
  br i1 %17, label %18, label %22, !dbg !639

18:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 15) #6, !dbg !640
  br label %19, !dbg !640

19:                                               ; preds = %3, %6, %18
  %20 = phi double [ 0x7FF8000000000000, %3 ], [ %15, %18 ], [ 0x7FF0000000000000, %6 ]
  %21 = phi i32 [ 1, %3 ], [ 15, %18 ], [ 16, %6 ]
  tail call void @llvm.dbg.value(metadata double %20, metadata !618, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !620
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !619, metadata !DIExpression()), !dbg !620
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 240, i32 noundef %21) #6, !dbg !641
  br label %22, !dbg !641

22:                                               ; preds = %7, %19
  %23 = phi double [ %20, %19 ], [ %15, %7 ]
  ret double %23, !dbg !645
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_kl_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !646 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !654
  call void @llvm.dbg.assign(metadata i1 undef, metadata !652, metadata !DIExpression(), metadata !654, metadata ptr %3, metadata !DIExpression()), !dbg !655
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !650, metadata !DIExpression()), !dbg !655
  tail call void @llvm.dbg.value(metadata double %1, metadata !651, metadata !DIExpression()), !dbg !655
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !656
  %4 = call i32 @gsl_sf_bessel_kl_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !656
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !653, metadata !DIExpression()), !dbg !655
  %5 = icmp eq i32 %4, 0, !dbg !657
  br i1 %5, label %7, label %6, !dbg !656

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 245, i32 noundef %4) #6, !dbg !659
  br label %7, !dbg !659

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !656, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !662
  ret double %8, !dbg !662
}

declare !dbg !663 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !667 i32 @gsl_sf_doublefact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !672 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !673 i32 @gsl_sf_bessel_il_scaled_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!36}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_k.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "cae691eda69ce09e158f308ad5cb7d19")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 10)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 9)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 38)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 235, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !24, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 41)
!36 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !37, retainedTypes: !77, globals: !79, splitDebugInlining: false, nameTableKind: None)
!37 = !{!38}
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 39, baseType: !40, size: 32, elements: !41)
!39 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!42 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!43 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!44 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!45 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!46 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!47 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!48 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!49 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!50 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!51 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!52 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!53 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!54 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!55 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!56 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!57 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!58 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!59 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!60 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!61 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!62 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!63 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!64 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!65 = !DIEnumerator(name: "GSL_ESING", value: 21)
!66 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!67 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!68 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!69 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!70 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!71 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!72 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!73 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!74 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!75 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!76 = !DIEnumerator(name: "GSL_EOF", value: 32)
!77 = !{!78}
!78 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!79 = !{!0, !7, !12, !17, !22, !27, !29, !31}
!80 = !{i32 7, !"Dwarf Version", i32 5}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{i32 1, !"wchar_size", i32 4}
!83 = !{i32 8, !"PIC Level", i32 2}
!84 = !{i32 7, !"PIE Level", i32 2}
!85 = !{i32 7, !"uwtable", i32 2}
!86 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!87 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!88 = distinct !DISubprogram(name: "gsl_sf_bessel_k0_scaled_e", scope: !2, file: !2, line: 84, type: !89, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !100)
!89 = !DISubroutineType(types: !90)
!90 = !{!40, !91, !93}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !95, line: 41, baseType: !96)
!95 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !95, line: 37, size: 128, elements: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !95, line: 38, baseType: !92, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !96, file: !95, line: 39, baseType: !92, size: 64, offset: 64)
!100 = !{!101, !102}
!101 = !DILocalVariable(name: "x", arg: 1, scope: !88, file: !2, line: 84, type: !91)
!102 = !DILocalVariable(name: "result", arg: 2, scope: !88, file: !2, line: 84, type: !93)
!103 = !DILocation(line: 0, scope: !88)
!104 = !DILocation(line: 88, column: 8, scope: !105)
!105 = distinct !DILexicalBlock(scope: !88, file: !2, line: 88, column: 6)
!106 = !DILocation(line: 88, column: 6, scope: !88)
!107 = !DILocation(line: 89, column: 5, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !2, line: 89, column: 5)
!109 = distinct !DILexicalBlock(scope: !105, file: !2, line: 88, column: 16)
!110 = !{!111, !112, i64 0}
!111 = !{!"gsl_sf_result_struct", !112, i64 0, !112, i64 8}
!112 = !{!"double", !113, i64 0}
!113 = !{!"omnipotent char", !114, i64 0}
!114 = !{!"Simple C/C++ TBAA"}
!115 = !{!111, !112, i64 8}
!116 = !DILocation(line: 89, column: 5, scope: !117)
!117 = distinct !DILexicalBlock(scope: !108, file: !2, line: 89, column: 5)
!118 = !DILocation(line: 92, column: 28, scope: !119)
!119 = distinct !DILexicalBlock(scope: !105, file: !2, line: 91, column: 8)
!120 = !DILocation(line: 92, column: 23, scope: !119)
!121 = !DILocation(line: 92, column: 17, scope: !119)
!122 = !DILocation(line: 93, column: 43, scope: !119)
!123 = !DILocation(line: 93, column: 41, scope: !119)
!124 = !DILocation(line: 93, column: 13, scope: !119)
!125 = !DILocation(line: 93, column: 17, scope: !119)
!126 = !DILocation(line: 94, column: 5, scope: !127)
!127 = distinct !DILexicalBlock(scope: !119, file: !2, line: 94, column: 5)
!128 = !DILocation(line: 94, column: 5, scope: !119)
!129 = !DILocation(line: 94, column: 5, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !2, line: 94, column: 5)
!131 = !DILocation(line: 0, scope: !105)
!132 = !DILocation(line: 97, column: 1, scope: !88)
!133 = !DISubprogram(name: "gsl_error", scope: !39, file: !39, line: 77, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!134 = !DISubroutineType(types: !135)
!135 = !{null, !136, !136, !40, !40}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!138 = distinct !DISubprogram(name: "gsl_sf_bessel_k1_scaled_e", scope: !2, file: !2, line: 100, type: !89, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !139)
!139 = !{!140, !141}
!140 = !DILocalVariable(name: "x", arg: 1, scope: !138, file: !2, line: 100, type: !91)
!141 = !DILocalVariable(name: "result", arg: 2, scope: !138, file: !2, line: 100, type: !93)
!142 = !DILocation(line: 0, scope: !138)
!143 = !DILocation(line: 104, column: 8, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !2, line: 104, column: 6)
!145 = !DILocation(line: 104, column: 6, scope: !138)
!146 = !DILocation(line: 105, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !2, line: 105, column: 5)
!148 = distinct !DILexicalBlock(scope: !144, file: !2, line: 104, column: 16)
!149 = !DILocation(line: 105, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !2, line: 105, column: 5)
!151 = !DILocation(line: 107, column: 13, scope: !152)
!152 = distinct !DILexicalBlock(scope: !144, file: !2, line: 107, column: 11)
!153 = !DILocation(line: 107, column: 11, scope: !144)
!154 = !DILocation(line: 108, column: 5, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !2, line: 108, column: 5)
!156 = distinct !DILexicalBlock(scope: !152, file: !2, line: 107, column: 58)
!157 = !DILocation(line: 108, column: 5, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !2, line: 108, column: 5)
!159 = !DILocation(line: 111, column: 28, scope: !160)
!160 = distinct !DILexicalBlock(scope: !152, file: !2, line: 110, column: 8)
!161 = !DILocation(line: 111, column: 23, scope: !160)
!162 = !DILocation(line: 111, column: 44, scope: !160)
!163 = !DILocation(line: 111, column: 39, scope: !160)
!164 = !DILocation(line: 111, column: 32, scope: !160)
!165 = !DILocation(line: 111, column: 17, scope: !160)
!166 = !DILocation(line: 112, column: 43, scope: !160)
!167 = !DILocation(line: 112, column: 41, scope: !160)
!168 = !DILocation(line: 112, column: 13, scope: !160)
!169 = !DILocation(line: 112, column: 17, scope: !160)
!170 = !DILocation(line: 113, column: 5, scope: !171)
!171 = distinct !DILexicalBlock(scope: !160, file: !2, line: 113, column: 5)
!172 = !DILocation(line: 113, column: 5, scope: !160)
!173 = !DILocation(line: 113, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !2, line: 113, column: 5)
!175 = !DILocation(line: 0, scope: !144)
!176 = !DILocation(line: 116, column: 1, scope: !138)
!177 = distinct !DISubprogram(name: "gsl_sf_bessel_k2_scaled_e", scope: !2, file: !2, line: 119, type: !89, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !178)
!178 = !{!179, !180}
!179 = !DILocalVariable(name: "x", arg: 1, scope: !177, file: !2, line: 119, type: !91)
!180 = !DILocalVariable(name: "result", arg: 2, scope: !177, file: !2, line: 119, type: !93)
!181 = !DILocation(line: 0, scope: !177)
!182 = !DILocation(line: 123, column: 8, scope: !183)
!183 = distinct !DILexicalBlock(scope: !177, file: !2, line: 123, column: 6)
!184 = !DILocation(line: 123, column: 6, scope: !177)
!185 = !DILocation(line: 124, column: 5, scope: !186)
!186 = distinct !DILexicalBlock(scope: !187, file: !2, line: 124, column: 5)
!187 = distinct !DILexicalBlock(scope: !183, file: !2, line: 123, column: 16)
!188 = !DILocation(line: 124, column: 5, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !2, line: 124, column: 5)
!190 = !DILocation(line: 126, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !183, file: !2, line: 126, column: 11)
!192 = !DILocation(line: 126, column: 11, scope: !183)
!193 = !DILocation(line: 127, column: 5, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 127, column: 5)
!195 = distinct !DILexicalBlock(scope: !191, file: !2, line: 126, column: 38)
!196 = !DILocation(line: 127, column: 5, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !2, line: 127, column: 5)
!198 = !DILocation(line: 130, column: 28, scope: !199)
!199 = distinct !DILexicalBlock(scope: !191, file: !2, line: 129, column: 8)
!200 = !DILocation(line: 130, column: 23, scope: !199)
!201 = !DILocation(line: 130, column: 44, scope: !199)
!202 = !DILocation(line: 130, column: 59, scope: !199)
!203 = !DILocation(line: 130, column: 54, scope: !199)
!204 = !DILocation(line: 130, column: 47, scope: !199)
!205 = !DILocation(line: 130, column: 39, scope: !199)
!206 = !DILocation(line: 130, column: 32, scope: !199)
!207 = !DILocation(line: 130, column: 17, scope: !199)
!208 = !DILocation(line: 131, column: 43, scope: !199)
!209 = !DILocation(line: 131, column: 41, scope: !199)
!210 = !DILocation(line: 131, column: 13, scope: !199)
!211 = !DILocation(line: 131, column: 17, scope: !199)
!212 = !DILocation(line: 132, column: 5, scope: !213)
!213 = distinct !DILexicalBlock(scope: !199, file: !2, line: 132, column: 5)
!214 = !DILocation(line: 132, column: 5, scope: !199)
!215 = !DILocation(line: 132, column: 5, scope: !216)
!216 = distinct !DILexicalBlock(scope: !213, file: !2, line: 132, column: 5)
!217 = !DILocation(line: 0, scope: !183)
!218 = !DILocation(line: 135, column: 1, scope: !177)
!219 = distinct !DISubprogram(name: "gsl_sf_bessel_kl_scaled_e", scope: !2, file: !2, line: 138, type: !220, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{!40, !40, !91, !93}
!222 = !{!223, !224, !225, !226, !234, !235, !238, !239, !241, !242, !243, !244, !245, !246, !247}
!223 = !DILocalVariable(name: "l", arg: 1, scope: !219, file: !2, line: 138, type: !40)
!224 = !DILocalVariable(name: "x", arg: 2, scope: !219, file: !2, line: 138, type: !91)
!225 = !DILocalVariable(name: "result", arg: 3, scope: !219, file: !2, line: 138, type: !93)
!226 = !DILocalVariable(name: "status", scope: !227, file: !2, line: 156, type: !40)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 155, column: 54)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 155, column: 11)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 152, column: 11)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 149, column: 11)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 146, column: 11)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 143, column: 11)
!233 = distinct !DILexicalBlock(scope: !219, file: !2, line: 140, column: 6)
!234 = !DILocalVariable(name: "pre", scope: !227, file: !2, line: 157, type: !92)
!235 = !DILocalVariable(name: "status", scope: !236, file: !2, line: 163, type: !40)
!236 = distinct !DILexicalBlock(scope: !237, file: !2, line: 162, column: 79)
!237 = distinct !DILexicalBlock(scope: !228, file: !2, line: 162, column: 11)
!238 = !DILocalVariable(name: "pre", scope: !236, file: !2, line: 164, type: !92)
!239 = !DILocalVariable(name: "r_bk", scope: !240, file: !2, line: 171, type: !94)
!240 = distinct !DILexicalBlock(scope: !237, file: !2, line: 169, column: 8)
!241 = !DILocalVariable(name: "r_bkm", scope: !240, file: !2, line: 172, type: !94)
!242 = !DILocalVariable(name: "stat_1", scope: !240, file: !2, line: 173, type: !40)
!243 = !DILocalVariable(name: "stat_0", scope: !240, file: !2, line: 174, type: !40)
!244 = !DILocalVariable(name: "bkp", scope: !240, file: !2, line: 175, type: !92)
!245 = !DILocalVariable(name: "bk", scope: !240, file: !2, line: 176, type: !92)
!246 = !DILocalVariable(name: "bkm", scope: !240, file: !2, line: 177, type: !92)
!247 = !DILocalVariable(name: "j", scope: !240, file: !2, line: 178, type: !40)
!248 = distinct !DIAssignID()
!249 = distinct !DIAssignID()
!250 = distinct !DIAssignID()
!251 = !DILocation(line: 0, scope: !240)
!252 = distinct !DIAssignID()
!253 = !DILocation(line: 0, scope: !219)
!254 = !DILocation(line: 140, column: 8, scope: !233)
!255 = !DILocation(line: 140, column: 12, scope: !233)
!256 = !DILocation(line: 141, column: 5, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !2, line: 141, column: 5)
!258 = distinct !DILexicalBlock(scope: !233, file: !2, line: 140, column: 25)
!259 = !DILocation(line: 141, column: 5, scope: !260)
!260 = distinct !DILexicalBlock(scope: !257, file: !2, line: 141, column: 5)
!261 = !DILocation(line: 143, column: 11, scope: !233)
!262 = !DILocation(line: 0, scope: !88, inlinedAt: !263)
!263 = distinct !DILocation(line: 144, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !232, file: !2, line: 143, column: 19)
!265 = !DILocation(line: 92, column: 28, scope: !119, inlinedAt: !263)
!266 = !DILocation(line: 92, column: 23, scope: !119, inlinedAt: !263)
!267 = !DILocation(line: 92, column: 17, scope: !119, inlinedAt: !263)
!268 = !DILocation(line: 93, column: 43, scope: !119, inlinedAt: !263)
!269 = !DILocation(line: 93, column: 41, scope: !119, inlinedAt: !263)
!270 = !DILocation(line: 93, column: 13, scope: !119, inlinedAt: !263)
!271 = !DILocation(line: 93, column: 17, scope: !119, inlinedAt: !263)
!272 = !DILocation(line: 94, column: 5, scope: !127, inlinedAt: !263)
!273 = !DILocation(line: 94, column: 5, scope: !119, inlinedAt: !263)
!274 = !DILocation(line: 94, column: 5, scope: !130, inlinedAt: !263)
!275 = !DILocation(line: 0, scope: !138, inlinedAt: !276)
!276 = distinct !DILocation(line: 147, column: 12, scope: !277)
!277 = distinct !DILexicalBlock(scope: !231, file: !2, line: 146, column: 19)
!278 = !DILocation(line: 107, column: 13, scope: !152, inlinedAt: !276)
!279 = !DILocation(line: 107, column: 11, scope: !144, inlinedAt: !276)
!280 = !DILocation(line: 108, column: 5, scope: !155, inlinedAt: !276)
!281 = !DILocation(line: 108, column: 5, scope: !158, inlinedAt: !276)
!282 = !DILocation(line: 111, column: 28, scope: !160, inlinedAt: !276)
!283 = !DILocation(line: 111, column: 23, scope: !160, inlinedAt: !276)
!284 = !DILocation(line: 111, column: 44, scope: !160, inlinedAt: !276)
!285 = !DILocation(line: 111, column: 39, scope: !160, inlinedAt: !276)
!286 = !DILocation(line: 111, column: 32, scope: !160, inlinedAt: !276)
!287 = !DILocation(line: 111, column: 17, scope: !160, inlinedAt: !276)
!288 = !DILocation(line: 112, column: 43, scope: !160, inlinedAt: !276)
!289 = !DILocation(line: 112, column: 41, scope: !160, inlinedAt: !276)
!290 = !DILocation(line: 112, column: 13, scope: !160, inlinedAt: !276)
!291 = !DILocation(line: 112, column: 17, scope: !160, inlinedAt: !276)
!292 = !DILocation(line: 113, column: 5, scope: !171, inlinedAt: !276)
!293 = !DILocation(line: 113, column: 5, scope: !160, inlinedAt: !276)
!294 = !DILocation(line: 113, column: 5, scope: !174, inlinedAt: !276)
!295 = !DILocation(line: 0, scope: !177, inlinedAt: !296)
!296 = distinct !DILocation(line: 150, column: 12, scope: !297)
!297 = distinct !DILexicalBlock(scope: !230, file: !2, line: 149, column: 19)
!298 = !DILocation(line: 126, column: 13, scope: !191, inlinedAt: !296)
!299 = !DILocation(line: 126, column: 11, scope: !183, inlinedAt: !296)
!300 = !DILocation(line: 127, column: 5, scope: !194, inlinedAt: !296)
!301 = !DILocation(line: 127, column: 5, scope: !197, inlinedAt: !296)
!302 = !DILocation(line: 130, column: 28, scope: !199, inlinedAt: !296)
!303 = !DILocation(line: 130, column: 23, scope: !199, inlinedAt: !296)
!304 = !DILocation(line: 130, column: 44, scope: !199, inlinedAt: !296)
!305 = !DILocation(line: 130, column: 59, scope: !199, inlinedAt: !296)
!306 = !DILocation(line: 130, column: 54, scope: !199, inlinedAt: !296)
!307 = !DILocation(line: 130, column: 47, scope: !199, inlinedAt: !296)
!308 = !DILocation(line: 130, column: 39, scope: !199, inlinedAt: !296)
!309 = !DILocation(line: 130, column: 32, scope: !199, inlinedAt: !296)
!310 = !DILocation(line: 130, column: 17, scope: !199, inlinedAt: !296)
!311 = !DILocation(line: 131, column: 43, scope: !199, inlinedAt: !296)
!312 = !DILocation(line: 131, column: 41, scope: !199, inlinedAt: !296)
!313 = !DILocation(line: 131, column: 13, scope: !199, inlinedAt: !296)
!314 = !DILocation(line: 131, column: 17, scope: !199, inlinedAt: !296)
!315 = !DILocation(line: 132, column: 5, scope: !213, inlinedAt: !296)
!316 = !DILocation(line: 132, column: 5, scope: !199, inlinedAt: !296)
!317 = !DILocation(line: 132, column: 5, scope: !216, inlinedAt: !296)
!318 = !DILocation(line: 152, column: 13, scope: !229)
!319 = !DILocation(line: 152, column: 11, scope: !230)
!320 = !DILocalVariable(name: "num_fact", scope: !321, file: !2, line: 43, type: !94)
!321 = distinct !DISubprogram(name: "bessel_kl_scaled_small_x", scope: !2, file: !2, line: 41, type: !220, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !322)
!322 = !{!323, !324, !325, !320, !326, !327, !328, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!323 = !DILocalVariable(name: "l", arg: 1, scope: !321, file: !2, line: 41, type: !40)
!324 = !DILocalVariable(name: "x", arg: 2, scope: !321, file: !2, line: 41, type: !91)
!325 = !DILocalVariable(name: "result", arg: 3, scope: !321, file: !2, line: 41, type: !93)
!326 = !DILocalVariable(name: "den", scope: !321, file: !2, line: 44, type: !92)
!327 = !DILocalVariable(name: "stat_df", scope: !321, file: !2, line: 45, type: !40)
!328 = !DILocalVariable(name: "lmax", scope: !329, file: !2, line: 51, type: !331)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 50, column: 8)
!330 = distinct !DILexicalBlock(scope: !321, file: !2, line: 47, column: 6)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!332 = !DILocalVariable(name: "ipos_term", scope: !329, file: !2, line: 52, type: !94)
!333 = !DILocalVariable(name: "ineg_term", scope: !329, file: !2, line: 53, type: !92)
!334 = !DILocalVariable(name: "sgn", scope: !329, file: !2, line: 54, type: !92)
!335 = !DILocalVariable(name: "ex", scope: !329, file: !2, line: 55, type: !92)
!336 = !DILocalVariable(name: "t", scope: !329, file: !2, line: 56, type: !92)
!337 = !DILocalVariable(name: "sum", scope: !329, file: !2, line: 57, type: !92)
!338 = !DILocalVariable(name: "t_coeff", scope: !329, file: !2, line: 58, type: !92)
!339 = !DILocalVariable(name: "t_power", scope: !329, file: !2, line: 59, type: !92)
!340 = !DILocalVariable(name: "delta", scope: !329, file: !2, line: 60, type: !92)
!341 = !DILocalVariable(name: "stat_il", scope: !329, file: !2, line: 61, type: !40)
!342 = !DILocalVariable(name: "i", scope: !329, file: !2, line: 62, type: !40)
!343 = !DILocation(line: 0, scope: !321, inlinedAt: !344)
!344 = distinct !DILocation(line: 153, column: 12, scope: !345)
!345 = distinct !DILexicalBlock(scope: !229, file: !2, line: 152, column: 20)
!346 = !DILocation(line: 0, scope: !329, inlinedAt: !344)
!347 = !DILocation(line: 43, column: 3, scope: !321, inlinedAt: !344)
!348 = !DILocation(line: 44, column: 36, scope: !321, inlinedAt: !344)
!349 = !DILocation(line: 44, column: 17, scope: !321, inlinedAt: !344)
!350 = !DILocation(line: 45, column: 54, scope: !321, inlinedAt: !344)
!351 = !DILocation(line: 45, column: 56, scope: !321, inlinedAt: !344)
!352 = !DILocation(line: 45, column: 17, scope: !321, inlinedAt: !344)
!353 = !DILocation(line: 47, column: 14, scope: !330, inlinedAt: !344)
!354 = !DILocation(line: 47, column: 29, scope: !330, inlinedAt: !344)
!355 = !DILocation(line: 48, column: 5, scope: !356, inlinedAt: !344)
!356 = distinct !DILexicalBlock(scope: !357, file: !2, line: 48, column: 5)
!357 = distinct !DILexicalBlock(scope: !330, file: !2, line: 47, column: 44)
!358 = !DILocation(line: 48, column: 5, scope: !359, inlinedAt: !344)
!359 = distinct !DILexicalBlock(scope: !356, file: !2, line: 48, column: 5)
!360 = !DILocation(line: 52, column: 5, scope: !329, inlinedAt: !344)
!361 = !DILocation(line: 54, column: 19, scope: !329, inlinedAt: !344)
!362 = !DILocation(line: 55, column: 18, scope: !329, inlinedAt: !344)
!363 = !DILocation(line: 56, column: 19, scope: !329, inlinedAt: !344)
!364 = !DILocation(line: 56, column: 21, scope: !329, inlinedAt: !344)
!365 = !DILocation(line: 64, column: 5, scope: !366, inlinedAt: !344)
!366 = distinct !DILexicalBlock(scope: !329, file: !2, line: 64, column: 5)
!367 = !DILocation(line: 65, column: 25, scope: !368, inlinedAt: !344)
!368 = distinct !DILexicalBlock(scope: !369, file: !2, line: 64, column: 27)
!369 = distinct !DILexicalBlock(scope: !366, file: !2, line: 64, column: 5)
!370 = !DILocation(line: 65, column: 22, scope: !368, inlinedAt: !344)
!371 = !DILocation(line: 65, column: 29, scope: !368, inlinedAt: !344)
!372 = !DILocation(line: 65, column: 19, scope: !368, inlinedAt: !344)
!373 = !DILocation(line: 65, column: 18, scope: !368, inlinedAt: !344)
!374 = !DILocation(line: 65, column: 15, scope: !368, inlinedAt: !344)
!375 = !DILocation(line: 66, column: 15, scope: !368, inlinedAt: !344)
!376 = !DILocation(line: 67, column: 22, scope: !368, inlinedAt: !344)
!377 = !DILocation(line: 68, column: 11, scope: !368, inlinedAt: !344)
!378 = !DILocation(line: 69, column: 20, scope: !379, inlinedAt: !344)
!379 = distinct !DILexicalBlock(scope: !368, file: !2, line: 69, column: 10)
!380 = !DILocation(line: 69, column: 10, scope: !379, inlinedAt: !344)
!381 = !DILocation(line: 69, column: 26, scope: !379, inlinedAt: !344)
!382 = !DILocation(line: 69, column: 10, scope: !368, inlinedAt: !344)
!383 = distinct !{!383, !365, !384, !385}
!384 = !DILocation(line: 70, column: 5, scope: !366, inlinedAt: !344)
!385 = !{!"llvm.loop.mustprogress"}
!386 = !DILocation(line: 72, column: 15, scope: !329, inlinedAt: !344)
!387 = !DILocation(line: 73, column: 33, scope: !329, inlinedAt: !344)
!388 = !DILocation(line: 73, column: 22, scope: !329, inlinedAt: !344)
!389 = !DILocation(line: 73, column: 36, scope: !329, inlinedAt: !344)
!390 = !DILocation(line: 73, column: 41, scope: !329, inlinedAt: !344)
!391 = !DILocation(line: 74, column: 24, scope: !329, inlinedAt: !344)
!392 = !DILocation(line: 74, column: 29, scope: !329, inlinedAt: !344)
!393 = !DILocation(line: 74, column: 51, scope: !329, inlinedAt: !344)
!394 = !DILocation(line: 74, column: 40, scope: !329, inlinedAt: !344)
!395 = !DILocation(line: 74, column: 55, scope: !329, inlinedAt: !344)
!396 = !DILocation(line: 74, column: 35, scope: !329, inlinedAt: !344)
!397 = !DILocation(line: 75, column: 17, scope: !329, inlinedAt: !344)
!398 = !DILocation(line: 76, column: 43, scope: !329, inlinedAt: !344)
!399 = !DILocation(line: 76, column: 41, scope: !329, inlinedAt: !344)
!400 = !DILocation(line: 76, column: 13, scope: !329, inlinedAt: !344)
!401 = !DILocation(line: 76, column: 17, scope: !329, inlinedAt: !344)
!402 = !DILocation(line: 78, column: 3, scope: !330, inlinedAt: !344)
!403 = !DILocation(line: 0, scope: !330, inlinedAt: !344)
!404 = !DILocation(line: 79, column: 1, scope: !321, inlinedAt: !344)
!405 = !DILocation(line: 153, column: 5, scope: !345)
!406 = !DILocation(line: 155, column: 33, scope: !228)
!407 = !DILocation(line: 155, column: 41, scope: !228)
!408 = !DILocation(line: 155, column: 44, scope: !228)
!409 = !DILocation(line: 155, column: 48, scope: !228)
!410 = !DILocation(line: 155, column: 39, scope: !228)
!411 = !DILocation(line: 155, column: 37, scope: !228)
!412 = !DILocation(line: 155, column: 11, scope: !229)
!413 = !DILocation(line: 156, column: 52, scope: !227)
!414 = !DILocation(line: 156, column: 54, scope: !227)
!415 = !DILocation(line: 156, column: 18, scope: !227)
!416 = !DILocation(line: 0, scope: !227)
!417 = !DILocation(line: 157, column: 33, scope: !227)
!418 = !DILocation(line: 157, column: 18, scope: !227)
!419 = !DILocation(line: 158, column: 17, scope: !227)
!420 = !DILocation(line: 159, column: 13, scope: !227)
!421 = !DILocation(line: 159, column: 17, scope: !227)
!422 = !DILocation(line: 162, column: 11, scope: !237)
!423 = !DILocation(line: 162, column: 54, scope: !237)
!424 = !DILocation(line: 162, column: 11, scope: !228)
!425 = !DILocation(line: 163, column: 56, scope: !236)
!426 = !DILocation(line: 163, column: 58, scope: !236)
!427 = !DILocation(line: 163, column: 18, scope: !236)
!428 = !DILocation(line: 0, scope: !236)
!429 = !DILocation(line: 164, column: 33, scope: !236)
!430 = !DILocation(line: 164, column: 18, scope: !236)
!431 = !DILocation(line: 165, column: 17, scope: !236)
!432 = !DILocation(line: 166, column: 13, scope: !236)
!433 = !DILocation(line: 166, column: 17, scope: !236)
!434 = !DILocation(line: 171, column: 5, scope: !240)
!435 = !DILocation(line: 172, column: 5, scope: !240)
!436 = !DILocation(line: 173, column: 18, scope: !240)
!437 = !{i32 0, i32 17}
!438 = !DILocation(line: 174, column: 18, scope: !240)
!439 = !{i32 0, i32 16}
!440 = !DILocation(line: 176, column: 23, scope: !240)
!441 = !DILocation(line: 177, column: 24, scope: !240)
!442 = !DILocation(line: 179, column: 5, scope: !443)
!443 = distinct !DILexicalBlock(scope: !240, file: !2, line: 179, column: 5)
!444 = !DILocation(line: 180, column: 15, scope: !445)
!445 = distinct !DILexicalBlock(scope: !446, file: !2, line: 179, column: 24)
!446 = distinct !DILexicalBlock(scope: !443, file: !2, line: 179, column: 5)
!447 = !DILocation(line: 180, column: 17, scope: !445)
!448 = !DILocation(line: 180, column: 13, scope: !445)
!449 = !DILocation(line: 180, column: 20, scope: !445)
!450 = !DILocation(line: 180, column: 22, scope: !445)
!451 = !DILocation(line: 180, column: 26, scope: !445)
!452 = !DILocation(line: 179, column: 20, scope: !446)
!453 = distinct !{!453, !442, !454, !385}
!454 = !DILocation(line: 183, column: 5, scope: !443)
!455 = !DILocation(line: 184, column: 18, scope: !240)
!456 = !DILocation(line: 185, column: 20, scope: !240)
!457 = !DILocation(line: 185, column: 42, scope: !240)
!458 = !DILocation(line: 185, column: 45, scope: !240)
!459 = !DILocation(line: 185, column: 32, scope: !240)
!460 = !DILocation(line: 185, column: 69, scope: !240)
!461 = !DILocation(line: 185, column: 72, scope: !240)
!462 = !DILocation(line: 185, column: 58, scope: !240)
!463 = !DILocation(line: 185, column: 56, scope: !240)
!464 = !DILocation(line: 185, column: 29, scope: !240)
!465 = !DILocation(line: 185, column: 13, scope: !240)
!466 = !DILocation(line: 186, column: 42, scope: !240)
!467 = !DILocation(line: 186, column: 17, scope: !240)
!468 = !DILocation(line: 188, column: 12, scope: !240)
!469 = !DILocation(line: 189, column: 3, scope: !237)
!470 = !DILocation(line: 0, scope: !233)
!471 = !DILocation(line: 190, column: 1, scope: !219)
!472 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asympx_e", scope: !473, file: !473, line: 46, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!473 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!474 = !DISubroutineType(types: !475)
!475 = !{!40, !91, !91, !93}
!476 = !DISubprogram(name: "sqrt", scope: !477, file: !477, line: 143, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!478 = !DISubroutineType(types: !479)
!479 = !{!92, !92}
!480 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asymp_unif_e", scope: !473, file: !473, line: 49, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!481 = distinct !DISubprogram(name: "gsl_sf_bessel_kl_scaled_array", scope: !2, file: !2, line: 193, type: !482, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !485)
!482 = !DISubroutineType(types: !483)
!483 = !{!40, !331, !91, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!485 = !{!486, !487, !488, !489, !493, !494, !496, !497, !498, !499, !500}
!486 = !DILocalVariable(name: "lmax", arg: 1, scope: !481, file: !2, line: 193, type: !331)
!487 = !DILocalVariable(name: "x", arg: 2, scope: !481, file: !2, line: 193, type: !91)
!488 = !DILocalVariable(name: "result_array", arg: 3, scope: !481, file: !2, line: 193, type: !484)
!489 = !DILocalVariable(name: "result", scope: !490, file: !2, line: 198, type: !94)
!490 = distinct !DILexicalBlock(scope: !491, file: !2, line: 197, column: 25)
!491 = distinct !DILexicalBlock(scope: !492, file: !2, line: 197, column: 14)
!492 = distinct !DILexicalBlock(scope: !481, file: !2, line: 195, column: 6)
!493 = !DILocalVariable(name: "stat", scope: !490, file: !2, line: 199, type: !40)
!494 = !DILocalVariable(name: "ell", scope: !495, file: !2, line: 203, type: !40)
!495 = distinct !DILexicalBlock(scope: !491, file: !2, line: 202, column: 10)
!496 = !DILocalVariable(name: "kellp1", scope: !495, file: !2, line: 204, type: !92)
!497 = !DILocalVariable(name: "kell", scope: !495, file: !2, line: 204, type: !92)
!498 = !DILocalVariable(name: "kellm1", scope: !495, file: !2, line: 204, type: !92)
!499 = !DILocalVariable(name: "r_kell", scope: !495, file: !2, line: 205, type: !94)
!500 = !DILocalVariable(name: "r_kellm1", scope: !495, file: !2, line: 206, type: !94)
!501 = !DILocation(line: 0, scope: !481)
!502 = !DILocation(line: 195, column: 11, scope: !492)
!503 = !DILocation(line: 195, column: 15, scope: !492)
!504 = !DILocation(line: 196, column: 5, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !2, line: 196, column: 5)
!506 = distinct !DILexicalBlock(scope: !492, file: !2, line: 195, column: 28)
!507 = !DILocation(line: 197, column: 19, scope: !491)
!508 = !DILocation(line: 197, column: 14, scope: !492)
!509 = !DILocation(line: 0, scope: !88, inlinedAt: !510)
!510 = distinct !DILocation(line: 199, column: 16, scope: !490)
!511 = !DILocation(line: 92, column: 28, scope: !119, inlinedAt: !510)
!512 = !DILocation(line: 92, column: 23, scope: !119, inlinedAt: !510)
!513 = !DILocation(line: 0, scope: !490)
!514 = !DILocation(line: 93, column: 43, scope: !119, inlinedAt: !510)
!515 = !DILocation(line: 94, column: 5, scope: !127, inlinedAt: !510)
!516 = !DILocation(line: 94, column: 5, scope: !119, inlinedAt: !510)
!517 = !DILocation(line: 94, column: 5, scope: !130, inlinedAt: !510)
!518 = !DILocation(line: 0, scope: !105, inlinedAt: !510)
!519 = !DILocation(line: 200, column: 21, scope: !490)
!520 = !{!112, !112, i64 0}
!521 = !DILocation(line: 0, scope: !138, inlinedAt: !522)
!522 = distinct !DILocation(line: 207, column: 5, scope: !495)
!523 = !DILocation(line: 107, column: 13, scope: !152, inlinedAt: !522)
!524 = !DILocation(line: 107, column: 11, scope: !144, inlinedAt: !522)
!525 = !DILocation(line: 0, scope: !495)
!526 = !DILocation(line: 108, column: 5, scope: !158, inlinedAt: !522)
!527 = !DILocation(line: 92, column: 28, scope: !119, inlinedAt: !528)
!528 = distinct !DILocation(line: 208, column: 5, scope: !495)
!529 = !DILocation(line: 92, column: 23, scope: !119, inlinedAt: !528)
!530 = !DILocation(line: 111, column: 28, scope: !160, inlinedAt: !522)
!531 = !DILocation(line: 111, column: 23, scope: !160, inlinedAt: !522)
!532 = !DILocation(line: 111, column: 44, scope: !160, inlinedAt: !522)
!533 = !DILocation(line: 111, column: 39, scope: !160, inlinedAt: !522)
!534 = !DILocation(line: 111, column: 32, scope: !160, inlinedAt: !522)
!535 = !DILocation(line: 112, column: 43, scope: !160, inlinedAt: !522)
!536 = !DILocation(line: 113, column: 5, scope: !171, inlinedAt: !522)
!537 = !DILocation(line: 113, column: 5, scope: !160, inlinedAt: !522)
!538 = !DILocation(line: 113, column: 5, scope: !174, inlinedAt: !522)
!539 = !DILocation(line: 0, scope: !88, inlinedAt: !528)
!540 = !DILocation(line: 93, column: 43, scope: !119, inlinedAt: !528)
!541 = !DILocation(line: 94, column: 5, scope: !127, inlinedAt: !528)
!542 = !DILocation(line: 94, column: 5, scope: !119, inlinedAt: !528)
!543 = !DILocation(line: 94, column: 5, scope: !130, inlinedAt: !528)
!544 = !DILocation(line: 211, column: 21, scope: !495)
!545 = !DILocation(line: 212, column: 5, scope: !495)
!546 = !DILocation(line: 212, column: 21, scope: !495)
!547 = !DILocation(line: 213, column: 22, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 213, column: 5)
!549 = distinct !DILexicalBlock(scope: !495, file: !2, line: 213, column: 5)
!550 = !DILocation(line: 213, column: 5, scope: !549)
!551 = !DILocation(line: 214, column: 16, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !2, line: 213, column: 37)
!553 = !DILocation(line: 214, column: 25, scope: !552)
!554 = !DILocation(line: 214, column: 28, scope: !552)
!555 = !DILocation(line: 214, column: 35, scope: !552)
!556 = !DILocation(line: 215, column: 23, scope: !552)
!557 = !DILocation(line: 215, column: 7, scope: !552)
!558 = !DILocation(line: 215, column: 27, scope: !552)
!559 = distinct !{!559, !550, !560, !385}
!560 = !DILocation(line: 218, column: 5, scope: !549)
!561 = !DILocation(line: 221, column: 1, scope: !481)
!562 = !DILocation(line: 0, scope: !492)
!563 = distinct !DISubprogram(name: "gsl_sf_bessel_k0_scaled", scope: !2, file: !2, line: 228, type: !564, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!92, !91}
!566 = !{!567, !568, !569}
!567 = !DILocalVariable(name: "x", arg: 1, scope: !563, file: !2, line: 228, type: !91)
!568 = !DILocalVariable(name: "result", scope: !563, file: !2, line: 230, type: !94)
!569 = !DILocalVariable(name: "status", scope: !563, file: !2, line: 230, type: !40)
!570 = !DILocation(line: 0, scope: !563)
!571 = !DILocation(line: 0, scope: !88, inlinedAt: !572)
!572 = distinct !DILocation(line: 230, column: 3, scope: !563)
!573 = !DILocation(line: 88, column: 8, scope: !105, inlinedAt: !572)
!574 = !DILocation(line: 88, column: 6, scope: !88, inlinedAt: !572)
!575 = !DILocation(line: 89, column: 5, scope: !117, inlinedAt: !572)
!576 = !DILocation(line: 92, column: 28, scope: !119, inlinedAt: !572)
!577 = !DILocation(line: 92, column: 23, scope: !119, inlinedAt: !572)
!578 = !DILocation(line: 93, column: 43, scope: !119, inlinedAt: !572)
!579 = !DILocation(line: 94, column: 5, scope: !127, inlinedAt: !572)
!580 = !DILocation(line: 94, column: 5, scope: !119, inlinedAt: !572)
!581 = !DILocation(line: 94, column: 5, scope: !130, inlinedAt: !572)
!582 = !DILocation(line: 230, column: 3, scope: !583)
!583 = distinct !DILexicalBlock(scope: !584, file: !2, line: 230, column: 3)
!584 = distinct !DILexicalBlock(scope: !585, file: !2, line: 230, column: 3)
!585 = distinct !DILexicalBlock(scope: !563, file: !2, line: 230, column: 3)
!586 = !DILocation(line: 231, column: 1, scope: !563)
!587 = distinct !DISubprogram(name: "gsl_sf_bessel_k1_scaled", scope: !2, file: !2, line: 233, type: !564, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !588)
!588 = !{!589, !590, !591}
!589 = !DILocalVariable(name: "x", arg: 1, scope: !587, file: !2, line: 233, type: !91)
!590 = !DILocalVariable(name: "result", scope: !587, file: !2, line: 235, type: !94)
!591 = !DILocalVariable(name: "status", scope: !587, file: !2, line: 235, type: !40)
!592 = !DILocation(line: 0, scope: !587)
!593 = !DILocation(line: 0, scope: !138, inlinedAt: !594)
!594 = distinct !DILocation(line: 235, column: 3, scope: !587)
!595 = !DILocation(line: 104, column: 8, scope: !144, inlinedAt: !594)
!596 = !DILocation(line: 104, column: 6, scope: !138, inlinedAt: !594)
!597 = !DILocation(line: 105, column: 5, scope: !150, inlinedAt: !594)
!598 = !DILocation(line: 107, column: 13, scope: !152, inlinedAt: !594)
!599 = !DILocation(line: 107, column: 11, scope: !144, inlinedAt: !594)
!600 = !DILocation(line: 108, column: 5, scope: !158, inlinedAt: !594)
!601 = !DILocation(line: 111, column: 28, scope: !160, inlinedAt: !594)
!602 = !DILocation(line: 111, column: 23, scope: !160, inlinedAt: !594)
!603 = !DILocation(line: 111, column: 44, scope: !160, inlinedAt: !594)
!604 = !DILocation(line: 111, column: 39, scope: !160, inlinedAt: !594)
!605 = !DILocation(line: 111, column: 32, scope: !160, inlinedAt: !594)
!606 = !DILocation(line: 112, column: 43, scope: !160, inlinedAt: !594)
!607 = !DILocation(line: 113, column: 5, scope: !171, inlinedAt: !594)
!608 = !DILocation(line: 113, column: 5, scope: !160, inlinedAt: !594)
!609 = !DILocation(line: 113, column: 5, scope: !174, inlinedAt: !594)
!610 = !DILocation(line: 235, column: 3, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !2, line: 235, column: 3)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 235, column: 3)
!613 = distinct !DILexicalBlock(scope: !587, file: !2, line: 235, column: 3)
!614 = !DILocation(line: 236, column: 1, scope: !587)
!615 = distinct !DISubprogram(name: "gsl_sf_bessel_k2_scaled", scope: !2, file: !2, line: 238, type: !564, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !616)
!616 = !{!617, !618, !619}
!617 = !DILocalVariable(name: "x", arg: 1, scope: !615, file: !2, line: 238, type: !91)
!618 = !DILocalVariable(name: "result", scope: !615, file: !2, line: 240, type: !94)
!619 = !DILocalVariable(name: "status", scope: !615, file: !2, line: 240, type: !40)
!620 = !DILocation(line: 0, scope: !615)
!621 = !DILocation(line: 0, scope: !177, inlinedAt: !622)
!622 = distinct !DILocation(line: 240, column: 3, scope: !615)
!623 = !DILocation(line: 123, column: 8, scope: !183, inlinedAt: !622)
!624 = !DILocation(line: 123, column: 6, scope: !177, inlinedAt: !622)
!625 = !DILocation(line: 124, column: 5, scope: !189, inlinedAt: !622)
!626 = !DILocation(line: 126, column: 13, scope: !191, inlinedAt: !622)
!627 = !DILocation(line: 126, column: 11, scope: !183, inlinedAt: !622)
!628 = !DILocation(line: 127, column: 5, scope: !197, inlinedAt: !622)
!629 = !DILocation(line: 130, column: 28, scope: !199, inlinedAt: !622)
!630 = !DILocation(line: 130, column: 23, scope: !199, inlinedAt: !622)
!631 = !DILocation(line: 130, column: 44, scope: !199, inlinedAt: !622)
!632 = !DILocation(line: 130, column: 59, scope: !199, inlinedAt: !622)
!633 = !DILocation(line: 130, column: 54, scope: !199, inlinedAt: !622)
!634 = !DILocation(line: 130, column: 47, scope: !199, inlinedAt: !622)
!635 = !DILocation(line: 130, column: 39, scope: !199, inlinedAt: !622)
!636 = !DILocation(line: 130, column: 32, scope: !199, inlinedAt: !622)
!637 = !DILocation(line: 131, column: 43, scope: !199, inlinedAt: !622)
!638 = !DILocation(line: 132, column: 5, scope: !213, inlinedAt: !622)
!639 = !DILocation(line: 132, column: 5, scope: !199, inlinedAt: !622)
!640 = !DILocation(line: 132, column: 5, scope: !216, inlinedAt: !622)
!641 = !DILocation(line: 240, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !2, line: 240, column: 3)
!643 = distinct !DILexicalBlock(scope: !644, file: !2, line: 240, column: 3)
!644 = distinct !DILexicalBlock(scope: !615, file: !2, line: 240, column: 3)
!645 = !DILocation(line: 241, column: 1, scope: !615)
!646 = distinct !DISubprogram(name: "gsl_sf_bessel_kl_scaled", scope: !2, file: !2, line: 243, type: !647, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !649)
!647 = !DISubroutineType(types: !648)
!648 = !{!92, !331, !91}
!649 = !{!650, !651, !652, !653}
!650 = !DILocalVariable(name: "l", arg: 1, scope: !646, file: !2, line: 243, type: !331)
!651 = !DILocalVariable(name: "x", arg: 2, scope: !646, file: !2, line: 243, type: !91)
!652 = !DILocalVariable(name: "result", scope: !646, file: !2, line: 245, type: !94)
!653 = !DILocalVariable(name: "status", scope: !646, file: !2, line: 245, type: !40)
!654 = distinct !DIAssignID()
!655 = !DILocation(line: 0, scope: !646)
!656 = !DILocation(line: 245, column: 3, scope: !646)
!657 = !DILocation(line: 245, column: 3, scope: !658)
!658 = distinct !DILexicalBlock(scope: !646, file: !2, line: 245, column: 3)
!659 = !DILocation(line: 245, column: 3, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !2, line: 245, column: 3)
!661 = distinct !DILexicalBlock(scope: !658, file: !2, line: 245, column: 3)
!662 = !DILocation(line: 246, column: 1, scope: !646)
!663 = !DISubprogram(name: "gsl_sf_pow_int", scope: !664, file: !664, line: 44, type: !665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!664 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!665 = !DISubroutineType(types: !666)
!666 = !{!92, !91, !331}
!667 = !DISubprogram(name: "gsl_sf_doublefact_e", scope: !668, file: !668, line: 127, type: !669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!668 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!669 = !DISubroutineType(types: !670)
!670 = !{!40, !671, !93}
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!672 = !DISubprogram(name: "exp", scope: !477, file: !477, line: 95, type: !478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!673 = !DISubprogram(name: "gsl_sf_bessel_il_scaled_e", scope: !674, file: !674, line: 376, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!675 = !DISubroutineType(types: !676)
!676 = !{!40, !331, !92, !93}
