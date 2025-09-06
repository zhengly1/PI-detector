; ModuleID = 'bessel_y.ll'
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 82, i32 noundef 1) #5, !dbg !121
  br label %23, !dbg !121

7:                                                ; preds = %2
  %8 = fcmp olt double %0, 0x4000000000000, !dbg !123
  br i1 %8, label %9, label %11, !dbg !124

9:                                                ; preds = %7
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !125, !tbaa !115
  %10 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !125
  store double 0x7FF0000000000000, ptr %10, align 8, !dbg !125, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #5, !dbg !128
  br label %23, !dbg !128

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !130
  %12 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %3) #5, !dbg !131
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
  %handler_result = call double @fAddHandlerDouble(double %22, double %19), !dbg !142
  store double %handler_result, ptr %20, align 8, !dbg !142, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !143
  br label %23

23:                                               ; preds = %11, %9, %5
  %24 = phi i32 [ 1, %5 ], [ 16, %9 ], [ %12, %11 ], !dbg !144
  ret i32 %24, !dbg !145
}

declare !dbg !146 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !151 i32 @gsl_sf_cos_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 103, i32 noundef 1) #5, !dbg !187
  br label %52, !dbg !187

8:                                                ; preds = %2
  %9 = fcmp olt double %0, 0x1FF0000000000001, !dbg !189
  br i1 %9, label %10, label %12, !dbg !190

10:                                               ; preds = %8
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !191, !tbaa !115
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !191
  store double 0x7FF0000000000000, ptr %11, align 8, !dbg !191, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 16) #5, !dbg !194
  br label %52, !dbg !194

12:                                               ; preds = %8
  %13 = fcmp olt double %0, 2.500000e-01, !dbg !196
  br i1 %13, label %14, label %27, !dbg !197

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
  %handler_result = call double @fSubHandlerDouble(double 0x3EC4CE19AE67B348, double %16), !dbg !201
  %17 = fmul double %15, %handler_result, !dbg !201
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 0xBF26C16C16C16C17), !dbg !202
  %18 = fmul double %15, %handler_result1, !dbg !202
  %handler_result2 = call double @fAddHandlerDouble(double %18, double 0x3F7C71C71C71C71C), !dbg !203
  %19 = fmul double %15, %handler_result2, !dbg !203
  %handler_result3 = call double @fAddHandlerDouble(double %19, double -1.250000e-01), !dbg !204
  %20 = fmul double %15, %handler_result3, !dbg !204
  %handler_result4 = call double @fAddHandlerDouble(double %20, double 5.000000e-01), !dbg !205
  %21 = fmul double %15, %handler_result4, !dbg !205
  %handler_result5 = call double @fAddHandlerDouble(double %21, double 1.000000e+00), !dbg !206
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !170, metadata !DIExpression()), !dbg !199
  %22 = fneg double %handler_result5, !dbg !206
  %23 = fdiv double %22, %15, !dbg !207
  store double %23, ptr %1, align 8, !dbg !208, !tbaa !115
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !209
  %25 = fmul double %24, 0x3CB0000000000000, !dbg !210
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !211
  store double %25, ptr %26, align 8, !dbg !212, !tbaa !120
  br label %52

27:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !213
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !214
  %28 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %3) #5, !dbg !215
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !174, metadata !DIExpression()), !dbg !179
  %29 = call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef nonnull %4) #5, !dbg !216
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !175, metadata !DIExpression()), !dbg !179
  %30 = load double, ptr %3, align 8, !dbg !217, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %30, metadata !176, metadata !DIExpression()), !dbg !179
  %31 = load double, ptr %4, align 8, !dbg !218, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %31, metadata !177, metadata !DIExpression()), !dbg !179
  %32 = fdiv double %30, %0, !dbg !219
  %handler_result6 = call double @fAddHandlerDouble(double %32, double %31), !dbg !220
  %33 = fneg double %handler_result6, !dbg !220
  %34 = fdiv double %33, %0, !dbg !221
  store double %34, ptr %1, align 8, !dbg !222, !tbaa !115
  %35 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !223
  %36 = load double, ptr %35, align 8, !dbg !223, !tbaa !120
  %37 = fdiv double %36, %0, !dbg !224
  %38 = call double @llvm.fabs.f64(double %37), !dbg !225
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !226
  %40 = load double, ptr %39, align 8, !dbg !226, !tbaa !120
  %handler_result7 = call double @fAddHandlerDouble(double %40, double %38), !dbg !227
  %41 = call double @llvm.fabs.f64(double %0), !dbg !227
  %42 = fdiv double %handler_result7, %41, !dbg !228
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !229
  %44 = fdiv double %31, %0, !dbg !230
  %45 = call double @llvm.fabs.f64(double %44), !dbg !231
  %46 = fmul double %0, %0, !dbg !232
  %47 = fdiv double %30, %46, !dbg !233
  %48 = call double @llvm.fabs.f64(double %47), !dbg !234
  %handler_result8 = call double @fAddHandlerDouble(double %48, double %45), !dbg !235
  %49 = fmul double %handler_result8, 0x3CB0000000000000, !dbg !235
  %handler_result9 = call double @fAddHandlerDouble(double %49, double %42), !dbg !236
  store double %handler_result9, ptr %43, align 8, !dbg !236, !tbaa !120
  %50 = icmp eq i32 %28, 0, !dbg !237
  %51 = select i1 %50, i32 %29, i32 %28, !dbg !237
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !238
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !238
  br label %52

52:                                               ; preds = %27, %14, %10, %6
  %53 = phi i32 [ 1, %6 ], [ 16, %10 ], [ 0, %14 ], [ %51, %27 ], !dbg !239
  ret i32 %53, !dbg !240
}

declare !dbg !241 i32 @gsl_sf_sin_e(double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_y2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !242 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !267
  call void @llvm.dbg.assign(metadata i1 undef, metadata !259, metadata !DIExpression(), metadata !267, metadata ptr %3, metadata !DIExpression()), !dbg !268
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !269
  call void @llvm.dbg.assign(metadata i1 undef, metadata !261, metadata !DIExpression(), metadata !269, metadata ptr %4, metadata !DIExpression()), !dbg !268
  tail call void @llvm.dbg.value(metadata double %0, metadata !244, metadata !DIExpression()), !dbg !270
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !245, metadata !DIExpression()), !dbg !270
  %5 = fcmp ugt double %0, 0.000000e+00, !dbg !271
  br i1 %5, label %8, label %6, !dbg !272

6:                                                ; preds = %2
  store double 0x7FF8000000000000, ptr %1, align 8, !dbg !273, !tbaa !115
  %7 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !273
  store double 0x7FF8000000000000, ptr %7, align 8, !dbg !273, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 141, i32 noundef 1) #5, !dbg !276
  br label %55, !dbg !276

8:                                                ; preds = %2
  %9 = fcmp olt double %0, 0x2A9965FEA53D6E98, !dbg !278
  br i1 %9, label %10, label %12, !dbg !279

10:                                               ; preds = %8
  store double 0x7FF0000000000000, ptr %1, align 8, !dbg !280, !tbaa !115
  %11 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !280
  store double 0x7FF0000000000000, ptr %11, align 8, !dbg !280, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 16) #5, !dbg !283
  br label %55, !dbg !283

12:                                               ; preds = %8
  %13 = fcmp olt double %0, 5.000000e-01, !dbg !285
  br i1 %13, label %14, label %29, !dbg !286

14:                                               ; preds = %12
  %15 = fmul double %0, %0, !dbg !287
  tail call void @llvm.dbg.value(metadata double %15, metadata !246, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !251, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0x3FA5555555555555, metadata !252, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0xBF7C71C71C71C71C, metadata !253, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0x3F32F684BDA12F68, metadata !254, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0xBED845C8A0CE5129, metadata !255, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0x3E727E4FB7789F5C, metadata !256, metadata !DIExpression()), !dbg !288
  tail call void @llvm.dbg.value(metadata double 0xBE02C9758DAF5CD0, metadata !257, metadata !DIExpression()), !dbg !288
  %16 = fmul double %15, 0x3E02C9758DAF5CD0, !dbg !289
  %handler_result = call double @fSubHandlerDouble(double 0x3E727E4FB7789F5C, double %16), !dbg !290
  %17 = fmul double %15, %handler_result, !dbg !290
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 0xBED845C8A0CE5129), !dbg !291
  %18 = fmul double %15, %handler_result1, !dbg !291
  %handler_result2 = call double @fAddHandlerDouble(double %18, double 0x3F32F684BDA12F68), !dbg !292
  %19 = fmul double %15, %handler_result2, !dbg !292
  %handler_result3 = call double @fAddHandlerDouble(double %19, double 0xBF7C71C71C71C71C), !dbg !293
  %20 = fmul double %15, %handler_result3, !dbg !293
  %handler_result4 = call double @fAddHandlerDouble(double %20, double 0x3FA5555555555555), !dbg !294
  %21 = fmul double %15, %handler_result4, !dbg !294
  %handler_result5 = call double @fAddHandlerDouble(double %21, double 0x3FC5555555555555), !dbg !295
  %22 = fmul double %15, %handler_result5, !dbg !295
  %handler_result6 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !296
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !258, metadata !DIExpression()), !dbg !288
  %23 = fmul double %15, %0, !dbg !296
  %24 = fdiv double -3.000000e+00, %23, !dbg !297
  %25 = fmul double %24, %handler_result6, !dbg !298
  store double %25, ptr %1, align 8, !dbg !299, !tbaa !115
  %26 = tail call double @llvm.fabs.f64(double %25), !dbg !300
  %27 = fmul double %26, 0x3CB0000000000000, !dbg !301
  %28 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !302
  store double %27, ptr %28, align 8, !dbg !303, !tbaa !120
  br label %55

29:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !304
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !305
  %30 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %3) #5, !dbg !306
  tail call void @llvm.dbg.value(metadata i32 %30, metadata !262, metadata !DIExpression()), !dbg !268
  %31 = call i32 @gsl_sf_sin_e(double noundef %0, ptr noundef nonnull %4) #5, !dbg !307
  tail call void @llvm.dbg.value(metadata i32 %31, metadata !263, metadata !DIExpression()), !dbg !268
  %32 = load double, ptr %4, align 8, !dbg !308, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %32, metadata !264, metadata !DIExpression()), !dbg !268
  %33 = load double, ptr %3, align 8, !dbg !309, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %33, metadata !265, metadata !DIExpression()), !dbg !268
  %34 = fmul double %0, %0, !dbg !310
  %35 = fdiv double 3.000000e+00, %34, !dbg !311
  tail call void @llvm.dbg.value(metadata double %35, metadata !266, metadata !DIExpression()), !dbg !268
  %handler_result7 = call double @fSubHandlerDouble(double 1.000000e+00, double %35), !dbg !312
  %36 = fdiv double %handler_result7, %0, !dbg !312
  %37 = fmul double %36, %33, !dbg !313
  %38 = fmul double %35, %32, !dbg !314
  %handler_result8 = call double @fSubHandlerDouble(double %37, double %38), !dbg !315
  store double %handler_result8, ptr %1, align 8, !dbg !315, !tbaa !115
  %39 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %3, i64 0, i32 1, !dbg !316
  %40 = load double, ptr %39, align 8, !dbg !316, !tbaa !120
  %41 = call double @llvm.fabs.f64(double %36), !dbg !317
  %42 = fmul double %41, %40, !dbg !318
  %43 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !319
  %44 = load double, ptr %43, align 8, !dbg !319, !tbaa !120
  %45 = call double @llvm.fabs.f64(double %35), !dbg !320
  %46 = fmul double %45, %44, !dbg !321
  %handler_result9 = call double @fAddHandlerDouble(double %42, double %46), !dbg !322
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !322
  %48 = fdiv double %33, %0, !dbg !323
  %49 = call double @llvm.fabs.f64(double %48), !dbg !324
  %50 = fdiv double %32, %34, !dbg !325
  %51 = call double @llvm.fabs.f64(double %50), !dbg !326
  %handler_result10 = call double @fAddHandlerDouble(double %51, double %49), !dbg !327
  %52 = fmul double %handler_result10, 0x3CB0000000000000, !dbg !327
  %handler_result11 = call double @fAddHandlerDouble(double %52, double %handler_result9), !dbg !328
  store double %handler_result11, ptr %47, align 8, !dbg !328, !tbaa !120
  %53 = icmp eq i32 %30, 0, !dbg !329
  %54 = select i1 %53, i32 %31, i32 %30, !dbg !329
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !330
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !330
  br label %55

55:                                               ; preds = %29, %14, %10, %6
  %56 = phi i32 [ 1, %6 ], [ 16, %10 ], [ 0, %14 ], [ %54, %29 ], !dbg !331
  ret i32 %56, !dbg !332
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_yl_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 !dbg !333 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !362
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !363
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !364
  call void @llvm.dbg.assign(metadata i1 undef, metadata !353, metadata !DIExpression(), metadata !364, metadata ptr %6, metadata !DIExpression()), !dbg !365
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !366
  call void @llvm.dbg.assign(metadata i1 undef, metadata !355, metadata !DIExpression(), metadata !366, metadata ptr %7, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !337, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata double %1, metadata !338, metadata !DIExpression()), !dbg !367
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !339, metadata !DIExpression()), !dbg !367
  %8 = icmp slt i32 %0, 0, !dbg !368
  %9 = fcmp ole double %1, 0.000000e+00
  %10 = or i1 %8, %9, !dbg !369
  br i1 %10, label %11, label %13, !dbg !369

11:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !370, !tbaa !115
  %12 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !370
  store double 0x7FF8000000000000, ptr %12, align 8, !dbg !370, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 181, i32 noundef 1) #5, !dbg !373
  br label %160, !dbg !373

13:                                               ; preds = %3
  switch i32 %0, label %34 [
    i32 0, label %14
    i32 1, label %30
    i32 2, label %32
  ], !dbg !375

14:                                               ; preds = %13
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !363, metadata ptr %5, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata double %1, metadata !99, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata ptr %2, metadata !100, metadata !DIExpression()), !dbg !379
  %15 = fcmp olt double %1, 0x4000000000000, !dbg !380
  br i1 %15, label %16, label %18, !dbg !381

16:                                               ; preds = %14
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !382, !tbaa !115
  %17 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !382
  store double 0x7FF0000000000000, ptr %17, align 8, !dbg !382, !tbaa !120
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #5, !dbg !383
  br label %160, !dbg !383

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !384
  %19 = call i32 @gsl_sf_cos_e(double noundef %1, ptr noundef nonnull %5) #5, !dbg !385
  call void @llvm.dbg.value(metadata i32 %19, metadata !105, metadata !DIExpression()), !dbg !376
  %20 = load double, ptr %5, align 8, !dbg !386, !tbaa !115
  %21 = fneg double %20, !dbg !387
  %22 = fdiv double %21, %1, !dbg !388
  store double %22, ptr %2, align 8, !dbg !389, !tbaa !115
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !390
  %24 = load double, ptr %23, align 8, !dbg !390, !tbaa !120
  %25 = fdiv double %24, %1, !dbg !391
  %26 = call double @llvm.fabs.f64(double %25), !dbg !392
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !393
  %28 = call double @llvm.fabs.f64(double %22), !dbg !394
  %29 = fmul double %28, 0x3CC0000000000000, !dbg !395
  %handler_result = call double @fAddHandlerDouble(double %29, double %26), !dbg !396
  store double %handler_result, ptr %27, align 8, !dbg !396, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !397
  br label %160

30:                                               ; preds = %13
  %31 = tail call i32 @gsl_sf_bessel_y1_e(double noundef %1, ptr noundef %2), !dbg !398
  br label %160, !dbg !400

32:                                               ; preds = %13
  %33 = tail call i32 @gsl_sf_bessel_y2_e(double noundef %1, ptr noundef %2), !dbg !401
  br label %160, !dbg !403

34:                                               ; preds = %13
  %35 = fcmp olt double %1, 3.000000e+00, !dbg !404
  %36 = add nuw i32 %0, 1, !dbg !405
  br i1 %35, label %37, label %79, !dbg !406

37:                                               ; preds = %34
  call void @llvm.dbg.assign(metadata i1 undef, metadata !407, metadata !DIExpression(), metadata !362, metadata ptr %4, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata i32 %0, metadata !410, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata double %1, metadata !411, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.value(metadata ptr %2, metadata !412, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !427
  %38 = tail call double @gsl_sf_pow_int(double noundef %1, i32 noundef %36) #5, !dbg !428
  call void @llvm.dbg.value(metadata double %38, metadata !413, metadata !DIExpression()), !dbg !424
  %39 = shl nuw nsw i32 %0, 1, !dbg !429
  %40 = add nsw i32 %39, -1, !dbg !430
  %41 = call i32 @gsl_sf_doublefact_e(i32 noundef %40, ptr noundef nonnull %4) #5, !dbg !431
  call void @llvm.dbg.value(metadata i32 %41, metadata !414, metadata !DIExpression()), !dbg !424
  %42 = icmp ne i32 %41, 0, !dbg !432
  %43 = fcmp oeq double %38, 0.000000e+00
  %44 = select i1 %42, i1 true, i1 %43, !dbg !433
  br i1 %44, label %45, label %47, !dbg !433

45:                                               ; preds = %37
  store double 0x7FF0000000000000, ptr %2, align 8, !dbg !434, !tbaa !115
  %46 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !434
  store double 0x7FF0000000000000, ptr %46, align 8, !dbg !434, !tbaa !120
  call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 49, i32 noundef 16) #5, !dbg !437
  br label %77, !dbg !437

47:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i32 200, metadata !415, metadata !DIExpression()), !dbg !439
  %48 = fmul double %1, -5.000000e-01, !dbg !440
  %49 = fmul double %48, %1, !dbg !441
  call void @llvm.dbg.value(metadata double %49, metadata !418, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !419, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !420, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !421, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 1, metadata !423, metadata !DIExpression()), !dbg !439
  br label %50, !dbg !442

50:                                               ; preds = %50, %47
  %51 = phi i32 [ 1, %47 ], [ %66, %50 ]
  %52 = phi double [ 1.000000e+00, %47 ], [ %61, %50 ]
  %53 = phi double [ 1.000000e+00, %47 ], [ %60, %50 ]
  %54 = phi double [ 1.000000e+00, %47 ], [ %handler_result1, %50 ]
  call void @llvm.dbg.value(metadata i32 %51, metadata !423, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata double %52, metadata !421, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata double %53, metadata !420, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata double %54, metadata !419, metadata !DIExpression()), !dbg !439
  %55 = sub nsw i32 %51, %0, !dbg !444
  %56 = shl nsw i32 %55, 1, !dbg !447
  %57 = add nsw i32 %56, -1, !dbg !448
  %58 = mul nsw i32 %57, %51, !dbg !449
  %59 = sitofp i32 %58 to double, !dbg !450
  %60 = fdiv double %53, %59, !dbg !451
  call void @llvm.dbg.value(metadata double %60, metadata !420, metadata !DIExpression()), !dbg !439
  %61 = fmul double %49, %52, !dbg !452
  call void @llvm.dbg.value(metadata double %61, metadata !421, metadata !DIExpression()), !dbg !439
  %62 = fmul double %61, %60, !dbg !453
  call void @llvm.dbg.value(metadata double %62, metadata !422, metadata !DIExpression()), !dbg !439
  %handler_result1 = call double @fAddHandlerDouble(double %54, double %62), !dbg !454
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !419, metadata !DIExpression()), !dbg !439
  %63 = fdiv double %62, %handler_result1, !dbg !454
  %64 = call double @llvm.fabs.f64(double %63), !dbg !456
  %65 = fcmp olt double %64, 0x3CA0000000000000, !dbg !457
  call void @llvm.dbg.value(metadata i32 %51, metadata !423, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !439
  %66 = add nuw nsw i32 %51, 1
  call void @llvm.dbg.value(metadata i32 %66, metadata !423, metadata !DIExpression()), !dbg !439
  %67 = icmp eq i32 %66, 201
  %68 = select i1 %65, i1 true, i1 %67, !dbg !458
  br i1 %68, label %69, label %50, !dbg !458, !llvm.loop !459

69:                                               ; preds = %50
  call void @llvm.dbg.value(metadata double %handler_result1, metadata !419, metadata !DIExpression()), !dbg !439
  %70 = load double, ptr %4, align 8, !dbg !462, !tbaa !115
  %71 = fneg double %70, !dbg !463
  %72 = fdiv double %71, %38, !dbg !464
  %73 = fmul double %handler_result1, %72, !dbg !465
  store double %73, ptr %2, align 8, !dbg !466, !tbaa !115
  %74 = call double @llvm.fabs.f64(double %73), !dbg !467
  %75 = fmul double %74, 0x3CB0000000000000, !dbg !468
  %76 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !469
  store double %75, ptr %76, align 8, !dbg !470, !tbaa !120
  br label %77

77:                                               ; preds = %69, %45
  %78 = phi i32 [ 16, %45 ], [ 0, %69 ], !dbg !471
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !472
  br label %160, !dbg !473

79:                                               ; preds = %34
  %80 = fmul double %1, 0x3ED965FEA53D6E41, !dbg !474
  %81 = mul i32 %36, %0, !dbg !475
  %82 = sitofp i32 %81 to double, !dbg !476
  %handler_result2 = call double @fAddHandlerDouble(double %82, double 1.000000e+00), !dbg !477
  %83 = fcmp ogt double %80, %handler_result2, !dbg !477
  br i1 %83, label %84, label %94, !dbg !478

84:                                               ; preds = %79
  %85 = sitofp i32 %0 to double, !dbg !479
  %handler_result3 = call double @fAddHandlerDouble(double %85, double 5.000000e-01), !dbg !480
  %86 = tail call i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef %handler_result3, double noundef %1, ptr noundef %2) #5, !dbg !480
  tail call void @llvm.dbg.value(metadata i32 %86, metadata !340, metadata !DIExpression()), !dbg !481
  %87 = fdiv double 0x3FF921FB54442D18, %1, !dbg !482
  %88 = tail call double @sqrt(double noundef %87) #5, !dbg !483
  tail call void @llvm.dbg.value(metadata double %88, metadata !348, metadata !DIExpression()), !dbg !481
  %89 = load double, ptr %2, align 8, !dbg !484, !tbaa !115
  %90 = fmul double %88, %89, !dbg !484
  store double %90, ptr %2, align 8, !dbg !484, !tbaa !115
  %91 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !485
  %92 = load double, ptr %91, align 8, !dbg !486, !tbaa !120
  %93 = fmul double %88, %92, !dbg !486
  store double %93, ptr %91, align 8, !dbg !486, !tbaa !120
  br label %160

