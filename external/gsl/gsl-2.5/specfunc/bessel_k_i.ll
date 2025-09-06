; ModuleID = 'bessel_k.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 1) #5, !dbg !116
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
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #5, !dbg !129
  br label %14, !dbg !129

14:                                               ; preds = %13, %6, %4
  %15 = phi i32 [ 1, %4 ], [ 15, %13 ], [ 0, %6 ], !dbg !131
  ret i32 %15, !dbg !132
}

declare !dbg !133 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 1) #5, !dbg !149
  br label %20, !dbg !149

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x1FFF5DE25335C4EE, !dbg !151
  br i1 %7, label %8, label %10, !dbg !153

8:                                                ; preds = %6
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !154, !tbaa !110
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !154
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !154, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 16) #5, !dbg !157
  br label %20, !dbg !157

10:                                               ; preds = %6
  %11 = fmul double %0, 2.000000e+00, !dbg !159
  %12 = fdiv double 0x400921FB54442D18, %11, !dbg !161
  %13 = fdiv double 1.000000e+00, %0, !dbg !162
  %handler_result = call double @fAddHandlerDouble(double %13, double 1.000000e+00), !dbg !163
  %14 = fmul double %12, %handler_result, !dbg !163
  store double %14, ptr %1, align 8, !dbg !164, !tbaa !110
  %15 = tail call double @llvm.fabs.f64(double %14), !dbg !165
  %16 = fmul double %15, 0x3CC0000000000000, !dbg !166
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !167
  store double %16, ptr %17, align 8, !dbg !168, !tbaa !115
  %18 = fcmp olt double %15, 0x10000000000000, !dbg !169
  br i1 %18, label %19, label %20, !dbg !171

19:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #5, !dbg !172
  br label %20, !dbg !172

20:                                               ; preds = %19, %10, %8, %4
  %21 = phi i32 [ 1, %4 ], [ 16, %8 ], [ 15, %19 ], [ 0, %10 ], !dbg !174
  ret i32 %21, !dbg !175
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_k2_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !176 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !178, metadata !DIExpression()), !dbg !180
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !179, metadata !DIExpression()), !dbg !180
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !181
  br i1 %3, label %6, label %4, !dbg !183

4:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !184, !tbaa !110
  %5 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !184
  store double 0x7FF8000000000000, ptr %5, align 8, !dbg !184, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 124, i32 noundef 1) #5, !dbg !187
  br label %22, !dbg !187

6:                                                ; preds = %2
  %7 = fcmp olt double %0, 0x2AA965FEA53D6E98, !dbg !189
  br i1 %7, label %8, label %10, !dbg !191

8:                                                ; preds = %6
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !192, !tbaa !110
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !192
  store double 0x7FF0000000000000, ptr %9, align 8, !dbg !192, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 16) #5, !dbg !195
  br label %22, !dbg !195

10:                                               ; preds = %6
  %11 = fmul double %0, 2.000000e+00, !dbg !197
  %12 = fdiv double 0x400921FB54442D18, %11, !dbg !199
  %13 = fdiv double 3.000000e+00, %0, !dbg !200
  %14 = fdiv double 1.000000e+00, %0, !dbg !201
  %handler_result = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !202
  %15 = fmul double %13, %handler_result, !dbg !202
  %handler_result1 = call double @fAddHandlerDouble(double %15, double 1.000000e+00), !dbg !203
  %16 = fmul double %12, %handler_result1, !dbg !203
  store double %16, ptr %1, align 8, !dbg !204, !tbaa !110
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !205
  %18 = fmul double %17, 0x3CC0000000000000, !dbg !206
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !207
  store double %18, ptr %19, align 8, !dbg !208, !tbaa !115
  %20 = fcmp olt double %17, 0x10000000000000, !dbg !209
  br i1 %20, label %21, label %22, !dbg !211

21:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 15) #5, !dbg !212
  br label %22, !dbg !212

22:                                               ; preds = %21, %10, %8, %4
  %23 = phi i32 [ 1, %4 ], [ 16, %8 ], [ 15, %21 ], [ 0, %10 ], !dbg !214
  ret i32 %23, !dbg !215
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_kl_scaled_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !216 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !245
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !246
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !247
  call void @llvm.dbg.assign(metadata i1 undef, metadata !236, metadata !DIExpression(), metadata !247, metadata ptr %6, metadata !DIExpression()), !dbg !248
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !249
  call void @llvm.dbg.assign(metadata i1 undef, metadata !238, metadata !DIExpression(), metadata !249, metadata ptr %7, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !220, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata double %1, metadata !221, metadata !DIExpression()), !dbg !250
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !222, metadata !DIExpression()), !dbg !250
  %8 = icmp slt i32 %0, 0, !dbg !251
  %9 = fcmp ole double %1, 0.000000e+00
  %10 = or i1 %8, %9, !dbg !252
  br i1 %10, label %11, label %13, !dbg !252

11:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !253, !tbaa !110
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !253
  store double 0x7FF8000000000000, ptr %12, align 8, !dbg !253, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141, i32 noundef 1) #5, !dbg !256
  br label %199, !dbg !256

13:                                               ; preds = %3
  switch i32 %0, label %52 [
    i32 0, label %14
    i32 1, label %22
    i32 2, label %36
  ], !dbg !258

14:                                               ; preds = %13
  call void @llvm.dbg.value(metadata double %1, metadata !101, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %2, metadata !102, metadata !DIExpression()), !dbg !259
  %15 = fmul double %1, 2.000000e+00, !dbg !262
  %16 = fdiv double 0x400921FB54442D18, %15, !dbg !263
  store double %16, ptr %2, align 8, !dbg !264, !tbaa !110
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !265
  %18 = fmul double %17, 0x3CC0000000000000, !dbg !266
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !267
  store double %18, ptr %19, align 8, !dbg !268, !tbaa !115
  %20 = fcmp olt double %17, 0x10000000000000, !dbg !269
  br i1 %20, label %21, label %199, !dbg !270

21:                                               ; preds = %14
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #5, !dbg !271
  br label %199, !dbg !271

22:                                               ; preds = %13
  call void @llvm.dbg.value(metadata double %1, metadata !140, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata ptr %2, metadata !141, metadata !DIExpression()), !dbg !272
  %23 = fcmp olt double %1, 0x1FFF5DE25335C4EE, !dbg !275
  br i1 %23, label %24, label %26, !dbg !276

24:                                               ; preds = %22
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !277, !tbaa !110
  %25 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !277
  store double 0x7FF0000000000000, ptr %25, align 8, !dbg !277, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 16) #5, !dbg !278
  br label %199, !dbg !278

26:                                               ; preds = %22
  %27 = fmul double %1, 2.000000e+00, !dbg !279
  %28 = fdiv double 0x400921FB54442D18, %27, !dbg !280
  %29 = fdiv double 1.000000e+00, %1, !dbg !281
  %handler_result = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !282
  %30 = fmul double %28, %handler_result, !dbg !282
  store double %30, ptr %2, align 8, !dbg !283, !tbaa !110
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !284
  %32 = fmul double %31, 0x3CC0000000000000, !dbg !285
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !286
  store double %32, ptr %33, align 8, !dbg !287, !tbaa !115
  %34 = fcmp olt double %31, 0x10000000000000, !dbg !288
  br i1 %34, label %35, label %199, !dbg !289

35:                                               ; preds = %26
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #5, !dbg !290
  br label %199, !dbg !290

36:                                               ; preds = %13
  call void @llvm.dbg.value(metadata double %1, metadata !178, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata ptr %2, metadata !179, metadata !DIExpression()), !dbg !291
  %37 = fcmp olt double %1, 0x2AA965FEA53D6E98, !dbg !294
  br i1 %37, label %38, label %40, !dbg !295

38:                                               ; preds = %36
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !296, !tbaa !110
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !296
  store double 0x7FF0000000000000, ptr %39, align 8, !dbg !296, !tbaa !115
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 16) #5, !dbg !297
  br label %199, !dbg !297

40:                                               ; preds = %36
  %41 = fmul double %1, 2.000000e+00, !dbg !298
  %42 = fdiv double 0x400921FB54442D18, %41, !dbg !299
  %43 = fdiv double 3.000000e+00, %1, !dbg !300
  %44 = fdiv double 1.000000e+00, %1, !dbg !301
  %handler_result1 = call double @fAddHandlerDouble(double %44, double 1.000000e+00), !dbg !302
  %45 = fmul double %43, %handler_result1, !dbg !302
  %handler_result2 = call double @fAddHandlerDouble(double %45, double 1.000000e+00), !dbg !303
  %46 = fmul double %42, %handler_result2, !dbg !303
  store double %46, ptr %2, align 8, !dbg !304, !tbaa !110
  %47 = tail call double @llvm.fabs.f64(double %46), !dbg !305
  %48 = fmul double %47, 0x3CC0000000000000, !dbg !306
  %49 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !307
  store double %48, ptr %49, align 8, !dbg !308, !tbaa !115
  %50 = fcmp olt double %47, 0x10000000000000, !dbg !309
  br i1 %50, label %51, label %199, !dbg !310

51:                                               ; preds = %40
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 15) #5, !dbg !311
  br label %199, !dbg !311

52:                                               ; preds = %13
  %53 = fcmp olt double %1, 3.000000e+00, !dbg !312
  br i1 %53, label %54, label %108, !dbg !313

