; ModuleID = 'bessel_j.ll'
source_filename = "bessel_j.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_j.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !17
@.str.5 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_j1_e(x, &result)\00", align 1, !dbg !22
@.str.6 = private unnamed_addr constant [31 x i8] c"gsl_sf_bessel_j2_e(x, &result)\00", align 1, !dbg !27
@.str.7 = private unnamed_addr constant [34 x i8] c"gsl_sf_bessel_jl_e(l, x, &result)\00", align 1, !dbg !29

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_j0_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !86 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !99, metadata !DIExpression()), !dbg !111
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !100, metadata !DIExpression()), !dbg !111
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !112
  tail call void @llvm.dbg.value(metadata double %3, metadata !101, metadata !DIExpression()), !dbg !111
  %4 = fcmp olt double %3, 5.000000e-01, !dbg !113
  br i1 %4, label %5, label %13, !dbg !114

5:                                                ; preds = %2
  %6 = fmul double %0, %0, !dbg !115
  tail call void @llvm.dbg.value(metadata double %6, metadata !102, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double 0xBFC5555555555555, metadata !105, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !106, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double 0xBF2A01A01A01A01A, metadata !107, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !108, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double 0xBE5AE64567F544E4, metadata !109, metadata !DIExpression()), !dbg !116
  tail call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !110, metadata !DIExpression()), !dbg !116
  %7 = fmul double %6, 0x3DE6124613A86D09, !dbg !117
  %handler_result = call double @fAddHandlerDouble(double %7, double 0xBE5AE64567F544E4), !dbg !118
  %8 = fmul double %6, %handler_result, !dbg !118
  %handler_result1 = call double @fAddHandlerDouble(double %8, double 0x3EC71DE3A556C734), !dbg !119
  %9 = fmul double %6, %handler_result1, !dbg !119
  %handler_result2 = call double @fAddHandlerDouble(double %9, double 0xBF2A01A01A01A01A), !dbg !120
  %10 = fmul double %6, %handler_result2, !dbg !120
  %handler_result3 = call double @fAddHandlerDouble(double %10, double 0x3F81111111111111), !dbg !121
  %11 = fmul double %6, %handler_result3, !dbg !121
  %handler_result4 = call double @fAddHandlerDouble(double %11, double 0xBFC5555555555555), !dbg !122
  %12 = fmul double %6, %handler_result4, !dbg !122
  %handler_result5 = call double @fAddHandlerDouble(double %12, double 1.000000e+00)
  br label %15

13:                                               ; preds = %2
  %handler_result6 = call double @callHandler(i32 1, double %0, double %0), !dbg !123
  %14 = fdiv double %handler_result6, %0, !dbg !123
  br label %15, !dbg !125

15:                                               ; preds = %13, %5
  %16 = phi double [ %14, %13 ], [ %handler_result5, %5 ]
  %17 = tail call double @llvm.fabs.f64(double %16), !dbg !126
  %18 = fmul double %17, 0x3CC0000000000000, !dbg !126
  store double %16, ptr %1, align 8, !dbg !126
  %19 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !126
  store double %18, ptr %19, align 8, !dbg !126
  ret i32 0, !dbg !127
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !128 double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_j1_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !132 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !134, metadata !DIExpression()), !dbg !151
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !135, metadata !DIExpression()), !dbg !151
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !152
  tail call void @llvm.dbg.value(metadata double %3, metadata !136, metadata !DIExpression()), !dbg !151
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !153
  br i1 %4, label %5, label %6, !dbg !154

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !155
  br label %36, !dbg !157

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x28CCCCCCCCCCCD, !dbg !158
  br i1 %7, label %8, label %10, !dbg !159

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !160, !tbaa !163
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !160
  store double 0x10000000000000, ptr %9, align 8, !dbg !160, !tbaa !168
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef 15) #8, !dbg !169
  br label %36, !dbg !169

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 2.500000e-01, !dbg !171
  br i1 %11, label %12, label %24, !dbg !172

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !173
  tail call void @llvm.dbg.value(metadata double %13, metadata !137, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double -1.000000e-01, metadata !142, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double 0x3F6D41D41D41D41D, metadata !143, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double 0xBF11566ABC011567, metadata !144, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double 0x3EA937E11175F095, metadata !145, metadata !DIExpression()), !dbg !174
  tail call void @llvm.dbg.value(metadata double 0xBE38D48ED61D7AAB, metadata !146, metadata !DIExpression()), !dbg !174
  %14 = fmul double %13, 0x3E38D48ED61D7AAB, !dbg !175
  %handler_result = call double @fSubHandlerDouble(double 0x3EA937E11175F095, double %14), !dbg !176
  %15 = fmul double %13, %handler_result, !dbg !176
  %handler_result1 = call double @fAddHandlerDouble(double %15, double 0xBF11566ABC011567), !dbg !177
  %16 = fmul double %13, %handler_result1, !dbg !177
  %handler_result2 = call double @fAddHandlerDouble(double %16, double 0x3F6D41D41D41D41D), !dbg !178
  %17 = fmul double %13, %handler_result2, !dbg !178
  %handler_result3 = call double @fAddHandlerDouble(double %17, double -1.000000e-01), !dbg !179
  %18 = fmul double %13, %handler_result3, !dbg !179
  %handler_result4 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !180
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !147, metadata !DIExpression()), !dbg !174
  %19 = fdiv double %0, 3.000000e+00, !dbg !180
  %20 = fmul double %19, %handler_result4, !dbg !181
  store double %20, ptr %1, align 8, !dbg !182, !tbaa !163
  %21 = tail call double @llvm.fabs.f64(double %20), !dbg !183
  %22 = fmul double %21, 0x3CC0000000000000, !dbg !184
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !185
  store double %22, ptr %23, align 8, !dbg !186, !tbaa !168
  br label %36

24:                                               ; preds = %10
  %handler_result8 = call double @callHandler(i32 2, double %0, double %0), !dbg !187
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !148, metadata !DIExpression()), !dbg !188
  %handler_result9 = call double @callHandler(i32 1, double %0, double %0), !dbg !189
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !150, metadata !DIExpression()), !dbg !188
  %25 = fdiv double %handler_result9, %0, !dbg !189
  %handler_result5 = call double @fSubHandlerDouble(double %25, double %handler_result8), !dbg !190
  %26 = fdiv double %handler_result5, %0, !dbg !190
  store double %26, ptr %1, align 8, !dbg !191, !tbaa !163
  %27 = fmul double %0, %0, !dbg !192
  %28 = fdiv double %handler_result9, %27, !dbg !193
  %29 = tail call double @llvm.fabs.f64(double %28), !dbg !194
  %30 = fdiv double %handler_result8, %0, !dbg !195
  %31 = tail call double @llvm.fabs.f64(double %30), !dbg !196
  %handler_result6 = call double @fAddHandlerDouble(double %31, double %29), !dbg !197
  %32 = fmul double %handler_result6, 0x3CC0000000000000, !dbg !197
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !198
  %34 = tail call double @llvm.fabs.f64(double %26), !dbg !199
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !200
  %handler_result7 = call double @fAddHandlerDouble(double %32, double %35), !dbg !201
  store double %handler_result7, ptr %33, align 8, !dbg !201, !tbaa !168
  br label %36

36:                                               ; preds = %24, %12, %8, %5
  %37 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %24 ], !dbg !202
  ret i32 %37, !dbg !203
}

declare !dbg !204 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !209 double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_j2_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !210 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !212, metadata !DIExpression()), !dbg !234
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !213, metadata !DIExpression()), !dbg !234
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !235
  tail call void @llvm.dbg.value(metadata double %3, metadata !214, metadata !DIExpression()), !dbg !234
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !236
  br i1 %4, label %5, label %6, !dbg !237

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !238
  br label %44, !dbg !240

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x2020000000000000, !dbg !241
  br i1 %7, label %8, label %10, !dbg !242

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !243, !tbaa !163
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !243
  store double 0x10000000000000, ptr %9, align 8, !dbg !243, !tbaa !168
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 15) #8, !dbg !246
  br label %44, !dbg !246

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 1.300000e+00, !dbg !248
  br i1 %11, label %12, label %28, !dbg !249

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !250
  tail call void @llvm.dbg.value(metadata double %13, metadata !215, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double 0xBFB2492492492492, metadata !220, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double 0x3F60410410410410, metadata !221, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double 0xBEFF85D955D36CBB, metadata !222, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double 0x3E93660F974707D5, metadata !223, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double 0xBE208DB48EBE51C7, metadata !224, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double 0x3DA4C5E79A07EE27, metadata !225, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double 0xBD23FDFBC45C52EA, metadata !226, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double 0x3C9E76D4FA744D95, metadata !227, metadata !DIExpression()), !dbg !251
  tail call void @llvm.dbg.value(metadata double 0xBC12D6775460A6B3, metadata !228, metadata !DIExpression()), !dbg !251
  %14 = fmul double %13, 0x3C12D6775460A6B3, !dbg !252
  %handler_result = call double @fSubHandlerDouble(double 0x3C9E76D4FA744D95, double %14), !dbg !253
  %15 = fmul double %13, %handler_result, !dbg !253
  %handler_result1 = call double @fAddHandlerDouble(double %15, double 0xBD23FDFBC45C52EA), !dbg !254
  %16 = fmul double %13, %handler_result1, !dbg !254
  %handler_result2 = call double @fAddHandlerDouble(double %16, double 0x3DA4C5E79A07EE27), !dbg !255
  %17 = fmul double %13, %handler_result2, !dbg !255
  %handler_result3 = call double @fAddHandlerDouble(double %17, double 0xBE208DB48EBE51C7), !dbg !256
  %18 = fmul double %13, %handler_result3, !dbg !256
  %handler_result4 = call double @fAddHandlerDouble(double %18, double 0x3E93660F974707D5), !dbg !257
  %19 = fmul double %13, %handler_result4, !dbg !257
  %handler_result5 = call double @fAddHandlerDouble(double %19, double 0xBEFF85D955D36CBB), !dbg !258
  %20 = fmul double %13, %handler_result5, !dbg !258
  %handler_result6 = call double @fAddHandlerDouble(double %20, double 0x3F60410410410410), !dbg !259
  %21 = fmul double %13, %handler_result6, !dbg !259
  %handler_result7 = call double @fAddHandlerDouble(double %21, double 0xBFB2492492492492), !dbg !260
  %22 = fmul double %13, %handler_result7, !dbg !260
  %handler_result8 = call double @fAddHandlerDouble(double %22, double 1.000000e+00), !dbg !261
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !229, metadata !DIExpression()), !dbg !251
  %23 = fdiv double %13, 1.500000e+01, !dbg !261
  %24 = fmul double %23, %handler_result8, !dbg !262
  store double %24, ptr %1, align 8, !dbg !263, !tbaa !163
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !264
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !265
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !266
  store double %26, ptr %27, align 8, !dbg !267, !tbaa !168
  br label %44

28:                                               ; preds = %10
  %handler_result13 = call double @callHandler(i32 2, double %0, double %0), !dbg !268
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !230, metadata !DIExpression()), !dbg !269
  %handler_result14 = call double @callHandler(i32 1, double %0, double %0), !dbg !270
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !232, metadata !DIExpression()), !dbg !269
  %29 = fmul double %0, %0, !dbg !270
  %30 = fdiv double 3.000000e+00, %29, !dbg !271
  %handler_result9 = call double @fAddHandlerDouble(double %30, double -1.000000e+00), !dbg !272
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !233, metadata !DIExpression()), !dbg !269
  %31 = fmul double %handler_result9, %handler_result14, !dbg !272
  %32 = fmul double %handler_result13, 3.000000e+00, !dbg !273
  %33 = fdiv double %32, %0, !dbg !274
  %handler_result10 = call double @fSubHandlerDouble(double %31, double %33), !dbg !275
  %34 = fdiv double %handler_result10, %0, !dbg !275
  store double %34, ptr %1, align 8, !dbg !276, !tbaa !163
  %35 = fdiv double %31, %0, !dbg !277
  %36 = tail call double @llvm.fabs.f64(double %35), !dbg !278
  %37 = fdiv double %handler_result13, %29, !dbg !279
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !280
  %39 = fmul double %38, 3.000000e+00, !dbg !281
  %handler_result11 = call double @fAddHandlerDouble(double %39, double %36), !dbg !282
  %40 = fmul double %handler_result11, 0x3CC0000000000000, !dbg !282
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !283
  %42 = tail call double @llvm.fabs.f64(double %34), !dbg !284
  %43 = fmul double %42, 0x3CC0000000000000, !dbg !285
  %handler_result12 = call double @fAddHandlerDouble(double %40, double %43), !dbg !286
  store double %handler_result12, ptr %41, align 8, !dbg !286, !tbaa !168
  br label %44

44:                                               ; preds = %28, %12, %8, %5
  %45 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %28 ], !dbg !287
  ret i32 %45, !dbg !288
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_jl_e(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !289 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !297, metadata !DIExpression(), metadata !340, metadata ptr %4, metadata !DIExpression()), !dbg !341
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !342
  call void @llvm.dbg.assign(metadata i1 undef, metadata !307, metadata !DIExpression(), metadata !342, metadata ptr %5, metadata !DIExpression()), !dbg !343
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !344
  call void @llvm.dbg.assign(metadata i1 undef, metadata !312, metadata !DIExpression(), metadata !344, metadata ptr %6, metadata !DIExpression()), !dbg !345
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !346
  call void @llvm.dbg.assign(metadata i1 undef, metadata !317, metadata !DIExpression(), metadata !346, metadata ptr %7, metadata !DIExpression()), !dbg !347
  %8 = alloca double, align 8, !DIAssignID !348
  call void @llvm.dbg.assign(metadata i1 undef, metadata !322, metadata !DIExpression(), metadata !348, metadata ptr %8, metadata !DIExpression()), !dbg !349
  %9 = alloca double, align 8, !DIAssignID !350
  call void @llvm.dbg.assign(metadata i1 undef, metadata !324, metadata !DIExpression(), metadata !350, metadata ptr %9, metadata !DIExpression()), !dbg !349
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !351
  call void @llvm.dbg.assign(metadata i1 undef, metadata !331, metadata !DIExpression(), metadata !351, metadata ptr %10, metadata !DIExpression()), !dbg !352
  %11 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !353
  call void @llvm.dbg.assign(metadata i1 undef, metadata !336, metadata !DIExpression(), metadata !353, metadata ptr %11, metadata !DIExpression()), !dbg !354
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !294, metadata !DIExpression()), !dbg !355
  tail call void @llvm.dbg.value(metadata double %1, metadata !295, metadata !DIExpression()), !dbg !355
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !296, metadata !DIExpression()), !dbg !355
  %12 = icmp slt i32 %0, 0, !dbg !356
  %13 = fcmp olt double %1, 0.000000e+00
  %14 = or i1 %12, %13, !dbg !357
  br i1 %14, label %15, label %17, !dbg !357

15:                                               ; preds = %3
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !358, !tbaa !163
  %16 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !358
  store double 0x7FF8000000000000, ptr %16, align 8, !dbg !358, !tbaa !168
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 162, i32 noundef 1) #8, !dbg !361
  br label %163, !dbg !361

17:                                               ; preds = %3
  %18 = fcmp oeq double %1, 0.000000e+00, !dbg !363
  br i1 %18, label %19, label %23, !dbg !364

19:                                               ; preds = %17
  %20 = icmp eq i32 %0, 0, !dbg !365
  %21 = select i1 %20, double 1.000000e+00, double 0.000000e+00, !dbg !367
  store double %21, ptr %2, align 8, !dbg !368, !tbaa !163
  %22 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !369
  store double 0.000000e+00, ptr %22, align 8, !dbg !370, !tbaa !168
  br label %163, !dbg !371

23:                                               ; preds = %17
  switch i32 %0, label %46 [
    i32 0, label %24
    i32 1, label %42
    i32 2, label %44
  ], !dbg !372