94:                                               ; preds = %79
  %95 = icmp ugt i32 %0, 40, !dbg !487
  br i1 %95, label %96, label %106, !dbg !488

96:                                               ; preds = %94
  %97 = sitofp i32 %0 to double, !dbg !489
  %handler_result4 = call double @fAddHandlerDouble(double %97, double 5.000000e-01), !dbg !490
  %98 = tail call i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef %handler_result4, double noundef %1, ptr noundef %2) #5, !dbg !490
  tail call void @llvm.dbg.value(metadata i32 %98, metadata !349, metadata !DIExpression()), !dbg !491
  %99 = fdiv double 0x3FF921FB54442D18, %1, !dbg !492
  %100 = tail call double @sqrt(double noundef %99) #5, !dbg !493
  tail call void @llvm.dbg.value(metadata double %100, metadata !352, metadata !DIExpression()), !dbg !491
  %101 = load double, ptr %2, align 8, !dbg !494, !tbaa !115
  %102 = fmul double %100, %101, !dbg !494
  store double %102, ptr %2, align 8, !dbg !494, !tbaa !115
  %103 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !495
  %104 = load double, ptr %103, align 8, !dbg !496, !tbaa !120
  %105 = fmul double %100, %104, !dbg !496
  store double %105, ptr %103, align 8, !dbg !496, !tbaa !120
  br label %160

106:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5, !dbg !497
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5, !dbg !498
  %107 = call i32 @gsl_sf_bessel_y1_e(double noundef %1, ptr noundef nonnull %6), !dbg !499
  tail call void @llvm.dbg.value(metadata i32 %107, metadata !356, metadata !DIExpression()), !dbg !365
  %108 = call i32 @gsl_sf_bessel_y0_e(double noundef %1, ptr noundef nonnull %7), !dbg !500
  tail call void @llvm.dbg.value(metadata i32 %108, metadata !357, metadata !DIExpression()), !dbg !365
  %109 = load double, ptr %7, align 8, !dbg !501, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %109, metadata !358, metadata !DIExpression()), !dbg !365
  %110 = load double, ptr %6, align 8, !dbg !502, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %110, metadata !359, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 1, metadata !361, metadata !DIExpression()), !dbg !365
  %111 = add nsw i32 %0, -1, !dbg !503
  %112 = and i32 %111, 1, !dbg !503
  %113 = icmp eq i32 %0, 2, !dbg !503
  br i1 %113, label %138, label %114, !dbg !503

114:                                              ; preds = %106
  %115 = and i32 %111, -2, !dbg !503
  br label %116, !dbg !503

116:                                              ; preds = %116, %114
  %117 = phi i32 [ 1, %114 ], [ %131, %116 ]
  %118 = phi double [ %110, %114 ], [ %handler_result6, %116 ]
  %119 = phi double [ %109, %114 ], [ %handler_result5, %116 ]
  %120 = phi i32 [ 0, %114 ], [ %132, %116 ]
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !361, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata double %118, metadata !359, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata double %119, metadata !358, metadata !DIExpression()), !dbg !365
  %121 = shl nuw nsw i32 %117, 1, !dbg !505
  %122 = or disjoint i32 %121, 1, !dbg !508
  %123 = sitofp i32 %122 to double, !dbg !509
  %124 = fdiv double %123, %1, !dbg !510
  %125 = fmul double %118, %124, !dbg !511
  %handler_result5 = call double @fSubHandlerDouble(double %125, double %119), !dbg !505
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !360, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata double %118, metadata !358, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !359, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !361, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %117, metadata !361, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !365
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !359, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata double %118, metadata !358, metadata !DIExpression()), !dbg !365
  %126 = shl nuw i32 %117, 1, !dbg !505
  %127 = add i32 %126, 3, !dbg !508
  %128 = sitofp i32 %127 to double, !dbg !509
  %129 = fdiv double %128, %1, !dbg !510
  %130 = fmul double %handler_result5, %129, !dbg !511
  %handler_result6 = call double @fSubHandlerDouble(double %130, double %118), !dbg !512
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !360, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !358, metadata !DIExpression()), !dbg !365
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !359, metadata !DIExpression()), !dbg !365
  %131 = add nuw nsw i32 %117, 2, !dbg !512
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !361, metadata !DIExpression()), !dbg !365
  %132 = add i32 %120, 2, !dbg !503
  %133 = icmp eq i32 %132, %115, !dbg !503
  br i1 %133, label %134, label %116, !dbg !503, !llvm.loop !513

134:                                              ; preds = %116
  %135 = shl nuw nsw i32 %131, 1, !dbg !505
  %136 = or disjoint i32 %135, 1, !dbg !508
  %137 = sitofp i32 %136 to double, !dbg !509
  br label %138, !dbg !503

138:                                              ; preds = %134, %106
  %139 = phi double [ undef, %106 ], [ %handler_result6, %134 ]
  %140 = phi double [ 3.000000e+00, %106 ], [ %137, %134 ]
  %141 = phi double [ %110, %106 ], [ %handler_result6, %134 ]
  %142 = phi double [ %109, %106 ], [ %handler_result5, %134 ]
  %143 = icmp eq i32 %112, 0, !dbg !503
  %144 = fdiv double %140, %1, !dbg !503
  %145 = fmul double %141, %144, !dbg !503
  %handler_result7 = call double @fSubHandlerDouble(double %145, double %142), !dbg !503
  %146 = select i1 %143, double %139, double %handler_result7, !dbg !503
  store double %146, ptr %2, align 8, !dbg !515, !tbaa !115
  %147 = tail call double @llvm.fabs.f64(double %146), !dbg !516
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !517
  %149 = load double, ptr %148, align 8, !dbg !517, !tbaa !120
  %150 = fdiv double %149, %110, !dbg !518
  %151 = tail call double @llvm.fabs.f64(double %150), !dbg !519
  %handler_result8 = call double @fAddHandlerDouble(double %151, double 0x3CB0000000000000), !dbg !520
  %152 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !520
  %153 = load double, ptr %152, align 8, !dbg !520, !tbaa !120
  %154 = fdiv double %153, %109, !dbg !521
  %155 = tail call double @llvm.fabs.f64(double %154), !dbg !522
  %handler_result9 = call double @fAddHandlerDouble(double %handler_result8, double %155), !dbg !523
  %156 = fmul double %147, %handler_result9, !dbg !523
  %157 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !524
  store double %156, ptr %157, align 8, !dbg !525, !tbaa !120
  %158 = icmp eq i32 %107, 0, !dbg !526
  %159 = select i1 %158, i32 %108, i32 %107, !dbg !526
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5, !dbg !527
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5, !dbg !527
  br label %160

160:                                              ; preds = %138, %96, %84, %77, %32, %30, %18, %16, %11
  %161 = phi i32 [ 1, %11 ], [ %31, %30 ], [ %33, %32 ], [ %78, %77 ], [ %86, %84 ], [ %98, %96 ], [ %159, %138 ], [ 16, %16 ], [ %19, %18 ], !dbg !528
  ret i32 %161, !dbg !529
}

declare !dbg !530 i32 @gsl_sf_bessel_Ynu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !534 double @sqrt(double noundef) local_unnamed_addr #4

declare !dbg !538 i32 @gsl_sf_bessel_Ynu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_yl_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !dbg !542 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !564
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !565
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !566
  call void @llvm.dbg.assign(metadata i1 undef, metadata !555, metadata !DIExpression(), metadata !566, metadata ptr %6, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !547, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata double %1, metadata !548, metadata !DIExpression()), !dbg !568
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !549, metadata !DIExpression()), !dbg !568
  %7 = icmp slt i32 %0, 0, !dbg !569
  %8 = fcmp ole double %1, 0.000000e+00
  %9 = or i1 %7, %8, !dbg !570
  br i1 %9, label %10, label %11, !dbg !570

10:                                               ; preds = %3
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 237, i32 noundef 1) #5, !dbg !571
  br label %86, !dbg !571

11:                                               ; preds = %3
  %12 = icmp eq i32 %0, 0, !dbg !574
  br i1 %12, label %13, label %24, !dbg !575

13:                                               ; preds = %11
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !565, metadata ptr %5, metadata !DIExpression()), !dbg !576
  call void @llvm.dbg.value(metadata double %1, metadata !99, metadata !DIExpression()), !dbg !578
  call void @llvm.dbg.value(metadata ptr undef, metadata !100, metadata !DIExpression()), !dbg !578
  %14 = fcmp olt double %1, 0x4000000000000, !dbg !579
  br i1 %14, label %15, label %16, !dbg !580

15:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !550, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !581
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !550, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !581
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #5, !dbg !582
  br label %21, !dbg !582

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5, !dbg !583
  %17 = call i32 @gsl_sf_cos_e(double noundef %1, ptr noundef nonnull %5) #5, !dbg !584
  call void @llvm.dbg.value(metadata i32 %17, metadata !105, metadata !DIExpression()), !dbg !576
  %18 = load double, ptr %5, align 8, !dbg !585, !tbaa !115
  %19 = fneg double %18, !dbg !586
  %20 = fdiv double %19, %1, !dbg !587
  tail call void @llvm.dbg.value(metadata double %20, metadata !550, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !581
  tail call void @llvm.dbg.value(metadata double poison, metadata !550, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !581
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5, !dbg !588
  br label %21

21:                                               ; preds = %16, %15
  %22 = phi double [ 0x7FF0000000000000, %15 ], [ %20, %16 ], !dbg !589
  %23 = phi i32 [ 16, %15 ], [ %17, %16 ], !dbg !589
  tail call void @llvm.dbg.value(metadata double %22, metadata !550, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !581
  tail call void @llvm.dbg.value(metadata i32 %23, metadata !554, metadata !DIExpression()), !dbg !581
  store double %22, ptr %2, align 8, !dbg !590, !tbaa !591
  br label %86

24:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5, !dbg !592
  %25 = call i32 @gsl_sf_bessel_y1_e(double noundef %1, ptr noundef nonnull %6), !dbg !593
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !558, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !564, metadata ptr %4, metadata !DIExpression()), !dbg !594
  call void @llvm.dbg.value(metadata double %1, metadata !99, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata ptr undef, metadata !100, metadata !DIExpression()), !dbg !596
  %26 = fcmp olt double %1, 0x4000000000000, !dbg !597
  br i1 %26, label %27, label %28, !dbg !598

27:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !567
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !557, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !567
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #5, !dbg !599
  br label %33, !dbg !599

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5, !dbg !600
  %29 = call i32 @gsl_sf_cos_e(double noundef %1, ptr noundef nonnull %4) #5, !dbg !601
  call void @llvm.dbg.value(metadata i32 %29, metadata !105, metadata !DIExpression()), !dbg !594
  %30 = load double, ptr %4, align 8, !dbg !602, !tbaa !115
  %31 = fneg double %30, !dbg !603
  %32 = fdiv double %31, %1, !dbg !604
  tail call void @llvm.dbg.value(metadata double %32, metadata !557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !567
  tail call void @llvm.dbg.value(metadata double poison, metadata !557, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !567
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5, !dbg !605
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi double [ 0x7FF0000000000000, %27 ], [ %32, %28 ], !dbg !606
  %35 = phi i32 [ 16, %27 ], [ %29, %28 ], !dbg !606
  tail call void @llvm.dbg.value(metadata double %34, metadata !557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !567
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !559, metadata !DIExpression()), !dbg !567
  %36 = load double, ptr %6, align 8, !dbg !607, !tbaa !115
  tail call void @llvm.dbg.value(metadata double %36, metadata !561, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %34, metadata !562, metadata !DIExpression()), !dbg !567
  store double %34, ptr %2, align 8, !dbg !608, !tbaa !591
  %37 = getelementptr inbounds double, ptr %2, i64 1, !dbg !609
  store double %36, ptr %37, align 8, !dbg !610, !tbaa !591
  tail call void @llvm.dbg.value(metadata i32 1, metadata !563, metadata !DIExpression()), !dbg !567
  %38 = icmp eq i32 %0, 1, !dbg !611
  br i1 %38, label %83, label %39, !dbg !614

39:                                               ; preds = %33
  %40 = zext nneg i32 %0 to i64, !dbg !611
  %41 = add nsw i64 %40, -1, !dbg !614
  %42 = and i64 %41, 1, !dbg !614
  %43 = icmp eq i32 %0, 2, !dbg !614
  br i1 %43, label %69, label %44, !dbg !614

44:                                               ; preds = %39
  %45 = and i64 %41, -2, !dbg !614
  br label %46, !dbg !614

46:                                               ; preds = %46, %44
  %47 = phi i64 [ 1, %44 ], [ %65, %46 ]
  %48 = phi double [ %34, %44 ], [ %handler_result, %46 ]
  %49 = phi double [ %36, %44 ], [ %handler_result1, %46 ]
  %50 = phi i64 [ 0, %44 ], [ %67, %46 ]
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !563, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %48, metadata !562, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %49, metadata !561, metadata !DIExpression()), !dbg !567
  %51 = trunc i64 %47 to i32, !dbg !615
  %52 = shl i32 %51, 1, !dbg !615
  %53 = or disjoint i32 %52, 1, !dbg !615
  %54 = sitofp i32 %53 to double, !dbg !615
  %55 = fdiv double %54, %1, !dbg !617
  %56 = fmul double %49, %55, !dbg !618
  %handler_result = call double @fSubHandlerDouble(double %56, double %48), !dbg !619
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !560, metadata !DIExpression()), !dbg !567
  %57 = add nuw nsw i64 %47, 1, !dbg !619
  %58 = getelementptr inbounds double, ptr %2, i64 %57, !dbg !620
  store double %handler_result, ptr %58, align 8, !dbg !621, !tbaa !591
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !563, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %49, metadata !562, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !561, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !563, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %49, metadata !562, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !561, metadata !DIExpression()), !dbg !567
  %59 = trunc i64 %57 to i32, !dbg !615
  %60 = shl i32 %59, 1, !dbg !615
  %61 = or disjoint i32 %60, 1, !dbg !615
  %62 = sitofp i32 %61 to double, !dbg !615
  %63 = fdiv double %62, %1, !dbg !617
  %64 = fmul double %handler_result, %63, !dbg !618
  %handler_result1 = call double @fSubHandlerDouble(double %64, double %49), !dbg !619
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !560, metadata !DIExpression()), !dbg !567
  %65 = add nuw nsw i64 %47, 2, !dbg !619
  %66 = getelementptr inbounds double, ptr %2, i64 %65, !dbg !620
  store double %handler_result1, ptr %66, align 8, !dbg !621, !tbaa !591
  tail call void @llvm.dbg.value(metadata i64 %65, metadata !563, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !562, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !561, metadata !DIExpression()), !dbg !567
  %67 = add i64 %50, 2, !dbg !614
  %68 = icmp eq i64 %67, %45, !dbg !614
  br i1 %68, label %69, label %46, !dbg !614, !llvm.loop !622

69:                                               ; preds = %46, %39
  %70 = phi i64 [ 1, %39 ], [ %65, %46 ]
  %71 = phi double [ %34, %39 ], [ %handler_result, %46 ]
  %72 = phi double [ %36, %39 ], [ %handler_result1, %46 ]
  %73 = icmp eq i64 %42, 0, !dbg !614
  br i1 %73, label %83, label %74, !dbg !614

74:                                               ; preds = %69
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !563, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %71, metadata !562, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %72, metadata !561, metadata !DIExpression()), !dbg !567
  %75 = trunc i64 %70 to i32, !dbg !615
  %76 = shl i32 %75, 1, !dbg !615
  %77 = or disjoint i32 %76, 1, !dbg !615
  %78 = sitofp i32 %77 to double, !dbg !615
  %79 = fdiv double %78, %1, !dbg !617
  %80 = fmul double %72, %79, !dbg !618
  %handler_result2 = call double @fSubHandlerDouble(double %80, double %71), !dbg !620
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !560, metadata !DIExpression()), !dbg !567
  %81 = getelementptr double, ptr %2, i64 %70, !dbg !620
  %82 = getelementptr double, ptr %81, i64 1, !dbg !620
  store double %handler_result2, ptr %82, align 8, !dbg !621, !tbaa !591
  tail call void @llvm.dbg.value(metadata i64 %70, metadata !563, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !567
  tail call void @llvm.dbg.value(metadata double %72, metadata !562, metadata !DIExpression()), !dbg !567
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !561, metadata !DIExpression()), !dbg !567
  br label %83, !dbg !624

83:                                               ; preds = %74, %69, %33
  %84 = icmp eq i32 %35, 0, !dbg !624
  %85 = select i1 %84, i32 %25, i32 %35, !dbg !624
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5, !dbg !625
  br label %86

