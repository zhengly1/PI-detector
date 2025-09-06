; ModuleID = 'bessel_i.ll'
source_filename = "bessel_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }

@.str = private unnamed_addr constant [10 x i8] c"underflow\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [11 x i8] c"bessel_i.c\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"domain error\00", align 1, !dbg !12
@.str.4 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_i1_scaled_e(x, &result)\00", align 1, !dbg !17
@.str.5 = private unnamed_addr constant [38 x i8] c"gsl_sf_bessel_i2_scaled_e(x, &result)\00", align 1, !dbg !22
@.str.6 = private unnamed_addr constant [41 x i8] c"gsl_sf_bessel_il_scaled_e(l, x, &result)\00", align 1, !dbg !24
@.str.7 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !29

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local noundef i32 @gsl_sf_bessel_i0_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 !dbg !87 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !100, metadata !DIExpression()), !dbg !114
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !101, metadata !DIExpression()), !dbg !114
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !115
  tail call void @llvm.dbg.value(metadata double %3, metadata !102, metadata !DIExpression()), !dbg !114
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !116
  br i1 %4, label %5, label %6, !dbg !117

5:                                                ; preds = %2
  store double 1.000000e+00, ptr %1, align 8, !dbg !118, !tbaa !120
  br label %31, !dbg !125

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 2.000000e-01, !dbg !126
  br i1 %7, label %8, label %19, !dbg !127

8:                                                ; preds = %6
  %9 = fneg double %3, !dbg !128
  %10 = tail call double @exp(double noundef %9) #7, !dbg !129
  tail call void @llvm.dbg.value(metadata double %10, metadata !103, metadata !DIExpression()), !dbg !130
  %11 = fmul double %0, %0, !dbg !131
  tail call void @llvm.dbg.value(metadata double %11, metadata !107, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !108, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !109, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !110, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !111, metadata !DIExpression()), !dbg !130
  tail call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !112, metadata !DIExpression()), !dbg !130
  %12 = fmul double %11, 0x3E5AE64567F544E4, !dbg !132
  %handler_result = call double @fAddHandlerDouble(double %12, double 0x3EC71DE3A556C734), !dbg !133
  %13 = fmul double %11, %handler_result, !dbg !133
  %handler_result1 = call double @fAddHandlerDouble(double %13, double 0x3F2A01A01A01A01A), !dbg !134
  %14 = fmul double %11, %handler_result1, !dbg !134
  %handler_result2 = call double @fAddHandlerDouble(double %14, double 0x3F81111111111111), !dbg !135
  %15 = fmul double %11, %handler_result2, !dbg !135
  %handler_result3 = call double @fAddHandlerDouble(double %15, double 0x3FC5555555555555), !dbg !136
  %16 = fmul double %11, %handler_result3, !dbg !136
  %handler_result4 = call double @fAddHandlerDouble(double %16, double 1.000000e+00), !dbg !137
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !113, metadata !DIExpression()), !dbg !130
  %17 = fmul double %handler_result4, %10, !dbg !137
  store double %17, ptr %1, align 8, !dbg !138, !tbaa !120
  %18 = fmul double %17, 0x3CC0000000000000, !dbg !139
  br label %31, !dbg !140

19:                                               ; preds = %6
  %20 = fcmp olt double %3, 0x403205966F2B4F12, !dbg !141
  br i1 %20, label %21, label %27, !dbg !143

21:                                               ; preds = %19
  %22 = fmul double %3, -2.000000e+00, !dbg !144
  %23 = tail call double @exp(double noundef %22) #7, !dbg !146
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %23), !dbg !147
  %24 = fmul double %3, 2.000000e+00, !dbg !147
  %25 = fdiv double %handler_result5, %24, !dbg !148
  store double %25, ptr %1, align 8, !dbg !149, !tbaa !120
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !150
  br label %31, !dbg !151

27:                                               ; preds = %19
  %28 = fmul double %3, 2.000000e+00, !dbg !152
  %29 = fdiv double 1.000000e+00, %28, !dbg !154
  store double %29, ptr %1, align 8, !dbg !155, !tbaa !120
  %30 = fmul double %29, 0x3CC0000000000000, !dbg !156
  br label %31

31:                                               ; preds = %27, %21, %8, %5
  %32 = phi double [ %26, %21 ], [ %30, %27 ], [ %18, %8 ], [ 0.000000e+00, %5 ]
  %33 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !157
  store double %32, ptr %33, align 8, !dbg !157, !tbaa !158
  ret i32 0, !dbg !159
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !160 double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_i1_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !164 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !166, metadata !DIExpression()), !dbg !183
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !167, metadata !DIExpression()), !dbg !183
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !184
  tail call void @llvm.dbg.value(metadata double %3, metadata !168, metadata !DIExpression()), !dbg !183
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !185
  br i1 %4, label %5, label %6, !dbg !186

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !187
  br label %40, !dbg !189

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x28000000000000, !dbg !190
  br i1 %7, label %8, label %10, !dbg !191

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !192, !tbaa !120
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !192
  store double 0x10000000000000, ptr %9, align 8, !dbg !192, !tbaa !158
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 15) #7, !dbg !195
  br label %40, !dbg !195

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 2.500000e-01, !dbg !197
  br i1 %11, label %12, label %27, !dbg !198

12:                                               ; preds = %10
  %13 = fneg double %3, !dbg !199
  %14 = tail call double @exp(double noundef %13) #7, !dbg !200
  tail call void @llvm.dbg.value(metadata double %14, metadata !169, metadata !DIExpression()), !dbg !201
  %15 = fmul double %0, %0, !dbg !202
  tail call void @llvm.dbg.value(metadata double %15, metadata !174, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata double 1.000000e-01, metadata !175, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata double 0x3F6D41D41D41D41D, metadata !176, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata double 0x3F11566ABC011567, metadata !177, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata double 0x3EA937E11175F095, metadata !178, metadata !DIExpression()), !dbg !201
  tail call void @llvm.dbg.value(metadata double 0x3E38D48ED61D7AAB, metadata !179, metadata !DIExpression()), !dbg !201
  %16 = fmul double %15, 0x3E38D48ED61D7AAB, !dbg !203
  %handler_result = call double @fAddHandlerDouble(double %16, double 0x3EA937E11175F095), !dbg !204
  %17 = fmul double %15, %handler_result, !dbg !204
  %handler_result1 = call double @fAddHandlerDouble(double %17, double 0x3F11566ABC011567), !dbg !205
  %18 = fmul double %15, %handler_result1, !dbg !205
  %handler_result2 = call double @fAddHandlerDouble(double %18, double 0x3F6D41D41D41D41D), !dbg !206
  %19 = fmul double %15, %handler_result2, !dbg !206
  %handler_result3 = call double @fAddHandlerDouble(double %19, double 1.000000e-01), !dbg !207
  %20 = fmul double %15, %handler_result3, !dbg !207
  %handler_result4 = call double @fAddHandlerDouble(double %20, double 1.000000e+00), !dbg !208
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !180, metadata !DIExpression()), !dbg !201
  %21 = fmul double %14, %0, !dbg !208
  %22 = fdiv double %21, 3.000000e+00, !dbg !209
  %23 = fmul double %handler_result4, %22, !dbg !210
  store double %23, ptr %1, align 8, !dbg !211, !tbaa !120
  %24 = tail call double @llvm.fabs.f64(double %23), !dbg !212
  %25 = fmul double %24, 0x3CC0000000000000, !dbg !213
  %26 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !214
  store double %25, ptr %26, align 8, !dbg !215, !tbaa !158
  br label %40

27:                                               ; preds = %10
  %28 = fmul double %3, -2.000000e+00, !dbg !216
  %29 = tail call double @exp(double noundef %28) #7, !dbg !217
  tail call void @llvm.dbg.value(metadata double %29, metadata !181, metadata !DIExpression()), !dbg !218
  %handler_result5 = call double @fAddHandlerDouble(double %29, double 1.000000e+00), !dbg !219
  %30 = fmul double %3, %handler_result5, !dbg !219
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %29), !dbg !220
  %handler_result7 = call double @fSubHandlerDouble(double %30, double %handler_result6), !dbg !221
  %31 = fmul double %handler_result7, 5.000000e-01, !dbg !221
  %32 = fmul double %0, %0, !dbg !222
  %33 = fdiv double %31, %32, !dbg !223
  store double %33, ptr %1, align 8, !dbg !224, !tbaa !120
  %34 = tail call double @llvm.fabs.f64(double %33), !dbg !225
  %35 = fmul double %34, 0x3CC0000000000000, !dbg !226
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !227
  store double %35, ptr %36, align 8, !dbg !228, !tbaa !158
  %37 = fcmp olt double %0, 0.000000e+00, !dbg !229
  br i1 %37, label %38, label %40, !dbg !231

38:                                               ; preds = %27
  %39 = fneg double %33, !dbg !232
  store double %39, ptr %1, align 8, !dbg !233, !tbaa !120
  br label %40, !dbg !234

40:                                               ; preds = %38, %27, %12, %8, %5
  %41 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %38 ], [ 0, %27 ], !dbg !235
  ret i32 %41, !dbg !236
}

declare !dbg !237 void @gsl_error(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gsl_sf_bessel_i2_scaled_e(double noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 !dbg !242 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !244, metadata !DIExpression()), !dbg !262
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !245, metadata !DIExpression()), !dbg !262
  %3 = tail call double @llvm.fabs.f64(double %0), !dbg !263
  tail call void @llvm.dbg.value(metadata double %3, metadata !246, metadata !DIExpression()), !dbg !262
  %4 = fcmp oeq double %0, 0.000000e+00, !dbg !264
  br i1 %4, label %5, label %6, !dbg !265

5:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !dbg !266
  br label %41, !dbg !268

6:                                                ; preds = %2
  %7 = fcmp olt double %3, 0x2020000000000000, !dbg !269
  br i1 %7, label %8, label %10, !dbg !270

8:                                                ; preds = %6
  store double 0.000000e+00, ptr %1, align 8, !dbg !271, !tbaa !120
  %9 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !271
  store double 0x10000000000000, ptr %9, align 8, !dbg !271, !tbaa !158
  tail call void @gsl_error(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 148, i32 noundef 15) #7, !dbg !274
  br label %41, !dbg !274

10:                                               ; preds = %6
  %11 = fcmp olt double %3, 2.500000e-01, !dbg !276
  br i1 %11, label %12, label %28, !dbg !277

12:                                               ; preds = %10
  %13 = fmul double %0, %0, !dbg !278
  tail call void @llvm.dbg.value(metadata double %13, metadata !247, metadata !DIExpression()), !dbg !279
  tail call void @llvm.dbg.value(metadata double 0x3FB2492492492492, metadata !252, metadata !DIExpression()), !dbg !279
  tail call void @llvm.dbg.value(metadata double 0x3F60410410410410, metadata !253, metadata !DIExpression()), !dbg !279
  tail call void @llvm.dbg.value(metadata double 0x3EFF85D955D36CBB, metadata !254, metadata !DIExpression()), !dbg !279
  tail call void @llvm.dbg.value(metadata double 0x3E93660F974707D5, metadata !255, metadata !DIExpression()), !dbg !279
  tail call void @llvm.dbg.value(metadata double 0x3E208DB48EBE51C7, metadata !256, metadata !DIExpression()), !dbg !279
  %14 = fmul double %13, 0x3E208DB48EBE51C7, !dbg !280
  %handler_result = call double @fAddHandlerDouble(double %14, double 0x3E93660F974707D5), !dbg !281
  %15 = fmul double %13, %handler_result, !dbg !281
  %handler_result1 = call double @fAddHandlerDouble(double %15, double 0x3EFF85D955D36CBB), !dbg !282
  %16 = fmul double %13, %handler_result1, !dbg !282
  %handler_result2 = call double @fAddHandlerDouble(double %16, double 0x3F60410410410410), !dbg !283
  %17 = fmul double %13, %handler_result2, !dbg !283
  %handler_result3 = call double @fAddHandlerDouble(double %17, double 0x3FB2492492492492), !dbg !284
  %18 = fmul double %13, %handler_result3, !dbg !284
  %handler_result4 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !285
  tail call void @llvm.dbg.value(metadata double %handler_result4, metadata !257, metadata !DIExpression()), !dbg !279
  %19 = fneg double %3, !dbg !285
  %20 = tail call double @exp(double noundef %19) #7, !dbg !286
  %21 = fmul double %20, %0, !dbg !287
  %22 = fmul double %21, %0, !dbg !288
  %23 = fdiv double %22, 1.500000e+01, !dbg !289
  tail call void @llvm.dbg.value(metadata double %23, metadata !258, metadata !DIExpression()), !dbg !279
  %24 = fmul double %handler_result4, %23, !dbg !290
  store double %24, ptr %1, align 8, !dbg !291, !tbaa !120
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !292
  %26 = fmul double %25, 0x3CC0000000000000, !dbg !293
  %27 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !294
  store double %26, ptr %27, align 8, !dbg !295, !tbaa !158
  br label %41

