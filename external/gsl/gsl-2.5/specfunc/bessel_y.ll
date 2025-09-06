; ModuleID = 'bessel_y.c'
source_filename = "bessel_y.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_y.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y0_e(x, &result)\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y1_e(x, &result)\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_y2_e(x, &result)\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_yl_e(l, x, &result)\00", align 1, !dbg !31

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_y0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !86 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !107
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !107, metadata ptr %3, metadata !DIExpression()), !dbg !108
  tail call void @llvm.dbg.value(metadata double %0, metadata !99, metadata !DIExpression()), !dbg !109
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !100, metadata !DIExpression()), !dbg !109
  %4 = fcmp ugt double %0, 0.000000e+00, !dbg !110
  br i1 %4, label %7, label %5, !dbg !111

5:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !112, !tbaa !115
  %6 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !112
  store double 0x7FF8000000000000, ptr %6, align 8, !dbg !112, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 82, i32 noundef 1) #6, !dbg !121
  br label %24, !dbg !121

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 0x4000000000000, !dbg !123
  br i1 %8, label %9, label %11, !dbg !124

9:                                                ; preds = %7
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !125, !tbaa !115
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !125
  store double 0x7FF0000000000000, ptr %10, align 8, !dbg !125, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #6, !dbg !128
  br label %24, !dbg !128

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !130
  %12 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %3) #6, !dbg !131
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !105, metadata !DIExpression()), !dbg !108
  %13 = load double, ptr %3, align 8, !dbg !132, !tbaa !115
  %14 = fneg double %13, !dbg !133
  %15 = fdiv double %14, %0, !dbg !134
  store double %15, ptr %1, align 8, !dbg !135, !tbaa !115
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !136
  %17 = load double, ptr %16, align 8, !dbg !136, !tbaa !120
  %18 = fdiv double %17, %0, !dbg !137
  %19 = call double @llvm.fabs.f64(double %18), !dbg !138
  %20 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !139
  %21 = call double @llvm.fabs.f64(double %15), !dbg !140
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !141
  %23 = fadd double %22, %19, !dbg !142
  store double %23, ptr %20, align 8, !dbg !142, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !143
  br label %24

24:                                               ; preds = %5, %9, %11
  %25 = phi i32 [ 1, %5 ], [ 16, %9 ], [ %12, %11 ], !dbg !144
  ret i32 %25, !dbg !145
}

declare !dbg !146 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !151 i32 @gsl_sf_cos_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_y1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !155 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !178
  call void @llvm.dbg.assign(metadata i1 undef, metadata !171, metadata !DIExpression(), metadata !178, metadata ptr %3, metadata !DIExpression()), !dbg !179
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !180
  call void @llvm.dbg.assign(metadata i1 undef, metadata !173, metadata !DIExpression(), metadata !180, metadata ptr %4, metadata !DIExpression()), !dbg !179
  tail call void @llvm.dbg.value(metadata double %0, metadata !157, metadata !DIExpression()), !dbg !181
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !158, metadata !DIExpression()), !dbg !181
  %5 = fcmp ugt double %0, 0.000000e+00, !dbg !182
  br i1 %5, label %8, label %6, !dbg !183

6:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !184, !tbaa !115
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !184
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !184, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 103, i32 noundef 1) #6, !dbg !187
  br label %62, !dbg !187

8:                                                ; preds = %2
  %9 = fcmp olt double %0, 0x1FF0000000000001, !dbg !189
  br i1 %9, label %10, label %12, !dbg !190

10:                                               ; preds = %8
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !191, !tbaa !115
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !191
  store double 0x7FF0000000000000, ptr %11, align 8, !dbg !191, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 16) #6, !dbg !194
  br label %62, !dbg !194

12:                                               ; preds = %8
  %13 = fcmp olt double %0, 2.500000e-01, !dbg !196
  br i1 %13, label %14, label %33, !dbg !197

14:                                               ; preds = %12
  %15 = fmul double %0, %0, !dbg !198
  tail call void @llvm.dbg.value(metadata double %15, metadata !159, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata double 5.000000e-01, metadata !164, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata double -1.250000e-01, metadata !165, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata double 0x3F7C71C71C71C71C, metadata !166, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata double 0xBF26C16C16C16C17, metadata !167, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata double 0x3EC4CE19AE67B348, metadata !168, metadata !DIExpression()), !dbg !199
  tail call void @llvm.dbg.value(metadata double 0xBE58A86A49F629D1, metadata !169, metadata !DIExpression()), !dbg !199
  %16 = fmul double %15, 0x3E58A86A49F629D1, !dbg !200
  %17 = fsub double 0x3EC4CE19AE67B348, %16, !dbg !201
  %18 = fmul double %15, %17, !dbg !202
  %19 = fadd double %18, 0xBF26C16C16C16C17, !dbg !203
  %20 = fmul double %15, %19, !dbg !204
  %21 = fadd double %20, 0x3F7C71C71C71C71C, !dbg !205
  %22 = fmul double %15, %21, !dbg !206
  %23 = fadd double %22, -1.250000e-01, !dbg !207
  %24 = fmul double %15, %23, !dbg !208
  %25 = fadd double %24, 5.000000e-01, !dbg !209
  %26 = fmul double %15, %25, !dbg !210
  %27 = fadd double %26, 1.000000e+00, !dbg !211
  tail call void @llvm.dbg.value(metadata double %27, metadata !170, metadata !DIExpression()), !dbg !199
  %28 = fneg double %27, !dbg !212
  %29 = fdiv double %28, %15, !dbg !213
  store double %29, ptr %1, align 8, !dbg !214, !tbaa !115
  %30 = tail call double @llvm.fabs.f64(double %29), !dbg !215
  %31 = fmul double %30, 0x3CB0000000000000, !dbg !216
  %32 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !217
  store double %31, ptr %32, align 8, !dbg !218, !tbaa !120
  br label %62

33:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !219
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !220
  %34 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %3) #6, !dbg !221
  tail call void @llvm.dbg.value(metadata i32 %34, metadata !174, metadata !DIExpression()), !dbg !179
  %35 = call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef nonnull %4) #6, !dbg !222
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !175, metadata !DIExpression()), !dbg !179
  %36 = load double, ptr %3, align 8, !dbg !223, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %36, metadata !176, metadata !DIExpression()), !dbg !179
  %37 = load double, ptr %4, align 8, !dbg !224, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %37, metadata !177, metadata !DIExpression()), !dbg !179
  %38 = fdiv double %36, %0, !dbg !225
  %39 = fadd double %38, %37, !dbg !226
  %40 = fneg double %39, !dbg !227
  %41 = fdiv double %40, %0, !dbg !228
  store double %41, ptr %1, align 8, !dbg !229, !tbaa !115
  %42 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !230
  %43 = load double, ptr %42, align 8, !dbg !230, !tbaa !120
  %44 = fdiv double %43, %0, !dbg !231
  %45 = call double @llvm.fabs.f64(double %44), !dbg !232
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !233
  %47 = load double, ptr %46, align 8, !dbg !233, !tbaa !120
  %48 = fadd double %47, %45, !dbg !234
  %49 = call double @llvm.fabs.f64(double %0), !dbg !235
  %50 = fdiv double %48, %49, !dbg !236
  %51 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !237
  %52 = fdiv double %37, %0, !dbg !238
  %53 = call double @llvm.fabs.f64(double %52), !dbg !239
  %54 = fmul double %0, %0, !dbg !240
  %55 = fdiv double %36, %54, !dbg !241
  %56 = call double @llvm.fabs.f64(double %55), !dbg !242
  %57 = fadd double %56, %53, !dbg !243
  %58 = fmul double %57, 0x3CB0000000000000, !dbg !244
  %59 = fadd double %58, %50, !dbg !245
  store double %59, ptr %51, align 8, !dbg !245, !tbaa !120
  %60 = icmp eq i32 %34, 0, !dbg !246
  %61 = select i1 %60, i32 %35, i32 %34, !dbg !246
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !247
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !247
  br label %62

62:                                               ; preds = %6, %10, %14, %33
  %63 = phi i32 [ 1, %6 ], [ 16, %10 ], [ 0, %14 ], [ %61, %33 ], !dbg !248
  ret i32 %63, !dbg !249
}

declare !dbg !250 i32 @gsl_sf_sin_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_y2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !251 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !276
  call void @llvm.dbg.assign(metadata i1 undef, metadata !268, metadata !DIExpression(), metadata !276, metadata ptr %3, metadata !DIExpression()), !dbg !277
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !278
  call void @llvm.dbg.assign(metadata i1 undef, metadata !270, metadata !DIExpression(), metadata !278, metadata ptr %4, metadata !DIExpression()), !dbg !277
  tail call void @llvm.dbg.value(metadata double %0, metadata !253, metadata !DIExpression()), !dbg !279
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !254, metadata !DIExpression()), !dbg !279
  %5 = fcmp ugt double %0, 0.000000e+00, !dbg !280
  br i1 %5, label %8, label %6, !dbg !281

6:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !282, !tbaa !115
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !282
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !282, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141, i32 noundef 1) #6, !dbg !285
  br label %67, !dbg !285

8:                                                ; preds = %2
  %9 = fcmp olt double %0, 0x2A9965FEA53D6E98, !dbg !287
  br i1 %9, label %10, label %12, !dbg !288

10:                                               ; preds = %8
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !289, !tbaa !115
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !289
  store double 0x7FF0000000000000, ptr %11, align 8, !dbg !289, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 16) #6, !dbg !292
  br label %67, !dbg !292

12:                                               ; preds = %8
  %13 = fcmp olt double %0, 5.000000e-01, !dbg !294
  br i1 %13, label %14, label %36, !dbg !295

14:                                               ; preds = %12
  %15 = fmul double %0, %0, !dbg !296
  tail call void @llvm.dbg.value(metadata double %15, metadata !255, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !260, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double 0x3FA5555555555555, metadata !261, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double 0xBF7C71C71C71C71C, metadata !262, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double 0x3F32F684BDA12F68, metadata !263, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double 0xBED845C8A0CE5129, metadata !264, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double 0x3E727E4FB7789F5C, metadata !265, metadata !DIExpression()), !dbg !297
  tail call void @llvm.dbg.value(metadata double 0xBE02C9758DAF5CD0, metadata !266, metadata !DIExpression()), !dbg !297
  %16 = fmul double %15, 0x3E02C9758DAF5CD0, !dbg !298
  %17 = fsub double 0x3E727E4FB7789F5C, %16, !dbg !299
  %18 = fmul double %15, %17, !dbg !300
  %19 = fadd double %18, 0xBED845C8A0CE5129, !dbg !301
  %20 = fmul double %15, %19, !dbg !302
  %21 = fadd double %20, 0x3F32F684BDA12F68, !dbg !303
  %22 = fmul double %15, %21, !dbg !304
  %23 = fadd double %22, 0xBF7C71C71C71C71C, !dbg !305
  %24 = fmul double %15, %23, !dbg !306
  %25 = fadd double %24, 0x3FA5555555555555, !dbg !307
  %26 = fmul double %15, %25, !dbg !308
  %27 = fadd double %26, 0x3FC5555555555555, !dbg !309
  %28 = fmul double %15, %27, !dbg !310
  %29 = fadd double %28, 1.000000e+00, !dbg !311
  tail call void @llvm.dbg.value(metadata double %29, metadata !267, metadata !DIExpression()), !dbg !297
  %30 = fmul double %15, %0, !dbg !312
  %31 = fdiv double -3.000000e+00, %30, !dbg !313
  %32 = fmul double %31, %29, !dbg !314
  store double %32, ptr %1, align 8, !dbg !315, !tbaa !115
  %33 = tail call double @llvm.fabs.f64(double %32), !dbg !316
  %34 = fmul double %33, 0x3CB0000000000000, !dbg !317
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !318
  store double %34, ptr %35, align 8, !dbg !319, !tbaa !120
  br label %67

36:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !320
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !321
  %37 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %3) #6, !dbg !322
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !271, metadata !DIExpression()), !dbg !277
  %38 = call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef nonnull %4) #6, !dbg !323
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !272, metadata !DIExpression()), !dbg !277
  %39 = load double, ptr %4, align 8, !dbg !324, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %39, metadata !273, metadata !DIExpression()), !dbg !277
  %40 = load double, ptr %3, align 8, !dbg !325, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %40, metadata !274, metadata !DIExpression()), !dbg !277
  %41 = fmul double %0, %0, !dbg !326
  %42 = fdiv double 3.000000e+00, %41, !dbg !327
  tail call void @llvm.dbg.value(metadata double %42, metadata !275, metadata !DIExpression()), !dbg !277
  %43 = fsub double 1.000000e+00, %42, !dbg !328
  %44 = fdiv double %43, %0, !dbg !329
  %45 = fmul double %44, %40, !dbg !330
  %46 = fmul double %42, %39, !dbg !331
  %47 = fsub double %45, %46, !dbg !332
  store double %47, ptr %1, align 8, !dbg !333, !tbaa !115
  %48 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !334
  %49 = load double, ptr %48, align 8, !dbg !334, !tbaa !120
  %50 = call double @llvm.fabs.f64(double %44), !dbg !335
  %51 = fmul double %50, %49, !dbg !336
  %52 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !337
  %53 = load double, ptr %52, align 8, !dbg !337, !tbaa !120
  %54 = call double @llvm.fabs.f64(double %42), !dbg !338
  %55 = fmul double %54, %53, !dbg !339
  %56 = fadd double %51, %55, !dbg !340
  %57 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !341
  %58 = fdiv double %40, %0, !dbg !342
  %59 = call double @llvm.fabs.f64(double %58), !dbg !343
  %60 = fdiv double %39, %41, !dbg !344
  %61 = call double @llvm.fabs.f64(double %60), !dbg !345
  %62 = fadd double %61, %59, !dbg !346
  %63 = fmul double %62, 0x3CB0000000000000, !dbg !347
  %64 = fadd double %63, %56, !dbg !348
  store double %64, ptr %57, align 8, !dbg !348, !tbaa !120
  %65 = icmp eq i32 %37, 0, !dbg !349
  %66 = select i1 %65, i32 %38, i32 %37, !dbg !349
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !350
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !350
  br label %67

67:                                               ; preds = %6, %10, %14, %36
  %68 = phi i32 [ 1, %6 ], [ 16, %10 ], [ 0, %14 ], [ %66, %36 ], !dbg !351
  ret i32 %68, !dbg !352
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_yl_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !353 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !382
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !383
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !384
  call void @llvm.dbg.assign(metadata i1 undef, metadata !373, metadata !DIExpression(), metadata !384, metadata ptr %6, metadata !DIExpression()), !dbg !385
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !386
  call void @llvm.dbg.assign(metadata i1 undef, metadata !375, metadata !DIExpression(), metadata !386, metadata ptr %7, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !357, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata double %1, metadata !358, metadata !DIExpression()), !dbg !387
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !359, metadata !DIExpression()), !dbg !387
  %8 = icmp slt i32 %0, 0, !dbg !388
  %9 = fcmp ole double %1, 0.000000e+00
  %10 = or i1 %8, %9, !dbg !389
  br i1 %10, label %11, label %13, !dbg !389

11:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !390, !tbaa !115
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !390
  store double 0x7FF8000000000000, ptr %12, align 8, !dbg !390, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 181, i32 noundef 1) #6, !dbg !393
  br label %170, !dbg !393

13:                                               ; preds = %3
  switch i32 %0, label %35 [
    i32 0, label %14
    i32 1, label %31
    i32 2, label %33
  ], !dbg !395

14:                                               ; preds = %13
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !383, metadata ptr %5, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.value(metadata double %1, metadata !99, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.value(metadata ptr %2, metadata !100, metadata !DIExpression()), !dbg !399
  %15 = fcmp olt double %1, 0x4000000000000, !dbg !400
  br i1 %15, label %16, label %18, !dbg !401

16:                                               ; preds = %14
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !402, !tbaa !115
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !402
  store double 0x7FF0000000000000, ptr %17, align 8, !dbg !402, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #6, !dbg !403
  br label %170, !dbg !403

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !404
  %19 = call i32 @gsl_sf_cos_e(double noundef %1, ptr noundef nonnull %5) #6, !dbg !405
  call void @llvm.dbg.value(metadata i32 %19, metadata !105, metadata !DIExpression()), !dbg !396
  %20 = load double, ptr %5, align 8, !dbg !406, !tbaa !115
  %21 = fneg double %20, !dbg !407
  %22 = fdiv double %21, %1, !dbg !408
  store double %22, ptr %2, align 8, !dbg !409, !tbaa !115
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !410
  %24 = load double, ptr %23, align 8, !dbg !410, !tbaa !120
  %25 = fdiv double %24, %1, !dbg !411
  %26 = call double @llvm.fabs.f64(double %25), !dbg !412
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !413
  %28 = call double @llvm.fabs.f64(double %22), !dbg !414
  %29 = fmul double %28, 0x3CC0000000000000, !dbg !415
  %30 = fadd double %29, %26, !dbg !416
  store double %30, ptr %27, align 8, !dbg !416, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !417
  br label %170

31:                                               ; preds = %13
  %32 = tail call i32 @gsl_sf_bessel_y1_e(double noundef %1, ptr noundef %2), !dbg !418
  br label %170, !dbg !420

33:                                               ; preds = %13
  %34 = tail call i32 @gsl_sf_bessel_y2_e(double noundef %1, ptr noundef %2), !dbg !421
  br label %170, !dbg !423

35:                                               ; preds = %13
  %36 = fcmp olt double %1, 3.000000e+00, !dbg !424
  %37 = add nuw i32 %0, 1, !dbg !425
  br i1 %36, label %38, label %81, !dbg !426

38:                                               ; preds = %35
  call void @llvm.dbg.assign(metadata i1 undef, metadata !427, metadata !DIExpression(), metadata !382, metadata ptr %4, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata i32 %0, metadata !430, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata double %1, metadata !431, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.value(metadata ptr %2, metadata !432, metadata !DIExpression()), !dbg !444
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !447
  %39 = tail call double @gsl_sf_pow_int(double noundef %1, i32 noundef %37) #6, !dbg !448
  call void @llvm.dbg.value(metadata double %39, metadata !433, metadata !DIExpression()), !dbg !444
  %40 = shl nuw nsw i32 %0, 1, !dbg !449
  %41 = add nsw i32 %40, -1, !dbg !450
  %42 = call i32 @gsl_sf_doublefact_e(i32 noundef %41, ptr noundef nonnull %4) #6, !dbg !451
  call void @llvm.dbg.value(metadata i32 %42, metadata !434, metadata !DIExpression()), !dbg !444
  %43 = icmp ne i32 %42, 0, !dbg !452
  %44 = fcmp oeq double %39, 0.000000e+00
  %45 = select i1 %43, i1 true, i1 %44, !dbg !453
  br i1 %45, label %46, label %48, !dbg !453

46:                                               ; preds = %38
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !454, !tbaa !115
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !454
  store double 0x7FF0000000000000, ptr %47, align 8, !dbg !454, !tbaa !120
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 49, i32 noundef 16) #6, !dbg !457
  br label %79, !dbg !457

48:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 200, metadata !435, metadata !DIExpression()), !dbg !459
  %49 = fmul double %1, -5.000000e-01, !dbg !460
  %50 = fmul double %49, %1, !dbg !461
  call void @llvm.dbg.value(metadata double %50, metadata !438, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !439, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !440, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !441, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata i32 1, metadata !443, metadata !DIExpression()), !dbg !459
  br label %51, !dbg !462

51:                                               ; preds = %51, %48
  %52 = phi i32 [ 1, %48 ], [ %68, %51 ]
  %53 = phi double [ 1.000000e+00, %48 ], [ %62, %51 ]
  %54 = phi double [ 1.000000e+00, %48 ], [ %61, %51 ]
  %55 = phi double [ 1.000000e+00, %48 ], [ %64, %51 ]
  call void @llvm.dbg.value(metadata i32 %52, metadata !443, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata double %53, metadata !441, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata double %54, metadata !440, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.value(metadata double %55, metadata !439, metadata !DIExpression()), !dbg !459
  %56 = sub nsw i32 %52, %0, !dbg !464
  %57 = shl nsw i32 %56, 1, !dbg !467
  %58 = add nsw i32 %57, -1, !dbg !468
  %59 = mul nsw i32 %58, %52, !dbg !469
  %60 = sitofp i32 %59 to double, !dbg !470
  %61 = fdiv double %54, %60, !dbg !471
  call void @llvm.dbg.value(metadata double %61, metadata !440, metadata !DIExpression()), !dbg !459
  %62 = fmul double %50, %53, !dbg !472
  call void @llvm.dbg.value(metadata double %62, metadata !441, metadata !DIExpression()), !dbg !459
  %63 = fmul double %62, %61, !dbg !473
  call void @llvm.dbg.value(metadata double %63, metadata !442, metadata !DIExpression()), !dbg !459
  %64 = fadd double %55, %63, !dbg !474
  call void @llvm.dbg.value(metadata double %64, metadata !439, metadata !DIExpression()), !dbg !459
  %65 = fdiv double %63, %64, !dbg !475
  %66 = call double @llvm.fabs.f64(double %65), !dbg !477
  %67 = fcmp olt double %66, 0x3CA0000000000000, !dbg !478
  call void @llvm.dbg.value(metadata i32 %52, metadata !443, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !459
  %68 = add nuw nsw i32 %52, 1
  call void @llvm.dbg.value(metadata i32 %68, metadata !443, metadata !DIExpression()), !dbg !459
  %69 = icmp eq i32 %68, 201
  %70 = select i1 %67, i1 true, i1 %69, !dbg !479
  br i1 %70, label %71, label %51, !dbg !479, !llvm.loop !480

71:                                               ; preds = %51
  call void @llvm.dbg.value(metadata double %64, metadata !439, metadata !DIExpression()), !dbg !459
  %72 = load double, ptr %4, align 8, !dbg !483, !tbaa !115
  %73 = fneg double %72, !dbg !484
  %74 = fdiv double %73, %39, !dbg !485
  %75 = fmul double %64, %74, !dbg !486
  store double %75, ptr %2, align 8, !dbg !487, !tbaa !115
  %76 = call double @llvm.fabs.f64(double %75), !dbg !488
  %77 = fmul double %76, 0x3CB0000000000000, !dbg !489
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !490
  store double %77, ptr %78, align 8, !dbg !491, !tbaa !120
  br label %79

79:                                               ; preds = %46, %71
  %80 = phi i32 [ 16, %46 ], [ 0, %71 ], !dbg !492
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !493
  br label %170, !dbg !494

81:                                               ; preds = %35
  %82 = fmul double %1, 0x3ED965FEA53D6E41, !dbg !495
  %83 = mul i32 %37, %0, !dbg !496
  %84 = sitofp i32 %83 to double, !dbg !497
  %85 = fadd double %84, 1.000000e+00, !dbg !498
  %86 = fcmp ogt double %82, %85, !dbg !499
  br i1 %86, label %87, label %98, !dbg !500

87:                                               ; preds = %81
  %88 = sitofp i32 %0 to double, !dbg !501
  %89 = fadd double %88, 5.000000e-01, !dbg !502
  %90 = tail call i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef %89, double noundef %1, ptr noundef %2) #6, !dbg !503
  tail call void @llvm.dbg.value(metadata i32 %90, metadata !360, metadata !DIExpression()), !dbg !504
  %91 = fdiv double 0x3FF921FB54442D18, %1, !dbg !505
  %92 = tail call double @sqrt(double noundef %91) #6, !dbg !506
  tail call void @llvm.dbg.value(metadata double %92, metadata !368, metadata !DIExpression()), !dbg !504
  %93 = load double, ptr %2, align 8, !dbg !507, !tbaa !115
  %94 = fmul double %92, %93, !dbg !507
  store double %94, ptr %2, align 8, !dbg !507, !tbaa !115
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !508
  %96 = load double, ptr %95, align 8, !dbg !509, !tbaa !120
  %97 = fmul double %92, %96, !dbg !509
  store double %97, ptr %95, align 8, !dbg !509, !tbaa !120
  br label %170

98:                                               ; preds = %81
  %99 = icmp ugt i32 %0, 40, !dbg !510
  br i1 %99, label %100, label %111, !dbg !511

100:                                              ; preds = %98
  %101 = sitofp i32 %0 to double, !dbg !512
  %102 = fadd double %101, 5.000000e-01, !dbg !513
  %103 = tail call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef %102, double noundef %1, ptr noundef %2) #6, !dbg !514
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !369, metadata !DIExpression()), !dbg !515
  %104 = fdiv double 0x3FF921FB54442D18, %1, !dbg !516
  %105 = tail call double @sqrt(double noundef %104) #6, !dbg !517
  tail call void @llvm.dbg.value(metadata double %105, metadata !372, metadata !DIExpression()), !dbg !515
  %106 = load double, ptr %2, align 8, !dbg !518, !tbaa !115
  %107 = fmul double %105, %106, !dbg !518
  store double %107, ptr %2, align 8, !dbg !518, !tbaa !115
  %108 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !519
  %109 = load double, ptr %108, align 8, !dbg !520, !tbaa !120
  %110 = fmul double %105, %109, !dbg !520
  store double %110, ptr %108, align 8, !dbg !520, !tbaa !120
  br label %170

111:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !521
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6, !dbg !522
  %112 = call i32 @gsl_sf_bessel_y1_e(double noundef %1, ptr noundef nonnull %6), !dbg !523
  tail call void @llvm.dbg.value(metadata i32 %112, metadata !376, metadata !DIExpression()), !dbg !385
  %113 = call i32 @gsl_sf_bessel_y0_e(double noundef %1, ptr noundef nonnull %7), !dbg !524
  tail call void @llvm.dbg.value(metadata i32 %113, metadata !377, metadata !DIExpression()), !dbg !385
  %114 = load double, ptr %7, align 8, !dbg !525, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %114, metadata !378, metadata !DIExpression()), !dbg !385
  %115 = load double, ptr %6, align 8, !dbg !526, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %115, metadata !379, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata i32 1, metadata !381, metadata !DIExpression()), !dbg !385
  %116 = add nsw i32 %0, -1, !dbg !527
  %117 = and i32 %116, 1, !dbg !527
  %118 = icmp eq i32 %0, 2, !dbg !527
  br i1 %118, label %145, label %119, !dbg !527

119:                                              ; preds = %111
  %120 = and i32 %116, -2, !dbg !527
  br label %121, !dbg !527

121:                                              ; preds = %121, %119
  %122 = phi i32 [ 1, %119 ], [ %138, %121 ]
  %123 = phi double [ %115, %119 ], [ %137, %121 ]
  %124 = phi double [ %114, %119 ], [ %131, %121 ]
  %125 = phi i32 [ 0, %119 ], [ %139, %121 ]
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !381, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata double %123, metadata !379, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata double %124, metadata !378, metadata !DIExpression()), !dbg !385
  %126 = shl nuw nsw i32 %122, 1, !dbg !529
  %127 = or disjoint i32 %126, 1, !dbg !532
  %128 = sitofp i32 %127 to double, !dbg !533
  %129 = fdiv double %128, %1, !dbg !534
  %130 = fmul double %123, %129, !dbg !535
  %131 = fsub double %130, %124, !dbg !536
  tail call void @llvm.dbg.value(metadata double %131, metadata !380, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata double %123, metadata !378, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata double %131, metadata !379, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !381, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !385
  tail call void @llvm.dbg.value(metadata i32 %122, metadata !381, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !385
  tail call void @llvm.dbg.value(metadata double %131, metadata !379, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata double %123, metadata !378, metadata !DIExpression()), !dbg !385
  %132 = shl nuw i32 %122, 1, !dbg !529
  %133 = add i32 %132, 3, !dbg !532
  %134 = sitofp i32 %133 to double, !dbg !533
  %135 = fdiv double %134, %1, !dbg !534
  %136 = fmul double %131, %135, !dbg !535
  %137 = fsub double %136, %123, !dbg !536
  tail call void @llvm.dbg.value(metadata double %137, metadata !380, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata double %131, metadata !378, metadata !DIExpression()), !dbg !385
  tail call void @llvm.dbg.value(metadata double %137, metadata !379, metadata !DIExpression()), !dbg !385
  %138 = add nuw nsw i32 %122, 2, !dbg !537
  tail call void @llvm.dbg.value(metadata i32 %138, metadata !381, metadata !DIExpression()), !dbg !385
  %139 = add i32 %125, 2, !dbg !527
  %140 = icmp eq i32 %139, %120, !dbg !527
  br i1 %140, label %141, label %121, !dbg !527, !llvm.loop !538

141:                                              ; preds = %121
  %142 = shl nuw nsw i32 %138, 1, !dbg !529
  %143 = or disjoint i32 %142, 1, !dbg !532
  %144 = sitofp i32 %143 to double, !dbg !533
  br label %145, !dbg !527

145:                                              ; preds = %141, %111
  %146 = phi double [ undef, %111 ], [ %137, %141 ]
  %147 = phi double [ 3.000000e+00, %111 ], [ %144, %141 ]
  %148 = phi double [ %115, %111 ], [ %137, %141 ]
  %149 = phi double [ %114, %111 ], [ %131, %141 ]
  %150 = icmp eq i32 %117, 0, !dbg !527
  %151 = fdiv double %147, %1, !dbg !527
  %152 = fmul double %148, %151, !dbg !527
  %153 = fsub double %152, %149, !dbg !527
  %154 = select i1 %150, double %146, double %153, !dbg !527
  store double %154, ptr %2, align 8, !dbg !540, !tbaa !115
  %155 = tail call double @llvm.fabs.f64(double %154), !dbg !541
  %156 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !542
  %157 = load double, ptr %156, align 8, !dbg !542, !tbaa !120
  %158 = fdiv double %157, %115, !dbg !543
  %159 = tail call double @llvm.fabs.f64(double %158), !dbg !544
  %160 = fadd double %159, 0x3CB0000000000000, !dbg !545
  %161 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !546
  %162 = load double, ptr %161, align 8, !dbg !546, !tbaa !120
  %163 = fdiv double %162, %114, !dbg !547
  %164 = tail call double @llvm.fabs.f64(double %163), !dbg !548
  %165 = fadd double %160, %164, !dbg !549
  %166 = fmul double %155, %165, !dbg !550
  %167 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !551
  store double %166, ptr %167, align 8, !dbg !552, !tbaa !120
  %168 = icmp eq i32 %112, 0, !dbg !553
  %169 = select i1 %168, i32 %113, i32 %112, !dbg !553
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6, !dbg !554
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !554
  br label %170

170:                                              ; preds = %18, %16, %11, %31, %33, %79, %87, %100, %145
  %171 = phi i32 [ 1, %11 ], [ %32, %31 ], [ %34, %33 ], [ %80, %79 ], [ %90, %87 ], [ %103, %100 ], [ %169, %145 ], [ 16, %16 ], [ %19, %18 ], !dbg !555
  ret i32 %171, !dbg !556
}

declare !dbg !557 i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !561 double @sqrt(double noundef) local_unnamed_addr #4

declare !dbg !565 i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_yl_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !569 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !591
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !592
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !593
  call void @llvm.dbg.assign(metadata i1 undef, metadata !582, metadata !DIExpression(), metadata !593, metadata ptr %6, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !574, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata double %1, metadata !575, metadata !DIExpression()), !dbg !595
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !576, metadata !DIExpression()), !dbg !595
  %7 = icmp slt i32 %0, 0, !dbg !596
  %8 = fcmp ole double %1, 0.000000e+00
  %9 = or i1 %7, %8, !dbg !597
  br i1 %9, label %10, label %11, !dbg !597

10:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 237, i32 noundef 1) #6, !dbg !598
  br label %89, !dbg !598

11:                                               ; preds = %3
  %12 = icmp eq i32 %0, 0, !dbg !601
  br i1 %12, label %13, label %24, !dbg !602

13:                                               ; preds = %11
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !592, metadata ptr %5, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata double %1, metadata !99, metadata !DIExpression()), !dbg !605
  call void @llvm.dbg.value(metadata ptr undef, metadata !100, metadata !DIExpression()), !dbg !605
  %14 = fcmp olt double %1, 0x4000000000000, !dbg !606
  br i1 %14, label %15, label %16, !dbg !607

15:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !577, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !608
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !577, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !608
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #6, !dbg !609
  br label %21, !dbg !609

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6, !dbg !610
  %17 = call i32 @gsl_sf_cos_e(double noundef %1, ptr noundef nonnull %5) #6, !dbg !611
  call void @llvm.dbg.value(metadata i32 %17, metadata !105, metadata !DIExpression()), !dbg !603
  %18 = load double, ptr %5, align 8, !dbg !612, !tbaa !115
  %19 = fneg double %18, !dbg !613
  %20 = fdiv double %19, %1, !dbg !614
  tail call void @llvm.dbg.value(metadata double %20, metadata !577, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !608
  tail call void @llvm.dbg.value(metadata double poison, metadata !577, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !608
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6, !dbg !615
  br label %21

21:                                               ; preds = %15, %16
  %22 = phi double [ 0x7FF0000000000000, %15 ], [ %20, %16 ], !dbg !616
  %23 = phi i32 [ 16, %15 ], [ %17, %16 ], !dbg !616
  tail call void @llvm.dbg.value(metadata double %22, metadata !577, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !608
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !581, metadata !DIExpression()), !dbg !608
  store double %22, ptr %2, align 8, !dbg !617, !tbaa !618
  br label %89

24:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6, !dbg !619
  %25 = call i32 @gsl_sf_bessel_y1_e(double noundef %1, ptr noundef nonnull %6), !dbg !620
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !585, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !591, metadata ptr %4, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata double %1, metadata !99, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.value(metadata ptr undef, metadata !100, metadata !DIExpression()), !dbg !623
  %26 = fcmp olt double %1, 0x4000000000000, !dbg !624
  br i1 %26, label %27, label %28, !dbg !625

27:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !584, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !594
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !584, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !594
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #6, !dbg !626
  br label %33, !dbg !626

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6, !dbg !627
  %29 = call i32 @gsl_sf_cos_e(double noundef %1, ptr noundef nonnull %4) #6, !dbg !628
  call void @llvm.dbg.value(metadata i32 %29, metadata !105, metadata !DIExpression()), !dbg !621
  %30 = load double, ptr %4, align 8, !dbg !629, !tbaa !115
  %31 = fneg double %30, !dbg !630
  %32 = fdiv double %31, %1, !dbg !631
  tail call void @llvm.dbg.value(metadata double %32, metadata !584, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !594
  tail call void @llvm.dbg.value(metadata double poison, metadata !584, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !594
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6, !dbg !632
  br label %33

33:                                               ; preds = %27, %28
  %34 = phi double [ 0x7FF0000000000000, %27 ], [ %32, %28 ], !dbg !633
  %35 = phi i32 [ 16, %27 ], [ %29, %28 ], !dbg !633
  tail call void @llvm.dbg.value(metadata double %34, metadata !584, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !594
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !586, metadata !DIExpression()), !dbg !594
  %36 = load double, ptr %6, align 8, !dbg !634, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %36, metadata !588, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %34, metadata !589, metadata !DIExpression()), !dbg !594
  store double %34, ptr %2, align 8, !dbg !635, !tbaa !618
  %37 = getelementptr inbounds double, ptr %2, i64 1, !dbg !636
  store double %36, ptr %37, align 8, !dbg !637, !tbaa !618
  tail call void @llvm.dbg.value(metadata i32 1, metadata !590, metadata !DIExpression()), !dbg !594
  %38 = icmp eq i32 %0, 1, !dbg !638
  br i1 %38, label %86, label %39, !dbg !641

39:                                               ; preds = %33
  %40 = zext nneg i32 %0 to i64, !dbg !638
  %41 = add nsw i64 %40, -1, !dbg !641
  %42 = and i64 %41, 1, !dbg !641
  %43 = icmp eq i32 %0, 2, !dbg !641
  br i1 %43, label %71, label %44, !dbg !641

44:                                               ; preds = %39
  %45 = and i64 %41, -2, !dbg !641
  br label %46, !dbg !641

46:                                               ; preds = %46, %44
  %47 = phi i64 [ 1, %44 ], [ %67, %46 ]
  %48 = phi double [ %34, %44 ], [ %57, %46 ]
  %49 = phi double [ %36, %44 ], [ %66, %46 ]
  %50 = phi i64 [ 0, %44 ], [ %69, %46 ]
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !590, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %48, metadata !589, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %49, metadata !588, metadata !DIExpression()), !dbg !594
  %51 = trunc i64 %47 to i32, !dbg !642
  %52 = shl i32 %51, 1, !dbg !642
  %53 = or disjoint i32 %52, 1, !dbg !642
  %54 = sitofp i32 %53 to double, !dbg !642
  %55 = fdiv double %54, %1, !dbg !644
  %56 = fmul double %49, %55, !dbg !645
  %57 = fsub double %56, %48, !dbg !646
  tail call void @llvm.dbg.value(metadata double %57, metadata !587, metadata !DIExpression()), !dbg !594
  %58 = add nuw nsw i64 %47, 1, !dbg !647
  %59 = getelementptr inbounds double, ptr %2, i64 %58, !dbg !648
  store double %57, ptr %59, align 8, !dbg !649, !tbaa !618
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !590, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %49, metadata !589, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %57, metadata !588, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !590, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %49, metadata !589, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %57, metadata !588, metadata !DIExpression()), !dbg !594
  %60 = trunc i64 %58 to i32, !dbg !642
  %61 = shl i32 %60, 1, !dbg !642
  %62 = or disjoint i32 %61, 1, !dbg !642
  %63 = sitofp i32 %62 to double, !dbg !642
  %64 = fdiv double %63, %1, !dbg !644
  %65 = fmul double %57, %64, !dbg !645
  %66 = fsub double %65, %49, !dbg !646
  tail call void @llvm.dbg.value(metadata double %66, metadata !587, metadata !DIExpression()), !dbg !594
  %67 = add nuw nsw i64 %47, 2, !dbg !647
  %68 = getelementptr inbounds double, ptr %2, i64 %67, !dbg !648
  store double %66, ptr %68, align 8, !dbg !649, !tbaa !618
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !590, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %57, metadata !589, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %66, metadata !588, metadata !DIExpression()), !dbg !594
  %69 = add i64 %50, 2, !dbg !641
  %70 = icmp eq i64 %69, %45, !dbg !641
  br i1 %70, label %71, label %46, !dbg !641, !llvm.loop !650

71:                                               ; preds = %46, %39
  %72 = phi i64 [ 1, %39 ], [ %67, %46 ]
  %73 = phi double [ %34, %39 ], [ %57, %46 ]
  %74 = phi double [ %36, %39 ], [ %66, %46 ]
  %75 = icmp eq i64 %42, 0, !dbg !641
  br i1 %75, label %86, label %76, !dbg !641

76:                                               ; preds = %71
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !590, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %73, metadata !589, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %74, metadata !588, metadata !DIExpression()), !dbg !594
  %77 = trunc i64 %72 to i32, !dbg !642
  %78 = shl i32 %77, 1, !dbg !642
  %79 = or disjoint i32 %78, 1, !dbg !642
  %80 = sitofp i32 %79 to double, !dbg !642
  %81 = fdiv double %80, %1, !dbg !644
  %82 = fmul double %74, %81, !dbg !645
  %83 = fsub double %82, %73, !dbg !646
  tail call void @llvm.dbg.value(metadata double %83, metadata !587, metadata !DIExpression()), !dbg !594
  %84 = getelementptr double, ptr %2, i64 %72, !dbg !648
  %85 = getelementptr double, ptr %84, i64 1, !dbg !648
  store double %83, ptr %85, align 8, !dbg !649, !tbaa !618
  tail call void @llvm.dbg.value(metadata i64 %72, metadata !590, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !594
  tail call void @llvm.dbg.value(metadata double %74, metadata !589, metadata !DIExpression()), !dbg !594
  tail call void @llvm.dbg.value(metadata double %83, metadata !588, metadata !DIExpression()), !dbg !594
  br label %86, !dbg !652

86:                                               ; preds = %76, %71, %33
  %87 = icmp eq i32 %35, 0, !dbg !652
  %88 = select i1 %87, i32 %25, i32 %35, !dbg !652
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6, !dbg !653
  br label %89

89:                                               ; preds = %10, %21, %86
  %90 = phi i32 [ 1, %10 ], [ %23, %21 ], [ %88, %86 ], !dbg !654
  ret i32 %90, !dbg !655
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_y0(double noundef %0) local_unnamed_addr #0 !dbg !656 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !663
  tail call void @llvm.dbg.value(metadata double %0, metadata !660, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !663, metadata ptr %2, metadata !DIExpression()), !dbg !665
  call void @llvm.dbg.value(metadata double %0, metadata !99, metadata !DIExpression()), !dbg !667
  call void @llvm.dbg.value(metadata ptr undef, metadata !100, metadata !DIExpression()), !dbg !667
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !668
  br i1 %3, label %5, label %4, !dbg !669

4:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !661, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !664
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !661, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !664
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 82, i32 noundef 1) #6, !dbg !670
  br label %14, !dbg !670

5:                                                ; preds = %1
  %6 = fcmp olt double %0, 0x4000000000000, !dbg !671
  br i1 %6, label %7, label %8, !dbg !672

7:                                                ; preds = %5
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !661, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !664
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !661, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !664
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #6, !dbg !673
  br label %14, !dbg !673

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !674
  %9 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %2) #6, !dbg !675
  call void @llvm.dbg.value(metadata i32 %9, metadata !105, metadata !DIExpression()), !dbg !665
  %10 = load double, ptr %2, align 8, !dbg !676, !tbaa !115
  %11 = fneg double %10, !dbg !677
  %12 = fdiv double %11, %0, !dbg !678
  tail call void @llvm.dbg.value(metadata double %12, metadata !661, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !664
  tail call void @llvm.dbg.value(metadata double poison, metadata !661, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !664
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !679
  tail call void @llvm.dbg.value(metadata double %12, metadata !661, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !664
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !662, metadata !DIExpression()), !dbg !664
  %13 = icmp eq i32 %9, 0, !dbg !680
  br i1 %13, label %17, label %14, !dbg !682

14:                                               ; preds = %7, %4, %8
  %15 = phi i32 [ %9, %8 ], [ 16, %7 ], [ 1, %4 ]
  %16 = phi double [ %12, %8 ], [ 0x7FF0000000000000, %7 ], [ 0x7FF8000000000000, %4 ]
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 274, i32 noundef %15) #6, !dbg !683
  br label %17, !dbg !683

17:                                               ; preds = %8, %14
  %18 = phi double [ %12, %8 ], [ %16, %14 ]
  ret double %18, !dbg !686
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_y1(double noundef %0) local_unnamed_addr #0 !dbg !687 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !690, metadata !DIExpression(), metadata !692, metadata ptr %2, metadata !DIExpression()), !dbg !693
  tail call void @llvm.dbg.value(metadata double %0, metadata !689, metadata !DIExpression()), !dbg !693
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !694
  %3 = call i32 @gsl_sf_bessel_y1_e(double noundef %0, ptr noundef nonnull %2), !dbg !694
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !691, metadata !DIExpression()), !dbg !693
  %4 = icmp eq i32 %3, 0, !dbg !695
  br i1 %4, label %6, label %5, !dbg !694

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 279, i32 noundef %3) #6, !dbg !697
  br label %6, !dbg !697

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !694, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !700
  ret double %7, !dbg !700
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_y2(double noundef %0) local_unnamed_addr #0 !dbg !701 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !706
  call void @llvm.dbg.assign(metadata i1 undef, metadata !704, metadata !DIExpression(), metadata !706, metadata ptr %2, metadata !DIExpression()), !dbg !707
  tail call void @llvm.dbg.value(metadata double %0, metadata !703, metadata !DIExpression()), !dbg !707
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6, !dbg !708
  %3 = call i32 @gsl_sf_bessel_y2_e(double noundef %0, ptr noundef nonnull %2), !dbg !708
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !705, metadata !DIExpression()), !dbg !707
  %4 = icmp eq i32 %3, 0, !dbg !709
  br i1 %4, label %6, label %5, !dbg !708

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef %3) #6, !dbg !711
  br label %6, !dbg !711

6:                                                ; preds = %1, %5
  %7 = load double, ptr %2, align 8, !dbg !708, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6, !dbg !714
  ret double %7, !dbg !714
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_yl(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !715 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !723
  call void @llvm.dbg.assign(metadata i1 undef, metadata !721, metadata !DIExpression(), metadata !723, metadata ptr %3, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !719, metadata !DIExpression()), !dbg !724
  tail call void @llvm.dbg.value(metadata double %1, metadata !720, metadata !DIExpression()), !dbg !724
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6, !dbg !725
  %4 = call i32 @gsl_sf_bessel_yl_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !725
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !722, metadata !DIExpression()), !dbg !724
  %5 = icmp eq i32 %4, 0, !dbg !726
  br i1 %5, label %7, label %6, !dbg !725

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 289, i32 noundef %4) #6, !dbg !728
  br label %7, !dbg !728

7:                                                ; preds = %2, %6
  %8 = load double, ptr %3, align 8, !dbg !725, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6, !dbg !731
  ret double %8, !dbg !731
}