86:                                               ; preds = %83, %21, %10
  %87 = phi i32 [ 1, %10 ], [ %23, %21 ], [ %85, %83 ], !dbg !626
  ret i32 %87, !dbg !627
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_y0(double noundef %0) local_unnamed_addr #0 !dbg !628 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !635
  tail call void @llvm.dbg.value(metadata double %0, metadata !632, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.assign(metadata i1 undef, metadata !101, metadata !DIExpression(), metadata !635, metadata ptr %2, metadata !DIExpression()), !dbg !637
  call void @llvm.dbg.value(metadata double %0, metadata !99, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.value(metadata ptr undef, metadata !100, metadata !DIExpression()), !dbg !639
  %3 = fcmp ugt double %0, 0.000000e+00, !dbg !640
  br i1 %3, label %5, label %4, !dbg !641

4:                                                ; preds = %1
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !636
  tail call void @llvm.dbg.value(metadata double 0x7FF8000000000000, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !636
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 82, i32 noundef 1) #5, !dbg !642
  br label %14, !dbg !642

5:                                                ; preds = %1
  %6 = fcmp olt double %0, 0x4000000000000, !dbg !643
  br i1 %6, label %7, label %8, !dbg !644

7:                                                ; preds = %5
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !636
  tail call void @llvm.dbg.value(metadata double 0x7FF0000000000000, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !636
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 16) #5, !dbg !645
  br label %14, !dbg !645

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !646
  %9 = call i32 @gsl_sf_cos_e(double noundef %0, ptr noundef nonnull %2) #5, !dbg !647
  call void @llvm.dbg.value(metadata i32 %9, metadata !105, metadata !DIExpression()), !dbg !637
  %10 = load double, ptr %2, align 8, !dbg !648, !tbaa !115
  %11 = fneg double %10, !dbg !649
  %12 = fdiv double %11, %0, !dbg !650
  tail call void @llvm.dbg.value(metadata double %12, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !636
  tail call void @llvm.dbg.value(metadata double poison, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !636
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !651
  tail call void @llvm.dbg.value(metadata double %12, metadata !633, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !636
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !634, metadata !DIExpression()), !dbg !636
  %13 = icmp eq i32 %9, 0, !dbg !652
  br i1 %13, label %17, label %14, !dbg !654

14:                                               ; preds = %8, %7, %4
  %15 = phi i32 [ %9, %8 ], [ 16, %7 ], [ 1, %4 ]
  %16 = phi double [ %12, %8 ], [ 0x7FF0000000000000, %7 ], [ 0x7FF8000000000000, %4 ]
  call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 274, i32 noundef %15) #5, !dbg !655
  br label %17, !dbg !655

17:                                               ; preds = %14, %8
  %18 = phi double [ %12, %8 ], [ %16, %14 ]
  ret double %18, !dbg !658
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_y1(double noundef %0) local_unnamed_addr #0 !dbg !659 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !662, metadata !DIExpression(), metadata !664, metadata ptr %2, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %0, metadata !661, metadata !DIExpression()), !dbg !665
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !666
  %3 = call i32 @gsl_sf_bessel_y1_e(double noundef %0, ptr noundef nonnull %2), !dbg !666
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !663, metadata !DIExpression()), !dbg !665
  %4 = icmp eq i32 %3, 0, !dbg !667
  br i1 %4, label %6, label %5, !dbg !666

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 279, i32 noundef %3) #5, !dbg !669
  br label %6, !dbg !669

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !666, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !672
  ret double %7, !dbg !672
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_y2(double noundef %0) local_unnamed_addr #0 !dbg !673 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !678
  call void @llvm.dbg.assign(metadata i1 undef, metadata !676, metadata !DIExpression(), metadata !678, metadata ptr %2, metadata !DIExpression()), !dbg !679
  tail call void @llvm.dbg.value(metadata double %0, metadata !675, metadata !DIExpression()), !dbg !679
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5, !dbg !680
  %3 = call i32 @gsl_sf_bessel_y2_e(double noundef %0, ptr noundef nonnull %2), !dbg !680
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !677, metadata !DIExpression()), !dbg !679
  %4 = icmp eq i32 %3, 0, !dbg !681
  br i1 %4, label %6, label %5, !dbg !680

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 284, i32 noundef %3) #5, !dbg !683
  br label %6, !dbg !683

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !680, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5, !dbg !686
  ret double %7, !dbg !686
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_yl(i32 noundef %0, double noundef %1) local_unnamed_addr #0 !dbg !687 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !695
  call void @llvm.dbg.assign(metadata i1 undef, metadata !693, metadata !DIExpression(), metadata !695, metadata ptr %3, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !691, metadata !DIExpression()), !dbg !696
  tail call void @llvm.dbg.value(metadata double %1, metadata !692, metadata !DIExpression()), !dbg !696
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5, !dbg !697
  %4 = call i32 @gsl_sf_bessel_yl_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !697
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !694, metadata !DIExpression()), !dbg !696
  %5 = icmp eq i32 %4, 0, !dbg !698
  br i1 %5, label %7, label %6, !dbg !697

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 289, i32 noundef %4) #5, !dbg !700
  br label %7, !dbg !700

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !697, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5, !dbg !703
  ret double %8, !dbg !703
}