54:                                               ; preds = %52
  call void @llvm.dbg.assign(metadata i1 undef, metadata !314, metadata !DIExpression(), metadata !245, metadata ptr %4, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.assign(metadata i1 undef, metadata !326, metadata !DIExpression(), metadata !246, metadata ptr %5, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 %0, metadata !317, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata double %1, metadata !318, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata ptr %2, metadata !319, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !341
  %55 = add nuw nsw i32 %0, 1, !dbg !342
  %56 = tail call double @gsl_sf_pow_int(double noundef %1, i32 noundef %55) #5, !dbg !343
  call void @llvm.dbg.value(metadata double %56, metadata !320, metadata !DIExpression()), !dbg !337
  %57 = shl nuw nsw i32 %0, 1, !dbg !344
  %58 = add nsw i32 %57, -1, !dbg !345
  %59 = call i32 @gsl_sf_doublefact_e(i32 noundef %58, ptr noundef nonnull %4) #5, !dbg !346
  call void @llvm.dbg.value(metadata i32 %59, metadata !321, metadata !DIExpression()), !dbg !337
  %60 = icmp ne i32 %59, 0, !dbg !347
  %61 = fcmp oeq double %56, 0.000000e+00
  %62 = select i1 %60, i1 true, i1 %61, !dbg !348
  br i1 %62, label %63, label %65, !dbg !348

63:                                               ; preds = %54
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !349, !tbaa !110
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !349
  store double 0x7FF0000000000000, ptr %64, align 8, !dbg !349, !tbaa !115
  call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 48, i32 noundef 16) #5, !dbg !352
  br label %106, !dbg !352

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 50, metadata !322, metadata !DIExpression()), !dbg !340
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !354
  %66 = and i32 %0, 1, !dbg !355
  %67 = icmp eq i32 %66, 0, !dbg !355
  call void @llvm.dbg.value(metadata double %91, metadata !328, metadata !DIExpression()), !dbg !340
  %68 = call double @exp(double noundef %1) #5, !dbg !356
  call void @llvm.dbg.value(metadata double %68, metadata !329, metadata !DIExpression()), !dbg !340
  %69 = fmul double %1, 5.000000e-01, !dbg !357
  %70 = fmul double %69, %1, !dbg !358
  call void @llvm.dbg.value(metadata double %70, metadata !330, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !331, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !332, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !333, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 1, metadata !336, metadata !DIExpression()), !dbg !340
  br label %71, !dbg !359

71:                                               ; preds = %71, %65
  %72 = phi i32 [ 1, %65 ], [ %87, %71 ]
  %73 = phi double [ 1.000000e+00, %65 ], [ %82, %71 ]
  %74 = phi double [ 1.000000e+00, %65 ], [ %81, %71 ]
  %75 = phi double [ 1.000000e+00, %65 ], [ %handler_result3, %71 ]
  call void @llvm.dbg.value(metadata i32 %72, metadata !336, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata double %73, metadata !333, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata double %74, metadata !332, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata double %75, metadata !331, metadata !DIExpression()), !dbg !340
  %76 = sub nsw i32 %72, %0, !dbg !361
  %77 = shl nsw i32 %76, 1, !dbg !364
  %78 = add nsw i32 %77, -1, !dbg !365
  %79 = mul nsw i32 %78, %72, !dbg !366
  %80 = sitofp i32 %79 to double, !dbg !367
  %81 = fdiv double %74, %80, !dbg !368
  call void @llvm.dbg.value(metadata double %81, metadata !332, metadata !DIExpression()), !dbg !340
  %82 = fmul double %70, %73, !dbg !369
  call void @llvm.dbg.value(metadata double %82, metadata !333, metadata !DIExpression()), !dbg !340
  %83 = fmul double %82, %81, !dbg !370
  call void @llvm.dbg.value(metadata double %83, metadata !334, metadata !DIExpression()), !dbg !340
  %handler_result3 = call double @fAddHandlerDouble(double %75, double %83), !dbg !371
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !331, metadata !DIExpression()), !dbg !340
  %84 = fdiv double %83, %handler_result3, !dbg !371
  %85 = call double @llvm.fabs.f64(double %84), !dbg !373
  %86 = fcmp olt double %85, 0x3CB0000000000000, !dbg !374
  call void @llvm.dbg.value(metadata i32 %72, metadata !336, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !340
  %87 = add nuw nsw i32 %72, 1
  call void @llvm.dbg.value(metadata i32 %87, metadata !336, metadata !DIExpression()), !dbg !340
  %88 = icmp eq i32 %87, 50
  %89 = select i1 %86, i1 true, i1 %88, !dbg !375
  br i1 %89, label %90, label %71, !dbg !375, !llvm.loop !376

90:                                               ; preds = %71
  %91 = select i1 %67, double 1.000000e+00, double -1.000000e+00, !dbg !355
  call void @llvm.dbg.value(metadata double %handler_result3, metadata !331, metadata !DIExpression()), !dbg !340
  %92 = call i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %5) #5, !dbg !379
  call void @llvm.dbg.value(metadata i32 %92, metadata !335, metadata !DIExpression()), !dbg !340
  %93 = load double, ptr %4, align 8, !dbg !380, !tbaa !110
  %94 = fmul double %91, %93, !dbg !381
  %95 = fdiv double %94, %56, !dbg !382
  %96 = fmul double %handler_result3, %95, !dbg !383
  call void @llvm.dbg.value(metadata double %96, metadata !327, metadata !DIExpression()), !dbg !340
  %97 = fmul double %91, -5.000000e-01, !dbg !384
  %98 = fmul double %97, 0x400921FB54442D18, !dbg !385
  %99 = load double, ptr %5, align 8, !dbg !386, !tbaa !110
  %100 = fmul double %68, %99, !dbg !387
  %handler_result4 = call double @fSubHandlerDouble(double %100, double %96), !dbg !388
  %101 = fmul double %98, %handler_result4, !dbg !388
  %102 = fmul double %68, %101, !dbg !389
  store double %102, ptr %2, align 8, !dbg !389, !tbaa !110
  %103 = call double @llvm.fabs.f64(double %102), !dbg !390
  %104 = fmul double %103, 0x3CC0000000000000, !dbg !391
  %105 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !392
  store double %104, ptr %105, align 8, !dbg !393, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !394
  br label %106

106:                                              ; preds = %90, %63
  %107 = phi i32 [ 16, %63 ], [ %92, %90 ], !dbg !395
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !396
  br label %199, !dbg !397

108:                                              ; preds = %52
  %109 = fmul double %1, 0x3ED965FEA53D6E41, !dbg !398
  %110 = mul nsw i32 %0, %0, !dbg !399
  %111 = add nuw i32 %0, 1, !dbg !400
  %112 = add i32 %111, %110, !dbg !401
  %113 = sitofp i32 %112 to double, !dbg !402
  %114 = fcmp ogt double %109, %113, !dbg !403
  br i1 %114, label %115, label %125, !dbg !404

115:                                              ; preds = %108
  %116 = sitofp i32 %0 to double, !dbg !405
  %handler_result5 = call double @fAddHandlerDouble(double %116, double 5.000000e-01), !dbg !406
  %117 = tail call i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double noundef %handler_result5, double noundef %1, ptr noundef %2) #5, !dbg !406
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !223, metadata !DIExpression()), !dbg !407
  %118 = fdiv double 0x3FF921FB54442D18, %1, !dbg !408
  %119 = tail call double @sqrt(double noundef %118) #5, !dbg !409
  tail call void @llvm.dbg.value(metadata double %119, metadata !231, metadata !DIExpression()), !dbg !407
  %120 = load double, ptr %2, align 8, !dbg !410, !tbaa !110
  %121 = fmul double %119, %120, !dbg !410
  store double %121, ptr %2, align 8, !dbg !410, !tbaa !110
  %122 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !411
  %123 = load double, ptr %122, align 8, !dbg !412, !tbaa !115
  %124 = fmul double %119, %123, !dbg !412
  store double %124, ptr %122, align 8, !dbg !412, !tbaa !115
  br label %199

125:                                              ; preds = %108
  %126 = add nuw nsw i32 %110, 1, !dbg !413
  %127 = sitofp i32 %126 to double, !dbg !413
  %128 = fdiv double 2.900000e-01, %127, !dbg !413
  %129 = fmul double %1, %1, !dbg !413
  %handler_result6 = call double @fAddHandlerDouble(double %129, double %127), !dbg !413
  %130 = fdiv double 5.000000e-01, %handler_result6, !dbg !413
  %131 = fcmp olt double %128, %130, !dbg !413
  %132 = select i1 %131, double %128, double %130, !dbg !413
  %133 = fcmp olt double %132, 0x3ED965FEA53D6E41, !dbg !414
  br i1 %133, label %134, label %144, !dbg !415

134:                                              ; preds = %125
  %135 = sitofp i32 %0 to double, !dbg !416
  %handler_result7 = call double @fAddHandlerDouble(double %135, double 5.000000e-01), !dbg !417
  %136 = tail call i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double noundef %handler_result7, double noundef %1, ptr noundef %2) #5, !dbg !417
  tail call void @llvm.dbg.value(metadata i32 %136, metadata !232, metadata !DIExpression()), !dbg !418
  %137 = fdiv double 0x3FF921FB54442D18, %1, !dbg !419
  %138 = tail call double @sqrt(double noundef %137) #5, !dbg !420
  tail call void @llvm.dbg.value(metadata double %138, metadata !235, metadata !DIExpression()), !dbg !418
  %139 = load double, ptr %2, align 8, !dbg !421, !tbaa !110
  %140 = fmul double %138, %139, !dbg !421
  store double %140, ptr %2, align 8, !dbg !421, !tbaa !110
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !422
  %142 = load double, ptr %141, align 8, !dbg !423, !tbaa !115
  %143 = fmul double %138, %142, !dbg !423
  store double %143, ptr %141, align 8, !dbg !423, !tbaa !115
  br label %199

144:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5, !dbg !424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5, !dbg !425
  %145 = call i32 @gsl_sf_bessel_k1_scaled_e(double noundef %1, ptr noundef nonnull %6), !dbg !426, !range !427
  tail call void @llvm.dbg.value(metadata i32 %145, metadata !239, metadata !DIExpression()), !dbg !248
  %146 = call i32 @gsl_sf_bessel_k0_scaled_e(double noundef %1, ptr noundef nonnull %7), !dbg !428, !range !429
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !240, metadata !DIExpression()), !dbg !248
  %147 = load double, ptr %6, align 8, !dbg !430, !tbaa !110
  tail call void @llvm.dbg.value(metadata double %147, metadata !242, metadata !DIExpression()), !dbg !248
  %148 = load double, ptr %7, align 8, !dbg !431, !tbaa !110
  tail call void @llvm.dbg.value(metadata double %148, metadata !243, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 1, metadata !244, metadata !DIExpression()), !dbg !248
  %149 = add i32 %0, -1, !dbg !432
  %150 = and i32 %149, 1, !dbg !432
  %151 = icmp eq i32 %0, 2, !dbg !432
  br i1 %151, label %176, label %152, !dbg !432

152:                                              ; preds = %144
  %153 = and i32 %149, -2, !dbg !432
  br label %154, !dbg !432