24:                                               ; preds = %23
  call void @llvm.dbg.value(metadata double %1, metadata !99, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata ptr %2, metadata !100, metadata !DIExpression()), !dbg !373
  %25 = tail call double @llvm.fabs.f64(double %1), !dbg !376
  call void @llvm.dbg.value(metadata double %25, metadata !101, metadata !DIExpression()), !dbg !373
  %26 = fcmp olt double %25, 5.000000e-01, !dbg !377
  br i1 %26, label %27, label %35, !dbg !378

27:                                               ; preds = %24
  %28 = fmul double %1, %1, !dbg !379
  call void @llvm.dbg.value(metadata double %28, metadata !102, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata double 0xBFC5555555555555, metadata !105, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !106, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata double 0xBF2A01A01A01A01A, metadata !107, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !108, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata double 0xBE5AE64567F544E4, metadata !109, metadata !DIExpression()), !dbg !380
  call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !110, metadata !DIExpression()), !dbg !380
  %29 = fmul double %28, 0x3DE6124613A86D09, !dbg !381
  %handler_result = call double @fAddHandlerDouble(double %29, double 0xBE5AE64567F544E4), !dbg !382
  %30 = fmul double %28, %handler_result, !dbg !382
  %handler_result1 = call double @fAddHandlerDouble(double %30, double 0x3EC71DE3A556C734), !dbg !383
  %31 = fmul double %28, %handler_result1, !dbg !383
  %handler_result2 = call double @fAddHandlerDouble(double %31, double 0xBF2A01A01A01A01A), !dbg !384
  %32 = fmul double %28, %handler_result2, !dbg !384
  %handler_result3 = call double @fAddHandlerDouble(double %32, double 0x3F81111111111111), !dbg !385
  %33 = fmul double %28, %handler_result3, !dbg !385
  %handler_result4 = call double @fAddHandlerDouble(double %33, double 0xBFC5555555555555), !dbg !386
  %34 = fmul double %28, %handler_result4, !dbg !386
  %handler_result5 = call double @fAddHandlerDouble(double %34, double 1.000000e+00)
  br label %37

35:                                               ; preds = %24
  %handler_result16 = call double @callHandler(i32 1, double %1, double %1), !dbg !387
  %36 = fdiv double %handler_result16, %1, !dbg !387
  br label %37, !dbg !388

37:                                               ; preds = %35, %27
  %38 = phi double [ %36, %35 ], [ %handler_result5, %27 ]
  %39 = tail call double @llvm.fabs.f64(double %38), !dbg !389
  %40 = fmul double %39, 0x3CC0000000000000, !dbg !389
  store double %38, ptr %2, align 8, !dbg !389
  %41 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !389
  store double %40, ptr %41, align 8, !dbg !389
  br label %163, !dbg !390

42:                                               ; preds = %23
  %43 = tail call i32 @gsl_sf_bessel_j1_e(double noundef %1, ptr noundef %2), !dbg !391, !range !393
  br label %163, !dbg !394

44:                                               ; preds = %23
  %45 = tail call i32 @gsl_sf_bessel_j2_e(double noundef %1, ptr noundef %2), !dbg !395, !range !393
  br label %163, !dbg !397

46:                                               ; preds = %23
  %47 = fmul double %1, %1, !dbg !398
  %48 = sitofp i32 %0 to double, !dbg !399
  %handler_result6 = call double @fAddHandlerDouble(double %48, double 5.000000e-01), !dbg !400
  %49 = fmul double %handler_result6, 1.000000e+01, !dbg !400
  %50 = fdiv double %49, 0x4005BF0A8B145769, !dbg !401
  %51 = fcmp olt double %47, %50, !dbg !402
  br i1 %51, label %52, label %64, !dbg !403

52:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !404
  %53 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %handler_result6, double noundef %1, i32 noundef -1, i32 noundef 50, double noundef 0x3CB0000000000000, ptr noundef nonnull %4) #8, !dbg !405
  tail call void @llvm.dbg.value(metadata i32 %53, metadata !305, metadata !DIExpression()), !dbg !341
  %54 = fdiv double 0x3FF921FB54442D18, %1, !dbg !406
  %55 = call double @sqrt(double noundef %54) #8, !dbg !407
  tail call void @llvm.dbg.value(metadata double %55, metadata !306, metadata !DIExpression()), !dbg !341
  %56 = load double, ptr %4, align 8, !dbg !408, !tbaa !163
  %57 = fmul double %55, %56, !dbg !409
  store double %57, ptr %2, align 8, !dbg !410, !tbaa !163
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !411
  %59 = load double, ptr %58, align 8, !dbg !411, !tbaa !168
  %60 = fmul double %55, %59, !dbg !412
  %61 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !413
  %62 = call double @llvm.fabs.f64(double %57), !dbg !414
  %63 = fmul double %62, 0x3CC0000000000000, !dbg !415
  %handler_result7 = call double @fAddHandlerDouble(double %60, double %63), !dbg !416
  store double %handler_result7, ptr %61, align 8, !dbg !416, !tbaa !168
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !417
  br label %163

64:                                               ; preds = %46
  %65 = fmul double %1, 0x3F20000000000000, !dbg !418
  %66 = mul nsw i32 %0, %0, !dbg !419
  %67 = add nsw i32 %66, %0, !dbg !420
  %68 = sitofp i32 %67 to double, !dbg !421
  %handler_result8 = call double @fAddHandlerDouble(double %68, double 1.000000e+00), !dbg !422
  %69 = fcmp ogt double %65, %handler_result8, !dbg !422
  br i1 %69, label %70, label %82, !dbg !423

70:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !424
  %71 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %handler_result6, double noundef %1, ptr noundef nonnull %5) #8, !dbg !425
  tail call void @llvm.dbg.value(metadata i32 %71, metadata !310, metadata !DIExpression()), !dbg !343
  %72 = fdiv double 0x3FF921FB54442D18, %1, !dbg !426
  %73 = call double @sqrt(double noundef %72) #8, !dbg !427
  tail call void @llvm.dbg.value(metadata double %73, metadata !311, metadata !DIExpression()), !dbg !343
  %74 = load double, ptr %5, align 8, !dbg !428, !tbaa !163
  %75 = fmul double %73, %74, !dbg !429
  store double %75, ptr %2, align 8, !dbg !430, !tbaa !163
  %76 = call double @llvm.fabs.f64(double %75), !dbg !431
  %77 = fmul double %76, 0x3CC0000000000000, !dbg !432
  %78 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !433
  %79 = load double, ptr %78, align 8, !dbg !433, !tbaa !168
  %80 = fmul double %73, %79, !dbg !434
  %handler_result9 = call double @fAddHandlerDouble(double %77, double %80), !dbg !435
  %81 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !435
  store double %handler_result9, ptr %81, align 8, !dbg !436, !tbaa !168
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !437
  br label %163

82:                                               ; preds = %64
  %83 = icmp ugt i32 %0, 406, !dbg !438
  br i1 %83, label %84, label %96, !dbg !439

84:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8, !dbg !440
  %85 = call i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef %handler_result6, double noundef %1, ptr noundef nonnull %6) #8, !dbg !441
  tail call void @llvm.dbg.value(metadata i32 %85, metadata !315, metadata !DIExpression()), !dbg !345
  %86 = fdiv double 0x3FF921FB54442D18, %1, !dbg !442
  %87 = call double @sqrt(double noundef %86) #8, !dbg !443
  tail call void @llvm.dbg.value(metadata double %87, metadata !316, metadata !DIExpression()), !dbg !345
  %88 = load double, ptr %6, align 8, !dbg !444, !tbaa !163
  %89 = fmul double %87, %88, !dbg !445
  store double %89, ptr %2, align 8, !dbg !446, !tbaa !163
  %90 = call double @llvm.fabs.f64(double %89), !dbg !447
  %91 = fmul double %90, 0x3CC0000000000000, !dbg !448
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !449
  %93 = load double, ptr %92, align 8, !dbg !449, !tbaa !168
  %94 = fmul double %87, %93, !dbg !450
  %handler_result10 = call double @fAddHandlerDouble(double %91, double %94), !dbg !451
  %95 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !451
  store double %handler_result10, ptr %95, align 8, !dbg !452, !tbaa !168
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8, !dbg !453
  br label %163

96:                                               ; preds = %82
  %97 = fcmp ogt double %1, 1.000000e+03, !dbg !454
  %98 = sitofp i32 %66 to double
  %99 = fcmp olt double %98, %1
  %100 = and i1 %97, %99, !dbg !455
  br i1 %100, label %101, label %113, !dbg !455

101:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #8, !dbg !456
  %102 = call i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef %handler_result6, double noundef %1, ptr noundef nonnull %7) #8, !dbg !457
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !320, metadata !DIExpression()), !dbg !347
  %103 = fdiv double 0x3FF921FB54442D18, %1, !dbg !458
  %104 = call double @sqrt(double noundef %103) #8, !dbg !459
  tail call void @llvm.dbg.value(metadata double %104, metadata !321, metadata !DIExpression()), !dbg !347
  %105 = load double, ptr %7, align 8, !dbg !460, !tbaa !163
  %106 = fmul double %104, %105, !dbg !461
  store double %106, ptr %2, align 8, !dbg !462, !tbaa !163
  %107 = call double @llvm.fabs.f64(double %106), !dbg !463
  %108 = fmul double %107, 0x3CC0000000000000, !dbg !464
  %109 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !465
  %110 = load double, ptr %109, align 8, !dbg !465, !tbaa !168
  %111 = fmul double %104, %110, !dbg !466
  %handler_result11 = call double @fAddHandlerDouble(double %108, double %111), !dbg !467
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !467
  store double %handler_result11, ptr %112, align 8, !dbg !468, !tbaa !168
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #8, !dbg !469
  br label %163

113:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #8, !dbg !470
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #8, !dbg !471
  %114 = call i32 @gsl_sf_bessel_J_CF1(double noundef %handler_result6, double noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %8) #8, !dbg !472
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !325, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata double 0x350000000000000, metadata !326, metadata !DIExpression()), !dbg !349
  %115 = load double, ptr %9, align 8, !dbg !473, !tbaa !474
  %116 = fmul double %115, 0x350000000000000, !dbg !475
  tail call void @llvm.dbg.value(metadata double %116, metadata !327, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata double 0x350000000000000, metadata !328, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !330, metadata !DIExpression()), !dbg !349
  br label %117, !dbg !476

117:                                              ; preds = %117, %113
  %118 = phi double [ %119, %117 ], [ %116, %113 ]
  %119 = phi double [ %handler_result12, %117 ], [ 0x350000000000000, %113 ]
  %120 = phi i32 [ %126, %117 ], [ %0, %113 ]
  tail call void @llvm.dbg.value(metadata double %118, metadata !327, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata double %119, metadata !328, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !330, metadata !DIExpression()), !dbg !349
  %121 = shl nuw nsw i32 %120, 1, !dbg !478
  %122 = or disjoint i32 %121, 1, !dbg !481
  %123 = sitofp i32 %122 to double, !dbg !482
  %124 = fdiv double %123, %1, !dbg !483
  %125 = fmul double %119, %124, !dbg !484
  %handler_result12 = call double @fSubHandlerDouble(double %125, double %118), !dbg !485
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !329, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata double %119, metadata !327, metadata !DIExpression()), !dbg !349
  tail call void @llvm.dbg.value(metadata double %handler_result12, metadata !328, metadata !DIExpression()), !dbg !349
  %126 = add nsw i32 %120, -1, !dbg !485
  tail call void @llvm.dbg.value(metadata i32 %126, metadata !330, metadata !DIExpression()), !dbg !349
  %127 = icmp ugt i32 %120, 1, !dbg !486
  br i1 %127, label %117, label %128, !dbg !476, !llvm.loop !487

128:                                              ; preds = %117
  %129 = call double @llvm.fabs.f64(double %handler_result12), !dbg !490
  %130 = call double @llvm.fabs.f64(double %119), !dbg !491
  %131 = fcmp ogt double %129, %130, !dbg !492
  %132 = fmul double %48, 5.000000e-01, !dbg !493
  %handler_result13 = call double @fAddHandlerDouble(double %132, double 1.000000e+00), !dbg !493
  %133 = fmul double %handler_result13, 0x3CD0000000000000, !dbg !493
  br i1 %131, label %134, label %145, !dbg !494

134:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8, !dbg !495
  %135 = call i32 @gsl_sf_bessel_j0_e(double noundef %1, ptr noundef nonnull %10), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 0, metadata !334, metadata !DIExpression()), !dbg !352
  %136 = fdiv double 0x350000000000000, %handler_result12, !dbg !497
  tail call void @llvm.dbg.value(metadata double %136, metadata !335, metadata !DIExpression()), !dbg !352
  %137 = load double, ptr %10, align 8, !dbg !498, !tbaa !163
  %138 = fmul double %136, %137, !dbg !499
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !500
  %140 = load double, ptr %139, align 8, !dbg !500, !tbaa !168
  %141 = call double @llvm.fabs.f64(double %136), !dbg !501
  %142 = fmul double %141, %140, !dbg !502
  %143 = call double @llvm.fabs.f64(double %138), !dbg !503
  %144 = fmul double %133, %143, !dbg !504
  %handler_result14 = call double @fAddHandlerDouble(double %142, double %144), !dbg !505
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8, !dbg !505
  br label %158

145:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8, !dbg !506
  %146 = call i32 @gsl_sf_bessel_j1_e(double noundef %1, ptr noundef nonnull %11), !dbg !507, !range !393
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !338, metadata !DIExpression()), !dbg !354
  %147 = fdiv double 0x350000000000000, %119, !dbg !508
  tail call void @llvm.dbg.value(metadata double %147, metadata !339, metadata !DIExpression()), !dbg !354
  %148 = load double, ptr %11, align 8, !dbg !509, !tbaa !163
  %149 = fmul double %147, %148, !dbg !510
  %150 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %11, i64 0, i32 1, !dbg !511
  %151 = load double, ptr %150, align 8, !dbg !511, !tbaa !168
  %152 = call double @llvm.fabs.f64(double %147), !dbg !512
  %153 = fmul double %152, %151, !dbg !513
  %154 = call double @llvm.fabs.f64(double %149), !dbg !514
  %155 = fmul double %133, %154, !dbg !515
  %handler_result15 = call double @fAddHandlerDouble(double %153, double %155), !dbg !516
  %156 = icmp eq i32 %146, 0, !dbg !516
  %157 = select i1 %156, i32 %114, i32 %146, !dbg !516
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8, !dbg !517
  br label %158

158:                                              ; preds = %145, %134
  %159 = phi double [ %138, %134 ], [ %149, %145 ], !dbg !493
  %160 = phi double [ %handler_result14, %134 ], [ %handler_result15, %145 ], !dbg !493
  %161 = phi i32 [ %114, %134 ], [ %157, %145 ], !dbg !493
  store double %159, ptr %2, align 8, !dbg !493
  %162 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !493
  store double %160, ptr %162, align 8, !dbg !493
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #8, !dbg !518
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #8, !dbg !518
  br label %163

163:                                              ; preds = %158, %101, %84, %70, %52, %44, %42, %37, %19, %15
  %164 = phi i32 [ 1, %15 ], [ 0, %19 ], [ 0, %37 ], [ %43, %42 ], [ %45, %44 ], [ %53, %52 ], [ %71, %70 ], [ %85, %84 ], [ %102, %101 ], [ %161, %158 ], !dbg !519
  ret i32 %164, !dbg !520
}

declare !dbg !521 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !525 double @sqrt(double noundef) local_unnamed_addr #3

declare !dbg !526 i32 @gsl_sf_bessel_Jnu_asympx_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !529 i32 @gsl_sf_bessel_Jnu_asymp_Olver_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !533 i32 @gsl_sf_bessel_J_CF1(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_jl_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !537 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !559
  call void @llvm.dbg.assign(metadata i1 undef, metadata !550, metadata !DIExpression(), metadata !559, metadata ptr %4, metadata !DIExpression()), !dbg !560
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !561
  call void @llvm.dbg.assign(metadata i1 undef, metadata !552, metadata !DIExpression(), metadata !561, metadata ptr %5, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !541, metadata !DIExpression()), !dbg !562
  tail call void @llvm.dbg.value(metadata double %1, metadata !542, metadata !DIExpression()), !dbg !562
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !543, metadata !DIExpression()), !dbg !562
  %6 = icmp slt i32 %0, 0, !dbg !563
  %7 = fcmp olt double %1, 0.000000e+00
  %8 = or i1 %6, %7, !dbg !564
  br i1 %8, label %9, label %15, !dbg !564

9:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 0, metadata !544, metadata !DIExpression()), !dbg !565
  br i1 %6, label %14, label %10, !dbg !566

10:                                               ; preds = %9
  %11 = add nuw i32 %0, 1, !dbg !566
  %12 = zext i32 %11 to i64, !dbg !566
  %13 = shl nuw nsw i64 %12, 3, !dbg !566
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %13, i1 false), !dbg !568, !tbaa !474
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !544, metadata !DIExpression()), !dbg !565
  br label %14, !dbg !570

14:                                               ; preds = %10, %9
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 259, i32 noundef 1) #8, !dbg !570
  br label %74

15:                                               ; preds = %3
  %16 = fcmp oeq double %1, 0.000000e+00, !dbg !572
  br i1 %16, label %17, label %24, !dbg !573

17:                                               ; preds = %15
  tail call void @llvm.dbg.value(metadata i32 1, metadata !547, metadata !DIExpression()), !dbg !574
  %18 = icmp eq i32 %0, 0, !dbg !575
  br i1 %18, label %23, label %19, !dbg !578

19:                                               ; preds = %17
  %20 = getelementptr i8, ptr %2, i64 8, !dbg !578
  %21 = zext nneg i32 %0 to i64, !dbg !578
  %22 = shl nuw nsw i64 %21, 3, !dbg !578
  tail call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %22, i1 false), !dbg !579, !tbaa !474
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !547, metadata !DIExpression()), !dbg !574
  br label %23, !dbg !580

23:                                               ; preds = %19, %17
  store double 1.000000e+00, ptr %2, align 8, !dbg !580, !tbaa !474
  br label %74

24:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8, !dbg !581
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8, !dbg !582
  %25 = add nuw nsw i32 %0, 1, !dbg !583
  %26 = call i32 @gsl_sf_bessel_jl_e(i32 noundef %25, double noundef %1, ptr noundef nonnull %4), !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !553, metadata !DIExpression()), !dbg !560
  %27 = call i32 @gsl_sf_bessel_jl_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !585
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !554, metadata !DIExpression()), !dbg !560
  %28 = load double, ptr %4, align 8, !dbg !586, !tbaa !163
  tail call void @llvm.dbg.value(metadata double %28, metadata !555, metadata !DIExpression()), !dbg !560
  %29 = load double, ptr %5, align 8, !dbg !587, !tbaa !163
  tail call void @llvm.dbg.value(metadata double %29, metadata !556, metadata !DIExpression()), !dbg !560
  %30 = zext nneg i32 %0 to i64
  %31 = getelementptr inbounds double, ptr %2, i64 %30, !dbg !588
  store double %29, ptr %31, align 8, !dbg !589, !tbaa !474
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !558, metadata !DIExpression()), !dbg !560
  %32 = getelementptr double, ptr %2, i64 -1, !dbg !590
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !558, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %29, metadata !556, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %28, metadata !555, metadata !DIExpression()), !dbg !560
  %33 = icmp eq i32 %0, 0, !dbg !592
  br i1 %33, label %71, label %34, !dbg !594

34:                                               ; preds = %24
  %35 = and i64 %30, 1, !dbg !594
  %36 = icmp eq i64 %35, 0, !dbg !594
  br i1 %36, label %45, label %37, !dbg !594

37:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !558, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %29, metadata !556, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %28, metadata !555, metadata !DIExpression()), !dbg !560
  %38 = shl nuw nsw i32 %0, 1, !dbg !595
  %39 = or disjoint i32 %38, 1, !dbg !597
  %40 = sitofp i32 %39 to double, !dbg !598
  %41 = fdiv double %40, %1, !dbg !599
  %42 = fmul double %29, %41, !dbg !600
  %handler_result = call double @fSubHandlerDouble(double %42, double %28), !dbg !601
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !557, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %29, metadata !555, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !556, metadata !DIExpression()), !dbg !560
  %43 = getelementptr double, ptr %32, i64 %30, !dbg !601
  store double %handler_result, ptr %43, align 8, !dbg !602, !tbaa !474
  %44 = add nsw i64 %30, -1, !dbg !603
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !558, metadata !DIExpression()), !dbg !560
  br label %45, !dbg !594

45:                                               ; preds = %37, %34
  %46 = phi i64 [ %30, %34 ], [ %44, %37 ]
  %47 = phi double [ %29, %34 ], [ %handler_result, %37 ]
  %48 = phi double [ %28, %34 ], [ %29, %37 ]
  %49 = icmp eq i32 %0, 1, !dbg !594
  br i1 %49, label %71, label %50, !dbg !594

50:                                               ; preds = %50, %45
  %51 = phi i64 [ %69, %50 ], [ %46, %45 ]
  %52 = phi double [ %handler_result2, %50 ], [ %47, %45 ]
  %53 = phi double [ %handler_result1, %50 ], [ %48, %45 ]
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !558, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %52, metadata !556, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %53, metadata !555, metadata !DIExpression()), !dbg !560
  %54 = trunc i64 %51 to i32, !dbg !595
  %55 = shl nuw nsw i32 %54, 1, !dbg !595
  %56 = or disjoint i32 %55, 1, !dbg !597
  %57 = sitofp i32 %56 to double, !dbg !598
  %58 = fdiv double %57, %1, !dbg !599
  %59 = fmul double %52, %58, !dbg !600
  %handler_result1 = call double @fSubHandlerDouble(double %59, double %53), !dbg !601
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !557, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %52, metadata !555, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !556, metadata !DIExpression()), !dbg !560
  %60 = getelementptr double, ptr %32, i64 %51, !dbg !601
  store double %handler_result1, ptr %60, align 8, !dbg !602, !tbaa !474
  %61 = add nsw i64 %51, -1, !dbg !603
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !558, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata i64 %61, metadata !558, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !556, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %52, metadata !555, metadata !DIExpression()), !dbg !560
  %62 = trunc i64 %61 to i32, !dbg !595
  %63 = shl nuw nsw i32 %62, 1, !dbg !595
  %64 = or disjoint i32 %63, 1, !dbg !597
  %65 = sitofp i32 %64 to double, !dbg !598
  %66 = fdiv double %65, %1, !dbg !599
  %67 = fmul double %handler_result1, %66, !dbg !600
  %handler_result2 = call double @fSubHandlerDouble(double %67, double %52), !dbg !601
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !557, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !555, metadata !DIExpression()), !dbg !560
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !556, metadata !DIExpression()), !dbg !560
  %68 = getelementptr double, ptr %32, i64 %61, !dbg !601
  store double %handler_result2, ptr %68, align 8, !dbg !602, !tbaa !474
  %69 = add nsw i64 %51, -2, !dbg !603
  tail call void @llvm.dbg.value(metadata i64 %69, metadata !558, metadata !DIExpression()), !dbg !560
  %70 = icmp ugt i64 %61, 1, !dbg !592
  br i1 %70, label %50, label %71, !dbg !594, !llvm.loop !604

71:                                               ; preds = %50, %45, %24
  %72 = icmp eq i32 %26, 0, !dbg !606
  %73 = select i1 %72, i32 %27, i32 %26, !dbg !606
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8, !dbg !607
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8, !dbg !607
  br label %74

74:                                               ; preds = %71, %23, %14
  %75 = phi i32 [ 1, %14 ], [ 0, %23 ], [ %73, %71 ], !dbg !608
  ret i32 %75, !dbg !609
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_jl_steed_array(i32 noundef %0, double noundef %1, ptr nocapture noundef %2) local_unnamed_addr #4 !dbg !610 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !612, metadata !DIExpression()), !dbg !644
  tail call void @llvm.dbg.value(metadata double %1, metadata !613, metadata !DIExpression()), !dbg !644
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !614, metadata !DIExpression()), !dbg !644
  %4 = icmp slt i32 %0, 0, !dbg !645
  %5 = fcmp olt double %1, 0.000000e+00
  %6 = or i1 %4, %5, !dbg !646
  br i1 %6, label %7, label %13, !dbg !646

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 0, metadata !615, metadata !DIExpression()), !dbg !647
  br i1 %4, label %12, label %8, !dbg !648

8:                                                ; preds = %7
  %9 = add nuw i32 %0, 1, !dbg !648
  %10 = zext i32 %9 to i64, !dbg !648
  %11 = shl nuw nsw i64 %10, 3, !dbg !648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %2, i8 0, i64 %11, i1 false), !dbg !650, !tbaa !474
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !615, metadata !DIExpression()), !dbg !647
  br label %12, !dbg !652

12:                                               ; preds = %8, %7
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 297, i32 noundef 1) #8, !dbg !652
  br label %196

13:                                               ; preds = %3
  %14 = fcmp oeq double %1, 0.000000e+00, !dbg !654
  br i1 %14, label %15, label %22, !dbg !655

15:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i32 1, metadata !618, metadata !DIExpression()), !dbg !656
  %16 = icmp eq i32 %0, 0, !dbg !657
  br i1 %16, label %21, label %17, !dbg !660

17:                                               ; preds = %15
  %18 = getelementptr i8, ptr %2, i64 8, !dbg !660
  %19 = zext nneg i32 %0 to i64, !dbg !660
  %20 = shl nuw nsw i64 %19, 3, !dbg !660
  tail call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 %20, i1 false), !dbg !661, !tbaa !474
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !618, metadata !DIExpression()), !dbg !656
  br label %21, !dbg !662

21:                                               ; preds = %17, %15
  store double 1.000000e+00, ptr %2, align 8, !dbg !662, !tbaa !474
  br label %196

22:                                               ; preds = %13
  %23 = fcmp olt double %1, 0x3F30000000000000, !dbg !663
  br i1 %23, label %24, label %60, !dbg !664

24:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i32 0, metadata !625, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !624, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !621, metadata !DIExpression()), !dbg !665
  %25 = fmul double %1, 5.000000e-01
  %26 = fmul double %25, %1
  %27 = add nuw i32 %0, 1, !dbg !666
  %28 = zext i32 %27 to i64, !dbg !668
  %29 = and i64 %28, 1, !dbg !666
  %30 = icmp eq i32 %0, 0, !dbg !666
  br i1 %30, label %171, label %31, !dbg !666

31:                                               ; preds = %24
  %32 = and i64 %28, 4294967294, !dbg !666
  br label %33, !dbg !666

33:                                               ; preds = %33, %31
  %34 = phi i64 [ 0, %31 ], [ %57, %33 ]
  %35 = phi double [ 1.000000e+00, %31 ], [ %56, %33 ]
  %36 = phi double [ 1.000000e+00, %31 ], [ %55, %33 ]
  %37 = phi i64 [ 0, %31 ], [ %58, %33 ]
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !625, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %35, metadata !624, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %36, metadata !621, metadata !DIExpression()), !dbg !665
  %38 = fmul double %36, %35, !dbg !670
  %39 = getelementptr inbounds double, ptr %2, i64 %34, !dbg !672
  %40 = trunc i64 %34 to i32, !dbg !673
  %41 = sitofp i32 %40 to double, !dbg !673
  %42 = fmul double %41, 2.000000e+00, !dbg !674
  %handler_result = call double @fAddHandlerDouble(double %42, double 3.000000e+00), !dbg !675
  %43 = fdiv double %26, %handler_result, !dbg !675
  %handler_result1 = call double @fSubHandlerDouble(double 1.000000e+00, double %43), !dbg !676
  %44 = fmul double %38, %handler_result1, !dbg !676
  store double %44, ptr %39, align 8, !dbg !676, !tbaa !474
  %45 = fdiv double %36, %handler_result, !dbg !677
  tail call void @llvm.dbg.value(metadata double %45, metadata !621, metadata !DIExpression()), !dbg !665
  %46 = fmul double %35, %1, !dbg !678
  tail call void @llvm.dbg.value(metadata double %46, metadata !624, metadata !DIExpression()), !dbg !665
  %47 = or disjoint i64 %34, 1, !dbg !679
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !625, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !625, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %46, metadata !624, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %45, metadata !621, metadata !DIExpression()), !dbg !665
  %48 = fmul double %45, %46, !dbg !670
  %49 = getelementptr inbounds double, ptr %2, i64 %47, !dbg !672
  %50 = trunc i64 %47 to i32, !dbg !673
  %51 = sitofp i32 %50 to double, !dbg !673
  %52 = fmul double %51, 2.000000e+00, !dbg !674
  %handler_result2 = call double @fAddHandlerDouble(double %52, double 3.000000e+00), !dbg !675
  %53 = fdiv double %26, %handler_result2, !dbg !675
  %handler_result3 = call double @fSubHandlerDouble(double 1.000000e+00, double %53), !dbg !676
  %54 = fmul double %48, %handler_result3, !dbg !676
  store double %54, ptr %49, align 8, !dbg !676, !tbaa !474
  %55 = fdiv double %45, %handler_result2, !dbg !677
  tail call void @llvm.dbg.value(metadata double %55, metadata !621, metadata !DIExpression()), !dbg !665
  %56 = fmul double %46, %1, !dbg !678
  tail call void @llvm.dbg.value(metadata double %56, metadata !624, metadata !DIExpression()), !dbg !665
  %57 = add nuw nsw i64 %34, 2, !dbg !679
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !625, metadata !DIExpression()), !dbg !665
  %58 = add i64 %37, 2, !dbg !666
  %59 = icmp eq i64 %58, %32, !dbg !666
  br i1 %59, label %171, label %33, !dbg !666, !llvm.loop !680

60:                                               ; preds = %22
  %61 = fdiv double 1.000000e+00, %1, !dbg !682
  tail call void @llvm.dbg.value(metadata double %61, metadata !626, metadata !DIExpression()), !dbg !683
  %62 = fmul double %61, 2.000000e+00, !dbg !684
  tail call void @llvm.dbg.value(metadata double %62, metadata !628, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !629, metadata !DIExpression()), !dbg !683
  %63 = sitofp i32 %0 to double, !dbg !685
  %handler_result4 = call double @fAddHandlerDouble(double %63, double 1.000000e+00), !dbg !686
  %64 = fmul double %handler_result4, %61, !dbg !686
  tail call void @llvm.dbg.value(metadata double %64, metadata !630, metadata !DIExpression()), !dbg !683
  %65 = fmul double %64, 2.000000e+00, !dbg !687
  %handler_result5 = call double @fAddHandlerDouble(double %61, double %65), !dbg !688
  tail call void @llvm.dbg.value(metadata double %handler_result5, metadata !631, metadata !DIExpression()), !dbg !683
  %66 = fmul double %62, 2.000000e+04, !dbg !688
  %handler_result6 = call double @fAddHandlerDouble(double %66, double %handler_result5), !dbg !689
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !632, metadata !DIExpression()), !dbg !683
  %67 = fdiv double 1.000000e+00, %handler_result5, !dbg !689
  tail call void @llvm.dbg.value(metadata double %67, metadata !633, metadata !DIExpression()), !dbg !683
  %68 = fneg double %67, !dbg !690
  tail call void @llvm.dbg.value(metadata double %68, metadata !634, metadata !DIExpression()), !dbg !683
  %handler_result7 = call double @fSubHandlerDouble(double %64, double %67), !dbg !691
  tail call void @llvm.dbg.value(metadata double %handler_result7, metadata !630, metadata !DIExpression()), !dbg !683
  br label %69, !dbg !691