declare !dbg !704 double @gsl_sf_pow_int(double noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !708 i32 @gsl_sf_doublefact_e(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!201 = !DILocation(line: 116, column: 63, scope: !160)
!202 = !DILocation(line: 116, column: 55, scope: !160)
!203 = !DILocation(line: 116, column: 47, scope: !160)
!204 = !DILocation(line: 116, column: 39, scope: !160)
!205 = !DILocation(line: 116, column: 31, scope: !160)
!206 = !DILocation(line: 117, column: 19, scope: !160)
!207 = !DILocation(line: 117, column: 23, scope: !160)
!208 = !DILocation(line: 117, column: 17, scope: !160)
!209 = !DILocation(line: 118, column: 37, scope: !160)
!210 = !DILocation(line: 118, column: 35, scope: !160)
!211 = !DILocation(line: 118, column: 13, scope: !160)
!212 = !DILocation(line: 118, column: 17, scope: !160)
!213 = !DILocation(line: 122, column: 5, scope: !172)
!214 = !DILocation(line: 123, column: 5, scope: !172)
!215 = !DILocation(line: 124, column: 26, scope: !172)
!216 = !DILocation(line: 125, column: 26, scope: !172)
!217 = !DILocation(line: 126, column: 34, scope: !172)
!218 = !DILocation(line: 127, column: 34, scope: !172)
!219 = !DILocation(line: 128, column: 24, scope: !172)
!220 = !DILocation(line: 128, column: 20, scope: !172)
!221 = !DILocation(line: 128, column: 32, scope: !172)
!222 = !DILocation(line: 128, column: 18, scope: !172)
!223 = !DILocation(line: 129, column: 37, scope: !172)
!224 = !DILocation(line: 129, column: 40, scope: !172)
!225 = !DILocation(line: 129, column: 21, scope: !172)
!226 = !DILocation(line: 129, column: 57, scope: !172)
!227 = !DILocation(line: 129, column: 62, scope: !172)
!228 = !DILocation(line: 129, column: 61, scope: !172)
!229 = !DILocation(line: 129, column: 13, scope: !172)
!230 = !DILocation(line: 130, column: 46, scope: !172)
!231 = !DILocation(line: 130, column: 39, scope: !172)
!232 = !DILocation(line: 130, column: 62, scope: !172)
!233 = !DILocation(line: 130, column: 59, scope: !172)
!234 = !DILocation(line: 130, column: 52, scope: !172)
!235 = !DILocation(line: 130, column: 36, scope: !172)
!236 = !DILocation(line: 130, column: 17, scope: !172)
!237 = !DILocation(line: 131, column: 12, scope: !172)
!238 = !DILocation(line: 132, column: 3, scope: !161)
!239 = !DILocation(line: 0, scope: !163)
!240 = !DILocation(line: 133, column: 1, scope: !155)
!241 = !DISubprogram(name: "gsl_sf_sin_e", scope: !152, file: !152, line: 45, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!242 = distinct !DISubprogram(name: "gsl_sf_bessel_y2_e", scope: !2, file: !2, line: 136, type: !87, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !243)
!243 = !{!244, !245, !246, !251, !252, !253, !254, !255, !256, !257, !258, !259, !261, !262, !263, !264, !265, !266}
!244 = !DILocalVariable(name: "x", arg: 1, scope: !242, file: !2, line: 136, type: !89)
!245 = !DILocalVariable(name: "result", arg: 2, scope: !242, file: !2, line: 136, type: !91)
!246 = !DILocalVariable(name: "y", scope: !247, file: !2, line: 147, type: !89)
!247 = distinct !DILexicalBlock(scope: !248, file: !2, line: 146, column: 20)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 146, column: 11)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 143, column: 11)
!250 = distinct !DILexicalBlock(scope: !242, file: !2, line: 140, column: 6)
!251 = !DILocalVariable(name: "c1", scope: !247, file: !2, line: 148, type: !89)
!252 = !DILocalVariable(name: "c2", scope: !247, file: !2, line: 149, type: !89)
!253 = !DILocalVariable(name: "c3", scope: !247, file: !2, line: 150, type: !89)
!254 = !DILocalVariable(name: "c4", scope: !247, file: !2, line: 151, type: !89)
!255 = !DILocalVariable(name: "c5", scope: !247, file: !2, line: 152, type: !89)
!256 = !DILocalVariable(name: "c6", scope: !247, file: !2, line: 153, type: !89)
!257 = !DILocalVariable(name: "c7", scope: !247, file: !2, line: 154, type: !89)
!258 = !DILocalVariable(name: "sum", scope: !247, file: !2, line: 155, type: !89)
!259 = !DILocalVariable(name: "cos_result", scope: !260, file: !2, line: 161, type: !92)
!260 = distinct !DILexicalBlock(scope: !248, file: !2, line: 160, column: 8)
!261 = !DILocalVariable(name: "sin_result", scope: !260, file: !2, line: 162, type: !92)
!262 = !DILocalVariable(name: "stat_cos", scope: !260, file: !2, line: 163, type: !106)
!263 = !DILocalVariable(name: "stat_sin", scope: !260, file: !2, line: 164, type: !106)
!264 = !DILocalVariable(name: "sx", scope: !260, file: !2, line: 165, type: !89)
!265 = !DILocalVariable(name: "cx", scope: !260, file: !2, line: 166, type: !89)
!266 = !DILocalVariable(name: "a", scope: !260, file: !2, line: 167, type: !89)
!267 = distinct !DIAssignID()
!268 = !DILocation(line: 0, scope: !260)
!269 = distinct !DIAssignID()
!270 = !DILocation(line: 0, scope: !242)
!271 = !DILocation(line: 140, column: 8, scope: !250)
!272 = !DILocation(line: 140, column: 6, scope: !242)
!273 = !DILocation(line: 141, column: 5, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !2, line: 141, column: 5)
!275 = distinct !DILexicalBlock(scope: !250, file: !2, line: 140, column: 16)
!276 = !DILocation(line: 141, column: 5, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !2, line: 141, column: 5)
!278 = !DILocation(line: 143, column: 13, scope: !249)
!279 = !DILocation(line: 143, column: 11, scope: !250)
!280 = !DILocation(line: 144, column: 5, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !2, line: 144, column: 5)
!282 = distinct !DILexicalBlock(scope: !249, file: !2, line: 143, column: 38)
!283 = !DILocation(line: 144, column: 5, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !2, line: 144, column: 5)
!285 = !DILocation(line: 146, column: 13, scope: !248)
!286 = !DILocation(line: 146, column: 11, scope: !249)
!287 = !DILocation(line: 147, column: 23, scope: !247)
!288 = !DILocation(line: 0, scope: !247)
!289 = !DILocation(line: 155, column: 79, scope: !247)
!290 = !DILocation(line: 155, column: 71, scope: !247)
!291 = !DILocation(line: 155, column: 63, scope: !247)
!292 = !DILocation(line: 155, column: 55, scope: !247)
!293 = !DILocation(line: 155, column: 47, scope: !247)
!294 = !DILocation(line: 155, column: 39, scope: !247)
!295 = !DILocation(line: 155, column: 31, scope: !247)
!296 = !DILocation(line: 156, column: 28, scope: !247)
!297 = !DILocation(line: 156, column: 23, scope: !247)
!298 = !DILocation(line: 156, column: 32, scope: !247)
!299 = !DILocation(line: 156, column: 17, scope: !247)
!300 = !DILocation(line: 157, column: 37, scope: !247)
!301 = !DILocation(line: 157, column: 35, scope: !247)
!302 = !DILocation(line: 157, column: 13, scope: !247)
!303 = !DILocation(line: 157, column: 17, scope: !247)
!304 = !DILocation(line: 161, column: 5, scope: !260)
!305 = !DILocation(line: 162, column: 5, scope: !260)
!306 = !DILocation(line: 163, column: 26, scope: !260)
!307 = !DILocation(line: 164, column: 26, scope: !260)
!308 = !DILocation(line: 165, column: 34, scope: !260)
!309 = !DILocation(line: 166, column: 34, scope: !260)
!310 = !DILocation(line: 167, column: 29, scope: !260)
!311 = !DILocation(line: 167, column: 26, scope: !260)
!312 = !DILocation(line: 168, column: 29, scope: !260)
!313 = !DILocation(line: 168, column: 32, scope: !260)
!314 = !DILocation(line: 168, column: 41, scope: !260)
!315 = !DILocation(line: 168, column: 18, scope: !260)
!316 = !DILocation(line: 169, column: 31, scope: !260)
!317 = !DILocation(line: 169, column: 37, scope: !260)
!318 = !DILocation(line: 169, column: 35, scope: !260)
!319 = !DILocation(line: 169, column: 68, scope: !260)
!320 = !DILocation(line: 169, column: 74, scope: !260)
!321 = !DILocation(line: 169, column: 72, scope: !260)
!322 = !DILocation(line: 169, column: 13, scope: !260)
!323 = !DILocation(line: 170, column: 46, scope: !260)
!324 = !DILocation(line: 170, column: 39, scope: !260)
!325 = !DILocation(line: 170, column: 59, scope: !260)
!326 = !DILocation(line: 170, column: 52, scope: !260)
!327 = !DILocation(line: 170, column: 36, scope: !260)
!328 = !DILocation(line: 170, column: 17, scope: !260)
!329 = !DILocation(line: 171, column: 12, scope: !260)
!330 = !DILocation(line: 172, column: 3, scope: !248)
!331 = !DILocation(line: 0, scope: !250)
!332 = !DILocation(line: 173, column: 1, scope: !242)
!333 = distinct !DISubprogram(name: "gsl_sf_bessel_yl_e", scope: !2, file: !2, line: 176, type: !334, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!40, !40, !89, !91}
!336 = !{!337, !338, !339, !340, !348, !349, !352, !353, !355, !356, !357, !358, !359, !360, !361}
!337 = !DILocalVariable(name: "l", arg: 1, scope: !333, file: !2, line: 176, type: !40)
!338 = !DILocalVariable(name: "x", arg: 2, scope: !333, file: !2, line: 176, type: !89)
!339 = !DILocalVariable(name: "result", arg: 3, scope: !333, file: !2, line: 176, type: !91)
!340 = !DILocalVariable(name: "status", scope: !341, file: !2, line: 196, type: !40)
!341 = distinct !DILexicalBlock(scope: !342, file: !2, line: 195, column: 56)
!342 = distinct !DILexicalBlock(scope: !343, file: !2, line: 195, column: 11)
!343 = distinct !DILexicalBlock(scope: !344, file: !2, line: 192, column: 11)
!344 = distinct !DILexicalBlock(scope: !345, file: !2, line: 189, column: 11)
!345 = distinct !DILexicalBlock(scope: !346, file: !2, line: 186, column: 11)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 183, column: 11)
!347 = distinct !DILexicalBlock(scope: !333, file: !2, line: 180, column: 6)
!348 = !DILocalVariable(name: "pre", scope: !341, file: !2, line: 197, type: !90)
!349 = !DILocalVariable(name: "status", scope: !350, file: !2, line: 203, type: !40)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 202, column: 19)
!351 = distinct !DILexicalBlock(scope: !342, file: !2, line: 202, column: 11)
!352 = !DILocalVariable(name: "pre", scope: !350, file: !2, line: 204, type: !90)
!353 = !DILocalVariable(name: "r_by", scope: !354, file: !2, line: 211, type: !92)
!354 = distinct !DILexicalBlock(scope: !351, file: !2, line: 209, column: 8)
!355 = !DILocalVariable(name: "r_bym", scope: !354, file: !2, line: 212, type: !92)
!356 = !DILocalVariable(name: "stat_1", scope: !354, file: !2, line: 213, type: !40)
!357 = !DILocalVariable(name: "stat_0", scope: !354, file: !2, line: 214, type: !40)
!358 = !DILocalVariable(name: "bym", scope: !354, file: !2, line: 215, type: !90)
!359 = !DILocalVariable(name: "by", scope: !354, file: !2, line: 216, type: !90)
!360 = !DILocalVariable(name: "byp", scope: !354, file: !2, line: 217, type: !90)
!361 = !DILocalVariable(name: "j", scope: !354, file: !2, line: 218, type: !40)
!362 = distinct !DIAssignID()
!363 = distinct !DIAssignID()
!364 = distinct !DIAssignID()
!365 = !DILocation(line: 0, scope: !354)
!366 = distinct !DIAssignID()
!367 = !DILocation(line: 0, scope: !333)
!368 = !DILocation(line: 180, column: 8, scope: !347)
!369 = !DILocation(line: 180, column: 12, scope: !347)
!370 = !DILocation(line: 181, column: 5, scope: !371)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 181, column: 5)
!372 = distinct !DILexicalBlock(scope: !347, file: !2, line: 180, column: 25)
!373 = !DILocation(line: 181, column: 5, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !2, line: 181, column: 5)
!375 = !DILocation(line: 183, column: 11, scope: !347)
!376 = !DILocation(line: 0, scope: !102, inlinedAt: !377)
!377 = distinct !DILocation(line: 184, column: 12, scope: !378)
!378 = distinct !DILexicalBlock(scope: !346, file: !2, line: 183, column: 19)
!379 = !DILocation(line: 0, scope: !86, inlinedAt: !377)
!380 = !DILocation(line: 84, column: 38, scope: !103, inlinedAt: !377)
!381 = !DILocation(line: 84, column: 11, scope: !104, inlinedAt: !377)
!382 = !DILocation(line: 85, column: 5, scope: !126, inlinedAt: !377)
!383 = !DILocation(line: 85, column: 5, scope: !129, inlinedAt: !377)
!384 = !DILocation(line: 88, column: 5, scope: !102, inlinedAt: !377)
!385 = !DILocation(line: 89, column: 22, scope: !102, inlinedAt: !377)
!386 = !DILocation(line: 90, column: 32, scope: !102, inlinedAt: !377)
!387 = !DILocation(line: 90, column: 20, scope: !102, inlinedAt: !377)
!388 = !DILocation(line: 90, column: 35, scope: !102, inlinedAt: !377)
!389 = !DILocation(line: 90, column: 18, scope: !102, inlinedAt: !377)
!390 = !DILocation(line: 91, column: 36, scope: !102, inlinedAt: !377)
!391 = !DILocation(line: 91, column: 39, scope: !102, inlinedAt: !377)
!392 = !DILocation(line: 91, column: 20, scope: !102, inlinedAt: !377)
!393 = !DILocation(line: 91, column: 13, scope: !102, inlinedAt: !377)
!394 = !DILocation(line: 92, column: 44, scope: !102, inlinedAt: !377)
!395 = !DILocation(line: 92, column: 42, scope: !102, inlinedAt: !377)
!396 = !DILocation(line: 92, column: 17, scope: !102, inlinedAt: !377)
!397 = !DILocation(line: 94, column: 3, scope: !103, inlinedAt: !377)
!398 = !DILocation(line: 187, column: 12, scope: !399)
!399 = distinct !DILexicalBlock(scope: !345, file: !2, line: 186, column: 19)
!400 = !DILocation(line: 187, column: 5, scope: !399)
!401 = !DILocation(line: 190, column: 12, scope: !402)
!402 = distinct !DILexicalBlock(scope: !344, file: !2, line: 189, column: 19)
!403 = !DILocation(line: 190, column: 5, scope: !402)
!404 = !DILocation(line: 192, column: 13, scope: !343)
!405 = !DILocation(line: 0, scope: !343)
!406 = !DILocation(line: 192, column: 11, scope: !344)
!407 = !DILocalVariable(name: "num_fact", scope: !408, file: !2, line: 44, type: !92)
!408 = distinct !DISubprogram(name: "bessel_yl_small_x", scope: !2, file: !2, line: 42, type: !334, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !409)
!409 = !{!410, !411, !412, !407, !413, !414, !415, !418, !419, !420, !421, !422, !423}
!410 = !DILocalVariable(name: "l", arg: 1, scope: !408, file: !2, line: 42, type: !40)
!411 = !DILocalVariable(name: "x", arg: 2, scope: !408, file: !2, line: 42, type: !89)
!412 = !DILocalVariable(name: "result", arg: 3, scope: !408, file: !2, line: 42, type: !91)
!413 = !DILocalVariable(name: "den", scope: !408, file: !2, line: 45, type: !90)
!414 = !DILocalVariable(name: "stat_df", scope: !408, file: !2, line: 46, type: !40)
!415 = !DILocalVariable(name: "lmax", scope: !416, file: !2, line: 52, type: !106)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 51, column: 8)
!417 = distinct !DILexicalBlock(scope: !408, file: !2, line: 48, column: 6)
!418 = !DILocalVariable(name: "t", scope: !416, file: !2, line: 53, type: !90)
!419 = !DILocalVariable(name: "sum", scope: !416, file: !2, line: 54, type: !90)
!420 = !DILocalVariable(name: "t_coeff", scope: !416, file: !2, line: 55, type: !90)
!421 = !DILocalVariable(name: "t_power", scope: !416, file: !2, line: 56, type: !90)
!422 = !DILocalVariable(name: "delta", scope: !416, file: !2, line: 57, type: !90)
!423 = !DILocalVariable(name: "i", scope: !416, file: !2, line: 58, type: !40)
!424 = !DILocation(line: 0, scope: !408, inlinedAt: !425)
!425 = distinct !DILocation(line: 193, column: 12, scope: !426)
!426 = distinct !DILexicalBlock(scope: !343, file: !2, line: 192, column: 20)
!427 = !DILocation(line: 44, column: 3, scope: !408, inlinedAt: !425)
!428 = !DILocation(line: 45, column: 16, scope: !408, inlinedAt: !425)
!429 = !DILocation(line: 46, column: 38, scope: !408, inlinedAt: !425)
!430 = !DILocation(line: 46, column: 40, scope: !408, inlinedAt: !425)
!431 = !DILocation(line: 46, column: 17, scope: !408, inlinedAt: !425)
!432 = !DILocation(line: 48, column: 14, scope: !417, inlinedAt: !425)
!433 = !DILocation(line: 48, column: 29, scope: !417, inlinedAt: !425)
!434 = !DILocation(line: 49, column: 5, scope: !435, inlinedAt: !425)
!435 = distinct !DILexicalBlock(scope: !436, file: !2, line: 49, column: 5)
!436 = distinct !DILexicalBlock(scope: !417, file: !2, line: 48, column: 44)
!437 = !DILocation(line: 49, column: 5, scope: !438, inlinedAt: !425)
!438 = distinct !DILexicalBlock(scope: !435, file: !2, line: 49, column: 5)
!439 = !DILocation(line: 0, scope: !416, inlinedAt: !425)
!440 = !DILocation(line: 53, column: 20, scope: !416, inlinedAt: !425)
!441 = !DILocation(line: 53, column: 22, scope: !416, inlinedAt: !425)
!442 = !DILocation(line: 59, column: 5, scope: !443, inlinedAt: !425)
!443 = distinct !DILexicalBlock(scope: !416, file: !2, line: 59, column: 5)
!444 = !DILocation(line: 60, column: 25, scope: !445, inlinedAt: !425)
!445 = distinct !DILexicalBlock(scope: !446, file: !2, line: 59, column: 28)
!446 = distinct !DILexicalBlock(scope: !443, file: !2, line: 59, column: 5)
!447 = !DILocation(line: 60, column: 22, scope: !445, inlinedAt: !425)
!448 = !DILocation(line: 60, column: 29, scope: !445, inlinedAt: !425)
!449 = !DILocation(line: 60, column: 19, scope: !445, inlinedAt: !425)
!450 = !DILocation(line: 60, column: 18, scope: !445, inlinedAt: !425)
!451 = !DILocation(line: 60, column: 15, scope: !445, inlinedAt: !425)
!452 = !DILocation(line: 61, column: 15, scope: !445, inlinedAt: !425)
!453 = !DILocation(line: 62, column: 22, scope: !445, inlinedAt: !425)
!454 = !DILocation(line: 64, column: 20, scope: !455, inlinedAt: !425)
!455 = distinct !DILexicalBlock(scope: !445, file: !2, line: 64, column: 10)
!456 = !DILocation(line: 64, column: 10, scope: !455, inlinedAt: !425)
!457 = !DILocation(line: 64, column: 26, scope: !455, inlinedAt: !425)
!458 = !DILocation(line: 64, column: 10, scope: !445, inlinedAt: !425)
!459 = distinct !{!459, !442, !460, !461}
!460 = !DILocation(line: 65, column: 5, scope: !443, inlinedAt: !425)
!461 = !{!"llvm.loop.mustprogress"}
!462 = !DILocation(line: 66, column: 29, scope: !416, inlinedAt: !425)
!463 = !DILocation(line: 66, column: 19, scope: !416, inlinedAt: !425)
!464 = !DILocation(line: 66, column: 32, scope: !416, inlinedAt: !425)
!465 = !DILocation(line: 66, column: 37, scope: !416, inlinedAt: !425)
!466 = !DILocation(line: 66, column: 17, scope: !416, inlinedAt: !425)
!467 = !DILocation(line: 67, column: 37, scope: !416, inlinedAt: !425)
!468 = !DILocation(line: 67, column: 35, scope: !416, inlinedAt: !425)
!469 = !DILocation(line: 67, column: 13, scope: !416, inlinedAt: !425)
!470 = !DILocation(line: 67, column: 17, scope: !416, inlinedAt: !425)
!471 = !DILocation(line: 0, scope: !417, inlinedAt: !425)
!472 = !DILocation(line: 71, column: 1, scope: !408, inlinedAt: !425)
!473 = !DILocation(line: 193, column: 5, scope: !426)
!474 = !DILocation(line: 195, column: 33, scope: !342)
!475 = !DILocation(line: 195, column: 44, scope: !342)
!476 = !DILocation(line: 195, column: 40, scope: !342)
!477 = !DILocation(line: 195, column: 37, scope: !342)
!478 = !DILocation(line: 195, column: 11, scope: !343)
!479 = !DILocation(line: 196, column: 45, scope: !341)
!480 = !DILocation(line: 196, column: 18, scope: !341)
!481 = !DILocation(line: 0, scope: !341)
!482 = !DILocation(line: 197, column: 33, scope: !341)
!483 = !DILocation(line: 197, column: 18, scope: !341)
!484 = !DILocation(line: 198, column: 17, scope: !341)
!485 = !DILocation(line: 199, column: 13, scope: !341)
!486 = !DILocation(line: 199, column: 17, scope: !341)
!487 = !DILocation(line: 202, column: 13, scope: !351)
!488 = !DILocation(line: 202, column: 11, scope: !342)
!489 = !DILocation(line: 203, column: 50, scope: !350)
!490 = !DILocation(line: 203, column: 18, scope: !350)
!491 = !DILocation(line: 0, scope: !350)
!492 = !DILocation(line: 204, column: 33, scope: !350)
!493 = !DILocation(line: 204, column: 18, scope: !350)
!494 = !DILocation(line: 205, column: 17, scope: !350)
!495 = !DILocation(line: 206, column: 13, scope: !350)
!496 = !DILocation(line: 206, column: 17, scope: !350)
!497 = !DILocation(line: 211, column: 5, scope: !354)
!498 = !DILocation(line: 212, column: 5, scope: !354)
!499 = !DILocation(line: 213, column: 18, scope: !354)
!500 = !DILocation(line: 214, column: 18, scope: !354)
!501 = !DILocation(line: 215, column: 24, scope: !354)
!502 = !DILocation(line: 216, column: 23, scope: !354)
!503 = !DILocation(line: 219, column: 5, scope: !504)
!504 = distinct !DILexicalBlock(scope: !354, file: !2, line: 219, column: 5)
!505 = !DILocation(line: 220, column: 15, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !2, line: 219, column: 24)
!507 = distinct !DILexicalBlock(scope: !504, file: !2, line: 219, column: 5)
!508 = !DILocation(line: 220, column: 17, scope: !506)
!509 = !DILocation(line: 220, column: 13, scope: !506)
!510 = !DILocation(line: 220, column: 20, scope: !506)
!511 = !DILocation(line: 220, column: 22, scope: !506)
!512 = !DILocation(line: 219, column: 20, scope: !507)
!513 = distinct !{!513, !503, !514, !461}
!514 = !DILocation(line: 223, column: 5, scope: !504)
!515 = !DILocation(line: 224, column: 17, scope: !354)
!516 = !DILocation(line: 225, column: 19, scope: !354)
!517 = !DILocation(line: 225, column: 68, scope: !354)
!518 = !DILocation(line: 225, column: 71, scope: !354)
!519 = !DILocation(line: 225, column: 58, scope: !354)
!520 = !DILocation(line: 225, column: 95, scope: !354)
!521 = !DILocation(line: 225, column: 98, scope: !354)
!522 = !DILocation(line: 225, column: 84, scope: !354)
!523 = !DILocation(line: 225, column: 37, scope: !354)
!524 = !DILocation(line: 225, column: 13, scope: !354)
!525 = !DILocation(line: 225, column: 17, scope: !354)
!526 = !DILocation(line: 227, column: 12, scope: !354)
!527 = !DILocation(line: 228, column: 3, scope: !351)
!528 = !DILocation(line: 0, scope: !347)
!529 = !DILocation(line: 229, column: 1, scope: !333)
!530 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asympx_e", scope: !531, file: !531, line: 40, type: !532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!531 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!532 = !DISubroutineType(types: !533)
!533 = !{!40, !89, !89, !91}
!534 = !DISubprogram(name: "sqrt", scope: !535, file: !535, line: 143, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!536 = !DISubroutineType(types: !537)
!537 = !{!90, !90}
!538 = !DISubprogram(name: "gsl_sf_bessel_Ynu_asymp_Olver_e", scope: !539, file: !539, line: 28, type: !540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!539 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!540 = !DISubroutineType(types: !541)
!541 = !{!40, !90, !90, !91}
!542 = distinct !DISubprogram(name: "gsl_sf_bessel_yl_array", scope: !2, file: !2, line: 232, type: !543, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !546)
!543 = !DISubroutineType(types: !544)
!544 = !{!40, !106, !89, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!546 = !{!547, !548, !549, !550, !554, !555, !557, !558, !559, !560, !561, !562, !563}
!547 = !DILocalVariable(name: "lmax", arg: 1, scope: !542, file: !2, line: 232, type: !106)
!548 = !DILocalVariable(name: "x", arg: 2, scope: !542, file: !2, line: 232, type: !89)
!549 = !DILocalVariable(name: "result_array", arg: 3, scope: !542, file: !2, line: 232, type: !545)
!550 = !DILocalVariable(name: "result", scope: !551, file: !2, line: 239, type: !92)
!551 = distinct !DILexicalBlock(scope: !552, file: !2, line: 238, column: 25)
!552 = distinct !DILexicalBlock(scope: !553, file: !2, line: 238, column: 14)
!553 = distinct !DILexicalBlock(scope: !542, file: !2, line: 236, column: 6)
!554 = !DILocalVariable(name: "stat", scope: !551, file: !2, line: 240, type: !40)
!555 = !DILocalVariable(name: "r_yell", scope: !556, file: !2, line: 244, type: !92)
!556 = distinct !DILexicalBlock(scope: !552, file: !2, line: 243, column: 10)
!557 = !DILocalVariable(name: "r_yellm1", scope: !556, file: !2, line: 245, type: !92)
!558 = !DILocalVariable(name: "stat_1", scope: !556, file: !2, line: 246, type: !40)
!559 = !DILocalVariable(name: "stat_0", scope: !556, file: !2, line: 247, type: !40)
!560 = !DILocalVariable(name: "yellp1", scope: !556, file: !2, line: 248, type: !90)
!561 = !DILocalVariable(name: "yell", scope: !556, file: !2, line: 249, type: !90)
!562 = !DILocalVariable(name: "yellm1", scope: !556, file: !2, line: 250, type: !90)
!563 = !DILocalVariable(name: "ell", scope: !556, file: !2, line: 251, type: !40)
!564 = distinct !DIAssignID()
!565 = distinct !DIAssignID()
!566 = distinct !DIAssignID()
!567 = !DILocation(line: 0, scope: !556)
!568 = !DILocation(line: 0, scope: !542)
!569 = !DILocation(line: 236, column: 11, scope: !553)
!570 = !DILocation(line: 236, column: 15, scope: !553)
!571 = !DILocation(line: 237, column: 5, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 237, column: 5)
!573 = distinct !DILexicalBlock(scope: !553, file: !2, line: 236, column: 28)
!574 = !DILocation(line: 238, column: 19, scope: !552)
!575 = !DILocation(line: 238, column: 14, scope: !553)
!576 = !DILocation(line: 0, scope: !102, inlinedAt: !577)
!577 = distinct !DILocation(line: 240, column: 16, scope: !551)
!578 = !DILocation(line: 0, scope: !86, inlinedAt: !577)
!579 = !DILocation(line: 84, column: 38, scope: !103, inlinedAt: !577)
!580 = !DILocation(line: 84, column: 11, scope: !104, inlinedAt: !577)
!581 = !DILocation(line: 0, scope: !551)
!582 = !DILocation(line: 85, column: 5, scope: !129, inlinedAt: !577)
!583 = !DILocation(line: 88, column: 5, scope: !102, inlinedAt: !577)
!584 = !DILocation(line: 89, column: 22, scope: !102, inlinedAt: !577)
!585 = !DILocation(line: 90, column: 32, scope: !102, inlinedAt: !577)
!586 = !DILocation(line: 90, column: 20, scope: !102, inlinedAt: !577)
!587 = !DILocation(line: 90, column: 35, scope: !102, inlinedAt: !577)
!588 = !DILocation(line: 94, column: 3, scope: !103, inlinedAt: !577)
!589 = !DILocation(line: 0, scope: !104, inlinedAt: !577)
!590 = !DILocation(line: 241, column: 21, scope: !551)
!591 = !{!117, !117, i64 0}
!592 = !DILocation(line: 244, column: 5, scope: !556)
!593 = !DILocation(line: 246, column: 18, scope: !556)
!594 = !DILocation(line: 0, scope: !102, inlinedAt: !595)
!595 = distinct !DILocation(line: 247, column: 18, scope: !556)
!596 = !DILocation(line: 0, scope: !86, inlinedAt: !595)
!597 = !DILocation(line: 84, column: 38, scope: !103, inlinedAt: !595)
!598 = !DILocation(line: 84, column: 11, scope: !104, inlinedAt: !595)
!599 = !DILocation(line: 85, column: 5, scope: !129, inlinedAt: !595)
!600 = !DILocation(line: 88, column: 5, scope: !102, inlinedAt: !595)
!601 = !DILocation(line: 89, column: 22, scope: !102, inlinedAt: !595)
!602 = !DILocation(line: 90, column: 32, scope: !102, inlinedAt: !595)
!603 = !DILocation(line: 90, column: 20, scope: !102, inlinedAt: !595)
!604 = !DILocation(line: 90, column: 35, scope: !102, inlinedAt: !595)
!605 = !DILocation(line: 94, column: 3, scope: !103, inlinedAt: !595)
!606 = !DILocation(line: 0, scope: !104, inlinedAt: !595)
!607 = !DILocation(line: 249, column: 28, scope: !556)
!608 = !DILocation(line: 253, column: 21, scope: !556)
!609 = !DILocation(line: 254, column: 5, scope: !556)
!610 = !DILocation(line: 254, column: 21, scope: !556)
!611 = !DILocation(line: 256, column: 22, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !2, line: 256, column: 5)
!613 = distinct !DILexicalBlock(scope: !556, file: !2, line: 256, column: 5)
!614 = !DILocation(line: 256, column: 5, scope: !613)
!615 = !DILocation(line: 257, column: 16, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !2, line: 256, column: 37)
!617 = !DILocation(line: 257, column: 25, scope: !616)
!618 = !DILocation(line: 257, column: 28, scope: !616)
!619 = !DILocation(line: 258, column: 23, scope: !616)
!620 = !DILocation(line: 258, column: 7, scope: !616)
!621 = !DILocation(line: 258, column: 27, scope: !616)
!622 = distinct !{!622, !614, !623, !461}
!623 = !DILocation(line: 261, column: 5, scope: !613)
!624 = !DILocation(line: 263, column: 12, scope: !556)
!625 = !DILocation(line: 264, column: 3, scope: !552)
!626 = !DILocation(line: 0, scope: !553)
!627 = !DILocation(line: 265, column: 1, scope: !542)
!628 = distinct !DISubprogram(name: "gsl_sf_bessel_y0", scope: !2, file: !2, line: 272, type: !629, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!90, !89}
!631 = !{!632, !633, !634}
!632 = !DILocalVariable(name: "x", arg: 1, scope: !628, file: !2, line: 272, type: !89)
!633 = !DILocalVariable(name: "result", scope: !628, file: !2, line: 274, type: !92)
!634 = !DILocalVariable(name: "status", scope: !628, file: !2, line: 274, type: !40)
!635 = distinct !DIAssignID()
!636 = !DILocation(line: 0, scope: !628)
!637 = !DILocation(line: 0, scope: !102, inlinedAt: !638)
!638 = distinct !DILocation(line: 274, column: 3, scope: !628)
!639 = !DILocation(line: 0, scope: !86, inlinedAt: !638)
!640 = !DILocation(line: 81, column: 8, scope: !104, inlinedAt: !638)
!641 = !DILocation(line: 81, column: 6, scope: !86, inlinedAt: !638)
!642 = !DILocation(line: 82, column: 5, scope: !122, inlinedAt: !638)
!643 = !DILocation(line: 84, column: 38, scope: !103, inlinedAt: !638)
!644 = !DILocation(line: 84, column: 11, scope: !104, inlinedAt: !638)
!645 = !DILocation(line: 85, column: 5, scope: !129, inlinedAt: !638)
!646 = !DILocation(line: 88, column: 5, scope: !102, inlinedAt: !638)
!647 = !DILocation(line: 89, column: 22, scope: !102, inlinedAt: !638)
!648 = !DILocation(line: 90, column: 32, scope: !102, inlinedAt: !638)
!649 = !DILocation(line: 90, column: 20, scope: !102, inlinedAt: !638)
!650 = !DILocation(line: 90, column: 35, scope: !102, inlinedAt: !638)
!651 = !DILocation(line: 94, column: 3, scope: !103, inlinedAt: !638)
!652 = !DILocation(line: 274, column: 3, scope: !653)
!653 = distinct !DILexicalBlock(scope: !628, file: !2, line: 274, column: 3)
!654 = !DILocation(line: 274, column: 3, scope: !628)
!655 = !DILocation(line: 274, column: 3, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !2, line: 274, column: 3)
!657 = distinct !DILexicalBlock(scope: !653, file: !2, line: 274, column: 3)
!658 = !DILocation(line: 275, column: 1, scope: !628)
!659 = distinct !DISubprogram(name: "gsl_sf_bessel_y1", scope: !2, file: !2, line: 277, type: !629, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !660)
!660 = !{!661, !662, !663}
!661 = !DILocalVariable(name: "x", arg: 1, scope: !659, file: !2, line: 277, type: !89)
!662 = !DILocalVariable(name: "result", scope: !659, file: !2, line: 279, type: !92)
!663 = !DILocalVariable(name: "status", scope: !659, file: !2, line: 279, type: !40)
!664 = distinct !DIAssignID()
!665 = !DILocation(line: 0, scope: !659)
!666 = !DILocation(line: 279, column: 3, scope: !659)
!667 = !DILocation(line: 279, column: 3, scope: !668)
!668 = distinct !DILexicalBlock(scope: !659, file: !2, line: 279, column: 3)
!669 = !DILocation(line: 279, column: 3, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !2, line: 279, column: 3)
!671 = distinct !DILexicalBlock(scope: !668, file: !2, line: 279, column: 3)
!672 = !DILocation(line: 280, column: 1, scope: !659)
!673 = distinct !DISubprogram(name: "gsl_sf_bessel_y2", scope: !2, file: !2, line: 282, type: !629, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !674)
!674 = !{!675, !676, !677}
!675 = !DILocalVariable(name: "x", arg: 1, scope: !673, file: !2, line: 282, type: !89)
!676 = !DILocalVariable(name: "result", scope: !673, file: !2, line: 284, type: !92)
!677 = !DILocalVariable(name: "status", scope: !673, file: !2, line: 284, type: !40)
!678 = distinct !DIAssignID()
!679 = !DILocation(line: 0, scope: !673)
!680 = !DILocation(line: 284, column: 3, scope: !673)
!681 = !DILocation(line: 284, column: 3, scope: !682)
!682 = distinct !DILexicalBlock(scope: !673, file: !2, line: 284, column: 3)
!683 = !DILocation(line: 284, column: 3, scope: !684)
!684 = distinct !DILexicalBlock(scope: !685, file: !2, line: 284, column: 3)
!685 = distinct !DILexicalBlock(scope: !682, file: !2, line: 284, column: 3)
!686 = !DILocation(line: 285, column: 1, scope: !673)
!687 = distinct !DISubprogram(name: "gsl_sf_bessel_yl", scope: !2, file: !2, line: 287, type: !688, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !36, retainedNodes: !690)
!688 = !DISubroutineType(types: !689)
!689 = !{!90, !106, !89}
!690 = !{!691, !692, !693, !694}
!691 = !DILocalVariable(name: "l", arg: 1, scope: !687, file: !2, line: 287, type: !106)
!692 = !DILocalVariable(name: "x", arg: 2, scope: !687, file: !2, line: 287, type: !89)
!693 = !DILocalVariable(name: "result", scope: !687, file: !2, line: 289, type: !92)
!694 = !DILocalVariable(name: "status", scope: !687, file: !2, line: 289, type: !40)
!695 = distinct !DIAssignID()
!696 = !DILocation(line: 0, scope: !687)
!697 = !DILocation(line: 289, column: 3, scope: !687)
!698 = !DILocation(line: 289, column: 3, scope: !699)
!699 = distinct !DILexicalBlock(scope: !687, file: !2, line: 289, column: 3)
!700 = !DILocation(line: 289, column: 3, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !2, line: 289, column: 3)
!702 = distinct !DILexicalBlock(scope: !699, file: !2, line: 289, column: 3)
!703 = !DILocation(line: 290, column: 1, scope: !687)
!704 = !DISubprogram(name: "gsl_sf_pow_int", scope: !705, file: !705, line: 44, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!705 = !DIFile(filename: "../gsl/gsl_sf_pow_int.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "c3f69b90362612cd9538637a1540d019")
!706 = !DISubroutineType(types: !707)
!707 = !{!90, !89, !106}
!708 = !DISubprogram(name: "gsl_sf_doublefact_e", scope: !709, file: !709, line: 127, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DIFile(filename: "../gsl/gsl_sf_gamma.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "88cc3c2b19ea790e1c6889b01cfd3137")
!710 = !DISubroutineType(types: !711)
!711 = !{!40, !712, !91}
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