154:                                              ; preds = %154, %152
  %155 = phi i32 [ 1, %152 ], [ %169, %154 ]
  %156 = phi double [ %148, %152 ], [ %handler_result8, %154 ]
  %157 = phi double [ %147, %152 ], [ %handler_result9, %154 ]
  %158 = phi i32 [ 0, %152 ], [ %170, %154 ]
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !244, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %156, metadata !243, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %157, metadata !242, metadata !DIExpression()), !dbg !248
  %159 = shl nuw nsw i32 %155, 1, !dbg !434
  %160 = or disjoint i32 %159, 1, !dbg !437
  %161 = sitofp i32 %160 to double, !dbg !438
  %162 = fdiv double %161, %1, !dbg !439
  %163 = fmul double %157, %162, !dbg !440
  %handler_result8 = call double @fAddHandlerDouble(double %156, double %163), !dbg !434
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !241, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %157, metadata !243, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !242, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !244, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !248
  tail call void @llvm.dbg.value(metadata i32 %155, metadata !244, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !248
  tail call void @llvm.dbg.value(metadata double %157, metadata !243, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !242, metadata !DIExpression()), !dbg !248
  %164 = shl nuw i32 %155, 1, !dbg !434
  %165 = add i32 %164, 3, !dbg !437
  %166 = sitofp i32 %165 to double, !dbg !438
  %167 = fdiv double %166, %1, !dbg !439
  %168 = fmul double %handler_result8, %167, !dbg !440
  %handler_result9 = call double @fAddHandlerDouble(double %157, double %168), !dbg !441
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !241, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !243, metadata !DIExpression()), !dbg !248
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !242, metadata !DIExpression()), !dbg !248
  %169 = add nuw nsw i32 %155, 2, !dbg !441
  tail call void @llvm.dbg.value(metadata i32 %169, metadata !244, metadata !DIExpression()), !dbg !248
  %170 = add i32 %158, 2, !dbg !432
  %171 = icmp eq i32 %170, %153, !dbg !432
  br i1 %171, label %172, label %154, !dbg !432, !llvm.loop !442

172:                                              ; preds = %154
  %173 = shl nuw nsw i32 %169, 1, !dbg !434
  %174 = or disjoint i32 %173, 1, !dbg !437
  %175 = sitofp i32 %174 to double, !dbg !438
  br label %176, !dbg !432

176:                                              ; preds = %172, %144
  %177 = phi double [ undef, %144 ], [ %handler_result9, %172 ]
  %178 = phi double [ 3.000000e+00, %144 ], [ %175, %172 ]
  %179 = phi double [ %148, %144 ], [ %handler_result8, %172 ]
  %180 = phi double [ %147, %144 ], [ %handler_result9, %172 ]
  %181 = icmp eq i32 %150, 0, !dbg !432
  %182 = fdiv double %178, %1, !dbg !432
  %183 = fmul double %180, %182, !dbg !432
  %handler_result10 = call double @fAddHandlerDouble(double %179, double %183), !dbg !432
  %184 = select i1 %181, double %177, double %handler_result10, !dbg !432
  store double %184, ptr %2, align 8, !dbg !444, !tbaa !110
  %185 = tail call double @llvm.fabs.f64(double %184), !dbg !445
  %186 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !446
  %187 = load double, ptr %186, align 8, !dbg !446, !tbaa !115
  %188 = fdiv double %187, %147, !dbg !447
  %189 = tail call double @llvm.fabs.f64(double %188), !dbg !448
  %190 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !449
  %191 = load double, ptr %190, align 8, !dbg !449, !tbaa !115
  %192 = fdiv double %191, %148, !dbg !450
  %193 = tail call double @llvm.fabs.f64(double %192), !dbg !451
  %handler_result11 = call double @fAddHandlerDouble(double %189, double %193), !dbg !452
  %194 = fmul double %185, %handler_result11, !dbg !452
  %195 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !453
  %196 = fmul double %185, 0x3CC0000000000000, !dbg !454
  %handler_result12 = call double @fAddHandlerDouble(double %196, double %194), !dbg !455
  store double %handler_result12, ptr %195, align 8, !dbg !455, !tbaa !115
  %197 = icmp eq i32 %145, 0, !dbg !456
  %198 = select i1 %197, i32 %146, i32 %145, !dbg !456
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5, !dbg !457
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5, !dbg !457
  br label %199

199:                                              ; preds = %176, %134, %115, %106, %51, %40, %38, %35, %26, %24, %21, %14, %11
  %200 = phi i32 [ 1, %11 ], [ %107, %106 ], [ %117, %115 ], [ %136, %134 ], [ %198, %176 ], [ 15, %21 ], [ 0, %14 ], [ 16, %24 ], [ 15, %35 ], [ 0, %26 ], [ 16, %38 ], [ 15, %51 ], [ 0, %40 ], !dbg !458
  ret i32 %200, !dbg !459
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !460 i32 @gsl_sf_bessel_Knu_scaled_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !464 double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare !dbg !468 i32 @gsl_sf_bessel_Knu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_kl_scaled_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !469 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !474, metadata !DIExpression()), !dbg !489
  tail call void @llvm.dbg.value(metadata double %1, metadata !475, metadata !DIExpression()), !dbg !489
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !476, metadata !DIExpression()), !dbg !489
  %4 = icmp slt i32 %0, 0, !dbg !490
  %5 = fcmp ole double %1, 0.000000e+00
  %6 = or i1 %4, %5, !dbg !491
  br i1 %6, label %7, label %8, !dbg !491

7:                                                ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 196, i32 noundef 1) #5, !dbg !492
  br label %84, !dbg !492

8:                                                ; preds = %3
  %9 = icmp eq i32 %0, 0, !dbg !495
  br i1 %9, label %10, label %18, !dbg !496

10:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %1, metadata !101, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata ptr undef, metadata !102, metadata !DIExpression()), !dbg !497
  %11 = fmul double %1, 2.000000e+00, !dbg !499
  %12 = fdiv double 0x400921FB54442D18, %11, !dbg !500
  tail call void @llvm.dbg.value(metadata double %12, metadata !477, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !501
  %13 = tail call double @llvm.fabs.f64(double %12), !dbg !502
  tail call void @llvm.dbg.value(metadata double poison, metadata !477, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !501
  %14 = fcmp olt double %13, 0x10000000000000, !dbg !503
  br i1 %14, label %15, label %16, !dbg !504

15:                                               ; preds = %10
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #5, !dbg !505
  br label %16, !dbg !505

16:                                               ; preds = %15, %10
  %17 = phi i32 [ 15, %15 ], [ 0, %10 ], !dbg !506
  tail call void @llvm.dbg.value(metadata double %12, metadata !477, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !501
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !481, metadata !DIExpression()), !dbg !501
  store double %12, ptr %2, align 8, !dbg !507, !tbaa !508
  br label %84

18:                                               ; preds = %8
  call void @llvm.dbg.value(metadata double %1, metadata !140, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.value(metadata ptr undef, metadata !141, metadata !DIExpression()), !dbg !509
  %19 = fcmp olt double %1, 0x1FFF5DE25335C4EE, !dbg !511
  br i1 %19, label %20, label %23, !dbg !512

20:                                               ; preds = %18
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !487, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !487, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !513
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 16) #5, !dbg !514
  %21 = fmul double %1, 2.000000e+00, !dbg !515
  %22 = fdiv double 0x400921FB54442D18, %21, !dbg !517
  br label %31, !dbg !514

23:                                               ; preds = %18
  %24 = fmul double %1, 2.000000e+00, !dbg !518
  %25 = fdiv double 0x400921FB54442D18, %24, !dbg !519
  %26 = fdiv double 1.000000e+00, %1, !dbg !520
  %handler_result = call double @fAddHandlerDouble(double %26, double 1.000000e+00), !dbg !521
  %27 = fmul double %25, %handler_result, !dbg !521
  tail call void @llvm.dbg.value(metadata double %27, metadata !487, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  %28 = tail call double @llvm.fabs.f64(double %27), !dbg !522
  tail call void @llvm.dbg.value(metadata double poison, metadata !487, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !513
  %29 = fcmp olt double %28, 0x10000000000000, !dbg !523
  br i1 %29, label %30, label %31, !dbg !524

30:                                               ; preds = %23
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #5, !dbg !525
  br label %31, !dbg !525

31:                                               ; preds = %30, %23, %20
  %32 = phi double [ %22, %20 ], [ %25, %23 ], [ %25, %30 ], !dbg !517
  %33 = phi double [ 0x7FF0000000000000, %20 ], [ %27, %23 ], [ %27, %30 ]
  tail call void @llvm.dbg.value(metadata double %33, metadata !487, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  call void @llvm.dbg.value(metadata double %1, metadata !101, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata ptr undef, metadata !102, metadata !DIExpression()), !dbg !526
  tail call void @llvm.dbg.value(metadata double %32, metadata !488, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  %34 = tail call double @llvm.fabs.f64(double %32), !dbg !527
  tail call void @llvm.dbg.value(metadata double poison, metadata !488, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !513
  %35 = fcmp olt double %34, 0x10000000000000, !dbg !528
  br i1 %35, label %36, label %37, !dbg !529

36:                                               ; preds = %31
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #5, !dbg !530
  br label %37, !dbg !530

37:                                               ; preds = %36, %31
  tail call void @llvm.dbg.value(metadata double %32, metadata !488, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !513
  tail call void @llvm.dbg.value(metadata double %33, metadata !485, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %32, metadata !486, metadata !DIExpression()), !dbg !513
  store double %32, ptr %2, align 8, !dbg !531, !tbaa !508
  %38 = getelementptr inbounds double, ptr %2, i64 1, !dbg !532
  store double %33, ptr %38, align 8, !dbg !533, !tbaa !508
  tail call void @llvm.dbg.value(metadata i32 1, metadata !482, metadata !DIExpression()), !dbg !513
  %39 = icmp eq i32 %0, 1, !dbg !534
  br i1 %39, label %84, label %40, !dbg !537

40:                                               ; preds = %37
  %41 = zext nneg i32 %0 to i64, !dbg !534
  %42 = add nsw i64 %41, -1, !dbg !537
  %43 = and i64 %42, 1, !dbg !537
  %44 = icmp eq i32 %0, 2, !dbg !537
  br i1 %44, label %70, label %45, !dbg !537

45:                                               ; preds = %40
  %46 = and i64 %42, -2, !dbg !537
  br label %47, !dbg !537

47:                                               ; preds = %47, %45
  %48 = phi i64 [ 1, %45 ], [ %66, %47 ]
  %49 = phi double [ %32, %45 ], [ %handler_result1, %47 ]
  %50 = phi double [ %33, %45 ], [ %handler_result2, %47 ]
  %51 = phi i64 [ 0, %45 ], [ %68, %47 ]
  tail call void @llvm.dbg.value(metadata double %49, metadata !486, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %50, metadata !485, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !482, metadata !DIExpression()), !dbg !513
  %52 = trunc i64 %48 to i32, !dbg !538
  %53 = shl i32 %52, 1, !dbg !538
  %54 = or disjoint i32 %53, 1, !dbg !538
  %55 = sitofp i32 %54 to double, !dbg !538
  %56 = fdiv double %55, %1, !dbg !540
  %57 = fmul double %50, %56, !dbg !541
  %handler_result1 = call double @fAddHandlerDouble(double %49, double %57), !dbg !542
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !484, metadata !DIExpression()), !dbg !513
  %58 = add nuw nsw i64 %48, 1, !dbg !542
  %59 = getelementptr inbounds double, ptr %2, i64 %58, !dbg !543
  store double %handler_result1, ptr %59, align 8, !dbg !544, !tbaa !508
  tail call void @llvm.dbg.value(metadata double %50, metadata !486, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !485, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !482, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %50, metadata !486, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !485, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !482, metadata !DIExpression()), !dbg !513
  %60 = trunc i64 %58 to i32, !dbg !538
  %61 = shl i32 %60, 1, !dbg !538
  %62 = or disjoint i32 %61, 1, !dbg !538
  %63 = sitofp i32 %62 to double, !dbg !538
  %64 = fdiv double %63, %1, !dbg !540
  %65 = fmul double %handler_result1, %64, !dbg !541
  %handler_result2 = call double @fAddHandlerDouble(double %50, double %65), !dbg !542
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !484, metadata !DIExpression()), !dbg !513
  %66 = add nuw nsw i64 %48, 2, !dbg !542
  %67 = getelementptr inbounds double, ptr %2, i64 %66, !dbg !543
  store double %handler_result2, ptr %67, align 8, !dbg !544, !tbaa !508
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !486, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !485, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %66, metadata !482, metadata !DIExpression()), !dbg !513
  %68 = add i64 %51, 2, !dbg !537
  %69 = icmp eq i64 %68, %46, !dbg !537
  br i1 %69, label %70, label %47, !dbg !537, !llvm.loop !545

70:                                               ; preds = %47, %40
  %71 = phi i64 [ 1, %40 ], [ %66, %47 ]
  %72 = phi double [ %32, %40 ], [ %handler_result1, %47 ]
  %73 = phi double [ %33, %40 ], [ %handler_result2, %47 ]
  %74 = icmp eq i64 %43, 0, !dbg !537
  br i1 %74, label %84, label %75, !dbg !537

75:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata double %72, metadata !486, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %73, metadata !485, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !482, metadata !DIExpression()), !dbg !513
  %76 = trunc i64 %71 to i32, !dbg !538
  %77 = shl i32 %76, 1, !dbg !538
  %78 = or disjoint i32 %77, 1, !dbg !538
  %79 = sitofp i32 %78 to double, !dbg !538
  %80 = fdiv double %79, %1, !dbg !540
  %81 = fmul double %73, %80, !dbg !541
  %handler_result3 = call double @fAddHandlerDouble(double %72, double %81), !dbg !543
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !484, metadata !DIExpression()), !dbg !513
  %82 = getelementptr double, ptr %2, i64 %71, !dbg !543
  %83 = getelementptr double, ptr %82, i64 1, !dbg !543
  store double %handler_result3, ptr %83, align 8, !dbg !544, !tbaa !508
  tail call void @llvm.dbg.value(metadata double %73, metadata !486, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata double %handler_result3, metadata !485, metadata !DIExpression()), !dbg !513
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !482, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !513
  br label %84, !dbg !547

84:                                               ; preds = %75, %70, %37, %16, %7
  %85 = phi i32 [ 1, %7 ], [ %17, %16 ], [ 0, %37 ], [ 0, %70 ], [ 0, %75 ], !dbg !548
  ret i32 %85, !dbg !547
}

; Function Attrs: nounwind uwtable
define dso_local noundef double @gsl_sf_bessel_k0_scaled(double noundef %0) local_unnamed_addr #0 !dbg !549 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !553, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata double %0, metadata !101, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata ptr undef, metadata !102, metadata !DIExpression()), !dbg !557
  %2 = fcmp ugt double %0, 0.000000e+00, !dbg !559
  br i1 %2, label %4, label %3, !dbg !560

3:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !554, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !556
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !554, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !556
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 89, i32 noundef 1) #5, !dbg !561
  br label %10, !dbg !561

4:                                                ; preds = %1
  %5 = fmul double %0, 2.000000e+00, !dbg !562
  %6 = fdiv double 0x400921FB54442D18, %5, !dbg !563
  tail call void @llvm.dbg.value(metadata double %6, metadata !554, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !556
  %7 = tail call double @llvm.fabs.f64(double %6), !dbg !564
  tail call void @llvm.dbg.value(metadata double poison, metadata !554, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !556
  %8 = fcmp olt double %7, 0x10000000000000, !dbg !565
  br i1 %8, label %9, label %13, !dbg !566

9:                                                ; preds = %4
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 15) #5, !dbg !567
  br label %10, !dbg !567

10:                                               ; preds = %9, %3
  %11 = phi double [ 0x7FF8000000000000, %3 ], [ %6, %9 ]
  %12 = phi i32 [ 1, %3 ], [ 15, %9 ]
  tail call void @llvm.dbg.value(metadata double %11, metadata !554, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !556
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !555, metadata !DIExpression()), !dbg !556
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef %12) #5, !dbg !568
  br label %13, !dbg !568

13:                                               ; preds = %10, %4
  %14 = phi double [ %11, %10 ], [ %6, %4 ]
  ret double %14, !dbg !572
}

; Function Attrs: nounwind uwtable
define dso_local noundef double @gsl_sf_bessel_k1_scaled(double noundef %0) local_unnamed_addr #0 !dbg !573 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !575, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata double %0, metadata !140, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata ptr undef, metadata !141, metadata !DIExpression()), !dbg !579
  %2 = fcmp ugt double %0, 0.000000e+00, !dbg !581
  br i1 %2, label %4, label %3, !dbg !582

3:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !576, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !578
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !576, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !578
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 105, i32 noundef 1) #5, !dbg !583
  br label %15, !dbg !583

4:                                                ; preds = %1
  %5 = fcmp olt double %0, 0x1FFF5DE25335C4EE, !dbg !584
  br i1 %5, label %6, label %7, !dbg !585

6:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !576, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !578
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !576, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !578
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 108, i32 noundef 16) #5, !dbg !586
  br label %15, !dbg !586

7:                                                ; preds = %4
  %8 = fmul double %0, 2.000000e+00, !dbg !587
  %9 = fdiv double 0x400921FB54442D18, %8, !dbg !588
  %10 = fdiv double 1.000000e+00, %0, !dbg !589
  %handler_result = call double @fAddHandlerDouble(double %10, double 1.000000e+00), !dbg !590
  %11 = fmul double %9, %handler_result, !dbg !590
  tail call void @llvm.dbg.value(metadata double %11, metadata !576, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !578
  %12 = tail call double @llvm.fabs.f64(double %11), !dbg !591
  tail call void @llvm.dbg.value(metadata double poison, metadata !576, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !578
  %13 = fcmp olt double %12, 0x10000000000000, !dbg !592
  br i1 %13, label %14, label %18, !dbg !593

14:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 113, i32 noundef 15) #5, !dbg !594
  br label %15, !dbg !594

15:                                               ; preds = %14, %6, %3
  %16 = phi double [ 0x7FF8000000000000, %3 ], [ %11, %14 ], [ 0x7FF0000000000000, %6 ]
  %17 = phi i32 [ 1, %3 ], [ 15, %14 ], [ 16, %6 ]
  tail call void @llvm.dbg.value(metadata double %16, metadata !576, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !578
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !577, metadata !DIExpression()), !dbg !578
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 235, i32 noundef %17) #5, !dbg !595
  br label %18, !dbg !595

18:                                               ; preds = %15, %7
  %19 = phi double [ %16, %15 ], [ %11, %7 ]
  ret double %19, !dbg !599
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_k2_scaled(double noundef %0) local_unnamed_addr #0 !dbg !600 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !602, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata double %0, metadata !178, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata ptr undef, metadata !179, metadata !DIExpression()), !dbg !606
  %2 = fcmp ugt double %0, 0.000000e+00, !dbg !608
  br i1 %2, label %4, label %3, !dbg !609

3:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !603, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !605
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !603, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !605
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 124, i32 noundef 1) #5, !dbg !610
  br label %17, !dbg !610

4:                                                ; preds = %1
  %5 = fcmp olt double %0, 0x2AA965FEA53D6E98, !dbg !611
  br i1 %5, label %6, label %7, !dbg !612

6:                                                ; preds = %4
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !603, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !605
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !603, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !605
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 127, i32 noundef 16) #5, !dbg !613
  br label %17, !dbg !613