69:                                               ; preds = %77, %60
  %70 = phi double [ 1.000000e+00, %60 ], [ %81, %77 ], !dbg !683
  %71 = phi double [ %handler_result7, %60 ], [ %handler_result11, %77 ], !dbg !683
  %72 = phi double [ %handler_result5, %60 ], [ %handler_result8, %77 ], !dbg !683
  %73 = phi double [ %67, %60 ], [ %78, %77 ], !dbg !683
  %74 = phi double [ %68, %60 ], [ %83, %77 ], !dbg !683
  tail call void @llvm.dbg.value(metadata double %74, metadata !634, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %73, metadata !633, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %72, metadata !631, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %71, metadata !630, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %70, metadata !629, metadata !DIExpression()), !dbg !683
  %handler_result8 = call double @fAddHandlerDouble(double %62, double %72), !dbg !692
  tail call void @llvm.dbg.value(metadata double %handler_result8, metadata !631, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double poison, metadata !633, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double poison, metadata !634, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double poison, metadata !630, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double poison, metadata !629, metadata !DIExpression()), !dbg !683
  %75 = fcmp ogt double %handler_result8, %handler_result6, !dbg !692
  br i1 %75, label %76, label %77, !dbg !695

76:                                               ; preds = %69
  tail call void @gsl_error(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 339, i32 noundef 11) #8, !dbg !696
  br label %196, !dbg !696

77:                                               ; preds = %69
  %handler_result9 = call double @fSubHandlerDouble(double %handler_result8, double %73), !dbg !699
  %78 = fdiv double 1.000000e+00, %handler_result9, !dbg !699
  tail call void @llvm.dbg.value(metadata double %78, metadata !633, metadata !DIExpression()), !dbg !683
  %79 = fcmp olt double %78, 0.000000e+00, !dbg !700
  %80 = fneg double %70, !dbg !702
  %81 = select i1 %79, double %80, double %70, !dbg !702
  tail call void @llvm.dbg.value(metadata double %81, metadata !629, metadata !DIExpression()), !dbg !683
  %82 = fmul double %handler_result8, %78, !dbg !703
  %handler_result10 = call double @fAddHandlerDouble(double %82, double -1.000000e+00), !dbg !704
  %83 = fmul double %74, %handler_result10, !dbg !704
  tail call void @llvm.dbg.value(metadata double %83, metadata !634, metadata !DIExpression()), !dbg !683
  %handler_result11 = call double @fAddHandlerDouble(double %71, double %83), !dbg !705
  tail call void @llvm.dbg.value(metadata double %handler_result11, metadata !630, metadata !DIExpression()), !dbg !683
  %84 = tail call double @llvm.fabs.f64(double %83), !dbg !705
  %85 = tail call double @llvm.fabs.f64(double %handler_result11), !dbg !706
  %86 = fmul double %85, 0x3CB0000000000000, !dbg !707
  %87 = fcmp ult double %84, %86, !dbg !708
  br i1 %87, label %88, label %69, !dbg !709, !llvm.loop !710

88:                                               ; preds = %77
  %89 = fmul double %81, %handler_result11, !dbg !712
  tail call void @llvm.dbg.value(metadata double %89, metadata !630, metadata !DIExpression()), !dbg !683
  %90 = icmp sgt i32 %0, 0, !dbg !713
  br i1 %90, label %91, label %135, !dbg !714

91:                                               ; preds = %88
  tail call void @llvm.dbg.value(metadata double %89, metadata !635, metadata !DIExpression()), !dbg !715
  %92 = fmul double %61, %63, !dbg !716
  tail call void @llvm.dbg.value(metadata double %92, metadata !638, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !639, metadata !DIExpression()), !dbg !715
  %93 = zext nneg i32 %0 to i64
  %94 = getelementptr inbounds double, ptr %2, i64 %93, !dbg !717
  store double %81, ptr %94, align 8, !dbg !718, !tbaa !474
  tail call void @llvm.dbg.value(metadata i32 1, metadata !640, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %89, metadata !630, metadata !DIExpression()), !dbg !683
  %95 = zext nneg i32 %0 to i64, !dbg !719
  %96 = shl nuw nsw i64 %95, 3, !dbg !719
  %97 = getelementptr i8, ptr %2, i64 %96, !dbg !719
  %98 = load double, ptr %97, align 8
  %99 = and i32 %0, 1, !dbg !719
  %100 = icmp eq i32 %0, 1, !dbg !719
  br i1 %100, label %120, label %101, !dbg !719

101:                                              ; preds = %91
  %102 = and i32 %0, 2147483646, !dbg !719
  %103 = getelementptr double, ptr %2, i64 -1, !dbg !719
  %104 = getelementptr double, ptr %2, i64 -2, !dbg !719
  br label %105, !dbg !719

105:                                              ; preds = %105, %101
  %106 = phi double [ %98, %101 ], [ %handler_result15, %105 ]
  %107 = phi i64 [ %95, %101 ], [ %117, %105 ]
  %108 = phi double [ %92, %101 ], [ %handler_result17, %105 ]
  %109 = phi double [ %89, %101 ], [ %handler_result16, %105 ]
  %110 = phi i32 [ 0, %101 ], [ %118, %105 ]
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !640, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !639, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %108, metadata !638, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %109, metadata !635, metadata !DIExpression()), !dbg !715
  %111 = fmul double %108, %106, !dbg !721
  %handler_result12 = call double @fAddHandlerDouble(double %109, double %111), !dbg !724
  %112 = getelementptr double, ptr %103, i64 %107, !dbg !724
  store double %handler_result12, ptr %112, align 8, !dbg !725, !tbaa !474
  %113 = fmul double %108, %handler_result12, !dbg !726
  %handler_result13 = call double @fSubHandlerDouble(double %113, double %106), !dbg !727
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !630, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !635, metadata !DIExpression()), !dbg !715
  %handler_result14 = call double @fSubHandlerDouble(double %108, double %61), !dbg !721
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !638, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !639, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !715
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !640, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !715
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !640, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !639, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !715
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !638, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !635, metadata !DIExpression()), !dbg !715
  %114 = fmul double %handler_result14, %handler_result12, !dbg !721
  %handler_result15 = call double @fAddHandlerDouble(double %handler_result13, double %114), !dbg !724
  %115 = getelementptr double, ptr %104, i64 %107, !dbg !724
  store double %handler_result15, ptr %115, align 8, !dbg !725, !tbaa !474
  %116 = fmul double %handler_result14, %handler_result15, !dbg !726
  %handler_result16 = call double @fSubHandlerDouble(double %116, double %handler_result12), !dbg !727
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !630, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %handler_result16, metadata !635, metadata !DIExpression()), !dbg !715
  %handler_result17 = call double @fSubHandlerDouble(double %handler_result14, double %61), !dbg !728
  tail call void @llvm.dbg.value(metadata double %handler_result17, metadata !638, metadata !DIExpression()), !dbg !715
  %117 = add nsw i64 %107, -2, !dbg !728
  tail call void @llvm.dbg.value(metadata i64 %117, metadata !639, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !640, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !715
  %118 = add i32 %110, 2, !dbg !719
  %119 = icmp eq i32 %118, %102, !dbg !719
  br i1 %119, label %120, label %105, !dbg !719, !llvm.loop !729

120:                                              ; preds = %105, %91
  %121 = phi double [ undef, %91 ], [ %handler_result16, %105 ]
  %122 = phi double [ %98, %91 ], [ %handler_result15, %105 ]
  %123 = phi i64 [ %95, %91 ], [ %117, %105 ]
  %124 = phi double [ %92, %91 ], [ %handler_result17, %105 ]
  %125 = phi double [ %89, %91 ], [ %handler_result16, %105 ]
  %126 = icmp eq i32 %99, 0, !dbg !719
  br i1 %126, label %132, label %127, !dbg !719

127:                                              ; preds = %120
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !640, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !639, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %124, metadata !638, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double %125, metadata !635, metadata !DIExpression()), !dbg !715
  %128 = getelementptr inbounds double, ptr %2, i64 %123, !dbg !731
  %129 = fmul double %124, %122, !dbg !721
  %handler_result18 = call double @fAddHandlerDouble(double %125, double %129), !dbg !724
  %130 = getelementptr double, ptr %128, i64 -1, !dbg !724
  store double %handler_result18, ptr %130, align 8, !dbg !725, !tbaa !474
  %131 = fmul double %124, %handler_result18, !dbg !726
  %handler_result19 = call double @fSubHandlerDouble(double %131, double %122), !dbg !732
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !630, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %handler_result19, metadata !635, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata double poison, metadata !638, metadata !DIExpression()), !dbg !715
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !639, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !715
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !640, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !715
  br label %132, !dbg !732

132:                                              ; preds = %127, %120
  %133 = phi double [ %121, %120 ], [ %handler_result19, %127 ], !dbg !733
  %134 = load double, ptr %2, align 8, !dbg !732, !tbaa !474
  tail call void @llvm.dbg.value(metadata double %134, metadata !629, metadata !DIExpression()), !dbg !683
  br label %135, !dbg !734

135:                                              ; preds = %132, %88
  %136 = phi double [ %134, %132 ], [ %81, %88 ], !dbg !683
  %137 = phi double [ %133, %132 ], [ %89, %88 ], !dbg !712
  tail call void @llvm.dbg.value(metadata double %137, metadata !630, metadata !DIExpression()), !dbg !683
  tail call void @llvm.dbg.value(metadata double %136, metadata !629, metadata !DIExpression()), !dbg !683
  %138 = tail call double @hypot(double noundef %137, double noundef %136) #8, !dbg !735
  %139 = fdiv double %61, %138, !dbg !736
  tail call void @llvm.dbg.value(metadata double %139, metadata !628, metadata !DIExpression()), !dbg !683
  %140 = fmul double %136, %139, !dbg !737
  store double %140, ptr %2, align 8, !dbg !738, !tbaa !474
  br i1 %90, label %141, label %196, !dbg !739

141:                                              ; preds = %135
  %142 = add nuw i32 %0, 1, !dbg !740
  %143 = zext i32 %142 to i64, !dbg !742
  %144 = add nsw i64 %143, -1, !dbg !740
  %145 = add nsw i64 %143, -2, !dbg !740
  %146 = and i64 %144, 3, !dbg !740
  %147 = icmp ult i64 %145, 3, !dbg !740
  br i1 %147, label %184, label %148, !dbg !740

148:                                              ; preds = %141
  %149 = and i64 %144, -4, !dbg !740
  %150 = getelementptr double, ptr %2, i64 1, !dbg !740
  %151 = getelementptr double, ptr %2, i64 2, !dbg !740
  %152 = getelementptr double, ptr %2, i64 3, !dbg !740
  br label %153, !dbg !740

153:                                              ; preds = %153, %148
  %154 = phi i64 [ 1, %148 ], [ %168, %153 ]
  %155 = phi i64 [ 0, %148 ], [ %169, %153 ]
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !641, metadata !DIExpression()), !dbg !744
  %156 = getelementptr inbounds double, ptr %2, i64 %154, !dbg !745
  %157 = load double, ptr %156, align 8, !dbg !747, !tbaa !474
  %158 = fmul double %139, %157, !dbg !747
  store double %158, ptr %156, align 8, !dbg !747, !tbaa !474
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !641, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !744
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !641, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !744
  %159 = getelementptr double, ptr %150, i64 %154, !dbg !745
  %160 = load double, ptr %159, align 8, !dbg !747, !tbaa !474
  %161 = fmul double %139, %160, !dbg !747
  store double %161, ptr %159, align 8, !dbg !747, !tbaa !474
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !641, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !744
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !641, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !744
  %162 = getelementptr double, ptr %151, i64 %154, !dbg !745
  %163 = load double, ptr %162, align 8, !dbg !747, !tbaa !474
  %164 = fmul double %139, %163, !dbg !747
  store double %164, ptr %162, align 8, !dbg !747, !tbaa !474
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !641, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !744
  tail call void @llvm.dbg.value(metadata i64 %154, metadata !641, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !744
  %165 = getelementptr double, ptr %152, i64 %154, !dbg !745
  %166 = load double, ptr %165, align 8, !dbg !747, !tbaa !474
  %167 = fmul double %139, %166, !dbg !747
  store double %167, ptr %165, align 8, !dbg !747, !tbaa !474
  %168 = add nuw nsw i64 %154, 4, !dbg !748
  tail call void @llvm.dbg.value(metadata i64 %168, metadata !641, metadata !DIExpression()), !dbg !744
  %169 = add i64 %155, 4, !dbg !740
  %170 = icmp eq i64 %169, %149, !dbg !740
  br i1 %170, label %184, label %153, !dbg !740, !llvm.loop !749

171:                                              ; preds = %33, %24
  %172 = phi i64 [ 0, %24 ], [ %57, %33 ]
  %173 = phi double [ 1.000000e+00, %24 ], [ %56, %33 ]
  %174 = phi double [ 1.000000e+00, %24 ], [ %55, %33 ]
  %175 = icmp eq i64 %29, 0, !dbg !666
  br i1 %175, label %196, label %176, !dbg !666

176:                                              ; preds = %171
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !625, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %173, metadata !624, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double %174, metadata !621, metadata !DIExpression()), !dbg !665
  %177 = fmul double %174, %173, !dbg !670
  %178 = getelementptr inbounds double, ptr %2, i64 %172, !dbg !672
  %179 = trunc i64 %172 to i32, !dbg !673
  %180 = sitofp i32 %179 to double, !dbg !673
  %181 = fmul double %180, 2.000000e+00, !dbg !674
  %handler_result20 = call double @fAddHandlerDouble(double %181, double 3.000000e+00), !dbg !675
  %182 = fdiv double %26, %handler_result20, !dbg !675
  %handler_result21 = call double @fSubHandlerDouble(double 1.000000e+00, double %182), !dbg !676
  %183 = fmul double %177, %handler_result21, !dbg !676
  store double %183, ptr %178, align 8, !dbg !676, !tbaa !474
  tail call void @llvm.dbg.value(metadata double poison, metadata !621, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata double poison, metadata !624, metadata !DIExpression()), !dbg !665
  tail call void @llvm.dbg.value(metadata i64 %172, metadata !625, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !665
  br label %196, !dbg !751

184:                                              ; preds = %153, %141
  %185 = phi i64 [ 1, %141 ], [ %168, %153 ]
  %186 = icmp eq i64 %146, 0, !dbg !740
  br i1 %186, label %196, label %187, !dbg !740

187:                                              ; preds = %187, %184
  %188 = phi i64 [ %193, %187 ], [ %185, %184 ]
  %189 = phi i64 [ %194, %187 ], [ 0, %184 ]
  tail call void @llvm.dbg.value(metadata i64 %188, metadata !641, metadata !DIExpression()), !dbg !744
  %190 = getelementptr inbounds double, ptr %2, i64 %188, !dbg !745
  %191 = load double, ptr %190, align 8, !dbg !747, !tbaa !474
  %192 = fmul double %139, %191, !dbg !747
  store double %192, ptr %190, align 8, !dbg !747, !tbaa !474
  %193 = add nuw nsw i64 %188, 1, !dbg !748
  tail call void @llvm.dbg.value(metadata i64 %193, metadata !641, metadata !DIExpression()), !dbg !744
  %194 = add i64 %189, 1, !dbg !740
  %195 = icmp eq i64 %194, %146, !dbg !740
  br i1 %195, label %196, label %187, !dbg !740, !llvm.loop !752

196:                                              ; preds = %187, %184, %176, %171, %135, %76, %21, %12
  %197 = phi i32 [ 1, %12 ], [ 0, %21 ], [ 11, %76 ], [ 0, %135 ], [ 0, %171 ], [ 0, %176 ], [ 0, %187 ], [ 0, %184 ], !dbg !754
  ret i32 %197, !dbg !751
}