28:                                               ; preds = %10
  %29 = fmul double %3, -2.000000e+00, !dbg !296
  %30 = tail call double @exp(double noundef %29) #7, !dbg !297
  tail call void @llvm.dbg.value(metadata double %30, metadata !259, metadata !DIExpression()), !dbg !298
  %31 = fmul double %0, %0, !dbg !299
  tail call void @llvm.dbg.value(metadata double %31, metadata !261, metadata !DIExpression()), !dbg !298
  %handler_result5 = call double @fAddHandlerDouble(double %31, double 3.000000e+00), !dbg !300
  %handler_result6 = call double @fSubHandlerDouble(double 1.000000e+00, double %30), !dbg !301
  %32 = fmul double %handler_result5, %handler_result6, !dbg !301
  %33 = fmul double %3, 3.000000e+00, !dbg !302
  %handler_result7 = call double @fAddHandlerDouble(double %30, double 1.000000e+00), !dbg !303
  %34 = fmul double %33, %handler_result7, !dbg !303
  %handler_result8 = call double @fSubHandlerDouble(double %32, double %34), !dbg !304
  %35 = fmul double %handler_result8, 5.000000e-01, !dbg !304
  %36 = fmul double %31, %3, !dbg !305
  %37 = fdiv double %35, %36, !dbg !306
  store double %37, ptr %1, align 8, !dbg !307, !tbaa !120
  %38 = tail call double @llvm.fabs.f64(double %37), !dbg !308
  %39 = fmul double %38, 0x3CC0000000000000, !dbg !309
  %40 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %1, i64 0, i32 1, !dbg !310
  store double %39, ptr %40, align 8, !dbg !311, !tbaa !158
  br label %41

41:                                               ; preds = %28, %12, %8, %5
  %42 = phi i32 [ 0, %5 ], [ 15, %8 ], [ 0, %12 ], [ 0, %28 ], !dbg !312
  ret i32 %42, !dbg !313
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #4 !dbg !314 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !368
  call void @llvm.dbg.assign(metadata i1 undef, metadata !330, metadata !DIExpression(), metadata !368, metadata ptr %4, metadata !DIExpression()), !dbg !369
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !370
  call void @llvm.dbg.assign(metadata i1 undef, metadata !334, metadata !DIExpression(), metadata !370, metadata ptr %5, metadata !DIExpression()), !dbg !371
  %6 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !372
  call void @llvm.dbg.assign(metadata i1 undef, metadata !338, metadata !DIExpression(), metadata !372, metadata ptr %6, metadata !DIExpression()), !dbg !373
  %7 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !343, metadata !DIExpression(), metadata !374, metadata ptr %7, metadata !DIExpression()), !dbg !375
  %8 = alloca double, align 8, !DIAssignID !376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !347, metadata !DIExpression(), metadata !376, metadata ptr %8, metadata !DIExpression()), !dbg !375
  %9 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !377
  call void @llvm.dbg.assign(metadata i1 undef, metadata !360, metadata !DIExpression(), metadata !377, metadata ptr %9, metadata !DIExpression()), !dbg !378
  %10 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !379
  call void @llvm.dbg.assign(metadata i1 undef, metadata !361, metadata !DIExpression(), metadata !379, metadata ptr %10, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !319, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double %1, metadata !320, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !321, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !322, metadata !DIExpression()), !dbg !380
  %11 = tail call double @llvm.fabs.f64(double %1), !dbg !381
  tail call void @llvm.dbg.value(metadata double %11, metadata !323, metadata !DIExpression()), !dbg !380
  %12 = fcmp olt double %1, 0.000000e+00, !dbg !382
  br i1 %12, label %13, label %18, !dbg !384

13:                                               ; preds = %3
  %14 = and i32 %0, 1, !dbg !385
  %15 = icmp eq i32 %14, 0, !dbg !385
  %16 = select i1 %15, double 1.000000e+00, double -1.000000e+00, !dbg !385
  tail call void @llvm.dbg.value(metadata double %16, metadata !322, metadata !DIExpression()), !dbg !380
  %17 = fneg double %1, !dbg !387
  tail call void @llvm.dbg.value(metadata double %17, metadata !320, metadata !DIExpression()), !dbg !380
  br label %18, !dbg !388

18:                                               ; preds = %13, %3
  %19 = phi double [ %16, %13 ], [ 1.000000e+00, %3 ], !dbg !380
  %20 = phi double [ %17, %13 ], [ %1, %3 ]
  tail call void @llvm.dbg.value(metadata double %20, metadata !320, metadata !DIExpression()), !dbg !380
  tail call void @llvm.dbg.value(metadata double %19, metadata !322, metadata !DIExpression()), !dbg !380
  %21 = icmp slt i32 %0, 0, !dbg !389
  br i1 %21, label %22, label %24, !dbg !390

22:                                               ; preds = %18
  store double 0x7FF8000000000000, ptr %2, align 8, !dbg !391, !tbaa !120
  %23 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !391
  store double 0x7FF8000000000000, ptr %23, align 8, !dbg !391, !tbaa !158
  tail call void @gsl_error(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 185, i32 noundef 1) #7, !dbg !394
  br label %207, !dbg !394

24:                                               ; preds = %18
  %25 = fcmp oeq double %20, 0.000000e+00, !dbg !396
  br i1 %25, label %26, label %30, !dbg !397

26:                                               ; preds = %24
  %27 = icmp eq i32 %0, 0, !dbg !398
  %28 = select i1 %27, double 1.000000e+00, double 0.000000e+00, !dbg !400
  store double %28, ptr %2, align 8, !dbg !401, !tbaa !120
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !402
  store double 0.000000e+00, ptr %29, align 8, !dbg !403, !tbaa !158
  br label %207, !dbg !404

30:                                               ; preds = %24
  switch i32 %0, label %73 [
    i32 0, label %31
    i32 1, label %59
    i32 2, label %66
  ], !dbg !405

31:                                               ; preds = %30
  call void @llvm.dbg.value(metadata double %20, metadata !100, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.value(metadata ptr undef, metadata !101, metadata !DIExpression()), !dbg !406
  %32 = tail call double @llvm.fabs.f64(double %20), !dbg !408
  call void @llvm.dbg.value(metadata double %32, metadata !102, metadata !DIExpression()), !dbg !406
  %33 = fcmp olt double %32, 2.000000e-01, !dbg !409
  br i1 %33, label %34, label %44, !dbg !410

34:                                               ; preds = %31
  %35 = fneg double %32, !dbg !411
  %36 = tail call double @exp(double noundef %35) #7, !dbg !412
  call void @llvm.dbg.value(metadata double %36, metadata !103, metadata !DIExpression()), !dbg !413
  %37 = fmul double %20, %20, !dbg !414
  call void @llvm.dbg.value(metadata double %37, metadata !107, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !108, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !109, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !110, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !111, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !112, metadata !DIExpression()), !dbg !413
  %38 = fmul double %37, 0x3E5AE64567F544E4, !dbg !415
  %handler_result = call double @fAddHandlerDouble(double %38, double 0x3EC71DE3A556C734), !dbg !416
  %39 = fmul double %37, %handler_result, !dbg !416
  %handler_result1 = call double @fAddHandlerDouble(double %39, double 0x3F2A01A01A01A01A), !dbg !417
  %40 = fmul double %37, %handler_result1, !dbg !417
  %handler_result2 = call double @fAddHandlerDouble(double %40, double 0x3F81111111111111), !dbg !418
  %41 = fmul double %37, %handler_result2, !dbg !418
  %handler_result3 = call double @fAddHandlerDouble(double %41, double 0x3FC5555555555555), !dbg !419
  %42 = fmul double %37, %handler_result3, !dbg !419
  %handler_result4 = call double @fAddHandlerDouble(double %42, double 1.000000e+00), !dbg !420
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !113, metadata !DIExpression()), !dbg !413
  %43 = fmul double %handler_result4, %36, !dbg !420
  tail call void @llvm.dbg.value(metadata double %43, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  br label %54, !dbg !422

44:                                               ; preds = %31
  %45 = fcmp olt double %32, 0x403205966F2B4F12, !dbg !423
  br i1 %45, label %46, label %51, !dbg !424

46:                                               ; preds = %44
  %47 = fmul double %32, -2.000000e+00, !dbg !425
  %48 = tail call double @exp(double noundef %47) #7, !dbg !426
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %48), !dbg !427
  %49 = fmul double %32, 2.000000e+00, !dbg !427
  %50 = fdiv double %handler_result5, %49, !dbg !428
  tail call void @llvm.dbg.value(metadata double %50, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  br label %54, !dbg !429

51:                                               ; preds = %44
  %52 = fmul double %32, 2.000000e+00, !dbg !430
  %53 = fdiv double 1.000000e+00, %52, !dbg !431
  tail call void @llvm.dbg.value(metadata double %53, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  br label %54

54:                                               ; preds = %51, %46, %34
  %55 = phi double [ %43, %34 ], [ %50, %46 ], [ %53, %51 ], !dbg !432
  %56 = fmul double %55, 0x3CC0000000000000, !dbg !433
  tail call void @llvm.dbg.value(metadata double %55, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !421
  tail call void @llvm.dbg.value(metadata double %56, metadata !324, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !421
  tail call void @llvm.dbg.value(metadata i32 0, metadata !329, metadata !DIExpression()), !dbg !421
  %57 = fmul double %19, %55, !dbg !434
  store double %57, ptr %2, align 8, !dbg !435, !tbaa !120
  %58 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !436
  store double %56, ptr %58, align 8, !dbg !437, !tbaa !158
  br label %207

59:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !438
  %60 = call i32 @gsl_sf_bessel_i1_scaled_e(double noundef %20, ptr noundef nonnull %4), !dbg !439, !range !440
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !333, metadata !DIExpression()), !dbg !369
  %61 = load double, ptr %4, align 8, !dbg !441, !tbaa !120
  %62 = fmul double %19, %61, !dbg !442
  store double %62, ptr %2, align 8, !dbg !443, !tbaa !120
  %63 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %4, i64 0, i32 1, !dbg !444
  %64 = load double, ptr %63, align 8, !dbg !444, !tbaa !158
  %65 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !445
  store double %64, ptr %65, align 8, !dbg !446, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !447
  br label %207

66:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !448
  %67 = call i32 @gsl_sf_bessel_i2_scaled_e(double noundef %20, ptr noundef nonnull %5), !dbg !449, !range !440
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !337, metadata !DIExpression()), !dbg !371
  %68 = load double, ptr %5, align 8, !dbg !450, !tbaa !120
  %69 = fmul double %19, %68, !dbg !451
  store double %69, ptr %2, align 8, !dbg !452, !tbaa !120
  %70 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %5, i64 0, i32 1, !dbg !453
  %71 = load double, ptr %70, align 8, !dbg !453, !tbaa !158
  %72 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !454
  store double %71, ptr %72, align 8, !dbg !455, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !456
  br label %207

73:                                               ; preds = %30
  %74 = fmul double %20, %20, !dbg !457
  %75 = sitofp i32 %0 to double, !dbg !458
  %handler_result6 = call double @fAddHandlerDouble(double %75, double 1.500000e+00), !dbg !459
  %76 = fmul double %handler_result6, 1.000000e+01, !dbg !459
  %77 = fdiv double %76, 0x4005BF0A8B145769, !dbg !460
  %78 = fcmp olt double %74, %77, !dbg !461
  br i1 %78, label %79, label %95, !dbg !462

79:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7, !dbg !463
  %handler_result7 = call double @fAddHandlerDouble(double %75, double 5.000000e-01), !dbg !464
  %80 = call i32 @gsl_sf_bessel_IJ_taylor_e(double noundef %handler_result7, double noundef %20, i32 noundef 1, i32 noundef 50, double noundef 0x3CB0000000000000, ptr noundef nonnull %6) #7, !dbg !464
  tail call void @llvm.dbg.value(metadata i32 %80, metadata !341, metadata !DIExpression()), !dbg !373
  %81 = fneg double %11, !dbg !465
  %82 = call double @exp(double noundef %81) #7, !dbg !466
  %83 = fdiv double 0x3FF921FB54442D18, %20, !dbg !467
  %84 = call double @sqrt(double noundef %83) #7, !dbg !468
  %85 = fmul double %82, %84, !dbg !469
  tail call void @llvm.dbg.value(metadata double %85, metadata !342, metadata !DIExpression()), !dbg !373
  %86 = fmul double %19, %85, !dbg !470
  %87 = load double, ptr %6, align 8, !dbg !471, !tbaa !120
  %88 = fmul double %87, %86, !dbg !472
  store double %88, ptr %2, align 8, !dbg !473, !tbaa !120
  %89 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %6, i64 0, i32 1, !dbg !474
  %90 = load double, ptr %89, align 8, !dbg !474, !tbaa !158
  %91 = fmul double %85, %90, !dbg !475
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !476
  %93 = call double @llvm.fabs.f64(double %88), !dbg !477
  %94 = fmul double %93, 0x3CC0000000000000, !dbg !478
  %handler_result8 = call double @fAddHandlerDouble(double %91, double %94), !dbg !479
  store double %handler_result8, ptr %92, align 8, !dbg !479, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7, !dbg !480
  br label %207

95:                                               ; preds = %73
  %96 = icmp ult i32 %0, 150, !dbg !481
  br i1 %96, label %97, label %124, !dbg !482

97:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7, !dbg !483
  %98 = call i32 @gsl_sf_bessel_i0_scaled_e(double noundef %11, ptr noundef nonnull %7), !dbg !484
  tail call void @llvm.dbg.value(metadata i32 0, metadata !346, metadata !DIExpression()), !dbg !375
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7, !dbg !485
  %99 = call fastcc i32 @bessel_il_CF1(i32 noundef %0, double noundef %11, ptr noundef nonnull %8), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 %99, metadata !348, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double poison, metadata !349, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double 0x2000000000000000, metadata !350, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !352, metadata !DIExpression()), !dbg !375
  %100 = load double, ptr %8, align 8, !dbg !487, !tbaa !488
  %101 = fmul double %100, 0x2000000000000000, !dbg !489
  tail call void @llvm.dbg.value(metadata double %101, metadata !349, metadata !DIExpression()), !dbg !375
  br label %102, !dbg !490

102:                                              ; preds = %102, %97
  %103 = phi double [ %104, %102 ], [ %101, %97 ]
  %104 = phi double [ %handler_result9, %102 ], [ 0x2000000000000000, %97 ]
  %105 = phi i32 [ %111, %102 ], [ %0, %97 ]
  tail call void @llvm.dbg.value(metadata double %103, metadata !349, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %104, metadata !350, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata i32 %105, metadata !352, metadata !DIExpression()), !dbg !375
  %106 = shl nuw nsw i32 %105, 1, !dbg !492
  %107 = or disjoint i32 %106, 1, !dbg !495
  %108 = sitofp i32 %107 to double, !dbg !496
  %109 = fdiv double %108, %20, !dbg !497
  %110 = fmul double %104, %109, !dbg !498
  %handler_result9 = call double @fAddHandlerDouble(double %103, double %110), !dbg !499
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !351, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %104, metadata !349, metadata !DIExpression()), !dbg !375
  tail call void @llvm.dbg.value(metadata double %handler_result9, metadata !350, metadata !DIExpression()), !dbg !375
  %111 = add nsw i32 %105, -1, !dbg !499
  tail call void @llvm.dbg.value(metadata i32 %111, metadata !352, metadata !DIExpression()), !dbg !375
  %112 = icmp ugt i32 %105, 1, !dbg !500
  br i1 %112, label %102, label %113, !dbg !490, !llvm.loop !501