7:                                                ; preds = %4
  %8 = fmul double %0, 2.000000e+00, !dbg !614
  %9 = fdiv double 0x400921FB54442D18, %8, !dbg !615
  %10 = fdiv double 3.000000e+00, %0, !dbg !616
  %11 = fdiv double 1.000000e+00, %0, !dbg !617
  %handler_result = call double @fAddHandlerDouble(double %11, double 1.000000e+00), !dbg !618
  %12 = fmul double %10, %handler_result, !dbg !618
  %handler_result1 = call double @fAddHandlerDouble(double %12, double 1.000000e+00), !dbg !619
  %13 = fmul double %9, %handler_result1, !dbg !619
  tail call void @llvm.dbg.value(metadata double %13, metadata !603, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !605
  %14 = tail call double @llvm.fabs.f64(double %13), !dbg !620
  tail call void @llvm.dbg.value(metadata double poison, metadata !603, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !605
  %15 = fcmp olt double %14, 0x10000000000000, !dbg !621
  br i1 %15, label %16, label %20, !dbg !622

16:                                               ; preds = %7
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 132, i32 noundef 15) #5, !dbg !623
  br label %17, !dbg !623

17:                                               ; preds = %16, %6, %3
  %18 = phi double [ 0x7FF8000000000000, %3 ], [ %13, %16 ], [ 0x7FF0000000000000, %6 ]
  %19 = phi i32 [ 1, %3 ], [ 15, %16 ], [ 16, %6 ]
  tail call void @llvm.dbg.value(metadata double %18, metadata !603, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !605
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !604, metadata !DIExpression()), !dbg !605
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 240, i32 noundef %19) #5, !dbg !624
  br label %20, !dbg !624

20:                                               ; preds = %17, %7
  %21 = phi double [ %18, %17 ], [ %13, %7 ]
  ret double %21, !dbg !628
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_kl_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !629 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !635, metadata !DIExpression(), metadata !637, metadata ptr %3, metadata !DIExpression()), !dbg !638
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !633, metadata !DIExpression()), !dbg !638
  tail call void @llvm.dbg.value(metadata double %1, metadata !634, metadata !DIExpression()), !dbg !638
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !639
  %4 = call i32 @gsl_sf_bessel_kl_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !639
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !636, metadata !DIExpression()), !dbg !638
  %5 = icmp eq i32 %4, 0, !dbg !640
  br i1 %5, label %7, label %6, !dbg !639

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 245, i32 noundef %4) #5, !dbg !642
  br label %7, !dbg !642

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !639, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !645
  ret double %8, !dbg !645
}

declare !dbg !646 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !650 i32 @gsl_sf_doublefact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !655 double @exp(double noundef) local_unnamed_addr #4