; Function Attrs: nounwind
declare !dbg !755 double @hypot(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gsl_sf_bessel_j0(double noundef %0) local_unnamed_addr #0 !dbg !758 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !762, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.value(metadata double %0, metadata !99, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata ptr undef, metadata !100, metadata !DIExpression()), !dbg !766
  %2 = tail call double @llvm.fabs.f64(double %0), !dbg !768
  call void @llvm.dbg.value(metadata double %2, metadata !101, metadata !DIExpression()), !dbg !766
  %3 = fcmp olt double %2, 5.000000e-01, !dbg !769
  br i1 %3, label %4, label %12, !dbg !770

4:                                                ; preds = %1
  %5 = fmul double %0, %0, !dbg !771
  call void @llvm.dbg.value(metadata double %5, metadata !102, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata double 0xBFC5555555555555, metadata !105, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !106, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata double 0xBF2A01A01A01A01A, metadata !107, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !108, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata double 0xBE5AE64567F544E4, metadata !109, metadata !DIExpression()), !dbg !772
  call void @llvm.dbg.value(metadata double 0x3DE6124613A86D09, metadata !110, metadata !DIExpression()), !dbg !772
  %6 = fmul double %5, 0x3DE6124613A86D09, !dbg !773
  %handler_result = call double @fAddHandlerDouble(double %6, double 0xBE5AE64567F544E4), !dbg !774
  %7 = fmul double %5, %handler_result, !dbg !774
  %handler_result1 = call double @fAddHandlerDouble(double %7, double 0x3EC71DE3A556C734), !dbg !775
  %8 = fmul double %5, %handler_result1, !dbg !775
  %handler_result2 = call double @fAddHandlerDouble(double %8, double 0xBF2A01A01A01A01A), !dbg !776
  %9 = fmul double %5, %handler_result2, !dbg !776
  %handler_result3 = call double @fAddHandlerDouble(double %9, double 0x3F81111111111111), !dbg !777
  %10 = fmul double %5, %handler_result3, !dbg !777
  %handler_result4 = call double @fAddHandlerDouble(double %10, double 0xBFC5555555555555), !dbg !778
  %11 = fmul double %5, %handler_result4, !dbg !778
  %handler_result5 = call double @fAddHandlerDouble(double %11, double 1.000000e+00)
  br label %14

12:                                               ; preds = %1
  %handler_result6 = call double @callHandler(i32 1, double %0, double %0), !dbg !779
  %13 = fdiv double %handler_result6, %0, !dbg !779
  br label %14, !dbg !780

14:                                               ; preds = %12, %4
  %15 = phi double [ %13, %12 ], [ %handler_result5, %4 ]
  tail call void @llvm.dbg.value(metadata double %15, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !765
  tail call void @llvm.dbg.value(metadata double poison, metadata !763, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !765
  tail call void @llvm.dbg.value(metadata i32 0, metadata !764, metadata !DIExpression()), !dbg !765
  ret double %15, !dbg !781
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_j1(double noundef %0) local_unnamed_addr #4 !dbg !782 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !784, metadata !DIExpression()), !dbg !787
  call void @llvm.dbg.value(metadata double %0, metadata !134, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata ptr undef, metadata !135, metadata !DIExpression()), !dbg !788
  %2 = tail call double @llvm.fabs.f64(double %0), !dbg !790
  call void @llvm.dbg.value(metadata double %2, metadata !136, metadata !DIExpression()), !dbg !788
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !791
  br i1 %3, label %21, label %4, !dbg !792

4:                                                ; preds = %1
  %5 = fcmp olt double %2, 0x28CCCCCCCCCCCD, !dbg !793
  br i1 %5, label %20, label %6, !dbg !794

6:                                                ; preds = %4
  %7 = fcmp olt double %2, 2.500000e-01, !dbg !795
  br i1 %7, label %8, label %17, !dbg !796

8:                                                ; preds = %6
  %9 = fmul double %0, %0, !dbg !797
  call void @llvm.dbg.value(metadata double %9, metadata !137, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata double -1.000000e-01, metadata !142, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata double 0x3F6D41D41D41D41D, metadata !143, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata double 0xBF11566ABC011567, metadata !144, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata double 0x3EA937E11175F095, metadata !145, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata double 0xBE38D48ED61D7AAB, metadata !146, metadata !DIExpression()), !dbg !798
  %10 = fmul double %9, 0x3E38D48ED61D7AAB, !dbg !799
  %handler_result = call double @fSubHandlerDouble(double 0x3EA937E11175F095, double %10), !dbg !800
  %11 = fmul double %9, %handler_result, !dbg !800
  %handler_result1 = call double @fAddHandlerDouble(double %11, double 0xBF11566ABC011567), !dbg !801
  %12 = fmul double %9, %handler_result1, !dbg !801
  %handler_result2 = call double @fAddHandlerDouble(double %12, double 0x3F6D41D41D41D41D), !dbg !802
  %13 = fmul double %9, %handler_result2, !dbg !802
  %handler_result3 = call double @fAddHandlerDouble(double %13, double -1.000000e-01), !dbg !803
  %14 = fmul double %9, %handler_result3, !dbg !803
  %handler_result4 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !804
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !147, metadata !DIExpression()), !dbg !798
  %15 = fdiv double %0, 3.000000e+00, !dbg !804
  %16 = fmul double %15, %handler_result4, !dbg !805
  tail call void @llvm.dbg.value(metadata double %16, metadata !785, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !787
  tail call void @llvm.dbg.value(metadata double poison, metadata !785, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !787
  br label %21

17:                                               ; preds = %6
  %handler_result6 = call double @callHandler(i32 2, double %0, double %0), !dbg !806
  call void @llvm.dbg.value(metadata double %handler_result6, metadata !148, metadata !DIExpression()), !dbg !807
  %handler_result7 = call double @callHandler(i32 1, double %0, double %0), !dbg !808
  call void @llvm.dbg.value(metadata double %handler_result7, metadata !150, metadata !DIExpression()), !dbg !807
  %18 = fdiv double %handler_result7, %0, !dbg !808
  %handler_result5 = call double @fSubHandlerDouble(double %18, double %handler_result6), !dbg !809
  %19 = fdiv double %handler_result5, %0, !dbg !809
  tail call void @llvm.dbg.value(metadata double %19, metadata !785, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !787
  tail call void @llvm.dbg.value(metadata double poison, metadata !785, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !787
  br label %21

20:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !785, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !787
  tail call void @llvm.dbg.value(metadata double 0x10000000000000, metadata !785, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !787
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 74, i32 noundef 15) #8, !dbg !810
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !785, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !787
  tail call void @llvm.dbg.value(metadata i32 15, metadata !786, metadata !DIExpression()), !dbg !787
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 389, i32 noundef 15) #8, !dbg !811
  br label %21, !dbg !811

21:                                               ; preds = %20, %17, %8, %1
  %22 = phi double [ 0.000000e+00, %20 ], [ 0.000000e+00, %1 ], [ %19, %17 ], [ %16, %8 ]
  ret double %22, !dbg !815
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_j2(double noundef %0) local_unnamed_addr #4 !dbg !816 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !821
  call void @llvm.dbg.assign(metadata i1 undef, metadata !819, metadata !DIExpression(), metadata !821, metadata ptr %2, metadata !DIExpression()), !dbg !822
  tail call void @llvm.dbg.value(metadata double %0, metadata !818, metadata !DIExpression()), !dbg !822
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8, !dbg !823
  %3 = call i32 @gsl_sf_bessel_j2_e(double noundef %0, ptr noundef nonnull %2), !dbg !823, !range !393
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !820, metadata !DIExpression()), !dbg !822
  %4 = icmp eq i32 %3, 0, !dbg !824
  br i1 %4, label %6, label %5, !dbg !823

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 394, i32 noundef %3) #8, !dbg !826
  br label %6, !dbg !826

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !823, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8, !dbg !829
  ret double %7, !dbg !829
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_jl(i32 noundef %0, double noundef %1) local_unnamed_addr #4 !dbg !830 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !838
  call void @llvm.dbg.assign(metadata i1 undef, metadata !836, metadata !DIExpression(), metadata !838, metadata ptr %3, metadata !DIExpression()), !dbg !839
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !834, metadata !DIExpression()), !dbg !839
  tail call void @llvm.dbg.value(metadata double %1, metadata !835, metadata !DIExpression()), !dbg !839
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8, !dbg !840
  %4 = call i32 @gsl_sf_bessel_jl_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !837, metadata !DIExpression()), !dbg !839
  %5 = icmp eq i32 %4, 0, !dbg !841
  br i1 %5, label %7, label %6, !dbg !840

6:                                                ; preds = %2
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 399, i32 noundef %4) #8, !dbg !843
  br label %7, !dbg !843

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !840, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8, !dbg !846
  ret double %8, !dbg !846
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare double @fAddHandlerDouble(double, double)