113:                                              ; preds = %102
  %114 = load double, ptr %7, align 8, !dbg !504, !tbaa !120
  %115 = fmul double %19, %114, !dbg !505
  %116 = fdiv double 0x2000000000000000, %handler_result9, !dbg !506
  %117 = fmul double %116, %115, !dbg !507
  store double %117, ptr %2, align 8, !dbg !508, !tbaa !120
  %118 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %7, i64 0, i32 1, !dbg !509
  %119 = load double, ptr %118, align 8, !dbg !509, !tbaa !158
  %120 = fmul double %116, %119, !dbg !510
  %121 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !511
  %122 = tail call double @llvm.fabs.f64(double %117), !dbg !512
  %123 = fmul double %122, 0x3CC0000000000000, !dbg !513
  %handler_result10 = call double @fAddHandlerDouble(double %120, double %123), !dbg !514
  store double %handler_result10, ptr %121, align 8, !dbg !514, !tbaa !158
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7, !dbg !515
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7, !dbg !515
  br label %207

124:                                              ; preds = %95
  %125 = mul nsw i32 %0, %0, !dbg !516
  %126 = add nuw nsw i32 %125, 1, !dbg !516
  %127 = sitofp i32 %126 to double, !dbg !516
  %128 = fdiv double 2.900000e-01, %127, !dbg !516
  %handler_result11 = call double @fAddHandlerDouble(double %74, double %127), !dbg !516
  %129 = fdiv double 5.000000e-01, %handler_result11, !dbg !516
  %130 = fcmp olt double %128, %129, !dbg !516
  %131 = select i1 %130, double %128, double %129, !dbg !516
  %132 = fcmp olt double %131, 0x3EC965FEA53D6E41, !dbg !517
  br i1 %132, label %133, label %143, !dbg !518

133:                                              ; preds = %124
  %handler_result12 = call double @fAddHandlerDouble(double %75, double 5.000000e-01), !dbg !519
  %134 = tail call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef %handler_result12, double noundef %20, ptr noundef %2) #7, !dbg !519
  tail call void @llvm.dbg.value(metadata i32 %134, metadata !353, metadata !DIExpression()), !dbg !520
  %135 = fdiv double 0x3FF921FB54442D18, %20, !dbg !521
  %136 = tail call double @sqrt(double noundef %135) #7, !dbg !522
  tail call void @llvm.dbg.value(metadata double %136, metadata !356, metadata !DIExpression()), !dbg !520
  %137 = fmul double %19, %136, !dbg !523
  %138 = load double, ptr %2, align 8, !dbg !524, !tbaa !120
  %139 = fmul double %138, %137, !dbg !524
  store double %139, ptr %2, align 8, !dbg !524, !tbaa !120
  %140 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !525
  %141 = load double, ptr %140, align 8, !dbg !526, !tbaa !158
  %142 = fmul double %136, %141, !dbg !526
  store double %142, ptr %140, align 8, !dbg !526, !tbaa !158
  br label %207

143:                                              ; preds = %124
  %144 = fdiv double 0x3FF921FB54442D18, %20, !dbg !527
  %145 = tail call double @sqrt(double noundef %144) #7, !dbg !528
  tail call void @llvm.dbg.value(metadata double %145, metadata !357, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i32 489, metadata !359, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7, !dbg !529
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #7, !dbg !530
  %146 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef 4.905000e+02, double noundef %20, ptr noundef nonnull %9) #7, !dbg !531
  tail call void @llvm.dbg.value(metadata i32 %146, metadata !362, metadata !DIExpression()), !dbg !378
  %147 = call i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef 4.895000e+02, double noundef %20, ptr noundef nonnull %10) #7, !dbg !532
  tail call void @llvm.dbg.value(metadata i32 %147, metadata !363, metadata !DIExpression()), !dbg !378
  %148 = load double, ptr %9, align 8, !dbg !533, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %148, metadata !364, metadata !DIExpression()), !dbg !378
  %149 = load double, ptr %10, align 8, !dbg !534, !tbaa !120
  tail call void @llvm.dbg.value(metadata double poison, metadata !365, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i32 489, metadata !367, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !366, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double poison, metadata !364, metadata !DIExpression()), !dbg !378
  %150 = icmp ult i32 %0, 489, !dbg !535
  br i1 %150, label %151, label %190, !dbg !538

151:                                              ; preds = %143
  %152 = fmul double %145, %149, !dbg !539
  tail call void @llvm.dbg.value(metadata double %152, metadata !365, metadata !DIExpression()), !dbg !378
  %153 = fmul double %145, %148, !dbg !540
  tail call void @llvm.dbg.value(metadata double %153, metadata !364, metadata !DIExpression()), !dbg !378
  %154 = sub nsw i32 489, %0, !dbg !538
  %155 = and i32 %154, 1, !dbg !538
  %156 = icmp eq i32 %0, 488, !dbg !538
  br i1 %156, label %181, label %157, !dbg !538

157:                                              ; preds = %151
  %158 = and i32 %154, -2, !dbg !538
  br label %159, !dbg !538

159:                                              ; preds = %159, %157
  %160 = phi i32 [ 489, %157 ], [ %174, %159 ]
  %161 = phi double [ %152, %157 ], [ %handler_result14, %159 ]
  %162 = phi double [ %153, %157 ], [ %handler_result13, %159 ]
  %163 = phi i32 [ 0, %157 ], [ %175, %159 ]
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !367, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double %161, metadata !365, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double %162, metadata !364, metadata !DIExpression()), !dbg !378
  %164 = shl nsw i32 %160, 1, !dbg !541
  %165 = or disjoint i32 %164, 1, !dbg !543
  %166 = sitofp i32 %165 to double, !dbg !544
  %167 = fdiv double %166, %20, !dbg !545
  %168 = fmul double %161, %167, !dbg !546
  %handler_result13 = call double @fAddHandlerDouble(double %162, double %168), !dbg !541
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !366, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double %161, metadata !364, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !365, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !367, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !378
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !367, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !378
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !365, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double %161, metadata !364, metadata !DIExpression()), !dbg !378
  %169 = shl i32 %160, 1, !dbg !541
  %170 = add i32 %169, -1, !dbg !543
  %171 = sitofp i32 %170 to double, !dbg !544
  %172 = fdiv double %171, %20, !dbg !545
  %173 = fmul double %handler_result13, %172, !dbg !546
  %handler_result14 = call double @fAddHandlerDouble(double %161, double %173), !dbg !547
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !366, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double %handler_result13, metadata !364, metadata !DIExpression()), !dbg !378
  tail call void @llvm.dbg.value(metadata double %handler_result14, metadata !365, metadata !DIExpression()), !dbg !378
  %174 = add nsw i32 %160, -2, !dbg !547
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !367, metadata !DIExpression()), !dbg !378
  %175 = add i32 %163, 2, !dbg !538
  %176 = icmp eq i32 %175, %158, !dbg !538
  br i1 %176, label %177, label %159, !dbg !538, !llvm.loop !548

177:                                              ; preds = %159
  %178 = shl nsw i32 %174, 1, !dbg !541
  %179 = or disjoint i32 %178, 1, !dbg !543
  %180 = sitofp i32 %179 to double, !dbg !544
  br label %181, !dbg !538

181:                                              ; preds = %177, %151
  %182 = phi double [ undef, %151 ], [ %handler_result14, %177 ]
  %183 = phi double [ 9.790000e+02, %151 ], [ %180, %177 ]
  %184 = phi double [ %152, %151 ], [ %handler_result14, %177 ]
  %185 = phi double [ %153, %151 ], [ %handler_result13, %177 ]
  %186 = icmp eq i32 %155, 0, !dbg !538
  %187 = fdiv double %183, %20, !dbg !538
  %188 = fmul double %184, %187, !dbg !538
  %handler_result15 = call double @fAddHandlerDouble(double %185, double %188), !dbg !538
  %189 = select i1 %186, double %182, double %handler_result15, !dbg !538
  br label %190, !dbg !550

190:                                              ; preds = %181, %143
  %191 = phi double [ 0.000000e+00, %143 ], [ %189, %181 ], !dbg !378
  %192 = fmul double %19, %191, !dbg !550
  store double %192, ptr %2, align 8, !dbg !551, !tbaa !120
  %193 = call double @llvm.fabs.f64(double %192), !dbg !552
  %194 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %9, i64 0, i32 1, !dbg !553
  %195 = load double, ptr %194, align 8, !dbg !553, !tbaa !158
  %196 = fdiv double %195, %148, !dbg !554
  %197 = call double @llvm.fabs.f64(double %196), !dbg !555
  %handler_result16 = call double @fAddHandlerDouble(double %197, double 0x3CB0000000000000), !dbg !556
  %198 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %10, i64 0, i32 1, !dbg !556
  %199 = load double, ptr %198, align 8, !dbg !556, !tbaa !158
  %200 = fdiv double %199, %149, !dbg !557
  %201 = call double @llvm.fabs.f64(double %200), !dbg !558
  %handler_result17 = call double @fAddHandlerDouble(double %handler_result16, double %201), !dbg !559
  %202 = fmul double %193, %handler_result17, !dbg !559
  %203 = getelementptr inbounds %struct.gsl_sf_result_struct, ptr %2, i64 0, i32 1, !dbg !560
  %204 = fmul double %193, 0x3CC0000000000000, !dbg !561
  %handler_result18 = call double @fAddHandlerDouble(double %204, double %202), !dbg !562
  store double %handler_result18, ptr %203, align 8, !dbg !562, !tbaa !158
  %205 = icmp eq i32 %146, 0, !dbg !563
  %206 = select i1 %205, i32 %147, i32 %146, !dbg !563
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #7, !dbg !564
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7, !dbg !564
  br label %207

207:                                              ; preds = %190, %133, %113, %79, %66, %59, %54, %26, %22
  %208 = phi i32 [ 1, %22 ], [ 0, %26 ], [ 0, %54 ], [ %60, %59 ], [ %67, %66 ], [ %80, %79 ], [ %99, %113 ], [ %134, %133 ], [ %206, %190 ], !dbg !565
  ret i32 %208, !dbg !566
}

declare !dbg !567 i32 @gsl_sf_bessel_IJ_taylor_e(double noundef, double noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare !dbg !571 double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @bessel_il_CF1(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !dbg !572 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !577, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double %1, metadata !578, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, metadata !579, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !580, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata i32 2000, metadata !581, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !582, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !583, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !584, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata i32 1, metadata !585, metadata !DIExpression()), !dbg !590
  %4 = sitofp i32 %0 to double, !dbg !591
  %5 = fmul double %4, 2.000000e+00, !dbg !592
  %handler_result = call double @fAddHandlerDouble(double %5, double 1.000000e+00)
  tail call void @llvm.dbg.value(metadata i32 1, metadata !585, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !584, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !583, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !582, metadata !DIExpression()), !dbg !590
  %handler_result1 = call double @fAddHandlerDouble(double %5, double 3.000000e+00), !dbg !593
  br label %6, !dbg !593

6:                                                ; preds = %24, %3
  %7 = phi i32 [ 1, %3 ], [ %25, %24 ]
  %8 = phi double [ 0.000000e+00, %3 ], [ %19, %24 ]
  %9 = phi double [ 1.000000e+00, %3 ], [ %handler_result6, %24 ]
  %10 = phi double [ 1.000000e+00, %3 ], [ %20, %24 ]
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !585, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double %8, metadata !584, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double %9, metadata !583, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double %10, metadata !582, metadata !DIExpression()), !dbg !590
  %11 = sitofp i32 %7 to double, !dbg !594
  %12 = fmul double %11, 2.000000e+00, !dbg !595
  %handler_result2 = call double @fAddHandlerDouble(double %handler_result, double %12), !dbg !596
  %13 = fdiv double %1, %handler_result2, !dbg !596
  %handler_result3 = call double @fAddHandlerDouble(double %handler_result1, double %12), !dbg !597
  %14 = fdiv double %1, %handler_result3, !dbg !597
  %15 = fmul double %13, %14, !dbg !598
  tail call void @llvm.dbg.value(metadata double %15, metadata !586, metadata !DIExpression()), !dbg !599
  %16 = fneg double %15, !dbg !600
  %handler_result4 = call double @fAddHandlerDouble(double %8, double 1.000000e+00), !dbg !601
  %17 = fmul double %handler_result4, %16, !dbg !601
  %18 = fmul double %handler_result4, %15, !dbg !602
  %handler_result5 = call double @fAddHandlerDouble(double %18, double 1.000000e+00), !dbg !603
  %19 = fdiv double %17, %handler_result5, !dbg !603
  tail call void @llvm.dbg.value(metadata double %19, metadata !584, metadata !DIExpression()), !dbg !590
  %20 = fmul double %10, %19, !dbg !604
  tail call void @llvm.dbg.value(metadata double %20, metadata !582, metadata !DIExpression()), !dbg !590
  %handler_result6 = call double @fAddHandlerDouble(double %9, double %20), !dbg !605
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !583, metadata !DIExpression()), !dbg !590
  %21 = fdiv double %20, %handler_result6, !dbg !605
  %22 = tail call double @llvm.fabs.f64(double %21), !dbg !607
  %23 = fcmp olt double %22, 0x3CB0000000000000, !dbg !608
  br i1 %23, label %30, label %24