declare !dbg !732 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !736 i32 @gsl_sf_doublefact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!36}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_y.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "0308629000f7db4445d30046dd355ebe")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 13)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 9)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 31)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !24, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 34)
!36 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !37, globals: !77, splitDebugInlining: false, nameTableKind: None)
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
!77 = !{!0, !7, !12, !17, !22, !27, !29, !31}
!78 = !{i32 7, !"Dwarf Version", i32 5}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"wchar_size", i32 4}
!81 = !{i32 8, !"PIC Level", i32 2}
!82 = !{i32 7, !"PIE Level", i32 2}
!83 = !{i32 7, !"uwtable", i32 2}
!84 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!85 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!86 = distinct !DISubprogram(name: "gsl_sf_bessel_y0_e", scope: !2, file: !2, line: 77, type: !87, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !98)
!87 = !DISubroutineType(types: !88)
!88 = !{!40, !89, !91}
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !93, line: 41, baseType: !94)
!93 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !93, line: 37, size: 128, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !94, file: !93, line: 38, baseType: !90, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !94, file: !93, line: 39, baseType: !90, size: 64, offset: 64)
!98 = !{!99, !100, !101, !105}
!99 = !DILocalVariable(name: "x", arg: 1, scope: !86, file: !2, line: 77, type: !89)
!100 = !DILocalVariable(name: "result", arg: 2, scope: !86, file: !2, line: 77, type: !91)
!101 = !DILocalVariable(name: "cos_result", scope: !102, file: !2, line: 88, type: !92)
!102 = distinct !DILexicalBlock(scope: !103, file: !2, line: 87, column: 8)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 84, column: 11)
!104 = distinct !DILexicalBlock(scope: !86, file: !2, line: 81, column: 6)
!105 = !DILocalVariable(name: "stat", scope: !102, file: !2, line: 89, type: !106)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!107 = distinct !DIAssignID()
!108 = !DILocation(line: 0, scope: !102)
!109 = !DILocation(line: 0, scope: !86)
!110 = !DILocation(line: 81, column: 8, scope: !104)
!111 = !DILocation(line: 81, column: 6, scope: !86)
!112 = !DILocation(line: 82, column: 5, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !2, line: 82, column: 5)
!114 = distinct !DILexicalBlock(scope: !104, file: !2, line: 81, column: 16)
!115 = !{!116, !117, i64 0}
!116 = !{!"gsl_sf_result_struct", !117, i64 0, !117, i64 8}
!117 = !{!"double", !118, i64 0}
!118 = !{!"omnipotent char", !119, i64 0}
!119 = !{!"Simple C/C++ TBAA"}
!120 = !{!116, !117, i64 8}
!121 = !DILocation(line: 82, column: 5, scope: !122)
!122 = distinct !DILexicalBlock(scope: !113, file: !2, line: 82, column: 5)
!123 = !DILocation(line: 84, column: 38, scope: !103)
!124 = !DILocation(line: 84, column: 11, scope: !104)
!125 = !DILocation(line: 85, column: 5, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !2, line: 85, column: 5)
!127 = distinct !DILexicalBlock(scope: !103, file: !2, line: 84, column: 57)
!128 = !DILocation(line: 85, column: 5, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !2, line: 85, column: 5)
!130 = !DILocation(line: 88, column: 5, scope: !102)
!131 = !DILocation(line: 89, column: 22, scope: !102)
!132 = !DILocation(line: 90, column: 32, scope: !102)
!133 = !DILocation(line: 90, column: 20, scope: !102)
!134 = !DILocation(line: 90, column: 35, scope: !102)
!135 = !DILocation(line: 90, column: 18, scope: !102)
!136 = !DILocation(line: 91, column: 36, scope: !102)
!137 = !DILocation(line: 91, column: 39, scope: !102)
!138 = !DILocation(line: 91, column: 20, scope: !102)
!139 = !DILocation(line: 91, column: 13, scope: !102)
!140 = !DILocation(line: 92, column: 44, scope: !102)
!141 = !DILocation(line: 92, column: 42, scope: !102)
!142 = !DILocation(line: 92, column: 17, scope: !102)
!143 = !DILocation(line: 94, column: 3, scope: !103)
!144 = !DILocation(line: 0, scope: !104)
!145 = !DILocation(line: 95, column: 1, scope: !86)
!146 = !DISubprogram(name: "gsl_error", scope: !39, file: !39, line: 77, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!147 = !DISubroutineType(types: !148)
!148 = !{null, !149, !149, !40, !40}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!151 = !DISubprogram(name: "gsl_sf_cos_e", scope: !152, file: !152, line: 51, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!152 = !DIFile(filename: "../gsl/gsl_sf_trig.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "f99b323a60a985d2ebefccc97fb97d3a")
!153 = !DISubroutineType(types: !154)
!154 = !{!40, !90, !91}
!155 = distinct !DISubprogram(name: "gsl_sf_bessel_y1_e", scope: !2, file: !2, line: 98, type: !87, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !156)
!156 = !{!157, !158, !159, !164, !165, !166, !167, !168, !169, !170, !171, !173, !174, !175, !176, !177}
!157 = !DILocalVariable(name: "x", arg: 1, scope: !155, file: !2, line: 98, type: !89)
!158 = !DILocalVariable(name: "result", arg: 2, scope: !155, file: !2, line: 98, type: !91)
!159 = !DILocalVariable(name: "y", scope: !160, file: !2, line: 109, type: !89)
!160 = distinct !DILexicalBlock(scope: !161, file: !2, line: 108, column: 21)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 108, column: 11)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 105, column: 11)
!163 = distinct !DILexicalBlock(scope: !155, file: !2, line: 102, column: 6)
!164 = !DILocalVariable(name: "c1", scope: !160, file: !2, line: 110, type: !89)
!165 = !DILocalVariable(name: "c2", scope: !160, file: !2, line: 111, type: !89)
!166 = !DILocalVariable(name: "c3", scope: !160, file: !2, line: 112, type: !89)
!167 = !DILocalVariable(name: "c4", scope: !160, file: !2, line: 113, type: !89)
!168 = !DILocalVariable(name: "c5", scope: !160, file: !2, line: 114, type: !89)
!169 = !DILocalVariable(name: "c6", scope: !160, file: !2, line: 115, type: !89)
!170 = !DILocalVariable(name: "sum", scope: !160, file: !2, line: 116, type: !89)
!171 = !DILocalVariable(name: "cos_result", scope: !172, file: !2, line: 122, type: !92)
!172 = distinct !DILexicalBlock(scope: !161, file: !2, line: 121, column: 8)
!173 = !DILocalVariable(name: "sin_result", scope: !172, file: !2, line: 123, type: !92)
!174 = !DILocalVariable(name: "stat_cos", scope: !172, file: !2, line: 124, type: !106)
!175 = !DILocalVariable(name: "stat_sin", scope: !172, file: !2, line: 125, type: !106)
!176 = !DILocalVariable(name: "cx", scope: !172, file: !2, line: 126, type: !89)
!177 = !DILocalVariable(name: "sx", scope: !172, file: !2, line: 127, type: !89)
!178 = distinct !DIAssignID()
!179 = !DILocation(line: 0, scope: !172)
!180 = distinct !DIAssignID()
!181 = !DILocation(line: 0, scope: !155)
!182 = !DILocation(line: 102, column: 8, scope: !163)
!183 = !DILocation(line: 102, column: 6, scope: !155)
!184 = !DILocation(line: 103, column: 5, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !2, line: 103, column: 5)
!186 = distinct !DILexicalBlock(scope: !163, file: !2, line: 102, column: 16)
!187 = !DILocation(line: 103, column: 5, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !2, line: 103, column: 5)
!189 = !DILocation(line: 105, column: 13, scope: !162)
!190 = !DILocation(line: 105, column: 11, scope: !163)
!191 = !DILocation(line: 106, column: 5, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !2, line: 106, column: 5)
!193 = distinct !DILexicalBlock(scope: !162, file: !2, line: 105, column: 37)
!194 = !DILocation(line: 106, column: 5, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !2, line: 106, column: 5)
!196 = !DILocation(line: 108, column: 13, scope: !161)
!197 = !DILocation(line: 108, column: 11, scope: !162)
!198 = !DILocation(line: 109, column: 23, scope: !160)
!199 = !DILocation(line: 0, scope: !160)
!200 = !DILocation(line: 116, column: 71, scope: !160)
!201 = !DILocation(line: 116, column: 68, scope: !160)
!202 = !DILocation(line: 116, column: 63, scope: !160)
!203 = !DILocation(line: 116, column: 60, scope: !160)
!204 = !DILocation(line: 116, column: 55, scope: !160)
!205 = !DILocation(line: 116, column: 52, scope: !160)
!206 = !DILocation(line: 116, column: 47, scope: !160)
!207 = !DILocation(line: 116, column: 44, scope: !160)
!208 = !DILocation(line: 116, column: 39, scope: !160)
!209 = !DILocation(line: 116, column: 36, scope: !160)
!210 = !DILocation(line: 116, column: 31, scope: !160)
!211 = !DILocation(line: 116, column: 28, scope: !160)
!212 = !DILocation(line: 117, column: 19, scope: !160)
!213 = !DILocation(line: 117, column: 23, scope: !160)
!214 = !DILocation(line: 117, column: 17, scope: !160)
!215 = !DILocation(line: 118, column: 37, scope: !160)
!216 = !DILocation(line: 118, column: 35, scope: !160)
!217 = !DILocation(line: 118, column: 13, scope: !160)
!218 = !DILocation(line: 118, column: 17, scope: !160)
!219 = !DILocation(line: 122, column: 5, scope: !172)
!220 = !DILocation(line: 123, column: 5, scope: !172)
!221 = !DILocation(line: 124, column: 26, scope: !172)
!222 = !DILocation(line: 125, column: 26, scope: !172)
!223 = !DILocation(line: 126, column: 34, scope: !172)
!224 = !DILocation(line: 127, column: 34, scope: !172)
!225 = !DILocation(line: 128, column: 24, scope: !172)
!226 = !DILocation(line: 128, column: 27, scope: !172)
!227 = !DILocation(line: 128, column: 20, scope: !172)
!228 = !DILocation(line: 128, column: 32, scope: !172)
!229 = !DILocation(line: 128, column: 18, scope: !172)
!230 = !DILocation(line: 129, column: 37, scope: !172)
!231 = !DILocation(line: 129, column: 40, scope: !172)
!232 = !DILocation(line: 129, column: 21, scope: !172)
!233 = !DILocation(line: 129, column: 57, scope: !172)
!234 = !DILocation(line: 129, column: 44, scope: !172)
!235 = !DILocation(line: 129, column: 62, scope: !172)
!236 = !DILocation(line: 129, column: 61, scope: !172)
!237 = !DILocation(line: 129, column: 13, scope: !172)
!238 = !DILocation(line: 130, column: 46, scope: !172)
!239 = !DILocation(line: 130, column: 39, scope: !172)
!240 = !DILocation(line: 130, column: 62, scope: !172)
!241 = !DILocation(line: 130, column: 59, scope: !172)
!242 = !DILocation(line: 130, column: 52, scope: !172)
!243 = !DILocation(line: 130, column: 50, scope: !172)
!244 = !DILocation(line: 130, column: 36, scope: !172)
!245 = !DILocation(line: 130, column: 17, scope: !172)
!246 = !DILocation(line: 131, column: 12, scope: !172)
!247 = !DILocation(line: 132, column: 3, scope: !161)
!248 = !DILocation(line: 0, scope: !163)
!249 = !DILocation(line: 133, column: 1, scope: !155)
!250 = !DISubprogram(name: "gsl_sf_sin_e", scope: !152, file: !152, line: 45, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = distinct !DISubprogram(name: "gsl_sf_bessel_y2_e", scope: !2, file: !2, line: 136, type: !87, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !252)
!252 = !{!253, !254, !255, !260, !261, !262, !263, !264, !265, !266, !267, !268, !270, !271, !272, !273, !274, !275}
!253 = !DILocalVariable(name: "x", arg: 1, scope: !251, file: !2, line: 136, type: !89)
!254 = !DILocalVariable(name: "result", arg: 2, scope: !251, file: !2, line: 136, type: !91)
!255 = !DILocalVariable(name: "y", scope: !256, file: !2, line: 147, type: !89)
!256 = distinct !DILexicalBlock(scope: !257, file: !2, line: 146, column: 20)
!257 = distinct !DILexicalBlock(scope: !258, file: !2, line: 146, column: 11)
!258 = distinct !DILexicalBlock(scope: !259, file: !2, line: 143, column: 11)
!259 = distinct !DILexicalBlock(scope: !251, file: !2, line: 140, column: 6)
!260 = !DILocalVariable(name: "c1", scope: !256, file: !2, line: 148, type: !89)
!261 = !DILocalVariable(name: "c2", scope: !256, file: !2, line: 149, type: !89)
!262 = !DILocalVariable(name: "c3", scope: !256, file: !2, line: 150, type: !89)
!263 = !DILocalVariable(name: "c4", scope: !256, file: !2, line: 151, type: !89)
!264 = !DILocalVariable(name: "c5", scope: !256, file: !2, line: 152, type: !89)
!265 = !DILocalVariable(name: "c6", scope: !256, file: !2, line: 153, type: !89)
!266 = !DILocalVariable(name: "c7", scope: !256, file: !2, line: 154, type: !89)
!267 = !DILocalVariable(name: "sum", scope: !256, file: !2, line: 155, type: !89)
!268 = !DILocalVariable(name: "cos_result", scope: !269, file: !2, line: 161, type: !92)
!269 = distinct !DILexicalBlock(scope: !257, file: !2, line: 160, column: 8)
!270 = !DILocalVariable(name: "sin_result", scope: !269, file: !2, line: 162, type: !92)
!271 = !DILocalVariable(name: "stat_cos", scope: !269, file: !2, line: 163, type: !106)
!272 = !DILocalVariable(name: "stat_sin", scope: !269, file: !2, line: 164, type: !106)
!273 = !DILocalVariable(name: "sx", scope: !269, file: !2, line: 165, type: !89)
!274 = !DILocalVariable(name: "cx", scope: !269, file: !2, line: 166, type: !89)
!275 = !DILocalVariable(name: "a", scope: !269, file: !2, line: 167, type: !89)
!276 = distinct !DIAssignID()
!277 = !DILocation(line: 0, scope: !269)
!278 = distinct !DIAssignID()
!279 = !DILocation(line: 0, scope: !251)
!280 = !DILocation(line: 140, column: 8, scope: !259)
!281 = !DILocation(line: 140, column: 6, scope: !251)
!282 = !DILocation(line: 141, column: 5, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !2, line: 141, column: 5)
!284 = distinct !DILexicalBlock(scope: !259, file: !2, line: 140, column: 16)
!285 = !DILocation(line: 141, column: 5, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !2, line: 141, column: 5)
!287 = !DILocation(line: 143, column: 13, scope: !258)
!288 = !DILocation(line: 143, column: 11, scope: !259)
!289 = !DILocation(line: 144, column: 5, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 144, column: 5)
!291 = distinct !DILexicalBlock(scope: !258, file: !2, line: 143, column: 38)
!292 = !DILocation(line: 144, column: 5, scope: !293)
!293 = distinct !DILexicalBlock(scope: !290, file: !2, line: 144, column: 5)
!294 = !DILocation(line: 146, column: 13, scope: !257)
!295 = !DILocation(line: 146, column: 11, scope: !258)
!296 = !DILocation(line: 147, column: 23, scope: !256)
!297 = !DILocation(line: 0, scope: !256)
!298 = !DILocation(line: 155, column: 79, scope: !256)
!299 = !DILocation(line: 155, column: 76, scope: !256)
!300 = !DILocation(line: 155, column: 71, scope: !256)
!301 = !DILocation(line: 155, column: 68, scope: !256)
!302 = !DILocation(line: 155, column: 63, scope: !256)
!303 = !DILocation(line: 155, column: 60, scope: !256)
!304 = !DILocation(line: 155, column: 55, scope: !256)
!305 = !DILocation(line: 155, column: 52, scope: !256)
!306 = !DILocation(line: 155, column: 47, scope: !256)
!307 = !DILocation(line: 155, column: 44, scope: !256)
!308 = !DILocation(line: 155, column: 39, scope: !256)
!309 = !DILocation(line: 155, column: 36, scope: !256)
!310 = !DILocation(line: 155, column: 31, scope: !256)
!311 = !DILocation(line: 155, column: 28, scope: !256)
!312 = !DILocation(line: 156, column: 28, scope: !256)
!313 = !DILocation(line: 156, column: 23, scope: !256)
!314 = !DILocation(line: 156, column: 32, scope: !256)
!315 = !DILocation(line: 156, column: 17, scope: !256)
!316 = !DILocation(line: 157, column: 37, scope: !256)
!317 = !DILocation(line: 157, column: 35, scope: !256)
!318 = !DILocation(line: 157, column: 13, scope: !256)
!319 = !DILocation(line: 157, column: 17, scope: !256)
!320 = !DILocation(line: 161, column: 5, scope: !269)
!321 = !DILocation(line: 162, column: 5, scope: !269)
!322 = !DILocation(line: 163, column: 26, scope: !269)
!323 = !DILocation(line: 164, column: 26, scope: !269)
!324 = !DILocation(line: 165, column: 34, scope: !269)
!325 = !DILocation(line: 166, column: 34, scope: !269)
!326 = !DILocation(line: 167, column: 29, scope: !269)
!327 = !DILocation(line: 167, column: 26, scope: !269)
!328 = !DILocation(line: 168, column: 25, scope: !269)
!329 = !DILocation(line: 168, column: 29, scope: !269)
!330 = !DILocation(line: 168, column: 32, scope: !269)
!331 = !DILocation(line: 168, column: 41, scope: !269)
!332 = !DILocation(line: 168, column: 37, scope: !269)
!333 = !DILocation(line: 168, column: 18, scope: !269)
!334 = !DILocation(line: 169, column: 31, scope: !269)
!335 = !DILocation(line: 169, column: 37, scope: !269)
!336 = !DILocation(line: 169, column: 35, scope: !269)
!337 = !DILocation(line: 169, column: 68, scope: !269)
!338 = !DILocation(line: 169, column: 74, scope: !269)
!339 = !DILocation(line: 169, column: 72, scope: !269)
!340 = !DILocation(line: 169, column: 55, scope: !269)
!341 = !DILocation(line: 169, column: 13, scope: !269)
!342 = !DILocation(line: 170, column: 46, scope: !269)
!343 = !DILocation(line: 170, column: 39, scope: !269)
!344 = !DILocation(line: 170, column: 59, scope: !269)
!345 = !DILocation(line: 170, column: 52, scope: !269)
!346 = !DILocation(line: 170, column: 50, scope: !269)
!347 = !DILocation(line: 170, column: 36, scope: !269)
!348 = !DILocation(line: 170, column: 17, scope: !269)
!349 = !DILocation(line: 171, column: 12, scope: !269)
!350 = !DILocation(line: 172, column: 3, scope: !257)
!351 = !DILocation(line: 0, scope: !259)
!352 = !DILocation(line: 173, column: 1, scope: !251)
!353 = distinct !DISubprogram(name: "gsl_sf_bessel_yl_e", scope: !2, file: !2, line: 176, type: !354, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!40, !40, !89, !91}
!356 = !{!357, !358, !359, !360, !368, !369, !372, !373, !375, !376, !377, !378, !379, !380, !381}
!357 = !DILocalVariable(name: "l", arg: 1, scope: !353, file: !2, line: 176, type: !40)
!358 = !DILocalVariable(name: "x", arg: 2, scope: !353, file: !2, line: 176, type: !89)
!359 = !DILocalVariable(name: "result", arg: 3, scope: !353, file: !2, line: 176, type: !91)
!360 = !DILocalVariable(name: "status", scope: !361, file: !2, line: 196, type: !40)
!361 = distinct !DILexicalBlock(scope: !362, file: !2, line: 195, column: 56)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 195, column: 11)
!363 = distinct !DILexicalBlock(scope: !364, file: !2, line: 192, column: 11)
!364 = distinct !DILexicalBlock(scope: !365, file: !2, line: 189, column: 11)
!365 = distinct !DILexicalBlock(scope: !366, file: !2, line: 186, column: 11)
!366 = distinct !DILexicalBlock(scope: !367, file: !2, line: 183, column: 11)
!367 = distinct !DILexicalBlock(scope: !353, file: !2, line: 180, column: 6)
!368 = !DILocalVariable(name: "pre", scope: !361, file: !2, line: 197, type: !90)
!369 = !DILocalVariable(name: "status", scope: !370, file: !2, line: 203, type: !40)
!370 = distinct !DILexicalBlock(scope: !371, file: !2, line: 202, column: 19)
!371 = distinct !DILexicalBlock(scope: !362, file: !2, line: 202, column: 11)
!372 = !DILocalVariable(name: "pre", scope: !370, file: !2, line: 204, type: !90)
!373 = !DILocalVariable(name: "r_by", scope: !374, file: !2, line: 211, type: !92)
!374 = distinct !DILexicalBlock(scope: !371, file: !2, line: 209, column: 8)
!375 = !DILocalVariable(name: "r_bym", scope: !374, file: !2, line: 212, type: !92)
!376 = !DILocalVariable(name: "stat_1", scope: !374, file: !2, line: 213, type: !40)
!377 = !DILocalVariable(name: "stat_0", scope: !374, file: !2, line: 214, type: !40)
!378 = !DILocalVariable(name: "bym", scope: !374, file: !2, line: 215, type: !90)
!379 = !DILocalVariable(name: "by", scope: !374, file: !2, line: 216, type: !90)
!380 = !DILocalVariable(name: "byp", scope: !374, file: !2, line: 217, type: !90)
!381 = !DILocalVariable(name: "j", scope: !374, file: !2, line: 218, type: !40)
!382 = distinct !DIAssignID()
!383 = distinct !DIAssignID()
!384 = distinct !DIAssignID()
!385 = !DILocation(line: 0, scope: !374)
!386 = distinct !DIAssignID()
!387 = !DILocation(line: 0, scope: !353)
!388 = !DILocation(line: 180, column: 8, scope: !367)
!389 = !DILocation(line: 180, column: 12, scope: !367)
!390 = !DILocation(line: 181, column: 5, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !2, line: 181, column: 5)
!392 = distinct !DILexicalBlock(scope: !367, file: !2, line: 180, column: 25)
!393 = !DILocation(line: 181, column: 5, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !2, line: 181, column: 5)
!395 = !DILocation(line: 183, column: 11, scope: !367)
!396 = !DILocation(line: 0, scope: !102, inlinedAt: !397)
!397 = distinct !DILocation(line: 184, column: 12, scope: !398)
!398 = distinct !DILexicalBlock(scope: !366, file: !2, line: 183, column: 19)
!399 = !DILocation(line: 0, scope: !86, inlinedAt: !397)
!400 = !DILocation(line: 84, column: 38, scope: !103, inlinedAt: !397)
!401 = !DILocation(line: 84, column: 11, scope: !104, inlinedAt: !397)
!402 = !DILocation(line: 85, column: 5, scope: !126, inlinedAt: !397)
!403 = !DILocation(line: 85, column: 5, scope: !129, inlinedAt: !397)
!404 = !DILocation(line: 88, column: 5, scope: !102, inlinedAt: !397)
!405 = !DILocation(line: 89, column: 22, scope: !102, inlinedAt: !397)
!406 = !DILocation(line: 90, column: 32, scope: !102, inlinedAt: !397)
!407 = !DILocation(line: 90, column: 20, scope: !102, inlinedAt: !397)
!408 = !DILocation(line: 90, column: 35, scope: !102, inlinedAt: !397)
!409 = !DILocation(line: 90, column: 18, scope: !102, inlinedAt: !397)
!410 = !DILocation(line: 91, column: 36, scope: !102, inlinedAt: !397)
!411 = !DILocation(line: 91, column: 39, scope: !102, inlinedAt: !397)
!412 = !DILocation(line: 91, column: 20, scope: !102, inlinedAt: !397)
!413 = !DILocation(line: 91, column: 13, scope: !102, inlinedAt: !397)
!414 = !DILocation(line: 92, column: 44, scope: !102, inlinedAt: !397)
!415 = !DILocation(line: 92, column: 42, scope: !102, inlinedAt: !397)
!416 = !DILocation(line: 92, column: 17, scope: !102, inlinedAt: !397)
!417 = !DILocation(line: 94, column: 3, scope: !103, inlinedAt: !397)
!418 = !DILocation(line: 187, column: 12, scope: !419)
!419 = distinct !DILexicalBlock(scope: !365, file: !2, line: 186, column: 19)
!420 = !DILocation(line: 187, column: 5, scope: !419)
!421 = !DILocation(line: 190, column: 12, scope: !422)
!422 = distinct !DILexicalBlock(scope: !364, file: !2, line: 189, column: 19)
!423 = !DILocation(line: 190, column: 5, scope: !422)
!424 = !DILocation(line: 192, column: 13, scope: !363)
!425 = !DILocation(line: 0, scope: !363)
!426 = !DILocation(line: 192, column: 11, scope: !364)
!427 = !DILocalVariable(name: "num_fact", scope: !428, file: !2, line: 44, type: !92)
!428 = distinct !DISubprogram(name: "bessel_yl_small_x", scope: !2, file: !2, line: 42, type: !354, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !429)
!429 = !{!430, !431, !432, !427, !433, !434, !435, !438, !439, !440, !441, !442, !443}
!430 = !DILocalVariable(name: "l", arg: 1, scope: !428, file: !2, line: 42, type: !40)
!431 = !DILocalVariable(name: "x", arg: 2, scope: !428, file: !2, line: 42, type: !89)
!432 = !DILocalVariable(name: "result", arg: 3, scope: !428, file: !2, line: 42, type: !91)
!433 = !DILocalVariable(name: "den", scope: !428, file: !2, line: 45, type: !90)
!434 = !DILocalVariable(name: "stat_df", scope: !428, file: !2, line: 46, type: !40)
!435 = !DILocalVariable(name: "lmax", scope: !436, file: !2, line: 52, type: !106)
!436 = distinct !DILexicalBlock(scope: !437, file: !2, line: 51, column: 8)
!437 = distinct !DILexicalBlock(scope: !428, file: !2, line: 48, column: 6)
!438 = !DILocalVariable(name: "t", scope: !436, file: !2, line: 53, type: !90)
!439 = !DILocalVariable(name: "sum", scope: !436, file: !2, line: 54, type: !90)
!440 = !DILocalVariable(name: "t_coeff", scope: !436, file: !2, line: 55, type: !90)
!441 = !DILocalVariable(name: "t_power", scope: !436, file: !2, line: 56, type: !90)
!442 = !DILocalVariable(name: "delta", scope: !436, file: !2, line: 57, type: !90)
!443 = !DILocalVariable(name: "i", scope: !436, file: !2, line: 58, type: !40)
!444 = !DILocation(line: 0, scope: !428, inlinedAt: !445)
!445 = distinct !DILocation(line: 193, column: 12, scope: !446)
!446 = distinct !DILexicalBlock(scope: !363, file: !2, line: 192, column: 20)
!447 = !DILocation(line: 44, column: 3, scope: !428, inlinedAt: !445)
!448 = !DILocation(line: 45, column: 16, scope: !428, inlinedAt: !445)
!449 = !DILocation(line: 46, column: 38, scope: !428, inlinedAt: !445)
!450 = !DILocation(line: 46, column: 40, scope: !428, inlinedAt: !445)
!451 = !DILocation(line: 46, column: 17, scope: !428, inlinedAt: !445)
!452 = !DILocation(line: 48, column: 14, scope: !437, inlinedAt: !445)
!453 = !DILocation(line: 48, column: 29, scope: !437, inlinedAt: !445)
!454 = !DILocation(line: 49, column: 5, scope: !455, inlinedAt: !445)
!455 = distinct !DILexicalBlock(scope: !456, file: !2, line: 49, column: 5)
!456 = distinct !DILexicalBlock(scope: !437, file: !2, line: 48, column: 44)
!457 = !DILocation(line: 49, column: 5, scope: !458, inlinedAt: !445)
!458 = distinct !DILexicalBlock(scope: !455, file: !2, line: 49, column: 5)
!459 = !DILocation(line: 0, scope: !436, inlinedAt: !445)
!460 = !DILocation(line: 53, column: 20, scope: !436, inlinedAt: !445)
!461 = !DILocation(line: 53, column: 22, scope: !436, inlinedAt: !445)
!462 = !DILocation(line: 59, column: 5, scope: !463, inlinedAt: !445)
!463 = distinct !DILexicalBlock(scope: !436, file: !2, line: 59, column: 5)
!464 = !DILocation(line: 60, column: 25, scope: !465, inlinedAt: !445)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 59, column: 28)
!466 = distinct !DILexicalBlock(scope: !463, file: !2, line: 59, column: 5)
!467 = !DILocation(line: 60, column: 22, scope: !465, inlinedAt: !445)
!468 = !DILocation(line: 60, column: 29, scope: !465, inlinedAt: !445)
!469 = !DILocation(line: 60, column: 19, scope: !465, inlinedAt: !445)
!470 = !DILocation(line: 60, column: 18, scope: !465, inlinedAt: !445)
!471 = !DILocation(line: 60, column: 15, scope: !465, inlinedAt: !445)
!472 = !DILocation(line: 61, column: 15, scope: !465, inlinedAt: !445)
!473 = !DILocation(line: 62, column: 22, scope: !465, inlinedAt: !445)
!474 = !DILocation(line: 63, column: 11, scope: !465, inlinedAt: !445)
!475 = !DILocation(line: 64, column: 20, scope: !476, inlinedAt: !445)
!476 = distinct !DILexicalBlock(scope: !465, file: !2, line: 64, column: 10)
!477 = !DILocation(line: 64, column: 10, scope: !476, inlinedAt: !445)
!478 = !DILocation(line: 64, column: 26, scope: !476, inlinedAt: !445)
!479 = !DILocation(line: 64, column: 10, scope: !465, inlinedAt: !445)
!480 = distinct !{!480, !462, !481, !482}
!481 = !DILocation(line: 65, column: 5, scope: !463, inlinedAt: !445)
!482 = !{!"llvm.loop.mustprogress"}
!483 = !DILocation(line: 66, column: 29, scope: !436, inlinedAt: !445)
!484 = !DILocation(line: 66, column: 19, scope: !436, inlinedAt: !445)
!485 = !DILocation(line: 66, column: 32, scope: !436, inlinedAt: !445)
!486 = !DILocation(line: 66, column: 37, scope: !436, inlinedAt: !445)
!487 = !DILocation(line: 66, column: 17, scope: !436, inlinedAt: !445)
!488 = !DILocation(line: 67, column: 37, scope: !436, inlinedAt: !445)
!489 = !DILocation(line: 67, column: 35, scope: !436, inlinedAt: !445)
!490 = !DILocation(line: 67, column: 13, scope: !436, inlinedAt: !445)
!491 = !DILocation(line: 67, column: 17, scope: !436, inlinedAt: !445)
!492 = !DILocation(line: 0, scope: !437, inlinedAt: !445)
!493 = !DILocation(line: 71, column: 1, scope: !428, inlinedAt: !445)
!494 = !DILocation(line: 193, column: 5, scope: !446)
!495 = !DILocation(line: 195, column: 33, scope: !362)
!496 = !DILocation(line: 195, column: 44, scope: !362)
!497 = !DILocation(line: 195, column: 40, scope: !362)
!498 = !DILocation(line: 195, column: 48, scope: !362)
!499 = !DILocation(line: 195, column: 37, scope: !362)
!500 = !DILocation(line: 195, column: 11, scope: !363)
!501 = !DILocation(line: 196, column: 45, scope: !361)
!502 = !DILocation(line: 196, column: 47, scope: !361)
!503 = !DILocation(line: 196, column: 18, scope: !361)
!504 = !DILocation(line: 0, scope: !361)
!505 = !DILocation(line: 197, column: 33, scope: !361)
!506 = !DILocation(line: 197, column: 18, scope: !361)
!507 = !DILocation(line: 198, column: 17, scope: !361)
!508 = !DILocation(line: 199, column: 13, scope: !361)
!509 = !DILocation(line: 199, column: 17, scope: !361)
!510 = !DILocation(line: 202, column: 13, scope: !371)
!511 = !DILocation(line: 202, column: 11, scope: !362)
!512 = !DILocation(line: 203, column: 50, scope: !370)
!513 = !DILocation(line: 203, column: 52, scope: !370)
!514 = !DILocation(line: 203, column: 18, scope: !370)
!515 = !DILocation(line: 0, scope: !370)
!516 = !DILocation(line: 204, column: 33, scope: !370)
!517 = !DILocation(line: 204, column: 18, scope: !370)
!518 = !DILocation(line: 205, column: 17, scope: !370)
!519 = !DILocation(line: 206, column: 13, scope: !370)
!520 = !DILocation(line: 206, column: 17, scope: !370)
!521 = !DILocation(line: 211, column: 5, scope: !374)
!522 = !DILocation(line: 212, column: 5, scope: !374)
!523 = !DILocation(line: 213, column: 18, scope: !374)
!524 = !DILocation(line: 214, column: 18, scope: !374)
!525 = !DILocation(line: 215, column: 24, scope: !374)
!526 = !DILocation(line: 216, column: 23, scope: !374)
!527 = !DILocation(line: 219, column: 5, scope: !528)
!528 = distinct !DILexicalBlock(scope: !374, file: !2, line: 219, column: 5)
!529 = !DILocation(line: 220, column: 15, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !2, line: 219, column: 24)
!531 = distinct !DILexicalBlock(scope: !528, file: !2, line: 219, column: 5)
!532 = !DILocation(line: 220, column: 17, scope: !530)
!533 = !DILocation(line: 220, column: 13, scope: !530)
!534 = !DILocation(line: 220, column: 20, scope: !530)
!535 = !DILocation(line: 220, column: 22, scope: !530)
!536 = !DILocation(line: 220, column: 26, scope: !530)
!537 = !DILocation(line: 219, column: 20, scope: !531)
!538 = distinct !{!538, !527, !539, !482}
!539 = !DILocation(line: 223, column: 5, scope: !528)
!540 = !DILocation(line: 224, column: 17, scope: !374)
!541 = !DILocation(line: 225, column: 19, scope: !374)
!542 = !DILocation(line: 225, column: 68, scope: !374)
!543 = !DILocation(line: 225, column: 71, scope: !374)
!544 = !DILocation(line: 225, column: 58, scope: !374)
!545 = !DILocation(line: 225, column: 56, scope: !374)
!546 = !DILocation(line: 225, column: 95, scope: !374)
!547 = !DILocation(line: 225, column: 98, scope: !374)
!548 = !DILocation(line: 225, column: 84, scope: !374)
!549 = !DILocation(line: 225, column: 82, scope: !374)
!550 = !DILocation(line: 225, column: 37, scope: !374)
!551 = !DILocation(line: 225, column: 13, scope: !374)
!552 = !DILocation(line: 225, column: 17, scope: !374)
!553 = !DILocation(line: 227, column: 12, scope: !374)
!554 = !DILocation(line: 228, column: 3, scope: !371)
!555 = !DILocation(line: 0, scope: !367)
!556 = !DILocation(line: 229, column: 1, scope: !353)
!557 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asympx_e", scope: !558, file: !558, line: 40, type: !559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!558 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!559 = !DISubroutineType(types: !560)
!560 = !{!40, !89, !89, !91}
!561 = !DISubprogram(name: "sqrt", scope: !562, file: !562, line: 143, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!562 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!563 = !DISubroutineType(types: !564)
!564 = !{!90, !90}
!565 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asymp_Olver_e", scope: !566, file: !566, line: 28, type: !567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!566 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!567 = !DISubroutineType(types: !568)
!568 = !{!40, !90, !90, !91}
!569 = distinct !DISubprogram(name: "gsl_sf_bessel_yl_array", scope: !2, file: !2, line: 232, type: !570, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !573)
!570 = !DISubroutineType(types: !571)
!571 = !{!40, !106, !89, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!573 = !{!574, !575, !576, !577, !581, !582, !584, !585, !586, !587, !588, !589, !590}
!574 = !DILocalVariable(name: "lmax", arg: 1, scope: !569, file: !2, line: 232, type: !106)
!575 = !DILocalVariable(name: "x", arg: 2, scope: !569, file: !2, line: 232, type: !89)
!576 = !DILocalVariable(name: "result_array", arg: 3, scope: !569, file: !2, line: 232, type: !572)
!577 = !DILocalVariable(name: "result", scope: !578, file: !2, line: 239, type: !92)
!578 = distinct !DILexicalBlock(scope: !579, file: !2, line: 238, column: 25)
!579 = distinct !DILexicalBlock(scope: !580, file: !2, line: 238, column: 14)
!580 = distinct !DILexicalBlock(scope: !569, file: !2, line: 236, column: 6)
!581 = !DILocalVariable(name: "stat", scope: !578, file: !2, line: 240, type: !40)
!582 = !DILocalVariable(name: "r_yell", scope: !583, file: !2, line: 244, type: !92)
!583 = distinct !DILexicalBlock(scope: !579, file: !2, line: 243, column: 10)
!584 = !DILocalVariable(name: "r_yellm1", scope: !583, file: !2, line: 245, type: !92)
!585 = !DILocalVariable(name: "stat_1", scope: !583, file: !2, line: 246, type: !40)
!586 = !DILocalVariable(name: "stat_0", scope: !583, file: !2, line: 247, type: !40)
!587 = !DILocalVariable(name: "yellp1", scope: !583, file: !2, line: 248, type: !90)
!588 = !DILocalVariable(name: "yell", scope: !583, file: !2, line: 249, type: !90)
!589 = !DILocalVariable(name: "yellm1", scope: !583, file: !2, line: 250, type: !90)
!590 = !DILocalVariable(name: "ell", scope: !583, file: !2, line: 251, type: !40)
!591 = distinct !DIAssignID()
!592 = distinct !DIAssignID()
!593 = distinct !DIAssignID()
!594 = !DILocation(line: 0, scope: !583)
!595 = !DILocation(line: 0, scope: !569)
!596 = !DILocation(line: 236, column: 11, scope: !580)
!597 = !DILocation(line: 236, column: 15, scope: !580)
!598 = !DILocation(line: 237, column: 5, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !2, line: 237, column: 5)
!600 = distinct !DILexicalBlock(scope: !580, file: !2, line: 236, column: 28)
!601 = !DILocation(line: 238, column: 19, scope: !579)
!602 = !DILocation(line: 238, column: 14, scope: !580)
!603 = !DILocation(line: 0, scope: !102, inlinedAt: !604)
!604 = distinct !DILocation(line: 240, column: 16, scope: !578)
!605 = !DILocation(line: 0, scope: !86, inlinedAt: !604)
!606 = !DILocation(line: 84, column: 38, scope: !103, inlinedAt: !604)
!607 = !DILocation(line: 84, column: 11, scope: !104, inlinedAt: !604)
!608 = !DILocation(line: 0, scope: !578)
!609 = !DILocation(line: 85, column: 5, scope: !129, inlinedAt: !604)
!610 = !DILocation(line: 88, column: 5, scope: !102, inlinedAt: !604)
!611 = !DILocation(line: 89, column: 22, scope: !102, inlinedAt: !604)
!612 = !DILocation(line: 90, column: 32, scope: !102, inlinedAt: !604)
!613 = !DILocation(line: 90, column: 20, scope: !102, inlinedAt: !604)
!614 = !DILocation(line: 90, column: 35, scope: !102, inlinedAt: !604)
!615 = !DILocation(line: 94, column: 3, scope: !103, inlinedAt: !604)
!616 = !DILocation(line: 0, scope: !104, inlinedAt: !604)
!617 = !DILocation(line: 241, column: 21, scope: !578)
!618 = !{!117, !117, i64 0}
!619 = !DILocation(line: 244, column: 5, scope: !583)
!620 = !DILocation(line: 246, column: 18, scope: !583)
!621 = !DILocation(line: 0, scope: !102, inlinedAt: !622)
!622 = distinct !DILocation(line: 247, column: 18, scope: !583)
!623 = !DILocation(line: 0, scope: !86, inlinedAt: !622)
!624 = !DILocation(line: 84, column: 38, scope: !103, inlinedAt: !622)
!625 = !DILocation(line: 84, column: 11, scope: !104, inlinedAt: !622)
!626 = !DILocation(line: 85, column: 5, scope: !129, inlinedAt: !622)
!627 = !DILocation(line: 88, column: 5, scope: !102, inlinedAt: !622)
!628 = !DILocation(line: 89, column: 22, scope: !102, inlinedAt: !622)
!629 = !DILocation(line: 90, column: 32, scope: !102, inlinedAt: !622)
!630 = !DILocation(line: 90, column: 20, scope: !102, inlinedAt: !622)
!631 = !DILocation(line: 90, column: 35, scope: !102, inlinedAt: !622)
!632 = !DILocation(line: 94, column: 3, scope: !103, inlinedAt: !622)
!633 = !DILocation(line: 0, scope: !104, inlinedAt: !622)
!634 = !DILocation(line: 249, column: 28, scope: !583)
!635 = !DILocation(line: 253, column: 21, scope: !583)
!636 = !DILocation(line: 254, column: 5, scope: !583)
!637 = !DILocation(line: 254, column: 21, scope: !583)
!638 = !DILocation(line: 256, column: 22, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !2, line: 256, column: 5)
!640 = distinct !DILexicalBlock(scope: !583, file: !2, line: 256, column: 5)
!641 = !DILocation(line: 256, column: 5, scope: !640)
!642 = !DILocation(line: 257, column: 16, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !2, line: 256, column: 37)
!644 = !DILocation(line: 257, column: 25, scope: !643)
!645 = !DILocation(line: 257, column: 28, scope: !643)
!646 = !DILocation(line: 257, column: 35, scope: !643)
!647 = !DILocation(line: 258, column: 23, scope: !643)
!648 = !DILocation(line: 258, column: 7, scope: !643)
!649 = !DILocation(line: 258, column: 27, scope: !643)
!650 = distinct !{!650, !641, !651, !482}
!651 = !DILocation(line: 261, column: 5, scope: !640)
!652 = !DILocation(line: 263, column: 12, scope: !583)
!653 = !DILocation(line: 264, column: 3, scope: !579)
!654 = !DILocation(line: 0, scope: !580)
!655 = !DILocation(line: 265, column: 1, scope: !569)
!656 = distinct !DISubprogram(name: "gsl_sf_bessel_y0", scope: !2, file: !2, line: 272, type: !657, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{!90, !89}
!659 = !{!660, !661, !662}
!660 = !DILocalVariable(name: "x", arg: 1, scope: !656, file: !2, line: 272, type: !89)
!661 = !DILocalVariable(name: "result", scope: !656, file: !2, line: 274, type: !92)
!662 = !DILocalVariable(name: "status", scope: !656, file: !2, line: 274, type: !40)
!663 = distinct !DIAssignID()
!664 = !DILocation(line: 0, scope: !656)
!665 = !DILocation(line: 0, scope: !102, inlinedAt: !666)
!666 = distinct !DILocation(line: 274, column: 3, scope: !656)
!667 = !DILocation(line: 0, scope: !86, inlinedAt: !666)
!668 = !DILocation(line: 81, column: 8, scope: !104, inlinedAt: !666)
!669 = !DILocation(line: 81, column: 6, scope: !86, inlinedAt: !666)
!670 = !DILocation(line: 82, column: 5, scope: !122, inlinedAt: !666)
!671 = !DILocation(line: 84, column: 38, scope: !103, inlinedAt: !666)
!672 = !DILocation(line: 84, column: 11, scope: !104, inlinedAt: !666)
!673 = !DILocation(line: 85, column: 5, scope: !129, inlinedAt: !666)
!674 = !DILocation(line: 88, column: 5, scope: !102, inlinedAt: !666)
!675 = !DILocation(line: 89, column: 22, scope: !102, inlinedAt: !666)
!676 = !DILocation(line: 90, column: 32, scope: !102, inlinedAt: !666)
!677 = !DILocation(line: 90, column: 20, scope: !102, inlinedAt: !666)
!678 = !DILocation(line: 90, column: 35, scope: !102, inlinedAt: !666)
!679 = !DILocation(line: 94, column: 3, scope: !103, inlinedAt: !666)
!680 = !DILocation(line: 274, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !656, file: !2, line: 274, column: 3)
!682 = !DILocation(line: 274, column: 3, scope: !656)
!683 = !DILocation(line: 274, column: 3, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !2, line: 274, column: 3)
!685 = distinct !DILexicalBlock(scope: !681, file: !2, line: 274, column: 3)
!686 = !DILocation(line: 275, column: 1, scope: !656)
!687 = distinct !DISubprogram(name: "gsl_sf_bessel_y1", scope: !2, file: !2, line: 277, type: !657, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !688)
!688 = !{!689, !690, !691}
!689 = !DILocalVariable(name: "x", arg: 1, scope: !687, file: !2, line: 277, type: !89)
!690 = !DILocalVariable(name: "result", scope: !687, file: !2, line: 279, type: !92)
!691 = !DILocalVariable(name: "status", scope: !687, file: !2, line: 279, type: !40)
!692 = distinct !DIAssignID()
!693 = !DILocation(line: 0, scope: !687)
!694 = !DILocation(line: 279, column: 3, scope: !687)
!695 = !DILocation(line: 279, column: 3, scope: !696)
!696 = distinct !DILexicalBlock(scope: !687, file: !2, line: 279, column: 3)
!697 = !DILocation(line: 279, column: 3, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !2, line: 279, column: 3)
!699 = distinct !DILexicalBlock(scope: !696, file: !2, line: 279, column: 3)
!700 = !DILocation(line: 280, column: 1, scope: !687)
!701 = distinct !DISubprogram(name: "gsl_sf_bessel_y2", scope: !2, file: !2, line: 282, type: !657, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !702)
!702 = !{!703, !704, !705}
!703 = !DILocalVariable(name: "x", arg: 1, scope: !701, file: !2, line: 282, type: !89)
!704 = !DILocalVariable(name: "result", scope: !701, file: !2, line: 284, type: !92)
!705 = !DILocalVariable(name: "status", scope: !701, file: !2, line: 284, type: !40)
!706 = distinct !DIAssignID()
!707 = !DILocation(line: 0, scope: !701)
!708 = !DILocation(line: 284, column: 3, scope: !701)
!709 = !DILocation(line: 284, column: 3, scope: !710)
!710 = distinct !DILexicalBlock(scope: !701, file: !2, line: 284, column: 3)
!711 = !DILocation(line: 284, column: 3, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !2, line: 284, column: 3)
!713 = distinct !DILexicalBlock(scope: !710, file: !2, line: 284, column: 3)
!714 = !DILocation(line: 285, column: 1, scope: !701)
!715 = distinct !DISubprogram(name: "gsl_sf_bessel_yl", scope: !2, file: !2, line: 287, type: !716, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{!90, !106, !89}
!718 = !{!719, !720, !721, !722}
!719 = !DILocalVariable(name: "l", arg: 1, scope: !715, file: !2, line: 287, type: !106)
!720 = !DILocalVariable(name: "x", arg: 2, scope: !715, file: !2, line: 287, type: !89)
!721 = !DILocalVariable(name: "result", scope: !715, file: !2, line: 289, type: !92)
!722 = !DILocalVariable(name: "status", scope: !715, file: !2, line: 289, type: !40)
!723 = distinct !DIAssignID()
!724 = !DILocation(line: 0, scope: !715)
!725 = !DILocation(line: 289, column: 3, scope: !715)
!726 = !DILocation(line: 289, column: 3, scope: !727)
!727 = distinct !DILexicalBlock(scope: !715, file: !2, line: 289, column: 3)
!728 = !DILocation(line: 289, column: 3, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !2, line: 289, column: 3)
!730 = distinct !DILexicalBlock(scope: !727, file: !2, line: 289, column: 3)
!731 = !DILocation(line: 290, column: 1, scope: !715)
!732 = !DISubprogram(name: "gsl_sf_pow_int", scope: !733, file: !733, line: 44, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!733 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!734 = !DISubroutineType(types: !735)
!735 = !{!90, !89, !106}
!736 = !DISubprogram(name: "gsl_sf_doublefact_e", scope: !737, file: !737, line: 127, type: !738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!737 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!738 = !DISubroutineType(types: !739)
!739 = !{!40, !740, !91}
!740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!741 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