declare double @callHandler(i32, double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_j.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "dd18bb091bea2c60db7ff483c4c6603d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 162, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 259, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 6)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 389, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 31)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 394, type: !24, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 34)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, globals: !75, splitDebugInlining: false, nameTableKind: None)
!35 = !{!36}
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 39, baseType: !38, size: 32, elements: !39)
!37 = !DIFile(filename: "../gsl/gsl_errno.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "3ff14ff6df19564f3d7caf1e8e622626")
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
!75 = !{!0, !7, !12, !17, !76, !22, !27, !29}
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !24, isLocal: true, isDefinition: true)
!78 = !{i32 7, !"Dwarf Version", i32 5}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"wchar_size", i32 4}
!81 = !{i32 8, !"PIC Level", i32 2}
!82 = !{i32 7, !"PIE Level", i32 2}
!83 = !{i32 7, !"uwtable", i32 2}
!84 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!85 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!86 = distinct !DISubprogram(name: "gsl_sf_bessel_j0_e", scope: !2, file: !2, line: 36, type: !87, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !98)
!87 = !DISubroutineType(types: !88)
!88 = !{!38, !89, !91}
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !93, line: 41, baseType: !94)
!93 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !93, line: 37, size: 128, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !94, file: !93, line: 38, baseType: !90, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !94, file: !93, line: 39, baseType: !90, size: 64, offset: 64)
!98 = !{!99, !100, !101, !102, !105, !106, !107, !108, !109, !110}
!99 = !DILocalVariable(name: "x", arg: 1, scope: !86, file: !2, line: 36, type: !89)
!100 = !DILocalVariable(name: "result", arg: 2, scope: !86, file: !2, line: 36, type: !91)
!101 = !DILocalVariable(name: "ax", scope: !86, file: !2, line: 38, type: !90)
!102 = !DILocalVariable(name: "y", scope: !103, file: !2, line: 43, type: !89)
!103 = distinct !DILexicalBlock(scope: !104, file: !2, line: 42, column: 16)
!104 = distinct !DILexicalBlock(scope: !86, file: !2, line: 42, column: 6)
!105 = !DILocalVariable(name: "c1", scope: !103, file: !2, line: 44, type: !89)
!106 = !DILocalVariable(name: "c2", scope: !103, file: !2, line: 45, type: !89)
!107 = !DILocalVariable(name: "c3", scope: !103, file: !2, line: 46, type: !89)
!108 = !DILocalVariable(name: "c4", scope: !103, file: !2, line: 47, type: !89)
!109 = !DILocalVariable(name: "c5", scope: !103, file: !2, line: 48, type: !89)
!110 = !DILocalVariable(name: "c6", scope: !103, file: !2, line: 49, type: !89)
!111 = !DILocation(line: 0, scope: !86)
!112 = !DILocation(line: 38, column: 15, scope: !86)
!113 = !DILocation(line: 42, column: 9, scope: !104)
!114 = !DILocation(line: 42, column: 6, scope: !86)
!115 = !DILocation(line: 43, column: 23, scope: !103)
!116 = !DILocation(line: 0, scope: !103)
!117 = !DILocation(line: 50, column: 66, scope: !103)
!118 = !DILocation(line: 50, column: 58, scope: !103)
!119 = !DILocation(line: 50, column: 50, scope: !103)
!120 = !DILocation(line: 50, column: 42, scope: !103)
!121 = !DILocation(line: 50, column: 34, scope: !103)
!122 = !DILocation(line: 50, column: 26, scope: !103)
!123 = !DILocation(line: 55, column: 26, scope: !124)
!124 = distinct !DILexicalBlock(scope: !104, file: !2, line: 54, column: 8)
!125 = !DILocation(line: 57, column: 5, scope: !124)
!126 = !DILocation(line: 0, scope: !104)
!127 = !DILocation(line: 59, column: 1, scope: !86)
!128 = !DISubprogram(name: "sin", scope: !129, file: !129, line: 64, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!130 = !DISubroutineType(types: !131)
!131 = !{!90, !90}
!132 = distinct !DISubprogram(name: "gsl_sf_bessel_j1_e", scope: !2, file: !2, line: 62, type: !87, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !133)
!133 = !{!134, !135, !136, !137, !142, !143, !144, !145, !146, !147, !148, !150}
!134 = !DILocalVariable(name: "x", arg: 1, scope: !132, file: !2, line: 62, type: !89)
!135 = !DILocalVariable(name: "result", arg: 2, scope: !132, file: !2, line: 62, type: !91)
!136 = !DILocalVariable(name: "ax", scope: !132, file: !2, line: 64, type: !90)
!137 = !DILocalVariable(name: "y", scope: !138, file: !2, line: 77, type: !89)
!138 = distinct !DILexicalBlock(scope: !139, file: !2, line: 76, column: 22)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 76, column: 11)
!140 = distinct !DILexicalBlock(scope: !141, file: !2, line: 73, column: 11)
!141 = distinct !DILexicalBlock(scope: !132, file: !2, line: 68, column: 6)
!142 = !DILocalVariable(name: "c1", scope: !138, file: !2, line: 78, type: !89)
!143 = !DILocalVariable(name: "c2", scope: !138, file: !2, line: 79, type: !89)
!144 = !DILocalVariable(name: "c3", scope: !138, file: !2, line: 80, type: !89)
!145 = !DILocalVariable(name: "c4", scope: !138, file: !2, line: 81, type: !89)
!146 = !DILocalVariable(name: "c5", scope: !138, file: !2, line: 82, type: !89)
!147 = !DILocalVariable(name: "sum", scope: !138, file: !2, line: 83, type: !89)
!148 = !DILocalVariable(name: "cos_x", scope: !149, file: !2, line: 89, type: !89)
!149 = distinct !DILexicalBlock(scope: !139, file: !2, line: 88, column: 8)
!150 = !DILocalVariable(name: "sin_x", scope: !149, file: !2, line: 90, type: !89)
!151 = !DILocation(line: 0, scope: !132)
!152 = !DILocation(line: 64, column: 15, scope: !132)
!153 = !DILocation(line: 68, column: 8, scope: !141)
!154 = !DILocation(line: 68, column: 6, scope: !132)
!155 = !DILocation(line: 70, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !141, file: !2, line: 68, column: 16)
!157 = !DILocation(line: 71, column: 5, scope: !156)
!158 = !DILocation(line: 73, column: 14, scope: !140)
!159 = !DILocation(line: 73, column: 11, scope: !141)
!160 = !DILocation(line: 74, column: 5, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 74, column: 5)
!162 = distinct !DILexicalBlock(scope: !140, file: !2, line: 73, column: 33)
!163 = !{!164, !165, i64 0}
!164 = !{!"gsl_sf_result_struct", !165, i64 0, !165, i64 8}
!165 = !{!"double", !166, i64 0}
!166 = !{!"omnipotent char", !167, i64 0}
!167 = !{!"Simple C/C++ TBAA"}
!168 = !{!164, !165, i64 8}
!169 = !DILocation(line: 74, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !161, file: !2, line: 74, column: 5)
!171 = !DILocation(line: 76, column: 14, scope: !139)
!172 = !DILocation(line: 76, column: 11, scope: !140)
!173 = !DILocation(line: 77, column: 23, scope: !138)
!174 = !DILocation(line: 0, scope: !138)
!175 = !DILocation(line: 83, column: 63, scope: !138)
!176 = !DILocation(line: 83, column: 55, scope: !138)
!177 = !DILocation(line: 83, column: 47, scope: !138)
!178 = !DILocation(line: 83, column: 39, scope: !138)
!179 = !DILocation(line: 83, column: 31, scope: !138)
!180 = !DILocation(line: 84, column: 20, scope: !138)
!181 = !DILocation(line: 84, column: 25, scope: !138)
!182 = !DILocation(line: 84, column: 17, scope: !138)
!183 = !DILocation(line: 85, column: 43, scope: !138)
!184 = !DILocation(line: 85, column: 41, scope: !138)
!185 = !DILocation(line: 85, column: 13, scope: !138)
!186 = !DILocation(line: 85, column: 17, scope: !138)
!187 = !DILocation(line: 90, column: 26, scope: !149)
!188 = !DILocation(line: 0, scope: !149)
!189 = !DILocation(line: 91, column: 26, scope: !149)
!190 = !DILocation(line: 91, column: 37, scope: !149)
!191 = !DILocation(line: 91, column: 18, scope: !149)
!192 = !DILocation(line: 92, column: 58, scope: !149)
!193 = !DILocation(line: 92, column: 55, scope: !149)
!194 = !DILocation(line: 92, column: 45, scope: !149)
!195 = !DILocation(line: 92, column: 75, scope: !149)
!196 = !DILocation(line: 92, column: 65, scope: !149)
!197 = !DILocation(line: 92, column: 42, scope: !149)
!198 = !DILocation(line: 92, column: 13, scope: !149)
!199 = !DILocation(line: 93, column: 44, scope: !149)
!200 = !DILocation(line: 93, column: 42, scope: !149)
!201 = !DILocation(line: 93, column: 17, scope: !149)
!202 = !DILocation(line: 0, scope: !141)
!203 = !DILocation(line: 96, column: 1, scope: !132)
!204 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !207, !207, !38, !38}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!209 = !DISubprogram(name: "cos", scope: !129, file: !129, line: 62, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!210 = distinct !DISubprogram(name: "gsl_sf_bessel_j2_e", scope: !2, file: !2, line: 99, type: !87, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !211)
!211 = !{!212, !213, !214, !215, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !232, !233}
!212 = !DILocalVariable(name: "x", arg: 1, scope: !210, file: !2, line: 99, type: !89)
!213 = !DILocalVariable(name: "result", arg: 2, scope: !210, file: !2, line: 99, type: !91)
!214 = !DILocalVariable(name: "ax", scope: !210, file: !2, line: 101, type: !90)
!215 = !DILocalVariable(name: "y", scope: !216, file: !2, line: 114, type: !89)
!216 = distinct !DILexicalBlock(scope: !217, file: !2, line: 113, column: 21)
!217 = distinct !DILexicalBlock(scope: !218, file: !2, line: 113, column: 11)
!218 = distinct !DILexicalBlock(scope: !219, file: !2, line: 110, column: 11)
!219 = distinct !DILexicalBlock(scope: !210, file: !2, line: 105, column: 6)
!220 = !DILocalVariable(name: "c1", scope: !216, file: !2, line: 115, type: !89)
!221 = !DILocalVariable(name: "c2", scope: !216, file: !2, line: 116, type: !89)
!222 = !DILocalVariable(name: "c3", scope: !216, file: !2, line: 117, type: !89)
!223 = !DILocalVariable(name: "c4", scope: !216, file: !2, line: 118, type: !89)
!224 = !DILocalVariable(name: "c5", scope: !216, file: !2, line: 119, type: !89)
!225 = !DILocalVariable(name: "c6", scope: !216, file: !2, line: 120, type: !89)
!226 = !DILocalVariable(name: "c7", scope: !216, file: !2, line: 121, type: !89)
!227 = !DILocalVariable(name: "c8", scope: !216, file: !2, line: 122, type: !89)
!228 = !DILocalVariable(name: "c9", scope: !216, file: !2, line: 123, type: !89)
!229 = !DILocalVariable(name: "sum", scope: !216, file: !2, line: 124, type: !89)
!230 = !DILocalVariable(name: "cos_x", scope: !231, file: !2, line: 145, type: !89)
!231 = distinct !DILexicalBlock(scope: !217, file: !2, line: 129, column: 8)
!232 = !DILocalVariable(name: "sin_x", scope: !231, file: !2, line: 146, type: !89)
!233 = !DILocalVariable(name: "f", scope: !231, file: !2, line: 147, type: !89)
!234 = !DILocation(line: 0, scope: !210)
!235 = !DILocation(line: 101, column: 15, scope: !210)
!236 = !DILocation(line: 105, column: 8, scope: !219)
!237 = !DILocation(line: 105, column: 6, scope: !210)
!238 = !DILocation(line: 107, column: 17, scope: !239)
!239 = distinct !DILexicalBlock(scope: !219, file: !2, line: 105, column: 16)
!240 = !DILocation(line: 108, column: 5, scope: !239)
!241 = !DILocation(line: 110, column: 14, scope: !218)
!242 = !DILocation(line: 110, column: 11, scope: !219)
!243 = !DILocation(line: 111, column: 5, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !2, line: 111, column: 5)
!245 = distinct !DILexicalBlock(scope: !218, file: !2, line: 110, column: 38)
!246 = !DILocation(line: 111, column: 5, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !2, line: 111, column: 5)
!248 = !DILocation(line: 113, column: 14, scope: !217)
!249 = !DILocation(line: 113, column: 11, scope: !218)
!250 = !DILocation(line: 114, column: 24, scope: !216)
!251 = !DILocation(line: 0, scope: !216)
!252 = !DILocation(line: 124, column: 77, scope: !216)
!253 = !DILocation(line: 124, column: 71, scope: !216)
!254 = !DILocation(line: 124, column: 65, scope: !216)
!255 = !DILocation(line: 124, column: 59, scope: !216)
!256 = !DILocation(line: 124, column: 53, scope: !216)
!257 = !DILocation(line: 124, column: 47, scope: !216)
!258 = !DILocation(line: 124, column: 41, scope: !216)
!259 = !DILocation(line: 124, column: 35, scope: !216)
!260 = !DILocation(line: 124, column: 29, scope: !216)
!261 = !DILocation(line: 125, column: 20, scope: !216)
!262 = !DILocation(line: 125, column: 26, scope: !216)
!263 = !DILocation(line: 125, column: 17, scope: !216)
!264 = !DILocation(line: 126, column: 43, scope: !216)
!265 = !DILocation(line: 126, column: 41, scope: !216)
!266 = !DILocation(line: 126, column: 13, scope: !216)
!267 = !DILocation(line: 126, column: 17, scope: !216)
!268 = !DILocation(line: 146, column: 26, scope: !231)
!269 = !DILocation(line: 0, scope: !231)
!270 = !DILocation(line: 147, column: 29, scope: !231)
!271 = !DILocation(line: 147, column: 26, scope: !231)
!272 = !DILocation(line: 148, column: 23, scope: !231)
!273 = !DILocation(line: 148, column: 36, scope: !231)
!274 = !DILocation(line: 148, column: 42, scope: !231)
!275 = !DILocation(line: 148, column: 45, scope: !231)
!276 = !DILocation(line: 148, column: 18, scope: !231)
!277 = !DILocation(line: 149, column: 56, scope: !231)
!278 = !DILocation(line: 149, column: 44, scope: !231)
!279 = !DILocation(line: 149, column: 76, scope: !231)
!280 = !DILocation(line: 149, column: 66, scope: !231)
!281 = !DILocation(line: 149, column: 65, scope: !231)
!282 = !DILocation(line: 149, column: 41, scope: !231)
!283 = !DILocation(line: 149, column: 13, scope: !231)
!284 = !DILocation(line: 150, column: 44, scope: !231)
!285 = !DILocation(line: 150, column: 42, scope: !231)
!286 = !DILocation(line: 150, column: 17, scope: !231)
!287 = !DILocation(line: 0, scope: !219)
!288 = !DILocation(line: 155, column: 1, scope: !210)
!289 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_e", scope: !2, file: !2, line: 159, type: !290, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !293)
!290 = !DISubroutineType(types: !291)
!291 = !{!38, !292, !89, !91}
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!293 = !{!294, !295, !296, !297, !305, !306, !307, !310, !311, !312, !315, !316, !317, !320, !321, !322, !324, !325, !326, !327, !328, !329, !330, !331, !334, !335, !336, !338, !339}
!294 = !DILocalVariable(name: "l", arg: 1, scope: !289, file: !2, line: 159, type: !292)
!295 = !DILocalVariable(name: "x", arg: 2, scope: !289, file: !2, line: 159, type: !89)
!296 = !DILocalVariable(name: "result", arg: 3, scope: !289, file: !2, line: 159, type: !91)
!297 = !DILocalVariable(name: "b", scope: !298, file: !2, line: 179, type: !92)
!298 = distinct !DILexicalBlock(scope: !299, file: !2, line: 178, column: 35)
!299 = distinct !DILexicalBlock(scope: !300, file: !2, line: 178, column: 11)
!300 = distinct !DILexicalBlock(scope: !301, file: !2, line: 175, column: 11)
!301 = distinct !DILexicalBlock(scope: !302, file: !2, line: 172, column: 11)
!302 = distinct !DILexicalBlock(scope: !303, file: !2, line: 169, column: 11)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 164, column: 11)
!304 = distinct !DILexicalBlock(scope: !289, file: !2, line: 161, column: 6)
!305 = !DILocalVariable(name: "status", scope: !298, file: !2, line: 180, type: !38)
!306 = !DILocalVariable(name: "pre", scope: !298, file: !2, line: 181, type: !90)
!307 = !DILocalVariable(name: "b", scope: !308, file: !2, line: 188, type: !92)
!308 = distinct !DILexicalBlock(scope: !309, file: !2, line: 187, column: 56)
!309 = distinct !DILexicalBlock(scope: !299, file: !2, line: 187, column: 11)
!310 = !DILocalVariable(name: "status", scope: !308, file: !2, line: 189, type: !38)
!311 = !DILocalVariable(name: "pre", scope: !308, file: !2, line: 190, type: !90)
!312 = !DILocalVariable(name: "b", scope: !313, file: !2, line: 196, type: !92)
!313 = distinct !DILexicalBlock(scope: !314, file: !2, line: 195, column: 42)
!314 = distinct !DILexicalBlock(scope: !309, file: !2, line: 195, column: 11)
!315 = !DILocalVariable(name: "status", scope: !313, file: !2, line: 197, type: !38)
!316 = !DILocalVariable(name: "pre", scope: !313, file: !2, line: 198, type: !90)
!317 = !DILocalVariable(name: "b", scope: !318, file: !2, line: 206, type: !92)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 204, column: 3)
!319 = distinct !DILexicalBlock(scope: !314, file: !2, line: 203, column: 11)
!320 = !DILocalVariable(name: "status", scope: !318, file: !2, line: 207, type: !38)
!321 = !DILocalVariable(name: "pre", scope: !318, file: !2, line: 208, type: !90)
!322 = !DILocalVariable(name: "sgn", scope: !323, file: !2, line: 214, type: !90)
!323 = distinct !DILexicalBlock(scope: !319, file: !2, line: 213, column: 8)
!324 = !DILocalVariable(name: "ratio", scope: !323, file: !2, line: 215, type: !90)
!325 = !DILocalVariable(name: "stat_CF1", scope: !323, file: !2, line: 217, type: !38)
!326 = !DILocalVariable(name: "BESSEL_J_SMALL", scope: !323, file: !2, line: 218, type: !89)
!327 = !DILocalVariable(name: "jellp1", scope: !323, file: !2, line: 219, type: !90)
!328 = !DILocalVariable(name: "jell", scope: !323, file: !2, line: 220, type: !90)
!329 = !DILocalVariable(name: "jellm1", scope: !323, file: !2, line: 221, type: !90)
!330 = !DILocalVariable(name: "ell", scope: !323, file: !2, line: 222, type: !38)
!331 = !DILocalVariable(name: "j0_result", scope: !332, file: !2, line: 230, type: !92)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 229, column: 35)
!333 = distinct !DILexicalBlock(scope: !323, file: !2, line: 229, column: 8)
!334 = !DILocalVariable(name: "stat_j0", scope: !332, file: !2, line: 231, type: !38)
!335 = !DILocalVariable(name: "pre", scope: !332, file: !2, line: 232, type: !90)
!336 = !DILocalVariable(name: "j1_result", scope: !337, file: !2, line: 239, type: !92)
!337 = distinct !DILexicalBlock(scope: !333, file: !2, line: 238, column: 10)
!338 = !DILocalVariable(name: "stat_j1", scope: !337, file: !2, line: 240, type: !38)
!339 = !DILocalVariable(name: "pre", scope: !337, file: !2, line: 241, type: !90)
!340 = distinct !DIAssignID()
!341 = !DILocation(line: 0, scope: !298)
!342 = distinct !DIAssignID()
!343 = !DILocation(line: 0, scope: !308)
!344 = distinct !DIAssignID()
!345 = !DILocation(line: 0, scope: !313)
!346 = distinct !DIAssignID()
!347 = !DILocation(line: 0, scope: !318)
!348 = distinct !DIAssignID()
!349 = !DILocation(line: 0, scope: !323)
!350 = distinct !DIAssignID()
!351 = distinct !DIAssignID()
!352 = !DILocation(line: 0, scope: !332)
!353 = distinct !DIAssignID()
!354 = !DILocation(line: 0, scope: !337)
!355 = !DILocation(line: 0, scope: !289)
!356 = !DILocation(line: 161, column: 8, scope: !304)
!357 = !DILocation(line: 161, column: 12, scope: !304)
!358 = !DILocation(line: 162, column: 5, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !2, line: 162, column: 5)
!360 = distinct !DILexicalBlock(scope: !304, file: !2, line: 161, column: 24)
!361 = !DILocation(line: 162, column: 5, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !2, line: 162, column: 5)
!363 = !DILocation(line: 164, column: 13, scope: !303)
!364 = !DILocation(line: 164, column: 11, scope: !304)
!365 = !DILocation(line: 165, column: 23, scope: !366)
!366 = distinct !DILexicalBlock(scope: !303, file: !2, line: 164, column: 21)
!367 = !DILocation(line: 165, column: 21, scope: !366)
!368 = !DILocation(line: 165, column: 17, scope: !366)
!369 = !DILocation(line: 166, column: 13, scope: !366)
!370 = !DILocation(line: 166, column: 17, scope: !366)
!371 = !DILocation(line: 167, column: 5, scope: !366)
!372 = !DILocation(line: 169, column: 11, scope: !303)
!373 = !DILocation(line: 0, scope: !86, inlinedAt: !374)
!374 = distinct !DILocation(line: 170, column: 12, scope: !375)
!375 = distinct !DILexicalBlock(scope: !302, file: !2, line: 169, column: 19)
!376 = !DILocation(line: 38, column: 15, scope: !86, inlinedAt: !374)
!377 = !DILocation(line: 42, column: 9, scope: !104, inlinedAt: !374)
!378 = !DILocation(line: 42, column: 6, scope: !86, inlinedAt: !374)
!379 = !DILocation(line: 43, column: 23, scope: !103, inlinedAt: !374)
!380 = !DILocation(line: 0, scope: !103, inlinedAt: !374)
!381 = !DILocation(line: 50, column: 66, scope: !103, inlinedAt: !374)
!382 = !DILocation(line: 50, column: 58, scope: !103, inlinedAt: !374)
!383 = !DILocation(line: 50, column: 50, scope: !103, inlinedAt: !374)
!384 = !DILocation(line: 50, column: 42, scope: !103, inlinedAt: !374)
!385 = !DILocation(line: 50, column: 34, scope: !103, inlinedAt: !374)
!386 = !DILocation(line: 50, column: 26, scope: !103, inlinedAt: !374)
!387 = !DILocation(line: 55, column: 26, scope: !124, inlinedAt: !374)
!388 = !DILocation(line: 57, column: 5, scope: !124, inlinedAt: !374)
!389 = !DILocation(line: 0, scope: !104, inlinedAt: !374)
!390 = !DILocation(line: 170, column: 5, scope: !375)
!391 = !DILocation(line: 173, column: 12, scope: !392)
!392 = distinct !DILexicalBlock(scope: !301, file: !2, line: 172, column: 19)
!393 = !{i32 0, i32 16}
!394 = !DILocation(line: 173, column: 5, scope: !392)
!395 = !DILocation(line: 176, column: 12, scope: !396)
!396 = distinct !DILexicalBlock(scope: !300, file: !2, line: 175, column: 19)
!397 = !DILocation(line: 176, column: 5, scope: !396)
!398 = !DILocation(line: 178, column: 12, scope: !299)
!399 = !DILocation(line: 178, column: 23, scope: !299)
!400 = !DILocation(line: 178, column: 21, scope: !299)
!401 = !DILocation(line: 178, column: 29, scope: !299)
!402 = !DILocation(line: 178, column: 15, scope: !299)
!403 = !DILocation(line: 178, column: 11, scope: !300)
!404 = !DILocation(line: 179, column: 5, scope: !298)
!405 = !DILocation(line: 180, column: 18, scope: !298)
!406 = !DILocation(line: 181, column: 35, scope: !298)
!407 = !DILocation(line: 181, column: 20, scope: !298)
!408 = !DILocation(line: 182, column: 28, scope: !298)
!409 = !DILocation(line: 182, column: 24, scope: !298)
!410 = !DILocation(line: 182, column: 18, scope: !298)
!411 = !DILocation(line: 183, column: 28, scope: !298)
!412 = !DILocation(line: 183, column: 24, scope: !298)
!413 = !DILocation(line: 183, column: 13, scope: !298)
!414 = !DILocation(line: 184, column: 44, scope: !298)
!415 = !DILocation(line: 184, column: 42, scope: !298)
!416 = !DILocation(line: 184, column: 17, scope: !298)
!417 = !DILocation(line: 186, column: 3, scope: !299)
!418 = !DILocation(line: 187, column: 33, scope: !309)
!419 = !DILocation(line: 187, column: 41, scope: !309)
!420 = !DILocation(line: 187, column: 44, scope: !309)
!421 = !DILocation(line: 187, column: 40, scope: !309)
!422 = !DILocation(line: 187, column: 37, scope: !309)
!423 = !DILocation(line: 187, column: 11, scope: !299)
!424 = !DILocation(line: 188, column: 5, scope: !308)
!425 = !DILocation(line: 189, column: 18, scope: !308)
!426 = !DILocation(line: 190, column: 33, scope: !308)
!427 = !DILocation(line: 190, column: 18, scope: !308)
!428 = !DILocation(line: 191, column: 27, scope: !308)
!429 = !DILocation(line: 191, column: 23, scope: !308)
!430 = !DILocation(line: 191, column: 17, scope: !308)
!431 = !DILocation(line: 192, column: 43, scope: !308)
!432 = !DILocation(line: 192, column: 41, scope: !308)
!433 = !DILocation(line: 192, column: 71, scope: !308)
!434 = !DILocation(line: 192, column: 67, scope: !308)
!435 = !DILocation(line: 192, column: 13, scope: !308)
!436 = !DILocation(line: 192, column: 17, scope: !308)
!437 = !DILocation(line: 194, column: 3, scope: !309)
!438 = !DILocation(line: 195, column: 13, scope: !314)
!439 = !DILocation(line: 195, column: 11, scope: !309)
!440 = !DILocation(line: 196, column: 5, scope: !313)
!441 = !DILocation(line: 197, column: 18, scope: !313)
!442 = !DILocation(line: 198, column: 33, scope: !313)
!443 = !DILocation(line: 198, column: 18, scope: !313)
!444 = !DILocation(line: 199, column: 27, scope: !313)
!445 = !DILocation(line: 199, column: 23, scope: !313)
!446 = !DILocation(line: 199, column: 17, scope: !313)
!447 = !DILocation(line: 200, column: 43, scope: !313)
!448 = !DILocation(line: 200, column: 41, scope: !313)
!449 = !DILocation(line: 200, column: 71, scope: !313)
!450 = !DILocation(line: 200, column: 67, scope: !313)
!451 = !DILocation(line: 200, column: 13, scope: !313)
!452 = !DILocation(line: 200, column: 17, scope: !313)
!453 = !DILocation(line: 202, column: 3, scope: !314)
!454 = !DILocation(line: 203, column: 13, scope: !319)
!455 = !DILocation(line: 203, column: 22, scope: !319)
!456 = !DILocation(line: 206, column: 5, scope: !318)
!457 = !DILocation(line: 207, column: 18, scope: !318)
!458 = !DILocation(line: 208, column: 33, scope: !318)
!459 = !DILocation(line: 208, column: 18, scope: !318)
!460 = !DILocation(line: 209, column: 27, scope: !318)
!461 = !DILocation(line: 209, column: 23, scope: !318)
!462 = !DILocation(line: 209, column: 17, scope: !318)
!463 = !DILocation(line: 210, column: 43, scope: !318)
!464 = !DILocation(line: 210, column: 41, scope: !318)
!465 = !DILocation(line: 210, column: 71, scope: !318)
!466 = !DILocation(line: 210, column: 67, scope: !318)
!467 = !DILocation(line: 210, column: 13, scope: !318)
!468 = !DILocation(line: 210, column: 17, scope: !318)
!469 = !DILocation(line: 212, column: 3, scope: !319)
!470 = !DILocation(line: 214, column: 5, scope: !323)
!471 = !DILocation(line: 215, column: 5, scope: !323)
!472 = !DILocation(line: 217, column: 20, scope: !323)
!473 = !DILocation(line: 219, column: 38, scope: !323)
!474 = !{!165, !165, i64 0}
!475 = !DILocation(line: 219, column: 36, scope: !323)
!476 = !DILocation(line: 223, column: 5, scope: !477)
!477 = distinct !DILexicalBlock(scope: !323, file: !2, line: 223, column: 5)
!478 = !DILocation(line: 224, column: 28, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !2, line: 223, column: 34)
!480 = distinct !DILexicalBlock(scope: !477, file: !2, line: 223, column: 5)
!481 = !DILocation(line: 224, column: 33, scope: !479)
!482 = !DILocation(line: 224, column: 26, scope: !479)
!483 = !DILocation(line: 224, column: 37, scope: !479)
!484 = !DILocation(line: 224, column: 40, scope: !479)
!485 = !DILocation(line: 223, column: 30, scope: !480)
!486 = !DILocation(line: 223, column: 22, scope: !480)
!487 = distinct !{!487, !476, !488, !489}
!488 = !DILocation(line: 227, column: 5, scope: !477)
!489 = !{!"llvm.loop.mustprogress"}
!490 = !DILocation(line: 229, column: 8, scope: !333)
!491 = !DILocation(line: 229, column: 21, scope: !333)
!492 = !DILocation(line: 229, column: 19, scope: !333)
!493 = !DILocation(line: 0, scope: !333)
!494 = !DILocation(line: 229, column: 8, scope: !323)
!495 = !DILocation(line: 230, column: 7, scope: !332)
!496 = !DILocation(line: 231, column: 22, scope: !332)
!497 = !DILocation(line: 232, column: 37, scope: !332)
!498 = !DILocation(line: 233, column: 32, scope: !332)
!499 = !DILocation(line: 233, column: 36, scope: !332)
!500 = !DILocation(line: 234, column: 32, scope: !332)
!501 = !DILocation(line: 234, column: 38, scope: !332)
!502 = !DILocation(line: 234, column: 36, scope: !332)
!503 = !DILocation(line: 235, column: 62, scope: !332)
!504 = !DILocation(line: 235, column: 60, scope: !332)
!505 = !DILocation(line: 237, column: 5, scope: !333)
!506 = !DILocation(line: 239, column: 7, scope: !337)
!507 = !DILocation(line: 240, column: 22, scope: !337)
!508 = !DILocation(line: 241, column: 37, scope: !337)
!509 = !DILocation(line: 242, column: 32, scope: !337)
!510 = !DILocation(line: 242, column: 36, scope: !337)
!511 = !DILocation(line: 243, column: 32, scope: !337)
!512 = !DILocation(line: 243, column: 38, scope: !337)
!513 = !DILocation(line: 243, column: 36, scope: !337)
!514 = !DILocation(line: 244, column: 62, scope: !337)
!515 = !DILocation(line: 244, column: 60, scope: !337)
!516 = !DILocation(line: 245, column: 14, scope: !337)
!517 = !DILocation(line: 246, column: 5, scope: !333)
!518 = !DILocation(line: 247, column: 3, scope: !319)
!519 = !DILocation(line: 0, scope: !304)
!520 = !DILocation(line: 248, column: 1, scope: !289)
!521 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !522, file: !522, line: 32, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!522 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!523 = !DISubroutineType(types: !524)
!524 = !{!38, !89, !89, !292, !292, !89, !91}
!525 = !DISubprogram(name: "sqrt", scope: !129, file: !129, line: 143, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!526 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asympx_e", scope: !522, file: !522, line: 39, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!527 = !DISubroutineType(types: !528)
!528 = !{!38, !89, !89, !91}
!529 = !DISubprogram(name: "gsl_sf_bessel_Jnu_asymp_Olver_e", scope: !530, file: !530, line: 27, type: !531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!530 = !DIFile(filename: "./bessel_olver.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "ec509d1b6cab5ef68906304c5e69a8d7")
!531 = !DISubroutineType(types: !532)
!532 = !{!38, !90, !90, !91}
!533 = !DISubprogram(name: "gsl_sf_bessel_J_CF1", scope: !522, file: !522, line: 56, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!534 = !DISubroutineType(types: !535)
!535 = !{!38, !89, !89, !536, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!537 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_array", scope: !2, file: !2, line: 252, type: !538, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{!38, !292, !89, !536}
!540 = !{!541, !542, !543, !544, !547, !550, !552, !553, !554, !555, !556, !557, !558}
!541 = !DILocalVariable(name: "lmax", arg: 1, scope: !537, file: !2, line: 252, type: !292)
!542 = !DILocalVariable(name: "x", arg: 2, scope: !537, file: !2, line: 252, type: !89)
!543 = !DILocalVariable(name: "result_array", arg: 3, scope: !537, file: !2, line: 252, type: !536)
!544 = !DILocalVariable(name: "j", scope: !545, file: !2, line: 257, type: !38)
!545 = distinct !DILexicalBlock(scope: !546, file: !2, line: 256, column: 27)
!546 = distinct !DILexicalBlock(scope: !537, file: !2, line: 256, column: 6)
!547 = !DILocalVariable(name: "j", scope: !548, file: !2, line: 262, type: !38)
!548 = distinct !DILexicalBlock(scope: !549, file: !2, line: 261, column: 21)
!549 = distinct !DILexicalBlock(scope: !546, file: !2, line: 261, column: 11)
!550 = !DILocalVariable(name: "r_jellp1", scope: !551, file: !2, line: 268, type: !92)
!551 = distinct !DILexicalBlock(scope: !549, file: !2, line: 267, column: 8)
!552 = !DILocalVariable(name: "r_jell", scope: !551, file: !2, line: 269, type: !92)
!553 = !DILocalVariable(name: "stat_0", scope: !551, file: !2, line: 270, type: !38)
!554 = !DILocalVariable(name: "stat_1", scope: !551, file: !2, line: 271, type: !38)
!555 = !DILocalVariable(name: "jellp1", scope: !551, file: !2, line: 272, type: !90)
!556 = !DILocalVariable(name: "jell", scope: !551, file: !2, line: 273, type: !90)
!557 = !DILocalVariable(name: "jellm1", scope: !551, file: !2, line: 274, type: !90)
!558 = !DILocalVariable(name: "ell", scope: !551, file: !2, line: 275, type: !38)
!559 = distinct !DIAssignID()
!560 = !DILocation(line: 0, scope: !551)
!561 = distinct !DIAssignID()
!562 = !DILocation(line: 0, scope: !537)
!563 = !DILocation(line: 256, column: 11, scope: !546)
!564 = !DILocation(line: 256, column: 15, scope: !546)
!565 = !DILocation(line: 0, scope: !545)
!566 = !DILocation(line: 258, column: 5, scope: !567)
!567 = distinct !DILexicalBlock(scope: !545, file: !2, line: 258, column: 5)
!568 = !DILocation(line: 258, column: 44, scope: !569)
!569 = distinct !DILexicalBlock(scope: !567, file: !2, line: 258, column: 5)
!570 = !DILocation(line: 259, column: 5, scope: !571)
!571 = distinct !DILexicalBlock(scope: !545, file: !2, line: 259, column: 5)
!572 = !DILocation(line: 261, column: 13, scope: !549)
!573 = !DILocation(line: 261, column: 11, scope: !546)
!574 = !DILocation(line: 0, scope: !548)
!575 = !DILocation(line: 263, column: 15, scope: !576)
!576 = distinct !DILexicalBlock(scope: !577, file: !2, line: 263, column: 5)
!577 = distinct !DILexicalBlock(scope: !548, file: !2, line: 263, column: 5)
!578 = !DILocation(line: 263, column: 5, scope: !577)
!579 = !DILocation(line: 263, column: 44, scope: !576)
!580 = !DILocation(line: 264, column: 21, scope: !548)
!581 = !DILocation(line: 268, column: 5, scope: !551)
!582 = !DILocation(line: 269, column: 5, scope: !551)
!583 = !DILocation(line: 270, column: 41, scope: !551)
!584 = !DILocation(line: 270, column: 18, scope: !551)
!585 = !DILocation(line: 271, column: 18, scope: !551)
!586 = !DILocation(line: 272, column: 30, scope: !551)
!587 = !DILocation(line: 273, column: 28, scope: !551)
!588 = !DILocation(line: 277, column: 5, scope: !551)
!589 = !DILocation(line: 277, column: 24, scope: !551)
!590 = !DILocation(line: 278, column: 9, scope: !591)
!591 = distinct !DILexicalBlock(scope: !551, file: !2, line: 278, column: 5)
!592 = !DILocation(line: 278, column: 25, scope: !593)
!593 = distinct !DILexicalBlock(scope: !591, file: !2, line: 278, column: 5)
!594 = !DILocation(line: 278, column: 5, scope: !591)
!595 = !DILocation(line: 279, column: 28, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !2, line: 278, column: 38)
!597 = !DILocation(line: 279, column: 33, scope: !596)
!598 = !DILocation(line: 279, column: 26, scope: !596)
!599 = !DILocation(line: 279, column: 37, scope: !596)
!600 = !DILocation(line: 279, column: 40, scope: !596)
!601 = !DILocation(line: 282, column: 7, scope: !596)
!602 = !DILocation(line: 282, column: 27, scope: !596)
!603 = !DILocation(line: 278, column: 34, scope: !593)
!604 = distinct !{!604, !594, !605, !489}
!605 = !DILocation(line: 283, column: 5, scope: !591)
!606 = !DILocation(line: 285, column: 12, scope: !551)
!607 = !DILocation(line: 286, column: 3, scope: !549)
!608 = !DILocation(line: 0, scope: !546)
!609 = !DILocation(line: 287, column: 1, scope: !537)
!610 = distinct !DISubprogram(name: "gsl_sf_bessel_jl_steed_array", scope: !2, file: !2, line: 290, type: !538, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !611)
!611 = !{!612, !613, !614, !615, !618, !621, !624, !625, !626, !628, !629, !630, !631, !632, !633, !634, !635, !638, !639, !640, !641}
!612 = !DILocalVariable(name: "lmax", arg: 1, scope: !610, file: !2, line: 290, type: !292)
!613 = !DILocalVariable(name: "x", arg: 2, scope: !610, file: !2, line: 290, type: !89)
!614 = !DILocalVariable(name: "jl_x", arg: 3, scope: !610, file: !2, line: 290, type: !536)
!615 = !DILocalVariable(name: "j", scope: !616, file: !2, line: 295, type: !38)
!616 = distinct !DILexicalBlock(scope: !617, file: !2, line: 294, column: 27)
!617 = distinct !DILexicalBlock(scope: !610, file: !2, line: 294, column: 6)
!618 = !DILocalVariable(name: "j", scope: !619, file: !2, line: 300, type: !38)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 299, column: 21)
!620 = distinct !DILexicalBlock(scope: !617, file: !2, line: 299, column: 11)
!621 = !DILocalVariable(name: "inv_fact", scope: !622, file: !2, line: 307, type: !90)
!622 = distinct !DILexicalBlock(scope: !623, file: !2, line: 305, column: 42)
!623 = distinct !DILexicalBlock(scope: !620, file: !2, line: 305, column: 11)
!624 = !DILocalVariable(name: "x_l", scope: !622, file: !2, line: 308, type: !90)
!625 = !DILocalVariable(name: "l", scope: !622, file: !2, line: 309, type: !38)
!626 = !DILocalVariable(name: "x_inv", scope: !627, file: !2, line: 320, type: !90)
!627 = distinct !DILexicalBlock(scope: !623, file: !2, line: 318, column: 8)
!628 = !DILocalVariable(name: "W", scope: !627, file: !2, line: 321, type: !90)
!629 = !DILocalVariable(name: "F", scope: !627, file: !2, line: 322, type: !90)
!630 = !DILocalVariable(name: "FP", scope: !627, file: !2, line: 323, type: !90)
!631 = !DILocalVariable(name: "B", scope: !627, file: !2, line: 324, type: !90)
!632 = !DILocalVariable(name: "end", scope: !627, file: !2, line: 325, type: !90)
!633 = !DILocalVariable(name: "D", scope: !627, file: !2, line: 326, type: !90)
!634 = !DILocalVariable(name: "del", scope: !627, file: !2, line: 327, type: !90)
!635 = !DILocalVariable(name: "XP2", scope: !636, file: !2, line: 348, type: !90)
!636 = distinct !DILexicalBlock(scope: !637, file: !2, line: 346, column: 18)
!637 = distinct !DILexicalBlock(scope: !627, file: !2, line: 346, column: 8)
!638 = !DILocalVariable(name: "PL", scope: !636, file: !2, line: 349, type: !90)
!639 = !DILocalVariable(name: "L", scope: !636, file: !2, line: 350, type: !38)
!640 = !DILocalVariable(name: "LP", scope: !636, file: !2, line: 351, type: !38)
!641 = !DILocalVariable(name: "L", scope: !642, file: !2, line: 367, type: !38)
!642 = distinct !DILexicalBlock(scope: !643, file: !2, line: 366, column: 18)
!643 = distinct !DILexicalBlock(scope: !627, file: !2, line: 366, column: 8)
!644 = !DILocation(line: 0, scope: !610)
!645 = !DILocation(line: 294, column: 11, scope: !617)
!646 = !DILocation(line: 294, column: 15, scope: !617)
!647 = !DILocation(line: 0, scope: !616)
!648 = !DILocation(line: 296, column: 5, scope: !649)
!649 = distinct !DILexicalBlock(scope: !616, file: !2, line: 296, column: 5)
!650 = !DILocation(line: 296, column: 36, scope: !651)
!651 = distinct !DILexicalBlock(scope: !649, file: !2, line: 296, column: 5)
!652 = !DILocation(line: 297, column: 5, scope: !653)
!653 = distinct !DILexicalBlock(scope: !616, file: !2, line: 297, column: 5)
!654 = !DILocation(line: 299, column: 13, scope: !620)
!655 = !DILocation(line: 299, column: 11, scope: !617)
!656 = !DILocation(line: 0, scope: !619)
!657 = !DILocation(line: 301, column: 15, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !2, line: 301, column: 5)
!659 = distinct !DILexicalBlock(scope: !619, file: !2, line: 301, column: 5)
!660 = !DILocation(line: 301, column: 5, scope: !659)
!661 = !DILocation(line: 301, column: 36, scope: !658)
!662 = !DILocation(line: 302, column: 13, scope: !619)
!663 = !DILocation(line: 305, column: 13, scope: !623)
!664 = !DILocation(line: 305, column: 11, scope: !620)
!665 = !DILocation(line: 0, scope: !622)
!666 = !DILocation(line: 310, column: 5, scope: !667)
!667 = distinct !DILexicalBlock(scope: !622, file: !2, line: 310, column: 5)
!668 = !DILocation(line: 310, column: 15, scope: !669)
!669 = distinct !DILexicalBlock(scope: !667, file: !2, line: 310, column: 5)
!670 = !DILocation(line: 311, column: 22, scope: !671)
!671 = distinct !DILexicalBlock(scope: !669, file: !2, line: 310, column: 28)
!672 = !DILocation(line: 311, column: 7, scope: !671)
!673 = !DILocation(line: 312, column: 37, scope: !671)
!674 = !DILocation(line: 312, column: 36, scope: !671)
!675 = !DILocation(line: 312, column: 31, scope: !671)
!676 = !DILocation(line: 312, column: 15, scope: !671)
!677 = !DILocation(line: 313, column: 16, scope: !671)
!678 = !DILocation(line: 314, column: 16, scope: !671)
!679 = !DILocation(line: 310, column: 24, scope: !669)
!680 = distinct !{!680, !666, !681, !489}
!681 = !DILocation(line: 315, column: 5, scope: !667)
!682 = !DILocation(line: 320, column: 23, scope: !627)
!683 = !DILocation(line: 0, scope: !627)
!684 = !DILocation(line: 321, column: 19, scope: !627)
!685 = !DILocation(line: 323, column: 18, scope: !627)
!686 = !DILocation(line: 323, column: 28, scope: !627)
!687 = !DILocation(line: 324, column: 19, scope: !627)
!688 = !DILocation(line: 325, column: 29, scope: !627)
!689 = !DILocation(line: 326, column: 19, scope: !627)
!690 = !DILocation(line: 327, column: 18, scope: !627)
!691 = !DILocation(line: 332, column: 5, scope: !627)
!692 = !DILocation(line: 338, column: 12, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !2, line: 338, column: 10)
!694 = distinct !DILexicalBlock(scope: !627, file: !2, line: 332, column: 8)
!695 = !DILocation(line: 338, column: 10, scope: !694)
!696 = !DILocation(line: 339, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 339, column: 9)
!698 = distinct !DILexicalBlock(scope: !693, file: !2, line: 338, column: 19)
!699 = !DILocation(line: 334, column: 14, scope: !694)
!700 = !DILocation(line: 337, column: 12, scope: !701)
!701 = distinct !DILexicalBlock(scope: !694, file: !2, line: 337, column: 10)
!702 = !DILocation(line: 337, column: 10, scope: !694)
!703 = !DILocation(line: 335, column: 16, scope: !694)
!704 = !DILocation(line: 335, column: 11, scope: !694)
!705 = !DILocation(line: 342, column: 11, scope: !627)
!706 = !DILocation(line: 342, column: 24, scope: !627)
!707 = !DILocation(line: 342, column: 33, scope: !627)
!708 = !DILocation(line: 342, column: 21, scope: !627)
!709 = !DILocation(line: 341, column: 5, scope: !694)
!710 = distinct !{!710, !691, !711, !489}
!711 = !DILocation(line: 342, column: 50, scope: !627)
!712 = !DILocation(line: 344, column: 8, scope: !627)
!713 = !DILocation(line: 346, column: 13, scope: !637)
!714 = !DILocation(line: 346, column: 8, scope: !627)
!715 = !DILocation(line: 0, scope: !636)
!716 = !DILocation(line: 349, column: 24, scope: !636)
!717 = !DILocation(line: 352, column: 7, scope: !636)
!718 = !DILocation(line: 352, column: 18, scope: !636)
!719 = !DILocation(line: 353, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !636, file: !2, line: 353, column: 7)
!721 = !DILocation(line: 354, column: 24, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !2, line: 353, column: 35)
!723 = distinct !DILexicalBlock(scope: !720, file: !2, line: 353, column: 7)
!724 = !DILocation(line: 354, column: 9, scope: !722)
!725 = !DILocation(line: 354, column: 19, scope: !722)
!726 = !DILocation(line: 355, column: 16, scope: !722)
!727 = !DILocation(line: 357, column: 12, scope: !722)
!728 = !DILocation(line: 358, column: 9, scope: !722)
!729 = distinct !{!729, !719, !730, !489}
!730 = !DILocation(line: 359, column: 7, scope: !720)
!731 = !DILocation(line: 354, column: 26, scope: !722)
!732 = !DILocation(line: 360, column: 11, scope: !636)
!733 = !DILocation(line: 355, column: 27, scope: !722)
!734 = !DILocation(line: 361, column: 5, scope: !636)
!735 = !DILocation(line: 364, column: 17, scope: !627)
!736 = !DILocation(line: 364, column: 15, scope: !627)
!737 = !DILocation(line: 365, column: 16, scope: !627)
!738 = !DILocation(line: 365, column: 13, scope: !627)
!739 = !DILocation(line: 366, column: 8, scope: !627)
!740 = !DILocation(line: 368, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !642, file: !2, line: 368, column: 7)
!742 = !DILocation(line: 368, column: 17, scope: !743)
!743 = distinct !DILexicalBlock(scope: !741, file: !2, line: 368, column: 7)
!744 = !DILocation(line: 0, scope: !642)
!745 = !DILocation(line: 369, column: 9, scope: !746)
!746 = distinct !DILexicalBlock(scope: !743, file: !2, line: 368, column: 30)
!747 = !DILocation(line: 369, column: 17, scope: !746)
!748 = !DILocation(line: 368, column: 26, scope: !743)
!749 = distinct !{!749, !740, !750, !489}
!750 = !DILocation(line: 370, column: 7, scope: !741)
!751 = !DILocation(line: 375, column: 1, scope: !610)
!752 = distinct !{!752, !753}
!753 = !{!"llvm.loop.unroll.disable"}
!754 = !DILocation(line: 0, scope: !617)
!755 = !DISubprogram(name: "hypot", scope: !129, file: !129, line: 147, type: !756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!756 = !DISubroutineType(types: !757)
!757 = !{!90, !90, !90}
!758 = distinct !DISubprogram(name: "gsl_sf_bessel_j0", scope: !2, file: !2, line: 382, type: !759, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{!90, !89}
!761 = !{!762, !763, !764}
!762 = !DILocalVariable(name: "x", arg: 1, scope: !758, file: !2, line: 382, type: !89)
!763 = !DILocalVariable(name: "result", scope: !758, file: !2, line: 384, type: !92)
!764 = !DILocalVariable(name: "status", scope: !758, file: !2, line: 384, type: !38)
!765 = !DILocation(line: 0, scope: !758)
!766 = !DILocation(line: 0, scope: !86, inlinedAt: !767)
!767 = distinct !DILocation(line: 384, column: 3, scope: !758)
!768 = !DILocation(line: 38, column: 15, scope: !86, inlinedAt: !767)
!769 = !DILocation(line: 42, column: 9, scope: !104, inlinedAt: !767)
!770 = !DILocation(line: 42, column: 6, scope: !86, inlinedAt: !767)
!771 = !DILocation(line: 43, column: 23, scope: !103, inlinedAt: !767)
!772 = !DILocation(line: 0, scope: !103, inlinedAt: !767)
!773 = !DILocation(line: 50, column: 66, scope: !103, inlinedAt: !767)
!774 = !DILocation(line: 50, column: 58, scope: !103, inlinedAt: !767)
!775 = !DILocation(line: 50, column: 50, scope: !103, inlinedAt: !767)
!776 = !DILocation(line: 50, column: 42, scope: !103, inlinedAt: !767)
!777 = !DILocation(line: 50, column: 34, scope: !103, inlinedAt: !767)
!778 = !DILocation(line: 50, column: 26, scope: !103, inlinedAt: !767)
!779 = !DILocation(line: 55, column: 26, scope: !124, inlinedAt: !767)
!780 = !DILocation(line: 57, column: 5, scope: !124, inlinedAt: !767)
!781 = !DILocation(line: 385, column: 1, scope: !758)
!782 = distinct !DISubprogram(name: "gsl_sf_bessel_j1", scope: !2, file: !2, line: 387, type: !759, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !783)
!783 = !{!784, !785, !786}
!784 = !DILocalVariable(name: "x", arg: 1, scope: !782, file: !2, line: 387, type: !89)
!785 = !DILocalVariable(name: "result", scope: !782, file: !2, line: 389, type: !92)
!786 = !DILocalVariable(name: "status", scope: !782, file: !2, line: 389, type: !38)
!787 = !DILocation(line: 0, scope: !782)
!788 = !DILocation(line: 0, scope: !132, inlinedAt: !789)
!789 = distinct !DILocation(line: 389, column: 3, scope: !782)
!790 = !DILocation(line: 64, column: 15, scope: !132, inlinedAt: !789)
!791 = !DILocation(line: 68, column: 8, scope: !141, inlinedAt: !789)
!792 = !DILocation(line: 68, column: 6, scope: !132, inlinedAt: !789)
!793 = !DILocation(line: 73, column: 14, scope: !140, inlinedAt: !789)
!794 = !DILocation(line: 73, column: 11, scope: !141, inlinedAt: !789)
!795 = !DILocation(line: 76, column: 14, scope: !139, inlinedAt: !789)
!796 = !DILocation(line: 76, column: 11, scope: !140, inlinedAt: !789)
!797 = !DILocation(line: 77, column: 23, scope: !138, inlinedAt: !789)
!798 = !DILocation(line: 0, scope: !138, inlinedAt: !789)
!799 = !DILocation(line: 83, column: 63, scope: !138, inlinedAt: !789)
!800 = !DILocation(line: 83, column: 55, scope: !138, inlinedAt: !789)
!801 = !DILocation(line: 83, column: 47, scope: !138, inlinedAt: !789)
!802 = !DILocation(line: 83, column: 39, scope: !138, inlinedAt: !789)
!803 = !DILocation(line: 83, column: 31, scope: !138, inlinedAt: !789)
!804 = !DILocation(line: 84, column: 20, scope: !138, inlinedAt: !789)
!805 = !DILocation(line: 84, column: 25, scope: !138, inlinedAt: !789)
!806 = !DILocation(line: 90, column: 26, scope: !149, inlinedAt: !789)
!807 = !DILocation(line: 0, scope: !149, inlinedAt: !789)
!808 = !DILocation(line: 91, column: 26, scope: !149, inlinedAt: !789)
!809 = !DILocation(line: 91, column: 37, scope: !149, inlinedAt: !789)
!810 = !DILocation(line: 74, column: 5, scope: !170, inlinedAt: !789)
!811 = !DILocation(line: 389, column: 3, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !2, line: 389, column: 3)
!813 = distinct !DILexicalBlock(scope: !814, file: !2, line: 389, column: 3)
!814 = distinct !DILexicalBlock(scope: !782, file: !2, line: 389, column: 3)
!815 = !DILocation(line: 390, column: 1, scope: !782)
!816 = distinct !DISubprogram(name: "gsl_sf_bessel_j2", scope: !2, file: !2, line: 392, type: !759, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !817)
!817 = !{!818, !819, !820}
!818 = !DILocalVariable(name: "x", arg: 1, scope: !816, file: !2, line: 392, type: !89)
!819 = !DILocalVariable(name: "result", scope: !816, file: !2, line: 394, type: !92)
!820 = !DILocalVariable(name: "status", scope: !816, file: !2, line: 394, type: !38)
!821 = distinct !DIAssignID()
!822 = !DILocation(line: 0, scope: !816)
!823 = !DILocation(line: 394, column: 3, scope: !816)
!824 = !DILocation(line: 394, column: 3, scope: !825)
!825 = distinct !DILexicalBlock(scope: !816, file: !2, line: 394, column: 3)
!826 = !DILocation(line: 394, column: 3, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !2, line: 394, column: 3)
!828 = distinct !DILexicalBlock(scope: !825, file: !2, line: 394, column: 3)
!829 = !DILocation(line: 395, column: 1, scope: !816)
!830 = distinct !DISubprogram(name: "gsl_sf_bessel_jl", scope: !2, file: !2, line: 397, type: !831, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!90, !292, !89}
!833 = !{!834, !835, !836, !837}
!834 = !DILocalVariable(name: "l", arg: 1, scope: !830, file: !2, line: 397, type: !292)
!835 = !DILocalVariable(name: "x", arg: 2, scope: !830, file: !2, line: 397, type: !89)
!836 = !DILocalVariable(name: "result", scope: !830, file: !2, line: 399, type: !92)
!837 = !DILocalVariable(name: "status", scope: !830, file: !2, line: 399, type: !38)
!838 = distinct !DIAssignID()
!839 = !DILocation(line: 0, scope: !830)
!840 = !DILocation(line: 399, column: 3, scope: !830)
!841 = !DILocation(line: 399, column: 3, scope: !842)
!842 = distinct !DILexicalBlock(scope: !830, file: !2, line: 399, column: 3)
!843 = !DILocation(line: 399, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !2, line: 399, column: 3)
!845 = distinct !DILexicalBlock(scope: !842, file: !2, line: 399, column: 3)
!846 = !DILocation(line: 400, column: 1, scope: !830)