24:                                               ; preds = %6
  %25 = add nuw nsw i32 %7, 1, !dbg !609
  tail call void @llvm.dbg.value(metadata i32 %25, metadata !585, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double %19, metadata !584, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !583, metadata !DIExpression()), !dbg !590
  tail call void @llvm.dbg.value(metadata double %20, metadata !582, metadata !DIExpression()), !dbg !590
  %26 = icmp eq i32 %25, 2001, !dbg !610
  br i1 %26, label %27, label %6, !dbg !593, !llvm.loop !611

27:                                               ; preds = %24
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !583, metadata !DIExpression()), !dbg !590
  %28 = fdiv double %1, %handler_result1, !dbg !613
  %29 = fmul double %28, %handler_result6, !dbg !614
  store double %29, ptr %2, align 8, !dbg !615, !tbaa !488
  br label %35, !dbg !616

30:                                               ; preds = %6
  tail call void @llvm.dbg.value(metadata double %handler_result6, metadata !583, metadata !DIExpression()), !dbg !590
  %31 = fdiv double %1, %handler_result1, !dbg !613
  %32 = fmul double %31, %handler_result6, !dbg !614
  store double %32, ptr %2, align 8, !dbg !615, !tbaa !488
  %33 = icmp eq i32 %7, 2000, !dbg !617
  br i1 %33, label %34, label %35, !dbg !616

34:                                               ; preds = %30
  tail call void @gsl_error(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 56, i32 noundef 11) #7, !dbg !619
  br label %35, !dbg !619

35:                                               ; preds = %34, %30, %27
  %36 = phi i32 [ 11, %34 ], [ 0, %30 ], [ 0, %27 ], !dbg !621
  ret i32 %36, !dbg !622
}

declare !dbg !623 i32 @gsl_sf_bessel_Inu_scaled_asymp_unif_e(double noundef, double noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gsl_sf_bessel_il_scaled_array(i32 noundef %0, double noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 !dbg !626 {
  %4 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !645
  call void @llvm.dbg.assign(metadata i1 undef, metadata !638, metadata !DIExpression(), metadata !645, metadata ptr %4, metadata !DIExpression()), !dbg !646
  %5 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !639, metadata !DIExpression(), metadata !647, metadata ptr %5, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !630, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata double %1, metadata !631, metadata !DIExpression()), !dbg !648
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !632, metadata !DIExpression()), !dbg !648
  %6 = fcmp oeq double %1, 0.000000e+00, !dbg !649
  br i1 %6, label %7, label %17, !dbg !650

7:                                                ; preds = %3
  store double 1.000000e+00, ptr %2, align 8, !dbg !651, !tbaa !488
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !633, metadata !DIExpression()), !dbg !652
  %8 = icmp sgt i32 %0, 0, !dbg !653
  br i1 %8, label %9, label %68, !dbg !656

9:                                                ; preds = %7
  %10 = zext nneg i32 %0 to i64, !dbg !656
  %11 = shl nuw nsw i64 %10, 3, !dbg !656
  %12 = add nsw i32 %0, -1, !dbg !656
  %13 = zext nneg i32 %12 to i64, !dbg !656
  %14 = sub nsw i64 %10, %13, !dbg !656
  %15 = shl nsw i64 %14, 3, !dbg !656
  %16 = getelementptr i8, ptr %2, i64 %15, !dbg !656
  tail call void @llvm.memset.p0.i64(ptr align 8 %16, i8 0, i64 %11, i1 false), !dbg !657, !tbaa !488
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !633, metadata !DIExpression()), !dbg !652
  br label %68, !dbg !659

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7, !dbg !660
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7, !dbg !661
  %18 = add nsw i32 %0, 1, !dbg !662
  %19 = call i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %18, double noundef %1, ptr noundef nonnull %4), !dbg !663
  tail call void @llvm.dbg.value(metadata i32 %19, metadata !640, metadata !DIExpression()), !dbg !646
  %20 = call i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %5), !dbg !664
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !641, metadata !DIExpression()), !dbg !646
  %21 = load double, ptr %4, align 8, !dbg !665, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %21, metadata !642, metadata !DIExpression()), !dbg !646
  %22 = load double, ptr %5, align 8, !dbg !666, !tbaa !120
  tail call void @llvm.dbg.value(metadata double %22, metadata !643, metadata !DIExpression()), !dbg !646
  %23 = sext i32 %0 to i64, !dbg !667
  %24 = getelementptr inbounds double, ptr %2, i64 %23, !dbg !667
  store double %22, ptr %24, align 8, !dbg !668, !tbaa !488
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !636, metadata !DIExpression()), !dbg !646
  %25 = getelementptr double, ptr %2, i64 -1, !dbg !669
  tail call void @llvm.dbg.value(metadata double %22, metadata !643, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %21, metadata !642, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !636, metadata !DIExpression()), !dbg !646
  %26 = icmp sgt i32 %0, 0, !dbg !671
  br i1 %26, label %27, label %65, !dbg !673

27:                                               ; preds = %17
  %28 = zext nneg i32 %0 to i64, !dbg !673
  %29 = and i64 %28, 1, !dbg !673
  %30 = icmp eq i64 %29, 0, !dbg !673
  br i1 %30, label %39, label %31, !dbg !673

31:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata double %22, metadata !643, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %21, metadata !642, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !636, metadata !DIExpression()), !dbg !646
  %32 = shl nuw nsw i32 %0, 1, !dbg !674
  %33 = or disjoint i32 %32, 1, !dbg !676
  %34 = sitofp i32 %33 to double, !dbg !677
  %35 = fdiv double %34, %1, !dbg !678
  %36 = fmul double %22, %35, !dbg !679
  %handler_result = call double @fAddHandlerDouble(double %21, double %36), !dbg !680
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !644, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %22, metadata !642, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %handler_result, metadata !643, metadata !DIExpression()), !dbg !646
  %37 = getelementptr double, ptr %25, i64 %28, !dbg !680
  store double %handler_result, ptr %37, align 8, !dbg !681, !tbaa !488
  %38 = add nsw i64 %28, -1, !dbg !682
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !636, metadata !DIExpression()), !dbg !646
  br label %39, !dbg !673

39:                                               ; preds = %31, %27
  %40 = phi i64 [ %28, %27 ], [ %38, %31 ]
  %41 = phi double [ %22, %27 ], [ %handler_result, %31 ]
  %42 = phi double [ %21, %27 ], [ %22, %31 ]
  %43 = icmp eq i32 %0, 1, !dbg !673
  br i1 %43, label %65, label %44, !dbg !673

44:                                               ; preds = %44, %39
  %45 = phi i64 [ %63, %44 ], [ %40, %39 ]
  %46 = phi double [ %handler_result2, %44 ], [ %41, %39 ]
  %47 = phi double [ %handler_result1, %44 ], [ %42, %39 ]
  tail call void @llvm.dbg.value(metadata double %46, metadata !643, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %47, metadata !642, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata i64 %45, metadata !636, metadata !DIExpression()), !dbg !646
  %48 = trunc i64 %45 to i32, !dbg !674
  %49 = shl nuw nsw i32 %48, 1, !dbg !674
  %50 = or disjoint i32 %49, 1, !dbg !676
  %51 = sitofp i32 %50 to double, !dbg !677
  %52 = fdiv double %51, %1, !dbg !678
  %53 = fmul double %46, %52, !dbg !679
  %handler_result1 = call double @fAddHandlerDouble(double %47, double %53), !dbg !680
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !644, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %46, metadata !642, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !643, metadata !DIExpression()), !dbg !646
  %54 = getelementptr double, ptr %25, i64 %45, !dbg !680
  store double %handler_result1, ptr %54, align 8, !dbg !681, !tbaa !488
  %55 = add nsw i64 %45, -1, !dbg !682
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !636, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !643, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %46, metadata !642, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata i64 %55, metadata !636, metadata !DIExpression()), !dbg !646
  %56 = trunc i64 %55 to i32, !dbg !674
  %57 = shl nuw nsw i32 %56, 1, !dbg !674
  %58 = or disjoint i32 %57, 1, !dbg !676
  %59 = sitofp i32 %58 to double, !dbg !677
  %60 = fdiv double %59, %1, !dbg !678
  %61 = fmul double %handler_result1, %60, !dbg !679
  %handler_result2 = call double @fAddHandlerDouble(double %46, double %61), !dbg !680
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !644, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %handler_result1, metadata !642, metadata !DIExpression()), !dbg !646
  tail call void @llvm.dbg.value(metadata double %handler_result2, metadata !643, metadata !DIExpression()), !dbg !646
  %62 = getelementptr double, ptr %25, i64 %55, !dbg !680
  store double %handler_result2, ptr %62, align 8, !dbg !681, !tbaa !488
  %63 = add nsw i64 %45, -2, !dbg !682
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !636, metadata !DIExpression()), !dbg !646
  %64 = icmp ugt i64 %55, 1, !dbg !671
  br i1 %64, label %44, label %65, !dbg !673, !llvm.loop !683

65:                                               ; preds = %44, %39, %17
  %66 = icmp eq i32 %19, 0, !dbg !685
  %67 = select i1 %66, i32 %20, i32 %19, !dbg !685
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7, !dbg !686
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7, !dbg !686
  br label %68

68:                                               ; preds = %65, %9, %7
  %69 = phi i32 [ %67, %65 ], [ 0, %7 ], [ 0, %9 ], !dbg !687
  ret i32 %69, !dbg !659
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define dso_local double @gsl_sf_bessel_i0_scaled(double noundef %0) local_unnamed_addr #0 !dbg !688 {
  tail call void @llvm.dbg.value(metadata double %0, metadata !692, metadata !DIExpression()), !dbg !695
  call void @llvm.dbg.value(metadata double %0, metadata !100, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata ptr undef, metadata !101, metadata !DIExpression()), !dbg !696
  %2 = tail call double @llvm.fabs.f64(double %0), !dbg !698
  call void @llvm.dbg.value(metadata double %2, metadata !102, metadata !DIExpression()), !dbg !696
  %3 = fcmp oeq double %0, 0.000000e+00, !dbg !699
  br i1 %3, label %26, label %4, !dbg !700

4:                                                ; preds = %1
  %5 = fcmp olt double %2, 2.000000e-01, !dbg !701
  br i1 %5, label %6, label %16, !dbg !702