declare !dbg !656 i32 @gsl_sf_bessel_il_scaled_e(i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!163 = !DILocation(line: 111, column: 32, scope: !160)
!164 = !DILocation(line: 111, column: 17, scope: !160)
!165 = !DILocation(line: 112, column: 43, scope: !160)
!166 = !DILocation(line: 112, column: 41, scope: !160)
!167 = !DILocation(line: 112, column: 13, scope: !160)
!168 = !DILocation(line: 112, column: 17, scope: !160)
!169 = !DILocation(line: 113, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !160, file: !2, line: 113, column: 5)
!171 = !DILocation(line: 113, column: 5, scope: !160)
!172 = !DILocation(line: 113, column: 5, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !2, line: 113, column: 5)
!174 = !DILocation(line: 0, scope: !144)
!175 = !DILocation(line: 116, column: 1, scope: !138)
!176 = distinct !DISubprogram(name: "gsl_sf_bessel_k2_scaled_e", scope: !2, file: !2, line: 119, type: !89, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !177)
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "x", arg: 1, scope: !176, file: !2, line: 119, type: !91)
!179 = !DILocalVariable(name: "result", arg: 2, scope: !176, file: !2, line: 119, type: !93)
!180 = !DILocation(line: 0, scope: !176)
!181 = !DILocation(line: 123, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !176, file: !2, line: 123, column: 6)
!183 = !DILocation(line: 123, column: 6, scope: !176)
!184 = !DILocation(line: 124, column: 5, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !2, line: 124, column: 5)
!186 = distinct !DILexicalBlock(scope: !182, file: !2, line: 123, column: 16)
!187 = !DILocation(line: 124, column: 5, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !2, line: 124, column: 5)
!189 = !DILocation(line: 126, column: 13, scope: !190)
!190 = distinct !DILexicalBlock(scope: !182, file: !2, line: 126, column: 11)
!191 = !DILocation(line: 126, column: 11, scope: !182)
!192 = !DILocation(line: 127, column: 5, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 127, column: 5)
!194 = distinct !DILexicalBlock(scope: !190, file: !2, line: 126, column: 38)
!195 = !DILocation(line: 127, column: 5, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !2, line: 127, column: 5)
!197 = !DILocation(line: 130, column: 28, scope: !198)
!198 = distinct !DILexicalBlock(scope: !190, file: !2, line: 129, column: 8)
!199 = !DILocation(line: 130, column: 23, scope: !198)
!200 = !DILocation(line: 130, column: 44, scope: !198)
!201 = !DILocation(line: 130, column: 59, scope: !198)
!202 = !DILocation(line: 130, column: 47, scope: !198)
!203 = !DILocation(line: 130, column: 32, scope: !198)
!204 = !DILocation(line: 130, column: 17, scope: !198)
!205 = !DILocation(line: 131, column: 43, scope: !198)
!206 = !DILocation(line: 131, column: 41, scope: !198)
!207 = !DILocation(line: 131, column: 13, scope: !198)
!208 = !DILocation(line: 131, column: 17, scope: !198)
!209 = !DILocation(line: 132, column: 5, scope: !210)
!210 = distinct !DILexicalBlock(scope: !198, file: !2, line: 132, column: 5)
!211 = !DILocation(line: 132, column: 5, scope: !198)
!212 = !DILocation(line: 132, column: 5, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !2, line: 132, column: 5)
!214 = !DILocation(line: 0, scope: !182)
!215 = !DILocation(line: 135, column: 1, scope: !176)
!216 = distinct !DISubprogram(name: "gsl_sf_bessel_kl_scaled_e", scope: !2, file: !2, line: 138, type: !217, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!40, !40, !91, !93}
!219 = !{!220, !221, !222, !223, !231, !232, !235, !236, !238, !239, !240, !241, !242, !243, !244}
!220 = !DILocalVariable(name: "l", arg: 1, scope: !216, file: !2, line: 138, type: !40)
!221 = !DILocalVariable(name: "x", arg: 2, scope: !216, file: !2, line: 138, type: !91)
!222 = !DILocalVariable(name: "result", arg: 3, scope: !216, file: !2, line: 138, type: !93)
!223 = !DILocalVariable(name: "status", scope: !224, file: !2, line: 156, type: !40)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 155, column: 54)
!225 = distinct !DILexicalBlock(scope: !226, file: !2, line: 155, column: 11)
!226 = distinct !DILexicalBlock(scope: !227, file: !2, line: 152, column: 11)
!227 = distinct !DILexicalBlock(scope: !228, file: !2, line: 149, column: 11)
!228 = distinct !DILexicalBlock(scope: !229, file: !2, line: 146, column: 11)
!229 = distinct !DILexicalBlock(scope: !230, file: !2, line: 143, column: 11)
!230 = distinct !DILexicalBlock(scope: !216, file: !2, line: 140, column: 6)
!231 = !DILocalVariable(name: "pre", scope: !224, file: !2, line: 157, type: !92)
!232 = !DILocalVariable(name: "status", scope: !233, file: !2, line: 163, type: !40)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 162, column: 79)
!234 = distinct !DILexicalBlock(scope: !225, file: !2, line: 162, column: 11)
!235 = !DILocalVariable(name: "pre", scope: !233, file: !2, line: 164, type: !92)
!236 = !DILocalVariable(name: "r_bk", scope: !237, file: !2, line: 171, type: !94)
!237 = distinct !DILexicalBlock(scope: !234, file: !2, line: 169, column: 8)
!238 = !DILocalVariable(name: "r_bkm", scope: !237, file: !2, line: 172, type: !94)
!239 = !DILocalVariable(name: "stat_1", scope: !237, file: !2, line: 173, type: !40)
!240 = !DILocalVariable(name: "stat_0", scope: !237, file: !2, line: 174, type: !40)
!241 = !DILocalVariable(name: "bkp", scope: !237, file: !2, line: 175, type: !92)
!242 = !DILocalVariable(name: "bk", scope: !237, file: !2, line: 176, type: !92)
!243 = !DILocalVariable(name: "bkm", scope: !237, file: !2, line: 177, type: !92)
!244 = !DILocalVariable(name: "j", scope: !237, file: !2, line: 178, type: !40)
!245 = distinct !DIAssignID()
!246 = distinct !DIAssignID()
!247 = distinct !DIAssignID()
!248 = !DILocation(line: 0, scope: !237)
!249 = distinct !DIAssignID()
!250 = !DILocation(line: 0, scope: !216)
!251 = !DILocation(line: 140, column: 8, scope: !230)
!252 = !DILocation(line: 140, column: 12, scope: !230)
!253 = !DILocation(line: 141, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !2, line: 141, column: 5)
!255 = distinct !DILexicalBlock(scope: !230, file: !2, line: 140, column: 25)
!256 = !DILocation(line: 141, column: 5, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !2, line: 141, column: 5)
!258 = !DILocation(line: 143, column: 11, scope: !230)
!259 = !DILocation(line: 0, scope: !88, inlinedAt: !260)
!260 = distinct !DILocation(line: 144, column: 12, scope: !261)
!261 = distinct !DILexicalBlock(scope: !229, file: !2, line: 143, column: 19)
!262 = !DILocation(line: 92, column: 28, scope: !119, inlinedAt: !260)
!263 = !DILocation(line: 92, column: 23, scope: !119, inlinedAt: !260)
!264 = !DILocation(line: 92, column: 17, scope: !119, inlinedAt: !260)
!265 = !DILocation(line: 93, column: 43, scope: !119, inlinedAt: !260)
!266 = !DILocation(line: 93, column: 41, scope: !119, inlinedAt: !260)
!267 = !DILocation(line: 93, column: 13, scope: !119, inlinedAt: !260)
!268 = !DILocation(line: 93, column: 17, scope: !119, inlinedAt: !260)
!269 = !DILocation(line: 94, column: 5, scope: !127, inlinedAt: !260)
!270 = !DILocation(line: 94, column: 5, scope: !119, inlinedAt: !260)
!271 = !DILocation(line: 94, column: 5, scope: !130, inlinedAt: !260)
!272 = !DILocation(line: 0, scope: !138, inlinedAt: !273)
!273 = distinct !DILocation(line: 147, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !228, file: !2, line: 146, column: 19)
!275 = !DILocation(line: 107, column: 13, scope: !152, inlinedAt: !273)
!276 = !DILocation(line: 107, column: 11, scope: !144, inlinedAt: !273)
!277 = !DILocation(line: 108, column: 5, scope: !155, inlinedAt: !273)
!278 = !DILocation(line: 108, column: 5, scope: !158, inlinedAt: !273)
!279 = !DILocation(line: 111, column: 28, scope: !160, inlinedAt: !273)
!280 = !DILocation(line: 111, column: 23, scope: !160, inlinedAt: !273)
!281 = !DILocation(line: 111, column: 44, scope: !160, inlinedAt: !273)
!282 = !DILocation(line: 111, column: 32, scope: !160, inlinedAt: !273)
!283 = !DILocation(line: 111, column: 17, scope: !160, inlinedAt: !273)
!284 = !DILocation(line: 112, column: 43, scope: !160, inlinedAt: !273)
!285 = !DILocation(line: 112, column: 41, scope: !160, inlinedAt: !273)
!286 = !DILocation(line: 112, column: 13, scope: !160, inlinedAt: !273)
!287 = !DILocation(line: 112, column: 17, scope: !160, inlinedAt: !273)
!288 = !DILocation(line: 113, column: 5, scope: !170, inlinedAt: !273)
!289 = !DILocation(line: 113, column: 5, scope: !160, inlinedAt: !273)
!290 = !DILocation(line: 113, column: 5, scope: !173, inlinedAt: !273)
!291 = !DILocation(line: 0, scope: !176, inlinedAt: !292)
!292 = distinct !DILocation(line: 150, column: 12, scope: !293)
!293 = distinct !DILexicalBlock(scope: !227, file: !2, line: 149, column: 19)
!294 = !DILocation(line: 126, column: 13, scope: !190, inlinedAt: !292)
!295 = !DILocation(line: 126, column: 11, scope: !182, inlinedAt: !292)
!296 = !DILocation(line: 127, column: 5, scope: !193, inlinedAt: !292)
!297 = !DILocation(line: 127, column: 5, scope: !196, inlinedAt: !292)
!298 = !DILocation(line: 130, column: 28, scope: !198, inlinedAt: !292)
!299 = !DILocation(line: 130, column: 23, scope: !198, inlinedAt: !292)
!300 = !DILocation(line: 130, column: 44, scope: !198, inlinedAt: !292)
!301 = !DILocation(line: 130, column: 59, scope: !198, inlinedAt: !292)
!302 = !DILocation(line: 130, column: 47, scope: !198, inlinedAt: !292)
!303 = !DILocation(line: 130, column: 32, scope: !198, inlinedAt: !292)
!304 = !DILocation(line: 130, column: 17, scope: !198, inlinedAt: !292)
!305 = !DILocation(line: 131, column: 43, scope: !198, inlinedAt: !292)
!306 = !DILocation(line: 131, column: 41, scope: !198, inlinedAt: !292)
!307 = !DILocation(line: 131, column: 13, scope: !198, inlinedAt: !292)
!308 = !DILocation(line: 131, column: 17, scope: !198, inlinedAt: !292)
!309 = !DILocation(line: 132, column: 5, scope: !210, inlinedAt: !292)
!310 = !DILocation(line: 132, column: 5, scope: !198, inlinedAt: !292)
!311 = !DILocation(line: 132, column: 5, scope: !213, inlinedAt: !292)
!312 = !DILocation(line: 152, column: 13, scope: !226)
!313 = !DILocation(line: 152, column: 11, scope: !227)
!314 = !DILocalVariable(name: "num_fact", scope: !315, file: !2, line: 43, type: !94)
!315 = distinct !DISubprogram(name: "bessel_kl_scaled_small_x", scope: !2, file: !2, line: 41, type: !217, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !316)
!316 = !{!317, !318, !319, !314, !320, !321, !322, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!317 = !DILocalVariable(name: "l", arg: 1, scope: !315, file: !2, line: 41, type: !40)
!318 = !DILocalVariable(name: "x", arg: 2, scope: !315, file: !2, line: 41, type: !91)
!319 = !DILocalVariable(name: "result", arg: 3, scope: !315, file: !2, line: 41, type: !93)
!320 = !DILocalVariable(name: "den", scope: !315, file: !2, line: 44, type: !92)
!321 = !DILocalVariable(name: "stat_df", scope: !315, file: !2, line: 45, type: !40)
!322 = !DILocalVariable(name: "lmax", scope: !323, file: !2, line: 51, type: !325)
!323 = distinct !DILexicalBlock(scope: !324, file: !2, line: 50, column: 8)
!324 = distinct !DILexicalBlock(scope: !315, file: !2, line: 47, column: 6)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!326 = !DILocalVariable(name: "ipos_term", scope: !323, file: !2, line: 52, type: !94)
!327 = !DILocalVariable(name: "ineg_term", scope: !323, file: !2, line: 53, type: !92)
!328 = !DILocalVariable(name: "sgn", scope: !323, file: !2, line: 54, type: !92)
!329 = !DILocalVariable(name: "ex", scope: !323, file: !2, line: 55, type: !92)
!330 = !DILocalVariable(name: "t", scope: !323, file: !2, line: 56, type: !92)
!331 = !DILocalVariable(name: "sum", scope: !323, file: !2, line: 57, type: !92)
!332 = !DILocalVariable(name: "t_coeff", scope: !323, file: !2, line: 58, type: !92)
!333 = !DILocalVariable(name: "t_power", scope: !323, file: !2, line: 59, type: !92)
!334 = !DILocalVariable(name: "delta", scope: !323, file: !2, line: 60, type: !92)
!335 = !DILocalVariable(name: "stat_il", scope: !323, file: !2, line: 61, type: !40)
!336 = !DILocalVariable(name: "i", scope: !323, file: !2, line: 62, type: !40)
!337 = !DILocation(line: 0, scope: !315, inlinedAt: !338)
!338 = distinct !DILocation(line: 153, column: 12, scope: !339)
!339 = distinct !DILexicalBlock(scope: !226, file: !2, line: 152, column: 20)
!340 = !DILocation(line: 0, scope: !323, inlinedAt: !338)
!341 = !DILocation(line: 43, column: 3, scope: !315, inlinedAt: !338)
!342 = !DILocation(line: 44, column: 36, scope: !315, inlinedAt: !338)
!343 = !DILocation(line: 44, column: 17, scope: !315, inlinedAt: !338)
!344 = !DILocation(line: 45, column: 54, scope: !315, inlinedAt: !338)
!345 = !DILocation(line: 45, column: 56, scope: !315, inlinedAt: !338)
!346 = !DILocation(line: 45, column: 17, scope: !315, inlinedAt: !338)
!347 = !DILocation(line: 47, column: 14, scope: !324, inlinedAt: !338)
!348 = !DILocation(line: 47, column: 29, scope: !324, inlinedAt: !338)
!349 = !DILocation(line: 48, column: 5, scope: !350, inlinedAt: !338)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 48, column: 5)
!351 = distinct !DILexicalBlock(scope: !324, file: !2, line: 47, column: 44)
!352 = !DILocation(line: 48, column: 5, scope: !353, inlinedAt: !338)
!353 = distinct !DILexicalBlock(scope: !350, file: !2, line: 48, column: 5)
!354 = !DILocation(line: 52, column: 5, scope: !323, inlinedAt: !338)
!355 = !DILocation(line: 54, column: 19, scope: !323, inlinedAt: !338)
!356 = !DILocation(line: 55, column: 18, scope: !323, inlinedAt: !338)
!357 = !DILocation(line: 56, column: 19, scope: !323, inlinedAt: !338)
!358 = !DILocation(line: 56, column: 21, scope: !323, inlinedAt: !338)
!359 = !DILocation(line: 64, column: 5, scope: !360, inlinedAt: !338)
!360 = distinct !DILexicalBlock(scope: !323, file: !2, line: 64, column: 5)
!361 = !DILocation(line: 65, column: 25, scope: !362, inlinedAt: !338)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 64, column: 27)
!363 = distinct !DILexicalBlock(scope: !360, file: !2, line: 64, column: 5)
!364 = !DILocation(line: 65, column: 22, scope: !362, inlinedAt: !338)
!365 = !DILocation(line: 65, column: 29, scope: !362, inlinedAt: !338)
!366 = !DILocation(line: 65, column: 19, scope: !362, inlinedAt: !338)
!367 = !DILocation(line: 65, column: 18, scope: !362, inlinedAt: !338)
!368 = !DILocation(line: 65, column: 15, scope: !362, inlinedAt: !338)
!369 = !DILocation(line: 66, column: 15, scope: !362, inlinedAt: !338)
!370 = !DILocation(line: 67, column: 22, scope: !362, inlinedAt: !338)
!371 = !DILocation(line: 69, column: 20, scope: !372, inlinedAt: !338)
!372 = distinct !DILexicalBlock(scope: !362, file: !2, line: 69, column: 10)
!373 = !DILocation(line: 69, column: 10, scope: !372, inlinedAt: !338)
!374 = !DILocation(line: 69, column: 26, scope: !372, inlinedAt: !338)
!375 = !DILocation(line: 69, column: 10, scope: !362, inlinedAt: !338)
!376 = distinct !{!376, !359, !377, !378}
!377 = !DILocation(line: 70, column: 5, scope: !360, inlinedAt: !338)
!378 = !{!"llvm.loop.mustprogress"}
!379 = !DILocation(line: 72, column: 15, scope: !323, inlinedAt: !338)
!380 = !DILocation(line: 73, column: 33, scope: !323, inlinedAt: !338)
!381 = !DILocation(line: 73, column: 22, scope: !323, inlinedAt: !338)
!382 = !DILocation(line: 73, column: 36, scope: !323, inlinedAt: !338)
!383 = !DILocation(line: 73, column: 41, scope: !323, inlinedAt: !338)
!384 = !DILocation(line: 74, column: 24, scope: !323, inlinedAt: !338)
!385 = !DILocation(line: 74, column: 29, scope: !323, inlinedAt: !338)
!386 = !DILocation(line: 74, column: 51, scope: !323, inlinedAt: !338)
!387 = !DILocation(line: 74, column: 40, scope: !323, inlinedAt: !338)
!388 = !DILocation(line: 74, column: 35, scope: !323, inlinedAt: !338)
!389 = !DILocation(line: 75, column: 17, scope: !323, inlinedAt: !338)
!390 = !DILocation(line: 76, column: 43, scope: !323, inlinedAt: !338)
!391 = !DILocation(line: 76, column: 41, scope: !323, inlinedAt: !338)
!392 = !DILocation(line: 76, column: 13, scope: !323, inlinedAt: !338)
!393 = !DILocation(line: 76, column: 17, scope: !323, inlinedAt: !338)
!394 = !DILocation(line: 78, column: 3, scope: !324, inlinedAt: !338)
!395 = !DILocation(line: 0, scope: !324, inlinedAt: !338)
!396 = !DILocation(line: 79, column: 1, scope: !315, inlinedAt: !338)
!397 = !DILocation(line: 153, column: 5, scope: !339)
!398 = !DILocation(line: 155, column: 33, scope: !225)
!399 = !DILocation(line: 155, column: 41, scope: !225)
!400 = !DILocation(line: 155, column: 44, scope: !225)
!401 = !DILocation(line: 155, column: 48, scope: !225)
!402 = !DILocation(line: 155, column: 39, scope: !225)
!403 = !DILocation(line: 155, column: 37, scope: !225)
!404 = !DILocation(line: 155, column: 11, scope: !226)
!405 = !DILocation(line: 156, column: 52, scope: !224)
!406 = !DILocation(line: 156, column: 18, scope: !224)
!407 = !DILocation(line: 0, scope: !224)
!408 = !DILocation(line: 157, column: 33, scope: !224)
!409 = !DILocation(line: 157, column: 18, scope: !224)
!410 = !DILocation(line: 158, column: 17, scope: !224)
!411 = !DILocation(line: 159, column: 13, scope: !224)
!412 = !DILocation(line: 159, column: 17, scope: !224)
!413 = !DILocation(line: 162, column: 11, scope: !234)
!414 = !DILocation(line: 162, column: 54, scope: !234)
!415 = !DILocation(line: 162, column: 11, scope: !225)
!416 = !DILocation(line: 163, column: 56, scope: !233)
!417 = !DILocation(line: 163, column: 18, scope: !233)
!418 = !DILocation(line: 0, scope: !233)
!419 = !DILocation(line: 164, column: 33, scope: !233)
!420 = !DILocation(line: 164, column: 18, scope: !233)
!421 = !DILocation(line: 165, column: 17, scope: !233)
!422 = !DILocation(line: 166, column: 13, scope: !233)
!423 = !DILocation(line: 166, column: 17, scope: !233)
!424 = !DILocation(line: 171, column: 5, scope: !237)
!425 = !DILocation(line: 172, column: 5, scope: !237)
!426 = !DILocation(line: 173, column: 18, scope: !237)
!427 = !{i32 0, i32 17}
!428 = !DILocation(line: 174, column: 18, scope: !237)
!429 = !{i32 0, i32 16}
!430 = !DILocation(line: 176, column: 23, scope: !237)
!431 = !DILocation(line: 177, column: 24, scope: !237)
!432 = !DILocation(line: 179, column: 5, scope: !433)
!433 = distinct !DILexicalBlock(scope: !237, file: !2, line: 179, column: 5)
!434 = !DILocation(line: 180, column: 15, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !2, line: 179, column: 24)
!436 = distinct !DILexicalBlock(scope: !433, file: !2, line: 179, column: 5)
!437 = !DILocation(line: 180, column: 17, scope: !435)
!438 = !DILocation(line: 180, column: 13, scope: !435)
!439 = !DILocation(line: 180, column: 20, scope: !435)
!440 = !DILocation(line: 180, column: 22, scope: !435)
!441 = !DILocation(line: 179, column: 20, scope: !436)
!442 = distinct !{!442, !432, !443, !378}
!443 = !DILocation(line: 183, column: 5, scope: !433)
!444 = !DILocation(line: 184, column: 18, scope: !237)
!445 = !DILocation(line: 185, column: 20, scope: !237)
!446 = !DILocation(line: 185, column: 42, scope: !237)
!447 = !DILocation(line: 185, column: 45, scope: !237)
!448 = !DILocation(line: 185, column: 32, scope: !237)
!449 = !DILocation(line: 185, column: 69, scope: !237)
!450 = !DILocation(line: 185, column: 72, scope: !237)
!451 = !DILocation(line: 185, column: 58, scope: !237)
!452 = !DILocation(line: 185, column: 29, scope: !237)
!453 = !DILocation(line: 185, column: 13, scope: !237)
!454 = !DILocation(line: 186, column: 42, scope: !237)
!455 = !DILocation(line: 186, column: 17, scope: !237)
!456 = !DILocation(line: 188, column: 12, scope: !237)
!457 = !DILocation(line: 189, column: 3, scope: !234)
!458 = !DILocation(line: 0, scope: !230)
!459 = !DILocation(line: 190, column: 1, scope: !216)
!460 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asympx_e", scope: !461, file: !461, line: 46, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!461 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!462 = !DISubroutineType(types: !463)
!463 = !{!40, !91, !91, !93}
!464 = !DISubprogram(name: "sqrt", scope: !465, file: !465, line: 143, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!465 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!466 = !DISubroutineType(types: !467)
!467 = !{!92, !92}
!468 = !DISubprogram(name: "gsl_sf_bessel_Knu_scaled_asymp_unif_e", scope: !461, file: !461, line: 49, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!469 = distinct !DISubprogram(name: "gsl_sf_bessel_kl_scaled_array", scope: !2, file: !2, line: 193, type: !470, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !473)
!470 = !DISubroutineType(types: !471)
!471 = !{!40, !325, !91, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!473 = !{!474, !475, !476, !477, !481, !482, !484, !485, !486, !487, !488}
!474 = !DILocalVariable(name: "lmax", arg: 1, scope: !469, file: !2, line: 193, type: !325)
!475 = !DILocalVariable(name: "x", arg: 2, scope: !469, file: !2, line: 193, type: !91)
!476 = !DILocalVariable(name: "result_array", arg: 3, scope: !469, file: !2, line: 193, type: !472)
!477 = !DILocalVariable(name: "result", scope: !478, file: !2, line: 198, type: !94)
!478 = distinct !DILexicalBlock(scope: !479, file: !2, line: 197, column: 25)
!479 = distinct !DILexicalBlock(scope: !480, file: !2, line: 197, column: 14)
!480 = distinct !DILexicalBlock(scope: !469, file: !2, line: 195, column: 6)
!481 = !DILocalVariable(name: "stat", scope: !478, file: !2, line: 199, type: !40)
!482 = !DILocalVariable(name: "ell", scope: !483, file: !2, line: 203, type: !40)
!483 = distinct !DILexicalBlock(scope: !479, file: !2, line: 202, column: 10)
!484 = !DILocalVariable(name: "kellp1", scope: !483, file: !2, line: 204, type: !92)
!485 = !DILocalVariable(name: "kell", scope: !483, file: !2, line: 204, type: !92)
!486 = !DILocalVariable(name: "kellm1", scope: !483, file: !2, line: 204, type: !92)
!487 = !DILocalVariable(name: "r_kell", scope: !483, file: !2, line: 205, type: !94)
!488 = !DILocalVariable(name: "r_kellm1", scope: !483, file: !2, line: 206, type: !94)
!489 = !DILocation(line: 0, scope: !469)
!490 = !DILocation(line: 195, column: 11, scope: !480)
!491 = !DILocation(line: 195, column: 15, scope: !480)
!492 = !DILocation(line: 196, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !2, line: 196, column: 5)
!494 = distinct !DILexicalBlock(scope: !480, file: !2, line: 195, column: 28)
!495 = !DILocation(line: 197, column: 19, scope: !479)
!496 = !DILocation(line: 197, column: 14, scope: !480)
!497 = !DILocation(line: 0, scope: !88, inlinedAt: !498)
!498 = distinct !DILocation(line: 199, column: 16, scope: !478)
!499 = !DILocation(line: 92, column: 28, scope: !119, inlinedAt: !498)
!500 = !DILocation(line: 92, column: 23, scope: !119, inlinedAt: !498)
!501 = !DILocation(line: 0, scope: !478)
!502 = !DILocation(line: 93, column: 43, scope: !119, inlinedAt: !498)
!503 = !DILocation(line: 94, column: 5, scope: !127, inlinedAt: !498)
!504 = !DILocation(line: 94, column: 5, scope: !119, inlinedAt: !498)
!505 = !DILocation(line: 94, column: 5, scope: !130, inlinedAt: !498)
!506 = !DILocation(line: 0, scope: !105, inlinedAt: !498)
!507 = !DILocation(line: 200, column: 21, scope: !478)
!508 = !{!112, !112, i64 0}
!509 = !DILocation(line: 0, scope: !138, inlinedAt: !510)
!510 = distinct !DILocation(line: 207, column: 5, scope: !483)
!511 = !DILocation(line: 107, column: 13, scope: !152, inlinedAt: !510)
!512 = !DILocation(line: 107, column: 11, scope: !144, inlinedAt: !510)
!513 = !DILocation(line: 0, scope: !483)
!514 = !DILocation(line: 108, column: 5, scope: !158, inlinedAt: !510)
!515 = !DILocation(line: 92, column: 28, scope: !119, inlinedAt: !516)
!516 = distinct !DILocation(line: 208, column: 5, scope: !483)
!517 = !DILocation(line: 92, column: 23, scope: !119, inlinedAt: !516)
!518 = !DILocation(line: 111, column: 28, scope: !160, inlinedAt: !510)
!519 = !DILocation(line: 111, column: 23, scope: !160, inlinedAt: !510)
!520 = !DILocation(line: 111, column: 44, scope: !160, inlinedAt: !510)
!521 = !DILocation(line: 111, column: 32, scope: !160, inlinedAt: !510)
!522 = !DILocation(line: 112, column: 43, scope: !160, inlinedAt: !510)
!523 = !DILocation(line: 113, column: 5, scope: !170, inlinedAt: !510)
!524 = !DILocation(line: 113, column: 5, scope: !160, inlinedAt: !510)
!525 = !DILocation(line: 113, column: 5, scope: !173, inlinedAt: !510)
!526 = !DILocation(line: 0, scope: !88, inlinedAt: !516)
!527 = !DILocation(line: 93, column: 43, scope: !119, inlinedAt: !516)
!528 = !DILocation(line: 94, column: 5, scope: !127, inlinedAt: !516)
!529 = !DILocation(line: 94, column: 5, scope: !119, inlinedAt: !516)
!530 = !DILocation(line: 94, column: 5, scope: !130, inlinedAt: !516)
!531 = !DILocation(line: 211, column: 21, scope: !483)
!532 = !DILocation(line: 212, column: 5, scope: !483)
!533 = !DILocation(line: 212, column: 21, scope: !483)
!534 = !DILocation(line: 213, column: 22, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !2, line: 213, column: 5)
!536 = distinct !DILexicalBlock(scope: !483, file: !2, line: 213, column: 5)
!537 = !DILocation(line: 213, column: 5, scope: !536)
!538 = !DILocation(line: 214, column: 16, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !2, line: 213, column: 37)
!540 = !DILocation(line: 214, column: 25, scope: !539)
!541 = !DILocation(line: 214, column: 28, scope: !539)
!542 = !DILocation(line: 215, column: 23, scope: !539)
!543 = !DILocation(line: 215, column: 7, scope: !539)
!544 = !DILocation(line: 215, column: 27, scope: !539)
!545 = distinct !{!545, !537, !546, !378}
!546 = !DILocation(line: 218, column: 5, scope: !536)
!547 = !DILocation(line: 221, column: 1, scope: !469)
!548 = !DILocation(line: 0, scope: !480)
!549 = distinct !DISubprogram(name: "gsl_sf_bessel_k0_scaled", scope: !2, file: !2, line: 228, type: !550, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !552)
!550 = !DISubroutineType(types: !551)
!551 = !{!92, !91}
!552 = !{!553, !554, !555}
!553 = !DILocalVariable(name: "x", arg: 1, scope: !549, file: !2, line: 228, type: !91)
!554 = !DILocalVariable(name: "result", scope: !549, file: !2, line: 230, type: !94)
!555 = !DILocalVariable(name: "status", scope: !549, file: !2, line: 230, type: !40)
!556 = !DILocation(line: 0, scope: !549)
!557 = !DILocation(line: 0, scope: !88, inlinedAt: !558)
!558 = distinct !DILocation(line: 230, column: 3, scope: !549)
!559 = !DILocation(line: 88, column: 8, scope: !105, inlinedAt: !558)
!560 = !DILocation(line: 88, column: 6, scope: !88, inlinedAt: !558)
!561 = !DILocation(line: 89, column: 5, scope: !117, inlinedAt: !558)
!562 = !DILocation(line: 92, column: 28, scope: !119, inlinedAt: !558)
!563 = !DILocation(line: 92, column: 23, scope: !119, inlinedAt: !558)
!564 = !DILocation(line: 93, column: 43, scope: !119, inlinedAt: !558)
!565 = !DILocation(line: 94, column: 5, scope: !127, inlinedAt: !558)
!566 = !DILocation(line: 94, column: 5, scope: !119, inlinedAt: !558)
!567 = !DILocation(line: 94, column: 5, scope: !130, inlinedAt: !558)
!568 = !DILocation(line: 230, column: 3, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !2, line: 230, column: 3)
!570 = distinct !DILexicalBlock(scope: !571, file: !2, line: 230, column: 3)
!571 = distinct !DILexicalBlock(scope: !549, file: !2, line: 230, column: 3)
!572 = !DILocation(line: 231, column: 1, scope: !549)
!573 = distinct !DISubprogram(name: "gsl_sf_bessel_k1_scaled", scope: !2, file: !2, line: 233, type: !550, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !574)
!574 = !{!575, !576, !577}
!575 = !DILocalVariable(name: "x", arg: 1, scope: !573, file: !2, line: 233, type: !91)
!576 = !DILocalVariable(name: "result", scope: !573, file: !2, line: 235, type: !94)
!577 = !DILocalVariable(name: "status", scope: !573, file: !2, line: 235, type: !40)
!578 = !DILocation(line: 0, scope: !573)
!579 = !DILocation(line: 0, scope: !138, inlinedAt: !580)
!580 = distinct !DILocation(line: 235, column: 3, scope: !573)
!581 = !DILocation(line: 104, column: 8, scope: !144, inlinedAt: !580)
!582 = !DILocation(line: 104, column: 6, scope: !138, inlinedAt: !580)
!583 = !DILocation(line: 105, column: 5, scope: !150, inlinedAt: !580)
!584 = !DILocation(line: 107, column: 13, scope: !152, inlinedAt: !580)
!585 = !DILocation(line: 107, column: 11, scope: !144, inlinedAt: !580)
!586 = !DILocation(line: 108, column: 5, scope: !158, inlinedAt: !580)
!587 = !DILocation(line: 111, column: 28, scope: !160, inlinedAt: !580)
!588 = !DILocation(line: 111, column: 23, scope: !160, inlinedAt: !580)
!589 = !DILocation(line: 111, column: 44, scope: !160, inlinedAt: !580)
!590 = !DILocation(line: 111, column: 32, scope: !160, inlinedAt: !580)
!591 = !DILocation(line: 112, column: 43, scope: !160, inlinedAt: !580)
!592 = !DILocation(line: 113, column: 5, scope: !170, inlinedAt: !580)
!593 = !DILocation(line: 113, column: 5, scope: !160, inlinedAt: !580)
!594 = !DILocation(line: 113, column: 5, scope: !173, inlinedAt: !580)
!595 = !DILocation(line: 235, column: 3, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !2, line: 235, column: 3)
!597 = distinct !DILexicalBlock(scope: !598, file: !2, line: 235, column: 3)
!598 = distinct !DILexicalBlock(scope: !573, file: !2, line: 235, column: 3)
!599 = !DILocation(line: 236, column: 1, scope: !573)
!600 = distinct !DISubprogram(name: "gsl_sf_bessel_k2_scaled", scope: !2, file: !2, line: 238, type: !550, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !601)
!601 = !{!602, !603, !604}
!602 = !DILocalVariable(name: "x", arg: 1, scope: !600, file: !2, line: 238, type: !91)
!603 = !DILocalVariable(name: "result", scope: !600, file: !2, line: 240, type: !94)
!604 = !DILocalVariable(name: "status", scope: !600, file: !2, line: 240, type: !40)
!605 = !DILocation(line: 0, scope: !600)
!606 = !DILocation(line: 0, scope: !176, inlinedAt: !607)
!607 = distinct !DILocation(line: 240, column: 3, scope: !600)
!608 = !DILocation(line: 123, column: 8, scope: !182, inlinedAt: !607)
!609 = !DILocation(line: 123, column: 6, scope: !176, inlinedAt: !607)
!610 = !DILocation(line: 124, column: 5, scope: !188, inlinedAt: !607)
!611 = !DILocation(line: 126, column: 13, scope: !190, inlinedAt: !607)
!612 = !DILocation(line: 126, column: 11, scope: !182, inlinedAt: !607)
!613 = !DILocation(line: 127, column: 5, scope: !196, inlinedAt: !607)
!614 = !DILocation(line: 130, column: 28, scope: !198, inlinedAt: !607)
!615 = !DILocation(line: 130, column: 23, scope: !198, inlinedAt: !607)
!616 = !DILocation(line: 130, column: 44, scope: !198, inlinedAt: !607)
!617 = !DILocation(line: 130, column: 59, scope: !198, inlinedAt: !607)
!618 = !DILocation(line: 130, column: 47, scope: !198, inlinedAt: !607)
!619 = !DILocation(line: 130, column: 32, scope: !198, inlinedAt: !607)
!620 = !DILocation(line: 131, column: 43, scope: !198, inlinedAt: !607)
!621 = !DILocation(line: 132, column: 5, scope: !210, inlinedAt: !607)
!622 = !DILocation(line: 132, column: 5, scope: !198, inlinedAt: !607)
!623 = !DILocation(line: 132, column: 5, scope: !213, inlinedAt: !607)
!624 = !DILocation(line: 240, column: 3, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !2, line: 240, column: 3)
!626 = distinct !DILexicalBlock(scope: !627, file: !2, line: 240, column: 3)
!627 = distinct !DILexicalBlock(scope: !600, file: !2, line: 240, column: 3)
!628 = !DILocation(line: 241, column: 1, scope: !600)
!629 = distinct !DISubprogram(name: "gsl_sf_bessel_kl_scaled", scope: !2, file: !2, line: 243, type: !630, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !632)
!630 = !DISubroutineType(types: !631)
!631 = !{!92, !325, !91}
!632 = !{!633, !634, !635, !636}
!633 = !DILocalVariable(name: "l", arg: 1, scope: !629, file: !2, line: 243, type: !325)
!634 = !DILocalVariable(name: "x", arg: 2, scope: !629, file: !2, line: 243, type: !91)
!635 = !DILocalVariable(name: "result", scope: !629, file: !2, line: 245, type: !94)
!636 = !DILocalVariable(name: "status", scope: !629, file: !2, line: 245, type: !40)
!637 = distinct !DIAssignID()
!638 = !DILocation(line: 0, scope: !629)
!639 = !DILocation(line: 245, column: 3, scope: !629)
!640 = !DILocation(line: 245, column: 3, scope: !641)
!641 = distinct !DILexicalBlock(scope: !629, file: !2, line: 245, column: 3)
!642 = !DILocation(line: 245, column: 3, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !2, line: 245, column: 3)
!644 = distinct !DILexicalBlock(scope: !641, file: !2, line: 245, column: 3)
!645 = !DILocation(line: 246, column: 1, scope: !629)
!646 = !DISubprogram(name: "gsl_sf_pow_int", scope: !647, file: !647, line: 44, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!647 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!648 = !DISubroutineType(types: !649)
!649 = !{!92, !91, !325}
!650 = !DISubprogram(name: "gsl_sf_doublefact_e", scope: !651, file: !651, line: 127, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!652 = !DISubroutineType(types: !653)
!653 = !{!40, !654, !93}
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!655 = !DISubprogram(name: "exp", scope: !465, file: !465, line: 95, type: !466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!656 = !DISubprogram(name: "gsl_sf_bessel_il_scaled_e", scope: !657, file: !657, line: 376, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!657 = !DIFile(filename: "../gsl/gsl_sf_bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "45459f63edc3203df6c715a25160d493")
!658 = !DISubroutineType(types: !659)
!659 = !{!40, !325, !92, !93}