6:                                                ; preds = %4
  %7 = fneg double %2, !dbg !703
  %8 = tail call double @exp(double noundef %7) #7, !dbg !704
  call void @llvm.dbg.value(metadata double %8, metadata !103, metadata !DIExpression()), !dbg !705
  %9 = fmul double %0, %0, !dbg !706
  call void @llvm.dbg.value(metadata double %9, metadata !107, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0x3FC5555555555555, metadata !108, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0x3F81111111111111, metadata !109, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0x3F2A01A01A01A01A, metadata !110, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0x3EC71DE3A556C734, metadata !111, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata double 0x3E5AE64567F544E4, metadata !112, metadata !DIExpression()), !dbg !705
  %10 = fmul double %9, 0x3E5AE64567F544E4, !dbg !707
  %handler_result = call double @fAddHandlerDouble(double %10, double 0x3EC71DE3A556C734), !dbg !708
  %11 = fmul double %9, %handler_result, !dbg !708
  %handler_result1 = call double @fAddHandlerDouble(double %11, double 0x3F2A01A01A01A01A), !dbg !709
  %12 = fmul double %9, %handler_result1, !dbg !709
  %handler_result2 = call double @fAddHandlerDouble(double %12, double 0x3F81111111111111), !dbg !710
  %13 = fmul double %9, %handler_result2, !dbg !710
  %handler_result3 = call double @fAddHandlerDouble(double %13, double 0x3FC5555555555555), !dbg !711
  %14 = fmul double %9, %handler_result3, !dbg !711
  %handler_result4 = call double @fAddHandlerDouble(double %14, double 1.000000e+00), !dbg !712
  call void @llvm.dbg.value(metadata double %handler_result4, metadata !113, metadata !DIExpression()), !dbg !705
  %15 = fmul double %handler_result4, %8, !dbg !712
  tail call void @llvm.dbg.value(metadata double %15, metadata !693, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !695
  br label %26, !dbg !713

16:                                               ; preds = %4
  %17 = fcmp olt double %2, 0x403205966F2B4F12, !dbg !714
  br i1 %17, label %18, label %23, !dbg !715

18:                                               ; preds = %16
  %19 = fmul double %2, -2.000000e+00, !dbg !716
  %20 = tail call double @exp(double noundef %19) #7, !dbg !717
  %handler_result5 = call double @fSubHandlerDouble(double 1.000000e+00, double %20), !dbg !718
  %21 = fmul double %2, 2.000000e+00, !dbg !718
  %22 = fdiv double %handler_result5, %21, !dbg !719
  tail call void @llvm.dbg.value(metadata double %22, metadata !693, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !695
  br label %26, !dbg !720

23:                                               ; preds = %16
  %24 = fmul double %2, 2.000000e+00, !dbg !721
  %25 = fdiv double 1.000000e+00, %24, !dbg !722
  tail call void @llvm.dbg.value(metadata double %25, metadata !693, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !695
  br label %26

26:                                               ; preds = %23, %18, %6, %1
  %27 = phi double [ %15, %6 ], [ %22, %18 ], [ %25, %23 ], [ 1.000000e+00, %1 ], !dbg !723
  tail call void @llvm.dbg.value(metadata double %27, metadata !693, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !695
  tail call void @llvm.dbg.value(metadata double poison, metadata !693, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !695
  tail call void @llvm.dbg.value(metadata i32 0, metadata !694, metadata !DIExpression()), !dbg !695
  ret double %27, !dbg !724
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_i1_scaled(double noundef %0) local_unnamed_addr #4 !dbg !725 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !730
  call void @llvm.dbg.assign(metadata i1 undef, metadata !728, metadata !DIExpression(), metadata !730, metadata ptr %2, metadata !DIExpression()), !dbg !731
  tail call void @llvm.dbg.value(metadata double %0, metadata !727, metadata !DIExpression()), !dbg !731
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !732
  %3 = call i32 @gsl_sf_bessel_i1_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !732, !range !440
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !729, metadata !DIExpression()), !dbg !731
  %4 = icmp eq i32 %3, 0, !dbg !733
  br i1 %4, label %6, label %5, !dbg !732

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 317, i32 noundef %3) #7, !dbg !735
  br label %6, !dbg !735

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !732, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !738
  ret double %7, !dbg !738
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_i2_scaled(double noundef %0) local_unnamed_addr #4 !dbg !739 {
  %2 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !744
  call void @llvm.dbg.assign(metadata i1 undef, metadata !742, metadata !DIExpression(), metadata !744, metadata ptr %2, metadata !DIExpression()), !dbg !745
  tail call void @llvm.dbg.value(metadata double %0, metadata !741, metadata !DIExpression()), !dbg !745
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7, !dbg !746
  %3 = call i32 @gsl_sf_bessel_i2_scaled_e(double noundef %0, ptr noundef nonnull %2), !dbg !746, !range !440
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !743, metadata !DIExpression()), !dbg !745
  %4 = icmp eq i32 %3, 0, !dbg !747
  br i1 %4, label %6, label %5, !dbg !746

5:                                                ; preds = %1
  tail call void @gsl_error(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 322, i32 noundef %3) #7, !dbg !749
  br label %6, !dbg !749

6:                                                ; preds = %5, %1
  %7 = load double, ptr %2, align 8, !dbg !746, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7, !dbg !752
  ret double %7, !dbg !752
}

; Function Attrs: nounwind uwtable
define dso_local double @gsl_sf_bessel_il_scaled(i32 noundef %0, double noundef %1) local_unnamed_addr #4 !dbg !753 {
  %3 = alloca %struct.gsl_sf_result_struct, align 8, !DIAssignID !761
  call void @llvm.dbg.assign(metadata i1 undef, metadata !759, metadata !DIExpression(), metadata !761, metadata ptr %3, metadata !DIExpression()), !dbg !762
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !757, metadata !DIExpression()), !dbg !762
  tail call void @llvm.dbg.value(metadata double %1, metadata !758, metadata !DIExpression()), !dbg !762
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7, !dbg !763
  %4 = call i32 @gsl_sf_bessel_il_scaled_e(i32 noundef %0, double noundef %1, ptr noundef nonnull %3), !dbg !763
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !760, metadata !DIExpression()), !dbg !762
  %5 = icmp eq i32 %4, 0, !dbg !764
  br i1 %5, label %7, label %6, !dbg !763

6:                                                ; preds = %2
  call void @gsl_error(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 327, i32 noundef %4) #7, !dbg !766
  br label %7, !dbg !766

7:                                                ; preds = %6, %2
  %8 = load double, ptr %3, align 8, !dbg !763, !tbaa !120
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7, !dbg !769
  ret double %8, !dbg !769
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare double @fAddHandlerDouble(double, double)

declare double @fSubHandlerDouble(double, double)

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!34}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "bessel_i.c", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "9f427502f9cfda31584f7f3329f1d314")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 10)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 11)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 317, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 38)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !19, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 327, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 41)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 6)
!34 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !35, retainedTypes: !75, globals: !76, splitDebugInlining: false, nameTableKind: None)
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
!75 = !{!38}
!76 = !{!0, !7, !12, !77, !17, !22, !24, !29}
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !19, isLocal: true, isDefinition: true)
!79 = !{i32 7, !"Dwarf Version", i32 5}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{i32 1, !"wchar_size", i32 4}
!82 = !{i32 8, !"PIC Level", i32 2}
!83 = !{i32 7, !"PIE Level", i32 2}
!84 = !{i32 7, !"uwtable", i32 2}
!85 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!86 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!87 = distinct !DISubprogram(name: "gsl_sf_bessel_i0_scaled_e", scope: !2, file: !2, line: 64, type: !88, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !99)
!88 = !DISubroutineType(types: !89)
!89 = !{!38, !90, !92}
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !94, line: 41, baseType: !95)
!94 = !DIFile(filename: "../gsl/gsl_sf_result.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "5b52deed011f1ffd07977b19a388d251")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !94, line: 37, size: 128, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !95, file: !94, line: 38, baseType: !91, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !95, file: !94, line: 39, baseType: !91, size: 64, offset: 64)
!99 = !{!100, !101, !102, !103, !107, !108, !109, !110, !111, !112, !113}
!100 = !DILocalVariable(name: "x", arg: 1, scope: !87, file: !2, line: 64, type: !90)
!101 = !DILocalVariable(name: "result", arg: 2, scope: !87, file: !2, line: 64, type: !92)
!102 = !DILocalVariable(name: "ax", scope: !87, file: !2, line: 66, type: !91)
!103 = !DILocalVariable(name: "eax", scope: !104, file: !2, line: 76, type: !90)
!104 = distinct !DILexicalBlock(scope: !105, file: !2, line: 75, column: 21)
!105 = distinct !DILexicalBlock(scope: !106, file: !2, line: 75, column: 11)
!106 = distinct !DILexicalBlock(scope: !87, file: !2, line: 70, column: 6)
!107 = !DILocalVariable(name: "y", scope: !104, file: !2, line: 77, type: !90)
!108 = !DILocalVariable(name: "c1", scope: !104, file: !2, line: 78, type: !90)
!109 = !DILocalVariable(name: "c2", scope: !104, file: !2, line: 79, type: !90)
!110 = !DILocalVariable(name: "c3", scope: !104, file: !2, line: 80, type: !90)
!111 = !DILocalVariable(name: "c4", scope: !104, file: !2, line: 81, type: !90)
!112 = !DILocalVariable(name: "c5", scope: !104, file: !2, line: 82, type: !90)
!113 = !DILocalVariable(name: "sum", scope: !104, file: !2, line: 83, type: !90)
!114 = !DILocation(line: 0, scope: !87)
!115 = !DILocation(line: 66, column: 15, scope: !87)
!116 = !DILocation(line: 70, column: 8, scope: !106)
!117 = !DILocation(line: 70, column: 6, scope: !87)
!118 = !DILocation(line: 71, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !106, file: !2, line: 70, column: 16)
!120 = !{!121, !122, i64 0}
!121 = !{!"gsl_sf_result_struct", !122, i64 0, !122, i64 8}
!122 = !{!"double", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C/C++ TBAA"}
!125 = !DILocation(line: 73, column: 5, scope: !119)
!126 = !DILocation(line: 75, column: 14, scope: !105)
!127 = !DILocation(line: 75, column: 11, scope: !106)
!128 = !DILocation(line: 76, column: 28, scope: !104)
!129 = !DILocation(line: 76, column: 24, scope: !104)
!130 = !DILocation(line: 0, scope: !104)
!131 = !DILocation(line: 77, column: 24, scope: !104)
!132 = !DILocation(line: 83, column: 63, scope: !104)
!133 = !DILocation(line: 83, column: 55, scope: !104)
!134 = !DILocation(line: 83, column: 47, scope: !104)
!135 = !DILocation(line: 83, column: 39, scope: !104)
!136 = !DILocation(line: 83, column: 31, scope: !104)
!137 = !DILocation(line: 84, column: 23, scope: !104)
!138 = !DILocation(line: 84, column: 17, scope: !104)
!139 = !DILocation(line: 85, column: 41, scope: !104)
!140 = !DILocation(line: 86, column: 3, scope: !104)
!141 = !DILocation(line: 87, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !105, file: !2, line: 87, column: 11)
!143 = !DILocation(line: 87, column: 11, scope: !105)
!144 = !DILocation(line: 88, column: 34, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !2, line: 87, column: 42)
!146 = !DILocation(line: 88, column: 26, scope: !145)
!147 = !DILocation(line: 88, column: 44, scope: !145)
!148 = !DILocation(line: 88, column: 39, scope: !145)
!149 = !DILocation(line: 88, column: 17, scope: !145)
!150 = !DILocation(line: 89, column: 41, scope: !145)
!151 = !DILocation(line: 90, column: 3, scope: !145)
!152 = !DILocation(line: 92, column: 27, scope: !153)
!153 = distinct !DILexicalBlock(scope: !142, file: !2, line: 91, column: 8)
!154 = !DILocation(line: 92, column: 22, scope: !153)
!155 = !DILocation(line: 92, column: 17, scope: !153)
!156 = !DILocation(line: 93, column: 41, scope: !153)
!157 = !DILocation(line: 0, scope: !106)
!158 = !{!121, !122, i64 8}
!159 = !DILocation(line: 96, column: 1, scope: !87)
!160 = !DISubprogram(name: "exp", scope: !161, file: !161, line: 95, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "", checksumkind: CSK_MD5, checksum: "12f0a7cb98f2ec572091728ebaf4a161")
!162 = !DISubroutineType(types: !163)
!163 = !{!91, !91}
!164 = distinct !DISubprogram(name: "gsl_sf_bessel_i1_scaled_e", scope: !2, file: !2, line: 99, type: !88, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !165)
!165 = !{!166, !167, !168, !169, !174, !175, !176, !177, !178, !179, !180, !181}
!166 = !DILocalVariable(name: "x", arg: 1, scope: !164, file: !2, line: 99, type: !90)
!167 = !DILocalVariable(name: "result", arg: 2, scope: !164, file: !2, line: 99, type: !92)
!168 = !DILocalVariable(name: "ax", scope: !164, file: !2, line: 101, type: !91)
!169 = !DILocalVariable(name: "eax", scope: !170, file: !2, line: 114, type: !90)
!170 = distinct !DILexicalBlock(scope: !171, file: !2, line: 113, column: 22)
!171 = distinct !DILexicalBlock(scope: !172, file: !2, line: 113, column: 11)
!172 = distinct !DILexicalBlock(scope: !173, file: !2, line: 110, column: 11)
!173 = distinct !DILexicalBlock(scope: !164, file: !2, line: 105, column: 6)
!174 = !DILocalVariable(name: "y", scope: !170, file: !2, line: 115, type: !90)
!175 = !DILocalVariable(name: "c1", scope: !170, file: !2, line: 116, type: !90)
!176 = !DILocalVariable(name: "c2", scope: !170, file: !2, line: 117, type: !90)
!177 = !DILocalVariable(name: "c3", scope: !170, file: !2, line: 118, type: !90)
!178 = !DILocalVariable(name: "c4", scope: !170, file: !2, line: 119, type: !90)
!179 = !DILocalVariable(name: "c5", scope: !170, file: !2, line: 120, type: !90)
!180 = !DILocalVariable(name: "sum", scope: !170, file: !2, line: 121, type: !90)
!181 = !DILocalVariable(name: "ex", scope: !182, file: !2, line: 127, type: !91)
!182 = distinct !DILexicalBlock(scope: !171, file: !2, line: 126, column: 8)
!183 = !DILocation(line: 0, scope: !164)
!184 = !DILocation(line: 101, column: 15, scope: !164)
!185 = !DILocation(line: 105, column: 8, scope: !173)
!186 = !DILocation(line: 105, column: 6, scope: !164)
!187 = !DILocation(line: 107, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !173, file: !2, line: 105, column: 16)
!189 = !DILocation(line: 108, column: 5, scope: !188)
!190 = !DILocation(line: 110, column: 14, scope: !172)
!191 = !DILocation(line: 110, column: 11, scope: !173)
!192 = !DILocation(line: 111, column: 5, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !2, line: 111, column: 5)
!194 = distinct !DILexicalBlock(scope: !172, file: !2, line: 110, column: 33)
!195 = !DILocation(line: 111, column: 5, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !2, line: 111, column: 5)
!197 = !DILocation(line: 113, column: 14, scope: !171)
!198 = !DILocation(line: 113, column: 11, scope: !172)
!199 = !DILocation(line: 114, column: 28, scope: !170)
!200 = !DILocation(line: 114, column: 24, scope: !170)
!201 = !DILocation(line: 0, scope: !170)
!202 = !DILocation(line: 115, column: 24, scope: !170)
!203 = !DILocation(line: 121, column: 63, scope: !170)
!204 = !DILocation(line: 121, column: 55, scope: !170)
!205 = !DILocation(line: 121, column: 47, scope: !170)
!206 = !DILocation(line: 121, column: 39, scope: !170)
!207 = !DILocation(line: 121, column: 31, scope: !170)
!208 = !DILocation(line: 122, column: 23, scope: !170)
!209 = !DILocation(line: 122, column: 26, scope: !170)
!210 = !DILocation(line: 122, column: 31, scope: !170)
!211 = !DILocation(line: 122, column: 17, scope: !170)
!212 = !DILocation(line: 123, column: 43, scope: !170)
!213 = !DILocation(line: 123, column: 41, scope: !170)
!214 = !DILocation(line: 123, column: 13, scope: !170)
!215 = !DILocation(line: 123, column: 17, scope: !170)
!216 = !DILocation(line: 127, column: 25, scope: !182)
!217 = !DILocation(line: 127, column: 17, scope: !182)
!218 = !DILocation(line: 0, scope: !182)
!219 = !DILocation(line: 128, column: 28, scope: !182)
!220 = !DILocation(line: 128, column: 38, scope: !182)
!221 = !DILocation(line: 128, column: 23, scope: !182)
!222 = !DILocation(line: 128, column: 55, scope: !182)
!223 = !DILocation(line: 128, column: 50, scope: !182)
!224 = !DILocation(line: 128, column: 17, scope: !182)
!225 = !DILocation(line: 129, column: 43, scope: !182)
!226 = !DILocation(line: 129, column: 41, scope: !182)
!227 = !DILocation(line: 129, column: 13, scope: !182)
!228 = !DILocation(line: 129, column: 17, scope: !182)
!229 = !DILocation(line: 130, column: 10, scope: !230)
!230 = distinct !DILexicalBlock(scope: !182, file: !2, line: 130, column: 8)
!231 = !DILocation(line: 130, column: 8, scope: !182)
!232 = !DILocation(line: 130, column: 31, scope: !230)
!233 = !DILocation(line: 130, column: 29, scope: !230)
!234 = !DILocation(line: 130, column: 17, scope: !230)
!235 = !DILocation(line: 0, scope: !173)
!236 = !DILocation(line: 133, column: 1, scope: !164)
!237 = !DISubprogram(name: "gsl_error", scope: !37, file: !37, line: 77, type: !238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240, !240, !38, !38}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!242 = distinct !DISubprogram(name: "gsl_sf_bessel_i2_scaled_e", scope: !2, file: !2, line: 136, type: !88, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !243)
!243 = !{!244, !245, !246, !247, !252, !253, !254, !255, !256, !257, !258, !259, !261}
!244 = !DILocalVariable(name: "x", arg: 1, scope: !242, file: !2, line: 136, type: !90)
!245 = !DILocalVariable(name: "result", arg: 2, scope: !242, file: !2, line: 136, type: !92)
!246 = !DILocalVariable(name: "ax", scope: !242, file: !2, line: 138, type: !91)
!247 = !DILocalVariable(name: "y", scope: !248, file: !2, line: 151, type: !90)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 150, column: 22)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 150, column: 11)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 147, column: 11)
!251 = distinct !DILexicalBlock(scope: !242, file: !2, line: 142, column: 6)
!252 = !DILocalVariable(name: "c1", scope: !248, file: !2, line: 152, type: !90)
!253 = !DILocalVariable(name: "c2", scope: !248, file: !2, line: 153, type: !90)
!254 = !DILocalVariable(name: "c3", scope: !248, file: !2, line: 154, type: !90)
!255 = !DILocalVariable(name: "c4", scope: !248, file: !2, line: 155, type: !90)
!256 = !DILocalVariable(name: "c5", scope: !248, file: !2, line: 156, type: !90)
!257 = !DILocalVariable(name: "sum", scope: !248, file: !2, line: 157, type: !90)
!258 = !DILocalVariable(name: "pre", scope: !248, file: !2, line: 158, type: !90)
!259 = !DILocalVariable(name: "ex", scope: !260, file: !2, line: 164, type: !91)
!260 = distinct !DILexicalBlock(scope: !249, file: !2, line: 163, column: 8)
!261 = !DILocalVariable(name: "x2", scope: !260, file: !2, line: 165, type: !91)
!262 = !DILocation(line: 0, scope: !242)
!263 = !DILocation(line: 138, column: 15, scope: !242)
!264 = !DILocation(line: 142, column: 8, scope: !251)
!265 = !DILocation(line: 142, column: 6, scope: !242)
!266 = !DILocation(line: 144, column: 17, scope: !267)
!267 = distinct !DILexicalBlock(scope: !251, file: !2, line: 142, column: 16)
!268 = !DILocation(line: 145, column: 5, scope: !267)
!269 = !DILocation(line: 147, column: 14, scope: !250)
!270 = !DILocation(line: 147, column: 11, scope: !251)
!271 = !DILocation(line: 148, column: 5, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !2, line: 148, column: 5)
!273 = distinct !DILexicalBlock(scope: !250, file: !2, line: 147, column: 38)
!274 = !DILocation(line: 148, column: 5, scope: !275)
!275 = distinct !DILexicalBlock(scope: !272, file: !2, line: 148, column: 5)
!276 = !DILocation(line: 150, column: 14, scope: !249)
!277 = !DILocation(line: 150, column: 11, scope: !250)
!278 = !DILocation(line: 151, column: 23, scope: !248)
!279 = !DILocation(line: 0, scope: !248)
!280 = !DILocation(line: 157, column: 63, scope: !248)
!281 = !DILocation(line: 157, column: 55, scope: !248)
!282 = !DILocation(line: 157, column: 47, scope: !248)
!283 = !DILocation(line: 157, column: 39, scope: !248)
!284 = !DILocation(line: 157, column: 31, scope: !248)
!285 = !DILocation(line: 158, column: 28, scope: !248)
!286 = !DILocation(line: 158, column: 24, scope: !248)
!287 = !DILocation(line: 158, column: 33, scope: !248)
!288 = !DILocation(line: 158, column: 36, scope: !248)
!289 = !DILocation(line: 158, column: 38, scope: !248)
!290 = !DILocation(line: 159, column: 23, scope: !248)
!291 = !DILocation(line: 159, column: 17, scope: !248)
!292 = !DILocation(line: 160, column: 43, scope: !248)
!293 = !DILocation(line: 160, column: 41, scope: !248)
!294 = !DILocation(line: 160, column: 13, scope: !248)
!295 = !DILocation(line: 160, column: 17, scope: !248)
!296 = !DILocation(line: 164, column: 25, scope: !260)
!297 = !DILocation(line: 164, column: 17, scope: !260)
!298 = !DILocation(line: 0, scope: !260)
!299 = !DILocation(line: 165, column: 18, scope: !260)
!300 = !DILocation(line: 166, column: 39, scope: !260)
!301 = !DILocation(line: 166, column: 34, scope: !260)
!302 = !DILocation(line: 166, column: 49, scope: !260)
!303 = !DILocation(line: 166, column: 52, scope: !260)
!304 = !DILocation(line: 166, column: 23, scope: !260)
!305 = !DILocation(line: 166, column: 69, scope: !260)
!306 = !DILocation(line: 166, column: 62, scope: !260)
!307 = !DILocation(line: 166, column: 17, scope: !260)
!308 = !DILocation(line: 167, column: 43, scope: !260)
!309 = !DILocation(line: 167, column: 41, scope: !260)
!310 = !DILocation(line: 167, column: 13, scope: !260)
!311 = !DILocation(line: 167, column: 17, scope: !260)
!312 = !DILocation(line: 0, scope: !251)
!313 = !DILocation(line: 170, column: 1, scope: !242)
!314 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled_e", scope: !2, file: !2, line: 173, type: !315, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !318)
!315 = !DISubroutineType(types: !316)
!316 = !{!38, !317, !91, !92}
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!318 = !{!319, !320, !321, !322, !323, !324, !329, !330, !333, !334, !337, !338, !341, !342, !343, !346, !347, !348, !349, !350, !351, !352, !353, !356, !357, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!319 = !DILocalVariable(name: "l", arg: 1, scope: !314, file: !2, line: 173, type: !317)
!320 = !DILocalVariable(name: "x", arg: 2, scope: !314, file: !2, line: 173, type: !91)
!321 = !DILocalVariable(name: "result", arg: 3, scope: !314, file: !2, line: 173, type: !92)
!322 = !DILocalVariable(name: "sgn", scope: !314, file: !2, line: 175, type: !91)
!323 = !DILocalVariable(name: "ax", scope: !314, file: !2, line: 176, type: !91)
!324 = !DILocalVariable(name: "il", scope: !325, file: !2, line: 193, type: !93)
!325 = distinct !DILexicalBlock(scope: !326, file: !2, line: 192, column: 19)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 192, column: 11)
!327 = distinct !DILexicalBlock(scope: !328, file: !2, line: 187, column: 11)
!328 = distinct !DILexicalBlock(scope: !314, file: !2, line: 184, column: 6)
!329 = !DILocalVariable(name: "stat_il", scope: !325, file: !2, line: 194, type: !38)
!330 = !DILocalVariable(name: "il", scope: !331, file: !2, line: 200, type: !93)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 199, column: 19)
!332 = distinct !DILexicalBlock(scope: !326, file: !2, line: 199, column: 11)
!333 = !DILocalVariable(name: "stat_il", scope: !331, file: !2, line: 201, type: !38)
!334 = !DILocalVariable(name: "il", scope: !335, file: !2, line: 207, type: !93)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 206, column: 19)
!336 = distinct !DILexicalBlock(scope: !332, file: !2, line: 206, column: 11)
!337 = !DILocalVariable(name: "stat_il", scope: !335, file: !2, line: 208, type: !38)
!338 = !DILocalVariable(name: "b", scope: !339, file: !2, line: 214, type: !93)
!339 = distinct !DILexicalBlock(scope: !340, file: !2, line: 213, column: 35)
!340 = distinct !DILexicalBlock(scope: !336, file: !2, line: 213, column: 11)
!341 = !DILocalVariable(name: "stat", scope: !339, file: !2, line: 215, type: !38)
!342 = !DILocalVariable(name: "pre", scope: !339, file: !2, line: 216, type: !91)
!343 = !DILocalVariable(name: "i0_scaled", scope: !344, file: !2, line: 223, type: !93)
!344 = distinct !DILexicalBlock(scope: !345, file: !2, line: 222, column: 20)
!345 = distinct !DILexicalBlock(scope: !340, file: !2, line: 222, column: 11)
!346 = !DILocalVariable(name: "stat_i0", scope: !344, file: !2, line: 224, type: !38)
!347 = !DILocalVariable(name: "rat", scope: !344, file: !2, line: 225, type: !91)
!348 = !DILocalVariable(name: "stat_CF1", scope: !344, file: !2, line: 226, type: !38)
!349 = !DILocalVariable(name: "iellp1", scope: !344, file: !2, line: 227, type: !91)
!350 = !DILocalVariable(name: "iell", scope: !344, file: !2, line: 228, type: !91)
!351 = !DILocalVariable(name: "iellm1", scope: !344, file: !2, line: 229, type: !91)
!352 = !DILocalVariable(name: "ell", scope: !344, file: !2, line: 230, type: !38)
!353 = !DILocalVariable(name: "status", scope: !354, file: !2, line: 242, type: !38)
!354 = distinct !DILexicalBlock(scope: !355, file: !2, line: 241, column: 83)
!355 = distinct !DILexicalBlock(scope: !345, file: !2, line: 241, column: 11)
!356 = !DILocalVariable(name: "pre", scope: !354, file: !2, line: 243, type: !91)
!357 = !DILocalVariable(name: "rt_term", scope: !358, file: !2, line: 250, type: !91)
!358 = distinct !DILexicalBlock(scope: !355, file: !2, line: 248, column: 8)
!359 = !DILocalVariable(name: "LMAX", scope: !358, file: !2, line: 251, type: !317)
!360 = !DILocalVariable(name: "r_iellp1", scope: !358, file: !2, line: 252, type: !93)
!361 = !DILocalVariable(name: "r_iell", scope: !358, file: !2, line: 253, type: !93)
!362 = !DILocalVariable(name: "stat_a1", scope: !358, file: !2, line: 254, type: !38)
!363 = !DILocalVariable(name: "stat_a2", scope: !358, file: !2, line: 255, type: !38)
!364 = !DILocalVariable(name: "iellp1", scope: !358, file: !2, line: 256, type: !91)
!365 = !DILocalVariable(name: "iell", scope: !358, file: !2, line: 257, type: !91)
!366 = !DILocalVariable(name: "iellm1", scope: !358, file: !2, line: 258, type: !91)
!367 = !DILocalVariable(name: "ell", scope: !358, file: !2, line: 259, type: !38)
!368 = distinct !DIAssignID()
!369 = !DILocation(line: 0, scope: !331)
!370 = distinct !DIAssignID()
!371 = !DILocation(line: 0, scope: !335)
!372 = distinct !DIAssignID()
!373 = !DILocation(line: 0, scope: !339)
!374 = distinct !DIAssignID()
!375 = !DILocation(line: 0, scope: !344)
!376 = distinct !DIAssignID()
!377 = distinct !DIAssignID()
!378 = !DILocation(line: 0, scope: !358)
!379 = distinct !DIAssignID()
!380 = !DILocation(line: 0, scope: !314)
!381 = !DILocation(line: 176, column: 16, scope: !314)
!382 = !DILocation(line: 178, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !314, file: !2, line: 178, column: 6)
!384 = !DILocation(line: 178, column: 6, scope: !314)
!385 = !DILocation(line: 180, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !2, line: 178, column: 15)
!387 = !DILocation(line: 181, column: 9, scope: !386)
!388 = !DILocation(line: 182, column: 3, scope: !386)
!389 = !DILocation(line: 184, column: 8, scope: !328)
!390 = !DILocation(line: 184, column: 6, scope: !314)
!391 = !DILocation(line: 185, column: 5, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !2, line: 185, column: 5)
!393 = distinct !DILexicalBlock(scope: !328, file: !2, line: 184, column: 13)
!394 = !DILocation(line: 185, column: 5, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !2, line: 185, column: 5)
!396 = !DILocation(line: 187, column: 13, scope: !327)
!397 = !DILocation(line: 187, column: 11, scope: !328)
!398 = !DILocation(line: 188, column: 23, scope: !399)
!399 = distinct !DILexicalBlock(scope: !327, file: !2, line: 187, column: 21)
!400 = !DILocation(line: 188, column: 21, scope: !399)
!401 = !DILocation(line: 188, column: 17, scope: !399)
!402 = !DILocation(line: 189, column: 13, scope: !399)
!403 = !DILocation(line: 189, column: 17, scope: !399)
!404 = !DILocation(line: 190, column: 5, scope: !399)
!405 = !DILocation(line: 192, column: 11, scope: !327)
!406 = !DILocation(line: 0, scope: !87, inlinedAt: !407)
!407 = distinct !DILocation(line: 194, column: 19, scope: !325)
!408 = !DILocation(line: 66, column: 15, scope: !87, inlinedAt: !407)
!409 = !DILocation(line: 75, column: 14, scope: !105, inlinedAt: !407)
!410 = !DILocation(line: 75, column: 11, scope: !106, inlinedAt: !407)
!411 = !DILocation(line: 76, column: 28, scope: !104, inlinedAt: !407)
!412 = !DILocation(line: 76, column: 24, scope: !104, inlinedAt: !407)
!413 = !DILocation(line: 0, scope: !104, inlinedAt: !407)
!414 = !DILocation(line: 77, column: 24, scope: !104, inlinedAt: !407)
!415 = !DILocation(line: 83, column: 63, scope: !104, inlinedAt: !407)
!416 = !DILocation(line: 83, column: 55, scope: !104, inlinedAt: !407)
!417 = !DILocation(line: 83, column: 47, scope: !104, inlinedAt: !407)
!418 = !DILocation(line: 83, column: 39, scope: !104, inlinedAt: !407)
!419 = !DILocation(line: 83, column: 31, scope: !104, inlinedAt: !407)
!420 = !DILocation(line: 84, column: 23, scope: !104, inlinedAt: !407)
!421 = !DILocation(line: 0, scope: !325)
!422 = !DILocation(line: 86, column: 3, scope: !104, inlinedAt: !407)
!423 = !DILocation(line: 87, column: 14, scope: !142, inlinedAt: !407)
!424 = !DILocation(line: 87, column: 11, scope: !105, inlinedAt: !407)
!425 = !DILocation(line: 88, column: 34, scope: !145, inlinedAt: !407)
!426 = !DILocation(line: 88, column: 26, scope: !145, inlinedAt: !407)
!427 = !DILocation(line: 88, column: 44, scope: !145, inlinedAt: !407)
!428 = !DILocation(line: 88, column: 39, scope: !145, inlinedAt: !407)
!429 = !DILocation(line: 90, column: 3, scope: !145, inlinedAt: !407)
!430 = !DILocation(line: 92, column: 27, scope: !153, inlinedAt: !407)
!431 = !DILocation(line: 92, column: 22, scope: !153, inlinedAt: !407)
!432 = !DILocation(line: 0, scope: !106, inlinedAt: !407)
!433 = !DILocation(line: 0, scope: !105, inlinedAt: !407)
!434 = !DILocation(line: 195, column: 23, scope: !325)
!435 = !DILocation(line: 195, column: 17, scope: !325)
!436 = !DILocation(line: 196, column: 13, scope: !325)
!437 = !DILocation(line: 196, column: 17, scope: !325)
!438 = !DILocation(line: 200, column: 5, scope: !331)
!439 = !DILocation(line: 201, column: 19, scope: !331)
!440 = !{i32 0, i32 16}
!441 = !DILocation(line: 202, column: 28, scope: !331)
!442 = !DILocation(line: 202, column: 23, scope: !331)
!443 = !DILocation(line: 202, column: 17, scope: !331)
!444 = !DILocation(line: 203, column: 22, scope: !331)
!445 = !DILocation(line: 203, column: 13, scope: !331)
!446 = !DILocation(line: 203, column: 17, scope: !331)
!447 = !DILocation(line: 205, column: 3, scope: !332)
!448 = !DILocation(line: 207, column: 5, scope: !335)
!449 = !DILocation(line: 208, column: 19, scope: !335)
!450 = !DILocation(line: 209, column: 28, scope: !335)
!451 = !DILocation(line: 209, column: 23, scope: !335)
!452 = !DILocation(line: 209, column: 17, scope: !335)
!453 = !DILocation(line: 210, column: 22, scope: !335)
!454 = !DILocation(line: 210, column: 13, scope: !335)
!455 = !DILocation(line: 210, column: 17, scope: !335)
!456 = !DILocation(line: 212, column: 3, scope: !336)
!457 = !DILocation(line: 213, column: 12, scope: !340)
!458 = !DILocation(line: 213, column: 23, scope: !340)
!459 = !DILocation(line: 213, column: 21, scope: !340)
!460 = !DILocation(line: 213, column: 29, scope: !340)
!461 = !DILocation(line: 213, column: 15, scope: !340)
!462 = !DILocation(line: 213, column: 11, scope: !336)
!463 = !DILocation(line: 214, column: 5, scope: !339)
!464 = !DILocation(line: 215, column: 16, scope: !339)
!465 = !DILocation(line: 216, column: 24, scope: !339)
!466 = !DILocation(line: 216, column: 20, scope: !339)
!467 = !DILocation(line: 216, column: 46, scope: !339)
!468 = !DILocation(line: 216, column: 31, scope: !339)
!469 = !DILocation(line: 216, column: 29, scope: !339)
!470 = !DILocation(line: 217, column: 24, scope: !339)
!471 = !DILocation(line: 217, column: 34, scope: !339)
!472 = !DILocation(line: 217, column: 30, scope: !339)
!473 = !DILocation(line: 217, column: 18, scope: !339)
!474 = !DILocation(line: 218, column: 28, scope: !339)
!475 = !DILocation(line: 218, column: 24, scope: !339)
!476 = !DILocation(line: 218, column: 13, scope: !339)
!477 = !DILocation(line: 219, column: 44, scope: !339)
!478 = !DILocation(line: 219, column: 42, scope: !339)
!479 = !DILocation(line: 219, column: 17, scope: !339)
!480 = !DILocation(line: 221, column: 3, scope: !340)
!481 = !DILocation(line: 222, column: 13, scope: !345)
!482 = !DILocation(line: 222, column: 11, scope: !340)
!483 = !DILocation(line: 223, column: 5, scope: !344)
!484 = !DILocation(line: 224, column: 20, scope: !344)
!485 = !DILocation(line: 225, column: 5, scope: !344)
!486 = !DILocation(line: 226, column: 20, scope: !344)
!487 = !DILocation(line: 227, column: 21, scope: !344)
!488 = !{!122, !122, i64 0}
!489 = !DILocation(line: 227, column: 25, scope: !344)
!490 = !DILocation(line: 231, column: 5, scope: !491)
!491 = distinct !DILexicalBlock(scope: !344, file: !2, line: 231, column: 5)
!492 = !DILocation(line: 232, column: 27, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !2, line: 231, column: 35)
!494 = distinct !DILexicalBlock(scope: !491, file: !2, line: 231, column: 5)
!495 = !DILocation(line: 232, column: 32, scope: !493)
!496 = !DILocation(line: 232, column: 25, scope: !493)
!497 = !DILocation(line: 232, column: 36, scope: !493)
!498 = !DILocation(line: 232, column: 39, scope: !493)
!499 = !DILocation(line: 231, column: 31, scope: !494)
!500 = !DILocation(line: 231, column: 22, scope: !494)
!501 = distinct !{!501, !490, !502, !503}
!502 = !DILocation(line: 235, column: 5, scope: !491)
!503 = !{!"llvm.loop.mustprogress"}
!504 = !DILocation(line: 236, column: 36, scope: !344)
!505 = !DILocation(line: 236, column: 24, scope: !344)
!506 = !DILocation(line: 236, column: 60, scope: !344)
!507 = !DILocation(line: 236, column: 40, scope: !344)
!508 = !DILocation(line: 236, column: 18, scope: !344)
!509 = !DILocation(line: 237, column: 30, scope: !344)
!510 = !DILocation(line: 237, column: 34, scope: !344)
!511 = !DILocation(line: 237, column: 13, scope: !344)
!512 = !DILocation(line: 238, column: 44, scope: !344)
!513 = !DILocation(line: 238, column: 42, scope: !344)
!514 = !DILocation(line: 238, column: 17, scope: !344)
!515 = !DILocation(line: 240, column: 3, scope: !345)
!516 = !DILocation(line: 241, column: 11, scope: !355)
!517 = !DILocation(line: 241, column: 54, scope: !355)
!518 = !DILocation(line: 241, column: 11, scope: !345)
!519 = !DILocation(line: 242, column: 18, scope: !354)
!520 = !DILocation(line: 0, scope: !354)
!521 = !DILocation(line: 243, column: 33, scope: !354)
!522 = !DILocation(line: 243, column: 18, scope: !354)
!523 = !DILocation(line: 244, column: 24, scope: !354)
!524 = !DILocation(line: 244, column: 17, scope: !354)
!525 = !DILocation(line: 245, column: 13, scope: !354)
!526 = !DILocation(line: 245, column: 17, scope: !354)
!527 = !DILocation(line: 250, column: 37, scope: !358)
!528 = !DILocation(line: 250, column: 22, scope: !358)
!529 = !DILocation(line: 252, column: 5, scope: !358)
!530 = !DILocation(line: 253, column: 5, scope: !358)
!531 = !DILocation(line: 254, column: 19, scope: !358)
!532 = !DILocation(line: 255, column: 19, scope: !358)
!533 = !DILocation(line: 256, column: 30, scope: !358)
!534 = !DILocation(line: 257, column: 28, scope: !358)
!535 = !DILocation(line: 262, column: 25, scope: !536)
!536 = distinct !DILexicalBlock(scope: !537, file: !2, line: 262, column: 5)
!537 = distinct !DILexicalBlock(scope: !358, file: !2, line: 262, column: 5)
!538 = !DILocation(line: 262, column: 5, scope: !537)
!539 = !DILocation(line: 261, column: 12, scope: !358)
!540 = !DILocation(line: 260, column: 12, scope: !358)
!541 = !DILocation(line: 263, column: 27, scope: !542)
!542 = distinct !DILexicalBlock(scope: !536, file: !2, line: 262, column: 40)
!543 = !DILocation(line: 263, column: 32, scope: !542)
!544 = !DILocation(line: 263, column: 25, scope: !542)
!545 = !DILocation(line: 263, column: 36, scope: !542)
!546 = !DILocation(line: 263, column: 39, scope: !542)
!547 = !DILocation(line: 262, column: 36, scope: !536)
!548 = distinct !{!548, !538, !549, !503}
!549 = !DILocation(line: 266, column: 5, scope: !537)
!550 = !DILocation(line: 267, column: 24, scope: !358)
!551 = !DILocation(line: 267, column: 18, scope: !358)
!552 = !DILocation(line: 268, column: 20, scope: !358)
!553 = !DILocation(line: 268, column: 71, scope: !358)
!554 = !DILocation(line: 268, column: 74, scope: !358)
!555 = !DILocation(line: 268, column: 57, scope: !358)
!556 = !DILocation(line: 268, column: 103, scope: !358)
!557 = !DILocation(line: 268, column: 106, scope: !358)
!558 = !DILocation(line: 268, column: 91, scope: !358)
!559 = !DILocation(line: 268, column: 37, scope: !358)
!560 = !DILocation(line: 268, column: 13, scope: !358)
!561 = !DILocation(line: 269, column: 42, scope: !358)
!562 = !DILocation(line: 269, column: 17, scope: !358)
!563 = !DILocation(line: 271, column: 12, scope: !358)
!564 = !DILocation(line: 272, column: 3, scope: !355)
!565 = !DILocation(line: 0, scope: !328)
!566 = !DILocation(line: 273, column: 1, scope: !314)
!567 = !DISubprogram(name: "gsl_sf_bessel_IJ_taylor_e", scope: !568, file: !568, line: 32, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = !DIFile(filename: "./bessel.h", directory: "/PI-detector/external/gsl/gsl-2.5/specfunc", checksumkind: CSK_MD5, checksum: "57b96fff5bee18a41e1173dbca5404a0")
!569 = !DISubroutineType(types: !570)
!570 = !{!38, !90, !90, !317, !317, !90, !92}
!571 = !DISubprogram(name: "sqrt", scope: !161, file: !161, line: 143, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!572 = distinct !DISubprogram(name: "bessel_il_CF1", scope: !2, file: !2, line: 37, type: !573, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !576)
!573 = !DISubroutineType(cc: DW_CC_nocall, types: !574)
!574 = !{!38, !317, !90, !90, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586}
!577 = !DILocalVariable(name: "l", arg: 1, scope: !572, file: !2, line: 37, type: !317)
!578 = !DILocalVariable(name: "x", arg: 2, scope: !572, file: !2, line: 37, type: !90)
!579 = !DILocalVariable(name: "threshold", arg: 3, scope: !572, file: !2, line: 37, type: !90)
!580 = !DILocalVariable(name: "ratio", arg: 4, scope: !572, file: !2, line: 37, type: !575)
!581 = !DILocalVariable(name: "kmax", scope: !572, file: !2, line: 39, type: !317)
!582 = !DILocalVariable(name: "tk", scope: !572, file: !2, line: 40, type: !91)
!583 = !DILocalVariable(name: "sum", scope: !572, file: !2, line: 41, type: !91)
!584 = !DILocalVariable(name: "rhok", scope: !572, file: !2, line: 42, type: !91)
!585 = !DILocalVariable(name: "k", scope: !572, file: !2, line: 43, type: !38)
!586 = !DILocalVariable(name: "ak", scope: !587, file: !2, line: 46, type: !91)
!587 = distinct !DILexicalBlock(scope: !588, file: !2, line: 45, column: 26)
!588 = distinct !DILexicalBlock(scope: !589, file: !2, line: 45, column: 3)
!589 = distinct !DILexicalBlock(scope: !572, file: !2, line: 45, column: 3)
!590 = !DILocation(line: 0, scope: !572)
!591 = !DILocation(line: 46, column: 25, scope: !587)
!592 = !DILocation(line: 46, column: 24, scope: !587)
!593 = !DILocation(line: 45, column: 3, scope: !589)
!594 = !DILocation(line: 46, column: 35, scope: !587)
!595 = !DILocation(line: 46, column: 34, scope: !587)
!596 = !DILocation(line: 46, column: 19, scope: !587)
!597 = !DILocation(line: 46, column: 43, scope: !587)
!598 = !DILocation(line: 46, column: 39, scope: !587)
!599 = !DILocation(line: 0, scope: !587)
!600 = !DILocation(line: 47, column: 12, scope: !587)
!601 = !DILocation(line: 47, column: 15, scope: !587)
!602 = !DILocation(line: 47, column: 38, scope: !587)
!603 = !DILocation(line: 47, column: 28, scope: !587)
!604 = !DILocation(line: 48, column: 9, scope: !587)
!605 = !DILocation(line: 50, column: 15, scope: !606)
!606 = distinct !DILexicalBlock(scope: !587, file: !2, line: 50, column: 8)
!607 = !DILocation(line: 50, column: 8, scope: !606)
!608 = !DILocation(line: 50, column: 21, scope: !606)
!609 = !DILocation(line: 45, column: 22, scope: !588)
!610 = !DILocation(line: 45, column: 13, scope: !588)
!611 = distinct !{!611, !593, !612, !503}
!612 = !DILocation(line: 51, column: 3, scope: !589)
!613 = !DILocation(line: 53, column: 13, scope: !572)
!614 = !DILocation(line: 53, column: 26, scope: !572)
!615 = !DILocation(line: 53, column: 10, scope: !572)
!616 = !DILocation(line: 55, column: 6, scope: !572)
!617 = !DILocation(line: 55, column: 8, scope: !618)
!618 = distinct !DILexicalBlock(scope: !572, file: !2, line: 55, column: 6)
!619 = !DILocation(line: 56, column: 5, scope: !620)
!620 = distinct !DILexicalBlock(scope: !618, file: !2, line: 56, column: 5)
!621 = !DILocation(line: 0, scope: !618)
!622 = !DILocation(line: 59, column: 1, scope: !572)
!623 = !DISubprogram(name: "gsl_sf_bessel_Inu_scaled_asymp_unif_e", scope: !568, file: !568, line: 48, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!624 = !DISubroutineType(types: !625)
!625 = !{!38, !90, !90, !92}
!626 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled_array", scope: !2, file: !2, line: 276, type: !627, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!38, !317, !90, !575}
!629 = !{!630, !631, !632, !633, !636, !638, !639, !640, !641, !642, !643, !644}
!630 = !DILocalVariable(name: "lmax", arg: 1, scope: !626, file: !2, line: 276, type: !317)
!631 = !DILocalVariable(name: "x", arg: 2, scope: !626, file: !2, line: 276, type: !90)
!632 = !DILocalVariable(name: "result_array", arg: 3, scope: !626, file: !2, line: 276, type: !575)
!633 = !DILocalVariable(name: "ell", scope: !634, file: !2, line: 279, type: !38)
!634 = distinct !DILexicalBlock(scope: !635, file: !2, line: 278, column: 16)
!635 = distinct !DILexicalBlock(scope: !626, file: !2, line: 278, column: 6)
!636 = !DILocalVariable(name: "ell", scope: !637, file: !2, line: 286, type: !38)
!637 = distinct !DILexicalBlock(scope: !635, file: !2, line: 285, column: 10)
!638 = !DILocalVariable(name: "r_iellp1", scope: !637, file: !2, line: 287, type: !93)
!639 = !DILocalVariable(name: "r_iell", scope: !637, file: !2, line: 288, type: !93)
!640 = !DILocalVariable(name: "stat_0", scope: !637, file: !2, line: 289, type: !38)
!641 = !DILocalVariable(name: "stat_1", scope: !637, file: !2, line: 290, type: !38)
!642 = !DILocalVariable(name: "iellp1", scope: !637, file: !2, line: 291, type: !91)
!643 = !DILocalVariable(name: "iell", scope: !637, file: !2, line: 292, type: !91)
!644 = !DILocalVariable(name: "iellm1", scope: !637, file: !2, line: 293, type: !91)
!645 = distinct !DIAssignID()
!646 = !DILocation(line: 0, scope: !637)
!647 = distinct !DIAssignID()
!648 = !DILocation(line: 0, scope: !626)
!649 = !DILocation(line: 278, column: 8, scope: !635)
!650 = !DILocation(line: 278, column: 6, scope: !626)
!651 = !DILocation(line: 280, column: 21, scope: !634)
!652 = !DILocation(line: 0, scope: !634)
!653 = !DILocation(line: 281, column: 26, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !2, line: 281, column: 5)
!655 = distinct !DILexicalBlock(scope: !634, file: !2, line: 281, column: 5)
!656 = !DILocation(line: 281, column: 5, scope: !655)
!657 = !DILocation(line: 282, column: 25, scope: !658)
!658 = distinct !DILexicalBlock(scope: !654, file: !2, line: 281, column: 39)
!659 = !DILocation(line: 303, column: 1, scope: !626)
!660 = !DILocation(line: 287, column: 5, scope: !637)
!661 = !DILocation(line: 288, column: 5, scope: !637)
!662 = !DILocation(line: 289, column: 48, scope: !637)
!663 = !DILocation(line: 289, column: 18, scope: !637)
!664 = !DILocation(line: 290, column: 18, scope: !637)
!665 = !DILocation(line: 291, column: 30, scope: !637)
!666 = !DILocation(line: 292, column: 28, scope: !637)
!667 = !DILocation(line: 294, column: 5, scope: !637)
!668 = !DILocation(line: 294, column: 24, scope: !637)
!669 = !DILocation(line: 295, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !637, file: !2, line: 295, column: 5)
!671 = !DILocation(line: 295, column: 25, scope: !672)
!672 = distinct !DILexicalBlock(scope: !670, file: !2, line: 295, column: 5)
!673 = !DILocation(line: 295, column: 5, scope: !670)
!674 = !DILocation(line: 296, column: 27, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !2, line: 295, column: 38)
!676 = !DILocation(line: 296, column: 32, scope: !675)
!677 = !DILocation(line: 296, column: 25, scope: !675)
!678 = !DILocation(line: 296, column: 36, scope: !675)
!679 = !DILocation(line: 296, column: 39, scope: !675)
!680 = !DILocation(line: 299, column: 7, scope: !675)
!681 = !DILocation(line: 299, column: 27, scope: !675)
!682 = !DILocation(line: 295, column: 34, scope: !672)
!683 = distinct !{!683, !673, !684, !503}
!684 = !DILocation(line: 300, column: 5, scope: !670)
!685 = !DILocation(line: 301, column: 12, scope: !637)
!686 = !DILocation(line: 302, column: 3, scope: !635)
!687 = !DILocation(line: 0, scope: !635)
!688 = distinct !DISubprogram(name: "gsl_sf_bessel_i0_scaled", scope: !2, file: !2, line: 310, type: !689, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!91, !90}
!691 = !{!692, !693, !694}
!692 = !DILocalVariable(name: "x", arg: 1, scope: !688, file: !2, line: 310, type: !90)
!693 = !DILocalVariable(name: "result", scope: !688, file: !2, line: 312, type: !93)
!694 = !DILocalVariable(name: "status", scope: !688, file: !2, line: 312, type: !38)
!695 = !DILocation(line: 0, scope: !688)
!696 = !DILocation(line: 0, scope: !87, inlinedAt: !697)
!697 = distinct !DILocation(line: 312, column: 3, scope: !688)
!698 = !DILocation(line: 66, column: 15, scope: !87, inlinedAt: !697)
!699 = !DILocation(line: 70, column: 8, scope: !106, inlinedAt: !697)
!700 = !DILocation(line: 70, column: 6, scope: !87, inlinedAt: !697)
!701 = !DILocation(line: 75, column: 14, scope: !105, inlinedAt: !697)
!702 = !DILocation(line: 75, column: 11, scope: !106, inlinedAt: !697)
!703 = !DILocation(line: 76, column: 28, scope: !104, inlinedAt: !697)
!704 = !DILocation(line: 76, column: 24, scope: !104, inlinedAt: !697)
!705 = !DILocation(line: 0, scope: !104, inlinedAt: !697)
!706 = !DILocation(line: 77, column: 24, scope: !104, inlinedAt: !697)
!707 = !DILocation(line: 83, column: 63, scope: !104, inlinedAt: !697)
!708 = !DILocation(line: 83, column: 55, scope: !104, inlinedAt: !697)
!709 = !DILocation(line: 83, column: 47, scope: !104, inlinedAt: !697)
!710 = !DILocation(line: 83, column: 39, scope: !104, inlinedAt: !697)
!711 = !DILocation(line: 83, column: 31, scope: !104, inlinedAt: !697)
!712 = !DILocation(line: 84, column: 23, scope: !104, inlinedAt: !697)
!713 = !DILocation(line: 86, column: 3, scope: !104, inlinedAt: !697)
!714 = !DILocation(line: 87, column: 14, scope: !142, inlinedAt: !697)
!715 = !DILocation(line: 87, column: 11, scope: !105, inlinedAt: !697)
!716 = !DILocation(line: 88, column: 34, scope: !145, inlinedAt: !697)
!717 = !DILocation(line: 88, column: 26, scope: !145, inlinedAt: !697)
!718 = !DILocation(line: 88, column: 44, scope: !145, inlinedAt: !697)
!719 = !DILocation(line: 88, column: 39, scope: !145, inlinedAt: !697)
!720 = !DILocation(line: 90, column: 3, scope: !145, inlinedAt: !697)
!721 = !DILocation(line: 92, column: 27, scope: !153, inlinedAt: !697)
!722 = !DILocation(line: 92, column: 22, scope: !153, inlinedAt: !697)
!723 = !DILocation(line: 0, scope: !106, inlinedAt: !697)
!724 = !DILocation(line: 313, column: 1, scope: !688)
!725 = distinct !DISubprogram(name: "gsl_sf_bessel_i1_scaled", scope: !2, file: !2, line: 315, type: !689, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !726)
!726 = !{!727, !728, !729}
!727 = !DILocalVariable(name: "x", arg: 1, scope: !725, file: !2, line: 315, type: !90)
!728 = !DILocalVariable(name: "result", scope: !725, file: !2, line: 317, type: !93)
!729 = !DILocalVariable(name: "status", scope: !725, file: !2, line: 317, type: !38)
!730 = distinct !DIAssignID()
!731 = !DILocation(line: 0, scope: !725)
!732 = !DILocation(line: 317, column: 3, scope: !725)
!733 = !DILocation(line: 317, column: 3, scope: !734)
!734 = distinct !DILexicalBlock(scope: !725, file: !2, line: 317, column: 3)
!735 = !DILocation(line: 317, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !2, line: 317, column: 3)
!737 = distinct !DILexicalBlock(scope: !734, file: !2, line: 317, column: 3)
!738 = !DILocation(line: 318, column: 1, scope: !725)
!739 = distinct !DISubprogram(name: "gsl_sf_bessel_i2_scaled", scope: !2, file: !2, line: 320, type: !689, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !740)
!740 = !{!741, !742, !743}
!741 = !DILocalVariable(name: "x", arg: 1, scope: !739, file: !2, line: 320, type: !90)
!742 = !DILocalVariable(name: "result", scope: !739, file: !2, line: 322, type: !93)
!743 = !DILocalVariable(name: "status", scope: !739, file: !2, line: 322, type: !38)
!744 = distinct !DIAssignID()
!745 = !DILocation(line: 0, scope: !739)
!746 = !DILocation(line: 322, column: 3, scope: !739)
!747 = !DILocation(line: 322, column: 3, scope: !748)
!748 = distinct !DILexicalBlock(scope: !739, file: !2, line: 322, column: 3)
!749 = !DILocation(line: 322, column: 3, scope: !750)
!750 = distinct !DILexicalBlock(scope: !751, file: !2, line: 322, column: 3)
!751 = distinct !DILexicalBlock(scope: !748, file: !2, line: 322, column: 3)
!752 = !DILocation(line: 323, column: 1, scope: !739)
!753 = distinct !DISubprogram(name: "gsl_sf_bessel_il_scaled", scope: !2, file: !2, line: 325, type: !754, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !34, retainedNodes: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!91, !317, !90}
!756 = !{!757, !758, !759, !760}
!757 = !DILocalVariable(name: "l", arg: 1, scope: !753, file: !2, line: 325, type: !317)
!758 = !DILocalVariable(name: "x", arg: 2, scope: !753, file: !2, line: 325, type: !90)
!759 = !DILocalVariable(name: "result", scope: !753, file: !2, line: 327, type: !93)
!760 = !DILocalVariable(name: "status", scope: !753, file: !2, line: 327, type: !38)
!761 = distinct !DIAssignID()
!762 = !DILocation(line: 0, scope: !753)
!763 = !DILocation(line: 327, column: 3, scope: !753)
!764 = !DILocation(line: 327, column: 3, scope: !765)
!765 = distinct !DILexicalBlock(scope: !753, file: !2, line: 327, column: 3)
!766 = !DILocation(line: 327, column: 3, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !2, line: 327, column: 3)
!768 = distinct !DILexicalBlock(scope: !765, file: !2, line: 327, column: 3)
!769 = !DILocation(line: 328, column: 1, scope: !753)
